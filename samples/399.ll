; ModuleID = 'samples/399.bc'
source_filename = "par_cgc_coarsen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_predefined_op_t = type opaque
%struct.hypre_ParCSRMatrix_struct = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct._hypre_ParCSRCommPkg = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.double_linked_list = type { i32, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"par_cgc_coarsen.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"negative measure!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Linked list not empty!\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Proc = %d    Coarsen 1st pass = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Proc = %d    Coarsen CGC = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Proc = %d    Coarsen 2nd pass = %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Proc = %d    CGC boundary fix = %f\0A\00", align 1
@hypre__global_error = external global i32, align 4
@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 1
@ompi_mpi_op_sum = external global %struct.ompi_predefined_op_t, align 1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGCoarsenCGCb(ptr noundef %S, ptr noundef %A, i32 noundef %measure_type, i32 noundef %coarsen_type, i32 noundef %cgc_its, i32 noundef %debug_flag, ptr noundef %CF_marker_ptr) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %measure_type.addr = alloca i32, align 4
  %coarsen_type.addr = alloca i32, align 4
  %cgc_its.addr = alloca i32, align 4
  %debug_flag.addr = alloca i32, align 4
  %CF_marker_ptr.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %comm_pkg = alloca ptr, align 8
  %comm_handle = alloca ptr, align 8
  %S_diag = alloca ptr, align 8
  %S_offd = alloca ptr, align 8
  %S_i = alloca ptr, align 8
  %S_j = alloca ptr, align 8
  %S_offd_i = alloca ptr, align 8
  %num_variables = alloca i32, align 4
  %num_cols_offd = alloca i32, align 4
  %S_ext = alloca ptr, align 8
  %S_ext_i = alloca ptr, align 8
  %S_ext_j = alloca ptr, align 8
  %ST = alloca ptr, align 8
  %ST_i = alloca ptr, align 8
  %ST_j = alloca ptr, align 8
  %CF_marker = alloca ptr, align 8
  %CF_marker_offd = alloca ptr, align 8
  %ci_tilde = alloca i32, align 4
  %ci_tilde_mark = alloca i32, align 4
  %measure_array = alloca ptr, align 8
  %measure_array_master = alloca ptr, align 8
  %graph_array = alloca ptr, align 8
  %int_buf_data = alloca ptr, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %jS = alloca i32, align 4
  %ji = alloca i32, align 4
  %jj = alloca i32, align 4
  %index = alloca i32, align 4
  %set_empty = alloca i32, align 4
  %C_i_nonempty = alloca i32, align 4
  %num_nonzeros = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %my_id = alloca i32, align 4
  %num_sends = alloca i32, align 4
  %first_col = alloca i32, align 4
  %start = alloca i32, align 4
  %LoL_head = alloca ptr, align 8
  %LoL_tail = alloca ptr, align 8
  %lists = alloca ptr, align 8
  %where = alloca ptr, align 8
  %measure = alloca i32, align 4
  %new_meas = alloca i32, align 4
  %num_left = alloca i32, align 4
  %nabor = alloca i32, align 4
  %nabor_two = alloca i32, align 4
  %use_commpkg_A = alloca i32, align 4
  %wall_time = alloca double, align 8
  %measure_max = alloca i32, align 4
  %list_ptr = alloca ptr, align 8
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i32 %measure_type, ptr %measure_type.addr, align 4, !tbaa !8
  store i32 %coarsen_type, ptr %coarsen_type.addr, align 4, !tbaa !8
  store i32 %cgc_its, ptr %cgc_its.addr, align 4, !tbaa !8
  store i32 %debug_flag, ptr %debug_flag.addr, align 4, !tbaa !8
  store ptr %CF_marker_ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %0 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !10
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #4
  %2 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm_pkg2 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %2, i32 0, i32 15
  %3 = load ptr, ptr %comm_pkg2, align 8, !tbaa !13
  store ptr %3, ptr %comm_pkg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_handle) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_diag) #4
  %4 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %diag, align 8, !tbaa !14
  store ptr %5, ptr %S_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd) #4
  %6 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %offd, align 8, !tbaa !15
  store ptr %7, ptr %S_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_i) #4
  %8 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %i, align 8, !tbaa !16
  store ptr %9, ptr %S_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_j) #4
  %10 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %j = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %j, align 8, !tbaa !18
  store ptr %11, ptr %S_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_i) #4
  %12 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %i3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %i3, align 8, !tbaa !16
  store ptr %13, ptr %S_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #4
  %14 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %num_rows, align 8, !tbaa !19
  store i32 %15, ptr %num_variables, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd) #4
  %16 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %16, i32 0, i32 4
  %17 = load i32, ptr %num_cols, align 4, !tbaa !20
  store i32 %17, ptr %num_cols_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_ext) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_ext_i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_ext_j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ST) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ST_i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ST_j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %CF_marker) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %CF_marker_offd) #4
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci_tilde) #4
  store i32 -1, ptr %ci_tilde, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ci_tilde_mark) #4
  store i32 -1, ptr %ci_tilde_mark, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %measure_array) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %measure_array_master) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %graph_array) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_buf_data) #4
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jS) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ji) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %set_empty) #4
  store i32 1, ptr %set_empty, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %C_i_nonempty) #4
  store i32 0, ptr %C_i_nonempty, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_nonzeros) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends) #4
  store i32 0, ptr %num_sends, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_col) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %LoL_head) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %LoL_tail) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lists) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %measure) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_meas) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_left) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nabor) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nabor_two) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %use_commpkg_A) #4
  store i32 0, ptr %use_commpkg_A, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %wall_time) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %measure_max) #4
  %18 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %sub = sub nsw i32 0, %19
  store i32 %sub, ptr %coarsen_type.addr, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store ptr null, ptr %LoL_head, align 8, !tbaa !4
  store ptr null, ptr %LoL_tail, align 8, !tbaa !4
  %20 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv = sext i32 %20 to i64
  %call = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call, ptr %lists, align 8, !tbaa !4
  %21 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv6 = sext i32 %21 to i64
  %call7 = call ptr @hypre_CAlloc(i64 noundef %conv6, i64 noundef 4, i32 noundef 0)
  store ptr %call7, ptr %where, align 8, !tbaa !4
  %22 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %22, 3
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %call11 = call double @time_getWallclockSeconds()
  store double %call11, ptr %wall_time, align 8, !tbaa !21
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %23 = load ptr, ptr %comm, align 8, !tbaa !4
  %call13 = call i32 @hypre_MPI_Comm_size(ptr noundef %23, ptr noundef %num_procs)
  %24 = load ptr, ptr %comm, align 8, !tbaa !4
  %call14 = call i32 @hypre_MPI_Comm_rank(ptr noundef %24, ptr noundef %my_id)
  %25 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool = icmp ne ptr %25, null
  br i1 %tobool, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  store i32 1, ptr %use_commpkg_A, align 4, !tbaa !8
  %26 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm_pkg16 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %26, i32 0, i32 15
  %27 = load ptr, ptr %comm_pkg16, align 8, !tbaa !13
  store ptr %27, ptr %comm_pkg, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12
  %28 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %28, null
  br i1 %tobool18, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end17
  %29 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call20 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %29)
  %30 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm_pkg21 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %30, i32 0, i32 15
  %31 = load ptr, ptr %comm_pkg21, align 8, !tbaa !13
  store ptr %31, ptr %comm_pkg, align 8, !tbaa !4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %32 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends23 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %num_sends23, align 8, !tbaa !22
  store i32 %33, ptr %num_sends, align 4, !tbaa !8
  %34 = load ptr, ptr %S_i, align 8, !tbaa !4
  %35 = load i32, ptr %num_variables, align 4, !tbaa !8
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds i32, ptr %34, i64 %idxprom
  %36 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %36, ptr %jS, align 4, !tbaa !8
  %37 = load i32, ptr %num_variables, align 4, !tbaa !8
  %38 = load i32, ptr %num_variables, align 4, !tbaa !8
  %39 = load i32, ptr %jS, align 4, !tbaa !8
  %call24 = call ptr @hypre_CSRMatrixCreate(i32 noundef %37, i32 noundef %38, i32 noundef %39)
  store ptr %call24, ptr %ST, align 8, !tbaa !4
  %40 = load i32, ptr %num_variables, align 4, !tbaa !8
  %add = add nsw i32 %40, 1
  %conv25 = sext i32 %add to i64
  %call26 = call ptr @hypre_CAlloc(i64 noundef %conv25, i64 noundef 4, i32 noundef 0)
  store ptr %call26, ptr %ST_i, align 8, !tbaa !4
  %41 = load i32, ptr %jS, align 4, !tbaa !8
  %conv27 = sext i32 %41 to i64
  %call28 = call ptr @hypre_CAlloc(i64 noundef %conv27, i64 noundef 4, i32 noundef 0)
  store ptr %call28, ptr %ST_j, align 8, !tbaa !4
  %42 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %43 = load ptr, ptr %ST, align 8, !tbaa !4
  %i29 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %43, i32 0, i32 0
  store ptr %42, ptr %i29, align 8, !tbaa !16
  %44 = load ptr, ptr %ST_j, align 8, !tbaa !4
  %45 = load ptr, ptr %ST, align 8, !tbaa !4
  %j30 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %45, i32 0, i32 1
  store ptr %44, ptr %j30, align 8, !tbaa !18
  %46 = load ptr, ptr %ST, align 8, !tbaa !4
  %memory_location = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %46, i32 0, i32 12
  store i32 0, ptr %memory_location, align 4, !tbaa !24
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %47 = load i32, ptr %i4, align 4, !tbaa !8
  %48 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp31 = icmp sle i32 %47, %48
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %50 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom33 = sext i32 %50 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %49, i64 %idxprom33
  store i32 0, ptr %arrayidx34, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, ptr %i4, align 4, !tbaa !8
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %i4, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc45, %for.end
  %52 = load i32, ptr %i4, align 4, !tbaa !8
  %53 = load i32, ptr %jS, align 4, !tbaa !8
  %cmp36 = icmp slt i32 %52, %53
  br i1 %cmp36, label %for.body38, label %for.end47

for.body38:                                       ; preds = %for.cond35
  %54 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %55 = load ptr, ptr %S_j, align 8, !tbaa !4
  %56 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom39 = sext i32 %56 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %55, i64 %idxprom39
  %57 = load i32, ptr %arrayidx40, align 4, !tbaa !8
  %add41 = add nsw i32 %57, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %54, i64 %idxprom42
  %58 = load i32, ptr %arrayidx43, align 4, !tbaa !8
  %inc44 = add nsw i32 %58, 1
  store i32 %inc44, ptr %arrayidx43, align 4, !tbaa !8
  br label %for.inc45

for.inc45:                                        ; preds = %for.body38
  %59 = load i32, ptr %i4, align 4, !tbaa !8
  %inc46 = add nsw i32 %59, 1
  store i32 %inc46, ptr %i4, align 4, !tbaa !8
  br label %for.cond35, !llvm.loop !27

for.end47:                                        ; preds = %for.cond35
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end47
  %60 = load i32, ptr %i4, align 4, !tbaa !8
  %61 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp49 = icmp slt i32 %60, %61
  br i1 %cmp49, label %for.body51, label %for.end60

for.body51:                                       ; preds = %for.cond48
  %62 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %63 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom52 = sext i32 %63 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %62, i64 %idxprom52
  %64 = load i32, ptr %arrayidx53, align 4, !tbaa !8
  %65 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %66 = load i32, ptr %i4, align 4, !tbaa !8
  %add54 = add nsw i32 %66, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %65, i64 %idxprom55
  %67 = load i32, ptr %arrayidx56, align 4, !tbaa !8
  %add57 = add nsw i32 %67, %64
  store i32 %add57, ptr %arrayidx56, align 4, !tbaa !8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body51
  %68 = load i32, ptr %i4, align 4, !tbaa !8
  %inc59 = add nsw i32 %68, 1
  store i32 %inc59, ptr %i4, align 4, !tbaa !8
  br label %for.cond48, !llvm.loop !28

for.end60:                                        ; preds = %for.cond48
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc86, %for.end60
  %69 = load i32, ptr %i4, align 4, !tbaa !8
  %70 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp62 = icmp slt i32 %69, %70
  br i1 %cmp62, label %for.body64, label %for.end88

for.body64:                                       ; preds = %for.cond61
  %71 = load ptr, ptr %S_i, align 8, !tbaa !4
  %72 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom65 = sext i32 %72 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %71, i64 %idxprom65
  %73 = load i32, ptr %arrayidx66, align 4, !tbaa !8
  store i32 %73, ptr %j5, align 4, !tbaa !8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc83, %for.body64
  %74 = load i32, ptr %j5, align 4, !tbaa !8
  %75 = load ptr, ptr %S_i, align 8, !tbaa !4
  %76 = load i32, ptr %i4, align 4, !tbaa !8
  %add68 = add nsw i32 %76, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %75, i64 %idxprom69
  %77 = load i32, ptr %arrayidx70, align 4, !tbaa !8
  %cmp71 = icmp slt i32 %74, %77
  br i1 %cmp71, label %for.body73, label %for.end85

for.body73:                                       ; preds = %for.cond67
  %78 = load ptr, ptr %S_j, align 8, !tbaa !4
  %79 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom74 = sext i32 %79 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %78, i64 %idxprom74
  %80 = load i32, ptr %arrayidx75, align 4, !tbaa !8
  store i32 %80, ptr %index, align 4, !tbaa !8
  %81 = load i32, ptr %i4, align 4, !tbaa !8
  %82 = load ptr, ptr %ST_j, align 8, !tbaa !4
  %83 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %84 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom76 = sext i32 %84 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %83, i64 %idxprom76
  %85 = load i32, ptr %arrayidx77, align 4, !tbaa !8
  %idxprom78 = sext i32 %85 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %82, i64 %idxprom78
  store i32 %81, ptr %arrayidx79, align 4, !tbaa !8
  %86 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %87 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom80 = sext i32 %87 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %86, i64 %idxprom80
  %88 = load i32, ptr %arrayidx81, align 4, !tbaa !8
  %inc82 = add nsw i32 %88, 1
  store i32 %inc82, ptr %arrayidx81, align 4, !tbaa !8
  br label %for.inc83

for.inc83:                                        ; preds = %for.body73
  %89 = load i32, ptr %j5, align 4, !tbaa !8
  %inc84 = add nsw i32 %89, 1
  store i32 %inc84, ptr %j5, align 4, !tbaa !8
  br label %for.cond67, !llvm.loop !29

for.end85:                                        ; preds = %for.cond67
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %90 = load i32, ptr %i4, align 4, !tbaa !8
  %inc87 = add nsw i32 %90, 1
  store i32 %inc87, ptr %i4, align 4, !tbaa !8
  br label %for.cond61, !llvm.loop !30

for.end88:                                        ; preds = %for.cond61
  %91 = load i32, ptr %num_variables, align 4, !tbaa !8
  store i32 %91, ptr %i4, align 4, !tbaa !8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc98, %for.end88
  %92 = load i32, ptr %i4, align 4, !tbaa !8
  %cmp90 = icmp sgt i32 %92, 0
  br i1 %cmp90, label %for.body92, label %for.end99

for.body92:                                       ; preds = %for.cond89
  %93 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %94 = load i32, ptr %i4, align 4, !tbaa !8
  %sub93 = sub nsw i32 %94, 1
  %idxprom94 = sext i32 %sub93 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %93, i64 %idxprom94
  %95 = load i32, ptr %arrayidx95, align 4, !tbaa !8
  %96 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %97 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom96 = sext i32 %97 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %96, i64 %idxprom96
  store i32 %95, ptr %arrayidx97, align 4, !tbaa !8
  br label %for.inc98

for.inc98:                                        ; preds = %for.body92
  %98 = load i32, ptr %i4, align 4, !tbaa !8
  %dec = add nsw i32 %98, -1
  store i32 %dec, ptr %i4, align 4, !tbaa !8
  br label %for.cond89, !llvm.loop !31

for.end99:                                        ; preds = %for.cond89
  %99 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i32, ptr %99, i64 0
  store i32 0, ptr %arrayidx100, align 4, !tbaa !8
  %100 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv101 = sext i32 %100 to i64
  %call102 = call ptr @hypre_CAlloc(i64 noundef %conv101, i64 noundef 4, i32 noundef 0)
  store ptr %call102, ptr %measure_array_master, align 8, !tbaa !4
  %101 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv103 = sext i32 %101 to i64
  %call104 = call ptr @hypre_CAlloc(i64 noundef %conv103, i64 noundef 4, i32 noundef 0)
  store ptr %call104, ptr %measure_array, align 8, !tbaa !4
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc117, %for.end99
  %102 = load i32, ptr %i4, align 4, !tbaa !8
  %103 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp106 = icmp slt i32 %102, %103
  br i1 %cmp106, label %for.body108, label %for.end119

for.body108:                                      ; preds = %for.cond105
  %104 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %105 = load i32, ptr %i4, align 4, !tbaa !8
  %add109 = add nsw i32 %105, 1
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %104, i64 %idxprom110
  %106 = load i32, ptr %arrayidx111, align 4, !tbaa !8
  %107 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %108 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom112 = sext i32 %108 to i64
  %arrayidx113 = getelementptr inbounds i32, ptr %107, i64 %idxprom112
  %109 = load i32, ptr %arrayidx113, align 4, !tbaa !8
  %sub114 = sub nsw i32 %106, %109
  %110 = load ptr, ptr %measure_array_master, align 8, !tbaa !4
  %111 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom115 = sext i32 %111 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %110, i64 %idxprom115
  store i32 %sub114, ptr %arrayidx116, align 4, !tbaa !8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body108
  %112 = load i32, ptr %i4, align 4, !tbaa !8
  %inc118 = add nsw i32 %112, 1
  store i32 %inc118, ptr %i4, align 4, !tbaa !8
  br label %for.cond105, !llvm.loop !32

for.end119:                                       ; preds = %for.cond105
  %113 = load i32, ptr %measure_type.addr, align 4, !tbaa !8
  %tobool120 = icmp ne i32 %113, 0
  br i1 %tobool120, label %land.lhs.true125, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end119
  %114 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %cmp121 = icmp ne i32 %114, 1
  br i1 %cmp121, label %land.lhs.true, label %if.end160

land.lhs.true:                                    ; preds = %lor.lhs.false
  %115 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %cmp123 = icmp ne i32 %115, 11
  br i1 %cmp123, label %land.lhs.true125, label %if.end160

land.lhs.true125:                                 ; preds = %land.lhs.true, %for.end119
  %116 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp126 = icmp sgt i32 %116, 1
  br i1 %cmp126, label %if.then128, label %if.end160

if.then128:                                       ; preds = %land.lhs.true125
  %117 = load i32, ptr %use_commpkg_A, align 4, !tbaa !8
  %tobool129 = icmp ne i32 %117, 0
  br i1 %tobool129, label %if.then130, label %if.else

if.then130:                                       ; preds = %if.then128
  %118 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call131 = call ptr @hypre_ParCSRMatrixExtractBExt(ptr noundef %118, ptr noundef %119, i32 noundef 0)
  store ptr %call131, ptr %S_ext, align 8, !tbaa !4
  br label %if.end133

if.else:                                          ; preds = %if.then128
  %120 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %121 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %call132 = call ptr @hypre_ParCSRMatrixExtractBExt(ptr noundef %120, ptr noundef %121, i32 noundef 0)
  store ptr %call132, ptr %S_ext, align 8, !tbaa !4
  br label %if.end133

if.end133:                                        ; preds = %if.else, %if.then130
  %122 = load ptr, ptr %S_ext, align 8, !tbaa !4
  %i134 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %i134, align 8, !tbaa !16
  store ptr %123, ptr %S_ext_i, align 8, !tbaa !4
  %124 = load ptr, ptr %S_ext, align 8, !tbaa !4
  %big_j = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %124, i32 0, i32 2
  %125 = load ptr, ptr %big_j, align 8, !tbaa !33
  store ptr %125, ptr %S_ext_j, align 8, !tbaa !4
  %126 = load ptr, ptr %S_ext_i, align 8, !tbaa !4
  %127 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %idxprom135 = sext i32 %127 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %126, i64 %idxprom135
  %128 = load i32, ptr %arrayidx136, align 4, !tbaa !8
  store i32 %128, ptr %num_nonzeros, align 4, !tbaa !8
  %129 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %first_col_diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %129, i32 0, i32 4
  %130 = load i32, ptr %first_col_diag, align 4, !tbaa !34
  store i32 %130, ptr %first_col, align 4, !tbaa !8
  %131 = load i32, ptr %measure_type.addr, align 4, !tbaa !8
  %tobool137 = icmp ne i32 %131, 0
  br i1 %tobool137, label %if.then138, label %if.end159

if.then138:                                       ; preds = %if.end133
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc156, %if.then138
  %132 = load i32, ptr %i4, align 4, !tbaa !8
  %133 = load i32, ptr %num_nonzeros, align 4, !tbaa !8
  %cmp140 = icmp slt i32 %132, %133
  br i1 %cmp140, label %for.body142, label %for.end158

for.body142:                                      ; preds = %for.cond139
  %134 = load ptr, ptr %S_ext_j, align 8, !tbaa !4
  %135 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom143 = sext i32 %135 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %134, i64 %idxprom143
  %136 = load i32, ptr %arrayidx144, align 4, !tbaa !8
  %137 = load i32, ptr %first_col, align 4, !tbaa !8
  %sub145 = sub nsw i32 %136, %137
  store i32 %sub145, ptr %index, align 4, !tbaa !8
  %138 = load i32, ptr %index, align 4, !tbaa !8
  %cmp146 = icmp sgt i32 %138, -1
  br i1 %cmp146, label %land.lhs.true148, label %if.end155

land.lhs.true148:                                 ; preds = %for.body142
  %139 = load i32, ptr %index, align 4, !tbaa !8
  %140 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp149 = icmp slt i32 %139, %140
  br i1 %cmp149, label %if.then151, label %if.end155

if.then151:                                       ; preds = %land.lhs.true148
  %141 = load ptr, ptr %measure_array_master, align 8, !tbaa !4
  %142 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom152 = sext i32 %142 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %141, i64 %idxprom152
  %143 = load i32, ptr %arrayidx153, align 4, !tbaa !8
  %inc154 = add nsw i32 %143, 1
  store i32 %inc154, ptr %arrayidx153, align 4, !tbaa !8
  br label %if.end155

if.end155:                                        ; preds = %if.then151, %land.lhs.true148, %for.body142
  br label %for.inc156

for.inc156:                                       ; preds = %if.end155
  %144 = load i32, ptr %i4, align 4, !tbaa !8
  %inc157 = add nsw i32 %144, 1
  store i32 %inc157, ptr %i4, align 4, !tbaa !8
  br label %for.cond139, !llvm.loop !35

for.end158:                                       ; preds = %for.cond139
  br label %if.end159

if.end159:                                        ; preds = %for.end158, %if.end133
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %land.lhs.true125, %land.lhs.true, %lor.lhs.false
  %145 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp161 = icmp eq i32 %145, 3
  br i1 %cmp161, label %if.then163, label %if.end165

if.then163:                                       ; preds = %if.end160
  %call164 = call double @time_getWallclockSeconds()
  store double %call164, ptr %wall_time, align 8, !tbaa !21
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.end160
  %146 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  %147 = load ptr, ptr %146, align 8, !tbaa !4
  %cmp166 = icmp eq ptr %147, null
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %if.end165
  %148 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv169 = sext i32 %148 to i64
  %call170 = call ptr @hypre_CAlloc(i64 noundef %conv169, i64 noundef 4, i32 noundef 0)
  %149 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  store ptr %call170, ptr %149, align 8, !tbaa !4
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end165
  %150 = load ptr, ptr %CF_marker_ptr.addr, align 8, !tbaa !4
  %151 = load ptr, ptr %150, align 8, !tbaa !4
  store ptr %151, ptr %CF_marker, align 8, !tbaa !4
  store i32 0, ptr %num_left, align 4, !tbaa !8
  store i32 0, ptr %j5, align 4, !tbaa !8
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc202, %if.end171
  %152 = load i32, ptr %j5, align 4, !tbaa !8
  %153 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp173 = icmp slt i32 %152, %153
  br i1 %cmp173, label %for.body175, label %for.end204

for.body175:                                      ; preds = %for.cond172
  %154 = load ptr, ptr %S_i, align 8, !tbaa !4
  %155 = load i32, ptr %j5, align 4, !tbaa !8
  %add176 = add nsw i32 %155, 1
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds i32, ptr %154, i64 %idxprom177
  %156 = load i32, ptr %arrayidx178, align 4, !tbaa !8
  %157 = load ptr, ptr %S_i, align 8, !tbaa !4
  %158 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom179 = sext i32 %158 to i64
  %arrayidx180 = getelementptr inbounds i32, ptr %157, i64 %idxprom179
  %159 = load i32, ptr %arrayidx180, align 4, !tbaa !8
  %sub181 = sub nsw i32 %156, %159
  %cmp182 = icmp eq i32 %sub181, 0
  br i1 %cmp182, label %land.lhs.true184, label %if.else198

land.lhs.true184:                                 ; preds = %for.body175
  %160 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %161 = load i32, ptr %j5, align 4, !tbaa !8
  %add185 = add nsw i32 %161, 1
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %160, i64 %idxprom186
  %162 = load i32, ptr %arrayidx187, align 4, !tbaa !8
  %163 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %164 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom188 = sext i32 %164 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %163, i64 %idxprom188
  %165 = load i32, ptr %arrayidx189, align 4, !tbaa !8
  %sub190 = sub nsw i32 %162, %165
  %cmp191 = icmp eq i32 %sub190, 0
  br i1 %cmp191, label %if.then193, label %if.else198

if.then193:                                       ; preds = %land.lhs.true184
  %166 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %167 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom194 = sext i32 %167 to i64
  %arrayidx195 = getelementptr inbounds i32, ptr %166, i64 %idxprom194
  store i32 -3, ptr %arrayidx195, align 4, !tbaa !8
  %168 = load ptr, ptr %measure_array_master, align 8, !tbaa !4
  %169 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom196 = sext i32 %169 to i64
  %arrayidx197 = getelementptr inbounds i32, ptr %168, i64 %idxprom196
  store i32 0, ptr %arrayidx197, align 4, !tbaa !8
  br label %if.end201

if.else198:                                       ; preds = %land.lhs.true184, %for.body175
  %170 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %171 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom199 = sext i32 %171 to i64
  %arrayidx200 = getelementptr inbounds i32, ptr %170, i64 %idxprom199
  store i32 0, ptr %arrayidx200, align 4, !tbaa !8
  br label %if.end201

if.end201:                                        ; preds = %if.else198, %if.then193
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201
  %172 = load i32, ptr %j5, align 4, !tbaa !8
  %inc203 = add nsw i32 %172, 1
  store i32 %inc203, ptr %j5, align 4, !tbaa !8
  br label %for.cond172, !llvm.loop !36

for.end204:                                       ; preds = %for.cond172
  %173 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %cmp205 = icmp eq i32 %173, 22
  br i1 %cmp205, label %if.then207, label %if.end232

if.then207:                                       ; preds = %for.end204
  store i32 0, ptr %j5, align 4, !tbaa !8
  br label %for.cond208

for.cond208:                                      ; preds = %for.inc229, %if.then207
  %174 = load i32, ptr %j5, align 4, !tbaa !8
  %175 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp209 = icmp slt i32 %174, %175
  br i1 %cmp209, label %for.body211, label %for.end231

for.body211:                                      ; preds = %for.cond208
  %176 = load ptr, ptr %S_i, align 8, !tbaa !4
  %177 = load i32, ptr %j5, align 4, !tbaa !8
  %add212 = add nsw i32 %177, 1
  %idxprom213 = sext i32 %add212 to i64
  %arrayidx214 = getelementptr inbounds i32, ptr %176, i64 %idxprom213
  %178 = load i32, ptr %arrayidx214, align 4, !tbaa !8
  %179 = load ptr, ptr %S_i, align 8, !tbaa !4
  %180 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom215 = sext i32 %180 to i64
  %arrayidx216 = getelementptr inbounds i32, ptr %179, i64 %idxprom215
  %181 = load i32, ptr %arrayidx216, align 4, !tbaa !8
  %cmp217 = icmp sgt i32 %178, %181
  br i1 %cmp217, label %land.lhs.true219, label %if.end228

land.lhs.true219:                                 ; preds = %for.body211
  %182 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %183 = load i32, ptr %j5, align 4, !tbaa !8
  %add220 = add nsw i32 %183, 1
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %182, i64 %idxprom221
  %184 = load i32, ptr %arrayidx222, align 4, !tbaa !8
  %185 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %186 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom223 = sext i32 %186 to i64
  %arrayidx224 = getelementptr inbounds i32, ptr %185, i64 %idxprom223
  %187 = load i32, ptr %arrayidx224, align 4, !tbaa !8
  %cmp225 = icmp eq i32 %184, %187
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %land.lhs.true219
  store i32 21, ptr %coarsen_type.addr, align 4, !tbaa !8
  br label %for.end231

if.end228:                                        ; preds = %land.lhs.true219, %for.body211
  br label %for.inc229

for.inc229:                                       ; preds = %if.end228
  %188 = load i32, ptr %j5, align 4, !tbaa !8
  %inc230 = add nsw i32 %188, 1
  store i32 %inc230, ptr %j5, align 4, !tbaa !8
  br label %for.cond208, !llvm.loop !37

for.end231:                                       ; preds = %if.then227, %for.cond208
  br label %if.end232

if.end232:                                        ; preds = %for.end231, %for.end204
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc454, %if.end232
  %189 = load i32, ptr %l, align 4, !tbaa !8
  %190 = load i32, ptr %cgc_its.addr, align 4, !tbaa !8
  %cmp234 = icmp sle i32 %189, %190
  br i1 %cmp234, label %for.body236, label %for.end456

for.body236:                                      ; preds = %for.cond233
  store ptr null, ptr %LoL_head, align 8, !tbaa !4
  store ptr null, ptr %LoL_tail, align 8, !tbaa !4
  store i32 0, ptr %num_left, align 4, !tbaa !8
  %191 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %192 = load ptr, ptr %measure_array_master, align 8, !tbaa !4
  %193 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv237 = sext i32 %193 to i64
  %mul = mul i64 4, %conv237
  call void @hypre_Memcpy(ptr noundef %191, ptr noundef %192, i64 noundef %mul, i32 noundef 0, i32 noundef 0)
  %194 = load ptr, ptr %lists, align 8, !tbaa !4
  %195 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv238 = sext i32 %195 to i64
  %mul239 = mul i64 4, %conv238
  call void @llvm.memset.p0.i64(ptr align 4 %194, i8 0, i64 %mul239, i1 false)
  %196 = load ptr, ptr %where, align 8, !tbaa !4
  %197 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv240 = sext i32 %197 to i64
  %mul241 = mul i64 4, %conv240
  call void @llvm.memset.p0.i64(ptr align 4 %196, i8 0, i64 %mul241, i1 false)
  store i32 0, ptr %j5, align 4, !tbaa !8
  br label %for.cond242

for.cond242:                                      ; preds = %for.inc309, %for.body236
  %198 = load i32, ptr %j5, align 4, !tbaa !8
  %199 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp243 = icmp slt i32 %198, %199
  br i1 %cmp243, label %for.body245, label %for.end311

for.body245:                                      ; preds = %for.cond242
  %200 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %201 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom246 = sext i32 %201 to i64
  %arrayidx247 = getelementptr inbounds i32, ptr %200, i64 %idxprom246
  %202 = load i32, ptr %arrayidx247, align 4, !tbaa !8
  store i32 %202, ptr %measure, align 4, !tbaa !8
  %203 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %204 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom248 = sext i32 %204 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %203, i64 %idxprom248
  %205 = load i32, ptr %arrayidx249, align 4, !tbaa !8
  %cmp250 = icmp ne i32 %205, -3
  br i1 %cmp250, label %if.then252, label %if.end308

if.then252:                                       ; preds = %for.body245
  %206 = load i32, ptr %measure, align 4, !tbaa !8
  %cmp253 = icmp sgt i32 %206, 0
  br i1 %cmp253, label %if.then255, label %if.else257

if.then255:                                       ; preds = %if.then252
  %207 = load i32, ptr %measure, align 4, !tbaa !8
  %208 = load i32, ptr %j5, align 4, !tbaa !8
  %209 = load ptr, ptr %lists, align 8, !tbaa !4
  %210 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %207, i32 noundef %208, ptr noundef %209, ptr noundef %210)
  %211 = load i32, ptr %num_left, align 4, !tbaa !8
  %inc256 = add nsw i32 %211, 1
  store i32 %inc256, ptr %num_left, align 4, !tbaa !8
  br label %if.end307

if.else257:                                       ; preds = %if.then252
  %212 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %213 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom258 = sext i32 %213 to i64
  %arrayidx259 = getelementptr inbounds i32, ptr %212, i64 %idxprom258
  %214 = load i32, ptr %arrayidx259, align 4, !tbaa !8
  %cmp260 = icmp eq i32 %214, 0
  br i1 %cmp260, label %if.then262, label %if.end306

if.then262:                                       ; preds = %if.else257
  %215 = load i32, ptr %measure, align 4, !tbaa !8
  %cmp263 = icmp slt i32 %215, 0
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %if.then262
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 302, i32 noundef 1, ptr noundef @.str.1)
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.then262
  %216 = load ptr, ptr %S_i, align 8, !tbaa !4
  %217 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom267 = sext i32 %217 to i64
  %arrayidx268 = getelementptr inbounds i32, ptr %216, i64 %idxprom267
  %218 = load i32, ptr %arrayidx268, align 4, !tbaa !8
  store i32 %218, ptr %k, align 4, !tbaa !8
  br label %for.cond269

for.cond269:                                      ; preds = %for.inc303, %if.end266
  %219 = load i32, ptr %k, align 4, !tbaa !8
  %220 = load ptr, ptr %S_i, align 8, !tbaa !4
  %221 = load i32, ptr %j5, align 4, !tbaa !8
  %add270 = add nsw i32 %221, 1
  %idxprom271 = sext i32 %add270 to i64
  %arrayidx272 = getelementptr inbounds i32, ptr %220, i64 %idxprom271
  %222 = load i32, ptr %arrayidx272, align 4, !tbaa !8
  %cmp273 = icmp slt i32 %219, %222
  br i1 %cmp273, label %for.body275, label %for.end305

for.body275:                                      ; preds = %for.cond269
  %223 = load ptr, ptr %S_j, align 8, !tbaa !4
  %224 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom276 = sext i32 %224 to i64
  %arrayidx277 = getelementptr inbounds i32, ptr %223, i64 %idxprom276
  %225 = load i32, ptr %arrayidx277, align 4, !tbaa !8
  store i32 %225, ptr %nabor, align 4, !tbaa !8
  %226 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %227 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom278 = sext i32 %227 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %226, i64 %idxprom278
  %228 = load i32, ptr %arrayidx279, align 4, !tbaa !8
  %cmp280 = icmp eq i32 %228, 0
  br i1 %cmp280, label %if.then282, label %if.end302

if.then282:                                       ; preds = %for.body275
  %229 = load i32, ptr %nabor, align 4, !tbaa !8
  %230 = load i32, ptr %j5, align 4, !tbaa !8
  %cmp283 = icmp slt i32 %229, %230
  br i1 %cmp283, label %if.then285, label %if.else297

if.then285:                                       ; preds = %if.then282
  %231 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %232 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom286 = sext i32 %232 to i64
  %arrayidx287 = getelementptr inbounds i32, ptr %231, i64 %idxprom286
  %233 = load i32, ptr %arrayidx287, align 4, !tbaa !8
  store i32 %233, ptr %new_meas, align 4, !tbaa !8
  %234 = load i32, ptr %new_meas, align 4, !tbaa !8
  %cmp288 = icmp sgt i32 %234, 0
  br i1 %cmp288, label %if.then290, label %if.else291

if.then290:                                       ; preds = %if.then285
  %235 = load i32, ptr %new_meas, align 4, !tbaa !8
  %236 = load i32, ptr %nabor, align 4, !tbaa !8
  %237 = load ptr, ptr %lists, align 8, !tbaa !4
  %238 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %235, i32 noundef %236, ptr noundef %237, ptr noundef %238)
  br label %if.end293

if.else291:                                       ; preds = %if.then285
  %239 = load i32, ptr %num_left, align 4, !tbaa !8
  %inc292 = add nsw i32 %239, 1
  store i32 %inc292, ptr %num_left, align 4, !tbaa !8
  br label %if.end293

if.end293:                                        ; preds = %if.else291, %if.then290
  %240 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %241 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom294 = sext i32 %241 to i64
  %arrayidx295 = getelementptr inbounds i32, ptr %240, i64 %idxprom294
  %242 = load i32, ptr %arrayidx295, align 4, !tbaa !8
  %inc296 = add nsw i32 %242, 1
  store i32 %inc296, ptr %arrayidx295, align 4, !tbaa !8
  store i32 %inc296, ptr %new_meas, align 4, !tbaa !8
  %243 = load i32, ptr %new_meas, align 4, !tbaa !8
  %244 = load i32, ptr %nabor, align 4, !tbaa !8
  %245 = load ptr, ptr %lists, align 8, !tbaa !4
  %246 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %243, i32 noundef %244, ptr noundef %245, ptr noundef %246)
  br label %if.end301

if.else297:                                       ; preds = %if.then282
  %247 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %248 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom298 = sext i32 %248 to i64
  %arrayidx299 = getelementptr inbounds i32, ptr %247, i64 %idxprom298
  %249 = load i32, ptr %arrayidx299, align 4, !tbaa !8
  %inc300 = add nsw i32 %249, 1
  store i32 %inc300, ptr %arrayidx299, align 4, !tbaa !8
  store i32 %inc300, ptr %new_meas, align 4, !tbaa !8
  br label %if.end301

if.end301:                                        ; preds = %if.else297, %if.end293
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %for.body275
  br label %for.inc303

for.inc303:                                       ; preds = %if.end302
  %250 = load i32, ptr %k, align 4, !tbaa !8
  %inc304 = add nsw i32 %250, 1
  store i32 %inc304, ptr %k, align 4, !tbaa !8
  br label %for.cond269, !llvm.loop !38

for.end305:                                       ; preds = %for.cond269
  br label %if.end306

if.end306:                                        ; preds = %for.end305, %if.else257
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %if.then255
  br label %if.end308

if.end308:                                        ; preds = %if.end307, %for.body245
  br label %for.inc309

for.inc309:                                       ; preds = %if.end308
  %251 = load i32, ptr %j5, align 4, !tbaa !8
  %inc310 = add nsw i32 %251, 1
  store i32 %inc310, ptr %j5, align 4, !tbaa !8
  br label %for.cond242, !llvm.loop !39

for.end311:                                       ; preds = %for.cond242
  %252 = load i32, ptr %num_left, align 4, !tbaa !8
  %tobool312 = icmp ne i32 %252, 0
  br i1 %tobool312, label %land.lhs.true313, label %if.end319

land.lhs.true313:                                 ; preds = %for.end311
  %253 = load i32, ptr %l, align 4, !tbaa !8
  %cmp314 = icmp eq i32 %253, 1
  br i1 %cmp314, label %if.then316, label %if.end319

if.then316:                                       ; preds = %land.lhs.true313
  %254 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %255 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.double_linked_list, ptr %255, i32 0, i32 3
  %256 = load i32, ptr %head, align 8, !tbaa !40
  %idxprom317 = sext i32 %256 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %254, i64 %idxprom317
  %257 = load i32, ptr %arrayidx318, align 4, !tbaa !8
  store i32 %257, ptr %measure_max, align 4, !tbaa !8
  br label %if.end319

if.end319:                                        ; preds = %if.then316, %land.lhs.true313, %for.end311
  %258 = load i32, ptr %num_left, align 4, !tbaa !8
  %tobool320 = icmp ne i32 %258, 0
  br i1 %tobool320, label %lor.lhs.false321, label %if.then327

lor.lhs.false321:                                 ; preds = %if.end319
  %259 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %260 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %head322 = getelementptr inbounds %struct.double_linked_list, ptr %260, i32 0, i32 3
  %261 = load i32, ptr %head322, align 8, !tbaa !40
  %idxprom323 = sext i32 %261 to i64
  %arrayidx324 = getelementptr inbounds i32, ptr %259, i64 %idxprom323
  %262 = load i32, ptr %arrayidx324, align 4, !tbaa !8
  %263 = load i32, ptr %measure_max, align 4, !tbaa !8
  %cmp325 = icmp slt i32 %262, %263
  br i1 %cmp325, label %if.then327, label %if.end329

if.then327:                                       ; preds = %lor.lhs.false321, %if.end319
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then327
  %264 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %tobool328 = icmp ne ptr %264, null
  br i1 %tobool328, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_ptr) #4
  %265 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  store ptr %265, ptr %list_ptr, align 8, !tbaa !4
  %266 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %next_elt = getelementptr inbounds %struct.double_linked_list, ptr %266, i32 0, i32 1
  %267 = load ptr, ptr %next_elt, align 8, !tbaa !42
  store ptr %267, ptr %LoL_head, align 8, !tbaa !4
  %268 = load ptr, ptr %list_ptr, align 8, !tbaa !4
  call void @hypre_dispose_elt(ptr noundef %268)
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_ptr) #4
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  br label %for.end456

if.end329:                                        ; preds = %lor.lhs.false321
  br label %while.cond330

while.cond330:                                    ; preds = %for.end449, %if.end329
  %269 = load i32, ptr %num_left, align 4, !tbaa !8
  %cmp331 = icmp sgt i32 %269, 0
  br i1 %cmp331, label %while.body333, label %while.end450

while.body333:                                    ; preds = %while.cond330
  %270 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %head334 = getelementptr inbounds %struct.double_linked_list, ptr %270, i32 0, i32 3
  %271 = load i32, ptr %head334, align 8, !tbaa !40
  store i32 %271, ptr %index, align 4, !tbaa !8
  %272 = load i32, ptr %l, align 4, !tbaa !8
  %273 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %274 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom335 = sext i32 %274 to i64
  %arrayidx336 = getelementptr inbounds i32, ptr %273, i64 %idxprom335
  store i32 %272, ptr %arrayidx336, align 4, !tbaa !8
  %275 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %276 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom337 = sext i32 %276 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %275, i64 %idxprom337
  %277 = load i32, ptr %arrayidx338, align 4, !tbaa !8
  store i32 %277, ptr %measure, align 4, !tbaa !8
  %278 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %279 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom339 = sext i32 %279 to i64
  %arrayidx340 = getelementptr inbounds i32, ptr %278, i64 %idxprom339
  store i32 0, ptr %arrayidx340, align 4, !tbaa !8
  %280 = load ptr, ptr %measure_array_master, align 8, !tbaa !4
  %281 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom341 = sext i32 %281 to i64
  %arrayidx342 = getelementptr inbounds i32, ptr %280, i64 %idxprom341
  store i32 0, ptr %arrayidx342, align 4, !tbaa !8
  %282 = load i32, ptr %num_left, align 4, !tbaa !8
  %dec343 = add nsw i32 %282, -1
  store i32 %dec343, ptr %num_left, align 4, !tbaa !8
  %283 = load i32, ptr %measure, align 4, !tbaa !8
  %284 = load i32, ptr %index, align 4, !tbaa !8
  %285 = load ptr, ptr %lists, align 8, !tbaa !4
  %286 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %283, i32 noundef %284, ptr noundef %285, ptr noundef %286)
  %287 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %288 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom344 = sext i32 %288 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %287, i64 %idxprom344
  %289 = load i32, ptr %arrayidx345, align 4, !tbaa !8
  store i32 %289, ptr %j5, align 4, !tbaa !8
  br label %for.cond346

for.cond346:                                      ; preds = %for.inc391, %while.body333
  %290 = load i32, ptr %j5, align 4, !tbaa !8
  %291 = load ptr, ptr %ST_i, align 8, !tbaa !4
  %292 = load i32, ptr %index, align 4, !tbaa !8
  %add347 = add nsw i32 %292, 1
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds i32, ptr %291, i64 %idxprom348
  %293 = load i32, ptr %arrayidx349, align 4, !tbaa !8
  %cmp350 = icmp slt i32 %290, %293
  br i1 %cmp350, label %for.body352, label %for.end393

for.body352:                                      ; preds = %for.cond346
  %294 = load ptr, ptr %ST_j, align 8, !tbaa !4
  %295 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom353 = sext i32 %295 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %294, i64 %idxprom353
  %296 = load i32, ptr %arrayidx354, align 4, !tbaa !8
  store i32 %296, ptr %nabor, align 4, !tbaa !8
  %297 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %298 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom355 = sext i32 %298 to i64
  %arrayidx356 = getelementptr inbounds i32, ptr %297, i64 %idxprom355
  %299 = load i32, ptr %arrayidx356, align 4, !tbaa !8
  %cmp357 = icmp sgt i32 %299, 0
  br i1 %cmp357, label %if.then359, label %if.end390

if.then359:                                       ; preds = %for.body352
  %300 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %301 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom360 = sext i32 %301 to i64
  %arrayidx361 = getelementptr inbounds i32, ptr %300, i64 %idxprom360
  %302 = load i32, ptr %arrayidx361, align 4, !tbaa !8
  store i32 %302, ptr %measure, align 4, !tbaa !8
  %303 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %304 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom362 = sext i32 %304 to i64
  %arrayidx363 = getelementptr inbounds i32, ptr %303, i64 %idxprom362
  store i32 0, ptr %arrayidx363, align 4, !tbaa !8
  %305 = load i32, ptr %measure, align 4, !tbaa !8
  %306 = load i32, ptr %nabor, align 4, !tbaa !8
  %307 = load ptr, ptr %lists, align 8, !tbaa !4
  %308 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %305, i32 noundef %306, ptr noundef %307, ptr noundef %308)
  %309 = load i32, ptr %num_left, align 4, !tbaa !8
  %dec364 = add nsw i32 %309, -1
  store i32 %dec364, ptr %num_left, align 4, !tbaa !8
  %310 = load ptr, ptr %S_i, align 8, !tbaa !4
  %311 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom365 = sext i32 %311 to i64
  %arrayidx366 = getelementptr inbounds i32, ptr %310, i64 %idxprom365
  %312 = load i32, ptr %arrayidx366, align 4, !tbaa !8
  store i32 %312, ptr %k, align 4, !tbaa !8
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc387, %if.then359
  %313 = load i32, ptr %k, align 4, !tbaa !8
  %314 = load ptr, ptr %S_i, align 8, !tbaa !4
  %315 = load i32, ptr %nabor, align 4, !tbaa !8
  %add368 = add nsw i32 %315, 1
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds i32, ptr %314, i64 %idxprom369
  %316 = load i32, ptr %arrayidx370, align 4, !tbaa !8
  %cmp371 = icmp slt i32 %313, %316
  br i1 %cmp371, label %for.body373, label %for.end389

for.body373:                                      ; preds = %for.cond367
  %317 = load ptr, ptr %S_j, align 8, !tbaa !4
  %318 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom374 = sext i32 %318 to i64
  %arrayidx375 = getelementptr inbounds i32, ptr %317, i64 %idxprom374
  %319 = load i32, ptr %arrayidx375, align 4, !tbaa !8
  store i32 %319, ptr %nabor_two, align 4, !tbaa !8
  %320 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %321 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %idxprom376 = sext i32 %321 to i64
  %arrayidx377 = getelementptr inbounds i32, ptr %320, i64 %idxprom376
  %322 = load i32, ptr %arrayidx377, align 4, !tbaa !8
  %cmp378 = icmp sgt i32 %322, 0
  br i1 %cmp378, label %if.then380, label %if.end386

if.then380:                                       ; preds = %for.body373
  %323 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %324 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %idxprom381 = sext i32 %324 to i64
  %arrayidx382 = getelementptr inbounds i32, ptr %323, i64 %idxprom381
  %325 = load i32, ptr %arrayidx382, align 4, !tbaa !8
  store i32 %325, ptr %measure, align 4, !tbaa !8
  %326 = load i32, ptr %measure, align 4, !tbaa !8
  %327 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %328 = load ptr, ptr %lists, align 8, !tbaa !4
  %329 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %326, i32 noundef %327, ptr noundef %328, ptr noundef %329)
  %330 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %331 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %idxprom383 = sext i32 %331 to i64
  %arrayidx384 = getelementptr inbounds i32, ptr %330, i64 %idxprom383
  %332 = load i32, ptr %arrayidx384, align 4, !tbaa !8
  %inc385 = add nsw i32 %332, 1
  store i32 %inc385, ptr %arrayidx384, align 4, !tbaa !8
  store i32 %inc385, ptr %new_meas, align 4, !tbaa !8
  %333 = load i32, ptr %new_meas, align 4, !tbaa !8
  %334 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %335 = load ptr, ptr %lists, align 8, !tbaa !4
  %336 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %333, i32 noundef %334, ptr noundef %335, ptr noundef %336)
  br label %if.end386

if.end386:                                        ; preds = %if.then380, %for.body373
  br label %for.inc387

for.inc387:                                       ; preds = %if.end386
  %337 = load i32, ptr %k, align 4, !tbaa !8
  %inc388 = add nsw i32 %337, 1
  store i32 %inc388, ptr %k, align 4, !tbaa !8
  br label %for.cond367, !llvm.loop !44

for.end389:                                       ; preds = %for.cond367
  br label %if.end390

if.end390:                                        ; preds = %for.end389, %for.body352
  br label %for.inc391

for.inc391:                                       ; preds = %if.end390
  %338 = load i32, ptr %j5, align 4, !tbaa !8
  %inc392 = add nsw i32 %338, 1
  store i32 %inc392, ptr %j5, align 4, !tbaa !8
  br label %for.cond346, !llvm.loop !45

for.end393:                                       ; preds = %for.cond346
  %339 = load ptr, ptr %S_i, align 8, !tbaa !4
  %340 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom394 = sext i32 %340 to i64
  %arrayidx395 = getelementptr inbounds i32, ptr %339, i64 %idxprom394
  %341 = load i32, ptr %arrayidx395, align 4, !tbaa !8
  store i32 %341, ptr %j5, align 4, !tbaa !8
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc447, %for.end393
  %342 = load i32, ptr %j5, align 4, !tbaa !8
  %343 = load ptr, ptr %S_i, align 8, !tbaa !4
  %344 = load i32, ptr %index, align 4, !tbaa !8
  %add397 = add nsw i32 %344, 1
  %idxprom398 = sext i32 %add397 to i64
  %arrayidx399 = getelementptr inbounds i32, ptr %343, i64 %idxprom398
  %345 = load i32, ptr %arrayidx399, align 4, !tbaa !8
  %cmp400 = icmp slt i32 %342, %345
  br i1 %cmp400, label %for.body402, label %for.end449

for.body402:                                      ; preds = %for.cond396
  %346 = load ptr, ptr %S_j, align 8, !tbaa !4
  %347 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom403 = sext i32 %347 to i64
  %arrayidx404 = getelementptr inbounds i32, ptr %346, i64 %idxprom403
  %348 = load i32, ptr %arrayidx404, align 4, !tbaa !8
  store i32 %348, ptr %nabor, align 4, !tbaa !8
  %349 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %350 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom405 = sext i32 %350 to i64
  %arrayidx406 = getelementptr inbounds i32, ptr %349, i64 %idxprom405
  %351 = load i32, ptr %arrayidx406, align 4, !tbaa !8
  %cmp407 = icmp sgt i32 %351, 0
  br i1 %cmp407, label %if.then409, label %if.end446

if.then409:                                       ; preds = %for.body402
  %352 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %353 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom410 = sext i32 %353 to i64
  %arrayidx411 = getelementptr inbounds i32, ptr %352, i64 %idxprom410
  %354 = load i32, ptr %arrayidx411, align 4, !tbaa !8
  store i32 %354, ptr %measure, align 4, !tbaa !8
  %355 = load i32, ptr %measure, align 4, !tbaa !8
  %356 = load i32, ptr %nabor, align 4, !tbaa !8
  %357 = load ptr, ptr %lists, align 8, !tbaa !4
  %358 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %355, i32 noundef %356, ptr noundef %357, ptr noundef %358)
  %359 = load i32, ptr %measure, align 4, !tbaa !8
  %dec412 = add nsw i32 %359, -1
  store i32 %dec412, ptr %measure, align 4, !tbaa !8
  %360 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %361 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom413 = sext i32 %361 to i64
  %arrayidx414 = getelementptr inbounds i32, ptr %360, i64 %idxprom413
  store i32 %dec412, ptr %arrayidx414, align 4, !tbaa !8
  %362 = load i32, ptr %measure, align 4, !tbaa !8
  %cmp415 = icmp sgt i32 %362, 0
  br i1 %cmp415, label %if.then417, label %if.else418

if.then417:                                       ; preds = %if.then409
  %363 = load i32, ptr %measure, align 4, !tbaa !8
  %364 = load i32, ptr %nabor, align 4, !tbaa !8
  %365 = load ptr, ptr %lists, align 8, !tbaa !4
  %366 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %363, i32 noundef %364, ptr noundef %365, ptr noundef %366)
  br label %if.end445

if.else418:                                       ; preds = %if.then409
  %367 = load i32, ptr %num_left, align 4, !tbaa !8
  %dec419 = add nsw i32 %367, -1
  store i32 %dec419, ptr %num_left, align 4, !tbaa !8
  %368 = load ptr, ptr %S_i, align 8, !tbaa !4
  %369 = load i32, ptr %nabor, align 4, !tbaa !8
  %idxprom420 = sext i32 %369 to i64
  %arrayidx421 = getelementptr inbounds i32, ptr %368, i64 %idxprom420
  %370 = load i32, ptr %arrayidx421, align 4, !tbaa !8
  store i32 %370, ptr %k, align 4, !tbaa !8
  br label %for.cond422

for.cond422:                                      ; preds = %for.inc442, %if.else418
  %371 = load i32, ptr %k, align 4, !tbaa !8
  %372 = load ptr, ptr %S_i, align 8, !tbaa !4
  %373 = load i32, ptr %nabor, align 4, !tbaa !8
  %add423 = add nsw i32 %373, 1
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %372, i64 %idxprom424
  %374 = load i32, ptr %arrayidx425, align 4, !tbaa !8
  %cmp426 = icmp slt i32 %371, %374
  br i1 %cmp426, label %for.body428, label %for.end444

for.body428:                                      ; preds = %for.cond422
  %375 = load ptr, ptr %S_j, align 8, !tbaa !4
  %376 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom429 = sext i32 %376 to i64
  %arrayidx430 = getelementptr inbounds i32, ptr %375, i64 %idxprom429
  %377 = load i32, ptr %arrayidx430, align 4, !tbaa !8
  store i32 %377, ptr %nabor_two, align 4, !tbaa !8
  %378 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %379 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %idxprom431 = sext i32 %379 to i64
  %arrayidx432 = getelementptr inbounds i32, ptr %378, i64 %idxprom431
  %380 = load i32, ptr %arrayidx432, align 4, !tbaa !8
  %cmp433 = icmp sgt i32 %380, 0
  br i1 %cmp433, label %if.then435, label %if.end441

if.then435:                                       ; preds = %for.body428
  %381 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %382 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %idxprom436 = sext i32 %382 to i64
  %arrayidx437 = getelementptr inbounds i32, ptr %381, i64 %idxprom436
  %383 = load i32, ptr %arrayidx437, align 4, !tbaa !8
  store i32 %383, ptr %new_meas, align 4, !tbaa !8
  %384 = load i32, ptr %new_meas, align 4, !tbaa !8
  %385 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %386 = load ptr, ptr %lists, align 8, !tbaa !4
  %387 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %384, i32 noundef %385, ptr noundef %386, ptr noundef %387)
  %388 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %389 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %idxprom438 = sext i32 %389 to i64
  %arrayidx439 = getelementptr inbounds i32, ptr %388, i64 %idxprom438
  %390 = load i32, ptr %arrayidx439, align 4, !tbaa !8
  %inc440 = add nsw i32 %390, 1
  store i32 %inc440, ptr %arrayidx439, align 4, !tbaa !8
  store i32 %inc440, ptr %new_meas, align 4, !tbaa !8
  %391 = load i32, ptr %new_meas, align 4, !tbaa !8
  %392 = load i32, ptr %nabor_two, align 4, !tbaa !8
  %393 = load ptr, ptr %lists, align 8, !tbaa !4
  %394 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %391, i32 noundef %392, ptr noundef %393, ptr noundef %394)
  br label %if.end441

if.end441:                                        ; preds = %if.then435, %for.body428
  br label %for.inc442

for.inc442:                                       ; preds = %if.end441
  %395 = load i32, ptr %k, align 4, !tbaa !8
  %inc443 = add nsw i32 %395, 1
  store i32 %inc443, ptr %k, align 4, !tbaa !8
  br label %for.cond422, !llvm.loop !46

for.end444:                                       ; preds = %for.cond422
  br label %if.end445

if.end445:                                        ; preds = %for.end444, %if.then417
  br label %if.end446

if.end446:                                        ; preds = %if.end445, %for.body402
  br label %for.inc447

for.inc447:                                       ; preds = %if.end446
  %396 = load i32, ptr %j5, align 4, !tbaa !8
  %inc448 = add nsw i32 %396, 1
  store i32 %inc448, ptr %j5, align 4, !tbaa !8
  br label %for.cond396, !llvm.loop !47

for.end449:                                       ; preds = %for.cond396
  br label %while.cond330, !llvm.loop !48

while.end450:                                     ; preds = %while.cond330
  %397 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %tobool451 = icmp ne ptr %397, null
  br i1 %tobool451, label %if.then452, label %if.end453

if.then452:                                       ; preds = %while.end450
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 452, i32 noundef 1, ptr noundef @.str.2)
  br label %if.end453

if.end453:                                        ; preds = %if.then452, %while.end450
  br label %for.inc454

for.inc454:                                       ; preds = %if.end453
  %398 = load i32, ptr %l, align 4, !tbaa !8
  %inc455 = add nsw i32 %398, 1
  store i32 %inc455, ptr %l, align 4, !tbaa !8
  br label %for.cond233, !llvm.loop !49

for.end456:                                       ; preds = %while.end, %for.cond233
  %399 = load i32, ptr %l, align 4, !tbaa !8
  %dec457 = add nsw i32 %399, -1
  store i32 %dec457, ptr %l, align 4, !tbaa !8
  %400 = load ptr, ptr %measure_array, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %400, i32 noundef 0)
  store ptr null, ptr %measure_array, align 8, !tbaa !4
  %401 = load ptr, ptr %measure_array_master, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %401, i32 noundef 0)
  store ptr null, ptr %measure_array_master, align 8, !tbaa !4
  %402 = load ptr, ptr %ST, align 8, !tbaa !4
  %call458 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %402)
  %403 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp459 = icmp eq i32 %403, 3
  br i1 %cmp459, label %if.then461, label %if.end465

if.then461:                                       ; preds = %for.end456
  %call462 = call double @time_getWallclockSeconds()
  %404 = load double, ptr %wall_time, align 8, !tbaa !21
  %sub463 = fsub double %call462, %404
  store double %sub463, ptr %wall_time, align 8, !tbaa !21
  %405 = load i32, ptr %my_id, align 4, !tbaa !8
  %406 = load double, ptr %wall_time, align 8, !tbaa !21
  %call464 = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.3, i32 noundef %405, double noundef %406)
  br label %if.end465

if.end465:                                        ; preds = %if.then461, %for.end456
  %407 = load ptr, ptr %lists, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %407, i32 noundef 0)
  store ptr null, ptr %lists, align 8, !tbaa !4
  %408 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %408, i32 noundef 0)
  store ptr null, ptr %where, align 8, !tbaa !4
  %409 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp466 = icmp sgt i32 %409, 1
  br i1 %cmp466, label %if.then468, label %if.else482

if.then468:                                       ; preds = %if.end465
  %410 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp469 = icmp eq i32 %410, 3
  br i1 %cmp469, label %if.then471, label %if.end473

if.then471:                                       ; preds = %if.then468
  %call472 = call double @time_getWallclockSeconds()
  store double %call472, ptr %wall_time, align 8, !tbaa !21
  br label %if.end473

if.end473:                                        ; preds = %if.then471, %if.then468
  %411 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %412 = load i32, ptr %l, align 4, !tbaa !8
  %413 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %414 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %call474 = call i32 @hypre_BoomerAMGCoarsenCGC(ptr noundef %411, i32 noundef %412, i32 noundef %413, ptr noundef %414)
  %415 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp475 = icmp eq i32 %415, 3
  br i1 %cmp475, label %if.then477, label %if.end481

if.then477:                                       ; preds = %if.end473
  %call478 = call double @time_getWallclockSeconds()
  %416 = load double, ptr %wall_time, align 8, !tbaa !21
  %sub479 = fsub double %call478, %416
  store double %sub479, ptr %wall_time, align 8, !tbaa !21
  %417 = load i32, ptr %my_id, align 4, !tbaa !8
  %418 = load double, ptr %wall_time, align 8, !tbaa !21
  %call480 = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.4, i32 noundef %417, double noundef %418)
  br label %if.end481

if.end481:                                        ; preds = %if.then477, %if.end473
  br label %if.end501

if.else482:                                       ; preds = %if.end465
  store i32 0, ptr %j5, align 4, !tbaa !8
  br label %for.cond483

for.cond483:                                      ; preds = %for.inc498, %if.else482
  %419 = load i32, ptr %j5, align 4, !tbaa !8
  %420 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp484 = icmp slt i32 %419, %420
  br i1 %cmp484, label %for.body486, label %for.end500

for.body486:                                      ; preds = %for.cond483
  %421 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %422 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom487 = sext i32 %422 to i64
  %arrayidx488 = getelementptr inbounds i32, ptr %421, i64 %idxprom487
  %423 = load i32, ptr %arrayidx488, align 4, !tbaa !8
  %cmp489 = icmp eq i32 %423, 1
  br i1 %cmp489, label %if.then491, label %if.else494

if.then491:                                       ; preds = %for.body486
  %424 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %425 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom492 = sext i32 %425 to i64
  %arrayidx493 = getelementptr inbounds i32, ptr %424, i64 %idxprom492
  store i32 1, ptr %arrayidx493, align 4, !tbaa !8
  br label %if.end497

if.else494:                                       ; preds = %for.body486
  %426 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %427 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom495 = sext i32 %427 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %426, i64 %idxprom495
  store i32 -1, ptr %arrayidx496, align 4, !tbaa !8
  br label %if.end497

if.end497:                                        ; preds = %if.else494, %if.then491
  br label %for.inc498

for.inc498:                                       ; preds = %if.end497
  %428 = load i32, ptr %j5, align 4, !tbaa !8
  %inc499 = add nsw i32 %428, 1
  store i32 %inc499, ptr %j5, align 4, !tbaa !8
  br label %for.cond483, !llvm.loop !50

for.end500:                                       ; preds = %for.cond483
  br label %if.end501

if.end501:                                        ; preds = %for.end500, %if.end481
  store i32 0, ptr %j5, align 4, !tbaa !8
  br label %for.cond502

for.cond502:                                      ; preds = %for.inc513, %if.end501
  %429 = load i32, ptr %j5, align 4, !tbaa !8
  %430 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp503 = icmp slt i32 %429, %430
  br i1 %cmp503, label %for.body505, label %for.end515

for.body505:                                      ; preds = %for.cond502
  %431 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %432 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom506 = sext i32 %432 to i64
  %arrayidx507 = getelementptr inbounds i32, ptr %431, i64 %idxprom506
  %433 = load i32, ptr %arrayidx507, align 4, !tbaa !8
  %tobool508 = icmp ne i32 %433, 0
  br i1 %tobool508, label %if.end512, label %if.then509

if.then509:                                       ; preds = %for.body505
  %434 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %435 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom510 = sext i32 %435 to i64
  %arrayidx511 = getelementptr inbounds i32, ptr %434, i64 %idxprom510
  store i32 -1, ptr %arrayidx511, align 4, !tbaa !8
  br label %if.end512

if.end512:                                        ; preds = %if.then509, %for.body505
  br label %for.inc513

for.inc513:                                       ; preds = %if.end512
  %436 = load i32, ptr %j5, align 4, !tbaa !8
  %inc514 = add nsw i32 %436, 1
  store i32 %inc514, ptr %j5, align 4, !tbaa !8
  br label %for.cond502, !llvm.loop !51

for.end515:                                       ; preds = %for.cond502
  %437 = load i32, ptr %num_variables, align 4, !tbaa !8
  %conv516 = sext i32 %437 to i64
  %call517 = call ptr @hypre_CAlloc(i64 noundef %conv516, i64 noundef 4, i32 noundef 0)
  store ptr %call517, ptr %graph_array, align 8, !tbaa !4
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond518

for.cond518:                                      ; preds = %for.inc524, %for.end515
  %438 = load i32, ptr %i4, align 4, !tbaa !8
  %439 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp519 = icmp slt i32 %438, %439
  br i1 %cmp519, label %for.body521, label %for.end526

for.body521:                                      ; preds = %for.cond518
  %440 = load ptr, ptr %graph_array, align 8, !tbaa !4
  %441 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom522 = sext i32 %441 to i64
  %arrayidx523 = getelementptr inbounds i32, ptr %440, i64 %idxprom522
  store i32 -1, ptr %arrayidx523, align 4, !tbaa !8
  br label %for.inc524

for.inc524:                                       ; preds = %for.body521
  %442 = load i32, ptr %i4, align 4, !tbaa !8
  %inc525 = add nsw i32 %442, 1
  store i32 %inc525, ptr %i4, align 4, !tbaa !8
  br label %for.cond518, !llvm.loop !52

for.end526:                                       ; preds = %for.cond518
  %443 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp527 = icmp eq i32 %443, 3
  br i1 %cmp527, label %if.then529, label %if.end531

if.then529:                                       ; preds = %for.end526
  %call530 = call double @time_getWallclockSeconds()
  store double %call530, ptr %wall_time, align 8, !tbaa !21
  br label %if.end531

if.end531:                                        ; preds = %if.then529, %for.end526
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond532

for.cond532:                                      ; preds = %for.inc625, %if.end531
  %444 = load i32, ptr %i4, align 4, !tbaa !8
  %445 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp533 = icmp slt i32 %444, %445
  br i1 %cmp533, label %for.body535, label %for.end627

for.body535:                                      ; preds = %for.cond532
  %446 = load i32, ptr %ci_tilde_mark, align 4, !tbaa !8
  %447 = load i32, ptr %i4, align 4, !tbaa !8
  %cmp536 = icmp ne i32 %446, %447
  br i1 %cmp536, label %if.then538, label %if.end539

if.then538:                                       ; preds = %for.body535
  store i32 -1, ptr %ci_tilde, align 4, !tbaa !8
  br label %if.end539

if.end539:                                        ; preds = %if.then538, %for.body535
  %448 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %449 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom540 = sext i32 %449 to i64
  %arrayidx541 = getelementptr inbounds i32, ptr %448, i64 %idxprom540
  %450 = load i32, ptr %arrayidx541, align 4, !tbaa !8
  %cmp542 = icmp eq i32 %450, -1
  br i1 %cmp542, label %if.then544, label %if.end624

if.then544:                                       ; preds = %if.end539
  %451 = load ptr, ptr %S_i, align 8, !tbaa !4
  %452 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom545 = sext i32 %452 to i64
  %arrayidx546 = getelementptr inbounds i32, ptr %451, i64 %idxprom545
  %453 = load i32, ptr %arrayidx546, align 4, !tbaa !8
  store i32 %453, ptr %ji, align 4, !tbaa !8
  br label %for.cond547

for.cond547:                                      ; preds = %for.inc564, %if.then544
  %454 = load i32, ptr %ji, align 4, !tbaa !8
  %455 = load ptr, ptr %S_i, align 8, !tbaa !4
  %456 = load i32, ptr %i4, align 4, !tbaa !8
  %add548 = add nsw i32 %456, 1
  %idxprom549 = sext i32 %add548 to i64
  %arrayidx550 = getelementptr inbounds i32, ptr %455, i64 %idxprom549
  %457 = load i32, ptr %arrayidx550, align 4, !tbaa !8
  %cmp551 = icmp slt i32 %454, %457
  br i1 %cmp551, label %for.body553, label %for.end566

for.body553:                                      ; preds = %for.cond547
  %458 = load ptr, ptr %S_j, align 8, !tbaa !4
  %459 = load i32, ptr %ji, align 4, !tbaa !8
  %idxprom554 = sext i32 %459 to i64
  %arrayidx555 = getelementptr inbounds i32, ptr %458, i64 %idxprom554
  %460 = load i32, ptr %arrayidx555, align 4, !tbaa !8
  store i32 %460, ptr %j5, align 4, !tbaa !8
  %461 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %462 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom556 = sext i32 %462 to i64
  %arrayidx557 = getelementptr inbounds i32, ptr %461, i64 %idxprom556
  %463 = load i32, ptr %arrayidx557, align 4, !tbaa !8
  %cmp558 = icmp sgt i32 %463, 0
  br i1 %cmp558, label %if.then560, label %if.end563

if.then560:                                       ; preds = %for.body553
  %464 = load i32, ptr %i4, align 4, !tbaa !8
  %465 = load ptr, ptr %graph_array, align 8, !tbaa !4
  %466 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom561 = sext i32 %466 to i64
  %arrayidx562 = getelementptr inbounds i32, ptr %465, i64 %idxprom561
  store i32 %464, ptr %arrayidx562, align 4, !tbaa !8
  br label %if.end563

if.end563:                                        ; preds = %if.then560, %for.body553
  br label %for.inc564

for.inc564:                                       ; preds = %if.end563
  %467 = load i32, ptr %ji, align 4, !tbaa !8
  %inc565 = add nsw i32 %467, 1
  store i32 %inc565, ptr %ji, align 4, !tbaa !8
  br label %for.cond547, !llvm.loop !53

for.end566:                                       ; preds = %for.cond547
  %468 = load ptr, ptr %S_i, align 8, !tbaa !4
  %469 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom567 = sext i32 %469 to i64
  %arrayidx568 = getelementptr inbounds i32, ptr %468, i64 %idxprom567
  %470 = load i32, ptr %arrayidx568, align 4, !tbaa !8
  store i32 %470, ptr %ji, align 4, !tbaa !8
  br label %for.cond569

for.cond569:                                      ; preds = %for.inc621, %for.end566
  %471 = load i32, ptr %ji, align 4, !tbaa !8
  %472 = load ptr, ptr %S_i, align 8, !tbaa !4
  %473 = load i32, ptr %i4, align 4, !tbaa !8
  %add570 = add nsw i32 %473, 1
  %idxprom571 = sext i32 %add570 to i64
  %arrayidx572 = getelementptr inbounds i32, ptr %472, i64 %idxprom571
  %474 = load i32, ptr %arrayidx572, align 4, !tbaa !8
  %cmp573 = icmp slt i32 %471, %474
  br i1 %cmp573, label %for.body575, label %for.end623

for.body575:                                      ; preds = %for.cond569
  %475 = load ptr, ptr %S_j, align 8, !tbaa !4
  %476 = load i32, ptr %ji, align 4, !tbaa !8
  %idxprom576 = sext i32 %476 to i64
  %arrayidx577 = getelementptr inbounds i32, ptr %475, i64 %idxprom576
  %477 = load i32, ptr %arrayidx577, align 4, !tbaa !8
  store i32 %477, ptr %j5, align 4, !tbaa !8
  %478 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %479 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom578 = sext i32 %479 to i64
  %arrayidx579 = getelementptr inbounds i32, ptr %478, i64 %idxprom578
  %480 = load i32, ptr %arrayidx579, align 4, !tbaa !8
  %cmp580 = icmp eq i32 %480, -1
  br i1 %cmp580, label %if.then582, label %if.end620

if.then582:                                       ; preds = %for.body575
  store i32 1, ptr %set_empty, align 4, !tbaa !8
  %481 = load ptr, ptr %S_i, align 8, !tbaa !4
  %482 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom583 = sext i32 %482 to i64
  %arrayidx584 = getelementptr inbounds i32, ptr %481, i64 %idxprom583
  %483 = load i32, ptr %arrayidx584, align 4, !tbaa !8
  store i32 %483, ptr %jj, align 4, !tbaa !8
  br label %for.cond585

for.cond585:                                      ; preds = %for.inc600, %if.then582
  %484 = load i32, ptr %jj, align 4, !tbaa !8
  %485 = load ptr, ptr %S_i, align 8, !tbaa !4
  %486 = load i32, ptr %j5, align 4, !tbaa !8
  %add586 = add nsw i32 %486, 1
  %idxprom587 = sext i32 %add586 to i64
  %arrayidx588 = getelementptr inbounds i32, ptr %485, i64 %idxprom587
  %487 = load i32, ptr %arrayidx588, align 4, !tbaa !8
  %cmp589 = icmp slt i32 %484, %487
  br i1 %cmp589, label %for.body591, label %for.end602

for.body591:                                      ; preds = %for.cond585
  %488 = load ptr, ptr %S_j, align 8, !tbaa !4
  %489 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom592 = sext i32 %489 to i64
  %arrayidx593 = getelementptr inbounds i32, ptr %488, i64 %idxprom592
  %490 = load i32, ptr %arrayidx593, align 4, !tbaa !8
  store i32 %490, ptr %index, align 4, !tbaa !8
  %491 = load ptr, ptr %graph_array, align 8, !tbaa !4
  %492 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom594 = sext i32 %492 to i64
  %arrayidx595 = getelementptr inbounds i32, ptr %491, i64 %idxprom594
  %493 = load i32, ptr %arrayidx595, align 4, !tbaa !8
  %494 = load i32, ptr %i4, align 4, !tbaa !8
  %cmp596 = icmp eq i32 %493, %494
  br i1 %cmp596, label %if.then598, label %if.end599

if.then598:                                       ; preds = %for.body591
  store i32 0, ptr %set_empty, align 4, !tbaa !8
  br label %for.end602

if.end599:                                        ; preds = %for.body591
  br label %for.inc600

for.inc600:                                       ; preds = %if.end599
  %495 = load i32, ptr %jj, align 4, !tbaa !8
  %inc601 = add nsw i32 %495, 1
  store i32 %inc601, ptr %jj, align 4, !tbaa !8
  br label %for.cond585, !llvm.loop !54

for.end602:                                       ; preds = %if.then598, %for.cond585
  %496 = load i32, ptr %set_empty, align 4, !tbaa !8
  %tobool603 = icmp ne i32 %496, 0
  br i1 %tobool603, label %if.then604, label %if.end619

if.then604:                                       ; preds = %for.end602
  %497 = load i32, ptr %C_i_nonempty, align 4, !tbaa !8
  %tobool605 = icmp ne i32 %497, 0
  br i1 %tobool605, label %if.then606, label %if.else615

if.then606:                                       ; preds = %if.then604
  %498 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %499 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom607 = sext i32 %499 to i64
  %arrayidx608 = getelementptr inbounds i32, ptr %498, i64 %idxprom607
  store i32 1, ptr %arrayidx608, align 4, !tbaa !8
  %500 = load i32, ptr %ci_tilde, align 4, !tbaa !8
  %cmp609 = icmp sgt i32 %500, -1
  br i1 %cmp609, label %if.then611, label %if.end614

if.then611:                                       ; preds = %if.then606
  %501 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %502 = load i32, ptr %ci_tilde, align 4, !tbaa !8
  %idxprom612 = sext i32 %502 to i64
  %arrayidx613 = getelementptr inbounds i32, ptr %501, i64 %idxprom612
  store i32 -1, ptr %arrayidx613, align 4, !tbaa !8
  store i32 -1, ptr %ci_tilde, align 4, !tbaa !8
  br label %if.end614

if.end614:                                        ; preds = %if.then611, %if.then606
  store i32 0, ptr %C_i_nonempty, align 4, !tbaa !8
  br label %for.end623

if.else615:                                       ; preds = %if.then604
  %503 = load i32, ptr %j5, align 4, !tbaa !8
  store i32 %503, ptr %ci_tilde, align 4, !tbaa !8
  %504 = load i32, ptr %i4, align 4, !tbaa !8
  store i32 %504, ptr %ci_tilde_mark, align 4, !tbaa !8
  %505 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %506 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom616 = sext i32 %506 to i64
  %arrayidx617 = getelementptr inbounds i32, ptr %505, i64 %idxprom616
  store i32 1, ptr %arrayidx617, align 4, !tbaa !8
  store i32 1, ptr %C_i_nonempty, align 4, !tbaa !8
  %507 = load i32, ptr %i4, align 4, !tbaa !8
  %dec618 = add nsw i32 %507, -1
  store i32 %dec618, ptr %i4, align 4, !tbaa !8
  br label %for.end623

if.end619:                                        ; preds = %for.end602
  br label %if.end620

if.end620:                                        ; preds = %if.end619, %for.body575
  br label %for.inc621

for.inc621:                                       ; preds = %if.end620
  %508 = load i32, ptr %ji, align 4, !tbaa !8
  %inc622 = add nsw i32 %508, 1
  store i32 %inc622, ptr %ji, align 4, !tbaa !8
  br label %for.cond569, !llvm.loop !55

for.end623:                                       ; preds = %if.else615, %if.end614, %for.cond569
  br label %if.end624

if.end624:                                        ; preds = %for.end623, %if.end539
  br label %for.inc625

for.inc625:                                       ; preds = %if.end624
  %509 = load i32, ptr %i4, align 4, !tbaa !8
  %inc626 = add nsw i32 %509, 1
  store i32 %inc626, ptr %i4, align 4, !tbaa !8
  br label %for.cond532, !llvm.loop !56

for.end627:                                       ; preds = %for.cond532
  %510 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp628 = icmp eq i32 %510, 3
  br i1 %cmp628, label %land.lhs.true630, label %if.end637

land.lhs.true630:                                 ; preds = %for.end627
  %511 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %cmp631 = icmp ne i32 %511, 2
  br i1 %cmp631, label %if.then633, label %if.end637

if.then633:                                       ; preds = %land.lhs.true630
  %call634 = call double @time_getWallclockSeconds()
  %512 = load double, ptr %wall_time, align 8, !tbaa !21
  %sub635 = fsub double %call634, %512
  store double %sub635, ptr %wall_time, align 8, !tbaa !21
  %513 = load i32, ptr %my_id, align 4, !tbaa !8
  %514 = load double, ptr %wall_time, align 8, !tbaa !21
  %call636 = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.5, i32 noundef %513, double noundef %514)
  br label %if.end637

if.end637:                                        ; preds = %if.then633, %land.lhs.true630, %for.end627
  %515 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp638 = icmp eq i32 %515, 3
  br i1 %cmp638, label %if.then640, label %if.end642

if.then640:                                       ; preds = %if.end637
  %call641 = call double @time_getWallclockSeconds()
  store double %call641, ptr %wall_time, align 8, !tbaa !21
  br label %if.end642

if.end642:                                        ; preds = %if.then640, %if.end637
  %516 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %conv643 = sext i32 %516 to i64
  %call644 = call ptr @hypre_CAlloc(i64 noundef %conv643, i64 noundef 4, i32 noundef 0)
  store ptr %call644, ptr %CF_marker_offd, align 8, !tbaa !4
  %517 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %517, i32 0, i32 3
  %518 = load ptr, ptr %send_map_starts, align 8, !tbaa !57
  %519 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom645 = sext i32 %519 to i64
  %arrayidx646 = getelementptr inbounds i32, ptr %518, i64 %idxprom645
  %520 = load i32, ptr %arrayidx646, align 4, !tbaa !8
  %conv647 = sext i32 %520 to i64
  %call648 = call ptr @hypre_CAlloc(i64 noundef %conv647, i64 noundef 4, i32 noundef 0)
  store ptr %call648, ptr %int_buf_data, align 8, !tbaa !4
  store i32 0, ptr %index, align 4, !tbaa !8
  store i32 0, ptr %i4, align 4, !tbaa !8
  br label %for.cond649

for.cond649:                                      ; preds = %for.inc674, %if.end642
  %521 = load i32, ptr %i4, align 4, !tbaa !8
  %522 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp650 = icmp slt i32 %521, %522
  br i1 %cmp650, label %for.body652, label %for.end676

for.body652:                                      ; preds = %for.cond649
  %523 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts653 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %523, i32 0, i32 3
  %524 = load ptr, ptr %send_map_starts653, align 8, !tbaa !57
  %525 = load i32, ptr %i4, align 4, !tbaa !8
  %idxprom654 = sext i32 %525 to i64
  %arrayidx655 = getelementptr inbounds i32, ptr %524, i64 %idxprom654
  %526 = load i32, ptr %arrayidx655, align 4, !tbaa !8
  store i32 %526, ptr %start, align 4, !tbaa !8
  %527 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %527, ptr %j5, align 4, !tbaa !8
  br label %for.cond656

for.cond656:                                      ; preds = %for.inc671, %for.body652
  %528 = load i32, ptr %j5, align 4, !tbaa !8
  %529 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts657 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %529, i32 0, i32 3
  %530 = load ptr, ptr %send_map_starts657, align 8, !tbaa !57
  %531 = load i32, ptr %i4, align 4, !tbaa !8
  %add658 = add nsw i32 %531, 1
  %idxprom659 = sext i32 %add658 to i64
  %arrayidx660 = getelementptr inbounds i32, ptr %530, i64 %idxprom659
  %532 = load i32, ptr %arrayidx660, align 4, !tbaa !8
  %cmp661 = icmp slt i32 %528, %532
  br i1 %cmp661, label %for.body663, label %for.end673

for.body663:                                      ; preds = %for.cond656
  %533 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %534 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %534, i32 0, i32 4
  %535 = load ptr, ptr %send_map_elmts, align 8, !tbaa !58
  %536 = load i32, ptr %j5, align 4, !tbaa !8
  %idxprom664 = sext i32 %536 to i64
  %arrayidx665 = getelementptr inbounds i32, ptr %535, i64 %idxprom664
  %537 = load i32, ptr %arrayidx665, align 4, !tbaa !8
  %idxprom666 = sext i32 %537 to i64
  %arrayidx667 = getelementptr inbounds i32, ptr %533, i64 %idxprom666
  %538 = load i32, ptr %arrayidx667, align 4, !tbaa !8
  %539 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %540 = load i32, ptr %index, align 4, !tbaa !8
  %inc668 = add nsw i32 %540, 1
  store i32 %inc668, ptr %index, align 4, !tbaa !8
  %idxprom669 = sext i32 %540 to i64
  %arrayidx670 = getelementptr inbounds i32, ptr %539, i64 %idxprom669
  store i32 %538, ptr %arrayidx670, align 4, !tbaa !8
  br label %for.inc671

for.inc671:                                       ; preds = %for.body663
  %541 = load i32, ptr %j5, align 4, !tbaa !8
  %inc672 = add nsw i32 %541, 1
  store i32 %inc672, ptr %j5, align 4, !tbaa !8
  br label %for.cond656, !llvm.loop !59

for.end673:                                       ; preds = %for.cond656
  br label %for.inc674

for.inc674:                                       ; preds = %for.end673
  %542 = load i32, ptr %i4, align 4, !tbaa !8
  %inc675 = add nsw i32 %542, 1
  store i32 %inc675, ptr %i4, align 4, !tbaa !8
  br label %for.cond649, !llvm.loop !60

for.end676:                                       ; preds = %for.cond649
  %543 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp677 = icmp sgt i32 %543, 1
  br i1 %cmp677, label %if.then679, label %if.end682

if.then679:                                       ; preds = %for.end676
  %544 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %545 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %546 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %call680 = call ptr @hypre_ParCSRCommHandleCreate(i32 noundef 11, ptr noundef %544, ptr noundef %545, ptr noundef %546)
  store ptr %call680, ptr %comm_handle, align 8, !tbaa !4
  %547 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call681 = call i32 @hypre_ParCSRCommHandleDestroy(ptr noundef %547)
  br label %if.end682

if.end682:                                        ; preds = %if.then679, %for.end676
  %548 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %549 = load ptr, ptr %CF_marker, align 8, !tbaa !4
  %550 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %call683 = call i32 @hypre_AmgCGCBoundaryFix(ptr noundef %548, ptr noundef %549, ptr noundef %550)
  %551 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %cmp684 = icmp eq i32 %551, 3
  br i1 %cmp684, label %if.then686, label %if.end690

if.then686:                                       ; preds = %if.end682
  %call687 = call double @time_getWallclockSeconds()
  %552 = load double, ptr %wall_time, align 8, !tbaa !21
  %sub688 = fsub double %call687, %552
  store double %sub688, ptr %wall_time, align 8, !tbaa !21
  %553 = load i32, ptr %my_id, align 4, !tbaa !8
  %554 = load double, ptr %wall_time, align 8, !tbaa !21
  %call689 = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.6, i32 noundef %553, double noundef %554)
  br label %if.end690

if.end690:                                        ; preds = %if.then686, %if.end682
  %555 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %tobool691 = icmp ne ptr %555, null
  br i1 %tobool691, label %if.then692, label %if.end693

if.then692:                                       ; preds = %if.end690
  %556 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %556, i32 noundef 0)
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  br label %if.end693

if.end693:                                        ; preds = %if.then692, %if.end690
  %557 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %tobool694 = icmp ne ptr %557, null
  br i1 %tobool694, label %if.then695, label %if.end696

if.then695:                                       ; preds = %if.end693
  %558 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %558, i32 noundef 0)
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  br label %if.end696

if.end696:                                        ; preds = %if.then695, %if.end693
  %559 = load ptr, ptr %graph_array, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %559, i32 noundef 0)
  store ptr null, ptr %graph_array, align 8, !tbaa !4
  %560 = load i32, ptr %measure_type.addr, align 4, !tbaa !8
  %tobool697 = icmp ne i32 %560, 0
  br i1 %tobool697, label %land.lhs.true704, label %lor.lhs.false698

lor.lhs.false698:                                 ; preds = %if.end696
  %561 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %cmp699 = icmp ne i32 %561, 1
  br i1 %cmp699, label %land.lhs.true701, label %if.end709

land.lhs.true701:                                 ; preds = %lor.lhs.false698
  %562 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %cmp702 = icmp ne i32 %562, 11
  br i1 %cmp702, label %land.lhs.true704, label %if.end709

land.lhs.true704:                                 ; preds = %land.lhs.true701, %if.end696
  %563 = load i32, ptr %num_procs, align 4, !tbaa !8
  %cmp705 = icmp sgt i32 %563, 1
  br i1 %cmp705, label %if.then707, label %if.end709

if.then707:                                       ; preds = %land.lhs.true704
  %564 = load ptr, ptr %S_ext, align 8, !tbaa !4
  %call708 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %564)
  br label %if.end709

if.end709:                                        ; preds = %if.then707, %land.lhs.true704, %land.lhs.true701, %lor.lhs.false698
  %565 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %measure_max) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %wall_time) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %use_commpkg_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nabor_two) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nabor) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_left) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_meas) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %measure) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lists) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %LoL_tail) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %LoL_head) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_col) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %my_id) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_nonzeros) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %C_i_nonempty) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %set_empty) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ji) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jS) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_buf_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %graph_array) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %measure_array_master) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %measure_array) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci_tilde_mark) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ci_tilde) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %CF_marker_offd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %CF_marker) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ST_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ST_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ST) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_ext_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_ext_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_ext) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_diag) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_handle) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  ret i32 %565
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

declare double @time_getWallclockSeconds() #2

declare i32 @hypre_MPI_Comm_size(ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Comm_rank(ptr noundef, ptr noundef) #2

declare i32 @hypre_MatvecCommPkgCreate(ptr noundef) #2

declare ptr @hypre_CSRMatrixCreate(i32 noundef, i32 noundef, i32 noundef) #2

declare ptr @hypre_ParCSRMatrixExtractBExt(ptr noundef, ptr noundef, i32 noundef) #2

declare void @hypre_Memcpy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @hypre_enter_on_lists(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @hypre_remove_point(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @hypre_dispose_elt(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @hypre_Free(ptr noundef, i32 noundef) #2

declare i32 @hypre_CSRMatrixDestroy(ptr noundef) #2

declare i32 @hypre_printf(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_BoomerAMGCoarsenCGC(ptr noundef %S, i32 noundef %numberofgrids, i32 noundef %coarsen_type, ptr noundef %CF_marker) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %numberofgrids.addr = alloca i32, align 4
  %coarsen_type.addr = alloca i32, align 4
  %CF_marker.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %mpisize = alloca i32, align 4
  %mpirank = alloca i32, align 4
  %choice = alloca i32, align 4
  %coarse = alloca ptr, align 8
  %vertexrange = alloca ptr, align 8
  %vertexrange_all = alloca ptr, align 8
  %CF_marker_offd = alloca ptr, align 8
  %num_variables = alloca i32, align 4
  %ijG = alloca ptr, align 8
  %G = alloca ptr, align 8
  %Gseq = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %nlocal = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  store i32 %numberofgrids, ptr %numberofgrids.addr, align 4, !tbaa !8
  store i32 %coarsen_type, ptr %coarsen_type.addr, align 4, !tbaa !8
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpisize) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpirank) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %choice) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %coarse) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vertexrange) #4
  store ptr null, ptr %vertexrange, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vertexrange_all) #4
  store ptr null, ptr %vertexrange_all, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %CF_marker_offd) #4
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #4
  %0 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %diag, align 8, !tbaa !14
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %num_rows, align 8, !tbaa !19
  store i32 %2, ptr %num_variables, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ijG) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %G) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Gseq) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %3 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %comm1, align 8, !tbaa !10
  store ptr %4, ptr %comm, align 8, !tbaa !4
  %5 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %5, ptr noundef %mpisize)
  %6 = load ptr, ptr %comm, align 8, !tbaa !4
  %call2 = call i32 @hypre_MPI_Comm_rank(ptr noundef %6, ptr noundef %mpirank)
  %7 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %8 = load i32, ptr %numberofgrids.addr, align 4, !tbaa !8
  %9 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %10 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %call3 = call i32 @hypre_AmgCGCPrepare(ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %CF_marker_offd, i32 noundef %10, ptr noundef %vertexrange)
  %11 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  %13 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  %15 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %call4 = call i32 @hypre_AmgCGCGraphAssemble(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %ijG)
  %16 = load ptr, ptr %ijG, align 8, !tbaa !4
  %call5 = call i32 @HYPRE_IJMatrixGetObject(ptr noundef %16, ptr noundef %G)
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlocal) #4
  %17 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 1
  %18 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %19 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i32, ptr %19, i64 0
  %20 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %sub = sub nsw i32 %18, %20
  store i32 %sub, ptr %nlocal, align 4, !tbaa !8
  %21 = load i32, ptr %mpisize, align 4, !tbaa !8
  %add = add nsw i32 %21, 1
  %conv = sext i32 %add to i64
  %call7 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call7, ptr %vertexrange_all, align 8, !tbaa !4
  %22 = load ptr, ptr %vertexrange_all, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i32, ptr %22, i64 1
  %23 = load ptr, ptr %comm, align 8, !tbaa !4
  %call8 = call i32 @hypre_MPI_Allgather(ptr noundef %nlocal, i32 noundef 1, ptr noundef @ompi_mpi_int, ptr noundef %add.ptr, i32 noundef 1, ptr noundef @ompi_mpi_int, ptr noundef %23)
  %24 = load ptr, ptr %vertexrange_all, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i32, ptr %24, i64 0
  store i32 0, ptr %arrayidx9, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %25 = load i32, ptr %j, align 4, !tbaa !8
  %26 = load i32, ptr %mpisize, align 4, !tbaa !8
  %cmp = icmp sle i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %vertexrange_all, align 8, !tbaa !4
  %28 = load i32, ptr %j, align 4, !tbaa !8
  %sub11 = sub nsw i32 %28, 1
  %idxprom = sext i32 %sub11 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %27, i64 %idxprom
  %29 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %30 = load ptr, ptr %vertexrange_all, align 8, !tbaa !4
  %31 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom13 = sext i32 %31 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %30, i64 %idxprom13
  %32 = load i32, ptr %arrayidx14, align 4, !tbaa !8
  %add15 = add nsw i32 %32, %29
  store i32 %add15, ptr %arrayidx14, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlocal) #4
  %34 = load ptr, ptr %G, align 8, !tbaa !4
  %call16 = call ptr @hypre_ParCSRMatrixToCSRMatrixAll(ptr noundef %34)
  store ptr %call16, ptr %Gseq, align 8, !tbaa !4
  %35 = load ptr, ptr %Gseq, align 8, !tbaa !4
  %tobool = icmp ne ptr %35, null
  br i1 %tobool, label %if.then, label %if.else37

if.then:                                          ; preds = %for.end
  %36 = load ptr, ptr %Gseq, align 8, !tbaa !4
  %37 = load ptr, ptr %vertexrange_all, align 8, !tbaa !4
  %38 = load i32, ptr %mpisize, align 4, !tbaa !8
  %call17 = call i32 @hypre_AmgCGCChoose(ptr noundef %36, ptr noundef %37, i32 noundef %38, ptr noundef %coarse)
  %39 = load ptr, ptr %coarse, align 8, !tbaa !4
  %40 = load i32, ptr %mpirank, align 4, !tbaa !8
  %idxprom18 = sext i32 %40 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 %idxprom18
  %41 = load i32, ptr %arrayidx19, align 4, !tbaa !8
  store i32 %41, ptr %choice, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc33, %if.then
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %43 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %42, %43
  br i1 %cmp21, label %for.body23, label %for.end35

for.body23:                                       ; preds = %for.cond20
  %44 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom24 = sext i32 %45 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %44, i64 %idxprom24
  %46 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %47 = load i32, ptr %choice, align 4, !tbaa !8
  %cmp26 = icmp eq i32 %46, %47
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %for.body23
  %48 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom29 = sext i32 %49 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %48, i64 %idxprom29
  store i32 1, ptr %arrayidx30, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %for.body23
  %50 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %51 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom31 = sext i32 %51 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %50, i64 %idxprom31
  store i32 -1, ptr %arrayidx32, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then28
  br label %for.inc33

for.inc33:                                        ; preds = %if.end
  %52 = load i32, ptr %j, align 4, !tbaa !8
  %inc34 = add nsw i32 %52, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !8
  br label %for.cond20, !llvm.loop !62

for.end35:                                        ; preds = %for.cond20
  %53 = load ptr, ptr %Gseq, align 8, !tbaa !4
  %call36 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %53)
  %54 = load ptr, ptr %coarse, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %54, i32 noundef 0)
  store ptr null, ptr %coarse, align 8, !tbaa !4
  br label %if.end47

if.else37:                                        ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc44, %if.else37
  %55 = load i32, ptr %j, align 4, !tbaa !8
  %56 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp39 = icmp slt i32 %55, %56
  br i1 %cmp39, label %for.body41, label %for.end46

for.body41:                                       ; preds = %for.cond38
  %57 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %58 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom42 = sext i32 %58 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %57, i64 %idxprom42
  store i32 -1, ptr %arrayidx43, align 4, !tbaa !8
  br label %for.inc44

for.inc44:                                        ; preds = %for.body41
  %59 = load i32, ptr %j, align 4, !tbaa !8
  %inc45 = add nsw i32 %59, 1
  store i32 %inc45, ptr %j, align 4, !tbaa !8
  br label %for.cond38, !llvm.loop !63

for.end46:                                        ; preds = %for.cond38
  br label %if.end47

if.end47:                                         ; preds = %for.end46, %for.end35
  %60 = load ptr, ptr %ijG, align 8, !tbaa !4
  %call48 = call i32 @HYPRE_IJMatrixDestroy(ptr noundef %60)
  %61 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %61, i32 noundef 0)
  store ptr null, ptr %vertexrange, align 8, !tbaa !4
  %62 = load ptr, ptr %vertexrange_all, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %62, i32 noundef 0)
  store ptr null, ptr %vertexrange_all, align 8, !tbaa !4
  %63 = load ptr, ptr %CF_marker_offd, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %63, i32 noundef 0)
  store ptr null, ptr %CF_marker_offd, align 8, !tbaa !4
  %64 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Gseq) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %G) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ijG) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %CF_marker_offd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vertexrange_all) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vertexrange) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %coarse) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %choice) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpirank) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpisize) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  ret i32 %64
}

declare ptr @hypre_ParCSRCommHandleCreate(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParCSRCommHandleDestroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AmgCGCBoundaryFix(ptr noundef %S, ptr noundef %CF_marker, ptr noundef %CF_marker_offd) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %CF_marker.addr = alloca ptr, align 8
  %CF_marker_offd.addr = alloca ptr, align 8
  %mpirank = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %has_c_pt = alloca i32, align 4
  %S_diag = alloca ptr, align 8
  %S_offd = alloca ptr, align 8
  %S_i = alloca ptr, align 8
  %S_j = alloca ptr, align 8
  %S_offd_i = alloca ptr, align 8
  %S_offd_j = alloca ptr, align 8
  %num_variables = alloca i32, align 4
  %num_cols_offd = alloca i32, align 4
  %added_cpts = alloca i32, align 4
  %comm = alloca ptr, align 8
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store ptr %CF_marker_offd, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpirank) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_c_pt) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_diag) #4
  %0 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %diag, align 8, !tbaa !14
  store ptr %1, ptr %S_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd) #4
  %2 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %offd, align 8, !tbaa !15
  store ptr %3, ptr %S_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_i) #4
  %4 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %i1 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %i1, align 8, !tbaa !16
  store ptr %5, ptr %S_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_j) #4
  %6 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %j2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %j2, align 8, !tbaa !18
  store ptr %7, ptr %S_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_i) #4
  %8 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %i3 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %i3, align 8, !tbaa !16
  store ptr %9, ptr %S_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_j) #4
  store ptr null, ptr %S_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #4
  %10 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %num_rows, align 8, !tbaa !19
  store i32 %11, ptr %num_variables, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd) #4
  %12 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %num_cols, align 4, !tbaa !20
  store i32 %13, ptr %num_cols_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %added_cpts) #4
  store i32 0, ptr %added_cpts, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %14 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm4 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %comm4, align 8, !tbaa !10
  store ptr %15, ptr %comm, align 8, !tbaa !4
  %16 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_rank(ptr noundef %16, ptr noundef %mpirank)
  %17 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %j5 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %j5, align 8, !tbaa !18
  store ptr %19, ptr %S_offd_j, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %21 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds i32, ptr %22, i64 %idxprom
  %24 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %25 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %26, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %25, i64 %idxprom6
  %27 = load i32, ptr %arrayidx7, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %24, %27
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %28 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %29 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %28, i64 %idxprom9
  %30 = load i32, ptr %arrayidx10, align 4, !tbaa !8
  %cmp11 = icmp eq i32 %30, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc56

if.end13:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %has_c_pt, align 4, !tbaa !8
  %31 = load ptr, ptr %S_i, align 8, !tbaa !4
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom14 = sext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %31, i64 %idxprom14
  %33 = load i32, ptr %arrayidx15, align 4, !tbaa !8
  store i32 %33, ptr %j, align 4, !tbaa !8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.end13
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %35 = load ptr, ptr %S_i, align 8, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %add17 = add nsw i32 %36, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %35, i64 %idxprom18
  %37 = load i32, ptr %arrayidx19, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %34, %37
  br i1 %cmp20, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond16
  %38 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %S_j, align 8, !tbaa !4
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom22 = sext i32 %40 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %39, i64 %idxprom22
  %41 = load i32, ptr %arrayidx23, align 4, !tbaa !8
  %idxprom24 = sext i32 %41 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %38, i64 %idxprom24
  %42 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %cmp26 = icmp eq i32 %42, 1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body21
  store i32 1, ptr %has_c_pt, align 4, !tbaa !8
  br label %for.end

if.end28:                                         ; preds = %for.body21
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond16, !llvm.loop !64

for.end:                                          ; preds = %if.then27, %for.cond16
  %44 = load i32, ptr %has_c_pt, align 4, !tbaa !8
  %tobool29 = icmp ne i32 %44, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.end
  br label %for.inc56

if.end31:                                         ; preds = %for.end
  %45 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %46 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom32 = sext i32 %46 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %45, i64 %idxprom32
  %47 = load i32, ptr %arrayidx33, align 4, !tbaa !8
  store i32 %47, ptr %j, align 4, !tbaa !8
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc47, %if.end31
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %49 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %add35 = add nsw i32 %50, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %49, i64 %idxprom36
  %51 = load i32, ptr %arrayidx37, align 4, !tbaa !8
  %cmp38 = icmp slt i32 %48, %51
  br i1 %cmp38, label %for.body39, label %for.end49

for.body39:                                       ; preds = %for.cond34
  %52 = load ptr, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %S_offd_j, align 8, !tbaa !4
  %54 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom40 = sext i32 %54 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %53, i64 %idxprom40
  %55 = load i32, ptr %arrayidx41, align 4, !tbaa !8
  %idxprom42 = sext i32 %55 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %52, i64 %idxprom42
  %56 = load i32, ptr %arrayidx43, align 4, !tbaa !8
  %cmp44 = icmp eq i32 %56, 1
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body39
  store i32 1, ptr %has_c_pt, align 4, !tbaa !8
  br label %for.end49

if.end46:                                         ; preds = %for.body39
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %inc48 = add nsw i32 %57, 1
  store i32 %inc48, ptr %j, align 4, !tbaa !8
  br label %for.cond34, !llvm.loop !65

for.end49:                                        ; preds = %if.then45, %for.cond34
  %58 = load i32, ptr %has_c_pt, align 4, !tbaa !8
  %tobool50 = icmp ne i32 %58, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end49
  br label %for.inc56

if.end52:                                         ; preds = %for.end49
  %59 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %60 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom53 = sext i32 %60 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %59, i64 %idxprom53
  store i32 1, ptr %arrayidx54, align 4, !tbaa !8
  %61 = load i32, ptr %added_cpts, align 4, !tbaa !8
  %inc55 = add nsw i32 %61, 1
  store i32 %inc55, ptr %added_cpts, align 4, !tbaa !8
  br label %for.inc56

for.inc56:                                        ; preds = %if.end52, %if.then51, %if.then30, %if.then12
  %62 = load i32, ptr %i, align 4, !tbaa !8
  %inc57 = add nsw i32 %62, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !66

for.end58:                                        ; preds = %for.cond
  %63 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %added_cpts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_diag) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_c_pt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpirank) #4
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AmgCGCPrepare(ptr noundef %S, i32 noundef %nlocal, ptr noundef %CF_marker, ptr noundef %CF_marker_offd, i32 noundef %coarsen_type, ptr noundef %vrange) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %nlocal.addr = alloca i32, align 4
  %CF_marker.addr = alloca ptr, align 8
  %CF_marker_offd.addr = alloca ptr, align 8
  %coarsen_type.addr = alloca i32, align 4
  %vrange.addr = alloca ptr, align 8
  %mpisize = alloca i32, align 4
  %mpirank = alloca i32, align 4
  %num_sends = alloca i32, align 4
  %vertexrange = alloca ptr, align 8
  %vstart = alloca i32, align 4
  %int_buf_data = alloca ptr, align 8
  %start = alloca i32, align 4
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %num_variables = alloca i32, align 4
  %num_cols_offd = alloca i32, align 4
  %comm = alloca ptr, align 8
  %comm_pkg = alloca ptr, align 8
  %comm_handle = alloca ptr, align 8
  %scan_recv = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  store i32 %nlocal, ptr %nlocal.addr, align 4, !tbaa !8
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store ptr %CF_marker_offd, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  store i32 %coarsen_type, ptr %coarsen_type.addr, align 4, !tbaa !8
  store ptr %vrange, ptr %vrange.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpisize) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpirank) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vertexrange) #4
  store ptr null, ptr %vertexrange, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vstart) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_buf_data) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #4
  %0 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %diag, align 8, !tbaa !14
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %num_rows, align 8, !tbaa !19
  store i32 %2, ptr %num_variables, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd) #4
  %3 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %offd, align 8, !tbaa !15
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %num_cols, align 4, !tbaa !20
  store i32 %5, ptr %num_cols_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %6 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %comm1, align 8, !tbaa !10
  store ptr %7, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #4
  %8 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm_pkg2 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %8, i32 0, i32 15
  %9 = load ptr, ptr %comm_pkg2, align 8, !tbaa !13
  store ptr %9, ptr %comm_pkg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_handle) #4
  %10 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %10, ptr noundef %mpisize)
  %11 = load ptr, ptr %comm, align 8, !tbaa !4
  %call3 = call i32 @hypre_MPI_Comm_rank(ptr noundef %11, ptr noundef %mpirank)
  %12 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %call4 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %13)
  %14 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm_pkg5 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %14, i32 0, i32 15
  %15 = load ptr, ptr %comm_pkg5, align 8, !tbaa !13
  store ptr %15, ptr %comm_pkg, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends6 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %num_sends6, align 8, !tbaa !22
  store i32 %17, ptr %num_sends, align 4, !tbaa !8
  %18 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %rem = srem i32 %18, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %19 = load i32, ptr %nlocal.addr, align 4, !tbaa !8
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %nlocal.addr, align 4, !tbaa !8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %scan_recv) #4
  %call9 = call ptr @hypre_CAlloc(i64 noundef 2, i64 noundef 4, i32 noundef 0)
  store ptr %call9, ptr %vertexrange, align 8, !tbaa !4
  %20 = load ptr, ptr %comm, align 8, !tbaa !4
  %call10 = call i32 @hypre_MPI_Scan(ptr noundef %nlocal.addr, ptr noundef %scan_recv, i32 noundef 1, ptr noundef @ompi_mpi_int, ptr noundef @ompi_mpi_op_sum, ptr noundef %20)
  %21 = load i32, ptr %scan_recv, align 4, !tbaa !8
  %22 = load i32, ptr %nlocal.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %21, %22
  %23 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 0
  store i32 %sub, ptr %arrayidx, align 4, !tbaa !8
  %24 = load i32, ptr %scan_recv, align 4, !tbaa !8
  %25 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i32, ptr %25, i64 1
  store i32 %24, ptr %arrayidx11, align 4, !tbaa !8
  %26 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i32, ptr %26, i64 0
  %27 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  store i32 %27, ptr %vstart, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %scan_recv) #4
  %28 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !8
  %rem13 = srem i32 %28, 2
  %cmp14 = icmp eq i32 %rem13, 1
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %30 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp16 = icmp slt i32 %29, %30
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %32 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %31, i64 %idxprom
  %33 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %cmp18 = icmp sgt i32 %33, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.body
  %34 = load i32, ptr %vstart, align 4, !tbaa !8
  %35 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom20 = sext i32 %36 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %35, i64 %idxprom20
  %37 = load i32, ptr %arrayidx21, align 4, !tbaa !8
  %add = add nsw i32 %37, %34
  store i32 %add, ptr %arrayidx21, align 4, !tbaa !8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %inc23 = add nsw i32 %38, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  br label %if.end39

if.else:                                          ; preds = %if.end8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc36, %if.else
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %40 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp25 = icmp slt i32 %39, %40
  br i1 %cmp25, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond24
  %41 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom27 = sext i32 %42 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %41, i64 %idxprom27
  %43 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %cmp29 = icmp sgt i32 %43, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %for.body26
  %44 = load i32, ptr %vstart, align 4, !tbaa !8
  %add31 = add nsw i32 %44, 1
  %45 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %46 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom32 = sext i32 %46 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %45, i64 %idxprom32
  %47 = load i32, ptr %arrayidx33, align 4, !tbaa !8
  %add34 = add nsw i32 %47, %add31
  store i32 %add34, ptr %arrayidx33, align 4, !tbaa !8
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %for.body26
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %48 = load i32, ptr %i, align 4, !tbaa !8
  %inc37 = add nsw i32 %48, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !8
  br label %for.cond24, !llvm.loop !68

for.end38:                                        ; preds = %for.cond24
  br label %if.end39

if.end39:                                         ; preds = %for.end38, %for.end
  %49 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %conv = sext i32 %49 to i64
  %call40 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  %50 = load ptr, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  store ptr %call40, ptr %50, align 8, !tbaa !4
  %51 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %send_map_starts, align 8, !tbaa !57
  %53 = load i32, ptr %num_sends, align 4, !tbaa !8
  %idxprom41 = sext i32 %53 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %52, i64 %idxprom41
  %54 = load i32, ptr %arrayidx42, align 4, !tbaa !8
  %conv43 = sext i32 %54 to i64
  %call44 = call ptr @hypre_CAlloc(i64 noundef %conv43, i64 noundef 4, i32 noundef 0)
  store ptr %call44, ptr %int_buf_data, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %ii, align 4, !tbaa !8
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc70, %if.end39
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %56 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp46 = icmp slt i32 %55, %56
  br i1 %cmp46, label %for.body48, label %for.end72

for.body48:                                       ; preds = %for.cond45
  %57 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts49 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %send_map_starts49, align 8, !tbaa !57
  %59 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom50 = sext i32 %59 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %58, i64 %idxprom50
  %60 = load i32, ptr %arrayidx51, align 4, !tbaa !8
  store i32 %60, ptr %start, align 4, !tbaa !8
  %61 = load i32, ptr %start, align 4, !tbaa !8
  store i32 %61, ptr %j, align 4, !tbaa !8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc67, %for.body48
  %62 = load i32, ptr %j, align 4, !tbaa !8
  %63 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts53 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %63, i32 0, i32 3
  %64 = load ptr, ptr %send_map_starts53, align 8, !tbaa !57
  %65 = load i32, ptr %i, align 4, !tbaa !8
  %add54 = add nsw i32 %65, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %64, i64 %idxprom55
  %66 = load i32, ptr %arrayidx56, align 4, !tbaa !8
  %cmp57 = icmp slt i32 %62, %66
  br i1 %cmp57, label %for.body59, label %for.end69

for.body59:                                       ; preds = %for.cond52
  %67 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %send_map_elmts, align 8, !tbaa !58
  %70 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom60 = sext i32 %70 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %69, i64 %idxprom60
  %71 = load i32, ptr %arrayidx61, align 4, !tbaa !8
  %idxprom62 = sext i32 %71 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %67, i64 %idxprom62
  %72 = load i32, ptr %arrayidx63, align 4, !tbaa !8
  %73 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %74 = load i32, ptr %ii, align 4, !tbaa !8
  %inc64 = add nsw i32 %74, 1
  store i32 %inc64, ptr %ii, align 4, !tbaa !8
  %idxprom65 = sext i32 %74 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %73, i64 %idxprom65
  store i32 %72, ptr %arrayidx66, align 4, !tbaa !8
  br label %for.inc67

for.inc67:                                        ; preds = %for.body59
  %75 = load i32, ptr %j, align 4, !tbaa !8
  %inc68 = add nsw i32 %75, 1
  store i32 %inc68, ptr %j, align 4, !tbaa !8
  br label %for.cond52, !llvm.loop !69

for.end69:                                        ; preds = %for.cond52
  br label %for.inc70

for.inc70:                                        ; preds = %for.end69
  %76 = load i32, ptr %i, align 4, !tbaa !8
  %inc71 = add nsw i32 %76, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !8
  br label %for.cond45, !llvm.loop !70

for.end72:                                        ; preds = %for.cond45
  %77 = load i32, ptr %mpisize, align 4, !tbaa !8
  %cmp73 = icmp sgt i32 %77, 1
  br i1 %cmp73, label %if.then75, label %if.end78

if.then75:                                        ; preds = %for.end72
  %78 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %79 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %80 = load ptr, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  %81 = load ptr, ptr %80, align 8, !tbaa !4
  %call76 = call ptr @hypre_ParCSRCommHandleCreate(i32 noundef 11, ptr noundef %78, ptr noundef %79, ptr noundef %81)
  store ptr %call76, ptr %comm_handle, align 8, !tbaa !4
  %82 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call77 = call i32 @hypre_ParCSRCommHandleDestroy(ptr noundef %82)
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %for.end72
  %83 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %83, i32 noundef 0)
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  %84 = load ptr, ptr %vertexrange, align 8, !tbaa !4
  %85 = load ptr, ptr %vrange.addr, align 8, !tbaa !4
  store ptr %84, ptr %85, align 8, !tbaa !4
  %86 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_handle) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_buf_data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vstart) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vertexrange) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpirank) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpisize) #4
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AmgCGCGraphAssemble(ptr noundef %S, ptr noundef %vertexrange, ptr noundef %CF_marker, ptr noundef %CF_marker_offd, i32 noundef %coarsen_type, ptr noundef %ijG) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %vertexrange.addr = alloca ptr, align 8
  %CF_marker.addr = alloca ptr, align 8
  %CF_marker_offd.addr = alloca ptr, align 8
  %coarsen_type.addr = alloca i32, align 4
  %ijG.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %mpisize = alloca i32, align 4
  %mpirank = alloca i32, align 4
  %comm = alloca ptr, align 8
  %ijmatrix = alloca ptr, align 8
  %S_diag = alloca ptr, align 8
  %S_offd = alloca ptr, align 8
  %S_offd_i = alloca ptr, align 8
  %S_offd_j = alloca ptr, align 8
  %num_variables = alloca i32, align 4
  %num_cols_offd = alloca i32, align 4
  %col_map_offd = alloca ptr, align 8
  %pointrange = alloca ptr, align 8
  %pointrange_nonlocal = alloca ptr, align 8
  %pointrange_strong = alloca ptr, align 8
  %vertexrange_start = alloca i32, align 4
  %vertexrange_end = alloca i32, align 4
  %vertexrange_strong = alloca ptr, align 8
  %vertexrange_nonlocal = alloca ptr, align 8
  %num_recvs = alloca i32, align 4
  %num_recvs_strong = alloca i32, align 4
  %recv_procs = alloca ptr, align 8
  %recv_procs_strong = alloca ptr, align 8
  %rownz_diag = alloca ptr, align 8
  %rownz_offd = alloca ptr, align 8
  %nz = alloca i32, align 4
  %nlocal = alloca i32, align 4
  %comm_pkg = alloca ptr, align 8
  %big_m_n = alloca ptr, align 8
  %weight = alloca ptr, align 8
  %num_sends = alloca i32, align 4
  %send_procs = alloca ptr, align 8
  %int_buf_data = alloca ptr, align 8
  %int_buf_data2 = alloca ptr, align 8
  %sendrequest = alloca ptr, align 8
  %recvrequest = alloca ptr, align 8
  %pointrange_start = alloca i32, align 4
  %pointrange_end = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  store ptr %vertexrange, ptr %vertexrange.addr, align 8, !tbaa !4
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store ptr %CF_marker_offd, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  store i32 %coarsen_type, ptr %coarsen_type.addr, align 4, !tbaa !8
  store ptr %ijG, ptr %ijG.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpisize) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpirank) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #4
  %0 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %comm1, align 8, !tbaa !10
  store ptr %1, ptr %comm, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ijmatrix) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_diag) #4
  %2 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %diag, align 8, !tbaa !14
  store ptr %3, ptr %S_diag, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd) #4
  %4 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %offd, align 8, !tbaa !15
  store ptr %5, ptr %S_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_i) #4
  %6 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %i2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %i2, align 8, !tbaa !16
  store ptr %7, ptr %S_offd_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %S_offd_j) #4
  store ptr null, ptr %S_offd_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #4
  %8 = load ptr, ptr %S_diag, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %num_rows, align 8, !tbaa !19
  store i32 %9, ptr %num_variables, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_cols_offd) #4
  %10 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %num_cols, align 4, !tbaa !20
  store i32 %11, ptr %num_cols_offd, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_map_offd) #4
  %12 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %col_map_offd3 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %col_map_offd3, align 8, !tbaa !71
  store ptr %13, ptr %col_map_offd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointrange) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointrange_nonlocal) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointrange_strong) #4
  store ptr null, ptr %pointrange_strong, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vertexrange_start) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %vertexrange_end) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vertexrange_strong) #4
  store ptr null, ptr %vertexrange_strong, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vertexrange_nonlocal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_recvs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_recvs_strong) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_procs) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %recv_procs_strong) #4
  store ptr null, ptr %recv_procs_strong, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rownz_diag) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rownz_offd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlocal) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #4
  %14 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %comm_pkg4 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %14, i32 0, i32 15
  %15 = load ptr, ptr %comm_pkg4, align 8, !tbaa !13
  store ptr %15, ptr %comm_pkg, align 8, !tbaa !4
  %16 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Comm_size(ptr noundef %16, ptr noundef %mpisize)
  %17 = load ptr, ptr %comm, align 8, !tbaa !4
  %call5 = call i32 @hypre_MPI_Comm_rank(ptr noundef %17, ptr noundef %mpirank)
  call void @llvm.lifetime.start.p0(i64 8, ptr %big_m_n) #4
  %call6 = call ptr @hypre_MAlloc(i64 noundef 8, i32 noundef 1)
  store ptr %call6, ptr %big_m_n, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %weight) #4
  %call7 = call ptr @hypre_MAlloc(i64 noundef 8, i32 noundef 1)
  store ptr %call7, ptr %weight, align 8, !tbaa !4
  %18 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_recvs8 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %num_recvs8, align 8, !tbaa !72
  store i32 %19, ptr %num_recvs, align 4, !tbaa !8
  %20 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %recv_procs9 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %recv_procs9, align 8, !tbaa !73
  store ptr %21, ptr %recv_procs, align 8, !tbaa !4
  %22 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %row_starts = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %row_starts, align 8, !tbaa !74
  store ptr %23, ptr %pointrange, align 8, !tbaa !4
  %24 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %mul = mul nsw i32 2, %24
  %conv = sext i32 %mul to i64
  %call10 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call10, ptr %pointrange_nonlocal, align 8, !tbaa !4
  %25 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %mul11 = mul nsw i32 2, %25
  %conv12 = sext i32 %mul11 to i64
  %call13 = call ptr @hypre_CAlloc(i64 noundef %conv12, i64 noundef 4, i32 noundef 0)
  store ptr %call13, ptr %vertexrange_nonlocal, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends) #4
  %26 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends14 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %num_sends14, align 8, !tbaa !22
  store i32 %27, ptr %num_sends, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %send_procs) #4
  %28 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_procs15 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %send_procs15, align 8, !tbaa !75
  store ptr %29, ptr %send_procs, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_buf_data) #4
  %30 = load i32, ptr %num_sends, align 4, !tbaa !8
  %mul16 = mul nsw i32 4, %30
  %conv17 = sext i32 %mul16 to i64
  %call18 = call ptr @hypre_CAlloc(i64 noundef %conv17, i64 noundef 4, i32 noundef 0)
  store ptr %call18, ptr %int_buf_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_buf_data2) #4
  %31 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %32 = load i32, ptr %num_sends, align 4, !tbaa !8
  %mul19 = mul nsw i32 2, %32
  %idx.ext = sext i32 %mul19 to i64
  %add.ptr = getelementptr inbounds i32, ptr %31, i64 %idx.ext
  store ptr %add.ptr, ptr %int_buf_data2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sendrequest) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %recvrequest) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pointrange_start) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pointrange_end) #4
  %33 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %33, i64 1
  %34 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %35 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds i32, ptr %35, i64 0
  %36 = load i32, ptr %arrayidx20, align 4, !tbaa !8
  %sub = sub nsw i32 %34, %36
  store i32 %sub, ptr %nlocal, align 4, !tbaa !8
  %37 = load ptr, ptr %pointrange, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds i32, ptr %37, i64 0
  %38 = load i32, ptr %arrayidx21, align 4, !tbaa !8
  store i32 %38, ptr %pointrange_start, align 4, !tbaa !8
  %39 = load ptr, ptr %pointrange, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i32, ptr %39, i64 1
  %40 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  store i32 %40, ptr %pointrange_end, align 4, !tbaa !8
  %41 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds i32, ptr %41, i64 0
  %42 = load i32, ptr %arrayidx23, align 4, !tbaa !8
  store i32 %42, ptr %vertexrange_start, align 4, !tbaa !8
  %43 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i32, ptr %43, i64 1
  %44 = load i32, ptr %arrayidx24, align 4, !tbaa !8
  store i32 %44, ptr %vertexrange_end, align 4, !tbaa !8
  %45 = load i32, ptr %num_sends, align 4, !tbaa !8
  %46 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %add = add nsw i32 %45, %46
  %mul25 = mul nsw i32 2, %add
  %conv26 = sext i32 %mul25 to i64
  %call27 = call ptr @hypre_CAlloc(i64 noundef %conv26, i64 noundef 8, i32 noundef 0)
  store ptr %call27, ptr %sendrequest, align 8, !tbaa !4
  %47 = load ptr, ptr %sendrequest, align 8, !tbaa !4
  %48 = load i32, ptr %num_sends, align 4, !tbaa !8
  %mul28 = mul nsw i32 2, %48
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds ptr, ptr %47, i64 %idx.ext29
  store ptr %add.ptr30, ptr %recvrequest, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %50 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %cmp = icmp slt i32 %49, %50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %pointrange_nonlocal, align 8, !tbaa !4
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %mul32 = mul nsw i32 2, %52
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i32, ptr %51, i64 %idx.ext33
  %53 = load ptr, ptr %recv_procs, align 8, !tbaa !4
  %54 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %54 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %53, i64 %idxprom
  %55 = load i32, ptr %arrayidx35, align 4, !tbaa !8
  %56 = load ptr, ptr %comm, align 8, !tbaa !4
  %57 = load ptr, ptr %recvrequest, align 8, !tbaa !4
  %58 = load i32, ptr %i, align 4, !tbaa !8
  %mul36 = mul nsw i32 2, %58
  %idxprom37 = sext i32 %mul36 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %57, i64 %idxprom37
  %call39 = call i32 @hypre_MPI_Irecv(ptr noundef %add.ptr34, i32 noundef 2, ptr noundef @ompi_mpi_int, i32 noundef %55, i32 noundef 301, ptr noundef %56, ptr noundef %arrayidx38)
  %59 = load ptr, ptr %vertexrange_nonlocal, align 8, !tbaa !4
  %60 = load i32, ptr %i, align 4, !tbaa !8
  %mul40 = mul nsw i32 2, %60
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds i32, ptr %59, i64 %idx.ext41
  %61 = load ptr, ptr %recv_procs, align 8, !tbaa !4
  %62 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom43 = sext i32 %62 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %61, i64 %idxprom43
  %63 = load i32, ptr %arrayidx44, align 4, !tbaa !8
  %64 = load ptr, ptr %comm, align 8, !tbaa !4
  %65 = load ptr, ptr %recvrequest, align 8, !tbaa !4
  %66 = load i32, ptr %i, align 4, !tbaa !8
  %mul45 = mul nsw i32 2, %66
  %add46 = add nsw i32 %mul45, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds ptr, ptr %65, i64 %idxprom47
  %call49 = call i32 @hypre_MPI_Irecv(ptr noundef %add.ptr42, i32 noundef 2, ptr noundef @ompi_mpi_int, i32 noundef %63, i32 noundef 302, ptr noundef %64, ptr noundef %arrayidx48)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc87, %for.end
  %68 = load i32, ptr %i, align 4, !tbaa !8
  %69 = load i32, ptr %num_sends, align 4, !tbaa !8
  %cmp51 = icmp slt i32 %68, %69
  br i1 %cmp51, label %for.body53, label %for.end89

for.body53:                                       ; preds = %for.cond50
  %70 = load i32, ptr %pointrange_start, align 4, !tbaa !8
  %71 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %mul54 = mul nsw i32 2, %72
  %idxprom55 = sext i32 %mul54 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %71, i64 %idxprom55
  store i32 %70, ptr %arrayidx56, align 4, !tbaa !8
  %73 = load i32, ptr %pointrange_end, align 4, !tbaa !8
  %74 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %mul57 = mul nsw i32 2, %75
  %add58 = add nsw i32 %mul57, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %74, i64 %idxprom59
  store i32 %73, ptr %arrayidx60, align 4, !tbaa !8
  %76 = load i32, ptr %vertexrange_start, align 4, !tbaa !8
  %77 = load ptr, ptr %int_buf_data2, align 8, !tbaa !4
  %78 = load i32, ptr %i, align 4, !tbaa !8
  %mul61 = mul nsw i32 2, %78
  %idxprom62 = sext i32 %mul61 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %77, i64 %idxprom62
  store i32 %76, ptr %arrayidx63, align 4, !tbaa !8
  %79 = load i32, ptr %vertexrange_end, align 4, !tbaa !8
  %80 = load ptr, ptr %int_buf_data2, align 8, !tbaa !4
  %81 = load i32, ptr %i, align 4, !tbaa !8
  %mul64 = mul nsw i32 2, %81
  %add65 = add nsw i32 %mul64, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %80, i64 %idxprom66
  store i32 %79, ptr %arrayidx67, align 4, !tbaa !8
  %82 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %83 = load i32, ptr %i, align 4, !tbaa !8
  %mul68 = mul nsw i32 2, %83
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds i32, ptr %82, i64 %idx.ext69
  %84 = load ptr, ptr %send_procs, align 8, !tbaa !4
  %85 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom71 = sext i32 %85 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %84, i64 %idxprom71
  %86 = load i32, ptr %arrayidx72, align 4, !tbaa !8
  %87 = load ptr, ptr %comm, align 8, !tbaa !4
  %88 = load ptr, ptr %sendrequest, align 8, !tbaa !4
  %89 = load i32, ptr %i, align 4, !tbaa !8
  %mul73 = mul nsw i32 2, %89
  %idxprom74 = sext i32 %mul73 to i64
  %arrayidx75 = getelementptr inbounds ptr, ptr %88, i64 %idxprom74
  %call76 = call i32 @hypre_MPI_Isend(ptr noundef %add.ptr70, i32 noundef 2, ptr noundef @ompi_mpi_int, i32 noundef %86, i32 noundef 301, ptr noundef %87, ptr noundef %arrayidx75)
  %90 = load ptr, ptr %int_buf_data2, align 8, !tbaa !4
  %91 = load i32, ptr %i, align 4, !tbaa !8
  %mul77 = mul nsw i32 2, %91
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds i32, ptr %90, i64 %idx.ext78
  %92 = load ptr, ptr %send_procs, align 8, !tbaa !4
  %93 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom80 = sext i32 %93 to i64
  %arrayidx81 = getelementptr inbounds i32, ptr %92, i64 %idxprom80
  %94 = load i32, ptr %arrayidx81, align 4, !tbaa !8
  %95 = load ptr, ptr %comm, align 8, !tbaa !4
  %96 = load ptr, ptr %sendrequest, align 8, !tbaa !4
  %97 = load i32, ptr %i, align 4, !tbaa !8
  %mul82 = mul nsw i32 2, %97
  %add83 = add nsw i32 %mul82, 1
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds ptr, ptr %96, i64 %idxprom84
  %call86 = call i32 @hypre_MPI_Isend(ptr noundef %add.ptr79, i32 noundef 2, ptr noundef @ompi_mpi_int, i32 noundef %94, i32 noundef 302, ptr noundef %95, ptr noundef %arrayidx85)
  br label %for.inc87

for.inc87:                                        ; preds = %for.body53
  %98 = load i32, ptr %i, align 4, !tbaa !8
  %inc88 = add nsw i32 %98, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !8
  br label %for.cond50, !llvm.loop !77

for.end89:                                        ; preds = %for.cond50
  %99 = load i32, ptr %num_sends, align 4, !tbaa !8
  %100 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %add90 = add nsw i32 %99, %100
  %mul91 = mul nsw i32 2, %add90
  %101 = load ptr, ptr %sendrequest, align 8, !tbaa !4
  %call92 = call i32 @hypre_MPI_Waitall(i32 noundef %mul91, ptr noundef %101, ptr noundef null)
  %102 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %102, i32 noundef 0)
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  %103 = load ptr, ptr %sendrequest, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %103, i32 noundef 0)
  store ptr null, ptr %sendrequest, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pointrange_end) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pointrange_start) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %recvrequest) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sendrequest) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_buf_data2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_buf_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %send_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends) #4
  %104 = load i32, ptr %num_cols_offd, align 4, !tbaa !8
  %tobool = icmp ne i32 %104, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end89
  %105 = load ptr, ptr %S_offd, align 8, !tbaa !4
  %j93 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %j93, align 8, !tbaa !18
  store ptr %106, ptr %S_offd_j, align 8, !tbaa !4
  %107 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %conv94 = sext i32 %107 to i64
  %call95 = call ptr @hypre_CAlloc(i64 noundef %conv94, i64 noundef 4, i32 noundef 0)
  store ptr %call95, ptr %recv_procs_strong, align 8, !tbaa !4
  %108 = load ptr, ptr %recv_procs_strong, align 8, !tbaa !4
  %109 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %conv96 = sext i32 %109 to i64
  %mul97 = mul i64 %conv96, 4
  call void @llvm.memset.p0.i64(ptr align 4 %108, i8 0, i64 %mul97, i1 false)
  %110 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %mul98 = mul nsw i32 2, %110
  %conv99 = sext i32 %mul98 to i64
  %call100 = call ptr @hypre_CAlloc(i64 noundef %conv99, i64 noundef 4, i32 noundef 0)
  store ptr %call100, ptr %pointrange_strong, align 8, !tbaa !4
  %111 = load ptr, ptr %pointrange_strong, align 8, !tbaa !4
  %112 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %mul101 = mul nsw i32 2, %112
  %conv102 = sext i32 %mul101 to i64
  %mul103 = mul i64 %conv102, 4
  call void @llvm.memset.p0.i64(ptr align 4 %111, i8 0, i64 %mul103, i1 false)
  %113 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %mul104 = mul nsw i32 2, %113
  %conv105 = sext i32 %mul104 to i64
  %call106 = call ptr @hypre_CAlloc(i64 noundef %conv105, i64 noundef 4, i32 noundef 0)
  store ptr %call106, ptr %vertexrange_strong, align 8, !tbaa !4
  %114 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %115 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %mul107 = mul nsw i32 2, %115
  %conv108 = sext i32 %mul107 to i64
  %mul109 = mul i64 %conv108, 4
  call void @llvm.memset.p0.i64(ptr align 4 %114, i8 0, i64 %mul109, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc151, %if.then
  %116 = load i32, ptr %i, align 4, !tbaa !8
  %117 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp111 = icmp slt i32 %116, %117
  br i1 %cmp111, label %for.body113, label %for.end153

for.body113:                                      ; preds = %for.cond110
  %118 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %119 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom114 = sext i32 %119 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %118, i64 %idxprom114
  %120 = load i32, ptr %arrayidx115, align 4, !tbaa !8
  store i32 %120, ptr %j, align 4, !tbaa !8
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc148, %for.body113
  %121 = load i32, ptr %j, align 4, !tbaa !8
  %122 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %123 = load i32, ptr %i, align 4, !tbaa !8
  %add117 = add nsw i32 %123, 1
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %122, i64 %idxprom118
  %124 = load i32, ptr %arrayidx119, align 4, !tbaa !8
  %cmp120 = icmp slt i32 %121, %124
  br i1 %cmp120, label %for.body122, label %for.end150

for.body122:                                      ; preds = %for.cond116
  %125 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %126 = load ptr, ptr %S_offd_j, align 8, !tbaa !4
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom123 = sext i32 %127 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %126, i64 %idxprom123
  %128 = load i32, ptr %arrayidx124, align 4, !tbaa !8
  %idxprom125 = sext i32 %128 to i64
  %arrayidx126 = getelementptr inbounds i32, ptr %125, i64 %idxprom125
  %129 = load i32, ptr %arrayidx126, align 4, !tbaa !8
  store i32 %129, ptr %jj, align 4, !tbaa !8
  store i32 0, ptr %p, align 4, !tbaa !8
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc143, %for.body122
  %130 = load i32, ptr %p, align 4, !tbaa !8
  %131 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %cmp128 = icmp slt i32 %130, %131
  br i1 %cmp128, label %for.body130, label %for.end145

for.body130:                                      ; preds = %for.cond127
  %132 = load i32, ptr %jj, align 4, !tbaa !8
  %133 = load ptr, ptr %pointrange_nonlocal, align 8, !tbaa !4
  %134 = load i32, ptr %p, align 4, !tbaa !8
  %mul131 = mul nsw i32 2, %134
  %idxprom132 = sext i32 %mul131 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %133, i64 %idxprom132
  %135 = load i32, ptr %arrayidx133, align 4, !tbaa !8
  %cmp134 = icmp sge i32 %132, %135
  br i1 %cmp134, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body130
  %136 = load i32, ptr %jj, align 4, !tbaa !8
  %137 = load ptr, ptr %pointrange_nonlocal, align 8, !tbaa !4
  %138 = load i32, ptr %p, align 4, !tbaa !8
  %mul136 = mul nsw i32 2, %138
  %add137 = add nsw i32 %mul136, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %137, i64 %idxprom138
  %139 = load i32, ptr %arrayidx139, align 4, !tbaa !8
  %cmp140 = icmp slt i32 %136, %139
  br i1 %cmp140, label %if.then142, label %if.end

if.then142:                                       ; preds = %land.lhs.true
  br label %for.end145

if.end:                                           ; preds = %land.lhs.true, %for.body130
  br label %for.inc143

for.inc143:                                       ; preds = %if.end
  %140 = load i32, ptr %p, align 4, !tbaa !8
  %inc144 = add nsw i32 %140, 1
  store i32 %inc144, ptr %p, align 4, !tbaa !8
  br label %for.cond127, !llvm.loop !78

for.end145:                                       ; preds = %if.then142, %for.cond127
  %141 = load ptr, ptr %recv_procs_strong, align 8, !tbaa !4
  %142 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom146 = sext i32 %142 to i64
  %arrayidx147 = getelementptr inbounds i32, ptr %141, i64 %idxprom146
  store i32 1, ptr %arrayidx147, align 4, !tbaa !8
  br label %for.inc148

for.inc148:                                       ; preds = %for.end145
  %143 = load i32, ptr %j, align 4, !tbaa !8
  %inc149 = add nsw i32 %143, 1
  store i32 %inc149, ptr %j, align 4, !tbaa !8
  br label %for.cond116, !llvm.loop !79

for.end150:                                       ; preds = %for.cond116
  br label %for.inc151

for.inc151:                                       ; preds = %for.end150
  %144 = load i32, ptr %i, align 4, !tbaa !8
  %inc152 = add nsw i32 %144, 1
  store i32 %inc152, ptr %i, align 4, !tbaa !8
  br label %for.cond110, !llvm.loop !80

for.end153:                                       ; preds = %for.cond110
  store i32 0, ptr %p, align 4, !tbaa !8
  store i32 0, ptr %num_recvs_strong, align 4, !tbaa !8
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc196, %for.end153
  %145 = load i32, ptr %p, align 4, !tbaa !8
  %146 = load i32, ptr %num_recvs, align 4, !tbaa !8
  %cmp155 = icmp slt i32 %145, %146
  br i1 %cmp155, label %for.body157, label %for.end198

for.body157:                                      ; preds = %for.cond154
  %147 = load ptr, ptr %recv_procs_strong, align 8, !tbaa !4
  %148 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom158 = sext i32 %148 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %147, i64 %idxprom158
  %149 = load i32, ptr %arrayidx159, align 4, !tbaa !8
  %tobool160 = icmp ne i32 %149, 0
  br i1 %tobool160, label %if.then161, label %if.end195

if.then161:                                       ; preds = %for.body157
  %150 = load ptr, ptr %recv_procs, align 8, !tbaa !4
  %151 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom162 = sext i32 %151 to i64
  %arrayidx163 = getelementptr inbounds i32, ptr %150, i64 %idxprom162
  %152 = load i32, ptr %arrayidx163, align 4, !tbaa !8
  %153 = load ptr, ptr %recv_procs_strong, align 8, !tbaa !4
  %154 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %idxprom164 = sext i32 %154 to i64
  %arrayidx165 = getelementptr inbounds i32, ptr %153, i64 %idxprom164
  store i32 %152, ptr %arrayidx165, align 4, !tbaa !8
  %155 = load ptr, ptr %pointrange_nonlocal, align 8, !tbaa !4
  %156 = load i32, ptr %p, align 4, !tbaa !8
  %mul166 = mul nsw i32 2, %156
  %idxprom167 = sext i32 %mul166 to i64
  %arrayidx168 = getelementptr inbounds i32, ptr %155, i64 %idxprom167
  %157 = load i32, ptr %arrayidx168, align 4, !tbaa !8
  %158 = load ptr, ptr %pointrange_strong, align 8, !tbaa !4
  %159 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %mul169 = mul nsw i32 2, %159
  %idxprom170 = sext i32 %mul169 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %158, i64 %idxprom170
  store i32 %157, ptr %arrayidx171, align 4, !tbaa !8
  %160 = load ptr, ptr %pointrange_nonlocal, align 8, !tbaa !4
  %161 = load i32, ptr %p, align 4, !tbaa !8
  %mul172 = mul nsw i32 2, %161
  %add173 = add nsw i32 %mul172, 1
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds i32, ptr %160, i64 %idxprom174
  %162 = load i32, ptr %arrayidx175, align 4, !tbaa !8
  %163 = load ptr, ptr %pointrange_strong, align 8, !tbaa !4
  %164 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %mul176 = mul nsw i32 2, %164
  %add177 = add nsw i32 %mul176, 1
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %163, i64 %idxprom178
  store i32 %162, ptr %arrayidx179, align 4, !tbaa !8
  %165 = load ptr, ptr %vertexrange_nonlocal, align 8, !tbaa !4
  %166 = load i32, ptr %p, align 4, !tbaa !8
  %mul180 = mul nsw i32 2, %166
  %idxprom181 = sext i32 %mul180 to i64
  %arrayidx182 = getelementptr inbounds i32, ptr %165, i64 %idxprom181
  %167 = load i32, ptr %arrayidx182, align 4, !tbaa !8
  %168 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %169 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %mul183 = mul nsw i32 2, %169
  %idxprom184 = sext i32 %mul183 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %168, i64 %idxprom184
  store i32 %167, ptr %arrayidx185, align 4, !tbaa !8
  %170 = load ptr, ptr %vertexrange_nonlocal, align 8, !tbaa !4
  %171 = load i32, ptr %p, align 4, !tbaa !8
  %mul186 = mul nsw i32 2, %171
  %add187 = add nsw i32 %mul186, 1
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %170, i64 %idxprom188
  %172 = load i32, ptr %arrayidx189, align 4, !tbaa !8
  %173 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %174 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %mul190 = mul nsw i32 2, %174
  %add191 = add nsw i32 %mul190, 1
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %173, i64 %idxprom192
  store i32 %172, ptr %arrayidx193, align 4, !tbaa !8
  %175 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %inc194 = add nsw i32 %175, 1
  store i32 %inc194, ptr %num_recvs_strong, align 4, !tbaa !8
  br label %if.end195

if.end195:                                        ; preds = %if.then161, %for.body157
  br label %for.inc196

for.inc196:                                       ; preds = %if.end195
  %176 = load i32, ptr %p, align 4, !tbaa !8
  %inc197 = add nsw i32 %176, 1
  store i32 %inc197, ptr %p, align 4, !tbaa !8
  br label %for.cond154, !llvm.loop !81

for.end198:                                       ; preds = %for.cond154
  br label %if.end199

if.else:                                          ; preds = %for.end89
  store i32 0, ptr %num_recvs_strong, align 4, !tbaa !8
  br label %if.end199

if.end199:                                        ; preds = %if.else, %for.end198
  %177 = load ptr, ptr %pointrange_nonlocal, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %177, i32 noundef 0)
  store ptr null, ptr %pointrange_nonlocal, align 8, !tbaa !4
  %178 = load ptr, ptr %vertexrange_nonlocal, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %178, i32 noundef 0)
  store ptr null, ptr %vertexrange_nonlocal, align 8, !tbaa !4
  %179 = load i32, ptr %nlocal, align 4, !tbaa !8
  %mul200 = mul nsw i32 2, %179
  %conv201 = sext i32 %mul200 to i64
  %call202 = call ptr @hypre_CAlloc(i64 noundef %conv201, i64 noundef 4, i32 noundef 0)
  store ptr %call202, ptr %rownz_diag, align 8, !tbaa !4
  %180 = load ptr, ptr %rownz_diag, align 8, !tbaa !4
  %181 = load i32, ptr %nlocal, align 4, !tbaa !8
  %idx.ext203 = sext i32 %181 to i64
  %add.ptr204 = getelementptr inbounds i32, ptr %180, i64 %idx.ext203
  store ptr %add.ptr204, ptr %rownz_offd, align 8, !tbaa !4
  store i32 0, ptr %p, align 4, !tbaa !8
  store i32 0, ptr %nz, align 4, !tbaa !8
  br label %for.cond205

for.cond205:                                      ; preds = %for.inc218, %if.end199
  %182 = load i32, ptr %p, align 4, !tbaa !8
  %183 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %cmp206 = icmp slt i32 %182, %183
  br i1 %cmp206, label %for.body208, label %for.end220

for.body208:                                      ; preds = %for.cond205
  %184 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %185 = load i32, ptr %p, align 4, !tbaa !8
  %mul209 = mul nsw i32 2, %185
  %add210 = add nsw i32 %mul209, 1
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %184, i64 %idxprom211
  %186 = load i32, ptr %arrayidx212, align 4, !tbaa !8
  %187 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %188 = load i32, ptr %p, align 4, !tbaa !8
  %mul213 = mul nsw i32 2, %188
  %idxprom214 = sext i32 %mul213 to i64
  %arrayidx215 = getelementptr inbounds i32, ptr %187, i64 %idxprom214
  %189 = load i32, ptr %arrayidx215, align 4, !tbaa !8
  %sub216 = sub nsw i32 %186, %189
  %190 = load i32, ptr %nz, align 4, !tbaa !8
  %add217 = add nsw i32 %190, %sub216
  store i32 %add217, ptr %nz, align 4, !tbaa !8
  br label %for.inc218

for.inc218:                                       ; preds = %for.body208
  %191 = load i32, ptr %p, align 4, !tbaa !8
  %inc219 = add nsw i32 %191, 1
  store i32 %inc219, ptr %p, align 4, !tbaa !8
  br label %for.cond205, !llvm.loop !82

for.end220:                                       ; preds = %for.cond205
  store i32 0, ptr %m, align 4, !tbaa !8
  br label %for.cond221

for.cond221:                                      ; preds = %for.inc230, %for.end220
  %192 = load i32, ptr %m, align 4, !tbaa !8
  %193 = load i32, ptr %nlocal, align 4, !tbaa !8
  %cmp222 = icmp slt i32 %192, %193
  br i1 %cmp222, label %for.body224, label %for.end232

for.body224:                                      ; preds = %for.cond221
  %194 = load i32, ptr %nlocal, align 4, !tbaa !8
  %sub225 = sub nsw i32 %194, 1
  %195 = load ptr, ptr %rownz_diag, align 8, !tbaa !4
  %196 = load i32, ptr %m, align 4, !tbaa !8
  %idxprom226 = sext i32 %196 to i64
  %arrayidx227 = getelementptr inbounds i32, ptr %195, i64 %idxprom226
  store i32 %sub225, ptr %arrayidx227, align 4, !tbaa !8
  %197 = load i32, ptr %nz, align 4, !tbaa !8
  %198 = load ptr, ptr %rownz_offd, align 8, !tbaa !4
  %199 = load i32, ptr %m, align 4, !tbaa !8
  %idxprom228 = sext i32 %199 to i64
  %arrayidx229 = getelementptr inbounds i32, ptr %198, i64 %idxprom228
  store i32 %197, ptr %arrayidx229, align 4, !tbaa !8
  br label %for.inc230

for.inc230:                                       ; preds = %for.body224
  %200 = load i32, ptr %m, align 4, !tbaa !8
  %inc231 = add nsw i32 %200, 1
  store i32 %inc231, ptr %m, align 4, !tbaa !8
  br label %for.cond221, !llvm.loop !83

for.end232:                                       ; preds = %for.cond221
  %201 = load ptr, ptr %comm, align 8, !tbaa !4
  %202 = load i32, ptr %vertexrange_start, align 4, !tbaa !8
  %203 = load i32, ptr %vertexrange_end, align 4, !tbaa !8
  %sub233 = sub nsw i32 %203, 1
  %204 = load i32, ptr %vertexrange_start, align 4, !tbaa !8
  %205 = load i32, ptr %vertexrange_end, align 4, !tbaa !8
  %sub234 = sub nsw i32 %205, 1
  %call235 = call i32 @HYPRE_IJMatrixCreate(ptr noundef %201, i32 noundef %202, i32 noundef %sub233, i32 noundef %204, i32 noundef %sub234, ptr noundef %ijmatrix)
  %206 = load ptr, ptr %ijmatrix, align 8, !tbaa !4
  %call236 = call i32 @HYPRE_IJMatrixSetObjectType(ptr noundef %206, i32 noundef 5555)
  %207 = load ptr, ptr %ijmatrix, align 8, !tbaa !4
  %208 = load ptr, ptr %rownz_diag, align 8, !tbaa !4
  %209 = load ptr, ptr %rownz_offd, align 8, !tbaa !4
  %call237 = call i32 @HYPRE_IJMatrixSetDiagOffdSizes(ptr noundef %207, ptr noundef %208, ptr noundef %209)
  %210 = load ptr, ptr %ijmatrix, align 8, !tbaa !4
  %call238 = call i32 @HYPRE_IJMatrixInitialize(ptr noundef %210)
  %211 = load ptr, ptr %rownz_diag, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %211, i32 noundef 0)
  store ptr null, ptr %rownz_diag, align 8, !tbaa !4
  %212 = load ptr, ptr %weight, align 8, !tbaa !4
  %arrayidx239 = getelementptr inbounds double, ptr %212, i64 0
  store double -1.000000e+00, ptr %arrayidx239, align 8, !tbaa !21
  %213 = load i32, ptr %vertexrange_start, align 4, !tbaa !8
  store i32 %213, ptr %m, align 4, !tbaa !8
  br label %for.cond240

for.cond240:                                      ; preds = %for.inc271, %for.end232
  %214 = load i32, ptr %m, align 4, !tbaa !8
  %215 = load i32, ptr %vertexrange_end, align 4, !tbaa !8
  %cmp241 = icmp slt i32 %214, %215
  br i1 %cmp241, label %for.body243, label %for.end273

for.body243:                                      ; preds = %for.cond240
  %216 = load i32, ptr %m, align 4, !tbaa !8
  %217 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx244 = getelementptr inbounds i32, ptr %217, i64 0
  store i32 %216, ptr %arrayidx244, align 4, !tbaa !8
  store i32 0, ptr %p, align 4, !tbaa !8
  br label %for.cond245

for.cond245:                                      ; preds = %for.inc268, %for.body243
  %218 = load i32, ptr %p, align 4, !tbaa !8
  %219 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %cmp246 = icmp slt i32 %218, %219
  br i1 %cmp246, label %for.body248, label %for.end270

for.body248:                                      ; preds = %for.cond245
  %220 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %221 = load i32, ptr %p, align 4, !tbaa !8
  %mul249 = mul nsw i32 2, %221
  %idxprom250 = sext i32 %mul249 to i64
  %arrayidx251 = getelementptr inbounds i32, ptr %220, i64 %idxprom250
  %222 = load i32, ptr %arrayidx251, align 4, !tbaa !8
  store i32 %222, ptr %n, align 4, !tbaa !8
  br label %for.cond252

for.cond252:                                      ; preds = %for.inc265, %for.body248
  %223 = load i32, ptr %n, align 4, !tbaa !8
  %224 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %225 = load i32, ptr %p, align 4, !tbaa !8
  %mul253 = mul nsw i32 2, %225
  %add254 = add nsw i32 %mul253, 1
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds i32, ptr %224, i64 %idxprom255
  %226 = load i32, ptr %arrayidx256, align 4, !tbaa !8
  %cmp257 = icmp slt i32 %223, %226
  br i1 %cmp257, label %for.body259, label %for.end267

for.body259:                                      ; preds = %for.cond252
  %227 = load i32, ptr %n, align 4, !tbaa !8
  %228 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx260 = getelementptr inbounds i32, ptr %228, i64 1
  store i32 %227, ptr %arrayidx260, align 4, !tbaa !8
  %229 = load ptr, ptr %ijmatrix, align 8, !tbaa !4
  %230 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx261 = getelementptr inbounds i32, ptr %230, i64 0
  %231 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx262 = getelementptr inbounds i32, ptr %231, i64 1
  %232 = load ptr, ptr %weight, align 8, !tbaa !4
  %arrayidx263 = getelementptr inbounds double, ptr %232, i64 0
  %call264 = call i32 @HYPRE_IJMatrixAddToValues(ptr noundef %229, i32 noundef 1, ptr noundef null, ptr noundef %arrayidx261, ptr noundef %arrayidx262, ptr noundef %arrayidx263)
  br label %for.inc265

for.inc265:                                       ; preds = %for.body259
  %233 = load i32, ptr %n, align 4, !tbaa !8
  %inc266 = add nsw i32 %233, 1
  store i32 %inc266, ptr %n, align 4, !tbaa !8
  br label %for.cond252, !llvm.loop !84

for.end267:                                       ; preds = %for.cond252
  br label %for.inc268

for.inc268:                                       ; preds = %for.end267
  %234 = load i32, ptr %p, align 4, !tbaa !8
  %inc269 = add nsw i32 %234, 1
  store i32 %inc269, ptr %p, align 4, !tbaa !8
  br label %for.cond245, !llvm.loop !85

for.end270:                                       ; preds = %for.cond245
  br label %for.inc271

for.inc271:                                       ; preds = %for.end270
  %235 = load i32, ptr %m, align 4, !tbaa !8
  %inc272 = add nsw i32 %235, 1
  store i32 %inc272, ptr %m, align 4, !tbaa !8
  br label %for.cond240, !llvm.loop !86

for.end273:                                       ; preds = %for.cond240
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc396, %for.end273
  %236 = load i32, ptr %i, align 4, !tbaa !8
  %237 = load i32, ptr %num_variables, align 4, !tbaa !8
  %cmp275 = icmp slt i32 %236, %237
  br i1 %cmp275, label %for.body277, label %for.end398

for.body277:                                      ; preds = %for.cond274
  %238 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %239 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom278 = sext i32 %239 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %238, i64 %idxprom278
  %240 = load i32, ptr %arrayidx279, align 4, !tbaa !8
  store i32 %240, ptr %j, align 4, !tbaa !8
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc393, %for.body277
  %241 = load i32, ptr %j, align 4, !tbaa !8
  %242 = load ptr, ptr %S_offd_i, align 8, !tbaa !4
  %243 = load i32, ptr %i, align 4, !tbaa !8
  %add281 = add nsw i32 %243, 1
  %idxprom282 = sext i32 %add281 to i64
  %arrayidx283 = getelementptr inbounds i32, ptr %242, i64 %idxprom282
  %244 = load i32, ptr %arrayidx283, align 4, !tbaa !8
  %cmp284 = icmp slt i32 %241, %244
  br i1 %cmp284, label %for.body286, label %for.end395

for.body286:                                      ; preds = %for.cond280
  %245 = load ptr, ptr %S_offd_j, align 8, !tbaa !4
  %246 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom287 = sext i32 %246 to i64
  %arrayidx288 = getelementptr inbounds i32, ptr %245, i64 %idxprom287
  %247 = load i32, ptr %arrayidx288, align 4, !tbaa !8
  store i32 %247, ptr %jj, align 4, !tbaa !8
  store i32 0, ptr %p, align 4, !tbaa !8
  br label %for.cond289

for.cond289:                                      ; preds = %for.inc311, %for.body286
  %248 = load i32, ptr %p, align 4, !tbaa !8
  %249 = load i32, ptr %num_recvs_strong, align 4, !tbaa !8
  %cmp290 = icmp slt i32 %248, %249
  br i1 %cmp290, label %for.body292, label %for.end313

for.body292:                                      ; preds = %for.cond289
  %250 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %251 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom293 = sext i32 %251 to i64
  %arrayidx294 = getelementptr inbounds i32, ptr %250, i64 %idxprom293
  %252 = load i32, ptr %arrayidx294, align 4, !tbaa !8
  %253 = load ptr, ptr %pointrange_strong, align 8, !tbaa !4
  %254 = load i32, ptr %p, align 4, !tbaa !8
  %mul295 = mul nsw i32 2, %254
  %idxprom296 = sext i32 %mul295 to i64
  %arrayidx297 = getelementptr inbounds i32, ptr %253, i64 %idxprom296
  %255 = load i32, ptr %arrayidx297, align 4, !tbaa !8
  %cmp298 = icmp sge i32 %252, %255
  br i1 %cmp298, label %land.lhs.true300, label %if.end310

land.lhs.true300:                                 ; preds = %for.body292
  %256 = load ptr, ptr %col_map_offd, align 8, !tbaa !4
  %257 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom301 = sext i32 %257 to i64
  %arrayidx302 = getelementptr inbounds i32, ptr %256, i64 %idxprom301
  %258 = load i32, ptr %arrayidx302, align 4, !tbaa !8
  %259 = load ptr, ptr %pointrange_strong, align 8, !tbaa !4
  %260 = load i32, ptr %p, align 4, !tbaa !8
  %mul303 = mul nsw i32 2, %260
  %add304 = add nsw i32 %mul303, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds i32, ptr %259, i64 %idxprom305
  %261 = load i32, ptr %arrayidx306, align 4, !tbaa !8
  %cmp307 = icmp slt i32 %258, %261
  br i1 %cmp307, label %if.then309, label %if.end310

if.then309:                                       ; preds = %land.lhs.true300
  br label %for.end313

if.end310:                                        ; preds = %land.lhs.true300, %for.body292
  br label %for.inc311

for.inc311:                                       ; preds = %if.end310
  %262 = load i32, ptr %p, align 4, !tbaa !8
  %inc312 = add nsw i32 %262, 1
  store i32 %inc312, ptr %p, align 4, !tbaa !8
  br label %for.cond289, !llvm.loop !87

for.end313:                                       ; preds = %if.then309, %for.cond289
  %263 = load i32, ptr %vertexrange_start, align 4, !tbaa !8
  store i32 %263, ptr %m, align 4, !tbaa !8
  br label %for.cond314

for.cond314:                                      ; preds = %for.inc390, %for.end313
  %264 = load i32, ptr %m, align 4, !tbaa !8
  %265 = load i32, ptr %vertexrange_end, align 4, !tbaa !8
  %cmp315 = icmp slt i32 %264, %265
  br i1 %cmp315, label %for.body317, label %for.end392

for.body317:                                      ; preds = %for.cond314
  %266 = load i32, ptr %m, align 4, !tbaa !8
  %267 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx318 = getelementptr inbounds i32, ptr %267, i64 0
  store i32 %266, ptr %arrayidx318, align 4, !tbaa !8
  %268 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %269 = load i32, ptr %p, align 4, !tbaa !8
  %mul319 = mul nsw i32 2, %269
  %idxprom320 = sext i32 %mul319 to i64
  %arrayidx321 = getelementptr inbounds i32, ptr %268, i64 %idxprom320
  %270 = load i32, ptr %arrayidx321, align 4, !tbaa !8
  store i32 %270, ptr %n, align 4, !tbaa !8
  br label %for.cond322

for.cond322:                                      ; preds = %for.inc387, %for.body317
  %271 = load i32, ptr %n, align 4, !tbaa !8
  %272 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  %273 = load i32, ptr %p, align 4, !tbaa !8
  %mul323 = mul nsw i32 2, %273
  %add324 = add nsw i32 %mul323, 1
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %272, i64 %idxprom325
  %274 = load i32, ptr %arrayidx326, align 4, !tbaa !8
  %cmp327 = icmp slt i32 %271, %274
  br i1 %cmp327, label %for.body329, label %for.end389

for.body329:                                      ; preds = %for.cond322
  %275 = load i32, ptr %n, align 4, !tbaa !8
  %276 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx330 = getelementptr inbounds i32, ptr %276, i64 1
  store i32 %275, ptr %arrayidx330, align 4, !tbaa !8
  %277 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %278 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom331 = sext i32 %278 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %277, i64 %idxprom331
  %279 = load i32, ptr %arrayidx332, align 4, !tbaa !8
  %sub333 = sub nsw i32 %279, 1
  %280 = load i32, ptr %m, align 4, !tbaa !8
  %cmp334 = icmp eq i32 %sub333, %280
  br i1 %cmp334, label %land.lhs.true336, label %if.else344

land.lhs.true336:                                 ; preds = %for.body329
  %281 = load ptr, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  %282 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom337 = sext i32 %282 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %281, i64 %idxprom337
  %283 = load i32, ptr %arrayidx338, align 4, !tbaa !8
  %sub339 = sub nsw i32 %283, 1
  %284 = load i32, ptr %n, align 4, !tbaa !8
  %cmp340 = icmp eq i32 %sub339, %284
  br i1 %cmp340, label %if.then342, label %if.else344

if.then342:                                       ; preds = %land.lhs.true336
  %285 = load ptr, ptr %weight, align 8, !tbaa !4
  %arrayidx343 = getelementptr inbounds double, ptr %285, i64 0
  store double -1.000000e+00, ptr %arrayidx343, align 8, !tbaa !21
  br label %if.end382

if.else344:                                       ; preds = %land.lhs.true336, %for.body329
  %286 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %287 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom345 = sext i32 %287 to i64
  %arrayidx346 = getelementptr inbounds i32, ptr %286, i64 %idxprom345
  %288 = load i32, ptr %arrayidx346, align 4, !tbaa !8
  %sub347 = sub nsw i32 %288, 1
  %289 = load i32, ptr %m, align 4, !tbaa !8
  %cmp348 = icmp eq i32 %sub347, %289
  br i1 %cmp348, label %land.lhs.true350, label %lor.lhs.false360

land.lhs.true350:                                 ; preds = %if.else344
  %290 = load ptr, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  %291 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom351 = sext i32 %291 to i64
  %arrayidx352 = getelementptr inbounds i32, ptr %290, i64 %idxprom351
  %292 = load i32, ptr %arrayidx352, align 4, !tbaa !8
  %cmp353 = icmp eq i32 %292, 0
  br i1 %cmp353, label %if.then377, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true350
  %293 = load ptr, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  %294 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom355 = sext i32 %294 to i64
  %arrayidx356 = getelementptr inbounds i32, ptr %293, i64 %idxprom355
  %295 = load i32, ptr %arrayidx356, align 4, !tbaa !8
  %sub357 = sub nsw i32 %295, 1
  %296 = load i32, ptr %n, align 4, !tbaa !8
  %cmp358 = icmp ne i32 %sub357, %296
  br i1 %cmp358, label %if.then377, label %lor.lhs.false360

lor.lhs.false360:                                 ; preds = %lor.lhs.false, %if.else344
  %297 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %298 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom361 = sext i32 %298 to i64
  %arrayidx362 = getelementptr inbounds i32, ptr %297, i64 %idxprom361
  %299 = load i32, ptr %arrayidx362, align 4, !tbaa !8
  %cmp363 = icmp eq i32 %299, 0
  br i1 %cmp363, label %land.lhs.true371, label %lor.lhs.false365

lor.lhs.false365:                                 ; preds = %lor.lhs.false360
  %300 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %301 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom366 = sext i32 %301 to i64
  %arrayidx367 = getelementptr inbounds i32, ptr %300, i64 %idxprom366
  %302 = load i32, ptr %arrayidx367, align 4, !tbaa !8
  %sub368 = sub nsw i32 %302, 1
  %303 = load i32, ptr %m, align 4, !tbaa !8
  %cmp369 = icmp ne i32 %sub368, %303
  br i1 %cmp369, label %land.lhs.true371, label %if.else379

land.lhs.true371:                                 ; preds = %lor.lhs.false365, %lor.lhs.false360
  %304 = load ptr, ptr %CF_marker_offd.addr, align 8, !tbaa !4
  %305 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom372 = sext i32 %305 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %304, i64 %idxprom372
  %306 = load i32, ptr %arrayidx373, align 4, !tbaa !8
  %sub374 = sub nsw i32 %306, 1
  %307 = load i32, ptr %n, align 4, !tbaa !8
  %cmp375 = icmp eq i32 %sub374, %307
  br i1 %cmp375, label %if.then377, label %if.else379

if.then377:                                       ; preds = %land.lhs.true371, %lor.lhs.false, %land.lhs.true350
  %308 = load ptr, ptr %weight, align 8, !tbaa !4
  %arrayidx378 = getelementptr inbounds double, ptr %308, i64 0
  store double 0.000000e+00, ptr %arrayidx378, align 8, !tbaa !21
  br label %if.end381

if.else379:                                       ; preds = %land.lhs.true371, %lor.lhs.false365
  %309 = load ptr, ptr %weight, align 8, !tbaa !4
  %arrayidx380 = getelementptr inbounds double, ptr %309, i64 0
  store double -8.000000e+00, ptr %arrayidx380, align 8, !tbaa !21
  br label %if.end381

if.end381:                                        ; preds = %if.else379, %if.then377
  br label %if.end382

if.end382:                                        ; preds = %if.end381, %if.then342
  %310 = load ptr, ptr %ijmatrix, align 8, !tbaa !4
  %311 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx383 = getelementptr inbounds i32, ptr %311, i64 0
  %312 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  %arrayidx384 = getelementptr inbounds i32, ptr %312, i64 1
  %313 = load ptr, ptr %weight, align 8, !tbaa !4
  %arrayidx385 = getelementptr inbounds double, ptr %313, i64 0
  %call386 = call i32 @HYPRE_IJMatrixAddToValues(ptr noundef %310, i32 noundef 1, ptr noundef null, ptr noundef %arrayidx383, ptr noundef %arrayidx384, ptr noundef %arrayidx385)
  br label %for.inc387

for.inc387:                                       ; preds = %if.end382
  %314 = load i32, ptr %n, align 4, !tbaa !8
  %inc388 = add nsw i32 %314, 1
  store i32 %inc388, ptr %n, align 4, !tbaa !8
  br label %for.cond322, !llvm.loop !88

for.end389:                                       ; preds = %for.cond322
  br label %for.inc390

for.inc390:                                       ; preds = %for.end389
  %315 = load i32, ptr %m, align 4, !tbaa !8
  %inc391 = add nsw i32 %315, 1
  store i32 %inc391, ptr %m, align 4, !tbaa !8
  br label %for.cond314, !llvm.loop !89

for.end392:                                       ; preds = %for.cond314
  br label %for.inc393

for.inc393:                                       ; preds = %for.end392
  %316 = load i32, ptr %j, align 4, !tbaa !8
  %inc394 = add nsw i32 %316, 1
  store i32 %inc394, ptr %j, align 4, !tbaa !8
  br label %for.cond280, !llvm.loop !90

for.end395:                                       ; preds = %for.cond280
  br label %for.inc396

for.inc396:                                       ; preds = %for.end395
  %317 = load i32, ptr %i, align 4, !tbaa !8
  %inc397 = add nsw i32 %317, 1
  store i32 %inc397, ptr %i, align 4, !tbaa !8
  br label %for.cond274, !llvm.loop !91

for.end398:                                       ; preds = %for.cond274
  %318 = load ptr, ptr %ijmatrix, align 8, !tbaa !4
  %call399 = call i32 @HYPRE_IJMatrixAssemble(ptr noundef %318)
  %319 = load ptr, ptr %recv_procs_strong, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %319, i32 noundef 0)
  store ptr null, ptr %recv_procs_strong, align 8, !tbaa !4
  %320 = load ptr, ptr %pointrange_strong, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %320, i32 noundef 0)
  store ptr null, ptr %pointrange_strong, align 8, !tbaa !4
  %321 = load ptr, ptr %vertexrange_strong, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %321, i32 noundef 0)
  store ptr null, ptr %vertexrange_strong, align 8, !tbaa !4
  %322 = load ptr, ptr %big_m_n, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %322, i32 noundef 1)
  store ptr null, ptr %big_m_n, align 8, !tbaa !4
  %323 = load ptr, ptr %weight, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %323, i32 noundef 1)
  store ptr null, ptr %weight, align 8, !tbaa !4
  %324 = load ptr, ptr %ijmatrix, align 8, !tbaa !4
  %325 = load ptr, ptr %ijG.addr, align 8, !tbaa !4
  store ptr %324, ptr %325, align 8, !tbaa !4
  %326 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %weight) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %big_m_n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlocal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rownz_offd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rownz_diag) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_procs_strong) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %recv_procs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_recvs_strong) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_recvs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vertexrange_nonlocal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vertexrange_strong) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vertexrange_end) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vertexrange_start) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointrange_strong) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointrange_nonlocal) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointrange) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_map_offd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_cols_offd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_offd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %S_diag) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ijmatrix) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpirank) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpisize) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 %326
}

declare i32 @HYPRE_IJMatrixGetObject(ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Allgather(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_ParCSRMatrixToCSRMatrixAll(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AmgCGCChoose(ptr noundef %G, ptr noundef %vertexrange, i32 noundef %mpisize, ptr noundef %coarse) #0 {
entry:
  %G.addr = alloca ptr, align 8
  %vertexrange.addr = alloca ptr, align 8
  %mpisize.addr = alloca i32, align 4
  %coarse.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %p = alloca i32, align 4
  %choice = alloca i32, align 4
  %processor = alloca ptr, align 8
  %measure = alloca i32, align 4
  %new_measure = alloca i32, align 4
  %G_data = alloca ptr, align 8
  %max = alloca double, align 8
  %G_i = alloca ptr, align 8
  %G_j = alloca ptr, align 8
  %H = alloca ptr, align 8
  %HT = alloca ptr, align 8
  %H_i = alloca ptr, align 8
  %H_j = alloca ptr, align 8
  %HT_i = alloca ptr, align 8
  %HT_j = alloca ptr, align 8
  %jG = alloca i32, align 4
  %jH = alloca i32, align 4
  %num_vertices = alloca i32, align 4
  %measure_array = alloca ptr, align 8
  %lists = alloca ptr, align 8
  %where = alloca ptr, align 8
  %LoL_head = alloca ptr, align 8
  %LoL_tail = alloca ptr, align 8
  %myindex = alloca i32, align 4
  store ptr %G, ptr %G.addr, align 8, !tbaa !4
  store ptr %vertexrange, ptr %vertexrange.addr, align 8, !tbaa !4
  store i32 %mpisize, ptr %mpisize.addr, align 4, !tbaa !8
  store ptr %coarse, ptr %coarse.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %choice) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %processor) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %measure) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_measure) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %G_data) #4
  %0 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %data, align 8, !tbaa !92
  store ptr %1, ptr %G_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %G_i) #4
  %2 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %i1 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %i1, align 8, !tbaa !16
  store ptr %3, ptr %G_i, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %G_j) #4
  %4 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %j2 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %j2, align 8, !tbaa !18
  store ptr %5, ptr %G_j, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %H) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %HT) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %H_i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %H_j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %HT_i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %HT_j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jG) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jH) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_vertices) #4
  %6 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %num_rows, align 8, !tbaa !19
  store i32 %7, ptr %num_vertices, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %measure_array) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lists) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %LoL_head) #4
  store ptr null, ptr %LoL_head, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %LoL_tail) #4
  store ptr null, ptr %LoL_tail, align 8, !tbaa !4
  %8 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %conv = sext i32 %8 to i64
  %call = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 4, i32 noundef 0)
  store ptr %call, ptr %processor, align 8, !tbaa !4
  %9 = load i32, ptr %mpisize.addr, align 4, !tbaa !8
  %conv3 = sext i32 %9 to i64
  %call4 = call ptr @hypre_CAlloc(i64 noundef %conv3, i64 noundef 4, i32 noundef 0)
  %10 = load ptr, ptr %coarse.addr, align 8, !tbaa !4
  store ptr %call4, ptr %10, align 8, !tbaa !4
  %11 = load ptr, ptr %coarse.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %13 = load i32, ptr %mpisize.addr, align 4, !tbaa !8
  %conv5 = sext i32 %13 to i64
  %mul = mul i64 4, %conv5
  call void @llvm.memset.p0.i64(ptr align 4 %12, i8 0, i64 %mul, i1 false)
  %14 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %conv6 = sext i32 %14 to i64
  %call7 = call ptr @hypre_CAlloc(i64 noundef %conv6, i64 noundef 4, i32 noundef 0)
  store ptr %call7, ptr %measure_array, align 8, !tbaa !4
  %15 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %conv8 = sext i32 %15 to i64
  %call9 = call ptr @hypre_CAlloc(i64 noundef %conv8, i64 noundef 4, i32 noundef 0)
  store ptr %call9, ptr %lists, align 8, !tbaa !4
  %16 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %conv10 = sext i32 %16 to i64
  %call11 = call ptr @hypre_CAlloc(i64 noundef %conv10, i64 noundef 4, i32 noundef 0)
  store ptr %call11, ptr %where, align 8, !tbaa !4
  %17 = load ptr, ptr %G_i, align 8, !tbaa !4
  %18 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %19, ptr %jG, align 4, !tbaa !8
  %20 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %21 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %22 = load i32, ptr %jG, align 4, !tbaa !8
  %call12 = call ptr @hypre_CSRMatrixCreate(i32 noundef %20, i32 noundef %21, i32 noundef %22)
  store ptr %call12, ptr %H, align 8, !tbaa !4
  %23 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %add = add nsw i32 %23, 1
  %conv13 = sext i32 %add to i64
  %call14 = call ptr @hypre_CAlloc(i64 noundef %conv13, i64 noundef 4, i32 noundef 0)
  store ptr %call14, ptr %H_i, align 8, !tbaa !4
  %24 = load i32, ptr %jG, align 4, !tbaa !8
  %conv15 = sext i32 %24 to i64
  %call16 = call ptr @hypre_CAlloc(i64 noundef %conv15, i64 noundef 4, i32 noundef 0)
  store ptr %call16, ptr %H_j, align 8, !tbaa !4
  %25 = load ptr, ptr %H_i, align 8, !tbaa !4
  %26 = load ptr, ptr %H, align 8, !tbaa !4
  %i17 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %26, i32 0, i32 0
  store ptr %25, ptr %i17, align 8, !tbaa !16
  %27 = load ptr, ptr %H_j, align 8, !tbaa !4
  %28 = load ptr, ptr %H, align 8, !tbaa !4
  %j18 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %28, i32 0, i32 1
  store ptr %27, ptr %j18, align 8, !tbaa !18
  %29 = load ptr, ptr %H, align 8, !tbaa !4
  %memory_location = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %29, i32 0, i32 12
  store i32 0, ptr %memory_location, align 4, !tbaa !24
  store i32 0, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %p, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %31 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %cmp = icmp slt i32 %30, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %32 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %33 = load i32, ptr %p, align 4, !tbaa !8
  %add20 = add nsw i32 %33, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %32, i64 %idxprom21
  %34 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %cmp23 = icmp sle i32 %34, %35
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, ptr %p, align 4, !tbaa !8
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %p, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !93

while.end:                                        ; preds = %while.cond
  %37 = load i32, ptr %p, align 4, !tbaa !8
  %38 = load ptr, ptr %processor, align 8, !tbaa !4
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom25 = sext i32 %39 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %38, i64 %idxprom25
  store i32 %37, ptr %arrayidx26, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %40 = load i32, ptr %i, align 4, !tbaa !8
  %inc27 = add nsw i32 %40, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %H_i, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds i32, ptr %41, i64 0
  store i32 0, ptr %arrayidx28, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  store i32 0, ptr %jj, align 4, !tbaa !8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc84, %for.end
  %42 = load i32, ptr %i, align 4, !tbaa !8
  %43 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %cmp30 = icmp slt i32 %42, %43
  br i1 %cmp30, label %for.body32, label %for.end86

for.body32:                                       ; preds = %for.cond29
  %44 = load ptr, ptr %H_i, align 8, !tbaa !4
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom33 = sext i32 %45 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %44, i64 %idxprom33
  %46 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %47 = load ptr, ptr %H_i, align 8, !tbaa !4
  %48 = load i32, ptr %i, align 4, !tbaa !8
  %add35 = add nsw i32 %48, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %47, i64 %idxprom36
  store i32 %46, ptr %arrayidx37, align 4, !tbaa !8
  %49 = load ptr, ptr %G_i, align 8, !tbaa !4
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom38 = sext i32 %50 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %49, i64 %idxprom38
  %51 = load i32, ptr %arrayidx39, align 4, !tbaa !8
  store i32 %51, ptr %j, align 4, !tbaa !8
  store i32 -1, ptr %choice, align 4, !tbaa !8
  store double 0.000000e+00, ptr %max, align 8, !tbaa !21
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc81, %for.body32
  %52 = load i32, ptr %j, align 4, !tbaa !8
  %53 = load ptr, ptr %G_i, align 8, !tbaa !4
  %54 = load i32, ptr %i, align 4, !tbaa !8
  %add41 = add nsw i32 %54, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %53, i64 %idxprom42
  %55 = load i32, ptr %arrayidx43, align 4, !tbaa !8
  %cmp44 = icmp slt i32 %52, %55
  br i1 %cmp44, label %for.body46, label %for.end83

for.body46:                                       ; preds = %for.cond40
  %56 = load i32, ptr %choice, align 4, !tbaa !8
  %cmp47 = icmp eq i32 %56, -1
  br i1 %cmp47, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body46
  %57 = load ptr, ptr %G_data, align 8, !tbaa !4
  %58 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom49 = sext i32 %58 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %57, i64 %idxprom49
  %59 = load double, ptr %arrayidx50, align 8, !tbaa !21
  %60 = load double, ptr %max, align 8, !tbaa !21
  %cmp51 = fcmp ogt double %59, %60
  br i1 %cmp51, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body46
  %61 = load ptr, ptr %G_j, align 8, !tbaa !4
  %62 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom53 = sext i32 %62 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %61, i64 %idxprom53
  %63 = load i32, ptr %arrayidx54, align 4, !tbaa !8
  store i32 %63, ptr %choice, align 4, !tbaa !8
  %64 = load ptr, ptr %G_data, align 8, !tbaa !4
  %65 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom55 = sext i32 %65 to i64
  %arrayidx56 = getelementptr inbounds double, ptr %64, i64 %idxprom55
  %66 = load double, ptr %arrayidx56, align 8, !tbaa !21
  store double %66, ptr %max, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %67 = load i32, ptr %j, align 4, !tbaa !8
  %68 = load ptr, ptr %G_i, align 8, !tbaa !4
  %69 = load i32, ptr %i, align 4, !tbaa !8
  %add57 = add nsw i32 %69, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %68, i64 %idxprom58
  %70 = load i32, ptr %arrayidx59, align 4, !tbaa !8
  %sub = sub nsw i32 %70, 1
  %cmp60 = icmp eq i32 %67, %sub
  br i1 %cmp60, label %if.then72, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end
  %71 = load ptr, ptr %processor, align 8, !tbaa !4
  %72 = load ptr, ptr %G_j, align 8, !tbaa !4
  %73 = load i32, ptr %j, align 4, !tbaa !8
  %add63 = add nsw i32 %73, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %72, i64 %idxprom64
  %74 = load i32, ptr %arrayidx65, align 4, !tbaa !8
  %idxprom66 = sext i32 %74 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %71, i64 %idxprom66
  %75 = load i32, ptr %arrayidx67, align 4, !tbaa !8
  %76 = load ptr, ptr %processor, align 8, !tbaa !4
  %77 = load i32, ptr %choice, align 4, !tbaa !8
  %idxprom68 = sext i32 %77 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %76, i64 %idxprom68
  %78 = load i32, ptr %arrayidx69, align 4, !tbaa !8
  %cmp70 = icmp sgt i32 %75, %78
  br i1 %cmp70, label %if.then72, label %if.end80

if.then72:                                        ; preds = %lor.lhs.false62, %if.end
  %79 = load i32, ptr %choice, align 4, !tbaa !8
  %80 = load ptr, ptr %H_j, align 8, !tbaa !4
  %81 = load i32, ptr %jj, align 4, !tbaa !8
  %inc73 = add nsw i32 %81, 1
  store i32 %inc73, ptr %jj, align 4, !tbaa !8
  %idxprom74 = sext i32 %81 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %80, i64 %idxprom74
  store i32 %79, ptr %arrayidx75, align 4, !tbaa !8
  %82 = load ptr, ptr %H_i, align 8, !tbaa !4
  %83 = load i32, ptr %i, align 4, !tbaa !8
  %add76 = add nsw i32 %83, 1
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %82, i64 %idxprom77
  %84 = load i32, ptr %arrayidx78, align 4, !tbaa !8
  %inc79 = add nsw i32 %84, 1
  store i32 %inc79, ptr %arrayidx78, align 4, !tbaa !8
  store i32 -1, ptr %choice, align 4, !tbaa !8
  store double 0.000000e+00, ptr %max, align 8, !tbaa !21
  br label %if.end80

if.end80:                                         ; preds = %if.then72, %lor.lhs.false62
  br label %for.inc81

for.inc81:                                        ; preds = %if.end80
  %85 = load i32, ptr %j, align 4, !tbaa !8
  %inc82 = add nsw i32 %85, 1
  store i32 %inc82, ptr %j, align 4, !tbaa !8
  br label %for.cond40, !llvm.loop !95

for.end83:                                        ; preds = %for.cond40
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %86 = load i32, ptr %i, align 4, !tbaa !8
  %inc85 = add nsw i32 %86, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !8
  br label %for.cond29, !llvm.loop !96

for.end86:                                        ; preds = %for.cond29
  %87 = load ptr, ptr %H_i, align 8, !tbaa !4
  %88 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %idxprom87 = sext i32 %88 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %87, i64 %idxprom87
  %89 = load i32, ptr %arrayidx88, align 4, !tbaa !8
  store i32 %89, ptr %jH, align 4, !tbaa !8
  %90 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %91 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %92 = load i32, ptr %jH, align 4, !tbaa !8
  %call89 = call ptr @hypre_CSRMatrixCreate(i32 noundef %90, i32 noundef %91, i32 noundef %92)
  store ptr %call89, ptr %HT, align 8, !tbaa !4
  %93 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %add90 = add nsw i32 %93, 1
  %conv91 = sext i32 %add90 to i64
  %call92 = call ptr @hypre_CAlloc(i64 noundef %conv91, i64 noundef 4, i32 noundef 0)
  store ptr %call92, ptr %HT_i, align 8, !tbaa !4
  %94 = load i32, ptr %jH, align 4, !tbaa !8
  %conv93 = sext i32 %94 to i64
  %call94 = call ptr @hypre_CAlloc(i64 noundef %conv93, i64 noundef 4, i32 noundef 0)
  store ptr %call94, ptr %HT_j, align 8, !tbaa !4
  %95 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %96 = load ptr, ptr %HT, align 8, !tbaa !4
  %i95 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %96, i32 0, i32 0
  store ptr %95, ptr %i95, align 8, !tbaa !16
  %97 = load ptr, ptr %HT_j, align 8, !tbaa !4
  %98 = load ptr, ptr %HT, align 8, !tbaa !4
  %j96 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %98, i32 0, i32 1
  store ptr %97, ptr %j96, align 8, !tbaa !18
  %99 = load ptr, ptr %HT, align 8, !tbaa !4
  %memory_location97 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %99, i32 0, i32 12
  store i32 0, ptr %memory_location97, align 4, !tbaa !24
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc104, %for.end86
  %100 = load i32, ptr %i, align 4, !tbaa !8
  %101 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %cmp99 = icmp sle i32 %100, %101
  br i1 %cmp99, label %for.body101, label %for.end106

for.body101:                                      ; preds = %for.cond98
  %102 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %103 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom102 = sext i32 %103 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %102, i64 %idxprom102
  store i32 0, ptr %arrayidx103, align 4, !tbaa !8
  br label %for.inc104

for.inc104:                                       ; preds = %for.body101
  %104 = load i32, ptr %i, align 4, !tbaa !8
  %inc105 = add nsw i32 %104, 1
  store i32 %inc105, ptr %i, align 4, !tbaa !8
  br label %for.cond98, !llvm.loop !97

for.end106:                                       ; preds = %for.cond98
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc117, %for.end106
  %105 = load i32, ptr %i, align 4, !tbaa !8
  %106 = load i32, ptr %jH, align 4, !tbaa !8
  %cmp108 = icmp slt i32 %105, %106
  br i1 %cmp108, label %for.body110, label %for.end119

for.body110:                                      ; preds = %for.cond107
  %107 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %108 = load ptr, ptr %H_j, align 8, !tbaa !4
  %109 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom111 = sext i32 %109 to i64
  %arrayidx112 = getelementptr inbounds i32, ptr %108, i64 %idxprom111
  %110 = load i32, ptr %arrayidx112, align 4, !tbaa !8
  %add113 = add nsw i32 %110, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %107, i64 %idxprom114
  %111 = load i32, ptr %arrayidx115, align 4, !tbaa !8
  %inc116 = add nsw i32 %111, 1
  store i32 %inc116, ptr %arrayidx115, align 4, !tbaa !8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body110
  %112 = load i32, ptr %i, align 4, !tbaa !8
  %inc118 = add nsw i32 %112, 1
  store i32 %inc118, ptr %i, align 4, !tbaa !8
  br label %for.cond107, !llvm.loop !98

for.end119:                                       ; preds = %for.cond107
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc130, %for.end119
  %113 = load i32, ptr %i, align 4, !tbaa !8
  %114 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %cmp121 = icmp slt i32 %113, %114
  br i1 %cmp121, label %for.body123, label %for.end132

for.body123:                                      ; preds = %for.cond120
  %115 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %116 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom124 = sext i32 %116 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %115, i64 %idxprom124
  %117 = load i32, ptr %arrayidx125, align 4, !tbaa !8
  %118 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %119 = load i32, ptr %i, align 4, !tbaa !8
  %add126 = add nsw i32 %119, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %118, i64 %idxprom127
  %120 = load i32, ptr %arrayidx128, align 4, !tbaa !8
  %add129 = add nsw i32 %120, %117
  store i32 %add129, ptr %arrayidx128, align 4, !tbaa !8
  br label %for.inc130

for.inc130:                                       ; preds = %for.body123
  %121 = load i32, ptr %i, align 4, !tbaa !8
  %inc131 = add nsw i32 %121, 1
  store i32 %inc131, ptr %i, align 4, !tbaa !8
  br label %for.cond120, !llvm.loop !99

for.end132:                                       ; preds = %for.cond120
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc158, %for.end132
  %122 = load i32, ptr %i, align 4, !tbaa !8
  %123 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %cmp134 = icmp slt i32 %122, %123
  br i1 %cmp134, label %for.body136, label %for.end160

for.body136:                                      ; preds = %for.cond133
  %124 = load ptr, ptr %H_i, align 8, !tbaa !4
  %125 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom137 = sext i32 %125 to i64
  %arrayidx138 = getelementptr inbounds i32, ptr %124, i64 %idxprom137
  %126 = load i32, ptr %arrayidx138, align 4, !tbaa !8
  store i32 %126, ptr %j, align 4, !tbaa !8
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc155, %for.body136
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %128 = load ptr, ptr %H_i, align 8, !tbaa !4
  %129 = load i32, ptr %i, align 4, !tbaa !8
  %add140 = add nsw i32 %129, 1
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %128, i64 %idxprom141
  %130 = load i32, ptr %arrayidx142, align 4, !tbaa !8
  %cmp143 = icmp slt i32 %127, %130
  br i1 %cmp143, label %for.body145, label %for.end157

for.body145:                                      ; preds = %for.cond139
  call void @llvm.lifetime.start.p0(i64 4, ptr %myindex) #4
  %131 = load ptr, ptr %H_j, align 8, !tbaa !4
  %132 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom146 = sext i32 %132 to i64
  %arrayidx147 = getelementptr inbounds i32, ptr %131, i64 %idxprom146
  %133 = load i32, ptr %arrayidx147, align 4, !tbaa !8
  store i32 %133, ptr %myindex, align 4, !tbaa !8
  %134 = load i32, ptr %i, align 4, !tbaa !8
  %135 = load ptr, ptr %HT_j, align 8, !tbaa !4
  %136 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %137 = load i32, ptr %myindex, align 4, !tbaa !8
  %idxprom148 = sext i32 %137 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %136, i64 %idxprom148
  %138 = load i32, ptr %arrayidx149, align 4, !tbaa !8
  %idxprom150 = sext i32 %138 to i64
  %arrayidx151 = getelementptr inbounds i32, ptr %135, i64 %idxprom150
  store i32 %134, ptr %arrayidx151, align 4, !tbaa !8
  %139 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %140 = load i32, ptr %myindex, align 4, !tbaa !8
  %idxprom152 = sext i32 %140 to i64
  %arrayidx153 = getelementptr inbounds i32, ptr %139, i64 %idxprom152
  %141 = load i32, ptr %arrayidx153, align 4, !tbaa !8
  %inc154 = add nsw i32 %141, 1
  store i32 %inc154, ptr %arrayidx153, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %myindex) #4
  br label %for.inc155

for.inc155:                                       ; preds = %for.body145
  %142 = load i32, ptr %j, align 4, !tbaa !8
  %inc156 = add nsw i32 %142, 1
  store i32 %inc156, ptr %j, align 4, !tbaa !8
  br label %for.cond139, !llvm.loop !100

for.end157:                                       ; preds = %for.cond139
  br label %for.inc158

for.inc158:                                       ; preds = %for.end157
  %143 = load i32, ptr %i, align 4, !tbaa !8
  %inc159 = add nsw i32 %143, 1
  store i32 %inc159, ptr %i, align 4, !tbaa !8
  br label %for.cond133, !llvm.loop !101

for.end160:                                       ; preds = %for.cond133
  %144 = load i32, ptr %num_vertices, align 4, !tbaa !8
  store i32 %144, ptr %i, align 4, !tbaa !8
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc170, %for.end160
  %145 = load i32, ptr %i, align 4, !tbaa !8
  %cmp162 = icmp sgt i32 %145, 0
  br i1 %cmp162, label %for.body164, label %for.end171

for.body164:                                      ; preds = %for.cond161
  %146 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !8
  %sub165 = sub nsw i32 %147, 1
  %idxprom166 = sext i32 %sub165 to i64
  %arrayidx167 = getelementptr inbounds i32, ptr %146, i64 %idxprom166
  %148 = load i32, ptr %arrayidx167, align 4, !tbaa !8
  %149 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %150 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom168 = sext i32 %150 to i64
  %arrayidx169 = getelementptr inbounds i32, ptr %149, i64 %idxprom168
  store i32 %148, ptr %arrayidx169, align 4, !tbaa !8
  br label %for.inc170

for.inc170:                                       ; preds = %for.body164
  %151 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %151, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond161, !llvm.loop !102

for.end171:                                       ; preds = %for.cond161
  %152 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %arrayidx172 = getelementptr inbounds i32, ptr %152, i64 0
  store i32 0, ptr %arrayidx172, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc194, %for.end171
  %153 = load i32, ptr %i, align 4, !tbaa !8
  %154 = load i32, ptr %num_vertices, align 4, !tbaa !8
  %cmp174 = icmp slt i32 %153, %154
  br i1 %cmp174, label %for.body176, label %for.end196

for.body176:                                      ; preds = %for.cond173
  %155 = load ptr, ptr %H_i, align 8, !tbaa !4
  %156 = load i32, ptr %i, align 4, !tbaa !8
  %add177 = add nsw i32 %156, 1
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %155, i64 %idxprom178
  %157 = load i32, ptr %arrayidx179, align 4, !tbaa !8
  %158 = load ptr, ptr %H_i, align 8, !tbaa !4
  %159 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom180 = sext i32 %159 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %158, i64 %idxprom180
  %160 = load i32, ptr %arrayidx181, align 4, !tbaa !8
  %sub182 = sub nsw i32 %157, %160
  %161 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %162 = load i32, ptr %i, align 4, !tbaa !8
  %add183 = add nsw i32 %162, 1
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %161, i64 %idxprom184
  %163 = load i32, ptr %arrayidx185, align 4, !tbaa !8
  %add186 = add nsw i32 %sub182, %163
  %164 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %165 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom187 = sext i32 %165 to i64
  %arrayidx188 = getelementptr inbounds i32, ptr %164, i64 %idxprom187
  %166 = load i32, ptr %arrayidx188, align 4, !tbaa !8
  %sub189 = sub nsw i32 %add186, %166
  %167 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %168 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom190 = sext i32 %168 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %167, i64 %idxprom190
  store i32 %sub189, ptr %arrayidx191, align 4, !tbaa !8
  %169 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %170 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom192 = sext i32 %170 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %169, i64 %idxprom192
  %171 = load i32, ptr %arrayidx193, align 4, !tbaa !8
  %172 = load i32, ptr %i, align 4, !tbaa !8
  %173 = load ptr, ptr %lists, align 8, !tbaa !4
  %174 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %171, i32 noundef %172, ptr noundef %173, ptr noundef %174)
  br label %for.inc194

for.inc194:                                       ; preds = %for.body176
  %175 = load i32, ptr %i, align 4, !tbaa !8
  %inc195 = add nsw i32 %175, 1
  store i32 %inc195, ptr %i, align 4, !tbaa !8
  br label %for.cond173, !llvm.loop !103

for.end196:                                       ; preds = %for.cond173
  br label %while.cond197

while.cond197:                                    ; preds = %for.end280, %for.end196
  %176 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %tobool = icmp ne ptr %176, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond197
  %177 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %178 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.double_linked_list, ptr %178, i32 0, i32 3
  %179 = load i32, ptr %head, align 8, !tbaa !40
  %idxprom198 = sext i32 %179 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %177, i64 %idxprom198
  %180 = load i32, ptr %arrayidx199, align 4, !tbaa !8
  %tobool200 = icmp ne i32 %180, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond197
  %181 = phi i1 [ false, %while.cond197 ], [ %tobool200, %land.rhs ]
  br i1 %181, label %while.body201, label %while.end281

while.body201:                                    ; preds = %land.end
  %182 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %head202 = getelementptr inbounds %struct.double_linked_list, ptr %182, i32 0, i32 3
  %183 = load i32, ptr %head202, align 8, !tbaa !40
  store i32 %183, ptr %choice, align 4, !tbaa !8
  %184 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %185 = load i32, ptr %choice, align 4, !tbaa !8
  %idxprom203 = sext i32 %185 to i64
  %arrayidx204 = getelementptr inbounds i32, ptr %184, i64 %idxprom203
  %186 = load i32, ptr %arrayidx204, align 4, !tbaa !8
  store i32 %186, ptr %measure, align 4, !tbaa !8
  %187 = load i32, ptr %choice, align 4, !tbaa !8
  %add205 = add nsw i32 %187, 1
  %188 = load ptr, ptr %coarse.addr, align 8, !tbaa !4
  %189 = load ptr, ptr %188, align 8, !tbaa !4
  %190 = load ptr, ptr %processor, align 8, !tbaa !4
  %191 = load i32, ptr %choice, align 4, !tbaa !8
  %idxprom206 = sext i32 %191 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %190, i64 %idxprom206
  %192 = load i32, ptr %arrayidx207, align 4, !tbaa !8
  %idxprom208 = sext i32 %192 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %189, i64 %idxprom208
  store i32 %add205, ptr %arrayidx209, align 4, !tbaa !8
  %193 = load i32, ptr %measure, align 4, !tbaa !8
  %add210 = add nsw i32 %193, 1
  store i32 %add210, ptr %new_measure, align 4, !tbaa !8
  %194 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %195 = load ptr, ptr %processor, align 8, !tbaa !4
  %196 = load i32, ptr %choice, align 4, !tbaa !8
  %idxprom211 = sext i32 %196 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %195, i64 %idxprom211
  %197 = load i32, ptr %arrayidx212, align 4, !tbaa !8
  %idxprom213 = sext i32 %197 to i64
  %arrayidx214 = getelementptr inbounds i32, ptr %194, i64 %idxprom213
  %198 = load i32, ptr %arrayidx214, align 4, !tbaa !8
  store i32 %198, ptr %i, align 4, !tbaa !8
  br label %for.cond215

for.cond215:                                      ; preds = %for.inc228, %while.body201
  %199 = load i32, ptr %i, align 4, !tbaa !8
  %200 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %201 = load ptr, ptr %processor, align 8, !tbaa !4
  %202 = load i32, ptr %choice, align 4, !tbaa !8
  %idxprom216 = sext i32 %202 to i64
  %arrayidx217 = getelementptr inbounds i32, ptr %201, i64 %idxprom216
  %203 = load i32, ptr %arrayidx217, align 4, !tbaa !8
  %add218 = add nsw i32 %203, 1
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds i32, ptr %200, i64 %idxprom219
  %204 = load i32, ptr %arrayidx220, align 4, !tbaa !8
  %cmp221 = icmp slt i32 %199, %204
  br i1 %cmp221, label %for.body223, label %for.end230

for.body223:                                      ; preds = %for.cond215
  %205 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %206 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom224 = sext i32 %206 to i64
  %arrayidx225 = getelementptr inbounds i32, ptr %205, i64 %idxprom224
  %207 = load i32, ptr %arrayidx225, align 4, !tbaa !8
  store i32 %207, ptr %measure, align 4, !tbaa !8
  %208 = load i32, ptr %measure, align 4, !tbaa !8
  %209 = load i32, ptr %i, align 4, !tbaa !8
  %210 = load ptr, ptr %lists, align 8, !tbaa !4
  %211 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %208, i32 noundef %209, ptr noundef %210, ptr noundef %211)
  %212 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %213 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom226 = sext i32 %213 to i64
  %arrayidx227 = getelementptr inbounds i32, ptr %212, i64 %idxprom226
  store i32 0, ptr %arrayidx227, align 4, !tbaa !8
  br label %for.inc228

for.inc228:                                       ; preds = %for.body223
  %214 = load i32, ptr %i, align 4, !tbaa !8
  %inc229 = add nsw i32 %214, 1
  store i32 %inc229, ptr %i, align 4, !tbaa !8
  br label %for.cond215, !llvm.loop !104

for.end230:                                       ; preds = %for.cond215
  %215 = load ptr, ptr %H_i, align 8, !tbaa !4
  %216 = load i32, ptr %choice, align 4, !tbaa !8
  %idxprom231 = sext i32 %216 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %215, i64 %idxprom231
  %217 = load i32, ptr %arrayidx232, align 4, !tbaa !8
  store i32 %217, ptr %j, align 4, !tbaa !8
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc253, %for.end230
  %218 = load i32, ptr %j, align 4, !tbaa !8
  %219 = load ptr, ptr %H_i, align 8, !tbaa !4
  %220 = load i32, ptr %choice, align 4, !tbaa !8
  %add234 = add nsw i32 %220, 1
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %219, i64 %idxprom235
  %221 = load i32, ptr %arrayidx236, align 4, !tbaa !8
  %cmp237 = icmp slt i32 %218, %221
  br i1 %cmp237, label %for.body239, label %for.end255

for.body239:                                      ; preds = %for.cond233
  %222 = load ptr, ptr %H_j, align 8, !tbaa !4
  %223 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom240 = sext i32 %223 to i64
  %arrayidx241 = getelementptr inbounds i32, ptr %222, i64 %idxprom240
  %224 = load i32, ptr %arrayidx241, align 4, !tbaa !8
  store i32 %224, ptr %jj, align 4, !tbaa !8
  %225 = load ptr, ptr %coarse.addr, align 8, !tbaa !4
  %226 = load ptr, ptr %225, align 8, !tbaa !4
  %227 = load ptr, ptr %processor, align 8, !tbaa !4
  %228 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom242 = sext i32 %228 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %227, i64 %idxprom242
  %229 = load i32, ptr %arrayidx243, align 4, !tbaa !8
  %idxprom244 = sext i32 %229 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %226, i64 %idxprom244
  %230 = load i32, ptr %arrayidx245, align 4, !tbaa !8
  %tobool246 = icmp ne i32 %230, 0
  br i1 %tobool246, label %if.end252, label %if.then247

if.then247:                                       ; preds = %for.body239
  %231 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %232 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom248 = sext i32 %232 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %231, i64 %idxprom248
  %233 = load i32, ptr %arrayidx249, align 4, !tbaa !8
  store i32 %233, ptr %measure, align 4, !tbaa !8
  %234 = load i32, ptr %measure, align 4, !tbaa !8
  %235 = load i32, ptr %jj, align 4, !tbaa !8
  %236 = load ptr, ptr %lists, align 8, !tbaa !4
  %237 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %234, i32 noundef %235, ptr noundef %236, ptr noundef %237)
  %238 = load i32, ptr %new_measure, align 4, !tbaa !8
  %239 = load i32, ptr %jj, align 4, !tbaa !8
  %240 = load ptr, ptr %lists, align 8, !tbaa !4
  %241 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %238, i32 noundef %239, ptr noundef %240, ptr noundef %241)
  %242 = load i32, ptr %new_measure, align 4, !tbaa !8
  %243 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %244 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom250 = sext i32 %244 to i64
  %arrayidx251 = getelementptr inbounds i32, ptr %243, i64 %idxprom250
  store i32 %242, ptr %arrayidx251, align 4, !tbaa !8
  br label %if.end252

if.end252:                                        ; preds = %if.then247, %for.body239
  br label %for.inc253

for.inc253:                                       ; preds = %if.end252
  %245 = load i32, ptr %j, align 4, !tbaa !8
  %inc254 = add nsw i32 %245, 1
  store i32 %inc254, ptr %j, align 4, !tbaa !8
  br label %for.cond233, !llvm.loop !105

for.end255:                                       ; preds = %for.cond233
  %246 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %247 = load i32, ptr %choice, align 4, !tbaa !8
  %idxprom256 = sext i32 %247 to i64
  %arrayidx257 = getelementptr inbounds i32, ptr %246, i64 %idxprom256
  %248 = load i32, ptr %arrayidx257, align 4, !tbaa !8
  store i32 %248, ptr %j, align 4, !tbaa !8
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc278, %for.end255
  %249 = load i32, ptr %j, align 4, !tbaa !8
  %250 = load ptr, ptr %HT_i, align 8, !tbaa !4
  %251 = load i32, ptr %choice, align 4, !tbaa !8
  %add259 = add nsw i32 %251, 1
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds i32, ptr %250, i64 %idxprom260
  %252 = load i32, ptr %arrayidx261, align 4, !tbaa !8
  %cmp262 = icmp slt i32 %249, %252
  br i1 %cmp262, label %for.body264, label %for.end280

for.body264:                                      ; preds = %for.cond258
  %253 = load ptr, ptr %HT_j, align 8, !tbaa !4
  %254 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom265 = sext i32 %254 to i64
  %arrayidx266 = getelementptr inbounds i32, ptr %253, i64 %idxprom265
  %255 = load i32, ptr %arrayidx266, align 4, !tbaa !8
  store i32 %255, ptr %jj, align 4, !tbaa !8
  %256 = load ptr, ptr %coarse.addr, align 8, !tbaa !4
  %257 = load ptr, ptr %256, align 8, !tbaa !4
  %258 = load ptr, ptr %processor, align 8, !tbaa !4
  %259 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom267 = sext i32 %259 to i64
  %arrayidx268 = getelementptr inbounds i32, ptr %258, i64 %idxprom267
  %260 = load i32, ptr %arrayidx268, align 4, !tbaa !8
  %idxprom269 = sext i32 %260 to i64
  %arrayidx270 = getelementptr inbounds i32, ptr %257, i64 %idxprom269
  %261 = load i32, ptr %arrayidx270, align 4, !tbaa !8
  %tobool271 = icmp ne i32 %261, 0
  br i1 %tobool271, label %if.end277, label %if.then272

if.then272:                                       ; preds = %for.body264
  %262 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %263 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom273 = sext i32 %263 to i64
  %arrayidx274 = getelementptr inbounds i32, ptr %262, i64 %idxprom273
  %264 = load i32, ptr %arrayidx274, align 4, !tbaa !8
  store i32 %264, ptr %measure, align 4, !tbaa !8
  %265 = load i32, ptr %measure, align 4, !tbaa !8
  %266 = load i32, ptr %jj, align 4, !tbaa !8
  %267 = load ptr, ptr %lists, align 8, !tbaa !4
  %268 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %265, i32 noundef %266, ptr noundef %267, ptr noundef %268)
  %269 = load i32, ptr %new_measure, align 4, !tbaa !8
  %270 = load i32, ptr %jj, align 4, !tbaa !8
  %271 = load ptr, ptr %lists, align 8, !tbaa !4
  %272 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_enter_on_lists(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %269, i32 noundef %270, ptr noundef %271, ptr noundef %272)
  %273 = load i32, ptr %new_measure, align 4, !tbaa !8
  %274 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %275 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom275 = sext i32 %275 to i64
  %arrayidx276 = getelementptr inbounds i32, ptr %274, i64 %idxprom275
  store i32 %273, ptr %arrayidx276, align 4, !tbaa !8
  br label %if.end277

if.end277:                                        ; preds = %if.then272, %for.body264
  br label %for.inc278

for.inc278:                                       ; preds = %if.end277
  %276 = load i32, ptr %j, align 4, !tbaa !8
  %inc279 = add nsw i32 %276, 1
  store i32 %inc279, ptr %j, align 4, !tbaa !8
  br label %for.cond258, !llvm.loop !106

for.end280:                                       ; preds = %for.cond258
  br label %while.cond197, !llvm.loop !107

while.end281:                                     ; preds = %land.end
  br label %while.cond282

while.cond282:                                    ; preds = %while.body284, %while.end281
  %277 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %tobool283 = icmp ne ptr %277, null
  br i1 %tobool283, label %while.body284, label %while.end288

while.body284:                                    ; preds = %while.cond282
  %278 = load ptr, ptr %LoL_head, align 8, !tbaa !4
  %head285 = getelementptr inbounds %struct.double_linked_list, ptr %278, i32 0, i32 3
  %279 = load i32, ptr %head285, align 8, !tbaa !40
  store i32 %279, ptr %i, align 4, !tbaa !8
  %280 = load ptr, ptr %measure_array, align 8, !tbaa !4
  %281 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom286 = sext i32 %281 to i64
  %arrayidx287 = getelementptr inbounds i32, ptr %280, i64 %idxprom286
  %282 = load i32, ptr %arrayidx287, align 4, !tbaa !8
  store i32 %282, ptr %measure, align 4, !tbaa !8
  %283 = load i32, ptr %measure, align 4, !tbaa !8
  %284 = load i32, ptr %i, align 4, !tbaa !8
  %285 = load ptr, ptr %lists, align 8, !tbaa !4
  %286 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_remove_point(ptr noundef %LoL_head, ptr noundef %LoL_tail, i32 noundef %283, i32 noundef %284, ptr noundef %285, ptr noundef %286)
  br label %while.cond282, !llvm.loop !108

while.end288:                                     ; preds = %while.cond282
  store i32 0, ptr %p, align 4, !tbaa !8
  br label %for.cond289

for.cond289:                                      ; preds = %for.inc303, %while.end288
  %287 = load i32, ptr %p, align 4, !tbaa !8
  %288 = load i32, ptr %mpisize.addr, align 4, !tbaa !8
  %cmp290 = icmp slt i32 %287, %288
  br i1 %cmp290, label %for.body292, label %for.end305

for.body292:                                      ; preds = %for.cond289
  %289 = load ptr, ptr %coarse.addr, align 8, !tbaa !4
  %290 = load ptr, ptr %289, align 8, !tbaa !4
  %291 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom293 = sext i32 %291 to i64
  %arrayidx294 = getelementptr inbounds i32, ptr %290, i64 %idxprom293
  %292 = load i32, ptr %arrayidx294, align 4, !tbaa !8
  %tobool295 = icmp ne i32 %292, 0
  br i1 %tobool295, label %if.end302, label %if.then296

if.then296:                                       ; preds = %for.body292
  %293 = load ptr, ptr %vertexrange.addr, align 8, !tbaa !4
  %294 = load i32, ptr %p, align 4, !tbaa !8
  %add297 = add nsw i32 %294, 1
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds i32, ptr %293, i64 %idxprom298
  %295 = load i32, ptr %arrayidx299, align 4, !tbaa !8
  %296 = load ptr, ptr %coarse.addr, align 8, !tbaa !4
  %297 = load ptr, ptr %296, align 8, !tbaa !4
  %298 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom300 = sext i32 %298 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %297, i64 %idxprom300
  store i32 %295, ptr %arrayidx301, align 4, !tbaa !8
  br label %if.end302

if.end302:                                        ; preds = %if.then296, %for.body292
  br label %for.inc303

for.inc303:                                       ; preds = %if.end302
  %299 = load i32, ptr %p, align 4, !tbaa !8
  %inc304 = add nsw i32 %299, 1
  store i32 %inc304, ptr %p, align 4, !tbaa !8
  br label %for.cond289, !llvm.loop !109

for.end305:                                       ; preds = %for.cond289
  %300 = load ptr, ptr %H, align 8, !tbaa !4
  %call306 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %300)
  %301 = load ptr, ptr %HT, align 8, !tbaa !4
  %call307 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %301)
  %302 = load ptr, ptr %processor, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %302, i32 noundef 0)
  store ptr null, ptr %processor, align 8, !tbaa !4
  %303 = load ptr, ptr %measure_array, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %303, i32 noundef 0)
  store ptr null, ptr %measure_array, align 8, !tbaa !4
  %304 = load ptr, ptr %lists, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %304, i32 noundef 0)
  store ptr null, ptr %lists, align 8, !tbaa !4
  %305 = load ptr, ptr %where, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %305, i32 noundef 0)
  store ptr null, ptr %where, align 8, !tbaa !4
  %306 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %LoL_tail) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %LoL_head) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %where) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lists) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %measure_array) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_vertices) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jH) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jG) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %HT_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %HT_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %H_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %H_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %HT) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %H) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %G_j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %G_i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %G_data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_measure) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %measure) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %processor) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %choice) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 %306
}

declare i32 @HYPRE_IJMatrixDestroy(ptr noundef) #2

declare i32 @hypre_MPI_Scan(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_MAlloc(i64 noundef, i32 noundef) #2

declare i32 @hypre_MPI_Irecv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Isend(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_MPI_Waitall(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_IJMatrixCreate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @HYPRE_IJMatrixSetObjectType(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_IJMatrixSetDiagOffdSizes(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_IJMatrixInitialize(ptr noundef) #2

declare i32 @HYPRE_IJMatrixAddToValues(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_IJMatrixAssemble(ptr noundef) #2

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"hypre_ParCSRMatrix_struct", !5, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !12, i64 128, !5, i64 136, !5, i64 144, !9, i64 152, !5, i64 160, !9, i64 168, !5, i64 176, !9, i64 184, !5, i64 192, !5, i64 200}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !5, i64 96}
!14 = !{!11, !5, i64 32}
!15 = !{!11, !5, i64 40}
!16 = !{!17, !5, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !5, i64 40, !5, i64 48, !9, i64 56, !5, i64 64, !5, i64 72, !9, i64 80, !6, i64 84}
!18 = !{!17, !5, i64 8}
!19 = !{!17, !9, i64 24}
!20 = !{!17, !9, i64 28}
!21 = !{!12, !12, i64 0}
!22 = !{!23, !9, i64 8}
!23 = !{!"_hypre_ParCSRCommPkg", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !9, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!24 = !{!17, !6, i64 84}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = distinct !{!32, !26}
!33 = !{!17, !5, i64 16}
!34 = !{!11, !9, i64 20}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{!37, !26}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !26}
!40 = !{!41, !9, i64 24}
!41 = !{!"double_linked_list", !9, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !9, i64 28}
!42 = !{!41, !5, i64 8}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !26}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !26}
!56 = distinct !{!56, !26}
!57 = !{!23, !5, i64 24}
!58 = !{!23, !5, i64 32}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !26}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = !{!11, !5, i64 64}
!72 = !{!23, !9, i64 48}
!73 = !{!23, !5, i64 56}
!74 = !{!11, !5, i64 80}
!75 = !{!23, !5, i64 16}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = distinct !{!78, !26}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !26}
!81 = distinct !{!81, !26}
!82 = distinct !{!82, !26}
!83 = distinct !{!83, !26}
!84 = distinct !{!84, !26}
!85 = distinct !{!85, !26}
!86 = distinct !{!86, !26}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = distinct !{!89, !26}
!90 = distinct !{!90, !26}
!91 = distinct !{!91, !26}
!92 = !{!17, !5, i64 64}
!93 = distinct !{!93, !26}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = distinct !{!96, !26}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !26}
!100 = distinct !{!100, !26}
!101 = distinct !{!101, !26}
!102 = distinct !{!102, !26}
!103 = distinct !{!103, !26}
!104 = distinct !{!104, !26}
!105 = distinct !{!105, !26}
!106 = distinct !{!106, !26}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !26}
!109 = distinct !{!109, !26}

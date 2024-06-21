; ModuleID = 'samples/57.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_put_loadbal_param_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EX_mutex_struct = type { %union.pthread_mutex_t, %union.pthread_mutexattr_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.EX_errval = type { i32, [512 x i8], [512 x i8], i32 }

@vtkexodusII_EX_first_init_g = external global i32, align 4
@vtkexodusII_EX_g = external global %struct.EX_mutex_struct, align 8
@vtkexodusII_ex_errval = external global ptr, align 8
@__func__.vtkexodusII_ex_put_loadbal_param_cc = private unnamed_addr constant [36 x i8] c"vtkexodusII_ex_put_loadbal_param_cc\00", align 1
@.str = private unnamed_addr constant [52 x i8] c"ERROR: Unable to get processor info from file ID %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"num_procs_file\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"ERROR: failed to find dimension ID for \22%s\22 in file ID %d\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR: failed to put file id %d into define mode\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"ERROR: failed to put file ID %d into no-fill mode\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"nem_ftype\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"ERROR: failed to define file type in file ID %d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"int_n_stat\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"ERROR: failed to define variable \22%s\22 in file ID %d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"bor_n_stat\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ext_n_stat\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"int_e_stat\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"bor_e_stat\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"ERROR: Failed to define variable \22%s\22 in file ID %d\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"ERROR: failed to find variable ID for \22%s\22 in file ID %d\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"num_int_elem\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"ERROR: failed to dimension \22%s\22 in file id %d\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"elem_mapi\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"elem_mapi_idx\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"num_bor_elem\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"elem_mapb\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"elem_mapb_idx\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"num_int_node\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"node_mapi\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"node_mapi_idx\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"num_bor_node\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"node_mapb\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"node_mapb_idx\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"num_ext_node\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"node_mape\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"node_mape_idx\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"num_n_cmaps\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"ERROR: failed to add dimension \22%s\22 in file ID %d\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"n_comm_ids\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"n_comm_stat\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"n_comm_info_idx\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"num_e_cmaps\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"e_comm_ids\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"e_comm_stat\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"e_comm_info_idx\00", align 1
@.str.40 = private unnamed_addr constant [58 x i8] c"ERROR: failed to output status int node map in file ID %d\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"ERROR: failed to output status bor node map in file ID %d\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"ERROR: failed to output status ext node map in file ID %d\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"ERROR: failed to output status int elem map in file ID %d\00", align 1
@.str.44 = private unnamed_addr constant [58 x i8] c"ERROR: failed to output status bor elem map in file ID %d\00", align 1
@.str.45 = private unnamed_addr constant [65 x i8] c"ERROR: failed to output internal element map index in file ID %d\00", align 1
@.str.46 = private unnamed_addr constant [63 x i8] c"ERROR: failed to output border element map index in file ID %d\00", align 1
@.str.47 = private unnamed_addr constant [62 x i8] c"ERROR: failed to output internal node map index in file ID %d\00", align 1
@.str.48 = private unnamed_addr constant [60 x i8] c"ERROR: failed to output border node map index in file ID %d\00", align 1
@.str.49 = private unnamed_addr constant [62 x i8] c"ERROR: failed to output external node map index in file ID %d\00", align 1
@.str.50 = private unnamed_addr constant [67 x i8] c"ERROR: failed to output node communication map index in file ID %d\00", align 1
@.str.51 = private unnamed_addr constant [67 x i8] c"ERROR: failed to output elem communication map index in file ID %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_put_loadbal_param_cc(i32 noundef %exoid, ptr noundef %num_int_nodes, ptr noundef %num_bor_nodes, ptr noundef %num_ext_nodes, ptr noundef %num_int_elems, ptr noundef %num_bor_elems, ptr noundef %num_node_cmaps, ptr noundef %num_elem_cmaps) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %num_int_nodes.addr = alloca ptr, align 8
  %num_bor_nodes.addr = alloca ptr, align 8
  %num_ext_nodes.addr = alloca ptr, align 8
  %num_int_elems.addr = alloca ptr, align 8
  %num_bor_elems.addr = alloca ptr, align 8
  %num_node_cmaps.addr = alloca ptr, align 8
  %num_elem_cmaps.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %iproc = alloca i32, align 4
  %varid = alloca i32, align 4
  %dimid_npf = alloca i32, align 4
  %dimid = alloca [3 x i32], align 4
  %num_proc = alloca i32, align 4
  %num_proc_in_f = alloca i32, align 4
  %varid_nm = alloca [3 x i32], align 4
  %varid_em = alloca [2 x i32], align 4
  %varid_idx = alloca [7 x i32], align 16
  %start = alloca [1 x i64], align 8
  %ftype = alloca [2 x i8], align 1
  %oldfill = alloca i32, align 4
  %num_int_elem = alloca i64, align 8
  %num_int_node = alloca i64, align 8
  %num_bor_elem = alloca i64, align 8
  %num_bor_node = alloca i64, align 8
  %num_ext_node = alloca i64, align 8
  %num_n_cmaps = alloca i64, align 8
  %num_e_cmaps = alloca i64, align 8
  %nmstat = alloca i32, align 4
  %errmsg = alloca [512 x i8], align 16
  %format = alloca i32, align 4
  %index_type = alloca i32, align 4
  %map_type = alloca i32, align 4
  %id_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nin = alloca i64, align 8
  %nbn = alloca i64, align 8
  %nen = alloca i64, align 8
  %nie = alloca i64, align 8
  %nbe = alloca i64, align 8
  %nnc = alloca i64, align 8
  %nec = alloca i64, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store ptr %num_int_nodes, ptr %num_int_nodes.addr, align 8, !tbaa !8
  store ptr %num_bor_nodes, ptr %num_bor_nodes.addr, align 8, !tbaa !8
  store ptr %num_ext_nodes, ptr %num_ext_nodes.addr, align 8, !tbaa !8
  store ptr %num_int_elems, ptr %num_int_elems.addr, align 8, !tbaa !8
  store ptr %num_bor_elems, ptr %num_bor_elems.addr, align 8, !tbaa !8
  store ptr %num_node_cmaps, ptr %num_node_cmaps.addr, align 8, !tbaa !8
  store ptr %num_elem_cmaps, ptr %num_elem_cmaps.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %iproc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dimid_npf) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr %dimid) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_proc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_proc_in_f) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr %varid_nm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %varid_em) #5
  call void @llvm.lifetime.start.p0(i64 28, ptr %varid_idx) #5
  call void @llvm.memset.p0.i64(ptr align 16 %varid_idx, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr %ftype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldfill) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_int_elem) #5
  store i64 0, ptr %num_int_elem, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_int_node) #5
  store i64 0, ptr %num_int_node, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_bor_elem) #5
  store i64 0, ptr %num_bor_elem, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_bor_node) #5
  store i64 0, ptr %num_bor_node, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_ext_node) #5
  store i64 0, ptr %num_ext_node, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_n_cmaps) #5
  store i64 0, ptr %num_n_cmaps, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_e_cmaps) #5
  store i64 0, ptr %num_e_cmaps, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmstat) #5
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %format) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %index_type) #5
  store i32 4, ptr %index_type, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %map_type) #5
  store i32 4, ptr %map_type, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %id_type) #5
  store i32 4, ptr %id_type, align 4, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @vtkexodusII_EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @vtkexodusII_EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @vtkexodusII_ex_errval, align 8, !tbaa !8
  %0 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !8
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !12
  %1 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !8
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call3 = call i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 86)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond6:                                         ; No predecessors!
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %3 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call8 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %3)
  %and = and i32 %call8, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 10, ptr %map_type, align 4, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %4 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call11 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %4)
  %and12 = and i32 %call11, 2048
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 10, ptr %id_type, align 4, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  %5 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call16 = call i32 @nc_inq_format(i32 noundef %5, ptr noundef %format)
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call17 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %6)
  %and18 = and i32 %call17, 4096
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %7 = load i32, ptr %format, align 4, !tbaa !4
  %cmp20 = icmp eq i32 %7, 3
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %if.end15
  store i32 10, ptr %index_type, align 4, !tbaa !4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %lor.lhs.false
  %8 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds [2 x i8], ptr %ftype, i64 0, i64 0
  %call23 = call i32 @vtkexodusII_ex_get_init_info(i32 noundef %8, ptr noundef %num_proc, ptr noundef %num_proc_in_f, ptr noundef %arraydecay)
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end22
  %arraydecay26 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %9 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call27 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay26, i64 noundef 512, ptr noundef @.str, i32 noundef %9) #5
  %10 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay28 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %10, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay28, i32 noundef -1000)
  br label %do.body29

do.body29:                                        ; preds = %if.then25
  %call30 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 107)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond31:                                        ; No predecessors!
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end22
  %11 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call34 = call i32 @nc_inq_dimid(i32 noundef %11, ptr noundef @.str.1, ptr noundef %dimid_npf)
  store i32 %call34, ptr %status, align 4, !tbaa !4
  %cmp35 = icmp ne i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end33
  %arraydecay37 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %12 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call38 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay37, i64 noundef 512, ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef %12) #5
  %13 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay39 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %14 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %13, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay39, i32 noundef %14)
  br label %do.body40

do.body40:                                        ; preds = %if.then36
  %call41 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 119)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond42:                                        ; No predecessors!
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.end33
  %15 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call45 = call i32 @nc_redef(i32 noundef %15)
  store i32 %call45, ptr %status, align 4, !tbaa !4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end44
  %arraydecay48 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %16 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call49 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay48, i64 noundef 512, ptr noundef @.str.3, i32 noundef %16) #5
  %17 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay50 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %18 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %17, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay50, i32 noundef %18)
  br label %do.body51

do.body51:                                        ; preds = %if.then47
  %call52 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 126)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond53:                                        ; No predecessors!
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %if.end44
  %19 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call56 = call i32 @nc_set_fill(i32 noundef %19, i32 noundef 256, ptr noundef %oldfill)
  store i32 %call56, ptr %status, align 4, !tbaa !4
  %cmp57 = icmp ne i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end66

if.then58:                                        ; preds = %if.end55
  %arraydecay59 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %20 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call60 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay59, i64 noundef 512, ptr noundef @.str.4, i32 noundef %20) #5
  %21 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay61 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %22 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %21, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay61, i32 noundef %22)
  br label %do.body62

do.body62:                                        ; preds = %if.then58
  %call63 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 133)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond64:                                        ; No predecessors!
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %if.end55
  %23 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call67 = call i32 @vtkexodusII_ex__put_nemesis_version(i32 noundef %23)
  store i32 %call67, ptr %status, align 4, !tbaa !4
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.end74

if.then69:                                        ; preds = %if.end66
  br label %do.body70

do.body70:                                        ; preds = %if.then69
  %call71 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 138)
  %24 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond72:                                        ; No predecessors!
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  br label %if.end74

if.end74:                                         ; preds = %do.end73, %if.end66
  %25 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call75 = call i32 @nc_inq_varid(i32 noundef %25, ptr noundef @.str.5, ptr noundef %varid)
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.end90

if.then77:                                        ; preds = %if.end74
  %26 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call78 = call i32 @nc_def_var(i32 noundef %26, ptr noundef @.str.5, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef %varid)
  store i32 %call78, ptr %status, align 4, !tbaa !4
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then80, label %if.end89

if.then80:                                        ; preds = %if.then77
  %arraydecay81 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %27 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call82 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay81, i64 noundef 512, ptr noundef @.str.6, i32 noundef %27) #5
  %28 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay83 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %29 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %28, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay83, i32 noundef %29)
  %30 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call84 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %30, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body85

do.body85:                                        ; preds = %if.then80
  %call86 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 150)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond87:                                        ; No predecessors!
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  br label %if.end89

if.end89:                                         ; preds = %do.end88, %if.then77
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end74
  %31 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call91 = call i32 @nc_inq_varid(i32 noundef %31, ptr noundef @.str.7, ptr noundef %varid)
  %cmp92 = icmp ne i32 %call91, 0
  br i1 %cmp92, label %if.then93, label %if.end106

if.then93:                                        ; preds = %if.end90
  %32 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call94 = call i32 @nc_def_var(i32 noundef %32, ptr noundef @.str.7, i32 noundef 4, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %varid)
  store i32 %call94, ptr %status, align 4, !tbaa !4
  %cmp95 = icmp ne i32 %call94, 0
  br i1 %cmp95, label %if.then96, label %if.end105

if.then96:                                        ; preds = %if.then93
  %arraydecay97 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %33 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call98 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay97, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.7, i32 noundef %33) #5
  %34 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay99 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %35 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %34, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay99, i32 noundef %35)
  %36 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call100 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %36, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body101

do.body101:                                       ; preds = %if.then96
  %call102 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 163)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond103:                                       ; No predecessors!
  br label %do.end104

do.end104:                                        ; preds = %do.cond103
  br label %if.end105

if.end105:                                        ; preds = %do.end104, %if.then93
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end90
  %37 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call107 = call i32 @nc_inq_varid(i32 noundef %37, ptr noundef @.str.9, ptr noundef %varid)
  %cmp108 = icmp ne i32 %call107, 0
  br i1 %cmp108, label %if.then109, label %if.end122

if.then109:                                       ; preds = %if.end106
  %38 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call110 = call i32 @nc_def_var(i32 noundef %38, ptr noundef @.str.9, i32 noundef 4, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %varid)
  store i32 %call110, ptr %status, align 4, !tbaa !4
  %cmp111 = icmp ne i32 %call110, 0
  br i1 %cmp111, label %if.then112, label %if.end121

if.then112:                                       ; preds = %if.then109
  %arraydecay113 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %39 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call114 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay113, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef %39) #5
  %40 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay115 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %41 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %40, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay115, i32 noundef %41)
  %42 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call116 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %42, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body117

do.body117:                                       ; preds = %if.then112
  %call118 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 176)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond119:                                       ; No predecessors!
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  br label %if.end121

if.end121:                                        ; preds = %do.end120, %if.then109
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end106
  %43 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call123 = call i32 @nc_inq_varid(i32 noundef %43, ptr noundef @.str.10, ptr noundef %varid)
  %cmp124 = icmp ne i32 %call123, 0
  br i1 %cmp124, label %if.then125, label %if.end138

if.then125:                                       ; preds = %if.end122
  %44 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call126 = call i32 @nc_def_var(i32 noundef %44, ptr noundef @.str.10, i32 noundef 4, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %varid)
  store i32 %call126, ptr %status, align 4, !tbaa !4
  %cmp127 = icmp ne i32 %call126, 0
  br i1 %cmp127, label %if.then128, label %if.end137

if.then128:                                       ; preds = %if.then125
  %arraydecay129 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %45 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call130 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay129, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.10, i32 noundef %45) #5
  %46 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay131 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %47 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %46, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay131, i32 noundef %47)
  %48 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call132 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %48, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body133

do.body133:                                       ; preds = %if.then128
  %call134 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 188)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond135:                                       ; No predecessors!
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  br label %if.end137

if.end137:                                        ; preds = %do.end136, %if.then125
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end122
  %49 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call139 = call i32 @nc_inq_varid(i32 noundef %49, ptr noundef @.str.11, ptr noundef %varid)
  %cmp140 = icmp ne i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.end154

if.then141:                                       ; preds = %if.end138
  %50 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call142 = call i32 @nc_def_var(i32 noundef %50, ptr noundef @.str.11, i32 noundef 4, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %varid)
  store i32 %call142, ptr %status, align 4, !tbaa !4
  %cmp143 = icmp ne i32 %call142, 0
  br i1 %cmp143, label %if.then144, label %if.end153

if.then144:                                       ; preds = %if.then141
  %arraydecay145 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %51 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call146 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay145, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.11, i32 noundef %51) #5
  %52 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay147 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %53 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %52, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay147, i32 noundef %53)
  %54 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call148 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %54, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body149

do.body149:                                       ; preds = %if.then144
  %call150 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 201)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond151:                                       ; No predecessors!
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  br label %if.end153

if.end153:                                        ; preds = %do.end152, %if.then141
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.end138
  %55 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call155 = call i32 @nc_inq_varid(i32 noundef %55, ptr noundef @.str.12, ptr noundef %varid)
  %cmp156 = icmp ne i32 %call155, 0
  br i1 %cmp156, label %if.then157, label %if.end169

if.then157:                                       ; preds = %if.end154
  %56 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call158 = call i32 @nc_def_var(i32 noundef %56, ptr noundef @.str.12, i32 noundef 4, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %varid)
  store i32 %call158, ptr %status, align 4, !tbaa !4
  %cmp159 = icmp ne i32 %call158, 0
  br i1 %cmp159, label %if.then160, label %if.end168

if.then160:                                       ; preds = %if.then157
  %arraydecay161 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %57 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call162 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay161, i64 noundef 512, ptr noundef @.str.13, ptr noundef @.str.12, i32 noundef %57) #5
  %58 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call163 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %58, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body164

do.body164:                                       ; preds = %if.then160
  %call165 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 212)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond166:                                       ; No predecessors!
  br label %do.end167

do.end167:                                        ; preds = %do.cond166
  br label %if.end168

if.end168:                                        ; preds = %do.end167, %if.then157
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.end154
  %59 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx = getelementptr inbounds [3 x i32], ptr %varid_nm, i64 0, i64 0
  %call170 = call i32 @nc_inq_varid(i32 noundef %59, ptr noundef @.str.7, ptr noundef %arrayidx)
  store i32 %call170, ptr %status, align 4, !tbaa !4
  %cmp171 = icmp ne i32 %call170, 0
  br i1 %cmp171, label %if.then172, label %if.end181

if.then172:                                       ; preds = %if.end169
  %arraydecay173 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %60 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call174 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay173, i64 noundef 512, ptr noundef @.str.14, ptr noundef @.str.7, i32 noundef %60) #5
  %61 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay175 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %62 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %61, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay175, i32 noundef %62)
  %63 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call176 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %63, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body177

do.body177:                                       ; preds = %if.then172
  %call178 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 224)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond179:                                       ; No predecessors!
  br label %do.end180

do.end180:                                        ; preds = %do.cond179
  br label %if.end181

if.end181:                                        ; preds = %do.end180, %if.end169
  %64 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx182 = getelementptr inbounds [3 x i32], ptr %varid_nm, i64 0, i64 1
  %call183 = call i32 @nc_inq_varid(i32 noundef %64, ptr noundef @.str.9, ptr noundef %arrayidx182)
  store i32 %call183, ptr %status, align 4, !tbaa !4
  %cmp184 = icmp ne i32 %call183, 0
  br i1 %cmp184, label %if.then185, label %if.end194

if.then185:                                       ; preds = %if.end181
  %arraydecay186 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %65 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call187 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay186, i64 noundef 512, ptr noundef @.str.14, ptr noundef @.str.9, i32 noundef %65) #5
  %66 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay188 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %67 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %66, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay188, i32 noundef %67)
  %68 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call189 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %68, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body190

do.body190:                                       ; preds = %if.then185
  %call191 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 234)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond192:                                       ; No predecessors!
  br label %do.end193

do.end193:                                        ; preds = %do.cond192
  br label %if.end194

if.end194:                                        ; preds = %do.end193, %if.end181
  %69 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx195 = getelementptr inbounds [3 x i32], ptr %varid_nm, i64 0, i64 2
  %call196 = call i32 @nc_inq_varid(i32 noundef %69, ptr noundef @.str.10, ptr noundef %arrayidx195)
  store i32 %call196, ptr %status, align 4, !tbaa !4
  %cmp197 = icmp ne i32 %call196, 0
  br i1 %cmp197, label %if.then198, label %if.end207

if.then198:                                       ; preds = %if.end194
  %arraydecay199 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %70 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call200 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay199, i64 noundef 512, ptr noundef @.str.14, ptr noundef @.str.10, i32 noundef %70) #5
  %71 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay201 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %72 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %71, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay201, i32 noundef %72)
  %73 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call202 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %73, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body203

do.body203:                                       ; preds = %if.then198
  %call204 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 244)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond205:                                       ; No predecessors!
  br label %do.end206

do.end206:                                        ; preds = %do.cond205
  br label %if.end207

if.end207:                                        ; preds = %do.end206, %if.end194
  %74 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx208 = getelementptr inbounds [2 x i32], ptr %varid_em, i64 0, i64 0
  %call209 = call i32 @nc_inq_varid(i32 noundef %74, ptr noundef @.str.11, ptr noundef %arrayidx208)
  store i32 %call209, ptr %status, align 4, !tbaa !4
  %cmp210 = icmp ne i32 %call209, 0
  br i1 %cmp210, label %if.then211, label %if.end220

if.then211:                                       ; preds = %if.end207
  %arraydecay212 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %75 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call213 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay212, i64 noundef 512, ptr noundef @.str.14, ptr noundef @.str.11, i32 noundef %75) #5
  %76 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay214 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %77 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %76, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay214, i32 noundef %77)
  %78 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call215 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %78, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body216

do.body216:                                       ; preds = %if.then211
  %call217 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 255)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond218:                                       ; No predecessors!
  br label %do.end219

do.end219:                                        ; preds = %do.cond218
  br label %if.end220

if.end220:                                        ; preds = %do.end219, %if.end207
  %79 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx221 = getelementptr inbounds [2 x i32], ptr %varid_em, i64 0, i64 1
  %call222 = call i32 @nc_inq_varid(i32 noundef %79, ptr noundef @.str.12, ptr noundef %arrayidx221)
  store i32 %call222, ptr %status, align 4, !tbaa !4
  %cmp223 = icmp ne i32 %call222, 0
  br i1 %cmp223, label %if.then224, label %if.end233

if.then224:                                       ; preds = %if.end220
  %arraydecay225 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %80 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call226 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay225, i64 noundef 512, ptr noundef @.str.14, ptr noundef @.str.12, i32 noundef %80) #5
  %81 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay227 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %82 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %81, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay227, i32 noundef %82)
  %83 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call228 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %83, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body229

do.body229:                                       ; preds = %if.then224
  %call230 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 265)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond231:                                       ; No predecessors!
  br label %do.end232

do.end232:                                        ; preds = %do.cond231
  br label %if.end233

if.end233:                                        ; preds = %do.end232, %if.end220
  %84 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call234 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %84)
  %and235 = and i32 %call234, 32768
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %if.then237, label %if.else

if.then237:                                       ; preds = %if.end233
  store i32 0, ptr %iproc, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then237
  %85 = load i32, ptr %iproc, align 4, !tbaa !4
  %86 = load i32, ptr %num_proc_in_f, align 4, !tbaa !4
  %cmp238 = icmp slt i32 %85, %86
  br i1 %cmp238, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load ptr, ptr %num_int_elems.addr, align 8, !tbaa !8
  %88 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom = sext i32 %88 to i64
  %arrayidx239 = getelementptr inbounds i64, ptr %87, i64 %idxprom
  %89 = load i64, ptr %arrayidx239, align 8, !tbaa !10
  %90 = load i64, ptr %num_int_elem, align 8, !tbaa !10
  %add = add nsw i64 %90, %89
  store i64 %add, ptr %num_int_elem, align 8, !tbaa !10
  %91 = load ptr, ptr %num_int_nodes.addr, align 8, !tbaa !8
  %92 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom240 = sext i32 %92 to i64
  %arrayidx241 = getelementptr inbounds i64, ptr %91, i64 %idxprom240
  %93 = load i64, ptr %arrayidx241, align 8, !tbaa !10
  %94 = load i64, ptr %num_int_node, align 8, !tbaa !10
  %add242 = add nsw i64 %94, %93
  store i64 %add242, ptr %num_int_node, align 8, !tbaa !10
  %95 = load ptr, ptr %num_bor_elems.addr, align 8, !tbaa !8
  %96 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom243 = sext i32 %96 to i64
  %arrayidx244 = getelementptr inbounds i64, ptr %95, i64 %idxprom243
  %97 = load i64, ptr %arrayidx244, align 8, !tbaa !10
  %98 = load i64, ptr %num_bor_elem, align 8, !tbaa !10
  %add245 = add nsw i64 %98, %97
  store i64 %add245, ptr %num_bor_elem, align 8, !tbaa !10
  %99 = load ptr, ptr %num_bor_nodes.addr, align 8, !tbaa !8
  %100 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom246 = sext i32 %100 to i64
  %arrayidx247 = getelementptr inbounds i64, ptr %99, i64 %idxprom246
  %101 = load i64, ptr %arrayidx247, align 8, !tbaa !10
  %102 = load i64, ptr %num_bor_node, align 8, !tbaa !10
  %add248 = add nsw i64 %102, %101
  store i64 %add248, ptr %num_bor_node, align 8, !tbaa !10
  %103 = load ptr, ptr %num_ext_nodes.addr, align 8, !tbaa !8
  %104 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom249 = sext i32 %104 to i64
  %arrayidx250 = getelementptr inbounds i64, ptr %103, i64 %idxprom249
  %105 = load i64, ptr %arrayidx250, align 8, !tbaa !10
  %106 = load i64, ptr %num_ext_node, align 8, !tbaa !10
  %add251 = add nsw i64 %106, %105
  store i64 %add251, ptr %num_ext_node, align 8, !tbaa !10
  %107 = load ptr, ptr %num_elem_cmaps.addr, align 8, !tbaa !8
  %108 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom252 = sext i32 %108 to i64
  %arrayidx253 = getelementptr inbounds i64, ptr %107, i64 %idxprom252
  %109 = load i64, ptr %arrayidx253, align 8, !tbaa !10
  %110 = load i64, ptr %num_e_cmaps, align 8, !tbaa !10
  %add254 = add nsw i64 %110, %109
  store i64 %add254, ptr %num_e_cmaps, align 8, !tbaa !10
  %111 = load ptr, ptr %num_node_cmaps.addr, align 8, !tbaa !8
  %112 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom255 = sext i32 %112 to i64
  %arrayidx256 = getelementptr inbounds i64, ptr %111, i64 %idxprom255
  %113 = load i64, ptr %arrayidx256, align 8, !tbaa !10
  %114 = load i64, ptr %num_n_cmaps, align 8, !tbaa !10
  %add257 = add nsw i64 %114, %113
  store i64 %add257, ptr %num_n_cmaps, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %115 = load i32, ptr %iproc, align 4, !tbaa !4
  %inc = add nsw i32 %115, 1
  store i32 %inc, ptr %iproc, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end291

if.else:                                          ; preds = %if.end233
  store i32 0, ptr %iproc, align 4, !tbaa !4
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc288, %if.else
  %116 = load i32, ptr %iproc, align 4, !tbaa !4
  %117 = load i32, ptr %num_proc_in_f, align 4, !tbaa !4
  %cmp259 = icmp slt i32 %116, %117
  br i1 %cmp259, label %for.body260, label %for.end290

for.body260:                                      ; preds = %for.cond258
  %118 = load ptr, ptr %num_int_elems.addr, align 8, !tbaa !8
  %119 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom261 = sext i32 %119 to i64
  %arrayidx262 = getelementptr inbounds i32, ptr %118, i64 %idxprom261
  %120 = load i32, ptr %arrayidx262, align 4, !tbaa !4
  %conv = sext i32 %120 to i64
  %121 = load i64, ptr %num_int_elem, align 8, !tbaa !10
  %add263 = add nsw i64 %121, %conv
  store i64 %add263, ptr %num_int_elem, align 8, !tbaa !10
  %122 = load ptr, ptr %num_int_nodes.addr, align 8, !tbaa !8
  %123 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom264 = sext i32 %123 to i64
  %arrayidx265 = getelementptr inbounds i32, ptr %122, i64 %idxprom264
  %124 = load i32, ptr %arrayidx265, align 4, !tbaa !4
  %conv266 = sext i32 %124 to i64
  %125 = load i64, ptr %num_int_node, align 8, !tbaa !10
  %add267 = add nsw i64 %125, %conv266
  store i64 %add267, ptr %num_int_node, align 8, !tbaa !10
  %126 = load ptr, ptr %num_bor_elems.addr, align 8, !tbaa !8
  %127 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom268 = sext i32 %127 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %126, i64 %idxprom268
  %128 = load i32, ptr %arrayidx269, align 4, !tbaa !4
  %conv270 = sext i32 %128 to i64
  %129 = load i64, ptr %num_bor_elem, align 8, !tbaa !10
  %add271 = add nsw i64 %129, %conv270
  store i64 %add271, ptr %num_bor_elem, align 8, !tbaa !10
  %130 = load ptr, ptr %num_bor_nodes.addr, align 8, !tbaa !8
  %131 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom272 = sext i32 %131 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %130, i64 %idxprom272
  %132 = load i32, ptr %arrayidx273, align 4, !tbaa !4
  %conv274 = sext i32 %132 to i64
  %133 = load i64, ptr %num_bor_node, align 8, !tbaa !10
  %add275 = add nsw i64 %133, %conv274
  store i64 %add275, ptr %num_bor_node, align 8, !tbaa !10
  %134 = load ptr, ptr %num_ext_nodes.addr, align 8, !tbaa !8
  %135 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom276 = sext i32 %135 to i64
  %arrayidx277 = getelementptr inbounds i32, ptr %134, i64 %idxprom276
  %136 = load i32, ptr %arrayidx277, align 4, !tbaa !4
  %conv278 = sext i32 %136 to i64
  %137 = load i64, ptr %num_ext_node, align 8, !tbaa !10
  %add279 = add nsw i64 %137, %conv278
  store i64 %add279, ptr %num_ext_node, align 8, !tbaa !10
  %138 = load ptr, ptr %num_elem_cmaps.addr, align 8, !tbaa !8
  %139 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom280 = sext i32 %139 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %138, i64 %idxprom280
  %140 = load i32, ptr %arrayidx281, align 4, !tbaa !4
  %conv282 = sext i32 %140 to i64
  %141 = load i64, ptr %num_e_cmaps, align 8, !tbaa !10
  %add283 = add nsw i64 %141, %conv282
  store i64 %add283, ptr %num_e_cmaps, align 8, !tbaa !10
  %142 = load ptr, ptr %num_node_cmaps.addr, align 8, !tbaa !8
  %143 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom284 = sext i32 %143 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %142, i64 %idxprom284
  %144 = load i32, ptr %arrayidx285, align 4, !tbaa !4
  %conv286 = sext i32 %144 to i64
  %145 = load i64, ptr %num_n_cmaps, align 8, !tbaa !10
  %add287 = add nsw i64 %145, %conv286
  store i64 %add287, ptr %num_n_cmaps, align 8, !tbaa !10
  br label %for.inc288

for.inc288:                                       ; preds = %for.body260
  %146 = load i32, ptr %iproc, align 4, !tbaa !4
  %inc289 = add nsw i32 %146, 1
  store i32 %inc289, ptr %iproc, align 4, !tbaa !4
  br label %for.cond258

for.end290:                                       ; preds = %for.cond258
  br label %if.end291

if.end291:                                        ; preds = %for.end290, %for.end
  %147 = load i64, ptr %num_int_elem, align 8, !tbaa !10
  %cmp292 = icmp sgt i64 %147, 0
  br i1 %cmp292, label %if.then294, label %if.end337

if.then294:                                       ; preds = %if.end291
  %148 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %149 = load i64, ptr %num_int_elem, align 8, !tbaa !10
  %arrayidx295 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call296 = call i32 @nc_def_dim(i32 noundef %148, ptr noundef @.str.15, i64 noundef %149, ptr noundef %arrayidx295)
  store i32 %call296, ptr %status, align 4, !tbaa !4
  %cmp297 = icmp ne i32 %call296, 0
  br i1 %cmp297, label %if.then299, label %if.end308

if.then299:                                       ; preds = %if.then294
  %arraydecay300 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %150 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call301 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay300, i64 noundef 512, ptr noundef @.str.16, ptr noundef @.str.15, i32 noundef %150) #5
  %151 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay302 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %152 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %151, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay302, i32 noundef %152)
  %153 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call303 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %153, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body304

do.body304:                                       ; preds = %if.then299
  %call305 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 305)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond306:                                       ; No predecessors!
  br label %do.end307

do.end307:                                        ; preds = %do.cond306
  br label %if.end308

if.end308:                                        ; preds = %do.end307, %if.then294
  %154 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %155 = load i32, ptr %map_type, align 4, !tbaa !4
  %arraydecay309 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call310 = call i32 @nc_def_var(i32 noundef %154, ptr noundef @.str.17, i32 noundef %155, i32 noundef 1, ptr noundef %arraydecay309, ptr noundef %varid)
  store i32 %call310, ptr %status, align 4, !tbaa !4
  %cmp311 = icmp ne i32 %call310, 0
  br i1 %cmp311, label %if.then313, label %if.end322

if.then313:                                       ; preds = %if.end308
  %arraydecay314 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %156 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call315 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay314, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.17, i32 noundef %156) #5
  %157 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay316 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %158 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %157, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay316, i32 noundef %158)
  %159 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call317 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %159, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body318

do.body318:                                       ; preds = %if.then313
  %call319 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 315)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond320:                                       ; No predecessors!
  br label %do.end321

do.end321:                                        ; preds = %do.cond320
  br label %if.end322

if.end322:                                        ; preds = %do.end321, %if.end308
  %160 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %161 = load i32, ptr %varid, align 4, !tbaa !4
  call void @vtkexodusII_ex__compress_variable(i32 noundef %160, i32 noundef %161, i32 noundef 1)
  %162 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %163 = load i32, ptr %index_type, align 4, !tbaa !4
  %arrayidx323 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 0
  %call324 = call i32 @nc_def_var(i32 noundef %162, ptr noundef @.str.18, i32 noundef %163, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %arrayidx323)
  store i32 %call324, ptr %status, align 4, !tbaa !4
  %cmp325 = icmp ne i32 %call324, 0
  br i1 %cmp325, label %if.then327, label %if.end336

if.then327:                                       ; preds = %if.end322
  %arraydecay328 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %164 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call329 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay328, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.18, i32 noundef %164) #5
  %165 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay330 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %166 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %165, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay330, i32 noundef %166)
  %167 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call331 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %167, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body332

do.body332:                                       ; preds = %if.then327
  %call333 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 328)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond334:                                       ; No predecessors!
  br label %do.end335

do.end335:                                        ; preds = %do.cond334
  br label %if.end336

if.end336:                                        ; preds = %do.end335, %if.end322
  br label %if.end337

if.end337:                                        ; preds = %if.end336, %if.end291
  %168 = load i64, ptr %num_bor_elem, align 8, !tbaa !10
  %cmp338 = icmp sgt i64 %168, 0
  br i1 %cmp338, label %if.then340, label %if.end383

if.then340:                                       ; preds = %if.end337
  %169 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %170 = load i64, ptr %num_bor_elem, align 8, !tbaa !10
  %arrayidx341 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call342 = call i32 @nc_def_dim(i32 noundef %169, ptr noundef @.str.19, i64 noundef %170, ptr noundef %arrayidx341)
  store i32 %call342, ptr %status, align 4, !tbaa !4
  %cmp343 = icmp ne i32 %call342, 0
  br i1 %cmp343, label %if.then345, label %if.end354

if.then345:                                       ; preds = %if.then340
  %arraydecay346 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %171 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call347 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay346, i64 noundef 512, ptr noundef @.str.16, ptr noundef @.str.19, i32 noundef %171) #5
  %172 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay348 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %173 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %172, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay348, i32 noundef %173)
  %174 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call349 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %174, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body350

do.body350:                                       ; preds = %if.then345
  %call351 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 341)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond352:                                       ; No predecessors!
  br label %do.end353

do.end353:                                        ; preds = %do.cond352
  br label %if.end354

if.end354:                                        ; preds = %do.end353, %if.then340
  %175 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %176 = load i32, ptr %map_type, align 4, !tbaa !4
  %arraydecay355 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call356 = call i32 @nc_def_var(i32 noundef %175, ptr noundef @.str.20, i32 noundef %176, i32 noundef 1, ptr noundef %arraydecay355, ptr noundef %varid)
  store i32 %call356, ptr %status, align 4, !tbaa !4
  %cmp357 = icmp ne i32 %call356, 0
  br i1 %cmp357, label %if.then359, label %if.end368

if.then359:                                       ; preds = %if.end354
  %arraydecay360 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %177 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call361 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay360, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.20, i32 noundef %177) #5
  %178 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay362 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %179 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %178, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay362, i32 noundef %179)
  %180 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call363 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %180, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body364

do.body364:                                       ; preds = %if.then359
  %call365 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 351)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond366:                                       ; No predecessors!
  br label %do.end367

do.end367:                                        ; preds = %do.cond366
  br label %if.end368

if.end368:                                        ; preds = %do.end367, %if.end354
  %181 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %182 = load i32, ptr %varid, align 4, !tbaa !4
  call void @vtkexodusII_ex__compress_variable(i32 noundef %181, i32 noundef %182, i32 noundef 1)
  %183 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %184 = load i32, ptr %index_type, align 4, !tbaa !4
  %arrayidx369 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 1
  %call370 = call i32 @nc_def_var(i32 noundef %183, ptr noundef @.str.21, i32 noundef %184, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %arrayidx369)
  store i32 %call370, ptr %status, align 4, !tbaa !4
  %cmp371 = icmp ne i32 %call370, 0
  br i1 %cmp371, label %if.then373, label %if.end382

if.then373:                                       ; preds = %if.end368
  %arraydecay374 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %185 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call375 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay374, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.21, i32 noundef %185) #5
  %186 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay376 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %187 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %186, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay376, i32 noundef %187)
  %188 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call377 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %188, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body378

do.body378:                                       ; preds = %if.then373
  %call379 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 364)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond380:                                       ; No predecessors!
  br label %do.end381

do.end381:                                        ; preds = %do.cond380
  br label %if.end382

if.end382:                                        ; preds = %do.end381, %if.end368
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %if.end337
  %189 = load i64, ptr %num_int_node, align 8, !tbaa !10
  %cmp384 = icmp sgt i64 %189, 0
  br i1 %cmp384, label %if.then386, label %if.end429

if.then386:                                       ; preds = %if.end383
  %190 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %191 = load i64, ptr %num_int_node, align 8, !tbaa !10
  %arrayidx387 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call388 = call i32 @nc_def_dim(i32 noundef %190, ptr noundef @.str.22, i64 noundef %191, ptr noundef %arrayidx387)
  store i32 %call388, ptr %status, align 4, !tbaa !4
  %cmp389 = icmp ne i32 %call388, 0
  br i1 %cmp389, label %if.then391, label %if.end400

if.then391:                                       ; preds = %if.then386
  %arraydecay392 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %192 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call393 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay392, i64 noundef 512, ptr noundef @.str.16, ptr noundef @.str.22, i32 noundef %192) #5
  %193 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay394 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %194 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %193, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay394, i32 noundef %194)
  %195 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call395 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %195, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body396

do.body396:                                       ; preds = %if.then391
  %call397 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 378)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond398:                                       ; No predecessors!
  br label %do.end399

do.end399:                                        ; preds = %do.cond398
  br label %if.end400

if.end400:                                        ; preds = %do.end399, %if.then386
  %196 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %197 = load i32, ptr %map_type, align 4, !tbaa !4
  %arrayidx401 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call402 = call i32 @nc_def_var(i32 noundef %196, ptr noundef @.str.23, i32 noundef %197, i32 noundef 1, ptr noundef %arrayidx401, ptr noundef %varid)
  store i32 %call402, ptr %status, align 4, !tbaa !4
  %cmp403 = icmp ne i32 %call402, 0
  br i1 %cmp403, label %if.then405, label %if.end414

if.then405:                                       ; preds = %if.end400
  %arraydecay406 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %198 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call407 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay406, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.23, i32 noundef %198) #5
  %199 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay408 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %200 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %199, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay408, i32 noundef %200)
  %201 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call409 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %201, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body410

do.body410:                                       ; preds = %if.then405
  %call411 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 389)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond412:                                       ; No predecessors!
  br label %do.end413

do.end413:                                        ; preds = %do.cond412
  br label %if.end414

if.end414:                                        ; preds = %do.end413, %if.end400
  %202 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %203 = load i32, ptr %varid, align 4, !tbaa !4
  call void @vtkexodusII_ex__compress_variable(i32 noundef %202, i32 noundef %203, i32 noundef 1)
  %204 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %205 = load i32, ptr %index_type, align 4, !tbaa !4
  %arrayidx415 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 2
  %call416 = call i32 @nc_def_var(i32 noundef %204, ptr noundef @.str.24, i32 noundef %205, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %arrayidx415)
  store i32 %call416, ptr %status, align 4, !tbaa !4
  %cmp417 = icmp ne i32 %call416, 0
  br i1 %cmp417, label %if.then419, label %if.end428

if.then419:                                       ; preds = %if.end414
  %arraydecay420 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %206 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call421 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay420, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.24, i32 noundef %206) #5
  %207 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay422 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %208 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %207, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay422, i32 noundef %208)
  %209 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call423 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %209, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body424

do.body424:                                       ; preds = %if.then419
  %call425 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 402)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond426:                                       ; No predecessors!
  br label %do.end427

do.end427:                                        ; preds = %do.cond426
  br label %if.end428

if.end428:                                        ; preds = %do.end427, %if.end414
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.end383
  %210 = load i64, ptr %num_bor_node, align 8, !tbaa !10
  %cmp430 = icmp sgt i64 %210, 0
  br i1 %cmp430, label %if.then432, label %if.end475

if.then432:                                       ; preds = %if.end429
  %211 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %212 = load i64, ptr %num_bor_node, align 8, !tbaa !10
  %arrayidx433 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 1
  %call434 = call i32 @nc_def_dim(i32 noundef %211, ptr noundef @.str.25, i64 noundef %212, ptr noundef %arrayidx433)
  store i32 %call434, ptr %status, align 4, !tbaa !4
  %cmp435 = icmp ne i32 %call434, 0
  br i1 %cmp435, label %if.then437, label %if.end446

if.then437:                                       ; preds = %if.then432
  %arraydecay438 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %213 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call439 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay438, i64 noundef 512, ptr noundef @.str.16, ptr noundef @.str.25, i32 noundef %213) #5
  %214 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay440 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %215 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %214, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay440, i32 noundef %215)
  %216 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call441 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %216, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body442

do.body442:                                       ; preds = %if.then437
  %call443 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 416)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond444:                                       ; No predecessors!
  br label %do.end445

do.end445:                                        ; preds = %do.cond444
  br label %if.end446

if.end446:                                        ; preds = %do.end445, %if.then432
  %217 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %218 = load i32, ptr %map_type, align 4, !tbaa !4
  %arrayidx447 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 1
  %call448 = call i32 @nc_def_var(i32 noundef %217, ptr noundef @.str.26, i32 noundef %218, i32 noundef 1, ptr noundef %arrayidx447, ptr noundef %varid)
  store i32 %call448, ptr %status, align 4, !tbaa !4
  %cmp449 = icmp ne i32 %call448, 0
  br i1 %cmp449, label %if.then451, label %if.end460

if.then451:                                       ; preds = %if.end446
  %arraydecay452 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %219 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call453 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay452, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.26, i32 noundef %219) #5
  %220 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay454 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %221 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %220, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay454, i32 noundef %221)
  %222 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call455 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %222, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body456

do.body456:                                       ; preds = %if.then451
  %call457 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 427)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond458:                                       ; No predecessors!
  br label %do.end459

do.end459:                                        ; preds = %do.cond458
  br label %if.end460

if.end460:                                        ; preds = %do.end459, %if.end446
  %223 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %224 = load i32, ptr %varid, align 4, !tbaa !4
  call void @vtkexodusII_ex__compress_variable(i32 noundef %223, i32 noundef %224, i32 noundef 1)
  %225 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %226 = load i32, ptr %index_type, align 4, !tbaa !4
  %arrayidx461 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 3
  %call462 = call i32 @nc_def_var(i32 noundef %225, ptr noundef @.str.27, i32 noundef %226, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %arrayidx461)
  store i32 %call462, ptr %status, align 4, !tbaa !4
  %cmp463 = icmp ne i32 %call462, 0
  br i1 %cmp463, label %if.then465, label %if.end474

if.then465:                                       ; preds = %if.end460
  %arraydecay466 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %227 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call467 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay466, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.27, i32 noundef %227) #5
  %228 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay468 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %229 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %228, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay468, i32 noundef %229)
  %230 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call469 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %230, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body470

do.body470:                                       ; preds = %if.then465
  %call471 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 440)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond472:                                       ; No predecessors!
  br label %do.end473

do.end473:                                        ; preds = %do.cond472
  br label %if.end474

if.end474:                                        ; preds = %do.end473, %if.end460
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.end429
  %231 = load i64, ptr %num_ext_node, align 8, !tbaa !10
  %cmp476 = icmp sgt i64 %231, 0
  br i1 %cmp476, label %if.then478, label %if.end521

if.then478:                                       ; preds = %if.end475
  %232 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %233 = load i64, ptr %num_ext_node, align 8, !tbaa !10
  %arrayidx479 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 2
  %call480 = call i32 @nc_def_dim(i32 noundef %232, ptr noundef @.str.28, i64 noundef %233, ptr noundef %arrayidx479)
  store i32 %call480, ptr %status, align 4, !tbaa !4
  %cmp481 = icmp ne i32 %call480, 0
  br i1 %cmp481, label %if.then483, label %if.end492

if.then483:                                       ; preds = %if.then478
  %arraydecay484 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %234 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call485 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay484, i64 noundef 512, ptr noundef @.str.16, ptr noundef @.str.28, i32 noundef %234) #5
  %235 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay486 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %236 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %235, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay486, i32 noundef %236)
  %237 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call487 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %237, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body488

do.body488:                                       ; preds = %if.then483
  %call489 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 454)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond490:                                       ; No predecessors!
  br label %do.end491

do.end491:                                        ; preds = %do.cond490
  br label %if.end492

if.end492:                                        ; preds = %do.end491, %if.then478
  %238 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %239 = load i32, ptr %map_type, align 4, !tbaa !4
  %arrayidx493 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 2
  %call494 = call i32 @nc_def_var(i32 noundef %238, ptr noundef @.str.29, i32 noundef %239, i32 noundef 1, ptr noundef %arrayidx493, ptr noundef %varid)
  store i32 %call494, ptr %status, align 4, !tbaa !4
  %cmp495 = icmp ne i32 %call494, 0
  br i1 %cmp495, label %if.then497, label %if.end506

if.then497:                                       ; preds = %if.end492
  %arraydecay498 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %240 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call499 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay498, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.29, i32 noundef %240) #5
  %241 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay500 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %242 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %241, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay500, i32 noundef %242)
  %243 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call501 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %243, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body502

do.body502:                                       ; preds = %if.then497
  %call503 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 465)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond504:                                       ; No predecessors!
  br label %do.end505

do.end505:                                        ; preds = %do.cond504
  br label %if.end506

if.end506:                                        ; preds = %do.end505, %if.end492
  %244 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %245 = load i32, ptr %varid, align 4, !tbaa !4
  call void @vtkexodusII_ex__compress_variable(i32 noundef %244, i32 noundef %245, i32 noundef 1)
  %246 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %247 = load i32, ptr %index_type, align 4, !tbaa !4
  %arrayidx507 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 4
  %call508 = call i32 @nc_def_var(i32 noundef %246, ptr noundef @.str.30, i32 noundef %247, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %arrayidx507)
  store i32 %call508, ptr %status, align 4, !tbaa !4
  %cmp509 = icmp ne i32 %call508, 0
  br i1 %cmp509, label %if.then511, label %if.end520

if.then511:                                       ; preds = %if.end506
  %arraydecay512 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %248 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call513 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay512, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.30, i32 noundef %248) #5
  %249 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay514 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %250 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %249, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay514, i32 noundef %250)
  %251 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call515 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %251, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body516

do.body516:                                       ; preds = %if.then511
  %call517 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 478)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond518:                                       ; No predecessors!
  br label %do.end519

do.end519:                                        ; preds = %do.cond518
  br label %if.end520

if.end520:                                        ; preds = %do.end519, %if.end506
  br label %if.end521

if.end521:                                        ; preds = %if.end520, %if.end475
  %252 = load i64, ptr %num_n_cmaps, align 8, !tbaa !10
  %cmp522 = icmp sgt i64 %252, 0
  br i1 %cmp522, label %if.then524, label %if.end581

if.then524:                                       ; preds = %if.end521
  %253 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %254 = load i64, ptr %num_n_cmaps, align 8, !tbaa !10
  %arrayidx525 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call526 = call i32 @nc_def_dim(i32 noundef %253, ptr noundef @.str.31, i64 noundef %254, ptr noundef %arrayidx525)
  store i32 %call526, ptr %status, align 4, !tbaa !4
  %cmp527 = icmp ne i32 %call526, 0
  br i1 %cmp527, label %if.then529, label %if.end538

if.then529:                                       ; preds = %if.then524
  %arraydecay530 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %255 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call531 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay530, i64 noundef 512, ptr noundef @.str.32, ptr noundef @.str.31, i32 noundef %255) #5
  %256 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay532 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %257 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %256, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay532, i32 noundef %257)
  %258 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call533 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %258, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body534

do.body534:                                       ; preds = %if.then529
  %call535 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 492)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond536:                                       ; No predecessors!
  br label %do.end537

do.end537:                                        ; preds = %do.cond536
  br label %if.end538

if.end538:                                        ; preds = %do.end537, %if.then524
  %259 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %260 = load i32, ptr %id_type, align 4, !tbaa !4
  %arraydecay539 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call540 = call i32 @nc_def_var(i32 noundef %259, ptr noundef @.str.33, i32 noundef %260, i32 noundef 1, ptr noundef %arraydecay539, ptr noundef %varid)
  store i32 %call540, ptr %status, align 4, !tbaa !4
  %cmp541 = icmp ne i32 %call540, 0
  br i1 %cmp541, label %if.then543, label %if.end552

if.then543:                                       ; preds = %if.end538
  %arraydecay544 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %261 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call545 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay544, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.33, i32 noundef %261) #5
  %262 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay546 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %263 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %262, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay546, i32 noundef %263)
  %264 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call547 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %264, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body548

do.body548:                                       ; preds = %if.then543
  %call549 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 503)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond550:                                       ; No predecessors!
  br label %do.end551

do.end551:                                        ; preds = %do.cond550
  br label %if.end552

if.end552:                                        ; preds = %do.end551, %if.end538
  %265 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay553 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call554 = call i32 @nc_def_var(i32 noundef %265, ptr noundef @.str.34, i32 noundef 4, i32 noundef 1, ptr noundef %arraydecay553, ptr noundef %varid)
  store i32 %call554, ptr %status, align 4, !tbaa !4
  %cmp555 = icmp ne i32 %call554, 0
  br i1 %cmp555, label %if.then557, label %if.end566

if.then557:                                       ; preds = %if.end552
  %arraydecay558 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %266 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call559 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay558, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.34, i32 noundef %266) #5
  %267 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay560 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %268 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %267, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay560, i32 noundef %268)
  %269 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call561 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %269, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body562

do.body562:                                       ; preds = %if.then557
  %call563 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 513)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond564:                                       ; No predecessors!
  br label %do.end565

do.end565:                                        ; preds = %do.cond564
  br label %if.end566

if.end566:                                        ; preds = %do.end565, %if.end552
  %270 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %271 = load i32, ptr %index_type, align 4, !tbaa !4
  %arrayidx567 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 5
  %call568 = call i32 @nc_def_var(i32 noundef %270, ptr noundef @.str.35, i32 noundef %271, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %arrayidx567)
  store i32 %call568, ptr %status, align 4, !tbaa !4
  %cmp569 = icmp ne i32 %call568, 0
  br i1 %cmp569, label %if.then571, label %if.end580

if.then571:                                       ; preds = %if.end566
  %arraydecay572 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %272 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call573 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay572, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.35, i32 noundef %272) #5
  %273 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay574 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %274 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %273, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay574, i32 noundef %274)
  %275 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call575 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %275, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body576

do.body576:                                       ; preds = %if.then571
  %call577 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 525)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond578:                                       ; No predecessors!
  br label %do.end579

do.end579:                                        ; preds = %do.cond578
  br label %if.end580

if.end580:                                        ; preds = %do.end579, %if.end566
  br label %if.end581

if.end581:                                        ; preds = %if.end580, %if.end521
  %276 = load i64, ptr %num_e_cmaps, align 8, !tbaa !10
  %cmp582 = icmp sgt i64 %276, 0
  br i1 %cmp582, label %if.then584, label %if.end641

if.then584:                                       ; preds = %if.end581
  %277 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %278 = load i64, ptr %num_e_cmaps, align 8, !tbaa !10
  %arrayidx585 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call586 = call i32 @nc_def_dim(i32 noundef %277, ptr noundef @.str.36, i64 noundef %278, ptr noundef %arrayidx585)
  store i32 %call586, ptr %status, align 4, !tbaa !4
  %cmp587 = icmp ne i32 %call586, 0
  br i1 %cmp587, label %if.then589, label %if.end598

if.then589:                                       ; preds = %if.then584
  %arraydecay590 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %279 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call591 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay590, i64 noundef 512, ptr noundef @.str.32, ptr noundef @.str.36, i32 noundef %279) #5
  %280 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay592 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %281 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %280, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay592, i32 noundef %281)
  %282 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call593 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %282, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body594

do.body594:                                       ; preds = %if.then589
  %call595 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 538)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond596:                                       ; No predecessors!
  br label %do.end597

do.end597:                                        ; preds = %do.cond596
  br label %if.end598

if.end598:                                        ; preds = %do.end597, %if.then584
  %283 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %284 = load i32, ptr %id_type, align 4, !tbaa !4
  %arraydecay599 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call600 = call i32 @nc_def_var(i32 noundef %283, ptr noundef @.str.37, i32 noundef %284, i32 noundef 1, ptr noundef %arraydecay599, ptr noundef %varid)
  store i32 %call600, ptr %status, align 4, !tbaa !4
  %cmp601 = icmp ne i32 %call600, 0
  br i1 %cmp601, label %if.then603, label %if.end612

if.then603:                                       ; preds = %if.end598
  %arraydecay604 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %285 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call605 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay604, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.37, i32 noundef %285) #5
  %286 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay606 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %287 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %286, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay606, i32 noundef %287)
  %288 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call607 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %288, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body608

do.body608:                                       ; preds = %if.then603
  %call609 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 549)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond610:                                       ; No predecessors!
  br label %do.end611

do.end611:                                        ; preds = %do.cond610
  br label %if.end612

if.end612:                                        ; preds = %do.end611, %if.end598
  %289 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay613 = getelementptr inbounds [3 x i32], ptr %dimid, i64 0, i64 0
  %call614 = call i32 @nc_def_var(i32 noundef %289, ptr noundef @.str.38, i32 noundef 4, i32 noundef 1, ptr noundef %arraydecay613, ptr noundef %varid)
  store i32 %call614, ptr %status, align 4, !tbaa !4
  %cmp615 = icmp ne i32 %call614, 0
  br i1 %cmp615, label %if.then617, label %if.end626

if.then617:                                       ; preds = %if.end612
  %arraydecay618 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %290 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call619 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay618, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.38, i32 noundef %290) #5
  %291 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay620 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %292 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %291, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay620, i32 noundef %292)
  %293 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call621 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %293, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body622

do.body622:                                       ; preds = %if.then617
  %call623 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 559)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond624:                                       ; No predecessors!
  br label %do.end625

do.end625:                                        ; preds = %do.cond624
  br label %if.end626

if.end626:                                        ; preds = %do.end625, %if.end612
  %294 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %295 = load i32, ptr %index_type, align 4, !tbaa !4
  %arrayidx627 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 6
  %call628 = call i32 @nc_def_var(i32 noundef %294, ptr noundef @.str.39, i32 noundef %295, i32 noundef 1, ptr noundef %dimid_npf, ptr noundef %arrayidx627)
  store i32 %call628, ptr %status, align 4, !tbaa !4
  %cmp629 = icmp ne i32 %call628, 0
  br i1 %cmp629, label %if.then631, label %if.end640

if.then631:                                       ; preds = %if.end626
  %arraydecay632 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %296 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call633 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay632, i64 noundef 512, ptr noundef @.str.8, ptr noundef @.str.39, i32 noundef %296) #5
  %297 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay634 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %298 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %297, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay634, i32 noundef %298)
  %299 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call635 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %299, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  br label %do.body636

do.body636:                                       ; preds = %if.then631
  %call637 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 571)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond638:                                       ; No predecessors!
  br label %do.end639

do.end639:                                        ; preds = %do.cond638
  br label %if.end640

if.end640:                                        ; preds = %do.end639, %if.end626
  br label %if.end641

if.end641:                                        ; preds = %if.end640, %if.end581
  %300 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call642 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %300, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc)
  %cmp643 = icmp ne i32 %call642, 0
  br i1 %cmp643, label %if.then645, label %if.end650

if.then645:                                       ; preds = %if.end641
  br label %do.body646

do.body646:                                       ; preds = %if.then645
  %call647 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 578)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond648:                                       ; No predecessors!
  br label %do.end649

do.end649:                                        ; preds = %do.cond648
  br label %if.end650

if.end650:                                        ; preds = %do.end649, %if.end641
  store i64 0, ptr %num_int_elem, align 8, !tbaa !10
  store i64 0, ptr %num_int_node, align 8, !tbaa !10
  store i64 0, ptr %num_bor_elem, align 8, !tbaa !10
  store i64 0, ptr %num_bor_node, align 8, !tbaa !10
  store i64 0, ptr %num_ext_node, align 8, !tbaa !10
  store i64 0, ptr %num_n_cmaps, align 8, !tbaa !10
  store i64 0, ptr %num_e_cmaps, align 8, !tbaa !10
  store i32 0, ptr %iproc, align 4, !tbaa !4
  br label %for.cond651

for.cond651:                                      ; preds = %for.inc939, %if.end650
  %301 = load i32, ptr %iproc, align 4, !tbaa !4
  %302 = load i32, ptr %num_proc_in_f, align 4, !tbaa !4
  %cmp652 = icmp slt i32 %301, %302
  br i1 %cmp652, label %for.body654, label %for.end941

for.body654:                                      ; preds = %for.cond651
  call void @llvm.lifetime.start.p0(i64 8, ptr %nin) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbn) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nie) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbe) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nnc) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nec) #5
  %303 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call655 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %303)
  %and656 = and i32 %call655, 32768
  %tobool657 = icmp ne i32 %and656, 0
  br i1 %tobool657, label %if.then658, label %if.else673

if.then658:                                       ; preds = %for.body654
  %304 = load ptr, ptr %num_int_elems.addr, align 8, !tbaa !8
  %305 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom659 = sext i32 %305 to i64
  %arrayidx660 = getelementptr inbounds i64, ptr %304, i64 %idxprom659
  %306 = load i64, ptr %arrayidx660, align 8, !tbaa !10
  store i64 %306, ptr %nie, align 8, !tbaa !10
  %307 = load ptr, ptr %num_int_nodes.addr, align 8, !tbaa !8
  %308 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom661 = sext i32 %308 to i64
  %arrayidx662 = getelementptr inbounds i64, ptr %307, i64 %idxprom661
  %309 = load i64, ptr %arrayidx662, align 8, !tbaa !10
  store i64 %309, ptr %nin, align 8, !tbaa !10
  %310 = load ptr, ptr %num_bor_elems.addr, align 8, !tbaa !8
  %311 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom663 = sext i32 %311 to i64
  %arrayidx664 = getelementptr inbounds i64, ptr %310, i64 %idxprom663
  %312 = load i64, ptr %arrayidx664, align 8, !tbaa !10
  store i64 %312, ptr %nbe, align 8, !tbaa !10
  %313 = load ptr, ptr %num_bor_nodes.addr, align 8, !tbaa !8
  %314 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom665 = sext i32 %314 to i64
  %arrayidx666 = getelementptr inbounds i64, ptr %313, i64 %idxprom665
  %315 = load i64, ptr %arrayidx666, align 8, !tbaa !10
  store i64 %315, ptr %nbn, align 8, !tbaa !10
  %316 = load ptr, ptr %num_ext_nodes.addr, align 8, !tbaa !8
  %317 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom667 = sext i32 %317 to i64
  %arrayidx668 = getelementptr inbounds i64, ptr %316, i64 %idxprom667
  %318 = load i64, ptr %arrayidx668, align 8, !tbaa !10
  store i64 %318, ptr %nen, align 8, !tbaa !10
  %319 = load ptr, ptr %num_elem_cmaps.addr, align 8, !tbaa !8
  %320 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom669 = sext i32 %320 to i64
  %arrayidx670 = getelementptr inbounds i64, ptr %319, i64 %idxprom669
  %321 = load i64, ptr %arrayidx670, align 8, !tbaa !10
  store i64 %321, ptr %nec, align 8, !tbaa !10
  %322 = load ptr, ptr %num_node_cmaps.addr, align 8, !tbaa !8
  %323 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom671 = sext i32 %323 to i64
  %arrayidx672 = getelementptr inbounds i64, ptr %322, i64 %idxprom671
  %324 = load i64, ptr %arrayidx672, align 8, !tbaa !10
  store i64 %324, ptr %nnc, align 8, !tbaa !10
  br label %if.end695

if.else673:                                       ; preds = %for.body654
  %325 = load ptr, ptr %num_int_elems.addr, align 8, !tbaa !8
  %326 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom674 = sext i32 %326 to i64
  %arrayidx675 = getelementptr inbounds i32, ptr %325, i64 %idxprom674
  %327 = load i32, ptr %arrayidx675, align 4, !tbaa !4
  %conv676 = sext i32 %327 to i64
  store i64 %conv676, ptr %nie, align 8, !tbaa !10
  %328 = load ptr, ptr %num_int_nodes.addr, align 8, !tbaa !8
  %329 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom677 = sext i32 %329 to i64
  %arrayidx678 = getelementptr inbounds i32, ptr %328, i64 %idxprom677
  %330 = load i32, ptr %arrayidx678, align 4, !tbaa !4
  %conv679 = sext i32 %330 to i64
  store i64 %conv679, ptr %nin, align 8, !tbaa !10
  %331 = load ptr, ptr %num_bor_elems.addr, align 8, !tbaa !8
  %332 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom680 = sext i32 %332 to i64
  %arrayidx681 = getelementptr inbounds i32, ptr %331, i64 %idxprom680
  %333 = load i32, ptr %arrayidx681, align 4, !tbaa !4
  %conv682 = sext i32 %333 to i64
  store i64 %conv682, ptr %nbe, align 8, !tbaa !10
  %334 = load ptr, ptr %num_bor_nodes.addr, align 8, !tbaa !8
  %335 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom683 = sext i32 %335 to i64
  %arrayidx684 = getelementptr inbounds i32, ptr %334, i64 %idxprom683
  %336 = load i32, ptr %arrayidx684, align 4, !tbaa !4
  %conv685 = sext i32 %336 to i64
  store i64 %conv685, ptr %nbn, align 8, !tbaa !10
  %337 = load ptr, ptr %num_ext_nodes.addr, align 8, !tbaa !8
  %338 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom686 = sext i32 %338 to i64
  %arrayidx687 = getelementptr inbounds i32, ptr %337, i64 %idxprom686
  %339 = load i32, ptr %arrayidx687, align 4, !tbaa !4
  %conv688 = sext i32 %339 to i64
  store i64 %conv688, ptr %nen, align 8, !tbaa !10
  %340 = load ptr, ptr %num_elem_cmaps.addr, align 8, !tbaa !8
  %341 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom689 = sext i32 %341 to i64
  %arrayidx690 = getelementptr inbounds i32, ptr %340, i64 %idxprom689
  %342 = load i32, ptr %arrayidx690, align 4, !tbaa !4
  %conv691 = sext i32 %342 to i64
  store i64 %conv691, ptr %nec, align 8, !tbaa !10
  %343 = load ptr, ptr %num_node_cmaps.addr, align 8, !tbaa !8
  %344 = load i32, ptr %iproc, align 4, !tbaa !4
  %idxprom692 = sext i32 %344 to i64
  %arrayidx693 = getelementptr inbounds i32, ptr %343, i64 %idxprom692
  %345 = load i32, ptr %arrayidx693, align 4, !tbaa !4
  %conv694 = sext i32 %345 to i64
  store i64 %conv694, ptr %nnc, align 8, !tbaa !10
  br label %if.end695

if.end695:                                        ; preds = %if.else673, %if.then658
  %346 = load i32, ptr %iproc, align 4, !tbaa !4
  %conv696 = sext i32 %346 to i64
  %arrayidx697 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  store i64 %conv696, ptr %arrayidx697, align 8, !tbaa !10
  %347 = load i64, ptr %nin, align 8, !tbaa !10
  %cmp698 = icmp ugt i64 %347, 0
  br i1 %cmp698, label %if.then700, label %if.else701

if.then700:                                       ; preds = %if.end695
  store i32 1, ptr %nmstat, align 4, !tbaa !4
  br label %if.end702

if.else701:                                       ; preds = %if.end695
  store i32 0, ptr %nmstat, align 4, !tbaa !4
  br label %if.end702

if.end702:                                        ; preds = %if.else701, %if.then700
  %348 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx703 = getelementptr inbounds [3 x i32], ptr %varid_nm, i64 0, i64 0
  %349 = load i32, ptr %arrayidx703, align 4, !tbaa !4
  %arraydecay704 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call705 = call i32 @nc_put_var1_int(i32 noundef %348, i32 noundef %349, ptr noundef %arraydecay704, ptr noundef %nmstat)
  store i32 %call705, ptr %status, align 4, !tbaa !4
  %cmp706 = icmp ne i32 %call705, 0
  br i1 %cmp706, label %if.then708, label %if.end716

if.then708:                                       ; preds = %if.end702
  %arraydecay709 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %350 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call710 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay709, i64 noundef 512, ptr noundef @.str.40, i32 noundef %350) #5
  %351 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay711 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %352 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %351, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay711, i32 noundef %352)
  br label %do.body712

do.body712:                                       ; preds = %if.then708
  %call713 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 631)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond714:                                       ; No predecessors!
  br label %do.end715

do.end715:                                        ; preds = %do.cond714
  br label %if.end716

if.end716:                                        ; preds = %do.end715, %if.end702
  %353 = load i64, ptr %nbn, align 8, !tbaa !10
  %cmp717 = icmp ugt i64 %353, 0
  br i1 %cmp717, label %if.then719, label %if.else720

if.then719:                                       ; preds = %if.end716
  store i32 1, ptr %nmstat, align 4, !tbaa !4
  br label %if.end721

if.else720:                                       ; preds = %if.end716
  store i32 0, ptr %nmstat, align 4, !tbaa !4
  br label %if.end721

if.end721:                                        ; preds = %if.else720, %if.then719
  %354 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx722 = getelementptr inbounds [3 x i32], ptr %varid_nm, i64 0, i64 1
  %355 = load i32, ptr %arrayidx722, align 4, !tbaa !4
  %arraydecay723 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call724 = call i32 @nc_put_var1_int(i32 noundef %354, i32 noundef %355, ptr noundef %arraydecay723, ptr noundef %nmstat)
  store i32 %call724, ptr %status, align 4, !tbaa !4
  %cmp725 = icmp ne i32 %call724, 0
  br i1 %cmp725, label %if.then727, label %if.end735

if.then727:                                       ; preds = %if.end721
  %arraydecay728 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %356 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call729 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay728, i64 noundef 512, ptr noundef @.str.41, i32 noundef %356) #5
  %357 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay730 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %358 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %357, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay730, i32 noundef %358)
  br label %do.body731

do.body731:                                       ; preds = %if.then727
  %call732 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 645)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond733:                                       ; No predecessors!
  br label %do.end734

do.end734:                                        ; preds = %do.cond733
  br label %if.end735

if.end735:                                        ; preds = %do.end734, %if.end721
  %359 = load i64, ptr %nen, align 8, !tbaa !10
  %cmp736 = icmp ugt i64 %359, 0
  br i1 %cmp736, label %if.then738, label %if.else739

if.then738:                                       ; preds = %if.end735
  store i32 1, ptr %nmstat, align 4, !tbaa !4
  br label %if.end740

if.else739:                                       ; preds = %if.end735
  store i32 0, ptr %nmstat, align 4, !tbaa !4
  br label %if.end740

if.end740:                                        ; preds = %if.else739, %if.then738
  %360 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx741 = getelementptr inbounds [3 x i32], ptr %varid_nm, i64 0, i64 2
  %361 = load i32, ptr %arrayidx741, align 4, !tbaa !4
  %arraydecay742 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call743 = call i32 @nc_put_var1_int(i32 noundef %360, i32 noundef %361, ptr noundef %arraydecay742, ptr noundef %nmstat)
  store i32 %call743, ptr %status, align 4, !tbaa !4
  %cmp744 = icmp ne i32 %call743, 0
  br i1 %cmp744, label %if.then746, label %if.end754

if.then746:                                       ; preds = %if.end740
  %arraydecay747 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %362 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call748 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay747, i64 noundef 512, ptr noundef @.str.42, i32 noundef %362) #5
  %363 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay749 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %364 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %363, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay749, i32 noundef %364)
  br label %do.body750

do.body750:                                       ; preds = %if.then746
  %call751 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 659)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond752:                                       ; No predecessors!
  br label %do.end753

do.end753:                                        ; preds = %do.cond752
  br label %if.end754

if.end754:                                        ; preds = %do.end753, %if.end740
  %365 = load i64, ptr %nie, align 8, !tbaa !10
  %cmp755 = icmp ugt i64 %365, 0
  br i1 %cmp755, label %if.then757, label %if.else758

if.then757:                                       ; preds = %if.end754
  store i32 1, ptr %nmstat, align 4, !tbaa !4
  br label %if.end759

if.else758:                                       ; preds = %if.end754
  store i32 0, ptr %nmstat, align 4, !tbaa !4
  br label %if.end759

if.end759:                                        ; preds = %if.else758, %if.then757
  %366 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx760 = getelementptr inbounds [2 x i32], ptr %varid_em, i64 0, i64 0
  %367 = load i32, ptr %arrayidx760, align 4, !tbaa !4
  %arraydecay761 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call762 = call i32 @nc_put_var1_int(i32 noundef %366, i32 noundef %367, ptr noundef %arraydecay761, ptr noundef %nmstat)
  store i32 %call762, ptr %status, align 4, !tbaa !4
  %cmp763 = icmp ne i32 %call762, 0
  br i1 %cmp763, label %if.then765, label %if.end773

if.then765:                                       ; preds = %if.end759
  %arraydecay766 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %368 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call767 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay766, i64 noundef 512, ptr noundef @.str.43, i32 noundef %368) #5
  %369 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay768 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %370 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %369, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay768, i32 noundef %370)
  br label %do.body769

do.body769:                                       ; preds = %if.then765
  %call770 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 673)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond771:                                       ; No predecessors!
  br label %do.end772

do.end772:                                        ; preds = %do.cond771
  br label %if.end773

if.end773:                                        ; preds = %do.end772, %if.end759
  %371 = load i64, ptr %nbe, align 8, !tbaa !10
  %cmp774 = icmp ugt i64 %371, 0
  br i1 %cmp774, label %if.then776, label %if.else777

if.then776:                                       ; preds = %if.end773
  store i32 1, ptr %nmstat, align 4, !tbaa !4
  br label %if.end778

if.else777:                                       ; preds = %if.end773
  store i32 0, ptr %nmstat, align 4, !tbaa !4
  br label %if.end778

if.end778:                                        ; preds = %if.else777, %if.then776
  %372 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx779 = getelementptr inbounds [2 x i32], ptr %varid_em, i64 0, i64 1
  %373 = load i32, ptr %arrayidx779, align 4, !tbaa !4
  %arraydecay780 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call781 = call i32 @nc_put_var1_int(i32 noundef %372, i32 noundef %373, ptr noundef %arraydecay780, ptr noundef %nmstat)
  store i32 %call781, ptr %status, align 4, !tbaa !4
  %cmp782 = icmp ne i32 %call781, 0
  br i1 %cmp782, label %if.then784, label %if.end792

if.then784:                                       ; preds = %if.end778
  %arraydecay785 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %374 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call786 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay785, i64 noundef 512, ptr noundef @.str.44, i32 noundef %374) #5
  %375 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay787 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %376 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %375, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay787, i32 noundef %376)
  br label %do.body788

do.body788:                                       ; preds = %if.then784
  %call789 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 687)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond790:                                       ; No predecessors!
  br label %do.end791

do.end791:                                        ; preds = %do.cond790
  br label %if.end792

if.end792:                                        ; preds = %do.end791, %if.end778
  %arrayidx793 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 0
  %377 = load i32, ptr %arrayidx793, align 16, !tbaa !4
  %cmp794 = icmp sgt i32 %377, 0
  br i1 %cmp794, label %if.then796, label %if.end812

if.then796:                                       ; preds = %if.end792
  %378 = load i64, ptr %nie, align 8, !tbaa !10
  %379 = load i64, ptr %num_int_elem, align 8, !tbaa !10
  %add797 = add i64 %379, %378
  store i64 %add797, ptr %num_int_elem, align 8, !tbaa !10
  %380 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx798 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 0
  %381 = load i32, ptr %arrayidx798, align 16, !tbaa !4
  %arraydecay799 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call800 = call i32 @nc_put_var1_longlong(i32 noundef %380, i32 noundef %381, ptr noundef %arraydecay799, ptr noundef %num_int_elem)
  store i32 %call800, ptr %status, align 4, !tbaa !4
  %382 = load i32, ptr %status, align 4, !tbaa !4
  %cmp801 = icmp ne i32 %382, 0
  br i1 %cmp801, label %if.then803, label %if.end811

if.then803:                                       ; preds = %if.then796
  %arraydecay804 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %383 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call805 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay804, i64 noundef 512, ptr noundef @.str.45, i32 noundef %383) #5
  %384 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay806 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %385 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %384, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay806, i32 noundef %385)
  br label %do.body807

do.body807:                                       ; preds = %if.then803
  %call808 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 703)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond809:                                       ; No predecessors!
  br label %do.end810

do.end810:                                        ; preds = %do.cond809
  br label %if.end811

if.end811:                                        ; preds = %do.end810, %if.then796
  br label %if.end812

if.end812:                                        ; preds = %if.end811, %if.end792
  %arrayidx813 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 1
  %386 = load i32, ptr %arrayidx813, align 4, !tbaa !4
  %cmp814 = icmp sgt i32 %386, 0
  br i1 %cmp814, label %if.then816, label %if.end832

if.then816:                                       ; preds = %if.end812
  %387 = load i64, ptr %nbe, align 8, !tbaa !10
  %388 = load i64, ptr %num_bor_elem, align 8, !tbaa !10
  %add817 = add i64 %388, %387
  store i64 %add817, ptr %num_bor_elem, align 8, !tbaa !10
  %389 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx818 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 1
  %390 = load i32, ptr %arrayidx818, align 4, !tbaa !4
  %arraydecay819 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call820 = call i32 @nc_put_var1_longlong(i32 noundef %389, i32 noundef %390, ptr noundef %arraydecay819, ptr noundef %num_bor_elem)
  store i32 %call820, ptr %status, align 4, !tbaa !4
  %391 = load i32, ptr %status, align 4, !tbaa !4
  %cmp821 = icmp ne i32 %391, 0
  br i1 %cmp821, label %if.then823, label %if.end831

if.then823:                                       ; preds = %if.then816
  %arraydecay824 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %392 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call825 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay824, i64 noundef 512, ptr noundef @.str.46, i32 noundef %392) #5
  %393 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay826 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %394 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %393, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay826, i32 noundef %394)
  br label %do.body827

do.body827:                                       ; preds = %if.then823
  %call828 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 719)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond829:                                       ; No predecessors!
  br label %do.end830

do.end830:                                        ; preds = %do.cond829
  br label %if.end831

if.end831:                                        ; preds = %do.end830, %if.then816
  br label %if.end832

if.end832:                                        ; preds = %if.end831, %if.end812
  %arrayidx833 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 2
  %395 = load i32, ptr %arrayidx833, align 8, !tbaa !4
  %cmp834 = icmp sgt i32 %395, 0
  br i1 %cmp834, label %if.then836, label %if.end852

if.then836:                                       ; preds = %if.end832
  %396 = load i64, ptr %nin, align 8, !tbaa !10
  %397 = load i64, ptr %num_int_node, align 8, !tbaa !10
  %add837 = add i64 %397, %396
  store i64 %add837, ptr %num_int_node, align 8, !tbaa !10
  %398 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx838 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 2
  %399 = load i32, ptr %arrayidx838, align 8, !tbaa !4
  %arraydecay839 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call840 = call i32 @nc_put_var1_longlong(i32 noundef %398, i32 noundef %399, ptr noundef %arraydecay839, ptr noundef %num_int_node)
  store i32 %call840, ptr %status, align 4, !tbaa !4
  %400 = load i32, ptr %status, align 4, !tbaa !4
  %cmp841 = icmp ne i32 %400, 0
  br i1 %cmp841, label %if.then843, label %if.end851

if.then843:                                       ; preds = %if.then836
  %arraydecay844 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %401 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call845 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay844, i64 noundef 512, ptr noundef @.str.47, i32 noundef %401) #5
  %402 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay846 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %403 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %402, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay846, i32 noundef %403)
  br label %do.body847

do.body847:                                       ; preds = %if.then843
  %call848 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 735)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond849:                                       ; No predecessors!
  br label %do.end850

do.end850:                                        ; preds = %do.cond849
  br label %if.end851

if.end851:                                        ; preds = %do.end850, %if.then836
  br label %if.end852

if.end852:                                        ; preds = %if.end851, %if.end832
  %arrayidx853 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 3
  %404 = load i32, ptr %arrayidx853, align 4, !tbaa !4
  %cmp854 = icmp sgt i32 %404, 0
  br i1 %cmp854, label %if.then856, label %if.end872

if.then856:                                       ; preds = %if.end852
  %405 = load i64, ptr %nbn, align 8, !tbaa !10
  %406 = load i64, ptr %num_bor_node, align 8, !tbaa !10
  %add857 = add i64 %406, %405
  store i64 %add857, ptr %num_bor_node, align 8, !tbaa !10
  %407 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx858 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 3
  %408 = load i32, ptr %arrayidx858, align 4, !tbaa !4
  %arraydecay859 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call860 = call i32 @nc_put_var1_longlong(i32 noundef %407, i32 noundef %408, ptr noundef %arraydecay859, ptr noundef %num_bor_node)
  store i32 %call860, ptr %status, align 4, !tbaa !4
  %409 = load i32, ptr %status, align 4, !tbaa !4
  %cmp861 = icmp ne i32 %409, 0
  br i1 %cmp861, label %if.then863, label %if.end871

if.then863:                                       ; preds = %if.then856
  %arraydecay864 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %410 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call865 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay864, i64 noundef 512, ptr noundef @.str.48, i32 noundef %410) #5
  %411 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay866 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %412 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %411, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay866, i32 noundef %412)
  br label %do.body867

do.body867:                                       ; preds = %if.then863
  %call868 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 751)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond869:                                       ; No predecessors!
  br label %do.end870

do.end870:                                        ; preds = %do.cond869
  br label %if.end871

if.end871:                                        ; preds = %do.end870, %if.then856
  br label %if.end872

if.end872:                                        ; preds = %if.end871, %if.end852
  %arrayidx873 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 4
  %413 = load i32, ptr %arrayidx873, align 16, !tbaa !4
  %cmp874 = icmp sgt i32 %413, 0
  br i1 %cmp874, label %if.then876, label %if.end892

if.then876:                                       ; preds = %if.end872
  %414 = load i64, ptr %nen, align 8, !tbaa !10
  %415 = load i64, ptr %num_ext_node, align 8, !tbaa !10
  %add877 = add i64 %415, %414
  store i64 %add877, ptr %num_ext_node, align 8, !tbaa !10
  %416 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx878 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 4
  %417 = load i32, ptr %arrayidx878, align 16, !tbaa !4
  %arraydecay879 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call880 = call i32 @nc_put_var1_longlong(i32 noundef %416, i32 noundef %417, ptr noundef %arraydecay879, ptr noundef %num_ext_node)
  store i32 %call880, ptr %status, align 4, !tbaa !4
  %418 = load i32, ptr %status, align 4, !tbaa !4
  %cmp881 = icmp ne i32 %418, 0
  br i1 %cmp881, label %if.then883, label %if.end891

if.then883:                                       ; preds = %if.then876
  %arraydecay884 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %419 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call885 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay884, i64 noundef 512, ptr noundef @.str.49, i32 noundef %419) #5
  %420 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay886 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %421 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %420, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay886, i32 noundef %421)
  br label %do.body887

do.body887:                                       ; preds = %if.then883
  %call888 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 767)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond889:                                       ; No predecessors!
  br label %do.end890

do.end890:                                        ; preds = %do.cond889
  br label %if.end891

if.end891:                                        ; preds = %do.end890, %if.then876
  br label %if.end892

if.end892:                                        ; preds = %if.end891, %if.end872
  %arrayidx893 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 5
  %422 = load i32, ptr %arrayidx893, align 4, !tbaa !4
  %cmp894 = icmp sgt i32 %422, 0
  br i1 %cmp894, label %if.then896, label %if.end912

if.then896:                                       ; preds = %if.end892
  %423 = load i64, ptr %nnc, align 8, !tbaa !10
  %424 = load i64, ptr %num_n_cmaps, align 8, !tbaa !10
  %add897 = add i64 %424, %423
  store i64 %add897, ptr %num_n_cmaps, align 8, !tbaa !10
  %425 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx898 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 5
  %426 = load i32, ptr %arrayidx898, align 4, !tbaa !4
  %arraydecay899 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call900 = call i32 @nc_put_var1_longlong(i32 noundef %425, i32 noundef %426, ptr noundef %arraydecay899, ptr noundef %num_n_cmaps)
  store i32 %call900, ptr %status, align 4, !tbaa !4
  %427 = load i32, ptr %status, align 4, !tbaa !4
  %cmp901 = icmp ne i32 %427, 0
  br i1 %cmp901, label %if.then903, label %if.end911

if.then903:                                       ; preds = %if.then896
  %arraydecay904 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %428 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call905 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay904, i64 noundef 512, ptr noundef @.str.50, i32 noundef %428) #5
  %429 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay906 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %430 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %429, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay906, i32 noundef %430)
  br label %do.body907

do.body907:                                       ; preds = %if.then903
  %call908 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 785)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond909:                                       ; No predecessors!
  br label %do.end910

do.end910:                                        ; preds = %do.cond909
  br label %if.end911

if.end911:                                        ; preds = %do.end910, %if.then896
  br label %if.end912

if.end912:                                        ; preds = %if.end911, %if.end892
  %arrayidx913 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 6
  %431 = load i32, ptr %arrayidx913, align 8, !tbaa !4
  %cmp914 = icmp sgt i32 %431, 0
  br i1 %cmp914, label %if.then916, label %if.end932

if.then916:                                       ; preds = %if.end912
  %432 = load i64, ptr %nec, align 8, !tbaa !10
  %433 = load i64, ptr %num_e_cmaps, align 8, !tbaa !10
  %add917 = add i64 %433, %432
  store i64 %add917, ptr %num_e_cmaps, align 8, !tbaa !10
  %434 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arrayidx918 = getelementptr inbounds [7 x i32], ptr %varid_idx, i64 0, i64 6
  %435 = load i32, ptr %arrayidx918, align 8, !tbaa !4
  %arraydecay919 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call920 = call i32 @nc_put_var1_longlong(i32 noundef %434, i32 noundef %435, ptr noundef %arraydecay919, ptr noundef %num_e_cmaps)
  store i32 %call920, ptr %status, align 4, !tbaa !4
  %436 = load i32, ptr %status, align 4, !tbaa !4
  %cmp921 = icmp ne i32 %436, 0
  br i1 %cmp921, label %if.then923, label %if.end931

if.then923:                                       ; preds = %if.then916
  %arraydecay924 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %437 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call925 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay924, i64 noundef 512, ptr noundef @.str.51, i32 noundef %437) #5
  %438 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay926 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %439 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %438, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, ptr noundef %arraydecay926, i32 noundef %439)
  br label %do.body927

do.body927:                                       ; preds = %if.then923
  %call928 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 803)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond929:                                       ; No predecessors!
  br label %do.end930

do.end930:                                        ; preds = %do.cond929
  br label %if.end931

if.end931:                                        ; preds = %do.end930, %if.then916
  br label %if.end932

if.end932:                                        ; preds = %if.end931, %if.end912
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end932, %do.body927, %do.body907, %do.body887, %do.body867, %do.body847, %do.body827, %do.body807, %do.body788, %do.body769, %do.body750, %do.body731, %do.body712
  call void @llvm.lifetime.end.p0(i64 8, ptr %nec) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nnc) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbe) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nie) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nin) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup946 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc939

for.inc939:                                       ; preds = %cleanup.cont
  %440 = load i32, ptr %iproc, align 4, !tbaa !4
  %inc940 = add nsw i32 %440, 1
  store i32 %inc940, ptr %iproc, align 4, !tbaa !4
  br label %for.cond651

for.end941:                                       ; preds = %for.cond651
  br label %do.body942

do.body942:                                       ; preds = %for.end941
  %call943 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_loadbal_param_cc, i32 noundef 808)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

do.cond944:                                       ; No predecessors!
  br label %do.end945

do.end945:                                        ; preds = %do.cond944
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup946

cleanup946:                                       ; preds = %do.end945, %do.body942, %cleanup, %do.body646, %do.body636, %do.body622, %do.body608, %do.body594, %do.body576, %do.body562, %do.body548, %do.body534, %do.body516, %do.body502, %do.body488, %do.body470, %do.body456, %do.body442, %do.body424, %do.body410, %do.body396, %do.body378, %do.body364, %do.body350, %do.body332, %do.body318, %do.body304, %do.body229, %do.body216, %do.body203, %do.body190, %do.body177, %do.body164, %do.body149, %do.body133, %do.body117, %do.body101, %do.body85, %do.body70, %do.body62, %do.body51, %do.body40, %do.body29, %do.body4
  call void @llvm.lifetime.end.p0(i64 4, ptr %id_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %map_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %index_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %format) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmstat) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_e_cmaps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_n_cmaps) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_ext_node) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_bor_node) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_bor_elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_int_node) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_int_elem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldfill) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr %ftype) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr %varid_idx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %varid_em) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr %varid_nm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_proc_in_f) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_proc) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr %dimid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dimid_npf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %iproc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %cleanup.dest972 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest972, label %unreachable [
    i32 0, label %cleanup.cont973
    i32 1, label %cleanup.cont973
  ]

cleanup.cont973:                                  ; preds = %cleanup946, %cleanup946
  %441 = load i32, ptr %retval, align 4
  ret i32 %441

unreachable:                                      ; preds = %cleanup946
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @pthread_once(ptr noundef, ptr noundef) #3

declare void @vtkexodusII_ex__pthread_first_thread_init() #3

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #3

declare ptr @vtkexodusII_exerrval_get(...) #3

declare i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef, ptr noundef) #3

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @vtkexodusII_ex_int64_status(i32 noundef) #3

declare i32 @nc_inq_format(i32 noundef, ptr noundef) #3

declare i32 @vtkexodusII_ex_get_init_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @nc_inq_dimid(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @nc_redef(i32 noundef) #3

declare i32 @nc_set_fill(i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @vtkexodusII_ex__put_nemesis_version(i32 noundef) #3

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @nc_def_var(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @vtkexodusII_ex__leavedef(i32 noundef, ptr noundef) #3

declare i32 @nc_def_dim(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare void @vtkexodusII_ex__compress_variable(i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @nc_put_var1_int(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @nc_put_var1_longlong(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 516, !5, i64 1028}
!14 = !{!13, !5, i64 1028}

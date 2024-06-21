; ModuleID = 'samples/863.bc'
source_filename = "/local-ssd/vtk-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7-build/aidengro/spack-stage-vtk-9.0.3-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_concat_side_set_node_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EX_mutex_struct = type { %union.pthread_mutex_t, %union.pthread_mutexattr_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.EX_errval = type { i32, [256 x i8], [256 x i8], i32 }
%struct.ex__elem_blk_parm = type { [33 x i8], i64, i64, i32, i32, [6 x i32], i32, i64, i32 }

@EX_first_init_g = external global i32, align 4
@EX_g = external global %struct.EX_mutex_struct, align 8
@ex_errval = external global ptr, align 8
@__func__.vtkexodusII_ex_get_concat_side_set_node_count = private unnamed_addr constant [46 x i8] c"vtkexodusII_ex_get_concat_side_set_node_count\00", align 1
@.str = private unnamed_addr constant [55 x i8] c"ERROR: failed to get number of side sets in file id %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Warning: no side sets defined in file id %d\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"ERROR: failed to get number of element blocks in file id %d\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"ERROR: failed to get total number of elements in file id %d\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"ERROR: failed to get dimensionality in file id %d\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"ERROR: failed to allocate space for element block ids for file id %d\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"ERROR: failed to get element block ids in file id %d\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"ERROR: failed to allocate space for element block params for file id %d\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"ERROR: failed to allocate space for side set ids for file id %d\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"ERROR: failed to get side set ids in file id %d\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"ERROR: failed to get number of elements in side set  %ld in file id %d\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"ERROR: failed to allocate space for side set element list for file id %d\00", align 1
@.str.12 = private unnamed_addr constant [70 x i8] c"ERROR: failed to allocate space for side set side list for file id %d\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"ERROR: failed to get side set  %ld in file id %d\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"ERROR: failed to allocate space for side set elem sort array for file id %d\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"ERROR: Invalid element number  %ld found in side set  %ld in file %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_concat_side_set_node_count(i32 noundef %exoid, ptr noundef %side_set_node_cnt_list) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %side_set_node_cnt_list.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iss = alloca i32, align 4
  %ioff = alloca i32, align 4
  %side_set_id = alloca i64, align 8
  %num_side_sets = alloca i32, align 4
  %num_elem_blks = alloca i32, align 4
  %ndim = alloca i32, align 4
  %tot_num_elem = alloca i64, align 8
  %tot_num_ss_elem = alloca i64, align 8
  %num_df = alloca i64, align 8
  %side = alloca i64, align 8
  %elem = alloca i64, align 8
  %elem_blk_ids = alloca ptr, align 8
  %side_set_ids = alloca ptr, align 8
  %ss_elem_ndx = alloca ptr, align 8
  %side_set_elem_list = alloca ptr, align 8
  %side_set_side_list = alloca ptr, align 8
  %elem_ctr = alloca i64, align 8
  %int_size = alloca i32, align 4
  %ids_size = alloca i32, align 4
  %status = alloca i32, align 4
  %elem_blk_parms = alloca ptr, align 8
  %errmsg = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %id = alloca i64, align 8
  %tot = alloca i32, align 4
  %df = alloca i32, align 4
  %elems = alloca ptr, align 8
  %elems219 = alloca ptr, align 8
  %elem_ndx = alloca i64, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store ptr %side_set_node_cnt_list, ptr %side_set_node_cnt_list.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %iss) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ioff) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_set_id) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_side_sets) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_elem_blks) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndim) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tot_num_elem) #5
  store i64 0, ptr %tot_num_elem, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %tot_num_ss_elem) #5
  store i64 0, ptr %tot_num_ss_elem, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_df) #5
  store i64 0, ptr %num_df, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %side) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_blk_ids) #5
  store ptr null, ptr %elem_blk_ids, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_set_ids) #5
  store ptr null, ptr %side_set_ids, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss_elem_ndx) #5
  store ptr null, ptr %ss_elem_ndx, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_set_elem_list) #5
  store ptr null, ptr %side_set_elem_list, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_set_side_list) #5
  store ptr null, ptr %side_set_side_list, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_ctr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %int_size) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ids_size) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_blk_parms) #5
  store ptr null, ptr %elem_blk_parms, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 256, ptr %errmsg) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !8
  %0 = load ptr, ptr @ex_errval, align 8, !tbaa !8
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !12
  %1 = load ptr, ptr @ex_errval, align 8, !tbaa !8
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  call void @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count)
  %3 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call3 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %3, i32 noundef 11)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %num_side_sets, align 4, !tbaa !4
  %4 = load i32, ptr %num_side_sets, align 4, !tbaa !4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %arraydecay = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %5 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str, i32 noundef %5) #5
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay6 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %6, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay6, i32 noundef -1003)
  br label %do.body7

do.body7:                                         ; preds = %if.then
  %call8 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

do.cond9:                                         ; No predecessors!
  br label %do.end10

do.end10:                                         ; preds = %do.cond9
  br label %if.end

if.end:                                           ; preds = %do.end10, %do.end
  %7 = load i32, ptr %num_side_sets, align 4, !tbaa !4
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end
  %arraydecay14 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %8 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay14, i64 noundef 256, ptr noundef @.str.1, i32 noundef %8) #5
  %9 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay16 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %9, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay16, i32 noundef 1)
  br label %do.body17

do.body17:                                        ; preds = %if.then13
  %call18 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

do.cond19:                                        ; No predecessors!
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end
  %10 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call22 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %10, i32 noundef 8)
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, ptr %num_elem_blks, align 4, !tbaa !4
  %11 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %cmp24 = icmp slt i32 %11, 0
  br i1 %cmp24, label %if.then26, label %if.end34

if.then26:                                        ; preds = %if.end21
  %arraydecay27 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %12 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay27, i64 noundef 256, ptr noundef @.str.2, i32 noundef %12) #5
  %13 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay29 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %13, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay29, i32 noundef -1003)
  br label %do.body30

do.body30:                                        ; preds = %if.then26
  %call31 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

do.cond32:                                        ; No predecessors!
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.end21
  %14 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call35 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %14, i32 noundef 7)
  store i64 %call35, ptr %tot_num_elem, align 8, !tbaa !10
  %15 = load i64, ptr %tot_num_elem, align 8, !tbaa !10
  %cmp36 = icmp slt i64 %15, 0
  br i1 %cmp36, label %if.then38, label %if.end46

if.then38:                                        ; preds = %if.end34
  %arraydecay39 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %16 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call40 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay39, i64 noundef 256, ptr noundef @.str.3, i32 noundef %16) #5
  %17 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay41 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %17, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay41, i32 noundef -1003)
  br label %do.body42

do.body42:                                        ; preds = %if.then38
  %call43 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

do.cond44:                                        ; No predecessors!
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %if.end34
  %18 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call47 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %18, i32 noundef 5)
  %conv48 = trunc i64 %call47 to i32
  store i32 %conv48, ptr %ndim, align 4, !tbaa !4
  %19 = load i32, ptr %ndim, align 4, !tbaa !4
  %cmp49 = icmp slt i32 %19, 0
  br i1 %cmp49, label %if.then51, label %if.end59

if.then51:                                        ; preds = %if.end46
  %arraydecay52 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %20 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call53 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay52, i64 noundef 256, ptr noundef @.str.4, i32 noundef %20) #5
  %21 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay54 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %21, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay54, i32 noundef -1003)
  br label %do.body55

do.body55:                                        ; preds = %if.then51
  %call56 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

do.cond57:                                        ; No predecessors!
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %if.end46
  store i32 4, ptr %int_size, align 4, !tbaa !4
  %22 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call60 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %22)
  %and = and i32 %call60, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end59
  store i32 8, ptr %int_size, align 4, !tbaa !4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59
  store i32 4, ptr %ids_size, align 4, !tbaa !4
  %23 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call63 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %23)
  %and64 = and i32 %call63, 16384
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  store i32 8, ptr %ids_size, align 4, !tbaa !4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end62
  %24 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %25 = load i32, ptr %ids_size, align 4, !tbaa !4
  %mul = mul nsw i32 %24, %25
  %conv68 = sext i32 %mul to i64
  %call69 = call noalias ptr @malloc(i64 noundef %conv68) #6
  store ptr %call69, ptr %elem_blk_ids, align 8, !tbaa !8
  %tobool70 = icmp ne ptr %call69, null
  br i1 %tobool70, label %if.end75, label %if.then71

if.then71:                                        ; preds = %if.end67
  %arraydecay72 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %26 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call73 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay72, i64 noundef 256, ptr noundef @.str.5, i32 noundef %26) #5
  %27 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay74 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %27, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay74, i32 noundef 1000)
  br label %error_ret

if.end75:                                         ; preds = %if.end67
  %28 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %29 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !8
  %call76 = call i32 @vtkexodusII_ex_get_ids(i32 noundef %28, i32 noundef 1, ptr noundef %29)
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end75
  %arraydecay80 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %30 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call81 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay80, i64 noundef 256, ptr noundef @.str.6, i32 noundef %30) #5
  %31 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay82 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %31, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay82, i32 noundef -1000)
  br label %error_ret

if.end83:                                         ; preds = %if.end75
  %32 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %conv84 = sext i32 %32 to i64
  %mul85 = mul i64 %conv84, 112
  %call86 = call noalias ptr @malloc(i64 noundef %mul85) #6
  store ptr %call86, ptr %elem_blk_parms, align 8, !tbaa !8
  %tobool87 = icmp ne ptr %call86, null
  br i1 %tobool87, label %if.end92, label %if.then88

if.then88:                                        ; preds = %if.end83
  %arraydecay89 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %33 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call90 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay89, i64 noundef 256, ptr noundef @.str.7, i32 noundef %33) #5
  %34 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay91 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %34, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay91, i32 noundef 1000)
  br label %error_ret

if.end92:                                         ; preds = %if.end83
  store i64 0, ptr %elem_ctr, align 8, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end92
  %35 = load i32, ptr %i, align 4, !tbaa !4
  %36 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %cmp93 = icmp slt i32 %35, %36
  br i1 %cmp93, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #5
  %37 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call95 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %37)
  %and96 = and i32 %call95, 16384
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then98, label %if.else

if.then98:                                        ; preds = %for.body
  %38 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !8
  %39 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds i64, ptr %38, i64 %idxprom
  %40 = load i64, ptr %arrayidx, align 8, !tbaa !10
  store i64 %40, ptr %id, align 8, !tbaa !10
  br label %if.end102

if.else:                                          ; preds = %for.body
  %41 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !8
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom99 = sext i32 %42 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %41, i64 %idxprom99
  %43 = load i32, ptr %arrayidx100, align 4, !tbaa !4
  %conv101 = sext i32 %43 to i64
  store i64 %conv101, ptr %id, align 8, !tbaa !10
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then98
  %44 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %45 = load i64, ptr %id, align 8, !tbaa !10
  %46 = load i32, ptr %ndim, align 4, !tbaa !4
  %47 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !8
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom103 = sext i32 %48 to i64
  %arrayidx104 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %47, i64 %idxprom103
  %call105 = call i32 @vtkexodusII_ex__get_block_param(i32 noundef %44, i64 noundef %45, i32 noundef %46, ptr noundef %arrayidx104)
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end102
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.end102
  %49 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !8
  %50 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom110 = sext i32 %50 to i64
  %arrayidx111 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %49, i64 %idxprom110
  %num_elem_in_blk = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx111, i32 0, i32 2
  %51 = load i64, ptr %num_elem_in_blk, align 8, !tbaa !15
  %52 = load i64, ptr %elem_ctr, align 8, !tbaa !10
  %add = add i64 %52, %51
  store i64 %add, ptr %elem_ctr, align 8, !tbaa !10
  %53 = load i64, ptr %elem_ctr, align 8, !tbaa !10
  %54 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !8
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom112 = sext i32 %55 to i64
  %arrayidx113 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %54, i64 %idxprom112
  %elem_ctr114 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx113, i32 0, i32 7
  store i64 %53, ptr %elem_ctr114, align 8, !tbaa !17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %if.end109
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup303 [
    i32 0, label %cleanup.cont
    i32 14, label %error_ret
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %56 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %57 = load i32, ptr %num_side_sets, align 4, !tbaa !4
  %58 = load i32, ptr %ids_size, align 4, !tbaa !4
  %mul115 = mul nsw i32 %57, %58
  %conv116 = sext i32 %mul115 to i64
  %call117 = call noalias ptr @malloc(i64 noundef %conv116) #6
  store ptr %call117, ptr %side_set_ids, align 8, !tbaa !8
  %tobool118 = icmp ne ptr %call117, null
  br i1 %tobool118, label %if.end123, label %if.then119

if.then119:                                       ; preds = %for.end
  %arraydecay120 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %59 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call121 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay120, i64 noundef 256, ptr noundef @.str.8, i32 noundef %59) #5
  %60 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay122 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %60, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay122, i32 noundef 1000)
  br label %error_ret

if.end123:                                        ; preds = %for.end
  %61 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %62 = load ptr, ptr %side_set_ids, align 8, !tbaa !8
  %call124 = call i32 @vtkexodusII_ex_get_ids(i32 noundef %61, i32 noundef 3, ptr noundef %62)
  %cmp125 = icmp ne i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.end131

if.then127:                                       ; preds = %if.end123
  %arraydecay128 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %63 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call129 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay128, i64 noundef 256, ptr noundef @.str.9, i32 noundef %63) #5
  %64 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay130 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %64, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay130, i32 noundef -1000)
  br label %error_ret

if.end131:                                        ; preds = %if.end123
  store i32 0, ptr %ioff, align 4, !tbaa !4
  store i32 0, ptr %iss, align 4, !tbaa !4
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc292, %if.end131
  %65 = load i32, ptr %iss, align 4, !tbaa !4
  %66 = load i32, ptr %num_side_sets, align 4, !tbaa !4
  %cmp133 = icmp slt i32 %65, %66
  br i1 %cmp133, label %for.body135, label %for.end294

for.body135:                                      ; preds = %for.cond132
  %67 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call136 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %67)
  %and137 = and i32 %call136, 16384
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.then139, label %if.else142

if.then139:                                       ; preds = %for.body135
  %68 = load ptr, ptr %side_set_ids, align 8, !tbaa !8
  %69 = load i32, ptr %iss, align 4, !tbaa !4
  %idxprom140 = sext i32 %69 to i64
  %arrayidx141 = getelementptr inbounds i64, ptr %68, i64 %idxprom140
  %70 = load i64, ptr %arrayidx141, align 8, !tbaa !10
  store i64 %70, ptr %side_set_id, align 8, !tbaa !10
  br label %if.end146

if.else142:                                       ; preds = %for.body135
  %71 = load ptr, ptr %side_set_ids, align 8, !tbaa !8
  %72 = load i32, ptr %iss, align 4, !tbaa !4
  %idxprom143 = sext i32 %72 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %71, i64 %idxprom143
  %73 = load i32, ptr %arrayidx144, align 4, !tbaa !4
  %conv145 = sext i32 %73 to i64
  store i64 %conv145, ptr %side_set_id, align 8, !tbaa !10
  br label %if.end146

if.end146:                                        ; preds = %if.else142, %if.then139
  %74 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv147 = sext i32 %74 to i64
  %cmp148 = icmp eq i64 %conv147, 8
  br i1 %cmp148, label %if.then150, label %if.else152

if.then150:                                       ; preds = %if.end146
  %75 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %76 = load i64, ptr %side_set_id, align 8, !tbaa !10
  %call151 = call i32 @vtkexodusII_ex_get_set_param(i32 noundef %75, i32 noundef 3, i64 noundef %76, ptr noundef %tot_num_ss_elem, ptr noundef %num_df)
  store i32 %call151, ptr %status, align 4, !tbaa !4
  br label %if.end156

if.else152:                                       ; preds = %if.end146
  call void @llvm.lifetime.start.p0(i64 4, ptr %tot) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %df) #5
  %77 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %78 = load i64, ptr %side_set_id, align 8, !tbaa !10
  %call153 = call i32 @vtkexodusII_ex_get_set_param(i32 noundef %77, i32 noundef 3, i64 noundef %78, ptr noundef %tot, ptr noundef %df)
  store i32 %call153, ptr %status, align 4, !tbaa !4
  %79 = load i32, ptr %tot, align 4, !tbaa !4
  %conv154 = sext i32 %79 to i64
  store i64 %conv154, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %80 = load i32, ptr %df, align 4, !tbaa !4
  %conv155 = sext i32 %80 to i64
  store i64 %conv155, ptr %num_df, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %df) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tot) #5
  br label %if.end156

if.end156:                                        ; preds = %if.else152, %if.then150
  %81 = load i32, ptr %status, align 4, !tbaa !4
  %cmp157 = icmp ne i32 %81, 0
  br i1 %cmp157, label %if.then159, label %if.end163

if.then159:                                       ; preds = %if.end156
  %arraydecay160 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %82 = load i64, ptr %side_set_id, align 8, !tbaa !10
  %83 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call161 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay160, i64 noundef 256, ptr noundef @.str.10, i64 noundef %82, i32 noundef %83) #5
  %84 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay162 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %84, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay162, i32 noundef -1003)
  br label %error_ret

if.end163:                                        ; preds = %if.end156
  %85 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %cmp164 = icmp eq i64 %85, 0
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.end163
  br label %for.inc292

if.end167:                                        ; preds = %if.end163
  %86 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %87 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv168 = sext i32 %87 to i64
  %mul169 = mul nsw i64 %86, %conv168
  %call170 = call noalias ptr @malloc(i64 noundef %mul169) #6
  store ptr %call170, ptr %side_set_elem_list, align 8, !tbaa !8
  %tobool171 = icmp ne ptr %call170, null
  br i1 %tobool171, label %if.end176, label %if.then172

if.then172:                                       ; preds = %if.end167
  %arraydecay173 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %88 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call174 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay173, i64 noundef 256, ptr noundef @.str.11, i32 noundef %88) #5
  %89 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay175 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %89, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay175, i32 noundef 1000)
  br label %error_ret

if.end176:                                        ; preds = %if.end167
  %90 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %91 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv177 = sext i32 %91 to i64
  %mul178 = mul nsw i64 %90, %conv177
  %call179 = call noalias ptr @malloc(i64 noundef %mul178) #6
  store ptr %call179, ptr %side_set_side_list, align 8, !tbaa !8
  %tobool180 = icmp ne ptr %call179, null
  br i1 %tobool180, label %if.end185, label %if.then181

if.then181:                                       ; preds = %if.end176
  %arraydecay182 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %92 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call183 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay182, i64 noundef 256, ptr noundef @.str.12, i32 noundef %92) #5
  %93 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay184 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %93, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay184, i32 noundef 1000)
  br label %error_ret

if.end185:                                        ; preds = %if.end176
  %94 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %95 = load i64, ptr %side_set_id, align 8, !tbaa !10
  %96 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  %97 = load ptr, ptr %side_set_side_list, align 8, !tbaa !8
  %call186 = call i32 @vtkexodusII_ex_get_set(i32 noundef %94, i32 noundef 3, i64 noundef %95, ptr noundef %96, ptr noundef %97)
  %cmp187 = icmp ne i32 %call186, 0
  br i1 %cmp187, label %if.then189, label %if.end193

if.then189:                                       ; preds = %if.end185
  %arraydecay190 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %98 = load i64, ptr %side_set_id, align 8, !tbaa !10
  %99 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call191 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay190, i64 noundef 256, ptr noundef @.str.13, i64 noundef %98, i32 noundef %99) #5
  %100 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay192 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %100, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay192, i32 noundef -1003)
  br label %error_ret

if.end193:                                        ; preds = %if.end185
  %101 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %102 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv194 = sext i32 %102 to i64
  %mul195 = mul nsw i64 %101, %conv194
  %call196 = call noalias ptr @malloc(i64 noundef %mul195) #6
  store ptr %call196, ptr %ss_elem_ndx, align 8, !tbaa !8
  %tobool197 = icmp ne ptr %call196, null
  br i1 %tobool197, label %if.end202, label %if.then198

if.then198:                                       ; preds = %if.end193
  %arraydecay199 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %103 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call200 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay199, i64 noundef 256, ptr noundef @.str.14, i32 noundef %103) #5
  %104 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay201 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %104, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay201, i32 noundef 1000)
  br label %error_ret

if.end202:                                        ; preds = %if.end193
  %105 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv203 = sext i32 %105 to i64
  %cmp204 = icmp eq i64 %conv203, 8
  br i1 %cmp204, label %if.then206, label %if.else218

if.then206:                                       ; preds = %if.end202
  call void @llvm.lifetime.start.p0(i64 8, ptr %elems) #5
  %106 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  store ptr %106, ptr %elems, align 8, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc215, %if.then206
  %107 = load i32, ptr %i, align 4, !tbaa !4
  %conv208 = sext i32 %107 to i64
  %108 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %cmp209 = icmp slt i64 %conv208, %108
  br i1 %cmp209, label %for.body211, label %for.end217

for.body211:                                      ; preds = %for.cond207
  %109 = load i32, ptr %i, align 4, !tbaa !4
  %conv212 = sext i32 %109 to i64
  %110 = load ptr, ptr %elems, align 8, !tbaa !8
  %111 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom213 = sext i32 %111 to i64
  %arrayidx214 = getelementptr inbounds i64, ptr %110, i64 %idxprom213
  store i64 %conv212, ptr %arrayidx214, align 8, !tbaa !10
  br label %for.inc215

for.inc215:                                       ; preds = %for.body211
  %112 = load i32, ptr %i, align 4, !tbaa !4
  %inc216 = add nsw i32 %112, 1
  store i32 %inc216, ptr %i, align 4, !tbaa !4
  br label %for.cond207, !llvm.loop !20

for.end217:                                       ; preds = %for.cond207
  %113 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  %114 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  %115 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  call void @vtkexodusII_ex__iqsort64(ptr noundef %113, ptr noundef %114, i64 noundef %115)
  call void @llvm.lifetime.end.p0(i64 8, ptr %elems) #5
  br label %if.end231

if.else218:                                       ; preds = %if.end202
  call void @llvm.lifetime.start.p0(i64 8, ptr %elems219) #5
  %116 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  store ptr %116, ptr %elems219, align 8, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc227, %if.else218
  %117 = load i32, ptr %i, align 4, !tbaa !4
  %conv221 = sext i32 %117 to i64
  %118 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %cmp222 = icmp slt i64 %conv221, %118
  br i1 %cmp222, label %for.body224, label %for.end229

for.body224:                                      ; preds = %for.cond220
  %119 = load i32, ptr %i, align 4, !tbaa !4
  %120 = load ptr, ptr %elems219, align 8, !tbaa !8
  %121 = load i32, ptr %i, align 4, !tbaa !4
  %idxprom225 = sext i32 %121 to i64
  %arrayidx226 = getelementptr inbounds i32, ptr %120, i64 %idxprom225
  store i32 %119, ptr %arrayidx226, align 4, !tbaa !4
  br label %for.inc227

for.inc227:                                       ; preds = %for.body224
  %122 = load i32, ptr %i, align 4, !tbaa !4
  %inc228 = add nsw i32 %122, 1
  store i32 %inc228, ptr %i, align 4, !tbaa !4
  br label %for.cond220, !llvm.loop !21

for.end229:                                       ; preds = %for.cond220
  %123 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  %124 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  %125 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %conv230 = trunc i64 %125 to i32
  call void @vtkexodusII_ex__iqsort(ptr noundef %123, ptr noundef %124, i32 noundef %conv230)
  call void @llvm.lifetime.end.p0(i64 8, ptr %elems219) #5
  br label %if.end231

if.end231:                                        ; preds = %for.end229, %for.end217
  store i32 0, ptr %j, align 4, !tbaa !4
  store i32 0, ptr %ii, align 4, !tbaa !4
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc286, %if.end231
  %126 = load i32, ptr %ii, align 4, !tbaa !4
  %conv233 = sext i32 %126 to i64
  %127 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %cmp234 = icmp slt i64 %conv233, %127
  br i1 %cmp234, label %for.body236, label %for.end288

for.body236:                                      ; preds = %for.cond232
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_ndx) #5
  %128 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call237 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %128)
  %and238 = and i32 %call237, 32768
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %if.then240, label %if.else245

if.then240:                                       ; preds = %for.body236
  %129 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  %130 = load i32, ptr %ii, align 4, !tbaa !4
  %idxprom241 = sext i32 %130 to i64
  %arrayidx242 = getelementptr inbounds i64, ptr %129, i64 %idxprom241
  %131 = load i64, ptr %arrayidx242, align 8, !tbaa !10
  store i64 %131, ptr %elem_ndx, align 8, !tbaa !10
  %132 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  %133 = load i64, ptr %elem_ndx, align 8, !tbaa !10
  %arrayidx243 = getelementptr inbounds i64, ptr %132, i64 %133
  %134 = load i64, ptr %arrayidx243, align 8, !tbaa !10
  store i64 %134, ptr %elem, align 8, !tbaa !10
  %135 = load ptr, ptr %side_set_side_list, align 8, !tbaa !8
  %136 = load i64, ptr %elem_ndx, align 8, !tbaa !10
  %arrayidx244 = getelementptr inbounds i64, ptr %135, i64 %136
  %137 = load i64, ptr %arrayidx244, align 8, !tbaa !10
  %sub = sub nsw i64 %137, 1
  store i64 %sub, ptr %side, align 8, !tbaa !10
  br label %if.end254

if.else245:                                       ; preds = %for.body236
  %138 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  %139 = load i32, ptr %ii, align 4, !tbaa !4
  %idxprom246 = sext i32 %139 to i64
  %arrayidx247 = getelementptr inbounds i32, ptr %138, i64 %idxprom246
  %140 = load i32, ptr %arrayidx247, align 4, !tbaa !4
  %conv248 = sext i32 %140 to i64
  store i64 %conv248, ptr %elem_ndx, align 8, !tbaa !10
  %141 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  %142 = load i64, ptr %elem_ndx, align 8, !tbaa !10
  %arrayidx249 = getelementptr inbounds i32, ptr %141, i64 %142
  %143 = load i32, ptr %arrayidx249, align 4, !tbaa !4
  %conv250 = sext i32 %143 to i64
  store i64 %conv250, ptr %elem, align 8, !tbaa !10
  %144 = load ptr, ptr %side_set_side_list, align 8, !tbaa !8
  %145 = load i64, ptr %elem_ndx, align 8, !tbaa !10
  %arrayidx251 = getelementptr inbounds i32, ptr %144, i64 %145
  %146 = load i32, ptr %arrayidx251, align 4, !tbaa !4
  %sub252 = sub nsw i32 %146, 1
  %conv253 = sext i32 %sub252 to i64
  store i64 %conv253, ptr %side, align 8, !tbaa !10
  br label %if.end254

if.end254:                                        ; preds = %if.else245, %if.then240
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc266, %if.end254
  %147 = load i32, ptr %j, align 4, !tbaa !4
  %148 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %cmp256 = icmp slt i32 %147, %148
  br i1 %cmp256, label %for.body258, label %for.end268

for.body258:                                      ; preds = %for.cond255
  %149 = load i64, ptr %elem, align 8, !tbaa !10
  %150 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !8
  %151 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom259 = sext i32 %151 to i64
  %arrayidx260 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %150, i64 %idxprom259
  %elem_ctr261 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx260, i32 0, i32 7
  %152 = load i64, ptr %elem_ctr261, align 8, !tbaa !17
  %cmp262 = icmp sle i64 %149, %152
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %for.body258
  br label %for.end268

if.end265:                                        ; preds = %for.body258
  br label %for.inc266

for.inc266:                                       ; preds = %if.end265
  %153 = load i32, ptr %j, align 4, !tbaa !4
  %inc267 = add nsw i32 %153, 1
  store i32 %inc267, ptr %j, align 4, !tbaa !4
  br label %for.cond255, !llvm.loop !22

for.end268:                                       ; preds = %if.then264, %for.cond255
  %154 = load i32, ptr %j, align 4, !tbaa !4
  %155 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %cmp269 = icmp slt i32 %154, %155
  br i1 %cmp269, label %if.then271, label %if.else278

if.then271:                                       ; preds = %for.end268
  %156 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !8
  %157 = load i32, ptr %j, align 4, !tbaa !4
  %idxprom272 = sext i32 %157 to i64
  %arrayidx273 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %156, i64 %idxprom272
  %num_nodes_per_side = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx273, i32 0, i32 5
  %158 = load i64, ptr %side, align 8, !tbaa !10
  %arrayidx274 = getelementptr inbounds [6 x i32], ptr %num_nodes_per_side, i64 0, i64 %158
  %159 = load i32, ptr %arrayidx274, align 4, !tbaa !4
  %160 = load ptr, ptr %side_set_node_cnt_list.addr, align 8, !tbaa !8
  %161 = load i64, ptr %elem_ndx, align 8, !tbaa !10
  %162 = load i32, ptr %ioff, align 4, !tbaa !4
  %conv275 = sext i32 %162 to i64
  %add276 = add nsw i64 %161, %conv275
  %arrayidx277 = getelementptr inbounds i32, ptr %160, i64 %add276
  store i32 %159, ptr %arrayidx277, align 4, !tbaa !4
  br label %if.end282

if.else278:                                       ; preds = %for.end268
  %arraydecay279 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %163 = load i64, ptr %elem, align 8, !tbaa !10
  %164 = load i64, ptr %side_set_id, align 8, !tbaa !10
  %165 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call280 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay279, i64 noundef 256, ptr noundef @.str.15, i64 noundef %163, i64 noundef %164, i32 noundef %165) #5
  %166 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay281 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %166, ptr noundef @__func__.vtkexodusII_ex_get_concat_side_set_node_count, ptr noundef %arraydecay281, i32 noundef 1005)
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

if.end282:                                        ; preds = %if.then271
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup283

cleanup283:                                       ; preds = %if.else278, %if.end282
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_ndx) #5
  %cleanup.dest284 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest284, label %cleanup303 [
    i32 0, label %cleanup.cont285
    i32 14, label %error_ret
  ]

cleanup.cont285:                                  ; preds = %cleanup283
  br label %for.inc286

for.inc286:                                       ; preds = %cleanup.cont285
  %167 = load i32, ptr %ii, align 4, !tbaa !4
  %inc287 = add nsw i32 %167, 1
  store i32 %inc287, ptr %ii, align 4, !tbaa !4
  br label %for.cond232, !llvm.loop !23

for.end288:                                       ; preds = %for.cond232
  %168 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  call void @free(ptr noundef %168) #5
  store ptr null, ptr %ss_elem_ndx, align 8, !tbaa !8
  %169 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  call void @free(ptr noundef %169) #5
  store ptr null, ptr %side_set_elem_list, align 8, !tbaa !8
  %170 = load ptr, ptr %side_set_side_list, align 8, !tbaa !8
  call void @free(ptr noundef %170) #5
  store ptr null, ptr %side_set_side_list, align 8, !tbaa !8
  %171 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !10
  %172 = load i32, ptr %ioff, align 4, !tbaa !4
  %conv289 = sext i32 %172 to i64
  %add290 = add nsw i64 %conv289, %171
  %conv291 = trunc i64 %add290 to i32
  store i32 %conv291, ptr %ioff, align 4, !tbaa !4
  br label %for.inc292

for.inc292:                                       ; preds = %for.end288, %if.then166
  %173 = load i32, ptr %iss, align 4, !tbaa !4
  %inc293 = add nsw i32 %173, 1
  store i32 %inc293, ptr %iss, align 4, !tbaa !4
  br label %for.cond132, !llvm.loop !24

for.end294:                                       ; preds = %for.cond132
  %174 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !8
  call void @free(ptr noundef %174) #5
  %175 = load ptr, ptr %side_set_ids, align 8, !tbaa !8
  call void @free(ptr noundef %175) #5
  %176 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  call void @free(ptr noundef %176) #5
  %177 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  call void @free(ptr noundef %177) #5
  %178 = load ptr, ptr %side_set_side_list, align 8, !tbaa !8
  call void @free(ptr noundef %178) #5
  %179 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !8
  call void @free(ptr noundef %179) #5
  br label %do.body295

do.body295:                                       ; preds = %for.end294
  %call296 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

do.cond297:                                       ; No predecessors!
  br label %do.end298

do.end298:                                        ; preds = %do.cond297
  br label %error_ret

error_ret:                                        ; preds = %do.end298, %cleanup283, %cleanup, %if.then198, %if.then189, %if.then181, %if.then172, %if.then159, %if.then127, %if.then119, %if.then88, %if.then79, %if.then71
  %180 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !8
  call void @free(ptr noundef %180) #5
  %181 = load ptr, ptr %side_set_ids, align 8, !tbaa !8
  call void @free(ptr noundef %181) #5
  %182 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !8
  call void @free(ptr noundef %182) #5
  %183 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !8
  call void @free(ptr noundef %183) #5
  %184 = load ptr, ptr %side_set_side_list, align 8, !tbaa !8
  call void @free(ptr noundef %184) #5
  %185 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !8
  call void @free(ptr noundef %185) #5
  br label %do.body299

do.body299:                                       ; preds = %error_ret
  %call300 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

do.cond301:                                       ; No predecessors!
  br label %do.end302

do.end302:                                        ; preds = %do.cond301
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup303

cleanup303:                                       ; preds = %do.end302, %do.body299, %do.body295, %cleanup283, %cleanup, %do.body55, %do.body42, %do.body30, %do.body17, %do.body7
  call void @llvm.lifetime.end.p0(i64 256, ptr %errmsg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_blk_parms) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ids_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %int_size) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_ctr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_set_side_list) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_set_elem_list) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss_elem_ndx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_set_ids) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_blk_ids) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_df) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tot_num_ss_elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tot_num_elem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndim) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_elem_blks) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_side_sets) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_set_id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ioff) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %iss) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #5
  %cleanup.dest328 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest328, label %unreachable [
    i32 0, label %cleanup.cont329
    i32 1, label %cleanup.cont329
  ]

cleanup.cont329:                                  ; preds = %cleanup303, %cleanup303
  %186 = load i32, ptr %retval, align 4
  ret i32 %186

unreachable:                                      ; preds = %cleanup303
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__pthread_first_thread_init() #2

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #2

declare ptr @vtkexodusII_exerrval_get(...) #2

declare void @vtkexodusII_ex__check_valid_file_id(i32 noundef, ptr noundef) #2

declare i64 @vtkexodusII_ex_inquire_int(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef) #2

declare i32 @vtkexodusII_ex_int64_status(i32 noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

declare i32 @vtkexodusII_ex_get_ids(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__get_block_param(i32 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @vtkexodusII_ex_get_set_param(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex_get_set(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__iqsort64(ptr noundef, ptr noundef, i64 noundef) #2

declare void @vtkexodusII_ex__iqsort(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!13 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 260, !5, i64 516}
!14 = !{!13, !5, i64 516}
!15 = !{!16, !11, i64 48}
!16 = !{!"ex__elem_blk_parm", !6, i64 0, !11, i64 40, !11, i64 48, !5, i64 56, !5, i64 60, !6, i64 64, !5, i64 88, !11, i64 96, !6, i64 104}
!17 = !{!16, !11, i64 96}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}

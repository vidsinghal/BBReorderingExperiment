; ModuleID = 'samples/116.bc'
source_filename = "/local-ssd/vtk-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7-build/aidengro/spack-stage-vtk-9.0.3-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_side_set_node_count.c"
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
@__func__.vtkexodusII_ex_get_side_set_node_count = private unnamed_addr constant [39 x i8] c"vtkexodusII_ex_get_side_set_node_count\00", align 1
@.str = private unnamed_addr constant [55 x i8] c"ERROR: failed to get number of side sets in file id %d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Warning: no side sets defined in file id %d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Warning: side set %ld is NULL in file id %d\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"ERROR: failed to locate side set %ld in VAR_SS_IDS array in file id %d\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"ERROR: failed to get number of element blocks in file id %d\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"ERROR: failed to get dimensionality in file id %d\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"ERROR: failed to get number of elements in side set %ld in file id %d\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"ERROR: failed to allocate space for side set element list for file id %d\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"ERROR: failed to allocate space for side set side list for file id %d\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"ERROR: failed to get side set %ld in file id %d\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"ERROR: failed to allocate space for side set elem sort array for file id %d\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"ERROR: failed to allocate space for element block ids for file id %d\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"ERROR: failed to get element block ids in file id %d\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"ERROR: failed to allocate space for element block params for file id %d\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"ERROR: Invalid element number %ld found in side set %ld in file %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_side_set_node_count(i32 noundef %exoid, i64 noundef %side_set_id, ptr noundef %side_set_node_cnt_list) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %side_set_id.addr = alloca i64, align 8
  %side_set_node_cnt_list.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %ii = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %num_side_sets = alloca i32, align 4
  %num_elem_blks = alloca i32, align 4
  %ndim = alloca i32, align 4
  %tot_num_ss_elem = alloca i64, align 8
  %side = alloca i64, align 8
  %elem = alloca i64, align 8
  %elem_blk_ids = alloca ptr, align 8
  %ss_elem_ndx = alloca ptr, align 8
  %side_set_elem_list = alloca ptr, align 8
  %side_set_side_list = alloca ptr, align 8
  %elem_ctr = alloca i64, align 8
  %elem_blk_parms = alloca ptr, align 8
  %errmsg = alloca [256 x i8], align 16
  %err_stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %int_size = alloca i32, align 4
  %err = alloca i32, align 4
  %ss_elem = alloca i64, align 8
  %ss_df = alloca i64, align 8
  %ss_elem83 = alloca i32, align 4
  %ss_df84 = alloca i32, align 4
  %elems = alloca ptr, align 8
  %elems144 = alloca ptr, align 8
  %id = alloca i64, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i64 %side_set_id, ptr %side_set_id.addr, align 8, !tbaa !8
  store ptr %side_set_node_cnt_list, ptr %side_set_node_cnt_list.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_side_sets) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_elem_blks) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndim) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tot_num_ss_elem) #5
  store i64 0, ptr %tot_num_ss_elem, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %side) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_blk_ids) #5
  store ptr null, ptr %elem_blk_ids, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss_elem_ndx) #5
  store ptr null, ptr %ss_elem_ndx, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_set_elem_list) #5
  store ptr null, ptr %side_set_elem_list, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %side_set_side_list) #5
  store ptr null, ptr %side_set_side_list, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_ctr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_blk_parms) #5
  store ptr null, ptr %elem_blk_parms, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 256, ptr %errmsg) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_stat) #5
  store i32 0, ptr %err_stat, align 4, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !10
  %0 = load ptr, ptr @ex_errval, align 8, !tbaa !10
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !12
  %1 = load ptr, ptr @ex_errval, align 8, !tbaa !10
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  call void @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count)
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
  call void @vtkexodusII_ex_err_fn(i32 noundef %6, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay6, i32 noundef -1003)
  br label %do.body7

do.body7:                                         ; preds = %if.then
  %call8 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup269

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
  call void @vtkexodusII_ex_err_fn(i32 noundef %9, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay16, i32 noundef 1)
  br label %do.body17

do.body17:                                        ; preds = %if.then13
  %call18 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup269

do.cond19:                                        ; No predecessors!
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end
  %10 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %11 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %call22 = call i32 @vtkexodusII_ex__id_lkup(i32 noundef %10, i32 noundef 3, i64 noundef %11)
  %cmp23 = icmp sle i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21
  call void @vtkexodusII_ex_get_err(ptr noundef null, ptr noundef null, ptr noundef %status)
  %12 = load i32, ptr %status, align 4, !tbaa !4
  %cmp27 = icmp ne i32 %12, 0
  br i1 %cmp27, label %if.then29, label %if.end48

if.then29:                                        ; preds = %if.end26
  %13 = load i32, ptr %status, align 4, !tbaa !4
  %cmp30 = icmp eq i32 %13, -1006
  br i1 %cmp30, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.then29
  %arraydecay33 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %14 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %15 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call34 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay33, i64 noundef 256, ptr noundef @.str.2, i64 noundef %14, i32 noundef %15) #5
  %16 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %16, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay35, i32 noundef -1006)
  br label %do.body36

do.body36:                                        ; preds = %if.then32
  %call37 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup269

do.cond38:                                        ; No predecessors!
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %if.then29
  %arraydecay41 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %17 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %18 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay41, i64 noundef 256, ptr noundef @.str.3, i64 noundef %17, i32 noundef %18) #5
  %19 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay43 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %20 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %19, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay43, i32 noundef %20)
  br label %do.body44

do.body44:                                        ; preds = %if.end40
  %call45 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup269

do.cond46:                                        ; No predecessors!
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end26
  %21 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call49 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %21, i32 noundef 8)
  %conv50 = trunc i64 %call49 to i32
  store i32 %conv50, ptr %num_elem_blks, align 4, !tbaa !4
  %22 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %cmp51 = icmp slt i32 %22, 0
  br i1 %cmp51, label %if.then53, label %if.end61

if.then53:                                        ; preds = %if.end48
  %arraydecay54 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %23 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call55 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay54, i64 noundef 256, ptr noundef @.str.4, i32 noundef %23) #5
  %24 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay56 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %24, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay56, i32 noundef -1003)
  br label %do.body57

do.body57:                                        ; preds = %if.then53
  %call58 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup269

do.cond59:                                        ; No predecessors!
  br label %do.end60

do.end60:                                         ; preds = %do.cond59
  br label %if.end61

if.end61:                                         ; preds = %do.end60, %if.end48
  %25 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call62 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %25, i32 noundef 5)
  %conv63 = trunc i64 %call62 to i32
  store i32 %conv63, ptr %ndim, align 4, !tbaa !4
  %26 = load i32, ptr %ndim, align 4, !tbaa !4
  %cmp64 = icmp slt i32 %26, 0
  br i1 %cmp64, label %if.then66, label %if.end74

if.then66:                                        ; preds = %if.end61
  %arraydecay67 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %27 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call68 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay67, i64 noundef 256, ptr noundef @.str.5, i32 noundef %27) #5
  %28 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay69 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %28, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay69, i32 noundef -1003)
  br label %do.body70

do.body70:                                        ; preds = %if.then66
  %call71 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup269

do.cond72:                                        ; No predecessors!
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  br label %if.end74

if.end74:                                         ; preds = %do.end73, %if.end61
  call void @llvm.lifetime.start.p0(i64 4, ptr %int_size) #5
  store i32 4, ptr %int_size, align 4, !tbaa !4
  %29 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call75 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %29)
  %and = and i32 %call75, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end74
  store i32 8, ptr %int_size, align 4, !tbaa !4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #5
  %30 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv78 = sext i32 %30 to i64
  %cmp79 = icmp eq i64 %conv78, 8
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.end77
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss_elem) #5
  store i64 0, ptr %ss_elem, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss_df) #5
  store i64 0, ptr %ss_df, align 8, !tbaa !8
  %31 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %32 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %call82 = call i32 @vtkexodusII_ex_get_set_param(i32 noundef %31, i32 noundef 3, i64 noundef %32, ptr noundef %ss_elem, ptr noundef %ss_df)
  store i32 %call82, ptr %err, align 4, !tbaa !4
  %33 = load i64, ptr %ss_elem, align 8, !tbaa !8
  store i64 %33, ptr %tot_num_ss_elem, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss_df) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss_elem) #5
  br label %if.end87

if.else:                                          ; preds = %if.end77
  call void @llvm.lifetime.start.p0(i64 4, ptr %ss_elem83) #5
  store i32 0, ptr %ss_elem83, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ss_df84) #5
  store i32 0, ptr %ss_df84, align 4, !tbaa !4
  %34 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %35 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %call85 = call i32 @vtkexodusII_ex_get_set_param(i32 noundef %34, i32 noundef 3, i64 noundef %35, ptr noundef %ss_elem83, ptr noundef %ss_df84)
  store i32 %call85, ptr %err, align 4, !tbaa !4
  %36 = load i32, ptr %ss_elem83, align 4, !tbaa !4
  %conv86 = sext i32 %36 to i64
  store i64 %conv86, ptr %tot_num_ss_elem, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ss_df84) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ss_elem83) #5
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then81
  %37 = load i32, ptr %err, align 4, !tbaa !4
  %cmp88 = icmp eq i32 %37, -1
  br i1 %cmp88, label %if.then90, label %if.end98

if.then90:                                        ; preds = %if.end87
  %arraydecay91 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %38 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %39 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call92 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay91, i64 noundef 256, ptr noundef @.str.6, i64 noundef %38, i32 noundef %39) #5
  %40 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay93 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %40, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay93, i32 noundef -1003)
  br label %do.body94

do.body94:                                        ; preds = %if.then90
  %call95 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup267

do.cond96:                                        ; No predecessors!
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  br label %if.end98

if.end98:                                         ; preds = %do.end97, %if.end87
  %41 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  %42 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv99 = sext i32 %42 to i64
  %mul = mul i64 %41, %conv99
  %call100 = call noalias ptr @malloc(i64 noundef %mul) #6
  store ptr %call100, ptr %side_set_elem_list, align 8, !tbaa !10
  %tobool101 = icmp ne ptr %call100, null
  br i1 %tobool101, label %if.end110, label %if.then102

if.then102:                                       ; preds = %if.end98
  %arraydecay103 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %43 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call104 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay103, i64 noundef 256, ptr noundef @.str.7, i32 noundef %43) #5
  %44 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay105 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %44, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay105, i32 noundef 1000)
  br label %do.body106

do.body106:                                       ; preds = %if.then102
  %call107 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup267

do.cond108:                                       ; No predecessors!
  br label %do.end109

do.end109:                                        ; preds = %do.cond108
  br label %if.end110

if.end110:                                        ; preds = %do.end109, %if.end98
  %45 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  %46 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv111 = sext i32 %46 to i64
  %mul112 = mul i64 %45, %conv111
  %call113 = call noalias ptr @malloc(i64 noundef %mul112) #6
  store ptr %call113, ptr %side_set_side_list, align 8, !tbaa !10
  %tobool114 = icmp ne ptr %call113, null
  br i1 %tobool114, label %if.end119, label %if.then115

if.then115:                                       ; preds = %if.end110
  %arraydecay116 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %47 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call117 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay116, i64 noundef 256, ptr noundef @.str.8, i32 noundef %47) #5
  %48 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay118 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %48, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay118, i32 noundef 1000)
  store i32 -1, ptr %err_stat, align 4, !tbaa !4
  br label %cleanup262

if.end119:                                        ; preds = %if.end110
  %49 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %50 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %51 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !10
  %52 = load ptr, ptr %side_set_side_list, align 8, !tbaa !10
  %call120 = call i32 @vtkexodusII_ex_get_set(i32 noundef %49, i32 noundef 3, i64 noundef %50, ptr noundef %51, ptr noundef %52)
  %cmp121 = icmp eq i32 %call120, -1
  br i1 %cmp121, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.end119
  %arraydecay124 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %53 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %54 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call125 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay124, i64 noundef 256, ptr noundef @.str.9, i64 noundef %53, i32 noundef %54) #5
  %55 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay126 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %55, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay126, i32 noundef -1003)
  store i32 -1, ptr %err_stat, align 4, !tbaa !4
  br label %cleanup262

if.end127:                                        ; preds = %if.end119
  %56 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  %57 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv128 = sext i32 %57 to i64
  %mul129 = mul i64 %56, %conv128
  %call130 = call noalias ptr @malloc(i64 noundef %mul129) #6
  store ptr %call130, ptr %ss_elem_ndx, align 8, !tbaa !10
  %tobool131 = icmp ne ptr %call130, null
  br i1 %tobool131, label %if.end136, label %if.then132

if.then132:                                       ; preds = %if.end127
  %arraydecay133 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %58 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call134 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay133, i64 noundef 256, ptr noundef @.str.10, i32 noundef %58) #5
  %59 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay135 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %59, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay135, i32 noundef 1000)
  store i32 -1, ptr %err_stat, align 4, !tbaa !4
  br label %cleanup262

if.end136:                                        ; preds = %if.end127
  %60 = load i32, ptr %int_size, align 4, !tbaa !4
  %conv137 = sext i32 %60 to i64
  %cmp138 = icmp eq i64 %conv137, 8
  br i1 %cmp138, label %if.then140, label %if.else143

if.then140:                                       ; preds = %if.end136
  call void @llvm.lifetime.start.p0(i64 8, ptr %elems) #5
  %61 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !10
  store ptr %61, ptr %elems, align 8, !tbaa !10
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then140
  %62 = load i64, ptr %i, align 8, !tbaa !8
  %63 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  %cmp141 = icmp ult i64 %62, %63
  br i1 %cmp141, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i64, ptr %i, align 8, !tbaa !8
  %65 = load ptr, ptr %elems, align 8, !tbaa !10
  %66 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %65, i64 %66
  store i64 %64, ptr %arrayidx, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %67 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %67, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %68 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !10
  %69 = load ptr, ptr %elems, align 8, !tbaa !10
  %70 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  call void @vtkexodusII_ex__iqsort64(ptr noundef %68, ptr noundef %69, i64 noundef %70)
  call void @llvm.lifetime.end.p0(i64 8, ptr %elems) #5
  br label %if.end155

if.else143:                                       ; preds = %if.end136
  call void @llvm.lifetime.start.p0(i64 8, ptr %elems144) #5
  %71 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !10
  store ptr %71, ptr %elems144, align 8, !tbaa !10
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc151, %if.else143
  %72 = load i64, ptr %i, align 8, !tbaa !8
  %73 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  %cmp146 = icmp ult i64 %72, %73
  br i1 %cmp146, label %for.body148, label %for.end153

for.body148:                                      ; preds = %for.cond145
  %74 = load i64, ptr %i, align 8, !tbaa !8
  %conv149 = trunc i64 %74 to i32
  %75 = load ptr, ptr %elems144, align 8, !tbaa !10
  %76 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx150 = getelementptr inbounds i32, ptr %75, i64 %76
  store i32 %conv149, ptr %arrayidx150, align 4, !tbaa !4
  br label %for.inc151

for.inc151:                                       ; preds = %for.body148
  %77 = load i64, ptr %i, align 8, !tbaa !8
  %inc152 = add i64 %77, 1
  store i64 %inc152, ptr %i, align 8, !tbaa !8
  br label %for.cond145, !llvm.loop !17

for.end153:                                       ; preds = %for.cond145
  %78 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !10
  %79 = load ptr, ptr %elems144, align 8, !tbaa !10
  %80 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  %conv154 = trunc i64 %80 to i32
  call void @vtkexodusII_ex__iqsort(ptr noundef %78, ptr noundef %79, i32 noundef %conv154)
  call void @llvm.lifetime.end.p0(i64 8, ptr %elems144) #5
  br label %if.end155

if.end155:                                        ; preds = %for.end153, %for.end
  store i32 4, ptr %int_size, align 4, !tbaa !4
  %81 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call156 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %81)
  %and157 = and i32 %call156, 16384
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end155
  store i32 8, ptr %int_size, align 4, !tbaa !4
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end155
  %82 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %83 = load i32, ptr %int_size, align 4, !tbaa !4
  %mul161 = mul nsw i32 %82, %83
  %conv162 = sext i32 %mul161 to i64
  %call163 = call noalias ptr @malloc(i64 noundef %conv162) #6
  store ptr %call163, ptr %elem_blk_ids, align 8, !tbaa !10
  %tobool164 = icmp ne ptr %call163, null
  br i1 %tobool164, label %if.end169, label %if.then165

if.then165:                                       ; preds = %if.end160
  %arraydecay166 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %84 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call167 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay166, i64 noundef 256, ptr noundef @.str.11, i32 noundef %84) #5
  %85 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay168 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %85, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay168, i32 noundef 1000)
  store i32 -1, ptr %err_stat, align 4, !tbaa !4
  br label %cleanup262

if.end169:                                        ; preds = %if.end160
  %86 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %87 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !10
  %call170 = call i32 @vtkexodusII_ex_get_ids(i32 noundef %86, i32 noundef 1, ptr noundef %87)
  %cmp171 = icmp eq i32 %call170, -1
  br i1 %cmp171, label %if.then173, label %if.end177

if.then173:                                       ; preds = %if.end169
  %arraydecay174 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %88 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call175 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay174, i64 noundef 256, ptr noundef @.str.12, i32 noundef %88) #5
  %89 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay176 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %89, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay176, i32 noundef -1000)
  store i32 -1, ptr %err_stat, align 4, !tbaa !4
  br label %cleanup262

if.end177:                                        ; preds = %if.end169
  %90 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %conv178 = sext i32 %90 to i64
  %mul179 = mul i64 %conv178, 112
  %call180 = call noalias ptr @malloc(i64 noundef %mul179) #6
  store ptr %call180, ptr %elem_blk_parms, align 8, !tbaa !10
  %tobool181 = icmp ne ptr %call180, null
  br i1 %tobool181, label %if.end186, label %if.then182

if.then182:                                       ; preds = %if.end177
  %arraydecay183 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %91 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call184 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay183, i64 noundef 256, ptr noundef @.str.13, i32 noundef %91) #5
  %92 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay185 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %92, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay185, i32 noundef 1000)
  store i32 -1, ptr %err_stat, align 4, !tbaa !4
  br label %cleanup262

if.end186:                                        ; preds = %if.end177
  store i64 0, ptr %elem_ctr, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc210, %if.end186
  %93 = load i64, ptr %i, align 8, !tbaa !8
  %94 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %conv188 = sext i32 %94 to i64
  %cmp189 = icmp ult i64 %93, %conv188
  br i1 %cmp189, label %for.body191, label %for.end212

for.body191:                                      ; preds = %for.cond187
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #5
  %95 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call192 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %95)
  %and193 = and i32 %call192, 16384
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then195, label %if.else197

if.then195:                                       ; preds = %for.body191
  %96 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !10
  %97 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx196 = getelementptr inbounds i64, ptr %96, i64 %97
  %98 = load i64, ptr %arrayidx196, align 8, !tbaa !8
  store i64 %98, ptr %id, align 8, !tbaa !8
  br label %if.end200

if.else197:                                       ; preds = %for.body191
  %99 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !10
  %100 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx198 = getelementptr inbounds i32, ptr %99, i64 %100
  %101 = load i32, ptr %arrayidx198, align 4, !tbaa !4
  %conv199 = sext i32 %101 to i64
  store i64 %conv199, ptr %id, align 8, !tbaa !8
  br label %if.end200

if.end200:                                        ; preds = %if.else197, %if.then195
  %102 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %103 = load i64, ptr %id, align 8, !tbaa !8
  %104 = load i32, ptr %ndim, align 4, !tbaa !4
  %105 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !10
  %106 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx201 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %105, i64 %106
  %call202 = call i32 @vtkexodusII_ex__get_block_param(i32 noundef %102, i64 noundef %103, i32 noundef %104, ptr noundef %arrayidx201)
  store i32 %call202, ptr %err_stat, align 4, !tbaa !4
  %107 = load i32, ptr %err_stat, align 4, !tbaa !4
  %cmp203 = icmp ne i32 %107, 0
  br i1 %cmp203, label %if.then205, label %if.end206

if.then205:                                       ; preds = %if.end200
  store i32 20, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end206:                                        ; preds = %if.end200
  %108 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !10
  %109 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx207 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %108, i64 %109
  %num_elem_in_blk = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx207, i32 0, i32 2
  %110 = load i64, ptr %num_elem_in_blk, align 8, !tbaa !18
  %111 = load i64, ptr %elem_ctr, align 8, !tbaa !8
  %add = add i64 %111, %110
  store i64 %add, ptr %elem_ctr, align 8, !tbaa !8
  %112 = load i64, ptr %elem_ctr, align 8, !tbaa !8
  %113 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !10
  %114 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx208 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %113, i64 %114
  %elem_ctr209 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx208, i32 0, i32 7
  store i64 %112, ptr %elem_ctr209, align 8, !tbaa !20
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then205, %if.end206
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup267 [
    i32 0, label %cleanup.cont
    i32 20, label %cleanup262
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc210

for.inc210:                                       ; preds = %cleanup.cont
  %115 = load i64, ptr %i, align 8, !tbaa !8
  %inc211 = add i64 %115, 1
  store i64 %inc211, ptr %i, align 8, !tbaa !8
  br label %for.cond187, !llvm.loop !21

for.end212:                                       ; preds = %for.cond187
  store i64 0, ptr %j, align 8, !tbaa !8
  store i64 0, ptr %ii, align 8, !tbaa !8
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc259, %for.end212
  %116 = load i64, ptr %ii, align 8, !tbaa !8
  %117 = load i64, ptr %tot_num_ss_elem, align 8, !tbaa !8
  %cmp214 = icmp ult i64 %116, %117
  br i1 %cmp214, label %for.body216, label %for.end261

for.body216:                                      ; preds = %for.cond213
  %118 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call217 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %118)
  %and218 = and i32 %call217, 32768
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %if.then220, label %if.else224

if.then220:                                       ; preds = %for.body216
  %119 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !10
  %120 = load i64, ptr %ii, align 8, !tbaa !8
  %arrayidx221 = getelementptr inbounds i64, ptr %119, i64 %120
  %121 = load i64, ptr %arrayidx221, align 8, !tbaa !8
  store i64 %121, ptr %i, align 8, !tbaa !8
  %122 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !10
  %123 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx222 = getelementptr inbounds i64, ptr %122, i64 %123
  %124 = load i64, ptr %arrayidx222, align 8, !tbaa !8
  store i64 %124, ptr %elem, align 8, !tbaa !8
  %125 = load ptr, ptr %side_set_side_list, align 8, !tbaa !10
  %126 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx223 = getelementptr inbounds i64, ptr %125, i64 %126
  %127 = load i64, ptr %arrayidx223, align 8, !tbaa !8
  %sub = sub nsw i64 %127, 1
  store i64 %sub, ptr %side, align 8, !tbaa !8
  br label %if.end232

if.else224:                                       ; preds = %for.body216
  %128 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !10
  %129 = load i64, ptr %ii, align 8, !tbaa !8
  %arrayidx225 = getelementptr inbounds i32, ptr %128, i64 %129
  %130 = load i32, ptr %arrayidx225, align 4, !tbaa !4
  %conv226 = sext i32 %130 to i64
  store i64 %conv226, ptr %i, align 8, !tbaa !8
  %131 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !10
  %132 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx227 = getelementptr inbounds i32, ptr %131, i64 %132
  %133 = load i32, ptr %arrayidx227, align 4, !tbaa !4
  %conv228 = sext i32 %133 to i64
  store i64 %conv228, ptr %elem, align 8, !tbaa !8
  %134 = load ptr, ptr %side_set_side_list, align 8, !tbaa !10
  %135 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx229 = getelementptr inbounds i32, ptr %134, i64 %135
  %136 = load i32, ptr %arrayidx229, align 4, !tbaa !4
  %sub230 = sub nsw i32 %136, 1
  %conv231 = sext i32 %sub230 to i64
  store i64 %conv231, ptr %side, align 8, !tbaa !8
  br label %if.end232

if.end232:                                        ; preds = %if.else224, %if.then220
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc244, %if.end232
  %137 = load i64, ptr %j, align 8, !tbaa !8
  %138 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %conv234 = sext i32 %138 to i64
  %cmp235 = icmp ult i64 %137, %conv234
  br i1 %cmp235, label %for.body237, label %for.end246

for.body237:                                      ; preds = %for.cond233
  %139 = load i64, ptr %elem, align 8, !tbaa !8
  %140 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !10
  %141 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx238 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %140, i64 %141
  %elem_ctr239 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx238, i32 0, i32 7
  %142 = load i64, ptr %elem_ctr239, align 8, !tbaa !20
  %cmp240 = icmp sle i64 %139, %142
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %for.body237
  br label %for.end246

if.end243:                                        ; preds = %for.body237
  br label %for.inc244

for.inc244:                                       ; preds = %if.end243
  %143 = load i64, ptr %j, align 8, !tbaa !8
  %inc245 = add i64 %143, 1
  store i64 %inc245, ptr %j, align 8, !tbaa !8
  br label %for.cond233, !llvm.loop !22

for.end246:                                       ; preds = %if.then242, %for.cond233
  %144 = load i64, ptr %j, align 8, !tbaa !8
  %145 = load i32, ptr %num_elem_blks, align 4, !tbaa !4
  %conv247 = sext i32 %145 to i64
  %cmp248 = icmp ult i64 %144, %conv247
  br i1 %cmp248, label %if.then250, label %if.else254

if.then250:                                       ; preds = %for.end246
  %146 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !10
  %147 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx251 = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %146, i64 %147
  %num_nodes_per_side = getelementptr inbounds %struct.ex__elem_blk_parm, ptr %arrayidx251, i32 0, i32 5
  %148 = load i64, ptr %side, align 8, !tbaa !8
  %arrayidx252 = getelementptr inbounds [6 x i32], ptr %num_nodes_per_side, i64 0, i64 %148
  %149 = load i32, ptr %arrayidx252, align 4, !tbaa !4
  %150 = load ptr, ptr %side_set_node_cnt_list.addr, align 8, !tbaa !10
  %151 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx253 = getelementptr inbounds i32, ptr %150, i64 %151
  store i32 %149, ptr %arrayidx253, align 4, !tbaa !4
  br label %if.end258

if.else254:                                       ; preds = %for.end246
  %arraydecay255 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %152 = load i64, ptr %elem, align 8, !tbaa !8
  %153 = load i64, ptr %side_set_id.addr, align 8, !tbaa !8
  %154 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call256 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay255, i64 noundef 256, ptr noundef @.str.14, i64 noundef %152, i64 noundef %153, i32 noundef %154) #5
  %155 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay257 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %155, ptr noundef @__func__.vtkexodusII_ex_get_side_set_node_count, ptr noundef %arraydecay257, i32 noundef 1005)
  store i32 -1, ptr %err_stat, align 4, !tbaa !4
  br label %cleanup262

if.end258:                                        ; preds = %if.then250
  br label %for.inc259

for.inc259:                                       ; preds = %if.end258
  %156 = load i64, ptr %ii, align 8, !tbaa !8
  %inc260 = add i64 %156, 1
  store i64 %inc260, ptr %ii, align 8, !tbaa !8
  br label %for.cond213, !llvm.loop !23

for.end261:                                       ; preds = %for.cond213
  br label %cleanup262

cleanup262:                                       ; preds = %for.end261, %cleanup, %if.else254, %if.then182, %if.then173, %if.then165, %if.then132, %if.then123, %if.then115
  %157 = load ptr, ptr %elem_blk_ids, align 8, !tbaa !10
  call void @free(ptr noundef %157) #5
  %158 = load ptr, ptr %elem_blk_parms, align 8, !tbaa !10
  call void @free(ptr noundef %158) #5
  %159 = load ptr, ptr %ss_elem_ndx, align 8, !tbaa !10
  call void @free(ptr noundef %159) #5
  %160 = load ptr, ptr %side_set_side_list, align 8, !tbaa !10
  call void @free(ptr noundef %160) #5
  %161 = load ptr, ptr %side_set_elem_list, align 8, !tbaa !10
  call void @free(ptr noundef %161) #5
  br label %do.body263

do.body263:                                       ; preds = %cleanup262
  %call264 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  %162 = load i32, ptr %err_stat, align 4, !tbaa !4
  store i32 %162, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup267

do.cond265:                                       ; No predecessors!
  br label %do.end266

do.end266:                                        ; preds = %do.cond265
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup267

cleanup267:                                       ; preds = %do.end266, %do.body263, %cleanup, %do.body106, %do.body94
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %int_size) #5
  br label %cleanup269

cleanup269:                                       ; preds = %cleanup267, %do.body70, %do.body57, %do.body44, %do.body36, %do.body17, %do.body7
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_stat) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %errmsg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_blk_parms) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_ctr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_set_side_list) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side_set_elem_list) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss_elem_ndx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_blk_ids) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %side) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tot_num_ss_elem) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndim) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_elem_blks) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_side_sets) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %cleanup.dest287 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest287, label %unreachable [
    i32 0, label %cleanup.cont288
    i32 1, label %cleanup.cont288
  ]

cleanup.cont288:                                  ; preds = %cleanup269, %cleanup269
  %163 = load i32, ptr %retval, align 4
  ret i32 %163

unreachable:                                      ; preds = %cleanup269
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

declare i32 @vtkexodusII_ex__id_lkup(i32 noundef, i32 noundef, i64 noundef) #2

declare void @vtkexodusII_ex_get_err(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex_int64_status(i32 noundef) #2

declare i32 @vtkexodusII_ex_get_set_param(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

declare i32 @vtkexodusII_ex_get_set(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__iqsort64(ptr noundef, ptr noundef, i64 noundef) #2

declare void @vtkexodusII_ex__iqsort(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex_get_ids(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__get_block_param(i32 noundef, i64 noundef, i32 noundef, ptr noundef) #2

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 260, !5, i64 516}
!14 = !{!13, !5, i64 516}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !9, i64 48}
!19 = !{!"ex__elem_blk_parm", !6, i64 0, !9, i64 40, !9, i64 48, !5, i64 56, !5, i64 60, !6, i64 64, !5, i64 88, !9, i64 96, !6, i64 104}
!20 = !{!19, !9, i64 96}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}

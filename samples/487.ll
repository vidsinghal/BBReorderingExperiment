; ModuleID = 'samples/487.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_add_attr.c"
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
@__func__.vtkexodusII_ex_add_attr = private unnamed_addr constant [24 x i8] c"vtkexodusII_ex_add_attr\00", align 1
@.str = private unnamed_addr constant [59 x i8] c"Warning: no attributes found for NULL %s %ld in file id %d\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Warning: failed to locate %s id %ld in id array in file id %d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"num_side_ss\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"num_att_in_ss\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ssattrb\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ssattrib_name\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"num_nod_ns\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"num_att_in_ns\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"nsattrb\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"nsattrib_name\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"num_edge_es\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"num_att_in_es\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"esattrb\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"esattrib_name\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"num_face_fs\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"num_att_in_fs\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"fsattrb\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"fsattrib_name\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"num_ele_els\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"num_att_in_els\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"elsattrb\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"elsattrib_name\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"num_nodes\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"num_att_in_nblk\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"nattrb\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"nattrib_name\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"num_ed_in_blk\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"num_att_in_eblk\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"eattrb\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"eattrib_name\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"num_fa_in_blk\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"num_att_in_fblk\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"fattrb\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"fattrib_name\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"num_el_in_blk\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"num_att_in_blk\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"attrib_name\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"ERROR: Bad block type (%d) specified for file id %d\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"ERROR: failed to place file id %d into define mode\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"ERROR: failed to define number of attributes in %s %ld in file id %d\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"ERROR:  failed to define attributes for %s %ld in file id %d\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"len_name\00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"ERROR: failed to get string length in file id %d\00", align 1
@.str.44 = private unnamed_addr constant [62 x i8] c"ERROR: failed to define %s attribute name array in file id %d\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_add_attr(i32 noundef %exoid, i32 noundef %obj_type, i64 noundef %obj_id, i64 noundef %num_attr_per_entry) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %obj_id.addr = alloca i64, align 8
  %num_attr_per_entry.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %dims = alloca [2 x i32], align 4
  %strdim = alloca i32, align 4
  %varid = alloca i32, align 4
  %att_name_varid = alloca i32, align 4
  %num_obj = alloca i64, align 8
  %errmsg = alloca [512 x i8], align 16
  %dnumobjent = alloca ptr, align 8
  %dnumobjatt = alloca ptr, align 8
  %vobjatt = alloca ptr, align 8
  %vattnam = alloca ptr, align 8
  %numobjentdim = alloca i32, align 4
  %obj_id_ndx = alloca i32, align 4
  %numattrdim = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %count = alloca [2 x i64], align 16
  %start = alloca [2 x i64], align 16
  %text = alloca ptr, align 8
  %i = alloca i64, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store i64 %obj_id, ptr %obj_id.addr, align 8, !tbaa !9
  store i64 %num_attr_per_entry, ptr %num_attr_per_entry.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dims) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %strdim) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %att_name_varid) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_obj) #5
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dnumobjent) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dnumobjatt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %vobjatt) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %vattnam) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %numobjentdim) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %obj_id_ndx) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %numattrdim) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @vtkexodusII_EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @vtkexodusII_EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @vtkexodusII_ex_errval, align 8, !tbaa !11
  %0 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !11
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !13
  %1 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !11
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call3 = call i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_add_attr)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 29)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond6:                                         ; No predecessors!
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %3 = load i64, ptr %num_attr_per_entry.addr, align 8, !tbaa !9
  %cmp8 = icmp sle i64 %3, 0
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %call11 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 33)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond12:                                        ; No predecessors!
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %if.end
  %4 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %4, 14
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  store i32 0, ptr %obj_id_ndx, align 4, !tbaa !4
  br label %if.end42

if.else:                                          ; preds = %if.end14
  %5 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %6 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %7 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %call17 = call i32 @vtkexodusII_ex__id_lkup(i32 noundef %5, i32 noundef %6, i64 noundef %7)
  store i32 %call17, ptr %obj_id_ndx, align 4, !tbaa !4
  %8 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %cmp18 = icmp sle i32 %8, 0
  br i1 %cmp18, label %if.then19, label %if.end41

if.then19:                                        ; preds = %if.else
  call void @vtkexodusII_ex_get_err(ptr noundef null, ptr noundef null, ptr noundef %status)
  %9 = load i32, ptr %status, align 4, !tbaa !4
  %cmp20 = icmp ne i32 %9, 0
  br i1 %cmp20, label %if.then21, label %if.end40

if.then21:                                        ; preds = %if.then19
  %10 = load i32, ptr %status, align 4, !tbaa !4
  %cmp22 = icmp eq i32 %10, -1006
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.then21
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %11 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call24 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %11)
  %12 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %13 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str, ptr noundef %call24, i64 noundef %12, i32 noundef %13) #5
  %14 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay26 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %14, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay26, i32 noundef -1006)
  br label %do.body27

do.body27:                                        ; preds = %if.then23
  %call28 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 51)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond29:                                        ; No predecessors!
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %if.then21
  %arraydecay32 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %15 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call33 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %15)
  %16 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %17 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call34 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay32, i64 noundef 512, ptr noundef @.str.1, ptr noundef %call33, i64 noundef %16, i32 noundef %17) #5
  %18 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay35 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %19 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %18, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay35, i32 noundef %19)
  br label %do.body36

do.body36:                                        ; preds = %if.end31
  %call37 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 57)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond38:                                        ; No predecessors!
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %if.then19
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.else
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then16
  %20 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  switch i32 %20, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb47
    i32 7, label %sw.bb52
    i32 9, label %sw.bb57
    i32 10, label %sw.bb62
    i32 14, label %sw.bb67
    i32 6, label %sw.bb68
    i32 8, label %sw.bb73
    i32 1, label %sw.bb78
  ]

sw.bb:                                            ; preds = %if.end42
  %21 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call43 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.2, i32 noundef %21)
  store ptr %call43, ptr %dnumobjent, align 8, !tbaa !11
  %22 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call44 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.3, i32 noundef %22)
  store ptr %call44, ptr %dnumobjatt, align 8, !tbaa !11
  %23 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call45 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.4, i32 noundef %23)
  store ptr %call45, ptr %vobjatt, align 8, !tbaa !11
  %24 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call46 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.5, i32 noundef %24)
  store ptr %call46, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end42
  %25 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call48 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.6, i32 noundef %25)
  store ptr %call48, ptr %dnumobjent, align 8, !tbaa !11
  %26 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call49 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.7, i32 noundef %26)
  store ptr %call49, ptr %dnumobjatt, align 8, !tbaa !11
  %27 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call50 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.8, i32 noundef %27)
  store ptr %call50, ptr %vobjatt, align 8, !tbaa !11
  %28 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call51 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.9, i32 noundef %28)
  store ptr %call51, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end42
  %29 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call53 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.10, i32 noundef %29)
  store ptr %call53, ptr %dnumobjent, align 8, !tbaa !11
  %30 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call54 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.11, i32 noundef %30)
  store ptr %call54, ptr %dnumobjatt, align 8, !tbaa !11
  %31 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call55 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.12, i32 noundef %31)
  store ptr %call55, ptr %vobjatt, align 8, !tbaa !11
  %32 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call56 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.13, i32 noundef %32)
  store ptr %call56, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end42
  %33 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call58 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.14, i32 noundef %33)
  store ptr %call58, ptr %dnumobjent, align 8, !tbaa !11
  %34 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call59 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.15, i32 noundef %34)
  store ptr %call59, ptr %dnumobjatt, align 8, !tbaa !11
  %35 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call60 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.16, i32 noundef %35)
  store ptr %call60, ptr %vobjatt, align 8, !tbaa !11
  %36 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call61 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.17, i32 noundef %36)
  store ptr %call61, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end42
  %37 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call63 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.18, i32 noundef %37)
  store ptr %call63, ptr %dnumobjent, align 8, !tbaa !11
  %38 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call64 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.19, i32 noundef %38)
  store ptr %call64, ptr %dnumobjatt, align 8, !tbaa !11
  %39 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call65 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.20, i32 noundef %39)
  store ptr %call65, ptr %vobjatt, align 8, !tbaa !11
  %40 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call66 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.21, i32 noundef %40)
  store ptr %call66, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end42
  store ptr @.str.22, ptr %dnumobjent, align 8, !tbaa !11
  store ptr @.str.23, ptr %dnumobjatt, align 8, !tbaa !11
  store ptr @.str.24, ptr %vobjatt, align 8, !tbaa !11
  store ptr @.str.25, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end42
  %41 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call69 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.26, i32 noundef %41)
  store ptr %call69, ptr %dnumobjent, align 8, !tbaa !11
  %42 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call70 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.27, i32 noundef %42)
  store ptr %call70, ptr %dnumobjatt, align 8, !tbaa !11
  %43 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call71 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.28, i32 noundef %43)
  store ptr %call71, ptr %vobjatt, align 8, !tbaa !11
  %44 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call72 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.29, i32 noundef %44)
  store ptr %call72, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end42
  %45 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call74 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.30, i32 noundef %45)
  store ptr %call74, ptr %dnumobjent, align 8, !tbaa !11
  %46 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call75 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.31, i32 noundef %46)
  store ptr %call75, ptr %dnumobjatt, align 8, !tbaa !11
  %47 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call76 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.32, i32 noundef %47)
  store ptr %call76, ptr %vobjatt, align 8, !tbaa !11
  %48 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call77 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.33, i32 noundef %48)
  store ptr %call77, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end42
  %49 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call79 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.34, i32 noundef %49)
  store ptr %call79, ptr %dnumobjent, align 8, !tbaa !11
  %50 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call80 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.35, i32 noundef %50)
  store ptr %call80, ptr %dnumobjatt, align 8, !tbaa !11
  %51 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call81 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.36, i32 noundef %51)
  store ptr %call81, ptr %vobjatt, align 8, !tbaa !11
  %52 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call82 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.37, i32 noundef %52)
  store ptr %call82, ptr %vattnam, align 8, !tbaa !11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end42
  %arraydecay83 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %53 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %54 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call84 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay83, i64 noundef 512, ptr noundef @.str.38, i32 noundef %53, i32 noundef %54) #5
  %55 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay85 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %55, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay85, i32 noundef 1005)
  br label %do.body86

do.body86:                                        ; preds = %sw.default
  %call87 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 121)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond88:                                        ; No predecessors!
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end89, %sw.bb78, %sw.bb73, %sw.bb68, %sw.bb67, %sw.bb62, %sw.bb57, %sw.bb52, %sw.bb47, %sw.bb
  %56 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call90 = call i32 @nc_redef(i32 noundef %56)
  store i32 %call90, ptr %status, align 4, !tbaa !4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end100

if.then92:                                        ; preds = %sw.epilog
  %arraydecay93 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %57 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call94 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay93, i64 noundef 512, ptr noundef @.str.39, i32 noundef %57) #5
  %58 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay95 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %59 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %58, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay95, i32 noundef %59)
  br label %do.body96

do.body96:                                        ; preds = %if.then92
  %call97 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 129)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond98:                                        ; No predecessors!
  br label %do.end99

do.end99:                                         ; preds = %do.cond98
  br label %if.end100

if.end100:                                        ; preds = %do.end99, %sw.epilog
  %60 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %61 = load ptr, ptr %dnumobjatt, align 8, !tbaa !11
  %62 = load i64, ptr %num_attr_per_entry.addr, align 8, !tbaa !9
  %call101 = call i32 @nc_def_dim(i32 noundef %60, ptr noundef %61, i64 noundef %62, ptr noundef %numattrdim)
  store i32 %call101, ptr %status, align 4, !tbaa !4
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then103, label %if.end108

if.then103:                                       ; preds = %if.end100
  %arraydecay104 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %63 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call105 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %63)
  %64 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %65 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call106 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay104, i64 noundef 512, ptr noundef @.str.40, ptr noundef %call105, i64 noundef %64, i32 noundef %65) #5
  %66 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay107 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %67 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %66, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay107, i32 noundef %67)
  br label %error_ret

if.end108:                                        ; preds = %if.end100
  %68 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %69 = load ptr, ptr %dnumobjent, align 8, !tbaa !11
  %70 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call109 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %70)
  %call110 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %68, ptr noundef %69, ptr noundef %call109, ptr noundef %num_obj, ptr noundef %numobjentdim, ptr noundef @__func__.vtkexodusII_ex_add_attr)
  %71 = load i32, ptr %numobjentdim, align 4, !tbaa !4
  %arrayidx = getelementptr inbounds [2 x i32], ptr %dims, i64 0, i64 0
  store i32 %71, ptr %arrayidx, align 4, !tbaa !4
  %72 = load i32, ptr %numattrdim, align 4, !tbaa !4
  %arrayidx111 = getelementptr inbounds [2 x i32], ptr %dims, i64 0, i64 1
  store i32 %72, ptr %arrayidx111, align 4, !tbaa !4
  %73 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %74 = load ptr, ptr %vobjatt, align 8, !tbaa !11
  %75 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call112 = call i32 @vtkexodusII_nc_flt_code(i32 noundef %75)
  %arraydecay113 = getelementptr inbounds [2 x i32], ptr %dims, i64 0, i64 0
  %call114 = call i32 @nc_def_var(i32 noundef %73, ptr noundef %74, i32 noundef %call112, i32 noundef 2, ptr noundef %arraydecay113, ptr noundef %varid)
  store i32 %call114, ptr %status, align 4, !tbaa !4
  %cmp115 = icmp ne i32 %call114, 0
  br i1 %cmp115, label %if.then116, label %if.end121

if.then116:                                       ; preds = %if.end108
  %arraydecay117 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %76 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call118 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %76)
  %77 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %78 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call119 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay117, i64 noundef 512, ptr noundef @.str.41, ptr noundef %call118, i64 noundef %77, i32 noundef %78) #5
  %79 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay120 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %80 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %79, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay120, i32 noundef %80)
  br label %error_ret

if.end121:                                        ; preds = %if.end108
  %81 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %82 = load i32, ptr %varid, align 4, !tbaa !4
  call void @vtkexodusII_ex__compress_variable(i32 noundef %81, i32 noundef %82, i32 noundef 2)
  %83 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call122 = call i32 @nc_inq_dimid(i32 noundef %83, ptr noundef @.str.42, ptr noundef %strdim)
  store i32 %call122, ptr %status, align 4, !tbaa !4
  %cmp123 = icmp ne i32 %call122, 0
  br i1 %cmp123, label %if.then124, label %if.end132

if.then124:                                       ; preds = %if.end121
  %arraydecay125 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %84 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call126 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay125, i64 noundef 512, ptr noundef @.str.43, i32 noundef %84) #5
  %85 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay127 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %86 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %85, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay127, i32 noundef %86)
  br label %do.body128

do.body128:                                       ; preds = %if.then124
  %call129 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 158)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond130:                                       ; No predecessors!
  br label %do.end131

do.end131:                                        ; preds = %do.cond130
  br label %if.end132

if.end132:                                        ; preds = %do.end131, %if.end121
  %87 = load i32, ptr %numattrdim, align 4, !tbaa !4
  %arrayidx133 = getelementptr inbounds [2 x i32], ptr %dims, i64 0, i64 0
  store i32 %87, ptr %arrayidx133, align 4, !tbaa !4
  %88 = load i32, ptr %strdim, align 4, !tbaa !4
  %arrayidx134 = getelementptr inbounds [2 x i32], ptr %dims, i64 0, i64 1
  store i32 %88, ptr %arrayidx134, align 4, !tbaa !4
  %89 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %90 = load ptr, ptr %vattnam, align 8, !tbaa !11
  %arraydecay135 = getelementptr inbounds [2 x i32], ptr %dims, i64 0, i64 0
  %call136 = call i32 @nc_def_var(i32 noundef %89, ptr noundef %90, i32 noundef 2, i32 noundef 2, ptr noundef %arraydecay135, ptr noundef %att_name_varid)
  store i32 %call136, ptr %status, align 4, !tbaa !4
  %cmp137 = icmp ne i32 %call136, 0
  br i1 %cmp137, label %if.then138, label %if.end143

if.then138:                                       ; preds = %if.end132
  %arraydecay139 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %91 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call140 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %91)
  %92 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call141 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay139, i64 noundef 512, ptr noundef @.str.44, ptr noundef %call140, i32 noundef %92) #5
  %93 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay142 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %94 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %93, ptr noundef @__func__.vtkexodusII_ex_add_attr, ptr noundef %arraydecay142, i32 noundef %94)
  br label %error_ret

if.end143:                                        ; preds = %if.end132
  %95 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call144 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %95, ptr noundef @__func__.vtkexodusII_ex_add_attr)
  store i32 %call144, ptr %status, align 4, !tbaa !4
  %cmp145 = icmp ne i32 %call144, 0
  br i1 %cmp145, label %if.then146, label %if.end151

if.then146:                                       ; preds = %if.end143
  br label %do.body147

do.body147:                                       ; preds = %if.then146
  %call148 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 176)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond149:                                       ; No predecessors!
  br label %do.end150

do.end150:                                        ; preds = %do.cond149
  br label %if.end151

if.end151:                                        ; preds = %do.end150, %if.end143
  %96 = load i32, ptr %att_name_varid, align 4, !tbaa !4
  %cmp152 = icmp sge i32 %96, 0
  br i1 %cmp152, label %if.then153, label %if.end163

if.then153:                                       ; preds = %if.end151
  call void @llvm.lifetime.start.p0(i64 16, ptr %count) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %start) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %text) #5
  store ptr @.str.45, ptr %text, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  %arrayidx154 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  store i64 1, ptr %arrayidx154, align 16, !tbaa !9
  %arrayidx155 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 1
  store i64 0, ptr %arrayidx155, align 8, !tbaa !9
  %97 = load ptr, ptr %text, align 8, !tbaa !11
  %call156 = call i64 @strlen(ptr noundef %97) #6
  %add = add i64 %call156, 1
  %arrayidx157 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 1
  store i64 %add, ptr %arrayidx157, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then153
  %98 = load i64, ptr %i, align 8, !tbaa !9
  %99 = load i64, ptr %num_attr_per_entry.addr, align 8, !tbaa !9
  %cmp158 = icmp ult i64 %98, %99
  br i1 %cmp158, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %100 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx159 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  store i64 %100, ptr %arrayidx159, align 16, !tbaa !9
  %101 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %102 = load i32, ptr %att_name_varid, align 4, !tbaa !4
  %arraydecay160 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  %arraydecay161 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %103 = load ptr, ptr %text, align 8, !tbaa !11
  %call162 = call i32 @nc_put_vara_text(i32 noundef %101, i32 noundef %102, ptr noundef %arraydecay160, ptr noundef %arraydecay161, ptr noundef %103)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load i64, ptr %i, align 8, !tbaa !9
  %inc = add i64 %104, 1
  store i64 %inc, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %text) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %start) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %count) #5
  br label %if.end163

if.end163:                                        ; preds = %for.end, %if.end151
  br label %do.body164

do.body164:                                       ; preds = %if.end163
  %call165 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 198)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond166:                                       ; No predecessors!
  br label %do.end167

do.end167:                                        ; preds = %do.cond166
  br label %error_ret

error_ret:                                        ; preds = %do.end167, %if.then138, %if.then116, %if.then103
  %105 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call168 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %105, ptr noundef @__func__.vtkexodusII_ex_add_attr)
  br label %do.body169

do.body169:                                       ; preds = %error_ret
  %call170 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_add_attr, i32 noundef 203)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond171:                                       ; No predecessors!
  br label %do.end172

do.end172:                                        ; preds = %do.cond171
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end172, %do.body169, %do.body164, %do.body147, %do.body128, %do.body96, %do.body86, %do.body36, %do.body27, %do.body10, %do.body4
  call void @llvm.lifetime.end.p0(i64 4, ptr %numattrdim) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %obj_id_ndx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %numobjentdim) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %vattnam) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %vobjatt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dnumobjatt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dnumobjent) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_obj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %att_name_varid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %strdim) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dims) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %106 = load i32, ptr %retval, align 4
  ret i32 %106

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__pthread_first_thread_init() #2

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #2

declare ptr @vtkexodusII_exerrval_get(...) #2

declare i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__id_lkup(i32 noundef, i32 noundef, i64 noundef) #2

declare void @vtkexodusII_ex_get_err(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare ptr @vtkexodusII_ex_name_of_object(i32 noundef) #2

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @vtkexodusII_ex__catstr(ptr noundef, i32 noundef) #2

declare i32 @nc_redef(i32 noundef) #2

declare i32 @nc_def_dim(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__get_dimension(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_def_var(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_nc_flt_code(i32 noundef) #2

declare void @vtkexodusII_ex__compress_variable(i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @nc_inq_dimid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__leavedef(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @nc_put_vara_text(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 516, !5, i64 1028}
!15 = !{!14, !5, i64 1028}

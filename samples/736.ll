; ModuleID = 'samples/736.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_open_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EX_mutex_struct = type { %union.pthread_mutex_t, %union.pthread_mutexattr_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.ncvar = type { [32 x i8], i32, i32, [1024 x i32], i32 }
%struct.EX_errval = type { i32, [512 x i8], [512 x i8], i32 }

@vtkexodusII_EX_first_init_g = external global i32, align 4
@vtkexodusII_EX_g = external global %struct.EX_mutex_struct, align 8
@vtkexodusII_ex_errval = external global ptr, align 8
@vtkexodusII_exoptval = external global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"ERROR: Cannot specify both EX_READ and EX_WRITE\00", align 1
@__func__.ex_open_par_int = private unnamed_addr constant [16 x i8] c"ex_open_par_int\00", align 1
@.str.1 = private unnamed_addr constant [157 x i8] c"EXODUS: ERROR: Attempting to open the netcdf-4 file:\0A\09'%s'\0A\09failed. The netcdf library supports netcdf-4 so there must be a filesystem or some other issue \0A\00", align 1
@.str.2 = private unnamed_addr constant [160 x i8] c"EXODUS: ERROR: Attempting to open the CDF5 file:\0A\09'%s'\0A\09failed. The netcdf library supports CDF5-type files so there must be a filesystem or some other issue \0A\00", align 1
@.str.3 = private unnamed_addr constant [220 x i8] c"EXODUS: ERROR: Attempting to open the classic NetCDF file:\0A\09'%s'\0A\09failed. The netcdf library supports PNetCDF files as required for parallel readinf of this file type, so there must be a filesystem or some other issue \0A\00", align 1
@.str.4 = private unnamed_addr constant [121 x i8] c"ERROR: failed to open %s for read/write. Either the file does not exist,\0A\09or there is a permission or file format issue.\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ERROR: failed to put file id %d into define mode\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"ERROR: failed to set nofill mode in file id %d\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"maximum_name_length\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"len_name\00", align 1
@vtkexodusII_ex__default_max_name_length = external global i32, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"vals_glo_var\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"vals_elset_var\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"vals_sset_var\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"vals_fset_var\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"vals_eset_var\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"vals_nset_var\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"vals_nod_var\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"vals_edge_var\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"vals_face_var\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"vals_elem_var\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"time_whole\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"ERROR: failed to get database version for file id: %d\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"ERROR: Unsupported file version %.2f in file id: %d\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"floating_point_word_size\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"floating point word size\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"ERROR: failed to get file wordsize from file id: %d\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"int64_status\00", align 1
@.str.27 = private unnamed_addr constant [168 x i8] c"ERROR: There is an existing file already using the file id %d which was also assigned to file %s.\0A\09Was nc_close() called instead of ex_close() on an open Exodus file?\0A\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"ERROR: failed to initialize conversion routines in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ex_open_par_int(ptr noundef %path, i32 noundef %mode, ptr noundef %comp_ws, ptr noundef %io_ws, ptr noundef %version, ptr noundef %comm, ptr noundef %info, i32 noundef %run_version) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %comp_ws.addr = alloca ptr, align 8
  %io_ws.addr = alloca ptr, align 8
  %version.addr = alloca ptr, align 8
  %comm.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %run_version.addr = alloca i32, align 4
  %exoid = alloca i32, align 4
  %status = alloca i32, align 4
  %stat_att = alloca i32, align 4
  %stat_dim = alloca i32, align 4
  %att_type = alloca i32, align 4
  %att_len = alloca i64, align 8
  %nc_mode = alloca i32, align 4
  %old_fill = alloca i32, align 4
  %file_wordsize = alloca i32, align 4
  %dim_str_name = alloca i32, align 4
  %int64_status = alloca i32, align 4
  %is_hdf5 = alloca i8, align 1
  %is_pnetcdf = alloca i8, align 1
  %in_redef = alloca i8, align 1
  %errmsg = alloca [512 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %type = alloca i32, align 4
  %type70 = alloca i32, align 4
  %max_so_far = alloca i32, align 4
  %max_name = alloca i32, align 4
  %ndims = alloca i32, align 4
  %nvars = alloca i32, align 4
  %ngatts = alloca i32, align 4
  %recdimid = alloca i32, align 4
  %varid = alloca i32, align 4
  %var = alloca %struct.ncvar, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  store ptr %comp_ws, ptr %comp_ws.addr, align 8, !tbaa !4
  store ptr %io_ws, ptr %io_ws.addr, align 8, !tbaa !4
  store ptr %version, ptr %version.addr, align 8, !tbaa !4
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  store i32 %run_version, ptr %run_version.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %exoid) #5
  store i32 -1, ptr %exoid, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  store i32 0, ptr %status, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat_att) #5
  store i32 0, ptr %stat_att, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat_dim) #5
  store i32 0, ptr %stat_dim, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %att_type) #5
  store i32 0, ptr %att_type, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %att_len) #5
  store i64 0, ptr %att_len, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc_mode) #5
  store i32 0, ptr %nc_mode, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_fill) #5
  store i32 0, ptr %old_fill, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %file_wordsize) #5
  store i32 0, ptr %file_wordsize, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dim_str_name) #5
  store i32 0, ptr %dim_str_name, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %int64_status) #5
  store i32 0, ptr %int64_status, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_hdf5) #5
  store i8 0, ptr %is_hdf5, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_pnetcdf) #5
  store i8 0, ptr %is_pnetcdf, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr %in_redef) #5
  store i8 0, ptr %in_redef, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #5
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @vtkexodusII_EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @vtkexodusII_EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @vtkexodusII_ex_errval, align 8, !tbaa !4
  %0 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !4
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !14
  %1 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !4
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !16
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr @vtkexodusII_exoptval, align 4, !tbaa !8
  %call3 = call i32 @vtkexodusII_ex_opts(i32 noundef %2)
  %3 = load i32, ptr %run_version.addr, align 4, !tbaa !8
  %call4 = call i32 @vtkexodusII_ex__check_version(i32 noundef %3)
  %4 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and = and i32 %4, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.end
  %5 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and5 = and i32 %5, 1
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %call7 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str) #5
  %arraydecay8 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err(ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay8, i32 noundef 1001)
  br label %do.body9

do.body9:                                         ; preds = %if.then
  %call10 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 147)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup313

do.cond11:                                        ; No predecessors!
  br label %do.end12

do.end12:                                         ; preds = %do.cond11
  br label %if.end

if.end:                                           ; preds = %do.end12, %land.lhs.true, %do.end
  %6 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %7 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %call13 = call i32 @vtkexodusII_ex__check_multiple_open(ptr noundef %6, i32 noundef %7, ptr noundef @__func__.ex_open_par_int)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  %call17 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 156)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup313

do.cond18:                                        ; No predecessors!
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end
  %8 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and21 = and i32 %8, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  store i32 8193, ptr %nc_mode, align 4, !tbaa !8
  %9 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and24 = and i32 %9, 64
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  %10 = load i32, ptr %nc_mode, align 4, !tbaa !8
  %or = or i32 %10, 4096
  store i32 %or, ptr %nc_mode, align 4, !tbaa !8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then23
  %11 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and28 = and i32 %11, 4194304
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %12 = load i32, ptr %nc_mode, align 4, !tbaa !8
  %or31 = or i32 %12, 32
  store i32 %or31, ptr %nc_mode, align 4, !tbaa !8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27
  br label %if.end33

if.else:                                          ; preds = %if.end20
  store i32 10240, ptr %nc_mode, align 4, !tbaa !8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end32
  %13 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %14 = load i32, ptr %nc_mode, align 4, !tbaa !8
  %15 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call34 = call i32 @nc_open_par(ptr noundef %13, i32 noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %exoid)
  store i32 %call34, ptr %status, align 4, !tbaa !8
  %cmp = icmp ne i32 %call34, 0
  br i1 %cmp, label %if.then35, label %if.end69

if.then35:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #5
  store i32 0, ptr %type, align 4, !tbaa !8
  %17 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call36 = call i32 @vtkexodusII_ex__check_file_type(ptr noundef %17, ptr noundef %type)
  %18 = load i32, ptr %type, align 4, !tbaa !8
  %cmp37 = icmp eq i32 %18, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.then35
  br label %if.end61

if.else39:                                        ; preds = %if.then35
  %19 = load i32, ptr %type, align 4, !tbaa !8
  %cmp40 = icmp eq i32 %19, 5
  br i1 %cmp40, label %if.then41, label %if.else45

if.then41:                                        ; preds = %if.else39
  %arraydecay42 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %20 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call43 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay42, i64 noundef 512, ptr noundef @.str.1, ptr noundef %20) #5
  %arraydecay44 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %21 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err(ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay44, i32 noundef %21)
  br label %if.end60

if.else45:                                        ; preds = %if.else39
  %22 = load i32, ptr %type, align 4, !tbaa !8
  %cmp46 = icmp eq i32 %22, 4
  br i1 %cmp46, label %if.then47, label %if.else51

if.then47:                                        ; preds = %if.else45
  %arraydecay48 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %23 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call49 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay48, i64 noundef 512, ptr noundef @.str.2, ptr noundef %23) #5
  %arraydecay50 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %24 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err(ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay50, i32 noundef %24)
  br label %if.end59

if.else51:                                        ; preds = %if.else45
  %25 = load i32, ptr %type, align 4, !tbaa !8
  %cmp52 = icmp eq i32 %25, 1
  br i1 %cmp52, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else51
  %26 = load i32, ptr %type, align 4, !tbaa !8
  %cmp53 = icmp eq i32 %26, 2
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %lor.lhs.false, %if.else51
  %arraydecay55 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %27 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call56 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay55, i64 noundef 512, ptr noundef @.str.3, ptr noundef %27) #5
  %arraydecay57 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %28 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err(ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay57, i32 noundef %28)
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %lor.lhs.false
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then47
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then41
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then38
  %arraydecay62 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %29 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call63 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay62, i64 noundef 512, ptr noundef @.str.4, ptr noundef %29) #5
  %arraydecay64 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %30 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err(ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay64, i32 noundef %30)
  br label %do.body65

do.body65:                                        ; preds = %if.end61
  %call66 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 282)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond67:                                        ; No predecessors!
  br label %do.end68

do.end68:                                         ; preds = %do.cond67
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.body65
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup313 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end69

if.end69:                                         ; preds = %cleanup.cont, %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %type70) #5
  store i32 0, ptr %type70, align 4, !tbaa !8
  %31 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call71 = call i32 @vtkexodusII_ex__check_file_type(ptr noundef %31, ptr noundef %type70)
  %32 = load i32, ptr %type70, align 4, !tbaa !8
  %cmp72 = icmp eq i32 %32, 5
  br i1 %cmp72, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.end69
  store i8 1, ptr %is_hdf5, align 1, !tbaa !12
  br label %if.end82

if.else74:                                        ; preds = %if.end69
  %33 = load i32, ptr %type70, align 4, !tbaa !8
  %cmp75 = icmp eq i32 %33, 1
  br i1 %cmp75, label %if.then80, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.else74
  %34 = load i32, ptr %type70, align 4, !tbaa !8
  %cmp77 = icmp eq i32 %34, 2
  br i1 %cmp77, label %if.then80, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false76
  %35 = load i32, ptr %type70, align 4, !tbaa !8
  %cmp79 = icmp eq i32 %35, 4
  br i1 %cmp79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %lor.lhs.false78, %lor.lhs.false76, %if.else74
  store i8 1, ptr %is_pnetcdf, align 1, !tbaa !12
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %lor.lhs.false78
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then73
  %36 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and83 = and i32 %36, 1
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.end229

if.then85:                                        ; preds = %if.end82
  %37 = load i8, ptr %is_pnetcdf, align 1, !tbaa !12, !range !17, !noundef !18
  %tobool86 = trunc i8 %37 to i1
  br i1 %tobool86, label %if.then87, label %if.end99

if.then87:                                        ; preds = %if.then85
  %38 = load i32, ptr %exoid, align 4, !tbaa !8
  %call88 = call i32 @nc_redef(i32 noundef %38)
  store i32 %call88, ptr %status, align 4, !tbaa !8
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then90, label %if.end98

if.then90:                                        ; preds = %if.then87
  %arraydecay91 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %39 = load i32, ptr %exoid, align 4, !tbaa !8
  %call92 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay91, i64 noundef 512, ptr noundef @.str.5, i32 noundef %39) #5
  %40 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay93 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %41 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err_fn(i32 noundef %40, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay93, i32 noundef %41)
  br label %do.body94

do.body94:                                        ; preds = %if.then90
  %call95 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 301)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond96:                                        ; No predecessors!
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  br label %if.end98

if.end98:                                         ; preds = %do.end97, %if.then87
  store i8 1, ptr %in_redef, align 1, !tbaa !12
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then85
  %42 = load i32, ptr %exoid, align 4, !tbaa !8
  %call100 = call i32 @nc_set_fill(i32 noundef %42, i32 noundef 256, ptr noundef %old_fill)
  store i32 %call100, ptr %status, align 4, !tbaa !8
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end110

if.then102:                                       ; preds = %if.end99
  %arraydecay103 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %43 = load i32, ptr %exoid, align 4, !tbaa !8
  %call104 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay103, i64 noundef 512, ptr noundef @.str.6, i32 noundef %43) #5
  %44 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay105 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %45 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err_fn(i32 noundef %44, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay105, i32 noundef %45)
  br label %do.body106

do.body106:                                       ; preds = %if.then102
  %call107 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 309)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond108:                                       ; No predecessors!
  br label %do.end109

do.end109:                                        ; preds = %do.cond108
  br label %if.end110

if.end110:                                        ; preds = %do.end109, %if.end99
  %46 = load i32, ptr %exoid, align 4, !tbaa !8
  %call111 = call i32 @nc_inq_att(i32 noundef %46, i32 noundef -1, ptr noundef @.str.7, ptr noundef %att_type, ptr noundef %att_len)
  store i32 %call111, ptr %stat_att, align 4, !tbaa !8
  %47 = load i32, ptr %exoid, align 4, !tbaa !8
  %call112 = call i32 @nc_inq_dimid(i32 noundef %47, ptr noundef @.str.8, ptr noundef %dim_str_name)
  store i32 %call112, ptr %stat_dim, align 4, !tbaa !8
  %48 = load i32, ptr %stat_att, align 4, !tbaa !8
  %cmp113 = icmp ne i32 %48, 0
  br i1 %cmp113, label %if.then116, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %if.end110
  %49 = load i32, ptr %stat_dim, align 4, !tbaa !8
  %cmp115 = icmp ne i32 %49, 0
  br i1 %cmp115, label %if.then116, label %if.end140

if.then116:                                       ; preds = %lor.lhs.false114, %if.end110
  %50 = load i8, ptr %in_redef, align 1, !tbaa !12, !range !17, !noundef !18
  %tobool117 = trunc i8 %50 to i1
  br i1 %tobool117, label %if.end130, label %if.then118

if.then118:                                       ; preds = %if.then116
  %51 = load i32, ptr %exoid, align 4, !tbaa !8
  %call119 = call i32 @nc_redef(i32 noundef %51)
  store i32 %call119, ptr %status, align 4, !tbaa !8
  %cmp120 = icmp ne i32 %call119, 0
  br i1 %cmp120, label %if.then121, label %if.end129

if.then121:                                       ; preds = %if.then118
  %arraydecay122 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %52 = load i32, ptr %exoid, align 4, !tbaa !8
  %call123 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay122, i64 noundef 512, ptr noundef @.str.5, i32 noundef %52) #5
  %53 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay124 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %54 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err_fn(i32 noundef %53, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay124, i32 noundef %54)
  br label %do.body125

do.body125:                                       ; preds = %if.then121
  %call126 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 320)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond127:                                       ; No predecessors!
  br label %do.end128

do.end128:                                        ; preds = %do.cond127
  br label %if.end129

if.end129:                                        ; preds = %do.end128, %if.then118
  store i8 1, ptr %in_redef, align 1, !tbaa !12
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then116
  %55 = load i32, ptr %stat_att, align 4, !tbaa !8
  %cmp131 = icmp ne i32 %55, 0
  br i1 %cmp131, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.end130
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_so_far) #5
  store i32 32, ptr %max_so_far, align 4, !tbaa !8
  %56 = load i32, ptr %exoid, align 4, !tbaa !8
  %call133 = call i32 @nc_put_att_int(i32 noundef %56, i32 noundef -1, ptr noundef @.str.7, i32 noundef 4, i64 noundef 1, ptr noundef %max_so_far)
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_so_far) #5
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end130
  %57 = load i32, ptr %stat_dim, align 4, !tbaa !8
  %cmp135 = icmp ne i32 %57, 0
  br i1 %cmp135, label %if.then136, label %if.end139

if.then136:                                       ; preds = %if.end134
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_name) #5
  %58 = load i32, ptr @vtkexodusII_ex__default_max_name_length, align 4, !tbaa !8
  %cmp137 = icmp slt i32 %58, 32
  br i1 %cmp137, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then136
  br label %cond.end

cond.false:                                       ; preds = %if.then136
  %59 = load i32, ptr @vtkexodusII_ex__default_max_name_length, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %59, %cond.false ]
  store i32 %cond, ptr %max_name, align 4, !tbaa !8
  %60 = load i32, ptr %exoid, align 4, !tbaa !8
  %61 = load i32, ptr %max_name, align 4, !tbaa !8
  %add = add nsw i32 %61, 1
  %conv = sext i32 %add to i64
  %call138 = call i32 @nc_def_dim(i32 noundef %60, ptr noundef @.str.8, i64 noundef %conv, ptr noundef %dim_str_name)
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_name) #5
  br label %if.end139

if.end139:                                        ; preds = %cond.end, %if.end134
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %lor.lhs.false114
  %62 = load i8, ptr %in_redef, align 1, !tbaa !12, !range !17, !noundef !18
  %tobool141 = trunc i8 %62 to i1
  br i1 %tobool141, label %if.then142, label %if.end152

if.then142:                                       ; preds = %if.end140
  %63 = load i32, ptr %exoid, align 4, !tbaa !8
  %call143 = call i32 @vtkexodusII_ex__leavedef(i32 noundef %63, ptr noundef @__func__.ex_open_par_int)
  store i32 %call143, ptr %status, align 4, !tbaa !8
  %cmp144 = icmp ne i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end151

if.then146:                                       ; preds = %if.then142
  br label %do.body147

do.body147:                                       ; preds = %if.then146
  %call148 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 340)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond149:                                       ; No predecessors!
  br label %do.end150

do.end150:                                        ; preds = %do.cond149
  br label %if.end151

if.end151:                                        ; preds = %do.end150, %if.then142
  store i8 0, ptr %in_redef, align 1, !tbaa !12
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end140
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndims) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvars) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngatts) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %recdimid) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #5
  %64 = load i32, ptr %exoid, align 4, !tbaa !8
  %call153 = call i32 @nc_inq(i32 noundef %64, ptr noundef %ndims, ptr noundef %nvars, ptr noundef %ngatts, ptr noundef %recdimid)
  store i32 0, ptr %varid, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end152
  %65 = load i32, ptr %varid, align 4, !tbaa !8
  %66 = load i32, ptr %nvars, align 4, !tbaa !8
  %cmp154 = icmp slt i32 %65, %66
  br i1 %cmp154, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4140, ptr %var) #5
  %67 = load i32, ptr %exoid, align 4, !tbaa !8
  %68 = load i32, ptr %varid, align 4, !tbaa !8
  %name = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay156 = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0
  %type157 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 1
  %ndims158 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 2
  %dims = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 3
  %arraydecay159 = getelementptr inbounds [1024 x i32], ptr %dims, i64 0, i64 0
  %natts = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 4
  %call160 = call i32 @nc_inq_var(i32 noundef %67, i32 noundef %68, ptr noundef %arraydecay156, ptr noundef %type157, ptr noundef %ndims158, ptr noundef %arraydecay159, ptr noundef %natts)
  %name161 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay162 = getelementptr inbounds [32 x i8], ptr %name161, i64 0, i64 0
  %call163 = call i32 @strcmp(ptr noundef %arraydecay162, ptr noundef @.str.9) #6
  %cmp164 = icmp eq i32 %call163, 0
  br i1 %cmp164, label %if.then226, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %for.body
  %name167 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay168 = getelementptr inbounds [32 x i8], ptr %name167, i64 0, i64 0
  %call169 = call i32 @strncmp(ptr noundef %arraydecay168, ptr noundef @.str.10, i64 noundef 14) #6
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.then226, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false166
  %name173 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay174 = getelementptr inbounds [32 x i8], ptr %name173, i64 0, i64 0
  %call175 = call i32 @strncmp(ptr noundef %arraydecay174, ptr noundef @.str.11, i64 noundef 13) #6
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %if.then226, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false172
  %name179 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay180 = getelementptr inbounds [32 x i8], ptr %name179, i64 0, i64 0
  %call181 = call i32 @strncmp(ptr noundef %arraydecay180, ptr noundef @.str.12, i64 noundef 13) #6
  %cmp182 = icmp eq i32 %call181, 0
  br i1 %cmp182, label %if.then226, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %lor.lhs.false178
  %name185 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay186 = getelementptr inbounds [32 x i8], ptr %name185, i64 0, i64 0
  %call187 = call i32 @strncmp(ptr noundef %arraydecay186, ptr noundef @.str.13, i64 noundef 13) #6
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %if.then226, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %lor.lhs.false184
  %name191 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay192 = getelementptr inbounds [32 x i8], ptr %name191, i64 0, i64 0
  %call193 = call i32 @strncmp(ptr noundef %arraydecay192, ptr noundef @.str.14, i64 noundef 13) #6
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then226, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %lor.lhs.false190
  %name197 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay198 = getelementptr inbounds [32 x i8], ptr %name197, i64 0, i64 0
  %call199 = call i32 @strncmp(ptr noundef %arraydecay198, ptr noundef @.str.15, i64 noundef 12) #6
  %cmp200 = icmp eq i32 %call199, 0
  br i1 %cmp200, label %if.then226, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %lor.lhs.false196
  %name203 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay204 = getelementptr inbounds [32 x i8], ptr %name203, i64 0, i64 0
  %call205 = call i32 @strncmp(ptr noundef %arraydecay204, ptr noundef @.str.16, i64 noundef 13) #6
  %cmp206 = icmp eq i32 %call205, 0
  br i1 %cmp206, label %if.then226, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false202
  %name209 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay210 = getelementptr inbounds [32 x i8], ptr %name209, i64 0, i64 0
  %call211 = call i32 @strncmp(ptr noundef %arraydecay210, ptr noundef @.str.17, i64 noundef 13) #6
  %cmp212 = icmp eq i32 %call211, 0
  br i1 %cmp212, label %if.then226, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %lor.lhs.false208
  %name215 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay216 = getelementptr inbounds [32 x i8], ptr %name215, i64 0, i64 0
  %call217 = call i32 @strncmp(ptr noundef %arraydecay216, ptr noundef @.str.18, i64 noundef 13) #6
  %cmp218 = icmp eq i32 %call217, 0
  br i1 %cmp218, label %if.then226, label %lor.lhs.false220

lor.lhs.false220:                                 ; preds = %lor.lhs.false214
  %name221 = getelementptr inbounds %struct.ncvar, ptr %var, i32 0, i32 0
  %arraydecay222 = getelementptr inbounds [32 x i8], ptr %name221, i64 0, i64 0
  %call223 = call i32 @strcmp(ptr noundef %arraydecay222, ptr noundef @.str.19) #6
  %cmp224 = icmp eq i32 %call223, 0
  br i1 %cmp224, label %if.then226, label %if.end228

if.then226:                                       ; preds = %lor.lhs.false220, %lor.lhs.false214, %lor.lhs.false208, %lor.lhs.false202, %lor.lhs.false196, %lor.lhs.false190, %lor.lhs.false184, %lor.lhs.false178, %lor.lhs.false172, %lor.lhs.false166, %for.body
  %69 = load i32, ptr %exoid, align 4, !tbaa !8
  %70 = load i32, ptr %varid, align 4, !tbaa !8
  %call227 = call i32 @nc_var_par_access(i32 noundef %69, i32 noundef %70, i32 noundef 1)
  br label %if.end228

if.end228:                                        ; preds = %if.then226, %lor.lhs.false220
  call void @llvm.lifetime.end.p0(i64 4140, ptr %var) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end228
  %71 = load i32, ptr %varid, align 4, !tbaa !8
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %varid, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %recdimid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngatts) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvars) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndims) #5
  br label %if.end229

if.end229:                                        ; preds = %for.end, %if.end82
  %72 = load i32, ptr %exoid, align 4, !tbaa !8
  %73 = load ptr, ptr %version.addr, align 8, !tbaa !4
  %call230 = call i32 @nc_get_att_float(i32 noundef %72, i32 noundef -1, ptr noundef @.str.20, ptr noundef %73)
  store i32 %call230, ptr %status, align 4, !tbaa !8
  %cmp231 = icmp ne i32 %call230, 0
  br i1 %cmp231, label %if.then233, label %if.end241

if.then233:                                       ; preds = %if.end229
  %arraydecay234 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %74 = load i32, ptr %exoid, align 4, !tbaa !8
  %call235 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay234, i64 noundef 512, ptr noundef @.str.21, i32 noundef %74) #5
  %75 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay236 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %76 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err_fn(i32 noundef %75, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay236, i32 noundef %76)
  br label %do.body237

do.body237:                                       ; preds = %if.then233
  %call238 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 386)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond239:                                       ; No predecessors!
  br label %do.end240

do.end240:                                        ; preds = %do.cond239
  br label %if.end241

if.end241:                                        ; preds = %do.end240, %if.end229
  %77 = load ptr, ptr %version.addr, align 8, !tbaa !4
  %78 = load float, ptr %77, align 4, !tbaa !19
  %conv242 = fpext float %78 to double
  %cmp243 = fcmp olt double %conv242, 2.000000e+00
  br i1 %cmp243, label %if.then245, label %if.end254

if.then245:                                       ; preds = %if.end241
  %arraydecay246 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %79 = load ptr, ptr %version.addr, align 8, !tbaa !4
  %80 = load float, ptr %79, align 4, !tbaa !19
  %conv247 = fpext float %80 to double
  %81 = load i32, ptr %exoid, align 4, !tbaa !8
  %call248 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay246, i64 noundef 512, ptr noundef @.str.22, double noundef %conv247, i32 noundef %81) #5
  %82 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay249 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %82, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay249, i32 noundef 1005)
  br label %do.body250

do.body250:                                       ; preds = %if.then245
  %call251 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 394)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond252:                                       ; No predecessors!
  br label %do.end253

do.end253:                                        ; preds = %do.cond252
  br label %if.end254

if.end254:                                        ; preds = %do.end253, %if.end241
  %83 = load i32, ptr %exoid, align 4, !tbaa !8
  %call255 = call i32 @nc_get_att_int(i32 noundef %83, i32 noundef -1, ptr noundef @.str.23, ptr noundef %file_wordsize)
  %cmp256 = icmp ne i32 %call255, 0
  br i1 %cmp256, label %if.then258, label %if.end271

if.then258:                                       ; preds = %if.end254
  %84 = load i32, ptr %exoid, align 4, !tbaa !8
  %call259 = call i32 @nc_get_att_int(i32 noundef %84, i32 noundef -1, ptr noundef @.str.24, ptr noundef %file_wordsize)
  store i32 %call259, ptr %status, align 4, !tbaa !8
  %cmp260 = icmp ne i32 %call259, 0
  br i1 %cmp260, label %if.then262, label %if.end270

if.then262:                                       ; preds = %if.then258
  %arraydecay263 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %85 = load i32, ptr %exoid, align 4, !tbaa !8
  %call264 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay263, i64 noundef 512, ptr noundef @.str.25, i32 noundef %85) #5
  %86 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay265 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %87 = load i32, ptr %status, align 4, !tbaa !8
  call void @vtkexodusII_ex_err_fn(i32 noundef %86, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay265, i32 noundef %87)
  br label %do.body266

do.body266:                                       ; preds = %if.then262
  %call267 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 404)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond268:                                       ; No predecessors!
  br label %do.end269

do.end269:                                        ; preds = %do.cond268
  br label %if.end270

if.end270:                                        ; preds = %do.end269, %if.then258
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end254
  %88 = load i32, ptr %exoid, align 4, !tbaa !8
  %call272 = call i32 @nc_get_att_int(i32 noundef %88, i32 noundef -1, ptr noundef @.str.26, ptr noundef %int64_status)
  %cmp273 = icmp ne i32 %call272, 0
  br i1 %cmp273, label %if.then275, label %if.end276

if.then275:                                       ; preds = %if.end271
  store i32 0, ptr %int64_status, align 4, !tbaa !8
  br label %if.end276

if.end276:                                        ; preds = %if.then275, %if.end271
  %89 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and277 = and i32 %89, 122880
  %90 = load i32, ptr %int64_status, align 4, !tbaa !8
  %or278 = or i32 %90, %and277
  store i32 %or278, ptr %int64_status, align 4, !tbaa !8
  %91 = load i32, ptr %exoid, align 4, !tbaa !8
  %call279 = call ptr @vtkexodusII_ex__find_file_item(i32 noundef %91)
  %cmp280 = icmp ne ptr %call279, null
  br i1 %cmp280, label %if.then282, label %if.end291

if.then282:                                       ; preds = %if.end276
  %arraydecay283 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %92 = load i32, ptr %exoid, align 4, !tbaa !8
  %93 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call284 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay283, i64 noundef 512, ptr noundef @.str.27, i32 noundef %92, ptr noundef %93) #5
  %94 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay285 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %94, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay285, i32 noundef 1002)
  %95 = load i32, ptr %exoid, align 4, !tbaa !8
  %call286 = call i32 @nc_close(i32 noundef %95)
  br label %do.body287

do.body287:                                       ; preds = %if.then282
  %call288 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 437)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond289:                                       ; No predecessors!
  br label %do.end290

do.end290:                                        ; preds = %do.cond289
  br label %if.end291

if.end291:                                        ; preds = %do.end290, %if.end276
  %96 = load i32, ptr %exoid, align 4, !tbaa !8
  %97 = load ptr, ptr %comp_ws.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %io_ws.addr, align 8, !tbaa !4
  %99 = load i32, ptr %file_wordsize, align 4, !tbaa !8
  %100 = load i32, ptr %int64_status, align 4, !tbaa !8
  %101 = load i8, ptr %is_hdf5, align 1, !tbaa !12, !range !17, !noundef !18
  %tobool292 = trunc i8 %101 to i1
  %102 = load i8, ptr %is_pnetcdf, align 1, !tbaa !12, !range !17, !noundef !18
  %tobool293 = trunc i8 %102 to i1
  %103 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %and294 = and i32 %103, 1
  %tobool295 = icmp ne i32 %and294, 0
  %call296 = call i32 @vtkexodusII_ex__conv_init(i32 noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99, i32 noundef %100, i1 noundef zeroext true, i1 noundef zeroext %tobool292, i1 noundef zeroext %tobool293, i1 noundef zeroext %tobool295)
  %cmp297 = icmp ne i32 %call296, 0
  br i1 %cmp297, label %if.then299, label %if.end307

if.then299:                                       ; preds = %if.end291
  %arraydecay300 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %104 = load i32, ptr %exoid, align 4, !tbaa !8
  %call301 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay300, i64 noundef 512, ptr noundef @.str.28, i32 noundef %104) #5
  %105 = load i32, ptr %exoid, align 4, !tbaa !8
  %arraydecay302 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %105, ptr noundef @__func__.ex_open_par_int, ptr noundef %arraydecay302, i32 noundef -1003)
  br label %do.body303

do.body303:                                       ; preds = %if.then299
  %call304 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 446)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond305:                                       ; No predecessors!
  br label %do.end306

do.end306:                                        ; preds = %do.cond305
  br label %if.end307

if.end307:                                        ; preds = %do.end306, %if.end291
  br label %do.body308

do.body308:                                       ; preds = %if.end307
  %call309 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.ex_open_par_int, i32 noundef 449)
  %106 = load i32, ptr %exoid, align 4, !tbaa !8
  store i32 %106, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

do.cond310:                                       ; No predecessors!
  br label %do.end311

do.end311:                                        ; preds = %do.cond310
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

cleanup312:                                       ; preds = %do.end311, %do.body308, %do.body303, %do.body287, %do.body266, %do.body250, %do.body237, %do.body147, %do.body125, %do.body106, %do.body94
  call void @llvm.lifetime.end.p0(i64 4, ptr %type70) #5
  br label %cleanup313

cleanup313:                                       ; preds = %cleanup312, %cleanup, %do.body16, %do.body9
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %in_redef) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_pnetcdf) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_hdf5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %int64_status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dim_str_name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %file_wordsize) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_fill) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc_mode) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %att_len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %att_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat_dim) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat_att) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %exoid) #5
  %cleanup.dest328 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest328, label %unreachable [
    i32 0, label %cleanup.cont329
    i32 1, label %cleanup.cont329
  ]

cleanup.cont329:                                  ; preds = %cleanup313, %cleanup313
  %107 = load i32, ptr %retval, align 4
  ret i32 %107

unreachable:                                      ; preds = %cleanup313
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__pthread_first_thread_init() #2

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #2

declare ptr @vtkexodusII_exerrval_get(...) #2

declare i32 @vtkexodusII_ex_opts(i32 noundef) #2

declare i32 @vtkexodusII_ex__check_version(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__check_multiple_open(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @nc_open_par(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__check_file_type(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @nc_redef(i32 noundef) #2

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @nc_set_fill(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @nc_inq_att(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_inq_dimid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_put_att_int(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) #2

declare i32 @nc_def_dim(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__leavedef(i32 noundef, ptr noundef) #2

declare i32 @nc_inq(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_inq_var(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @nc_var_par_access(i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @nc_get_att_float(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_get_att_int(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @vtkexodusII_ex__find_file_item(i32 noundef) #2

declare i32 @nc_close(i32 noundef) #2

declare i32 @vtkexodusII_ex__conv_init(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #2

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
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"_Bool", !6, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"EX_errval", !9, i64 0, !6, i64 4, !6, i64 516, !9, i64 1028}
!16 = !{!15, !9, i64 1028}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !6, i64 0}

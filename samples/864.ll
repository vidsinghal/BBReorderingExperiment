; ModuleID = 'samples/864.bc'
source_filename = "/local-ssd/vtk-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7-build/aidengro/spack-stage-vtk-9.0.3-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_partial_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EX_mutex_struct = type { %union.pthread_mutex_t, %union.pthread_mutexattr_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.EX_errval = type { i32, [256 x i8], [256 x i8], i32 }

@EX_first_init_g = external global i32, align 4
@EX_g = external global %struct.EX_mutex_struct, align 8
@ex_errval = external global ptr, align 8
@__func__.vtkexodusII_ex_get_partial_var = private unnamed_addr constant [31 x i8] c"vtkexodusII_ex_get_partial_var\00", align 1
@.str = private unnamed_addr constant [58 x i8] c"Warning: no %s variables for NULL block %ld in file id %d\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"ERROR: failed to locate %s id %ld in id variable in file id %d\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"ERROR: failed to locate %s %ld var %d in file id %d\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"ERROR: failed to get %s %ld variable %d in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_partial_var(i32 noundef %exoid, i32 noundef %time_step, i32 noundef %var_type, i32 noundef %var_index, i64 noundef %obj_id, i64 noundef %start_index, i64 noundef %num_entities, ptr noundef %var_vals) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %time_step.addr = alloca i32, align 4
  %var_type.addr = alloca i32, align 4
  %var_index.addr = alloca i32, align 4
  %obj_id.addr = alloca i64, align 8
  %start_index.addr = alloca i64, align 8
  %num_entities.addr = alloca i64, align 8
  %var_vals.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %varid = alloca i32, align 4
  %obj_id_ndx = alloca i32, align 4
  %start = alloca [2 x i64], align 16
  %count = alloca [2 x i64], align 16
  %errmsg = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %time_step, ptr %time_step.addr, align 4, !tbaa !4
  store i32 %var_type, ptr %var_type.addr, align 4, !tbaa !8
  store i32 %var_index, ptr %var_index.addr, align 4, !tbaa !4
  store i64 %obj_id, ptr %obj_id.addr, align 8, !tbaa !9
  store i64 %start_index, ptr %start_index.addr, align 8, !tbaa !9
  store i64 %num_entities, ptr %num_entities.addr, align 8, !tbaa !9
  store ptr %var_vals, ptr %var_vals.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4
  store i32 0, ptr %status, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %obj_id_ndx) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %start) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %errmsg) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !11
  %0 = load ptr, ptr @ex_errval, align 8, !tbaa !11
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !13
  %1 = load ptr, ptr @ex_errval, align 8, !tbaa !11
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %2, 14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %3 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %4 = load i32, ptr %time_step.addr, align 4, !tbaa !4
  %5 = load i32, ptr %var_index.addr, align 4, !tbaa !4
  %6 = load i64, ptr %start_index.addr, align 8, !tbaa !9
  %7 = load i64, ptr %num_entities.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %var_vals.addr, align 8, !tbaa !11
  %call3 = call i32 @vtkexodusII_ex__get_partial_nodal_var(i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8)
  store i32 %call3, ptr %status, align 4, !tbaa !4
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  %9 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond6:                                         ; No predecessors!
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %10 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %10, 13
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end
  %11 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %12 = load i32, ptr %time_step.addr, align 4, !tbaa !4
  %13 = load i64, ptr %num_entities.addr, align 8, !tbaa !9
  %conv = trunc i64 %13 to i32
  %14 = load ptr, ptr %var_vals.addr, align 8, !tbaa !11
  %call10 = call i32 @vtkexodusII_ex__get_glob_vars(i32 noundef %11, i32 noundef %12, i32 noundef %conv, ptr noundef %14)
  store i32 %call10, ptr %status, align 4, !tbaa !4
  br label %do.body11

do.body11:                                        ; preds = %if.then9
  %call12 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  %15 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond13:                                        ; No predecessors!
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.end
  %16 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  call void @vtkexodusII_ex__check_valid_file_id(i32 noundef %16, ptr noundef @__func__.vtkexodusII_ex_get_partial_var)
  %17 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %18 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %19 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %call16 = call i32 @vtkexodusII_ex__id_lkup(i32 noundef %17, i32 noundef %18, i64 noundef %19)
  store i32 %call16, ptr %obj_id_ndx, align 4, !tbaa !4
  %20 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %cmp17 = icmp sle i32 %20, 0
  br i1 %cmp17, label %if.then19, label %if.end43

if.then19:                                        ; preds = %if.end15
  call void @vtkexodusII_ex_get_err(ptr noundef null, ptr noundef null, ptr noundef %status)
  %21 = load i32, ptr %status, align 4, !tbaa !4
  %cmp20 = icmp ne i32 %21, 0
  br i1 %cmp20, label %if.then22, label %if.end42

if.then22:                                        ; preds = %if.then19
  %22 = load i32, ptr %status, align 4, !tbaa !4
  %cmp23 = icmp eq i32 %22, -1006
  br i1 %cmp23, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.then22
  %arraydecay = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %23 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %call26 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %23)
  %24 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %25 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call27 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str, ptr noundef %call26, i64 noundef %24, i32 noundef %25) #4
  %26 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay28 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %26, ptr noundef @__func__.vtkexodusII_ex_get_partial_var, ptr noundef %arraydecay28, i32 noundef -1006)
  br label %do.body29

do.body29:                                        ; preds = %if.then25
  %call30 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond31:                                        ; No predecessors!
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.then22
  %arraydecay34 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %27 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %call35 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %27)
  %28 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %29 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay34, i64 noundef 256, ptr noundef @.str.1, ptr noundef %call35, i64 noundef %28, i32 noundef %29) #4
  %30 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay37 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %31 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %30, ptr noundef @__func__.vtkexodusII_ex_get_partial_var, ptr noundef %arraydecay37, i32 noundef %31)
  br label %do.body38

do.body38:                                        ; preds = %if.end33
  %call39 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond40:                                        ; No predecessors!
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %if.then19
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end15
  %32 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %33 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %34 = load i32, ptr %var_index.addr, align 4, !tbaa !4
  %35 = load i32, ptr %obj_id_ndx, align 4, !tbaa !4
  %call44 = call ptr @vtkexodusII_ex__name_var_of_object(i32 noundef %33, i32 noundef %34, i32 noundef %35)
  %call45 = call i32 @nc_inq_varid(i32 noundef %32, ptr noundef %call44, ptr noundef %varid)
  store i32 %call45, ptr %status, align 4, !tbaa !4
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.end43
  %arraydecay49 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %36 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %call50 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %36)
  %37 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %38 = load i32, ptr %var_index.addr, align 4, !tbaa !4
  %39 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call51 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay49, i64 noundef 256, ptr noundef @.str.2, ptr noundef %call50, i64 noundef %37, i32 noundef %38, i32 noundef %39) #4
  %40 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay52 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %41 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %40, ptr noundef @__func__.vtkexodusII_ex_get_partial_var, ptr noundef %arraydecay52, i32 noundef %41)
  br label %do.body53

do.body53:                                        ; preds = %if.then48
  %call54 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond55:                                        ; No predecessors!
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end43
  %42 = load i32, ptr %time_step.addr, align 4, !tbaa !4
  %dec = add nsw i32 %42, -1
  store i32 %dec, ptr %time_step.addr, align 4, !tbaa !4
  %conv58 = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  store i64 %conv58, ptr %arrayidx, align 16, !tbaa !9
  %43 = load i64, ptr %start_index.addr, align 8, !tbaa !9
  %sub = sub nsw i64 %43, 1
  %arrayidx59 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 1
  store i64 %sub, ptr %arrayidx59, align 8, !tbaa !9
  %arrayidx60 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  store i64 1, ptr %arrayidx60, align 16, !tbaa !9
  %44 = load i64, ptr %num_entities.addr, align 8, !tbaa !9
  %arrayidx61 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 1
  store i64 %44, ptr %arrayidx61, align 8, !tbaa !9
  %arrayidx62 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 1
  %45 = load i64, ptr %arrayidx62, align 8, !tbaa !9
  %cmp63 = icmp eq i64 %45, 0
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end57
  %arrayidx66 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 1
  store i64 0, ptr %arrayidx66, align 8, !tbaa !9
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end57
  %46 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call68 = call i32 @vtkexodusII_ex__comp_ws(i32 noundef %46)
  %cmp69 = icmp eq i32 %call68, 4
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.end67
  %47 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %48 = load i32, ptr %varid, align 4, !tbaa !4
  %arraydecay72 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  %arraydecay73 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %49 = load ptr, ptr %var_vals.addr, align 8, !tbaa !11
  %call74 = call i32 @nc_get_vara_float(i32 noundef %47, i32 noundef %48, ptr noundef %arraydecay72, ptr noundef %arraydecay73, ptr noundef %49)
  store i32 %call74, ptr %status, align 4, !tbaa !4
  br label %if.end78

if.else:                                          ; preds = %if.end67
  %50 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %51 = load i32, ptr %varid, align 4, !tbaa !4
  %arraydecay75 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  %arraydecay76 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %52 = load ptr, ptr %var_vals.addr, align 8, !tbaa !11
  %call77 = call i32 @nc_get_vara_double(i32 noundef %50, i32 noundef %51, ptr noundef %arraydecay75, ptr noundef %arraydecay76, ptr noundef %52)
  store i32 %call77, ptr %status, align 4, !tbaa !4
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then71
  %53 = load i32, ptr %status, align 4, !tbaa !4
  %cmp79 = icmp ne i32 %53, 0
  br i1 %cmp79, label %if.then81, label %if.end90

if.then81:                                        ; preds = %if.end78
  %arraydecay82 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %54 = load i32, ptr %var_type.addr, align 4, !tbaa !8
  %call83 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %54)
  %55 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %56 = load i32, ptr %var_index.addr, align 4, !tbaa !4
  %57 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call84 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay82, i64 noundef 256, ptr noundef @.str.3, ptr noundef %call83, i64 noundef %55, i32 noundef %56, i32 noundef %57) #4
  %58 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay85 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %59 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %58, ptr noundef @__func__.vtkexodusII_ex_get_partial_var, ptr noundef %arraydecay85, i32 noundef %59)
  br label %do.body86

do.body86:                                        ; preds = %if.then81
  %call87 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond88:                                        ; No predecessors!
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  br label %if.end90

if.end90:                                         ; preds = %do.end89, %if.end78
  br label %do.body91

do.body91:                                        ; preds = %if.end90
  %call92 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond93:                                        ; No predecessors!
  br label %do.end94

do.end94:                                         ; preds = %do.cond93
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %do.body91, %do.body86, %do.body53, %do.body38, %do.body29, %do.body11, %do.body4
  call void @llvm.lifetime.end.p0(i64 256, ptr %errmsg) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %start) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %obj_id_ndx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %60 = load i32, ptr %retval, align 4
  ret i32 %60

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__pthread_first_thread_init() #2

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #2

declare ptr @vtkexodusII_exerrval_get(...) #2

declare i32 @vtkexodusII_ex__get_partial_nodal_var(i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef) #2

declare i32 @vtkexodusII_ex__get_glob_vars(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @vtkexodusII_ex__check_valid_file_id(i32 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__id_lkup(i32 noundef, i32 noundef, i64 noundef) #2

declare void @vtkexodusII_ex_get_err(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare ptr @vtkexodusII_ex_name_of_object(i32 noundef) #2

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @vtkexodusII_ex__name_var_of_object(i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__comp_ws(i32 noundef) #2

declare i32 @nc_get_vara_float(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_get_vara_double(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!14 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 260, !5, i64 516}
!15 = !{!14, !5, i64 516}

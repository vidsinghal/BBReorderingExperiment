; ModuleID = 'samples/656.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_prop_array.c"
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
@__func__.vtkexodusII_ex_get_prop_array = private unnamed_addr constant [30 x i8] c"vtkexodusII_ex_get_prop_array\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"eb_prop\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ed_prop\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fa_prop\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ns_prop\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"es_prop\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fs_prop\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"els_prop\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ss_prop\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"em_prop\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"fam_prop\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"edm_prop\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"nm_prop\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"ERROR: object type %d not supported; file id %d\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"ERROR: failed to locate property array %s in file id %d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"ERROR: failed to get property name in file id %d\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Warning: object type %d, property %s not defined in file id %d\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"ERROR: failed to read values in %s property array in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_prop_array(i32 noundef %exoid, i32 noundef %obj_type, ptr noundef %prop_name, ptr noundef %values) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %prop_name.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %num_props = alloca i32, align 4
  %i = alloca i32, align 4
  %propid = alloca i32, align 4
  %status = alloca i32, align 4
  %found = alloca i32, align 4
  %name = alloca ptr, align 8
  %tmpstr = alloca [33 x i8], align 16
  %errmsg = alloca [512 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store ptr %prop_name, ptr %prop_name.addr, align 8, !tbaa !9
  store ptr %values, ptr %values.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_props) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %propid) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #6
  store i32 0, ptr %found, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6
  call void @llvm.lifetime.start.p0(i64 33, ptr %tmpstr) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #6
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @vtkexodusII_EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @vtkexodusII_EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @vtkexodusII_ex_errval, align 8, !tbaa !9
  %0 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !9
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !11
  %1 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !9
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call3 = call i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_get_prop_array)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, i32 noundef 98)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond6:                                         ; No predecessors!
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %3 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %4 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call8 = call i32 @vtkexodusII_ex_get_num_props(i32 noundef %3, i32 noundef %4)
  store i32 %call8, ptr %num_props, align 4, !tbaa !4
  store i32 1, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !4
  %6 = load i32, ptr %num_props, align 4, !tbaa !4
  %cmp9 = icmp sle i32 %5, %6
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb11
    i32 8, label %sw.bb13
    i32 2, label %sw.bb15
    i32 7, label %sw.bb17
    i32 9, label %sw.bb19
    i32 10, label %sw.bb21
    i32 3, label %sw.bb23
    i32 4, label %sw.bb25
    i32 12, label %sw.bb27
    i32 11, label %sw.bb29
    i32 5, label %sw.bb31
  ]

sw.bb:                                            ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !4
  %call10 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str, i32 noundef %8)
  store ptr %call10, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %call12 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.1, i32 noundef %9)
  store ptr %call12, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !4
  %call14 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.2, i32 noundef %10)
  store ptr %call14, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !4
  %call16 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.3, i32 noundef %11)
  store ptr %call16, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %call18 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.4, i32 noundef %12)
  store ptr %call18, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !4
  %call20 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.5, i32 noundef %13)
  store ptr %call20, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !4
  %call22 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.6, i32 noundef %14)
  store ptr %call22, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb23:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !4
  %call24 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.7, i32 noundef %15)
  store ptr %call24, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb25:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !4
  %call26 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.8, i32 noundef %16)
  store ptr %call26, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !tbaa !4
  %call28 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.9, i32 noundef %17)
  store ptr %call28, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !tbaa !4
  %call30 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.10, i32 noundef %18)
  store ptr %call30, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %call32 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.11, i32 noundef %19)
  store ptr %call32, ptr %name, align 8, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %20 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %21 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str.12, i32 noundef %20, i32 noundef %21) #6
  %22 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay34 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %22, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, ptr noundef %arraydecay34, i32 noundef 1005)
  br label %do.body35

do.body35:                                        ; preds = %sw.default
  %call36 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, i32 noundef 123)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond37:                                        ; No predecessors!
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end38, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb
  %23 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %24 = load ptr, ptr %name, align 8, !tbaa !9
  %call39 = call i32 @nc_inq_varid(i32 noundef %23, ptr noundef %24, ptr noundef %propid)
  store i32 %call39, ptr %status, align 4, !tbaa !4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %sw.epilog
  %arraydecay42 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %25 = load ptr, ptr %name, align 8, !tbaa !9
  %26 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call43 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay42, i64 noundef 512, ptr noundef @.str.13, ptr noundef %25, i32 noundef %26) #6
  %27 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay44 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %28 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %27, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, ptr noundef %arraydecay44, i32 noundef %28)
  br label %do.body45

do.body45:                                        ; preds = %if.then41
  %call46 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, i32 noundef 130)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond47:                                        ; No predecessors!
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %sw.epilog
  %arraydecay50 = getelementptr inbounds [33 x i8], ptr %tmpstr, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay50, i8 0, i64 33, i1 false)
  %29 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %30 = load i32, ptr %propid, align 4, !tbaa !4
  %arraydecay51 = getelementptr inbounds [33 x i8], ptr %tmpstr, i64 0, i64 0
  %call52 = call i32 @nc_get_att_text(i32 noundef %29, i32 noundef %30, ptr noundef @.str.14, ptr noundef %arraydecay51)
  store i32 %call52, ptr %status, align 4, !tbaa !4
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end62

if.then54:                                        ; preds = %if.end49
  %arraydecay55 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %31 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call56 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay55, i64 noundef 512, ptr noundef @.str.15, i32 noundef %31) #6
  %32 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay57 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %33 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %32, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, ptr noundef %arraydecay57, i32 noundef %33)
  br label %do.body58

do.body58:                                        ; preds = %if.then54
  %call59 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, i32 noundef 138)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond60:                                        ; No predecessors!
  br label %do.end61

do.end61:                                         ; preds = %do.cond60
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %if.end49
  %arraydecay63 = getelementptr inbounds [33 x i8], ptr %tmpstr, i64 0, i64 0
  %34 = load ptr, ptr %prop_name.addr, align 8, !tbaa !9
  %call64 = call i32 @strcmp(ptr noundef %arraydecay63, ptr noundef %34) #7
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end62
  store i32 1, ptr %found, align 4, !tbaa !4
  br label %for.end

if.end67:                                         ; preds = %if.end62
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %35 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %if.then66, %for.cond
  %36 = load i32, ptr %found, align 4, !tbaa !4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.end76, label %if.then68

if.then68:                                        ; preds = %for.end
  %arraydecay69 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %37 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %38 = load ptr, ptr %prop_name.addr, align 8, !tbaa !9
  %39 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay69, i64 noundef 512, ptr noundef @.str.16, i32 noundef %37, ptr noundef %38, i32 noundef %39) #6
  %40 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay71 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %40, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, ptr noundef %arraydecay71, i32 noundef 1005)
  br label %do.body72

do.body72:                                        ; preds = %if.then68
  %call73 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, i32 noundef 153)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond74:                                        ; No predecessors!
  br label %do.end75

do.end75:                                         ; preds = %do.cond74
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %for.end
  %41 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call77 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %41)
  %and = and i32 %call77, 16384
  %tobool78 = icmp ne i32 %and, 0
  br i1 %tobool78, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.end76
  %42 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %43 = load i32, ptr %propid, align 4, !tbaa !4
  %44 = load ptr, ptr %values.addr, align 8, !tbaa !9
  %call80 = call i32 @nc_get_var_longlong(i32 noundef %42, i32 noundef %43, ptr noundef %44)
  store i32 %call80, ptr %status, align 4, !tbaa !4
  br label %if.end82

if.else:                                          ; preds = %if.end76
  %45 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %46 = load i32, ptr %propid, align 4, !tbaa !4
  %47 = load ptr, ptr %values.addr, align 8, !tbaa !9
  %call81 = call i32 @nc_get_var_int(i32 noundef %45, i32 noundef %46, ptr noundef %47)
  store i32 %call81, ptr %status, align 4, !tbaa !4
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then79
  %48 = load i32, ptr %status, align 4, !tbaa !4
  %cmp83 = icmp ne i32 %48, 0
  br i1 %cmp83, label %if.then84, label %if.end93

if.then84:                                        ; preds = %if.end82
  %arraydecay85 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %49 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call86 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %49)
  %50 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call87 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay85, i64 noundef 512, ptr noundef @.str.17, ptr noundef %call86, i32 noundef %50) #6
  %51 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay88 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %52 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %51, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, ptr noundef %arraydecay88, i32 noundef %52)
  br label %do.body89

do.body89:                                        ; preds = %if.then84
  %call90 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, i32 noundef 169)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond91:                                        ; No predecessors!
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  br label %if.end93

if.end93:                                         ; preds = %do.end92, %if.end82
  br label %do.body94

do.body94:                                        ; preds = %if.end93
  %call95 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop_array, i32 noundef 172)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond96:                                        ; No predecessors!
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %do.body94, %do.body89, %do.body72, %do.body58, %do.body45, %do.body35, %do.body4
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #6
  call void @llvm.lifetime.end.p0(i64 33, ptr %tmpstr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %propid) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_props) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %53 = load i32, ptr %retval, align 4
  ret i32 %53

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

declare i32 @vtkexodusII_ex_get_num_props(i32 noundef, i32 noundef) #2

declare ptr @vtkexodusII_ex__catstr(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @nc_get_att_text(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare i32 @vtkexodusII_ex_int64_status(i32 noundef) #2

declare i32 @nc_get_var_longlong(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @nc_get_var_int(i32 noundef, i32 noundef, ptr noundef) #2

declare ptr @vtkexodusII_ex_name_of_object(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 516, !5, i64 1028}
!13 = !{!12, !5, i64 1028}

; ModuleID = 'samples/983.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_prop.c"
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
@__func__.vtkexodusII_ex_get_prop = private unnamed_addr constant [24 x i8] c"vtkexodusII_ex_get_prop\00", align 1
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
@.str.16 = private unnamed_addr constant [50 x i8] c"Warning: %s property %s not defined in file id %d\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Warning: %s id %ld is NULL in file id %d\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"ERROR: failed to locate id %ld in %s property array in file id %d\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"ERROR: failed to read value in %s property array in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_prop(i32 noundef %exoid, i32 noundef %obj_type, i64 noundef %obj_id, ptr noundef %prop_name, ptr noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %obj_id.addr = alloca i64, align 8
  %prop_name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %num_props = alloca i32, align 4
  %i = alloca i32, align 4
  %propid = alloca i32, align 4
  %found = alloca i32, align 4
  %start = alloca [1 x i64], align 8
  %name = alloca ptr, align 8
  %tmpstr = alloca [33 x i8], align 16
  %errmsg = alloca [512 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %l_val = alloca i64, align 8
  %val = alloca ptr, align 8
  %i_val = alloca i32, align 4
  %val121 = alloca ptr, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store i64 %obj_id, ptr %obj_id.addr, align 8, !tbaa !9
  store ptr %prop_name, ptr %prop_name.addr, align 8, !tbaa !11
  store ptr %value, ptr %value.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_props) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %propid) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #6
  store i32 0, ptr %found, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6
  call void @llvm.lifetime.start.p0(i64 33, ptr %tmpstr) #6
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #6
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
  %call3 = call i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_get_prop)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 69)
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
  store ptr %call10, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !4
  %call12 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.1, i32 noundef %9)
  store ptr %call12, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !4
  %call14 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.2, i32 noundef %10)
  store ptr %call14, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb15:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !4
  %call16 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.3, i32 noundef %11)
  store ptr %call16, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %call18 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.4, i32 noundef %12)
  store ptr %call18, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !4
  %call20 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.5, i32 noundef %13)
  store ptr %call20, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !4
  %call22 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.6, i32 noundef %14)
  store ptr %call22, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb23:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !4
  %call24 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.7, i32 noundef %15)
  store ptr %call24, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb25:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !4
  %call26 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.8, i32 noundef %16)
  store ptr %call26, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !tbaa !4
  %call28 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.9, i32 noundef %17)
  store ptr %call28, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !tbaa !4
  %call30 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.10, i32 noundef %18)
  store ptr %call30, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !4
  %call32 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.11, i32 noundef %19)
  store ptr %call32, ptr %name, align 8, !tbaa !11
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %20 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %21 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str.12, i32 noundef %20, i32 noundef %21) #6
  %22 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay34 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %22, ptr noundef @__func__.vtkexodusII_ex_get_prop, ptr noundef %arraydecay34, i32 noundef 1005)
  br label %do.body35

do.body35:                                        ; preds = %sw.default
  %call36 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 93)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond37:                                        ; No predecessors!
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end38, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb
  %23 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %24 = load ptr, ptr %name, align 8, !tbaa !11
  %call39 = call i32 @nc_inq_varid(i32 noundef %23, ptr noundef %24, ptr noundef %propid)
  store i32 %call39, ptr %status, align 4, !tbaa !4
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %sw.epilog
  %arraydecay42 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %25 = load ptr, ptr %name, align 8, !tbaa !11
  %26 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call43 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay42, i64 noundef 512, ptr noundef @.str.13, ptr noundef %25, i32 noundef %26) #6
  %27 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay44 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %28 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %27, ptr noundef @__func__.vtkexodusII_ex_get_prop, ptr noundef %arraydecay44, i32 noundef %28)
  br label %do.body45

do.body45:                                        ; preds = %if.then41
  %call46 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 100)
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
  call void @vtkexodusII_ex_err_fn(i32 noundef %32, ptr noundef @__func__.vtkexodusII_ex_get_prop, ptr noundef %arraydecay57, i32 noundef %33)
  br label %do.body58

do.body58:                                        ; preds = %if.then54
  %call59 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 108)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond60:                                        ; No predecessors!
  br label %do.end61

do.end61:                                         ; preds = %do.cond60
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %if.end49
  %arraydecay63 = getelementptr inbounds [33 x i8], ptr %tmpstr, i64 0, i64 0
  %34 = load ptr, ptr %prop_name.addr, align 8, !tbaa !11
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
  br i1 %tobool, label %if.end77, label %if.then68

if.then68:                                        ; preds = %for.end
  %arraydecay69 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %37 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call70 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %37)
  %38 = load ptr, ptr %prop_name.addr, align 8, !tbaa !11
  %39 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call71 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay69, i64 noundef 512, ptr noundef @.str.16, ptr noundef %call70, ptr noundef %38, i32 noundef %39) #6
  %40 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay72 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %40, ptr noundef @__func__.vtkexodusII_ex_get_prop, ptr noundef %arraydecay72, i32 noundef 1005)
  br label %do.body73

do.body73:                                        ; preds = %if.then68
  %call74 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 122)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond75:                                        ; No predecessors!
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %for.end
  %41 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %42 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %43 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %call78 = call i32 @vtkexodusII_ex__id_lkup(i32 noundef %41, i32 noundef %42, i64 noundef %43)
  store i32 %call78, ptr %status, align 4, !tbaa !4
  %44 = load i32, ptr %status, align 4, !tbaa !4
  %cmp79 = icmp sgt i32 %44, 0
  br i1 %cmp79, label %if.then80, label %if.else

if.then80:                                        ; preds = %if.end77
  %45 = load i32, ptr %status, align 4, !tbaa !4
  %sub = sub nsw i32 %45, 1
  %conv = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  store i64 %conv, ptr %arrayidx, align 8, !tbaa !9
  br label %if.end105

if.else:                                          ; preds = %if.end77
  call void @vtkexodusII_ex_get_err(ptr noundef null, ptr noundef null, ptr noundef %status)
  %46 = load i32, ptr %status, align 4, !tbaa !4
  %cmp81 = icmp ne i32 %46, 0
  br i1 %cmp81, label %if.then83, label %if.end104

if.then83:                                        ; preds = %if.else
  %47 = load i32, ptr %status, align 4, !tbaa !4
  %cmp84 = icmp eq i32 %47, -1006
  br i1 %cmp84, label %if.then86, label %if.end95

if.then86:                                        ; preds = %if.then83
  %arraydecay87 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %48 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call88 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %48)
  %49 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %50 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call89 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay87, i64 noundef 512, ptr noundef @.str.17, ptr noundef %call88, i64 noundef %49, i32 noundef %50) #6
  %51 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay90 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %51, ptr noundef @__func__.vtkexodusII_ex_get_prop, ptr noundef %arraydecay90, i32 noundef -1006)
  br label %do.body91

do.body91:                                        ; preds = %if.then86
  %call92 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 140)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond93:                                        ; No predecessors!
  br label %do.end94

do.end94:                                         ; preds = %do.cond93
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %if.then83
  %arraydecay96 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %52 = load i64, ptr %obj_id.addr, align 8, !tbaa !9
  %53 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call97 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %53)
  %54 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call98 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay96, i64 noundef 512, ptr noundef @.str.18, i64 noundef %52, ptr noundef %call97, i32 noundef %54) #6
  %55 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay99 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %56 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %55, ptr noundef @__func__.vtkexodusII_ex_get_prop, ptr noundef %arraydecay99, i32 noundef %56)
  br label %do.body100

do.body100:                                       ; preds = %if.end95
  %call101 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 146)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond102:                                       ; No predecessors!
  br label %do.end103

do.end103:                                        ; preds = %do.cond102
  br label %if.end104

if.end104:                                        ; preds = %do.end103, %if.else
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then80
  %57 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call106 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %57)
  %and = and i32 %call106, 16384
  %tobool107 = icmp ne i32 %and, 0
  br i1 %tobool107, label %if.then108, label %if.else115

if.then108:                                       ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_val) #6
  %58 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %59 = load i32, ptr %propid, align 4, !tbaa !4
  %arraydecay109 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call110 = call i32 @nc_get_var1_longlong(i32 noundef %58, i32 noundef %59, ptr noundef %arraydecay109, ptr noundef %l_val)
  store i32 %call110, ptr %status, align 4, !tbaa !4
  %60 = load i32, ptr %status, align 4, !tbaa !4
  %cmp111 = icmp eq i32 %60, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then108
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6
  %61 = load ptr, ptr %value.addr, align 8, !tbaa !11
  store ptr %61, ptr %val, align 8, !tbaa !11
  %62 = load i64, ptr %l_val, align 8, !tbaa !16
  %63 = load ptr, ptr %val, align 8, !tbaa !11
  store i64 %62, ptr %63, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.then108
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_val) #6
  br label %if.end123

if.else115:                                       ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 4, ptr %i_val) #6
  %64 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %65 = load i32, ptr %propid, align 4, !tbaa !4
  %arraydecay116 = getelementptr inbounds [1 x i64], ptr %start, i64 0, i64 0
  %call117 = call i32 @nc_get_var1_int(i32 noundef %64, i32 noundef %65, ptr noundef %arraydecay116, ptr noundef %i_val)
  store i32 %call117, ptr %status, align 4, !tbaa !4
  %66 = load i32, ptr %status, align 4, !tbaa !4
  %cmp118 = icmp eq i32 %66, 0
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.else115
  call void @llvm.lifetime.start.p0(i64 8, ptr %val121) #6
  %67 = load ptr, ptr %value.addr, align 8, !tbaa !11
  store ptr %67, ptr %val121, align 8, !tbaa !11
  %68 = load i32, ptr %i_val, align 4, !tbaa !4
  %69 = load ptr, ptr %val121, align 8, !tbaa !11
  store i32 %68, ptr %69, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %val121) #6
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.else115
  call void @llvm.lifetime.end.p0(i64 4, ptr %i_val) #6
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.end114
  %70 = load i32, ptr %status, align 4, !tbaa !4
  %cmp124 = icmp ne i32 %70, 0
  br i1 %cmp124, label %if.then126, label %if.end135

if.then126:                                       ; preds = %if.end123
  %arraydecay127 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %71 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call128 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %71)
  %72 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call129 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay127, i64 noundef 512, ptr noundef @.str.19, ptr noundef %call128, i32 noundef %72) #6
  %73 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay130 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %74 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %73, ptr noundef @__func__.vtkexodusII_ex_get_prop, ptr noundef %arraydecay130, i32 noundef %74)
  br label %do.body131

do.body131:                                       ; preds = %if.then126
  %call132 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 172)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond133:                                       ; No predecessors!
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %if.end123
  br label %do.body136

do.body136:                                       ; preds = %if.end135
  %call137 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_prop, i32 noundef 175)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond138:                                       ; No predecessors!
  br label %do.end139

do.end139:                                        ; preds = %do.cond138
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end139, %do.body136, %do.body131, %do.body100, %do.body91, %do.body73, %do.body58, %do.body45, %do.body35, %do.body4
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #6
  call void @llvm.lifetime.end.p0(i64 33, ptr %tmpstr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %propid) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_props) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %75 = load i32, ptr %retval, align 4
  ret i32 %75

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

declare ptr @vtkexodusII_ex_name_of_object(i32 noundef) #2

declare i32 @vtkexodusII_ex__id_lkup(i32 noundef, i32 noundef, i64 noundef) #2

declare void @vtkexodusII_ex_get_err(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex_int64_status(i32 noundef) #2

declare i32 @nc_get_var1_longlong(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @nc_get_var1_int(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 516, !5, i64 1028}
!15 = !{!14, !5, i64 1028}
!16 = !{!17, !17, i64 0}
!17 = !{!"long long", !6, i64 0}

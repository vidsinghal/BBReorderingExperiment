; ModuleID = 'samples/505.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_assembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EX_mutex_struct = type { %union.pthread_mutex_t, %union.pthread_mutexattr_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.EX_errval = type { i32, [512 x i8], [512 x i8], i32 }
%struct.ex_assembly = type { i64, ptr, i32, i32, ptr }

@vtkexodusII_EX_first_init_g = external global i32, align 4
@vtkexodusII_EX_g = external global %struct.EX_mutex_struct, align 8
@vtkexodusII_ex_errval = external global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"ERROR: unknown file id %d.\00", align 1
@__func__.vtkexodusII_ex_get_assembly = private unnamed_addr constant [28 x i8] c"vtkexodusII_ex_get_assembly\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"assembly_entity\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"ERROR: failed to locate assembly id  %ld in id array in file id %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"num_entity_assembly\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"ERROR: failed to locate number of entities in assembly %ld in file id %d\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"ERROR: failed to get number of entities in assembly %ld in file id %d\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"ERROR: failed to locate entity list array for assembly %ld in file id %d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_type\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"ERROR: failed to get assembly %ld type in file id %d\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"_name\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"ERROR: failed to read assembly name for assembly %ld in file id %d\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"ERROR: failed to read entity list for assembly %ld in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_assembly(i32 noundef %exoid, ptr noundef %assembly) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %assembly.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %status = alloca i32, align 4
  %dimid = alloca i32, align 4
  %len = alloca i64, align 8
  %errmsg = alloca [512 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %entlst_id = alloca i32, align 4
  %numentryptr = alloca ptr, align 8
  %type88 = alloca i32, align 4
  %name_size = alloca i32, align 4
  %tmp_name = alloca [256 x i8], align 16
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store ptr %assembly, ptr %assembly.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #5
  store ptr null, ptr %file, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  store i32 0, ptr %status, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dimid) #5
  store i32 0, ptr %dimid, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #5
  store i64 0, ptr %len, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #5
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
  %call3 = call ptr @vtkexodusII_ex__find_file_item(i32 noundef %2)
  store ptr %call3, ptr %file, align 8, !tbaa !8
  %3 = load ptr, ptr %file, align 8, !tbaa !8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %4 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str, i32 noundef %4) #5
  %5 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay5 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %5, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay5, i32 noundef 1002)
  br label %do.body6

do.body6:                                         ; preds = %if.then
  %call7 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 32)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup154

do.cond8:                                         ; No predecessors!
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  br label %if.end

if.end:                                           ; preds = %do.end9, %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %entlst_id) #5
  store i32 0, ptr %entlst_id, align 4, !tbaa !4
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %7 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id = getelementptr inbounds %struct.ex_assembly, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %id, align 8, !tbaa !15
  %conv = trunc i64 %8 to i32
  %call10 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.1, i32 noundef %conv)
  %call11 = call i32 @nc_inq_varid(i32 noundef %6, ptr noundef %call10, ptr noundef %entlst_id)
  store i32 %call11, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %call11, 0
  br i1 %cmp, label %if.then13, label %if.end40

if.then13:                                        ; preds = %if.end
  call void @vtkexodusII_ex_get_err(ptr noundef null, ptr noundef null, ptr noundef %status)
  %9 = load i32, ptr %status, align 4, !tbaa !4
  %cmp14 = icmp ne i32 %9, 0
  br i1 %cmp14, label %if.then16, label %if.end39

if.then16:                                        ; preds = %if.then13
  %10 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.ex_assembly, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %name, align 8, !tbaa !17
  %cmp17 = icmp ne ptr %11, null
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then16
  %12 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %name20 = getelementptr inbounds %struct.ex_assembly, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %name20, align 8, !tbaa !17
  %call21 = call ptr @vtkexodusII_ex_copy_string(ptr noundef %13, ptr noundef @.str.2, i64 noundef 33)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then16
  %14 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %entity_count = getelementptr inbounds %struct.ex_assembly, ptr %14, i32 0, i32 3
  store i32 0, ptr %entity_count, align 4, !tbaa !18
  %15 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %type = getelementptr inbounds %struct.ex_assembly, ptr %15, i32 0, i32 2
  store i32 -1, ptr %type, align 8, !tbaa !19
  %16 = load i32, ptr %status, align 4, !tbaa !4
  %cmp23 = icmp eq i32 %16, -1006
  br i1 %cmp23, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end22
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %call27 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 46)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup153

do.cond28:                                        ; No predecessors!
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %if.end22
  %arraydecay31 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %17 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id32 = getelementptr inbounds %struct.ex_assembly, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %id32, align 8, !tbaa !15
  %19 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay31, i64 noundef 512, ptr noundef @.str.3, i64 noundef %18, i32 noundef %19) #5
  %20 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay34 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %21 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %20, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay34, i32 noundef %21)
  br label %do.body35

do.body35:                                        ; preds = %if.end30
  %call36 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 52)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup153

do.cond37:                                        ; No predecessors!
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.then13
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %numentryptr) #5
  %22 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id41 = getelementptr inbounds %struct.ex_assembly, ptr %22, i32 0, i32 0
  %23 = load i64, ptr %id41, align 8, !tbaa !15
  %conv42 = trunc i64 %23 to i32
  %call43 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.4, i32 noundef %conv42)
  store ptr %call43, ptr %numentryptr, align 8, !tbaa !8
  %24 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %25 = load ptr, ptr %numentryptr, align 8, !tbaa !8
  %call44 = call i32 @nc_inq_dimid(i32 noundef %24, ptr noundef %25, ptr noundef %dimid)
  store i32 %call44, ptr %status, align 4, !tbaa !4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.end56

if.then47:                                        ; preds = %if.end40
  %arraydecay48 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %26 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id49 = getelementptr inbounds %struct.ex_assembly, ptr %26, i32 0, i32 0
  %27 = load i64, ptr %id49, align 8, !tbaa !15
  %28 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call50 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay48, i64 noundef 512, ptr noundef @.str.5, i64 noundef %27, i32 noundef %28) #5
  %29 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay51 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %30 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %29, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay51, i32 noundef %30)
  br label %do.body52

do.body52:                                        ; preds = %if.then47
  %call53 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 62)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup152

do.cond54:                                        ; No predecessors!
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %if.end40
  %31 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %32 = load i32, ptr %dimid, align 4, !tbaa !4
  %call57 = call i32 @nc_inq_dimlen(i32 noundef %31, i32 noundef %32, ptr noundef %len)
  store i32 %call57, ptr %status, align 4, !tbaa !4
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end69

if.then60:                                        ; preds = %if.end56
  %arraydecay61 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %33 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id62 = getelementptr inbounds %struct.ex_assembly, ptr %33, i32 0, i32 0
  %34 = load i64, ptr %id62, align 8, !tbaa !15
  %35 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call63 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay61, i64 noundef 512, ptr noundef @.str.6, i64 noundef %34, i32 noundef %35) #5
  %36 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay64 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %37 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %36, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay64, i32 noundef %37)
  br label %do.body65

do.body65:                                        ; preds = %if.then60
  %call66 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 70)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup152

do.cond67:                                        ; No predecessors!
  br label %do.end68

do.end68:                                         ; preds = %do.cond67
  br label %if.end69

if.end69:                                         ; preds = %do.end68, %if.end56
  %38 = load i64, ptr %len, align 8, !tbaa !10
  %conv70 = trunc i64 %38 to i32
  %39 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %entity_count71 = getelementptr inbounds %struct.ex_assembly, ptr %39, i32 0, i32 3
  store i32 %conv70, ptr %entity_count71, align 4, !tbaa !18
  %40 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %41 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id72 = getelementptr inbounds %struct.ex_assembly, ptr %41, i32 0, i32 0
  %42 = load i64, ptr %id72, align 8, !tbaa !15
  %conv73 = trunc i64 %42 to i32
  %call74 = call ptr @vtkexodusII_ex__catstr(ptr noundef @.str.1, i32 noundef %conv73)
  %call75 = call i32 @nc_inq_varid(i32 noundef %40, ptr noundef %call74, ptr noundef %entlst_id)
  store i32 %call75, ptr %status, align 4, !tbaa !4
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end87

if.then78:                                        ; preds = %if.end69
  %arraydecay79 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %43 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id80 = getelementptr inbounds %struct.ex_assembly, ptr %43, i32 0, i32 0
  %44 = load i64, ptr %id80, align 8, !tbaa !15
  %45 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call81 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay79, i64 noundef 512, ptr noundef @.str.7, i64 noundef %44, i32 noundef %45) #5
  %46 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay82 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %47 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %46, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay82, i32 noundef %47)
  br label %do.body83

do.body83:                                        ; preds = %if.then78
  %call84 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 81)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup152

do.cond85:                                        ; No predecessors!
  br label %do.end86

do.end86:                                         ; preds = %do.cond85
  br label %if.end87

if.end87:                                         ; preds = %do.end86, %if.end69
  call void @llvm.lifetime.start.p0(i64 4, ptr %type88) #5
  %48 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %49 = load i32, ptr %entlst_id, align 4, !tbaa !4
  %call89 = call i32 @nc_get_att_int(i32 noundef %48, i32 noundef %49, ptr noundef @.str.8, ptr noundef %type88)
  store i32 %call89, ptr %status, align 4, !tbaa !4
  %cmp90 = icmp ne i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end101

if.then92:                                        ; preds = %if.end87
  %arraydecay93 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %50 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id94 = getelementptr inbounds %struct.ex_assembly, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %id94, align 8, !tbaa !15
  %52 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call95 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay93, i64 noundef 512, ptr noundef @.str.9, i64 noundef %51, i32 noundef %52) #5
  %53 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay96 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %54 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %53, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay96, i32 noundef %54)
  br label %do.body97

do.body97:                                        ; preds = %if.then92
  %call98 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 90)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

do.cond99:                                        ; No predecessors!
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  br label %if.end101

if.end101:                                        ; preds = %do.end100, %if.end87
  %55 = load i32, ptr %type88, align 4, !tbaa !4
  %56 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %type102 = getelementptr inbounds %struct.ex_assembly, ptr %56, i32 0, i32 2
  store i32 %55, ptr %type102, align 8, !tbaa !19
  %57 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %name103 = getelementptr inbounds %struct.ex_assembly, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %name103, align 8, !tbaa !17
  %cmp104 = icmp ne ptr %58, null
  br i1 %cmp104, label %if.then106, label %if.end128

if.then106:                                       ; preds = %if.end101
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_size) #5
  %59 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call107 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %59, i32 noundef 50)
  %conv108 = trunc i64 %call107 to i32
  store i32 %conv108, ptr %name_size, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 256, ptr %tmp_name) #5
  call void @llvm.memset.p0.i64(ptr align 16 %tmp_name, i8 0, i64 256, i1 false)
  %60 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %61 = load i32, ptr %entlst_id, align 4, !tbaa !4
  %arraydecay109 = getelementptr inbounds [256 x i8], ptr %tmp_name, i64 0, i64 0
  %call110 = call i32 @nc_get_att_text(i32 noundef %60, i32 noundef %61, ptr noundef @.str.10, ptr noundef %arraydecay109)
  store i32 %call110, ptr %status, align 4, !tbaa !4
  %cmp111 = icmp ne i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.end122

if.then113:                                       ; preds = %if.then106
  %arraydecay114 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %62 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id115 = getelementptr inbounds %struct.ex_assembly, ptr %62, i32 0, i32 0
  %63 = load i64, ptr %id115, align 8, !tbaa !15
  %64 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call116 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay114, i64 noundef 512, ptr noundef @.str.11, i64 noundef %63, i32 noundef %64) #5
  %65 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay117 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %66 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %65, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay117, i32 noundef %66)
  br label %do.body118

do.body118:                                       ; preds = %if.then113
  %call119 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 103)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond120:                                       ; No predecessors!
  br label %do.end121

do.end121:                                        ; preds = %do.cond120
  br label %if.end122

if.end122:                                        ; preds = %do.end121, %if.then106
  %67 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %name123 = getelementptr inbounds %struct.ex_assembly, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %name123, align 8, !tbaa !17
  %arraydecay124 = getelementptr inbounds [256 x i8], ptr %tmp_name, i64 0, i64 0
  %69 = load i32, ptr %name_size, align 4, !tbaa !4
  %add = add nsw i32 %69, 1
  %conv125 = sext i32 %add to i64
  %call126 = call ptr @vtkexodusII_ex_copy_string(ptr noundef %68, ptr noundef %arraydecay124, i64 noundef %conv125)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %do.body118
  call void @llvm.lifetime.end.p0(i64 256, ptr %tmp_name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_size) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup151 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end128

if.end128:                                        ; preds = %cleanup.cont, %if.end101
  %70 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %entity_list = getelementptr inbounds %struct.ex_assembly, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %entity_list, align 8, !tbaa !20
  %cmp129 = icmp ne ptr %71, null
  br i1 %cmp129, label %if.then131, label %if.end146

if.then131:                                       ; preds = %if.end128
  %72 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %73 = load i32, ptr %entlst_id, align 4, !tbaa !4
  %74 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %entity_list132 = getelementptr inbounds %struct.ex_assembly, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %entity_list132, align 8, !tbaa !20
  %call133 = call i32 @nc_get_var_longlong(i32 noundef %72, i32 noundef %73, ptr noundef %75)
  store i32 %call133, ptr %status, align 4, !tbaa !4
  %cmp134 = icmp ne i32 %call133, 0
  br i1 %cmp134, label %if.then136, label %if.end145

if.then136:                                       ; preds = %if.then131
  %arraydecay137 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %76 = load ptr, ptr %assembly.addr, align 8, !tbaa !8
  %id138 = getelementptr inbounds %struct.ex_assembly, ptr %76, i32 0, i32 0
  %77 = load i64, ptr %id138, align 8, !tbaa !15
  %78 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call139 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay137, i64 noundef 512, ptr noundef @.str.12, i64 noundef %77, i32 noundef %78) #5
  %79 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay140 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %80 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %79, ptr noundef @__func__.vtkexodusII_ex_get_assembly, ptr noundef %arraydecay140, i32 noundef %80)
  br label %do.body141

do.body141:                                       ; preds = %if.then136
  %call142 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 115)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

do.cond143:                                       ; No predecessors!
  br label %do.end144

do.end144:                                        ; preds = %do.cond143
  br label %if.end145

if.end145:                                        ; preds = %do.end144, %if.then131
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end128
  br label %do.body147

do.body147:                                       ; preds = %if.end146
  %call148 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_assembly, i32 noundef 118)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

do.cond149:                                       ; No predecessors!
  br label %do.end150

do.end150:                                        ; preds = %do.cond149
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

cleanup151:                                       ; preds = %do.end150, %do.body147, %do.body141, %cleanup, %do.body97
  call void @llvm.lifetime.end.p0(i64 4, ptr %type88) #5
  br label %cleanup152

cleanup152:                                       ; preds = %cleanup151, %do.body83, %do.body65, %do.body52
  call void @llvm.lifetime.end.p0(i64 8, ptr %numentryptr) #5
  br label %cleanup153

cleanup153:                                       ; preds = %cleanup152, %do.body35, %do.body26
  call void @llvm.lifetime.end.p0(i64 4, ptr %entlst_id) #5
  br label %cleanup154

cleanup154:                                       ; preds = %cleanup153, %do.body6
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dimid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #5
  %cleanup.dest159 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest159, label %unreachable [
    i32 0, label %cleanup.cont160
    i32 1, label %cleanup.cont160
  ]

cleanup.cont160:                                  ; preds = %cleanup154, %cleanup154
  %81 = load i32, ptr %retval, align 4
  ret i32 %81

unreachable:                                      ; preds = %cleanup154
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__pthread_first_thread_init() #2

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #2

declare ptr @vtkexodusII_exerrval_get(...) #2

declare ptr @vtkexodusII_ex__find_file_item(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @vtkexodusII_ex__catstr(ptr noundef, i32 noundef) #2

declare void @vtkexodusII_ex_get_err(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @vtkexodusII_ex_copy_string(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @nc_inq_dimid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_inq_dimlen(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @nc_get_att_int(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i64 @vtkexodusII_ex_inquire_int(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @nc_get_att_text(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @nc_get_var_longlong(i32 noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!15 = !{!16, !11, i64 0}
!16 = !{!"ex_assembly", !11, i64 0, !9, i64 8, !6, i64 16, !5, i64 20, !9, i64 24}
!17 = !{!16, !9, i64 8}
!18 = !{!16, !5, i64 20}
!19 = !{!16, !6, i64 16}
!20 = !{!16, !9, i64 24}

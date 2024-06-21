; ModuleID = 'samples/272.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_put_partial_coord_component.c"
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
@__func__.vtkexodusII_ex_put_partial_coord_component = private unnamed_addr constant [43 x i8] c"vtkexodusII_ex_put_partial_coord_component\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"num_nodes\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"ERROR: inquire failed to return number of nodes in file id %d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"num_dim\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"ERROR: failed to locate number of dimensions in file id %d\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"ERROR: failed to get number of dimensions in file id %d\00", align 1
@.str.5 = private unnamed_addr constant [101 x i8] c"ERROR: start index (%ld) + node count (%ld) is larger than total number of nodes (%ld) in file id %d\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"ERROR: Component (%d) is larger than number of dimensions (%zu) in file id %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"coordx\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"coordy\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"coordz\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"ERROR: failed to locate %s nodal coordinates in file id %d\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"ERROR: failed to put %s coord array in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_put_partial_coord_component(i32 noundef %exoid, i64 noundef %start_node_num, i64 noundef %num_nodes, i32 noundef %component, ptr noundef %coor) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %start_node_num.addr = alloca i64, align 8
  %num_nodes.addr = alloca i64, align 8
  %component.addr = alloca i32, align 4
  %coor.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %coordid = alloca i32, align 4
  %numnoddim = alloca i32, align 4
  %ndimdim = alloca i32, align 4
  %num_nod = alloca i64, align 8
  %num_dim = alloca i64, align 8
  %start = alloca [2 x i64], align 16
  %count = alloca [2 x i64], align 16
  %errmsg = alloca [512 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %which = alloca ptr, align 8
  %comp = alloca ptr, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i64 %start_node_num, ptr %start_node_num.addr, align 8, !tbaa !8
  store i64 %num_nodes, ptr %num_nodes.addr, align 8, !tbaa !8
  store i32 %component, ptr %component.addr, align 4, !tbaa !4
  store ptr %coor, ptr %coor.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %coordid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %numnoddim) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndimdim) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_nod) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_dim) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %start) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #4
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @vtkexodusII_EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @vtkexodusII_EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @vtkexodusII_ex_errval, align 8, !tbaa !10
  %0 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !10
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !12
  %1 = load ptr, ptr @vtkexodusII_ex_errval, align 8, !tbaa !10
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call3 = call i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 35)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond6:                                         ; No predecessors!
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %3 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call8 = call i32 @nc_inq_dimid(i32 noundef %3, ptr noundef @.str, ptr noundef %numnoddim)
  store i32 %call8, ptr %status, align 4, !tbaa !4
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  %call12 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 43)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond13:                                        ; No predecessors!
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  %4 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %5 = load i32, ptr %numnoddim, align 4, !tbaa !4
  %call16 = call i32 @nc_inq_dimlen(i32 noundef %4, i32 noundef %5, ptr noundef %tmp)
  store i32 %call16, ptr %status, align 4, !tbaa !4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end15
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str.1, i32 noundef %6) #4
  %7 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay20 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %8 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %7, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, ptr noundef %arraydecay20, i32 noundef %8)
  br label %do.body21

do.body21:                                        ; preds = %if.then18
  %call22 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 52)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond23:                                        ; No predecessors!
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.end15
  %9 = load i64, ptr %tmp, align 8, !tbaa !8
  store i64 %9, ptr %num_nod, align 8, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.body21
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup133 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %10 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call26 = call i32 @nc_inq_dimid(i32 noundef %10, ptr noundef @.str.2, ptr noundef %ndimdim)
  store i32 %call26, ptr %status, align 4, !tbaa !4
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end36

if.then28:                                        ; preds = %cleanup.cont
  %arraydecay29 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %11 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay29, i64 noundef 512, ptr noundef @.str.3, i32 noundef %11) #4
  %12 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay31 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %13 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %12, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, ptr noundef %arraydecay31, i32 noundef %13)
  br label %do.body32

do.body32:                                        ; preds = %if.then28
  %call33 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 61)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond34:                                        ; No predecessors!
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %cleanup.cont
  %14 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %15 = load i32, ptr %ndimdim, align 4, !tbaa !4
  %call37 = call i32 @nc_inq_dimlen(i32 noundef %14, i32 noundef %15, ptr noundef %num_dim)
  store i32 %call37, ptr %status, align 4, !tbaa !4
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.end36
  %arraydecay40 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %16 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call41 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay40, i64 noundef 512, ptr noundef @.str.4, i32 noundef %16) #4
  %17 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay42 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %18 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %17, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, ptr noundef %arraydecay42, i32 noundef %18)
  br label %do.body43

do.body43:                                        ; preds = %if.then39
  %call44 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 68)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond45:                                        ; No predecessors!
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %if.end36
  %19 = load i64, ptr %start_node_num.addr, align 8, !tbaa !8
  %dec = add nsw i64 %19, -1
  store i64 %dec, ptr %start_node_num.addr, align 8, !tbaa !8
  %20 = load i64, ptr %start_node_num.addr, align 8, !tbaa !8
  %21 = load i64, ptr %num_nodes.addr, align 8, !tbaa !8
  %add = add nsw i64 %20, %21
  %22 = load i64, ptr %num_nod, align 8, !tbaa !8
  %cmp48 = icmp sgt i64 %add, %22
  br i1 %cmp48, label %if.then49, label %if.end57

if.then49:                                        ; preds = %if.end47
  %arraydecay50 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %23 = load i64, ptr %start_node_num.addr, align 8, !tbaa !8
  %24 = load i64, ptr %num_nodes.addr, align 8, !tbaa !8
  %25 = load i64, ptr %num_nod, align 8, !tbaa !8
  %26 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call51 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay50, i64 noundef 512, ptr noundef @.str.5, i64 noundef %23, i64 noundef %24, i64 noundef %25, i32 noundef %26) #4
  %27 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay52 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %27, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, ptr noundef %arraydecay52, i32 noundef 1005)
  br label %do.body53

do.body53:                                        ; preds = %if.then49
  %call54 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 78)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond55:                                        ; No predecessors!
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end47
  %28 = load i32, ptr %component.addr, align 4, !tbaa !4
  %conv = sext i32 %28 to i64
  %29 = load i64, ptr %num_dim, align 8, !tbaa !8
  %cmp58 = icmp ugt i64 %conv, %29
  br i1 %cmp58, label %if.then60, label %if.end68

if.then60:                                        ; preds = %if.end57
  %arraydecay61 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %30 = load i32, ptr %component.addr, align 4, !tbaa !4
  %31 = load i64, ptr %num_dim, align 8, !tbaa !8
  %32 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call62 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay61, i64 noundef 512, ptr noundef @.str.6, i32 noundef %30, i64 noundef %31, i32 noundef %32) #4
  %33 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay63 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %33, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, ptr noundef %arraydecay63, i32 noundef 1005)
  br label %do.body64

do.body64:                                        ; preds = %if.then60
  %call65 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 86)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond66:                                        ; No predecessors!
  br label %do.end67

do.end67:                                         ; preds = %do.cond66
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %if.end57
  %34 = load i32, ptr %component.addr, align 4, !tbaa !4
  %dec69 = add nsw i32 %34, -1
  store i32 %dec69, ptr %component.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %which) #4
  store ptr null, ptr %which, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %comp) #4
  store ptr null, ptr %comp, align 8, !tbaa !10
  %35 = load i64, ptr %start_node_num.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  store i64 %35, ptr %arrayidx, align 16, !tbaa !8
  %36 = load i64, ptr %num_nodes.addr, align 8, !tbaa !8
  %arrayidx70 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  store i64 %36, ptr %arrayidx70, align 16, !tbaa !8
  %arrayidx71 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %37 = load i64, ptr %arrayidx71, align 16, !tbaa !8
  %cmp72 = icmp eq i64 %37, 0
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end68
  %arrayidx75 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  store i64 0, ptr %arrayidx75, align 16, !tbaa !8
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end68
  %38 = load i32, ptr %component.addr, align 4, !tbaa !4
  %cmp77 = icmp eq i32 %38, 0
  br i1 %cmp77, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.end76
  store ptr @.str.7, ptr %which, align 8, !tbaa !10
  store ptr @.str.8, ptr %comp, align 8, !tbaa !10
  br label %if.end89

if.else:                                          ; preds = %if.end76
  %39 = load i32, ptr %component.addr, align 4, !tbaa !4
  %cmp80 = icmp eq i32 %39, 1
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %if.else
  store ptr @.str.9, ptr %which, align 8, !tbaa !10
  store ptr @.str.10, ptr %comp, align 8, !tbaa !10
  br label %if.end88

if.else83:                                        ; preds = %if.else
  %40 = load i32, ptr %component.addr, align 4, !tbaa !4
  %cmp84 = icmp eq i32 %40, 2
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.else83
  store ptr @.str.11, ptr %which, align 8, !tbaa !10
  store ptr @.str.12, ptr %comp, align 8, !tbaa !10
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.else83
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then82
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then79
  %41 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %42 = load ptr, ptr %comp, align 8, !tbaa !10
  %call90 = call i32 @nc_inq_varid(i32 noundef %41, ptr noundef %42, ptr noundef %coordid)
  store i32 %call90, ptr %status, align 4, !tbaa !4
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.end101

if.then93:                                        ; preds = %if.end89
  %arraydecay94 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %43 = load ptr, ptr %which, align 8, !tbaa !10
  %44 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call95 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay94, i64 noundef 512, ptr noundef @.str.13, ptr noundef %43, i32 noundef %44) #4
  %45 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay96 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %46 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %45, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, ptr noundef %arraydecay96, i32 noundef %46)
  br label %do.body97

do.body97:                                        ; preds = %if.then93
  %call98 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 118)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup125

do.cond99:                                        ; No predecessors!
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  br label %if.end101

if.end101:                                        ; preds = %do.end100, %if.end89
  %47 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call102 = call i32 @vtkexodusII_ex__comp_ws(i32 noundef %47)
  %cmp103 = icmp eq i32 %call102, 4
  br i1 %cmp103, label %if.then105, label %if.else109

if.then105:                                       ; preds = %if.end101
  %48 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %49 = load i32, ptr %coordid, align 4, !tbaa !4
  %arraydecay106 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  %arraydecay107 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %50 = load ptr, ptr %coor.addr, align 8, !tbaa !10
  %call108 = call i32 @nc_put_vara_float(i32 noundef %48, i32 noundef %49, ptr noundef %arraydecay106, ptr noundef %arraydecay107, ptr noundef %50)
  store i32 %call108, ptr %status, align 4, !tbaa !4
  br label %if.end113

if.else109:                                       ; preds = %if.end101
  %51 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %52 = load i32, ptr %coordid, align 4, !tbaa !4
  %arraydecay110 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  %arraydecay111 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %53 = load ptr, ptr %coor.addr, align 8, !tbaa !10
  %call112 = call i32 @nc_put_vara_double(i32 noundef %51, i32 noundef %52, ptr noundef %arraydecay110, ptr noundef %arraydecay111, ptr noundef %53)
  store i32 %call112, ptr %status, align 4, !tbaa !4
  br label %if.end113

if.end113:                                        ; preds = %if.else109, %if.then105
  %54 = load i32, ptr %status, align 4, !tbaa !4
  %cmp114 = icmp ne i32 %54, 0
  br i1 %cmp114, label %if.then116, label %if.end124

if.then116:                                       ; preds = %if.end113
  %arraydecay117 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %55 = load ptr, ptr %which, align 8, !tbaa !10
  %56 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call118 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay117, i64 noundef 512, ptr noundef @.str.14, ptr noundef %55, i32 noundef %56) #4
  %57 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay119 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %58 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %57, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, ptr noundef %arraydecay119, i32 noundef %58)
  br label %do.body120

do.body120:                                       ; preds = %if.then116
  %call121 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 132)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup125

do.cond122:                                       ; No predecessors!
  br label %do.end123

do.end123:                                        ; preds = %do.cond122
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %if.end113
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup125

cleanup125:                                       ; preds = %if.end124, %do.body120, %do.body97
  call void @llvm.lifetime.end.p0(i64 8, ptr %comp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %which) #4
  %cleanup.dest127 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest127, label %cleanup133 [
    i32 0, label %cleanup.cont128
  ]

cleanup.cont128:                                  ; preds = %cleanup125
  br label %do.body129

do.body129:                                       ; preds = %cleanup.cont128
  %call130 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_put_partial_coord_component, i32 noundef 135)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond131:                                       ; No predecessors!
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

cleanup133:                                       ; preds = %do.end132, %do.body129, %cleanup125, %do.body64, %do.body53, %do.body43, %do.body32, %cleanup, %do.body11, %do.body4
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %start) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_dim) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_nod) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndimdim) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %numnoddim) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %coordid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4
  %cleanup.dest142 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest142, label %unreachable [
    i32 0, label %cleanup.cont143
    i32 1, label %cleanup.cont143
  ]

cleanup.cont143:                                  ; preds = %cleanup133, %cleanup133
  %59 = load i32, ptr %retval, align 4
  ret i32 %59

unreachable:                                      ; preds = %cleanup133
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

declare i32 @nc_inq_dimid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_inq_dimlen(i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__comp_ws(i32 noundef) #2

declare i32 @nc_put_vara_float(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_put_vara_double(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 516, !5, i64 1028}
!14 = !{!13, !5, i64 1028}

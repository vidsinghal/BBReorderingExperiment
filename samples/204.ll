; ModuleID = 'samples/204.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EX_mutex_struct = type { %union.pthread_mutex_t, %union.pthread_mutexattr_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.ex_assembly = type { i64, ptr, i32, i32, ptr }
%struct.EX_errval = type { i32, [512 x i8], [512 x i8], i32 }

@vtkexodusII_EX_first_init_g = external global i32, align 4
@vtkexodusII_EX_g = external global %struct.EX_mutex_struct, align 8
@vtkexodusII_ex_errval = external global ptr, align 8
@__func__.vtkexodusII_ex_get_names = private unnamed_addr constant [25 x i8] c"vtkexodusII_ex_get_names\00", align 1
@.str = private unnamed_addr constant [54 x i8] c"ERROR: failed to inquire ASSEMBLY count in file id %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"num_ed_blk\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"edge block\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ed_names\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"num_fa_blk\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"face block\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"fa_names\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"num_el_blk\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"element block\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"eb_names\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"num_node_sets\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"nodeset\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ns_names\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"num_edge_sets\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"edgeset\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"es_names\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"num_face_sets\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"faceset\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"fs_names\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"num_side_sets\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"sideset\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"ss_names\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"num_elem_sets\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"elemset\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"els_names\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"num_node_maps\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"node map\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"nmap_names\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"num_edge_maps\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"edge map\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"edmap_names\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"num_face_maps\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"face map\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"famap_names\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"num_elem_maps\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"element map\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"emap_names\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"ERROR: Invalid type specified in file id %d\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ex_get_names\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_names(i32 noundef %exoid, i32 noundef %obj_type, ptr noundef %names) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %names.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %varid = alloca i32, align 4
  %temp = alloca i32, align 4
  %num_entity = alloca i64, align 8
  %i = alloca i64, align 8
  %errmsg = alloca [512 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %num_assembly = alloca i32, align 4
  %errmsg12 = alloca [512 x i8], align 16
  %ids = alloca ptr, align 8
  %i21 = alloca i32, align 4
  %assembly = alloca %struct.ex_assembly, align 8
  %ids27 = alloca ptr, align 8
  %i31 = alloca i32, align 4
  %assembly37 = alloca %struct.ex_assembly, align 8
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store ptr %names, ptr %names.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_entity) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #5
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
  %call3 = call i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_names, i32 noundef 41)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

do.cond6:                                         ; No predecessors!
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %3 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  switch i32 %3, label %sw.default [
    i32 16, label %sw.bb
    i32 6, label %sw.bb57
    i32 8, label %sw.bb60
    i32 1, label %sw.bb63
    i32 2, label %sw.bb66
    i32 7, label %sw.bb69
    i32 9, label %sw.bb72
    i32 3, label %sw.bb75
    i32 10, label %sw.bb78
    i32 5, label %sw.bb81
    i32 11, label %sw.bb84
    i32 12, label %sw.bb87
    i32 4, label %sw.bb90
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_assembly) #5
  %4 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call8 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %4, i32 noundef 60)
  %conv = trunc i64 %call8 to i32
  store i32 %conv, ptr %num_assembly, align 4, !tbaa !4
  %5 = load i32, ptr %num_assembly, align 4, !tbaa !4
  %cmp9 = icmp slt i32 %5, 0
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg12) #5
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg12, i64 0, i64 0
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str, i32 noundef %6) #5
  %7 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay14 = getelementptr inbounds [512 x i8], ptr %errmsg12, i64 0, i64 0
  %8 = load i32, ptr %num_assembly, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %7, ptr noundef @__func__.vtkexodusII_ex_get_names, ptr noundef %arraydecay14, i32 noundef %8)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg12) #5
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  %9 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call16 = call i32 @vtkexodusII_ex_int64_status(i32 noundef %9)
  %and = and i32 %call16, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %ids) #5
  %10 = load i32, ptr %num_assembly, align 4, !tbaa !4
  %conv18 = sext i32 %10 to i64
  %call19 = call noalias ptr @calloc(i64 noundef %conv18, i64 noundef 8) #6
  store ptr %call19, ptr %ids, align 8, !tbaa !9
  %11 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %12 = load ptr, ptr %ids, align 8, !tbaa !9
  %call20 = call i32 @vtkexodusII_ex_get_ids(i32 noundef %11, i32 noundef 16, ptr noundef %12)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i21) #5
  store i32 0, ptr %i21, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then17
  %13 = load i32, ptr %i21, align 4, !tbaa !4
  %14 = load i32, ptr %num_assembly, align 4, !tbaa !4
  %cmp22 = icmp slt i32 %13, %14
  br i1 %cmp22, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 7, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i21) #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %assembly) #5
  %id = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 0
  %15 = load ptr, ptr %ids, align 8, !tbaa !9
  %16 = load i32, ptr %i21, align 4, !tbaa !4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i64, ptr %15, i64 %idxprom
  %17 = load i64, ptr %arrayidx, align 8, !tbaa !14
  store i64 %17, ptr %id, align 8, !tbaa !16
  %name = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 1
  %18 = load ptr, ptr %names.addr, align 8, !tbaa !9
  %19 = load i32, ptr %i21, align 4, !tbaa !4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %18, i64 %idxprom24
  %20 = load ptr, ptr %arrayidx25, align 8, !tbaa !9
  store ptr %20, ptr %name, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 2
  store i32 0, ptr %type, align 8, !tbaa !19
  %entity_count = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 3
  store i32 0, ptr %entity_count, align 4, !tbaa !20
  %entity_list = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 4
  store ptr null, ptr %entity_list, align 8, !tbaa !21
  %21 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call26 = call i32 @vtkexodusII_ex_get_assembly(i32 noundef %21, ptr noundef %assembly)
  call void @llvm.lifetime.end.p0(i64 32, ptr %assembly) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i21, align 4, !tbaa !4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i21, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %23 = load ptr, ptr %ids, align 8, !tbaa !9
  call void @free(ptr noundef %23) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ids) #5
  br label %if.end52

if.else:                                          ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %ids27) #5
  %24 = load i32, ptr %num_assembly, align 4, !tbaa !4
  %conv28 = sext i32 %24 to i64
  %call29 = call noalias ptr @calloc(i64 noundef %conv28, i64 noundef 4) #6
  store ptr %call29, ptr %ids27, align 8, !tbaa !9
  %25 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %26 = load ptr, ptr %ids27, align 8, !tbaa !9
  %call30 = call i32 @vtkexodusII_ex_get_ids(i32 noundef %25, i32 noundef 16, ptr noundef %26)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i31) #5
  store i32 0, ptr %i31, align 4, !tbaa !4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc49, %if.else
  %27 = load i32, ptr %i31, align 4, !tbaa !4
  %28 = load i32, ptr %num_assembly, align 4, !tbaa !4
  %cmp33 = icmp slt i32 %27, %28
  br i1 %cmp33, label %for.body36, label %for.cond.cleanup35

for.cond.cleanup35:                               ; preds = %for.cond32
  store i32 10, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i31) #5
  br label %for.end51

for.body36:                                       ; preds = %for.cond32
  call void @llvm.lifetime.start.p0(i64 32, ptr %assembly37) #5
  %id38 = getelementptr inbounds %struct.ex_assembly, ptr %assembly37, i32 0, i32 0
  %29 = load ptr, ptr %ids27, align 8, !tbaa !9
  %30 = load i32, ptr %i31, align 4, !tbaa !4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %29, i64 %idxprom39
  %31 = load i32, ptr %arrayidx40, align 4, !tbaa !4
  %conv41 = sext i32 %31 to i64
  store i64 %conv41, ptr %id38, align 8, !tbaa !16
  %name42 = getelementptr inbounds %struct.ex_assembly, ptr %assembly37, i32 0, i32 1
  %32 = load ptr, ptr %names.addr, align 8, !tbaa !9
  %33 = load i32, ptr %i31, align 4, !tbaa !4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %32, i64 %idxprom43
  %34 = load ptr, ptr %arrayidx44, align 8, !tbaa !9
  store ptr %34, ptr %name42, align 8, !tbaa !18
  %type45 = getelementptr inbounds %struct.ex_assembly, ptr %assembly37, i32 0, i32 2
  store i32 0, ptr %type45, align 8, !tbaa !19
  %entity_count46 = getelementptr inbounds %struct.ex_assembly, ptr %assembly37, i32 0, i32 3
  store i32 0, ptr %entity_count46, align 4, !tbaa !20
  %entity_list47 = getelementptr inbounds %struct.ex_assembly, ptr %assembly37, i32 0, i32 4
  store ptr null, ptr %entity_list47, align 8, !tbaa !21
  %35 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call48 = call i32 @vtkexodusII_ex_get_assembly(i32 noundef %35, ptr noundef %assembly37)
  call void @llvm.lifetime.end.p0(i64 32, ptr %assembly37) #5
  br label %for.inc49

for.inc49:                                        ; preds = %for.body36
  %36 = load i32, ptr %i31, align 4, !tbaa !4
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, ptr %i31, align 4, !tbaa !4
  br label %for.cond32

for.end51:                                        ; preds = %for.cond.cleanup35
  %37 = load ptr, ptr %ids27, align 8, !tbaa !9
  call void @free(ptr noundef %37) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ids27) #5
  br label %if.end52

if.end52:                                         ; preds = %for.end51, %for.end
  br label %do.body53

do.body53:                                        ; preds = %if.end52
  %call54 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_names, i32 noundef 77)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond55:                                        ; No predecessors!
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.body53, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_assembly) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup127 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.bb57

sw.bb57:                                          ; preds = %if.end, %cleanup.cont
  %38 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call58 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %38, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %39 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call59 = call i32 @nc_inq_varid(i32 noundef %39, ptr noundef @.str.3, ptr noundef %varid)
  store i32 %call59, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end
  %40 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call61 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %40, ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %41 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call62 = call i32 @nc_inq_varid(i32 noundef %41, ptr noundef @.str.6, ptr noundef %varid)
  store i32 %call62, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end
  %42 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call64 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %42, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %43 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call65 = call i32 @nc_inq_varid(i32 noundef %43, ptr noundef @.str.9, ptr noundef %varid)
  store i32 %call65, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end
  %44 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call67 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %44, ptr noundef @.str.10, ptr noundef @.str.11, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %45 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call68 = call i32 @nc_inq_varid(i32 noundef %45, ptr noundef @.str.12, ptr noundef %varid)
  store i32 %call68, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end
  %46 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call70 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %46, ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %47 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call71 = call i32 @nc_inq_varid(i32 noundef %47, ptr noundef @.str.15, ptr noundef %varid)
  store i32 %call71, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end
  %48 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call73 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %48, ptr noundef @.str.16, ptr noundef @.str.17, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %49 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call74 = call i32 @nc_inq_varid(i32 noundef %49, ptr noundef @.str.18, ptr noundef %varid)
  store i32 %call74, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end
  %50 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call76 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %50, ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %51 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call77 = call i32 @nc_inq_varid(i32 noundef %51, ptr noundef @.str.21, ptr noundef %varid)
  store i32 %call77, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end
  %52 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call79 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %52, ptr noundef @.str.22, ptr noundef @.str.23, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %53 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call80 = call i32 @nc_inq_varid(i32 noundef %53, ptr noundef @.str.24, ptr noundef %varid)
  store i32 %call80, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end
  %54 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call82 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %54, ptr noundef @.str.25, ptr noundef @.str.26, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %55 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call83 = call i32 @nc_inq_varid(i32 noundef %55, ptr noundef @.str.27, ptr noundef %varid)
  store i32 %call83, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end
  %56 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call85 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %56, ptr noundef @.str.28, ptr noundef @.str.29, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %57 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call86 = call i32 @nc_inq_varid(i32 noundef %57, ptr noundef @.str.30, ptr noundef %varid)
  store i32 %call86, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end
  %58 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call88 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %58, ptr noundef @.str.31, ptr noundef @.str.32, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %59 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call89 = call i32 @nc_inq_varid(i32 noundef %59, ptr noundef @.str.33, ptr noundef %varid)
  store i32 %call89, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end
  %60 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call91 = call i32 @vtkexodusII_ex__get_dimension(i32 noundef %60, ptr noundef @.str.34, ptr noundef @.str.35, ptr noundef %num_entity, ptr noundef %temp, ptr noundef @__func__.vtkexodusII_ex_get_names)
  %61 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call92 = call i32 @nc_inq_varid(i32 noundef %61, ptr noundef @.str.36, ptr noundef %varid)
  store i32 %call92, ptr %status, align 4, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %arraydecay93 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %62 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call94 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay93, i64 noundef 512, ptr noundef @.str.37, i32 noundef %62) #5
  %63 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay95 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %63, ptr noundef @__func__.vtkexodusII_ex_get_names, ptr noundef %arraydecay95, i32 noundef 1005)
  br label %do.body96

do.body96:                                        ; preds = %sw.default
  %call97 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_names, i32 noundef 137)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

do.cond98:                                        ; No predecessors!
  br label %do.end99

do.end99:                                         ; preds = %do.cond98
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end99, %sw.bb90, %sw.bb87, %sw.bb84, %sw.bb81, %sw.bb78, %sw.bb75, %sw.bb72, %sw.bb69, %sw.bb66, %sw.bb63, %sw.bb60, %sw.bb57
  %64 = load i32, ptr %status, align 4, !tbaa !4
  %cmp100 = icmp eq i32 %64, 0
  br i1 %cmp100, label %if.then102, label %if.else112

if.then102:                                       ; preds = %sw.epilog
  %65 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %66 = load i32, ptr %varid, align 4, !tbaa !4
  %67 = load i64, ptr %num_entity, align 8, !tbaa !14
  %68 = load ptr, ptr %names.addr, align 8, !tbaa !9
  %69 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call103 = call i32 @vtkexodusII_ex__get_names(i32 noundef %65, i32 noundef %66, i64 noundef %67, ptr noundef %68, i32 noundef %69, ptr noundef @.str.38)
  store i32 %call103, ptr %status, align 4, !tbaa !4
  %cmp104 = icmp ne i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.end111

if.then106:                                       ; preds = %if.then102
  br label %do.body107

do.body107:                                       ; preds = %if.then106
  %call108 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_names, i32 noundef 143)
  %70 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %70, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

do.cond109:                                       ; No predecessors!
  br label %do.end110

do.end110:                                        ; preds = %do.cond109
  br label %if.end111

if.end111:                                        ; preds = %do.end110, %if.then102
  br label %if.end122

if.else112:                                       ; preds = %sw.epilog
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc119, %if.else112
  %71 = load i64, ptr %i, align 8, !tbaa !14
  %72 = load i64, ptr %num_entity, align 8, !tbaa !14
  %cmp114 = icmp ult i64 %71, %72
  br i1 %cmp114, label %for.body116, label %for.end121

for.body116:                                      ; preds = %for.cond113
  %73 = load ptr, ptr %names.addr, align 8, !tbaa !9
  %74 = load i64, ptr %i, align 8, !tbaa !14
  %arrayidx117 = getelementptr inbounds ptr, ptr %73, i64 %74
  %75 = load ptr, ptr %arrayidx117, align 8, !tbaa !9
  %arrayidx118 = getelementptr inbounds i8, ptr %75, i64 0
  store i8 0, ptr %arrayidx118, align 1, !tbaa !8
  br label %for.inc119

for.inc119:                                       ; preds = %for.body116
  %76 = load i64, ptr %i, align 8, !tbaa !14
  %inc120 = add i64 %76, 1
  store i64 %inc120, ptr %i, align 8, !tbaa !14
  br label %for.cond113

for.end121:                                       ; preds = %for.cond113
  br label %if.end122

if.end122:                                        ; preds = %for.end121, %if.end111
  br label %do.body123

do.body123:                                       ; preds = %if.end122
  %call124 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_names, i32 noundef 154)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

do.cond125:                                       ; No predecessors!
  br label %do.end126

do.end126:                                        ; preds = %do.cond125
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %do.end126, %do.body123, %do.body107, %do.body96, %cleanup, %do.body4
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_entity) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %cleanup.dest133 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest133, label %unreachable [
    i32 0, label %cleanup.cont134
    i32 1, label %cleanup.cont134
  ]

cleanup.cont134:                                  ; preds = %cleanup127, %cleanup127
  %77 = load i32, ptr %retval, align 4
  ret i32 %77

unreachable:                                      ; preds = %cleanup127
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

declare i64 @vtkexodusII_ex_inquire_int(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @vtkexodusII_ex_int64_status(i32 noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

declare i32 @vtkexodusII_ex_get_ids(i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex_get_assembly(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare i32 @vtkexodusII_ex__get_dimension(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__get_names(i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !15, i64 0}
!17 = !{!"ex_assembly", !15, i64 0, !10, i64 8, !6, i64 16, !5, i64 20, !10, i64 24}
!18 = !{!17, !10, i64 8}
!19 = !{!17, !6, i64 16}
!20 = !{!17, !5, i64 20}
!21 = !{!17, !10, i64 24}

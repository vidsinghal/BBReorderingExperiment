; ModuleID = 'samples/755.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_name.c"
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
@__func__.vtkexodusII_ex_get_name = private unnamed_addr constant [24 x i8] c"vtkexodusII_ex_get_name\00", align 1
@.str = private unnamed_addr constant [9 x i8] c"eb_names\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ed_names\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fa_names\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ns_names\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ss_names\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"es_names\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"fs_names\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"els_names\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"nmap_names\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"edmap_names\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"famap_names\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"emap_names\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"ERROR: Invalid type specified in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_name(i32 noundef %exoid, i32 noundef %obj_type, i64 noundef %entity_id, ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %entity_id.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %varid = alloca i32, align 4
  %ent_ndx = alloca i32, align 4
  %errmsg = alloca [512 x i8], align 16
  %vobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %assembly = alloca %struct.ex_assembly, align 8
  %db_name_size = alloca i32, align 4
  %api_name_size = alloca i32, align 4
  %name_size = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store i64 %entity_id, ptr %entity_id.addr, align 8, !tbaa !9
  store ptr %name, ptr %name.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ent_ndx) #4
  call void @llvm.lifetime.start.p0(i64 512, ptr %errmsg) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vobj) #4
  store ptr null, ptr %vobj, align 8, !tbaa !11
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
  %call3 = call i32 @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_get_name)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  br label %do.body4

do.body4:                                         ; preds = %if.then
  %call5 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_name, i32 noundef 42)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58

do.cond6:                                         ; No predecessors!
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %if.end

if.end:                                           ; preds = %do.end7, %do.end
  %3 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  switch i32 %3, label %sw.default [
    i32 16, label %sw.bb
    i32 1, label %sw.bb10
    i32 6, label %sw.bb11
    i32 8, label %sw.bb12
    i32 2, label %sw.bb13
    i32 3, label %sw.bb14
    i32 7, label %sw.bb15
    i32 9, label %sw.bb16
    i32 10, label %sw.bb17
    i32 5, label %sw.bb18
    i32 11, label %sw.bb19
    i32 12, label %sw.bb20
    i32 4, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %assembly) #4
  %id = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 0
  %4 = load i64, ptr %entity_id.addr, align 8, !tbaa !9
  store i64 %4, ptr %id, align 8, !tbaa !16
  %name8 = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 1
  %5 = load ptr, ptr %name.addr, align 8, !tbaa !11
  store ptr %5, ptr %name8, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 2
  store i32 0, ptr %type, align 8, !tbaa !19
  %entity_count = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 3
  store i32 0, ptr %entity_count, align 4, !tbaa !20
  %entity_list = getelementptr inbounds %struct.ex_assembly, ptr %assembly, i32 0, i32 4
  store ptr null, ptr %entity_list, align 8, !tbaa !21
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call9 = call i32 @vtkexodusII_ex_get_assembly(i32 noundef %6, ptr noundef %assembly)
  store i32 %call9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr %assembly) #4
  br label %cleanup58

sw.bb10:                                          ; preds = %if.end
  store ptr @.str, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  store ptr @.str.1, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  store ptr @.str.2, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  store ptr @.str.3, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  store ptr @.str.4, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  store ptr @.str.5, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  store ptr @.str.6, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  store ptr @.str.7, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  store ptr @.str.8, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  store ptr @.str.9, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  store ptr @.str.10, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  store ptr @.str.11, ptr %vobj, align 8, !tbaa !11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %arraydecay = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  %7 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call22 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 512, ptr noundef @.str.12, i32 noundef %7) #4
  %8 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay23 = getelementptr inbounds [512 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %8, ptr noundef @__func__.vtkexodusII_ex_get_name, ptr noundef %arraydecay23, i32 noundef 1005)
  br label %do.body24

do.body24:                                        ; preds = %sw.default
  %call25 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_name, i32 noundef 66)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58

do.cond26:                                        ; No predecessors!
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end27, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10
  %9 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %10 = load ptr, ptr %vobj, align 8, !tbaa !11
  %call28 = call i32 @nc_inq_varid(i32 noundef %9, ptr noundef %10, ptr noundef %varid)
  store i32 %call28, ptr %status, align 4, !tbaa !4
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.epilog
  %11 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %12 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %13 = load i64, ptr %entity_id.addr, align 8, !tbaa !9
  %call31 = call i32 @vtkexodusII_ex__id_lkup(i32 noundef %11, i32 noundef %12, i64 noundef %13)
  store i32 %call31, ptr %ent_ndx, align 4, !tbaa !4
  %14 = load i32, ptr %ent_ndx, align 4, !tbaa !4
  %cmp32 = icmp slt i32 %14, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then30
  %15 = load i32, ptr %ent_ndx, align 4, !tbaa !4
  %sub = sub nsw i32 0, %15
  store i32 %sub, ptr %ent_ndx, align 4, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %db_name_size) #4
  %16 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call35 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %16, i32 noundef 48)
  %conv = trunc i64 %call35 to i32
  store i32 %conv, ptr %db_name_size, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %api_name_size) #4
  %17 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call36 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %17, i32 noundef 50)
  %conv37 = trunc i64 %call36 to i32
  store i32 %conv37, ptr %api_name_size, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_size) #4
  %18 = load i32, ptr %db_name_size, align 4, !tbaa !4
  %19 = load i32, ptr %api_name_size, align 4, !tbaa !4
  %cmp38 = icmp slt i32 %18, %19
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end34
  %20 = load i32, ptr %db_name_size, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  %21 = load i32, ptr %api_name_size, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, ptr %name_size, align 4, !tbaa !4
  %22 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %23 = load i32, ptr %varid, align 4, !tbaa !4
  %24 = load i32, ptr %ent_ndx, align 4, !tbaa !4
  %sub40 = sub nsw i32 %24, 1
  %conv41 = sext i32 %sub40 to i64
  %25 = load ptr, ptr %name.addr, align 8, !tbaa !11
  %26 = load i32, ptr %name_size, align 4, !tbaa !4
  %27 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call42 = call i32 @vtkexodusII_ex__get_name(i32 noundef %22, i32 noundef %23, i64 noundef %conv41, ptr noundef %25, i32 noundef %26, i32 noundef %27, ptr noundef @__func__.vtkexodusII_ex_get_name)
  store i32 %call42, ptr %status, align 4, !tbaa !4
  %28 = load i32, ptr %status, align 4, !tbaa !4
  %cmp43 = icmp ne i32 %28, 0
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %cond.end
  br label %do.body46

do.body46:                                        ; preds = %if.then45
  %call47 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_name, i32 noundef 86)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond48:                                        ; No predecessors!
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.body46
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_size) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %api_name_size) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %db_name_size) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end53

if.else:                                          ; preds = %sw.epilog
  %29 = load ptr, ptr %name.addr, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 0
  store i8 0, ptr %arrayidx, align 1, !tbaa !8
  br label %if.end53

if.end53:                                         ; preds = %if.else, %cleanup.cont
  br label %do.body54

do.body54:                                        ; preds = %if.end53
  %call55 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @vtkexodusII_EX_g, ptr noundef @__func__.vtkexodusII_ex_get_name, i32 noundef 96)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58

do.cond56:                                        ; No predecessors!
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %do.end57, %do.body54, %cleanup, %do.body24, %sw.bb, %do.body4
  call void @llvm.lifetime.end.p0(i64 8, ptr %vobj) #4
  call void @llvm.lifetime.end.p0(i64 512, ptr %errmsg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ent_ndx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4
  %cleanup.dest63 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest63, label %unreachable [
    i32 0, label %cleanup.cont64
    i32 1, label %cleanup.cont64
  ]

cleanup.cont64:                                   ; preds = %cleanup58, %cleanup58
  %30 = load i32, ptr %retval, align 4
  ret i32 %30

unreachable:                                      ; preds = %cleanup58
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

declare i32 @vtkexodusII_ex_get_assembly(i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__id_lkup(i32 noundef, i32 noundef, i64 noundef) #2

declare i64 @vtkexodusII_ex_inquire_int(i32 noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__get_name(i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

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
!14 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 516, !5, i64 1028}
!15 = !{!14, !5, i64 1028}
!16 = !{!17, !10, i64 0}
!17 = !{!"ex_assembly", !10, i64 0, !12, i64 8, !6, i64 16, !5, i64 20, !12, i64 24}
!18 = !{!17, !12, i64 8}
!19 = !{!17, !6, i64 16}
!20 = !{!17, !5, i64 20}
!21 = !{!17, !12, i64 24}

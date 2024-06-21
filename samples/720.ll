; ModuleID = 'samples/720.bc'
source_filename = "/local-ssd/vtk-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7-build/aidengro/spack-stage-vtk-9.0.3-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_variable_name.c"
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
@__func__.vtkexodusII_ex_get_variable_name = private unnamed_addr constant [33 x i8] c"vtkexodusII_ex_get_variable_name\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"name_glo_var\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"name_nod_var\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"name_edge_var\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"name_face_var\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"name_elem_var\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"name_nset_var\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"name_eset_var\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"name_fset_var\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"name_sset_var\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"name_elset_var\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"ERROR: Invalid variable type (%d) given for file id %d\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Warning: no %s variable names stored in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_variable_name(i32 noundef %exoid, i32 noundef %obj_type, i32 noundef %var_num, ptr noundef %var_name) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %var_num.addr = alloca i32, align 4
  %var_name.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %varid = alloca i32, align 4
  %errmsg = alloca [256 x i8], align 16
  %vname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %db_name_size = alloca i32, align 4
  %api_name_size = alloca i32, align 4
  %name_size = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store i32 %var_num, ptr %var_num.addr, align 4, !tbaa !4
  store ptr %var_name, ptr %var_name.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %errmsg) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vname) #4
  store ptr null, ptr %vname, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !9
  %0 = load ptr, ptr @ex_errval, align 8, !tbaa !9
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !11
  %1 = load ptr, ptr @ex_errval, align 8, !tbaa !9
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  call void @vtkexodusII_ex__check_valid_file_id(i32 noundef %2, ptr noundef @__func__.vtkexodusII_ex_get_variable_name)
  %3 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  switch i32 %3, label %sw.default [
    i32 13, label %sw.bb
    i32 14, label %sw.bb3
    i32 6, label %sw.bb4
    i32 8, label %sw.bb5
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
    i32 7, label %sw.bb8
    i32 9, label %sw.bb9
    i32 3, label %sw.bb10
    i32 10, label %sw.bb11
  ]

sw.bb:                                            ; preds = %do.end
  store ptr @.str, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.end
  store ptr @.str.1, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  store ptr @.str.2, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  store ptr @.str.3, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  store ptr @.str.4, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  store ptr @.str.5, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  store ptr @.str.6, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  store ptr @.str.7, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  store ptr @.str.8, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  store ptr @.str.9, ptr %vname, align 8, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %arraydecay = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %4 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %5 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 256, ptr noundef @.str.10, i32 noundef %4, i32 noundef %5) #4
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay13 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  call void @vtkexodusII_ex_err_fn(i32 noundef %6, ptr noundef @__func__.vtkexodusII_ex_get_variable_name, ptr noundef %arraydecay13, i32 noundef 1005)
  br label %do.body14

do.body14:                                        ; preds = %sw.default
  %call15 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

do.cond16:                                        ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end17, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %7 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %8 = load ptr, ptr %vname, align 8, !tbaa !9
  %call18 = call i32 @nc_inq_varid(i32 noundef %7, ptr noundef %8, ptr noundef %varid)
  store i32 %call18, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %call18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %arraydecay19 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %9 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call20 = call ptr @vtkexodusII_ex_name_of_object(i32 noundef %9)
  %10 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay19, i64 noundef 256, ptr noundef @.str.11, ptr noundef %call20, i32 noundef %10) #4
  %11 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %arraydecay22 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %12 = load i32, ptr %status, align 4, !tbaa !4
  call void @vtkexodusII_ex_err_fn(i32 noundef %11, ptr noundef @__func__.vtkexodusII_ex_get_variable_name, ptr noundef %arraydecay22, i32 noundef %12)
  br label %do.body23

do.body23:                                        ; preds = %if.then
  %call24 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

do.cond25:                                        ; No predecessors!
  br label %do.end26

do.end26:                                         ; preds = %do.cond25
  br label %if.end

if.end:                                           ; preds = %do.end26, %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr %db_name_size) #4
  %13 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call27 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %13, i32 noundef 48)
  %conv = trunc i64 %call27 to i32
  store i32 %conv, ptr %db_name_size, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %api_name_size) #4
  %14 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call28 = call i64 @vtkexodusII_ex_inquire_int(i32 noundef %14, i32 noundef 50)
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, ptr %api_name_size, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_size) #4
  %15 = load i32, ptr %db_name_size, align 4, !tbaa !4
  %16 = load i32, ptr %api_name_size, align 4, !tbaa !4
  %cmp30 = icmp slt i32 %15, %16
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %17 = load i32, ptr %db_name_size, align 4, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %18 = load i32, ptr %api_name_size, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, ptr %name_size, align 4, !tbaa !4
  %19 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %20 = load i32, ptr %varid, align 4, !tbaa !4
  %21 = load i32, ptr %var_num.addr, align 4, !tbaa !4
  %sub = sub nsw i32 %21, 1
  %conv32 = sext i32 %sub to i64
  %22 = load ptr, ptr %var_name.addr, align 8, !tbaa !9
  %23 = load i32, ptr %name_size, align 4, !tbaa !4
  %24 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call33 = call i32 @vtkexodusII_ex__get_name(i32 noundef %19, i32 noundef %20, i64 noundef %conv32, ptr noundef %22, i32 noundef %23, i32 noundef %24, ptr noundef @__func__.vtkexodusII_ex_get_variable_name)
  store i32 %call33, ptr %status, align 4, !tbaa !4
  %25 = load i32, ptr %status, align 4, !tbaa !4
  %cmp34 = icmp ne i32 %25, 0
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %cond.end
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  %call38 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond39:                                        ; No predecessors!
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.body37
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_size) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %api_name_size) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %db_name_size) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.body44

do.body44:                                        ; preds = %cleanup.cont
  %call45 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

do.cond46:                                        ; No predecessors!
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %do.end47, %do.body44, %cleanup, %do.body23, %do.body14
  call void @llvm.lifetime.end.p0(i64 8, ptr %vname) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %errmsg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4
  %cleanup.dest52 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest52, label %unreachable [
    i32 0, label %cleanup.cont53
    i32 1, label %cleanup.cont53
  ]

cleanup.cont53:                                   ; preds = %cleanup48, %cleanup48
  %26 = load i32, ptr %retval, align 4
  ret i32 %26

unreachable:                                      ; preds = %cleanup48
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__pthread_first_thread_init() #2

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #2

declare ptr @vtkexodusII_exerrval_get(...) #2

declare void @vtkexodusII_ex__check_valid_file_id(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @vtkexodusII_ex_err_fn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef) #2

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @vtkexodusII_ex_name_of_object(i32 noundef) #2

declare i64 @vtkexodusII_ex_inquire_int(i32 noundef, i32 noundef) #2

declare i32 @vtkexodusII_ex__get_name(i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

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
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 260, !5, i64 516}
!13 = !{!12, !5, i64 516}

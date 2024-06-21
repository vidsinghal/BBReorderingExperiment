; ModuleID = 'samples/819.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/exodusII/vtkexodusII/exgids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtk_exodus_exerrval = external global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"ed_prop1\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fa_prop1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"eb_prop1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ns_prop1\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"es_prop1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fs_prop1\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ss_prop1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"els_prop1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"nm_prop\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"edm_prop\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"fam_prop\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"em_prop\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Error: Invalid type specified in file id %d\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ex_get_ids\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Warning: no %s defined in file id %d\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Error: failed to locate %s ids variable in file id %d\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Error: failed to return %s ids in file id %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtk_exodus_ex_get_ids(i32 noundef %exoid, i32 noundef %obj_type, ptr noundef %ids) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %obj_type.addr = alloca i32, align 4
  %ids.addr = alloca ptr, align 8
  %varid = alloca i32, align 4
  %status = alloca i32, align 4
  %errmsg = alloca [256 x i8], align 16
  %varidobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !8
  store ptr %ids, ptr %ids.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %varid) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %errmsg) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %varidobj) #4
  store i32 0, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  %0 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.default [
    i32 6, label %sw.bb
    i32 8, label %sw.bb1
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 7, label %sw.bb4
    i32 9, label %sw.bb5
    i32 3, label %sw.bb6
    i32 10, label %sw.bb7
    i32 5, label %sw.bb8
    i32 11, label %sw.bb9
    i32 12, label %sw.bb11
    i32 4, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store ptr @.str.1, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store ptr @.str.2, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store ptr @.str.3, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store ptr @.str.4, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store ptr @.str.5, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store ptr @.str.6, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store ptr @.str.7, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %call = call ptr @vtk_exodus_ex_catstr(ptr noundef @.str.8, i32 noundef 1)
  store ptr %call, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call10 = call ptr @vtk_exodus_ex_catstr(ptr noundef @.str.9, i32 noundef 1)
  store ptr %call10, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %call12 = call ptr @vtk_exodus_ex_catstr(ptr noundef @.str.10, i32 noundef 1)
  store ptr %call12, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %call14 = call ptr @vtk_exodus_ex_catstr(ptr noundef @.str.11, i32 noundef 1)
  store ptr %call14, ptr %varidobj, align 8, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 1005, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %1 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.12, i32 noundef %1) #4
  %arraydecay16 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %2 = load i32, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  call void @vtk_exodus_ex_err(ptr noundef @.str.13, ptr noundef %arraydecay16, i32 noundef %2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %4 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call17 = call ptr @vtk_exodus_ex_dim_num_objects(i32 noundef %4)
  %call18 = call i32 @nc_inq_dimid(i32 noundef %3, ptr noundef %call17, ptr noundef %varid)
  store i32 %call18, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %call18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %5 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %5, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  %arraydecay19 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %6 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call20 = call ptr @vtk_exodus_ex_name_of_object(i32 noundef %6)
  %7 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay19, ptr noundef @.str.14, ptr noundef %call20, i32 noundef %7) #4
  %arraydecay22 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %8 = load i32, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  call void @vtk_exodus_ex_err(ptr noundef @.str.13, ptr noundef %arraydecay22, i32 noundef %8)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %9 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %10 = load ptr, ptr %varidobj, align 8, !tbaa !9
  %call23 = call i32 @nc_inq_varid(i32 noundef %9, ptr noundef %10, ptr noundef %varid)
  store i32 %call23, ptr %status, align 4, !tbaa !4
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end
  %11 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %11, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  %arraydecay26 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %12 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call27 = call ptr @vtk_exodus_ex_name_of_object(i32 noundef %12)
  %13 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay26, ptr noundef @.str.15, ptr noundef %call27, i32 noundef %13) #4
  %arraydecay29 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %14 = load i32, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  call void @vtk_exodus_ex_err(ptr noundef @.str.13, ptr noundef %arraydecay29, i32 noundef %14)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %15 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %16 = load i32, ptr %varid, align 4, !tbaa !4
  %17 = load ptr, ptr %ids.addr, align 8, !tbaa !9
  %call31 = call i32 @nc_get_var_int(i32 noundef %15, i32 noundef %16, ptr noundef %17)
  store i32 %call31, ptr %status, align 4, !tbaa !4
  %18 = load i32, ptr %status, align 4, !tbaa !4
  %cmp32 = icmp ne i32 %18, 0
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end30
  %19 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %19, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  %arraydecay34 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %20 = load i32, ptr %obj_type.addr, align 4, !tbaa !8
  %call35 = call ptr @vtk_exodus_ex_name_of_object(i32 noundef %20)
  %21 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay34, ptr noundef @.str.16, ptr noundef %call35, i32 noundef %21) #4
  %arraydecay37 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %22 = load i32, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  call void @vtk_exodus_ex_err(ptr noundef @.str.13, ptr noundef %arraydecay37, i32 noundef %22)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then33, %if.then25, %if.then, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %varidobj) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %errmsg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %varid) #4
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @vtk_exodus_ex_catstr(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare void @vtk_exodus_ex_err(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @nc_inq_dimid(i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @vtk_exodus_ex_dim_num_objects(i32 noundef) #2

declare ptr @vtk_exodus_ex_name_of_object(i32 noundef) #2

declare i32 @nc_inq_varid(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_get_var_int(i32 noundef, i32 noundef, ptr noundef) #2

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

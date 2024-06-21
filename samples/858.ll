; ModuleID = 'samples/858.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/exodusII/vtkexodusII/expvv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtk_exodus_exerrval = external global i32, align 4
@.str = private unnamed_addr constant [61 x i8] c"Error: failed to store variables with varid %d in file id %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ex_put_varid_var\00", align 1

; Function Attrs: nounwind uwtable
define i32 @vtk_exodus_ex_put_varid_var(i32 noundef %exoid, i32 noundef %time_step, i32 noundef %varid, i32 noundef %num_entity, ptr noundef %var_vals) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %time_step.addr = alloca i32, align 4
  %varid.addr = alloca i32, align 4
  %num_entity.addr = alloca i32, align 4
  %var_vals.addr = alloca ptr, align 8
  %start = alloca [2 x i64], align 16
  %count = alloca [2 x i64], align 16
  %status = alloca i32, align 4
  %errmsg = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i32 %time_step, ptr %time_step.addr, align 4, !tbaa !4
  store i32 %varid, ptr %varid.addr, align 4, !tbaa !4
  store i32 %num_entity, ptr %num_entity.addr, align 4, !tbaa !4
  store ptr %var_vals, ptr %var_vals.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %start) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %errmsg) #4
  store i32 0, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  %0 = load i32, ptr %time_step.addr, align 4, !tbaa !4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %time_step.addr, align 4, !tbaa !4
  %conv = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  store i64 %conv, ptr %arrayidx, align 16, !tbaa !10
  %arrayidx1 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 1
  store i64 0, ptr %arrayidx1, align 8, !tbaa !10
  %arrayidx2 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  store i64 1, ptr %arrayidx2, align 16, !tbaa !10
  %1 = load i32, ptr %num_entity.addr, align 4, !tbaa !4
  %conv3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 1
  store i64 %conv3, ptr %arrayidx4, align 8, !tbaa !10
  %2 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call = call i32 @vtk_exodus_ex_comp_ws(i32 noundef %2)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %4 = load i32, ptr %varid.addr, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %5 = load ptr, ptr %var_vals.addr, align 8, !tbaa !8
  %call7 = call i32 @nc_put_vara_float(i32 noundef %3, i32 noundef %4, ptr noundef %arraydecay, ptr noundef %arraydecay6, ptr noundef %5)
  store i32 %call7, ptr %status, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %7 = load i32, ptr %varid.addr, align 4, !tbaa !4
  %arraydecay8 = getelementptr inbounds [2 x i64], ptr %start, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [2 x i64], ptr %count, i64 0, i64 0
  %8 = load ptr, ptr %var_vals.addr, align 8, !tbaa !8
  %call10 = call i32 @nc_put_vara_double(i32 noundef %6, i32 noundef %7, ptr noundef %arraydecay8, ptr noundef %arraydecay9, ptr noundef %8)
  store i32 %call10, ptr %status, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %status, align 4, !tbaa !4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  %10 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %10, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  %arraydecay14 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %11 = load i32, ptr %varid.addr, align 4, !tbaa !4
  %12 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay14, ptr noundef @.str, i32 noundef %11, i32 noundef %12) #4
  %arraydecay16 = getelementptr inbounds [256 x i8], ptr %errmsg, i64 0, i64 0
  %13 = load i32, ptr @vtk_exodus_exerrval, align 4, !tbaa !4
  call void @vtk_exodus_ex_err(ptr noundef @.str.1, ptr noundef %arraydecay16, i32 noundef %13)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then13
  call void @llvm.lifetime.end.p0(i64 256, ptr %errmsg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %start) #4
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @vtk_exodus_ex_comp_ws(i32 noundef) #2

declare i32 @nc_put_vara_float(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nc_put_vara_double(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare void @vtk_exodus_ex_err(ptr noundef, ptr noundef, i32 noundef) #2

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}

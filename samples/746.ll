; ModuleID = 'samples/746.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/tests/grib_ecc-386.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"decoding\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ERROR: unable to open file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Error: unable to create handle from file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"grib_get_size(h, \22values\22, &values_len)\00", align 1
@.str.5 = private unnamed_addr constant [158 x i8] c"/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/tests/grib_ecc-386.c\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"grib_get_double_array(h, \22values\22, values, &values_len)\00", align 1
@stderr = external global ptr, align 8
@.str.8 = private unnamed_addr constant [90 x i8] c"Decoding took longer than expected! actual time=%g, expected to take less than %g seconds\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Test passed. Actual decode time=%g\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"usage: %s filename\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %tes = alloca ptr, align 8
  %in = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca ptr, align 8
  %values_len = alloca i64, align 8
  %values = alloca ptr, align 8
  %duration_actual = alloca double, align 8
  %duration_max = alloca double, align 8
  %num_repetitions = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tes) #6
  %call = call ptr @grib_get_timer(ptr noundef null, ptr noundef @.str, ptr noundef null, i32 noundef 0)
  store ptr %call, ptr %tes, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %in) #6
  store ptr null, ptr %in, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6
  store i32 0, ptr %err, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6
  store ptr null, ptr %h, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %values_len) #6
  store i64 0, ptr %values_len, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %values) #6
  store ptr null, ptr %values, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %duration_actual) #6
  store double 0.000000e+00, ptr %duration_actual, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %duration_max) #6
  store double 3.600000e+00, ptr %duration_max, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_repetitions) #6
  store i32 1000, ptr %num_repetitions, align 4, !tbaa !5
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  call void @usage(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx1, align 8, !tbaa !9
  %call2 = call noalias ptr @fopen(ptr noundef %4, ptr noundef @.str.1)
  store ptr %call2, ptr %in, align 8, !tbaa !9
  %5 = load ptr, ptr %in, align 8, !tbaa !9
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx4, align 8, !tbaa !9
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %7)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %err, align 4, !tbaa !5
  %8 = load ptr, ptr %in, align 8, !tbaa !9
  %call7 = call ptr @grib_handle_new_from_file(ptr noundef null, ptr noundef %8, ptr noundef %err)
  store ptr %call7, ptr %h, align 8, !tbaa !9
  %9 = load ptr, ptr %h, align 8, !tbaa !9
  %cmp8 = icmp eq ptr %9, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %10 = load ptr, ptr %h, align 8, !tbaa !9
  %call12 = call i32 @grib_get_size(ptr noundef %10, ptr noundef @.str.6, ptr noundef %values_len)
  call void @grib_check(ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 54, i32 noundef %call12, ptr noundef null)
  %11 = load i64, ptr %values_len, align 8, !tbaa !11
  %mul = mul i64 %11, 8
  %call13 = call noalias ptr @malloc(i64 noundef %mul) #7
  store ptr %call13, ptr %values, align 8, !tbaa !9
  %12 = load ptr, ptr %tes, align 8, !tbaa !9
  %call14 = call i32 @grib_timer_start(ptr noundef %12)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %13, 1000
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %h, align 8, !tbaa !9
  %15 = load ptr, ptr %values, align 8, !tbaa !9
  %call16 = call i32 @grib_get_double_array(ptr noundef %14, ptr noundef @.str.6, ptr noundef %15, ptr noundef %values_len)
  call void @grib_check(ptr noundef @.str.7, ptr noundef @.str.5, i32 noundef 61, i32 noundef %call16, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %tes, align 8, !tbaa !9
  %call17 = call i32 @grib_timer_stop(ptr noundef %17, i64 noundef 0)
  %18 = load ptr, ptr %tes, align 8, !tbaa !9
  %call18 = call double @grib_timer_value(ptr noundef %18)
  store double %call18, ptr %duration_actual, align 8, !tbaa !13
  %19 = load double, ptr %duration_actual, align 8, !tbaa !13
  %cmp19 = fcmp ogt double %19, 3.600000e+00
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.end
  %20 = load ptr, ptr @stderr, align 8, !tbaa !9
  %21 = load double, ptr %duration_actual, align 8, !tbaa !13
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.8, double noundef %21, double noundef 3.600000e+00)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %22 = load double, ptr %duration_actual, align 8, !tbaa !13
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, double noundef %22)
  %23 = load ptr, ptr %values, align 8, !tbaa !9
  call void @free(ptr noundef %23) #6
  %24 = load ptr, ptr %h, align 8, !tbaa !9
  %call24 = call i32 @grib_handle_delete(ptr noundef %24)
  %25 = load ptr, ptr %in, align 8, !tbaa !9
  %call25 = call i32 @fclose(ptr noundef %25)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then9, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_repetitions) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %duration_max) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %duration_actual) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %values) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %values_len) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %in) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tes) #6
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_get_timer(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @usage(ptr noundef %prog) #0 {
entry:
  %prog.addr = alloca ptr, align 8
  store ptr %prog, ptr %prog.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %prog.addr, align 8, !tbaa !9
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %0)
  call void @exit(i32 noundef 1) #8
  unreachable
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare ptr @grib_handle_new_from_file(ptr noundef, ptr noundef, ptr noundef) #2

declare void @grib_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @grib_get_size(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @grib_timer_start(ptr noundef) #2

declare i32 @grib_get_double_array(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @grib_timer_stop(ptr noundef, i64 noundef) #2

declare double @grib_timer_value(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare i32 @grib_handle_delete(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}

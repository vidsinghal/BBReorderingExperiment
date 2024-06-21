; ModuleID = 'samples/335.bc'
source_filename = "/local-ssd/axl-xjsa4ntabvk4d5fon4vyujbgrxr733zx-build/aidengro/spack-stage-axl-0.8.0-xjsa4ntabvk4d5fon4vyujbgrxr733zx/spack-src/src/axl_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@axl_debug = global i32 0, align 4
@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"AXL %s: %s: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0.8.0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"AXL %s ERROR: %s: \00", align 1
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"AXL %s ABORT: %s: \00", align 1

; Function Attrs: nounwind uwtable
define void @axl_dbg(i32 noundef %level, ptr noundef %fmt, ...) #0 {
entry:
  %level.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %hostname = alloca [256 x i8], align 16
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %level, ptr %level.addr, align 4, !tbaa !4
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 256, ptr %hostname) #6
  %arraydecay = getelementptr inbounds [256 x i8], ptr %hostname, i64 0, i64 0
  %call = call i32 @gethostname(ptr noundef %arraydecay, i64 noundef 256) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %argp) #6
  %0 = load i32, ptr %level.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, ptr @axl_debug, align 4, !tbaa !4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, ptr @axl_debug, align 4, !tbaa !4
  %3 = load i32, ptr %level.addr, align 4, !tbaa !4
  %cmp3 = icmp sge i32 %2, %3
  br i1 %cmp3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %land.lhs.true, %if.end
  %4 = load ptr, ptr @stdout, align 8, !tbaa !8
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %hostname, i64 0, i64 0
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %arraydecay5)
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay7)
  %5 = load ptr, ptr @stdout, align 8, !tbaa !8
  %6 = load ptr, ptr %fmt.addr, align 8, !tbaa !8
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %call9 = call i32 @vfprintf(ptr noundef %5, ptr noundef %6, ptr noundef %arraydecay8)
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay10)
  %7 = load ptr, ptr @stdout, align 8, !tbaa !8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.2)
  br label %if.end12

if.end12:                                         ; preds = %if.then4, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 24, ptr %argp) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr %hostname) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @axl_err(ptr noundef %fmt, ...) #0 {
entry:
  %fmt.addr = alloca ptr, align 8
  %hostname = alloca [256 x i8], align 16
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 256, ptr %hostname) #6
  %arraydecay = getelementptr inbounds [256 x i8], ptr %hostname, i64 0, i64 0
  %call = call i32 @gethostname(ptr noundef %arraydecay, i64 noundef 256) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %argp) #6
  %0 = load ptr, ptr @stdout, align 8, !tbaa !8
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %hostname, i64 0, i64 0
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay3)
  %1 = load ptr, ptr @stdout, align 8, !tbaa !8
  %2 = load ptr, ptr %fmt.addr, align 8, !tbaa !8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %call5 = call i32 @vfprintf(ptr noundef %1, ptr noundef %2, ptr noundef %arraydecay4)
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay6)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %argp) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr %hostname) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @axl_abort(i32 noundef %rc, ptr noundef %fmt, ...) #0 {
entry:
  %rc.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %hostname = alloca [256 x i8], align 16
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %rc, ptr %rc.addr, align 4, !tbaa !4
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 256, ptr %hostname) #6
  %arraydecay = getelementptr inbounds [256 x i8], ptr %hostname, i64 0, i64 0
  %call = call i32 @gethostname(ptr noundef %arraydecay, i64 noundef 256) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr %argp) #6
  %0 = load ptr, ptr @stderr, align 8, !tbaa !8
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %hostname, i64 0, i64 0
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.4, ptr noundef @.str.1, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay3)
  %1 = load ptr, ptr @stderr, align 8, !tbaa !8
  %2 = load ptr, ptr %fmt.addr, align 8, !tbaa !8
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  %call5 = call i32 @vfprintf(ptr noundef %1, ptr noundef %2, ptr noundef %arraydecay4)
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argp, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay6)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.2)
  %4 = load i32, ptr %rc.addr, align 4, !tbaa !4
  call void @exit(i32 noundef %4) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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

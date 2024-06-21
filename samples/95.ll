; ModuleID = 'samples/95.bc'
source_filename = "/local-ssd/variorum-jnr5qvybvks2wzukeai6e4wtqrpxxcog-build/aidengro/spack-stage-variorum-0.7.0-jnr5qvybvks2wzukeai6e4wtqrpxxcog/spack-src/src/examples/variorum-disable-turbo-example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [-h] [-v]\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Disable turbo failed!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %usage = alloca ptr, align 8
  %opt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #4
  store ptr @.str, ptr %usage, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt) #4
  br label %while.cond

while.cond:                                       ; preds = %entry
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %call = call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef @.str.1) #4
  store i32 %call, ptr %opt, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %opt, align 4, !tbaa !5
  switch i32 %2, label %sw.default [
    i32 104, label %sw.bb
    i32 118, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr %usage, align 8, !tbaa !9
  %4 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call1 = call i32 (ptr, ...) @printf(ptr noundef %3, ptr noundef %5)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %while.body
  %call3 = call ptr @variorum_get_current_version()
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %call3)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %while.body
  %6 = load ptr, ptr @stderr, align 8, !tbaa !9
  %7 = load ptr, ptr %usage, align 8, !tbaa !9
  %8 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx5, align 8, !tbaa !9
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef %7, ptr noundef %9)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %call7 = call i32 @variorum_disable_turbo()
  store i32 %call7, ptr %ret, align 4, !tbaa !5
  %10 = load i32, ptr %ret, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %10, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %11 = load i32, ptr %ret, align 4, !tbaa !5
  store i32 %11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #4
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #3

declare ptr @variorum_get_current_version() #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @variorum_disable_turbo() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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

; ModuleID = 'samples/14.bc'
source_filename = "threading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/yara.sem.%i\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @mutex_init(ptr noundef %mutex) #0 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %mutex.addr, align 8, !tbaa !5
  %call = call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @mutex_destroy(ptr noundef %mutex) #0 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %mutex.addr, align 8, !tbaa !5
  %call = call i32 @pthread_mutex_destroy(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @mutex_lock(ptr noundef %mutex) #0 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %mutex.addr, align 8, !tbaa !5
  %call = call i32 @pthread_mutex_lock(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @mutex_unlock(ptr noundef %mutex) #0 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %mutex.addr, align 8, !tbaa !5
  %call = call i32 @pthread_mutex_unlock(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @semaphore_init(ptr noundef %semaphore, i32 noundef %value) #0 {
entry:
  %retval = alloca i32, align 4
  %semaphore.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %name = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %semaphore, ptr %semaphore.addr, align 8, !tbaa !5
  store i32 %value, ptr %value.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 20, ptr %name) #5
  %arraydecay = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0
  %call = call i32 @getpid() #5
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 20, ptr noundef @.str, i32 noundef %call) #5
  %arraydecay2 = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0
  %0 = load i32, ptr %value.addr, align 4, !tbaa !9
  %call3 = call ptr (ptr, i32, ...) @sem_open(ptr noundef %arraydecay2, i32 noundef 64, i32 noundef 256, i32 noundef %0) #5
  %1 = load ptr, ptr %semaphore.addr, align 8, !tbaa !5
  store ptr %call3, ptr %1, align 8, !tbaa !5
  %2 = load ptr, ptr %semaphore.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call ptr @__errno_location() #6
  %4 = load i32, ptr %call4, align 4, !tbaa !9
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay5 = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0
  %call6 = call i32 @sem_unlink(ptr noundef %arraydecay5) #5
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call ptr @__errno_location() #6
  %5 = load i32, ptr %call9, align 4, !tbaa !9
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr %name) #5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: nounwind
declare ptr @sem_open(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: nounwind
declare i32 @sem_unlink(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @semaphore_destroy(ptr noundef %semaphore) #0 {
entry:
  %semaphore.addr = alloca ptr, align 8
  store ptr %semaphore, ptr %semaphore.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %semaphore.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %call = call i32 @sem_close(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_close(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @semaphore_wait(ptr noundef %semaphore) #0 {
entry:
  %semaphore.addr = alloca ptr, align 8
  store ptr %semaphore, ptr %semaphore.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %semaphore.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %call = call i32 @sem_wait(ptr noundef %1)
  ret void
}

declare i32 @sem_wait(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @semaphore_release(ptr noundef %semaphore) #0 {
entry:
  %semaphore.addr = alloca ptr, align 8
  store ptr %semaphore, ptr %semaphore.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %semaphore.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %call = call i32 @sem_post(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @create_thread(ptr noundef %thread, ptr noundef %start_routine, ptr noundef %param) #0 {
entry:
  %thread.addr = alloca ptr, align 8
  %start_routine.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  store ptr %thread, ptr %thread.addr, align 8, !tbaa !5
  store ptr %start_routine, ptr %start_routine.addr, align 8, !tbaa !5
  store ptr %param, ptr %param.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %thread.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %start_routine.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %param.addr, align 8, !tbaa !5
  %call = call i32 @pthread_create(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @thread_join(ptr noundef %thread) #0 {
entry:
  %thread.addr = alloca ptr, align 8
  store ptr %thread, ptr %thread.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %thread.addr, align 8, !tbaa !5
  %1 = load i64, ptr %0, align 8, !tbaa !11
  %call = call i32 @pthread_join(i64 noundef %1, ptr noundef null)
  ret void
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}

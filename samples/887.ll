; ModuleID = 'samples/887.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/main/FLA_Context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct._fla_context = type { i32, i32, i32, i32 }

@global_thread_mutex = global %union.pthread_mutex_t zeroinitializer, align 8
@global_context = global %struct._fla_context zeroinitializer, align 4
@once_init = internal global i32 0, align 4
@once_finalize = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @fla_pthread_mutex_lock(ptr noundef %mutex) #0 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %mutex.addr, align 8, !tbaa !4
  %call = call i32 @pthread_mutex_lock(ptr noundef %0) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @fla_pthread_mutex_unlock(ptr noundef %mutex) #0 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %mutex.addr, align 8, !tbaa !4
  %call = call i32 @pthread_mutex_unlock(ptr noundef %0) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @fla_pthread_once(ptr noundef %once, ptr noundef %init) #0 {
entry:
  %once.addr = alloca ptr, align 8
  %init.addr = alloca ptr, align 8
  store ptr %once, ptr %once.addr, align 8, !tbaa !4
  store ptr %init, ptr %init.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %once.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %init.addr, align 8, !tbaa !4
  %call = call i32 @pthread_once(ptr noundef %0, ptr noundef %1)
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @fla_env_get_var(ptr noundef %env, i32 noundef %fallback) #0 {
entry:
  %env.addr = alloca ptr, align 8
  %fallback.addr = alloca i32, align 4
  %r_val = alloca i32, align 4
  %str = alloca ptr, align 8
  store ptr %env, ptr %env.addr, align 8, !tbaa !4
  store i32 %fallback, ptr %fallback.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #4
  %0 = load ptr, ptr %env.addr, align 8, !tbaa !4
  %call = call ptr @getenv(ptr noundef %0) #4
  store ptr %call, ptr %str, align 8, !tbaa !4
  %1 = load ptr, ptr %str, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %str, align 8, !tbaa !4
  %call1 = call i64 @strtol(ptr noundef %2, ptr noundef null, i32 noundef 10) #4
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %r_val, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %fallback.addr, align 4, !tbaa !8
  store i32 %3, ptr %r_val, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %r_val, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #4
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define void @fla_thread_init_rntm_from_env(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %nt = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nt) #4
  store i32 1, ptr %nt, align 4, !tbaa !8
  %0 = load i32, ptr %nt, align 4, !tbaa !8
  %1 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %num_threads = getelementptr inbounds %struct._fla_context, ptr %1, i32 0, i32 0
  store i32 %0, ptr %num_threads, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %nt) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @fla_isa_init(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %call = call i32 @alcpu_flag_is_available(i32 noundef 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %is_avx2 = getelementptr inbounds %struct._fla_context, ptr %0, i32 0, i32 2
  store i32 1, ptr %is_avx2, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @alcpu_flag_is_available(i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @fla_context_init() #0 {
entry:
  call void @fla_thread_init_rntm_from_env(ptr noundef @global_context)
  call void @fla_isa_init(ptr noundef @global_context)
  ret void
}

; Function Attrs: nounwind uwtable
define void @fla_context_finalize() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @aocl_fla_init() #0 {
entry:
  call void @fla_pthread_once(ptr noundef @once_init, ptr noundef @fla_context_init)
  ret void
}

; Function Attrs: nounwind uwtable
define void @aocl_fla_finalize() #0 {
entry:
  call void @fla_pthread_once(ptr noundef @once_finalize, ptr noundef @fla_context_finalize)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fla_thread_get_num_threads() #0 {
entry:
  call void @aocl_fla_init()
  %0 = load i32, ptr @global_context, align 4, !tbaa !10
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @fla_thread_set_num_threads(i32 noundef %n_threads) #0 {
entry:
  %n_threads.addr = alloca i32, align 4
  store i32 %n_threads, ptr %n_threads.addr, align 4, !tbaa !8
  call void @aocl_fla_init()
  %call = call i32 @fla_pthread_mutex_lock(ptr noundef @global_thread_mutex)
  %0 = load i32, ptr %n_threads.addr, align 4, !tbaa !8
  store i32 %0, ptr @global_context, align 4, !tbaa !10
  %call1 = call i32 @fla_pthread_mutex_unlock(ptr noundef @global_thread_mutex)
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"_fla_context", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!12 = !{!11, !9, i64 8}

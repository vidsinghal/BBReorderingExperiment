; ModuleID = 'samples/786.bc'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/libproj/vtklibproj/src/pj_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }

@pj_core_lock_created = internal global i32 0, align 4
@pj_precreated_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@pj_core_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @vtklibproj_pj_acquire_lock() #0 {
entry:
  %mutex_attr = alloca %union.pthread_mutexattr_t, align 4
  %0 = load i32, ptr @pj_core_lock_created, align 4, !tbaa !4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %mutex_attr) #3
  %call = call i32 @pthread_mutex_lock(ptr noundef @pj_precreated_lock) #3
  %call1 = call i32 @pthread_mutexattr_init(ptr noundef %mutex_attr) #3
  %call2 = call i32 @pthread_mutexattr_settype(ptr noundef %mutex_attr, i32 noundef 1) #3
  %call3 = call i32 @pthread_mutex_init(ptr noundef @pj_core_lock, ptr noundef %mutex_attr) #3
  store i32 1, ptr @pj_core_lock_created, align 4, !tbaa !4
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @pj_precreated_lock) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mutex_attr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call i32 @pthread_mutex_lock(ptr noundef @pj_core_lock) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @vtklibproj_pj_release_lock() #0 {
entry:
  %call = call i32 @pthread_mutex_unlock(ptr noundef @pj_core_lock) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @vtklibproj_pj_cleanup_lock() #0 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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

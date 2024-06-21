; ModuleID = 'samples/940.bc'
source_filename = "/local-ssd/vtk-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7-build/aidengro/spack-stage-vtk-9.0.3-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7/spack-src/ThirdParty/exodusII/vtkexodusII/src/ex_get_block_params.c"
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

; Function Attrs: nounwind uwtable
define i32 @vtkexodusII_ex_get_block_params(i32 noundef %exoid, i64 noundef %block_count, ptr noundef %blocks) #0 {
entry:
  %retval = alloca i32, align 4
  %exoid.addr = alloca i32, align 4
  %block_count.addr = alloca i64, align 8
  %blocks.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %exoid, ptr %exoid.addr, align 4, !tbaa !4
  store i64 %block_count, ptr %block_count.addr, align 8, !tbaa !8
  store ptr %blocks, ptr %blocks.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @pthread_once(ptr noundef @EX_first_init_g, ptr noundef @vtkexodusII_ex__pthread_first_thread_init)
  %call1 = call i32 @vtkexodusII_ex__mutex_lock(ptr noundef @EX_g)
  %call2 = call ptr (...) @vtkexodusII_exerrval_get()
  store ptr %call2, ptr @ex_errval, align 8, !tbaa !10
  %0 = load ptr, ptr @ex_errval, align 8, !tbaa !10
  %errval = getelementptr inbounds %struct.EX_errval, ptr %0, i32 0, i32 0
  store i32 0, ptr %errval, align 4, !tbaa !12
  %1 = load ptr, ptr @ex_errval, align 8, !tbaa !10
  %last_err_num = getelementptr inbounds %struct.EX_errval, ptr %1, i32 0, i32 3
  store i32 0, ptr %last_err_num, align 4, !tbaa !14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i64, ptr %i, align 8, !tbaa !8
  %3 = load i64, ptr %block_count.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #3
  %4 = load i32, ptr %exoid.addr, align 4, !tbaa !4
  %5 = load ptr, ptr %blocks.addr, align 8, !tbaa !10
  %6 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !10
  %call3 = call i32 @vtkexodusII_ex_get_block_param(i32 noundef %4, ptr noundef %7)
  store i32 %call3, ptr %status, align 4, !tbaa !4
  %8 = load i32, ptr %status, align 4, !tbaa !4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %do.body5

do.body5:                                         ; preds = %if.then
  %call6 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  %9 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond7:                                         ; No predecessors!
  br label %do.end8

do.end8:                                          ; preds = %do.cond7
  br label %if.end

if.end:                                           ; preds = %do.end8, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %10 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  br label %do.body9

do.body9:                                         ; preds = %for.end
  %call10 = call i32 @vtkexodusII_ex__mutex_unlock(ptr noundef @EX_g)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

do.cond11:                                        ; No predecessors!
  br label %do.end12

do.end12:                                         ; preds = %do.cond11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %do.end12, %do.body9, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 0, label %cleanup.cont15
    i32 1, label %cleanup.cont15
  ]

cleanup.cont15:                                   ; preds = %cleanup13, %cleanup13
  %11 = load i32, ptr %retval, align 4
  ret i32 %11

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @pthread_once(ptr noundef, ptr noundef) #2

declare void @vtkexodusII_ex__pthread_first_thread_init() #2

declare i32 @vtkexodusII_ex__mutex_lock(ptr noundef) #2

declare ptr @vtkexodusII_exerrval_get(...) #2

declare i32 @vtkexodusII_ex_get_block_param(i32 noundef, ptr noundef) #2

declare i32 @vtkexodusII_ex__mutex_unlock(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"EX_errval", !5, i64 0, !6, i64 4, !6, i64 260, !5, i64 516}
!14 = !{!13, !5, i64 516}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}

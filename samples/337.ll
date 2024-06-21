; ModuleID = 'samples/337.bc'
source_filename = "frame/base/bli_sba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apool_t = type { %union.pthread_mutex_t, %struct.pool_t, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pool_t = type { ptr, i64, i64, i64, i64, i64, i64, ptr, ptr }
%struct.pblk_t = type { ptr, i64 }
%struct.rntm_s = type { i8, i64, [6 x i64], i8, i8, i8, i8, ptr, ptr }

@sba = internal global %struct.apool_t zeroinitializer, align 8
@.str = private unnamed_addr constant [65 x i8] c"bli_sba_acquire(): ** pool block_size is %d but req_size is %d.\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @bli_sba_query() #0 {
entry:
  ret ptr @sba
}

; Function Attrs: nounwind uwtable
define hidden void @bli_sba_init() #0 {
entry:
  call void @bli_apool_init(ptr noundef @sba)
  ret void
}

declare void @bli_apool_init(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_sba_finalize() #0 {
entry:
  call void @bli_apool_finalize(ptr noundef @sba)
  ret void
}

declare void @bli_apool_finalize(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @bli_sba_acquire(ptr noalias noundef %rntm, i64 noundef %req_size) #0 {
entry:
  %rntm.addr = alloca ptr, align 8
  %req_size.addr = alloca i64, align 8
  %block = alloca ptr, align 8
  %pblk = alloca %struct.pblk_t, align 8
  %pool = alloca ptr, align 8
  %block_size = alloca i64, align 8
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !4
  store i64 %req_size, ptr %req_size.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #3
  %0 = load ptr, ptr %rntm.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %req_size.addr, align 8, !tbaa !8
  %call = call ptr @bli_malloc_intl(i64 noundef %1)
  store ptr %call, ptr %block, align 8, !tbaa !4
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %pblk) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #3
  %2 = load ptr, ptr %rntm.addr, align 8, !tbaa !4
  %call1 = call ptr @bli_rntm_sba_pool(ptr noundef %2)
  store ptr %call1, ptr %pool, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_size) #3
  %3 = load ptr, ptr %pool, align 8, !tbaa !4
  %call2 = call i64 @bli_pool_block_size(ptr noundef %3)
  store i64 %call2, ptr %block_size, align 8, !tbaa !8
  %4 = load i64, ptr %block_size, align 8, !tbaa !8
  %5 = load i64, ptr %req_size.addr, align 8, !tbaa !8
  %cmp3 = icmp ult i64 %4, %5
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %6 = load i64, ptr %block_size, align 8, !tbaa !8
  %conv = trunc i64 %6 to i32
  %7 = load i64, ptr %req_size.addr, align 8, !tbaa !8
  %conv5 = trunc i64 %7 to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv, i32 noundef %conv5)
  call void @bli_abort()
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  %8 = load i64, ptr %block_size, align 8, !tbaa !8
  %9 = load ptr, ptr %pool, align 8, !tbaa !4
  call void @bli_pool_checkout_block(i64 noundef %8, ptr noundef %pblk, ptr noundef %9)
  %call7 = call ptr @bli_pblk_buf(ptr noundef %pblk)
  store ptr %call7, ptr %block, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_size) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %pblk) #3
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %10 = load ptr, ptr %block, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #3
  ret ptr %10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @bli_malloc_intl(i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @bli_rntm_sba_pool(ptr noundef %rntm) #0 {
entry:
  %rntm.addr = alloca ptr, align 8
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %rntm.addr, align 8, !tbaa !4
  %sba_pool = getelementptr inbounds %struct.rntm_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %sba_pool, align 8, !tbaa !10
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal i64 @bli_pool_block_size(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.pool_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %block_size, align 8, !tbaa !13
  ret i64 %1
}

declare i32 @printf(ptr noundef, ...) #1

declare void @bli_abort() #1

declare void @bli_pool_checkout_block(i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @bli_pblk_buf(ptr noundef %pblk) #0 {
entry:
  %pblk.addr = alloca ptr, align 8
  store ptr %pblk, ptr %pblk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pblk.addr, align 8, !tbaa !4
  %buf = getelementptr inbounds %struct.pblk_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %buf, align 8, !tbaa !15
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define hidden void @bli_sba_release(ptr noalias noundef %rntm, ptr noalias noundef %block) #0 {
entry:
  %rntm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %pblk = alloca %struct.pblk_t, align 8
  %pool = alloca ptr, align 8
  %block_size = alloca i64, align 8
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !4
  store ptr %block, ptr %block.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %rntm.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %block.addr, align 8, !tbaa !4
  call void @bli_free_intl(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %pblk) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #3
  %2 = load ptr, ptr %rntm.addr, align 8, !tbaa !4
  %call = call ptr @bli_rntm_sba_pool(ptr noundef %2)
  store ptr %call, ptr %pool, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %block_size) #3
  %3 = load ptr, ptr %pool, align 8, !tbaa !4
  %call1 = call i64 @bli_pool_block_size(ptr noundef %3)
  store i64 %call1, ptr %block_size, align 8, !tbaa !8
  %4 = load ptr, ptr %block.addr, align 8, !tbaa !4
  call void @bli_pblk_set_buf(ptr noundef %4, ptr noundef %pblk)
  %5 = load i64, ptr %block_size, align 8, !tbaa !8
  call void @bli_pblk_set_block_size(i64 noundef %5, ptr noundef %pblk)
  %6 = load ptr, ptr %pool, align 8, !tbaa !4
  call void @bli_pool_checkin_block(ptr noundef %pblk, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %block_size) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %pblk) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @bli_free_intl(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @bli_pblk_set_buf(ptr noundef %buf, ptr noundef %pblk) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %pblk.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %pblk, ptr %pblk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pblk.addr, align 8, !tbaa !4
  %buf1 = getelementptr inbounds %struct.pblk_t, ptr %1, i32 0, i32 0
  store ptr %0, ptr %buf1, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bli_pblk_set_block_size(i64 noundef %block_size, ptr noundef %pblk) #0 {
entry:
  %block_size.addr = alloca i64, align 8
  %pblk.addr = alloca ptr, align 8
  store i64 %block_size, ptr %block_size.addr, align 8, !tbaa !8
  store ptr %pblk, ptr %pblk.addr, align 8, !tbaa !4
  %0 = load i64, ptr %block_size.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %pblk.addr, align 8, !tbaa !4
  %block_size1 = getelementptr inbounds %struct.pblk_t, ptr %1, i32 0, i32 1
  store i64 %0, ptr %block_size1, align 8, !tbaa !17
  ret void
}

declare void @bli_pool_checkin_block(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @bli_sba_checkout_array(i64 noundef %n_threads) #0 {
entry:
  %n_threads.addr = alloca i64, align 8
  store i64 %n_threads, ptr %n_threads.addr, align 8, !tbaa !8
  %0 = load i64, ptr %n_threads.addr, align 8, !tbaa !8
  %call = call ptr @bli_apool_checkout_array(i64 noundef %0, ptr noundef @sba)
  ret ptr %call
}

declare ptr @bli_apool_checkout_array(i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_sba_checkin_array(ptr noalias noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %array.addr, align 8, !tbaa !4
  call void @bli_apool_checkin_array(ptr noundef %0, ptr noundef @sba)
  ret void
}

declare void @bli_apool_checkin_array(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_sba_rntm_set_pool(i64 noundef %index, ptr noalias noundef %array, ptr noalias noundef %rntm) #0 {
entry:
  %index.addr = alloca i64, align 8
  %array.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  %pool = alloca ptr, align 8
  store i64 %index, ptr %index.addr, align 8, !tbaa !8
  store ptr %array, ptr %array.addr, align 8, !tbaa !4
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pool) #3
  %0 = load i64, ptr %index.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %array.addr, align 8, !tbaa !4
  %call = call ptr @bli_apool_array_elem(i64 noundef %0, ptr noundef %1)
  store ptr %call, ptr %pool, align 8, !tbaa !4
  %2 = load ptr, ptr %pool, align 8, !tbaa !4
  %3 = load ptr, ptr %rntm.addr, align 8, !tbaa !4
  call void @bli_rntm_set_sba_pool(ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %pool) #3
  ret void
}

declare ptr @bli_apool_array_elem(i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @bli_rntm_set_sba_pool(ptr noundef %sba_pool, ptr noundef %rntm) #0 {
entry:
  %sba_pool.addr = alloca ptr, align 8
  %rntm.addr = alloca ptr, align 8
  store ptr %sba_pool, ptr %sba_pool.addr, align 8, !tbaa !4
  store ptr %rntm, ptr %rntm.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sba_pool.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %rntm.addr, align 8, !tbaa !4
  %sba_pool1 = getelementptr inbounds %struct.rntm_s, ptr %1, i32 0, i32 7
  store ptr %0, ptr %sba_pool1, align 8, !tbaa !10
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !5, i64 72}
!11 = !{!"rntm_s", !12, i64 0, !9, i64 8, !6, i64 16, !12, i64 64, !12, i64 65, !12, i64 66, !12, i64 67, !5, i64 72, !5, i64 80}
!12 = !{!"_Bool", !6, i64 0}
!13 = !{!14, !9, i64 32}
!14 = !{!"", !5, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !5, i64 56, !5, i64 64}
!15 = !{!16, !5, i64 0}
!16 = !{!"", !5, i64 0, !9, i64 8}
!17 = !{!16, !9, i64 8}

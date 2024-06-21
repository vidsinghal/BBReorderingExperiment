; ModuleID = 'samples/853.bc'
source_filename = "../spack-src/src/cstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpd_connection = type { ptr, [3 x i32], %struct.mpd_error_info, ptr, %struct.timeval, ptr, i8, i8, i8, i8, i32, i32, %struct.mpd_pair, ptr }
%struct.mpd_error_info = type { i32, i32, i32, i32, ptr }
%struct.timeval = type { i64, i64 }
%struct.mpd_pair = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"connection != NULL\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"../spack-src/src/cstats.c\00", align 1
@__PRETTY_FUNCTION__.mpd_recv_stats = private unnamed_addr constant [58 x i8] c"struct mpd_stats *mpd_recv_stats(struct mpd_connection *)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"!mpd_error_is_defined(error)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"../spack-src/src/ierror.h\00", align 1
@__PRETTY_FUNCTION__.mpd_error_code = private unnamed_addr constant [61 x i8] c"void mpd_error_code(struct mpd_error_info *, enum mpd_error)\00", align 1

; Function Attrs: nounwind uwtable
define zeroext i1 @mpd_send_stats(ptr noundef %connection) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call = call zeroext i1 (ptr, ptr, ...) @mpd_send_command(ptr noundef %0, ptr noundef @.str, ptr noundef null)
  ret i1 %call
}

declare zeroext i1 @mpd_send_command(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define noalias ptr @mpd_recv_stats(ptr noundef %connection) #0 {
entry:
  %retval = alloca ptr, align 8
  %connection.addr = alloca ptr, align 8
  %stats = alloca ptr, align 8
  %pair = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %stats) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pair) #5
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 53, ptr noundef @__PRETTY_FUNCTION__.mpd_recv_stats) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct.mpd_connection, ptr %2, i32 0, i32 2
  %call = call zeroext i1 @mpd_error_is_defined(ptr noundef %error)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %call1 = call noalias ptr @mpd_stats_begin()
  store ptr %call1, ptr %stats, align 8, !tbaa !4
  %3 = load ptr, ptr %stats, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %error4 = getelementptr inbounds %struct.mpd_connection, ptr %4, i32 0, i32 2
  call void @mpd_error_code(ptr noundef %error4, i32 noundef 1)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %5 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call6 = call noalias ptr @mpd_recv_pair(ptr noundef %5)
  store ptr %call6, ptr %pair, align 8, !tbaa !4
  %cmp7 = icmp ne ptr %call6, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %stats, align 8, !tbaa !4
  %7 = load ptr, ptr %pair, align 8, !tbaa !4
  call void @mpd_stats_feed(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %pair, align 8, !tbaa !4
  call void @mpd_return_pair(ptr noundef %8, ptr noundef %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %error8 = getelementptr inbounds %struct.mpd_connection, ptr %10, i32 0, i32 2
  %call9 = call zeroext i1 @mpd_error_is_defined(ptr noundef %error8)
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.end
  %11 = load ptr, ptr %stats, align 8, !tbaa !4
  call void @mpd_stats_free(ptr noundef %11)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %while.end
  %12 = load ptr, ptr %stats, align 8, !tbaa !4
  store ptr %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pair) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %stats) #5
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @mpd_error_is_defined(ptr noundef %error) #4 {
entry:
  %error.addr = alloca ptr, align 8
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %code = getelementptr inbounds %struct.mpd_error_info, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %code, align 8, !tbaa !8
  %cmp = icmp ne i32 %1, 0
  ret i1 %cmp
}

declare noalias ptr @mpd_stats_begin() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @mpd_error_code(ptr noundef %error, i32 noundef %code) #4 {
entry:
  %error.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  store i32 %code, ptr %code.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mpd_error_is_defined(ptr noundef %0)
  br i1 %call, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.4, i32 noundef 144, ptr noundef @__PRETTY_FUNCTION__.mpd_error_code) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i32, ptr %code.addr, align 4, !tbaa !11
  %3 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %code1 = getelementptr inbounds %struct.mpd_error_info, ptr %3, i32 0, i32 0
  store i32 %2, ptr %code1, align 8, !tbaa !8
  %4 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %message = getelementptr inbounds %struct.mpd_error_info, ptr %4, i32 0, i32 4
  store ptr null, ptr %message, align 8, !tbaa !12
  ret void
}

declare noalias ptr @mpd_recv_pair(ptr noundef) #1

declare void @mpd_stats_feed(ptr noundef, ptr noundef) #1

declare void @mpd_return_pair(ptr noundef, ptr noundef) #1

declare void @mpd_stats_free(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define noalias ptr @mpd_run_stats(ptr noundef %connection) #0 {
entry:
  %connection.addr = alloca ptr, align 8
  store ptr %connection, ptr %connection.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mpd_send_stats(ptr noundef %0)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %connection.addr, align 8, !tbaa !4
  %call1 = call noalias ptr @mpd_recv_stats(ptr noundef %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!8 = !{!9, !6, i64 0}
!9 = !{!"mpd_error_info", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 12, !5, i64 16}
!10 = !{!"int", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!9, !5, i64 16}

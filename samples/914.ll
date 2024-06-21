; ModuleID = 'samples/914.bc'
source_filename = "/local-ssd/nanomsg-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw-build/aidengro/spack-stage-nanomsg-1.2-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw/spack-src/src/utils/queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_queue = type { ptr, ptr }
%struct.nn_queue_item = type { ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"item->next == NN_QUEUE_NOTINQUEUE\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"/local-ssd/nanomsg-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw-build/aidengro/spack-stage-nanomsg-1.2-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw/spack-src/src/utils/queue.c\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"self->next == NN_QUEUE_NOTINQUEUE\00", align 1

; Function Attrs: nounwind uwtable
define void @nn_queue_init(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.nn_queue, ptr %0, i32 0, i32 0
  store ptr null, ptr %head, align 8, !tbaa !8
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.nn_queue, ptr %1, i32 0, i32 1
  store ptr null, ptr %tail, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define void @nn_queue_term(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.nn_queue, ptr %0, i32 0, i32 0
  store ptr null, ptr %head, align 8, !tbaa !8
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.nn_queue, ptr %1, i32 0, i32 1
  store ptr null, ptr %tail, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @nn_queue_empty(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.nn_queue, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %head, align 8, !tbaa !8
  %tobool = icmp ne ptr %1, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 0, i32 1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @nn_queue_push(ptr noundef %self, ptr noundef %item) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.nn_queue_item, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !11
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @nn_backtrace_print()
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 47)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call1 = call i32 @fflush(ptr noundef %3)
  call void @nn_err_abort() #5
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %next2 = getelementptr inbounds %struct.nn_queue_item, ptr %4, i32 0, i32 0
  store ptr null, ptr %next2, align 8, !tbaa !11
  %5 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.nn_queue, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %head, align 8, !tbaa !8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %do.end
  %7 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head5 = getelementptr inbounds %struct.nn_queue, ptr %8, i32 0, i32 0
  store ptr %7, ptr %head5, align 8, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end
  %9 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.nn_queue, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %tail, align 8, !tbaa !10
  %tobool7 = icmp ne ptr %10, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail9 = getelementptr inbounds %struct.nn_queue, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %tail9, align 8, !tbaa !10
  %next10 = getelementptr inbounds %struct.nn_queue_item, ptr %13, i32 0, i32 0
  store ptr %11, ptr %next10, align 8, !tbaa !11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6
  %14 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail12 = getelementptr inbounds %struct.nn_queue, ptr %15, i32 0, i32 1
  store ptr %14, ptr %tail12, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #1

declare void @nn_backtrace_print() #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: nounwind uwtable
define void @nn_queue_remove(ptr noundef %self, ptr noundef %item) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %it = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %it) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6
  %0 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.nn_queue_item, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !11
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr null, ptr %prev, align 8, !tbaa !4
  %2 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.nn_queue, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %head, align 8, !tbaa !8
  store ptr %3, ptr %it, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %it, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %it, align 8, !tbaa !4
  %6 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %5, %6
  br i1 %cmp2, label %if.then3, label %if.end19

if.then3:                                         ; preds = %for.body
  %7 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head4 = getelementptr inbounds %struct.nn_queue, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %head4, align 8, !tbaa !8
  %9 = load ptr, ptr %it, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %8, %9
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then3
  %10 = load ptr, ptr %it, align 8, !tbaa !4
  %next7 = getelementptr inbounds %struct.nn_queue_item, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next7, align 8, !tbaa !11
  %12 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head8 = getelementptr inbounds %struct.nn_queue, ptr %12, i32 0, i32 0
  store ptr %11, ptr %head8, align 8, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then3
  %13 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.nn_queue, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %tail, align 8, !tbaa !10
  %15 = load ptr, ptr %it, align 8, !tbaa !4
  %cmp10 = icmp eq ptr %14, %15
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %16 = load ptr, ptr %prev, align 8, !tbaa !4
  %17 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail12 = getelementptr inbounds %struct.nn_queue, ptr %17, i32 0, i32 1
  store ptr %16, ptr %tail12, align 8, !tbaa !10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %18 = load ptr, ptr %prev, align 8, !tbaa !4
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end13
  %19 = load ptr, ptr %it, align 8, !tbaa !4
  %next15 = getelementptr inbounds %struct.nn_queue_item, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next15, align 8, !tbaa !11
  %21 = load ptr, ptr %prev, align 8, !tbaa !4
  %next16 = getelementptr inbounds %struct.nn_queue_item, ptr %21, i32 0, i32 0
  store ptr %20, ptr %next16, align 8, !tbaa !11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end13
  %22 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %next18 = getelementptr inbounds %struct.nn_queue_item, ptr %22, i32 0, i32 0
  store ptr inttoptr (i64 -1 to ptr), ptr %next18, align 8, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %23 = load ptr, ptr %it, align 8, !tbaa !4
  store ptr %23, ptr %prev, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %24 = load ptr, ptr %it, align 8, !tbaa !4
  %next20 = getelementptr inbounds %struct.nn_queue_item, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %next20, align 8, !tbaa !11
  store ptr %25, ptr %it, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %it) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define ptr @nn_queue_pop(ptr noundef %self) #0 {
entry:
  %retval = alloca ptr, align 8
  %self.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #6
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.nn_queue, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %head, align 8, !tbaa !8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head1 = getelementptr inbounds %struct.nn_queue, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %head1, align 8, !tbaa !8
  store ptr %3, ptr %result, align 8, !tbaa !4
  %4 = load ptr, ptr %result, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.nn_queue_item, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %next, align 8, !tbaa !11
  %6 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head2 = getelementptr inbounds %struct.nn_queue, ptr %6, i32 0, i32 0
  store ptr %5, ptr %head2, align 8, !tbaa !8
  %7 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %head3 = getelementptr inbounds %struct.nn_queue, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %head3, align 8, !tbaa !8
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.nn_queue, ptr %9, i32 0, i32 1
  store ptr null, ptr %tail, align 8, !tbaa !10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %result, align 8, !tbaa !4
  %next7 = getelementptr inbounds %struct.nn_queue_item, ptr %10, i32 0, i32 0
  store ptr inttoptr (i64 -1 to ptr), ptr %next7, align 8, !tbaa !11
  %11 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #6
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define void @nn_queue_item_init(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.nn_queue_item, ptr %0, i32 0, i32 0
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define void @nn_queue_item_term(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.nn_queue_item, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !11
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @nn_backtrace_print()
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 102)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call1 = call i32 @fflush(ptr noundef %3)
  call void @nn_err_abort() #5
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @nn_queue_item_isinqueue(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.nn_queue_item, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !11
  %cmp = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  ret i32 %cond
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"nn_queue", !5, i64 0, !5, i64 8}
!10 = !{!9, !5, i64 8}
!11 = !{!12, !5, i64 0}
!12 = !{!"nn_queue_item", !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}

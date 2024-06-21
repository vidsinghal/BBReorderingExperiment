; ModuleID = 'samples/408.bc'
source_filename = "/local-ssd/nanomsg-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw-build/aidengro/spack-stage-nanomsg-1.2-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw/spack-src/src/transports/utils/dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_dns = type { %struct.nn_fsm, i32, i32, [128 x i8], %struct.addrinfo, %struct.gaicb, ptr, %struct.nn_fsm_event }
%struct.nn_fsm = type { ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.gaicb = type { ptr, ptr, ptr, ptr, i32, [5 x i32] }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_dns_result = type { i32, %struct.sockaddr_storage, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon }
%union.sigval = type { ptr }
%union.anon = type { %struct.anon, [32 x i8] }
%struct.anon = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [36 x i8] c"Assertion failed: %d == %s (%s:%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NN_DNS_STATE_IDLE\00", align 1
@.str.2 = private unnamed_addr constant [177 x i8] c"/local-ssd/nanomsg-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw-build/aidengro/spack-stage-nanomsg-1.2-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw/spack-src/src/transports/utils/dns_getaddrinfo_a.inc\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"sizeof (self->hostname) > addrlen\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rc == 0\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"self->gcb.ar_result->ai_addrlen <= sizeof (struct sockaddr_storage)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"%s: state=%d source=%d action=%d (%s:%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Unexpected state\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Unexpected action\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Unexpected source\00", align 1

; Function Attrs: nounwind uwtable
define i32 @nn_dns_check_hostname(ptr noundef %name, i64 noundef %namelen) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %namelen.addr = alloca i64, align 8
  %labelsz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i64 %namelen, ptr %namelen.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %labelsz) #8
  %0 = load i64, ptr %namelen.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %namelen.addr, align 8, !tbaa !8
  %cmp1 = icmp ugt i64 %1, 255
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %conv = sext i8 %3 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %labelsz, align 4, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %if.end51, %if.end17, %if.end5
  br label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %namelen.addr, align 8, !tbaa !8
  %cmp6 = icmp eq i64 %4, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %5 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 46
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end9
  %7 = load i32, ptr %labelsz, align 4, !tbaa !11
  %cmp14 = icmp eq i32 %7, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  store i32 0, ptr %labelsz, align 4, !tbaa !11
  %8 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %name.addr, align 8, !tbaa !4
  %9 = load i64, ptr %namelen.addr, align 8, !tbaa !8
  %dec = add i64 %9, -1
  store i64 %dec, ptr %namelen.addr, align 8, !tbaa !8
  br label %while.cond

if.end18:                                         ; preds = %if.end9
  %10 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !10
  %conv19 = sext i8 %11 to i32
  %cmp20 = icmp sge i32 %conv19, 97
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false25

land.lhs.true:                                    ; preds = %if.end18
  %12 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %conv22 = sext i8 %13 to i32
  %cmp23 = icmp sle i32 %conv22, 122
  br i1 %cmp23, label %if.then45, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true, %if.end18
  %14 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %conv26 = sext i8 %15 to i32
  %cmp27 = icmp sge i32 %conv26, 65
  br i1 %cmp27, label %land.lhs.true29, label %lor.lhs.false33

land.lhs.true29:                                  ; preds = %lor.lhs.false25
  %16 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %17 = load i8, ptr %16, align 1, !tbaa !10
  %conv30 = sext i8 %17 to i32
  %cmp31 = icmp sle i32 %conv30, 90
  br i1 %cmp31, label %if.then45, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true29, %lor.lhs.false25
  %18 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %conv34 = sext i8 %19 to i32
  %cmp35 = icmp sge i32 %conv34, 48
  br i1 %cmp35, label %land.lhs.true37, label %lor.lhs.false41

land.lhs.true37:                                  ; preds = %lor.lhs.false33
  %20 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %conv38 = sext i8 %21 to i32
  %cmp39 = icmp sle i32 %conv38, 57
  br i1 %cmp39, label %if.then45, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %land.lhs.true37, %lor.lhs.false33
  %22 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %23 = load i8, ptr %22, align 1, !tbaa !10
  %conv42 = sext i8 %23 to i32
  %cmp43 = icmp eq i32 %conv42, 45
  br i1 %cmp43, label %if.then45, label %if.end52

if.then45:                                        ; preds = %lor.lhs.false41, %land.lhs.true37, %land.lhs.true29, %land.lhs.true
  %24 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %incdec.ptr46 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr46, ptr %name.addr, align 8, !tbaa !4
  %25 = load i64, ptr %namelen.addr, align 8, !tbaa !8
  %dec47 = add i64 %25, -1
  store i64 %dec47, ptr %namelen.addr, align 8, !tbaa !8
  %26 = load i32, ptr %labelsz, align 4, !tbaa !11
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %labelsz, align 4, !tbaa !11
  %27 = load i32, ptr %labelsz, align 4, !tbaa !11
  %cmp48 = icmp sgt i32 %27, 63
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then45
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.then45
  br label %while.cond

if.end52:                                         ; preds = %lor.lhs.false41
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then50, %if.then16, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %labelsz) #8
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @nn_dns_init(ptr noundef %self, i32 noundef %src, ptr noundef %owner) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %src.addr = alloca i32, align 4
  %owner.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %src, ptr %src.addr, align 4, !tbaa !11
  store ptr %owner, ptr %owner.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %src.addr, align 4, !tbaa !11
  %2 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %owner.addr, align 8, !tbaa !4
  call void @nn_fsm_init(ptr noundef %fsm, ptr noundef @nn_dns_handler, ptr noundef @nn_dns_shutdown, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.nn_dns, ptr %4, i32 0, i32 1
  store i32 1, ptr %state, align 8, !tbaa !13
  %5 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %done = getelementptr inbounds %struct.nn_dns, ptr %5, i32 0, i32 7
  call void @nn_fsm_event_init(ptr noundef %done)
  ret void
}

declare void @nn_fsm_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @nn_dns_handler(ptr noundef %self, i32 noundef %src, i32 noundef %type, ptr noundef %srcptr) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %src.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %srcptr.addr = alloca ptr, align 8
  %dns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %src, ptr %src.addr, align 4, !tbaa !11
  store i32 %type, ptr %type.addr, align 4, !tbaa !11
  store ptr %srcptr, ptr %srcptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dns) #8
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %dns, align 8, !tbaa !4
  %2 = load ptr, ptr %dns, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.nn_dns, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %state, align 8, !tbaa !13
  switch i32 %3, label %sw.default44 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 3, label %sw.bb37
  ]

sw.bb:                                            ; preds = %cond.end
  %4 = load i32, ptr %src.addr, align 4, !tbaa !11
  switch i32 %4, label %sw.default7 [
    i32 -2, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %sw.bb
  %5 = load i32, ptr %type.addr, align 4, !tbaa !11
  switch i32 %5, label %sw.default [
    i32 -2, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %sw.bb1
  %6 = load ptr, ptr %dns, align 8, !tbaa !4
  %result = getelementptr inbounds %struct.nn_dns, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %result, align 8, !tbaa !20
  %error = getelementptr inbounds %struct.nn_dns_result, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %error, align 8, !tbaa !21
  %cmp = icmp eq i32 %8, 115
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  %9 = load ptr, ptr %dns, align 8, !tbaa !4
  %state3 = getelementptr inbounds %struct.nn_dns, ptr %9, i32 0, i32 1
  store i32 2, ptr %state3, align 8, !tbaa !13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %10 = load ptr, ptr %dns, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %dns, align 8, !tbaa !4
  %done = getelementptr inbounds %struct.nn_dns, ptr %11, i32 0, i32 7
  call void @nn_fsm_raise(ptr noundef %fsm, ptr noundef %done, i32 noundef 1)
  %12 = load ptr, ptr %dns, align 8, !tbaa !4
  %state4 = getelementptr inbounds %struct.nn_dns, ptr %12, i32 0, i32 1
  store i32 3, ptr %state4, align 8, !tbaa !13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb1
  br label %do.body

do.body:                                          ; preds = %sw.default
  call void @nn_backtrace_print()
  %13 = load ptr, ptr @stderr, align 8, !tbaa !4
  %14 = load ptr, ptr %dns, align 8, !tbaa !4
  %state5 = getelementptr inbounds %struct.nn_dns, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %state5, align 8, !tbaa !13
  %16 = load i32, ptr %src.addr, align 4, !tbaa !11
  %17 = load i32, ptr %type.addr, align 4, !tbaa !11
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.9, ptr noundef @.str.11, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef @.str.2, i32 noundef 223)
  %18 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call6 = call i32 @fflush(ptr noundef %18)
  call void @nn_err_abort() #9
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end
  br label %sw.default7

sw.default7:                                      ; preds = %sw.bb, %sw.epilog
  br label %do.body8

do.body8:                                         ; preds = %sw.default7
  call void @nn_backtrace_print()
  %19 = load ptr, ptr @stderr, align 8, !tbaa !4
  %20 = load ptr, ptr %dns, align 8, !tbaa !4
  %state9 = getelementptr inbounds %struct.nn_dns, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %state9, align 8, !tbaa !13
  %22 = load i32, ptr %src.addr, align 4, !tbaa !11
  %23 = load i32, ptr %type.addr, align 4, !tbaa !11
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.9, ptr noundef @.str.12, i32 noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef @.str.2, i32 noundef 226)
  %24 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call11 = call i32 @fflush(ptr noundef %24)
  call void @nn_err_abort() #9
  unreachable

do.cond12:                                        ; No predecessors!
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %do.end13
  br label %sw.bb15

sw.bb15:                                          ; preds = %cond.end, %sw.epilog14
  %25 = load i32, ptr %src.addr, align 4, !tbaa !11
  switch i32 %25, label %sw.default29 [
    i32 -2, label %sw.bb16
  ]

sw.bb16:                                          ; preds = %sw.bb15
  %26 = load i32, ptr %type.addr, align 4, !tbaa !11
  switch i32 %26, label %sw.default21 [
    i32 1, label %sw.bb17
  ]

sw.bb17:                                          ; preds = %sw.bb16
  %27 = load ptr, ptr %dns, align 8, !tbaa !4
  %fsm18 = getelementptr inbounds %struct.nn_dns, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %dns, align 8, !tbaa !4
  %done19 = getelementptr inbounds %struct.nn_dns, ptr %28, i32 0, i32 7
  call void @nn_fsm_raise(ptr noundef %fsm18, ptr noundef %done19, i32 noundef 1)
  %29 = load ptr, ptr %dns, align 8, !tbaa !4
  %state20 = getelementptr inbounds %struct.nn_dns, ptr %29, i32 0, i32 1
  store i32 3, ptr %state20, align 8, !tbaa !13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default21:                                     ; preds = %sw.bb16
  br label %do.body22

do.body22:                                        ; preds = %sw.default21
  call void @nn_backtrace_print()
  %30 = load ptr, ptr @stderr, align 8, !tbaa !4
  %31 = load ptr, ptr %dns, align 8, !tbaa !4
  %state23 = getelementptr inbounds %struct.nn_dns, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %state23, align 8, !tbaa !13
  %33 = load i32, ptr %src.addr, align 4, !tbaa !11
  %34 = load i32, ptr %type.addr, align 4, !tbaa !11
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.9, ptr noundef @.str.11, i32 noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef @.str.2, i32 noundef 241)
  %35 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call25 = call i32 @fflush(ptr noundef %35)
  call void @nn_err_abort() #9
  unreachable

do.cond26:                                        ; No predecessors!
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %do.end27
  br label %sw.default29

sw.default29:                                     ; preds = %sw.bb15, %sw.epilog28
  br label %do.body30

do.body30:                                        ; preds = %sw.default29
  call void @nn_backtrace_print()
  %36 = load ptr, ptr @stderr, align 8, !tbaa !4
  %37 = load ptr, ptr %dns, align 8, !tbaa !4
  %state31 = getelementptr inbounds %struct.nn_dns, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %state31, align 8, !tbaa !13
  %39 = load i32, ptr %src.addr, align 4, !tbaa !11
  %40 = load i32, ptr %type.addr, align 4, !tbaa !11
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.9, ptr noundef @.str.12, i32 noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef @.str.2, i32 noundef 244)
  %41 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call33 = call i32 @fflush(ptr noundef %41)
  call void @nn_err_abort() #9
  unreachable

do.cond34:                                        ; No predecessors!
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %do.end35
  br label %sw.bb37

sw.bb37:                                          ; preds = %cond.end, %sw.epilog36
  br label %do.body38

do.body38:                                        ; preds = %sw.bb37
  call void @nn_backtrace_print()
  %42 = load ptr, ptr @stderr, align 8, !tbaa !4
  %43 = load ptr, ptr %dns, align 8, !tbaa !4
  %state39 = getelementptr inbounds %struct.nn_dns, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %state39, align 8, !tbaa !13
  %45 = load i32, ptr %src.addr, align 4, !tbaa !11
  %46 = load i32, ptr %type.addr, align 4, !tbaa !11
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.9, ptr noundef @.str.12, i32 noundef %44, i32 noundef %45, i32 noundef %46, ptr noundef @.str.2, i32 noundef 251)
  %47 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call41 = call i32 @fflush(ptr noundef %47)
  call void @nn_err_abort() #9
  unreachable

do.cond42:                                        ; No predecessors!
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %sw.default44

sw.default44:                                     ; preds = %cond.end, %do.end43
  br label %do.body45

do.body45:                                        ; preds = %sw.default44
  call void @nn_backtrace_print()
  %48 = load ptr, ptr @stderr, align 8, !tbaa !4
  %49 = load ptr, ptr %dns, align 8, !tbaa !4
  %state46 = getelementptr inbounds %struct.nn_dns, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %state46, align 8, !tbaa !13
  %51 = load i32, ptr %src.addr, align 4, !tbaa !11
  %52 = load i32, ptr %type.addr, align 4, !tbaa !11
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.9, ptr noundef @.str.10, i32 noundef %50, i32 noundef %51, i32 noundef %52, ptr noundef @.str.2, i32 noundef 257)
  %53 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call48 = call i32 @fflush(ptr noundef %53)
  call void @nn_err_abort() #9
  unreachable

do.cond49:                                        ; No predecessors!
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %do.end50
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog51, %sw.bb17, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dns) #8
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

; Function Attrs: nounwind uwtable
define internal void @nn_dns_shutdown(ptr noundef %self, i32 noundef %src, i32 noundef %type, ptr noundef %srcptr) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %src.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %srcptr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %dns = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store i32 %src, ptr %src.addr, align 4, !tbaa !11
  store i32 %type, ptr %type.addr, align 4, !tbaa !11
  store ptr %srcptr, ptr %srcptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dns) #8
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %dns, align 8, !tbaa !4
  %2 = load i32, ptr %src.addr, align 4, !tbaa !11
  %cmp = icmp eq i32 %2, -2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %3 = load i32, ptr %type.addr, align 4, !tbaa !11
  %cmp1 = icmp eq i32 %3, -3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %4 = phi i1 [ false, %cond.end ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %conv = sext i32 %land.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool2 = icmp ne i64 %expval, 0
  br i1 %tobool2, label %if.then, label %if.end22

if.then:                                          ; preds = %land.end
  %5 = load ptr, ptr %dns, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.nn_dns, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %state, align 8, !tbaa !13
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %dns, align 8, !tbaa !4
  %gcb = getelementptr inbounds %struct.nn_dns, ptr %7, i32 0, i32 5
  %call = call i32 @gai_cancel(ptr noundef %gcb) #8
  store i32 %call, ptr %rc, align 4, !tbaa !11
  %8 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp6 = icmp eq i32 %8, -101
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then5
  %9 = load ptr, ptr %dns, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %9, i32 0, i32 0
  call void @nn_fsm_stopped(ptr noundef %fsm, i32 noundef 2)
  %10 = load ptr, ptr %dns, align 8, !tbaa !4
  %state9 = getelementptr inbounds %struct.nn_dns, ptr %10, i32 0, i32 1
  store i32 1, ptr %state9, align 8, !tbaa !13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then5
  %11 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp10 = icmp eq i32 %11, -102
  br i1 %cmp10, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp12 = icmp eq i32 %12, -103
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %13 = load ptr, ptr %dns, align 8, !tbaa !4
  %state15 = getelementptr inbounds %struct.nn_dns, ptr %13, i32 0, i32 1
  store i32 4, ptr %state15, align 8, !tbaa !13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end16
  call void @nn_backtrace_print()
  %14 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.4, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 180)
  %15 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call18 = call i32 @fflush(ptr noundef %15)
  call void @nn_err_abort() #9
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then
  %16 = load ptr, ptr %dns, align 8, !tbaa !4
  %fsm20 = getelementptr inbounds %struct.nn_dns, ptr %16, i32 0, i32 0
  call void @nn_fsm_stopped(ptr noundef %fsm20, i32 noundef 2)
  %17 = load ptr, ptr %dns, align 8, !tbaa !4
  %state21 = getelementptr inbounds %struct.nn_dns, ptr %17, i32 0, i32 1
  store i32 1, ptr %state21, align 8, !tbaa !13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %land.end
  %18 = load ptr, ptr %dns, align 8, !tbaa !4
  %state23 = getelementptr inbounds %struct.nn_dns, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %state23, align 8, !tbaa !13
  %cmp24 = icmp eq i32 %19, 4
  %conv25 = zext i1 %cmp24 to i32
  %conv26 = sext i32 %conv25 to i64
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0)
  %tobool28 = icmp ne i64 %expval27, 0
  br i1 %tobool28, label %if.then29, label %if.end41

if.then29:                                        ; preds = %if.end22
  %20 = load i32, ptr %src.addr, align 4, !tbaa !11
  %cmp30 = icmp eq i32 %20, -2
  br i1 %cmp30, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.then29
  %21 = load i32, ptr %type.addr, align 4, !tbaa !11
  %cmp32 = icmp eq i32 %21, 2
  br i1 %cmp32, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true
  %22 = load i32, ptr %type.addr, align 4, !tbaa !11
  %cmp35 = icmp eq i32 %22, 1
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %lor.lhs.false34, %land.lhs.true
  %23 = load ptr, ptr %dns, align 8, !tbaa !4
  %fsm38 = getelementptr inbounds %struct.nn_dns, ptr %23, i32 0, i32 0
  call void @nn_fsm_stopped(ptr noundef %fsm38, i32 noundef 2)
  %24 = load ptr, ptr %dns, align 8, !tbaa !4
  %state39 = getelementptr inbounds %struct.nn_dns, ptr %24, i32 0, i32 1
  store i32 1, ptr %state39, align 8, !tbaa !13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false34, %if.then29
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end22
  br label %do.body42

do.body42:                                        ; preds = %if.end41
  call void @nn_backtrace_print()
  %25 = load ptr, ptr @stderr, align 8, !tbaa !4
  %26 = load ptr, ptr %dns, align 8, !tbaa !4
  %state43 = getelementptr inbounds %struct.nn_dns, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %state43, align 8, !tbaa !13
  %28 = load i32, ptr %src.addr, align 4, !tbaa !11
  %29 = load i32, ptr %type.addr, align 4, !tbaa !11
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.9, ptr noundef @.str.10, i32 noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef @.str.2, i32 noundef 196)
  %30 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call45 = call i32 @fflush(ptr noundef %30)
  call void @nn_err_abort() #9
  unreachable

do.cond46:                                        ; No predecessors!
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end40, %if.then37, %if.end19, %if.then14, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dns) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #8
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

declare void @nn_fsm_event_init(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @nn_dns_term(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.nn_dns, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %state, align 8, !tbaa !13
  %cmp = icmp ne i32 %1, 1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @nn_backtrace_print()
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %3 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %state2 = getelementptr inbounds %struct.nn_dns, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %state2, align 8, !tbaa !13
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, i32 noundef %4, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 57)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call3 = call i32 @fflush(ptr noundef %5)
  call void @nn_err_abort() #9
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %done = getelementptr inbounds %struct.nn_dns, ptr %6, i32 0, i32 7
  call void @nn_fsm_event_term(ptr noundef %done)
  %7 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %7, i32 0, i32 0
  call void @nn_fsm_term(ptr noundef %fsm)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

declare void @nn_backtrace_print() #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #4

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @nn_dns_isidle(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %0, i32 0, i32 0
  %call = call i32 @nn_fsm_isidle(ptr noundef %fsm)
  ret i32 %call
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @nn_dns_start(ptr noundef %self, ptr noundef %addr, i64 noundef %addrlen, i32 noundef %ipv4only, ptr noundef %result) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %addrlen.addr = alloca i64, align 8
  %ipv4only.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pgcb = alloca ptr, align 8
  %sev = alloca %struct.sigevent, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store i64 %addrlen, ptr %addrlen.addr, align 8, !tbaa !8
  store i32 %ipv4only, ptr %ipv4only.addr, align 4, !tbaa !11
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgcb) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr %sev) #8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.nn_dns, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %state, align 8, !tbaa !13
  %cmp = icmp ne i32 %1, 1
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @nn_backtrace_print()
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %3 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %state2 = getelementptr inbounds %struct.nn_dns, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %state2, align 8, !tbaa !13
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, i32 noundef %4, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 75)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call3 = call i32 @fflush(ptr noundef %5)
  call void @nn_err_abort() #9
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %result4 = getelementptr inbounds %struct.nn_dns, ptr %7, i32 0, i32 6
  store ptr %6, ptr %result4, align 8, !tbaa !20
  %8 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %9 = load i64, ptr %addrlen.addr, align 8, !tbaa !8
  %10 = load i32, ptr %ipv4only.addr, align 4, !tbaa !11
  %11 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %result5 = getelementptr inbounds %struct.nn_dns, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %result5, align 8, !tbaa !20
  %addr6 = getelementptr inbounds %struct.nn_dns_result, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %result7 = getelementptr inbounds %struct.nn_dns, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %result7, align 8, !tbaa !20
  %addrlen8 = getelementptr inbounds %struct.nn_dns_result, ptr %14, i32 0, i32 2
  %call9 = call i32 @nn_literal_resolve(ptr noundef %8, i64 noundef %9, i32 noundef %10, ptr noundef %addr6, ptr noundef %addrlen8)
  store i32 %call9, ptr %rc, align 4, !tbaa !11
  %15 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %do.end
  %16 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %result13 = getelementptr inbounds %struct.nn_dns, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %result13, align 8, !tbaa !20
  %error = getelementptr inbounds %struct.nn_dns_result, ptr %17, i32 0, i32 0
  store i32 0, ptr %error, align 8, !tbaa !21
  %18 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %18, i32 0, i32 0
  call void @nn_fsm_start(ptr noundef %fsm)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %do.end
  br label %do.body15

do.body15:                                        ; preds = %if.end14
  %19 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp16 = icmp eq i32 %19, -22
  %lnot = xor i1 %cmp16, true
  %lnot.ext = zext i1 %lnot to i32
  %conv18 = sext i32 %lnot.ext to i64
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0)
  %tobool20 = icmp ne i64 %expval19, 0
  br i1 %tobool20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %do.body15
  call void @nn_backtrace_print()
  %20 = load ptr, ptr @stderr, align 8, !tbaa !4
  %21 = load i32, ptr %rc, align 4, !tbaa !11
  %sub = sub nsw i32 0, %21
  %call22 = call ptr @nn_err_strerror(i32 noundef %sub)
  %22 = load i32, ptr %rc, align 4, !tbaa !11
  %sub23 = sub nsw i32 0, %22
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.3, ptr noundef %call22, i32 noundef %sub23, ptr noundef @.str.2, i32 noundef 88)
  %23 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call25 = call i32 @fflush(ptr noundef %23)
  call void @nn_err_abort() #9
  unreachable

if.end26:                                         ; preds = %do.body15
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %24 = load i64, ptr %addrlen.addr, align 8, !tbaa !8
  %cmp30 = icmp ugt i64 128, %24
  %lnot32 = xor i1 %cmp30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0)
  %tobool36 = icmp ne i64 %expval35, 0
  br i1 %tobool36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %do.body29
  call void @nn_backtrace_print()
  %25 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 91)
  %26 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call39 = call i32 @fflush(ptr noundef %26)
  call void @nn_err_abort() #9
  unreachable

if.end40:                                         ; preds = %do.body29
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  %27 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %hostname = getelementptr inbounds %struct.nn_dns, ptr %27, i32 0, i32 3
  %arraydecay = getelementptr inbounds [128 x i8], ptr %hostname, i64 0, i64 0
  %28 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %29 = load i64, ptr %addrlen.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 %28, i64 %29, i1 false)
  %30 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %hostname43 = getelementptr inbounds %struct.nn_dns, ptr %30, i32 0, i32 3
  %31 = load i64, ptr %addrlen.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds [128 x i8], ptr %hostname43, i64 0, i64 %31
  store i8 0, ptr %arrayidx, align 1, !tbaa !10
  %32 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %request = getelementptr inbounds %struct.nn_dns, ptr %32, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr align 8 %request, i8 0, i64 48, i1 false)
  %33 = load i32, ptr %ipv4only.addr, align 4, !tbaa !11
  %tobool44 = icmp ne i32 %33, 0
  br i1 %tobool44, label %if.then45, label %if.else

if.then45:                                        ; preds = %do.end42
  %34 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %request46 = getelementptr inbounds %struct.nn_dns, ptr %34, i32 0, i32 4
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %request46, i32 0, i32 1
  store i32 2, ptr %ai_family, align 4, !tbaa !25
  br label %if.end50

if.else:                                          ; preds = %do.end42
  %35 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %request47 = getelementptr inbounds %struct.nn_dns, ptr %35, i32 0, i32 4
  %ai_family48 = getelementptr inbounds %struct.addrinfo, ptr %request47, i32 0, i32 1
  store i32 10, ptr %ai_family48, align 4, !tbaa !25
  %36 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %request49 = getelementptr inbounds %struct.nn_dns, ptr %36, i32 0, i32 4
  %ai_flags = getelementptr inbounds %struct.addrinfo, ptr %request49, i32 0, i32 0
  store i32 8, ptr %ai_flags, align 8, !tbaa !26
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then45
  %37 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %request51 = getelementptr inbounds %struct.nn_dns, ptr %37, i32 0, i32 4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %request51, i32 0, i32 2
  store i32 1, ptr %ai_socktype, align 8, !tbaa !27
  %38 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %gcb = getelementptr inbounds %struct.nn_dns, ptr %38, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr align 8 %gcb, i8 0, i64 56, i1 false)
  %39 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %hostname52 = getelementptr inbounds %struct.nn_dns, ptr %39, i32 0, i32 3
  %arraydecay53 = getelementptr inbounds [128 x i8], ptr %hostname52, i64 0, i64 0
  %40 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %gcb54 = getelementptr inbounds %struct.nn_dns, ptr %40, i32 0, i32 5
  %ar_name = getelementptr inbounds %struct.gaicb, ptr %gcb54, i32 0, i32 0
  store ptr %arraydecay53, ptr %ar_name, align 8, !tbaa !28
  %41 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %gcb55 = getelementptr inbounds %struct.nn_dns, ptr %41, i32 0, i32 5
  %ar_service = getelementptr inbounds %struct.gaicb, ptr %gcb55, i32 0, i32 1
  store ptr null, ptr %ar_service, align 8, !tbaa !29
  %42 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %request56 = getelementptr inbounds %struct.nn_dns, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %gcb57 = getelementptr inbounds %struct.nn_dns, ptr %43, i32 0, i32 5
  %ar_request = getelementptr inbounds %struct.gaicb, ptr %gcb57, i32 0, i32 2
  store ptr %request56, ptr %ar_request, align 8, !tbaa !30
  %44 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %gcb58 = getelementptr inbounds %struct.nn_dns, ptr %44, i32 0, i32 5
  %ar_result = getelementptr inbounds %struct.gaicb, ptr %gcb58, i32 0, i32 3
  store ptr null, ptr %ar_result, align 8, !tbaa !31
  %45 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %gcb59 = getelementptr inbounds %struct.nn_dns, ptr %45, i32 0, i32 5
  store ptr %gcb59, ptr %pgcb, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %sev, i8 0, i64 64, i1 false)
  %sigev_notify = getelementptr inbounds %struct.sigevent, ptr %sev, i32 0, i32 2
  store i32 2, ptr %sigev_notify, align 4, !tbaa !32
  %_sigev_un = getelementptr inbounds %struct.sigevent, ptr %sev, i32 0, i32 3
  %_function = getelementptr inbounds %struct.anon, ptr %_sigev_un, i32 0, i32 0
  store ptr @nn_dns_notify, ptr %_function, align 8, !tbaa !10
  %46 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %sigev_value = getelementptr inbounds %struct.sigevent, ptr %sev, i32 0, i32 0
  store ptr %46, ptr %sigev_value, align 8, !tbaa !10
  %call60 = call i32 @getaddrinfo_a(i32 noundef 1, ptr noundef %pgcb, i32 noundef 1, ptr noundef %sev)
  store i32 %call60, ptr %rc, align 4, !tbaa !11
  br label %do.body61

do.body61:                                        ; preds = %if.end50
  %47 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp62 = icmp eq i32 %47, 0
  %lnot64 = xor i1 %cmp62, true
  %lnot.ext65 = zext i1 %lnot64 to i32
  %conv66 = sext i32 %lnot.ext65 to i64
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0)
  %tobool68 = icmp ne i64 %expval67, 0
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %do.body61
  call void @nn_backtrace_print()
  %48 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.4, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 120)
  %49 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call71 = call i32 @fflush(ptr noundef %49)
  call void @nn_err_abort() #9
  unreachable

if.end72:                                         ; preds = %do.body61
  br label %do.cond73

do.cond73:                                        ; preds = %if.end72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  %50 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %result75 = getelementptr inbounds %struct.nn_dns, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %result75, align 8, !tbaa !20
  %error76 = getelementptr inbounds %struct.nn_dns_result, ptr %51, i32 0, i32 0
  store i32 115, ptr %error76, align 8, !tbaa !21
  %52 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %fsm77 = getelementptr inbounds %struct.nn_dns, ptr %52, i32 0, i32 0
  call void @nn_fsm_start(ptr noundef %fsm77)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.then12
  call void @llvm.lifetime.end.p0(i64 64, ptr %sev) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgcb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #8
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

declare i32 @nn_literal_resolve(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal void @nn_dns_notify(ptr %sval.coerce) #0 {
entry:
  %sval = alloca %union.sigval, align 8
  %rc = alloca i32, align 4
  %self = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %union.sigval, ptr %sval, i32 0, i32 0
  store ptr %sval.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #8
  %0 = load ptr, ptr %sval, align 8, !tbaa !10
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %1, i32 0, i32 0
  %ctx = getelementptr inbounds %struct.nn_fsm, ptr %fsm, i32 0, i32 6
  %2 = load ptr, ptr %ctx, align 8, !tbaa !34
  call void @nn_ctx_enter(ptr noundef %2)
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %gcb = getelementptr inbounds %struct.nn_dns, ptr %3, i32 0, i32 5
  %call = call i32 @gai_error(ptr noundef %gcb) #8
  store i32 %call, ptr %rc, align 4, !tbaa !11
  %4 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp = icmp eq i32 %4, -101
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %fsm1 = getelementptr inbounds %struct.nn_dns, ptr %5, i32 0, i32 0
  call void @nn_fsm_action(ptr noundef %fsm1, i32 noundef 2)
  br label %if.end31

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %rc, align 4, !tbaa !11
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %result = getelementptr inbounds %struct.nn_dns, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %result, align 8, !tbaa !20
  %error = getelementptr inbounds %struct.nn_dns_result, ptr %8, i32 0, i32 0
  store i32 22, ptr %error, align 8, !tbaa !21
  %9 = load ptr, ptr %self, align 8, !tbaa !4
  %fsm4 = getelementptr inbounds %struct.nn_dns, ptr %9, i32 0, i32 0
  call void @nn_fsm_action(ptr noundef %fsm4, i32 noundef 1)
  br label %if.end30

if.else5:                                         ; preds = %if.else
  %10 = load ptr, ptr %self, align 8, !tbaa !4
  %result6 = getelementptr inbounds %struct.nn_dns, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %result6, align 8, !tbaa !20
  %error7 = getelementptr inbounds %struct.nn_dns_result, ptr %11, i32 0, i32 0
  store i32 0, ptr %error7, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %if.else5
  %12 = load ptr, ptr %self, align 8, !tbaa !4
  %gcb8 = getelementptr inbounds %struct.nn_dns, ptr %12, i32 0, i32 5
  %ar_result = getelementptr inbounds %struct.gaicb, ptr %gcb8, i32 0, i32 3
  %13 = load ptr, ptr %ar_result, align 8, !tbaa !31
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %ai_addrlen, align 8, !tbaa !35
  %conv = zext i32 %14 to i64
  %cmp9 = icmp ule i64 %conv, 128
  %lnot = xor i1 %cmp9, true
  %lnot.ext = zext i1 %lnot to i32
  %conv11 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then12, label %if.end

if.then12:                                        ; preds = %do.body
  call void @nn_backtrace_print()
  %15 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.4, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 150)
  %16 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call14 = call i32 @fflush(ptr noundef %16)
  call void @nn_err_abort() #9
  unreachable

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %result15 = getelementptr inbounds %struct.nn_dns, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %result15, align 8, !tbaa !20
  %addr = getelementptr inbounds %struct.nn_dns_result, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %self, align 8, !tbaa !4
  %gcb16 = getelementptr inbounds %struct.nn_dns, ptr %19, i32 0, i32 5
  %ar_result17 = getelementptr inbounds %struct.gaicb, ptr %gcb16, i32 0, i32 3
  %20 = load ptr, ptr %ar_result17, align 8, !tbaa !31
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %ai_addr, align 8, !tbaa !36
  %22 = load ptr, ptr %self, align 8, !tbaa !4
  %gcb18 = getelementptr inbounds %struct.nn_dns, ptr %22, i32 0, i32 5
  %ar_result19 = getelementptr inbounds %struct.gaicb, ptr %gcb18, i32 0, i32 3
  %23 = load ptr, ptr %ar_result19, align 8, !tbaa !31
  %ai_addrlen20 = getelementptr inbounds %struct.addrinfo, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %ai_addrlen20, align 8, !tbaa !35
  %conv21 = zext i32 %24 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %addr, ptr align 2 %21, i64 %conv21, i1 false)
  %25 = load ptr, ptr %self, align 8, !tbaa !4
  %gcb22 = getelementptr inbounds %struct.nn_dns, ptr %25, i32 0, i32 5
  %ar_result23 = getelementptr inbounds %struct.gaicb, ptr %gcb22, i32 0, i32 3
  %26 = load ptr, ptr %ar_result23, align 8, !tbaa !31
  %ai_addrlen24 = getelementptr inbounds %struct.addrinfo, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %ai_addrlen24, align 8, !tbaa !35
  %conv25 = zext i32 %27 to i64
  %28 = load ptr, ptr %self, align 8, !tbaa !4
  %result26 = getelementptr inbounds %struct.nn_dns, ptr %28, i32 0, i32 6
  %29 = load ptr, ptr %result26, align 8, !tbaa !20
  %addrlen = getelementptr inbounds %struct.nn_dns_result, ptr %29, i32 0, i32 2
  store i64 %conv25, ptr %addrlen, align 8, !tbaa !37
  %30 = load ptr, ptr %self, align 8, !tbaa !4
  %gcb27 = getelementptr inbounds %struct.nn_dns, ptr %30, i32 0, i32 5
  %ar_result28 = getelementptr inbounds %struct.gaicb, ptr %gcb27, i32 0, i32 3
  %31 = load ptr, ptr %ar_result28, align 8, !tbaa !31
  call void @freeaddrinfo(ptr noundef %31) #8
  %32 = load ptr, ptr %self, align 8, !tbaa !4
  %fsm29 = getelementptr inbounds %struct.nn_dns, ptr %32, i32 0, i32 0
  call void @nn_fsm_action(ptr noundef %fsm29, i32 noundef 1)
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then3
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  %33 = load ptr, ptr %self, align 8, !tbaa !4
  %fsm32 = getelementptr inbounds %struct.nn_dns, ptr %33, i32 0, i32 0
  %ctx33 = getelementptr inbounds %struct.nn_fsm, ptr %fsm32, i32 0, i32 6
  %34 = load ptr, ptr %ctx33, align 8, !tbaa !34
  call void @nn_ctx_leave(ptr noundef %34)
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #8
  ret void
}

declare i32 @getaddrinfo_a(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @nn_dns_stop(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %self.addr, align 8, !tbaa !4
  %fsm = getelementptr inbounds %struct.nn_dns, ptr %0, i32 0, i32 0
  call void @nn_fsm_stop(ptr noundef %fsm)
  ret void
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_ctx_enter(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @gai_error(ptr noundef) #7

declare void @nn_fsm_action(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) #7

declare void @nn_ctx_leave(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @gai_cancel(ptr noundef) #7

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !12, i64 88}
!14 = !{!"nn_dns", !15, i64 0, !12, i64 88, !12, i64 92, !6, i64 96, !18, i64 224, !19, i64 272, !5, i64 328, !16, i64 336}
!15 = !{!"nn_fsm", !5, i64 0, !5, i64 8, !12, i64 16, !12, i64 20, !5, i64 24, !5, i64 32, !5, i64 40, !16, i64 48}
!16 = !{!"nn_fsm_event", !5, i64 0, !12, i64 8, !5, i64 16, !12, i64 24, !17, i64 32}
!17 = !{!"nn_queue_item", !5, i64 0}
!18 = !{!"addrinfo", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!19 = !{!"gaicb", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !12, i64 32, !6, i64 36}
!20 = !{!14, !5, i64 328}
!21 = !{!22, !12, i64 0}
!22 = !{!"nn_dns_result", !12, i64 0, !23, i64 8, !9, i64 136}
!23 = !{!"sockaddr_storage", !24, i64 0, !6, i64 2, !9, i64 120}
!24 = !{!"short", !6, i64 0}
!25 = !{!14, !12, i64 228}
!26 = !{!14, !12, i64 224}
!27 = !{!14, !12, i64 232}
!28 = !{!14, !5, i64 272}
!29 = !{!14, !5, i64 280}
!30 = !{!14, !5, i64 288}
!31 = !{!14, !5, i64 296}
!32 = !{!33, !12, i64 12}
!33 = !{!"sigevent", !6, i64 0, !12, i64 8, !12, i64 12, !6, i64 16}
!34 = !{!14, !5, i64 40}
!35 = !{!18, !12, i64 16}
!36 = !{!18, !5, i64 24}
!37 = !{!22, !9, i64 136}

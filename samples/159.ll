; ModuleID = 'samples/159.bc'
source_filename = "/local-ssd/nanomsg-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw-build/aidengro/spack-stage-nanomsg-1.2-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw/spack-src/perf/remote_lat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.nn_stopwatch = type { i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"Nanomsg library was terminated\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Operation cannot be performed in this state\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"usage: remote_lat <connect-to> <msg-size> <roundtrips>\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"s != -1\00", align 1
@.str.5 = private unnamed_addr constant [152 x i8] c"/local-ssd/nanomsg-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw-build/aidengro/spack-stage-nanomsg-1.2-ep75jimo5ujk6ugzjeysm2n3ozdtn5iw/spack-src/perf/remote_lat.c\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"rc == 0\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"rc >= 0\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"nbytes == (int)sz\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"message size: %d [B]\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"roundtrip count: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"average latency: %.3f [us]\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @nn_stopwatch_init(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %tv) #11
  %call = call i32 @gettimeofday(ptr noundef %tv, ptr noundef null) #11
  store i32 %call, ptr %rc, align 4, !tbaa !9
  %tv_sec = getelementptr inbounds %struct.timeval, ptr %tv, i32 0, i32 0
  %0 = load i64, ptr %tv_sec, align 8, !tbaa !11
  %mul = mul i64 %0, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %tv, i32 0, i32 1
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !14
  %add = add i64 %mul, %1
  %2 = load ptr, ptr %self.addr, align 8, !tbaa !5
  %start = getelementptr inbounds %struct.nn_stopwatch, ptr %2, i32 0, i32 0
  store i64 %add, ptr %start, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr %tv) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @nn_stopwatch_term(ptr noundef %self) #0 {
entry:
  %self.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  %end = alloca i64, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %tv) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11
  %call = call i32 @gettimeofday(ptr noundef %tv, ptr noundef null) #11
  store i32 %call, ptr %rc, align 4, !tbaa !9
  %tv_sec = getelementptr inbounds %struct.timeval, ptr %tv, i32 0, i32 0
  %0 = load i64, ptr %tv_sec, align 8, !tbaa !11
  %mul = mul i64 %0, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %tv, i32 0, i32 1
  %1 = load i64, ptr %tv_usec, align 8, !tbaa !14
  %add = add i64 %mul, %1
  store i64 %add, ptr %end, align 8, !tbaa !17
  %2 = load i64, ptr %end, align 8, !tbaa !17
  %3 = load ptr, ptr %self.addr, align 8, !tbaa !5
  %start = getelementptr inbounds %struct.nn_stopwatch, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %start, align 8, !tbaa !15
  %sub = sub i64 %2, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %tv) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define dso_local void @nn_backtrace_print() #0 {
entry:
  %frames = alloca [50 x ptr], align 16
  %size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr %frames) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #11
  %arraydecay = getelementptr inbounds [50 x ptr], ptr %frames, i64 0, i64 0
  %call = call i32 @backtrace(ptr noundef %arraydecay, i32 noundef 50)
  store i32 %call, ptr %size, align 4, !tbaa !9
  %0 = load i32, ptr %size, align 4, !tbaa !9
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [50 x ptr], ptr %frames, i64 0, i64 1
  %1 = load i32, ptr %size, align 4, !tbaa !9
  %sub = sub nsw i32 %1, 1
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = call i32 @fileno(ptr noundef %2) #11
  call void @backtrace_symbols_fd(ptr noundef %arrayidx, i32 noundef %sub, i32 noundef %call1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #11
  call void @llvm.lifetime.end.p0(i64 400, ptr %frames) #11
  ret void
}

declare i32 @backtrace(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @backtrace_symbols_fd(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #2

; Function Attrs: noreturn nounwind uwtable
define dso_local void @nn_err_abort() #4 {
entry:
  call void @abort() #12
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind uwtable
define dso_local i32 @nn_err_errno() #0 {
entry:
  %call = call ptr @__errno_location() #13
  %0 = load i32, ptr %call, align 4, !tbaa !9
  ret i32 %0
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: nounwind uwtable
define dso_local ptr @nn_err_strerror(i32 noundef %errnum) #0 {
entry:
  %retval = alloca ptr, align 8
  %errnum.addr = alloca i32, align 4
  store i32 %errnum, ptr %errnum.addr, align 4, !tbaa !9
  %0 = load i32, ptr %errnum.addr, align 4, !tbaa !9
  switch i32 %0, label %sw.default [
    i32 156384765, label %sw.bb
    i32 156384766, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @.str.1, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %errnum.addr, align 4, !tbaa !9
  %call = call ptr @strerror(i32 noundef %1) #11
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %connect_to = alloca ptr, align 8
  %sz = alloca i64, align 8
  %rts = alloca i32, align 4
  %buf = alloca ptr, align 8
  %nbytes = alloca i32, align 4
  %s = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %opt = alloca i32, align 4
  %sw = alloca %struct.nn_stopwatch, align 8
  %total = alloca i64, align 8
  %lat = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !9
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %connect_to) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %rts) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbytes) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %sw) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %lat) #11
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  store ptr %2, ptr %connect_to, align 8, !tbaa !5
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 2
  %4 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %call2 = call i32 @atoi(ptr noundef %4) #14
  %conv = sext i32 %call2 to i64
  store i64 %conv, ptr %sz, align 8, !tbaa !17
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 3
  %6 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  %call4 = call i32 @atoi(ptr noundef %6) #14
  store i32 %call4, ptr %rts, align 4, !tbaa !9
  %call5 = call i32 @nn_socket(i32 noundef 1, i32 noundef 16)
  store i32 %call5, ptr %s, align 4, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load i32, ptr %s, align 4, !tbaa !9
  %cmp6 = icmp ne i32 %7, -1
  %lnot = xor i1 %cmp6, true
  %lnot.ext = zext i1 %lnot to i32
  %conv8 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.body
  call void @nn_backtrace_print()
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 60)
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = call i32 @fflush(ptr noundef %9)
  call void @nn_err_abort() #15
  unreachable

if.end12:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, ptr %opt, align 4, !tbaa !9
  %10 = load i32, ptr %s, align 4, !tbaa !9
  %call13 = call i32 @nn_setsockopt(i32 noundef %10, i32 noundef -3, i32 noundef 1, ptr noundef %opt, i64 noundef 4)
  store i32 %call13, ptr %rc, align 4, !tbaa !9
  br label %do.body14

do.body14:                                        ; preds = %do.end
  %11 = load i32, ptr %rc, align 4, !tbaa !9
  %cmp15 = icmp eq i32 %11, 0
  %lnot17 = xor i1 %cmp15, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0)
  %tobool21 = icmp ne i64 %expval20, 0
  br i1 %tobool21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %do.body14
  call void @nn_backtrace_print()
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.3, ptr noundef @.str.6, ptr noundef @.str.5, i32 noundef 63)
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call24 = call i32 @fflush(ptr noundef %13)
  call void @nn_err_abort() #15
  unreachable

if.end25:                                         ; preds = %do.body14
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  store i32 -1, ptr %opt, align 4, !tbaa !9
  %14 = load i32, ptr %s, align 4, !tbaa !9
  %call28 = call i32 @nn_setsockopt(i32 noundef %14, i32 noundef 0, i32 noundef 16, ptr noundef %opt, i64 noundef 4)
  store i32 %call28, ptr %rc, align 4, !tbaa !9
  br label %do.body29

do.body29:                                        ; preds = %do.end27
  %15 = load i32, ptr %rc, align 4, !tbaa !9
  %cmp30 = icmp eq i32 %15, 0
  %lnot32 = xor i1 %cmp30, true
  %lnot.ext33 = zext i1 %lnot32 to i32
  %conv34 = sext i32 %lnot.ext33 to i64
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0)
  %tobool36 = icmp ne i64 %expval35, 0
  br i1 %tobool36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %do.body29
  call void @nn_backtrace_print()
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.3, ptr noundef @.str.6, ptr noundef @.str.5, i32 noundef 66)
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call39 = call i32 @fflush(ptr noundef %17)
  call void @nn_err_abort() #15
  unreachable

if.end40:                                         ; preds = %do.body29
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  %18 = load i32, ptr %s, align 4, !tbaa !9
  %19 = load ptr, ptr %connect_to, align 8, !tbaa !5
  %call43 = call i32 @nn_connect(i32 noundef %18, ptr noundef %19)
  store i32 %call43, ptr %rc, align 4, !tbaa !9
  br label %do.body44

do.body44:                                        ; preds = %do.end42
  %20 = load i32, ptr %rc, align 4, !tbaa !9
  %cmp45 = icmp sge i32 %20, 0
  %lnot47 = xor i1 %cmp45, true
  %lnot.ext48 = zext i1 %lnot47 to i32
  %conv49 = sext i32 %lnot.ext48 to i64
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0)
  %tobool51 = icmp ne i64 %expval50, 0
  br i1 %tobool51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %do.body44
  call void @nn_backtrace_print()
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.3, ptr noundef @.str.7, ptr noundef @.str.5, i32 noundef 68)
  %22 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call54 = call i32 @fflush(ptr noundef %22)
  call void @nn_err_abort() #15
  unreachable

if.end55:                                         ; preds = %do.body44
  br label %do.cond56

do.cond56:                                        ; preds = %if.end55
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  %23 = load i64, ptr %sz, align 8, !tbaa !17
  %call58 = call noalias ptr @malloc(i64 noundef %23) #16
  store ptr %call58, ptr %buf, align 8, !tbaa !5
  br label %do.body59

do.body59:                                        ; preds = %do.end57
  %24 = load ptr, ptr %buf, align 8, !tbaa !5
  %tobool60 = icmp ne ptr %24, null
  %lnot61 = xor i1 %tobool60, true
  %lnot.ext62 = zext i1 %lnot61 to i32
  %conv63 = sext i32 %lnot.ext62 to i64
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0)
  %tobool65 = icmp ne i64 %expval64, 0
  br i1 %tobool65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %do.body59
  call void @nn_backtrace_print()
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.3, ptr noundef @.str.8, ptr noundef @.str.5, i32 noundef 71)
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call68 = call i32 @fflush(ptr noundef %26)
  call void @nn_err_abort() #15
  unreachable

if.end69:                                         ; preds = %do.body59
  br label %do.cond70

do.cond70:                                        ; preds = %if.end69
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  %27 = load ptr, ptr %buf, align 8, !tbaa !5
  %28 = load i64, ptr %sz, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr align 1 %27, i8 111, i64 %28, i1 false)
  call void @nn_stopwatch_init(ptr noundef %sw)
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end71
  %29 = load i32, ptr %i, align 4, !tbaa !9
  %30 = load i32, ptr %rts, align 4, !tbaa !9
  %cmp72 = icmp ne i32 %29, %30
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %s, align 4, !tbaa !9
  %32 = load ptr, ptr %buf, align 8, !tbaa !5
  %33 = load i64, ptr %sz, align 8, !tbaa !17
  %call74 = call i32 @nn_send(i32 noundef %31, ptr noundef %32, i64 noundef %33, i32 noundef 0)
  store i32 %call74, ptr %nbytes, align 4, !tbaa !9
  br label %do.body75

do.body75:                                        ; preds = %for.body
  %34 = load i32, ptr %nbytes, align 4, !tbaa !9
  %35 = load i64, ptr %sz, align 8, !tbaa !17
  %conv76 = trunc i64 %35 to i32
  %cmp77 = icmp eq i32 %34, %conv76
  %lnot79 = xor i1 %cmp77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %expval82 = call i64 @llvm.expect.i64(i64 %conv81, i64 0)
  %tobool83 = icmp ne i64 %expval82, 0
  br i1 %tobool83, label %if.then84, label %if.end87

if.then84:                                        ; preds = %do.body75
  call void @nn_backtrace_print()
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.3, ptr noundef @.str.9, ptr noundef @.str.5, i32 noundef 77)
  %37 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call86 = call i32 @fflush(ptr noundef %37)
  call void @nn_err_abort() #15
  unreachable

if.end87:                                         ; preds = %do.body75
  br label %do.cond88

do.cond88:                                        ; preds = %if.end87
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  %38 = load i32, ptr %s, align 4, !tbaa !9
  %39 = load ptr, ptr %buf, align 8, !tbaa !5
  %40 = load i64, ptr %sz, align 8, !tbaa !17
  %call90 = call i32 @nn_recv(i32 noundef %38, ptr noundef %39, i64 noundef %40, i32 noundef 0)
  store i32 %call90, ptr %nbytes, align 4, !tbaa !9
  br label %do.body91

do.body91:                                        ; preds = %do.end89
  %41 = load i32, ptr %nbytes, align 4, !tbaa !9
  %42 = load i64, ptr %sz, align 8, !tbaa !17
  %conv92 = trunc i64 %42 to i32
  %cmp93 = icmp eq i32 %41, %conv92
  %lnot95 = xor i1 %cmp93, true
  %lnot.ext96 = zext i1 %lnot95 to i32
  %conv97 = sext i32 %lnot.ext96 to i64
  %expval98 = call i64 @llvm.expect.i64(i64 %conv97, i64 0)
  %tobool99 = icmp ne i64 %expval98, 0
  br i1 %tobool99, label %if.then100, label %if.end103

if.then100:                                       ; preds = %do.body91
  call void @nn_backtrace_print()
  %43 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.3, ptr noundef @.str.9, ptr noundef @.str.5, i32 noundef 79)
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call102 = call i32 @fflush(ptr noundef %44)
  call void @nn_err_abort() #15
  unreachable

if.end103:                                        ; preds = %do.body91
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  br label %for.inc

for.inc:                                          ; preds = %do.end105
  %45 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %call106 = call i64 @nn_stopwatch_term(ptr noundef %sw)
  store i64 %call106, ptr %total, align 8, !tbaa !17
  %46 = load i64, ptr %total, align 8, !tbaa !17
  %conv107 = uitofp i64 %46 to double
  %47 = load i32, ptr %rts, align 4, !tbaa !9
  %mul = mul nsw i32 %47, 2
  %conv108 = sitofp i32 %mul to double
  %div = fdiv double %conv107, %conv108
  store double %div, ptr %lat, align 8, !tbaa !20
  %48 = load i64, ptr %sz, align 8, !tbaa !17
  %conv109 = trunc i64 %48 to i32
  %call110 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv109)
  %49 = load i32, ptr %rts, align 4, !tbaa !9
  %call111 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %49)
  %50 = load double, ptr %lat, align 8, !tbaa !20
  %call112 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, double noundef %50)
  %51 = load ptr, ptr %buf, align 8, !tbaa !5
  call void @free(ptr noundef %51) #11
  %52 = load i32, ptr %s, align 4, !tbaa !9
  %call113 = call i32 @nn_close(i32 noundef %52)
  store i32 %call113, ptr %rc, align 4, !tbaa !9
  br label %do.body114

do.body114:                                       ; preds = %for.end
  %53 = load i32, ptr %rc, align 4, !tbaa !9
  %cmp115 = icmp eq i32 %53, 0
  %lnot117 = xor i1 %cmp115, true
  %lnot.ext118 = zext i1 %lnot117 to i32
  %conv119 = sext i32 %lnot.ext118 to i64
  %expval120 = call i64 @llvm.expect.i64(i64 %conv119, i64 0)
  %tobool121 = icmp ne i64 %expval120, 0
  br i1 %tobool121, label %if.then122, label %if.end125

if.then122:                                       ; preds = %do.body114
  call void @nn_backtrace_print()
  %54 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.3, ptr noundef @.str.6, ptr noundef @.str.5, i32 noundef 91)
  %55 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call124 = call i32 @fflush(ptr noundef %55)
  call void @nn_err_abort() #15
  unreachable

if.end125:                                        ; preds = %do.body114
  br label %do.cond126

do.cond126:                                       ; preds = %if.end125
  br label %do.end127

do.end127:                                        ; preds = %do.cond126
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end127, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lat) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %sw) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbytes) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %rts) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %connect_to) #11
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #7 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !5
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #11
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i32 @nn_socket(i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @fflush(ptr noundef) #3

declare i32 @nn_setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) #3

declare i32 @nn_connect(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare i32 @nn_send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare i32 @nn_recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

declare i32 @nn_close(i32 noundef) #3

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn }
attributes #16 = { nounwind allocsize(0) }

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
!11 = !{!12, !13, i64 0}
!12 = !{!"timeval", !13, i64 0, !13, i64 8}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!16, !13, i64 0}
!16 = !{!"nn_stopwatch", !13, i64 0}
!17 = !{!13, !13, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !7, i64 0}

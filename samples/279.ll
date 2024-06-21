; ModuleID = 'samples/279.bc'
source_filename = "src/cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_t = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%struct.iovec = type { ptr, i64 }
%union.anon = type { %struct.cmsghdr, [8 x i8] }
%struct.cmsghdr = type { i64, i32, i32, [0 x i8] }
%union.anon.0 = type { %struct.cmsghdr, [8 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"nsenter: %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"recvfd: failed to allocate file.tag buffer\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"recvfd: got NULL from CMSG_FIRSTHDR\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"nsenter: recvfd: expected SOL_SOCKET in cmsg: %d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"nsenter: recvfd: expected SCM_RIGHTS in cmsg: %d: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"nsenter: recvfd: expected correct CMSG_LEN in cmsg: %lu: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"recvfd: received invalid pointer\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @sendfd(i32 noundef %sockfd, ptr %file.coerce0, i32 %file.coerce1) #0 {
entry:
  %file = alloca %struct.file_t, align 8
  %sockfd.addr = alloca i32, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [1 x %struct.iovec], align 16
  %cmsg = alloca ptr, align 8
  %fdptr = alloca ptr, align 8
  %u = alloca %union.anon, align 8
  %0 = getelementptr inbounds { ptr, i32 }, ptr %file, i32 0, i32 0
  store ptr %file.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i32 }, ptr %file, i32 0, i32 1
  store i32 %file.coerce1, ptr %1, align 8
  store i32 %sockfd, ptr %sockfd.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 56, ptr %msg) #9
  call void @llvm.memset.p0.i64(ptr align 8 %msg, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %iov) #9
  call void @llvm.memset.p0.i64(ptr align 16 %iov, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmsg) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fdptr) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr %u) #9
  %name = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 0
  %2 = load ptr, ptr %name, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds [1 x %struct.iovec], ptr %iov, i64 0, i64 0
  %iov_base = getelementptr inbounds %struct.iovec, ptr %arrayidx, i32 0, i32 0
  store ptr %2, ptr %iov_base, align 16, !tbaa !12
  %name1 = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 0
  %3 = load ptr, ptr %name1, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %3) #10
  %add = add i64 %call, 1
  %arrayidx2 = getelementptr inbounds [1 x %struct.iovec], ptr %iov, i64 0, i64 0
  %iov_len = getelementptr inbounds %struct.iovec, ptr %arrayidx2, i32 0, i32 1
  store i64 %add, ptr %iov_len, align 8, !tbaa !15
  %msg_name = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 0
  store ptr null, ptr %msg_name, align 8, !tbaa !16
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  store i32 0, ptr %msg_namelen, align 8, !tbaa !18
  %arraydecay = getelementptr inbounds [1 x %struct.iovec], ptr %iov, i64 0, i64 0
  %msg_iov = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  store ptr %arraydecay, ptr %msg_iov, align 8, !tbaa !19
  %msg_iovlen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  store i64 1, ptr %msg_iovlen, align 8, !tbaa !20
  %arraydecay3 = getelementptr inbounds [24 x i8], ptr %u, i64 0, i64 0
  %msg_control = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  store ptr %arraydecay3, ptr %msg_control, align 8, !tbaa !21
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  store i64 24, ptr %msg_controllen, align 8, !tbaa !22
  %msg_controllen4 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %4 = load i64, ptr %msg_controllen4, align 8, !tbaa !22
  %cmp = icmp uge i64 %4, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %msg_control5 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  %5 = load ptr, ptr %msg_control5, align 8, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %cmsg, align 8, !tbaa !23
  %6 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %6, i32 0, i32 1
  store i32 1, ptr %cmsg_level, align 8, !tbaa !5
  %7 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %7, i32 0, i32 2
  store i32 1, ptr %cmsg_type, align 4, !tbaa !5
  %8 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, ptr %8, i32 0, i32 0
  store i64 20, ptr %cmsg_len, align 8, !tbaa !24
  %9 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %__cmsg_data = getelementptr inbounds %struct.cmsghdr, ptr %9, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [0 x i8], ptr %__cmsg_data, i64 0, i64 0
  store ptr %arraydecay6, ptr %fdptr, align 8, !tbaa !23
  %10 = load ptr, ptr %fdptr, align 8, !tbaa !23
  %fd = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 8 %fd, i64 4, i1 false)
  %11 = load i32, ptr %sockfd.addr, align 4, !tbaa !5
  %call7 = call i64 @sendmsg(i32 noundef %11, ptr noundef %msg, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr %u) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fdptr) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmsg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %iov) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %msg) #9
  ret i64 %call7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind optsize willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define dso_local { ptr, i32 } @recvfd(i32 noundef %sockfd) #0 {
entry:
  %retval = alloca %struct.file_t, align 8
  %sockfd.addr = alloca i32, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [1 x %struct.iovec], align 16
  %cmsg = alloca ptr, align 8
  %file = alloca %struct.file_t, align 8
  %fdptr = alloca ptr, align 8
  %olderrno = alloca i32, align 4
  %u = alloca %union.anon.0, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %sockfd, ptr %sockfd.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 56, ptr %msg) #9
  call void @llvm.memset.p0.i64(ptr align 8 %msg, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %iov) #9
  call void @llvm.memset.p0.i64(ptr align 16 %iov, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmsg) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %file) #9
  call void @llvm.memset.p0.i64(ptr align 8 %file, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %fdptr) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %olderrno) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr %u) #9
  %call = call noalias ptr @malloc(i64 noundef 4096) #12
  %name = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 0
  store ptr %call, ptr %name, align 8, !tbaa !9
  %name1 = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 0
  %0 = load ptr, ptr %name1, align 8, !tbaa !9
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8, !tbaa !23
  %call2 = call ptr @__errno_location() #13
  %2 = load i32, ptr %call2, align 4, !tbaa !5
  %call3 = call ptr @strerror(i32 noundef %2) #14
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %call3) #11
  %call5 = call ptr @__errno_location() #13
  store i32 70, ptr %call5, align 4, !tbaa !5
  br label %err

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %name6 = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 0
  %3 = load ptr, ptr %name6, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds [1 x %struct.iovec], ptr %iov, i64 0, i64 0
  %iov_base = getelementptr inbounds %struct.iovec, ptr %arrayidx, i32 0, i32 0
  store ptr %3, ptr %iov_base, align 16, !tbaa !12
  %arrayidx7 = getelementptr inbounds [1 x %struct.iovec], ptr %iov, i64 0, i64 0
  %iov_len = getelementptr inbounds %struct.iovec, ptr %arrayidx7, i32 0, i32 1
  store i64 4096, ptr %iov_len, align 8, !tbaa !15
  %msg_name = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 0
  store ptr null, ptr %msg_name, align 8, !tbaa !16
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  store i32 0, ptr %msg_namelen, align 8, !tbaa !18
  %arraydecay = getelementptr inbounds [1 x %struct.iovec], ptr %iov, i64 0, i64 0
  %msg_iov = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  store ptr %arraydecay, ptr %msg_iov, align 8, !tbaa !19
  %msg_iovlen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  store i64 1, ptr %msg_iovlen, align 8, !tbaa !20
  %arraydecay8 = getelementptr inbounds [24 x i8], ptr %u, i64 0, i64 0
  %msg_control = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  store ptr %arraydecay8, ptr %msg_control, align 8, !tbaa !21
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  store i64 24, ptr %msg_controllen, align 8, !tbaa !22
  %4 = load i32, ptr %sockfd.addr, align 4, !tbaa !5
  %call9 = call i64 @recvmsg(i32 noundef %4, ptr noundef %msg, i32 noundef 0) #11
  store i64 %call9, ptr %ret, align 8, !tbaa !24
  %5 = load i64, ptr %ret, align 8, !tbaa !24
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %err

if.end11:                                         ; preds = %if.end
  %msg_controllen12 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %6 = load i64, ptr %msg_controllen12, align 8, !tbaa !22
  %cmp13 = icmp uge i64 %6, 16
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  %msg_control14 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  %7 = load ptr, ptr %msg_control14, align 8, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %cmsg, align 8, !tbaa !23
  %8 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %tobool15 = icmp ne ptr %8, null
  br i1 %tobool15, label %if.end24, label %if.then16

if.then16:                                        ; preds = %cond.end
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  %9 = load ptr, ptr @stderr, align 8, !tbaa !23
  %call18 = call ptr @__errno_location() #13
  %10 = load i32, ptr %call18, align 4, !tbaa !5
  %call19 = call ptr @strerror(i32 noundef %10) #14
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str, ptr noundef @.str.2, ptr noundef %call19) #11
  %call21 = call ptr @__errno_location() #13
  store i32 70, ptr %call21, align 4, !tbaa !5
  br label %err

do.cond22:                                        ; No predecessors!
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %cond.end
  %11 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_level = getelementptr inbounds %struct.cmsghdr, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %cmsg_level, align 8, !tbaa !5
  %cmp25 = icmp ne i32 %12, 1
  br i1 %cmp25, label %if.then26, label %if.end35

if.then26:                                        ; preds = %if.end24
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %13 = load ptr, ptr @stderr, align 8, !tbaa !23
  %14 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_level28 = getelementptr inbounds %struct.cmsghdr, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %cmsg_level28, align 8, !tbaa !5
  %call29 = call ptr @__errno_location() #13
  %16 = load i32, ptr %call29, align 4, !tbaa !5
  %call30 = call ptr @strerror(i32 noundef %16) #14
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.3, i32 noundef %15, ptr noundef %call30) #11
  %call32 = call ptr @__errno_location() #13
  store i32 70, ptr %call32, align 4, !tbaa !5
  br label %err

do.cond33:                                        ; No predecessors!
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end24
  %17 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %cmsg_type, align 4, !tbaa !5
  %cmp36 = icmp ne i32 %18, 1
  br i1 %cmp36, label %if.then37, label %if.end46

if.then37:                                        ; preds = %if.end35
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  %19 = load ptr, ptr @stderr, align 8, !tbaa !23
  %20 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_type39 = getelementptr inbounds %struct.cmsghdr, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %cmsg_type39, align 4, !tbaa !5
  %call40 = call ptr @__errno_location() #13
  %22 = load i32, ptr %call40, align 4, !tbaa !5
  %call41 = call ptr @strerror(i32 noundef %22) #14
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.4, i32 noundef %21, ptr noundef %call41) #11
  %call43 = call ptr @__errno_location() #13
  store i32 70, ptr %call43, align 4, !tbaa !5
  br label %err

do.cond44:                                        ; No predecessors!
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %if.end35
  %23 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_len = getelementptr inbounds %struct.cmsghdr, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %cmsg_len, align 8, !tbaa !24
  %cmp47 = icmp ne i64 %24, 20
  br i1 %cmp47, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.end46
  br label %do.body49

do.body49:                                        ; preds = %if.then48
  %25 = load ptr, ptr @stderr, align 8, !tbaa !23
  %26 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %cmsg_len50 = getelementptr inbounds %struct.cmsghdr, ptr %26, i32 0, i32 0
  %27 = load i64, ptr %cmsg_len50, align 8, !tbaa !24
  %call51 = call ptr @__errno_location() #13
  %28 = load i32, ptr %call51, align 4, !tbaa !5
  %call52 = call ptr @strerror(i32 noundef %28) #14
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.5, i64 noundef %27, ptr noundef %call52) #11
  %call54 = call ptr @__errno_location() #13
  store i32 70, ptr %call54, align 4, !tbaa !5
  br label %err

do.cond55:                                        ; No predecessors!
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end46
  %29 = load ptr, ptr %cmsg, align 8, !tbaa !23
  %__cmsg_data = getelementptr inbounds %struct.cmsghdr, ptr %29, i32 0, i32 3
  %arraydecay58 = getelementptr inbounds [0 x i8], ptr %__cmsg_data, i64 0, i64 0
  store ptr %arraydecay58, ptr %fdptr, align 8, !tbaa !23
  %30 = load ptr, ptr %fdptr, align 8, !tbaa !23
  %tobool59 = icmp ne ptr %30, null
  br i1 %tobool59, label %lor.lhs.false, label %if.then61

lor.lhs.false:                                    ; preds = %if.end57
  %31 = load ptr, ptr %fdptr, align 8, !tbaa !23
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %32, 0
  br i1 %cmp60, label %if.then61, label %if.end69

if.then61:                                        ; preds = %lor.lhs.false, %if.end57
  br label %do.body62

do.body62:                                        ; preds = %if.then61
  %33 = load ptr, ptr @stderr, align 8, !tbaa !23
  %call63 = call ptr @__errno_location() #13
  %34 = load i32, ptr %call63, align 4, !tbaa !5
  %call64 = call ptr @strerror(i32 noundef %34) #14
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str, ptr noundef @.str.6, ptr noundef %call64) #11
  %call66 = call ptr @__errno_location() #13
  store i32 70, ptr %call66, align 4, !tbaa !5
  br label %err

do.cond67:                                        ; No predecessors!
  br label %do.end68

do.end68:                                         ; preds = %do.cond67
  br label %if.end69

if.end69:                                         ; preds = %do.end68, %lor.lhs.false
  %35 = load ptr, ptr %fdptr, align 8, !tbaa !23
  %36 = load i32, ptr %35, align 4, !tbaa !5
  %fd = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 1
  store i32 %36, ptr %fd, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %file, i64 16, i1 false), !tbaa.struct !26
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %do.body62, %do.body49, %do.body38, %do.body27, %do.body17, %if.then10, %do.body
  %call70 = call ptr @__errno_location() #13
  %37 = load i32, ptr %call70, align 4, !tbaa !5
  store i32 %37, ptr %olderrno, align 4, !tbaa !5
  %name71 = getelementptr inbounds %struct.file_t, ptr %file, i32 0, i32 0
  %38 = load ptr, ptr %name71, align 8, !tbaa !9
  call void @free(ptr noundef %38) #14
  %39 = load i32, ptr %olderrno, align 4, !tbaa !5
  %call72 = call ptr @__errno_location() #13
  store i32 %39, ptr %call72, align 4, !tbaa !5
  %name73 = getelementptr inbounds %struct.file_t, ptr %retval, i32 0, i32 0
  store ptr null, ptr %name73, align 8, !tbaa !9
  %fd74 = getelementptr inbounds %struct.file_t, ptr %retval, i32 0, i32 1
  store i32 0, ptr %fd74, align 8, !tbaa !25
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end69
  call void @llvm.lifetime.end.p0(i64 24, ptr %u) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %olderrno) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fdptr) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %file) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmsg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %iov) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr %msg) #9
  %40 = load { ptr, i32 }, ptr %retval, align 8
  ret { ptr, i32 } %40
}

; Function Attrs: nounwind optsize allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: optsize
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) #7

; Function Attrs: nounwind optsize willreturn memory(none)
declare ptr @__errno_location() #8

; Function Attrs: optsize
declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind optsize
declare void @free(ptr noundef) #7

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { nounwind optsize willreturn memory(none) }
attributes #14 = { nounwind optsize }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"file_t", !11, i64 0, !6, i64 8}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"iovec", !11, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!17, !11, i64 0}
!17 = !{!"msghdr", !11, i64 0, !6, i64 8, !11, i64 16, !14, i64 24, !11, i64 32, !14, i64 40, !6, i64 48}
!18 = !{!17, !6, i64 8}
!19 = !{!17, !11, i64 16}
!20 = !{!17, !14, i64 24}
!21 = !{!17, !11, i64 32}
!22 = !{!17, !14, i64 40}
!23 = !{!11, !11, i64 0}
!24 = !{!14, !14, i64 0}
!25 = !{!10, !6, i64 8}
!26 = !{i64 0, i64 8, !23, i64 8, i64 4, !5}

; ModuleID = 'samples/264.bc'
source_filename = "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/fdevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.__SOCKADDR_ARG = type { ptr }
%struct.tcp_info = type { i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@use_sock_nonblock = internal global i32 0, align 4, !dbg !0
@use_sock_cloexec = internal global i32 0, align 4, !dbg !161
@.str = private unnamed_addr constant [153 x i8] c"/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/fdevent.c\00", align 1, !dbg !107
@.str.1 = private unnamed_addr constant [22 x i8] c"-1 != fcntl(fd, 2, 1)\00", align 1, !dbg !114
@.str.2 = private unnamed_addr constant [22 x i8] c"-1 != fcntl(fd, 2, 0)\00", align 1, !dbg !119
@.str.3 = private unnamed_addr constant [31 x i8] c"-1 != fcntl(fd, 4, 04000 | 02)\00", align 1, !dbg !121
@.str.4 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !126
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !131
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !136
@environ = external global ptr, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1, !dbg !138
@.str.8 = private unnamed_addr constant [3 x i8] c"-c\00", align 1, !dbg !143
@.str.9 = private unnamed_addr constant [8 x i8] c"%s() %s\00", align 1, !dbg !148
@__func__.fdevent_load_file = private unnamed_addr constant [18 x i8] c"fdevent_load_file\00", align 1, !dbg !150
@__func__.fdevent_load_file_bytes = private unnamed_addr constant [24 x i8] c"fdevent_load_file_bytes\00", align 1, !dbg !156
@.str.10 = private unnamed_addr constant [10 x i8] c"oldfd > 2\00", align 1, !dbg !163

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @fdevent_socket_nb_cloexec_init() #0 !dbg !172 {
entry:
  %fd = alloca i32, align 4
  %flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !180
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !176, metadata !DIExpression()), !dbg !181
  %call = call i32 @socket(i32 noundef 2, i32 noundef 526337, i32 noundef 0) #13, !dbg !182
  store i32 %call, ptr %fd, align 4, !dbg !181, !tbaa !183
  %0 = load i32, ptr %fd, align 4, !dbg !187, !tbaa !183
  %cmp = icmp sge i32 %0, 0, !dbg !188
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #13, !dbg !190
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !177, metadata !DIExpression()), !dbg !191
  %1 = load i32, ptr %fd, align 4, !dbg !192, !tbaa !183
  %call1 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 3, i32 noundef 0), !dbg !193
  store i32 %call1, ptr %flags, align 4, !dbg !191, !tbaa !183
  %2 = load i32, ptr %flags, align 4, !dbg !194, !tbaa !183
  %cmp2 = icmp ne i32 -1, %2, !dbg !195
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !196

land.rhs:                                         ; preds = %if.then
  %3 = load i32, ptr %flags, align 4, !dbg !197, !tbaa !183
  %and = and i32 %3, 2048, !dbg !198
  %tobool = icmp ne i32 %and, 0, !dbg !196
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %4 = phi i1 [ false, %if.then ], [ %tobool, %land.rhs ], !dbg !199
  %land.ext = zext i1 %4 to i32, !dbg !196
  store i32 %land.ext, ptr @use_sock_nonblock, align 4, !dbg !200, !tbaa !183
  store i32 1, ptr @use_sock_cloexec, align 4, !dbg !201, !tbaa !183
  %5 = load i32, ptr %fd, align 4, !dbg !202, !tbaa !183
  %call3 = call i32 @close(i32 noundef %5), !dbg !203
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #13, !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %land.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !206
  ret void, !dbg !206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !207 i32 @socket(i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !211 i32 @fcntl64(i32 noundef, i32 noundef, ...) #3

declare !dbg !215 i32 @close(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @fdevent_setfd_cloexec(i32 noundef %fd) #4 !dbg !219 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i32, ptr %fd.addr, align 4, !dbg !223, !tbaa !183
  %cmp = icmp slt i32 %0, 0, !dbg !225
  br i1 %cmp, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  br label %do.end, !dbg !227

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !228

do.body:                                          ; preds = %if.end
  %1 = load i32, ptr %fd.addr, align 4, !dbg !229, !tbaa !183
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 2, i32 noundef 1), !dbg !229
  %cmp1 = icmp ne i32 -1, %call, !dbg !229
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !232

if.then2:                                         ; preds = %do.body
  call void @ck_assert_failed(ptr noundef @.str, i32 noundef 61, ptr noundef @.str.1) #14, !dbg !229
  unreachable, !dbg !229

if.end3:                                          ; preds = %do.body
  br label %do.end, !dbg !232

do.end:                                           ; preds = %if.then, %if.end3
  ret void, !dbg !233
}

; Function Attrs: cold noreturn
declare !dbg !234 void @ck_assert_failed(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local void @fdevent_clrfd_cloexec(i32 noundef %fd) #4 !dbg !239 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load i32, ptr %fd.addr, align 4, !dbg !243, !tbaa !183
  %cmp = icmp sge i32 %0, 0, !dbg !245
  br i1 %cmp, label %if.then, label %if.end3, !dbg !246

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !247

do.body:                                          ; preds = %if.then
  %1 = load i32, ptr %fd.addr, align 4, !dbg !248, !tbaa !183
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 2, i32 noundef 0), !dbg !248
  %cmp1 = icmp ne i32 -1, %call, !dbg !248
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !251

if.then2:                                         ; preds = %do.body
  call void @ck_assert_failed(ptr noundef @.str, i32 noundef 69, ptr noundef @.str.2) #14, !dbg !248
  unreachable, !dbg !248

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !251

do.end:                                           ; preds = %if.end
  br label %if.end3, !dbg !251

if.end3:                                          ; preds = %do.end, %entry
  ret void, !dbg !252
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_fcntl_set_nb(i32 noundef %fd) #4 !dbg !253 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i32, ptr %fd.addr, align 4, !dbg !257, !tbaa !183
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 4, i32 noundef 2050), !dbg !258
  ret i32 %call, !dbg !259
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_fcntl_set_nb_cloexec(i32 noundef %fd) #4 !dbg !260 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i32, ptr %fd.addr, align 4, !dbg !264, !tbaa !183
  call void @fdevent_setfd_cloexec(i32 noundef %0), !dbg !265
  %1 = load i32, ptr %fd.addr, align 4, !dbg !266, !tbaa !183
  %call = call i32 @fdevent_fcntl_set_nb(i32 noundef %1), !dbg !267
  ret i32 %call, !dbg !268
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_fcntl_set_nb_cloexec_sock(i32 noundef %fd) #4 !dbg !269 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load i32, ptr @use_sock_cloexec, align 4, !dbg !273, !tbaa !183
  %tobool = icmp ne i32 %0, 0, !dbg !273
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !275

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @use_sock_nonblock, align 4, !dbg !276, !tbaa !183
  %tobool1 = icmp ne i32 %1, 0, !dbg !276
  br i1 %tobool1, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !278
  br label %return, !dbg !278

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %fd.addr, align 4, !dbg !279, !tbaa !183
  %call = call i32 @fdevent_fcntl_set_nb_cloexec(i32 noundef %2), !dbg !280
  store i32 %call, ptr %retval, align 4, !dbg !281
  br label %return, !dbg !281

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !282
  ret i32 %3, !dbg !282
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_socket_cloexec(i32 noundef %domain, i32 noundef %type, i32 noundef %protocol) #4 !dbg !283 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %protocol.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %domain, ptr %domain.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !285, metadata !DIExpression()), !dbg !289
  store i32 %type, ptr %type.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !286, metadata !DIExpression()), !dbg !290
  store i32 %protocol, ptr %protocol.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %protocol.addr, metadata !287, metadata !DIExpression()), !dbg !291
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !292
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !288, metadata !DIExpression()), !dbg !293
  %0 = load i32, ptr @use_sock_cloexec, align 4, !dbg !294, !tbaa !183
  %tobool = icmp ne i32 %0, 0, !dbg !294
  br i1 %tobool, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %domain.addr, align 4, !dbg !297, !tbaa !183
  %2 = load i32, ptr %type.addr, align 4, !dbg !298, !tbaa !183
  %or = or i32 %2, 524288, !dbg !299
  %3 = load i32, ptr %protocol.addr, align 4, !dbg !300, !tbaa !183
  %call = call i32 @socket(i32 noundef %1, i32 noundef %or, i32 noundef %3) #13, !dbg !301
  store i32 %call, ptr %retval, align 4, !dbg !302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !302

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %domain.addr, align 4, !dbg !303, !tbaa !183
  %5 = load i32, ptr %type.addr, align 4, !dbg !305, !tbaa !183
  %6 = load i32, ptr %protocol.addr, align 4, !dbg !306, !tbaa !183
  %call1 = call i32 @socket(i32 noundef %4, i32 noundef %5, i32 noundef %6) #13, !dbg !307
  store i32 %call1, ptr %fd, align 4, !dbg !308, !tbaa !183
  %cmp = icmp ne i32 -1, %call1, !dbg !309
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !310

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !311

do.body:                                          ; preds = %if.then2
  %7 = load i32, ptr %fd, align 4, !dbg !313, !tbaa !183
  %call3 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %7, i32 noundef 2, i32 noundef 1), !dbg !313
  %cmp4 = icmp ne i32 -1, %call3, !dbg !313
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !316

if.then5:                                         ; preds = %do.body
  call void @ck_assert_failed(ptr noundef @.str, i32 noundef 105, ptr noundef @.str.1) #14, !dbg !313
  unreachable, !dbg !313

if.end6:                                          ; preds = %do.body
  br label %do.cond, !dbg !316

do.cond:                                          ; preds = %if.end6
  br label %do.end, !dbg !316

do.end:                                           ; preds = %do.cond
  br label %if.end7, !dbg !317

if.end7:                                          ; preds = %do.end, %if.end
  %8 = load i32, ptr %fd, align 4, !dbg !318, !tbaa !183
  store i32 %8, ptr %retval, align 4, !dbg !319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !319

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !320
  %9 = load i32, ptr %retval, align 4, !dbg !320
  ret i32 %9, !dbg !320
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_socket_nb_cloexec(i32 noundef %domain, i32 noundef %type, i32 noundef %protocol) #4 !dbg !321 {
entry:
  %retval = alloca i32, align 4
  %domain.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %protocol.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %domain, ptr %domain.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !323, metadata !DIExpression()), !dbg !327
  store i32 %type, ptr %type.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !324, metadata !DIExpression()), !dbg !328
  store i32 %protocol, ptr %protocol.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %protocol.addr, metadata !325, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !330
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !326, metadata !DIExpression()), !dbg !331
  %0 = load i32, ptr @use_sock_cloexec, align 4, !dbg !332, !tbaa !183
  %tobool = icmp ne i32 %0, 0, !dbg !332
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !334

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @use_sock_nonblock, align 4, !dbg !335, !tbaa !183
  %tobool1 = icmp ne i32 %1, 0, !dbg !335
  br i1 %tobool1, label %if.then, label %if.end, !dbg !336

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %domain.addr, align 4, !dbg !337, !tbaa !183
  %3 = load i32, ptr %type.addr, align 4, !dbg !338, !tbaa !183
  %or = or i32 %3, 524288, !dbg !339
  %or2 = or i32 %or, 2048, !dbg !340
  %4 = load i32, ptr %protocol.addr, align 4, !dbg !341, !tbaa !183
  %call = call i32 @socket(i32 noundef %2, i32 noundef %or2, i32 noundef %4) #13, !dbg !342
  store i32 %call, ptr %retval, align 4, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %domain.addr, align 4, !dbg !344, !tbaa !183
  %6 = load i32, ptr %type.addr, align 4, !dbg !346, !tbaa !183
  %7 = load i32, ptr %protocol.addr, align 4, !dbg !347, !tbaa !183
  %call3 = call i32 @socket(i32 noundef %5, i32 noundef %6, i32 noundef %7) #13, !dbg !348
  store i32 %call3, ptr %fd, align 4, !dbg !349, !tbaa !183
  %cmp = icmp ne i32 -1, %call3, !dbg !350
  br i1 %cmp, label %if.then4, label %if.end16, !dbg !351

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !352

do.body:                                          ; preds = %if.then4
  %8 = load i32, ptr %fd, align 4, !dbg !354, !tbaa !183
  %call5 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %8, i32 noundef 2, i32 noundef 1), !dbg !354
  %cmp6 = icmp ne i32 -1, %call5, !dbg !354
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !357

if.then7:                                         ; preds = %do.body
  call void @ck_assert_failed(ptr noundef @.str, i32 noundef 129, ptr noundef @.str.1) #14, !dbg !354
  unreachable, !dbg !354

if.end8:                                          ; preds = %do.body
  br label %do.cond, !dbg !357

do.cond:                                          ; preds = %if.end8
  br label %do.end, !dbg !357

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !358

do.body9:                                         ; preds = %do.end
  %9 = load i32, ptr %fd, align 4, !dbg !359, !tbaa !183
  %call10 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %9, i32 noundef 4, i32 noundef 2050), !dbg !359
  %cmp11 = icmp ne i32 -1, %call10, !dbg !359
  br i1 %cmp11, label %if.end13, label %if.then12, !dbg !362

if.then12:                                        ; preds = %do.body9
  call void @ck_assert_failed(ptr noundef @.str, i32 noundef 132, ptr noundef @.str.3) #14, !dbg !359
  unreachable, !dbg !359

if.end13:                                         ; preds = %do.body9
  br label %do.cond14, !dbg !362

do.cond14:                                        ; preds = %if.end13
  br label %do.end15, !dbg !362

do.end15:                                         ; preds = %do.cond14
  br label %if.end16, !dbg !363

if.end16:                                         ; preds = %do.end15, %if.end
  %10 = load i32, ptr %fd, align 4, !dbg !364, !tbaa !183
  store i32 %10, ptr %retval, align 4, !dbg !365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !365

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !366
  %11 = load i32, ptr %retval, align 4, !dbg !366
  ret i32 %11, !dbg !366
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_dup_cloexec(i32 noundef %fd) #4 !dbg !367 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i32, ptr %fd.addr, align 4, !dbg !371, !tbaa !183
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1030, i32 noundef 3), !dbg !372
  ret i32 %call, !dbg !373
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_open_cloexec(ptr noundef %pathname, i32 noundef %symlinks, i32 noundef %flags, i32 noundef %mode) #4 !dbg !374 {
entry:
  %pathname.addr = alloca ptr, align 8
  %symlinks.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !380, metadata !DIExpression()), !dbg !386
  store i32 %symlinks, ptr %symlinks.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %symlinks.addr, metadata !381, metadata !DIExpression()), !dbg !387
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !382, metadata !DIExpression()), !dbg !388
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !383, metadata !DIExpression()), !dbg !389
  %0 = load i32, ptr %symlinks.addr, align 4, !dbg !390, !tbaa !183
  %tobool = icmp ne i32 %0, 0, !dbg !390
  br i1 %tobool, label %if.end, label %if.then, !dbg !392

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !393, !tbaa !183
  %or = or i32 %1, 131072, !dbg !393
  store i32 %or, ptr %flags.addr, align 4, !dbg !393, !tbaa !183
  br label %if.end, !dbg !394

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pathname.addr, align 8, !dbg !395, !tbaa !384
  %3 = load i32, ptr %flags.addr, align 4, !dbg !396, !tbaa !183
  %or1 = or i32 %3, 524288, !dbg !397
  %or2 = or i32 %or1, 2304, !dbg !398
  %4 = load i32, ptr %mode.addr, align 4, !dbg !399, !tbaa !183
  %call = call i32 (ptr, i32, ...) @open64(ptr noundef %2, i32 noundef %or2, i32 noundef %4), !dbg !400
  ret i32 %call, !dbg !401
}

declare !dbg !402 i32 @open64(ptr noundef, i32 noundef, ...) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_open_devnull() #4 !dbg !405 {
entry:
  %call = call i32 @fdevent_open_cloexec(ptr noundef @.str.4, i32 noundef 0, i32 noundef 2, i32 noundef 0), !dbg !408
  ret i32 %call, !dbg !409
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_open_dirname(ptr noundef %path, i32 noundef %symlinks) #4 !dbg !410 {
entry:
  %path.addr = alloca ptr, align 8
  %symlinks.addr = alloca i32, align 4
  %c = alloca ptr, align 8
  %dname = alloca ptr, align 8
  %dfd = alloca i32, align 4
  %flags = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !415, metadata !DIExpression()), !dbg !423
  store i32 %symlinks, ptr %symlinks.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %symlinks.addr, metadata !416, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #13, !dbg !425
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !417, metadata !DIExpression()), !dbg !426
  %0 = load ptr, ptr %path.addr, align 8, !dbg !427, !tbaa !384
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef 47) #15, !dbg !428
  store ptr %call, ptr %c, align 8, !dbg !426, !tbaa !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %dname) #13, !dbg !429
  tail call void @llvm.dbg.declare(metadata ptr %dname, metadata !419, metadata !DIExpression()), !dbg !430
  %1 = load ptr, ptr %c, align 8, !dbg !431, !tbaa !384
  %cmp = icmp ne ptr null, %1, !dbg !432
  br i1 %cmp, label %cond.true, label %cond.false3, !dbg !433

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %c, align 8, !dbg !434, !tbaa !384
  %3 = load ptr, ptr %path.addr, align 8, !dbg !435, !tbaa !384
  %cmp1 = icmp eq ptr %2, %3, !dbg !436
  br i1 %cmp1, label %cond.true2, label %cond.false, !dbg !434

cond.true2:                                       ; preds = %cond.true
  br label %cond.end, !dbg !434

cond.false:                                       ; preds = %cond.true
  %4 = load ptr, ptr %path.addr, align 8, !dbg !437, !tbaa !384
  br label %cond.end, !dbg !434

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi ptr [ @.str.5, %cond.true2 ], [ %4, %cond.false ], !dbg !434
  br label %cond.end4, !dbg !433

cond.false3:                                      ; preds = %entry
  br label %cond.end4, !dbg !433

cond.end4:                                        ; preds = %cond.false3, %cond.end
  %cond5 = phi ptr [ %cond, %cond.end ], [ @.str.6, %cond.false3 ], !dbg !433
  store ptr %cond5, ptr %dname, align 8, !dbg !430, !tbaa !384
  call void @llvm.lifetime.start.p0(i64 4, ptr %dfd) #13, !dbg !438
  tail call void @llvm.dbg.declare(metadata ptr %dfd, metadata !421, metadata !DIExpression()), !dbg !439
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #13, !dbg !440
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !422, metadata !DIExpression()), !dbg !441
  store i32 0, ptr %flags, align 4, !dbg !441, !tbaa !183
  %5 = load i32, ptr %flags, align 4, !dbg !442, !tbaa !183
  %or = or i32 %5, 65536, !dbg !442
  store i32 %or, ptr %flags, align 4, !dbg !442, !tbaa !183
  %6 = load ptr, ptr %c, align 8, !dbg !443, !tbaa !384
  %cmp6 = icmp ne ptr null, %6, !dbg !445
  br i1 %cmp6, label %if.then, label %if.end, !dbg !446

if.then:                                          ; preds = %cond.end4
  %7 = load ptr, ptr %c, align 8, !dbg !447, !tbaa !384
  store i8 0, ptr %7, align 1, !dbg !448, !tbaa !449
  br label %if.end, !dbg !450

if.end:                                           ; preds = %if.then, %cond.end4
  %8 = load ptr, ptr %dname, align 8, !dbg !451, !tbaa !384
  %9 = load i32, ptr %symlinks.addr, align 4, !dbg !452, !tbaa !183
  %10 = load i32, ptr %flags, align 4, !dbg !453, !tbaa !183
  %call7 = call i32 @fdevent_open_cloexec(ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef 0), !dbg !454
  store i32 %call7, ptr %dfd, align 4, !dbg !455, !tbaa !183
  %11 = load ptr, ptr %c, align 8, !dbg !456, !tbaa !384
  %cmp8 = icmp ne ptr null, %11, !dbg !458
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !459

if.then9:                                         ; preds = %if.end
  %12 = load ptr, ptr %c, align 8, !dbg !460, !tbaa !384
  store i8 47, ptr %12, align 1, !dbg !461, !tbaa !449
  br label %if.end10, !dbg !462

if.end10:                                         ; preds = %if.then9, %if.end
  %13 = load i32, ptr %dfd, align 4, !dbg !463, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #13, !dbg !464
  call void @llvm.lifetime.end.p0(i64 4, ptr %dfd) #13, !dbg !464
  call void @llvm.lifetime.end.p0(i64 8, ptr %dname) #13, !dbg !464
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #13, !dbg !464
  ret i32 %13, !dbg !465
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !466 ptr @strrchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_pipe_cloexec(ptr noundef %fds, i32 noundef %bufsz_hint) #4 !dbg !470 {
entry:
  %retval = alloca i32, align 4
  %fds.addr = alloca ptr, align 8
  %bufsz_hint.addr = alloca i32, align 4
  store ptr %fds, ptr %fds.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %fds.addr, metadata !477, metadata !DIExpression()), !dbg !479
  store i32 %bufsz_hint, ptr %bufsz_hint.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %bufsz_hint.addr, metadata !478, metadata !DIExpression()), !dbg !480
  %0 = load ptr, ptr %fds.addr, align 8, !dbg !481, !tbaa !384
  %call = call i32 @pipe2(ptr noundef %0, i32 noundef 524288) #13, !dbg !483
  %cmp = icmp ne i32 0, %call, !dbg !484
  br i1 %cmp, label %if.then, label %if.end10, !dbg !485

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fds.addr, align 8, !dbg !486, !tbaa !384
  %call1 = call i32 @pipe(ptr noundef %1) #13, !dbg !489
  %cmp2 = icmp ne i32 0, %call1, !dbg !490
  br i1 %cmp2, label %if.then9, label %lor.lhs.false, !dbg !491

lor.lhs.false:                                    ; preds = %if.then
  %2 = load ptr, ptr %fds.addr, align 8, !dbg !492, !tbaa !384
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0, !dbg !492
  %3 = load i32, ptr %arrayidx, align 4, !dbg !492, !tbaa !183
  %call3 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %3, i32 noundef 2, i32 noundef 1), !dbg !493
  %cmp4 = icmp ne i32 0, %call3, !dbg !494
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5, !dbg !495

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %fds.addr, align 8, !dbg !496, !tbaa !384
  %arrayidx6 = getelementptr inbounds i32, ptr %4, i64 1, !dbg !496
  %5 = load i32, ptr %arrayidx6, align 4, !dbg !496, !tbaa !183
  %call7 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %5, i32 noundef 2, i32 noundef 1), !dbg !497
  %cmp8 = icmp ne i32 0, %call7, !dbg !498
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !499

if.then9:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  store i32 -1, ptr %retval, align 4, !dbg !500
  br label %return, !dbg !500

if.end:                                           ; preds = %lor.lhs.false5
  br label %if.end10, !dbg !501

if.end10:                                         ; preds = %if.end, %entry
  %6 = load i32, ptr %bufsz_hint.addr, align 4, !dbg !502, !tbaa !183
  %cmp11 = icmp ugt i32 %6, 65536, !dbg !504
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !505

if.then12:                                        ; preds = %if.end10
  %7 = load ptr, ptr %fds.addr, align 8, !dbg !506, !tbaa !384
  %arrayidx13 = getelementptr inbounds i32, ptr %7, i64 1, !dbg !506
  %8 = load i32, ptr %arrayidx13, align 4, !dbg !506, !tbaa !183
  %9 = load i32, ptr %bufsz_hint.addr, align 4, !dbg !508, !tbaa !183
  %call14 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %8, i32 noundef 1031, i32 noundef %9), !dbg !509
  %cmp15 = icmp ne i32 0, %call14, !dbg !510
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !511

if.then16:                                        ; preds = %if.then12
  br label %if.end17, !dbg !512

if.end17:                                         ; preds = %if.then16, %if.then12
  br label %if.end18, !dbg !514

if.end18:                                         ; preds = %if.end17, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !515
  br label %return, !dbg !515

return:                                           ; preds = %if.end18, %if.then9
  %10 = load i32, ptr %retval, align 4, !dbg !516
  ret i32 %10, !dbg !516
}

; Function Attrs: nounwind
declare !dbg !517 i32 @pipe2(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !520 i32 @pipe(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_mkostemp(ptr noundef %path, i32 noundef %flags) #4 !dbg !523 {
entry:
  %path.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !525, metadata !DIExpression()), !dbg !527
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !526, metadata !DIExpression()), !dbg !528
  %0 = load ptr, ptr %path.addr, align 8, !dbg !529, !tbaa !384
  %1 = load i32, ptr %flags.addr, align 4, !dbg !530, !tbaa !183
  %or = or i32 524288, %1, !dbg !531
  %call = call i32 @mkostemp64(ptr noundef %0, i32 noundef %or), !dbg !532
  ret i32 %call, !dbg !533
}

declare !dbg !534 i32 @mkostemp64(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_accept_listenfd(i32 noundef %listenfd, ptr noundef %addr, ptr noundef %addrlen) #4 !dbg !536 {
entry:
  %listenfd.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %addrlen.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %len = alloca i32, align 4
  %sock_cloexec = alloca i32, align 4
  %agg.tmp = alloca %union.__SOCKADDR_ARG, align 8
  %agg.tmp12 = alloca %union.__SOCKADDR_ARG, align 8
  %agg.tmp17 = alloca %union.__SOCKADDR_ARG, align 8
  store i32 %listenfd, ptr %listenfd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %listenfd.addr, metadata !552, metadata !DIExpression()), !dbg !558
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !553, metadata !DIExpression()), !dbg !559
  store ptr %addrlen, ptr %addrlen.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %addrlen.addr, metadata !554, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !561
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !555, metadata !DIExpression()), !dbg !562
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !563
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !556, metadata !DIExpression()), !dbg !564
  %0 = load ptr, ptr %addrlen.addr, align 8, !dbg !565, !tbaa !384
  %1 = load i64, ptr %0, align 8, !dbg !566, !tbaa !567
  %conv = trunc i64 %1 to i32, !dbg !569
  store i32 %conv, ptr %len, align 4, !dbg !564, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %sock_cloexec) #13, !dbg !570
  tail call void @llvm.dbg.declare(metadata ptr %sock_cloexec, metadata !557, metadata !DIExpression()), !dbg !571
  %2 = load i32, ptr @use_sock_cloexec, align 4, !dbg !572, !tbaa !183
  store i32 %2, ptr %sock_cloexec, align 4, !dbg !571, !tbaa !183
  %3 = load i32, ptr %sock_cloexec, align 4, !dbg !573, !tbaa !183
  %tobool = icmp ne i32 %3, 0, !dbg !573
  br i1 %tobool, label %if.then, label %if.else16, !dbg !575

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %listenfd.addr, align 4, !dbg !576, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp) #13, !dbg !578
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !579, !tbaa !384
  store ptr %5, ptr %agg.tmp, align 8, !dbg !579, !tbaa !449
  %coerce.dive = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %agg.tmp, i32 0, i32 0, !dbg !578
  %6 = load ptr, ptr %coerce.dive, align 8, !dbg !578
  %call = call i32 @accept4(i32 noundef %4, ptr %6, ptr noundef %len, i32 noundef 526336), !dbg !578
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp) #13, !dbg !578
  store i32 %call, ptr %fd, align 4, !dbg !580, !tbaa !183
  %7 = load i32, ptr %fd, align 4, !dbg !581, !tbaa !183
  %cmp = icmp sge i32 %7, 0, !dbg !583
  br i1 %cmp, label %if.then2, label %if.else, !dbg !584

if.then2:                                         ; preds = %if.then
  %8 = load i32, ptr @use_sock_nonblock, align 4, !dbg !585, !tbaa !183
  %tobool3 = icmp ne i32 %8, 0, !dbg !585
  br i1 %tobool3, label %if.end10, label %if.then4, !dbg !588

if.then4:                                         ; preds = %if.then2
  %9 = load i32, ptr %fd, align 4, !dbg !589, !tbaa !183
  %call5 = call i32 @fdevent_fcntl_set_nb(i32 noundef %9), !dbg !592
  %cmp6 = icmp ne i32 0, %call5, !dbg !593
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !594

if.then8:                                         ; preds = %if.then4
  %10 = load i32, ptr %fd, align 4, !dbg !595, !tbaa !183
  %call9 = call i32 @close(i32 noundef %10), !dbg !597
  store i32 -1, ptr %fd, align 4, !dbg !598, !tbaa !183
  br label %if.end, !dbg !599

if.end:                                           ; preds = %if.then8, %if.then4
  br label %if.end10, !dbg !600

if.end10:                                         ; preds = %if.end, %if.then2
  br label %if.end15, !dbg !601

if.else:                                          ; preds = %if.then
  %call11 = call ptr @__errno_location() #16, !dbg !602
  %11 = load i32, ptr %call11, align 4, !dbg !602, !tbaa !183
  switch i32 %11, label %sw.default [
    i32 38, label %sw.bb
    i32 95, label %sw.bb
    i32 1, label %sw.bb
  ], !dbg !604

sw.bb:                                            ; preds = %if.else, %if.else, %if.else
  %12 = load i32, ptr %listenfd.addr, align 4, !dbg !605, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp12) #13, !dbg !607
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !608, !tbaa !384
  store ptr %13, ptr %agg.tmp12, align 8, !dbg !608, !tbaa !449
  %coerce.dive13 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %agg.tmp12, i32 0, i32 0, !dbg !607
  %14 = load ptr, ptr %coerce.dive13, align 8, !dbg !607
  %call14 = call i32 @accept(i32 noundef %12, ptr %14, ptr noundef %len), !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp12) #13, !dbg !607
  store i32 %call14, ptr %fd, align 4, !dbg !609, !tbaa !183
  store i32 0, ptr %sock_cloexec, align 4, !dbg !610, !tbaa !183
  br label %sw.epilog, !dbg !611

sw.default:                                       ; preds = %if.else
  br label %sw.epilog, !dbg !612

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end15

if.end15:                                         ; preds = %sw.epilog, %if.end10
  br label %if.end20, !dbg !613

if.else16:                                        ; preds = %entry
  %15 = load i32, ptr %listenfd.addr, align 4, !dbg !614, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %agg.tmp17) #13, !dbg !616
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !617, !tbaa !384
  store ptr %16, ptr %agg.tmp17, align 8, !dbg !617, !tbaa !449
  %coerce.dive18 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %agg.tmp17, i32 0, i32 0, !dbg !616
  %17 = load ptr, ptr %coerce.dive18, align 8, !dbg !616
  %call19 = call i32 @accept(i32 noundef %15, ptr %17, ptr noundef %len), !dbg !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %agg.tmp17) #13, !dbg !616
  store i32 %call19, ptr %fd, align 4, !dbg !618, !tbaa !183
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.end15
  %18 = load i32, ptr %fd, align 4, !dbg !619, !tbaa !183
  %cmp21 = icmp sge i32 %18, 0, !dbg !621
  br i1 %cmp21, label %if.then23, label %if.end32, !dbg !622

if.then23:                                        ; preds = %if.end20
  %19 = load i32, ptr %len, align 4, !dbg !623, !tbaa !183
  %conv24 = zext i32 %19 to i64, !dbg !625
  %20 = load ptr, ptr %addrlen.addr, align 8, !dbg !626, !tbaa !384
  store i64 %conv24, ptr %20, align 8, !dbg !627, !tbaa !567
  %21 = load i32, ptr %sock_cloexec, align 4, !dbg !628, !tbaa !183
  %tobool25 = icmp ne i32 %21, 0, !dbg !628
  br i1 %tobool25, label %if.end31, label %land.lhs.true, !dbg !630

land.lhs.true:                                    ; preds = %if.then23
  %22 = load i32, ptr %fd, align 4, !dbg !631, !tbaa !183
  %call26 = call i32 @fdevent_fcntl_set_nb_cloexec(i32 noundef %22), !dbg !632
  %cmp27 = icmp ne i32 0, %call26, !dbg !633
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !634

if.then29:                                        ; preds = %land.lhs.true
  %23 = load i32, ptr %fd, align 4, !dbg !635, !tbaa !183
  %call30 = call i32 @close(i32 noundef %23), !dbg !637
  store i32 -1, ptr %fd, align 4, !dbg !638, !tbaa !183
  br label %if.end31, !dbg !639

if.end31:                                         ; preds = %if.then29, %land.lhs.true, %if.then23
  br label %if.end32, !dbg !640

if.end32:                                         ; preds = %if.end31, %if.end20
  %24 = load i32, ptr %fd, align 4, !dbg !641, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 4, ptr %sock_cloexec) #13, !dbg !642
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !642
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !642
  ret i32 %24, !dbg !643
}

declare !dbg !644 i32 @accept4(i32 noundef, ptr, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !749 ptr @__errno_location() #7

declare !dbg !753 i32 @accept(i32 noundef, ptr, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read) uwtable
define dso_local ptr @fdevent_environ() #8 !dbg !756 {
entry:
  %0 = load ptr, ptr @environ, align 8, !dbg !760, !tbaa !384
  ret ptr %0, !dbg !761
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_set_stdin_stdout_stderr(i32 noundef %fdin, i32 noundef %fdout, i32 noundef %fderr) #4 !dbg !762 {
entry:
  %retval = alloca i32, align 4
  %fdin.addr = alloca i32, align 4
  %fdout.addr = alloca i32, align 4
  %fderr.addr = alloca i32, align 4
  store i32 %fdin, ptr %fdin.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fdin.addr, metadata !764, metadata !DIExpression()), !dbg !767
  store i32 %fdout, ptr %fdout.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fdout.addr, metadata !765, metadata !DIExpression()), !dbg !768
  store i32 %fderr, ptr %fderr.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fderr.addr, metadata !766, metadata !DIExpression()), !dbg !769
  %0 = load i32, ptr %fdin.addr, align 4, !dbg !770, !tbaa !183
  %call = call i32 @fdevent_dup2_close_clrfd_cloexec(i32 noundef %0, i32 noundef 0), !dbg !772
  %cmp = icmp ne i32 0, %call, !dbg !773
  br i1 %cmp, label %if.then, label %if.end, !dbg !774

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !775
  br label %return, !dbg !775

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %fdout.addr, align 4, !dbg !776, !tbaa !183
  %call1 = call i32 @fdevent_dup2_close_clrfd_cloexec(i32 noundef %1, i32 noundef 1), !dbg !778
  %cmp2 = icmp ne i32 1, %call1, !dbg !779
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !780

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !781
  br label %return, !dbg !781

if.end4:                                          ; preds = %if.end
  %2 = load i32, ptr %fderr.addr, align 4, !dbg !782, !tbaa !183
  %call5 = call i32 @fdevent_dup2_close_clrfd_cloexec(i32 noundef %2, i32 noundef 2), !dbg !784
  %cmp6 = icmp ne i32 2, %call5, !dbg !785
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !786

if.then7:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4, !dbg !787
  br label %return, !dbg !787

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !788
  br label %return, !dbg !788

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !789
  ret i32 %3, !dbg !789
}

; Function Attrs: nounwind uwtable
define internal i32 @fdevent_dup2_close_clrfd_cloexec(i32 noundef %oldfd, i32 noundef %newfd) #4 !dbg !790 {
entry:
  %retval = alloca i32, align 4
  %oldfd.addr = alloca i32, align 4
  %newfd.addr = alloca i32, align 4
  store i32 %oldfd, ptr %oldfd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %oldfd.addr, metadata !794, metadata !DIExpression()), !dbg !796
  store i32 %newfd, ptr %newfd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %newfd.addr, metadata !795, metadata !DIExpression()), !dbg !797
  %0 = load i32, ptr %oldfd.addr, align 4, !dbg !798, !tbaa !183
  %cmp = icmp sge i32 %0, 0, !dbg !800
  br i1 %cmp, label %if.then, label %if.end9, !dbg !801

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %oldfd.addr, align 4, !dbg !802, !tbaa !183
  %2 = load i32, ptr %newfd.addr, align 4, !dbg !805, !tbaa !183
  %cmp1 = icmp ne i32 %1, %2, !dbg !806
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !807

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !808

do.body:                                          ; preds = %if.then2
  %3 = load i32, ptr %oldfd.addr, align 4, !dbg !810, !tbaa !183
  %cmp3 = icmp sgt i32 %3, 2, !dbg !810
  br i1 %cmp3, label %if.end, label %if.then4, !dbg !813

if.then4:                                         ; preds = %do.body
  call void @ck_assert_failed(ptr noundef @.str, i32 noundef 363, ptr noundef @.str.10) #14, !dbg !810
  unreachable, !dbg !810

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !813

do.end:                                           ; preds = %if.end
  %4 = load i32, ptr %newfd.addr, align 4, !dbg !814, !tbaa !183
  %5 = load i32, ptr %oldfd.addr, align 4, !dbg !816, !tbaa !183
  %6 = load i32, ptr %newfd.addr, align 4, !dbg !817, !tbaa !183
  %call = call i32 @dup2(i32 noundef %5, i32 noundef %6) #13, !dbg !818
  %cmp5 = icmp ne i32 %4, %call, !dbg !819
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !820

if.then6:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4, !dbg !821
  br label %return, !dbg !821

if.end7:                                          ; preds = %do.end
  br label %if.end8, !dbg !822

if.else:                                          ; preds = %if.then
  %7 = load i32, ptr %newfd.addr, align 4, !dbg !823, !tbaa !183
  call void @fdevent_clrfd_cloexec(i32 noundef %7), !dbg !825
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end7
  br label %if.end9, !dbg !826

if.end9:                                          ; preds = %if.end8, %entry
  %8 = load i32, ptr %newfd.addr, align 4, !dbg !827, !tbaa !183
  store i32 %8, ptr %retval, align 4, !dbg !828
  br label %return, !dbg !828

return:                                           ; preds = %if.end9, %if.then6
  %9 = load i32, ptr %retval, align 4, !dbg !829
  ret i32 %9, !dbg !829
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_rename(ptr noundef %oldpath, ptr noundef %newpath) #4 !dbg !830 {
entry:
  %oldpath.addr = alloca ptr, align 8
  %newpath.addr = alloca ptr, align 8
  store ptr %oldpath, ptr %oldpath.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %oldpath.addr, metadata !834, metadata !DIExpression()), !dbg !836
  store ptr %newpath, ptr %newpath.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %newpath.addr, metadata !835, metadata !DIExpression()), !dbg !837
  %0 = load ptr, ptr %oldpath.addr, align 8, !dbg !838, !tbaa !384
  %1 = load ptr, ptr %newpath.addr, align 8, !dbg !839, !tbaa !384
  %call = call i32 @rename(ptr noundef %0, ptr noundef %1) #13, !dbg !840
  ret i32 %call, !dbg !841
}

; Function Attrs: nounwind
declare !dbg !842 i32 @rename(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_fork_execve(ptr noundef %name, ptr noundef %argv, ptr noundef %envp, i32 noundef %fdin, i32 noundef %fdout, i32 noundef %fderr, i32 noundef %dfd) #4 !dbg !844 {
entry:
  %name.addr = alloca ptr, align 8
  %argv.addr = alloca ptr, align 8
  %envp.addr = alloca ptr, align 8
  %fdin.addr = alloca i32, align 4
  %fdout.addr = alloca i32, align 4
  %fderr.addr = alloca i32, align 4
  %dfd.addr = alloca i32, align 4
  %pid = alloca i32, align 4
  %errnum = alloca i32, align 4
  %argnum = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !850, metadata !DIExpression()), !dbg !860
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !851, metadata !DIExpression()), !dbg !861
  store ptr %envp, ptr %envp.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %envp.addr, metadata !852, metadata !DIExpression()), !dbg !862
  store i32 %fdin, ptr %fdin.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fdin.addr, metadata !853, metadata !DIExpression()), !dbg !863
  store i32 %fdout, ptr %fdout.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fdout.addr, metadata !854, metadata !DIExpression()), !dbg !864
  store i32 %fderr, ptr %fderr.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fderr.addr, metadata !855, metadata !DIExpression()), !dbg !865
  store i32 %dfd, ptr %dfd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %dfd.addr, metadata !856, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #13, !dbg !867
  tail call void @llvm.dbg.declare(metadata ptr %pid, metadata !857, metadata !DIExpression()), !dbg !868
  %call = call i32 @fork() #13, !dbg !869
  store i32 %call, ptr %pid, align 4, !dbg !868, !tbaa !183
  %0 = load i32, ptr %pid, align 4, !dbg !870, !tbaa !183
  %cmp = icmp ne i32 0, %0, !dbg !872
  br i1 %cmp, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %pid, align 4, !dbg !874, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #13, !dbg !875
  ret i32 %1, !dbg !876

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %dfd.addr, align 4, !dbg !877, !tbaa !183
  %cmp1 = icmp ne i32 -1, %2, !dbg !879
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !880

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %dfd.addr, align 4, !dbg !881, !tbaa !183
  %call3 = call i32 @fchdir(i32 noundef %3) #13, !dbg !884
  %cmp4 = icmp ne i32 0, %call3, !dbg !885
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !886

if.then5:                                         ; preds = %if.then2
  %call6 = call ptr @__errno_location() #16, !dbg !887
  %4 = load i32, ptr %call6, align 4, !dbg !887, !tbaa !183
  call void @_exit(i32 noundef %4) #17, !dbg !888
  unreachable, !dbg !888

if.end7:                                          ; preds = %if.then2
  %5 = load i32, ptr %dfd.addr, align 4, !dbg !889, !tbaa !183
  %call8 = call i32 @close(i32 noundef %5), !dbg !890
  br label %if.end9, !dbg !891

if.end9:                                          ; preds = %if.end7, %if.end
  %6 = load i32, ptr %fdin.addr, align 4, !dbg !892, !tbaa !183
  %7 = load i32, ptr %fdout.addr, align 4, !dbg !894, !tbaa !183
  %8 = load i32, ptr %fderr.addr, align 4, !dbg !895, !tbaa !183
  %call10 = call i32 @fdevent_set_stdin_stdout_stderr(i32 noundef %6, i32 noundef %7, i32 noundef %8), !dbg !896
  %cmp11 = icmp ne i32 0, %call10, !dbg !897
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !898

if.then12:                                        ; preds = %if.end9
  %call13 = call ptr @__errno_location() #16, !dbg !899
  %9 = load i32, ptr %call13, align 4, !dbg !899, !tbaa !183
  call void @_exit(i32 noundef %9) #17, !dbg !900
  unreachable, !dbg !900

if.end14:                                         ; preds = %if.end9
  %call15 = call ptr @signal(i32 noundef 22, ptr noundef null) #13, !dbg !901
  %call16 = call ptr @signal(i32 noundef 21, ptr noundef null) #13, !dbg !902
  %call17 = call ptr @signal(i32 noundef 20, ptr noundef null) #13, !dbg !903
  %call18 = call ptr @signal(i32 noundef 13, ptr noundef null) #13, !dbg !904
  %call19 = call ptr @signal(i32 noundef 10, ptr noundef null) #13, !dbg !905
  %10 = load ptr, ptr %name.addr, align 8, !dbg !906, !tbaa !384
  %11 = load ptr, ptr %argv.addr, align 8, !dbg !907, !tbaa !384
  %12 = load ptr, ptr %envp.addr, align 8, !dbg !908, !tbaa !384
  %tobool = icmp ne ptr %12, null, !dbg !908
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !908

cond.true:                                        ; preds = %if.end14
  %13 = load ptr, ptr %envp.addr, align 8, !dbg !909, !tbaa !384
  br label %cond.end, !dbg !908

cond.false:                                       ; preds = %if.end14
  %14 = load ptr, ptr @environ, align 8, !dbg !910, !tbaa !384
  br label %cond.end, !dbg !908

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %13, %cond.true ], [ %14, %cond.false ], !dbg !908
  %call20 = call i32 @execve(ptr noundef %10, ptr noundef %11, ptr noundef %cond) #13, !dbg !911
  call void @llvm.lifetime.start.p0(i64 4, ptr %errnum) #13, !dbg !912
  tail call void @llvm.dbg.declare(metadata ptr %errnum, metadata !858, metadata !DIExpression()), !dbg !913
  %call21 = call ptr @__errno_location() #16, !dbg !914
  %15 = load i32, ptr %call21, align 4, !dbg !914, !tbaa !183
  store i32 %15, ptr %errnum, align 4, !dbg !913, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %argnum) #13, !dbg !915
  tail call void @llvm.dbg.declare(metadata ptr %argnum, metadata !859, metadata !DIExpression()), !dbg !916
  %16 = load ptr, ptr %argv.addr, align 8, !dbg !917, !tbaa !384
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 0, !dbg !917
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !917, !tbaa !384
  %call22 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.7) #15, !dbg !918
  %cmp23 = icmp eq i32 0, %call22, !dbg !919
  br i1 %cmp23, label %land.lhs.true, label %land.end, !dbg !920

land.lhs.true:                                    ; preds = %cond.end
  %18 = load ptr, ptr %argv.addr, align 8, !dbg !921, !tbaa !384
  %arrayidx24 = getelementptr inbounds ptr, ptr %18, i64 1, !dbg !921
  %19 = load ptr, ptr %arrayidx24, align 8, !dbg !921, !tbaa !384
  %tobool25 = icmp ne ptr %19, null, !dbg !921
  br i1 %tobool25, label %land.rhs, label %land.end, !dbg !922

land.rhs:                                         ; preds = %land.lhs.true
  %20 = load ptr, ptr %argv.addr, align 8, !dbg !923, !tbaa !384
  %arrayidx26 = getelementptr inbounds ptr, ptr %20, i64 1, !dbg !923
  %21 = load ptr, ptr %arrayidx26, align 8, !dbg !923, !tbaa !384
  %call27 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.8) #15, !dbg !924
  %cmp28 = icmp eq i32 0, %call27, !dbg !925
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.end
  %22 = phi i1 [ false, %land.lhs.true ], [ false, %cond.end ], [ %cmp28, %land.rhs ], !dbg !926
  %23 = zext i1 %22 to i64, !dbg !927
  %cond29 = select i1 %22, i32 2, i32 0, !dbg !927
  store i32 %cond29, ptr %argnum, align 4, !dbg !916, !tbaa !183
  %24 = load ptr, ptr %argv.addr, align 8, !dbg !928, !tbaa !384
  %25 = load i32, ptr %argnum, align 4, !dbg !929, !tbaa !183
  %idxprom = sext i32 %25 to i64, !dbg !928
  %arrayidx30 = getelementptr inbounds ptr, ptr %24, i64 %idxprom, !dbg !928
  %26 = load ptr, ptr %arrayidx30, align 8, !dbg !928, !tbaa !384
  call void @perror(ptr noundef %26), !dbg !930
  %27 = load i32, ptr %errnum, align 4, !dbg !931, !tbaa !183
  call void @_exit(i32 noundef %27) #17, !dbg !932
  unreachable, !dbg !932
}

; Function Attrs: nounwind
declare !dbg !933 i32 @fork() #2

; Function Attrs: nounwind
declare !dbg !936 i32 @fchdir(i32 noundef) #2

; Function Attrs: noreturn
declare !dbg !937 void @_exit(i32 noundef) #9

; Function Attrs: nounwind
declare !dbg !938 ptr @signal(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !941 i32 @execve(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !945 i32 @strcmp(ptr noundef, ptr noundef) #6

declare !dbg !946 void @perror(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_waitpid(i32 noundef %pid, ptr noundef %status, i32 noundef %nb) #4 !dbg !949 {
entry:
  %pid.addr = alloca i32, align 4
  %status.addr = alloca ptr, align 8
  %nb.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  %rv = alloca i32, align 4
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !953, metadata !DIExpression()), !dbg !959
  store ptr %status, ptr %status.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !954, metadata !DIExpression()), !dbg !960
  store i32 %nb, ptr %nb.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !955, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #13, !dbg !962
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !956, metadata !DIExpression()), !dbg !963
  %0 = load i32, ptr %nb.addr, align 4, !dbg !964, !tbaa !183
  %tobool = icmp ne i32 %0, 0, !dbg !964
  %1 = zext i1 %tobool to i64, !dbg !964
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !964
  store i32 %cond, ptr %flags, align 4, !dbg !963, !tbaa !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #13, !dbg !965
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !958, metadata !DIExpression()), !dbg !966
  br label %do.body, !dbg !967

do.body:                                          ; preds = %land.end, %entry
  %2 = load i32, ptr %pid.addr, align 4, !dbg !968, !tbaa !183
  %3 = load ptr, ptr %status.addr, align 8, !dbg !970, !tbaa !384
  %4 = load i32, ptr %flags, align 4, !dbg !971, !tbaa !183
  %call = call i32 @waitpid(i32 noundef %2, ptr noundef %3, i32 noundef %4), !dbg !972
  store i32 %call, ptr %rv, align 4, !dbg !973, !tbaa !183
  br label %do.cond, !dbg !974

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %rv, align 4, !dbg !975, !tbaa !183
  %cmp = icmp eq i32 -1, %5, !dbg !976
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !977

land.rhs:                                         ; preds = %do.cond
  %call1 = call ptr @__errno_location() #16, !dbg !978
  %6 = load i32, ptr %call1, align 4, !dbg !978, !tbaa !183
  %cmp2 = icmp eq i32 %6, 4, !dbg !979
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %cmp2, %land.rhs ], !dbg !980
  br i1 %7, label %do.body, label %do.end, !dbg !974, !llvm.loop !981

do.end:                                           ; preds = %land.end
  %8 = load i32, ptr %rv, align 4, !dbg !984, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #13, !dbg !985
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #13, !dbg !985
  ret i32 %8, !dbg !986
}

declare !dbg !987 i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_waitpid_intr(i32 noundef %pid, ptr noundef %status) #4 !dbg !991 {
entry:
  %pid.addr = alloca i32, align 4
  %status.addr = alloca ptr, align 8
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !995, metadata !DIExpression()), !dbg !997
  store ptr %status, ptr %status.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !996, metadata !DIExpression()), !dbg !998
  %0 = load i32, ptr %pid.addr, align 4, !dbg !999, !tbaa !183
  %1 = load ptr, ptr %status.addr, align 8, !dbg !1000, !tbaa !384
  %call = call i32 @waitpid(i32 noundef %0, ptr noundef %1, i32 noundef 0), !dbg !1001
  ret i32 %call, !dbg !1002
}

; Function Attrs: nounwind uwtable
define dso_local i64 @fdevent_socket_read_discard(i32 noundef %fd, ptr noundef %buf, i64 noundef %sz, i32 noundef %family, i32 noundef %so_type) #4 !dbg !1003 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %family.addr = alloca i32, align 4
  %so_type.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1009, metadata !DIExpression()), !dbg !1017
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1010, metadata !DIExpression()), !dbg !1018
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !1011, metadata !DIExpression()), !dbg !1019
  store i32 %family, ptr %family.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !1012, metadata !DIExpression()), !dbg !1020
  store i32 %so_type, ptr %so_type.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %so_type.addr, metadata !1013, metadata !DIExpression()), !dbg !1021
  %0 = load i32, ptr %family.addr, align 4, !dbg !1022, !tbaa !183
  %cmp = icmp eq i32 %0, 2, !dbg !1023
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !1024

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %family.addr, align 4, !dbg !1025, !tbaa !183
  %cmp1 = icmp eq i32 %1, 10, !dbg !1026
  br i1 %cmp1, label %land.lhs.true, label %if.end8, !dbg !1027

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %so_type.addr, align 4, !dbg !1028, !tbaa !183
  %cmp2 = icmp eq i32 %2, 1, !dbg !1029
  br i1 %cmp2, label %if.then, label %if.end8, !dbg !1030

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #13, !dbg !1031
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1014, metadata !DIExpression()), !dbg !1032
  %3 = load i32, ptr %fd.addr, align 4, !dbg !1033, !tbaa !183
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !1034, !tbaa !384
  %5 = load i64, ptr %sz.addr, align 8, !dbg !1035, !tbaa !567
  %call = call i64 @recv(i32 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef 16480), !dbg !1036
  store i64 %call, ptr %len, align 8, !dbg !1032, !tbaa !567
  %6 = load i64, ptr %len, align 8, !dbg !1037, !tbaa !567
  %cmp3 = icmp sge i64 %6, 0, !dbg !1039
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4, !dbg !1040

lor.lhs.false4:                                   ; preds = %if.then
  %call5 = call ptr @__errno_location() #16, !dbg !1041
  %7 = load i32, ptr %call5, align 4, !dbg !1041, !tbaa !183
  %cmp6 = icmp ne i32 %7, 22, !dbg !1042
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !1043

if.then7:                                         ; preds = %lor.lhs.false4, %if.then
  %8 = load i64, ptr %len, align 8, !dbg !1044, !tbaa !567
  store i64 %8, ptr %retval, align 8, !dbg !1045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1045

if.end:                                           ; preds = %lor.lhs.false4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1046
  br label %cleanup, !dbg !1046

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #13, !dbg !1046
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end8, !dbg !1047

if.end8:                                          ; preds = %cleanup.cont, %land.lhs.true, %lor.lhs.false
  %9 = load i32, ptr %fd.addr, align 4, !dbg !1048, !tbaa !183
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !1049, !tbaa !384
  %11 = load i64, ptr %sz.addr, align 8, !dbg !1050, !tbaa !567
  %call9 = call i64 @read(i32 noundef %9, ptr noundef %10, i64 noundef %11), !dbg !1051
  store i64 %call9, ptr %retval, align 8, !dbg !1052
  br label %return, !dbg !1052

return:                                           ; preds = %if.end8, %cleanup
  %12 = load i64, ptr %retval, align 8, !dbg !1053
  ret i64 %12, !dbg !1053

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !1054 i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare !dbg !1057 i64 @read(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_ioctl_fionread(i32 noundef %fd, i32 noundef %fdfmt, ptr noundef %toread) #4 !dbg !1060 {
entry:
  %fd.addr = alloca i32, align 4
  %fdfmt.addr = alloca i32, align 4
  %toread.addr = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1064, metadata !DIExpression()), !dbg !1067
  store i32 %fdfmt, ptr %fdfmt.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fdfmt.addr, metadata !1065, metadata !DIExpression()), !dbg !1068
  store ptr %toread, ptr %toread.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %toread.addr, metadata !1066, metadata !DIExpression()), !dbg !1069
  %0 = load i32, ptr %fdfmt.addr, align 4, !dbg !1070, !tbaa !183
  %1 = load i32, ptr %fd.addr, align 4, !dbg !1071, !tbaa !183
  %2 = load ptr, ptr %toread.addr, align 8, !dbg !1072, !tbaa !384
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %1, i64 noundef 21531, ptr noundef %2) #13, !dbg !1073
  ret i32 %call, !dbg !1074
}

; Function Attrs: nounwind
declare !dbg !1075 i32 @ioctl(i32 noundef, i64 noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_connect_status(i32 noundef %fd) #4 !dbg !1079 {
entry:
  %fd.addr = alloca i32, align 4
  %opt = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1081, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 4, ptr %opt) #13, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %opt, metadata !1082, metadata !DIExpression()), !dbg !1086
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !1087
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1083, metadata !DIExpression()), !dbg !1088
  store i32 4, ptr %len, align 4, !dbg !1088, !tbaa !183
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1089, !tbaa !183
  %call = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef %opt, ptr noundef %len) #13, !dbg !1090
  %cmp = icmp eq i32 0, %call, !dbg !1091
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1092

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %opt, align 4, !dbg !1093, !tbaa !183
  br label %cond.end, !dbg !1092

cond.false:                                       ; preds = %entry
  %call1 = call ptr @__errno_location() #16, !dbg !1094
  %2 = load i32, ptr %call1, align 4, !dbg !1094, !tbaa !183
  br label %cond.end, !dbg !1092

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %2, %cond.false ], !dbg !1092
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 4, ptr %opt) #13, !dbg !1095
  ret i32 %cond, !dbg !1096
}

; Function Attrs: nounwind
declare !dbg !1097 i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_is_tcp_half_closed(i32 noundef %fd) #4 !dbg !1101 {
entry:
  %fd.addr = alloca i32, align 4
  %tcpi = alloca %struct.tcp_info, align 4
  %tlen = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1103, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 104, ptr %tcpi) #13, !dbg !1141
  tail call void @llvm.dbg.declare(metadata ptr %tcpi, metadata !1104, metadata !DIExpression()), !dbg !1142
  call void @llvm.lifetime.start.p0(i64 4, ptr %tlen) #13, !dbg !1143
  tail call void @llvm.dbg.declare(metadata ptr %tlen, metadata !1139, metadata !DIExpression()), !dbg !1144
  store i32 104, ptr %tlen, align 4, !dbg !1144, !tbaa !183
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1145, !tbaa !183
  %call = call i32 @getsockopt(i32 noundef %0, i32 noundef 6, i32 noundef 11, ptr noundef %tcpi, ptr noundef %tlen) #13, !dbg !1146
  %cmp = icmp eq i32 0, %call, !dbg !1147
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1148

land.rhs:                                         ; preds = %entry
  %tcpi_state = getelementptr inbounds %struct.tcp_info, ptr %tcpi, i32 0, i32 0, !dbg !1149
  %1 = load i8, ptr %tcpi_state, align 4, !dbg !1149, !tbaa !1150
  %conv = zext i8 %1 to i32, !dbg !1152
  %cmp1 = icmp eq i32 %conv, 8, !dbg !1153
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1154
  %land.ext = zext i1 %2 to i32, !dbg !1148
  call void @llvm.lifetime.end.p0(i64 4, ptr %tlen) #13, !dbg !1155
  call void @llvm.lifetime.end.p0(i64 104, ptr %tcpi) #13, !dbg !1155
  ret i32 %land.ext, !dbg !1156
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_set_tcp_nodelay(i32 noundef %fd, i32 noundef %opt) #4 !dbg !1157 {
entry:
  %fd.addr = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1161, metadata !DIExpression()), !dbg !1163
  store i32 %opt, ptr %opt.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !1162, metadata !DIExpression()), !dbg !1164
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1165, !tbaa !183
  %call = call i32 @setsockopt(i32 noundef %0, i32 noundef 6, i32 noundef 1, ptr noundef %opt.addr, i32 noundef 4) #13, !dbg !1166
  ret i32 %call, !dbg !1167
}

; Function Attrs: nounwind
declare !dbg !1168 i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_set_so_reuseaddr(i32 noundef %fd, i32 noundef %opt) #4 !dbg !1173 {
entry:
  %fd.addr = alloca i32, align 4
  %opt.addr = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1175, metadata !DIExpression()), !dbg !1177
  store i32 %opt, ptr %opt.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !1176, metadata !DIExpression()), !dbg !1178
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1179, !tbaa !183
  %call = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef %opt.addr, i32 noundef 4) #13, !dbg !1180
  ret i32 %call, !dbg !1181
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local ptr @fdevent_load_file(ptr noundef %fn, ptr noundef %lim, ptr noundef %errh, ptr noundef %malloc_fn, ptr noundef %free_fn) #0 !dbg !1182 {
entry:
  %retval = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %lim.addr = alloca ptr, align 8
  %errh.addr = alloca ptr, align 8
  %malloc_fn.addr = alloca ptr, align 8
  %free_fn.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %sz = alloca i64, align 8
  %buf = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rd = alloca i64, align 8
  %off = alloca i64, align 8
  %errnum = alloca i32, align 4
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1197, metadata !DIExpression()), !dbg !1246
  store ptr %lim, ptr %lim.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %lim.addr, metadata !1198, metadata !DIExpression()), !dbg !1247
  store ptr %errh, ptr %errh.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %errh.addr, metadata !1199, metadata !DIExpression()), !dbg !1248
  store ptr %malloc_fn, ptr %malloc_fn.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %malloc_fn.addr, metadata !1200, metadata !DIExpression()), !dbg !1249
  store ptr %free_fn, ptr %free_fn.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %free_fn.addr, metadata !1201, metadata !DIExpression()), !dbg !1250
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !1251
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !1202, metadata !DIExpression()), !dbg !1252
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #13, !dbg !1253
  tail call void @llvm.dbg.declare(metadata ptr %sz, metadata !1203, metadata !DIExpression()), !dbg !1254
  store i64 0, ptr %sz, align 8, !dbg !1254, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #13, !dbg !1255
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1204, metadata !DIExpression()), !dbg !1256
  store ptr null, ptr %buf, align 8, !dbg !1256, !tbaa !384
  br label %do.body, !dbg !1257

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !1258, !tbaa !384
  %call = call i32 @fdevent_open_cloexec(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0), !dbg !1259
  store i32 %call, ptr %fd, align 4, !dbg !1260, !tbaa !183
  %1 = load i32, ptr %fd, align 4, !dbg !1261, !tbaa !183
  %cmp = icmp slt i32 %1, 0, !dbg !1263
  br i1 %cmp, label %if.then, label %if.end, !dbg !1264

if.then:                                          ; preds = %do.body
  br label %do.end42, !dbg !1265

if.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 144, ptr %st) #13, !dbg !1266
  tail call void @llvm.dbg.declare(metadata ptr %st, metadata !1205, metadata !DIExpression()), !dbg !1267
  %2 = load i32, ptr %fd, align 4, !dbg !1268, !tbaa !183
  %call1 = call i32 @fstat64(i32 noundef %2, ptr noundef %st) #13, !dbg !1270
  %cmp2 = icmp ne i32 0, %call1, !dbg !1271
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1272

if.then3:                                         ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !1273

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %lim.addr, align 8, !dbg !1274, !tbaa !384
  %4 = load i64, ptr %3, align 8, !dbg !1276, !tbaa !567
  %cmp5 = icmp ne i64 %4, 0, !dbg !1277
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !1278

land.lhs.true:                                    ; preds = %if.end4
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 8, !dbg !1279
  %5 = load i64, ptr %st_size, align 8, !dbg !1279, !tbaa !1280
  %6 = load ptr, ptr %lim.addr, align 8, !dbg !1283, !tbaa !384
  %7 = load i64, ptr %6, align 8, !dbg !1284, !tbaa !567
  %cmp6 = icmp sge i64 %5, %7, !dbg !1285
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1286

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call ptr @__errno_location() #16, !dbg !1287
  store i32 75, ptr %call8, align 4, !dbg !1289, !tbaa !183
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !1290

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %st_size10 = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 8, !dbg !1291
  %8 = load i64, ptr %st_size10, align 8, !dbg !1291, !tbaa !1280
  store i64 %8, ptr %sz, align 8, !dbg !1292, !tbaa !567
  %9 = load ptr, ptr %malloc_fn.addr, align 8, !dbg !1293, !tbaa !384
  %10 = load i64, ptr %sz, align 8, !dbg !1294, !tbaa !567
  %add = add i64 %10, 1, !dbg !1295
  %call11 = call ptr %9(i64 noundef %add), !dbg !1293
  store ptr %call11, ptr %buf, align 8, !dbg !1296, !tbaa !384
  %11 = load ptr, ptr %buf, align 8, !dbg !1297, !tbaa !384
  %cmp12 = icmp eq ptr null, %11, !dbg !1299
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1300

if.then13:                                        ; preds = %if.end9
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !1301

if.end14:                                         ; preds = %if.end9
  %12 = load i64, ptr %sz, align 8, !dbg !1302, !tbaa !567
  %tobool = icmp ne i64 %12, 0, !dbg !1302
  br i1 %tobool, label %if.then15, label %if.end37, !dbg !1303

if.then15:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #13, !dbg !1304
  tail call void @llvm.dbg.declare(metadata ptr %rd, metadata !1241, metadata !DIExpression()), !dbg !1305
  store i64 0, ptr %rd, align 8, !dbg !1305, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #13, !dbg !1306
  tail call void @llvm.dbg.declare(metadata ptr %off, metadata !1244, metadata !DIExpression()), !dbg !1307
  store i64 0, ptr %off, align 8, !dbg !1307, !tbaa !567
  br label %do.body16, !dbg !1308

do.body16:                                        ; preds = %cond.end, %if.then15
  %13 = load i32, ptr %fd, align 4, !dbg !1309, !tbaa !183
  %14 = load ptr, ptr %buf, align 8, !dbg !1311, !tbaa !384
  %15 = load i64, ptr %off, align 8, !dbg !1312, !tbaa !567
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %15, !dbg !1313
  %16 = load i64, ptr %sz, align 8, !dbg !1314, !tbaa !567
  %17 = load i64, ptr %off, align 8, !dbg !1315, !tbaa !567
  %sub = sub nsw i64 %16, %17, !dbg !1316
  %call17 = call i64 @read(i32 noundef %13, ptr noundef %add.ptr, i64 noundef %sub), !dbg !1317
  store i64 %call17, ptr %rd, align 8, !dbg !1318, !tbaa !567
  br label %do.cond, !dbg !1319

do.cond:                                          ; preds = %do.body16
  %18 = load i64, ptr %rd, align 8, !dbg !1320, !tbaa !567
  %cmp18 = icmp sgt i64 %18, 0, !dbg !1321
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !1320

cond.true:                                        ; preds = %do.cond
  %19 = load i64, ptr %rd, align 8, !dbg !1322, !tbaa !567
  %20 = load i64, ptr %off, align 8, !dbg !1323, !tbaa !567
  %add19 = add nsw i64 %20, %19, !dbg !1323
  store i64 %add19, ptr %off, align 8, !dbg !1323, !tbaa !567
  %21 = load i64, ptr %sz, align 8, !dbg !1324, !tbaa !567
  %cmp20 = icmp ne i64 %add19, %21, !dbg !1325
  %conv = zext i1 %cmp20 to i32, !dbg !1325
  br label %cond.end, !dbg !1320

cond.false:                                       ; preds = %do.cond
  %22 = load i64, ptr %rd, align 8, !dbg !1326, !tbaa !567
  %cmp21 = icmp slt i64 %22, 0, !dbg !1327
  br i1 %cmp21, label %land.rhs, label %land.end, !dbg !1328

land.rhs:                                         ; preds = %cond.false
  %call23 = call ptr @__errno_location() #16, !dbg !1329
  %23 = load i32, ptr %call23, align 4, !dbg !1329, !tbaa !183
  %cmp24 = icmp eq i32 %23, 4, !dbg !1330
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %24 = phi i1 [ false, %cond.false ], [ %cmp24, %land.rhs ], !dbg !1331
  %land.ext = zext i1 %24 to i32, !dbg !1328
  br label %cond.end, !dbg !1320

cond.end:                                         ; preds = %land.end, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %land.ext, %land.end ], !dbg !1320
  %tobool26 = icmp ne i32 %cond, 0, !dbg !1319
  br i1 %tobool26, label %do.body16, label %do.end, !dbg !1319, !llvm.loop !1332

do.end:                                           ; preds = %cond.end
  %25 = load i64, ptr %off, align 8, !dbg !1334, !tbaa !567
  %26 = load i64, ptr %sz, align 8, !dbg !1336, !tbaa !567
  %cmp27 = icmp ne i64 %25, %26, !dbg !1337
  br i1 %cmp27, label %if.then29, label %if.end35, !dbg !1338

if.then29:                                        ; preds = %do.end
  %27 = load i64, ptr %rd, align 8, !dbg !1339, !tbaa !567
  %cmp30 = icmp sge i64 %27, 0, !dbg !1342
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !1343

if.then32:                                        ; preds = %if.then29
  %call33 = call ptr @__errno_location() #16, !dbg !1344
  store i32 5, ptr %call33, align 4, !dbg !1345, !tbaa !183
  br label %if.end34, !dbg !1344

if.end34:                                         ; preds = %if.then32, %if.then29
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1346

if.end35:                                         ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1347
  br label %cleanup, !dbg !1347

cleanup:                                          ; preds = %if.end35, %if.end34
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #13, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #13, !dbg !1347
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end37, !dbg !1348

if.end37:                                         ; preds = %cleanup.cont, %if.end14
  %28 = load ptr, ptr %buf, align 8, !dbg !1349, !tbaa !384
  %29 = load i64, ptr %sz, align 8, !dbg !1350, !tbaa !567
  %arrayidx = getelementptr inbounds i8, ptr %28, i64 %29, !dbg !1349
  store i8 0, ptr %arrayidx, align 1, !dbg !1351, !tbaa !449
  %30 = load i64, ptr %sz, align 8, !dbg !1352, !tbaa !567
  %31 = load ptr, ptr %lim.addr, align 8, !dbg !1353, !tbaa !384
  store i64 %30, ptr %31, align 8, !dbg !1354, !tbaa !567
  %32 = load i32, ptr %fd, align 4, !dbg !1355, !tbaa !183
  %call38 = call i32 @close(i32 noundef %32), !dbg !1356
  %33 = load ptr, ptr %buf, align 8, !dbg !1357, !tbaa !384
  store ptr %33, ptr %retval, align 8, !dbg !1358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !1358

cleanup39:                                        ; preds = %if.end37, %cleanup, %if.then13, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 144, ptr %st) #13, !dbg !1359
  %cleanup.dest40 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest40, label %cleanup58 [
    i32 2, label %do.end42
  ]

do.cond41:                                        ; No predecessors!
  br label %do.end42, !dbg !1360

do.end42:                                         ; preds = %do.cond41, %cleanup39, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %errnum) #13, !dbg !1361
  tail call void @llvm.dbg.declare(metadata ptr %errnum, metadata !1245, metadata !DIExpression()), !dbg !1362
  %call43 = call ptr @__errno_location() #16, !dbg !1363
  %34 = load i32, ptr %call43, align 4, !dbg !1363, !tbaa !183
  store i32 %34, ptr %errnum, align 4, !dbg !1362, !tbaa !183
  %35 = load ptr, ptr %errh.addr, align 8, !dbg !1364, !tbaa !384
  %tobool44 = icmp ne ptr %35, null, !dbg !1364
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !1366

if.then45:                                        ; preds = %do.end42
  %36 = load ptr, ptr %errh.addr, align 8, !dbg !1367, !tbaa !384
  %37 = load ptr, ptr %fn.addr, align 8, !dbg !1368, !tbaa !384
  call void (ptr, ptr, i32, ptr, ...) @log_perror(ptr noundef %36, ptr noundef @.str, i32 noundef 647, ptr noundef @.str.9, ptr noundef @__func__.fdevent_load_file, ptr noundef %37) #18, !dbg !1369
  br label %if.end46, !dbg !1369

if.end46:                                         ; preds = %if.then45, %do.end42
  %38 = load i32, ptr %fd, align 4, !dbg !1370, !tbaa !183
  %cmp47 = icmp sge i32 %38, 0, !dbg !1372
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !1373

if.then49:                                        ; preds = %if.end46
  %39 = load i32, ptr %fd, align 4, !dbg !1374, !tbaa !183
  %call50 = call i32 @close(i32 noundef %39), !dbg !1375
  br label %if.end51, !dbg !1375

if.end51:                                         ; preds = %if.then49, %if.end46
  %40 = load ptr, ptr %buf, align 8, !dbg !1376, !tbaa !384
  %tobool52 = icmp ne ptr %40, null, !dbg !1376
  br i1 %tobool52, label %if.then53, label %if.end55, !dbg !1378

if.then53:                                        ; preds = %if.end51
  %41 = load ptr, ptr %buf, align 8, !dbg !1379, !tbaa !384
  %42 = load i64, ptr %sz, align 8, !dbg !1381, !tbaa !567
  %call54 = call i32 @ck_memzero(ptr noundef %41, i64 noundef %42), !dbg !1382
  %43 = load ptr, ptr %free_fn.addr, align 8, !dbg !1383, !tbaa !384
  %44 = load ptr, ptr %buf, align 8, !dbg !1384, !tbaa !384
  call void %43(ptr noundef %44), !dbg !1383
  br label %if.end55, !dbg !1385

if.end55:                                         ; preds = %if.then53, %if.end51
  %45 = load ptr, ptr %lim.addr, align 8, !dbg !1386, !tbaa !384
  store i64 0, ptr %45, align 8, !dbg !1387, !tbaa !567
  %46 = load i32, ptr %errnum, align 4, !dbg !1388, !tbaa !183
  %call56 = call ptr @__errno_location() #16, !dbg !1389
  store i32 %46, ptr %call56, align 4, !dbg !1390, !tbaa !183
  store ptr null, ptr %retval, align 8, !dbg !1391
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %errnum) #13, !dbg !1392
  br label %cleanup58

cleanup58:                                        ; preds = %if.end55, %cleanup39
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #13, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #13, !dbg !1392
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !1392
  %47 = load ptr, ptr %retval, align 8, !dbg !1392
  ret ptr %47, !dbg !1392
}

; Function Attrs: nounwind
declare !dbg !1393 i32 @fstat64(i32 noundef, ptr noundef) #2

; Function Attrs: cold
declare !dbg !1398 void @log_perror(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #10

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ck_memzero(ptr noundef %s, i64 noundef %n) #11 !dbg !1402 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1408, metadata !DIExpression()), !dbg !1410
  store i64 %n, ptr %n.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1409, metadata !DIExpression()), !dbg !1411
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1412, !tbaa !384
  %1 = load i64, ptr %n.addr, align 8, !dbg !1413, !tbaa !567
  %2 = load i64, ptr %n.addr, align 8, !dbg !1414, !tbaa !567
  %call = call i32 @ck_memclear_s(ptr noundef %0, i64 noundef %1, i64 noundef %2), !dbg !1415
  ret i32 %call, !dbg !1416
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fdevent_load_file_bytes(ptr noundef %buf, i64 noundef %sz, i64 noundef %off, ptr noundef %fn, ptr noundef %errh) #4 !dbg !1417 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %off.addr = alloca i64, align 8
  %fn.addr = alloca ptr, align 8
  %errh.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %rd = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %errnum = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1422, metadata !DIExpression()), !dbg !1431
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !1423, metadata !DIExpression()), !dbg !1432
  store i64 %off, ptr %off.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !1424, metadata !DIExpression()), !dbg !1433
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1425, metadata !DIExpression()), !dbg !1434
  store ptr %errh, ptr %errh.addr, align 8, !tbaa !384
  tail call void @llvm.dbg.declare(metadata ptr %errh.addr, metadata !1426, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #13, !dbg !1436
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !1427, metadata !DIExpression()), !dbg !1437
  br label %do.body, !dbg !1438

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %fn.addr, align 8, !dbg !1439, !tbaa !384
  %call = call i32 @fdevent_open_cloexec(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0), !dbg !1440
  store i32 %call, ptr %fd, align 4, !dbg !1441, !tbaa !183
  %1 = load i32, ptr %fd, align 4, !dbg !1442, !tbaa !183
  %cmp = icmp slt i32 %1, 0, !dbg !1444
  br i1 %cmp, label %if.then, label %if.end, !dbg !1445

if.then:                                          ; preds = %do.body
  br label %do.end26, !dbg !1446

if.end:                                           ; preds = %do.body
  %2 = load i64, ptr %off.addr, align 8, !dbg !1447, !tbaa !567
  %cmp1 = icmp ne i64 0, %2, !dbg !1449
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !1450

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %fd, align 4, !dbg !1451, !tbaa !183
  %4 = load i64, ptr %off.addr, align 8, !dbg !1452, !tbaa !567
  %call2 = call i64 @lseek64(i32 noundef %3, i64 noundef %4, i32 noundef 0) #13, !dbg !1453
  %cmp3 = icmp eq i64 -1, %call2, !dbg !1454
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1455

if.then4:                                         ; preds = %land.lhs.true
  br label %do.end26, !dbg !1456

if.end5:                                          ; preds = %land.lhs.true, %if.end
  store i64 0, ptr %off.addr, align 8, !dbg !1457, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %rd) #13, !dbg !1458
  tail call void @llvm.dbg.declare(metadata ptr %rd, metadata !1428, metadata !DIExpression()), !dbg !1459
  store i64 0, ptr %rd, align 8, !dbg !1459, !tbaa !567
  br label %do.body6, !dbg !1460

do.body6:                                         ; preds = %cond.end, %if.end5
  %5 = load i32, ptr %fd, align 4, !dbg !1461, !tbaa !183
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !1463, !tbaa !384
  %7 = load i64, ptr %off.addr, align 8, !dbg !1464, !tbaa !567
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !1465
  %8 = load i64, ptr %sz.addr, align 8, !dbg !1466, !tbaa !567
  %9 = load i64, ptr %off.addr, align 8, !dbg !1467, !tbaa !567
  %sub = sub nsw i64 %8, %9, !dbg !1468
  %call7 = call i64 @read(i32 noundef %5, ptr noundef %add.ptr, i64 noundef %sub), !dbg !1469
  store i64 %call7, ptr %rd, align 8, !dbg !1470, !tbaa !567
  br label %do.cond, !dbg !1471

do.cond:                                          ; preds = %do.body6
  %10 = load i64, ptr %rd, align 8, !dbg !1472, !tbaa !567
  %cmp8 = icmp sgt i64 %10, 0, !dbg !1473
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !1472

cond.true:                                        ; preds = %do.cond
  %11 = load i64, ptr %rd, align 8, !dbg !1474, !tbaa !567
  %12 = load i64, ptr %off.addr, align 8, !dbg !1475, !tbaa !567
  %add = add nsw i64 %12, %11, !dbg !1475
  store i64 %add, ptr %off.addr, align 8, !dbg !1475, !tbaa !567
  %13 = load i64, ptr %sz.addr, align 8, !dbg !1476, !tbaa !567
  %cmp9 = icmp ne i64 %add, %13, !dbg !1477
  %conv = zext i1 %cmp9 to i32, !dbg !1477
  br label %cond.end, !dbg !1472

cond.false:                                       ; preds = %do.cond
  %14 = load i64, ptr %rd, align 8, !dbg !1478, !tbaa !567
  %cmp10 = icmp slt i64 %14, 0, !dbg !1479
  br i1 %cmp10, label %land.rhs, label %land.end, !dbg !1480

land.rhs:                                         ; preds = %cond.false
  %call12 = call ptr @__errno_location() #16, !dbg !1481
  %15 = load i32, ptr %call12, align 4, !dbg !1481, !tbaa !183
  %cmp13 = icmp eq i32 %15, 4, !dbg !1482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %16 = phi i1 [ false, %cond.false ], [ %cmp13, %land.rhs ], !dbg !1483
  %land.ext = zext i1 %16 to i32, !dbg !1480
  br label %cond.end, !dbg !1472

cond.end:                                         ; preds = %land.end, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %land.ext, %land.end ], !dbg !1472
  %tobool = icmp ne i32 %cond, 0, !dbg !1471
  br i1 %tobool, label %do.body6, label %do.end, !dbg !1471, !llvm.loop !1484

do.end:                                           ; preds = %cond.end
  %17 = load i64, ptr %off.addr, align 8, !dbg !1486, !tbaa !567
  %18 = load i64, ptr %sz.addr, align 8, !dbg !1488, !tbaa !567
  %cmp15 = icmp ne i64 %17, %18, !dbg !1489
  br i1 %cmp15, label %if.then17, label %if.end23, !dbg !1490

if.then17:                                        ; preds = %do.end
  %19 = load i64, ptr %rd, align 8, !dbg !1491, !tbaa !567
  %cmp18 = icmp sge i64 %19, 0, !dbg !1494
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !1495

if.then20:                                        ; preds = %if.then17
  %call21 = call ptr @__errno_location() #16, !dbg !1496
  store i32 5, ptr %call21, align 4, !dbg !1497, !tbaa !183
  br label %if.end22, !dbg !1496

if.end22:                                         ; preds = %if.then20, %if.then17
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1498

if.end23:                                         ; preds = %do.end
  %20 = load i32, ptr %fd, align 4, !dbg !1499, !tbaa !183
  %call24 = call i32 @close(i32 noundef %20), !dbg !1500
  store i32 0, ptr %retval, align 4, !dbg !1501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1501

cleanup:                                          ; preds = %if.end23, %if.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %rd) #13, !dbg !1502
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 2, label %do.end26
  ]

do.cond25:                                        ; No predecessors!
  br label %do.end26, !dbg !1503

do.end26:                                         ; preds = %do.cond25, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %errnum) #13, !dbg !1504
  tail call void @llvm.dbg.declare(metadata ptr %errnum, metadata !1430, metadata !DIExpression()), !dbg !1505
  %call27 = call ptr @__errno_location() #16, !dbg !1506
  %21 = load i32, ptr %call27, align 4, !dbg !1506, !tbaa !183
  store i32 %21, ptr %errnum, align 4, !dbg !1505, !tbaa !183
  %22 = load ptr, ptr %errh.addr, align 8, !dbg !1507, !tbaa !384
  %tobool28 = icmp ne ptr %22, null, !dbg !1507
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1509

if.then29:                                        ; preds = %do.end26
  %23 = load ptr, ptr %errh.addr, align 8, !dbg !1510, !tbaa !384
  %24 = load ptr, ptr %fn.addr, align 8, !dbg !1511, !tbaa !384
  call void (ptr, ptr, i32, ptr, ...) @log_perror(ptr noundef %23, ptr noundef @.str, i32 noundef 684, ptr noundef @.str.9, ptr noundef @__func__.fdevent_load_file_bytes, ptr noundef %24) #18, !dbg !1512
  br label %if.end30, !dbg !1512

if.end30:                                         ; preds = %if.then29, %do.end26
  %25 = load i32, ptr %fd, align 4, !dbg !1513, !tbaa !183
  %cmp31 = icmp sge i32 %25, 0, !dbg !1515
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !1516

if.then33:                                        ; preds = %if.end30
  %26 = load i32, ptr %fd, align 4, !dbg !1517, !tbaa !183
  %call34 = call i32 @close(i32 noundef %26), !dbg !1518
  br label %if.end35, !dbg !1518

if.end35:                                         ; preds = %if.then33, %if.end30
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !1519, !tbaa !384
  %28 = load i64, ptr %sz.addr, align 8, !dbg !1520, !tbaa !567
  %call36 = call i32 @ck_memzero(ptr noundef %27, i64 noundef %28), !dbg !1521
  %29 = load i32, ptr %errnum, align 4, !dbg !1522, !tbaa !183
  %call37 = call ptr @__errno_location() #16, !dbg !1523
  store i32 %29, ptr %call37, align 4, !dbg !1524, !tbaa !183
  store i32 -1, ptr %retval, align 4, !dbg !1525
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %errnum) #13, !dbg !1526
  br label %cleanup39

cleanup39:                                        ; preds = %if.end35, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #13, !dbg !1526
  %30 = load i32, ptr %retval, align 4, !dbg !1526
  ret i32 %30, !dbg !1526
}

; Function Attrs: nounwind
declare !dbg !1527 i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !1530 i32 @dup2(i32 noundef, i32 noundef) #2

declare !dbg !1531 i32 @ck_memclear_s(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #12

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "use_sock_nonblock", scope: !2, file: !109, line: 28, type: !101, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/fdevent.c", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-build-rpmcfxe/build", checksumkind: CSK_MD5, checksum: "bda7f1acb21952dfb2e4f45df6d8b7bc")
!4 = !{!5, !18, !43, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17}
!9 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!10 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!11 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!12 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!13 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!14 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!15 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!16 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!17 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 202, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!21 = !DIEnumerator(name: "MSG_OOB", value: 1)
!22 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!23 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!24 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!25 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!26 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!27 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!28 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!29 = !DIEnumerator(name: "MSG_EOR", value: 128)
!30 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!31 = !DIEnumerator(name: "MSG_FIN", value: 512)
!32 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!33 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!34 = !DIEnumerator(name: "MSG_RST", value: 4096)
!35 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!36 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!37 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!38 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!39 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!40 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!41 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!42 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 163, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "/usr/include/netinet/tcp.h", directory: "", checksumkind: CSK_MD5, checksum: "fe667f46f43c3c9d767dfeecf2b8ba82")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!46 = !DIEnumerator(name: "TCP_ESTABLISHED", value: 1)
!47 = !DIEnumerator(name: "TCP_SYN_SENT", value: 2)
!48 = !DIEnumerator(name: "TCP_SYN_RECV", value: 3)
!49 = !DIEnumerator(name: "TCP_FIN_WAIT1", value: 4)
!50 = !DIEnumerator(name: "TCP_FIN_WAIT2", value: 5)
!51 = !DIEnumerator(name: "TCP_TIME_WAIT", value: 6)
!52 = !DIEnumerator(name: "TCP_CLOSE", value: 7)
!53 = !DIEnumerator(name: "TCP_CLOSE_WAIT", value: 8)
!54 = !DIEnumerator(name: "TCP_LAST_ACK", value: 9)
!55 = !DIEnumerator(name: "TCP_LISTEN", value: 10)
!56 = !DIEnumerator(name: "TCP_CLOSING", value: 11)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 40, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!60 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!61 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!62 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!63 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!64 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!65 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!66 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!67 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!68 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!69 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!70 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!71 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!72 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!73 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!74 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!75 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!76 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!77 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!78 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!79 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!80 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!81 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!82 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!83 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!84 = !DIEnumerator(name: "IPPROTO_ETHERNET", value: 143)
!85 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!86 = !DIEnumerator(name: "IPPROTO_MPTCP", value: 262)
!87 = !DIEnumerator(name: "IPPROTO_MAX", value: 263)
!88 = !{!89, !90, !93, !96, !102}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !19, line: 33, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !92, line: 210, baseType: !7)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 70, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!95 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !97, line: 72, baseType: !98)
!97 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101}
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !103, line: 87, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !92, line: 153, baseType: !105)
!105 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!106 = !{!107, !114, !119, !121, !126, !131, !136, !138, !143, !148, !150, !156, !161, !0, !163}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !109, line: 61, type: !110, isLocal: true, isDefinition: true)
!109 = !DIFile(filename: "spack-src/src/fdevent.c", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "bda7f1acb21952dfb2e4f45df6d8b7bc")
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 1224, elements: !112)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !{!113}
!113 = !DISubrange(count: 153)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !109, line: 61, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 176, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 22)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !109, line: 69, type: !116, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !109, line: 132, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 248, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 31)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !109, line: 195, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 80, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 10)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !109, line: 203, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 16, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !109, line: 203, type: !133, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !109, line: 457, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 8)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !109, line: 457, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 3)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !109, line: 647, type: !140, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !109, line: 647, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 144, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!154 = !{!155}
!155 = !DISubrange(count: 18)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !109, line: 684, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 192, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 24)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "use_sock_cloexec", scope: !2, file: !109, line: 25, type: !101, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !109, line: 363, type: !128, isLocal: true, isDefinition: true)
!165 = !{i32 7, !"Dwarf Version", i32 5}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{i32 1, !"wchar_size", i32 4}
!168 = !{i32 8, !"PIC Level", i32 2}
!169 = !{i32 7, !"PIE Level", i32 2}
!170 = !{i32 7, !"uwtable", i32 2}
!171 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!172 = distinct !DISubprogram(name: "fdevent_socket_nb_cloexec_init", scope: !109, file: !109, line: 31, type: !173, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !{!176, !177}
!176 = !DILocalVariable(name: "fd", scope: !172, file: !109, line: 43, type: !101)
!177 = !DILocalVariable(name: "flags", scope: !178, file: !109, line: 48, type: !101)
!178 = distinct !DILexicalBlock(scope: !179, file: !109, line: 47, column: 15)
!179 = distinct !DILexicalBlock(scope: !172, file: !109, line: 47, column: 6)
!180 = !DILocation(line: 43, column: 2, scope: !172)
!181 = !DILocation(line: 43, column: 6, scope: !172)
!182 = !DILocation(line: 43, column: 11, scope: !172)
!183 = !{!184, !184, i64 0}
!184 = !{!"int", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !DILocation(line: 47, column: 6, scope: !179)
!188 = !DILocation(line: 47, column: 9, scope: !179)
!189 = !DILocation(line: 47, column: 6, scope: !172)
!190 = !DILocation(line: 48, column: 3, scope: !178)
!191 = !DILocation(line: 48, column: 7, scope: !178)
!192 = !DILocation(line: 48, column: 21, scope: !178)
!193 = !DILocation(line: 48, column: 15, scope: !178)
!194 = !DILocation(line: 50, column: 30, scope: !178)
!195 = !DILocation(line: 50, column: 27, scope: !178)
!196 = !DILocation(line: 50, column: 36, scope: !178)
!197 = !DILocation(line: 50, column: 40, scope: !178)
!198 = !DILocation(line: 50, column: 46, scope: !178)
!199 = !DILocation(line: 0, scope: !178)
!200 = !DILocation(line: 50, column: 21, scope: !178)
!201 = !DILocation(line: 52, column: 20, scope: !178)
!202 = !DILocation(line: 53, column: 9, scope: !178)
!203 = !DILocation(line: 53, column: 3, scope: !178)
!204 = !DILocation(line: 54, column: 2, scope: !179)
!205 = !DILocation(line: 54, column: 2, scope: !178)
!206 = !DILocation(line: 56, column: 1, scope: !172)
!207 = !DISubprogram(name: "socket", scope: !208, file: !208, line: 102, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "dec166690c7633bc0eaee5d9f221c324")
!209 = !DISubroutineType(types: !210)
!210 = !{!101, !101, !101, !101}
!211 = !DISubprogram(name: "fcntl", linkageName: "fcntl64", scope: !212, file: !212, line: 152, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!213 = !DISubroutineType(types: !214)
!214 = !{!101, !101, !101, null}
!215 = !DISubprogram(name: "close", scope: !216, file: !216, line: 358, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!217 = !DISubroutineType(types: !218)
!218 = !{!101, !101}
!219 = distinct !DISubprogram(name: "fdevent_setfd_cloexec", scope: !109, file: !109, line: 58, type: !99, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!220 = !{!221}
!221 = !DILocalVariable(name: "fd", arg: 1, scope: !219, file: !109, line: 58, type: !101)
!222 = !DILocation(line: 58, column: 32, scope: !219)
!223 = !DILocation(line: 60, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !109, line: 60, column: 6)
!225 = !DILocation(line: 60, column: 9, scope: !224)
!226 = !DILocation(line: 60, column: 6, scope: !219)
!227 = !DILocation(line: 60, column: 14, scope: !224)
!228 = !DILocation(line: 61, column: 2, scope: !219)
!229 = !DILocation(line: 61, column: 2, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !109, line: 61, column: 2)
!231 = distinct !DILexicalBlock(scope: !219, file: !109, line: 61, column: 2)
!232 = !DILocation(line: 61, column: 2, scope: !231)
!233 = !DILocation(line: 65, column: 1, scope: !219)
!234 = !DISubprogram(name: "ck_assert_failed", scope: !235, file: !235, line: 109, type: !236, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!235 = !DIFile(filename: "spack-src/src/ck.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "734bf373e0ae340c3941f9a893874c6a")
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238, !7, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!239 = distinct !DISubprogram(name: "fdevent_clrfd_cloexec", scope: !109, file: !109, line: 67, type: !99, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!240 = !{!241}
!241 = !DILocalVariable(name: "fd", arg: 1, scope: !239, file: !109, line: 67, type: !101)
!242 = !DILocation(line: 67, column: 32, scope: !239)
!243 = !DILocation(line: 69, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !109, line: 69, column: 6)
!245 = !DILocation(line: 69, column: 9, scope: !244)
!246 = !DILocation(line: 69, column: 6, scope: !239)
!247 = !DILocation(line: 69, column: 15, scope: !244)
!248 = !DILocation(line: 69, column: 15, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !109, line: 69, column: 15)
!250 = distinct !DILexicalBlock(scope: !244, file: !109, line: 69, column: 15)
!251 = !DILocation(line: 69, column: 15, scope: !250)
!252 = !DILocation(line: 73, column: 1, scope: !239)
!253 = distinct !DISubprogram(name: "fdevent_fcntl_set_nb", scope: !109, file: !109, line: 75, type: !217, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!254 = !{!255}
!255 = !DILocalVariable(name: "fd", arg: 1, scope: !253, file: !109, line: 75, type: !101)
!256 = !DILocation(line: 75, column: 30, scope: !253)
!257 = !DILocation(line: 77, column: 15, scope: !253)
!258 = !DILocation(line: 77, column: 9, scope: !253)
!259 = !DILocation(line: 77, column: 2, scope: !253)
!260 = distinct !DISubprogram(name: "fdevent_fcntl_set_nb_cloexec", scope: !109, file: !109, line: 84, type: !217, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !261)
!261 = !{!262}
!262 = !DILocalVariable(name: "fd", arg: 1, scope: !260, file: !109, line: 84, type: !101)
!263 = !DILocation(line: 84, column: 38, scope: !260)
!264 = !DILocation(line: 85, column: 24, scope: !260)
!265 = !DILocation(line: 85, column: 2, scope: !260)
!266 = !DILocation(line: 86, column: 30, scope: !260)
!267 = !DILocation(line: 86, column: 9, scope: !260)
!268 = !DILocation(line: 86, column: 2, scope: !260)
!269 = distinct !DISubprogram(name: "fdevent_fcntl_set_nb_cloexec_sock", scope: !109, file: !109, line: 89, type: !217, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!270 = !{!271}
!271 = !DILocalVariable(name: "fd", arg: 1, scope: !269, file: !109, line: 89, type: !101)
!272 = !DILocation(line: 89, column: 43, scope: !269)
!273 = !DILocation(line: 91, column: 6, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !109, line: 91, column: 6)
!275 = !DILocation(line: 91, column: 23, scope: !274)
!276 = !DILocation(line: 91, column: 26, scope: !274)
!277 = !DILocation(line: 91, column: 6, scope: !269)
!278 = !DILocation(line: 92, column: 3, scope: !274)
!279 = !DILocation(line: 94, column: 38, scope: !269)
!280 = !DILocation(line: 94, column: 9, scope: !269)
!281 = !DILocation(line: 94, column: 2, scope: !269)
!282 = !DILocation(line: 95, column: 1, scope: !269)
!283 = distinct !DISubprogram(name: "fdevent_socket_cloexec", scope: !109, file: !109, line: 97, type: !209, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!284 = !{!285, !286, !287, !288}
!285 = !DILocalVariable(name: "domain", arg: 1, scope: !283, file: !109, line: 97, type: !101)
!286 = !DILocalVariable(name: "type", arg: 2, scope: !283, file: !109, line: 97, type: !101)
!287 = !DILocalVariable(name: "protocol", arg: 3, scope: !283, file: !109, line: 97, type: !101)
!288 = !DILocalVariable(name: "fd", scope: !283, file: !109, line: 98, type: !101)
!289 = !DILocation(line: 97, column: 32, scope: !283)
!290 = !DILocation(line: 97, column: 44, scope: !283)
!291 = !DILocation(line: 97, column: 54, scope: !283)
!292 = !DILocation(line: 98, column: 2, scope: !283)
!293 = !DILocation(line: 98, column: 6, scope: !283)
!294 = !DILocation(line: 100, column: 6, scope: !295)
!295 = distinct !DILexicalBlock(scope: !283, file: !109, line: 100, column: 6)
!296 = !DILocation(line: 100, column: 6, scope: !283)
!297 = !DILocation(line: 101, column: 17, scope: !295)
!298 = !DILocation(line: 101, column: 25, scope: !295)
!299 = !DILocation(line: 101, column: 30, scope: !295)
!300 = !DILocation(line: 101, column: 46, scope: !295)
!301 = !DILocation(line: 101, column: 10, scope: !295)
!302 = !DILocation(line: 101, column: 3, scope: !295)
!303 = !DILocation(line: 103, column: 25, scope: !304)
!304 = distinct !DILexicalBlock(scope: !283, file: !109, line: 103, column: 6)
!305 = !DILocation(line: 103, column: 33, scope: !304)
!306 = !DILocation(line: 103, column: 39, scope: !304)
!307 = !DILocation(line: 103, column: 18, scope: !304)
!308 = !DILocation(line: 103, column: 16, scope: !304)
!309 = !DILocation(line: 103, column: 9, scope: !304)
!310 = !DILocation(line: 103, column: 6, scope: !283)
!311 = !DILocation(line: 105, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !109, line: 103, column: 51)
!313 = !DILocation(line: 105, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !109, line: 105, column: 3)
!315 = distinct !DILexicalBlock(scope: !312, file: !109, line: 105, column: 3)
!316 = !DILocation(line: 105, column: 3, scope: !315)
!317 = !DILocation(line: 107, column: 2, scope: !312)
!318 = !DILocation(line: 108, column: 9, scope: !283)
!319 = !DILocation(line: 108, column: 2, scope: !283)
!320 = !DILocation(line: 109, column: 1, scope: !283)
!321 = distinct !DISubprogram(name: "fdevent_socket_nb_cloexec", scope: !109, file: !109, line: 111, type: !209, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!322 = !{!323, !324, !325, !326}
!323 = !DILocalVariable(name: "domain", arg: 1, scope: !321, file: !109, line: 111, type: !101)
!324 = !DILocalVariable(name: "type", arg: 2, scope: !321, file: !109, line: 111, type: !101)
!325 = !DILocalVariable(name: "protocol", arg: 3, scope: !321, file: !109, line: 111, type: !101)
!326 = !DILocalVariable(name: "fd", scope: !321, file: !109, line: 112, type: !101)
!327 = !DILocation(line: 111, column: 35, scope: !321)
!328 = !DILocation(line: 111, column: 47, scope: !321)
!329 = !DILocation(line: 111, column: 57, scope: !321)
!330 = !DILocation(line: 112, column: 2, scope: !321)
!331 = !DILocation(line: 112, column: 6, scope: !321)
!332 = !DILocation(line: 115, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !321, file: !109, line: 115, column: 6)
!334 = !DILocation(line: 115, column: 23, scope: !333)
!335 = !DILocation(line: 115, column: 26, scope: !333)
!336 = !DILocation(line: 115, column: 6, scope: !321)
!337 = !DILocation(line: 116, column: 17, scope: !333)
!338 = !DILocation(line: 116, column: 25, scope: !333)
!339 = !DILocation(line: 116, column: 30, scope: !333)
!340 = !DILocation(line: 116, column: 45, scope: !333)
!341 = !DILocation(line: 116, column: 62, scope: !333)
!342 = !DILocation(line: 116, column: 10, scope: !333)
!343 = !DILocation(line: 116, column: 3, scope: !333)
!344 = !DILocation(line: 127, column: 25, scope: !345)
!345 = distinct !DILexicalBlock(scope: !321, file: !109, line: 127, column: 6)
!346 = !DILocation(line: 127, column: 33, scope: !345)
!347 = !DILocation(line: 127, column: 39, scope: !345)
!348 = !DILocation(line: 127, column: 18, scope: !345)
!349 = !DILocation(line: 127, column: 16, scope: !345)
!350 = !DILocation(line: 127, column: 9, scope: !345)
!351 = !DILocation(line: 127, column: 6, scope: !321)
!352 = !DILocation(line: 129, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !345, file: !109, line: 127, column: 51)
!354 = !DILocation(line: 129, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !109, line: 129, column: 3)
!356 = distinct !DILexicalBlock(scope: !353, file: !109, line: 129, column: 3)
!357 = !DILocation(line: 129, column: 3, scope: !356)
!358 = !DILocation(line: 132, column: 3, scope: !353)
!359 = !DILocation(line: 132, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !109, line: 132, column: 3)
!361 = distinct !DILexicalBlock(scope: !353, file: !109, line: 132, column: 3)
!362 = !DILocation(line: 132, column: 3, scope: !361)
!363 = !DILocation(line: 134, column: 2, scope: !353)
!364 = !DILocation(line: 135, column: 9, scope: !321)
!365 = !DILocation(line: 135, column: 2, scope: !321)
!366 = !DILocation(line: 136, column: 1, scope: !321)
!367 = distinct !DISubprogram(name: "fdevent_dup_cloexec", scope: !109, file: !109, line: 138, type: !217, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!368 = !{!369}
!369 = !DILocalVariable(name: "fd", arg: 1, scope: !367, file: !109, line: 138, type: !101)
!370 = !DILocation(line: 138, column: 30, scope: !367)
!371 = !DILocation(line: 140, column: 18, scope: !367)
!372 = !DILocation(line: 140, column: 12, scope: !367)
!373 = !DILocation(line: 140, column: 5, scope: !367)
!374 = distinct !DISubprogram(name: "fdevent_open_cloexec", scope: !109, file: !109, line: 174, type: !375, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!375 = !DISubroutineType(types: !376)
!376 = !{!101, !238, !101, !101, !377}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !103, line: 69, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !92, line: 150, baseType: !7)
!379 = !{!380, !381, !382, !383}
!380 = !DILocalVariable(name: "pathname", arg: 1, scope: !374, file: !109, line: 174, type: !238)
!381 = !DILocalVariable(name: "symlinks", arg: 2, scope: !374, file: !109, line: 174, type: !101)
!382 = !DILocalVariable(name: "flags", arg: 3, scope: !374, file: !109, line: 174, type: !101)
!383 = !DILocalVariable(name: "mode", arg: 4, scope: !374, file: !109, line: 174, type: !377)
!384 = !{!385, !385, i64 0}
!385 = !{!"any pointer", !185, i64 0}
!386 = !DILocation(line: 174, column: 38, scope: !374)
!387 = !DILocation(line: 174, column: 52, scope: !374)
!388 = !DILocation(line: 174, column: 66, scope: !374)
!389 = !DILocation(line: 174, column: 80, scope: !374)
!390 = !DILocation(line: 175, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !374, file: !109, line: 175, column: 6)
!392 = !DILocation(line: 175, column: 6, scope: !374)
!393 = !DILocation(line: 175, column: 23, scope: !391)
!394 = !DILocation(line: 175, column: 17, scope: !391)
!395 = !DILocation(line: 177, column: 14, scope: !374)
!396 = !DILocation(line: 177, column: 24, scope: !374)
!397 = !DILocation(line: 177, column: 30, scope: !374)
!398 = !DILocation(line: 177, column: 42, scope: !374)
!399 = !DILocation(line: 177, column: 61, scope: !374)
!400 = !DILocation(line: 177, column: 9, scope: !374)
!401 = !DILocation(line: 177, column: 2, scope: !374)
!402 = !DISubprogram(name: "open", linkageName: "open64", scope: !212, file: !212, line: 184, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubroutineType(types: !404)
!404 = !{!101, !238, !101, null}
!405 = distinct !DISubprogram(name: "fdevent_open_devnull", scope: !109, file: !109, line: 189, type: !406, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!406 = !DISubroutineType(types: !407)
!407 = !{!101}
!408 = !DILocation(line: 195, column: 12, scope: !405)
!409 = !DILocation(line: 195, column: 5, scope: !405)
!410 = distinct !DISubprogram(name: "fdevent_open_dirname", scope: !109, file: !109, line: 200, type: !411, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!411 = !DISubroutineType(types: !412)
!412 = !{!101, !413, !101}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!414 = !{!415, !416, !417, !419, !421, !422}
!415 = !DILocalVariable(name: "path", arg: 1, scope: !410, file: !109, line: 200, type: !413)
!416 = !DILocalVariable(name: "symlinks", arg: 2, scope: !410, file: !109, line: 200, type: !101)
!417 = !DILocalVariable(name: "c", scope: !410, file: !109, line: 202, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!419 = !DILocalVariable(name: "dname", scope: !410, file: !109, line: 203, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!421 = !DILocalVariable(name: "dfd", scope: !410, file: !109, line: 204, type: !101)
!422 = !DILocalVariable(name: "flags", scope: !410, file: !109, line: 205, type: !101)
!423 = !DILocation(line: 200, column: 32, scope: !410)
!424 = !DILocation(line: 200, column: 42, scope: !410)
!425 = !DILocation(line: 202, column: 5, scope: !410)
!426 = !DILocation(line: 202, column: 18, scope: !410)
!427 = !DILocation(line: 202, column: 30, scope: !410)
!428 = !DILocation(line: 202, column: 22, scope: !410)
!429 = !DILocation(line: 203, column: 5, scope: !410)
!430 = !DILocation(line: 203, column: 24, scope: !410)
!431 = !DILocation(line: 203, column: 41, scope: !410)
!432 = !DILocation(line: 203, column: 38, scope: !410)
!433 = !DILocation(line: 203, column: 33, scope: !410)
!434 = !DILocation(line: 203, column: 45, scope: !410)
!435 = !DILocation(line: 203, column: 50, scope: !410)
!436 = !DILocation(line: 203, column: 47, scope: !410)
!437 = !DILocation(line: 203, column: 63, scope: !410)
!438 = !DILocation(line: 204, column: 5, scope: !410)
!439 = !DILocation(line: 204, column: 9, scope: !410)
!440 = !DILocation(line: 205, column: 5, scope: !410)
!441 = !DILocation(line: 205, column: 9, scope: !410)
!442 = !DILocation(line: 207, column: 11, scope: !410)
!443 = !DILocation(line: 209, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !410, file: !109, line: 209, column: 9)
!445 = !DILocation(line: 209, column: 14, scope: !444)
!446 = !DILocation(line: 209, column: 9, scope: !410)
!447 = !DILocation(line: 209, column: 21, scope: !444)
!448 = !DILocation(line: 209, column: 23, scope: !444)
!449 = !{!185, !185, i64 0}
!450 = !DILocation(line: 209, column: 20, scope: !444)
!451 = !DILocation(line: 210, column: 32, scope: !410)
!452 = !DILocation(line: 210, column: 39, scope: !410)
!453 = !DILocation(line: 210, column: 49, scope: !410)
!454 = !DILocation(line: 210, column: 11, scope: !410)
!455 = !DILocation(line: 210, column: 9, scope: !410)
!456 = !DILocation(line: 211, column: 17, scope: !457)
!457 = distinct !DILexicalBlock(scope: !410, file: !109, line: 211, column: 9)
!458 = !DILocation(line: 211, column: 14, scope: !457)
!459 = !DILocation(line: 211, column: 9, scope: !410)
!460 = !DILocation(line: 211, column: 21, scope: !457)
!461 = !DILocation(line: 211, column: 23, scope: !457)
!462 = !DILocation(line: 211, column: 20, scope: !457)
!463 = !DILocation(line: 212, column: 12, scope: !410)
!464 = !DILocation(line: 213, column: 1, scope: !410)
!465 = !DILocation(line: 212, column: 5, scope: !410)
!466 = !DISubprogram(name: "strrchr", scope: !467, file: !467, line: 273, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!468 = !DISubroutineType(types: !469)
!469 = !{!413, !238, !101}
!470 = distinct !DISubprogram(name: "fdevent_pipe_cloexec", scope: !109, file: !109, line: 220, type: !471, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !476)
!471 = !DISubroutineType(types: !472)
!472 = !{!101, !473, !475}
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "fds", arg: 1, scope: !470, file: !109, line: 220, type: !473)
!478 = !DILocalVariable(name: "bufsz_hint", arg: 2, scope: !470, file: !109, line: 220, type: !475)
!479 = !DILocation(line: 220, column: 39, scope: !470)
!480 = !DILocation(line: 220, column: 63, scope: !470)
!481 = !DILocation(line: 225, column: 20, scope: !482)
!482 = distinct !DILexicalBlock(scope: !470, file: !109, line: 225, column: 9)
!483 = !DILocation(line: 225, column: 14, scope: !482)
!484 = !DILocation(line: 225, column: 11, scope: !482)
!485 = !DILocation(line: 225, column: 9, scope: !470)
!486 = !DILocation(line: 228, column: 23, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !109, line: 228, column: 13)
!488 = distinct !DILexicalBlock(scope: !482, file: !109, line: 227, column: 5)
!489 = !DILocation(line: 228, column: 18, scope: !487)
!490 = !DILocation(line: 228, column: 15, scope: !487)
!491 = !DILocation(line: 230, column: 10, scope: !487)
!492 = !DILocation(line: 230, column: 24, scope: !487)
!493 = !DILocation(line: 230, column: 18, scope: !487)
!494 = !DILocation(line: 230, column: 15, scope: !487)
!495 = !DILocation(line: 231, column: 10, scope: !487)
!496 = !DILocation(line: 231, column: 24, scope: !487)
!497 = !DILocation(line: 231, column: 18, scope: !487)
!498 = !DILocation(line: 231, column: 15, scope: !487)
!499 = !DILocation(line: 228, column: 13, scope: !488)
!500 = !DILocation(line: 234, column: 13, scope: !487)
!501 = !DILocation(line: 235, column: 5, scope: !488)
!502 = !DILocation(line: 237, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !470, file: !109, line: 237, column: 9)
!504 = !DILocation(line: 237, column: 20, scope: !503)
!505 = !DILocation(line: 237, column: 9, scope: !470)
!506 = !DILocation(line: 238, column: 24, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !109, line: 238, column: 13)
!508 = !DILocation(line: 238, column: 46, scope: !507)
!509 = !DILocation(line: 238, column: 18, scope: !507)
!510 = !DILocation(line: 238, column: 15, scope: !507)
!511 = !DILocation(line: 238, column: 13, scope: !503)
!512 = !DILocation(line: 238, column: 61, scope: !513)
!513 = distinct !DILexicalBlock(scope: !507, file: !109, line: 238, column: 59)
!514 = !DILocation(line: 238, column: 56, scope: !507)
!515 = !DILocation(line: 242, column: 5, scope: !470)
!516 = !DILocation(line: 244, column: 1, scope: !470)
!517 = !DISubprogram(name: "pipe2", scope: !216, file: !216, line: 442, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubroutineType(types: !519)
!519 = !{!101, !474, !101}
!520 = !DISubprogram(name: "pipe", scope: !216, file: !216, line: 437, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = !DISubroutineType(types: !522)
!522 = !{!101, !474}
!523 = distinct !DISubprogram(name: "fdevent_mkostemp", scope: !109, file: !109, line: 247, type: !411, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!524 = !{!525, !526}
!525 = !DILocalVariable(name: "path", arg: 1, scope: !523, file: !109, line: 247, type: !413)
!526 = !DILocalVariable(name: "flags", arg: 2, scope: !523, file: !109, line: 247, type: !101)
!527 = !DILocation(line: 247, column: 28, scope: !523)
!528 = !DILocation(line: 247, column: 38, scope: !523)
!529 = !DILocation(line: 259, column: 21, scope: !523)
!530 = !DILocation(line: 259, column: 39, scope: !523)
!531 = !DILocation(line: 259, column: 37, scope: !523)
!532 = !DILocation(line: 259, column: 12, scope: !523)
!533 = !DILocation(line: 259, column: 5, scope: !523)
!534 = !DISubprogram(name: "mkostemp", linkageName: "mkostemp64", scope: !535, file: !535, line: 752, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!536 = distinct !DISubprogram(name: "fdevent_accept_listenfd", scope: !109, file: !109, line: 297, type: !537, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!537 = !DISubroutineType(types: !538)
!538 = !{!101, !101, !539, !550}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !19, line: 180, size: 128, elements: !541)
!541 = !{!542, !546}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !540, file: !19, line: 182, baseType: !543, size: 16)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !544, line: 28, baseType: !545)
!544 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!545 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !540, file: !19, line: 183, baseType: !547, size: 112, offset: 16)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 112, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 14)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!551 = !{!552, !553, !554, !555, !556, !557}
!552 = !DILocalVariable(name: "listenfd", arg: 1, scope: !536, file: !109, line: 297, type: !101)
!553 = !DILocalVariable(name: "addr", arg: 2, scope: !536, file: !109, line: 297, type: !539)
!554 = !DILocalVariable(name: "addrlen", arg: 3, scope: !536, file: !109, line: 297, type: !550)
!555 = !DILocalVariable(name: "fd", scope: !536, file: !109, line: 298, type: !101)
!556 = !DILocalVariable(name: "len", scope: !536, file: !109, line: 299, type: !90)
!557 = !DILocalVariable(name: "sock_cloexec", scope: !536, file: !109, line: 306, type: !101)
!558 = !DILocation(line: 297, column: 33, scope: !536)
!559 = !DILocation(line: 297, column: 60, scope: !536)
!560 = !DILocation(line: 297, column: 74, scope: !536)
!561 = !DILocation(line: 298, column: 2, scope: !536)
!562 = !DILocation(line: 298, column: 6, scope: !536)
!563 = !DILocation(line: 299, column: 2, scope: !536)
!564 = !DILocation(line: 299, column: 12, scope: !536)
!565 = !DILocation(line: 299, column: 31, scope: !536)
!566 = !DILocation(line: 299, column: 30, scope: !536)
!567 = !{!568, !568, i64 0}
!568 = !{!"long", !185, i64 0}
!569 = !DILocation(line: 299, column: 18, scope: !536)
!570 = !DILocation(line: 306, column: 2, scope: !536)
!571 = !DILocation(line: 306, column: 6, scope: !536)
!572 = !DILocation(line: 306, column: 21, scope: !536)
!573 = !DILocation(line: 307, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !536, file: !109, line: 307, column: 6)
!575 = !DILocation(line: 307, column: 6, scope: !536)
!576 = !DILocation(line: 308, column: 16, scope: !577)
!577 = distinct !DILexicalBlock(scope: !574, file: !109, line: 307, column: 20)
!578 = !DILocation(line: 308, column: 8, scope: !577)
!579 = !DILocation(line: 308, column: 26, scope: !577)
!580 = !DILocation(line: 308, column: 6, scope: !577)
!581 = !DILocation(line: 309, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !577, file: !109, line: 309, column: 7)
!583 = !DILocation(line: 309, column: 10, scope: !582)
!584 = !DILocation(line: 309, column: 7, scope: !577)
!585 = !DILocation(line: 310, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !109, line: 310, column: 8)
!587 = distinct !DILexicalBlock(scope: !582, file: !109, line: 309, column: 16)
!588 = !DILocation(line: 310, column: 8, scope: !587)
!589 = !DILocation(line: 311, column: 35, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !109, line: 311, column: 9)
!591 = distinct !DILexicalBlock(scope: !586, file: !109, line: 310, column: 28)
!592 = !DILocation(line: 311, column: 14, scope: !590)
!593 = !DILocation(line: 311, column: 11, scope: !590)
!594 = !DILocation(line: 311, column: 9, scope: !591)
!595 = !DILocation(line: 312, column: 12, scope: !596)
!596 = distinct !DILexicalBlock(scope: !590, file: !109, line: 311, column: 40)
!597 = !DILocation(line: 312, column: 6, scope: !596)
!598 = !DILocation(line: 313, column: 9, scope: !596)
!599 = !DILocation(line: 314, column: 5, scope: !596)
!600 = !DILocation(line: 315, column: 4, scope: !591)
!601 = !DILocation(line: 316, column: 3, scope: !587)
!602 = !DILocation(line: 318, column: 12, scope: !603)
!603 = distinct !DILexicalBlock(scope: !582, file: !109, line: 317, column: 8)
!604 = !DILocation(line: 318, column: 4, scope: !603)
!605 = !DILocation(line: 322, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !109, line: 318, column: 19)
!607 = !DILocation(line: 322, column: 10, scope: !606)
!608 = !DILocation(line: 322, column: 27, scope: !606)
!609 = !DILocation(line: 322, column: 8, scope: !606)
!610 = !DILocation(line: 323, column: 18, scope: !606)
!611 = !DILocation(line: 324, column: 5, scope: !606)
!612 = !DILocation(line: 326, column: 5, scope: !606)
!613 = !DILocation(line: 329, column: 2, scope: !577)
!614 = !DILocation(line: 331, column: 15, scope: !615)
!615 = distinct !DILexicalBlock(scope: !574, file: !109, line: 330, column: 7)
!616 = !DILocation(line: 331, column: 8, scope: !615)
!617 = !DILocation(line: 331, column: 25, scope: !615)
!618 = !DILocation(line: 331, column: 6, scope: !615)
!619 = !DILocation(line: 339, column: 6, scope: !620)
!620 = distinct !DILexicalBlock(scope: !536, file: !109, line: 339, column: 6)
!621 = !DILocation(line: 339, column: 9, scope: !620)
!622 = !DILocation(line: 339, column: 6, scope: !536)
!623 = !DILocation(line: 340, column: 22, scope: !624)
!624 = distinct !DILexicalBlock(scope: !620, file: !109, line: 339, column: 15)
!625 = !DILocation(line: 340, column: 14, scope: !624)
!626 = !DILocation(line: 340, column: 4, scope: !624)
!627 = !DILocation(line: 340, column: 12, scope: !624)
!628 = !DILocation(line: 341, column: 8, scope: !629)
!629 = distinct !DILexicalBlock(scope: !624, file: !109, line: 341, column: 7)
!630 = !DILocation(line: 341, column: 21, scope: !629)
!631 = !DILocation(line: 341, column: 58, scope: !629)
!632 = !DILocation(line: 341, column: 29, scope: !629)
!633 = !DILocation(line: 341, column: 26, scope: !629)
!634 = !DILocation(line: 341, column: 7, scope: !624)
!635 = !DILocation(line: 342, column: 10, scope: !636)
!636 = distinct !DILexicalBlock(scope: !629, file: !109, line: 341, column: 63)
!637 = !DILocation(line: 342, column: 4, scope: !636)
!638 = !DILocation(line: 343, column: 7, scope: !636)
!639 = !DILocation(line: 344, column: 3, scope: !636)
!640 = !DILocation(line: 345, column: 2, scope: !624)
!641 = !DILocation(line: 346, column: 9, scope: !536)
!642 = !DILocation(line: 347, column: 1, scope: !536)
!643 = !DILocation(line: 346, column: 2, scope: !536)
!644 = !DISubprogram(name: "accept4", scope: !208, file: !208, line: 314, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DISubroutineType(types: !646)
!646 = !{!101, !101, !647, !747, !101}
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__SOCKADDR_ARG", file: !208, line: 80, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !208, line: 79, size: 64, elements: !649)
!649 = !{!650, !652, !656, !660, !664, !668, !689, !716, !720, !724, !728, !732, !743}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr__", scope: !648, file: !208, line: 79, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !539)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_at__", scope: !648, file: !208, line: 79, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_at", file: !208, line: 79, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ax25__", scope: !648, file: !208, line: 79, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ax25", file: !208, line: 79, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_dl__", scope: !648, file: !208, line: 79, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_dl", file: !208, line: 79, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_eon__", scope: !648, file: !208, line: 79, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_eon", file: !208, line: 79, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in__", scope: !648, file: !208, line: 79, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !58, line: 245, size: 128, elements: !672)
!672 = !{!673, !674, !679, !686}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !671, file: !58, line: 247, baseType: !543, size: 16)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !671, file: !58, line: 248, baseType: !675, size: 16, offset: 16)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !58, line: 123, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !677, line: 25, baseType: !678)
!677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !92, line: 40, baseType: !545)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !671, file: !58, line: 249, baseType: !680, size: 32, offset: 32)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !58, line: 31, size: 32, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !680, file: !58, line: 33, baseType: !683, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !58, line: 30, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !677, line: 26, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !92, line: 42, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !671, file: !58, line: 252, baseType: !687, size: 64, offset: 64)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 64, elements: !141)
!688 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_in6__", scope: !648, file: !208, line: 79, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !58, line: 260, size: 224, elements: !693)
!693 = !{!694, !695, !696, !697, !715}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !692, file: !58, line: 262, baseType: !543, size: 16)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !692, file: !58, line: 263, baseType: !675, size: 16, offset: 16)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !692, file: !58, line: 264, baseType: !684, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !692, file: !58, line: 265, baseType: !698, size: 128, offset: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !58, line: 219, size: 128, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !698, file: !58, line: 226, baseType: !701, size: 128)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !698, file: !58, line: 221, size: 128, elements: !702)
!702 = !{!703, !709, !711}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !701, file: !58, line: 223, baseType: !704, size: 128)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 128, elements: !707)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !677, line: 24, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !92, line: 38, baseType: !688)
!707 = !{!708}
!708 = !DISubrange(count: 16)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !701, file: !58, line: 224, baseType: !710, size: 128)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 128, elements: !141)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !701, file: !58, line: 225, baseType: !712, size: 128)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 4)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !692, file: !58, line: 266, baseType: !684, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_inarp__", scope: !648, file: !208, line: 79, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_inarp", file: !208, line: 79, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ipx__", scope: !648, file: !208, line: 79, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ipx", file: !208, line: 79, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_iso__", scope: !648, file: !208, line: 79, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_iso", file: !208, line: 79, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_ns__", scope: !648, file: !208, line: 79, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ns", file: !208, line: 79, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_un__", scope: !648, file: !208, line: 79, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !736, line: 29, size: 880, elements: !737)
!736 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !735, file: !736, line: 31, baseType: !543, size: 16)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !735, file: !736, line: 32, baseType: !740, size: 864, offset: 16)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 864, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 108)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__sockaddr_x25__", scope: !648, file: !208, line: 79, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !745)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_x25", file: !208, line: 79, flags: DIFlagFwdDecl)
!747 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!749 = !DISubprogram(name: "__errno_location", scope: !750, file: !750, line: 37, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!751 = !DISubroutineType(types: !752)
!752 = !{!474}
!753 = !DISubprogram(name: "accept", scope: !208, file: !208, line: 306, type: !754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{!101, !101, !647, !747}
!756 = distinct !DISubprogram(name: "fdevent_environ", scope: !109, file: !109, line: 356, type: !757, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!757 = !DISubroutineType(types: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!760 = !DILocation(line: 356, column: 41, scope: !756)
!761 = !DILocation(line: 356, column: 34, scope: !756)
!762 = distinct !DISubprogram(name: "fdevent_set_stdin_stdout_stderr", scope: !109, file: !109, line: 386, type: !209, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !763)
!763 = !{!764, !765, !766}
!764 = !DILocalVariable(name: "fdin", arg: 1, scope: !762, file: !109, line: 386, type: !101)
!765 = !DILocalVariable(name: "fdout", arg: 2, scope: !762, file: !109, line: 386, type: !101)
!766 = !DILocalVariable(name: "fderr", arg: 3, scope: !762, file: !109, line: 386, type: !101)
!767 = !DILocation(line: 386, column: 41, scope: !762)
!768 = !DILocation(line: 386, column: 51, scope: !762)
!769 = !DILocation(line: 386, column: 62, scope: !762)
!770 = !DILocation(line: 388, column: 58, scope: !771)
!771 = distinct !DILexicalBlock(scope: !762, file: !109, line: 388, column: 9)
!772 = !DILocation(line: 388, column: 25, scope: !771)
!773 = !DILocation(line: 388, column: 22, scope: !771)
!774 = !DILocation(line: 388, column: 9, scope: !762)
!775 = !DILocation(line: 389, column: 9, scope: !771)
!776 = !DILocation(line: 390, column: 59, scope: !777)
!777 = distinct !DILexicalBlock(scope: !762, file: !109, line: 390, column: 9)
!778 = !DILocation(line: 390, column: 26, scope: !777)
!779 = !DILocation(line: 390, column: 23, scope: !777)
!780 = !DILocation(line: 390, column: 9, scope: !762)
!781 = !DILocation(line: 391, column: 9, scope: !777)
!782 = !DILocation(line: 392, column: 59, scope: !783)
!783 = distinct !DILexicalBlock(scope: !762, file: !109, line: 392, column: 9)
!784 = !DILocation(line: 392, column: 26, scope: !783)
!785 = !DILocation(line: 392, column: 23, scope: !783)
!786 = !DILocation(line: 392, column: 9, scope: !762)
!787 = !DILocation(line: 393, column: 9, scope: !783)
!788 = !DILocation(line: 407, column: 5, scope: !762)
!789 = !DILocation(line: 408, column: 1, scope: !762)
!790 = distinct !DISubprogram(name: "fdevent_dup2_close_clrfd_cloexec", scope: !109, file: !109, line: 360, type: !791, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!101, !101, !101}
!793 = !{!794, !795}
!794 = !DILocalVariable(name: "oldfd", arg: 1, scope: !790, file: !109, line: 360, type: !101)
!795 = !DILocalVariable(name: "newfd", arg: 2, scope: !790, file: !109, line: 360, type: !101)
!796 = !DILocation(line: 360, column: 49, scope: !790)
!797 = !DILocation(line: 360, column: 60, scope: !790)
!798 = !DILocation(line: 361, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !790, file: !109, line: 361, column: 9)
!800 = !DILocation(line: 361, column: 15, scope: !799)
!801 = !DILocation(line: 361, column: 9, scope: !790)
!802 = !DILocation(line: 362, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !109, line: 362, column: 13)
!804 = distinct !DILexicalBlock(scope: !799, file: !109, line: 361, column: 21)
!805 = !DILocation(line: 362, column: 22, scope: !803)
!806 = !DILocation(line: 362, column: 19, scope: !803)
!807 = !DILocation(line: 362, column: 13, scope: !804)
!808 = !DILocation(line: 363, column: 13, scope: !809)
!809 = distinct !DILexicalBlock(scope: !803, file: !109, line: 362, column: 29)
!810 = !DILocation(line: 363, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !109, line: 363, column: 13)
!812 = distinct !DILexicalBlock(scope: !809, file: !109, line: 363, column: 13)
!813 = !DILocation(line: 363, column: 13, scope: !812)
!814 = !DILocation(line: 364, column: 17, scope: !815)
!815 = distinct !DILexicalBlock(scope: !809, file: !109, line: 364, column: 17)
!816 = !DILocation(line: 364, column: 31, scope: !815)
!817 = !DILocation(line: 364, column: 38, scope: !815)
!818 = !DILocation(line: 364, column: 26, scope: !815)
!819 = !DILocation(line: 364, column: 23, scope: !815)
!820 = !DILocation(line: 364, column: 17, scope: !809)
!821 = !DILocation(line: 364, column: 46, scope: !815)
!822 = !DILocation(line: 365, column: 9, scope: !809)
!823 = !DILocation(line: 367, column: 35, scope: !824)
!824 = distinct !DILexicalBlock(scope: !803, file: !109, line: 366, column: 14)
!825 = !DILocation(line: 367, column: 13, scope: !824)
!826 = !DILocation(line: 369, column: 5, scope: !804)
!827 = !DILocation(line: 370, column: 12, scope: !790)
!828 = !DILocation(line: 370, column: 5, scope: !790)
!829 = !DILocation(line: 371, column: 1, scope: !790)
!830 = distinct !DISubprogram(name: "fdevent_rename", scope: !109, file: !109, line: 415, type: !831, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!101, !238, !238}
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "oldpath", arg: 1, scope: !830, file: !109, line: 415, type: !238)
!835 = !DILocalVariable(name: "newpath", arg: 2, scope: !830, file: !109, line: 415, type: !238)
!836 = !DILocation(line: 415, column: 32, scope: !830)
!837 = !DILocation(line: 415, column: 53, scope: !830)
!838 = !DILocation(line: 416, column: 19, scope: !830)
!839 = !DILocation(line: 416, column: 28, scope: !830)
!840 = !DILocation(line: 416, column: 12, scope: !830)
!841 = !DILocation(line: 416, column: 5, scope: !830)
!842 = !DISubprogram(name: "rename", scope: !843, file: !843, line: 154, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!843 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!844 = distinct !DISubprogram(name: "fdevent_fork_execve", scope: !109, file: !109, line: 420, type: !845, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !238, !759, !759, !101, !101, !101, !101}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 97, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !92, line: 154, baseType: !101)
!849 = !{!850, !851, !852, !853, !854, !855, !856, !857, !858, !859}
!850 = !DILocalVariable(name: "name", arg: 1, scope: !844, file: !109, line: 420, type: !238)
!851 = !DILocalVariable(name: "argv", arg: 2, scope: !844, file: !109, line: 420, type: !759)
!852 = !DILocalVariable(name: "envp", arg: 3, scope: !844, file: !109, line: 420, type: !759)
!853 = !DILocalVariable(name: "fdin", arg: 4, scope: !844, file: !109, line: 420, type: !101)
!854 = !DILocalVariable(name: "fdout", arg: 5, scope: !844, file: !109, line: 420, type: !101)
!855 = !DILocalVariable(name: "fderr", arg: 6, scope: !844, file: !109, line: 420, type: !101)
!856 = !DILocalVariable(name: "dfd", arg: 7, scope: !844, file: !109, line: 420, type: !101)
!857 = !DILocalVariable(name: "pid", scope: !844, file: !109, line: 423, type: !847)
!858 = !DILocalVariable(name: "errnum", scope: !844, file: !109, line: 455, type: !101)
!859 = !DILocalVariable(name: "argnum", scope: !844, file: !109, line: 456, type: !101)
!860 = !DILocation(line: 420, column: 39, scope: !844)
!861 = !DILocation(line: 420, column: 51, scope: !844)
!862 = !DILocation(line: 420, column: 65, scope: !844)
!863 = !DILocation(line: 420, column: 77, scope: !844)
!864 = !DILocation(line: 420, column: 87, scope: !844)
!865 = !DILocation(line: 420, column: 98, scope: !844)
!866 = !DILocation(line: 420, column: 109, scope: !844)
!867 = !DILocation(line: 423, column: 5, scope: !844)
!868 = !DILocation(line: 423, column: 11, scope: !844)
!869 = !DILocation(line: 423, column: 17, scope: !844)
!870 = !DILocation(line: 424, column: 14, scope: !871)
!871 = distinct !DILexicalBlock(scope: !844, file: !109, line: 424, column: 9)
!872 = !DILocation(line: 424, column: 11, scope: !871)
!873 = !DILocation(line: 424, column: 9, scope: !844)
!874 = !DILocation(line: 424, column: 26, scope: !871)
!875 = !DILocation(line: 475, column: 1, scope: !844)
!876 = !DILocation(line: 424, column: 19, scope: !871)
!877 = !DILocation(line: 428, column: 15, scope: !878)
!878 = distinct !DILexicalBlock(scope: !844, file: !109, line: 428, column: 9)
!879 = !DILocation(line: 428, column: 12, scope: !878)
!880 = !DILocation(line: 428, column: 9, scope: !844)
!881 = !DILocation(line: 429, column: 25, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !109, line: 429, column: 13)
!883 = distinct !DILexicalBlock(scope: !878, file: !109, line: 428, column: 20)
!884 = !DILocation(line: 429, column: 18, scope: !882)
!885 = !DILocation(line: 429, column: 15, scope: !882)
!886 = !DILocation(line: 429, column: 13, scope: !883)
!887 = !DILocation(line: 430, column: 19, scope: !882)
!888 = !DILocation(line: 430, column: 13, scope: !882)
!889 = !DILocation(line: 431, column: 15, scope: !883)
!890 = !DILocation(line: 431, column: 9, scope: !883)
!891 = !DILocation(line: 432, column: 5, scope: !883)
!892 = !DILocation(line: 434, column: 46, scope: !893)
!893 = distinct !DILexicalBlock(scope: !844, file: !109, line: 434, column: 9)
!894 = !DILocation(line: 434, column: 52, scope: !893)
!895 = !DILocation(line: 434, column: 59, scope: !893)
!896 = !DILocation(line: 434, column: 14, scope: !893)
!897 = !DILocation(line: 434, column: 11, scope: !893)
!898 = !DILocation(line: 434, column: 9, scope: !844)
!899 = !DILocation(line: 434, column: 73, scope: !893)
!900 = !DILocation(line: 434, column: 67, scope: !893)
!901 = !DILocation(line: 442, column: 5, scope: !844)
!902 = !DILocation(line: 445, column: 5, scope: !844)
!903 = !DILocation(line: 448, column: 5, scope: !844)
!904 = !DILocation(line: 450, column: 5, scope: !844)
!905 = !DILocation(line: 451, column: 5, scope: !844)
!906 = !DILocation(line: 453, column: 12, scope: !844)
!907 = !DILocation(line: 453, column: 18, scope: !844)
!908 = !DILocation(line: 453, column: 24, scope: !844)
!909 = !DILocation(line: 453, column: 31, scope: !844)
!910 = !DILocation(line: 453, column: 38, scope: !844)
!911 = !DILocation(line: 453, column: 5, scope: !844)
!912 = !DILocation(line: 455, column: 5, scope: !844)
!913 = !DILocation(line: 455, column: 9, scope: !844)
!914 = !DILocation(line: 455, column: 18, scope: !844)
!915 = !DILocation(line: 456, column: 5, scope: !844)
!916 = !DILocation(line: 456, column: 9, scope: !844)
!917 = !DILocation(line: 457, column: 20, scope: !844)
!918 = !DILocation(line: 457, column: 13, scope: !844)
!919 = !DILocation(line: 457, column: 10, scope: !844)
!920 = !DILocation(line: 457, column: 40, scope: !844)
!921 = !DILocation(line: 457, column: 43, scope: !844)
!922 = !DILocation(line: 457, column: 51, scope: !844)
!923 = !DILocation(line: 457, column: 66, scope: !844)
!924 = !DILocation(line: 457, column: 59, scope: !844)
!925 = !DILocation(line: 457, column: 56, scope: !844)
!926 = !DILocation(line: 0, scope: !844)
!927 = !DILocation(line: 457, column: 7, scope: !844)
!928 = !DILocation(line: 460, column: 12, scope: !844)
!929 = !DILocation(line: 460, column: 17, scope: !844)
!930 = !DILocation(line: 460, column: 5, scope: !844)
!931 = !DILocation(line: 461, column: 11, scope: !844)
!932 = !DILocation(line: 461, column: 5, scope: !844)
!933 = !DISubprogram(name: "fork", scope: !216, file: !216, line: 778, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DISubroutineType(types: !935)
!935 = !{!848}
!936 = !DISubprogram(name: "fchdir", scope: !216, file: !216, line: 521, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DISubprogram(name: "_exit", scope: !216, file: !216, line: 624, type: !99, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!938 = !DISubprogram(name: "signal", scope: !97, file: !97, line: 88, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{!96, !101, !96}
!941 = !DISubprogram(name: "execve", scope: !216, file: !216, line: 572, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubroutineType(types: !943)
!943 = !{!101, !238, !944, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!945 = !DISubprogram(name: "strcmp", scope: !467, file: !467, line: 156, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DISubprogram(name: "perror", scope: !843, file: !843, line: 804, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !238}
!949 = distinct !DISubprogram(name: "fdevent_waitpid", scope: !109, file: !109, line: 482, type: !950, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{!101, !847, !473, !101}
!952 = !{!953, !954, !955, !956, !958}
!953 = !DILocalVariable(name: "pid", arg: 1, scope: !949, file: !109, line: 482, type: !847)
!954 = !DILocalVariable(name: "status", arg: 2, scope: !949, file: !109, line: 482, type: !473)
!955 = !DILocalVariable(name: "nb", arg: 3, scope: !949, file: !109, line: 482, type: !101)
!956 = !DILocalVariable(name: "flags", scope: !949, file: !109, line: 483, type: !957)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!958 = !DILocalVariable(name: "rv", scope: !949, file: !109, line: 484, type: !847)
!959 = !DILocation(line: 482, column: 27, scope: !949)
!960 = !DILocation(line: 482, column: 44, scope: !949)
!961 = !DILocation(line: 482, column: 56, scope: !949)
!962 = !DILocation(line: 483, column: 5, scope: !949)
!963 = !DILocation(line: 483, column: 15, scope: !949)
!964 = !DILocation(line: 483, column: 23, scope: !949)
!965 = !DILocation(line: 484, column: 5, scope: !949)
!966 = !DILocation(line: 484, column: 11, scope: !949)
!967 = !DILocation(line: 485, column: 5, scope: !949)
!968 = !DILocation(line: 485, column: 23, scope: !969)
!969 = distinct !DILexicalBlock(scope: !949, file: !109, line: 485, column: 8)
!970 = !DILocation(line: 485, column: 28, scope: !969)
!971 = !DILocation(line: 485, column: 36, scope: !969)
!972 = !DILocation(line: 485, column: 15, scope: !969)
!973 = !DILocation(line: 485, column: 13, scope: !969)
!974 = !DILocation(line: 485, column: 44, scope: !969)
!975 = !DILocation(line: 485, column: 59, scope: !949)
!976 = !DILocation(line: 485, column: 56, scope: !949)
!977 = !DILocation(line: 485, column: 62, scope: !949)
!978 = !DILocation(line: 485, column: 65, scope: !949)
!979 = !DILocation(line: 485, column: 71, scope: !949)
!980 = !DILocation(line: 0, scope: !949)
!981 = distinct !{!981, !967, !982, !983}
!982 = !DILocation(line: 485, column: 79, scope: !949)
!983 = !{!"llvm.loop.mustprogress"}
!984 = !DILocation(line: 486, column: 12, scope: !949)
!985 = !DILocation(line: 487, column: 1, scope: !949)
!986 = !DILocation(line: 486, column: 5, scope: !949)
!987 = !DISubprogram(name: "waitpid", scope: !988, file: !988, line: 111, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!989 = !DISubroutineType(types: !990)
!990 = !{!848, !848, !474, !101}
!991 = distinct !DISubprogram(name: "fdevent_waitpid_intr", scope: !109, file: !109, line: 489, type: !992, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!101, !847, !473}
!994 = !{!995, !996}
!995 = !DILocalVariable(name: "pid", arg: 1, scope: !991, file: !109, line: 489, type: !847)
!996 = !DILocalVariable(name: "status", arg: 2, scope: !991, file: !109, line: 489, type: !473)
!997 = !DILocation(line: 489, column: 32, scope: !991)
!998 = !DILocation(line: 489, column: 49, scope: !991)
!999 = !DILocation(line: 490, column: 20, scope: !991)
!1000 = !DILocation(line: 490, column: 25, scope: !991)
!1001 = !DILocation(line: 490, column: 12, scope: !991)
!1002 = !DILocation(line: 490, column: 5, scope: !991)
!1003 = distinct !DISubprogram(name: "fdevent_socket_read_discard", scope: !109, file: !109, line: 502, type: !1004, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !101, !413, !93, !101, !101}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 108, baseType: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !92, line: 194, baseType: !105)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DILocalVariable(name: "fd", arg: 1, scope: !1003, file: !109, line: 502, type: !101)
!1010 = !DILocalVariable(name: "buf", arg: 2, scope: !1003, file: !109, line: 502, type: !413)
!1011 = !DILocalVariable(name: "sz", arg: 3, scope: !1003, file: !109, line: 502, type: !93)
!1012 = !DILocalVariable(name: "family", arg: 4, scope: !1003, file: !109, line: 502, type: !101)
!1013 = !DILocalVariable(name: "so_type", arg: 5, scope: !1003, file: !109, line: 502, type: !101)
!1014 = !DILocalVariable(name: "len", scope: !1015, file: !109, line: 505, type: !1006)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !109, line: 504, column: 78)
!1016 = distinct !DILexicalBlock(scope: !1003, file: !109, line: 504, column: 9)
!1017 = !DILocation(line: 502, column: 42, scope: !1003)
!1018 = !DILocation(line: 502, column: 52, scope: !1003)
!1019 = !DILocation(line: 502, column: 64, scope: !1003)
!1020 = !DILocation(line: 502, column: 72, scope: !1003)
!1021 = !DILocation(line: 502, column: 84, scope: !1003)
!1022 = !DILocation(line: 504, column: 10, scope: !1016)
!1023 = !DILocation(line: 504, column: 17, scope: !1016)
!1024 = !DILocation(line: 504, column: 28, scope: !1016)
!1025 = !DILocation(line: 504, column: 31, scope: !1016)
!1026 = !DILocation(line: 504, column: 38, scope: !1016)
!1027 = !DILocation(line: 504, column: 51, scope: !1016)
!1028 = !DILocation(line: 504, column: 54, scope: !1016)
!1029 = !DILocation(line: 504, column: 62, scope: !1016)
!1030 = !DILocation(line: 504, column: 9, scope: !1003)
!1031 = !DILocation(line: 505, column: 9, scope: !1015)
!1032 = !DILocation(line: 505, column: 17, scope: !1015)
!1033 = !DILocation(line: 505, column: 28, scope: !1015)
!1034 = !DILocation(line: 505, column: 32, scope: !1015)
!1035 = !DILocation(line: 505, column: 37, scope: !1015)
!1036 = !DILocation(line: 505, column: 23, scope: !1015)
!1037 = !DILocation(line: 506, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1015, file: !109, line: 506, column: 13)
!1039 = !DILocation(line: 506, column: 17, scope: !1038)
!1040 = !DILocation(line: 506, column: 22, scope: !1038)
!1041 = !DILocation(line: 506, column: 25, scope: !1038)
!1042 = !DILocation(line: 506, column: 31, scope: !1038)
!1043 = !DILocation(line: 506, column: 13, scope: !1015)
!1044 = !DILocation(line: 506, column: 49, scope: !1038)
!1045 = !DILocation(line: 506, column: 42, scope: !1038)
!1046 = !DILocation(line: 507, column: 5, scope: !1016)
!1047 = !DILocation(line: 507, column: 5, scope: !1015)
!1048 = !DILocation(line: 512, column: 17, scope: !1003)
!1049 = !DILocation(line: 512, column: 21, scope: !1003)
!1050 = !DILocation(line: 512, column: 26, scope: !1003)
!1051 = !DILocation(line: 512, column: 12, scope: !1003)
!1052 = !DILocation(line: 512, column: 5, scope: !1003)
!1053 = !DILocation(line: 513, column: 1, scope: !1003)
!1054 = !DISubprogram(name: "recv", scope: !208, file: !208, line: 145, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!1006, !101, !89, !93, !101}
!1057 = !DISubprogram(name: "read", scope: !216, file: !216, line: 371, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!1006, !101, !89, !93}
!1060 = distinct !DISubprogram(name: "fdevent_ioctl_fionread", scope: !109, file: !109, line: 523, type: !1061, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!101, !101, !101, !474}
!1063 = !{!1064, !1065, !1066}
!1064 = !DILocalVariable(name: "fd", arg: 1, scope: !1060, file: !109, line: 523, type: !101)
!1065 = !DILocalVariable(name: "fdfmt", arg: 2, scope: !1060, file: !109, line: 523, type: !101)
!1066 = !DILocalVariable(name: "toread", arg: 3, scope: !1060, file: !109, line: 523, type: !474)
!1067 = !DILocation(line: 523, column: 33, scope: !1060)
!1068 = !DILocation(line: 523, column: 41, scope: !1060)
!1069 = !DILocation(line: 523, column: 53, scope: !1060)
!1070 = !DILocation(line: 532, column: 5, scope: !1060)
!1071 = !DILocation(line: 534, column: 18, scope: !1060)
!1072 = !DILocation(line: 534, column: 32, scope: !1060)
!1073 = !DILocation(line: 534, column: 12, scope: !1060)
!1074 = !DILocation(line: 534, column: 5, scope: !1060)
!1075 = !DISubprogram(name: "ioctl", scope: !1076, file: !1076, line: 42, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/ioctl.h", directory: "", checksumkind: CSK_MD5, checksum: "17041ae374bfd0bee8350d01883d298c")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!101, !101, !95, null}
!1079 = distinct !DISubprogram(name: "fdevent_connect_status", scope: !109, file: !109, line: 539, type: !217, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DILocalVariable(name: "fd", arg: 1, scope: !1079, file: !109, line: 539, type: !101)
!1082 = !DILocalVariable(name: "opt", scope: !1079, file: !109, line: 542, type: !101)
!1083 = !DILocalVariable(name: "len", scope: !1079, file: !109, line: 543, type: !90)
!1084 = !DILocation(line: 539, column: 32, scope: !1079)
!1085 = !DILocation(line: 542, column: 5, scope: !1079)
!1086 = !DILocation(line: 542, column: 9, scope: !1079)
!1087 = !DILocation(line: 543, column: 5, scope: !1079)
!1088 = !DILocation(line: 543, column: 15, scope: !1079)
!1089 = !DILocation(line: 544, column: 29, scope: !1079)
!1090 = !DILocation(line: 544, column: 18, scope: !1079)
!1091 = !DILocation(line: 544, column: 15, scope: !1079)
!1092 = !DILocation(line: 544, column: 12, scope: !1079)
!1093 = !DILocation(line: 544, column: 66, scope: !1079)
!1094 = !DILocation(line: 544, column: 72, scope: !1079)
!1095 = !DILocation(line: 545, column: 1, scope: !1079)
!1096 = !DILocation(line: 544, column: 5, scope: !1079)
!1097 = !DISubprogram(name: "getsockopt", scope: !208, file: !208, line: 255, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!101, !101, !101, !101, !1100, !747}
!1100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!1101 = distinct !DISubprogram(name: "fdevent_is_tcp_half_closed", scope: !109, file: !109, line: 563, type: !217, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1102 = !{!1103, !1104, !1139}
!1103 = !DILocalVariable(name: "fd", arg: 1, scope: !1101, file: !109, line: 563, type: !101)
!1104 = !DILocalVariable(name: "tcpi", scope: !1101, file: !109, line: 577, type: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_info", file: !44, line: 226, size: 832, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_state", scope: !1105, file: !44, line: 228, baseType: !705, size: 8)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_ca_state", scope: !1105, file: !44, line: 229, baseType: !705, size: 8, offset: 8)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_retransmits", scope: !1105, file: !44, line: 230, baseType: !705, size: 8, offset: 16)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_probes", scope: !1105, file: !44, line: 231, baseType: !705, size: 8, offset: 24)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_backoff", scope: !1105, file: !44, line: 232, baseType: !705, size: 8, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_options", scope: !1105, file: !44, line: 233, baseType: !705, size: 8, offset: 40)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_wscale", scope: !1105, file: !44, line: 234, baseType: !705, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 48)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_wscale", scope: !1105, file: !44, line: 234, baseType: !705, size: 4, offset: 52, flags: DIFlagBitField, extraData: i64 48)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rto", scope: !1105, file: !44, line: 236, baseType: !684, size: 32, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_ato", scope: !1105, file: !44, line: 237, baseType: !684, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_mss", scope: !1105, file: !44, line: 238, baseType: !684, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_mss", scope: !1105, file: !44, line: 239, baseType: !684, size: 32, offset: 160)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_unacked", scope: !1105, file: !44, line: 241, baseType: !684, size: 32, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_sacked", scope: !1105, file: !44, line: 242, baseType: !684, size: 32, offset: 224)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_lost", scope: !1105, file: !44, line: 243, baseType: !684, size: 32, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_retrans", scope: !1105, file: !44, line: 244, baseType: !684, size: 32, offset: 288)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_fackets", scope: !1105, file: !44, line: 245, baseType: !684, size: 32, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_data_sent", scope: !1105, file: !44, line: 248, baseType: !684, size: 32, offset: 352)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_ack_sent", scope: !1105, file: !44, line: 249, baseType: !684, size: 32, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_data_recv", scope: !1105, file: !44, line: 250, baseType: !684, size: 32, offset: 416)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_last_ack_recv", scope: !1105, file: !44, line: 251, baseType: !684, size: 32, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_pmtu", scope: !1105, file: !44, line: 254, baseType: !684, size: 32, offset: 480)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_ssthresh", scope: !1105, file: !44, line: 255, baseType: !684, size: 32, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rtt", scope: !1105, file: !44, line: 256, baseType: !684, size: 32, offset: 544)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rttvar", scope: !1105, file: !44, line: 257, baseType: !684, size: 32, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_ssthresh", scope: !1105, file: !44, line: 258, baseType: !684, size: 32, offset: 608)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_snd_cwnd", scope: !1105, file: !44, line: 259, baseType: !684, size: 32, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_advmss", scope: !1105, file: !44, line: 260, baseType: !684, size: 32, offset: 672)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_reordering", scope: !1105, file: !44, line: 261, baseType: !684, size: 32, offset: 704)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_rtt", scope: !1105, file: !44, line: 263, baseType: !684, size: 32, offset: 736)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_rcv_space", scope: !1105, file: !44, line: 264, baseType: !684, size: 32, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "tcpi_total_retrans", scope: !1105, file: !44, line: 266, baseType: !684, size: 32, offset: 800)
!1139 = !DILocalVariable(name: "tlen", scope: !1101, file: !109, line: 578, type: !90)
!1140 = !DILocation(line: 563, column: 36, scope: !1101)
!1141 = !DILocation(line: 577, column: 5, scope: !1101)
!1142 = !DILocation(line: 577, column: 21, scope: !1101)
!1143 = !DILocation(line: 578, column: 5, scope: !1101)
!1144 = !DILocation(line: 578, column: 15, scope: !1101)
!1145 = !DILocation(line: 579, column: 29, scope: !1101)
!1146 = !DILocation(line: 579, column: 18, scope: !1101)
!1147 = !DILocation(line: 579, column: 15, scope: !1101)
!1148 = !DILocation(line: 580, column: 13, scope: !1101)
!1149 = !DILocation(line: 580, column: 21, scope: !1101)
!1150 = !{!1151, !185, i64 0}
!1151 = !{!"tcp_info", !185, i64 0, !185, i64 1, !185, i64 2, !185, i64 3, !185, i64 4, !185, i64 5, !185, i64 6, !185, i64 6, !184, i64 8, !184, i64 12, !184, i64 16, !184, i64 20, !184, i64 24, !184, i64 28, !184, i64 32, !184, i64 36, !184, i64 40, !184, i64 44, !184, i64 48, !184, i64 52, !184, i64 56, !184, i64 60, !184, i64 64, !184, i64 68, !184, i64 72, !184, i64 76, !184, i64 80, !184, i64 84, !184, i64 88, !184, i64 92, !184, i64 96, !184, i64 100}
!1152 = !DILocation(line: 580, column: 16, scope: !1101)
!1153 = !DILocation(line: 580, column: 32, scope: !1101)
!1154 = !DILocation(line: 0, scope: !1101)
!1155 = !DILocation(line: 587, column: 1, scope: !1101)
!1156 = !DILocation(line: 579, column: 5, scope: !1101)
!1157 = distinct !DISubprogram(name: "fdevent_set_tcp_nodelay", scope: !109, file: !109, line: 590, type: !1158, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!101, !957, !957}
!1160 = !{!1161, !1162}
!1161 = !DILocalVariable(name: "fd", arg: 1, scope: !1157, file: !109, line: 590, type: !957)
!1162 = !DILocalVariable(name: "opt", arg: 2, scope: !1157, file: !109, line: 590, type: !957)
!1163 = !DILocation(line: 590, column: 40, scope: !1157)
!1164 = !DILocation(line: 590, column: 54, scope: !1157)
!1165 = !DILocation(line: 592, column: 23, scope: !1157)
!1166 = !DILocation(line: 592, column: 12, scope: !1157)
!1167 = !DILocation(line: 592, column: 5, scope: !1157)
!1168 = !DISubprogram(name: "setsockopt", scope: !208, file: !208, line: 277, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!101, !101, !101, !101, !1171, !90}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1173 = distinct !DISubprogram(name: "fdevent_set_so_reuseaddr", scope: !109, file: !109, line: 596, type: !1158, scopeLine: 597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1174)
!1174 = !{!1175, !1176}
!1175 = !DILocalVariable(name: "fd", arg: 1, scope: !1173, file: !109, line: 596, type: !957)
!1176 = !DILocalVariable(name: "opt", arg: 2, scope: !1173, file: !109, line: 596, type: !957)
!1177 = !DILocation(line: 596, column: 41, scope: !1173)
!1178 = !DILocation(line: 596, column: 55, scope: !1173)
!1179 = !DILocation(line: 598, column: 23, scope: !1173)
!1180 = !DILocation(line: 598, column: 12, scope: !1173)
!1181 = !DILocation(line: 598, column: 5, scope: !1173)
!1182 = distinct !DISubprogram(name: "fdevent_load_file", scope: !109, file: !109, line: 607, type: !1183, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!413, !420, !1185, !1186, !1190, !1193}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "log_error_st", file: !1188, line: 29, baseType: !1189)
!1188 = !DIFile(filename: "spack-src/src/base_decls.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "8960b8ee22f07d697e266aa4c1b4b9fa")
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "fdlog_st", file: !1188, line: 27, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!89, !93}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !89}
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1241, !1244, !1245}
!1197 = !DILocalVariable(name: "fn", arg: 1, scope: !1182, file: !109, line: 607, type: !420)
!1198 = !DILocalVariable(name: "lim", arg: 2, scope: !1182, file: !109, line: 607, type: !1185)
!1199 = !DILocalVariable(name: "errh", arg: 3, scope: !1182, file: !109, line: 607, type: !1186)
!1200 = !DILocalVariable(name: "malloc_fn", arg: 4, scope: !1182, file: !109, line: 607, type: !1190)
!1201 = !DILocalVariable(name: "free_fn", arg: 5, scope: !1182, file: !109, line: 607, type: !1193)
!1202 = !DILocalVariable(name: "fd", scope: !1182, file: !109, line: 609, type: !101)
!1203 = !DILocalVariable(name: "sz", scope: !1182, file: !109, line: 610, type: !102)
!1204 = !DILocalVariable(name: "buf", scope: !1182, file: !109, line: 611, type: !413)
!1205 = !DILocalVariable(name: "st", scope: !1206, file: !109, line: 616, type: !1207)
!1206 = distinct !DILexicalBlock(scope: !1182, file: !109, line: 612, column: 8)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1208, line: 26, size: 1152, elements: !1209)
!1208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1209 = !{!1210, !1212, !1214, !1216, !1217, !1219, !1221, !1222, !1223, !1225, !1227, !1229, !1237, !1238, !1239}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1207, file: !1208, line: 31, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !92, line: 145, baseType: !95)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1207, file: !1208, line: 36, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !92, line: 148, baseType: !95)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1207, file: !1208, line: 44, baseType: !1215, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !92, line: 151, baseType: !95)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1207, file: !1208, line: 45, baseType: !378, size: 32, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1207, file: !1208, line: 47, baseType: !1218, size: 32, offset: 224)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !92, line: 146, baseType: !7)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1207, file: !1208, line: 48, baseType: !1220, size: 32, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !92, line: 147, baseType: !7)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1207, file: !1208, line: 50, baseType: !101, size: 32, offset: 288)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1207, file: !1208, line: 52, baseType: !1211, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1207, file: !1208, line: 57, baseType: !1224, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !92, line: 152, baseType: !105)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1207, file: !1208, line: 61, baseType: !1226, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !92, line: 175, baseType: !105)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1207, file: !1208, line: 63, baseType: !1228, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !92, line: 180, baseType: !105)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1207, file: !1208, line: 74, baseType: !1230, size: 128, offset: 576)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1231, line: 11, size: 128, elements: !1232)
!1231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1232 = !{!1233, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1230, file: !1231, line: 16, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !92, line: 160, baseType: !105)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1230, file: !1231, line: 21, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !92, line: 197, baseType: !105)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1207, file: !1208, line: 75, baseType: !1230, size: 128, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1207, file: !1208, line: 76, baseType: !1230, size: 128, offset: 832)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1207, file: !1208, line: 89, baseType: !1240, size: 192, offset: 960)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, size: 192, elements: !146)
!1241 = !DILocalVariable(name: "rd", scope: !1242, file: !109, line: 629, type: !1006)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !109, line: 628, column: 17)
!1243 = distinct !DILexicalBlock(scope: !1206, file: !109, line: 628, column: 13)
!1244 = !DILocalVariable(name: "off", scope: !1242, file: !109, line: 630, type: !102)
!1245 = !DILocalVariable(name: "errnum", scope: !1182, file: !109, line: 645, type: !101)
!1246 = !DILocation(line: 607, column: 39, scope: !1182)
!1247 = !DILocation(line: 607, column: 50, scope: !1182)
!1248 = !DILocation(line: 607, column: 69, scope: !1182)
!1249 = !DILocation(line: 607, column: 82, scope: !1182)
!1250 = !DILocation(line: 607, column: 107, scope: !1182)
!1251 = !DILocation(line: 609, column: 5, scope: !1182)
!1252 = !DILocation(line: 609, column: 9, scope: !1182)
!1253 = !DILocation(line: 610, column: 5, scope: !1182)
!1254 = !DILocation(line: 610, column: 11, scope: !1182)
!1255 = !DILocation(line: 611, column: 5, scope: !1182)
!1256 = !DILocation(line: 611, column: 11, scope: !1182)
!1257 = !DILocation(line: 612, column: 5, scope: !1182)
!1258 = !DILocation(line: 613, column: 35, scope: !1206)
!1259 = !DILocation(line: 613, column: 14, scope: !1206)
!1260 = !DILocation(line: 613, column: 12, scope: !1206)
!1261 = !DILocation(line: 614, column: 13, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1206, file: !109, line: 614, column: 13)
!1263 = !DILocation(line: 614, column: 16, scope: !1262)
!1264 = !DILocation(line: 614, column: 13, scope: !1206)
!1265 = !DILocation(line: 614, column: 21, scope: !1262)
!1266 = !DILocation(line: 616, column: 9, scope: !1206)
!1267 = !DILocation(line: 616, column: 21, scope: !1206)
!1268 = !DILocation(line: 617, column: 24, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1206, file: !109, line: 617, column: 13)
!1270 = !DILocation(line: 617, column: 18, scope: !1269)
!1271 = !DILocation(line: 617, column: 15, scope: !1269)
!1272 = !DILocation(line: 617, column: 13, scope: !1206)
!1273 = !DILocation(line: 617, column: 34, scope: !1269)
!1274 = !DILocation(line: 619, column: 18, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1206, file: !109, line: 618, column: 13)
!1276 = !DILocation(line: 619, column: 17, scope: !1275)
!1277 = !DILocation(line: 619, column: 22, scope: !1275)
!1278 = !DILocation(line: 619, column: 27, scope: !1275)
!1279 = !DILocation(line: 619, column: 33, scope: !1275)
!1280 = !{!1281, !568, i64 48}
!1281 = !{!"stat", !568, i64 0, !568, i64 8, !568, i64 16, !184, i64 24, !184, i64 28, !184, i64 32, !184, i64 36, !568, i64 40, !568, i64 48, !568, i64 56, !568, i64 64, !1282, i64 72, !1282, i64 88, !1282, i64 104, !185, i64 120}
!1282 = !{!"timespec", !568, i64 0, !568, i64 8}
!1283 = !DILocation(line: 619, column: 45, scope: !1275)
!1284 = !DILocation(line: 619, column: 44, scope: !1275)
!1285 = !DILocation(line: 619, column: 41, scope: !1275)
!1286 = !DILocation(line: 618, column: 13, scope: !1206)
!1287 = !DILocation(line: 620, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1275, file: !109, line: 619, column: 51)
!1289 = !DILocation(line: 620, column: 19, scope: !1288)
!1290 = !DILocation(line: 621, column: 13, scope: !1288)
!1291 = !DILocation(line: 624, column: 17, scope: !1206)
!1292 = !DILocation(line: 624, column: 12, scope: !1206)
!1293 = !DILocation(line: 625, column: 15, scope: !1206)
!1294 = !DILocation(line: 625, column: 33, scope: !1206)
!1295 = !DILocation(line: 625, column: 35, scope: !1206)
!1296 = !DILocation(line: 625, column: 13, scope: !1206)
!1297 = !DILocation(line: 626, column: 21, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1206, file: !109, line: 626, column: 13)
!1299 = !DILocation(line: 626, column: 18, scope: !1298)
!1300 = !DILocation(line: 626, column: 13, scope: !1206)
!1301 = !DILocation(line: 626, column: 26, scope: !1298)
!1302 = !DILocation(line: 628, column: 13, scope: !1243)
!1303 = !DILocation(line: 628, column: 13, scope: !1206)
!1304 = !DILocation(line: 629, column: 13, scope: !1242)
!1305 = !DILocation(line: 629, column: 21, scope: !1242)
!1306 = !DILocation(line: 630, column: 13, scope: !1242)
!1307 = !DILocation(line: 630, column: 19, scope: !1242)
!1308 = !DILocation(line: 631, column: 13, scope: !1242)
!1309 = !DILocation(line: 632, column: 27, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1242, file: !109, line: 631, column: 16)
!1311 = !DILocation(line: 632, column: 31, scope: !1310)
!1312 = !DILocation(line: 632, column: 35, scope: !1310)
!1313 = !DILocation(line: 632, column: 34, scope: !1310)
!1314 = !DILocation(line: 632, column: 49, scope: !1310)
!1315 = !DILocation(line: 632, column: 52, scope: !1310)
!1316 = !DILocation(line: 632, column: 51, scope: !1310)
!1317 = !DILocation(line: 632, column: 22, scope: !1310)
!1318 = !DILocation(line: 632, column: 20, scope: !1310)
!1319 = !DILocation(line: 633, column: 13, scope: !1310)
!1320 = !DILocation(line: 633, column: 22, scope: !1242)
!1321 = !DILocation(line: 633, column: 25, scope: !1242)
!1322 = !DILocation(line: 633, column: 39, scope: !1242)
!1323 = !DILocation(line: 633, column: 36, scope: !1242)
!1324 = !DILocation(line: 633, column: 46, scope: !1242)
!1325 = !DILocation(line: 633, column: 43, scope: !1242)
!1326 = !DILocation(line: 633, column: 51, scope: !1242)
!1327 = !DILocation(line: 633, column: 54, scope: !1242)
!1328 = !DILocation(line: 633, column: 58, scope: !1242)
!1329 = !DILocation(line: 633, column: 61, scope: !1242)
!1330 = !DILocation(line: 633, column: 67, scope: !1242)
!1331 = !DILocation(line: 0, scope: !1242)
!1332 = distinct !{!1332, !1308, !1333, !983}
!1333 = !DILocation(line: 633, column: 75, scope: !1242)
!1334 = !DILocation(line: 634, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1242, file: !109, line: 634, column: 17)
!1336 = !DILocation(line: 634, column: 24, scope: !1335)
!1337 = !DILocation(line: 634, column: 21, scope: !1335)
!1338 = !DILocation(line: 634, column: 17, scope: !1242)
!1339 = !DILocation(line: 635, column: 21, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !109, line: 635, column: 21)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !109, line: 634, column: 28)
!1342 = !DILocation(line: 635, column: 24, scope: !1340)
!1343 = !DILocation(line: 635, column: 21, scope: !1341)
!1344 = !DILocation(line: 635, column: 30, scope: !1340)
!1345 = !DILocation(line: 635, column: 36, scope: !1340)
!1346 = !DILocation(line: 636, column: 17, scope: !1341)
!1347 = !DILocation(line: 638, column: 9, scope: !1243)
!1348 = !DILocation(line: 638, column: 9, scope: !1242)
!1349 = !DILocation(line: 640, column: 9, scope: !1206)
!1350 = !DILocation(line: 640, column: 13, scope: !1206)
!1351 = !DILocation(line: 640, column: 17, scope: !1206)
!1352 = !DILocation(line: 641, column: 16, scope: !1206)
!1353 = !DILocation(line: 641, column: 10, scope: !1206)
!1354 = !DILocation(line: 641, column: 14, scope: !1206)
!1355 = !DILocation(line: 642, column: 15, scope: !1206)
!1356 = !DILocation(line: 642, column: 9, scope: !1206)
!1357 = !DILocation(line: 643, column: 16, scope: !1206)
!1358 = !DILocation(line: 643, column: 9, scope: !1206)
!1359 = !DILocation(line: 644, column: 5, scope: !1182)
!1360 = !DILocation(line: 644, column: 5, scope: !1206)
!1361 = !DILocation(line: 645, column: 5, scope: !1182)
!1362 = !DILocation(line: 645, column: 9, scope: !1182)
!1363 = !DILocation(line: 645, column: 18, scope: !1182)
!1364 = !DILocation(line: 646, column: 9, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1182, file: !109, line: 646, column: 9)
!1366 = !DILocation(line: 646, column: 9, scope: !1182)
!1367 = !DILocation(line: 647, column: 20, scope: !1365)
!1368 = !DILocation(line: 647, column: 67, scope: !1365)
!1369 = !DILocation(line: 647, column: 9, scope: !1365)
!1370 = !DILocation(line: 648, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1182, file: !109, line: 648, column: 9)
!1372 = !DILocation(line: 648, column: 12, scope: !1371)
!1373 = !DILocation(line: 648, column: 9, scope: !1182)
!1374 = !DILocation(line: 648, column: 24, scope: !1371)
!1375 = !DILocation(line: 648, column: 18, scope: !1371)
!1376 = !DILocation(line: 649, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1182, file: !109, line: 649, column: 9)
!1378 = !DILocation(line: 649, column: 9, scope: !1182)
!1379 = !DILocation(line: 650, column: 20, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !109, line: 649, column: 14)
!1381 = !DILocation(line: 650, column: 33, scope: !1380)
!1382 = !DILocation(line: 650, column: 9, scope: !1380)
!1383 = !DILocation(line: 651, column: 9, scope: !1380)
!1384 = !DILocation(line: 651, column: 17, scope: !1380)
!1385 = !DILocation(line: 652, column: 5, scope: !1380)
!1386 = !DILocation(line: 653, column: 6, scope: !1182)
!1387 = !DILocation(line: 653, column: 10, scope: !1182)
!1388 = !DILocation(line: 654, column: 13, scope: !1182)
!1389 = !DILocation(line: 654, column: 5, scope: !1182)
!1390 = !DILocation(line: 654, column: 11, scope: !1182)
!1391 = !DILocation(line: 655, column: 5, scope: !1182)
!1392 = !DILocation(line: 656, column: 1, scope: !1182)
!1393 = !DISubprogram(name: "fstat", linkageName: "fstat64", scope: !1394, file: !1394, line: 230, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!101, !101, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1398 = !DISubprogram(name: "log_perror", scope: !1399, file: !1399, line: 27, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1399 = !DIFile(filename: "spack-src/src/log.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "67f73ee27baf1f1bbfd9fefdd3d8ba02")
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !1186, !238, !7, !238, null}
!1402 = distinct !DISubprogram(name: "ck_memzero", scope: !235, file: !235, line: 48, type: !1403, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1407)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1405, !89, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "errno_t", file: !235, line: 35, baseType: !101)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "rsize_t", file: !235, line: 34, baseType: !93)
!1407 = !{!1408, !1409}
!1408 = !DILocalVariable(name: "s", arg: 1, scope: !1402, file: !235, line: 48, type: !89)
!1409 = !DILocalVariable(name: "n", arg: 2, scope: !1402, file: !235, line: 48, type: !1406)
!1410 = !DILocation(line: 48, column: 40, scope: !1402)
!1411 = !DILocation(line: 48, column: 51, scope: !1402)
!1412 = !DILocation(line: 49, column: 26, scope: !1402)
!1413 = !DILocation(line: 49, column: 29, scope: !1402)
!1414 = !DILocation(line: 49, column: 32, scope: !1402)
!1415 = !DILocation(line: 49, column: 12, scope: !1402)
!1416 = !DILocation(line: 49, column: 5, scope: !1402)
!1417 = distinct !DISubprogram(name: "fdevent_load_file_bytes", scope: !109, file: !109, line: 660, type: !1418, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!101, !418, !1420, !102, !420, !1186}
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1430}
!1422 = !DILocalVariable(name: "buf", arg: 1, scope: !1417, file: !109, line: 660, type: !418)
!1423 = !DILocalVariable(name: "sz", arg: 2, scope: !1417, file: !109, line: 660, type: !1420)
!1424 = !DILocalVariable(name: "off", arg: 3, scope: !1417, file: !109, line: 660, type: !102)
!1425 = !DILocalVariable(name: "fn", arg: 4, scope: !1417, file: !109, line: 660, type: !420)
!1426 = !DILocalVariable(name: "errh", arg: 5, scope: !1417, file: !109, line: 660, type: !1186)
!1427 = !DILocalVariable(name: "fd", scope: !1417, file: !109, line: 662, type: !101)
!1428 = !DILocalVariable(name: "rd", scope: !1429, file: !109, line: 670, type: !1006)
!1429 = distinct !DILexicalBlock(scope: !1417, file: !109, line: 663, column: 8)
!1430 = !DILocalVariable(name: "errnum", scope: !1417, file: !109, line: 682, type: !101)
!1431 = !DILocation(line: 660, column: 39, scope: !1417)
!1432 = !DILocation(line: 660, column: 56, scope: !1417)
!1433 = !DILocation(line: 660, column: 66, scope: !1417)
!1434 = !DILocation(line: 660, column: 90, scope: !1417)
!1435 = !DILocation(line: 660, column: 108, scope: !1417)
!1436 = !DILocation(line: 662, column: 5, scope: !1417)
!1437 = !DILocation(line: 662, column: 9, scope: !1417)
!1438 = !DILocation(line: 663, column: 5, scope: !1417)
!1439 = !DILocation(line: 664, column: 35, scope: !1429)
!1440 = !DILocation(line: 664, column: 14, scope: !1429)
!1441 = !DILocation(line: 664, column: 12, scope: !1429)
!1442 = !DILocation(line: 665, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1429, file: !109, line: 665, column: 13)
!1444 = !DILocation(line: 665, column: 16, scope: !1443)
!1445 = !DILocation(line: 665, column: 13, scope: !1429)
!1446 = !DILocation(line: 665, column: 21, scope: !1443)
!1447 = !DILocation(line: 667, column: 18, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1429, file: !109, line: 667, column: 13)
!1449 = !DILocation(line: 667, column: 15, scope: !1448)
!1450 = !DILocation(line: 667, column: 22, scope: !1448)
!1451 = !DILocation(line: 667, column: 44, scope: !1448)
!1452 = !DILocation(line: 667, column: 48, scope: !1448)
!1453 = !DILocation(line: 667, column: 38, scope: !1448)
!1454 = !DILocation(line: 667, column: 35, scope: !1448)
!1455 = !DILocation(line: 667, column: 13, scope: !1429)
!1456 = !DILocation(line: 667, column: 64, scope: !1448)
!1457 = !DILocation(line: 668, column: 13, scope: !1429)
!1458 = !DILocation(line: 670, column: 9, scope: !1429)
!1459 = !DILocation(line: 670, column: 17, scope: !1429)
!1460 = !DILocation(line: 671, column: 9, scope: !1429)
!1461 = !DILocation(line: 672, column: 23, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1429, file: !109, line: 671, column: 12)
!1463 = !DILocation(line: 672, column: 27, scope: !1462)
!1464 = !DILocation(line: 672, column: 31, scope: !1462)
!1465 = !DILocation(line: 672, column: 30, scope: !1462)
!1466 = !DILocation(line: 672, column: 45, scope: !1462)
!1467 = !DILocation(line: 672, column: 48, scope: !1462)
!1468 = !DILocation(line: 672, column: 47, scope: !1462)
!1469 = !DILocation(line: 672, column: 18, scope: !1462)
!1470 = !DILocation(line: 672, column: 16, scope: !1462)
!1471 = !DILocation(line: 673, column: 9, scope: !1462)
!1472 = !DILocation(line: 673, column: 18, scope: !1429)
!1473 = !DILocation(line: 673, column: 21, scope: !1429)
!1474 = !DILocation(line: 673, column: 35, scope: !1429)
!1475 = !DILocation(line: 673, column: 32, scope: !1429)
!1476 = !DILocation(line: 673, column: 42, scope: !1429)
!1477 = !DILocation(line: 673, column: 39, scope: !1429)
!1478 = !DILocation(line: 673, column: 47, scope: !1429)
!1479 = !DILocation(line: 673, column: 50, scope: !1429)
!1480 = !DILocation(line: 673, column: 54, scope: !1429)
!1481 = !DILocation(line: 673, column: 57, scope: !1429)
!1482 = !DILocation(line: 673, column: 63, scope: !1429)
!1483 = !DILocation(line: 0, scope: !1429)
!1484 = distinct !{!1484, !1460, !1485, !983}
!1485 = !DILocation(line: 673, column: 71, scope: !1429)
!1486 = !DILocation(line: 674, column: 13, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1429, file: !109, line: 674, column: 13)
!1488 = !DILocation(line: 674, column: 20, scope: !1487)
!1489 = !DILocation(line: 674, column: 17, scope: !1487)
!1490 = !DILocation(line: 674, column: 13, scope: !1429)
!1491 = !DILocation(line: 675, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !109, line: 675, column: 17)
!1493 = distinct !DILexicalBlock(scope: !1487, file: !109, line: 674, column: 24)
!1494 = !DILocation(line: 675, column: 20, scope: !1492)
!1495 = !DILocation(line: 675, column: 17, scope: !1493)
!1496 = !DILocation(line: 675, column: 26, scope: !1492)
!1497 = !DILocation(line: 675, column: 32, scope: !1492)
!1498 = !DILocation(line: 676, column: 13, scope: !1493)
!1499 = !DILocation(line: 679, column: 15, scope: !1429)
!1500 = !DILocation(line: 679, column: 9, scope: !1429)
!1501 = !DILocation(line: 680, column: 9, scope: !1429)
!1502 = !DILocation(line: 681, column: 5, scope: !1417)
!1503 = !DILocation(line: 681, column: 5, scope: !1429)
!1504 = !DILocation(line: 682, column: 5, scope: !1417)
!1505 = !DILocation(line: 682, column: 9, scope: !1417)
!1506 = !DILocation(line: 682, column: 18, scope: !1417)
!1507 = !DILocation(line: 683, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1417, file: !109, line: 683, column: 9)
!1509 = !DILocation(line: 683, column: 9, scope: !1417)
!1510 = !DILocation(line: 684, column: 20, scope: !1508)
!1511 = !DILocation(line: 684, column: 67, scope: !1508)
!1512 = !DILocation(line: 684, column: 9, scope: !1508)
!1513 = !DILocation(line: 685, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1417, file: !109, line: 685, column: 9)
!1515 = !DILocation(line: 685, column: 12, scope: !1514)
!1516 = !DILocation(line: 685, column: 9, scope: !1417)
!1517 = !DILocation(line: 685, column: 24, scope: !1514)
!1518 = !DILocation(line: 685, column: 18, scope: !1514)
!1519 = !DILocation(line: 686, column: 16, scope: !1417)
!1520 = !DILocation(line: 686, column: 29, scope: !1417)
!1521 = !DILocation(line: 686, column: 5, scope: !1417)
!1522 = !DILocation(line: 687, column: 13, scope: !1417)
!1523 = !DILocation(line: 687, column: 5, scope: !1417)
!1524 = !DILocation(line: 687, column: 11, scope: !1417)
!1525 = !DILocation(line: 688, column: 5, scope: !1417)
!1526 = !DILocation(line: 689, column: 1, scope: !1417)
!1527 = !DISubprogram(name: "lseek", linkageName: "lseek64", scope: !216, file: !216, line: 342, type: !1528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!104, !101, !104, !101}
!1530 = !DISubprogram(name: "dup2", scope: !216, file: !216, line: 555, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1531 = !DISubprogram(name: "ck_memclear_s", scope: !235, file: !235, line: 43, type: !1532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1405, !89, !1406, !1406}

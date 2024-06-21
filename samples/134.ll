; ModuleID = 'samples/134.bc'
source_filename = "/local-ssd/jansson-6ysjm5zf4xkytnr237xl5srxz3lqeclu-build/aidengro/spack-stage-jansson-2.14-6ysjm5zf4xkytnr237xl5srxz3lqeclu/spack-src/test/suites/api/test_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_t = type { i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%s:%d: \00", align 1
@.str.2 = private unnamed_addr constant [163 x i8] c"/local-ssd/jansson-6ysjm5zf4xkytnr237xl5srxz3lqeclu-build/aidengro/spack-stage-jansson-2.14-6ysjm5zf4xkytnr237xl5srxz3lqeclu/spack-src/test/suites/api/test_dump.c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"json_dumps didn't fail for NULL\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"json_dumpb didn't fail for NULL\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"json_dumpf didn't fail for NULL\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"json_dumpfd didn't fail for NULL\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"json_dump_callback didn't fail for NULL\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"json_dumps failed\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"{\22foo\22: 5}\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"[5]\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"json_dumps encoded a circular reference!\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"{\22a\22: {\22b\22: {}}}\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"json_dumps failed!\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"[[[]]]\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"json_dumps encoded a string!\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"json_dumpf encoded a string!\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"json_dumpfd encoded a string!\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\22foo\22\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"json_dumps failed to encode a string with JSON_ENCODE_ANY\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"json_dumps encoded an integer!\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"json_dumpf encoded an integer!\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"json_dumpfd encoded an integer!\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"42\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"json_dumps failed to encode an integer with JSON_ENCODE_ANY\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"https://github.com/akheron/jansson\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"{\22url\22: \22https://github.com/akheron/jansson\22}\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"json_dumps failed to not escape slashes\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"{\22url\22: \22https:\\/\\/github.com\\/akheron\\/jansson\22}\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"json_dumps failed to escape slashes\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"nul byte \00 in string\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"\22nul byte \\u0000 in string\22\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"json_dumps failed to dump an embedded NUL byte\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"json_dump_file succeeded with invalid args\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"json_dump_file.json\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"json_dump_file failed\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"json_dumpb failed\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"{s:s}\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"json_dumpb size check failed\00", align 1
@__const.dumpfd.fds = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@.str.48 = private unnamed_addr constant [14 x i8] c"pipe() failed\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"json_dumpfd() failed\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"json_loadfd() failed\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"json_equal() failed for fd test\00", align 1
@embed.plains = internal global [5 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.9, ptr @.str.13, ptr null], align 16
@.str.52 = private unnamed_addr constant [20 x i8] c"{\22bar\22:[],\22foo\22:{}}\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"[[],{}]\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"json_dumpb(JSON_EMBED) returned an invalid size\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"json_dumps(JSON_EMBED) returned an invalid value\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @setlocale(i32 noundef 6, ptr noundef @.str) #9
  call void @run_tests()
  ret i32 0
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @run_tests() #0 {
entry:
  call void @encode_null()
  call void @encode_twice()
  call void @circular_references()
  call void @encode_other_than_array_or_object()
  call void @escape_slashes()
  call void @encode_nul_byte()
  call void @dump_file()
  call void @dumpb()
  call void @dumpfd()
  call void @embed()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encode_null() #0 {
entry:
  %call = call ptr @json_dumps(ptr noundef null, i64 noundef 512)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 30)
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.3, ptr noundef @.str.4)
  call void @exit(i32 noundef 1) #10
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call3 = call i64 @json_dumpb(ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %cmp4 = icmp ne i64 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 33)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.3, ptr noundef @.str.5)
  call void @exit(i32 noundef 1) #10
  unreachable

do.end9:                                          ; No predecessors!
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = call i32 @json_dumpf(ptr noundef null, ptr noundef %4, i64 noundef 512)
  %cmp12 = icmp ne i32 %call11, -1
  br i1 %cmp12, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end10
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 36)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.3, ptr noundef @.str.6)
  call void @exit(i32 noundef 1) #10
  unreachable

do.end17:                                         ; No predecessors!
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.end10
  %call19 = call i32 @json_dumpfd(ptr noundef null, i32 noundef 2, i64 noundef 512)
  %cmp20 = icmp ne i32 %call19, -1
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end18
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 40)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.3, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #10
  unreachable

do.end25:                                         ; No predecessors!
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.end18
  %call27 = call i32 @json_dump_callback(ptr noundef null, ptr noundef @encode_null_callback, ptr noundef null, i64 noundef 512)
  %cmp28 = icmp ne i32 %call27, -1
  br i1 %cmp28, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end26
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 46)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.3, ptr noundef @.str.8)
  call void @exit(i32 noundef 1) #10
  unreachable

do.end33:                                         ; No predecessors!
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.end26
  ret void
}

declare ptr @json_dumps(ptr noundef, i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

declare i64 @json_dumpb(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare i32 @json_dumpf(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @json_dumpfd(ptr noundef, i32 noundef, i64 noundef) #2

declare i32 @json_dump_callback(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @encode_null_callback(ptr noundef %buffer, i64 noundef %size, ptr noundef %data) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !5
  store i64 %size, ptr %size.addr, align 8, !tbaa !9
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %buffer.addr, align 8, !tbaa !5
  %1 = load i64, ptr %size.addr, align 8, !tbaa !9
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @encode_twice() #0 {
entry:
  %json = alloca ptr, align 8
  %result = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %json) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %call = call ptr @json_object()
  store ptr %call, ptr %json, align 8, !tbaa !5
  %0 = load ptr, ptr %json, align 8, !tbaa !5
  %call1 = call ptr @json_dumps(ptr noundef %0, i64 noundef 0)
  store ptr %call1, ptr %result, align 8, !tbaa !5
  %1 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %result, align 8, !tbaa !5
  %call2 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.9) #11
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 58)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.3, ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %5 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %5) #9
  %6 = load ptr, ptr %json, align 8, !tbaa !5
  %call6 = call ptr @json_integer(i64 noundef 5)
  %call7 = call i32 @json_object_set_new(ptr noundef %6, ptr noundef @.str.11, ptr noundef %call6)
  %7 = load ptr, ptr %json, align 8, !tbaa !5
  %call8 = call ptr @json_dumps(ptr noundef %7, i64 noundef 0)
  store ptr %call8, ptr %result, align 8, !tbaa !5
  %8 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool9 = icmp ne ptr %8, null
  br i1 %tobool9, label %lor.lhs.false10, label %if.then13

lor.lhs.false10:                                  ; preds = %if.end
  %9 = load ptr, ptr %result, align 8, !tbaa !5
  %call11 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.12) #11
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %lor.lhs.false10, %if.end
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 64)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.3, ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond17:                                        ; No predecessors!
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %lor.lhs.false10
  %12 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %12) #9
  %13 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %13)
  %call20 = call ptr @json_array()
  store ptr %call20, ptr %json, align 8, !tbaa !5
  %14 = load ptr, ptr %json, align 8, !tbaa !5
  %call21 = call ptr @json_dumps(ptr noundef %14, i64 noundef 0)
  store ptr %call21, ptr %result, align 8, !tbaa !5
  %15 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool22 = icmp ne ptr %15, null
  br i1 %tobool22, label %lor.lhs.false23, label %if.then26

lor.lhs.false23:                                  ; preds = %if.end19
  %16 = load ptr, ptr %result, align 8, !tbaa !5
  %call24 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.13) #11
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end32

if.then26:                                        ; preds = %lor.lhs.false23, %if.end19
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 72)
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.3, ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond30:                                        ; No predecessors!
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %lor.lhs.false23
  %19 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %19) #9
  %20 = load ptr, ptr %json, align 8, !tbaa !5
  %call33 = call ptr @json_integer(i64 noundef 5)
  %call34 = call i32 @json_array_append_new(ptr noundef %20, ptr noundef %call33)
  %21 = load ptr, ptr %json, align 8, !tbaa !5
  %call35 = call ptr @json_dumps(ptr noundef %21, i64 noundef 0)
  store ptr %call35, ptr %result, align 8, !tbaa !5
  %22 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool36 = icmp ne ptr %22, null
  br i1 %tobool36, label %lor.lhs.false37, label %if.then40

lor.lhs.false37:                                  ; preds = %if.end32
  %23 = load ptr, ptr %result, align 8, !tbaa !5
  %call38 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.14) #11
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %lor.lhs.false37, %if.end32
  br label %do.body41

do.body41:                                        ; preds = %if.then40
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 78)
  %25 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.3, ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond44:                                        ; No predecessors!
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %lor.lhs.false37
  %26 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %26) #9
  %27 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %27)
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %json) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @json_object() #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i32 @json_object_set_new(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @json_integer(i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @json_decref(ptr noundef %json) #6 {
entry:
  %json.addr = alloca ptr, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %json, ptr %json.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %json.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %json.addr, align 8, !tbaa !5
  %refcount = getelementptr inbounds %struct.json_t, ptr %1, i32 0, i32 1
  %2 = load volatile i64, ptr %refcount, align 8, !tbaa !11
  %cmp = icmp ne i64 %2, -1
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %json.addr, align 8, !tbaa !5
  %refcount2 = getelementptr inbounds %struct.json_t, ptr %3, i32 0, i32 1
  store i64 1, ptr %.atomictmp, align 8, !tbaa !9
  %4 = load i64, ptr %.atomictmp, align 8
  %5 = atomicrmw volatile sub ptr %refcount2, i64 %4 release, align 8
  %6 = sub i64 %5, %4
  store i64 %6, ptr %atomic-temp, align 8
  %7 = load i64, ptr %atomic-temp, align 8, !tbaa !9
  %cmp3 = icmp eq i64 %7, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %8 = load ptr, ptr %json.addr, align 8, !tbaa !5
  call void @json_delete(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

declare ptr @json_array() #2

declare i32 @json_array_append_new(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @json_delete(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @circular_references() #0 {
entry:
  %json = alloca ptr, align 8
  %result = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %json) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %call = call ptr @json_object()
  store ptr %call, ptr %json, align 8, !tbaa !5
  %0 = load ptr, ptr %json, align 8, !tbaa !5
  %call1 = call ptr @json_object()
  %call2 = call i32 @json_object_set_new(ptr noundef %0, ptr noundef @.str.15, ptr noundef %call1)
  %1 = load ptr, ptr %json, align 8, !tbaa !5
  %call3 = call ptr @json_object_get(ptr noundef %1, ptr noundef @.str.15)
  %call4 = call ptr @json_object()
  %call5 = call i32 @json_object_set_new(ptr noundef %call3, ptr noundef @.str.16, ptr noundef %call4)
  %2 = load ptr, ptr %json, align 8, !tbaa !5
  %call6 = call ptr @json_object_get(ptr noundef %2, ptr noundef @.str.15)
  %call7 = call ptr @json_object_get(ptr noundef %call6, ptr noundef @.str.16)
  %3 = load ptr, ptr %json, align 8, !tbaa !5
  %call8 = call ptr @json_object_get(ptr noundef %3, ptr noundef @.str.15)
  %call9 = call i32 @json_object_set(ptr noundef %call7, ptr noundef @.str.17, ptr noundef %call8)
  %4 = load ptr, ptr %json, align 8, !tbaa !5
  %call10 = call ptr @json_dumps(ptr noundef %4, i64 noundef 0)
  %tobool = icmp ne ptr %call10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 103)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.3, ptr noundef @.str.18)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %7 = load ptr, ptr %json, align 8, !tbaa !5
  %call13 = call ptr @json_object_get(ptr noundef %7, ptr noundef @.str.15)
  %call14 = call ptr @json_object_get(ptr noundef %call13, ptr noundef @.str.16)
  %call15 = call i32 @json_object_del(ptr noundef %call14, ptr noundef @.str.17)
  %8 = load ptr, ptr %json, align 8, !tbaa !5
  %call16 = call ptr @json_dumps(ptr noundef %8, i64 noundef 0)
  store ptr %call16, ptr %result, align 8, !tbaa !5
  %9 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool17 = icmp ne ptr %9, null
  br i1 %tobool17, label %lor.lhs.false, label %if.then20

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %result, align 8, !tbaa !5
  %call18 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.19) #11
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end26

if.then20:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body21

do.body21:                                        ; preds = %if.then20
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 109)
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.3, ptr noundef @.str.20)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond24:                                        ; No predecessors!
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %lor.lhs.false
  %13 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %13) #9
  %14 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %14)
  %call27 = call ptr @json_array()
  store ptr %call27, ptr %json, align 8, !tbaa !5
  %15 = load ptr, ptr %json, align 8, !tbaa !5
  %call28 = call ptr @json_array()
  %call29 = call i32 @json_array_append_new(ptr noundef %15, ptr noundef %call28)
  %16 = load ptr, ptr %json, align 8, !tbaa !5
  %call30 = call ptr @json_array_get(ptr noundef %16, i64 noundef 0)
  %call31 = call ptr @json_array()
  %call32 = call i32 @json_array_append_new(ptr noundef %call30, ptr noundef %call31)
  %17 = load ptr, ptr %json, align 8, !tbaa !5
  %call33 = call ptr @json_array_get(ptr noundef %17, i64 noundef 0)
  %call34 = call ptr @json_array_get(ptr noundef %call33, i64 noundef 0)
  %18 = load ptr, ptr %json, align 8, !tbaa !5
  %call35 = call ptr @json_array_get(ptr noundef %18, i64 noundef 0)
  %call36 = call i32 @json_array_append(ptr noundef %call34, ptr noundef %call35)
  %19 = load ptr, ptr %json, align 8, !tbaa !5
  %call37 = call ptr @json_dumps(ptr noundef %19, i64 noundef 0)
  %tobool38 = icmp ne ptr %call37, null
  br i1 %tobool38, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end26
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 121)
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.3, ptr noundef @.str.18)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond43:                                        ; No predecessors!
  br label %do.end44

do.end44:                                         ; preds = %do.cond43
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %if.end26
  %22 = load ptr, ptr %json, align 8, !tbaa !5
  %call46 = call ptr @json_array_get(ptr noundef %22, i64 noundef 0)
  %call47 = call ptr @json_array_get(ptr noundef %call46, i64 noundef 0)
  %call48 = call i32 @json_array_remove(ptr noundef %call47, i64 noundef 0)
  %23 = load ptr, ptr %json, align 8, !tbaa !5
  %call49 = call ptr @json_dumps(ptr noundef %23, i64 noundef 0)
  store ptr %call49, ptr %result, align 8, !tbaa !5
  %24 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool50 = icmp ne ptr %24, null
  br i1 %tobool50, label %lor.lhs.false51, label %if.then54

lor.lhs.false51:                                  ; preds = %if.end45
  %25 = load ptr, ptr %result, align 8, !tbaa !5
  %call52 = call i32 @strcmp(ptr noundef %25, ptr noundef @.str.21) #11
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end60

if.then54:                                        ; preds = %lor.lhs.false51, %if.end45
  br label %do.body55

do.body55:                                        ; preds = %if.then54
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 127)
  %27 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.3, ptr noundef @.str.20)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond58:                                        ; No predecessors!
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %lor.lhs.false51
  %28 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %28) #9
  %29 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %29)
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %json) #9
  ret void
}

declare ptr @json_object_get(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @json_object_set(ptr noundef %object, ptr noundef %key, ptr noundef %value) #6 {
entry:
  %object.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !5
  store ptr %key, ptr %key.addr, align 8, !tbaa !5
  store ptr %value, ptr %value.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %object.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !5
  %call = call ptr @json_incref(ptr noundef %2)
  %call1 = call i32 @json_object_set_new(ptr noundef %0, ptr noundef %1, ptr noundef %call)
  ret i32 %call1
}

declare i32 @json_object_del(ptr noundef, ptr noundef) #2

declare ptr @json_array_get(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @json_array_append(ptr noundef %array, ptr noundef %value) #6 {
entry:
  %array.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !5
  store ptr %value, ptr %value.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %array.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !5
  %call = call ptr @json_incref(ptr noundef %1)
  %call1 = call i32 @json_array_append_new(ptr noundef %0, ptr noundef %call)
  ret i32 %call1
}

declare i32 @json_array_remove(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @json_incref(ptr noundef %json) #6 {
entry:
  %json.addr = alloca ptr, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %json, ptr %json.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %json.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %json.addr, align 8, !tbaa !5
  %refcount = getelementptr inbounds %struct.json_t, ptr %1, i32 0, i32 1
  %2 = load volatile i64, ptr %refcount, align 8, !tbaa !11
  %cmp = icmp ne i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %json.addr, align 8, !tbaa !5
  %refcount1 = getelementptr inbounds %struct.json_t, ptr %3, i32 0, i32 1
  store i64 1, ptr %.atomictmp, align 8, !tbaa !9
  %4 = load i64, ptr %.atomictmp, align 8
  %5 = atomicrmw volatile add ptr %refcount1, i64 %4 acquire, align 8
  %6 = add i64 %5, %4
  store i64 %6, ptr %atomic-temp, align 8
  %7 = load i64, ptr %atomic-temp, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load ptr, ptr %json.addr, align 8, !tbaa !5
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @encode_other_than_array_or_object() #0 {
entry:
  %json = alloca ptr, align 8
  %result = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %json) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %call = call ptr @json_string(ptr noundef @.str.11)
  store ptr %call, ptr %json, align 8, !tbaa !5
  %0 = load ptr, ptr %json, align 8, !tbaa !5
  %call1 = call ptr @json_dumps(ptr noundef %0, i64 noundef 0)
  %cmp = icmp ne ptr %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 142)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.3, ptr noundef @.str.22)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %3 = load ptr, ptr %json, align 8, !tbaa !5
  %call4 = call i32 @json_dumpf(ptr noundef %3, ptr noundef null, i64 noundef 0)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 144)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.3, ptr noundef @.str.23)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond10:                                        ; No predecessors!
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end
  %6 = load ptr, ptr %json, align 8, !tbaa !5
  %call13 = call i32 @json_dumpfd(ptr noundef %6, i32 noundef -1, i64 noundef 0)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end12
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 146)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.3, ptr noundef @.str.24)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond19:                                        ; No predecessors!
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end12
  %9 = load ptr, ptr %json, align 8, !tbaa !5
  %call22 = call ptr @json_dumps(ptr noundef %9, i64 noundef 512)
  store ptr %call22, ptr %result, align 8, !tbaa !5
  %10 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %lor.lhs.false, label %if.then25

lor.lhs.false:                                    ; preds = %if.end21
  %11 = load ptr, ptr %result, align 8, !tbaa !5
  %call23 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.25) #11
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %lor.lhs.false, %if.end21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 150)
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.3, ptr noundef @.str.26)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond29:                                        ; No predecessors!
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %lor.lhs.false
  %14 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %14) #9
  %15 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %15)
  %call32 = call ptr @json_integer(i64 noundef 42)
  store ptr %call32, ptr %json, align 8, !tbaa !5
  %16 = load ptr, ptr %json, align 8, !tbaa !5
  %call33 = call ptr @json_dumps(ptr noundef %16, i64 noundef 0)
  %cmp34 = icmp ne ptr %call33, null
  br i1 %cmp34, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.end31
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 157)
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.3, ptr noundef @.str.27)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond39:                                        ; No predecessors!
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end31
  %19 = load ptr, ptr %json, align 8, !tbaa !5
  %call42 = call i32 @json_dumpf(ptr noundef %19, ptr noundef null, i64 noundef 0)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end50

if.then44:                                        ; preds = %if.end41
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 159)
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.3, ptr noundef @.str.28)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond48:                                        ; No predecessors!
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %if.end41
  %22 = load ptr, ptr %json, align 8, !tbaa !5
  %call51 = call i32 @json_dumpfd(ptr noundef %22, i32 noundef -1, i64 noundef 0)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end59

if.then53:                                        ; preds = %if.end50
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %23 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 161)
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.3, ptr noundef @.str.29)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond57:                                        ; No predecessors!
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %if.end50
  %25 = load ptr, ptr %json, align 8, !tbaa !5
  %call60 = call ptr @json_dumps(ptr noundef %25, i64 noundef 512)
  store ptr %call60, ptr %result, align 8, !tbaa !5
  %26 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool61 = icmp ne ptr %26, null
  br i1 %tobool61, label %lor.lhs.false62, label %if.then65

lor.lhs.false62:                                  ; preds = %if.end59
  %27 = load ptr, ptr %result, align 8, !tbaa !5
  %call63 = call i32 @strcmp(ptr noundef %27, ptr noundef @.str.30) #11
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end71

if.then65:                                        ; preds = %lor.lhs.false62, %if.end59
  br label %do.body66

do.body66:                                        ; preds = %if.then65
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 165)
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.3, ptr noundef @.str.31)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond69:                                        ; No predecessors!
  br label %do.end70

do.end70:                                         ; preds = %do.cond69
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %lor.lhs.false62
  %30 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %30) #9
  %31 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %31)
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %json) #9
  ret void
}

declare ptr @json_string(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @escape_slashes() #0 {
entry:
  %json = alloca ptr, align 8
  %result = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %json) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %call = call ptr @json_object()
  store ptr %call, ptr %json, align 8, !tbaa !5
  %0 = load ptr, ptr %json, align 8, !tbaa !5
  %call1 = call ptr @json_string(ptr noundef @.str.33)
  %call2 = call i32 @json_object_set_new(ptr noundef %0, ptr noundef @.str.32, ptr noundef %call1)
  %1 = load ptr, ptr %json, align 8, !tbaa !5
  %call3 = call ptr @json_dumps(ptr noundef %1, i64 noundef 0)
  store ptr %call3, ptr %result, align 8, !tbaa !5
  %2 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %result, align 8, !tbaa !5
  %call4 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.34) #11
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 182)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.3, ptr noundef @.str.35)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %6 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %6) #9
  %7 = load ptr, ptr %json, align 8, !tbaa !5
  %call8 = call ptr @json_dumps(ptr noundef %7, i64 noundef 1024)
  store ptr %call8, ptr %result, align 8, !tbaa !5
  %8 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool9 = icmp ne ptr %8, null
  br i1 %tobool9, label %lor.lhs.false10, label %if.then13

lor.lhs.false10:                                  ; preds = %if.end
  %9 = load ptr, ptr %result, align 8, !tbaa !5
  %call11 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.36) #11
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %lor.lhs.false10, %if.end
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 189)
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.3, ptr noundef @.str.37)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond17:                                        ; No predecessors!
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %lor.lhs.false10
  %12 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %12) #9
  %13 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %json) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encode_nul_byte() #0 {
entry:
  %json = alloca ptr, align 8
  %result = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %json) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9
  %call = call ptr @json_stringn(ptr noundef @.str.38, i64 noundef 20)
  store ptr %call, ptr %json, align 8, !tbaa !5
  %0 = load ptr, ptr %json, align 8, !tbaa !5
  %call1 = call ptr @json_dumps(ptr noundef %0, i64 noundef 512)
  store ptr %call1, ptr %result, align 8, !tbaa !5
  %1 = load ptr, ptr %result, align 8, !tbaa !5
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %result, align 8, !tbaa !5
  %call2 = call i32 @memcmp(ptr noundef %2, ptr noundef @.str.39, i64 noundef 27) #11
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 202)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.3, ptr noundef @.str.40)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %5 = load ptr, ptr %result, align 8, !tbaa !5
  call void @free(ptr noundef %5) #9
  %6 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %json) #9
  ret void
}

declare ptr @json_stringn(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define internal void @dump_file() #0 {
entry:
  %json = alloca ptr, align 8
  %result = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %json) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9
  %call = call i32 @json_dump_file(ptr noundef null, ptr noundef @.str, i64 noundef 0)
  store i32 %call, ptr %result, align 4, !tbaa !13
  %0 = load i32, ptr %result, align 4, !tbaa !13
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 214)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.3, ptr noundef @.str.41)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call3 = call ptr @json_object()
  store ptr %call3, ptr %json, align 8, !tbaa !5
  %3 = load ptr, ptr %json, align 8, !tbaa !5
  %call4 = call i32 @json_dump_file(ptr noundef %3, ptr noundef @.str.42, i64 noundef 0)
  store i32 %call4, ptr %result, align 4, !tbaa !13
  %4 = load i32, ptr %result, align 4, !tbaa !13
  %cmp5 = icmp ne i32 %4, 0
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 219)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.3, ptr noundef @.str.43)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond10:                                        ; No predecessors!
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end
  %7 = load ptr, ptr %json, align 8, !tbaa !5
  call void @json_decref(ptr noundef %7)
  %call13 = call i32 @remove(ptr noundef @.str.42) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %json) #9
  ret void
}

declare i32 @json_dump_file(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i32 @remove(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @dumpb() #0 {
entry:
  %buf = alloca [2 x i8], align 1
  %obj = alloca ptr, align 8
  %size = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr %buf) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9
  %call = call ptr @json_object()
  store ptr %call, ptr %obj, align 8, !tbaa !5
  %0 = load ptr, ptr %obj, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0
  %call1 = call i64 @json_dumpb(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 2, i64 noundef 0)
  store i64 %call1, ptr %size, align 8, !tbaa !9
  %1 = load i64, ptr %size, align 8, !tbaa !9
  %cmp = icmp ne i64 %1, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0
  %call3 = call i32 @strncmp(ptr noundef %arraydecay2, ptr noundef @.str.9, i64 noundef 2) #11
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 234)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.3, ptr noundef @.str.44)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false
  %4 = load ptr, ptr %obj, align 8, !tbaa !5
  call void @json_decref(ptr noundef %4)
  %call6 = call ptr (ptr, ...) @json_pack(ptr noundef @.str.45, ptr noundef @.str.11, ptr noundef @.str.46)
  store ptr %call6, ptr %obj, align 8, !tbaa !5
  %5 = load ptr, ptr %obj, align 8, !tbaa !5
  %arraydecay7 = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0
  %call8 = call i64 @json_dumpb(ptr noundef %5, ptr noundef %arraydecay7, i64 noundef 2, i64 noundef 32)
  store i64 %call8, ptr %size, align 8, !tbaa !9
  %6 = load i64, ptr %size, align 8, !tbaa !9
  %cmp9 = icmp ne i64 %6, 13
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 241)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.3, ptr noundef @.str.47)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond14:                                        ; No predecessors!
  br label %do.end15

do.end15:                                         ; preds = %do.cond14
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %if.end
  %9 = load ptr, ptr %obj, align 8, !tbaa !5
  call void @json_decref(ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr %buf) #9
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

declare ptr @json_pack(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal void @dumpfd() #0 {
entry:
  %fds = alloca [2 x i32], align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fds) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %fds, ptr align 4 @__const.dumpfd.fds, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #9
  %arraydecay = getelementptr inbounds [2 x i32], ptr %fds, i64 0, i64 0
  %call = call i32 @pipe(ptr noundef %arraydecay) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 252)
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.3, ptr noundef @.str.48)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %call3 = call ptr (ptr, ...) @json_pack(ptr noundef @.str.45, ptr noundef @.str.11, ptr noundef @.str.46)
  store ptr %call3, ptr %a, align 8, !tbaa !5
  %2 = load ptr, ptr %a, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [2 x i32], ptr %fds, i64 0, i64 1
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !13
  %call4 = call i32 @json_dumpfd(ptr noundef %2, i32 noundef %3, i64 noundef 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 257)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.3, ptr noundef @.str.49)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond10:                                        ; No predecessors!
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %fds, i64 0, i64 1
  %6 = load i32, ptr %arrayidx13, align 4, !tbaa !13
  %call14 = call i32 @close(i32 noundef %6)
  %arrayidx15 = getelementptr inbounds [2 x i32], ptr %fds, i64 0, i64 0
  %7 = load i32, ptr %arrayidx15, align 4, !tbaa !13
  %call16 = call ptr @json_loadfd(i32 noundef %7, i64 noundef 0, ptr noundef null)
  store ptr %call16, ptr %b, align 8, !tbaa !5
  %8 = load ptr, ptr %b, align 8, !tbaa !5
  %tobool17 = icmp ne ptr %8, null
  br i1 %tobool17, label %if.end24, label %if.then18

if.then18:                                        ; preds = %if.end12
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 262)
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.3, ptr noundef @.str.50)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond22:                                        ; No predecessors!
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end12
  %arrayidx25 = getelementptr inbounds [2 x i32], ptr %fds, i64 0, i64 0
  %11 = load i32, ptr %arrayidx25, align 4, !tbaa !13
  %call26 = call i32 @close(i32 noundef %11)
  %12 = load ptr, ptr %a, align 8, !tbaa !5
  %13 = load ptr, ptr %b, align 8, !tbaa !5
  %call27 = call i32 @json_equal(ptr noundef %12, ptr noundef %13)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.end24
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 266)
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.3, ptr noundef @.str.51)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond33:                                        ; No predecessors!
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end24
  %16 = load ptr, ptr %a, align 8, !tbaa !5
  call void @json_decref(ptr noundef %16)
  %17 = load ptr, ptr %b, align 8, !tbaa !5
  call void @json_decref(ptr noundef %17)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fds) #9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) #1

declare i32 @close(i32 noundef) #2

declare ptr @json_loadfd(i32 noundef, i64 noundef, ptr noundef) #2

declare i32 @json_equal(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @embed() #0 {
entry:
  %i = alloca i64, align 8
  %plain = alloca ptr, align 8
  %parse = alloca ptr, align 8
  %embed = alloca ptr, align 8
  %psize = alloca i64, align 8
  %esize = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds [5 x ptr], ptr @embed.plains, i64 0, i64 %0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %plain) #9
  %2 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds [5 x ptr], ptr @embed.plains, i64 0, i64 %2
  %3 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  store ptr %3, ptr %plain, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %parse) #9
  store ptr null, ptr %parse, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %embed) #9
  store ptr null, ptr %embed, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %psize) #9
  store i64 0, ptr %psize, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %esize) #9
  store i64 0, ptr %esize, align 8, !tbaa !9
  %4 = load ptr, ptr %plain, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %4) #11
  %sub = sub i64 %call, 2
  store i64 %sub, ptr %psize, align 8, !tbaa !9
  %5 = load i64, ptr %psize, align 8, !tbaa !9
  %call2 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %5) #12
  store ptr %call2, ptr %embed, align 8, !tbaa !5
  %6 = load ptr, ptr %plain, align 8, !tbaa !5
  %call3 = call ptr @json_loads(ptr noundef %6, i64 noundef 0, ptr noundef null)
  store ptr %call3, ptr %parse, align 8, !tbaa !5
  %7 = load ptr, ptr %parse, align 8, !tbaa !5
  %8 = load ptr, ptr %embed, align 8, !tbaa !5
  %9 = load i64, ptr %psize, align 8, !tbaa !9
  %call4 = call i64 @json_dumpb(ptr noundef %7, ptr noundef %8, i64 noundef %9, i64 noundef 65696)
  store i64 %call4, ptr %esize, align 8, !tbaa !9
  %10 = load ptr, ptr %parse, align 8, !tbaa !5
  call void @json_decref(ptr noundef %10)
  %11 = load i64, ptr %esize, align 8, !tbaa !9
  %12 = load i64, ptr %psize, align 8, !tbaa !9
  %cmp = icmp ne i64 %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 293)
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.3, ptr noundef @.str.54)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body
  %15 = load ptr, ptr %plain, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load ptr, ptr %embed, align 8, !tbaa !5
  %17 = load i64, ptr %esize, align 8, !tbaa !9
  %call7 = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef %16, i64 noundef %17) #11
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 295)
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.3, ptr noundef @.str.55)
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond13:                                        ; No predecessors!
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.end
  %20 = load ptr, ptr %embed, align 8, !tbaa !5
  call void @free(ptr noundef %20) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %esize) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %psize) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %embed) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %parse) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %plain) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %21 = load i64, ptr %i, align 8, !tbaa !9
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #8

declare ptr @json_loads(ptr noundef, i64 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind allocsize(0,1) }

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
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"json_t", !7, i64 0, !10, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}

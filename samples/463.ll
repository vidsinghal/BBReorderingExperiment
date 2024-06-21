; ModuleID = 'samples/463.bc'
source_filename = "/local-ssd/jansson-6ysjm5zf4xkytnr237xl5srxz3lqeclu-build/aidengro/spack-stage-jansson-2.14-6ysjm5zf4xkytnr237xl5srxz3lqeclu/spack-src/examples/simple_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_t = type { i32, i64 }
%struct.json_error_t = type { i32, i32, i32, [80 x i8], [160 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"unrecognized JSON type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"JSON Object of %lld pair%s:\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"JSON Key: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"JSON Array of %lld element%s:\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"JSON String: \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"JSON Integer: \22%lld\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"JSON Real: %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"JSON True\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"JSON False\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"JSON Null\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"json error on line %d: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Type some JSON > \00", align 1
@stdout = external global ptr, align 8
@stdin = external global ptr, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"Usage: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @print_json(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %root.addr, align 8, !tbaa !5
  call void @print_json_aux(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_aux(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.json_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %type, align 8, !tbaa !11
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %3 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_object(ptr noundef %2, i32 noundef %3)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %5 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_array(ptr noundef %4, i32 noundef %5)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %6 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %7 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_string(ptr noundef %6, i32 noundef %7)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %8 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %9 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_integer(ptr noundef %8, i32 noundef %9)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %10 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %11 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_real(ptr noundef %10, i32 noundef %11)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %12 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %13 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_true(ptr noundef %12, i32 noundef %13)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %14 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %15 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_false(ptr noundef %14, i32 noundef %15)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %16 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %17 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_null(ptr noundef %16, i32 noundef %17)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %type8 = getelementptr inbounds %struct.json_t, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %type8, align 8, !tbaa !11
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str, i32 noundef %20)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_object(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %key = alloca ptr, align 8
  %value = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5
  %0 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %0)
  %1 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %call = call i64 @json_object_size(ptr noundef %1)
  store i64 %call, ptr %size, align 8, !tbaa !14
  %2 = load i64, ptr %size, align 8, !tbaa !14
  %3 = load i64, ptr %size, align 8, !tbaa !14
  %call1 = call ptr @json_plural(i64 noundef %3)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %2, ptr noundef %call1)
  %4 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %call3 = call ptr @json_object_iter(ptr noundef %4)
  %call4 = call ptr @json_object_iter_key(ptr noundef %call3)
  store ptr %call4, ptr %key, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %key, align 8, !tbaa !5
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load ptr, ptr %key, align 8, !tbaa !5
  %call5 = call ptr @json_object_key_to_iter(ptr noundef %6)
  %call6 = call ptr @json_object_iter_value(ptr noundef %call5)
  store ptr %call6, ptr %value, align 8, !tbaa !5
  %tobool7 = icmp ne ptr %call6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool7, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %add = add nsw i32 %8, 2
  call void @print_json_indent(i32 noundef %add)
  %9 = load ptr, ptr %key, align 8, !tbaa !5
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %9)
  %10 = load ptr, ptr %value, align 8, !tbaa !5
  %11 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %add9 = add nsw i32 %11, 2
  call void @print_json_aux(ptr noundef %10, i32 noundef %add9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %13 = load ptr, ptr %key, align 8, !tbaa !5
  %call10 = call ptr @json_object_key_to_iter(ptr noundef %13)
  %call11 = call ptr @json_object_iter_next(ptr noundef %12, ptr noundef %call10)
  %call12 = call ptr @json_object_iter_key(ptr noundef %call11)
  store ptr %call12, ptr %key, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_array(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #5
  %0 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %call = call i64 @json_array_size(ptr noundef %0)
  store i64 %call, ptr %size, align 8, !tbaa !14
  %1 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %1)
  %2 = load i64, ptr %size, align 8, !tbaa !14
  %3 = load i64, ptr %size, align 8, !tbaa !14
  %call1 = call ptr @json_plural(i64 noundef %3)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef %2, ptr noundef %call1)
  store i64 0, ptr %i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %i, align 8, !tbaa !14
  %5 = load i64, ptr %size, align 8, !tbaa !14
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %7 = load i64, ptr %i, align 8, !tbaa !14
  %call3 = call ptr @json_array_get(ptr noundef %6, i64 noundef %7)
  %8 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %add = add nsw i32 %8, 2
  call void @print_json_aux(ptr noundef %call3, i32 noundef %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !tbaa !14
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_string(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  %0 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %0)
  %1 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %call = call ptr @json_string_value(ptr noundef %1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_integer(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  %0 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %0)
  %1 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %call = call i64 @json_integer_value(ptr noundef %1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_real(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  %0 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %0)
  %1 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %call = call double @json_real_value(ptr noundef %1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_true(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %1 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_false(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %1 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @print_json_null(ptr noundef %element, i32 noundef %indent) #0 {
entry:
  %element.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  store ptr %element, ptr %element.addr, align 8, !tbaa !5
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %element.addr, align 8, !tbaa !5
  %1 = load i32, ptr %indent.addr, align 4, !tbaa !9
  call void @print_json_indent(i32 noundef %1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define dso_local void @print_json_indent(i32 noundef %indent) #0 {
entry:
  %indent.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !9
  %1 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @putchar(i32 noundef 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @putchar(i32 noundef %__c) #3 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !9
  %0 = load i32, ptr %__c.addr, align 4, !tbaa !9
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call = call i32 @putc(i32 noundef %0, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @json_plural(i64 noundef %count) #0 {
entry:
  %count.addr = alloca i64, align 8
  store i64 %count, ptr %count.addr, align 8, !tbaa !14
  %0 = load i64, ptr %count.addr, align 8, !tbaa !14
  %cmp = icmp eq i64 %0, 1
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.1, ptr @.str.2
  ret ptr %cond
}

declare i64 @json_object_size(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare ptr @json_object_iter_key(ptr noundef) #1

declare ptr @json_object_iter(ptr noundef) #1

declare ptr @json_object_iter_value(ptr noundef) #1

declare ptr @json_object_key_to_iter(ptr noundef) #1

declare ptr @json_object_iter_next(ptr noundef, ptr noundef) #1

declare i64 @json_array_size(ptr noundef) #1

declare ptr @json_array_get(ptr noundef, i64 noundef) #1

declare ptr @json_string_value(ptr noundef) #1

declare i64 @json_integer_value(ptr noundef) #1

declare double @json_real_value(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @load_json(ptr noundef %text) #0 {
entry:
  %retval = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %root = alloca ptr, align 8
  %error = alloca %struct.json_error_t, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %text, ptr %text.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #5
  call void @llvm.lifetime.start.p0(i64 252, ptr %error) #5
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !5
  %call = call ptr @json_loads(ptr noundef %0, i64 noundef 0, ptr noundef %error)
  store ptr %call, ptr %root, align 8, !tbaa !5
  %1 = load ptr, ptr %root, align 8, !tbaa !5
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %root, align 8, !tbaa !5
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %line = getelementptr inbounds %struct.json_error_t, ptr %error, i32 0, i32 0
  %4 = load i32, ptr %line, align 4, !tbaa !19
  %text1 = getelementptr inbounds %struct.json_error_t, ptr %error, i32 0, i32 4
  %arraydecay = getelementptr inbounds [160 x i8], ptr %text1, i64 0, i64 0
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.12, i32 noundef %4, ptr noundef %arraydecay)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 252, ptr %error) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #5
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare ptr @json_loads(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @read_line(ptr noundef %line, i32 noundef %max_chars) #0 {
entry:
  %line.addr = alloca ptr, align 8
  %max_chars.addr = alloca i32, align 4
  store ptr %line, ptr %line.addr, align 8, !tbaa !5
  store i32 %max_chars, ptr %max_chars.addr, align 4, !tbaa !9
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call1 = call i32 @fflush(ptr noundef %0)
  %1 = load ptr, ptr %line.addr, align 8, !tbaa !5
  %2 = load i32, ptr %max_chars.addr, align 4, !tbaa !9
  %3 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call2 = call ptr @fgets(ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret ptr %call2
}

declare i32 @fflush(ptr noundef) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %line = alloca [4096 x i8], align 16
  %root = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !9
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4096, ptr %line) #5
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !9
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.14, ptr noundef %3)
  call void @exit(i32 noundef -1) #6
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %line, i64 0, i64 0
  %call1 = call ptr @read_line(ptr noundef %arraydecay, i32 noundef 4096)
  %cmp2 = icmp ne ptr %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #5
  %arraydecay3 = getelementptr inbounds [4096 x i8], ptr %line, i64 0, i64 0
  %call4 = call ptr @load_json(ptr noundef %arraydecay3)
  store ptr %call4, ptr %root, align 8, !tbaa !5
  %4 = load ptr, ptr %root, align 8, !tbaa !5
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  %5 = load ptr, ptr %root, align 8, !tbaa !5
  call void @print_json(ptr noundef %5)
  %6 = load ptr, ptr %root, align 8, !tbaa !5
  call void @json_decref(ptr noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #5
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4096, ptr %line) #5
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @json_decref(ptr noundef %json) #3 {
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
  %2 = load volatile i64, ptr %refcount, align 8, !tbaa !22
  %cmp = icmp ne i64 %2, -1
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %json.addr, align 8, !tbaa !5
  %refcount2 = getelementptr inbounds %struct.json_t, ptr %3, i32 0, i32 1
  store i64 1, ptr %.atomictmp, align 8, !tbaa !14
  %4 = load i64, ptr %.atomictmp, align 8
  %5 = atomicrmw volatile sub ptr %refcount2, i64 %4 release, align 8
  %6 = sub i64 %5, %4
  store i64 %6, ptr %atomic-temp, align 8
  %7 = load i64, ptr %atomic-temp, align 8, !tbaa !14
  %cmp3 = icmp eq i64 %7, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %8 = load ptr, ptr %json.addr, align 8, !tbaa !5
  call void @json_delete(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

declare void @json_delete(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!11 = !{!12, !7, i64 0}
!12 = !{!"json_t", !7, i64 0, !13, i64 8}
!13 = !{!"long", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{!20, !10, i64 0}
!20 = !{!"json_error_t", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 12, !7, i64 92}
!21 = distinct !{!21, !16}
!22 = !{!12, !13, i64 8}

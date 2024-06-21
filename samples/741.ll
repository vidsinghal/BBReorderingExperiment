; ModuleID = 'samples/741.bc'
source_filename = "modules/tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YR_VALUE = type { i64 }
%struct.YR_OBJECT_FUNCTION = type { i32, i8, ptr, ptr, ptr, ptr, [10 x %struct.anon] }
%struct.anon = type { ptr, ptr }
%struct.YR_OBJECT = type { i32, i8, ptr, ptr, ptr, %union.YR_VALUE }
%struct._SIZED_STRING = type { i32, i32, [1 x i8] }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [54 x i8] c"%s:%d: return type differs from function declaration\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"modules/tests.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"oops\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s:%d: too many nested structures\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"stack[stack_top]->type == OBJECT_TYPE_STRUCTURE\00", align 1
@__PRETTY_FUNCTION__.tests__declarations = private unnamed_addr constant [37 x i8] c"int tests__declarations(YR_OBJECT *)\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s:%d: unbalanced begin_struct/end_struct\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"module_data\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"integer_array\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"string_array\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"integer_dict\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"string_dict\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"struct_array\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"struct_dict\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"isum\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"iii\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"fsum\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"fff\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"constants.one\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"constants.two\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"constants.foo\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"constants.empty\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"struct_array[1].i\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"integer_array[%i]\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"string_array[%i]\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"foo\00bar\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"string_dict[%s]\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"string_dict[\22bar\22]\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"struct_dict[%s].s\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"struct_dict[%s].i\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__PRETTY_FUNCTION__.tests__unload = private unnamed_addr constant [31 x i8] c"int tests__unload(YR_OBJECT *)\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @fsum_2(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %d = alloca double, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  %0 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %union.YR_VALUE, ptr %0, i64 0
  %1 = load double, ptr %arrayidx, align 8, !tbaa !8
  store double %1, ptr %a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  %2 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds %union.YR_VALUE, ptr %2, i64 1
  %3 = load double, ptr %arrayidx1, align 8, !tbaa !8
  store double %3, ptr %b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #5
  %4 = load double, ptr %a, align 8, !tbaa !9
  %5 = load double, ptr %b, align 8, !tbaa !9
  %add = fadd double %4, %5
  store double %add, ptr %d, align 8, !tbaa !9
  %6 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 40)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %10 = load double, ptr %d, align 8, !tbaa !9
  %cmp3 = fcmp une double %10, 0x43EFFF575B5F575B
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load double, ptr %d, align 8, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %11, %cond.true ], [ 0x7FF8000000000000, %cond.false ]
  %12 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj5 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %return_obj5, align 8, !tbaa !11
  %call6 = call i32 (double, ptr, ptr, ...) @yr_object_set_float(double noundef %cond, ptr noundef %13, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  ret i32 %call6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare i32 @yr_object_set_float(double noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @fsum_3(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  %0 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %union.YR_VALUE, ptr %0, i64 0
  %1 = load double, ptr %arrayidx, align 8, !tbaa !8
  store double %1, ptr %a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  %2 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds %union.YR_VALUE, ptr %2, i64 1
  %3 = load double, ptr %arrayidx1, align 8, !tbaa !8
  store double %3, ptr %b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  %4 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds %union.YR_VALUE, ptr %4, i64 2
  %5 = load double, ptr %arrayidx2, align 8, !tbaa !8
  store double %5, ptr %c, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #5
  %6 = load double, ptr %a, align 8, !tbaa !9
  %7 = load double, ptr %b, align 8, !tbaa !9
  %add = fadd double %6, %7
  %8 = load double, ptr %c, align 8, !tbaa !9
  %add3 = fadd double %add, %8
  store double %add3, ptr %d, align 8, !tbaa !9
  %9 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 7
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 49)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %13 = load double, ptr %d, align 8, !tbaa !9
  %cmp5 = fcmp une double %13, 0x43EFFF575B5F575B
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load double, ptr %d, align 8, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %14, %cond.true ], [ 0x7FF8000000000000, %cond.false ]
  %15 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj7 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %return_obj7, align 8, !tbaa !11
  %call8 = call i32 (double, ptr, ptr, ...) @yr_object_set_float(double noundef %cond, ptr noundef %16, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  ret i32 %call8
}

; Function Attrs: nounwind uwtable
define hidden i32 @isum_2(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  %0 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %union.YR_VALUE, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %1, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  %2 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds %union.YR_VALUE, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8, !tbaa !8
  store i64 %3, ptr %b, align 8, !tbaa !16
  %4 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %5, i32 0, i32 1
  %6 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 57)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %a, align 8, !tbaa !16
  %9 = load i64, ptr %b, align 8, !tbaa !16
  %add = add nsw i64 %8, %9
  %10 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj3 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %return_obj3, align 8, !tbaa !11
  %call4 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef %add, ptr noundef %11, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  ret i32 %call4
}

declare i32 @yr_object_set_integer(i64 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define hidden i32 @isum_3(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  %0 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %union.YR_VALUE, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %1, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  %2 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds %union.YR_VALUE, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8, !tbaa !8
  store i64 %3, ptr %b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  %4 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds %union.YR_VALUE, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx2, align 8, !tbaa !8
  store i64 %5, ptr %c, align 8, !tbaa !16
  %6 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 67)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %10 = load i64, ptr %a, align 8, !tbaa !16
  %11 = load i64, ptr %b, align 8, !tbaa !16
  %add = add nsw i64 %10, %11
  %12 = load i64, ptr %c, align 8, !tbaa !16
  %add4 = add nsw i64 %add, %12
  %13 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj5 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %return_obj5, align 8, !tbaa !11
  %call6 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef %add4, ptr noundef %14, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  ret i32 %call6
}

; Function Attrs: nounwind uwtable
define hidden i32 @length(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %0 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %union.YR_VALUE, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  %c_string = getelementptr inbounds %struct._SIZED_STRING, ptr %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], ptr %c_string, i64 0, i64 0
  store ptr %arraydecay, ptr %s, align 8, !tbaa !4
  %2 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 75)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %call2 = call i64 @strlen(ptr noundef %6) #7
  %7 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj3 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %return_obj3, align 8, !tbaa !11
  %call4 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef %call2, ptr noundef %8, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  ret i32 %call4
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define hidden i32 @empty(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  store ptr @.str.2, ptr %s, align 8, !tbaa !4
  %0 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 81)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %s, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %4, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ]
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %6, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp4, label %cond.true6, label %cond.false8

cond.true6:                                       ; preds = %cond.end
  %7 = load ptr, ptr %s, align 8, !tbaa !4
  %call7 = call i64 @strlen(ptr noundef %7) #7
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true6
  %cond10 = phi i64 [ %call7, %cond.true6 ], [ 0, %cond.false8 ]
  %8 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj11 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %return_obj11, align 8, !tbaa !11
  %call12 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef %cond, i64 noundef %cond10, ptr noundef %9, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  ret i32 %call12
}

declare i32 @yr_object_set_string(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define hidden i32 @match(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 91)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %__context.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %union.YR_VALUE, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  %7 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds %union.YR_VALUE, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx2, align 8, !tbaa !8
  %c_string = getelementptr inbounds %struct._SIZED_STRING, ptr %8, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], ptr %c_string, i64 0, i64 0
  %call3 = call i32 @yr_re_match(ptr noundef %4, ptr noundef %6, ptr noundef %arraydecay)
  %conv4 = sext i32 %call3 to i64
  %9 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj5 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %return_obj5, align 8, !tbaa !11
  %call6 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef %conv4, ptr noundef %10, ptr noundef null)
  ret i32 %call6
}

declare i32 @yr_re_match(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @foobar(ptr noundef %__args, ptr noundef %__context, ptr noundef %__function_obj) #0 {
entry:
  %retval = alloca i32, align 4
  %__args.addr = alloca ptr, align 8
  %__context.addr = alloca ptr, align 8
  %__function_obj.addr = alloca ptr, align 8
  %arg = alloca i64, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %s14 = alloca ptr, align 8
  %s38 = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8, !tbaa !4
  store ptr %__context, ptr %__context.addr, align 8, !tbaa !4
  store ptr %__function_obj, ptr %__function_obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #5
  %0 = load ptr, ptr %__args.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %union.YR_VALUE, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %1, ptr %arg, align 8, !tbaa !16
  %2 = load i64, ptr %arg, align 8, !tbaa !16
  switch i64 %2, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  store ptr @.str.3, ptr %s, align 8, !tbaa !4
  %3 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %return_obj, align 8, !tbaa !11
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %type, align 4, !tbaa !14
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %6 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 102)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %sw.bb
  %7 = load ptr, ptr %s, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %7, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %8 = load ptr, ptr %s, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ]
  %9 = load ptr, ptr %s, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %9, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp4, label %cond.true6, label %cond.false8

cond.true6:                                       ; preds = %cond.end
  %10 = load ptr, ptr %s, align 8, !tbaa !4
  %call7 = call i64 @strlen(ptr noundef %10) #7
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true6
  %cond10 = phi i64 [ %call7, %cond.true6 ], [ 0, %cond.false8 ]
  %11 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj11 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %return_obj11, align 8, !tbaa !11
  %call12 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef %cond, i64 noundef %cond10, ptr noundef %12, ptr noundef null)
  store i32 %call12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %s14) #5
  store ptr @.str.4, ptr %s14, align 8, !tbaa !4
  %13 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj15 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %return_obj15, align 8, !tbaa !11
  %type16 = getelementptr inbounds %struct.YR_OBJECT, ptr %14, i32 0, i32 1
  %15 = load i8, ptr %type16, align 4, !tbaa !14
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 2
  br i1 %cmp18, label %if.end22, label %if.then20

if.then20:                                        ; preds = %sw.bb13
  %16 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 105)
  call void @abort() #6
  unreachable

if.end22:                                         ; preds = %sw.bb13
  %17 = load ptr, ptr %s14, align 8, !tbaa !4
  %cmp23 = icmp ne ptr %17, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp23, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %if.end22
  %18 = load ptr, ptr %s14, align 8, !tbaa !4
  br label %cond.end27

cond.false26:                                     ; preds = %if.end22
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.true25
  %cond28 = phi ptr [ %18, %cond.true25 ], [ null, %cond.false26 ]
  %19 = load ptr, ptr %s14, align 8, !tbaa !4
  %cmp29 = icmp ne ptr %19, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp29, label %cond.true31, label %cond.false33

cond.true31:                                      ; preds = %cond.end27
  %20 = load ptr, ptr %s14, align 8, !tbaa !4
  %call32 = call i64 @strlen(ptr noundef %20) #7
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end27
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.true31
  %cond35 = phi i64 [ %call32, %cond.true31 ], [ 0, %cond.false33 ]
  %21 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj36 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %return_obj36, align 8, !tbaa !11
  %call37 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef %cond28, i64 noundef %cond35, ptr noundef %22, ptr noundef null)
  store i32 %call37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s14) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %s38) #5
  store ptr @.str.5, ptr %s38, align 8, !tbaa !4
  %23 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj39 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %return_obj39, align 8, !tbaa !11
  %type40 = getelementptr inbounds %struct.YR_OBJECT, ptr %24, i32 0, i32 1
  %25 = load i8, ptr %type40, align 4, !tbaa !14
  %conv41 = sext i8 %25 to i32
  %cmp42 = icmp eq i32 %conv41, 2
  br i1 %cmp42, label %if.end46, label %if.then44

if.then44:                                        ; preds = %sw.epilog
  %26 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 109)
  call void @abort() #6
  unreachable

if.end46:                                         ; preds = %sw.epilog
  %27 = load ptr, ptr %s38, align 8, !tbaa !4
  %cmp47 = icmp ne ptr %27, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp47, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %if.end46
  %28 = load ptr, ptr %s38, align 8, !tbaa !4
  br label %cond.end51

cond.false50:                                     ; preds = %if.end46
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true49
  %cond52 = phi ptr [ %28, %cond.true49 ], [ null, %cond.false50 ]
  %29 = load ptr, ptr %s38, align 8, !tbaa !4
  %cmp53 = icmp ne ptr %29, inttoptr (i64 -1483400188077313 to ptr)
  br i1 %cmp53, label %cond.true55, label %cond.false57

cond.true55:                                      ; preds = %cond.end51
  %30 = load ptr, ptr %s38, align 8, !tbaa !4
  %call56 = call i64 @strlen(ptr noundef %30) #7
  br label %cond.end58

cond.false57:                                     ; preds = %cond.end51
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true55
  %cond59 = phi i64 [ %call56, %cond.true55 ], [ 0, %cond.false57 ]
  %31 = load ptr, ptr %__function_obj.addr, align 8, !tbaa !4
  %return_obj60 = getelementptr inbounds %struct.YR_OBJECT_FUNCTION, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %return_obj60, align 8, !tbaa !11
  %call61 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef %cond52, i64 noundef %cond59, ptr noundef %32, ptr noundef null)
  store i32 %call61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s38) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.end58, %cond.end34, %cond.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #5
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define hidden i32 @tests__declarations(ptr noundef %module) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca ptr, align 8
  %stack = alloca [64 x ptr], align 16
  %stack_top = alloca i32, align 4
  %structure = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %result13 = alloca i32, align 4
  %result24 = alloca i32, align 4
  %result35 = alloca i32, align 4
  %result46 = alloca i32, align 4
  %structure72 = alloca ptr, align 8
  %result73 = alloca i32, align 4
  %result96 = alloca i32, align 4
  %result107 = alloca i32, align 4
  %result137 = alloca i32, align 4
  %array = alloca ptr, align 8
  %result148 = alloca i32, align 4
  %result159 = alloca i32, align 4
  %array171 = alloca ptr, align 8
  %result172 = alloca i32, align 4
  %result183 = alloca i32, align 4
  %dict = alloca ptr, align 8
  %result195 = alloca i32, align 4
  %result206 = alloca i32, align 4
  %dict218 = alloca ptr, align 8
  %result219 = alloca i32, align 4
  %result230 = alloca i32, align 4
  %structure242 = alloca ptr, align 8
  %array243 = alloca ptr, align 8
  %result244 = alloca i32, align 4
  %result255 = alloca i32, align 4
  %result277 = alloca i32, align 4
  %result288 = alloca i32, align 4
  %structure318 = alloca ptr, align 8
  %array319 = alloca ptr, align 8
  %result320 = alloca i32, align 4
  %result331 = alloca i32, align 4
  %result353 = alloca i32, align 4
  %result364 = alloca i32, align 4
  %function = alloca ptr, align 8
  %result394 = alloca i32, align 4
  %function408 = alloca ptr, align 8
  %result409 = alloca i32, align 4
  %function423 = alloca ptr, align 8
  %result424 = alloca i32, align 4
  %function438 = alloca ptr, align 8
  %result439 = alloca i32, align 4
  %function453 = alloca ptr, align 8
  %result454 = alloca i32, align 4
  %function468 = alloca ptr, align 8
  %result469 = alloca i32, align 4
  %function483 = alloca ptr, align 8
  %result484 = alloca i32, align 4
  %function498 = alloca ptr, align 8
  %result499 = alloca i32, align 4
  store ptr %module, ptr %module.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 512, ptr %stack) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %stack_top) #5
  store i32 0, ptr %stack_top, align 4, !tbaa !18
  %0 = load ptr, ptr %module.addr, align 8, !tbaa !4
  %1 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom
  store ptr %0, ptr %arrayidx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %structure) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #5
  %2 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom1
  %3 = load ptr, ptr %arrayidx2, align 8, !tbaa !4
  %call = call i32 @yr_object_create(i8 noundef signext 3, ptr noundef @.str.6, ptr noundef %3, ptr noundef %structure)
  store i32 %call, ptr %result, align 4, !tbaa !18
  %4 = load i32, ptr %result, align 4, !tbaa !18
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %result, align 4, !tbaa !18
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %6 = load i32, ptr %stack_top, align 4, !tbaa !18
  %conv = sext i32 %6 to i64
  %cmp3 = icmp ult i64 %conv, 63
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %cleanup.cont
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 114)
  call void @abort() #6
  unreachable

if.end7:                                          ; preds = %cleanup.cont
  %8 = load ptr, ptr %structure, align 8, !tbaa !4
  %9 = load i32, ptr %stack_top, align 4, !tbaa !18
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %stack_top, align 4, !tbaa !18
  %idxprom8 = sext i32 %inc to i64
  %arrayidx9 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom8
  store ptr %8, ptr %arrayidx9, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.end7, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %structure) #5
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %cleanup513 [
    i32 0, label %cleanup.cont12
  ]

cleanup.cont12:                                   ; preds = %cleanup10
  call void @llvm.lifetime.start.p0(i64 4, ptr %result13) #5
  %10 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom14
  %11 = load ptr, ptr %arrayidx15, align 8, !tbaa !4
  %call16 = call i32 @yr_object_create(i8 noundef signext 1, ptr noundef @.str.8, ptr noundef %11, ptr noundef null)
  store i32 %call16, ptr %result13, align 4, !tbaa !18
  %12 = load i32, ptr %result13, align 4, !tbaa !18
  %cmp17 = icmp ne i32 %12, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %cleanup.cont12
  %13 = load i32, ptr %result13, align 4, !tbaa !18
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

if.end20:                                         ; preds = %cleanup.cont12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %result13) #5
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup513 [
    i32 0, label %cleanup.cont23
  ]

cleanup.cont23:                                   ; preds = %cleanup21
  call void @llvm.lifetime.start.p0(i64 4, ptr %result24) #5
  %14 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom25 = sext i32 %14 to i64
  %arrayidx26 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom25
  %15 = load ptr, ptr %arrayidx26, align 8, !tbaa !4
  %call27 = call i32 @yr_object_create(i8 noundef signext 1, ptr noundef @.str.9, ptr noundef %15, ptr noundef null)
  store i32 %call27, ptr %result24, align 4, !tbaa !18
  %16 = load i32, ptr %result24, align 4, !tbaa !18
  %cmp28 = icmp ne i32 %16, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %cleanup.cont23
  %17 = load i32, ptr %result24, align 4, !tbaa !18
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32

if.end31:                                         ; preds = %cleanup.cont23
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %if.end31, %if.then30
  call void @llvm.lifetime.end.p0(i64 4, ptr %result24) #5
  %cleanup.dest33 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest33, label %cleanup513 [
    i32 0, label %cleanup.cont34
  ]

cleanup.cont34:                                   ; preds = %cleanup32
  call void @llvm.lifetime.start.p0(i64 4, ptr %result35) #5
  %18 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom36
  %19 = load ptr, ptr %arrayidx37, align 8, !tbaa !4
  %call38 = call i32 @yr_object_create(i8 noundef signext 2, ptr noundef @.str.3, ptr noundef %19, ptr noundef null)
  store i32 %call38, ptr %result35, align 4, !tbaa !18
  %20 = load i32, ptr %result35, align 4, !tbaa !18
  %cmp39 = icmp ne i32 %20, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %cleanup.cont34
  %21 = load i32, ptr %result35, align 4, !tbaa !18
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

if.end42:                                         ; preds = %cleanup.cont34
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end42, %if.then41
  call void @llvm.lifetime.end.p0(i64 4, ptr %result35) #5
  %cleanup.dest44 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest44, label %cleanup513 [
    i32 0, label %cleanup.cont45
  ]

cleanup.cont45:                                   ; preds = %cleanup43
  call void @llvm.lifetime.start.p0(i64 4, ptr %result46) #5
  %22 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom47 = sext i32 %22 to i64
  %arrayidx48 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom47
  %23 = load ptr, ptr %arrayidx48, align 8, !tbaa !4
  %call49 = call i32 @yr_object_create(i8 noundef signext 2, ptr noundef @.str.10, ptr noundef %23, ptr noundef null)
  store i32 %call49, ptr %result46, align 4, !tbaa !18
  %24 = load i32, ptr %result46, align 4, !tbaa !18
  %cmp50 = icmp ne i32 %24, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %cleanup.cont45
  %25 = load i32, ptr %result46, align 4, !tbaa !18
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54

if.end53:                                         ; preds = %cleanup.cont45
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %if.end53, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr %result46) #5
  %cleanup.dest55 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest55, label %cleanup513 [
    i32 0, label %cleanup.cont56
  ]

cleanup.cont56:                                   ; preds = %cleanup54
  %26 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom57 = sext i32 %26 to i64
  %arrayidx58 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom57
  %27 = load ptr, ptr %arrayidx58, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.YR_OBJECT, ptr %27, i32 0, i32 1
  %28 = load i8, ptr %type, align 4, !tbaa !14
  %conv59 = sext i8 %28 to i32
  %cmp60 = icmp eq i32 %conv59, 3
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %cleanup.cont56
  br label %if.end63

if.else:                                          ; preds = %cleanup.cont56
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 119, ptr noundef @__PRETTY_FUNCTION__.tests__declarations) #6
  unreachable

if.end63:                                         ; preds = %if.then62
  %29 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom64 = sext i32 %29 to i64
  %arrayidx65 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom64
  %30 = load ptr, ptr %arrayidx65, align 8, !tbaa !4
  %identifier = getelementptr inbounds %struct.YR_OBJECT, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %identifier, align 8, !tbaa !19
  %call66 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.6) #7
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.end63
  %32 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 119)
  call void @abort() #6
  unreachable

if.end71:                                         ; preds = %if.end63
  %33 = load i32, ptr %stack_top, align 4, !tbaa !18
  %dec = add nsw i32 %33, -1
  store i32 %dec, ptr %stack_top, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %structure72) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result73) #5
  %34 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom74 = sext i32 %34 to i64
  %arrayidx75 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom74
  %35 = load ptr, ptr %arrayidx75, align 8, !tbaa !4
  %call76 = call i32 @yr_object_create(i8 noundef signext 3, ptr noundef @.str.13, ptr noundef %35, ptr noundef %structure72)
  store i32 %call76, ptr %result73, align 4, !tbaa !18
  %36 = load i32, ptr %result73, align 4, !tbaa !18
  %cmp77 = icmp ne i32 %36, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end71
  %37 = load i32, ptr %result73, align 4, !tbaa !18
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

if.end80:                                         ; preds = %if.end71
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %if.end80, %if.then79
  call void @llvm.lifetime.end.p0(i64 4, ptr %result73) #5
  %cleanup.dest82 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest82, label %cleanup93 [
    i32 0, label %cleanup.cont83
  ]

cleanup.cont83:                                   ; preds = %cleanup81
  %38 = load i32, ptr %stack_top, align 4, !tbaa !18
  %conv84 = sext i32 %38 to i64
  %cmp85 = icmp ult i64 %conv84, 63
  br i1 %cmp85, label %if.end89, label %if.then87

if.then87:                                        ; preds = %cleanup.cont83
  %39 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 121)
  call void @abort() #6
  unreachable

if.end89:                                         ; preds = %cleanup.cont83
  %40 = load ptr, ptr %structure72, align 8, !tbaa !4
  %41 = load i32, ptr %stack_top, align 4, !tbaa !18
  %inc90 = add nsw i32 %41, 1
  store i32 %inc90, ptr %stack_top, align 4, !tbaa !18
  %idxprom91 = sext i32 %inc90 to i64
  %arrayidx92 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom91
  store ptr %40, ptr %arrayidx92, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %if.end89, %cleanup81
  call void @llvm.lifetime.end.p0(i64 8, ptr %structure72) #5
  %cleanup.dest94 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest94, label %cleanup513 [
    i32 0, label %cleanup.cont95
  ]

cleanup.cont95:                                   ; preds = %cleanup93
  call void @llvm.lifetime.start.p0(i64 4, ptr %result96) #5
  %42 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom97 = sext i32 %42 to i64
  %arrayidx98 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom97
  %43 = load ptr, ptr %arrayidx98, align 8, !tbaa !4
  %call99 = call i32 @yr_object_create(i8 noundef signext 1, ptr noundef @.str.14, ptr noundef %43, ptr noundef null)
  store i32 %call99, ptr %result96, align 4, !tbaa !18
  %44 = load i32, ptr %result96, align 4, !tbaa !18
  %cmp100 = icmp ne i32 %44, 0
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %cleanup.cont95
  %45 = load i32, ptr %result96, align 4, !tbaa !18
  store i32 %45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup104

if.end103:                                        ; preds = %cleanup.cont95
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup104

cleanup104:                                       ; preds = %if.end103, %if.then102
  call void @llvm.lifetime.end.p0(i64 4, ptr %result96) #5
  %cleanup.dest105 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest105, label %cleanup513 [
    i32 0, label %cleanup.cont106
  ]

cleanup.cont106:                                  ; preds = %cleanup104
  call void @llvm.lifetime.start.p0(i64 4, ptr %result107) #5
  %46 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom108 = sext i32 %46 to i64
  %arrayidx109 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom108
  %47 = load ptr, ptr %arrayidx109, align 8, !tbaa !4
  %call110 = call i32 @yr_object_create(i8 noundef signext 7, ptr noundef @.str.15, ptr noundef %47, ptr noundef null)
  store i32 %call110, ptr %result107, align 4, !tbaa !18
  %48 = load i32, ptr %result107, align 4, !tbaa !18
  %cmp111 = icmp ne i32 %48, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %cleanup.cont106
  %49 = load i32, ptr %result107, align 4, !tbaa !18
  store i32 %49, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

if.end114:                                        ; preds = %cleanup.cont106
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

cleanup115:                                       ; preds = %if.end114, %if.then113
  call void @llvm.lifetime.end.p0(i64 4, ptr %result107) #5
  %cleanup.dest116 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest116, label %cleanup513 [
    i32 0, label %cleanup.cont117
  ]

cleanup.cont117:                                  ; preds = %cleanup115
  %50 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom118 = sext i32 %50 to i64
  %arrayidx119 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom118
  %51 = load ptr, ptr %arrayidx119, align 8, !tbaa !4
  %type120 = getelementptr inbounds %struct.YR_OBJECT, ptr %51, i32 0, i32 1
  %52 = load i8, ptr %type120, align 4, !tbaa !14
  %conv121 = sext i8 %52 to i32
  %cmp122 = icmp eq i32 %conv121, 3
  br i1 %cmp122, label %if.then124, label %if.else125

if.then124:                                       ; preds = %cleanup.cont117
  br label %if.end126

if.else125:                                       ; preds = %cleanup.cont117
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 124, ptr noundef @__PRETTY_FUNCTION__.tests__declarations) #6
  unreachable

if.end126:                                        ; preds = %if.then124
  %53 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom127 = sext i32 %53 to i64
  %arrayidx128 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom127
  %54 = load ptr, ptr %arrayidx128, align 8, !tbaa !4
  %identifier129 = getelementptr inbounds %struct.YR_OBJECT, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %identifier129, align 8, !tbaa !19
  %call130 = call i32 @strcmp(ptr noundef %55, ptr noundef @.str.13) #7
  %cmp131 = icmp eq i32 %call130, 0
  br i1 %cmp131, label %if.end135, label %if.then133

if.then133:                                       ; preds = %if.end126
  %56 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 124)
  call void @abort() #6
  unreachable

if.end135:                                        ; preds = %if.end126
  %57 = load i32, ptr %stack_top, align 4, !tbaa !18
  %dec136 = add nsw i32 %57, -1
  store i32 %dec136, ptr %stack_top, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %result137) #5
  %58 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom138 = sext i32 %58 to i64
  %arrayidx139 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom138
  %59 = load ptr, ptr %arrayidx139, align 8, !tbaa !4
  %call140 = call i32 @yr_object_create(i8 noundef signext 2, ptr noundef @.str.16, ptr noundef %59, ptr noundef null)
  store i32 %call140, ptr %result137, align 4, !tbaa !18
  %60 = load i32, ptr %result137, align 4, !tbaa !18
  %cmp141 = icmp ne i32 %60, 0
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.end135
  %61 = load i32, ptr %result137, align 4, !tbaa !18
  store i32 %61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup145

if.end144:                                        ; preds = %if.end135
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %if.end144, %if.then143
  call void @llvm.lifetime.end.p0(i64 4, ptr %result137) #5
  %cleanup.dest146 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest146, label %cleanup513 [
    i32 0, label %cleanup.cont147
  ]

cleanup.cont147:                                  ; preds = %cleanup145
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result148) #5
  %62 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom149 = sext i32 %62 to i64
  %arrayidx150 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom149
  %63 = load ptr, ptr %arrayidx150, align 8, !tbaa !4
  %call151 = call i32 @yr_object_create(i8 noundef signext 4, ptr noundef @.str.17, ptr noundef %63, ptr noundef %array)
  store i32 %call151, ptr %result148, align 4, !tbaa !18
  %64 = load i32, ptr %result148, align 4, !tbaa !18
  %cmp152 = icmp ne i32 %64, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %cleanup.cont147
  %65 = load i32, ptr %result148, align 4, !tbaa !18
  store i32 %65, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

if.end155:                                        ; preds = %cleanup.cont147
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

cleanup156:                                       ; preds = %if.end155, %if.then154
  call void @llvm.lifetime.end.p0(i64 4, ptr %result148) #5
  %cleanup.dest157 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest157, label %cleanup168 [
    i32 0, label %cleanup.cont158
  ]

cleanup.cont158:                                  ; preds = %cleanup156
  call void @llvm.lifetime.start.p0(i64 4, ptr %result159) #5
  %66 = load ptr, ptr %array, align 8, !tbaa !4
  %call160 = call i32 @yr_object_create(i8 noundef signext 1, ptr noundef @.str.17, ptr noundef %66, ptr noundef null)
  store i32 %call160, ptr %result159, align 4, !tbaa !18
  %67 = load i32, ptr %result159, align 4, !tbaa !18
  %cmp161 = icmp ne i32 %67, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %cleanup.cont158
  %68 = load i32, ptr %result159, align 4, !tbaa !18
  store i32 %68, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup165

if.end164:                                        ; preds = %cleanup.cont158
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup165

cleanup165:                                       ; preds = %if.end164, %if.then163
  call void @llvm.lifetime.end.p0(i64 4, ptr %result159) #5
  %cleanup.dest166 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest166, label %cleanup168 [
    i32 0, label %cleanup.cont167
  ]

cleanup.cont167:                                  ; preds = %cleanup165
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup168

cleanup168:                                       ; preds = %cleanup.cont167, %cleanup165, %cleanup156
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #5
  %cleanup.dest169 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest169, label %cleanup513 [
    i32 0, label %cleanup.cont170
  ]

cleanup.cont170:                                  ; preds = %cleanup168
  call void @llvm.lifetime.start.p0(i64 8, ptr %array171) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result172) #5
  %69 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom173 = sext i32 %69 to i64
  %arrayidx174 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom173
  %70 = load ptr, ptr %arrayidx174, align 8, !tbaa !4
  %call175 = call i32 @yr_object_create(i8 noundef signext 4, ptr noundef @.str.18, ptr noundef %70, ptr noundef %array171)
  store i32 %call175, ptr %result172, align 4, !tbaa !18
  %71 = load i32, ptr %result172, align 4, !tbaa !18
  %cmp176 = icmp ne i32 %71, 0
  br i1 %cmp176, label %if.then178, label %if.end179

if.then178:                                       ; preds = %cleanup.cont170
  %72 = load i32, ptr %result172, align 4, !tbaa !18
  store i32 %72, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup180

if.end179:                                        ; preds = %cleanup.cont170
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup180

cleanup180:                                       ; preds = %if.end179, %if.then178
  call void @llvm.lifetime.end.p0(i64 4, ptr %result172) #5
  %cleanup.dest181 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest181, label %cleanup192 [
    i32 0, label %cleanup.cont182
  ]

cleanup.cont182:                                  ; preds = %cleanup180
  call void @llvm.lifetime.start.p0(i64 4, ptr %result183) #5
  %73 = load ptr, ptr %array171, align 8, !tbaa !4
  %call184 = call i32 @yr_object_create(i8 noundef signext 2, ptr noundef @.str.18, ptr noundef %73, ptr noundef null)
  store i32 %call184, ptr %result183, align 4, !tbaa !18
  %74 = load i32, ptr %result183, align 4, !tbaa !18
  %cmp185 = icmp ne i32 %74, 0
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %cleanup.cont182
  %75 = load i32, ptr %result183, align 4, !tbaa !18
  store i32 %75, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end188:                                        ; preds = %cleanup.cont182
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

cleanup189:                                       ; preds = %if.end188, %if.then187
  call void @llvm.lifetime.end.p0(i64 4, ptr %result183) #5
  %cleanup.dest190 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest190, label %cleanup192 [
    i32 0, label %cleanup.cont191
  ]

cleanup.cont191:                                  ; preds = %cleanup189
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup192

cleanup192:                                       ; preds = %cleanup.cont191, %cleanup189, %cleanup180
  call void @llvm.lifetime.end.p0(i64 8, ptr %array171) #5
  %cleanup.dest193 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest193, label %cleanup513 [
    i32 0, label %cleanup.cont194
  ]

cleanup.cont194:                                  ; preds = %cleanup192
  call void @llvm.lifetime.start.p0(i64 8, ptr %dict) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result195) #5
  %76 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom196 = sext i32 %76 to i64
  %arrayidx197 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom196
  %77 = load ptr, ptr %arrayidx197, align 8, !tbaa !4
  %call198 = call i32 @yr_object_create(i8 noundef signext 6, ptr noundef @.str.19, ptr noundef %77, ptr noundef %dict)
  store i32 %call198, ptr %result195, align 4, !tbaa !18
  %78 = load i32, ptr %result195, align 4, !tbaa !18
  %cmp199 = icmp ne i32 %78, 0
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %cleanup.cont194
  %79 = load i32, ptr %result195, align 4, !tbaa !18
  store i32 %79, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end202:                                        ; preds = %cleanup.cont194
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

cleanup203:                                       ; preds = %if.end202, %if.then201
  call void @llvm.lifetime.end.p0(i64 4, ptr %result195) #5
  %cleanup.dest204 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest204, label %cleanup215 [
    i32 0, label %cleanup.cont205
  ]

cleanup.cont205:                                  ; preds = %cleanup203
  call void @llvm.lifetime.start.p0(i64 4, ptr %result206) #5
  %80 = load ptr, ptr %dict, align 8, !tbaa !4
  %call207 = call i32 @yr_object_create(i8 noundef signext 1, ptr noundef @.str.19, ptr noundef %80, ptr noundef null)
  store i32 %call207, ptr %result206, align 4, !tbaa !18
  %81 = load i32, ptr %result206, align 4, !tbaa !18
  %cmp208 = icmp ne i32 %81, 0
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %cleanup.cont205
  %82 = load i32, ptr %result206, align 4, !tbaa !18
  store i32 %82, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup212

if.end211:                                        ; preds = %cleanup.cont205
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup212

cleanup212:                                       ; preds = %if.end211, %if.then210
  call void @llvm.lifetime.end.p0(i64 4, ptr %result206) #5
  %cleanup.dest213 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest213, label %cleanup215 [
    i32 0, label %cleanup.cont214
  ]

cleanup.cont214:                                  ; preds = %cleanup212
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup215

cleanup215:                                       ; preds = %cleanup.cont214, %cleanup212, %cleanup203
  call void @llvm.lifetime.end.p0(i64 8, ptr %dict) #5
  %cleanup.dest216 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest216, label %cleanup513 [
    i32 0, label %cleanup.cont217
  ]

cleanup.cont217:                                  ; preds = %cleanup215
  call void @llvm.lifetime.start.p0(i64 8, ptr %dict218) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result219) #5
  %83 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom220 = sext i32 %83 to i64
  %arrayidx221 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom220
  %84 = load ptr, ptr %arrayidx221, align 8, !tbaa !4
  %call222 = call i32 @yr_object_create(i8 noundef signext 6, ptr noundef @.str.20, ptr noundef %84, ptr noundef %dict218)
  store i32 %call222, ptr %result219, align 4, !tbaa !18
  %85 = load i32, ptr %result219, align 4, !tbaa !18
  %cmp223 = icmp ne i32 %85, 0
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %cleanup.cont217
  %86 = load i32, ptr %result219, align 4, !tbaa !18
  store i32 %86, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227

if.end226:                                        ; preds = %cleanup.cont217
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup227

cleanup227:                                       ; preds = %if.end226, %if.then225
  call void @llvm.lifetime.end.p0(i64 4, ptr %result219) #5
  %cleanup.dest228 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest228, label %cleanup239 [
    i32 0, label %cleanup.cont229
  ]

cleanup.cont229:                                  ; preds = %cleanup227
  call void @llvm.lifetime.start.p0(i64 4, ptr %result230) #5
  %87 = load ptr, ptr %dict218, align 8, !tbaa !4
  %call231 = call i32 @yr_object_create(i8 noundef signext 2, ptr noundef @.str.20, ptr noundef %87, ptr noundef null)
  store i32 %call231, ptr %result230, align 4, !tbaa !18
  %88 = load i32, ptr %result230, align 4, !tbaa !18
  %cmp232 = icmp ne i32 %88, 0
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %cleanup.cont229
  %89 = load i32, ptr %result230, align 4, !tbaa !18
  store i32 %89, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup236

if.end235:                                        ; preds = %cleanup.cont229
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup236

cleanup236:                                       ; preds = %if.end235, %if.then234
  call void @llvm.lifetime.end.p0(i64 4, ptr %result230) #5
  %cleanup.dest237 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest237, label %cleanup239 [
    i32 0, label %cleanup.cont238
  ]

cleanup.cont238:                                  ; preds = %cleanup236
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup239

cleanup239:                                       ; preds = %cleanup.cont238, %cleanup236, %cleanup227
  call void @llvm.lifetime.end.p0(i64 8, ptr %dict218) #5
  %cleanup.dest240 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest240, label %cleanup513 [
    i32 0, label %cleanup.cont241
  ]

cleanup.cont241:                                  ; preds = %cleanup239
  call void @llvm.lifetime.start.p0(i64 8, ptr %structure242) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %array243) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result244) #5
  %90 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom245 = sext i32 %90 to i64
  %arrayidx246 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom245
  %91 = load ptr, ptr %arrayidx246, align 8, !tbaa !4
  %call247 = call i32 @yr_object_create(i8 noundef signext 4, ptr noundef @.str.21, ptr noundef %91, ptr noundef %array243)
  store i32 %call247, ptr %result244, align 4, !tbaa !18
  %92 = load i32, ptr %result244, align 4, !tbaa !18
  %cmp248 = icmp ne i32 %92, 0
  br i1 %cmp248, label %if.then250, label %if.end251

if.then250:                                       ; preds = %cleanup.cont241
  %93 = load i32, ptr %result244, align 4, !tbaa !18
  store i32 %93, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup252

if.end251:                                        ; preds = %cleanup.cont241
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup252

cleanup252:                                       ; preds = %if.end251, %if.then250
  call void @llvm.lifetime.end.p0(i64 4, ptr %result244) #5
  %cleanup.dest253 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest253, label %cleanup273 [
    i32 0, label %cleanup.cont254
  ]

cleanup.cont254:                                  ; preds = %cleanup252
  call void @llvm.lifetime.start.p0(i64 4, ptr %result255) #5
  %94 = load ptr, ptr %array243, align 8, !tbaa !4
  %call256 = call i32 @yr_object_create(i8 noundef signext 3, ptr noundef @.str.21, ptr noundef %94, ptr noundef %structure242)
  store i32 %call256, ptr %result255, align 4, !tbaa !18
  %95 = load i32, ptr %result255, align 4, !tbaa !18
  %cmp257 = icmp ne i32 %95, 0
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %cleanup.cont254
  %96 = load i32, ptr %result255, align 4, !tbaa !18
  store i32 %96, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup261

if.end260:                                        ; preds = %cleanup.cont254
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup261

cleanup261:                                       ; preds = %if.end260, %if.then259
  call void @llvm.lifetime.end.p0(i64 4, ptr %result255) #5
  %cleanup.dest262 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest262, label %cleanup273 [
    i32 0, label %cleanup.cont263
  ]

cleanup.cont263:                                  ; preds = %cleanup261
  %97 = load i32, ptr %stack_top, align 4, !tbaa !18
  %conv264 = sext i32 %97 to i64
  %cmp265 = icmp ult i64 %conv264, 63
  br i1 %cmp265, label %if.end269, label %if.then267

if.then267:                                       ; preds = %cleanup.cont263
  %98 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call268 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 134)
  call void @abort() #6
  unreachable

if.end269:                                        ; preds = %cleanup.cont263
  %99 = load ptr, ptr %structure242, align 8, !tbaa !4
  %100 = load i32, ptr %stack_top, align 4, !tbaa !18
  %inc270 = add nsw i32 %100, 1
  store i32 %inc270, ptr %stack_top, align 4, !tbaa !18
  %idxprom271 = sext i32 %inc270 to i64
  %arrayidx272 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom271
  store ptr %99, ptr %arrayidx272, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

cleanup273:                                       ; preds = %if.end269, %cleanup261, %cleanup252
  call void @llvm.lifetime.end.p0(i64 8, ptr %array243) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %structure242) #5
  %cleanup.dest275 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest275, label %cleanup513 [
    i32 0, label %cleanup.cont276
  ]

cleanup.cont276:                                  ; preds = %cleanup273
  call void @llvm.lifetime.start.p0(i64 4, ptr %result277) #5
  %101 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom278 = sext i32 %101 to i64
  %arrayidx279 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom278
  %102 = load ptr, ptr %arrayidx279, align 8, !tbaa !4
  %call280 = call i32 @yr_object_create(i8 noundef signext 1, ptr noundef @.str.14, ptr noundef %102, ptr noundef null)
  store i32 %call280, ptr %result277, align 4, !tbaa !18
  %103 = load i32, ptr %result277, align 4, !tbaa !18
  %cmp281 = icmp ne i32 %103, 0
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %cleanup.cont276
  %104 = load i32, ptr %result277, align 4, !tbaa !18
  store i32 %104, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup285

if.end284:                                        ; preds = %cleanup.cont276
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup285

cleanup285:                                       ; preds = %if.end284, %if.then283
  call void @llvm.lifetime.end.p0(i64 4, ptr %result277) #5
  %cleanup.dest286 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest286, label %cleanup513 [
    i32 0, label %cleanup.cont287
  ]

cleanup.cont287:                                  ; preds = %cleanup285
  call void @llvm.lifetime.start.p0(i64 4, ptr %result288) #5
  %105 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom289 = sext i32 %105 to i64
  %arrayidx290 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom289
  %106 = load ptr, ptr %arrayidx290, align 8, !tbaa !4
  %call291 = call i32 @yr_object_create(i8 noundef signext 2, ptr noundef @.str.22, ptr noundef %106, ptr noundef null)
  store i32 %call291, ptr %result288, align 4, !tbaa !18
  %107 = load i32, ptr %result288, align 4, !tbaa !18
  %cmp292 = icmp ne i32 %107, 0
  br i1 %cmp292, label %if.then294, label %if.end295

if.then294:                                       ; preds = %cleanup.cont287
  %108 = load i32, ptr %result288, align 4, !tbaa !18
  store i32 %108, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

if.end295:                                        ; preds = %cleanup.cont287
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup296

cleanup296:                                       ; preds = %if.end295, %if.then294
  call void @llvm.lifetime.end.p0(i64 4, ptr %result288) #5
  %cleanup.dest297 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest297, label %cleanup513 [
    i32 0, label %cleanup.cont298
  ]

cleanup.cont298:                                  ; preds = %cleanup296
  %109 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom299 = sext i32 %109 to i64
  %arrayidx300 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom299
  %110 = load ptr, ptr %arrayidx300, align 8, !tbaa !4
  %type301 = getelementptr inbounds %struct.YR_OBJECT, ptr %110, i32 0, i32 1
  %111 = load i8, ptr %type301, align 4, !tbaa !14
  %conv302 = sext i8 %111 to i32
  %cmp303 = icmp eq i32 %conv302, 3
  br i1 %cmp303, label %if.then305, label %if.else306

if.then305:                                       ; preds = %cleanup.cont298
  br label %if.end307

if.else306:                                       ; preds = %cleanup.cont298
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 137, ptr noundef @__PRETTY_FUNCTION__.tests__declarations) #6
  unreachable

if.end307:                                        ; preds = %if.then305
  %112 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom308 = sext i32 %112 to i64
  %arrayidx309 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom308
  %113 = load ptr, ptr %arrayidx309, align 8, !tbaa !4
  %identifier310 = getelementptr inbounds %struct.YR_OBJECT, ptr %113, i32 0, i32 2
  %114 = load ptr, ptr %identifier310, align 8, !tbaa !19
  %call311 = call i32 @strcmp(ptr noundef %114, ptr noundef @.str.21) #7
  %cmp312 = icmp eq i32 %call311, 0
  br i1 %cmp312, label %if.end316, label %if.then314

if.then314:                                       ; preds = %if.end307
  %115 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 137)
  call void @abort() #6
  unreachable

if.end316:                                        ; preds = %if.end307
  %116 = load i32, ptr %stack_top, align 4, !tbaa !18
  %dec317 = add nsw i32 %116, -1
  store i32 %dec317, ptr %stack_top, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %structure318) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %array319) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result320) #5
  %117 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom321 = sext i32 %117 to i64
  %arrayidx322 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom321
  %118 = load ptr, ptr %arrayidx322, align 8, !tbaa !4
  %call323 = call i32 @yr_object_create(i8 noundef signext 6, ptr noundef @.str.23, ptr noundef %118, ptr noundef %array319)
  store i32 %call323, ptr %result320, align 4, !tbaa !18
  %119 = load i32, ptr %result320, align 4, !tbaa !18
  %cmp324 = icmp ne i32 %119, 0
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %if.end316
  %120 = load i32, ptr %result320, align 4, !tbaa !18
  store i32 %120, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup328

if.end327:                                        ; preds = %if.end316
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup328

cleanup328:                                       ; preds = %if.end327, %if.then326
  call void @llvm.lifetime.end.p0(i64 4, ptr %result320) #5
  %cleanup.dest329 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest329, label %cleanup349 [
    i32 0, label %cleanup.cont330
  ]

cleanup.cont330:                                  ; preds = %cleanup328
  call void @llvm.lifetime.start.p0(i64 4, ptr %result331) #5
  %121 = load ptr, ptr %array319, align 8, !tbaa !4
  %call332 = call i32 @yr_object_create(i8 noundef signext 3, ptr noundef @.str.23, ptr noundef %121, ptr noundef %structure318)
  store i32 %call332, ptr %result331, align 4, !tbaa !18
  %122 = load i32, ptr %result331, align 4, !tbaa !18
  %cmp333 = icmp ne i32 %122, 0
  br i1 %cmp333, label %if.then335, label %if.end336

if.then335:                                       ; preds = %cleanup.cont330
  %123 = load i32, ptr %result331, align 4, !tbaa !18
  store i32 %123, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup337

if.end336:                                        ; preds = %cleanup.cont330
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup337

cleanup337:                                       ; preds = %if.end336, %if.then335
  call void @llvm.lifetime.end.p0(i64 4, ptr %result331) #5
  %cleanup.dest338 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest338, label %cleanup349 [
    i32 0, label %cleanup.cont339
  ]

cleanup.cont339:                                  ; preds = %cleanup337
  %124 = load i32, ptr %stack_top, align 4, !tbaa !18
  %conv340 = sext i32 %124 to i64
  %cmp341 = icmp ult i64 %conv340, 63
  br i1 %cmp341, label %if.end345, label %if.then343

if.then343:                                       ; preds = %cleanup.cont339
  %125 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call344 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 139)
  call void @abort() #6
  unreachable

if.end345:                                        ; preds = %cleanup.cont339
  %126 = load ptr, ptr %structure318, align 8, !tbaa !4
  %127 = load i32, ptr %stack_top, align 4, !tbaa !18
  %inc346 = add nsw i32 %127, 1
  store i32 %inc346, ptr %stack_top, align 4, !tbaa !18
  %idxprom347 = sext i32 %inc346 to i64
  %arrayidx348 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom347
  store ptr %126, ptr %arrayidx348, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup349

cleanup349:                                       ; preds = %if.end345, %cleanup337, %cleanup328
  call void @llvm.lifetime.end.p0(i64 8, ptr %array319) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %structure318) #5
  %cleanup.dest351 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest351, label %cleanup513 [
    i32 0, label %cleanup.cont352
  ]

cleanup.cont352:                                  ; preds = %cleanup349
  call void @llvm.lifetime.start.p0(i64 4, ptr %result353) #5
  %128 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom354 = sext i32 %128 to i64
  %arrayidx355 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom354
  %129 = load ptr, ptr %arrayidx355, align 8, !tbaa !4
  %call356 = call i32 @yr_object_create(i8 noundef signext 1, ptr noundef @.str.14, ptr noundef %129, ptr noundef null)
  store i32 %call356, ptr %result353, align 4, !tbaa !18
  %130 = load i32, ptr %result353, align 4, !tbaa !18
  %cmp357 = icmp ne i32 %130, 0
  br i1 %cmp357, label %if.then359, label %if.end360

if.then359:                                       ; preds = %cleanup.cont352
  %131 = load i32, ptr %result353, align 4, !tbaa !18
  store i32 %131, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup361

if.end360:                                        ; preds = %cleanup.cont352
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup361

cleanup361:                                       ; preds = %if.end360, %if.then359
  call void @llvm.lifetime.end.p0(i64 4, ptr %result353) #5
  %cleanup.dest362 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest362, label %cleanup513 [
    i32 0, label %cleanup.cont363
  ]

cleanup.cont363:                                  ; preds = %cleanup361
  call void @llvm.lifetime.start.p0(i64 4, ptr %result364) #5
  %132 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom365 = sext i32 %132 to i64
  %arrayidx366 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom365
  %133 = load ptr, ptr %arrayidx366, align 8, !tbaa !4
  %call367 = call i32 @yr_object_create(i8 noundef signext 2, ptr noundef @.str.22, ptr noundef %133, ptr noundef null)
  store i32 %call367, ptr %result364, align 4, !tbaa !18
  %134 = load i32, ptr %result364, align 4, !tbaa !18
  %cmp368 = icmp ne i32 %134, 0
  br i1 %cmp368, label %if.then370, label %if.end371

if.then370:                                       ; preds = %cleanup.cont363
  %135 = load i32, ptr %result364, align 4, !tbaa !18
  store i32 %135, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup372

if.end371:                                        ; preds = %cleanup.cont363
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup372

cleanup372:                                       ; preds = %if.end371, %if.then370
  call void @llvm.lifetime.end.p0(i64 4, ptr %result364) #5
  %cleanup.dest373 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest373, label %cleanup513 [
    i32 0, label %cleanup.cont374
  ]

cleanup.cont374:                                  ; preds = %cleanup372
  %136 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom375 = sext i32 %136 to i64
  %arrayidx376 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom375
  %137 = load ptr, ptr %arrayidx376, align 8, !tbaa !4
  %type377 = getelementptr inbounds %struct.YR_OBJECT, ptr %137, i32 0, i32 1
  %138 = load i8, ptr %type377, align 4, !tbaa !14
  %conv378 = sext i8 %138 to i32
  %cmp379 = icmp eq i32 %conv378, 3
  br i1 %cmp379, label %if.then381, label %if.else382

if.then381:                                       ; preds = %cleanup.cont374
  br label %if.end383

if.else382:                                       ; preds = %cleanup.cont374
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 142, ptr noundef @__PRETTY_FUNCTION__.tests__declarations) #6
  unreachable

if.end383:                                        ; preds = %if.then381
  %139 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom384 = sext i32 %139 to i64
  %arrayidx385 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom384
  %140 = load ptr, ptr %arrayidx385, align 8, !tbaa !4
  %identifier386 = getelementptr inbounds %struct.YR_OBJECT, ptr %140, i32 0, i32 2
  %141 = load ptr, ptr %identifier386, align 8, !tbaa !19
  %call387 = call i32 @strcmp(ptr noundef %141, ptr noundef @.str.23) #7
  %cmp388 = icmp eq i32 %call387, 0
  br i1 %cmp388, label %if.end392, label %if.then390

if.then390:                                       ; preds = %if.end383
  %142 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call391 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 142)
  call void @abort() #6
  unreachable

if.end392:                                        ; preds = %if.end383
  %143 = load i32, ptr %stack_top, align 4, !tbaa !18
  %dec393 = add nsw i32 %143, -1
  store i32 %dec393, ptr %stack_top, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %function) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result394) #5
  %144 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom395 = sext i32 %144 to i64
  %arrayidx396 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom395
  %145 = load ptr, ptr %arrayidx396, align 8, !tbaa !4
  %call397 = call i32 @yr_object_function_create(ptr noundef @.str.24, ptr noundef @.str.25, ptr noundef @.str.14, ptr noundef @match, ptr noundef %145, ptr noundef %function)
  store i32 %call397, ptr %result394, align 4, !tbaa !18
  %146 = load i32, ptr %result394, align 4, !tbaa !18
  %cmp398 = icmp ne i32 %146, 0
  br i1 %cmp398, label %if.then400, label %if.end401

if.then400:                                       ; preds = %if.end392
  %147 = load i32, ptr %result394, align 4, !tbaa !18
  store i32 %147, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup402

if.end401:                                        ; preds = %if.end392
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup402

cleanup402:                                       ; preds = %if.end401, %if.then400
  call void @llvm.lifetime.end.p0(i64 4, ptr %result394) #5
  %cleanup.dest403 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest403, label %cleanup405 [
    i32 0, label %cleanup.cont404
  ]

cleanup.cont404:                                  ; preds = %cleanup402
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup405

cleanup405:                                       ; preds = %cleanup.cont404, %cleanup402
  call void @llvm.lifetime.end.p0(i64 8, ptr %function) #5
  %cleanup.dest406 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest406, label %cleanup513 [
    i32 0, label %cleanup.cont407
  ]

cleanup.cont407:                                  ; preds = %cleanup405
  call void @llvm.lifetime.start.p0(i64 8, ptr %function408) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result409) #5
  %148 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom410 = sext i32 %148 to i64
  %arrayidx411 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom410
  %149 = load ptr, ptr %arrayidx411, align 8, !tbaa !4
  %call412 = call i32 @yr_object_function_create(ptr noundef @.str.26, ptr noundef @.str.27, ptr noundef @.str.14, ptr noundef @isum_2, ptr noundef %149, ptr noundef %function408)
  store i32 %call412, ptr %result409, align 4, !tbaa !18
  %150 = load i32, ptr %result409, align 4, !tbaa !18
  %cmp413 = icmp ne i32 %150, 0
  br i1 %cmp413, label %if.then415, label %if.end416

if.then415:                                       ; preds = %cleanup.cont407
  %151 = load i32, ptr %result409, align 4, !tbaa !18
  store i32 %151, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup417

if.end416:                                        ; preds = %cleanup.cont407
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup417

cleanup417:                                       ; preds = %if.end416, %if.then415
  call void @llvm.lifetime.end.p0(i64 4, ptr %result409) #5
  %cleanup.dest418 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest418, label %cleanup420 [
    i32 0, label %cleanup.cont419
  ]

cleanup.cont419:                                  ; preds = %cleanup417
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup420

cleanup420:                                       ; preds = %cleanup.cont419, %cleanup417
  call void @llvm.lifetime.end.p0(i64 8, ptr %function408) #5
  %cleanup.dest421 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest421, label %cleanup513 [
    i32 0, label %cleanup.cont422
  ]

cleanup.cont422:                                  ; preds = %cleanup420
  call void @llvm.lifetime.start.p0(i64 8, ptr %function423) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result424) #5
  %152 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom425 = sext i32 %152 to i64
  %arrayidx426 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom425
  %153 = load ptr, ptr %arrayidx426, align 8, !tbaa !4
  %call427 = call i32 @yr_object_function_create(ptr noundef @.str.26, ptr noundef @.str.28, ptr noundef @.str.14, ptr noundef @isum_3, ptr noundef %153, ptr noundef %function423)
  store i32 %call427, ptr %result424, align 4, !tbaa !18
  %154 = load i32, ptr %result424, align 4, !tbaa !18
  %cmp428 = icmp ne i32 %154, 0
  br i1 %cmp428, label %if.then430, label %if.end431

if.then430:                                       ; preds = %cleanup.cont422
  %155 = load i32, ptr %result424, align 4, !tbaa !18
  store i32 %155, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup432

if.end431:                                        ; preds = %cleanup.cont422
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup432

cleanup432:                                       ; preds = %if.end431, %if.then430
  call void @llvm.lifetime.end.p0(i64 4, ptr %result424) #5
  %cleanup.dest433 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest433, label %cleanup435 [
    i32 0, label %cleanup.cont434
  ]

cleanup.cont434:                                  ; preds = %cleanup432
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup435

cleanup435:                                       ; preds = %cleanup.cont434, %cleanup432
  call void @llvm.lifetime.end.p0(i64 8, ptr %function423) #5
  %cleanup.dest436 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest436, label %cleanup513 [
    i32 0, label %cleanup.cont437
  ]

cleanup.cont437:                                  ; preds = %cleanup435
  call void @llvm.lifetime.start.p0(i64 8, ptr %function438) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result439) #5
  %156 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom440 = sext i32 %156 to i64
  %arrayidx441 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom440
  %157 = load ptr, ptr %arrayidx441, align 8, !tbaa !4
  %call442 = call i32 @yr_object_function_create(ptr noundef @.str.29, ptr noundef @.str.30, ptr noundef @.str.15, ptr noundef @fsum_2, ptr noundef %157, ptr noundef %function438)
  store i32 %call442, ptr %result439, align 4, !tbaa !18
  %158 = load i32, ptr %result439, align 4, !tbaa !18
  %cmp443 = icmp ne i32 %158, 0
  br i1 %cmp443, label %if.then445, label %if.end446

if.then445:                                       ; preds = %cleanup.cont437
  %159 = load i32, ptr %result439, align 4, !tbaa !18
  store i32 %159, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup447

if.end446:                                        ; preds = %cleanup.cont437
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup447

cleanup447:                                       ; preds = %if.end446, %if.then445
  call void @llvm.lifetime.end.p0(i64 4, ptr %result439) #5
  %cleanup.dest448 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest448, label %cleanup450 [
    i32 0, label %cleanup.cont449
  ]

cleanup.cont449:                                  ; preds = %cleanup447
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup450

cleanup450:                                       ; preds = %cleanup.cont449, %cleanup447
  call void @llvm.lifetime.end.p0(i64 8, ptr %function438) #5
  %cleanup.dest451 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest451, label %cleanup513 [
    i32 0, label %cleanup.cont452
  ]

cleanup.cont452:                                  ; preds = %cleanup450
  call void @llvm.lifetime.start.p0(i64 8, ptr %function453) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result454) #5
  %160 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom455 = sext i32 %160 to i64
  %arrayidx456 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom455
  %161 = load ptr, ptr %arrayidx456, align 8, !tbaa !4
  %call457 = call i32 @yr_object_function_create(ptr noundef @.str.29, ptr noundef @.str.31, ptr noundef @.str.15, ptr noundef @fsum_3, ptr noundef %161, ptr noundef %function453)
  store i32 %call457, ptr %result454, align 4, !tbaa !18
  %162 = load i32, ptr %result454, align 4, !tbaa !18
  %cmp458 = icmp ne i32 %162, 0
  br i1 %cmp458, label %if.then460, label %if.end461

if.then460:                                       ; preds = %cleanup.cont452
  %163 = load i32, ptr %result454, align 4, !tbaa !18
  store i32 %163, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup462

if.end461:                                        ; preds = %cleanup.cont452
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup462

cleanup462:                                       ; preds = %if.end461, %if.then460
  call void @llvm.lifetime.end.p0(i64 4, ptr %result454) #5
  %cleanup.dest463 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest463, label %cleanup465 [
    i32 0, label %cleanup.cont464
  ]

cleanup.cont464:                                  ; preds = %cleanup462
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup465

cleanup465:                                       ; preds = %cleanup.cont464, %cleanup462
  call void @llvm.lifetime.end.p0(i64 8, ptr %function453) #5
  %cleanup.dest466 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest466, label %cleanup513 [
    i32 0, label %cleanup.cont467
  ]

cleanup.cont467:                                  ; preds = %cleanup465
  call void @llvm.lifetime.start.p0(i64 8, ptr %function468) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result469) #5
  %164 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom470 = sext i32 %164 to i64
  %arrayidx471 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom470
  %165 = load ptr, ptr %arrayidx471, align 8, !tbaa !4
  %call472 = call i32 @yr_object_function_create(ptr noundef @.str.32, ptr noundef @.str.22, ptr noundef @.str.14, ptr noundef @length, ptr noundef %165, ptr noundef %function468)
  store i32 %call472, ptr %result469, align 4, !tbaa !18
  %166 = load i32, ptr %result469, align 4, !tbaa !18
  %cmp473 = icmp ne i32 %166, 0
  br i1 %cmp473, label %if.then475, label %if.end476

if.then475:                                       ; preds = %cleanup.cont467
  %167 = load i32, ptr %result469, align 4, !tbaa !18
  store i32 %167, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup477

if.end476:                                        ; preds = %cleanup.cont467
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup477

cleanup477:                                       ; preds = %if.end476, %if.then475
  call void @llvm.lifetime.end.p0(i64 4, ptr %result469) #5
  %cleanup.dest478 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest478, label %cleanup480 [
    i32 0, label %cleanup.cont479
  ]

cleanup.cont479:                                  ; preds = %cleanup477
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup480

cleanup480:                                       ; preds = %cleanup.cont479, %cleanup477
  call void @llvm.lifetime.end.p0(i64 8, ptr %function468) #5
  %cleanup.dest481 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest481, label %cleanup513 [
    i32 0, label %cleanup.cont482
  ]

cleanup.cont482:                                  ; preds = %cleanup480
  call void @llvm.lifetime.start.p0(i64 8, ptr %function483) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result484) #5
  %168 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom485 = sext i32 %168 to i64
  %arrayidx486 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom485
  %169 = load ptr, ptr %arrayidx486, align 8, !tbaa !4
  %call487 = call i32 @yr_object_function_create(ptr noundef @.str.10, ptr noundef @.str.2, ptr noundef @.str.22, ptr noundef @empty, ptr noundef %169, ptr noundef %function483)
  store i32 %call487, ptr %result484, align 4, !tbaa !18
  %170 = load i32, ptr %result484, align 4, !tbaa !18
  %cmp488 = icmp ne i32 %170, 0
  br i1 %cmp488, label %if.then490, label %if.end491

if.then490:                                       ; preds = %cleanup.cont482
  %171 = load i32, ptr %result484, align 4, !tbaa !18
  store i32 %171, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup492

if.end491:                                        ; preds = %cleanup.cont482
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup492

cleanup492:                                       ; preds = %if.end491, %if.then490
  call void @llvm.lifetime.end.p0(i64 4, ptr %result484) #5
  %cleanup.dest493 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest493, label %cleanup495 [
    i32 0, label %cleanup.cont494
  ]

cleanup.cont494:                                  ; preds = %cleanup492
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup495

cleanup495:                                       ; preds = %cleanup.cont494, %cleanup492
  call void @llvm.lifetime.end.p0(i64 8, ptr %function483) #5
  %cleanup.dest496 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest496, label %cleanup513 [
    i32 0, label %cleanup.cont497
  ]

cleanup.cont497:                                  ; preds = %cleanup495
  call void @llvm.lifetime.start.p0(i64 8, ptr %function498) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result499) #5
  %172 = load i32, ptr %stack_top, align 4, !tbaa !18
  %idxprom500 = sext i32 %172 to i64
  %arrayidx501 = getelementptr inbounds [64 x ptr], ptr %stack, i64 0, i64 %idxprom500
  %173 = load ptr, ptr %arrayidx501, align 8, !tbaa !4
  %call502 = call i32 @yr_object_function_create(ptr noundef @.str.33, ptr noundef @.str.14, ptr noundef @.str.22, ptr noundef @foobar, ptr noundef %173, ptr noundef %function498)
  store i32 %call502, ptr %result499, align 4, !tbaa !18
  %174 = load i32, ptr %result499, align 4, !tbaa !18
  %cmp503 = icmp ne i32 %174, 0
  br i1 %cmp503, label %if.then505, label %if.end506

if.then505:                                       ; preds = %cleanup.cont497
  %175 = load i32, ptr %result499, align 4, !tbaa !18
  store i32 %175, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup507

if.end506:                                        ; preds = %cleanup.cont497
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup507

cleanup507:                                       ; preds = %if.end506, %if.then505
  call void @llvm.lifetime.end.p0(i64 4, ptr %result499) #5
  %cleanup.dest508 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest508, label %cleanup510 [
    i32 0, label %cleanup.cont509
  ]

cleanup.cont509:                                  ; preds = %cleanup507
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup510

cleanup510:                                       ; preds = %cleanup.cont509, %cleanup507
  call void @llvm.lifetime.end.p0(i64 8, ptr %function498) #5
  %cleanup.dest511 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest511, label %cleanup513 [
    i32 0, label %cleanup.cont512
  ]

cleanup.cont512:                                  ; preds = %cleanup510
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup513

cleanup513:                                       ; preds = %cleanup.cont512, %cleanup510, %cleanup495, %cleanup480, %cleanup465, %cleanup450, %cleanup435, %cleanup420, %cleanup405, %cleanup372, %cleanup361, %cleanup349, %cleanup296, %cleanup285, %cleanup273, %cleanup239, %cleanup215, %cleanup192, %cleanup168, %cleanup145, %cleanup115, %cleanup104, %cleanup93, %cleanup54, %cleanup43, %cleanup32, %cleanup21, %cleanup10
  call void @llvm.lifetime.end.p0(i64 4, ptr %stack_top) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr %stack) #5
  %176 = load i32, ptr %retval, align 4
  ret i32 %176
}

declare i32 @yr_object_create(i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare i32 @yr_object_function_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @tests__initialize(ptr noundef %module) #0 {
entry:
  %module.addr = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @tests__finalize(ptr noundef %module) #0 {
entry:
  %module.addr = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @tests__load(ptr noundef %context, ptr noundef %module_object, ptr noundef %module_data, i64 noundef %module_data_size) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %module_object.addr = alloca ptr, align 8
  %module_data.addr = alloca ptr, align 8
  %module_data_size.addr = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %module_object, ptr %module_object.addr, align 8, !tbaa !4
  store ptr %module_data, ptr %module_data.addr, align 8, !tbaa !4
  store i64 %module_data_size, ptr %module_data_size.addr, align 8, !tbaa !16
  %0 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 1, ptr noundef %0, ptr noundef @.str.34)
  %1 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call1 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 2, ptr noundef %1, ptr noundef @.str.35)
  %2 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call2 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.3, i64 noundef 3, ptr noundef %2, ptr noundef @.str.36)
  %3 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call3 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.2, i64 noundef 0, ptr noundef %3, ptr noundef @.str.37)
  %4 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call4 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 1, ptr noundef %4, ptr noundef @.str.38)
  %5 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call5 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 0, ptr noundef %5, ptr noundef @.str.39, i32 noundef 0)
  %6 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call6 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 1, ptr noundef %6, ptr noundef @.str.39, i32 noundef 1)
  %7 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call7 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 2, ptr noundef %7, ptr noundef @.str.39, i32 noundef 2)
  %8 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call8 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 256, ptr noundef %8, ptr noundef @.str.39, i32 noundef 256)
  %9 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call9 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.3, i64 noundef 3, ptr noundef %9, ptr noundef @.str.40, i32 noundef 0)
  %10 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call10 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.4, i64 noundef 3, ptr noundef %10, ptr noundef @.str.40, i32 noundef 1)
  %11 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call11 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.41, i64 noundef 3, ptr noundef %11, ptr noundef @.str.40, i32 noundef 2)
  %12 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call12 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.42, i64 noundef 7, ptr noundef %12, ptr noundef @.str.40, i32 noundef 3)
  %13 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call13 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.3, i64 noundef 3, ptr noundef %13, ptr noundef @.str.43, ptr noundef @.str.3)
  %14 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call14 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.4, i64 noundef 3, ptr noundef %14, ptr noundef @.str.44)
  %15 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call15 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef @.str.3, i64 noundef 3, ptr noundef %15, ptr noundef @.str.45, ptr noundef @.str.3)
  %16 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call16 = call i32 (i64, ptr, ptr, ...) @yr_object_set_integer(i64 noundef 1, ptr noundef %16, ptr noundef @.str.46, ptr noundef @.str.3)
  %17 = load i64, ptr %module_data_size.addr, align 8, !tbaa !16
  %cmp = icmp ugt i64 %17, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %18 = load ptr, ptr %module_data.addr, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %18, null
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load ptr, ptr %module_data.addr, align 8, !tbaa !4
  %20 = load i64, ptr %module_data_size.addr, align 8, !tbaa !16
  %21 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %call18 = call i32 (ptr, i64, ptr, ptr, ...) @yr_object_set_string(ptr noundef %19, i64 noundef %20, ptr noundef %21, ptr noundef @.str.16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @tests__unload(ptr noundef %module_object) #0 {
entry:
  %module_object.addr = alloca ptr, align 8
  store ptr %module_object, ptr %module_object.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.YR_OBJECT, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %data, align 8, !tbaa !20
  %cmp = icmp eq ptr %1, inttoptr (i64 16431834 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.47, ptr noundef @.str.1, i32 noundef 216, ptr noundef @__PRETTY_FUNCTION__.tests__unload) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %module_object.addr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.YR_OBJECT, ptr %2, i32 0, i32 4
  store ptr inttoptr (i64 16431834 to ptr), ptr %data1, align 8, !tbaa !20
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!12, !5, i64 32}
!12 = !{!"YR_OBJECT_FUNCTION", !13, i64 0, !6, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !6, i64 4}
!15 = !{!"YR_OBJECT", !13, i64 0, !6, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!15, !5, i64 8}
!20 = !{!15, !5, i64 24}

; ModuleID = 'samples/49.bc'
source_filename = "util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: Value is not a non-negative decimal integer\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"iB\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: Invalid multiplier suffix\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Valid suffixes are `KiB' (2^10), `MiB' (2^20), and `GiB' (2^30).\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Value of the option `%s' must be in the range [%lu, %lu]\00", align 1
@thousand = internal global i32 0, align 4
@bufs = internal global [4 x [128 x i8]] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [5 x i8] c"%'lu\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%'u\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%'.1f\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@uint64_to_nicestr.suffix = internal constant [5 x [4 x i8]] [[4 x i8] c"B\00\00\00", [4 x i8] c"KiB\00", [4 x i8] c"MiB\00", [4 x i8] c"GiB\00", [4 x i8] c"TiB\00"], align 16
@.str.15 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c" (%'lu B)\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c" (%lu B)\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Empty filename, skipping\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Compressed data cannot be read from a terminal\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"Compressed data cannot be written to a terminal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define hidden noalias ptr @xrealloc(ptr noundef %ptr, i64 noundef %size) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %saved_errno = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load i64, ptr %size.addr, align 8
  %call = call ptr @realloc(ptr noundef %1, i64 noundef %2) #9
  store ptr %call, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %ptr.addr, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #10
  %4 = load i32, ptr %call1, align 4
  store i32 %4, ptr %saved_errno, align 4
  %5 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %5) #11
  %6 = load i32, ptr %saved_errno, align 4
  %call2 = call ptr @strerror(i32 noundef %6) #11
  call void (ptr, ...) @message_fatal(ptr noundef @.str, ptr noundef %call2) #12
  unreachable

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %ptr.addr, align 8
  ret ptr %7
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noreturn
declare void @message_fatal(ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden noalias ptr @xstrdup(ptr noundef %src) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %dest = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  %0 = load ptr, ptr %src.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #13
  %add = add i64 %call, 1
  store i64 %add, ptr %size, align 8
  %1 = load i64, ptr %size, align 8
  %call1 = call noalias ptr @xrealloc(ptr noundef null, i64 noundef %1)
  store ptr %call1, ptr %dest, align 8
  %2 = load ptr, ptr %dest, align 8
  %3 = load ptr, ptr %src.addr, align 8
  %4 = load i64, ptr %size, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %3, i64 %4, i1 false)
  ret ptr %2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @str_to_uint64(ptr noundef %name, ptr noundef %value, i64 noundef %min, i64 noundef %max) #0 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %result = alloca i64, align 8
  %add = alloca i32, align 4
  %multiplier = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  store i64 %min, ptr %min.addr, align 8
  store i64 %max, ptr %max.addr, align 8
  store i64 0, ptr %result, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %value.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load ptr, ptr %value.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load ptr, ptr %value.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %value.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %lor.end
  %6 = load ptr, ptr %value.addr, align 8
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.1) #13
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %7 = load i64, ptr %max.addr, align 8
  store i64 %7, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %while.end
  %8 = load ptr, ptr %value.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp slt i32 %conv7, 48
  br i1 %cmp8, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %value.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv10 = sext i8 %11 to i32
  %cmp11 = icmp sgt i32 %conv10, 57
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  %call14 = call ptr @gettext(ptr noundef @.str.2) #11
  %12 = load ptr, ptr %value.addr, align 8
  call void (ptr, ...) @message_fatal(ptr noundef %call14, ptr noundef %12) #12
  unreachable

if.end15:                                         ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end15
  %13 = load i64, ptr %result, align 8
  %cmp16 = icmp ugt i64 %13, 1844674407370955161
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body
  br label %error

if.end19:                                         ; preds = %do.body
  %14 = load i64, ptr %result, align 8
  %mul = mul i64 %14, 10
  store i64 %mul, ptr %result, align 8
  %15 = load ptr, ptr %value.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv20 = sext i8 %16 to i32
  %sub = sub nsw i32 %conv20, 48
  store i32 %sub, ptr %add, align 4
  %17 = load i32, ptr %add, align 4
  %conv21 = zext i32 %17 to i64
  %sub22 = sub i64 -1, %conv21
  %18 = load i64, ptr %result, align 8
  %cmp23 = icmp ult i64 %sub22, %18
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  br label %error

if.end26:                                         ; preds = %if.end19
  %19 = load i32, ptr %add, align 4
  %conv27 = zext i32 %19 to i64
  %20 = load i64, ptr %result, align 8
  %add28 = add i64 %20, %conv27
  store i64 %add28, ptr %result, align 8
  %21 = load ptr, ptr %value.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr29, ptr %value.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end26
  %22 = load ptr, ptr %value.addr, align 8
  %23 = load i8, ptr %22, align 1
  %conv30 = sext i8 %23 to i32
  %cmp31 = icmp sge i32 %conv30, 48
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %24 = load ptr, ptr %value.addr, align 8
  %25 = load i8, ptr %24, align 1
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp sle i32 %conv33, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %26 = phi i1 [ false, %do.cond ], [ %cmp34, %land.rhs ]
  br i1 %26, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %land.end
  %27 = load ptr, ptr %value.addr, align 8
  %28 = load i8, ptr %27, align 1
  %conv36 = sext i8 %28 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.end96

if.then39:                                        ; preds = %do.end
  store i64 0, ptr %multiplier, align 8
  %29 = load ptr, ptr %value.addr, align 8
  %30 = load i8, ptr %29, align 1
  %conv40 = sext i8 %30 to i32
  %cmp41 = icmp eq i32 %conv40, 107
  br i1 %cmp41, label %if.then47, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.then39
  %31 = load ptr, ptr %value.addr, align 8
  %32 = load i8, ptr %31, align 1
  %conv44 = sext i8 %32 to i32
  %cmp45 = icmp eq i32 %conv44, 75
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %lor.lhs.false43, %if.then39
  store i64 1024, ptr %multiplier, align 8
  br label %if.end67

if.else:                                          ; preds = %lor.lhs.false43
  %33 = load ptr, ptr %value.addr, align 8
  %34 = load i8, ptr %33, align 1
  %conv48 = sext i8 %34 to i32
  %cmp49 = icmp eq i32 %conv48, 109
  br i1 %cmp49, label %if.then55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.else
  %35 = load ptr, ptr %value.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv52 = sext i8 %36 to i32
  %cmp53 = icmp eq i32 %conv52, 77
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %lor.lhs.false51, %if.else
  store i64 1048576, ptr %multiplier, align 8
  br label %if.end66

if.else56:                                        ; preds = %lor.lhs.false51
  %37 = load ptr, ptr %value.addr, align 8
  %38 = load i8, ptr %37, align 1
  %conv57 = sext i8 %38 to i32
  %cmp58 = icmp eq i32 %conv57, 103
  br i1 %cmp58, label %if.then64, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.else56
  %39 = load ptr, ptr %value.addr, align 8
  %40 = load i8, ptr %39, align 1
  %conv61 = sext i8 %40 to i32
  %cmp62 = icmp eq i32 %conv61, 71
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %lor.lhs.false60, %if.else56
  store i64 1073741824, ptr %multiplier, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %lor.lhs.false60
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then55
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then47
  %41 = load ptr, ptr %value.addr, align 8
  %incdec.ptr68 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr68, ptr %value.addr, align 8
  %42 = load ptr, ptr %value.addr, align 8
  %43 = load i8, ptr %42, align 1
  %conv69 = sext i8 %43 to i32
  %cmp70 = icmp ne i32 %conv69, 0
  br i1 %cmp70, label %land.lhs.true, label %if.end84

land.lhs.true:                                    ; preds = %if.end67
  %44 = load ptr, ptr %value.addr, align 8
  %call72 = call i32 @strcmp(ptr noundef %44, ptr noundef @.str.3) #13
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.end84

land.lhs.true75:                                  ; preds = %land.lhs.true
  %45 = load ptr, ptr %value.addr, align 8
  %call76 = call i32 @strcmp(ptr noundef %45, ptr noundef @.str.4) #13
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %land.lhs.true79, label %if.end84

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %46 = load ptr, ptr %value.addr, align 8
  %call80 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.5) #13
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %land.lhs.true79
  store i64 0, ptr %multiplier, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %land.lhs.true79, %land.lhs.true75, %land.lhs.true, %if.end67
  %47 = load i64, ptr %multiplier, align 8
  %cmp85 = icmp eq i64 %47, 0
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.end84
  %call88 = call ptr @gettext(ptr noundef @.str.6) #11
  %48 = load ptr, ptr %value.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 -1
  call void (i32, ptr, ...) @message(i32 noundef 1, ptr noundef %call88, ptr noundef %add.ptr)
  %call89 = call ptr @gettext(ptr noundef @.str.7) #11
  call void (ptr, ...) @message_fatal(ptr noundef %call89) #12
  unreachable

if.end90:                                         ; preds = %if.end84
  %49 = load i64, ptr %result, align 8
  %50 = load i64, ptr %multiplier, align 8
  %div = udiv i64 -1, %50
  %cmp91 = icmp ugt i64 %49, %div
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  br label %error

if.end94:                                         ; preds = %if.end90
  %51 = load i64, ptr %multiplier, align 8
  %52 = load i64, ptr %result, align 8
  %mul95 = mul i64 %52, %51
  store i64 %mul95, ptr %result, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.end94, %do.end
  %53 = load i64, ptr %result, align 8
  %54 = load i64, ptr %min.addr, align 8
  %cmp97 = icmp ult i64 %53, %54
  br i1 %cmp97, label %if.then102, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.end96
  %55 = load i64, ptr %result, align 8
  %56 = load i64, ptr %max.addr, align 8
  %cmp100 = icmp ugt i64 %55, %56
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %lor.lhs.false99, %if.end96
  br label %error

if.end103:                                        ; preds = %lor.lhs.false99
  %57 = load i64, ptr %result, align 8
  store i64 %57, ptr %retval, align 8
  br label %return

error:                                            ; preds = %if.then102, %if.then93, %if.then25, %if.then18
  %call104 = call ptr @gettext(ptr noundef @.str.8) #11
  %58 = load ptr, ptr %name.addr, align 8
  %59 = load i64, ptr %min.addr, align 8
  %60 = load i64, ptr %max.addr, align 8
  call void (ptr, ...) @message_fatal(ptr noundef %call104, ptr noundef %58, i64 noundef %59, i64 noundef %60) #12
  unreachable

return:                                           ; preds = %if.end103, %if.then
  %61 = load i64, ptr %retval, align 8
  ret i64 %61
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) #3

declare void @message(i32 noundef, ptr noundef, ...) #7

; Function Attrs: noinline nounwind optnone uwtable
define hidden i64 @round_up_to_mib(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %shr = lshr i64 %0, 20
  %1 = load i64, ptr %n.addr, align 8
  %and = and i64 %1, 1048575
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  %add = add i64 %shr, %conv1
  ret i64 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden ptr @uint64_to_str(i64 noundef %value, i32 noundef %slot) #0 {
entry:
  %value.addr = alloca i64, align 8
  %slot.addr = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8
  store i32 %slot, ptr %slot.addr, align 4
  %0 = load i32, ptr %slot.addr, align 4
  call void @check_thousand_sep(i32 noundef %0)
  %1 = load i32, ptr @thousand, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %slot.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [128 x i8], ptr %arrayidx, i64 0, i64 0
  %3 = load i64, ptr %value.addr, align 8
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 128, ptr noundef @.str.9, i64 noundef %3) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %slot.addr, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [128 x i8], ptr %arrayidx2, i64 0, i64 0
  %5 = load i64, ptr %value.addr, align 8
  %call4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay3, i64 noundef 128, ptr noundef @.str.10, i64 noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %slot.addr, align 4
  %idxprom5 = zext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [128 x i8], ptr %arrayidx6, i64 0, i64 0
  ret ptr %arraydecay7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_thousand_sep(i32 noundef %slot) #0 {
entry:
  %slot.addr = alloca i32, align 4
  store i32 %slot, ptr %slot.addr, align 4
  %0 = load i32, ptr @thousand, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %slot.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [128 x i8], ptr %arrayidx, i64 0, i64 0
  store i8 0, ptr %arrayidx1, align 16
  %2 = load i32, ptr %slot.addr, align 4
  %idxprom2 = zext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom2
  %arraydecay = getelementptr inbounds [128 x i8], ptr %arrayidx3, i64 0, i64 0
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 128, ptr noundef @.str.11, i32 noundef 1) #11
  %3 = load i32, ptr %slot.addr, align 4
  %idxprom4 = zext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [128 x i8], ptr %arrayidx5, i64 0, i64 0
  %4 = load i8, ptr %arrayidx6, align 16
  %conv = sext i8 %4 to i32
  %cmp7 = icmp eq i32 %conv, 49
  %5 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 1, i32 2
  store i32 %cond, ptr @thousand, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden ptr @uint64_to_nicestr(i64 noundef %value, i32 noundef %unit_min, i32 noundef %unit_max, i1 noundef zeroext %always_also_bytes, i32 noundef %slot) #0 {
entry:
  %value.addr = alloca i64, align 8
  %unit_min.addr = alloca i32, align 4
  %unit_max.addr = alloca i32, align 4
  %always_also_bytes.addr = alloca i8, align 1
  %slot.addr = alloca i32, align 4
  %unit = alloca i32, align 4
  %pos = alloca ptr, align 8
  %left = alloca i64, align 8
  %d = alloca double, align 8
  store i64 %value, ptr %value.addr, align 8
  store i32 %unit_min, ptr %unit_min.addr, align 4
  store i32 %unit_max, ptr %unit_max.addr, align 4
  %frombool = zext i1 %always_also_bytes to i8
  store i8 %frombool, ptr %always_also_bytes.addr, align 1
  store i32 %slot, ptr %slot.addr, align 4
  %0 = load i32, ptr %slot.addr, align 4
  call void @check_thousand_sep(i32 noundef %0)
  store i32 0, ptr %unit, align 4
  %1 = load i32, ptr %slot.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [128 x i8], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %pos, align 8
  store i64 128, ptr %left, align 8
  %2 = load i32, ptr %unit_min.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %value.addr, align 8
  %cmp1 = icmp ult i64 %3, 10000
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %unit_max.addr, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then, label %if.else6

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i32, ptr @thousand, align 4
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %6 = load i64, ptr %value.addr, align 8
  %conv = trunc i64 %6 to i32
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef %pos, ptr noundef %left, ptr noundef @.str.11, i32 noundef %conv)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load i64, ptr %value.addr, align 8
  %conv5 = trunc i64 %7 to i32
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef %pos, ptr noundef %left, ptr noundef @.str.12, i32 noundef %conv5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end19

if.else6:                                         ; preds = %lor.lhs.false
  %8 = load i64, ptr %value.addr, align 8
  %conv7 = uitofp i64 %8 to double
  store double %conv7, ptr %d, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.else6
  %9 = load double, ptr %d, align 8
  %div = fdiv double %9, 1.024000e+03
  store double %div, ptr %d, align 8
  %10 = load i32, ptr %unit, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %unit, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = load i32, ptr %unit, align 4
  %12 = load i32, ptr %unit_min.addr, align 4
  %cmp8 = icmp ult i32 %11, %12
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %13 = load double, ptr %d, align 8
  %cmp10 = fcmp ogt double %13, 0x40C387F333333333
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %14 = load i32, ptr %unit, align 4
  %15 = load i32, ptr %unit_max.addr, align 4
  %cmp12 = icmp ult i32 %14, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %16 = phi i1 [ false, %lor.rhs ], [ %cmp12, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.cond
  %17 = phi i1 [ true, %do.cond ], [ %16, %land.end ]
  br i1 %17, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %lor.end
  %18 = load i32, ptr @thousand, align 4
  %cmp14 = icmp eq i32 %18, 1
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %do.end
  %19 = load double, ptr %d, align 8
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef %pos, ptr noundef %left, ptr noundef @.str.13, double noundef %19)
  br label %if.end18

if.else17:                                        ; preds = %do.end
  %20 = load double, ptr %d, align 8
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef %pos, ptr noundef %left, ptr noundef @.str.14, double noundef %20)
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  %21 = load i32, ptr %unit, align 4
  %idxprom20 = zext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [5 x [4 x i8]], ptr @uint64_to_nicestr.suffix, i64 0, i64 %idxprom20
  %arraydecay22 = getelementptr inbounds [4 x i8], ptr %arrayidx21, i64 0, i64 0
  call void (ptr, ptr, ptr, ...) @my_snprintf(ptr noundef %pos, ptr noundef %left, ptr noundef @.str.15, ptr noundef %arraydecay22)
  %22 = load i8, ptr %always_also_bytes.addr, align 1
  %tobool = trunc i8 %22 to i1
  br i1 %tobool, label %land.lhs.true24, label %if.end34

land.lhs.true24:                                  ; preds = %if.end19
  %23 = load i64, ptr %value.addr, align 8
  %cmp25 = icmp uge i64 %23, 10000
  br i1 %cmp25, label %if.then27, label %if.end34

if.then27:                                        ; preds = %land.lhs.true24
  %24 = load i32, ptr @thousand, align 4
  %cmp28 = icmp eq i32 %24, 1
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.then27
  %25 = load ptr, ptr %pos, align 8
  %26 = load i64, ptr %left, align 8
  %27 = load i64, ptr %value.addr, align 8
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef %26, ptr noundef @.str.16, i64 noundef %27) #11
  br label %if.end33

if.else31:                                        ; preds = %if.then27
  %28 = load ptr, ptr %pos, align 8
  %29 = load i64, ptr %left, align 8
  %30 = load i64, ptr %value.addr, align 8
  %call32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef %29, ptr noundef @.str.17, i64 noundef %30) #11
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true24, %if.end19
  %31 = load i32, ptr %slot.addr, align 4
  %idxprom35 = zext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds [4 x [128 x i8]], ptr @bufs, i64 0, i64 %idxprom35
  %arraydecay37 = getelementptr inbounds [128 x i8], ptr %arrayidx36, i64 0, i64 0
  ret ptr %arraydecay37
}

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @my_snprintf(ptr noundef %pos, ptr noundef %left, ptr noundef %fmt, ...) #0 {
entry:
  %pos.addr = alloca ptr, align 8
  %left.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  store ptr %pos, ptr %pos.addr, align 8
  store ptr %left, ptr %left.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr %pos.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %left.addr, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load ptr, ptr %fmt.addr, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @vsnprintf(ptr noundef %1, i64 noundef %3, ptr noundef %4, ptr noundef %arraydecay1) #11
  store i32 %call, ptr %len, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %5 = load i32, ptr %len, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr %len, align 4
  %conv = sext i32 %6 to i64
  %7 = load ptr, ptr %left.addr, align 8
  %8 = load i64, ptr %7, align 8
  %cmp3 = icmp uge i64 %conv, %8
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %left.addr, align 8
  store i64 0, ptr %9, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, ptr %len, align 4
  %11 = load ptr, ptr %pos.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 %idx.ext
  store ptr %add.ptr, ptr %11, align 8
  %13 = load i32, ptr %len, align 4
  %conv5 = sext i32 %13 to i64
  %14 = load ptr, ptr %left.addr, align 8
  %15 = load i64, ptr %14, align 8
  %sub = sub i64 %15, %conv5
  store i64 %sub, ptr %14, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i1 @is_empty_filename(ptr noundef %filename) #0 {
entry:
  %retval = alloca i1, align 1
  %filename.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call ptr @gettext(ptr noundef @.str.18) #11
  call void (ptr, ...) @message_error(ptr noundef %call)
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1
  ret i1 %2
}

declare void @message_error(ptr noundef, ...) #7

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i1 @is_tty_stdin() #0 {
entry:
  %ret = alloca i8, align 1
  %call = call i32 @isatty(i32 noundef 0) #11
  %tobool = icmp ne i32 %call, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %ret, align 1
  %0 = load i8, ptr %ret, align 1
  %tobool1 = trunc i8 %0 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call ptr @gettext(ptr noundef @.str.19) #11
  call void (ptr, ...) @message_error(ptr noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr %ret, align 1
  %tobool3 = trunc i8 %1 to i1
  ret i1 %tobool3
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define hidden zeroext i1 @is_tty_stdout() #0 {
entry:
  %ret = alloca i8, align 1
  %call = call i32 @isatty(i32 noundef 1) #11
  %tobool = icmp ne i32 %call, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %ret, align 1
  %0 = load i8, ptr %ret, align 1
  %tobool1 = trunc i8 %0 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call ptr @gettext(ptr noundef @.str.20) #11
  call void (ptr, ...) @message_error(ptr noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr %ret, align 1
  %tobool3 = trunc i8 %1 to i1
  ret i1 %tobool3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind allocsize(1) }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}

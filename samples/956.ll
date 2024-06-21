; ModuleID = 'samples/956.bc'
source_filename = ".././../src/sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sequence_T = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i8, %union.pthread_mutex_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.gzFile_s = type { i32, ptr, i64 }
%struct.Intlist_T = type { i32, ptr }

@.str = private unnamed_addr constant [23 x i8] c".././../src/sequence.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Annot=\22%s\22\00", align 1
@Header = internal global [512 x i8] zeroinitializer, align 16
@Sequence = internal global [1000002 x i8] zeroinitializer, align 16
@Sequence1 = internal global [500001 x i8] zeroinitializer, align 16
@Firsthalf = internal global ptr null, align 8
@Sequence2 = internal global [500003 x i8] zeroinitializer, align 16
@Secondhalf = internal global ptr null, align 8
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [99 x i8] c"Warning: cDNA sequence length of %d exceeds maximum length of %d.  Truncating %d chars in middle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"  (For long sequences, perhaps you want maponly mode, by providing the '-1' flag.)\0A\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"Length %d of quality score differs from length %d of nucleotides in sequence %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NO_HEADER\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" md5:\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.Sequence_print.uppercaseCode = private unnamed_addr constant [128 x i8] c"???????????????????????????????? ??#$%&'()*+,-./0123456789:;<=>??ABCDEFGHIJKLMNOPQRSTUVWXYZ[?]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~?", align 16
@__const.Sequence_stdout.uppercaseCode = private unnamed_addr constant [128 x i8] c"???????????????????????????????? ??#$%&'()*+,-./0123456789:;<=>??ABCDEFGHIJKLMNOPQRSTUVWXYZ[?]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~?", align 16
@stdout = external global ptr, align 8
@__const.Sequence_stdout_alt.uppercaseCode = private unnamed_addr constant [128 x i8] c"???????????????????????????????? ??#$%&'()*+,-./0123456789:;<=>??ABCDEFGHIJKLMNOPQRSTUVWXYZ[?]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~?", align 16
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@__const.Sequence_stdout_two.uppercaseCode = private unnamed_addr constant [128 x i8] c"???????????????????????????????? ??#$%&'()*+,-./0123456789:;<=>??ABCDEFGHIJKLMNOPQRSTUVWXYZ[?]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~?", align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"ref\09\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"alt\09\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@complCode = internal global [128 x i8] c"???????????????????????????????? ??#$%&')(*+,-./0123456789:;>=<??TVGHEFCDIJMLKNOPQYSAABWXRZ]?[^_`tvghefcdijmlknopqysaabwxrz}|{~?", align 16
@__const.make_uppercase.uppercaseCode = private unnamed_addr constant [128 x i8] c"???????????????????????????????? ??#$%&'()*+,-./0123456789:;<=>??ABCDEFGHIJKLMNOPQRSTTVWXYZ[?]^_`ABCDEFGHIJKLMNOPQRSTTVWXYZ{|}~?", align 16
@Discard = internal global [8192 x i8] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [22 x i8] c".././../src/intlist.h\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Sequence_firstp(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 11
  %1 = load i8, ptr %firstp, align 8, !tbaa !9
  ret i8 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_incr_nrequests(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 12
  %call = call i32 @pthread_mutex_lock(ptr noundef %mutex) #9
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 13
  %2 = load i32, ptr %nrequests, align 8, !tbaa !12
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %nrequests, align 8, !tbaa !12
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mutex1 = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 12
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef %mutex1) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_decr_nrequests(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %nrequests = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrequests) #9
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 12
  %call = call i32 @pthread_mutex_lock(ptr noundef %mutex) #9
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nrequests1 = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 13
  %2 = load i32, ptr %nrequests1, align 8, !tbaa !12
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %nrequests1, align 8, !tbaa !12
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nrequests2 = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 13
  %4 = load i32, ptr %nrequests2, align 8, !tbaa !12
  store i32 %4, ptr %nrequests, align 4, !tbaa !13
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %mutex3 = getelementptr inbounds %struct.Sequence_T, ptr %5, i32 0, i32 12
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef %mutex3) #9
  %6 = load i32, ptr %nrequests, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrequests) #9
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_accession(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %acc, align 8, !tbaa !14
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_restofheader(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %restofheader, align 8, !tbaa !15
  %call = call ptr @skip_whitespace(ptr noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @skip_whitespace(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %1 = load i8, ptr %0, align 1, !tbaa !16
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %c, align 4, !tbaa !13
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call = call ptr @__ctype_b_loc() #10
  %2 = load ptr, ptr %call, align 8, !tbaa !5
  %3 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !17
  %conv2 = zext i16 %4 to i32
  %and = and i32 %conv2, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %string.addr, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %string.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_restofheader_wannot(ptr noundef %this) #0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %header = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %restofheader, align 8, !tbaa !15
  %call = call ptr @skip_whitespace(ptr noundef %1)
  store ptr %call, ptr %p, align 8, !tbaa !5
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %3 = load i8, ptr %2, align 1, !tbaa !16
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %p, align 8, !tbaa !5
  %call2 = call i64 @strlen(ptr noundef %4) #11
  %add = add i64 %call2, 1
  %add3 = add i64 %add, 1
  %mul = mul i64 %add3, 1
  %add4 = add i64 7, %mul
  %call5 = call ptr @Mem_alloc(i64 noundef %add4, ptr noundef @.str, i32 noundef 172)
  store ptr %call5, ptr %header, align 8, !tbaa !5
  %5 = load ptr, ptr %header, align 8, !tbaa !5
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef %6) #9
  %7 = load ptr, ptr %header, align 8, !tbaa !5
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #9
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_restofheader_keyvalue(ptr noundef %this) #0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %header = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %lastc = alloca i8, align 1
  %c = alloca i8, align 1
  %bracket_level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %lastc) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %bracket_level) #9
  store i32 0, ptr %bracket_level, align 4, !tbaa !13
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %restofheader, align 8, !tbaa !15
  %call = call ptr @skip_whitespace(ptr noundef %1)
  store ptr %call, ptr %p, align 8, !tbaa !5
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %3 = load i8, ptr %2, align 1, !tbaa !16
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %p, align 8, !tbaa !5
  %call2 = call i64 @strlen(ptr noundef %4) #11
  %add = add i64 %call2, 1
  %mul = mul i64 %add, 1
  %call3 = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 187)
  store ptr %call3, ptr %header, align 8, !tbaa !5
  store ptr %call3, ptr %q, align 8, !tbaa !5
  store i8 0, ptr %lastc, align 1, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %if.end51, %if.else
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !16
  store i8 %6, ptr %c, align 1, !tbaa !16
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8, ptr %c, align 1, !tbaa !16
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 123
  br i1 %cmp8, label %if.then10, label %if.else17

if.then10:                                        ; preds = %while.body
  %8 = load i32, ptr %bracket_level, align 4, !tbaa !13
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.then10
  %9 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr14 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr14, ptr %q, align 8, !tbaa !5
  store i8 34, ptr %9, align 1, !tbaa !16
  br label %if.end

if.else15:                                        ; preds = %if.then10
  %10 = load i8, ptr %c, align 1, !tbaa !16
  %11 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr16 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr16, ptr %q, align 8, !tbaa !5
  store i8 %10, ptr %11, align 1, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then13
  %12 = load i32, ptr %bracket_level, align 4, !tbaa !13
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %bracket_level, align 4, !tbaa !13
  br label %if.end51

if.else17:                                        ; preds = %while.body
  %13 = load i8, ptr %c, align 1, !tbaa !16
  %conv18 = sext i8 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 125
  br i1 %cmp19, label %if.then21, label %if.else29

if.then21:                                        ; preds = %if.else17
  %14 = load i32, ptr %bracket_level, align 4, !tbaa !13
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %bracket_level, align 4, !tbaa !13
  %15 = load i32, ptr %bracket_level, align 4, !tbaa !13
  %cmp22 = icmp eq i32 %15, 0
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.then21
  %16 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr25 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr25, ptr %q, align 8, !tbaa !5
  store i8 34, ptr %16, align 1, !tbaa !16
  br label %if.end28

if.else26:                                        ; preds = %if.then21
  %17 = load i8, ptr %c, align 1, !tbaa !16
  %18 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr27 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr27, ptr %q, align 8, !tbaa !5
  store i8 %17, ptr %18, align 1, !tbaa !16
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  br label %if.end50

if.else29:                                        ; preds = %if.else17
  %19 = load i8, ptr %c, align 1, !tbaa !16
  %conv30 = sext i8 %19 to i32
  %cmp31 = icmp eq i32 %conv30, 32
  br i1 %cmp31, label %if.then33, label %if.else47

if.then33:                                        ; preds = %if.else29
  %20 = load i32, ptr %bracket_level, align 4, !tbaa !13
  %cmp34 = icmp sgt i32 %20, 0
  br i1 %cmp34, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.then33
  %21 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr37 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr37, ptr %q, align 8, !tbaa !5
  store i8 32, ptr %21, align 1, !tbaa !16
  br label %if.end46

if.else38:                                        ; preds = %if.then33
  %22 = load i8, ptr %lastc, align 1, !tbaa !16
  %conv39 = sext i8 %22 to i32
  %cmp40 = icmp eq i32 %conv39, 32
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else38
  br label %if.end45

if.else43:                                        ; preds = %if.else38
  %23 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr44 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr44, ptr %q, align 8, !tbaa !5
  store i8 59, ptr %23, align 1, !tbaa !16
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then36
  br label %if.end49

if.else47:                                        ; preds = %if.else29
  %24 = load i8, ptr %c, align 1, !tbaa !16
  %25 = load ptr, ptr %q, align 8, !tbaa !5
  %incdec.ptr48 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr48, ptr %q, align 8, !tbaa !5
  store i8 %24, ptr %25, align 1, !tbaa !16
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.end46
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end28
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end
  %26 = load i8, ptr %c, align 1, !tbaa !16
  store i8 %26, ptr %lastc, align 1, !tbaa !16
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %27 = load ptr, ptr %q, align 8, !tbaa !5
  store i8 0, ptr %27, align 1, !tbaa !16
  %28 = load ptr, ptr %header, align 8, !tbaa !5
  store ptr %28, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bracket_level) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %lastc) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #9
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_fullpointer(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %contents, align 8, !tbaa !22
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_trimpointer(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %contents, align 8, !tbaa !22
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %trimstart, align 4, !tbaa !23
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  ret ptr %arrayidx
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_quality_string(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %quality, align 8, !tbaa !24
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_ntlength(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_fulllength(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_fulllength_given(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_subseq_pointer(ptr noundef %this, i32 noundef %querystart) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %querystart.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i32 %querystart, ptr %querystart.addr, align 4, !tbaa !13
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %contents, align 8, !tbaa !22
  %2 = load i32, ptr %querystart.addr, align 4, !tbaa !13
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  ret ptr %arrayidx
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_subseq_length(ptr noundef %this, i32 noundef %querystart) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %querystart.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i32 %querystart, ptr %querystart.addr, align 4, !tbaa !13
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  %2 = load i32, ptr %querystart.addr, align 4, !tbaa !13
  %sub = sub nsw i32 %1, %2
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_trimlength(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %trimend, align 8, !tbaa !26
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %trimstart, align 4, !tbaa !23
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_trim(ptr noundef %this, i32 noundef %trim_start, i32 noundef %trim_end) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %trim_start.addr = alloca i32, align 4
  %trim_end.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i32 %trim_start, ptr %trim_start.addr, align 4, !tbaa !13
  store i32 %trim_end, ptr %trim_end.addr, align 4, !tbaa !13
  %0 = load i32, ptr %trim_start.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 5
  store i32 %0, ptr %trimstart, align 4, !tbaa !23
  %2 = load i32, ptr %trim_end.addr, align 4, !tbaa !13
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 6
  store i32 %2, ptr %trimend, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_trim_start(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %trimstart, align 4, !tbaa !23
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_trim_end(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %trimend, align 8, !tbaa !26
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_subseq_offset(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %subseq_offset, align 4, !tbaa !27
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_skiplength(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %skiplength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %skiplength, align 8, !tbaa !28
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_free(ptr noundef %old) #0 {
entry:
  %old.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %restofheader, align 8, !tbaa !15
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %restofheader2 = getelementptr inbounds %struct.Sequence_T, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %restofheader2, align 8, !tbaa !15
  call void @Mem_free(ptr noundef %7, ptr noundef @.str, i32 noundef 317)
  %8 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %restofheader3 = getelementptr inbounds %struct.Sequence_T, ptr %9, i32 0, i32 1
  store ptr null, ptr %restofheader3, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %10 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %acc, align 8, !tbaa !14
  %cmp4 = icmp ne ptr %12, null
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %acc6 = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %acc6, align 8, !tbaa !14
  call void @Mem_free(ptr noundef %15, ptr noundef @.str, i32 noundef 320)
  %16 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %acc7 = getelementptr inbounds %struct.Sequence_T, ptr %17, i32 0, i32 0
  store ptr null, ptr %acc7, align 8, !tbaa !14
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %18 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %19, i32 0, i32 10
  %20 = load ptr, ptr %quality_alloc, align 8, !tbaa !29
  %cmp9 = icmp ne ptr %20, null
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  %21 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %quality_alloc11 = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %quality_alloc11, align 8, !tbaa !29
  call void @Mem_free(ptr noundef %23, ptr noundef @.str, i32 noundef 325)
  %24 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %quality_alloc12 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 10
  store ptr null, ptr %quality_alloc12, align 8, !tbaa !29
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8
  %26 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %contents_alloc, align 8, !tbaa !30
  call void @Mem_free(ptr noundef %28, ptr noundef @.str, i32 noundef 329)
  %29 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %contents_alloc14 = getelementptr inbounds %struct.Sequence_T, ptr %30, i32 0, i32 3
  store ptr null, ptr %contents_alloc14, align 8, !tbaa !30
  %31 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %32, i32 0, i32 12
  %call = call i32 @pthread_mutex_destroy(ptr noundef %mutex) #9
  %33 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %34, ptr noundef @.str, i32 noundef 335)
  %35 = load ptr, ptr %old.addr, align 8, !tbaa !5
  store ptr null, ptr %35, align 8, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %entry
  ret void
}

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_input_init(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %okayp = alloca i8, align 1
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %okayp) #9
  store i8 0, ptr %okayp, align 1, !tbaa !16
  store i8 0, ptr @Header, align 16, !tbaa !16
  store i8 0, ptr @Sequence, align 16, !tbaa !16
  store ptr @Sequence1, ptr @Firsthalf, align 8, !tbaa !5
  store ptr @Sequence2, ptr @Secondhalf, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load i8, ptr %okayp, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call = call i32 @fgetc(ptr noundef %1)
  store i32 %call, ptr %c, align 4, !tbaa !13
  %cmp2 = icmp ne i32 %call, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call4 = call ptr @__ctype_b_loc() #10
  %3 = load ptr, ptr %call4, align 8, !tbaa !5
  %4 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2, !tbaa !17
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %if.end14

if.else:                                          ; preds = %while.body
  %call6 = call ptr @__ctype_b_loc() #10
  %6 = load ptr, ptr %call6, align 8, !tbaa !5
  %7 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %6, i64 %idxprom7
  %8 = load i16, ptr %arrayidx8, align 2, !tbaa !17
  %conv9 = zext i16 %8 to i32
  %and10 = and i32 %conv9, 8192
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  br label %if.end

if.else13:                                        ; preds = %if.else
  store i8 1, ptr %okayp, align 1, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %land.end
  %9 = load i32, ptr %c, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 1, ptr %okayp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  ret i32 %9
}

declare i32 @fgetc(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_input_init_gzip(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %okayp = alloca i8, align 1
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %okayp) #9
  store i8 0, ptr %okayp, align 1, !tbaa !16
  store i8 0, ptr @Header, align 16, !tbaa !16
  store i8 0, ptr @Sequence, align 16, !tbaa !16
  store ptr @Sequence1, ptr @Firsthalf, align 8, !tbaa !5
  store ptr @Sequence2, ptr @Secondhalf, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %0 = load i8, ptr %okayp, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %have = getelementptr inbounds %struct.gzFile_s, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %have, align 8, !tbaa !32
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %3 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %have2 = getelementptr inbounds %struct.gzFile_s, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %have2, align 8, !tbaa !32
  %dec = add i32 %4, -1
  store i32 %dec, ptr %have2, align 8, !tbaa !32
  %5 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %pos = getelementptr inbounds %struct.gzFile_s, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %pos, align 8, !tbaa !35
  %inc = add nsw i64 %6, 1
  store i64 %inc, ptr %pos, align 8, !tbaa !35
  %7 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.gzFile_s, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next, align 8, !tbaa !36
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %next, align 8, !tbaa !36
  %9 = load i8, ptr %8, align 1, !tbaa !16
  %conv3 = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %10 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call = call i32 @gzgetc(ptr noundef %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, ptr %c, align 4, !tbaa !13
  %cmp4 = icmp ne i32 %cond, -1
  br label %land.end

land.end:                                         ; preds = %cond.end, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %cond.end ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call6 = call ptr @__ctype_b_loc() #10
  %12 = load ptr, ptr %call6, align 8, !tbaa !5
  %13 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %14 = load i16, ptr %arrayidx, align 2, !tbaa !17
  %conv7 = zext i16 %14 to i32
  %and = and i32 %conv7, 2
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %if.end17

if.else:                                          ; preds = %while.body
  %call9 = call ptr @__ctype_b_loc() #10
  %15 = load ptr, ptr %call9, align 8, !tbaa !5
  %16 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i16, ptr %15, i64 %idxprom10
  %17 = load i16, ptr %arrayidx11, align 2, !tbaa !17
  %conv12 = zext i16 %17 to i32
  %and13 = and i32 %conv12, 8192
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  br label %if.end

if.else16:                                        ; preds = %if.else
  store i8 1, ptr %okayp, align 1, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then15
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !37

while.end:                                        ; preds = %land.end
  %18 = load i32, ptr %c, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 1, ptr %okayp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  ret i32 %18
}

declare i32 @gzgetc(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @Sequence_input_init_bzip2(ptr noundef %fp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %okayp = alloca i8, align 1
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %okayp) #9
  store i8 0, ptr %okayp, align 1, !tbaa !16
  store i8 0, ptr @Header, align 16, !tbaa !16
  store i8 0, ptr @Sequence, align 16, !tbaa !16
  store ptr @Sequence1, ptr @Firsthalf, align 8, !tbaa !5
  store ptr @Sequence2, ptr @Secondhalf, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load i8, ptr %okayp, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call = call i32 @bzgetc(ptr noundef %1)
  store i32 %call, ptr %c, align 4, !tbaa !13
  %cmp2 = icmp ne i32 %call, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call4 = call ptr @__ctype_b_loc() #10
  %3 = load ptr, ptr %call4, align 8, !tbaa !5
  %4 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2, !tbaa !17
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %if.end14

if.else:                                          ; preds = %while.body
  %call6 = call ptr @__ctype_b_loc() #10
  %6 = load ptr, ptr %call6, align 8, !tbaa !5
  %7 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %6, i64 %idxprom7
  %8 = load i16, ptr %arrayidx8, align 2, !tbaa !17
  %conv9 = zext i16 %8 to i32
  %and10 = and i32 %conv9, 8192
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  br label %if.end

if.else13:                                        ; preds = %if.else
  store i8 1, ptr %okayp, align 1, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %land.end
  %9 = load i32, ptr %c, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 1, ptr %okayp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  ret i32 %9
}

declare i32 @bzgetc(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_genomic_new(ptr noundef %contents, i32 noundef %length, i8 noundef zeroext %copyp) #0 {
entry:
  %contents.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %copyp.addr = alloca i8, align 1
  %new = alloca ptr, align 8
  %copy = alloca ptr, align 8
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !5
  store i32 %length, ptr %length.addr, align 4, !tbaa !13
  store i8 %copyp, ptr %copyp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  %call = call ptr @Mem_alloc(i64 noundef 128, ptr noundef @.str, i32 noundef 1064)
  store ptr %call, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #9
  %0 = load ptr, ptr %new, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  store ptr null, ptr %acc, align 8, !tbaa !14
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 1
  store ptr null, ptr %restofheader, align 8, !tbaa !15
  %2 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 5
  store i32 0, ptr %trimstart, align 4, !tbaa !23
  %3 = load i32, ptr %length.addr, align 4, !tbaa !13
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %4, i32 0, i32 4
  store i32 %3, ptr %fulllength, align 8, !tbaa !25
  %5 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %5, i32 0, i32 6
  store i32 %3, ptr %trimend, align 8, !tbaa !26
  %6 = load i8, ptr %copyp.addr, align 1, !tbaa !16
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %length.addr, align 4, !tbaa !13
  %add = add nsw i32 %7, 1
  %conv2 = sext i32 %add to i64
  %mul = mul i64 %conv2, 1
  %call3 = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 1077)
  store ptr %call3, ptr %copy, align 8, !tbaa !5
  %8 = load ptr, ptr %copy, align 8, !tbaa !5
  %9 = load ptr, ptr %contents.addr, align 8, !tbaa !5
  %10 = load i32, ptr %length.addr, align 4, !tbaa !13
  %conv4 = sext i32 %10 to i64
  %call5 = call ptr @strncpy(ptr noundef %8, ptr noundef %9, i64 noundef %conv4) #9
  %11 = load ptr, ptr %copy, align 8, !tbaa !5
  %12 = load i32, ptr %length.addr, align 4, !tbaa !13
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !16
  %13 = load ptr, ptr %copy, align 8, !tbaa !5
  %14 = load ptr, ptr %new, align 8, !tbaa !5
  %contents6 = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 2
  store ptr %13, ptr %contents6, align 8, !tbaa !22
  %15 = load ptr, ptr %copy, align 8, !tbaa !5
  %16 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %16, i32 0, i32 3
  store ptr %15, ptr %contents_alloc, align 8, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %contents.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %new, align 8, !tbaa !5
  %contents7 = getelementptr inbounds %struct.Sequence_T, ptr %18, i32 0, i32 2
  store ptr %17, ptr %contents7, align 8, !tbaa !22
  %19 = load ptr, ptr %contents.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc8 = getelementptr inbounds %struct.Sequence_T, ptr %20, i32 0, i32 3
  store ptr %19, ptr %contents_alloc8, align 8, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %21, i32 0, i32 10
  store ptr null, ptr %quality_alloc, align 8, !tbaa !29
  %22 = load ptr, ptr %new, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 9
  store ptr null, ptr %quality, align 8, !tbaa !24
  %23 = load ptr, ptr %new, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %23, i32 0, i32 7
  store i32 0, ptr %subseq_offset, align 4, !tbaa !27
  %24 = load ptr, ptr %new, align 8, !tbaa !5
  %skiplength = getelementptr inbounds %struct.Sequence_T, ptr %24, i32 0, i32 8
  store i32 0, ptr %skiplength, align 8, !tbaa !28
  %25 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 11
  store i8 1, ptr %firstp, align 8, !tbaa !9
  %26 = load ptr, ptr %new, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %26, i32 0, i32 12
  %call9 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %27 = load ptr, ptr %new, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %27, i32 0, i32 13
  store i32 0, ptr %nrequests, align 8, !tbaa !12
  %28 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  ret ptr %28
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_subsequence(ptr noundef %this, i32 noundef %start, i32 noundef %end) #0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i32 %start, ptr %start.addr, align 4, !tbaa !13
  store i32 %end, ptr %end.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  %0 = load i32, ptr %start.addr, align 4, !tbaa !13
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %start.addr, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %end.addr, align 4, !tbaa !13
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %fulllength, align 8, !tbaa !25
  %cmp1 = icmp sgt i32 %1, %3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength3 = getelementptr inbounds %struct.Sequence_T, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %fulllength3, align 8, !tbaa !25
  store i32 %5, ptr %end.addr, align 4, !tbaa !13
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load i32, ptr %end.addr, align 4, !tbaa !13
  %7 = load i32, ptr %start.addr, align 4, !tbaa !13
  %cmp5 = icmp sle i32 %6, %7
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %call = call ptr @Mem_alloc(i64 noundef 128, ptr noundef @.str, i32 noundef 1220)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %8 = load ptr, ptr %new, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %8, i32 0, i32 0
  store ptr null, ptr %acc, align 8, !tbaa !14
  %9 = load ptr, ptr %new, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %9, i32 0, i32 1
  store ptr null, ptr %restofheader, align 8, !tbaa !15
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %contents, align 8, !tbaa !22
  %12 = load i32, ptr %start.addr, align 4, !tbaa !13
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %new, align 8, !tbaa !5
  %contents7 = getelementptr inbounds %struct.Sequence_T, ptr %13, i32 0, i32 2
  store ptr %arrayidx, ptr %contents7, align 8, !tbaa !22
  %14 = load i32, ptr %end.addr, align 4, !tbaa !13
  %15 = load i32, ptr %start.addr, align 4, !tbaa !13
  %sub = sub nsw i32 %14, %15
  %16 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength8 = getelementptr inbounds %struct.Sequence_T, ptr %16, i32 0, i32 4
  store i32 %sub, ptr %fulllength8, align 8, !tbaa !25
  %17 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %trimstart, align 4, !tbaa !23
  %19 = load i32, ptr %start.addr, align 4, !tbaa !13
  %sub9 = sub nsw i32 %18, %19
  %20 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart10 = getelementptr inbounds %struct.Sequence_T, ptr %20, i32 0, i32 5
  store i32 %sub9, ptr %trimstart10, align 4, !tbaa !23
  %cmp11 = icmp slt i32 %sub9, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else
  %21 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart13 = getelementptr inbounds %struct.Sequence_T, ptr %21, i32 0, i32 5
  store i32 0, ptr %trimstart13, align 4, !tbaa !23
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %trimend, align 8, !tbaa !26
  %24 = load i32, ptr %start.addr, align 4, !tbaa !13
  %sub15 = sub nsw i32 %23, %24
  %25 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend16 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 6
  store i32 %sub15, ptr %trimend16, align 8, !tbaa !26
  %26 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength17 = getelementptr inbounds %struct.Sequence_T, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %fulllength17, align 8, !tbaa !25
  %cmp18 = icmp sgt i32 %sub15, %27
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  %28 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength20 = getelementptr inbounds %struct.Sequence_T, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %fulllength20, align 8, !tbaa !25
  %30 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend21 = getelementptr inbounds %struct.Sequence_T, ptr %30, i32 0, i32 6
  store i32 %29, ptr %trimend21, align 8, !tbaa !26
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end14
  %31 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %31, i32 0, i32 3
  store ptr null, ptr %contents_alloc, align 8, !tbaa !30
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %quality, align 8, !tbaa !24
  %cmp23 = icmp eq ptr %33, null
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.end22
  %34 = load ptr, ptr %new, align 8, !tbaa !5
  %quality25 = getelementptr inbounds %struct.Sequence_T, ptr %34, i32 0, i32 9
  store ptr null, ptr %quality25, align 8, !tbaa !24
  br label %if.end31

if.else26:                                        ; preds = %if.end22
  %35 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %quality27 = getelementptr inbounds %struct.Sequence_T, ptr %35, i32 0, i32 9
  %36 = load ptr, ptr %quality27, align 8, !tbaa !24
  %37 = load i32, ptr %start.addr, align 4, !tbaa !13
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %36, i64 %idxprom28
  %38 = load ptr, ptr %new, align 8, !tbaa !5
  %quality30 = getelementptr inbounds %struct.Sequence_T, ptr %38, i32 0, i32 9
  store ptr %arrayidx29, ptr %quality30, align 8, !tbaa !24
  br label %if.end31

if.end31:                                         ; preds = %if.else26, %if.then24
  %39 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %39, i32 0, i32 10
  store ptr null, ptr %quality_alloc, align 8, !tbaa !29
  %40 = load i32, ptr %start.addr, align 4, !tbaa !13
  %41 = load ptr, ptr %new, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %41, i32 0, i32 7
  store i32 %40, ptr %subseq_offset, align 4, !tbaa !27
  %42 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %skiplength = getelementptr inbounds %struct.Sequence_T, ptr %42, i32 0, i32 8
  %43 = load i32, ptr %skiplength, align 8, !tbaa !28
  %44 = load ptr, ptr %new, align 8, !tbaa !5
  %skiplength32 = getelementptr inbounds %struct.Sequence_T, ptr %44, i32 0, i32 8
  store i32 %43, ptr %skiplength32, align 8, !tbaa !28
  %45 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %45, i32 0, i32 11
  %46 = load i8, ptr %firstp, align 8, !tbaa !9
  %47 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp33 = getelementptr inbounds %struct.Sequence_T, ptr %47, i32 0, i32 11
  store i8 %46, ptr %firstp33, align 8, !tbaa !9
  %48 = load ptr, ptr %new, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %48, i32 0, i32 12
  %call34 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %49 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %49, i32 0, i32 13
  %50 = load i32, ptr %nrequests, align 8, !tbaa !12
  %51 = load ptr, ptr %new, align 8, !tbaa !5
  %nrequests35 = getelementptr inbounds %struct.Sequence_T, ptr %51, i32 0, i32 13
  store i32 %50, ptr %nrequests35, align 8, !tbaa !12
  %52 = load ptr, ptr %new, align 8, !tbaa !5
  store ptr %52, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  %53 = load ptr, ptr %retval, align 8
  ret ptr %53
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_revcomp(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  %call = call ptr @Mem_alloc(i64 noundef 128, ptr noundef @.str, i32 noundef 1270)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %new, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  store ptr null, ptr %acc, align 8, !tbaa !14
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 1
  store ptr null, ptr %restofheader, align 8, !tbaa !15
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %contents, align 8, !tbaa !22
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %fulllength, align 8, !tbaa !25
  %call1 = call ptr @make_complement(ptr noundef %3, i32 noundef %5)
  %6 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %6, i32 0, i32 3
  store ptr %call1, ptr %contents_alloc, align 8, !tbaa !30
  %7 = load ptr, ptr %new, align 8, !tbaa !5
  %contents2 = getelementptr inbounds %struct.Sequence_T, ptr %7, i32 0, i32 2
  store ptr %call1, ptr %contents2, align 8, !tbaa !22
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %quality, align 8, !tbaa !24
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength3 = getelementptr inbounds %struct.Sequence_T, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %fulllength3, align 8, !tbaa !25
  %call4 = call ptr @make_reverse(ptr noundef %9, i32 noundef %11)
  %12 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %12, i32 0, i32 10
  store ptr %call4, ptr %quality_alloc, align 8, !tbaa !29
  %13 = load ptr, ptr %new, align 8, !tbaa !5
  %quality5 = getelementptr inbounds %struct.Sequence_T, ptr %13, i32 0, i32 9
  store ptr %call4, ptr %quality5, align 8, !tbaa !24
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength6 = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %fulllength6, align 8, !tbaa !25
  %16 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength7 = getelementptr inbounds %struct.Sequence_T, ptr %16, i32 0, i32 4
  store i32 %15, ptr %fulllength7, align 8, !tbaa !25
  %17 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %trimstart, align 4, !tbaa !23
  %19 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart8 = getelementptr inbounds %struct.Sequence_T, ptr %19, i32 0, i32 5
  store i32 %18, ptr %trimstart8, align 4, !tbaa !23
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %trimend, align 8, !tbaa !26
  %22 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend9 = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 6
  store i32 %21, ptr %trimend9, align 8, !tbaa !26
  %23 = load ptr, ptr %new, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %23, i32 0, i32 7
  store i32 0, ptr %subseq_offset, align 4, !tbaa !27
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %skiplength = getelementptr inbounds %struct.Sequence_T, ptr %24, i32 0, i32 8
  %25 = load i32, ptr %skiplength, align 8, !tbaa !28
  %26 = load ptr, ptr %new, align 8, !tbaa !5
  %skiplength10 = getelementptr inbounds %struct.Sequence_T, ptr %26, i32 0, i32 8
  store i32 %25, ptr %skiplength10, align 8, !tbaa !28
  %27 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %27, i32 0, i32 11
  %28 = load i8, ptr %firstp, align 8, !tbaa !9
  %29 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp11 = getelementptr inbounds %struct.Sequence_T, ptr %29, i32 0, i32 11
  store i8 %28, ptr %firstp11, align 8, !tbaa !9
  %30 = load ptr, ptr %new, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %30, i32 0, i32 12
  %call12 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %31 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %31, i32 0, i32 13
  %32 = load i32, ptr %nrequests, align 8, !tbaa !12
  %33 = load ptr, ptr %new, align 8, !tbaa !5
  %nrequests13 = getelementptr inbounds %struct.Sequence_T, ptr %33, i32 0, i32 13
  store i32 %32, ptr %nrequests13, align 8, !tbaa !12
  %34 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  ret ptr %34
}

; Function Attrs: nounwind uwtable
define internal ptr @make_complement(ptr noundef %sequence, i32 noundef %length) #0 {
entry:
  %sequence.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %complement = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %sequence, ptr %sequence.addr, align 8, !tbaa !5
  store i32 %length, ptr %length.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %complement) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  %0 = load i32, ptr %length.addr, align 4, !tbaa !13
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 1113)
  store ptr %call, ptr %complement, align 8, !tbaa !5
  %1 = load i32, ptr %length.addr, align 4, !tbaa !13
  %sub = sub i32 %1, 1
  store i32 %sub, ptr %i, align 4, !tbaa !13
  store i32 0, ptr %j, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !13
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv2 = sext i8 %5 to i32
  %idxprom3 = sext i32 %conv2 to i64
  %arrayidx4 = getelementptr inbounds [128 x i8], ptr @complCode, i64 0, i64 %idxprom3
  %6 = load i8, ptr %arrayidx4, align 1, !tbaa !16
  %7 = load ptr, ptr %complement, align 8, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  store i8 %6, ptr %arrayidx6, align 1, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !13
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4, !tbaa !13
  %10 = load i32, ptr %j, align 4, !tbaa !13
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %complement, align 8, !tbaa !5
  %12 = load i32, ptr %length.addr, align 4, !tbaa !13
  %idxprom7 = zext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %11, i64 %idxprom7
  store i8 0, ptr %arrayidx8, align 1, !tbaa !16
  %13 = load ptr, ptr %complement, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %complement) #9
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal ptr @make_reverse(ptr noundef %sequence, i32 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %sequence.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %reverse = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sequence, ptr %sequence.addr, align 8, !tbaa !5
  store i32 %length, ptr %length.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %reverse) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  %0 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %length.addr, align 4, !tbaa !13
  %add = add i32 %1, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 1129)
  store ptr %call, ptr %reverse, align 8, !tbaa !5
  %2 = load i32, ptr %length.addr, align 4, !tbaa !13
  %sub = sub i32 %2, 1
  store i32 %sub, ptr %i, align 4, !tbaa !13
  store i32 0, ptr %j, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, ptr %i, align 4, !tbaa !13
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %7 = load ptr, ptr %reverse, align 8, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  store i8 %6, ptr %arrayidx4, align 1, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !13
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4, !tbaa !13
  %10 = load i32, ptr %j, align 4, !tbaa !13
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %reverse, align 8, !tbaa !5
  %12 = load i32, ptr %length.addr, align 4, !tbaa !13
  %idxprom5 = zext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %11, i64 %idxprom5
  store i8 0, ptr %arrayidx6, align 1, !tbaa !16
  %13 = load ptr, ptr %reverse, align 8, !tbaa !5
  store ptr %13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %reverse) #9
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_uppercase(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  %call = call ptr @Mem_alloc(i64 noundef 128, ptr noundef @.str, i32 noundef 1320)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %new, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  store ptr null, ptr %acc, align 8, !tbaa !14
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 1
  store ptr null, ptr %restofheader, align 8, !tbaa !15
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %contents, align 8, !tbaa !22
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %fulllength, align 8, !tbaa !25
  %call1 = call ptr @make_uppercase(ptr noundef %3, i32 noundef %5)
  %6 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %6, i32 0, i32 3
  store ptr %call1, ptr %contents_alloc, align 8, !tbaa !30
  %7 = load ptr, ptr %new, align 8, !tbaa !5
  %contents2 = getelementptr inbounds %struct.Sequence_T, ptr %7, i32 0, i32 2
  store ptr %call1, ptr %contents2, align 8, !tbaa !22
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %quality_alloc, align 8, !tbaa !29
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc3 = getelementptr inbounds %struct.Sequence_T, ptr %10, i32 0, i32 10
  store ptr null, ptr %quality_alloc3, align 8, !tbaa !29
  %11 = load ptr, ptr %new, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %11, i32 0, i32 9
  store ptr null, ptr %quality, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength4 = getelementptr inbounds %struct.Sequence_T, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %fulllength4, align 8, !tbaa !25
  %add = add nsw i32 %13, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call5 = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 1330)
  %14 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc6 = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 10
  store ptr %call5, ptr %quality_alloc6, align 8, !tbaa !29
  %15 = load ptr, ptr %new, align 8, !tbaa !5
  %quality7 = getelementptr inbounds %struct.Sequence_T, ptr %15, i32 0, i32 9
  store ptr %call5, ptr %quality7, align 8, !tbaa !24
  %16 = load ptr, ptr %new, align 8, !tbaa !5
  %quality8 = getelementptr inbounds %struct.Sequence_T, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %quality8, align 8, !tbaa !24
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %quality9 = getelementptr inbounds %struct.Sequence_T, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %quality9, align 8, !tbaa !24
  %call10 = call ptr @strcpy(ptr noundef %17, ptr noundef %19) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength11 = getelementptr inbounds %struct.Sequence_T, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %fulllength11, align 8, !tbaa !25
  %22 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength12 = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 4
  store i32 %21, ptr %fulllength12, align 8, !tbaa !25
  %23 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %trimstart, align 4, !tbaa !23
  %25 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart13 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 5
  store i32 %24, ptr %trimstart13, align 4, !tbaa !23
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %trimend, align 8, !tbaa !26
  %28 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend14 = getelementptr inbounds %struct.Sequence_T, ptr %28, i32 0, i32 6
  store i32 %27, ptr %trimend14, align 8, !tbaa !26
  %29 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %29, i32 0, i32 7
  %30 = load i32, ptr %subseq_offset, align 4, !tbaa !27
  %31 = load ptr, ptr %new, align 8, !tbaa !5
  %subseq_offset15 = getelementptr inbounds %struct.Sequence_T, ptr %31, i32 0, i32 7
  store i32 %30, ptr %subseq_offset15, align 4, !tbaa !27
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %skiplength = getelementptr inbounds %struct.Sequence_T, ptr %32, i32 0, i32 8
  %33 = load i32, ptr %skiplength, align 8, !tbaa !28
  %34 = load ptr, ptr %new, align 8, !tbaa !5
  %skiplength16 = getelementptr inbounds %struct.Sequence_T, ptr %34, i32 0, i32 8
  store i32 %33, ptr %skiplength16, align 8, !tbaa !28
  %35 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %35, i32 0, i32 11
  %36 = load i8, ptr %firstp, align 8, !tbaa !9
  %37 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp17 = getelementptr inbounds %struct.Sequence_T, ptr %37, i32 0, i32 11
  store i8 %36, ptr %firstp17, align 8, !tbaa !9
  %38 = load ptr, ptr %new, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %38, i32 0, i32 12
  %call18 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %39 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %39, i32 0, i32 13
  %40 = load i32, ptr %nrequests, align 8, !tbaa !12
  %41 = load ptr, ptr %new, align 8, !tbaa !5
  %nrequests19 = getelementptr inbounds %struct.Sequence_T, ptr %41, i32 0, i32 13
  store i32 %40, ptr %nrequests19, align 8, !tbaa !12
  %42 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  ret ptr %42
}

; Function Attrs: nounwind uwtable
define internal ptr @make_uppercase(ptr noundef %sequence, i32 noundef %length) #0 {
entry:
  %sequence.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %uppercase = alloca ptr, align 8
  %uppercaseCode = alloca [128 x i8], align 16
  %i = alloca i32, align 4
  store ptr %sequence, ptr %sequence.addr, align 8, !tbaa !5
  store i32 %length, ptr %length.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %uppercase) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %uppercaseCode, ptr align 16 @__const.make_uppercase.uppercaseCode, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  %0 = load i32, ptr %length.addr, align 4, !tbaa !13
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  %mul = mul i64 %conv, 1
  %call = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 1309)
  store ptr %call, ptr %uppercase, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !13
  %2 = load i32, ptr %length.addr, align 4, !tbaa !13
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv2 = sext i8 %5 to i32
  %idxprom3 = sext i32 %conv2 to i64
  %arrayidx4 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom3
  %6 = load i8, ptr %arrayidx4, align 1, !tbaa !16
  %7 = load ptr, ptr %uppercase, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom5 = zext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  store i8 %6, ptr %arrayidx6, align 1, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !13
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %uppercase, align 8, !tbaa !5
  %11 = load i32, ptr %length.addr, align 4, !tbaa !13
  %idxprom7 = zext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 %idxprom7
  store i8 0, ptr %arrayidx8, align 1, !tbaa !16
  %12 = load ptr, ptr %uppercase, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %uppercase) #9
  ret ptr %12
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_alias(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  %call = call ptr @Mem_alloc(i64 noundef 128, ptr noundef @.str, i32 noundef 1356)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %new, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  store ptr null, ptr %acc, align 8, !tbaa !14
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 1
  store ptr null, ptr %restofheader, align 8, !tbaa !15
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %contents, align 8, !tbaa !22
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  %contents1 = getelementptr inbounds %struct.Sequence_T, ptr %4, i32 0, i32 2
  store ptr %3, ptr %contents1, align 8, !tbaa !22
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %quality, align 8, !tbaa !24
  %7 = load ptr, ptr %new, align 8, !tbaa !5
  %quality2 = getelementptr inbounds %struct.Sequence_T, ptr %7, i32 0, i32 9
  store ptr %6, ptr %quality2, align 8, !tbaa !24
  %8 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %8, i32 0, i32 10
  store ptr null, ptr %quality_alloc, align 8, !tbaa !29
  %9 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %fulllength, align 8, !tbaa !25
  %11 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength3 = getelementptr inbounds %struct.Sequence_T, ptr %11, i32 0, i32 4
  store i32 %10, ptr %fulllength3, align 8, !tbaa !25
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %trimstart, align 4, !tbaa !23
  %14 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart4 = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 5
  store i32 %13, ptr %trimstart4, align 4, !tbaa !23
  %15 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %trimend, align 8, !tbaa !26
  %17 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend5 = getelementptr inbounds %struct.Sequence_T, ptr %17, i32 0, i32 6
  store i32 %16, ptr %trimend5, align 8, !tbaa !26
  %18 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %18, i32 0, i32 3
  store ptr null, ptr %contents_alloc, align 8, !tbaa !30
  %19 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %subseq_offset, align 4, !tbaa !27
  %21 = load ptr, ptr %new, align 8, !tbaa !5
  %subseq_offset6 = getelementptr inbounds %struct.Sequence_T, ptr %21, i32 0, i32 7
  store i32 %20, ptr %subseq_offset6, align 4, !tbaa !27
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 11
  %23 = load i8, ptr %firstp, align 8, !tbaa !9
  %24 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp7 = getelementptr inbounds %struct.Sequence_T, ptr %24, i32 0, i32 11
  store i8 %23, ptr %firstp7, align 8, !tbaa !9
  %25 = load ptr, ptr %new, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 12
  %call8 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %26, i32 0, i32 13
  %27 = load i32, ptr %nrequests, align 8, !tbaa !12
  %28 = load ptr, ptr %new, align 8, !tbaa !5
  %nrequests9 = getelementptr inbounds %struct.Sequence_T, ptr %28, i32 0, i32 13
  store i32 %27, ptr %nrequests9, align 8, !tbaa !12
  %29 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_read(ptr noundef %nextchar, ptr noundef %input) #0 {
entry:
  %retval = alloca ptr, align 8
  %nextchar.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %fulllength = alloca i32, align 4
  %skiplength = alloca i32, align 4
  %pointer1 = alloca ptr, align 8
  %pointer2a = alloca ptr, align 8
  %pointer2b = alloca ptr, align 8
  %length1 = alloca i32, align 4
  %length2a = alloca i32, align 4
  %length2b = alloca i32, align 4
  %quality_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nextchar, ptr %nextchar.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %fulllength) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %skiplength) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer2a) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer2b) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %length1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %length2a) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %length2b) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %quality_length) #9
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call = call i32 @feof(ptr noundef %0) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %1, align 4, !tbaa !13
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call2 = call i32 @Sequence_input_init(ptr noundef %4)
  %5 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %call2, ptr %5, align 4, !tbaa !13
  %6 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %cmp3 = icmp eq i32 %7, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then1
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %call7 = call ptr @Mem_alloc(i64 noundef 128, ptr noundef @.str, i32 noundef 1446)
  store ptr %call7, ptr %new, align 8, !tbaa !5
  %8 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %cmp8 = icmp ne i32 %9, 64
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %10 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %cmp9 = icmp ne i32 %11, 62
  br i1 %cmp9, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true
  %12 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %cmp11 = icmp ne i32 %13, 60
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true10
  %14 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 11
  store i8 1, ptr %firstp, align 8, !tbaa !9
  %15 = load ptr, ptr %new, align 8, !tbaa !5
  call void @blank_header(ptr noundef %15)
  br label %if.end33

if.else:                                          ; preds = %land.lhs.true10, %land.lhs.true, %if.end6
  %16 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %new, align 8, !tbaa !5
  %call13 = call ptr @input_header(ptr noundef %16, ptr noundef %17)
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else
  %18 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %18, align 4, !tbaa !13
  %19 = load ptr, ptr %new, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %19, ptr noundef @.str, i32 noundef 1454)
  store ptr null, ptr %new, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else16:                                        ; preds = %if.else
  %20 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %21 = load i32, ptr %20, align 4, !tbaa !13
  %cmp17 = icmp eq i32 %21, 64
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  %22 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp19 = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 11
  store i8 1, ptr %firstp19, align 8, !tbaa !9
  br label %if.end31

if.else20:                                        ; preds = %if.else16
  %23 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %cmp21 = icmp eq i32 %24, 62
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else20
  %25 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp23 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 11
  store i8 1, ptr %firstp23, align 8, !tbaa !9
  br label %if.end30

if.else24:                                        ; preds = %if.else20
  %26 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %cmp25 = icmp eq i32 %27, 60
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else24
  %28 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp27 = getelementptr inbounds %struct.Sequence_T, ptr %28, i32 0, i32 11
  store i8 0, ptr %firstp27, align 8, !tbaa !9
  br label %if.end29

if.else28:                                        ; preds = %if.else24
  call void @abort() #12
  unreachable

if.end29:                                         ; preds = %if.then26
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then22
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then18
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then12
  %29 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call34 = call i32 @input_sequence(ptr noundef %29, ptr noundef %pointer1, ptr noundef %length1, ptr noundef %pointer2a, ptr noundef %length2a, ptr noundef %pointer2b, ptr noundef %length2b, ptr noundef %skiplength, ptr noundef %30, i8 noundef zeroext 1)
  store i32 %call34, ptr %fulllength, align 4, !tbaa !13
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %31 = load i32, ptr %skiplength, align 4, !tbaa !13
  %cmp38 = icmp sgt i32 %31, 0
  br i1 %cmp38, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end37
  %32 = load ptr, ptr @stderr, align 8, !tbaa !5
  %33 = load i32, ptr %fulllength, align 4, !tbaa !13
  %34 = load i32, ptr %skiplength, align 4, !tbaa !13
  %add = add nsw i32 %33, %34
  %35 = load i32, ptr %skiplength, align 4, !tbaa !13
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.2, i32 noundef %add, i32 noundef 1000000, i32 noundef %35)
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.3)
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end37
  %37 = load i32, ptr %fulllength, align 4, !tbaa !13
  %38 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength43 = getelementptr inbounds %struct.Sequence_T, ptr %38, i32 0, i32 4
  store i32 %37, ptr %fulllength43, align 8, !tbaa !25
  %39 = load i32, ptr %skiplength, align 4, !tbaa !13
  %40 = load ptr, ptr %new, align 8, !tbaa !5
  %skiplength44 = getelementptr inbounds %struct.Sequence_T, ptr %40, i32 0, i32 8
  store i32 %39, ptr %skiplength44, align 8, !tbaa !28
  %41 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %41, i32 0, i32 5
  store i32 0, ptr %trimstart, align 4, !tbaa !23
  %42 = load i32, ptr %fulllength, align 4, !tbaa !13
  %43 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %43, i32 0, i32 6
  store i32 %42, ptr %trimend, align 8, !tbaa !26
  %44 = load i32, ptr %fulllength, align 4, !tbaa !13
  %add45 = add nsw i32 %44, 1
  %conv = sext i32 %add45 to i64
  %mul = mul i64 %conv, 1
  %call46 = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 1507)
  %45 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %45, i32 0, i32 3
  store ptr %call46, ptr %contents_alloc, align 8, !tbaa !30
  %46 = load ptr, ptr %new, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %46, i32 0, i32 2
  store ptr %call46, ptr %contents, align 8, !tbaa !22
  %47 = load i32, ptr %length1, align 4, !tbaa !13
  %cmp47 = icmp sgt i32 %47, 0
  br i1 %cmp47, label %if.then49, label %if.end82

if.then49:                                        ; preds = %if.end42
  %48 = load ptr, ptr %new, align 8, !tbaa !5
  %contents50 = getelementptr inbounds %struct.Sequence_T, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %contents50, align 8, !tbaa !22
  %50 = load ptr, ptr %pointer1, align 8, !tbaa !5
  %51 = load i32, ptr %length1, align 4, !tbaa !13
  %conv51 = sext i32 %51 to i64
  %call52 = call ptr @strncpy(ptr noundef %49, ptr noundef %50, i64 noundef %conv51) #9
  %52 = load ptr, ptr %new, align 8, !tbaa !5
  %contents53 = getelementptr inbounds %struct.Sequence_T, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %contents53, align 8, !tbaa !22
  %54 = load i32, ptr %length1, align 4, !tbaa !13
  %idxprom = sext i32 %54 to i64
  %arrayidx = getelementptr inbounds i8, ptr %53, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !16
  %55 = load i32, ptr %length2a, align 4, !tbaa !13
  %cmp54 = icmp sgt i32 %55, 0
  br i1 %cmp54, label %if.then56, label %if.end66

if.then56:                                        ; preds = %if.then49
  %56 = load ptr, ptr %new, align 8, !tbaa !5
  %contents57 = getelementptr inbounds %struct.Sequence_T, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %contents57, align 8, !tbaa !22
  %58 = load i32, ptr %length1, align 4, !tbaa !13
  %idxprom58 = sext i32 %58 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %57, i64 %idxprom58
  %59 = load ptr, ptr %pointer2a, align 8, !tbaa !5
  %60 = load i32, ptr %length2a, align 4, !tbaa !13
  %conv60 = sext i32 %60 to i64
  %call61 = call ptr @strncpy(ptr noundef %arrayidx59, ptr noundef %59, i64 noundef %conv60) #9
  %61 = load ptr, ptr %new, align 8, !tbaa !5
  %contents62 = getelementptr inbounds %struct.Sequence_T, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %contents62, align 8, !tbaa !22
  %63 = load i32, ptr %length1, align 4, !tbaa !13
  %64 = load i32, ptr %length2a, align 4, !tbaa !13
  %add63 = add nsw i32 %63, %64
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %62, i64 %idxprom64
  store i8 0, ptr %arrayidx65, align 1, !tbaa !16
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %if.then49
  %65 = load i32, ptr %length2b, align 4, !tbaa !13
  %cmp67 = icmp sgt i32 %65, 0
  br i1 %cmp67, label %if.then69, label %if.end81

if.then69:                                        ; preds = %if.end66
  %66 = load ptr, ptr %new, align 8, !tbaa !5
  %contents70 = getelementptr inbounds %struct.Sequence_T, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %contents70, align 8, !tbaa !22
  %68 = load i32, ptr %length1, align 4, !tbaa !13
  %69 = load i32, ptr %length2a, align 4, !tbaa !13
  %add71 = add nsw i32 %68, %69
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %67, i64 %idxprom72
  %70 = load ptr, ptr %pointer2b, align 8, !tbaa !5
  %71 = load i32, ptr %length2b, align 4, !tbaa !13
  %conv74 = sext i32 %71 to i64
  %call75 = call ptr @strncpy(ptr noundef %arrayidx73, ptr noundef %70, i64 noundef %conv74) #9
  %72 = load ptr, ptr %new, align 8, !tbaa !5
  %contents76 = getelementptr inbounds %struct.Sequence_T, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %contents76, align 8, !tbaa !22
  %74 = load i32, ptr %length1, align 4, !tbaa !13
  %75 = load i32, ptr %length2a, align 4, !tbaa !13
  %add77 = add nsw i32 %74, %75
  %76 = load i32, ptr %length2b, align 4, !tbaa !13
  %add78 = add nsw i32 %add77, %76
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %73, i64 %idxprom79
  store i8 0, ptr %arrayidx80, align 1, !tbaa !16
  br label %if.end81

if.end81:                                         ; preds = %if.then69, %if.end66
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end42
  %77 = load ptr, ptr %new, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %77, i32 0, i32 7
  store i32 0, ptr %subseq_offset, align 4, !tbaa !27
  %78 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %78, i32 0, i32 10
  store ptr null, ptr %quality_alloc, align 8, !tbaa !29
  %79 = load ptr, ptr %new, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %79, i32 0, i32 9
  store ptr null, ptr %quality, align 8, !tbaa !24
  %80 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %81 = load i32, ptr %80, align 4, !tbaa !13
  %cmp83 = icmp eq i32 %81, 43
  br i1 %cmp83, label %if.then85, label %if.end139

if.then85:                                        ; preds = %if.end82
  %82 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call86 = call zeroext i8 @skip_header(ptr noundef %82)
  %83 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call87 = call i32 @fgetc(ptr noundef %83)
  %84 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %call87, ptr %84, align 4, !tbaa !13
  %85 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %86 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call88 = call i32 @input_sequence(ptr noundef %85, ptr noundef %pointer1, ptr noundef %length1, ptr noundef %pointer2a, ptr noundef %length2a, ptr noundef %pointer2b, ptr noundef %length2b, ptr noundef %skiplength, ptr noundef %86, i8 noundef zeroext 0)
  store i32 %call88, ptr %quality_length, align 4, !tbaa !13
  %87 = load i32, ptr %quality_length, align 4, !tbaa !13
  %88 = load i32, ptr %fulllength, align 4, !tbaa !13
  %cmp89 = icmp ne i32 %87, %88
  br i1 %cmp89, label %if.then91, label %if.else93

if.then91:                                        ; preds = %if.then85
  %89 = load ptr, ptr @stderr, align 8, !tbaa !5
  %90 = load i32, ptr %quality_length, align 4, !tbaa !13
  %91 = load i32, ptr %fulllength, align 4, !tbaa !13
  %92 = load ptr, ptr %new, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %acc, align 8, !tbaa !14
  %call92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str.4, i32 noundef %90, i32 noundef %91, ptr noundef %93)
  call void @exit(i32 noundef 9) #12
  unreachable

if.else93:                                        ; preds = %if.then85
  %94 = load i32, ptr %fulllength, align 4, !tbaa !13
  %add94 = add nsw i32 %94, 1
  %conv95 = sext i32 %add94 to i64
  %mul96 = mul i64 %conv95, 1
  %call97 = call ptr @Mem_alloc(i64 noundef %mul96, ptr noundef @.str, i32 noundef 1545)
  %95 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc98 = getelementptr inbounds %struct.Sequence_T, ptr %95, i32 0, i32 10
  store ptr %call97, ptr %quality_alloc98, align 8, !tbaa !29
  %96 = load ptr, ptr %new, align 8, !tbaa !5
  %quality99 = getelementptr inbounds %struct.Sequence_T, ptr %96, i32 0, i32 9
  store ptr %call97, ptr %quality99, align 8, !tbaa !24
  %97 = load i32, ptr %length1, align 4, !tbaa !13
  %cmp100 = icmp sgt i32 %97, 0
  br i1 %cmp100, label %if.then102, label %if.end137

if.then102:                                       ; preds = %if.else93
  %98 = load ptr, ptr %new, align 8, !tbaa !5
  %quality103 = getelementptr inbounds %struct.Sequence_T, ptr %98, i32 0, i32 9
  %99 = load ptr, ptr %quality103, align 8, !tbaa !24
  %100 = load ptr, ptr %pointer1, align 8, !tbaa !5
  %101 = load i32, ptr %length1, align 4, !tbaa !13
  %conv104 = sext i32 %101 to i64
  %call105 = call ptr @strncpy(ptr noundef %99, ptr noundef %100, i64 noundef %conv104) #9
  %102 = load ptr, ptr %new, align 8, !tbaa !5
  %quality106 = getelementptr inbounds %struct.Sequence_T, ptr %102, i32 0, i32 9
  %103 = load ptr, ptr %quality106, align 8, !tbaa !24
  %104 = load i32, ptr %length1, align 4, !tbaa !13
  %idxprom107 = sext i32 %104 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %103, i64 %idxprom107
  store i8 0, ptr %arrayidx108, align 1, !tbaa !16
  %105 = load i32, ptr %length2a, align 4, !tbaa !13
  %cmp109 = icmp sgt i32 %105, 0
  br i1 %cmp109, label %if.then111, label %if.end121

if.then111:                                       ; preds = %if.then102
  %106 = load ptr, ptr %new, align 8, !tbaa !5
  %quality112 = getelementptr inbounds %struct.Sequence_T, ptr %106, i32 0, i32 9
  %107 = load ptr, ptr %quality112, align 8, !tbaa !24
  %108 = load i32, ptr %length1, align 4, !tbaa !13
  %idxprom113 = sext i32 %108 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %107, i64 %idxprom113
  %109 = load ptr, ptr %pointer2a, align 8, !tbaa !5
  %110 = load i32, ptr %length2a, align 4, !tbaa !13
  %conv115 = sext i32 %110 to i64
  %call116 = call ptr @strncpy(ptr noundef %arrayidx114, ptr noundef %109, i64 noundef %conv115) #9
  %111 = load ptr, ptr %new, align 8, !tbaa !5
  %quality117 = getelementptr inbounds %struct.Sequence_T, ptr %111, i32 0, i32 9
  %112 = load ptr, ptr %quality117, align 8, !tbaa !24
  %113 = load i32, ptr %length1, align 4, !tbaa !13
  %114 = load i32, ptr %length2a, align 4, !tbaa !13
  %add118 = add nsw i32 %113, %114
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds i8, ptr %112, i64 %idxprom119
  store i8 0, ptr %arrayidx120, align 1, !tbaa !16
  br label %if.end121

if.end121:                                        ; preds = %if.then111, %if.then102
  %115 = load i32, ptr %length2b, align 4, !tbaa !13
  %cmp122 = icmp sgt i32 %115, 0
  br i1 %cmp122, label %if.then124, label %if.end136

if.then124:                                       ; preds = %if.end121
  %116 = load ptr, ptr %new, align 8, !tbaa !5
  %quality125 = getelementptr inbounds %struct.Sequence_T, ptr %116, i32 0, i32 9
  %117 = load ptr, ptr %quality125, align 8, !tbaa !24
  %118 = load i32, ptr %length1, align 4, !tbaa !13
  %119 = load i32, ptr %length2a, align 4, !tbaa !13
  %add126 = add nsw i32 %118, %119
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds i8, ptr %117, i64 %idxprom127
  %120 = load ptr, ptr %pointer2b, align 8, !tbaa !5
  %121 = load i32, ptr %length2b, align 4, !tbaa !13
  %conv129 = sext i32 %121 to i64
  %call130 = call ptr @strncpy(ptr noundef %arrayidx128, ptr noundef %120, i64 noundef %conv129) #9
  %122 = load ptr, ptr %new, align 8, !tbaa !5
  %quality131 = getelementptr inbounds %struct.Sequence_T, ptr %122, i32 0, i32 9
  %123 = load ptr, ptr %quality131, align 8, !tbaa !24
  %124 = load i32, ptr %length1, align 4, !tbaa !13
  %125 = load i32, ptr %length2a, align 4, !tbaa !13
  %add132 = add nsw i32 %124, %125
  %126 = load i32, ptr %length2b, align 4, !tbaa !13
  %add133 = add nsw i32 %add132, %126
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds i8, ptr %123, i64 %idxprom134
  store i8 0, ptr %arrayidx135, align 1, !tbaa !16
  br label %if.end136

if.end136:                                        ; preds = %if.then124, %if.end121
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.else93
  br label %if.end138

if.end138:                                        ; preds = %if.end137
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end82
  %127 = load ptr, ptr %new, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %127, i32 0, i32 12
  %call140 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %128 = load ptr, ptr %new, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %128, i32 0, i32 13
  store i32 0, ptr %nrequests, align 8, !tbaa !12
  %129 = load ptr, ptr %new, align 8, !tbaa !5
  store ptr %129, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.then15, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %quality_length) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %length2b) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %length2a) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %length1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer2b) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer2a) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %skiplength) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %fulllength) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  %130 = load ptr, ptr %retval, align 8
  ret ptr %130
}

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @blank_header(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %call = call ptr @Mem_calloc(i64 noundef 10, i64 noundef 1, ptr noundef @.str, i32 noundef 621)
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  store ptr %call, ptr %acc, align 8, !tbaa !14
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc1 = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %acc1, align 8, !tbaa !14
  %call2 = call ptr @strcpy(ptr noundef %2, ptr noundef @.str.5) #9
  %call3 = call ptr @Mem_calloc(i64 noundef 1, i64 noundef 1, ptr noundef @.str, i32 noundef 623)
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 1
  store ptr %call3, ptr %restofheader, align 8, !tbaa !15
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader4 = getelementptr inbounds %struct.Sequence_T, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %restofheader4, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  store i8 0, ptr %arrayidx, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @input_header(ptr noundef %fp, ptr noundef %this) #0 {
entry:
  %retval = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #9
  %0 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call = call i32 @feof(ptr noundef %0) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call1 = call ptr @fgets(ptr noundef @Header, i32 noundef 512, ptr noundef %1)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = load i8, ptr @Header, align 16, !tbaa !16
  %conv = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv, 10
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end3
  store i8 0, ptr @Header, align 16, !tbaa !16
  br label %if.end25

if.else7:                                         ; preds = %if.end3
  %call8 = call ptr @rindex(ptr noundef @Header, i32 noundef 10) #11
  store ptr %call8, ptr %p, align 8, !tbaa !5
  %cmp9 = icmp ne ptr %call8, null
  br i1 %cmp9, label %if.then11, label %if.else17

if.then11:                                        ; preds = %if.else7
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 -1
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv12 = sext i8 %4 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then11
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  store i8 0, ptr %6, align 1, !tbaa !16
  br label %if.end24

if.else17:                                        ; preds = %if.else7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else17
  %7 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call18 = call ptr @fgets(ptr noundef @Discard, i32 noundef 8192, ptr noundef %7)
  %cmp19 = icmp ne ptr %call18, null
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call21 = call ptr @rindex(ptr noundef @Discard, i32 noundef 10) #11
  %cmp22 = icmp eq ptr %call21, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %land.end
  br label %if.end24

if.end24:                                         ; preds = %while.end, %if.end16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then6
  store ptr @Header, ptr %p, align 8, !tbaa !5
  br label %while.cond26

while.cond26:                                     ; preds = %while.body37, %if.end25
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %10 = load i8, ptr %9, align 1, !tbaa !16
  %conv27 = sext i8 %10 to i32
  %cmp28 = icmp ne i32 %conv27, 0
  br i1 %cmp28, label %land.rhs30, label %land.end36

land.rhs30:                                       ; preds = %while.cond26
  %call31 = call ptr @__ctype_b_loc() #10
  %11 = load ptr, ptr %call31, align 8, !tbaa !5
  %12 = load ptr, ptr %p, align 8, !tbaa !5
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %conv32 = sext i8 %13 to i32
  %idxprom = sext i32 %conv32 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %11, i64 %idxprom
  %14 = load i16, ptr %arrayidx33, align 2, !tbaa !17
  %conv34 = zext i16 %14 to i32
  %and = and i32 %conv34, 8192
  %tobool35 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool35, true
  br label %land.end36

land.end36:                                       ; preds = %land.rhs30, %while.cond26
  %15 = phi i1 [ false, %while.cond26 ], [ %lnot, %land.rhs30 ]
  br i1 %15, label %while.body37, label %while.end39

while.body37:                                     ; preds = %land.end36
  %16 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !5
  br label %while.cond26, !llvm.loop !43

while.end39:                                      ; preds = %land.end36
  %17 = load ptr, ptr %p, align 8, !tbaa !5
  %18 = load i8, ptr %17, align 1, !tbaa !16
  %conv40 = sext i8 %18 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.else50

if.then43:                                        ; preds = %while.end39
  %19 = load ptr, ptr %p, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @Header to i64)
  %div = udiv i64 %sub.ptr.sub, 1
  store i64 %div, ptr %length, align 8, !tbaa !44
  %20 = load i64, ptr %length, align 8, !tbaa !44
  %add = add i64 %20, 1
  %call44 = call ptr @Mem_calloc(i64 noundef %add, i64 noundef 1, ptr noundef @.str, i32 noundef 660)
  %21 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %21, i32 0, i32 0
  store ptr %call44, ptr %acc, align 8, !tbaa !14
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc45 = getelementptr inbounds %struct.Sequence_T, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %acc45, align 8, !tbaa !14
  %call46 = call ptr @strcpy(ptr noundef %23, ptr noundef @Header) #9
  %call47 = call ptr @Mem_calloc(i64 noundef 1, i64 noundef 1, ptr noundef @.str, i32 noundef 662)
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %24, i32 0, i32 1
  store ptr %call47, ptr %restofheader, align 8, !tbaa !15
  %25 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader48 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %restofheader48, align 8, !tbaa !15
  %arrayidx49 = getelementptr inbounds i8, ptr %26, i64 0
  store i8 0, ptr %arrayidx49, align 1, !tbaa !16
  br label %if.end66

if.else50:                                        ; preds = %while.end39
  %27 = load ptr, ptr %p, align 8, !tbaa !5
  store i8 0, ptr %27, align 1, !tbaa !16
  %28 = load ptr, ptr %p, align 8, !tbaa !5
  %sub.ptr.lhs.cast51 = ptrtoint ptr %28 to i64
  %sub.ptr.sub52 = sub i64 %sub.ptr.lhs.cast51, ptrtoint (ptr @Header to i64)
  %div53 = udiv i64 %sub.ptr.sub52, 1
  store i64 %div53, ptr %length, align 8, !tbaa !44
  %29 = load i64, ptr %length, align 8, !tbaa !44
  %add54 = add i64 %29, 1
  %call55 = call ptr @Mem_calloc(i64 noundef %add54, i64 noundef 1, ptr noundef @.str, i32 noundef 667)
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc56 = getelementptr inbounds %struct.Sequence_T, ptr %30, i32 0, i32 0
  store ptr %call55, ptr %acc56, align 8, !tbaa !14
  %31 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc57 = getelementptr inbounds %struct.Sequence_T, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %acc57, align 8, !tbaa !14
  %call58 = call ptr @strcpy(ptr noundef %32, ptr noundef @Header) #9
  %33 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr59 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8, !tbaa !5
  %34 = load ptr, ptr %p, align 8, !tbaa !5
  %call60 = call i64 @strlen(ptr noundef %34) #11
  %add61 = add i64 %call60, 1
  %call62 = call ptr @Mem_calloc(i64 noundef %add61, i64 noundef 1, ptr noundef @.str, i32 noundef 670)
  %35 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader63 = getelementptr inbounds %struct.Sequence_T, ptr %35, i32 0, i32 1
  store ptr %call62, ptr %restofheader63, align 8, !tbaa !15
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader64 = getelementptr inbounds %struct.Sequence_T, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %restofheader64, align 8, !tbaa !15
  %38 = load ptr, ptr %p, align 8, !tbaa !5
  %call65 = call ptr @strcpy(ptr noundef %37, ptr noundef %38) #9
  br label %if.end66

if.end66:                                         ; preds = %if.else50, %if.then43
  %39 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc67 = getelementptr inbounds %struct.Sequence_T, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %acc67, align 8, !tbaa !14
  store ptr %40, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  %41 = load ptr, ptr %retval, align 8
  ret ptr %41
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind uwtable
define internal i32 @input_sequence(ptr noundef %nextchar, ptr noundef %pointer1, ptr noundef %length1, ptr noundef %pointer2a, ptr noundef %length2a, ptr noundef %pointer2b, ptr noundef %length2b, ptr noundef %skiplength, ptr noundef %fp, i8 noundef zeroext %possible_fasta_header_p) #0 {
entry:
  %nextchar.addr = alloca ptr, align 8
  %pointer1.addr = alloca ptr, align 8
  %length1.addr = alloca ptr, align 8
  %pointer2a.addr = alloca ptr, align 8
  %length2a.addr = alloca ptr, align 8
  %pointer2b.addr = alloca ptr, align 8
  %length2b.addr = alloca ptr, align 8
  %skiplength.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %possible_fasta_header_p.addr = alloca i8, align 1
  %eolnp = alloca i8, align 1
  store ptr %nextchar, ptr %nextchar.addr, align 8, !tbaa !5
  store ptr %pointer1, ptr %pointer1.addr, align 8, !tbaa !5
  store ptr %length1, ptr %length1.addr, align 8, !tbaa !5
  store ptr %pointer2a, ptr %pointer2a.addr, align 8, !tbaa !5
  store ptr %length2a, ptr %length2a.addr, align 8, !tbaa !5
  store ptr %pointer2b, ptr %pointer2b.addr, align 8, !tbaa !5
  store ptr %length2b, ptr %length2b.addr, align 8, !tbaa !5
  store ptr %skiplength, ptr %skiplength.addr, align 8, !tbaa !5
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store i8 %possible_fasta_header_p, ptr %possible_fasta_header_p.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %eolnp) #9
  store i8 1, ptr %eolnp, align 1, !tbaa !16
  %0 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load ptr, ptr %pointer1.addr, align 8, !tbaa !5
  store ptr %arrayidx, ptr %1, align 8, !tbaa !5
  %2 = load ptr, ptr %pointer2a.addr, align 8, !tbaa !5
  store ptr null, ptr %2, align 8, !tbaa !5
  %3 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  store i32 0, ptr %3, align 4, !tbaa !13
  %4 = load ptr, ptr %pointer2b.addr, align 8, !tbaa !5
  store ptr null, ptr %4, align 8, !tbaa !5
  %5 = load ptr, ptr %length2b.addr, align 8, !tbaa !5
  store i32 0, ptr %5, align 4, !tbaa !13
  %6 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %8 = load i8, ptr %possible_fasta_header_p.addr, align 1, !tbaa !16
  %call = call i32 @read_first_half(ptr noundef %6, ptr noundef %eolnp, ptr noundef %7, i8 noundef zeroext %8)
  %9 = load ptr, ptr %length1.addr, align 8, !tbaa !5
  store i32 %call, ptr %9, align 4, !tbaa !13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %pointer1.addr, align 8, !tbaa !5
  store ptr null, ptr %10, align 8, !tbaa !5
  %11 = load ptr, ptr %skiplength.addr, align 8, !tbaa !5
  store i32 0, ptr %11, align 4, !tbaa !13
  br label %if.end5

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %length1.addr, align 8, !tbaa !5
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %cmp1 = icmp slt i32 %13, 500000
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %14 = load ptr, ptr %skiplength.addr, align 8, !tbaa !5
  store i32 0, ptr %14, align 4, !tbaa !13
  br label %if.end

if.else3:                                         ; preds = %if.else
  %15 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %pointer2a.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %pointer2b.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %length2b.addr, align 8, !tbaa !5
  %20 = load i8, ptr %eolnp, align 1, !tbaa !16
  %21 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call4 = call i32 @read_second_half(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, i8 noundef zeroext %20, ptr noundef %21)
  %22 = load ptr, ptr %skiplength.addr, align 8, !tbaa !5
  store i32 %call4, ptr %22, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %23 = load ptr, ptr %length1.addr, align 8, !tbaa !5
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %25 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !13
  %add = add nsw i32 %24, %26
  %27 = load ptr, ptr %length2b.addr, align 8, !tbaa !5
  %28 = load i32, ptr %27, align 4, !tbaa !13
  %add6 = add nsw i32 %add, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr %eolnp) #9
  ret i32 %add6
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @skip_header(ptr noundef %fp) #0 {
entry:
  %retval = alloca i8, align 1
  %fp.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call = call i32 @feof(ptr noundef %0) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call1 = call ptr @fgets(ptr noundef @Header, i32 noundef 512, ptr noundef %1)
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i8 0, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @rindex(ptr noundef @Header, i32 noundef 10) #11
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %2 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call7 = call ptr @fgets(ptr noundef @Discard, i32 noundef 8192, ptr noundef %2)
  %cmp8 = icmp ne ptr %call7, null
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call9 = call ptr @rindex(ptr noundef @Discard, i32 noundef 10) #11
  %cmp10 = icmp eq ptr %call9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %land.end
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.end3
  store i8 1, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end11, %if.then2, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_read_multifile(ptr noundef %nextchar, ptr noundef %input, ptr noundef %read_files_command, ptr noundef %files, ptr noundef %nfiles) #0 {
entry:
  %retval = alloca ptr, align 8
  %nextchar.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %read_files_command.addr = alloca ptr, align 8
  %files.addr = alloca ptr, align 8
  %nfiles.addr = alloca ptr, align 8
  %queryseq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nextchar, ptr %nextchar.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store ptr %read_files_command, ptr %read_files_command.addr, align 8, !tbaa !5
  store ptr %files, ptr %files.addr, align 8, !tbaa !5
  store ptr %nfiles, ptr %nfiles.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryseq) #9
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %cmp1 = icmp eq i32 %3, -1
  br i1 %cmp1, label %if.then, label %if.end23

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %4 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %cmp2 = icmp ne ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %read_files_command.addr, align 8, !tbaa !5
  %cmp4 = icmp ne ptr %6, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %call = call i32 @pclose(ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %if.then3
  %9 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %call6 = call i32 @fclose(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr null, ptr %11, align 8, !tbaa !5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %12 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %14, align 4, !tbaa !13
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else10:                                        ; preds = %if.end7
  br label %while.cond11

while.cond11:                                     ; preds = %while.body15, %if.else10
  %15 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %cmp12 = icmp sgt i32 %16, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond11
  %17 = load ptr, ptr %read_files_command.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call13 = call ptr @Fopen_read_text(ptr noundef %17, ptr noundef %20)
  %21 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr %call13, ptr %21, align 8, !tbaa !5
  %cmp14 = icmp eq ptr %call13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond11
  %22 = phi i1 [ false, %while.cond11 ], [ %cmp14, %land.rhs ]
  br i1 %22, label %while.body15, label %while.end

while.body15:                                     ; preds = %land.end
  %23 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds ptr, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %23, align 8, !tbaa !5
  %25 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !13
  %dec = add nsw i32 %26, -1
  store i32 %dec, ptr %25, align 4, !tbaa !13
  br label %while.cond11, !llvm.loop !46

while.end:                                        ; preds = %land.end
  %27 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %cmp16 = icmp eq ptr %28, null
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %while.end
  %29 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %29, align 4, !tbaa !13
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else18:                                        ; preds = %while.end
  %30 = load ptr, ptr %files.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %incdec.ptr19 = getelementptr inbounds ptr, ptr %31, i32 1
  store ptr %incdec.ptr19, ptr %30, align 8, !tbaa !5
  %32 = load ptr, ptr %nfiles.addr, align 8, !tbaa !5
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %dec20 = add nsw i32 %33, -1
  store i32 %dec20, ptr %32, align 4, !tbaa !13
  %34 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 0, ptr %34, align 4, !tbaa !13
  br label %if.end21

if.end21:                                         ; preds = %if.else18
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %lor.lhs.false
  %35 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %36 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %call24 = call ptr @Sequence_read(ptr noundef %35, ptr noundef %37)
  store ptr %call24, ptr %queryseq, align 8, !tbaa !5
  %cmp25 = icmp ne ptr %call24, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  %38 = load ptr, ptr %queryseq, align 8, !tbaa !5
  store ptr %38, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  br label %while.cond

cleanup:                                          ; preds = %if.then26, %if.then17, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryseq) #9
  %39 = load ptr, ptr %retval, align 8
  ret ptr %39
}

declare i32 @pclose(ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

declare ptr @Fopen_read_text(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_read_unlimited(ptr noundef %nextchar, ptr noundef %input) #0 {
entry:
  %retval = alloca ptr, align 8
  %nextchar.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %intlist = alloca ptr, align 8
  %p = alloca ptr, align 8
  %length = alloca i32, align 4
  %startpos = alloca i32, align 4
  %maxseqlen = alloca i32, align 4
  %eolnp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nextchar, ptr %nextchar.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %intlist) #9
  store ptr null, ptr %intlist, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %startpos) #9
  store i32 1, ptr %startpos, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxseqlen) #9
  store i32 1000000, ptr %maxseqlen, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %eolnp) #9
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call = call i32 @feof(ptr noundef %0) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %1, align 4, !tbaa !13
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call1 = call ptr @Mem_alloc(i64 noundef 128, ptr noundef @.str, i32 noundef 1708)
  store ptr %call1, ptr %new, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  %2 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.else9

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call3 = call i32 @Sequence_input_init(ptr noundef %4)
  %5 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %call3, ptr %5, align 4, !tbaa !13
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then2
  %6 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %6, align 4, !tbaa !13
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.then2
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %new, align 8, !tbaa !5
  %call7 = call ptr @input_header(ptr noundef %7, ptr noundef %8)
  br label %if.end8

if.end8:                                          ; preds = %if.else6
  br label %if.end26

if.else9:                                         ; preds = %if.end
  %9 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %cmp10 = icmp ne i32 %10, 62
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  %11 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp = getelementptr inbounds %struct.Sequence_T, ptr %11, i32 0, i32 11
  store i8 1, ptr %firstp, align 8, !tbaa !9
  %12 = load ptr, ptr %new, align 8, !tbaa !5
  call void @blank_header(ptr noundef %12)
  %13 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %conv = trunc i32 %14 to i8
  %15 = load i32, ptr %startpos, align 4, !tbaa !13
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %startpos, align 4, !tbaa !13
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [1000002 x i8], ptr @Sequence, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !16
  %16 = load i32, ptr %maxseqlen, align 4, !tbaa !13
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %maxseqlen, align 4, !tbaa !13
  br label %if.end25

if.else12:                                        ; preds = %if.else9
  %17 = load ptr, ptr %new, align 8, !tbaa !5
  %call13 = call ptr @input_header_unlimited(ptr noundef %17)
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else12
  %18 = load ptr, ptr %new, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %18, ptr noundef @.str, i32 noundef 1729)
  store ptr null, ptr %new, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.else12
  %19 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %cmp18 = icmp eq i32 %20, 62
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %21 = load ptr, ptr %new, align 8, !tbaa !5
  %firstp21 = getelementptr inbounds %struct.Sequence_T, ptr %21, i32 0, i32 11
  store i8 1, ptr %firstp21, align 8, !tbaa !9
  br label %if.end23

if.else22:                                        ; preds = %if.else17
  call void @abort() #12
  unreachable

if.end23:                                         ; preds = %if.then20
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end8
  store i8 1, ptr %eolnp, align 1, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %if.end67, %if.end26
  %22 = load i32, ptr %startpos, align 4, !tbaa !13
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [1000002 x i8], ptr @Sequence, i64 0, i64 %idxprom27
  %23 = load i32, ptr %maxseqlen, align 4, !tbaa !13
  %24 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call29 = call ptr @fgets(ptr noundef %arrayidx28, i32 noundef %23, ptr noundef %24)
  %cmp30 = icmp ne ptr %call29, null
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load i8, ptr %eolnp, align 1, !tbaa !16
  %conv32 = zext i8 %25 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %26 = load i8, ptr getelementptr inbounds ([1000002 x i8], ptr @Sequence, i64 0, i64 1), align 1, !tbaa !16
  %conv35 = sext i8 %26 to i32
  %cmp36 = icmp ne i32 %conv35, 62
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %27 = phi i1 [ true, %land.rhs ], [ %cmp36, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %27, %lor.end ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store ptr getelementptr inbounds ([1000002 x i8], ptr @Sequence, i64 0, i64 1), ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %29 = load ptr, ptr %p, align 8, !tbaa !5
  %30 = load i8, ptr %29, align 1, !tbaa !16
  %conv38 = sext i8 %30 to i32
  %cmp39 = icmp ne i32 %conv38, 13
  br i1 %cmp39, label %land.lhs.true, label %land.end48

land.lhs.true:                                    ; preds = %for.cond
  %31 = load ptr, ptr %p, align 8, !tbaa !5
  %32 = load i8, ptr %31, align 1, !tbaa !16
  %conv41 = sext i8 %32 to i32
  %cmp42 = icmp ne i32 %conv41, 10
  br i1 %cmp42, label %land.rhs44, label %land.end48

land.rhs44:                                       ; preds = %land.lhs.true
  %33 = load ptr, ptr %p, align 8, !tbaa !5
  %34 = load i8, ptr %33, align 1, !tbaa !16
  %conv45 = sext i8 %34 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br label %land.end48

land.end48:                                       ; preds = %land.rhs44, %land.lhs.true, %for.cond
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp46, %land.rhs44 ]
  br i1 %35, label %for.body, label %for.end

for.body:                                         ; preds = %land.end48
  %call49 = call ptr @__ctype_b_loc() #10
  %36 = load ptr, ptr %call49, align 8, !tbaa !5
  %37 = load ptr, ptr %p, align 8, !tbaa !5
  %38 = load i8, ptr %37, align 1, !tbaa !16
  %conv50 = sext i8 %38 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %arrayidx52 = getelementptr inbounds i16, ptr %36, i64 %idxprom51
  %39 = load i16, ptr %arrayidx52, align 2, !tbaa !17
  %conv53 = zext i16 %39 to i32
  %and = and i32 %conv53, 2
  %tobool54 = icmp ne i32 %and, 0
  br i1 %tobool54, label %if.end58, label %if.then55

if.then55:                                        ; preds = %for.body
  %40 = load ptr, ptr %intlist, align 8, !tbaa !5
  %41 = load ptr, ptr %p, align 8, !tbaa !5
  %42 = load i8, ptr %41, align 1, !tbaa !16
  %conv56 = sext i8 %42 to i32
  %call57 = call ptr @Intlist_push(ptr noundef %40, i32 noundef %conv56)
  store ptr %call57, ptr %intlist, align 8, !tbaa !5
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end58
  %43 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %land.end48
  %44 = load ptr, ptr %p, align 8, !tbaa !5
  %45 = load i8, ptr %44, align 1, !tbaa !16
  %conv59 = sext i8 %45 to i32
  %cmp60 = icmp eq i32 %conv59, 13
  br i1 %cmp60, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %46 = load ptr, ptr %p, align 8, !tbaa !5
  %47 = load i8, ptr %46, align 1, !tbaa !16
  %conv62 = sext i8 %47 to i32
  %cmp63 = icmp eq i32 %conv62, 10
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %lor.lhs.false, %for.end
  store i8 1, ptr %eolnp, align 1, !tbaa !16
  br label %if.end67

if.else66:                                        ; preds = %lor.lhs.false
  store i8 0, ptr %eolnp, align 1, !tbaa !16
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  store i32 1, ptr %startpos, align 4, !tbaa !13
  store i32 1000000, ptr %maxseqlen, align 4, !tbaa !13
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %land.end
  %48 = load ptr, ptr %intlist, align 8, !tbaa !5
  %call68 = call ptr @Intlist_reverse(ptr noundef %48)
  store ptr %call68, ptr %intlist, align 8, !tbaa !5
  %49 = load ptr, ptr %intlist, align 8, !tbaa !5
  %call69 = call ptr @Intlist_to_char_array_in(ptr noundef %length, ptr noundef %49)
  %50 = load ptr, ptr %new, align 8, !tbaa !5
  %contents_alloc = getelementptr inbounds %struct.Sequence_T, ptr %50, i32 0, i32 3
  store ptr %call69, ptr %contents_alloc, align 8, !tbaa !30
  %51 = load ptr, ptr %new, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %51, i32 0, i32 2
  store ptr %call69, ptr %contents, align 8, !tbaa !22
  call void @Intlist_free(ptr noundef %intlist)
  %52 = load i32, ptr %length, align 4, !tbaa !13
  %cmp70 = icmp eq i32 %52, 0
  br i1 %cmp70, label %if.then72, label %if.else73

if.then72:                                        ; preds = %while.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else73:                                        ; preds = %while.end
  %53 = load i32, ptr %length, align 4, !tbaa !13
  %54 = load ptr, ptr %new, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %54, i32 0, i32 6
  store i32 %53, ptr %trimend, align 8, !tbaa !26
  %55 = load ptr, ptr %new, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %55, i32 0, i32 4
  store i32 %53, ptr %fulllength, align 8, !tbaa !25
  %56 = load ptr, ptr %new, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %56, i32 0, i32 5
  store i32 0, ptr %trimstart, align 4, !tbaa !23
  %57 = load ptr, ptr %new, align 8, !tbaa !5
  %quality_alloc = getelementptr inbounds %struct.Sequence_T, ptr %57, i32 0, i32 10
  store ptr null, ptr %quality_alloc, align 8, !tbaa !29
  %58 = load ptr, ptr %new, align 8, !tbaa !5
  %quality = getelementptr inbounds %struct.Sequence_T, ptr %58, i32 0, i32 9
  store ptr null, ptr %quality, align 8, !tbaa !24
  %59 = load ptr, ptr %new, align 8, !tbaa !5
  %subseq_offset = getelementptr inbounds %struct.Sequence_T, ptr %59, i32 0, i32 7
  store i32 0, ptr %subseq_offset, align 4, !tbaa !27
  %60 = load ptr, ptr %new, align 8, !tbaa !5
  %skiplength = getelementptr inbounds %struct.Sequence_T, ptr %60, i32 0, i32 8
  store i32 0, ptr %skiplength, align 8, !tbaa !28
  %61 = load ptr, ptr %new, align 8, !tbaa !5
  %mutex = getelementptr inbounds %struct.Sequence_T, ptr %61, i32 0, i32 12
  %call74 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %62 = load ptr, ptr %new, align 8, !tbaa !5
  %nrequests = getelementptr inbounds %struct.Sequence_T, ptr %62, i32 0, i32 13
  store i32 0, ptr %nrequests, align 8, !tbaa !12
  %63 = load ptr, ptr %new, align 8, !tbaa !5
  store ptr %63, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else73, %if.then72, %if.then16, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %eolnp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxseqlen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %startpos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %intlist) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  %64 = load ptr, ptr %retval, align 8
  ret ptr %64
}

; Function Attrs: nounwind uwtable
define internal ptr @input_header_unlimited(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  %p = alloca ptr, align 8
  %length = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #9
  store ptr getelementptr inbounds ([1000002 x i8], ptr @Sequence, i64 0, i64 2), ptr %start, align 8, !tbaa !5
  store ptr getelementptr inbounds ([1000002 x i8], ptr @Sequence, i64 0, i64 2), ptr %p, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %p, align 8, !tbaa !5
  %1 = load i8, ptr %0, align 1, !tbaa !16
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call = call ptr @__ctype_b_loc() #10
  %2 = load ptr, ptr %call, align 8, !tbaa !5
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %4 = load i8, ptr %3, align 1, !tbaa !16
  %conv2 = sext i8 %4 to i32
  %idxprom = sext i32 %conv2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2, !tbaa !17
  %conv3 = zext i16 %5 to i32
  %and = and i32 %conv3, 8192
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !49

while.end:                                        ; preds = %land.end
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %9 = load i8, ptr %8, align 1, !tbaa !16
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %10 = load ptr, ptr %p, align 8, !tbaa !5
  %11 = load ptr, ptr %start, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = udiv i64 %sub.ptr.sub, 1
  store i64 %div, ptr %length, align 8, !tbaa !44
  %12 = load i64, ptr %length, align 8, !tbaa !44
  %add = add i64 %12, 1
  %call7 = call ptr @Mem_calloc(i64 noundef %add, i64 noundef 1, ptr noundef @.str, i32 noundef 690)
  %13 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %13, i32 0, i32 0
  store ptr %call7, ptr %acc, align 8, !tbaa !14
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc8 = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %acc8, align 8, !tbaa !14
  %16 = load ptr, ptr %start, align 8, !tbaa !5
  %call9 = call ptr @strcpy(ptr noundef %15, ptr noundef %16) #9
  %call10 = call ptr @Mem_calloc(i64 noundef 1, i64 noundef 1, ptr noundef @.str, i32 noundef 692)
  %17 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %17, i32 0, i32 1
  store ptr %call10, ptr %restofheader, align 8, !tbaa !15
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader11 = getelementptr inbounds %struct.Sequence_T, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %restofheader11, align 8, !tbaa !15
  %arrayidx12 = getelementptr inbounds i8, ptr %19, i64 0
  store i8 0, ptr %arrayidx12, align 1, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %while.end
  %20 = load ptr, ptr %p, align 8, !tbaa !5
  store i8 0, ptr %20, align 1, !tbaa !16
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %22 = load ptr, ptr %start, align 8, !tbaa !5
  %sub.ptr.lhs.cast13 = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast14 = ptrtoint ptr %22 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %div16 = udiv i64 %sub.ptr.sub15, 1
  store i64 %div16, ptr %length, align 8, !tbaa !44
  %23 = load i64, ptr %length, align 8, !tbaa !44
  %add17 = add i64 %23, 1
  %call18 = call ptr @Mem_calloc(i64 noundef %add17, i64 noundef 1, ptr noundef @.str, i32 noundef 697)
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc19 = getelementptr inbounds %struct.Sequence_T, ptr %24, i32 0, i32 0
  store ptr %call18, ptr %acc19, align 8, !tbaa !14
  %25 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc20 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %acc20, align 8, !tbaa !14
  %27 = load ptr, ptr %start, align 8, !tbaa !5
  %call21 = call ptr @strcpy(ptr noundef %26, ptr noundef %27) #9
  %28 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8, !tbaa !5
  %29 = load ptr, ptr %p, align 8, !tbaa !5
  %call23 = call i64 @strlen(ptr noundef %29) #11
  %add24 = add i64 %call23, 1
  %call25 = call ptr @Mem_calloc(i64 noundef %add24, i64 noundef 1, ptr noundef @.str, i32 noundef 700)
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader26 = getelementptr inbounds %struct.Sequence_T, ptr %30, i32 0, i32 1
  store ptr %call25, ptr %restofheader26, align 8, !tbaa !15
  %31 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader27 = getelementptr inbounds %struct.Sequence_T, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %restofheader27, align 8, !tbaa !15
  %33 = load ptr, ptr %p, align 8, !tbaa !5
  %call28 = call ptr @strcpy(ptr noundef %32, ptr noundef %33) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %34 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc29 = getelementptr inbounds %struct.Sequence_T, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %acc29, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #9
  ret ptr %35
}

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Intlist_push(ptr noundef %list, i32 noundef %x) #7 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store i32 %x, ptr %x.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.16, i32 noundef 51)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load i32, ptr %x.addr, align 4, !tbaa !13
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 0
  store i32 %0, ptr %first, align 8, !tbaa !50
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %3, i32 0, i32 1
  store ptr %2, ptr %rest, align 8, !tbaa !52
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Intlist_reverse(ptr noundef %list) #7 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #9
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !52
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.Intlist_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !52
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #9
  ret ptr %7
}

declare ptr @Intlist_to_char_array_in(ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Intlist_free(ptr noundef %list) #7 {
entry:
  %list.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %prev, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %prev, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rest, align 8, !tbaa !52
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %3, ptr %4, align 8, !tbaa !5
  %5 = load ptr, ptr %prev, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %5, ptr noundef @.str.16, i32 noundef 103)
  store ptr null, ptr %prev, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_print_digest(ptr noundef %fp, ptr noundef %this) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %digest = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %digest) #9
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %contents, align 8, !tbaa !22
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %fulllength, align 8, !tbaa !25
  %call = call ptr @MD5_compute(ptr noundef %1, i32 noundef %3)
  store ptr %call, ptr %digest, align 8, !tbaa !5
  %4 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %digest, align 8, !tbaa !5
  call void @MD5_print(ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %digest, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %6, ptr noundef @.str, i32 noundef 1805)
  store ptr null, ptr %digest, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %digest) #9
  ret void
}

declare ptr @MD5_compute(ptr noundef, i32 noundef) #3

declare void @MD5_print(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_print_header(ptr noundef %fp, ptr noundef %this, i8 noundef zeroext %checksump) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %checksump.addr = alloca i8, align 1
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i8 %checksump, ptr %checksump.addr, align 1, !tbaa !16
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %acc, align 8, !tbaa !14
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %2, ptr noundef @.str.5)
  br label %if.end15

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %restofheader, align 8, !tbaa !15
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader2 = getelementptr inbounds %struct.Sequence_T, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %restofheader2, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.else7

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  %8 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc6 = getelementptr inbounds %struct.Sequence_T, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %acc6, align 8, !tbaa !14
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %8, ptr noundef @.str.6, ptr noundef %10)
  br label %if.end

if.else7:                                         ; preds = %lor.lhs.false
  %11 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc8 = getelementptr inbounds %struct.Sequence_T, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %acc8, align 8, !tbaa !14
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader9 = getelementptr inbounds %struct.Sequence_T, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %restofheader9, align 8, !tbaa !15
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %11, ptr noundef @.str.7, ptr noundef %13, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then5
  %16 = load i8, ptr %checksump.addr, align 1, !tbaa !16
  %conv10 = zext i8 %16 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %17 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %17, ptr noundef @.str.8)
  %18 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %this.addr, align 8, !tbaa !5
  call void @Sequence_print_digest(ptr noundef %18, ptr noundef %19)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %20 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %20, ptr noundef @.str.9)
  ret void
}

declare void @Filestring_put(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_stdout_header(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %acc, align 8, !tbaa !14
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end12

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %restofheader, align 8, !tbaa !15
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader2 = getelementptr inbounds %struct.Sequence_T, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %restofheader2, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.else8

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  %7 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc6 = getelementptr inbounds %struct.Sequence_T, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %acc6, align 8, !tbaa !14
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %8)
  br label %if.end

if.else8:                                         ; preds = %lor.lhs.false
  %9 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %acc9 = getelementptr inbounds %struct.Sequence_T, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %acc9, align 8, !tbaa !14
  %11 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %restofheader10 = getelementptr inbounds %struct.Sequence_T, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %restofheader10, align 8, !tbaa !15
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %10, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_print(ptr noundef %fp, ptr noundef %this, i8 noundef zeroext %uppercasep, i32 noundef %wraplength, i8 noundef zeroext %trimmedp) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %uppercasep.addr = alloca i8, align 1
  %wraplength.addr = alloca i32, align 4
  %trimmedp.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %uppercaseCode = alloca [128 x i8], align 16
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i8 %uppercasep, ptr %uppercasep.addr, align 1, !tbaa !16
  store i32 %wraplength, ptr %wraplength.addr, align 4, !tbaa !13
  store i8 %trimmedp, ptr %trimmedp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %uppercaseCode, ptr align 16 @__const.Sequence_print.uppercaseCode, i64 128, i1 false)
  %0 = load i8, ptr %trimmedp.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %trimstart, align 4, !tbaa !23
  store i32 %2, ptr %start, align 4, !tbaa !13
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %trimend, align 8, !tbaa !26
  store i32 %4, ptr %end, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %start, align 4, !tbaa !13
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %fulllength, align 8, !tbaa !25
  store i32 %6, ptr %end, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8, ptr %uppercasep.addr, align 1, !tbaa !16
  %conv2 = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 1
  br i1 %cmp3, label %if.then5, label %if.else16

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %8, ptr %pos, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %9 = load i32, ptr %pos, align 4, !tbaa !13
  %10 = load i32, ptr %end, align 4, !tbaa !13
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %contents, align 8, !tbaa !22
  %13 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv8 = sext i8 %14 to i32
  %idxprom9 = sext i32 %conv8 to i64
  %arrayidx10 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1, !tbaa !16
  %16 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext %15, ptr noundef %16)
  %17 = load i32, ptr %i, align 4, !tbaa !13
  %add = add nsw i32 %17, 1
  %18 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem = srem i32 %add, %18
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  %19 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext 10, ptr noundef %19)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %20 = load i32, ptr %pos, align 4, !tbaa !13
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !13
  %21 = load i32, ptr %i, align 4, !tbaa !13
  %inc15 = add nsw i32 %21, 1
  store i32 %inc15, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  br label %if.end34

if.else16:                                        ; preds = %if.end
  %22 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %22, ptr %pos, align 4, !tbaa !13
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %if.else16
  %23 = load i32, ptr %pos, align 4, !tbaa !13
  %24 = load i32, ptr %end, align 4, !tbaa !13
  %cmp18 = icmp slt i32 %23, %24
  br i1 %cmp18, label %for.body20, label %for.end33

for.body20:                                       ; preds = %for.cond17
  %25 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents21 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %contents21, align 8, !tbaa !22
  %27 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %26, i64 %idxprom22
  %28 = load i8, ptr %arrayidx23, align 1, !tbaa !16
  %29 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext %28, ptr noundef %29)
  %30 = load i32, ptr %i, align 4, !tbaa !13
  %add24 = add nsw i32 %30, 1
  %31 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem25 = srem i32 %add24, %31
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body20
  %32 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext 10, ptr noundef %32)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.body20
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %33 = load i32, ptr %pos, align 4, !tbaa !13
  %inc31 = add nsw i32 %33, 1
  store i32 %inc31, ptr %pos, align 4, !tbaa !13
  %34 = load i32, ptr %i, align 4, !tbaa !13
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !13
  br label %for.cond17, !llvm.loop !56

for.end33:                                        ; preds = %for.cond17
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %for.end
  %35 = load i32, ptr %i, align 4, !tbaa !13
  %36 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem35 = srem i32 %35, %36
  %cmp36 = icmp ne i32 %rem35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  %37 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext 10, ptr noundef %37)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34
  call void @llvm.lifetime.end.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @Filestring_putc(i8 noundef signext, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_stdout(ptr noundef %this, i8 noundef zeroext %uppercasep, i32 noundef %wraplength, i8 noundef zeroext %trimmedp) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %uppercasep.addr = alloca i8, align 1
  %wraplength.addr = alloca i32, align 4
  %trimmedp.addr = alloca i8, align 1
  %fp = alloca ptr, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %uppercaseCode = alloca [128 x i8], align 16
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i8 %uppercasep, ptr %uppercasep.addr, align 1, !tbaa !16
  store i32 %wraplength, ptr %wraplength.addr, align 4, !tbaa !13
  store i8 %trimmedp, ptr %trimmedp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %uppercaseCode, ptr align 16 @__const.Sequence_stdout.uppercaseCode, i64 128, i1 false)
  %call = call ptr (...) @Filestring_new()
  store ptr %call, ptr %fp, align 8, !tbaa !5
  %0 = load i8, ptr %trimmedp.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimstart = getelementptr inbounds %struct.Sequence_T, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %trimstart, align 4, !tbaa !23
  store i32 %2, ptr %start, align 4, !tbaa !13
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trimend = getelementptr inbounds %struct.Sequence_T, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %trimend, align 8, !tbaa !26
  store i32 %4, ptr %end, align 4, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %start, align 4, !tbaa !13
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %fulllength, align 8, !tbaa !25
  store i32 %6, ptr %end, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8, ptr %uppercasep.addr, align 1, !tbaa !16
  %conv2 = zext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 1
  br i1 %cmp3, label %if.then5, label %if.else22

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %8, ptr %pos, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.then5
  %9 = load i32, ptr %pos, align 4, !tbaa !13
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !13
  %10 = load i32, ptr %end, align 4, !tbaa !13
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %contents, align 8, !tbaa !22
  %13 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv8 = sext i8 %14 to i32
  %idxprom9 = sext i32 %conv8 to i64
  %arrayidx10 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1, !tbaa !16
  %16 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext %15, ptr noundef %16)
  %17 = load i32, ptr %i, align 4, !tbaa !13
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !13
  %rem = srem i32 %inc11, 1048576
  %cmp12 = icmp eq i32 %rem, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %while.body
  %18 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %18)
  %19 = load ptr, ptr @stdout, align 8, !tbaa !5
  %20 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_print(ptr noundef %19, ptr noundef %20)
  call void @Filestring_free(ptr noundef %fp, i8 noundef zeroext 1)
  %call15 = call ptr (...) @Filestring_new()
  store ptr %call15, ptr %fp, align 8, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.body
  %21 = load i32, ptr %i, align 4, !tbaa !13
  %22 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem17 = srem i32 %21, %22
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  %23 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext 10, ptr noundef %23)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16
  br label %while.cond, !llvm.loop !57

while.end:                                        ; preds = %while.cond
  br label %if.end44

if.else22:                                        ; preds = %if.end
  %24 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %24, ptr %pos, align 4, !tbaa !13
  br label %while.cond23

while.cond23:                                     ; preds = %if.end42, %if.else22
  %25 = load i32, ptr %pos, align 4, !tbaa !13
  %inc24 = add nsw i32 %25, 1
  store i32 %inc24, ptr %pos, align 4, !tbaa !13
  %26 = load i32, ptr %end, align 4, !tbaa !13
  %cmp25 = icmp slt i32 %25, %26
  br i1 %cmp25, label %while.body27, label %while.end43

while.body27:                                     ; preds = %while.cond23
  %27 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents28 = getelementptr inbounds %struct.Sequence_T, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %contents28, align 8, !tbaa !22
  %29 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 %idxprom29
  %30 = load i8, ptr %arrayidx30, align 1, !tbaa !16
  %31 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext %30, ptr noundef %31)
  %32 = load i32, ptr %i, align 4, !tbaa !13
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !13
  %rem32 = srem i32 %inc31, 1048576
  %cmp33 = icmp eq i32 %rem32, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %while.body27
  %33 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %33)
  %34 = load ptr, ptr @stdout, align 8, !tbaa !5
  %35 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_print(ptr noundef %34, ptr noundef %35)
  call void @Filestring_free(ptr noundef %fp, i8 noundef zeroext 1)
  %call36 = call ptr (...) @Filestring_new()
  store ptr %call36, ptr %fp, align 8, !tbaa !5
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %while.body27
  %36 = load i32, ptr %i, align 4, !tbaa !13
  %37 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem38 = srem i32 %36, %37
  %cmp39 = icmp eq i32 %rem38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  %38 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext 10, ptr noundef %38)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  br label %while.cond23, !llvm.loop !58

while.end43:                                      ; preds = %while.cond23
  br label %if.end44

if.end44:                                         ; preds = %while.end43, %while.end
  %39 = load i32, ptr %i, align 4, !tbaa !13
  %40 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem45 = srem i32 %39, %40
  %cmp46 = icmp ne i32 %rem45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  %41 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext 10, ptr noundef %41)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44
  %42 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_stringify(ptr noundef %42)
  %43 = load ptr, ptr @stdout, align 8, !tbaa !5
  %44 = load ptr, ptr %fp, align 8, !tbaa !5
  call void @Filestring_print(ptr noundef %43, ptr noundef %44)
  call void @Filestring_free(ptr noundef %fp, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #9
  ret void
}

declare ptr @Filestring_new(...) #3

declare void @Filestring_stringify(ptr noundef) #3

declare void @Filestring_print(ptr noundef, ptr noundef) #3

declare void @Filestring_free(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_stdout_alt(ptr noundef %ref, ptr noundef %alt, ptr noundef %snp, i8 noundef zeroext %uppercasep, i32 noundef %wraplength) #0 {
entry:
  %ref.addr = alloca ptr, align 8
  %alt.addr = alloca ptr, align 8
  %snp.addr = alloca ptr, align 8
  %uppercasep.addr = alloca i8, align 1
  %wraplength.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %uppercaseCode = alloca [128 x i8], align 16
  store ptr %ref, ptr %ref.addr, align 8, !tbaa !5
  store ptr %alt, ptr %alt.addr, align 8, !tbaa !5
  store ptr %snp, ptr %snp.addr, align 8, !tbaa !5
  store i8 %uppercasep, ptr %uppercasep.addr, align 1, !tbaa !16
  store i32 %wraplength, ptr %wraplength.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %uppercaseCode, ptr align 16 @__const.Sequence_stdout_alt.uppercaseCode, i64 128, i1 false)
  store i32 0, ptr %start, align 4, !tbaa !13
  %0 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  store i32 %1, ptr %end, align 4, !tbaa !13
  %2 = load i8, ptr %uppercasep.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else49

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %3, ptr %pos, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %pos, align 4, !tbaa !13
  %5 = load i32, ptr %end, align 4, !tbaa !13
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %snp.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %contents, align 8, !tbaa !22
  %8 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 32
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  %10 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents8 = getelementptr inbounds %struct.Sequence_T, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %contents8, align 8, !tbaa !22
  %12 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 %idxprom9
  %13 = load i8, ptr %arrayidx10, align 1, !tbaa !16
  %conv11 = sext i8 %13 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %arrayidx13 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom12
  %14 = load i8, ptr %arrayidx13, align 1, !tbaa !16
  %conv14 = sext i8 %14 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv14)
  br label %if.end42

if.else:                                          ; preds = %for.body
  %15 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents15 = getelementptr inbounds %struct.Sequence_T, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %contents15, align 8, !tbaa !22
  %17 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %16, i64 %idxprom16
  %18 = load i8, ptr %arrayidx17, align 1, !tbaa !16
  %conv18 = sext i8 %18 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom19
  %19 = load i8, ptr %arrayidx20, align 1, !tbaa !16
  %conv21 = sext i8 %19 to i32
  %20 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents22 = getelementptr inbounds %struct.Sequence_T, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %contents22, align 8, !tbaa !22
  %22 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %21, i64 %idxprom23
  %23 = load i8, ptr %arrayidx24, align 1, !tbaa !16
  %conv25 = sext i8 %23 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %arrayidx27 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom26
  %24 = load i8, ptr %arrayidx27, align 1, !tbaa !16
  %conv28 = sext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv21, %conv28
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end

if.else33:                                        ; preds = %if.else
  %25 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents34 = getelementptr inbounds %struct.Sequence_T, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %contents34, align 8, !tbaa !22
  %27 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %26, i64 %idxprom35
  %28 = load i8, ptr %arrayidx36, align 1, !tbaa !16
  %conv37 = sext i8 %28 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %arrayidx39 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom38
  %29 = load i8, ptr %arrayidx39, align 1, !tbaa !16
  %conv40 = sext i8 %29 to i32
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv40)
  br label %if.end

if.end:                                           ; preds = %if.else33, %if.then31
  br label %if.end42

if.end42:                                         ; preds = %if.end, %if.then7
  %30 = load i32, ptr %i, align 4, !tbaa !13
  %add = add nsw i32 %30, 1
  %31 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem = srem i32 %add, %31
  %cmp43 = icmp eq i32 %rem, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end42
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42
  br label %for.inc

for.inc:                                          ; preds = %if.end47
  %32 = load i32, ptr %pos, align 4, !tbaa !13
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !13
  %33 = load i32, ptr %i, align 4, !tbaa !13
  %inc48 = add nsw i32 %33, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  br label %if.end104

if.else49:                                        ; preds = %entry
  %34 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %34, ptr %pos, align 4, !tbaa !13
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc100, %if.else49
  %35 = load i32, ptr %pos, align 4, !tbaa !13
  %36 = load i32, ptr %end, align 4, !tbaa !13
  %cmp51 = icmp slt i32 %35, %36
  br i1 %cmp51, label %for.body53, label %for.end103

for.body53:                                       ; preds = %for.cond50
  %37 = load ptr, ptr %snp.addr, align 8, !tbaa !5
  %contents54 = getelementptr inbounds %struct.Sequence_T, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %contents54, align 8, !tbaa !22
  %39 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds i8, ptr %38, i64 %idxprom55
  %40 = load i8, ptr %arrayidx56, align 1, !tbaa !16
  %conv57 = sext i8 %40 to i32
  %cmp58 = icmp eq i32 %conv57, 32
  br i1 %cmp58, label %if.then60, label %if.else66

if.then60:                                        ; preds = %for.body53
  %41 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents61 = getelementptr inbounds %struct.Sequence_T, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %contents61, align 8, !tbaa !22
  %43 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom62 = sext i32 %43 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %42, i64 %idxprom62
  %44 = load i8, ptr %arrayidx63, align 1, !tbaa !16
  %conv64 = sext i8 %44 to i32
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv64)
  br label %if.end92

if.else66:                                        ; preds = %for.body53
  %45 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents67 = getelementptr inbounds %struct.Sequence_T, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %contents67, align 8, !tbaa !22
  %47 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom68 = sext i32 %47 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %46, i64 %idxprom68
  %48 = load i8, ptr %arrayidx69, align 1, !tbaa !16
  %conv70 = sext i8 %48 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom71
  %49 = load i8, ptr %arrayidx72, align 1, !tbaa !16
  %conv73 = sext i8 %49 to i32
  %50 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents74 = getelementptr inbounds %struct.Sequence_T, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %contents74, align 8, !tbaa !22
  %52 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom75 = sext i32 %52 to i64
  %arrayidx76 = getelementptr inbounds i8, ptr %51, i64 %idxprom75
  %53 = load i8, ptr %arrayidx76, align 1, !tbaa !16
  %conv77 = sext i8 %53 to i32
  %idxprom78 = sext i32 %conv77 to i64
  %arrayidx79 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom78
  %54 = load i8, ptr %arrayidx79, align 1, !tbaa !16
  %conv80 = sext i8 %54 to i32
  %cmp81 = icmp eq i32 %conv73, %conv80
  br i1 %cmp81, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.else66
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end91

if.else85:                                        ; preds = %if.else66
  %55 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents86 = getelementptr inbounds %struct.Sequence_T, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %contents86, align 8, !tbaa !22
  %57 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom87 = sext i32 %57 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %56, i64 %idxprom87
  %58 = load i8, ptr %arrayidx88, align 1, !tbaa !16
  %conv89 = sext i8 %58 to i32
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv89)
  br label %if.end91

if.end91:                                         ; preds = %if.else85, %if.then83
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then60
  %59 = load i32, ptr %i, align 4, !tbaa !13
  %add93 = add nsw i32 %59, 1
  %60 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem94 = srem i32 %add93, %60
  %cmp95 = icmp eq i32 %rem94, 0
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.end92
  %call98 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end92
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %61 = load i32, ptr %pos, align 4, !tbaa !13
  %inc101 = add nsw i32 %61, 1
  store i32 %inc101, ptr %pos, align 4, !tbaa !13
  %62 = load i32, ptr %i, align 4, !tbaa !13
  %inc102 = add nsw i32 %62, 1
  store i32 %inc102, ptr %i, align 4, !tbaa !13
  br label %for.cond50, !llvm.loop !60

for.end103:                                       ; preds = %for.cond50
  br label %if.end104

if.end104:                                        ; preds = %for.end103, %for.end
  %63 = load i32, ptr %i, align 4, !tbaa !13
  %64 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem105 = srem i32 %63, %64
  %cmp106 = icmp ne i32 %rem105, 0
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.end104
  %call109 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end104
  call void @llvm.lifetime.end.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_stdout_two(ptr noundef %ref, ptr noundef %alt, i8 noundef zeroext %uppercasep, i32 noundef %wraplength) #0 {
entry:
  %ref.addr = alloca ptr, align 8
  %alt.addr = alloca ptr, align 8
  %uppercasep.addr = alloca i8, align 1
  %wraplength.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %startpos = alloca i32, align 4
  %end = alloca i32, align 4
  %uppercaseCode = alloca [128 x i8], align 16
  store ptr %ref, ptr %ref.addr, align 8, !tbaa !5
  store ptr %alt, ptr %alt.addr, align 8, !tbaa !5
  store i8 %uppercasep, ptr %uppercasep.addr, align 1, !tbaa !16
  store i32 %wraplength, ptr %wraplength.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %startpos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %uppercaseCode, ptr align 16 @__const.Sequence_stdout_two.uppercaseCode, i64 128, i1 false)
  %0 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  store i32 %1, ptr %end, align 4, !tbaa !13
  store i32 0, ptr %pos, align 4, !tbaa !13
  store i32 0, ptr %i, align 4, !tbaa !13
  %2 = load i8, ptr %uppercasep.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else96

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %3 = load i32, ptr %pos, align 4, !tbaa !13
  store i32 %3, ptr %startpos, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end51, %if.then
  %4 = load i32, ptr %pos, align 4, !tbaa !13
  %5 = load i32, ptr %end, align 4, !tbaa !13
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %contents, align 8, !tbaa !22
  %8 = load i32, ptr %pos, align 4, !tbaa !13
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv4 = sext i8 %9 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom5
  %10 = load i8, ptr %arrayidx6, align 1, !tbaa !16
  %conv7 = sext i8 %10 to i32
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv7)
  %11 = load i32, ptr %i, align 4, !tbaa !13
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !13
  %12 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem = srem i32 %inc, %12
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then11, label %if.end51

if.then11:                                        ; preds = %while.body
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %13 = load i32, ptr %startpos, align 4, !tbaa !13
  store i32 %13, ptr %pos2, align 4, !tbaa !13
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %14 = load i32, ptr %i, align 4, !tbaa !13
  %15 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents16 = getelementptr inbounds %struct.Sequence_T, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %contents16, align 8, !tbaa !22
  %18 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %17, i64 %idxprom17
  %19 = load i8, ptr %arrayidx18, align 1, !tbaa !16
  %conv19 = sext i8 %19 to i32
  %idxprom20 = sext i32 %conv19 to i64
  %arrayidx21 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom20
  %20 = load i8, ptr %arrayidx21, align 1, !tbaa !16
  %conv22 = sext i8 %20 to i32
  %21 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents23 = getelementptr inbounds %struct.Sequence_T, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %contents23, align 8, !tbaa !22
  %23 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %22, i64 %idxprom24
  %24 = load i8, ptr %arrayidx25, align 1, !tbaa !16
  %conv26 = sext i8 %24 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom27
  %25 = load i8, ptr %arrayidx28, align 1, !tbaa !16
  %conv29 = sext i8 %25 to i32
  %cmp30 = icmp eq i32 %conv22, %conv29
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.body
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end

if.else:                                          ; preds = %for.body
  %26 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents34 = getelementptr inbounds %struct.Sequence_T, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %contents34, align 8, !tbaa !22
  %28 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %27, i64 %idxprom35
  %29 = load i8, ptr %arrayidx36, align 1, !tbaa !16
  %conv37 = sext i8 %29 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %arrayidx39 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom38
  %30 = load i8, ptr %arrayidx39, align 1, !tbaa !16
  %conv40 = sext i8 %30 to i32
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv40)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then32
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, ptr %pos2, align 4, !tbaa !13
  %inc42 = add nsw i32 %31, 1
  store i32 %inc42, ptr %pos2, align 4, !tbaa !13
  %32 = load i32, ptr %i, align 4, !tbaa !13
  %inc43 = add nsw i32 %32, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %33 = load i32, ptr %pos, align 4, !tbaa !13
  %add = add nsw i32 %33, 1
  %34 = load i32, ptr %end, align 4, !tbaa !13
  %cmp45 = icmp slt i32 %add, %34
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.end
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.end
  %35 = load i32, ptr %pos, align 4, !tbaa !13
  %add50 = add nsw i32 %35, 1
  store i32 %add50, ptr %startpos, align 4, !tbaa !13
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %while.body
  %36 = load i32, ptr %pos, align 4, !tbaa !13
  %inc52 = add nsw i32 %36, 1
  store i32 %inc52, ptr %pos, align 4, !tbaa !13
  br label %while.cond, !llvm.loop !62

while.end:                                        ; preds = %while.cond
  %37 = load i32, ptr %i, align 4, !tbaa !13
  %38 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem53 = srem i32 %37, %38
  %cmp54 = icmp ne i32 %rem53, 0
  br i1 %cmp54, label %if.then56, label %if.end95

if.then56:                                        ; preds = %while.end
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %39 = load i32, ptr %startpos, align 4, !tbaa !13
  store i32 %39, ptr %pos2, align 4, !tbaa !13
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc91, %if.then56
  %40 = load i32, ptr %pos2, align 4, !tbaa !13
  %41 = load i32, ptr %end, align 4, !tbaa !13
  %cmp60 = icmp slt i32 %40, %41
  br i1 %cmp60, label %for.body62, label %for.end93

for.body62:                                       ; preds = %for.cond59
  %42 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents63 = getelementptr inbounds %struct.Sequence_T, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %contents63, align 8, !tbaa !22
  %44 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom64 = sext i32 %44 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %43, i64 %idxprom64
  %45 = load i8, ptr %arrayidx65, align 1, !tbaa !16
  %conv66 = sext i8 %45 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom67
  %46 = load i8, ptr %arrayidx68, align 1, !tbaa !16
  %conv69 = sext i8 %46 to i32
  %47 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents70 = getelementptr inbounds %struct.Sequence_T, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %contents70, align 8, !tbaa !22
  %49 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom71 = sext i32 %49 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %48, i64 %idxprom71
  %50 = load i8, ptr %arrayidx72, align 1, !tbaa !16
  %conv73 = sext i8 %50 to i32
  %idxprom74 = sext i32 %conv73 to i64
  %arrayidx75 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom74
  %51 = load i8, ptr %arrayidx75, align 1, !tbaa !16
  %conv76 = sext i8 %51 to i32
  %cmp77 = icmp eq i32 %conv69, %conv76
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %for.body62
  %call80 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end90

if.else81:                                        ; preds = %for.body62
  %52 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents82 = getelementptr inbounds %struct.Sequence_T, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %contents82, align 8, !tbaa !22
  %54 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom83 = sext i32 %54 to i64
  %arrayidx84 = getelementptr inbounds i8, ptr %53, i64 %idxprom83
  %55 = load i8, ptr %arrayidx84, align 1, !tbaa !16
  %conv85 = sext i8 %55 to i32
  %idxprom86 = sext i32 %conv85 to i64
  %arrayidx87 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom86
  %56 = load i8, ptr %arrayidx87, align 1, !tbaa !16
  %conv88 = sext i8 %56 to i32
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv88)
  br label %if.end90

if.end90:                                         ; preds = %if.else81, %if.then79
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %57 = load i32, ptr %pos2, align 4, !tbaa !13
  %inc92 = add nsw i32 %57, 1
  store i32 %inc92, ptr %pos2, align 4, !tbaa !13
  br label %for.cond59, !llvm.loop !63

for.end93:                                        ; preds = %for.cond59
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  br label %if.end95

if.end95:                                         ; preds = %for.end93, %while.end
  br label %if.end198

if.else96:                                        ; preds = %entry
  %call97 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %58 = load i32, ptr %pos, align 4, !tbaa !13
  store i32 %58, ptr %startpos, align 4, !tbaa !13
  br label %while.cond98

while.cond98:                                     ; preds = %if.end155, %if.else96
  %59 = load i32, ptr %pos, align 4, !tbaa !13
  %60 = load i32, ptr %end, align 4, !tbaa !13
  %cmp99 = icmp slt i32 %59, %60
  br i1 %cmp99, label %while.body101, label %while.end157

while.body101:                                    ; preds = %while.cond98
  %61 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents102 = getelementptr inbounds %struct.Sequence_T, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %contents102, align 8, !tbaa !22
  %63 = load i32, ptr %pos, align 4, !tbaa !13
  %idxprom103 = sext i32 %63 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %62, i64 %idxprom103
  %64 = load i8, ptr %arrayidx104, align 1, !tbaa !16
  %conv105 = sext i8 %64 to i32
  %call106 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv105)
  %65 = load i32, ptr %i, align 4, !tbaa !13
  %inc107 = add nsw i32 %65, 1
  store i32 %inc107, ptr %i, align 4, !tbaa !13
  %66 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem108 = srem i32 %inc107, %66
  %cmp109 = icmp eq i32 %rem108, 0
  br i1 %cmp109, label %if.then111, label %if.end155

if.then111:                                       ; preds = %while.body101
  %call112 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call113 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %67 = load i32, ptr %startpos, align 4, !tbaa !13
  store i32 %67, ptr %pos2, align 4, !tbaa !13
  store i32 0, ptr %i, align 4, !tbaa !13
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc143, %if.then111
  %68 = load i32, ptr %i, align 4, !tbaa !13
  %69 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %cmp115 = icmp slt i32 %68, %69
  br i1 %cmp115, label %for.body117, label %for.end146

for.body117:                                      ; preds = %for.cond114
  %70 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents118 = getelementptr inbounds %struct.Sequence_T, ptr %70, i32 0, i32 2
  %71 = load ptr, ptr %contents118, align 8, !tbaa !22
  %72 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom119 = sext i32 %72 to i64
  %arrayidx120 = getelementptr inbounds i8, ptr %71, i64 %idxprom119
  %73 = load i8, ptr %arrayidx120, align 1, !tbaa !16
  %conv121 = sext i8 %73 to i32
  %idxprom122 = sext i32 %conv121 to i64
  %arrayidx123 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom122
  %74 = load i8, ptr %arrayidx123, align 1, !tbaa !16
  %conv124 = sext i8 %74 to i32
  %75 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents125 = getelementptr inbounds %struct.Sequence_T, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %contents125, align 8, !tbaa !22
  %77 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom126 = sext i32 %77 to i64
  %arrayidx127 = getelementptr inbounds i8, ptr %76, i64 %idxprom126
  %78 = load i8, ptr %arrayidx127, align 1, !tbaa !16
  %conv128 = sext i8 %78 to i32
  %idxprom129 = sext i32 %conv128 to i64
  %arrayidx130 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom129
  %79 = load i8, ptr %arrayidx130, align 1, !tbaa !16
  %conv131 = sext i8 %79 to i32
  %cmp132 = icmp eq i32 %conv124, %conv131
  br i1 %cmp132, label %if.then134, label %if.else136

if.then134:                                       ; preds = %for.body117
  %call135 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end142

if.else136:                                       ; preds = %for.body117
  %80 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents137 = getelementptr inbounds %struct.Sequence_T, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %contents137, align 8, !tbaa !22
  %82 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom138 = sext i32 %82 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %81, i64 %idxprom138
  %83 = load i8, ptr %arrayidx139, align 1, !tbaa !16
  %conv140 = sext i8 %83 to i32
  %call141 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv140)
  br label %if.end142

if.end142:                                        ; preds = %if.else136, %if.then134
  br label %for.inc143

for.inc143:                                       ; preds = %if.end142
  %84 = load i32, ptr %pos2, align 4, !tbaa !13
  %inc144 = add nsw i32 %84, 1
  store i32 %inc144, ptr %pos2, align 4, !tbaa !13
  %85 = load i32, ptr %i, align 4, !tbaa !13
  %inc145 = add nsw i32 %85, 1
  store i32 %inc145, ptr %i, align 4, !tbaa !13
  br label %for.cond114, !llvm.loop !64

for.end146:                                       ; preds = %for.cond114
  %call147 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %86 = load i32, ptr %pos, align 4, !tbaa !13
  %add148 = add nsw i32 %86, 1
  %87 = load i32, ptr %end, align 4, !tbaa !13
  %cmp149 = icmp slt i32 %add148, %87
  br i1 %cmp149, label %if.then151, label %if.end153

if.then151:                                       ; preds = %for.end146
  %call152 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %for.end146
  %88 = load i32, ptr %pos, align 4, !tbaa !13
  %add154 = add nsw i32 %88, 1
  store i32 %add154, ptr %startpos, align 4, !tbaa !13
  br label %if.end155

if.end155:                                        ; preds = %if.end153, %while.body101
  %89 = load i32, ptr %pos, align 4, !tbaa !13
  %inc156 = add nsw i32 %89, 1
  store i32 %inc156, ptr %pos, align 4, !tbaa !13
  br label %while.cond98, !llvm.loop !65

while.end157:                                     ; preds = %while.cond98
  %90 = load i32, ptr %i, align 4, !tbaa !13
  %91 = load i32, ptr %wraplength.addr, align 4, !tbaa !13
  %rem158 = srem i32 %90, %91
  %cmp159 = icmp ne i32 %rem158, 0
  br i1 %cmp159, label %if.then161, label %if.end197

if.then161:                                       ; preds = %while.end157
  %call162 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %call163 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %92 = load i32, ptr %startpos, align 4, !tbaa !13
  store i32 %92, ptr %pos2, align 4, !tbaa !13
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc193, %if.then161
  %93 = load i32, ptr %pos2, align 4, !tbaa !13
  %94 = load i32, ptr %end, align 4, !tbaa !13
  %cmp165 = icmp slt i32 %93, %94
  br i1 %cmp165, label %for.body167, label %for.end195

for.body167:                                      ; preds = %for.cond164
  %95 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents168 = getelementptr inbounds %struct.Sequence_T, ptr %95, i32 0, i32 2
  %96 = load ptr, ptr %contents168, align 8, !tbaa !22
  %97 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom169 = sext i32 %97 to i64
  %arrayidx170 = getelementptr inbounds i8, ptr %96, i64 %idxprom169
  %98 = load i8, ptr %arrayidx170, align 1, !tbaa !16
  %conv171 = sext i8 %98 to i32
  %idxprom172 = sext i32 %conv171 to i64
  %arrayidx173 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom172
  %99 = load i8, ptr %arrayidx173, align 1, !tbaa !16
  %conv174 = sext i8 %99 to i32
  %100 = load ptr, ptr %ref.addr, align 8, !tbaa !5
  %contents175 = getelementptr inbounds %struct.Sequence_T, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %contents175, align 8, !tbaa !22
  %102 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom176 = sext i32 %102 to i64
  %arrayidx177 = getelementptr inbounds i8, ptr %101, i64 %idxprom176
  %103 = load i8, ptr %arrayidx177, align 1, !tbaa !16
  %conv178 = sext i8 %103 to i32
  %idxprom179 = sext i32 %conv178 to i64
  %arrayidx180 = getelementptr inbounds [128 x i8], ptr %uppercaseCode, i64 0, i64 %idxprom179
  %104 = load i8, ptr %arrayidx180, align 1, !tbaa !16
  %conv181 = sext i8 %104 to i32
  %cmp182 = icmp eq i32 %conv174, %conv181
  br i1 %cmp182, label %if.then184, label %if.else186

if.then184:                                       ; preds = %for.body167
  %call185 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end192

if.else186:                                       ; preds = %for.body167
  %105 = load ptr, ptr %alt.addr, align 8, !tbaa !5
  %contents187 = getelementptr inbounds %struct.Sequence_T, ptr %105, i32 0, i32 2
  %106 = load ptr, ptr %contents187, align 8, !tbaa !22
  %107 = load i32, ptr %pos2, align 4, !tbaa !13
  %idxprom188 = sext i32 %107 to i64
  %arrayidx189 = getelementptr inbounds i8, ptr %106, i64 %idxprom188
  %108 = load i8, ptr %arrayidx189, align 1, !tbaa !16
  %conv190 = sext i8 %108 to i32
  %call191 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %conv190)
  br label %if.end192

if.end192:                                        ; preds = %if.else186, %if.then184
  br label %for.inc193

for.inc193:                                       ; preds = %if.end192
  %109 = load i32, ptr %pos2, align 4, !tbaa !13
  %inc194 = add nsw i32 %109, 1
  store i32 %inc194, ptr %pos2, align 4, !tbaa !13
  br label %for.cond164, !llvm.loop !66

for.end195:                                       ; preds = %for.cond164
  %call196 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  br label %if.end197

if.end197:                                        ; preds = %for.end195, %while.end157
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.end95
  call void @llvm.lifetime.end.p0(i64 128, ptr %uppercaseCode) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %startpos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_stdout_raw(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  store i32 0, ptr %start, align 4, !tbaa !13
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  store i32 %1, ptr %end, align 4, !tbaa !13
  %2 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %2, ptr %pos, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %pos, align 4, !tbaa !13
  %4 = load i32, ptr %end, align 4, !tbaa !13
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %contents, align 8, !tbaa !22
  %7 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = sext i8 %8 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %pos, align 4, !tbaa !13
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !13
  %10 = load i32, ptr %i, align 4, !tbaa !13
  %inc1 = add nsw i32 %10, 1
  store i32 %inc1, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_stdout_stream_chars(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  store i32 0, ptr %start, align 4, !tbaa !13
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  store i32 %1, ptr %end, align 4, !tbaa !13
  %2 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %2, ptr %pos, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %pos, align 4, !tbaa !13
  %4 = load i32, ptr %end, align 4, !tbaa !13
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #9
  %call = call ptr @__ctype_toupper_loc() #10
  %5 = load ptr, ptr %call, align 8, !tbaa !5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %contents, align 8, !tbaa !22
  %8 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = sext i8 %9 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %10 = load i32, ptr %arrayidx2, align 4, !tbaa !13
  store i32 %10, ptr %__res, align 4, !tbaa !13
  %11 = load i32, ptr %__res, align 4, !tbaa !13
  store i32 %11, ptr %tmp, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #9
  %12 = load i32, ptr %tmp, align 4, !tbaa !13
  switch i32 %12, label %sw.default [
    i32 65, label %sw.bb
    i32 67, label %sw.bb4
    i32 71, label %sw.bb6
    i32 84, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body
  %call3 = call i32 @putchar(i32 noundef 65)
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  %call5 = call i32 @putchar(i32 noundef 67)
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %call7 = call i32 @putchar(i32 noundef 71)
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %call9 = call i32 @putchar(i32 noundef 84)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %call10 = call i32 @putchar(i32 noundef 88)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %13 = load i32, ptr %pos, align 4, !tbaa !13
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !13
  %14 = load i32, ptr %i, align 4, !tbaa !13
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() #5

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @putchar(i32 noundef %__c) #7 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !13
  %0 = load i32, ptr %__c.addr, align 4, !tbaa !13
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call = call i32 @putc(i32 noundef %0, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local void @Sequence_stdout_stream_ints(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #9
  store i32 0, ptr %start, align 4, !tbaa !13
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %fulllength = getelementptr inbounds %struct.Sequence_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %fulllength, align 8, !tbaa !25
  store i32 %1, ptr %end, align 4, !tbaa !13
  %2 = load i32, ptr %start, align 4, !tbaa !13
  store i32 %2, ptr %pos, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %pos, align 4, !tbaa !13
  %4 = load i32, ptr %end, align 4, !tbaa !13
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #9
  %call = call ptr @__ctype_toupper_loc() #10
  %5 = load ptr, ptr %call, align 8, !tbaa !5
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %contents, align 8, !tbaa !22
  %8 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = sext i8 %9 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %10 = load i32, ptr %arrayidx2, align 4, !tbaa !13
  store i32 %10, ptr %__res, align 4, !tbaa !13
  %11 = load i32, ptr %__res, align 4, !tbaa !13
  store i32 %11, ptr %tmp, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #9
  %12 = load i32, ptr %tmp, align 4, !tbaa !13
  switch i32 %12, label %sw.default [
    i32 65, label %sw.bb
    i32 67, label %sw.bb4
    i32 71, label %sw.bb6
    i32 84, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body
  %call3 = call i32 @putchar(i32 noundef 0)
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  %call5 = call i32 @putchar(i32 noundef 1)
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %call7 = call i32 @putchar(i32 noundef 2)
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %call9 = call i32 @putchar(i32 noundef 3)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %call10 = call i32 @putchar(i32 noundef 4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %13 = load i32, ptr %pos, align 4, !tbaa !13
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %pos, align 4, !tbaa !13
  %14 = load i32, ptr %i, align 4, !tbaa !13
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Sequence_substring(ptr noundef %usersegment, i32 noundef %left, i32 noundef %length, i8 noundef zeroext %revcomp) #0 {
entry:
  %retval = alloca ptr, align 8
  %usersegment.addr = alloca ptr, align 8
  %left.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %revcomp.addr = alloca i8, align 1
  %gbuffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %usersegment, ptr %usersegment.addr, align 8, !tbaa !5
  store i32 %left, ptr %left.addr, align 4, !tbaa !13
  store i32 %length, ptr %length.addr, align 4, !tbaa !13
  store i8 %revcomp, ptr %revcomp.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %gbuffer) #9
  %0 = load i32, ptr %length.addr, align 4, !tbaa !13
  %add = add i32 %0, 1
  %conv = zext i32 %add to i64
  %call = call ptr @Mem_calloc(i64 noundef %conv, i64 noundef 1, ptr noundef @.str, i32 noundef 2155)
  store ptr %call, ptr %gbuffer, align 8, !tbaa !5
  %1 = load ptr, ptr %gbuffer, align 8, !tbaa !5
  %2 = load ptr, ptr %usersegment.addr, align 8, !tbaa !5
  %contents = getelementptr inbounds %struct.Sequence_T, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %contents, align 8, !tbaa !22
  %4 = load i32, ptr %left.addr, align 4, !tbaa !13
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i32, ptr %length.addr, align 4, !tbaa !13
  %conv1 = zext i32 %5 to i64
  %mul = mul i64 %conv1, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %arrayidx, i64 %mul, i1 false)
  %6 = load ptr, ptr %gbuffer, align 8, !tbaa !5
  %7 = load i32, ptr %length.addr, align 4, !tbaa !13
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %idxprom2
  store i8 0, ptr %arrayidx3, align 1, !tbaa !16
  %8 = load i8, ptr %revcomp.addr, align 1, !tbaa !16
  %conv4 = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %gbuffer, align 8, !tbaa !5
  %10 = load i32, ptr %length.addr, align 4, !tbaa !13
  call void @make_complement_inplace(ptr noundef %9, i32 noundef %10)
  %11 = load ptr, ptr %gbuffer, align 8, !tbaa !5
  %12 = load i32, ptr %length.addr, align 4, !tbaa !13
  %call6 = call ptr @Sequence_genomic_new(ptr noundef %11, i32 noundef %12, i8 noundef zeroext 0)
  store ptr %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %gbuffer, align 8, !tbaa !5
  %14 = load i32, ptr %length.addr, align 4, !tbaa !13
  %call7 = call ptr @Sequence_genomic_new(ptr noundef %13, i32 noundef %14, i8 noundef zeroext 0)
  store ptr %call7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gbuffer) #9
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

declare ptr @Mem_calloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @make_complement_inplace(ptr noundef %sequence, i32 noundef %length) #0 {
entry:
  %sequence.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %temp = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %sequence, ptr %sequence.addr, align 8, !tbaa !5
  store i32 %length, ptr %length.addr, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %temp) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 0, ptr %i, align 4, !tbaa !13
  %0 = load i32, ptr %length.addr, align 4, !tbaa !13
  %sub = sub i32 %0, 1
  store i32 %sub, ptr %j, align 4, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !13
  %2 = load i32, ptr %length.addr, align 4, !tbaa !13
  %div = udiv i32 %2, 2
  %cmp = icmp ult i32 %1, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = sext i8 %5 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds [128 x i8], ptr @complCode, i64 0, i64 %idxprom1
  %6 = load i8, ptr %arrayidx2, align 1, !tbaa !16
  store i8 %6, ptr %temp, align 1, !tbaa !16
  %7 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  %9 = load i8, ptr %arrayidx4, align 1, !tbaa !16
  %conv5 = sext i8 %9 to i32
  %idxprom6 = sext i32 %conv5 to i64
  %arrayidx7 = getelementptr inbounds [128 x i8], ptr @complCode, i64 0, i64 %idxprom6
  %10 = load i8, ptr %arrayidx7, align 1, !tbaa !16
  %11 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom8 = zext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8
  store i8 %10, ptr %arrayidx9, align 1, !tbaa !16
  %13 = load i8, ptr %temp, align 1, !tbaa !16
  %14 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !13
  %idxprom10 = zext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 %idxprom10
  store i8 %13, ptr %arrayidx11, align 1, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !13
  %inc = add i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !13
  %17 = load i32, ptr %j, align 4, !tbaa !13
  %dec = add i32 %17, -1
  store i32 %dec, ptr %j, align 4, !tbaa !13
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %i, align 4, !tbaa !13
  %19 = load i32, ptr %j, align 4, !tbaa !13
  %cmp12 = icmp eq i32 %18, %19
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %20 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom14 = zext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %20, i64 %idxprom14
  %22 = load i8, ptr %arrayidx15, align 1, !tbaa !16
  %conv16 = sext i8 %22 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds [128 x i8], ptr @complCode, i64 0, i64 %idxprom17
  %23 = load i8, ptr %arrayidx18, align 1, !tbaa !16
  %24 = load ptr, ptr %sequence.addr, align 8, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !13
  %idxprom19 = zext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %24, i64 %idxprom19
  store i8 %23, ptr %arrayidx20, align 1, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr %temp) #9
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @rindex(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @read_first_half(ptr noundef %nextchar, ptr noundef %eolnp, ptr noundef %fp, i8 noundef zeroext %possible_fasta_header_p) #0 {
entry:
  %retval = alloca i32, align 4
  %nextchar.addr = alloca ptr, align 8
  %eolnp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %possible_fasta_header_p.addr = alloca i8, align 1
  %remainder = alloca i32, align 4
  %strlenp = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %c = alloca i32, align 4
  %init_char_p = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nextchar, ptr %nextchar.addr, align 8, !tbaa !5
  store ptr %eolnp, ptr %eolnp.addr, align 8, !tbaa !5
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store i8 %possible_fasta_header_p, ptr %possible_fasta_header_p.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %strlenp) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  store ptr null, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %init_char_p) #9
  store i8 1, ptr %init_char_p, align 1, !tbaa !16
  %0 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store ptr %arrayidx, ptr %ptr, align 8, !tbaa !5
  %1 = load i8, ptr %possible_fasta_header_p.addr, align 1, !tbaa !16
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %cmp2 = icmp ne i32 %3, 64
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %cmp4 = icmp ne i32 %5, 62
  br i1 %cmp4, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 4, !tbaa !13
  %cmp7 = icmp ne i32 %7, 60
  br i1 %cmp7, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %8 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %cmp10 = icmp ne i32 %9, 43
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true9, %entry
  %10 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %conv12 = trunc i32 %11 to i8
  %12 = load ptr, ptr %ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8, !tbaa !5
  store i8 %conv12, ptr %12, align 1, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9, %land.lhs.true6, %land.lhs.true, %lor.lhs.false
  %13 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 500000
  %14 = load ptr, ptr %ptr, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = udiv i64 %sub.ptr.sub, 1
  %conv14 = trunc i64 %div to i32
  store i32 %conv14, ptr %remainder, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end144, %if.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  %15 = load i32, ptr %remainder, align 4, !tbaa !13
  %cmp15 = icmp sle i32 %15, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %while.body
  %16 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %16, align 4, !tbaa !13
  %17 = load ptr, ptr %ptr, align 8, !tbaa !5
  %18 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8, ptr %18, i64 0
  %sub.ptr.lhs.cast19 = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast20 = ptrtoint ptr %arrayidx18 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %div22 = udiv i64 %sub.ptr.sub21, 1
  %conv23 = trunc i64 %div22 to i32
  store i32 %conv23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %while.body
  %19 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call = call i32 @feof(ptr noundef %19) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then24, label %if.else31

if.then24:                                        ; preds = %if.else
  %20 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %20, align 4, !tbaa !13
  %21 = load ptr, ptr %ptr, align 8, !tbaa !5
  %22 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds i8, ptr %22, i64 0
  %sub.ptr.lhs.cast26 = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast27 = ptrtoint ptr %arrayidx25 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %div29 = udiv i64 %sub.ptr.sub28, 1
  %conv30 = trunc i64 %div29 to i32
  store i32 %conv30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else31:                                        ; preds = %if.else
  %23 = load ptr, ptr %eolnp.addr, align 8, !tbaa !5
  %24 = load i8, ptr %23, align 1, !tbaa !16
  %conv32 = zext i8 %24 to i32
  %cmp33 = icmp eq i32 %conv32, 1
  br i1 %cmp33, label %if.then35, label %if.else82

if.then35:                                        ; preds = %if.else31
  %25 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call36 = call i32 @fgetc(ptr noundef %25)
  store i32 %call36, ptr %c, align 4, !tbaa !13
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %if.then55, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.then35
  %26 = load i8, ptr %init_char_p, align 1, !tbaa !16
  %conv40 = zext i8 %26 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.else62

land.lhs.true43:                                  ; preds = %lor.lhs.false39
  %27 = load i32, ptr %c, align 4, !tbaa !13
  %cmp44 = icmp eq i32 %27, 64
  br i1 %cmp44, label %if.then55, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %land.lhs.true43
  %28 = load i32, ptr %c, align 4, !tbaa !13
  %cmp47 = icmp eq i32 %28, 62
  br i1 %cmp47, label %if.then55, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %29 = load i32, ptr %c, align 4, !tbaa !13
  %cmp50 = icmp eq i32 %29, 60
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %30 = load i32, ptr %c, align 4, !tbaa !13
  %cmp53 = icmp eq i32 %30, 43
  br i1 %cmp53, label %if.then55, label %if.else62

if.then55:                                        ; preds = %lor.lhs.false52, %lor.lhs.false49, %lor.lhs.false46, %land.lhs.true43, %if.then35
  %31 = load i32, ptr %c, align 4, !tbaa !13
  %32 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %31, ptr %32, align 4, !tbaa !13
  %33 = load ptr, ptr %ptr, align 8, !tbaa !5
  %34 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds i8, ptr %34, i64 0
  %sub.ptr.lhs.cast57 = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast58 = ptrtoint ptr %arrayidx56 to i64
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %div60 = udiv i64 %sub.ptr.sub59, 1
  %conv61 = trunc i64 %div60 to i32
  store i32 %conv61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else62:                                        ; preds = %lor.lhs.false52, %lor.lhs.false39
  %call63 = call ptr @__ctype_b_loc() #10
  %35 = load ptr, ptr %call63, align 8, !tbaa !5
  %36 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom = sext i32 %36 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %35, i64 %idxprom
  %37 = load i16, ptr %arrayidx64, align 2, !tbaa !17
  %conv65 = zext i16 %37 to i32
  %and = and i32 %conv65, 2
  %tobool66 = icmp ne i32 %and, 0
  br i1 %tobool66, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.else62
  br label %if.end80

if.else68:                                        ; preds = %if.else62
  %call69 = call ptr @__ctype_b_loc() #10
  %38 = load ptr, ptr %call69, align 8, !tbaa !5
  %39 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom70 = sext i32 %39 to i64
  %arrayidx71 = getelementptr inbounds i16, ptr %38, i64 %idxprom70
  %40 = load i16, ptr %arrayidx71, align 2, !tbaa !17
  %conv72 = zext i16 %40 to i32
  %and73 = and i32 %conv72, 8192
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.else68
  %41 = load ptr, ptr %eolnp.addr, align 8, !tbaa !5
  store i8 1, ptr %41, align 1, !tbaa !16
  br label %if.end79

if.else76:                                        ; preds = %if.else68
  %42 = load i32, ptr %c, align 4, !tbaa !13
  %conv77 = trunc i32 %42 to i8
  %43 = load ptr, ptr %ptr, align 8, !tbaa !5
  %incdec.ptr78 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr78, ptr %ptr, align 8, !tbaa !5
  store i8 %conv77, ptr %43, align 1, !tbaa !16
  %44 = load i32, ptr %remainder, align 4, !tbaa !13
  %dec = add nsw i32 %44, -1
  store i32 %dec, ptr %remainder, align 4, !tbaa !13
  %45 = load ptr, ptr %eolnp.addr, align 8, !tbaa !5
  store i8 0, ptr %45, align 1, !tbaa !16
  store ptr null, ptr %p, align 8, !tbaa !5
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then75
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then67
  br label %if.end81

if.end81:                                         ; preds = %if.end80
  br label %if.end142

if.else82:                                        ; preds = %if.else31
  %46 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp83 = icmp ne ptr %46, null
  br i1 %cmp83, label %if.then85, label %if.else91

if.then85:                                        ; preds = %if.else82
  %47 = load ptr, ptr %p, align 8, !tbaa !5
  %call86 = call i64 @strlen(ptr noundef %47) #11
  %conv87 = trunc i64 %call86 to i32
  store i32 %conv87, ptr %strlenp, align 4, !tbaa !13
  %48 = load ptr, ptr %ptr, align 8, !tbaa !5
  %49 = load ptr, ptr %p, align 8, !tbaa !5
  %50 = load i32, ptr %strlenp, align 4, !tbaa !13
  %conv88 = sext i32 %50 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %48, ptr align 1 %49, i64 %conv88, i1 false)
  %51 = load ptr, ptr %ptr, align 8, !tbaa !5
  %52 = load i32, ptr %strlenp, align 4, !tbaa !13
  %idxprom89 = sext i32 %52 to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %51, i64 %idxprom89
  store i8 0, ptr %arrayidx90, align 1, !tbaa !16
  br label %if.end93

if.else91:                                        ; preds = %if.else82
  %53 = load ptr, ptr %ptr, align 8, !tbaa !5
  %54 = load i32, ptr %remainder, align 4, !tbaa !13
  %add = add nsw i32 %54, 1
  %55 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call92 = call ptr @fgets(ptr noundef %53, i32 noundef %add, ptr noundef %55)
  store ptr %call92, ptr %p, align 8, !tbaa !5
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then85
  %56 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp94 = icmp eq ptr %56, null
  br i1 %cmp94, label %if.then96, label %if.else103

if.then96:                                        ; preds = %if.end93
  %57 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %57, align 4, !tbaa !13
  %58 = load ptr, ptr %ptr, align 8, !tbaa !5
  %59 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx97 = getelementptr inbounds i8, ptr %59, i64 0
  %sub.ptr.lhs.cast98 = ptrtoint ptr %58 to i64
  %sub.ptr.rhs.cast99 = ptrtoint ptr %arrayidx97 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast98, %sub.ptr.rhs.cast99
  %div101 = udiv i64 %sub.ptr.sub100, 1
  %conv102 = trunc i64 %div101 to i32
  store i32 %conv102, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else103:                                       ; preds = %if.end93
  br label %while.cond104

while.cond104:                                    ; preds = %while.body108, %if.else103
  %60 = load ptr, ptr %ptr, align 8, !tbaa !5
  %call105 = call ptr @index(ptr noundef %60, i32 noundef 32) #11
  store ptr %call105, ptr %p, align 8, !tbaa !5
  %cmp106 = icmp ne ptr %call105, null
  br i1 %cmp106, label %while.body108, label %while.end

while.body108:                                    ; preds = %while.cond104
  %61 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr109 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr109, ptr %p, align 8, !tbaa !5
  store ptr %61, ptr %ptr, align 8, !tbaa !5
  %62 = load ptr, ptr %p, align 8, !tbaa !5
  %call110 = call i64 @strlen(ptr noundef %62) #11
  %conv111 = trunc i64 %call110 to i32
  store i32 %conv111, ptr %strlenp, align 4, !tbaa !13
  %63 = load ptr, ptr %ptr, align 8, !tbaa !5
  %64 = load ptr, ptr %p, align 8, !tbaa !5
  %65 = load i32, ptr %strlenp, align 4, !tbaa !13
  %conv112 = sext i32 %65 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %63, ptr align 1 %64, i64 %conv112, i1 false)
  %66 = load ptr, ptr %ptr, align 8, !tbaa !5
  %67 = load i32, ptr %strlenp, align 4, !tbaa !13
  %idxprom113 = sext i32 %67 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %66, i64 %idxprom113
  store i8 0, ptr %arrayidx114, align 1, !tbaa !16
  br label %while.cond104, !llvm.loop !71

while.end:                                        ; preds = %while.cond104
  %68 = load ptr, ptr %ptr, align 8, !tbaa !5
  %69 = load i8, ptr %68, align 1, !tbaa !16
  %conv115 = sext i8 %69 to i32
  %cmp116 = icmp eq i32 %conv115, 10
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %while.end
  %70 = load ptr, ptr %eolnp.addr, align 8, !tbaa !5
  store i8 1, ptr %70, align 1, !tbaa !16
  br label %if.end134

if.else119:                                       ; preds = %while.end
  %71 = load ptr, ptr %ptr, align 8, !tbaa !5
  %call120 = call ptr @index(ptr noundef %71, i32 noundef 10) #11
  store ptr %call120, ptr %p, align 8, !tbaa !5
  %cmp121 = icmp ne ptr %call120, null
  br i1 %cmp121, label %if.then123, label %if.else131

if.then123:                                       ; preds = %if.else119
  %72 = load ptr, ptr %p, align 8, !tbaa !5
  %arrayidx124 = getelementptr inbounds i8, ptr %72, i64 -1
  %73 = load i8, ptr %arrayidx124, align 1, !tbaa !16
  %conv125 = sext i8 %73 to i32
  %cmp126 = icmp eq i32 %conv125, 13
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.then123
  %74 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr129 = getelementptr inbounds i8, ptr %74, i32 -1
  store ptr %incdec.ptr129, ptr %p, align 8, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.then123
  %75 = load ptr, ptr %p, align 8, !tbaa !5
  store ptr %75, ptr %ptr, align 8, !tbaa !5
  %76 = load ptr, ptr %eolnp.addr, align 8, !tbaa !5
  store i8 1, ptr %76, align 1, !tbaa !16
  br label %if.end133

if.else131:                                       ; preds = %if.else119
  %77 = load ptr, ptr %ptr, align 8, !tbaa !5
  %call132 = call i64 @strlen(ptr noundef %77) #11
  %78 = load ptr, ptr %ptr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %78, i64 %call132
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !5
  %79 = load ptr, ptr %eolnp.addr, align 8, !tbaa !5
  store i8 0, ptr %79, align 1, !tbaa !16
  store ptr null, ptr %p, align 8, !tbaa !5
  br label %if.end133

if.end133:                                        ; preds = %if.else131, %if.end130
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then118
  %80 = load ptr, ptr @Firsthalf, align 8, !tbaa !5
  %arrayidx135 = getelementptr inbounds i8, ptr %80, i64 500000
  %81 = load ptr, ptr %ptr, align 8, !tbaa !5
  %sub.ptr.lhs.cast136 = ptrtoint ptr %arrayidx135 to i64
  %sub.ptr.rhs.cast137 = ptrtoint ptr %81 to i64
  %sub.ptr.sub138 = sub i64 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %div139 = udiv i64 %sub.ptr.sub138, 1
  %conv140 = trunc i64 %div139 to i32
  store i32 %conv140, ptr %remainder, align 4, !tbaa !13
  br label %if.end141

if.end141:                                        ; preds = %if.end134
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end81
  br label %if.end143

if.end143:                                        ; preds = %if.end142
  br label %if.end144

if.end144:                                        ; preds = %if.end143
  store i8 0, ptr %init_char_p, align 1, !tbaa !16
  br label %while.cond

cleanup:                                          ; preds = %if.then96, %if.then55, %if.then24, %if.then17
  call void @llvm.lifetime.end.p0(i64 1, ptr %init_char_p) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %strlenp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #9
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @read_second_half(ptr noundef %nextchar, ptr noundef %pointer2a, ptr noundef %length2a, ptr noundef %pointer2b, ptr noundef %length2b, i8 noundef zeroext %eolnp, ptr noundef %fp) #0 {
entry:
  %nextchar.addr = alloca ptr, align 8
  %pointer2a.addr = alloca ptr, align 8
  %length2a.addr = alloca ptr, align 8
  %pointer2b.addr = alloca ptr, align 8
  %length2b.addr = alloca ptr, align 8
  %eolnp.addr = alloca i8, align 1
  %fp.addr = alloca ptr, align 8
  %skiplength = alloca i32, align 4
  %ncycles = alloca i32, align 4
  %remainder = alloca i32, align 4
  %terminator = alloca i32, align 4
  %strlenp = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %c = alloca i32, align 4
  %init_char_p = alloca i8, align 1
  store ptr %nextchar, ptr %nextchar.addr, align 8, !tbaa !5
  store ptr %pointer2a, ptr %pointer2a.addr, align 8, !tbaa !5
  store ptr %length2a, ptr %length2a.addr, align 8, !tbaa !5
  store ptr %pointer2b, ptr %pointer2b.addr, align 8, !tbaa !5
  store ptr %length2b, ptr %length2b.addr, align 8, !tbaa !5
  store i8 %eolnp, ptr %eolnp.addr, align 1, !tbaa !16
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %skiplength) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncycles) #9
  store i32 0, ptr %ncycles, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %terminator) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %strlenp) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  store ptr null, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %init_char_p) #9
  store i8 1, ptr %init_char_p, align 1, !tbaa !16
  %0 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store ptr %arrayidx, ptr %ptr, align 8, !tbaa !5
  %1 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 500002
  %2 = load ptr, ptr %ptr, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = udiv i64 %sub.ptr.sub, 1
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %remainder, align 4, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end108, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call = call i32 @feof(ptr noundef %3) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %4, align 4, !tbaa !13
  br label %while.end109

if.else:                                          ; preds = %while.body
  %5 = load i32, ptr %remainder, align 4, !tbaa !13
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then3, label %if.else11

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 0
  store ptr %arrayidx4, ptr %ptr, align 8, !tbaa !5
  %7 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 500002
  %8 = load ptr, ptr %ptr, align 8, !tbaa !5
  %sub.ptr.lhs.cast6 = ptrtoint ptr %arrayidx5 to i64
  %sub.ptr.rhs.cast7 = ptrtoint ptr %8 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %div9 = udiv i64 %sub.ptr.sub8, 1
  %conv10 = trunc i64 %div9 to i32
  store i32 %conv10, ptr %remainder, align 4, !tbaa !13
  %9 = load i32, ptr %ncycles, align 4, !tbaa !13
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %ncycles, align 4, !tbaa !13
  br label %if.end107

if.else11:                                        ; preds = %if.else
  %10 = load i8, ptr %eolnp.addr, align 1, !tbaa !16
  %conv12 = zext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 1
  br i1 %cmp13, label %if.then15, label %if.else52

if.then15:                                        ; preds = %if.else11
  %11 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call16 = call i32 @fgetc(ptr noundef %11)
  store i32 %call16, ptr %c, align 4, !tbaa !13
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %12 = load i8, ptr %init_char_p, align 1, !tbaa !16
  %conv19 = zext i8 %12 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %land.lhs.true, label %if.else34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load i32, ptr %c, align 4, !tbaa !13
  %cmp22 = icmp eq i32 %13, 64
  br i1 %cmp22, label %if.then33, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %14 = load i32, ptr %c, align 4, !tbaa !13
  %cmp25 = icmp eq i32 %14, 62
  br i1 %cmp25, label %if.then33, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %15 = load i32, ptr %c, align 4, !tbaa !13
  %cmp28 = icmp eq i32 %15, 60
  br i1 %cmp28, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %16 = load i32, ptr %c, align 4, !tbaa !13
  %cmp31 = icmp eq i32 %16, 43
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %land.lhs.true, %if.then15
  %17 = load i32, ptr %c, align 4, !tbaa !13
  %18 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 %17, ptr %18, align 4, !tbaa !13
  br label %while.end109

if.else34:                                        ; preds = %lor.lhs.false30, %lor.lhs.false
  %call35 = call ptr @__ctype_b_loc() #10
  %19 = load ptr, ptr %call35, align 8, !tbaa !5
  %20 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom = sext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %19, i64 %idxprom
  %21 = load i16, ptr %arrayidx36, align 2, !tbaa !17
  %conv37 = zext i16 %21 to i32
  %and = and i32 %conv37, 2
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else34
  br label %if.end50

if.else40:                                        ; preds = %if.else34
  %call41 = call ptr @__ctype_b_loc() #10
  %22 = load ptr, ptr %call41, align 8, !tbaa !5
  %23 = load i32, ptr %c, align 4, !tbaa !13
  %idxprom42 = sext i32 %23 to i64
  %arrayidx43 = getelementptr inbounds i16, ptr %22, i64 %idxprom42
  %24 = load i16, ptr %arrayidx43, align 2, !tbaa !17
  %conv44 = zext i16 %24 to i32
  %and45 = and i32 %conv44, 8192
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else40
  br label %if.end

if.else48:                                        ; preds = %if.else40
  %25 = load i32, ptr %c, align 4, !tbaa !13
  %conv49 = trunc i32 %25 to i8
  %26 = load ptr, ptr %ptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8, !tbaa !5
  store i8 %conv49, ptr %26, align 1, !tbaa !16
  %27 = load i32, ptr %remainder, align 4, !tbaa !13
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %remainder, align 4, !tbaa !13
  store i8 0, ptr %eolnp.addr, align 1, !tbaa !16
  store ptr null, ptr %p, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else48, %if.then47
  br label %if.end50

if.end50:                                         ; preds = %if.end, %if.then39
  br label %if.end51

if.end51:                                         ; preds = %if.end50
  br label %if.end106

if.else52:                                        ; preds = %if.else11
  %28 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp53 = icmp ne ptr %28, null
  br i1 %cmp53, label %if.then55, label %if.else61

if.then55:                                        ; preds = %if.else52
  %29 = load ptr, ptr %p, align 8, !tbaa !5
  %call56 = call i64 @strlen(ptr noundef %29) #11
  %conv57 = trunc i64 %call56 to i32
  store i32 %conv57, ptr %strlenp, align 4, !tbaa !13
  %30 = load ptr, ptr %ptr, align 8, !tbaa !5
  %31 = load ptr, ptr %p, align 8, !tbaa !5
  %32 = load i32, ptr %strlenp, align 4, !tbaa !13
  %conv58 = sext i32 %32 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %30, ptr align 1 %31, i64 %conv58, i1 false)
  %33 = load ptr, ptr %ptr, align 8, !tbaa !5
  %34 = load i32, ptr %strlenp, align 4, !tbaa !13
  %idxprom59 = sext i32 %34 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %33, i64 %idxprom59
  store i8 0, ptr %arrayidx60, align 1, !tbaa !16
  br label %if.end63

if.else61:                                        ; preds = %if.else52
  %35 = load ptr, ptr %ptr, align 8, !tbaa !5
  %36 = load i32, ptr %remainder, align 4, !tbaa !13
  %add = add nsw i32 %36, 1
  %37 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call62 = call ptr @fgets(ptr noundef %35, i32 noundef %add, ptr noundef %37)
  store ptr %call62, ptr %p, align 8, !tbaa !5
  br label %if.end63

if.end63:                                         ; preds = %if.else61, %if.then55
  %38 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp64 = icmp eq ptr %38, null
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end63
  %39 = load ptr, ptr %nextchar.addr, align 8, !tbaa !5
  store i32 -1, ptr %39, align 4, !tbaa !13
  br label %while.end109

if.else67:                                        ; preds = %if.end63
  br label %while.cond68

while.cond68:                                     ; preds = %while.body72, %if.else67
  %40 = load ptr, ptr %ptr, align 8, !tbaa !5
  %call69 = call ptr @index(ptr noundef %40, i32 noundef 32) #11
  store ptr %call69, ptr %p, align 8, !tbaa !5
  %cmp70 = icmp ne ptr %call69, null
  br i1 %cmp70, label %while.body72, label %while.end

while.body72:                                     ; preds = %while.cond68
  %41 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr73 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr73, ptr %p, align 8, !tbaa !5
  store ptr %41, ptr %ptr, align 8, !tbaa !5
  %42 = load ptr, ptr %p, align 8, !tbaa !5
  %call74 = call i64 @strlen(ptr noundef %42) #11
  %conv75 = trunc i64 %call74 to i32
  store i32 %conv75, ptr %strlenp, align 4, !tbaa !13
  %43 = load ptr, ptr %ptr, align 8, !tbaa !5
  %44 = load ptr, ptr %p, align 8, !tbaa !5
  %45 = load i32, ptr %strlenp, align 4, !tbaa !13
  %conv76 = sext i32 %45 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %43, ptr align 1 %44, i64 %conv76, i1 false)
  %46 = load ptr, ptr %ptr, align 8, !tbaa !5
  %47 = load i32, ptr %strlenp, align 4, !tbaa !13
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %46, i64 %idxprom77
  store i8 0, ptr %arrayidx78, align 1, !tbaa !16
  br label %while.cond68, !llvm.loop !72

while.end:                                        ; preds = %while.cond68
  %48 = load ptr, ptr %ptr, align 8, !tbaa !5
  %49 = load i8, ptr %48, align 1, !tbaa !16
  %conv79 = sext i8 %49 to i32
  %cmp80 = icmp eq i32 %conv79, 10
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %while.end
  store i8 1, ptr %eolnp.addr, align 1, !tbaa !16
  br label %if.end98

if.else83:                                        ; preds = %while.end
  %50 = load ptr, ptr %ptr, align 8, !tbaa !5
  %call84 = call ptr @index(ptr noundef %50, i32 noundef 10) #11
  store ptr %call84, ptr %p, align 8, !tbaa !5
  %cmp85 = icmp ne ptr %call84, null
  br i1 %cmp85, label %if.then87, label %if.else95

if.then87:                                        ; preds = %if.else83
  %51 = load ptr, ptr %p, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i8, ptr %51, i64 -1
  %52 = load i8, ptr %arrayidx88, align 1, !tbaa !16
  %conv89 = sext i8 %52 to i32
  %cmp90 = icmp eq i32 %conv89, 13
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.then87
  %53 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr93 = getelementptr inbounds i8, ptr %53, i32 -1
  store ptr %incdec.ptr93, ptr %p, align 8, !tbaa !5
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then87
  %54 = load ptr, ptr %p, align 8, !tbaa !5
  store ptr %54, ptr %ptr, align 8, !tbaa !5
  store i8 1, ptr %eolnp.addr, align 1, !tbaa !16
  br label %if.end97

if.else95:                                        ; preds = %if.else83
  %55 = load ptr, ptr %ptr, align 8, !tbaa !5
  %call96 = call i64 @strlen(ptr noundef %55) #11
  %56 = load ptr, ptr %ptr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %56, i64 %call96
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !5
  store i8 0, ptr %eolnp.addr, align 1, !tbaa !16
  store ptr null, ptr %p, align 8, !tbaa !5
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.end94
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then82
  %57 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %arrayidx99 = getelementptr inbounds i8, ptr %57, i64 500002
  %58 = load ptr, ptr %ptr, align 8, !tbaa !5
  %sub.ptr.lhs.cast100 = ptrtoint ptr %arrayidx99 to i64
  %sub.ptr.rhs.cast101 = ptrtoint ptr %58 to i64
  %sub.ptr.sub102 = sub i64 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast101
  %div103 = udiv i64 %sub.ptr.sub102, 1
  %conv104 = trunc i64 %div103 to i32
  store i32 %conv104, ptr %remainder, align 4, !tbaa !13
  br label %if.end105

if.end105:                                        ; preds = %if.end98
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end51
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then3
  br label %if.end108

if.end108:                                        ; preds = %if.end107
  store i8 0, ptr %init_char_p, align 1, !tbaa !16
  br label %while.cond

while.end109:                                     ; preds = %if.then66, %if.then33, %if.then
  %59 = load ptr, ptr %ptr, align 8, !tbaa !5
  %60 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %arrayidx110 = getelementptr inbounds i8, ptr %60, i64 0
  %sub.ptr.lhs.cast111 = ptrtoint ptr %59 to i64
  %sub.ptr.rhs.cast112 = ptrtoint ptr %arrayidx110 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %div114 = udiv i64 %sub.ptr.sub113, 1
  %conv115 = trunc i64 %div114 to i32
  store i32 %conv115, ptr %terminator, align 4, !tbaa !13
  %61 = load i32, ptr %ncycles, align 4, !tbaa !13
  %cmp116 = icmp eq i32 %61, 0
  br i1 %cmp116, label %if.then118, label %if.else124

if.then118:                                       ; preds = %while.end109
  %62 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  store i32 0, ptr %62, align 4, !tbaa !13
  %63 = load i32, ptr %terminator, align 4, !tbaa !13
  %cmp119 = icmp slt i32 %63, 500000
  br i1 %cmp119, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.then118
  store i32 0, ptr %skiplength, align 4, !tbaa !13
  br label %if.end123

if.else122:                                       ; preds = %if.then118
  %64 = load i32, ptr %terminator, align 4, !tbaa !13
  %sub = sub nsw i32 %64, 500000
  store i32 %sub, ptr %skiplength, align 4, !tbaa !13
  br label %if.end123

if.end123:                                        ; preds = %if.else122, %if.then121
  br label %if.end128

if.else124:                                       ; preds = %while.end109
  %65 = load i32, ptr %terminator, align 4, !tbaa !13
  %sub125 = sub nsw i32 500000, %65
  %66 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  store i32 %sub125, ptr %66, align 4, !tbaa !13
  %67 = load i32, ptr %ncycles, align 4, !tbaa !13
  %mul = mul nsw i32 %67, 500002
  %68 = load i32, ptr %terminator, align 4, !tbaa !13
  %add126 = add nsw i32 %mul, %68
  %sub127 = sub nsw i32 %add126, 500000
  store i32 %sub127, ptr %skiplength, align 4, !tbaa !13
  br label %if.end128

if.end128:                                        ; preds = %if.else124, %if.end123
  %69 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  %70 = load i32, ptr %69, align 4, !tbaa !13
  %cmp129 = icmp sle i32 %70, 0
  br i1 %cmp129, label %if.then131, label %if.else132

if.then131:                                       ; preds = %if.end128
  %71 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  store i32 0, ptr %71, align 4, !tbaa !13
  %72 = load ptr, ptr %pointer2a.addr, align 8, !tbaa !5
  store ptr null, ptr %72, align 8, !tbaa !5
  br label %if.end136

if.else132:                                       ; preds = %if.end128
  %73 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %74 = load ptr, ptr %length2a.addr, align 8, !tbaa !5
  %75 = load i32, ptr %74, align 4, !tbaa !13
  %sub133 = sub nsw i32 500002, %75
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds i8, ptr %73, i64 %idxprom134
  %76 = load ptr, ptr %pointer2a.addr, align 8, !tbaa !5
  store ptr %arrayidx135, ptr %76, align 8, !tbaa !5
  br label %if.end136

if.end136:                                        ; preds = %if.else132, %if.then131
  %77 = load i32, ptr %terminator, align 4, !tbaa !13
  %cmp137 = icmp eq i32 %77, 0
  br i1 %cmp137, label %if.then139, label %if.else140

if.then139:                                       ; preds = %if.end136
  %78 = load ptr, ptr %length2b.addr, align 8, !tbaa !5
  store i32 0, ptr %78, align 4, !tbaa !13
  %79 = load ptr, ptr %pointer2b.addr, align 8, !tbaa !5
  store ptr null, ptr %79, align 8, !tbaa !5
  br label %if.end150

if.else140:                                       ; preds = %if.end136
  %80 = load i32, ptr %terminator, align 4, !tbaa !13
  %cmp141 = icmp sgt i32 %80, 500000
  br i1 %cmp141, label %if.then143, label %if.else147

if.then143:                                       ; preds = %if.else140
  %81 = load ptr, ptr %length2b.addr, align 8, !tbaa !5
  store i32 500000, ptr %81, align 4, !tbaa !13
  %82 = load ptr, ptr %ptr, align 8, !tbaa !5
  %83 = load ptr, ptr %length2b.addr, align 8, !tbaa !5
  %84 = load i32, ptr %83, align 4, !tbaa !13
  %sub144 = sub nsw i32 0, %84
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds i8, ptr %82, i64 %idxprom145
  %85 = load ptr, ptr %pointer2b.addr, align 8, !tbaa !5
  store ptr %arrayidx146, ptr %85, align 8, !tbaa !5
  br label %if.end149

if.else147:                                       ; preds = %if.else140
  %86 = load i32, ptr %terminator, align 4, !tbaa !13
  %87 = load ptr, ptr %length2b.addr, align 8, !tbaa !5
  store i32 %86, ptr %87, align 4, !tbaa !13
  %88 = load ptr, ptr @Secondhalf, align 8, !tbaa !5
  %arrayidx148 = getelementptr inbounds i8, ptr %88, i64 0
  %89 = load ptr, ptr %pointer2b.addr, align 8, !tbaa !5
  store ptr %arrayidx148, ptr %89, align 8, !tbaa !5
  br label %if.end149

if.end149:                                        ; preds = %if.else147, %if.then143
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then139
  %90 = load i32, ptr %skiplength, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 1, ptr %init_char_p) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %strlenp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %terminator) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncycles) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %skiplength) #9
  ret i32 %90
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) #4

declare i32 @putc(i32 noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }

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
!9 = !{!10, !7, i64 72}
!10 = !{!"Sequence_T", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56, !6, i64 64, !7, i64 72, !7, i64 80, !11, i64 120}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !11, i64 120}
!13 = !{!11, !11, i64 0}
!14 = !{!10, !6, i64 0}
!15 = !{!10, !6, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = !{!10, !6, i64 16}
!23 = !{!10, !11, i64 36}
!24 = !{!10, !6, i64 56}
!25 = !{!10, !11, i64 32}
!26 = !{!10, !11, i64 40}
!27 = !{!10, !11, i64 44}
!28 = !{!10, !11, i64 48}
!29 = !{!10, !6, i64 64}
!30 = !{!10, !6, i64 24}
!31 = distinct !{!31, !20}
!32 = !{!33, !11, i64 0}
!33 = !{!"gzFile_s", !11, i64 0, !6, i64 8, !34, i64 16}
!34 = !{!"long", !7, i64 0}
!35 = !{!33, !34, i64 16}
!36 = !{!33, !6, i64 8}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = !{!34, !34, i64 0}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = !{!51, !11, i64 0}
!51 = !{!"Intlist_T", !11, i64 0, !6, i64 8}
!52 = !{!51, !6, i64 8}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}

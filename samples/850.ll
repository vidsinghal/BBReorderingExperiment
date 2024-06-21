; ModuleID = 'samples/850.bc'
source_filename = "../spack-src/bench/atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, i32, i32 }
%struct.bench = type { %struct.bench_time, %struct.bench_time }
%struct.bench_time = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"/usr/share/dict/words\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"../spack-src/bench/atom.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"atom != XKB_ATOM_NONE\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@stderr = external global ptr, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"%d iterations in %ss\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"need < UINT_MAX / itemSize / 2\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"../spack-src/src/darray.h\00", align 1
@__PRETTY_FUNCTION__.darray_next_alloc = private unnamed_addr constant [73 x i8] c"unsigned int darray_next_alloc(unsigned int, unsigned int, unsigned int)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %file = alloca ptr, align 8
  %wordbuf = alloca [1024 x i8], align 16
  %words = alloca %struct.anon, align 8
  %worditer = alloca ptr, align 8
  %table = alloca ptr, align 8
  %atom = alloca i32, align 4
  %text = alloca ptr, align 8
  %bench = alloca %struct.bench, align 8
  %elapsed = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i64, align 8
  %__need = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr %wordbuf) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %words) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %worditer) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %atom) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %text) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %bench) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %elapsed) #8
  br label %do.body

do.body:                                          ; preds = %entry
  %item = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  store ptr null, ptr %item, align 8
  %size = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 1
  store i32 0, ptr %size, align 8
  %alloc = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 2
  store i32 0, ptr %alloc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %call = call noalias ptr @fopen64(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %file, align 8
  %0 = load ptr, ptr %file, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  call void @perror(ptr noundef @.str)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  br label %while.cond

while.cond:                                       ; preds = %do.end39, %if.end
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %wordbuf, i64 0, i64 0
  %1 = load ptr, ptr %file, align 8
  %call1 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef %1)
  %tobool = icmp ne ptr %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8
  %arraydecay2 = getelementptr inbounds [1024 x i8], ptr %wordbuf, i64 0, i64 0
  %call3 = call i64 @strlen(ptr noundef %arraydecay2) #9
  store i64 %call3, ptr %len, align 8
  %2 = load i64, ptr %len, align 8
  %cmp4 = icmp ugt i64 %2, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %while.body
  %3 = load i64, ptr %len, align 8
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds [1024 x i8], ptr %wordbuf, i64 0, i64 %sub
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv, 10
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  %5 = load i64, ptr %len, align 8
  %sub8 = sub i64 %5, 1
  %arrayidx9 = getelementptr inbounds [1024 x i8], ptr %wordbuf, i64 0, i64 %sub8
  store i8 0, ptr %arrayidx9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %while.body
  br label %do.body11

do.body11:                                        ; preds = %if.end10
  br label %do.body12

do.body12:                                        ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__need) #8
  %size13 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 1
  %6 = load i32, ptr %size13, align 8
  %add = add i32 %6, 1
  %size14 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 1
  store i32 %add, ptr %size14, align 8
  store i32 %add, ptr %__need, align 4
  %7 = load i32, ptr %__need, align 4
  %alloc15 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 2
  %8 = load i32, ptr %alloc15, align 4
  %cmp16 = icmp ugt i32 %7, %8
  br i1 %cmp16, label %if.then18, label %if.end29

if.then18:                                        ; preds = %do.body12
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  %item20 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  %9 = load ptr, ptr %item20, align 8
  %alloc21 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 2
  %10 = load i32, ptr %alloc21, align 4
  %11 = load i32, ptr %__need, align 4
  %call22 = call i32 @darray_next_alloc(i32 noundef %10, i32 noundef %11, i32 noundef 8)
  %alloc23 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 2
  store i32 %call22, ptr %alloc23, align 4
  %conv24 = zext i32 %call22 to i64
  %mul = mul i64 %conv24, 8
  %call25 = call ptr @realloc(ptr noundef %9, i64 noundef %mul) #10
  %item26 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  store ptr %call25, ptr %item26, align 8
  br label %do.cond27

do.cond27:                                        ; preds = %do.body19
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.body12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__need) #8
  br label %do.cond30

do.cond30:                                        ; preds = %if.end29
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  %arraydecay32 = getelementptr inbounds [1024 x i8], ptr %wordbuf, i64 0, i64 0
  %call33 = call noalias ptr @strdup(ptr noundef %arraydecay32) #8
  %item34 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  %12 = load ptr, ptr %item34, align 8
  %size35 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 1
  %13 = load i32, ptr %size35, align 8
  %sub36 = sub i32 %13, 1
  %idxprom = zext i32 %sub36 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  store ptr %call33, ptr %arrayidx37, align 8
  br label %do.cond38

do.cond38:                                        ; preds = %do.end31
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %file, align 8
  %call40 = call i32 @fclose(ptr noundef %14)
  call void @bench_start(ptr noundef %bench)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc69, %while.end
  %15 = load i32, ptr %i, align 4
  %cmp41 = icmp slt i32 %15, 100
  br i1 %cmp41, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 12, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  br label %for.end70

for.body:                                         ; preds = %for.cond
  %call43 = call ptr @atom_table_new()
  store ptr %call43, ptr %table, align 8
  %16 = load ptr, ptr %table, align 8
  %tobool44 = icmp ne ptr %16, null
  br i1 %tobool44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 68, ptr noundef @__PRETTY_FUNCTION__.main) #11
  unreachable

17:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %17, %cond.true
  %item45 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  %18 = load ptr, ptr %item45, align 8
  %arrayidx46 = getelementptr inbounds ptr, ptr %18, i64 0
  store ptr %arrayidx46, ptr %worditer, align 8
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc, %cond.end
  %19 = load ptr, ptr %worditer, align 8
  %item48 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  %20 = load ptr, ptr %item48, align 8
  %size49 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 1
  %21 = load i32, ptr %size49, align 8
  %idxprom50 = zext i32 %21 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %20, i64 %idxprom50
  %cmp52 = icmp ult ptr %19, %arrayidx51
  br i1 %cmp52, label %for.body54, label %for.end

for.body54:                                       ; preds = %for.cond47
  %22 = load ptr, ptr %table, align 8
  %23 = load ptr, ptr %worditer, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %worditer, align 8
  %26 = load ptr, ptr %25, align 8
  %call55 = call i64 @strlen(ptr noundef %26) #9
  %sub56 = sub i64 %call55, 1
  %call57 = call i32 @atom_intern(ptr noundef %22, ptr noundef %24, i64 noundef %sub56, i1 noundef zeroext true)
  store i32 %call57, ptr %atom, align 4
  %27 = load i32, ptr %atom, align 4
  %cmp58 = icmp ne i32 %27, 0
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %for.body54
  br label %cond.end62

cond.false61:                                     ; preds = %for.body54
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.3, i32 noundef 72, ptr noundef @__PRETTY_FUNCTION__.main) #11
  unreachable

28:                                               ; No predecessors!
  br label %cond.end62

cond.end62:                                       ; preds = %28, %cond.true60
  %29 = load ptr, ptr %table, align 8
  %30 = load i32, ptr %atom, align 4
  %call63 = call ptr @atom_text(ptr noundef %29, i32 noundef %30)
  store ptr %call63, ptr %text, align 8
  %31 = load ptr, ptr %text, align 8
  %cmp64 = icmp ne ptr %31, null
  br i1 %cmp64, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end62
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end62
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.3, i32 noundef 75, ptr noundef @__PRETTY_FUNCTION__.main) #11
  unreachable

32:                                               ; No predecessors!
  br label %cond.end68

cond.end68:                                       ; preds = %32, %cond.true66
  br label %for.inc

for.inc:                                          ; preds = %cond.end68
  %33 = load ptr, ptr %worditer, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %worditer, align 8
  br label %for.cond47, !llvm.loop !7

for.end:                                          ; preds = %for.cond47
  %34 = load ptr, ptr %table, align 8
  call void @atom_table_free(ptr noundef %34)
  br label %for.inc69

for.inc69:                                        ; preds = %for.end
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end70:                                        ; preds = %for.cond.cleanup
  call void @bench_stop(ptr noundef %bench)
  %call71 = call ptr @bench_elapsed_str(ptr noundef %bench)
  store ptr %call71, ptr %elapsed, align 8
  %36 = load ptr, ptr @stderr, align 8
  %37 = load ptr, ptr %elapsed, align 8
  %call72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.6, i32 noundef 100, ptr noundef %37)
  %38 = load ptr, ptr %elapsed, align 8
  call void @free(ptr noundef %38) #8
  %item73 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  %39 = load ptr, ptr %item73, align 8
  %arrayidx74 = getelementptr inbounds ptr, ptr %39, i64 0
  store ptr %arrayidx74, ptr %worditer, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc83, %for.end70
  %40 = load ptr, ptr %worditer, align 8
  %item76 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  %41 = load ptr, ptr %item76, align 8
  %size77 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 1
  %42 = load i32, ptr %size77, align 8
  %idxprom78 = zext i32 %42 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %41, i64 %idxprom78
  %cmp80 = icmp ult ptr %40, %arrayidx79
  br i1 %cmp80, label %for.body82, label %for.end85

for.body82:                                       ; preds = %for.cond75
  %43 = load ptr, ptr %worditer, align 8
  %44 = load ptr, ptr %43, align 8
  call void @free(ptr noundef %44) #8
  br label %for.inc83

for.inc83:                                        ; preds = %for.body82
  %45 = load ptr, ptr %worditer, align 8
  %incdec.ptr84 = getelementptr inbounds ptr, ptr %45, i32 1
  store ptr %incdec.ptr84, ptr %worditer, align 8
  br label %for.cond75, !llvm.loop !9

for.end85:                                        ; preds = %for.cond75
  br label %do.body86

do.body86:                                        ; preds = %for.end85
  %item87 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  %46 = load ptr, ptr %item87, align 8
  call void @free(ptr noundef %46) #8
  br label %do.body88

do.body88:                                        ; preds = %do.body86
  %item89 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 0
  store ptr null, ptr %item89, align 8
  %size90 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 1
  store i32 0, ptr %size90, align 8
  %alloc91 = getelementptr inbounds %struct.anon, ptr %words, i32 0, i32 2
  store i32 0, ptr %alloc91, align 4
  br label %do.cond92

do.cond92:                                        ; preds = %do.body88
  br label %do.end93

do.end93:                                         ; preds = %do.cond92
  br label %do.cond94

do.cond94:                                        ; preds = %do.end93
  br label %do.end95

do.end95:                                         ; preds = %do.cond94
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %elapsed) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %bench) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %text) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %atom) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %worditer) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %words) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr %wordbuf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #8
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #2

declare void @perror(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @darray_next_alloc(i32 noundef %alloc, i32 noundef %need, i32 noundef %itemSize) #5 {
entry:
  %alloc.addr = alloca i32, align 4
  %need.addr = alloca i32, align 4
  %itemSize.addr = alloca i32, align 4
  store i32 %alloc, ptr %alloc.addr, align 4
  store i32 %need, ptr %need.addr, align 4
  store i32 %itemSize, ptr %itemSize.addr, align 4
  %0 = load i32, ptr %need.addr, align 4
  %1 = load i32, ptr %itemSize.addr, align 4
  %div = udiv i32 -1, %1
  %div1 = udiv i32 %div, 2
  %cmp = icmp ult i32 %0, %div1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.8, i32 noundef 182, ptr noundef @__PRETTY_FUNCTION__.darray_next_alloc) #11
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i32, ptr %alloc.addr, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 4, ptr %alloc.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, ptr %alloc.addr, align 4
  %5 = load i32, ptr %need.addr, align 4
  %cmp3 = icmp ult i32 %4, %5
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %alloc.addr, align 4
  %mul = mul i32 %6, 2
  store i32 %mul, ptr %alloc.addr, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %alloc.addr, align 4
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #6

declare i32 @fclose(ptr noundef) #2

declare void @bench_start(ptr noundef) #2

declare ptr @atom_table_new() #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #7

declare i32 @atom_intern(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) #2

declare ptr @atom_text(ptr noundef, i32 noundef) #2

declare void @atom_table_free(ptr noundef) #2

declare void @bench_stop(ptr noundef) #2

declare ptr @bench_elapsed_str(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}

; ModuleID = 'samples/247.bc'
source_filename = "/local-ssd/flatcc-dqvd5pvfbbn35drqy4pphb57x3fdjpyh-build/aidengro/spack-stage-flatcc-0.5.3-dqvd5pvfbbn35drqy4pphb57x3fdjpyh/spack-src/external/hash/str_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { ptr, ptr, i64, i64 }

@str_set_missing = constant ptr null, align 8
@str_set_nomem = constant ptr inttoptr (i64 1 to ptr), align 8
@str_set_deleted = constant ptr inttoptr (i64 2 to ptr), align 8
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"aborting on panic: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"hash table failed to allocate memory during resize\00", align 1

; Function Attrs: nounwind uwtable
define void @str_set_clear(ptr noundef %ht) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  call void @ht_clear(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ht_clear(ptr noundef %ht) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table = getelementptr inbounds %struct.hash_table, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %table, align 8, !tbaa !8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table1 = getelementptr inbounds %struct.hash_table, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %table1, align 8, !tbaa !8
  call void @free(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @str_set_destroy(ptr noundef %ht, ptr noundef %destructor, ptr noundef %context) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %destructor.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %destructor, ptr %destructor.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %destructor.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %destructor.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @ht_visit(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  call void @ht_clear(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ht_visit(ptr noundef %ht, ptr noundef %visitor, ptr noundef %context) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %visitor.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %T = alloca ptr, align 8
  %item = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %visitor, ptr %visitor.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #10
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table = getelementptr inbounds %struct.hash_table, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %table, align 8, !tbaa !8
  store ptr %1, ptr %T, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.hash_table, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %buckets, align 8, !tbaa !12
  %cmp = icmp ult i64 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %T, align 8, !tbaa !4
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %6
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %7, ptr %item, align 8, !tbaa !4
  %8 = load ptr, ptr %item, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %9, inttoptr (i64 2 to ptr)
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %visitor.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %item, align 8, !tbaa !4
  call void %10(ptr noundef %11, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @str_set_init(ptr noundef %ht, i64 noundef %count) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store i64 %count, ptr %count.addr, align 8, !tbaa !11
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load i64, ptr %count.addr, align 8, !tbaa !11
  %call = call i32 @ht_init(ptr noundef %0, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ht_init(ptr noundef %ht, i64 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %buckets = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store i64 %count, ptr %count.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %buckets) #10
  store i64 4, ptr %buckets, align 8, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %count.addr, align 8, !tbaa !11
  %1 = load i64, ptr %buckets, align 8, !tbaa !11
  %mul = mul i64 %1, 179
  %div = udiv i64 %mul, 256
  %cmp = icmp ugt i64 %0, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %buckets, align 8, !tbaa !11
  %mul1 = mul i64 %2, 2
  store i64 %mul1, ptr %buckets, align 8, !tbaa !11
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %3 = load i64, ptr %buckets, align 8, !tbaa !11
  %call = call noalias ptr @calloc(i64 noundef %3, i64 noundef 8) #11
  %4 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table = getelementptr inbounds %struct.hash_table, ptr %4, i32 0, i32 0
  store ptr %call, ptr %table, align 8, !tbaa !8
  %5 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table2 = getelementptr inbounds %struct.hash_table, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %table2, align 8, !tbaa !8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.end
  %7 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %offsets = getelementptr inbounds %struct.hash_table, ptr %7, i32 0, i32 1
  store ptr null, ptr %offsets, align 8, !tbaa !16
  %8 = load i64, ptr %buckets, align 8, !tbaa !11
  %9 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %buckets4 = getelementptr inbounds %struct.hash_table, ptr %9, i32 0, i32 3
  store i64 %8, ptr %buckets4, align 8, !tbaa !12
  %10 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count5 = getelementptr inbounds %struct.hash_table, ptr %10, i32 0, i32 2
  store i64 0, ptr %count5, align 8, !tbaa !17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buckets) #10
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @str_set_resize(ptr noundef %ht, i64 noundef %count) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store i64 %count, ptr %count.addr, align 8, !tbaa !11
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load i64, ptr %count.addr, align 8, !tbaa !11
  %call = call i32 @ht_resize(ptr noundef %0, i64 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ht_resize(ptr noundef %ht, i64 noundef %count) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %ht2 = alloca %struct.hash_table, align 8
  %T = alloca ptr, align 8
  %item = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store i64 %count, ptr %count.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr %ht2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #10
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table = getelementptr inbounds %struct.hash_table, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %table, align 8, !tbaa !8
  store ptr %1, ptr %T, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #10
  %2 = load i64, ptr %count.addr, align 8, !tbaa !11
  %3 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count1 = getelementptr inbounds %struct.hash_table, ptr %3, i32 0, i32 2
  %4 = load i64, ptr %count1, align 8, !tbaa !17
  %cmp = icmp ult i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count2 = getelementptr inbounds %struct.hash_table, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %count2, align 8, !tbaa !17
  store i64 %6, ptr %count.addr, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, ptr %count.addr, align 8, !tbaa !11
  %call = call i32 @ht_init(ptr noundef %ht2, i64 noundef %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %9 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.hash_table, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %buckets, align 8, !tbaa !12
  %cmp5 = icmp ult i64 %8, %10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %T, align 8, !tbaa !4
  %12 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %12
  %13 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %13, ptr %item, align 8, !tbaa !4
  %14 = load ptr, ptr %item, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %14, null
  br i1 %tobool6, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.body
  %15 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp7 = icmp ne ptr %15, inttoptr (i64 2 to ptr)
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %item, align 8, !tbaa !4
  %call9 = call ptr @ht_key(ptr noundef %16)
  %17 = load ptr, ptr %item, align 8, !tbaa !4
  %call10 = call i64 @ht_key_len(ptr noundef %17)
  %18 = load ptr, ptr %item, align 8, !tbaa !4
  %call11 = call ptr @ht_insert(ptr noundef %ht2, ptr noundef %call9, i64 noundef %call10, ptr noundef %18, i32 noundef 3)
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %19 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  call void @ht_clear(ptr noundef %20)
  %21 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %ht2, i64 32, i1 false)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr %ht2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define ptr @str_set_insert(ptr noundef %ht, ptr noundef %key, i64 noundef %len, ptr noundef %new_item, i32 noundef %mode) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %new_item.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  store ptr %new_item, ptr %new_item.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !19
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !11
  %3 = load ptr, ptr %new_item.addr, align 8, !tbaa !4
  %4 = load i32, ptr %mode.addr, align 4, !tbaa !19
  %call = call ptr @ht_insert(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @ht_insert(ptr noundef %ht, ptr noundef %key, i64 noundef %len, ptr noundef %new_item, i32 noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %new_item.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %T = alloca ptr, align 8
  %N = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %item = alloca ptr, align 8
  %vacant = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  store ptr %new_item, ptr %new_item.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %N) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %vacant) #10
  store ptr null, ptr %vacant, align 8, !tbaa !4
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count = getelementptr inbounds %struct.hash_table, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %count, align 8, !tbaa !17
  %2 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.hash_table, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %buckets, align 8, !tbaa !12
  %mul = mul i64 %3, 179
  %div = udiv i64 %mul, 256
  %cmp = icmp uge i64 %1, %div
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count1 = getelementptr inbounds %struct.hash_table, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %count1, align 8, !tbaa !17
  %mul2 = mul i64 %6, 2
  %call = call i32 @ht_resize(ptr noundef %4, i64 noundef %mul2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #12
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table = getelementptr inbounds %struct.hash_table, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %table, align 8, !tbaa !8
  store ptr %9, ptr %T, align 8, !tbaa !4
  %10 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %buckets6 = getelementptr inbounds %struct.hash_table, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %buckets6, align 8, !tbaa !12
  %sub = sub i64 %11, 1
  store i64 %sub, ptr %N, align 8, !tbaa !11
  %12 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %13 = load i64, ptr %len.addr, align 8, !tbaa !11
  %call7 = call i64 @ht_default_hash_function(ptr noundef %12, i64 noundef %13)
  store i64 %call7, ptr %k, align 8, !tbaa !11
  store i64 0, ptr %i, align 8, !tbaa !11
  %14 = load i64, ptr %k, align 8, !tbaa !11
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %14, %15
  %16 = load i64, ptr %N, align 8, !tbaa !11
  %and = and i64 %add, %16
  store i64 %and, ptr %j, align 8, !tbaa !11
  %17 = load i32, ptr %mode.addr, align 4, !tbaa !19
  %cmp8 = icmp eq i32 %17, 2
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %18 = load i32, ptr %mode.addr, align 4, !tbaa !19
  %cmp9 = icmp eq i32 %18, 3
  br i1 %cmp9, label %if.then10, label %if.end19

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  %19 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count11 = getelementptr inbounds %struct.hash_table, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %count11, align 8, !tbaa !17
  %inc = add i64 %20, 1
  store i64 %inc, ptr %count11, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then10
  %21 = load ptr, ptr %T, align 8, !tbaa !4
  %22 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 %22
  %23 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %23, null
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load ptr, ptr %T, align 8, !tbaa !4
  %25 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx13 = getelementptr inbounds ptr, ptr %24, i64 %25
  %26 = load ptr, ptr %arrayidx13, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %26, inttoptr (i64 2 to ptr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, ptr %i, align 8, !tbaa !11
  %inc15 = add i64 %28, 1
  store i64 %inc15, ptr %i, align 8, !tbaa !11
  %29 = load i64, ptr %k, align 8, !tbaa !11
  %30 = load i64, ptr %i, align 8, !tbaa !11
  %add16 = add i64 %29, %30
  %31 = load i64, ptr %N, align 8, !tbaa !11
  %and17 = and i64 %add16, %31
  store i64 %and17, ptr %j, align 8, !tbaa !11
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %new_item.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %T, align 8, !tbaa !4
  %34 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx18 = getelementptr inbounds ptr, ptr %33, i64 %34
  store ptr %32, ptr %arrayidx18, align 8, !tbaa !4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  br label %while.cond20

while.cond20:                                     ; preds = %if.end38, %if.end19
  %35 = load ptr, ptr %T, align 8, !tbaa !4
  %36 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx21 = getelementptr inbounds ptr, ptr %35, i64 %36
  %37 = load ptr, ptr %arrayidx21, align 8, !tbaa !4
  store ptr %37, ptr %item, align 8, !tbaa !4
  %tobool22 = icmp ne ptr %37, null
  br i1 %tobool22, label %while.body23, label %while.end42

while.body23:                                     ; preds = %while.cond20
  %38 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp24 = icmp eq ptr %38, inttoptr (i64 2 to ptr)
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %while.body23
  %39 = load ptr, ptr %vacant, align 8, !tbaa !4
  %cmp26 = icmp eq ptr %39, null
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then25
  %40 = load ptr, ptr %T, align 8, !tbaa !4
  %41 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx28 = getelementptr inbounds ptr, ptr %40, i64 %41
  store ptr %arrayidx28, ptr %vacant, align 8, !tbaa !4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then25
  br label %if.end38

if.else:                                          ; preds = %while.body23
  %42 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %43 = load i64, ptr %len.addr, align 8, !tbaa !11
  %44 = load ptr, ptr %item, align 8, !tbaa !4
  %call30 = call i32 @ht_match(ptr noundef %42, i64 noundef %43, ptr noundef %44)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.else
  %45 = load i32, ptr %mode.addr, align 4, !tbaa !19
  %cmp33 = icmp eq i32 %45, 0
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then32
  %46 = load ptr, ptr %new_item.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %T, align 8, !tbaa !4
  %48 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx35 = getelementptr inbounds ptr, ptr %47, i64 %48
  store ptr %46, ptr %arrayidx35, align 8, !tbaa !4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then32
  %49 = load ptr, ptr %item, align 8, !tbaa !4
  store ptr %49, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end29
  %50 = load i64, ptr %i, align 8, !tbaa !11
  %inc39 = add i64 %50, 1
  store i64 %inc39, ptr %i, align 8, !tbaa !11
  %51 = load i64, ptr %k, align 8, !tbaa !11
  %52 = load i64, ptr %i, align 8, !tbaa !11
  %add40 = add i64 %51, %52
  %53 = load i64, ptr %N, align 8, !tbaa !11
  %and41 = and i64 %add40, %53
  store i64 %and41, ptr %j, align 8, !tbaa !11
  br label %while.cond20, !llvm.loop !22

while.end42:                                      ; preds = %while.cond20
  %54 = load ptr, ptr %vacant, align 8, !tbaa !4
  %cmp43 = icmp eq ptr %54, null
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %while.end42
  %55 = load ptr, ptr %T, align 8, !tbaa !4
  %56 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx45 = getelementptr inbounds ptr, ptr %55, i64 %56
  store ptr %arrayidx45, ptr %vacant, align 8, !tbaa !4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %while.end42
  %57 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count47 = getelementptr inbounds %struct.hash_table, ptr %57, i32 0, i32 2
  %58 = load i64, ptr %count47, align 8, !tbaa !17
  %inc48 = add i64 %58, 1
  store i64 %inc48, ptr %count47, align 8, !tbaa !17
  %59 = load ptr, ptr %new_item.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %vacant, align 8, !tbaa !4
  store ptr %59, ptr %60, align 8, !tbaa !4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end36, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %vacant) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %N) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #10
  %61 = load ptr, ptr %retval, align 8
  ret ptr %61
}

; Function Attrs: nounwind uwtable
define ptr @str_set_insert_item(ptr noundef %ht, ptr noundef %item, i32 noundef %mode) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !19
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %call = call ptr @ht_key(ptr noundef %1)
  %2 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %call1 = call i64 @ht_key_len(ptr noundef %2)
  %3 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %4 = load i32, ptr %mode.addr, align 4, !tbaa !19
  %call2 = call ptr @ht_insert(ptr noundef %0, ptr noundef %call, i64 noundef %call1, ptr noundef %3, i32 noundef %4)
  ret ptr %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ht_key(ptr noundef %item) #1 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %item.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ht_key_len(ptr noundef %item) #1 {
entry:
  %item.addr = alloca ptr, align 8
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %0) #13
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define ptr @str_set_find(ptr noundef %ht, ptr noundef %key, i64 noundef %len) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !11
  %call = call ptr @ht_find(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @ht_find(ptr noundef %ht, ptr noundef %key, i64 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %T = alloca ptr, align 8
  %N = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %item = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #10
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table = getelementptr inbounds %struct.hash_table, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %table, align 8, !tbaa !8
  store ptr %1, ptr %T, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %N) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #10
  %2 = load ptr, ptr %T, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.hash_table, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %buckets, align 8, !tbaa !12
  %sub = sub i64 %4, 1
  store i64 %sub, ptr %N, align 8, !tbaa !11
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %6 = load i64, ptr %len.addr, align 8, !tbaa !11
  %call = call i64 @ht_default_hash_function(ptr noundef %5, i64 noundef %6)
  store i64 %call, ptr %k, align 8, !tbaa !11
  store i64 0, ptr %i, align 8, !tbaa !11
  %7 = load i64, ptr %k, align 8, !tbaa !11
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %7, %8
  %9 = load i64, ptr %N, align 8, !tbaa !11
  %and = and i64 %add, %9
  store i64 %and, ptr %j, align 8, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %10 = load ptr, ptr %T, align 8, !tbaa !4
  %11 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %11
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %12, ptr %item, align 8, !tbaa !4
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %13, inttoptr (i64 2 to ptr)
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %while.body
  %14 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %15 = load i64, ptr %len.addr, align 8, !tbaa !11
  %16 = load ptr, ptr %item, align 8, !tbaa !4
  %call2 = call i32 @ht_match(ptr noundef %14, i64 noundef %15, ptr noundef %16)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %17 = load ptr, ptr %item, align 8, !tbaa !4
  store ptr %17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %while.body
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %18, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  %19 = load i64, ptr %k, align 8, !tbaa !11
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %19, %20
  %21 = load i64, ptr %N, align 8, !tbaa !11
  %and7 = and i64 %add6, %21
  store i64 %and7, ptr %j, align 8, !tbaa !11
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %N) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #10
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define ptr @str_set_find_item(ptr noundef %ht, ptr noundef %item) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %call = call ptr @ht_key(ptr noundef %1)
  %2 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %call1 = call i64 @ht_key_len(ptr noundef %2)
  %call2 = call ptr @ht_find(ptr noundef %0, ptr noundef %call, i64 noundef %call1)
  ret ptr %call2
}

; Function Attrs: nounwind uwtable
define ptr @str_set_remove(ptr noundef %ht, ptr noundef %key, i64 noundef %len) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !11
  %call = call ptr @ht_remove(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @ht_remove(ptr noundef %ht, ptr noundef %key, i64 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %T = alloca ptr, align 8
  %N = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %item = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %T) #10
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %table = getelementptr inbounds %struct.hash_table, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %table, align 8, !tbaa !8
  store ptr %1, ptr %T, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %N) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #10
  %2 = load ptr, ptr %T, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.hash_table, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %buckets, align 8, !tbaa !12
  %sub = sub i64 %4, 1
  store i64 %sub, ptr %N, align 8, !tbaa !11
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %6 = load i64, ptr %len.addr, align 8, !tbaa !11
  %call = call i64 @ht_default_hash_function(ptr noundef %5, i64 noundef %6)
  store i64 %call, ptr %k, align 8, !tbaa !11
  store i64 0, ptr %i, align 8, !tbaa !11
  %7 = load i64, ptr %k, align 8, !tbaa !11
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %7, %8
  %9 = load i64, ptr %N, align 8, !tbaa !11
  %and = and i64 %add, %9
  store i64 %and, ptr %j, align 8, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %10 = load ptr, ptr %T, align 8, !tbaa !4
  %11 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %11
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %12, ptr %item, align 8, !tbaa !4
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %item, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %13, inttoptr (i64 2 to ptr)
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %while.body
  %14 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %15 = load i64, ptr %len.addr, align 8, !tbaa !11
  %16 = load ptr, ptr %item, align 8, !tbaa !4
  %call2 = call i32 @ht_match(ptr noundef %14, i64 noundef %15, ptr noundef %16)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %17 = load ptr, ptr %T, align 8, !tbaa !4
  %18 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds ptr, ptr %17, i64 %18
  store ptr inttoptr (i64 2 to ptr), ptr %arrayidx5, align 8, !tbaa !4
  %19 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %count = getelementptr inbounds %struct.hash_table, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %count, align 8, !tbaa !17
  %dec = add i64 %20, -1
  store i64 %dec, ptr %count, align 8, !tbaa !17
  %21 = load ptr, ptr %item, align 8, !tbaa !4
  store ptr %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true, %while.body
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  %23 = load i64, ptr %k, align 8, !tbaa !11
  %24 = load i64, ptr %i, align 8, !tbaa !11
  %add7 = add i64 %23, %24
  %25 = load i64, ptr %N, align 8, !tbaa !11
  %and8 = and i64 %add7, %25
  store i64 %and8, ptr %j, align 8, !tbaa !11
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %N) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %T) #10
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define ptr @str_set_remove_item(ptr noundef %ht, ptr noundef %item) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %call = call ptr @ht_key(ptr noundef %1)
  %2 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %call1 = call i64 @ht_key_len(ptr noundef %2)
  %call2 = call ptr @ht_remove(ptr noundef %0, ptr noundef %call, i64 noundef %call1)
  ret ptr %call2
}

; Function Attrs: nounwind uwtable
define void @str_set_visit(ptr noundef %ht, ptr noundef %visitor, ptr noundef %context) #0 {
entry:
  %ht.addr = alloca ptr, align 8
  %visitor.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !4
  store ptr %visitor, ptr %visitor.addr, align 8, !tbaa !4
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ht.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %visitor.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %context.addr, align 8, !tbaa !4
  call void @ht_visit(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ht_default_hash_function(ptr noundef %key, i64 noundef %len) #1 {
entry:
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %out = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #10
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %1 = load i64, ptr %len.addr, align 8, !tbaa !11
  call void @cmetrohash64_1(ptr noundef %0, i64 noundef %1, i32 noundef 795425618, ptr noundef %out)
  %2 = load i64, ptr %out, align 8, !tbaa !11
  %conv = trunc i64 %2 to i32
  %conv1 = zext i32 %conv to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #10
  ret i64 %conv1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ht_match(ptr noundef %key, i64 noundef %len, ptr noundef %item) #1 {
entry:
  %key.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %item.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  store ptr %item, ptr %item.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %item.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !11
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #13
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @cmetrohash64_1(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
declare void @free(ptr noundef) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"hash_table", !5, i64 0, !5, i64 8, !10, i64 16, !10, i64 24}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !10, i64 24}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!9, !5, i64 8}
!17 = !{!9, !10, i64 16}
!18 = distinct !{!18, !14}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !6, i64 0}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}

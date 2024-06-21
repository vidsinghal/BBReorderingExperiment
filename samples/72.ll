; ModuleID = 'samples/72.bc'
source_filename = "/local-ssd/adios2-oqwmwnnlt5ggw7tvys45na6ehqluzw4g-build/aidengro/spack-stage-adios2-2.9.1-oqwmwnnlt5ggw7tvys45na6ehqluzw4g/spack-src/thirdparty/atl/atl/tclHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tcl_HashTable = type { ptr, [4 x ptr], i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.Tcl_HashEntry = type { ptr, ptr, ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct.Tcl_HashSearch = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [46 x i8] c"malformed bucket chain in Tcl_DeleteHashEntry\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%d entries in table, %d buckets\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"number of buckets with %d entries: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"number of buckets with %d or more entries: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"average search distance for entry: %.1f\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"called Tcl_FindHashEntry on deleted table\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"called Tcl_CreateHashEntry on deleted table\00", align 1
@stderr = external global ptr, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"Hash panic: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @Tcl_InitHashTable(ptr noundef %tablePtr, i32 noundef %keyType) #0 {
entry:
  %tablePtr.addr = alloca ptr, align 8
  %keyType.addr = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store i32 %keyType, ptr %keyType.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %staticBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x ptr], ptr %staticBuckets, i64 0, i64 0
  %1 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %1, i32 0, i32 0
  store ptr %arraydecay, ptr %buckets, align 8, !tbaa !10
  %2 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %staticBuckets1 = getelementptr inbounds %struct.Tcl_HashTable, ptr %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %staticBuckets1, i64 0, i64 1
  store ptr null, ptr %arrayidx, align 8, !tbaa !4
  %3 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %staticBuckets2 = getelementptr inbounds %struct.Tcl_HashTable, ptr %3, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [4 x ptr], ptr %staticBuckets2, i64 0, i64 0
  store ptr null, ptr %arrayidx3, align 8, !tbaa !4
  %4 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %staticBuckets4 = getelementptr inbounds %struct.Tcl_HashTable, ptr %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %staticBuckets4, i64 0, i64 3
  store ptr null, ptr %arrayidx5, align 8, !tbaa !4
  %5 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %staticBuckets6 = getelementptr inbounds %struct.Tcl_HashTable, ptr %5, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %staticBuckets6, i64 0, i64 2
  store ptr null, ptr %arrayidx7, align 8, !tbaa !4
  %6 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %6, i32 0, i32 2
  store i32 4, ptr %numBuckets, align 8, !tbaa !12
  %7 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries = getelementptr inbounds %struct.Tcl_HashTable, ptr %7, i32 0, i32 3
  store i32 0, ptr %numEntries, align 4, !tbaa !13
  %8 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %rebuildSize = getelementptr inbounds %struct.Tcl_HashTable, ptr %8, i32 0, i32 4
  store i32 12, ptr %rebuildSize, align 8, !tbaa !14
  %9 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift = getelementptr inbounds %struct.Tcl_HashTable, ptr %9, i32 0, i32 5
  store i32 28, ptr %downShift, align 4, !tbaa !15
  %10 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %10, i32 0, i32 6
  store i32 3, ptr %mask, align 8, !tbaa !16
  %11 = load i32, ptr %keyType.addr, align 4, !tbaa !8
  %12 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType8 = getelementptr inbounds %struct.Tcl_HashTable, ptr %12, i32 0, i32 7
  store i32 %11, ptr %keyType8, align 4, !tbaa !17
  %13 = load i32, ptr %keyType.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %findProc = getelementptr inbounds %struct.Tcl_HashTable, ptr %14, i32 0, i32 8
  store ptr @StringFind, ptr %findProc, align 8, !tbaa !18
  %15 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %createProc = getelementptr inbounds %struct.Tcl_HashTable, ptr %15, i32 0, i32 9
  store ptr @StringCreate, ptr %createProc, align 8, !tbaa !19
  br label %if.end16

if.else:                                          ; preds = %entry
  %16 = load i32, ptr %keyType.addr, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %16, 1
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %findProc11 = getelementptr inbounds %struct.Tcl_HashTable, ptr %17, i32 0, i32 8
  store ptr @OneWordFind, ptr %findProc11, align 8, !tbaa !18
  %18 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %createProc12 = getelementptr inbounds %struct.Tcl_HashTable, ptr %18, i32 0, i32 9
  store ptr @OneWordCreate, ptr %createProc12, align 8, !tbaa !19
  br label %if.end

if.else13:                                        ; preds = %if.else
  %19 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %findProc14 = getelementptr inbounds %struct.Tcl_HashTable, ptr %19, i32 0, i32 8
  store ptr @ArrayFind, ptr %findProc14, align 8, !tbaa !18
  %20 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %createProc15 = getelementptr inbounds %struct.Tcl_HashTable, ptr %20, i32 0, i32 9
  store ptr @ArrayCreate, ptr %createProc15, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then10
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @StringFind(ptr noundef %tablePtr, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @HashString(ptr noundef %0)
  %1 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %mask, align 8, !tbaa !16
  %and = and i32 %call, %2
  store i32 %and, ptr %index, align 4, !tbaa !8
  %3 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %buckets, align 8, !tbaa !10
  %5 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %6, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %7 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %key.addr, align 8, !tbaa !4
  store ptr %8, ptr %p1, align 8, !tbaa !4
  %9 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key1 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %9, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %key1, i64 0, i64 0
  store ptr %arraydecay, ptr %p2, align 8, !tbaa !4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %10 = load ptr, ptr %p1, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !20
  %conv = sext i8 %11 to i32
  %12 = load ptr, ptr %p2, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !20
  %conv3 = sext i8 %13 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond2
  br label %for.end

if.end:                                           ; preds = %for.cond2
  %14 = load ptr, ptr %p1, align 8, !tbaa !4
  %15 = load i8, ptr %14, align 1, !tbaa !20
  %conv6 = sext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %16 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %17 = load ptr, ptr %p1, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %p1, align 8, !tbaa !4
  %18 = load ptr, ptr %p2, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr11, ptr %p2, align 8, !tbaa !4
  br label %for.cond2

for.end:                                          ; preds = %if.then
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %19 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  store ptr %20, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end13, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal ptr @StringCreate(ptr noundef %tablePtr, ptr noundef %key, ptr noundef %newPtr) #0 {
entry:
  %retval = alloca ptr, align 8
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %newPtr.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %newPtr, ptr %newPtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @HashString(ptr noundef %0)
  %1 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %mask, align 8, !tbaa !16
  %and = and i32 %call, %2
  store i32 %and, ptr %index, align 4, !tbaa !8
  %3 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %buckets, align 8, !tbaa !10
  %5 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %6, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %7 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %key.addr, align 8, !tbaa !4
  store ptr %8, ptr %p1, align 8, !tbaa !4
  %9 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key1 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %9, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %key1, i64 0, i64 0
  store ptr %arraydecay, ptr %p2, align 8, !tbaa !4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %10 = load ptr, ptr %p1, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !20
  %conv = sext i8 %11 to i32
  %12 = load ptr, ptr %p2, align 8, !tbaa !4
  %13 = load i8, ptr %12, align 1, !tbaa !20
  %conv3 = sext i8 %13 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond2
  br label %for.end

if.end:                                           ; preds = %for.cond2
  %14 = load ptr, ptr %p1, align 8, !tbaa !4
  %15 = load i8, ptr %14, align 1, !tbaa !20
  %conv6 = sext i8 %15 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %16 = load ptr, ptr %newPtr.addr, align 8, !tbaa !4
  store i32 0, ptr %16, align 4, !tbaa !8
  %17 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %18 = load ptr, ptr %p1, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p1, align 8, !tbaa !4
  %19 = load ptr, ptr %p2, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr11, ptr %p2, align 8, !tbaa !4
  br label %for.cond2

for.end:                                          ; preds = %if.then
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %20 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  store ptr %21, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  %22 = load ptr, ptr %newPtr.addr, align 8, !tbaa !4
  store i32 1, ptr %22, align 4, !tbaa !8
  %23 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call14 = call i64 @strlen(ptr noundef %23) #8
  %add = add i64 40, %call14
  %sub = sub i64 %add, 7
  %conv15 = trunc i64 %sub to i32
  %conv16 = zext i32 %conv15 to i64
  %call17 = call noalias ptr @malloc(i64 noundef %conv16) #9
  store ptr %call17, ptr %hPtr, align 8, !tbaa !4
  %24 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %tablePtr18 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %25, i32 0, i32 1
  store ptr %24, ptr %tablePtr18, align 8, !tbaa !23
  %26 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets19 = getelementptr inbounds %struct.Tcl_HashTable, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %buckets19, align 8, !tbaa !10
  %28 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %27, i64 %idxprom20
  %29 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %29, i32 0, i32 2
  store ptr %arrayidx21, ptr %bucketPtr, align 8, !tbaa !24
  %30 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr22 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %bucketPtr22, align 8, !tbaa !24
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %33 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr23 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %33, i32 0, i32 0
  store ptr %32, ptr %nextPtr23, align 8, !tbaa !21
  %34 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %clientData = getelementptr inbounds %struct.Tcl_HashEntry, ptr %34, i32 0, i32 3
  store ptr null, ptr %clientData, align 8, !tbaa !25
  %35 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key24 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %35, i32 0, i32 4
  %arraydecay25 = getelementptr inbounds [4 x i8], ptr %key24, i64 0, i64 0
  %36 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call26 = call ptr @strcpy(ptr noundef %arraydecay25, ptr noundef %36) #7
  %37 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %38 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr27 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %bucketPtr27, align 8, !tbaa !24
  store ptr %37, ptr %39, align 8, !tbaa !4
  %40 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries = getelementptr inbounds %struct.Tcl_HashTable, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %numEntries, align 4, !tbaa !13
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %numEntries, align 4, !tbaa !13
  %42 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries28 = getelementptr inbounds %struct.Tcl_HashTable, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %numEntries28, align 4, !tbaa !13
  %44 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %rebuildSize = getelementptr inbounds %struct.Tcl_HashTable, ptr %44, i32 0, i32 4
  %45 = load i32, ptr %rebuildSize, align 8, !tbaa !14
  %cmp29 = icmp sge i32 %43, %45
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.end13
  %46 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  call void @RebuildTable(ptr noundef %46)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.end13
  %47 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  %48 = load ptr, ptr %retval, align 8
  ret ptr %48
}

; Function Attrs: nounwind uwtable
define internal ptr @OneWordFind(ptr noundef %tablePtr, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  %mul = mul nsw i64 %1, 1103515245
  %2 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift = getelementptr inbounds %struct.Tcl_HashTable, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %downShift, align 4, !tbaa !15
  %sh_prom = zext i32 %3 to i64
  %shr = ashr i64 %mul, %sh_prom
  %4 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %mask, align 8, !tbaa !16
  %conv = sext i32 %5 to i64
  %and = and i64 %shr, %conv
  %conv1 = trunc i64 %and to i32
  store i32 %conv1, ptr %index, align 4, !tbaa !8
  %6 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %buckets, align 8, !tbaa !10
  %8 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %9, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp = icmp ne ptr %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key3 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %key3, align 8, !tbaa !20
  %13 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %12, %13
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  store ptr %16, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal ptr @OneWordCreate(ptr noundef %tablePtr, ptr noundef %key, ptr noundef %newPtr) #0 {
entry:
  %retval = alloca ptr, align 8
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %newPtr.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %newPtr, ptr %newPtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  %mul = mul nsw i64 %1, 1103515245
  %2 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift = getelementptr inbounds %struct.Tcl_HashTable, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %downShift, align 4, !tbaa !15
  %sh_prom = zext i32 %3 to i64
  %shr = ashr i64 %mul, %sh_prom
  %4 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %mask, align 8, !tbaa !16
  %conv = sext i32 %5 to i64
  %and = and i64 %shr, %conv
  %conv1 = trunc i64 %and to i32
  store i32 %conv1, ptr %index, align 4, !tbaa !8
  %6 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %buckets, align 8, !tbaa !10
  %8 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %9, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp = icmp ne ptr %10, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key3 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %key3, align 8, !tbaa !20
  %13 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %12, %13
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %newPtr.addr, align 8, !tbaa !4
  store i32 0, ptr %14, align 4, !tbaa !8
  %15 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  store ptr %17, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %newPtr.addr, align 8, !tbaa !4
  store i32 1, ptr %18, align 4, !tbaa !8
  %call = call noalias ptr @malloc(i64 noundef 40) #9
  store ptr %call, ptr %hPtr, align 8, !tbaa !4
  %19 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %tablePtr6 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %20, i32 0, i32 1
  store ptr %19, ptr %tablePtr6, align 8, !tbaa !23
  %21 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets7 = getelementptr inbounds %struct.Tcl_HashTable, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %buckets7, align 8, !tbaa !10
  %23 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom8 = sext i32 %23 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %22, i64 %idxprom8
  %24 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %24, i32 0, i32 2
  store ptr %arrayidx9, ptr %bucketPtr, align 8, !tbaa !24
  %25 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr10 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %bucketPtr10, align 8, !tbaa !24
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %28 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr11 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %28, i32 0, i32 0
  store ptr %27, ptr %nextPtr11, align 8, !tbaa !21
  %29 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %clientData = getelementptr inbounds %struct.Tcl_HashEntry, ptr %29, i32 0, i32 3
  store ptr null, ptr %clientData, align 8, !tbaa !25
  %30 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key12 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %31, i32 0, i32 4
  store ptr %30, ptr %key12, align 8, !tbaa !20
  %32 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %33 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr13 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %bucketPtr13, align 8, !tbaa !24
  store ptr %32, ptr %34, align 8, !tbaa !4
  %35 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries = getelementptr inbounds %struct.Tcl_HashTable, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %numEntries, align 4, !tbaa !13
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %numEntries, align 4, !tbaa !13
  %37 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries14 = getelementptr inbounds %struct.Tcl_HashTable, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %numEntries14, align 4, !tbaa !13
  %39 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %rebuildSize = getelementptr inbounds %struct.Tcl_HashTable, ptr %39, i32 0, i32 4
  %40 = load i32, ptr %rebuildSize, align 8, !tbaa !14
  %cmp15 = icmp sge i32 %38, %40
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.end
  %41 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  call void @RebuildTable(ptr noundef %41)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.end
  %42 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
}

; Function Attrs: nounwind uwtable
define internal ptr @ArrayFind(ptr noundef %tablePtr, ptr noundef %key) #0 {
entry:
  %retval = alloca ptr, align 8
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %arrayPtr = alloca ptr, align 8
  %iPtr1 = alloca ptr, align 8
  %iPtr2 = alloca ptr, align 8
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arrayPtr) #7
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  store ptr %0, ptr %arrayPtr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %iPtr1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %iPtr2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7
  store i32 0, ptr %index, align 4, !tbaa !8
  %1 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType = getelementptr inbounds %struct.Tcl_HashTable, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %keyType, align 4, !tbaa !17
  store i32 %2, ptr %count, align 4, !tbaa !8
  %3 = load ptr, ptr %arrayPtr, align 8, !tbaa !4
  store ptr %3, ptr %iPtr1, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %count, align 4, !tbaa !8
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load i32, ptr %index, align 4, !tbaa !8
  %add = add nsw i32 %7, %6
  store i32 %add, ptr %index, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %count, align 4, !tbaa !8
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %count, align 4, !tbaa !8
  %9 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %iPtr1, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %index, align 4, !tbaa !8
  %conv = sext i32 %10 to i64
  %mul = mul nsw i64 %conv, 1103515245
  %11 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift = getelementptr inbounds %struct.Tcl_HashTable, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %downShift, align 4, !tbaa !15
  %sh_prom = zext i32 %12 to i64
  %shr = ashr i64 %mul, %sh_prom
  %13 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %mask, align 8, !tbaa !16
  %conv1 = sext i32 %14 to i64
  %and = and i64 %shr, %conv1
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, ptr %index, align 4, !tbaa !8
  %15 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %buckets, align 8, !tbaa !10
  %17 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %18, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc21, %for.end
  %19 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %19, null
  br i1 %cmp4, label %for.body6, label %for.end22

for.body6:                                        ; preds = %for.cond3
  %20 = load ptr, ptr %arrayPtr, align 8, !tbaa !4
  store ptr %20, ptr %iPtr1, align 8, !tbaa !4
  %21 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key7 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %21, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i32], ptr %key7, i64 0, i64 0
  store ptr %arraydecay, ptr %iPtr2, align 8, !tbaa !4
  %22 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType8 = getelementptr inbounds %struct.Tcl_HashTable, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %keyType8, align 4, !tbaa !17
  store i32 %23, ptr %count, align 4, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.body6
  %24 = load i32, ptr %count, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %24, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond9
  %25 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.cond9
  %26 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %28 = load ptr, ptr %iPtr2, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %cmp12 = icmp ne i32 %27, %29
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  br label %for.end20

if.end15:                                         ; preds = %if.end
  br label %for.inc16

for.inc16:                                        ; preds = %if.end15
  %30 = load i32, ptr %count, align 4, !tbaa !8
  %dec17 = add nsw i32 %30, -1
  store i32 %dec17, ptr %count, align 4, !tbaa !8
  %31 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds i32, ptr %31, i32 1
  store ptr %incdec.ptr18, ptr %iPtr1, align 8, !tbaa !4
  %32 = load ptr, ptr %iPtr2, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %incdec.ptr19, ptr %iPtr2, align 8, !tbaa !4
  br label %for.cond9

for.end20:                                        ; preds = %if.then14
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %33 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  store ptr %34, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond3

for.end22:                                        ; preds = %for.cond3
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iPtr2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iPtr1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arrayPtr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define internal ptr @ArrayCreate(ptr noundef %tablePtr, ptr noundef %key, ptr noundef %newPtr) #0 {
entry:
  %retval = alloca ptr, align 8
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %newPtr.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %arrayPtr = alloca ptr, align 8
  %iPtr1 = alloca ptr, align 8
  %iPtr2 = alloca ptr, align 8
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %newPtr, ptr %newPtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arrayPtr) #7
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  store ptr %0, ptr %arrayPtr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %iPtr1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %iPtr2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7
  store i32 0, ptr %index, align 4, !tbaa !8
  %1 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType = getelementptr inbounds %struct.Tcl_HashTable, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %keyType, align 4, !tbaa !17
  store i32 %2, ptr %count, align 4, !tbaa !8
  %3 = load ptr, ptr %arrayPtr, align 8, !tbaa !4
  store ptr %3, ptr %iPtr1, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %count, align 4, !tbaa !8
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %7 = load i32, ptr %index, align 4, !tbaa !8
  %add = add nsw i32 %7, %6
  store i32 %add, ptr %index, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %count, align 4, !tbaa !8
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %count, align 4, !tbaa !8
  %9 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %iPtr1, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %index, align 4, !tbaa !8
  %conv = sext i32 %10 to i64
  %mul = mul nsw i64 %conv, 1103515245
  %11 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift = getelementptr inbounds %struct.Tcl_HashTable, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %downShift, align 4, !tbaa !15
  %sh_prom = zext i32 %12 to i64
  %shr = ashr i64 %mul, %sh_prom
  %13 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %mask, align 8, !tbaa !16
  %conv1 = sext i32 %14 to i64
  %and = and i64 %shr, %conv1
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, ptr %index, align 4, !tbaa !8
  %15 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %buckets, align 8, !tbaa !10
  %17 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %18, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc21, %for.end
  %19 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %19, null
  br i1 %cmp4, label %for.body6, label %for.end22

for.body6:                                        ; preds = %for.cond3
  %20 = load ptr, ptr %arrayPtr, align 8, !tbaa !4
  store ptr %20, ptr %iPtr1, align 8, !tbaa !4
  %21 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key7 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %21, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i32], ptr %key7, i64 0, i64 0
  store ptr %arraydecay, ptr %iPtr2, align 8, !tbaa !4
  %22 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType8 = getelementptr inbounds %struct.Tcl_HashTable, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %keyType8, align 4, !tbaa !17
  store i32 %23, ptr %count, align 4, !tbaa !8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.body6
  %24 = load i32, ptr %count, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %24, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond9
  %25 = load ptr, ptr %newPtr.addr, align 8, !tbaa !4
  store i32 0, ptr %25, align 4, !tbaa !8
  %26 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %26, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.cond9
  %27 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %29 = load ptr, ptr %iPtr2, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  %cmp12 = icmp ne i32 %28, %30
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  br label %for.end20

if.end15:                                         ; preds = %if.end
  br label %for.inc16

for.inc16:                                        ; preds = %if.end15
  %31 = load i32, ptr %count, align 4, !tbaa !8
  %dec17 = add nsw i32 %31, -1
  store i32 %dec17, ptr %count, align 4, !tbaa !8
  %32 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %incdec.ptr18, ptr %iPtr1, align 8, !tbaa !4
  %33 = load ptr, ptr %iPtr2, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i32, ptr %33, i32 1
  store ptr %incdec.ptr19, ptr %iPtr2, align 8, !tbaa !4
  br label %for.cond9

for.end20:                                        ; preds = %if.then14
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %34 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  store ptr %35, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond3

for.end22:                                        ; preds = %for.cond3
  %36 = load ptr, ptr %newPtr.addr, align 8, !tbaa !4
  store i32 1, ptr %36, align 4, !tbaa !8
  %37 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType23 = getelementptr inbounds %struct.Tcl_HashTable, ptr %37, i32 0, i32 7
  %38 = load i32, ptr %keyType23, align 4, !tbaa !17
  %conv24 = sext i32 %38 to i64
  %mul25 = mul i64 %conv24, 4
  %add26 = add i64 40, %mul25
  %sub = sub i64 %add26, 4
  %conv27 = trunc i64 %sub to i32
  %conv28 = zext i32 %conv27 to i64
  %call = call noalias ptr @malloc(i64 noundef %conv28) #9
  store ptr %call, ptr %hPtr, align 8, !tbaa !4
  %39 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %tablePtr29 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %40, i32 0, i32 1
  store ptr %39, ptr %tablePtr29, align 8, !tbaa !23
  %41 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets30 = getelementptr inbounds %struct.Tcl_HashTable, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %buckets30, align 8, !tbaa !10
  %43 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %42, i64 %idxprom31
  %44 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %44, i32 0, i32 2
  store ptr %arrayidx32, ptr %bucketPtr, align 8, !tbaa !24
  %45 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr33 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %bucketPtr33, align 8, !tbaa !24
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %48 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr34 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %48, i32 0, i32 0
  store ptr %47, ptr %nextPtr34, align 8, !tbaa !21
  %49 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %clientData = getelementptr inbounds %struct.Tcl_HashEntry, ptr %49, i32 0, i32 3
  store ptr null, ptr %clientData, align 8, !tbaa !25
  %50 = load ptr, ptr %arrayPtr, align 8, !tbaa !4
  store ptr %50, ptr %iPtr1, align 8, !tbaa !4
  %51 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key35 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %51, i32 0, i32 4
  %arraydecay36 = getelementptr inbounds [1 x i32], ptr %key35, i64 0, i64 0
  store ptr %arraydecay36, ptr %iPtr2, align 8, !tbaa !4
  %52 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType37 = getelementptr inbounds %struct.Tcl_HashTable, ptr %52, i32 0, i32 7
  %53 = load i32, ptr %keyType37, align 4, !tbaa !17
  store i32 %53, ptr %count, align 4, !tbaa !8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc42, %for.end22
  %54 = load i32, ptr %count, align 4, !tbaa !8
  %cmp39 = icmp sgt i32 %54, 0
  br i1 %cmp39, label %for.body41, label %for.end46

for.body41:                                       ; preds = %for.cond38
  %55 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %57 = load ptr, ptr %iPtr2, align 8, !tbaa !4
  store i32 %56, ptr %57, align 4, !tbaa !8
  br label %for.inc42

for.inc42:                                        ; preds = %for.body41
  %58 = load i32, ptr %count, align 4, !tbaa !8
  %dec43 = add nsw i32 %58, -1
  store i32 %dec43, ptr %count, align 4, !tbaa !8
  %59 = load ptr, ptr %iPtr1, align 8, !tbaa !4
  %incdec.ptr44 = getelementptr inbounds i32, ptr %59, i32 1
  store ptr %incdec.ptr44, ptr %iPtr1, align 8, !tbaa !4
  %60 = load ptr, ptr %iPtr2, align 8, !tbaa !4
  %incdec.ptr45 = getelementptr inbounds i32, ptr %60, i32 1
  store ptr %incdec.ptr45, ptr %iPtr2, align 8, !tbaa !4
  br label %for.cond38

for.end46:                                        ; preds = %for.cond38
  %61 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %62 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr47 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %bucketPtr47, align 8, !tbaa !24
  store ptr %61, ptr %63, align 8, !tbaa !4
  %64 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries = getelementptr inbounds %struct.Tcl_HashTable, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %numEntries, align 4, !tbaa !13
  %inc = add nsw i32 %65, 1
  store i32 %inc, ptr %numEntries, align 4, !tbaa !13
  %66 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries48 = getelementptr inbounds %struct.Tcl_HashTable, ptr %66, i32 0, i32 3
  %67 = load i32, ptr %numEntries48, align 4, !tbaa !13
  %68 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %rebuildSize = getelementptr inbounds %struct.Tcl_HashTable, ptr %68, i32 0, i32 4
  %69 = load i32, ptr %rebuildSize, align 8, !tbaa !14
  %cmp49 = icmp sge i32 %67, %69
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end46
  %70 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  call void @RebuildTable(ptr noundef %70)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %for.end46
  %71 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %71, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iPtr2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iPtr1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arrayPtr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  %72 = load ptr, ptr %retval, align 8
  ret ptr %72
}

; Function Attrs: nounwind uwtable
define void @Tcl_DeleteHashEntry(ptr noundef %entryPtr) #0 {
entry:
  %entryPtr.addr = alloca ptr, align 8
  %prevPtr = alloca ptr, align 8
  store ptr %entryPtr, ptr %entryPtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %prevPtr) #7
  %0 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %bucketPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %bucketPtr, align 8, !tbaa !24
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %3 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  %6 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %bucketPtr1 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %bucketPtr1, align 8, !tbaa !24
  store ptr %5, ptr %7, align 8, !tbaa !4
  br label %if.end12

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %bucketPtr2 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %bucketPtr2, align 8, !tbaa !24
  %10 = load ptr, ptr %9, align 8, !tbaa !4
  store ptr %10, ptr %prevPtr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load ptr, ptr %prevPtr, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %11, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.cond
  call void @tcl_panic(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.cond
  %12 = load ptr, ptr %prevPtr, align 8, !tbaa !4
  %nextPtr5 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %nextPtr5, align 8, !tbaa !21
  %14 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %13, %14
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %15 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %nextPtr8 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %nextPtr8, align 8, !tbaa !21
  %17 = load ptr, ptr %prevPtr, align 8, !tbaa !4
  %nextPtr9 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %17, i32 0, i32 0
  store ptr %16, ptr %nextPtr9, align 8, !tbaa !21
  br label %for.end

if.end10:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %18 = load ptr, ptr %prevPtr, align 8, !tbaa !4
  %nextPtr11 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %nextPtr11, align 8, !tbaa !21
  store ptr %19, ptr %prevPtr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %if.then7
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then
  %20 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  %tablePtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %tablePtr, align 8, !tbaa !23
  %numEntries = getelementptr inbounds %struct.Tcl_HashTable, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %numEntries, align 4, !tbaa !13
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %numEntries, align 4, !tbaa !13
  %23 = load ptr, ptr %entryPtr.addr, align 8, !tbaa !4
  call void @free(ptr noundef %23) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %prevPtr) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @tcl_panic(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !4
  %0 = load ptr, ptr @stderr, align 8, !tbaa !4
  %1 = load ptr, ptr %str.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.7, ptr noundef %1)
  call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @Tcl_DeleteHashTable(ptr noundef %tablePtr) #0 {
entry:
  %tablePtr.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %nextPtr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nextPtr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %numBuckets, align 8, !tbaa !12
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %buckets, align 8, !tbaa !10
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %6, ptr %hPtr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %7, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr2 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %nextPtr2, align 8, !tbaa !21
  store ptr %9, ptr %nextPtr, align 8, !tbaa !4
  %10 = load ptr, ptr %hPtr, align 8, !tbaa !4
  call void @free(ptr noundef %10) #7
  %11 = load ptr, ptr %nextPtr, align 8, !tbaa !4
  store ptr %11, ptr %hPtr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets3 = getelementptr inbounds %struct.Tcl_HashTable, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %buckets3, align 8, !tbaa !10
  %15 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %staticBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %15, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x ptr], ptr %staticBuckets, i64 0, i64 0
  %cmp4 = icmp ne ptr %14, %arraydecay
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets5 = getelementptr inbounds %struct.Tcl_HashTable, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %buckets5, align 8, !tbaa !10
  call void @free(ptr noundef %17) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %18 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %findProc = getelementptr inbounds %struct.Tcl_HashTable, ptr %18, i32 0, i32 8
  store ptr @BogusFind, ptr %findProc, align 8, !tbaa !18
  %19 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %createProc = getelementptr inbounds %struct.Tcl_HashTable, ptr %19, i32 0, i32 9
  store ptr @BogusCreate, ptr %createProc, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nextPtr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @BogusFind(ptr noundef %tablePtr, ptr noundef %key) #0 {
entry:
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @tcl_panic(ptr noundef @.str.5)
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @BogusCreate(ptr noundef %tablePtr, ptr noundef %key, ptr noundef %newPtr) #0 {
entry:
  %tablePtr.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %newPtr.addr = alloca ptr, align 8
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %newPtr, ptr %newPtr.addr, align 8, !tbaa !4
  call void @tcl_panic(ptr noundef @.str.6)
  ret ptr null
}

; Function Attrs: nounwind uwtable
define ptr @Tcl_FirstHashEntry(ptr noundef %tablePtr, ptr noundef %searchPtr) #0 {
entry:
  %tablePtr.addr = alloca ptr, align 8
  %searchPtr.addr = alloca ptr, align 8
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  store ptr %searchPtr, ptr %searchPtr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %tablePtr1 = getelementptr inbounds %struct.Tcl_HashSearch, ptr %1, i32 0, i32 0
  store ptr %0, ptr %tablePtr1, align 8, !tbaa !26
  %2 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextIndex = getelementptr inbounds %struct.Tcl_HashSearch, ptr %2, i32 0, i32 1
  store i32 0, ptr %nextIndex, align 8, !tbaa !28
  %3 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextEntryPtr = getelementptr inbounds %struct.Tcl_HashSearch, ptr %3, i32 0, i32 2
  store ptr null, ptr %nextEntryPtr, align 8, !tbaa !29
  %4 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %call = call ptr @Tcl_NextHashEntry(ptr noundef %4)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define ptr @Tcl_NextHashEntry(ptr noundef %searchPtr) #0 {
entry:
  %retval = alloca ptr, align 8
  %searchPtr.addr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %searchPtr, ptr %searchPtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextEntryPtr = getelementptr inbounds %struct.Tcl_HashSearch, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %nextEntryPtr, align 8, !tbaa !29
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextIndex = getelementptr inbounds %struct.Tcl_HashSearch, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nextIndex, align 8, !tbaa !28
  %4 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %tablePtr = getelementptr inbounds %struct.Tcl_HashSearch, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tablePtr, align 8, !tbaa !26
  %numBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %numBuckets, align 8, !tbaa !12
  %cmp1 = icmp sge i32 %3, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %tablePtr2 = getelementptr inbounds %struct.Tcl_HashSearch, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tablePtr2, align 8, !tbaa !26
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %buckets, align 8, !tbaa !10
  %10 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextIndex3 = getelementptr inbounds %struct.Tcl_HashSearch, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nextIndex3, align 8, !tbaa !28
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %13 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextEntryPtr4 = getelementptr inbounds %struct.Tcl_HashSearch, ptr %13, i32 0, i32 2
  store ptr %12, ptr %nextEntryPtr4, align 8, !tbaa !29
  %14 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextIndex5 = getelementptr inbounds %struct.Tcl_HashSearch, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nextIndex5, align 8, !tbaa !28
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %nextIndex5, align 8, !tbaa !28
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextEntryPtr6 = getelementptr inbounds %struct.Tcl_HashSearch, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %nextEntryPtr6, align 8, !tbaa !29
  store ptr %17, ptr %hPtr, align 8, !tbaa !4
  %18 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  %20 = load ptr, ptr %searchPtr.addr, align 8, !tbaa !4
  %nextEntryPtr7 = getelementptr inbounds %struct.Tcl_HashSearch, ptr %20, i32 0, i32 2
  store ptr %19, ptr %nextEntryPtr7, align 8, !tbaa !29
  %21 = load ptr, ptr %hPtr, align 8, !tbaa !4
  store ptr %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

; Function Attrs: nounwind uwtable
define ptr @Tcl_HashStats(ptr noundef %tablePtr) #0 {
entry:
  %tablePtr.addr = alloca ptr, align 8
  %count = alloca [10 x i32], align 16
  %overflow = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %average = alloca double, align 8
  %tmp = alloca double, align 8
  %hPtr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 40, ptr %count) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %overflow) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %average) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %count, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %overflow, align 4, !tbaa !8
  store double 0.000000e+00, ptr %average, align 8, !tbaa !30
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %4 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %numBuckets, align 8, !tbaa !12
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !8
  %6 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %buckets, align 8, !tbaa !10
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %7, i64 %idxprom4
  %9 = load ptr, ptr %arrayidx5, align 8, !tbaa !4
  store ptr %9, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc10, %for.body3
  %10 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp7 = icmp ne ptr %10, null
  br i1 %cmp7, label %for.body8, label %for.end11

for.body8:                                        ; preds = %for.cond6
  %11 = load i32, ptr %j, align 4, !tbaa !8
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, ptr %j, align 4, !tbaa !8
  br label %for.inc10

for.inc10:                                        ; preds = %for.body8
  %12 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  store ptr %13, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond6

for.end11:                                        ; preds = %for.cond6
  %14 = load i32, ptr %j, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %14, 10
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %for.end11
  %15 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], ptr %count, i64 0, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4, !tbaa !8
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, ptr %arrayidx14, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %for.end11
  %17 = load i32, ptr %overflow, align 4, !tbaa !8
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, ptr %overflow, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, ptr %j, align 4, !tbaa !8
  %conv = sitofp i32 %18 to double
  store double %conv, ptr %tmp, align 8, !tbaa !30
  %19 = load double, ptr %tmp, align 8, !tbaa !30
  %add = fadd double %19, 1.000000e+00
  %20 = load double, ptr %tmp, align 8, !tbaa !30
  %21 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries = getelementptr inbounds %struct.Tcl_HashTable, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %numEntries, align 4, !tbaa !13
  %conv17 = sitofp i32 %22 to double
  %div = fdiv double %20, %conv17
  %mul = fmul double %add, %div
  %div18 = fdiv double %mul, 2.000000e+00
  %23 = load double, ptr %average, align 8, !tbaa !30
  %add19 = fadd double %23, %div18
  store double %add19, ptr %average, align 8, !tbaa !30
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !8
  br label %for.cond1

for.end22:                                        ; preds = %for.cond1
  %call = call noalias ptr @malloc(i64 noundef 900) #9
  store ptr %call, ptr %result, align 8, !tbaa !4
  %25 = load ptr, ptr %result, align 8, !tbaa !4
  %26 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numEntries23 = getelementptr inbounds %struct.Tcl_HashTable, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %numEntries23, align 4, !tbaa !13
  %28 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets24 = getelementptr inbounds %struct.Tcl_HashTable, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %numBuckets24, align 8, !tbaa !12
  %call25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %25, ptr noundef @.str.1, i32 noundef %27, i32 noundef %29) #7
  %30 = load ptr, ptr %result, align 8, !tbaa !4
  %31 = load ptr, ptr %result, align 8, !tbaa !4
  %call26 = call i64 @strlen(ptr noundef %31) #8
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %call26
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %for.end22
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %cmp28 = icmp slt i32 %32, 10
  br i1 %cmp28, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond27
  %33 = load ptr, ptr %p, align 8, !tbaa !4
  %34 = load i32, ptr %i, align 4, !tbaa !8
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds [10 x i32], ptr %count, i64 0, i64 %idxprom31
  %36 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %call33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %33, ptr noundef @.str.2, i32 noundef %34, i32 noundef %36) #7
  %37 = load ptr, ptr %p, align 8, !tbaa !4
  %call34 = call i64 @strlen(ptr noundef %37) #8
  %38 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr35 = getelementptr inbounds i8, ptr %38, i64 %call34
  store ptr %add.ptr35, ptr %p, align 8, !tbaa !4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %inc37 = add nsw i32 %39, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !8
  br label %for.cond27

for.end38:                                        ; preds = %for.cond27
  %40 = load ptr, ptr %p, align 8, !tbaa !4
  %41 = load i32, ptr %overflow, align 4, !tbaa !8
  %call39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %40, ptr noundef @.str.3, i32 noundef 10, i32 noundef %41) #7
  %42 = load ptr, ptr %p, align 8, !tbaa !4
  %call40 = call i64 @strlen(ptr noundef %42) #8
  %43 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr41 = getelementptr inbounds i8, ptr %43, i64 %call40
  store ptr %add.ptr41, ptr %p, align 8, !tbaa !4
  %44 = load ptr, ptr %p, align 8, !tbaa !4
  %45 = load double, ptr %average, align 8, !tbaa !30
  %call42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %44, ptr noundef @.str.4, double noundef %45) #7
  %46 = load ptr, ptr %result, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %average) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %overflow) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %count) #7
  ret ptr %46
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @HashString(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #7
  store i32 0, ptr %result, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %string.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !20
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %c, align 4, !tbaa !8
  %2 = load ptr, ptr %string.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %string.addr, align 8, !tbaa !4
  %3 = load i32, ptr %c, align 4, !tbaa !8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = load i32, ptr %result, align 4, !tbaa !8
  %shl = shl i32 %4, 3
  %5 = load i32, ptr %c, align 4, !tbaa !8
  %add = add i32 %shl, %5
  %6 = load i32, ptr %result, align 4, !tbaa !8
  %add2 = add i32 %6, %add
  store i32 %add2, ptr %result, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %if.then
  %7 = load i32, ptr %result, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7
  ret i32 %7
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @RebuildTable(ptr noundef %tablePtr) #0 {
entry:
  %tablePtr.addr = alloca ptr, align 8
  %oldSize = alloca i32, align 4
  %count = alloca i32, align 4
  %index = alloca i32, align 4
  %oldBuckets = alloca ptr, align 8
  %oldChainPtr = alloca ptr, align 8
  %newChainPtr = alloca ptr, align 8
  %hPtr = alloca ptr, align 8
  %iPtr = alloca ptr, align 8
  %count36 = alloca i32, align 4
  store ptr %tablePtr, ptr %tablePtr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldSize) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldBuckets) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldChainPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %newChainPtr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hPtr) #7
  %0 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %numBuckets, align 8, !tbaa !12
  store i32 %1, ptr %oldSize, align 4, !tbaa !8
  %2 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %buckets, align 8, !tbaa !10
  store ptr %3, ptr %oldBuckets, align 8, !tbaa !4
  %4 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets1 = getelementptr inbounds %struct.Tcl_HashTable, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %numBuckets1, align 8, !tbaa !12
  %mul = mul nsw i32 %5, 4
  store i32 %mul, ptr %numBuckets1, align 8, !tbaa !12
  %6 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets2 = getelementptr inbounds %struct.Tcl_HashTable, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %numBuckets2, align 8, !tbaa !12
  %conv = sext i32 %7 to i64
  %mul3 = mul i64 %conv, 8
  %conv4 = trunc i64 %mul3 to i32
  %conv5 = zext i32 %conv4 to i64
  %call = call noalias ptr @malloc(i64 noundef %conv5) #9
  %8 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets6 = getelementptr inbounds %struct.Tcl_HashTable, ptr %8, i32 0, i32 0
  store ptr %call, ptr %buckets6, align 8, !tbaa !10
  %9 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %numBuckets7 = getelementptr inbounds %struct.Tcl_HashTable, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %numBuckets7, align 8, !tbaa !12
  store i32 %10, ptr %count, align 4, !tbaa !8
  %11 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets8 = getelementptr inbounds %struct.Tcl_HashTable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %buckets8, align 8, !tbaa !10
  store ptr %12, ptr %newChainPtr, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, ptr %count, align 4, !tbaa !8
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %newChainPtr, align 8, !tbaa !4
  store ptr null, ptr %14, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %count, align 4, !tbaa !8
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %count, align 4, !tbaa !8
  %16 = load ptr, ptr %newChainPtr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds ptr, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %newChainPtr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %rebuildSize = getelementptr inbounds %struct.Tcl_HashTable, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %rebuildSize, align 8, !tbaa !14
  %mul10 = mul nsw i32 %18, 4
  store i32 %mul10, ptr %rebuildSize, align 8, !tbaa !14
  %19 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift = getelementptr inbounds %struct.Tcl_HashTable, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %downShift, align 4, !tbaa !15
  %sub = sub nsw i32 %20, 2
  store i32 %sub, ptr %downShift, align 4, !tbaa !15
  %21 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask = getelementptr inbounds %struct.Tcl_HashTable, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %mask, align 8, !tbaa !16
  %shl = shl i32 %22, 2
  %add = add nsw i32 %shl, 3
  %23 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask11 = getelementptr inbounds %struct.Tcl_HashTable, ptr %23, i32 0, i32 6
  store i32 %add, ptr %mask11, align 8, !tbaa !16
  %24 = load ptr, ptr %oldBuckets, align 8, !tbaa !4
  store ptr %24, ptr %oldChainPtr, align 8, !tbaa !4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc65, %for.end
  %25 = load i32, ptr %oldSize, align 4, !tbaa !8
  %cmp13 = icmp sgt i32 %25, 0
  br i1 %cmp13, label %for.body15, label %for.end68

for.body15:                                       ; preds = %for.cond12
  %26 = load ptr, ptr %oldChainPtr, align 8, !tbaa !4
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  store ptr %27, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc63, %for.body15
  %28 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %28, null
  br i1 %cmp17, label %for.body19, label %for.end64

for.body19:                                       ; preds = %for.cond16
  %29 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %nextPtr, align 8, !tbaa !21
  %31 = load ptr, ptr %oldChainPtr, align 8, !tbaa !4
  store ptr %30, ptr %31, align 8, !tbaa !4
  %32 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType = getelementptr inbounds %struct.Tcl_HashTable, ptr %32, i32 0, i32 7
  %33 = load i32, ptr %keyType, align 4, !tbaa !17
  %cmp20 = icmp eq i32 %33, 0
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body19
  %34 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.Tcl_HashEntry, ptr %34, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i8], ptr %key, i64 0, i64 0
  %call22 = call i32 @HashString(ptr noundef %arraydecay)
  %35 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask23 = getelementptr inbounds %struct.Tcl_HashTable, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %mask23, align 8, !tbaa !16
  %and = and i32 %call22, %36
  store i32 %and, ptr %index, align 4, !tbaa !8
  br label %if.end58

if.else:                                          ; preds = %for.body19
  %37 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType24 = getelementptr inbounds %struct.Tcl_HashTable, ptr %37, i32 0, i32 7
  %38 = load i32, ptr %keyType24, align 4, !tbaa !17
  %cmp25 = icmp eq i32 %38, 1
  br i1 %cmp25, label %if.then27, label %if.else35

if.then27:                                        ; preds = %if.else
  %39 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key28 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %key28, align 8, !tbaa !20
  %41 = ptrtoint ptr %40 to i64
  %mul29 = mul nsw i64 %41, 1103515245
  %42 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift30 = getelementptr inbounds %struct.Tcl_HashTable, ptr %42, i32 0, i32 5
  %43 = load i32, ptr %downShift30, align 4, !tbaa !15
  %sh_prom = zext i32 %43 to i64
  %shr = ashr i64 %mul29, %sh_prom
  %44 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask31 = getelementptr inbounds %struct.Tcl_HashTable, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %mask31, align 8, !tbaa !16
  %conv32 = sext i32 %45 to i64
  %and33 = and i64 %shr, %conv32
  %conv34 = trunc i64 %and33 to i32
  store i32 %conv34, ptr %index, align 4, !tbaa !8
  br label %if.end

if.else35:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %iPtr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %count36) #7
  store i32 0, ptr %index, align 4, !tbaa !8
  %46 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %keyType37 = getelementptr inbounds %struct.Tcl_HashTable, ptr %46, i32 0, i32 7
  %47 = load i32, ptr %keyType37, align 4, !tbaa !17
  store i32 %47, ptr %count36, align 4, !tbaa !8
  %48 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %key38 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %48, i32 0, i32 4
  %arraydecay39 = getelementptr inbounds [1 x i32], ptr %key38, i64 0, i64 0
  store ptr %arraydecay39, ptr %iPtr, align 8, !tbaa !4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc45, %if.else35
  %49 = load i32, ptr %count36, align 4, !tbaa !8
  %cmp41 = icmp sgt i32 %49, 0
  br i1 %cmp41, label %for.body43, label %for.end48

for.body43:                                       ; preds = %for.cond40
  %50 = load ptr, ptr %iPtr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  %52 = load i32, ptr %index, align 4, !tbaa !8
  %add44 = add nsw i32 %52, %51
  store i32 %add44, ptr %index, align 4, !tbaa !8
  br label %for.inc45

for.inc45:                                        ; preds = %for.body43
  %53 = load i32, ptr %count36, align 4, !tbaa !8
  %dec46 = add nsw i32 %53, -1
  store i32 %dec46, ptr %count36, align 4, !tbaa !8
  %54 = load ptr, ptr %iPtr, align 8, !tbaa !4
  %incdec.ptr47 = getelementptr inbounds i32, ptr %54, i32 1
  store ptr %incdec.ptr47, ptr %iPtr, align 8, !tbaa !4
  br label %for.cond40

for.end48:                                        ; preds = %for.cond40
  %55 = load i32, ptr %index, align 4, !tbaa !8
  %conv49 = sext i32 %55 to i64
  %mul50 = mul nsw i64 %conv49, 1103515245
  %56 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %downShift51 = getelementptr inbounds %struct.Tcl_HashTable, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %downShift51, align 4, !tbaa !15
  %sh_prom52 = zext i32 %57 to i64
  %shr53 = ashr i64 %mul50, %sh_prom52
  %58 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %mask54 = getelementptr inbounds %struct.Tcl_HashTable, ptr %58, i32 0, i32 6
  %59 = load i32, ptr %mask54, align 8, !tbaa !16
  %conv55 = sext i32 %59 to i64
  %and56 = and i64 %shr53, %conv55
  %conv57 = trunc i64 %and56 to i32
  store i32 %conv57, ptr %index, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %count36) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iPtr) #7
  br label %if.end

if.end:                                           ; preds = %for.end48, %if.then27
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then
  %60 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %buckets59 = getelementptr inbounds %struct.Tcl_HashTable, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %buckets59, align 8, !tbaa !10
  %62 = load i32, ptr %index, align 4, !tbaa !8
  %idxprom = sext i32 %62 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %61, i64 %idxprom
  %63 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr = getelementptr inbounds %struct.Tcl_HashEntry, ptr %63, i32 0, i32 2
  store ptr %arrayidx, ptr %bucketPtr, align 8, !tbaa !24
  %64 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr60 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %bucketPtr60, align 8, !tbaa !24
  %66 = load ptr, ptr %65, align 8, !tbaa !4
  %67 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %nextPtr61 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %67, i32 0, i32 0
  store ptr %66, ptr %nextPtr61, align 8, !tbaa !21
  %68 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %69 = load ptr, ptr %hPtr, align 8, !tbaa !4
  %bucketPtr62 = getelementptr inbounds %struct.Tcl_HashEntry, ptr %69, i32 0, i32 2
  %70 = load ptr, ptr %bucketPtr62, align 8, !tbaa !24
  store ptr %68, ptr %70, align 8, !tbaa !4
  br label %for.inc63

for.inc63:                                        ; preds = %if.end58
  %71 = load ptr, ptr %oldChainPtr, align 8, !tbaa !4
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  store ptr %72, ptr %hPtr, align 8, !tbaa !4
  br label %for.cond16

for.end64:                                        ; preds = %for.cond16
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %73 = load i32, ptr %oldSize, align 4, !tbaa !8
  %dec66 = add nsw i32 %73, -1
  store i32 %dec66, ptr %oldSize, align 4, !tbaa !8
  %74 = load ptr, ptr %oldChainPtr, align 8, !tbaa !4
  %incdec.ptr67 = getelementptr inbounds ptr, ptr %74, i32 1
  store ptr %incdec.ptr67, ptr %oldChainPtr, align 8, !tbaa !4
  br label %for.cond12

for.end68:                                        ; preds = %for.cond12
  %75 = load ptr, ptr %oldBuckets, align 8, !tbaa !4
  %76 = load ptr, ptr %tablePtr.addr, align 8, !tbaa !4
  %staticBuckets = getelementptr inbounds %struct.Tcl_HashTable, ptr %76, i32 0, i32 1
  %arraydecay69 = getelementptr inbounds [4 x ptr], ptr %staticBuckets, i64 0, i64 0
  %cmp70 = icmp ne ptr %75, %arraydecay69
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %for.end68
  %77 = load ptr, ptr %oldBuckets, align 8, !tbaa !4
  call void @free(ptr noundef %77) #7
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %for.end68
  call void @llvm.lifetime.end.p0(i64 8, ptr %hPtr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %newChainPtr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldChainPtr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldBuckets) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldSize) #7
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"Tcl_HashTable", !5, i64 0, !6, i64 8, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !5, i64 64, !5, i64 72}
!12 = !{!11, !9, i64 40}
!13 = !{!11, !9, i64 44}
!14 = !{!11, !9, i64 48}
!15 = !{!11, !9, i64 52}
!16 = !{!11, !9, i64 56}
!17 = !{!11, !9, i64 60}
!18 = !{!11, !5, i64 64}
!19 = !{!11, !5, i64 72}
!20 = !{!6, !6, i64 0}
!21 = !{!22, !5, i64 0}
!22 = !{!"Tcl_HashEntry", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32}
!23 = !{!22, !5, i64 8}
!24 = !{!22, !5, i64 16}
!25 = !{!22, !5, i64 24}
!26 = !{!27, !5, i64 0}
!27 = !{!"Tcl_HashSearch", !5, i64 0, !9, i64 8, !5, i64 16}
!28 = !{!27, !9, i64 8}
!29 = !{!27, !5, i64 16}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !6, i64 0}

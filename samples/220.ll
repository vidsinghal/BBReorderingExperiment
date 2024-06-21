; ModuleID = 'samples/220.bc'
source_filename = "xmlmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memnod = type { i32, i32, i64, i64, ptr, i32 }

@.str = private unnamed_addr constant [41 x i8] c"xmlMallocBreakpoint reached on block %d\0A\00", align 1, !dbg !0
@xmlMemStopAtBlock = internal global i32 0, align 4, !dbg !8
@xmlMemInitialized = internal global i32 0, align 4, !dbg !123
@.str.1 = private unnamed_addr constant [34 x i8] c"xmlMallocLoc : Unsigned overflow\0A\00", align 1, !dbg !30
@.str.2 = private unnamed_addr constant [34 x i8] c"xmlMallocLoc : Out of free space\0A\00", align 1, !dbg !35
@xmlMemMutex = internal global ptr null, align 8, !dbg !126
@block = internal global i32 0, align 4, !dbg !133
@debugMemSize = internal global i64 0, align 8, !dbg !135
@debugMemBlocks = internal global i64 0, align 8, !dbg !137
@debugMaxMemSize = internal global i64 0, align 8, !dbg !139
@xmlMemTraceBlockAt = internal global ptr null, align 8, !dbg !141
@.str.3 = private unnamed_addr constant [21 x i8] c"%p : Malloc(%lu) Ok\0A\00", align 1, !dbg !37
@.str.4 = private unnamed_addr constant [40 x i8] c"xmlMallocAtomicLoc : Unsigned overflow\0A\00", align 1, !dbg !42
@.str.5 = private unnamed_addr constant [40 x i8] c"xmlMallocAtomicLoc : Out of free space\0A\00", align 1, !dbg !47
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !49
@.str.7 = private unnamed_addr constant [35 x i8] c"xmlReallocLoc : Unsigned overflow\0A\00", align 1, !dbg !54
@.str.8 = private unnamed_addr constant [31 x i8] c"%p : Realloced(%lu -> %lu) Ok\0A\00", align 1, !dbg !59
@.str.9 = private unnamed_addr constant [40 x i8] c"trying to free pointer from freed area\0A\00", align 1, !dbg !64
@.str.10 = private unnamed_addr constant [14 x i8] c"%p : Freed()\0A\00", align 1, !dbg !66
@.str.11 = private unnamed_addr constant [22 x i8] c"xmlMemFree(%p) error\0A\00", align 1, !dbg !71
@.str.12 = private unnamed_addr constant [37 x i8] c"xmlMemStrdupLoc : Unsigned overflow\0A\00", align 1, !dbg !76
@.str.13 = private unnamed_addr constant [18 x i8] c"%p : Strdup() Ok\0A\00", align 1, !dbg !81
@.str.14 = private unnamed_addr constant [12 x i8] c".memorylist\00", align 1, !dbg !86
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !91
@.str.16 = private unnamed_addr constant [51 x i8] c"Memory list not compiled (MEM_LIST not defined !)\0A\00", align 1, !dbg !96
@.str.17 = private unnamed_addr constant [43 x i8] c"      MEMORY ALLOCATED : %lu, MAX was %lu\0A\00", align 1, !dbg !101
@.str.18 = private unnamed_addr constant [19 x i8] c"XML_MEM_BREAKPOINT\00", align 1, !dbg !106
@.str.19 = private unnamed_addr constant [4 x i8] c"%ud\00", align 1, !dbg !111
@.str.20 = private unnamed_addr constant [14 x i8] c"XML_MEM_TRACE\00", align 1, !dbg !116
@.str.21 = private unnamed_addr constant [3 x i8] c"%p\00", align 1, !dbg !118
@xmlFree = external global ptr, align 8
@xmlMalloc = external global ptr, align 8
@xmlMallocAtomic = external global ptr, align 8
@xmlRealloc = external global ptr, align 8
@xmlMemStrdup = external global ptr, align 8
@.str.22 = private unnamed_addr constant [36 x i8] c"Memory tag error occurs :%p \0A\09 bye\0A\00", align 1, !dbg !143

; Function Attrs: nounwind uwtable
define void @xmlMallocBreakpoint() #0 !dbg !154 {
entry:
  %call = call ptr @__xmlGenericError(), !dbg !157
  %0 = load ptr, ptr %call, align 8, !dbg !157, !tbaa !158
  %call1 = call ptr @__xmlGenericErrorContext(), !dbg !162
  %1 = load ptr, ptr %call1, align 8, !dbg !162, !tbaa !158
  %2 = load i32, ptr @xmlMemStopAtBlock, align 4, !dbg !163, !tbaa !164
  call void (ptr, ptr, ...) %0(ptr noundef %1, ptr noundef @.str, i32 noundef %2), !dbg !157
  ret void, !dbg !166
}

declare !dbg !167 ptr @__xmlGenericError() #1

declare !dbg !177 ptr @__xmlGenericErrorContext() #1

; Function Attrs: nounwind uwtable
define ptr @xmlMallocLoc(i64 noundef %size, ptr noundef %file, i32 noundef %line) #0 !dbg !181 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !185, metadata !DIExpression()), !dbg !192
  store ptr %file, ptr %file.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !186, metadata !DIExpression()), !dbg !193
  store i32 %line, ptr %line.addr, align 4, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !195
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !188, metadata !DIExpression()), !dbg !196
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !197
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !189, metadata !DIExpression()), !dbg !198
  %0 = load i32, ptr @xmlMemInitialized, align 4, !dbg !199, !tbaa !164
  %tobool = icmp ne i32 %0, 0, !dbg !199
  br i1 %tobool, label %if.end, label %if.then, !dbg !201

if.then:                                          ; preds = %entry
  %call = call i32 @xmlInitMemory(), !dbg !202
  br label %if.end, !dbg !202

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !203, !tbaa !190
  %cmp = icmp ugt i64 %1, -41, !dbg !205
  br i1 %cmp, label %if.then1, label %if.end4, !dbg !206

if.then1:                                         ; preds = %if.end
  %call2 = call ptr @__xmlGenericError(), !dbg !207
  %2 = load ptr, ptr %call2, align 8, !dbg !207, !tbaa !158
  %call3 = call ptr @__xmlGenericErrorContext(), !dbg !209
  %3 = load ptr, ptr %call3, align 8, !dbg !209, !tbaa !158
  call void (ptr, ptr, ...) %2(ptr noundef %3, ptr noundef @.str.1), !dbg !207
  call void @xmlMemoryDump(), !dbg !210
  store ptr null, ptr %retval, align 8, !dbg !211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !211

if.end4:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !212, !tbaa !190
  %add = add i64 40, %4, !dbg !213
  %call5 = call noalias ptr @malloc(i64 noundef %add) #10, !dbg !214
  store ptr %call5, ptr %p, align 8, !dbg !215, !tbaa !158
  %5 = load ptr, ptr %p, align 8, !dbg !216, !tbaa !158
  %tobool6 = icmp ne ptr %5, null, !dbg !216
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !218

if.then7:                                         ; preds = %if.end4
  %call8 = call ptr @__xmlGenericError(), !dbg !219
  %6 = load ptr, ptr %call8, align 8, !dbg !219, !tbaa !158
  %call9 = call ptr @__xmlGenericErrorContext(), !dbg !221
  %7 = load ptr, ptr %call9, align 8, !dbg !221, !tbaa !158
  call void (ptr, ptr, ...) %6(ptr noundef %7, ptr noundef @.str.2), !dbg !219
  call void @xmlMemoryDump(), !dbg !222
  store ptr null, ptr %retval, align 8, !dbg !223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !223

if.end10:                                         ; preds = %if.end4
  %8 = load ptr, ptr %p, align 8, !dbg !224, !tbaa !158
  %mh_tag = getelementptr inbounds %struct.memnod, ptr %8, i32 0, i32 0, !dbg !225
  store i32 23205, ptr %mh_tag, align 8, !dbg !226, !tbaa !227
  %9 = load i64, ptr %size.addr, align 8, !dbg !229, !tbaa !190
  %10 = load ptr, ptr %p, align 8, !dbg !230, !tbaa !158
  %mh_size = getelementptr inbounds %struct.memnod, ptr %10, i32 0, i32 3, !dbg !231
  store i64 %9, ptr %mh_size, align 8, !dbg !232, !tbaa !233
  %11 = load ptr, ptr %p, align 8, !dbg !234, !tbaa !158
  %mh_type = getelementptr inbounds %struct.memnod, ptr %11, i32 0, i32 1, !dbg !235
  store i32 1, ptr %mh_type, align 4, !dbg !236, !tbaa !237
  %12 = load ptr, ptr %file.addr, align 8, !dbg !238, !tbaa !158
  %13 = load ptr, ptr %p, align 8, !dbg !239, !tbaa !158
  %mh_file = getelementptr inbounds %struct.memnod, ptr %13, i32 0, i32 4, !dbg !240
  store ptr %12, ptr %mh_file, align 8, !dbg !241, !tbaa !242
  %14 = load i32, ptr %line.addr, align 4, !dbg !243, !tbaa !164
  %15 = load ptr, ptr %p, align 8, !dbg !244, !tbaa !158
  %mh_line = getelementptr inbounds %struct.memnod, ptr %15, i32 0, i32 5, !dbg !245
  store i32 %14, ptr %mh_line, align 8, !dbg !246, !tbaa !247
  %16 = load ptr, ptr @xmlMemMutex, align 8, !dbg !248, !tbaa !158
  call void @xmlMutexLock(ptr noundef %16), !dbg !249
  %17 = load i32, ptr @block, align 4, !dbg !250, !tbaa !164
  %inc = add i32 %17, 1, !dbg !250
  store i32 %inc, ptr @block, align 4, !dbg !250, !tbaa !164
  %conv = zext i32 %inc to i64, !dbg !250
  %18 = load ptr, ptr %p, align 8, !dbg !251, !tbaa !158
  %mh_number = getelementptr inbounds %struct.memnod, ptr %18, i32 0, i32 2, !dbg !252
  store i64 %conv, ptr %mh_number, align 8, !dbg !253, !tbaa !254
  %19 = load i64, ptr %size.addr, align 8, !dbg !255, !tbaa !190
  %20 = load i64, ptr @debugMemSize, align 8, !dbg !256, !tbaa !190
  %add11 = add i64 %20, %19, !dbg !256
  store i64 %add11, ptr @debugMemSize, align 8, !dbg !256, !tbaa !190
  %21 = load i64, ptr @debugMemBlocks, align 8, !dbg !257, !tbaa !190
  %inc12 = add i64 %21, 1, !dbg !257
  store i64 %inc12, ptr @debugMemBlocks, align 8, !dbg !257, !tbaa !190
  %22 = load i64, ptr @debugMemSize, align 8, !dbg !258, !tbaa !190
  %23 = load i64, ptr @debugMaxMemSize, align 8, !dbg !260, !tbaa !190
  %cmp13 = icmp ugt i64 %22, %23, !dbg !261
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !262

if.then15:                                        ; preds = %if.end10
  %24 = load i64, ptr @debugMemSize, align 8, !dbg !263, !tbaa !190
  store i64 %24, ptr @debugMaxMemSize, align 8, !dbg !264, !tbaa !190
  br label %if.end16, !dbg !265

if.end16:                                         ; preds = %if.then15, %if.end10
  %25 = load ptr, ptr @xmlMemMutex, align 8, !dbg !266, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %25), !dbg !267
  %26 = load i32, ptr @xmlMemStopAtBlock, align 4, !dbg !268, !tbaa !164
  %conv17 = zext i32 %26 to i64, !dbg !268
  %27 = load ptr, ptr %p, align 8, !dbg !270, !tbaa !158
  %mh_number18 = getelementptr inbounds %struct.memnod, ptr %27, i32 0, i32 2, !dbg !271
  %28 = load i64, ptr %mh_number18, align 8, !dbg !271, !tbaa !254
  %cmp19 = icmp eq i64 %conv17, %28, !dbg !272
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !273

if.then21:                                        ; preds = %if.end16
  call void @xmlMallocBreakpoint(), !dbg !274
  br label %if.end22, !dbg !274

if.end22:                                         ; preds = %if.then21, %if.end16
  %29 = load ptr, ptr %p, align 8, !dbg !275, !tbaa !158
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 40, !dbg !275
  store ptr %add.ptr, ptr %ret, align 8, !dbg !276, !tbaa !158
  %30 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !277, !tbaa !158
  %31 = load ptr, ptr %ret, align 8, !dbg !279, !tbaa !158
  %cmp23 = icmp eq ptr %30, %31, !dbg !280
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !281

if.then25:                                        ; preds = %if.end22
  %call26 = call ptr @__xmlGenericError(), !dbg !282
  %32 = load ptr, ptr %call26, align 8, !dbg !282, !tbaa !158
  %call27 = call ptr @__xmlGenericErrorContext(), !dbg !284
  %33 = load ptr, ptr %call27, align 8, !dbg !284, !tbaa !158
  %34 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !285, !tbaa !158
  %35 = load i64, ptr %size.addr, align 8, !dbg !286, !tbaa !190
  call void (ptr, ptr, ...) %32(ptr noundef %33, ptr noundef @.str.3, ptr noundef %34, i64 noundef %35), !dbg !282
  call void @xmlMallocBreakpoint(), !dbg !287
  br label %if.end28, !dbg !288

if.end28:                                         ; preds = %if.then25, %if.end22
  %36 = load ptr, ptr %ret, align 8, !dbg !289, !tbaa !158
  store ptr %36, ptr %retval, align 8, !dbg !290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !290

cleanup:                                          ; preds = %if.end28, %if.then7, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !291
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !291
  %37 = load ptr, ptr %retval, align 8, !dbg !291
  ret ptr %37, !dbg !291
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @xmlInitMemory() #0 !dbg !292 {
entry:
  %retval = alloca i32, align 4
  %breakpoint = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %breakpoint) #9, !dbg !297
  tail call void @llvm.dbg.declare(metadata ptr %breakpoint, metadata !296, metadata !DIExpression()), !dbg !298
  %0 = load i32, ptr @xmlMemInitialized, align 4, !dbg !299, !tbaa !164
  %tobool = icmp ne i32 %0, 0, !dbg !299
  br i1 %tobool, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !302

if.end:                                           ; preds = %entry
  store i32 1, ptr @xmlMemInitialized, align 4, !dbg !303, !tbaa !164
  %call = call ptr @xmlNewMutex(), !dbg !304
  store ptr %call, ptr @xmlMemMutex, align 8, !dbg !305, !tbaa !158
  %call1 = call ptr @getenv(ptr noundef @.str.18) #9, !dbg !306
  store ptr %call1, ptr %breakpoint, align 8, !dbg !307, !tbaa !158
  %1 = load ptr, ptr %breakpoint, align 8, !dbg !308, !tbaa !158
  %cmp = icmp ne ptr %1, null, !dbg !310
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !311

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %breakpoint, align 8, !dbg !312, !tbaa !158
  %call3 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %2, ptr noundef @.str.19, ptr noundef @xmlMemStopAtBlock) #9, !dbg !314
  br label %if.end4, !dbg !315

if.end4:                                          ; preds = %if.then2, %if.end
  %call5 = call ptr @getenv(ptr noundef @.str.20) #9, !dbg !316
  store ptr %call5, ptr %breakpoint, align 8, !dbg !317, !tbaa !158
  %3 = load ptr, ptr %breakpoint, align 8, !dbg !318, !tbaa !158
  %cmp6 = icmp ne ptr %3, null, !dbg !320
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !321

if.then7:                                         ; preds = %if.end4
  %4 = load ptr, ptr %breakpoint, align 8, !dbg !322, !tbaa !158
  %call8 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %4, ptr noundef @.str.21, ptr noundef @xmlMemTraceBlockAt) #9, !dbg !324
  br label %if.end9, !dbg !325

if.end9:                                          ; preds = %if.then7, %if.end4
  store i32 0, ptr %retval, align 4, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !326

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %breakpoint) #9, !dbg !327
  %5 = load i32, ptr %retval, align 4, !dbg !327
  ret i32 %5, !dbg !327
}

; Function Attrs: nounwind uwtable
define void @xmlMemoryDump() #0 !dbg !328 {
entry:
  ret void, !dbg !329
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !330 noalias ptr @malloc(i64 noundef) #3

declare !dbg !334 void @xmlMutexLock(ptr noundef) #1

declare !dbg !337 void @xmlMutexUnlock(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define ptr @xmlMallocAtomicLoc(i64 noundef %size, ptr noundef %file, i32 noundef %line) #0 !dbg !338 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !340, metadata !DIExpression()), !dbg !345
  store ptr %file, ptr %file.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !341, metadata !DIExpression()), !dbg !346
  store i32 %line, ptr %line.addr, align 4, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !342, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !348
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !343, metadata !DIExpression()), !dbg !349
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !350
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !344, metadata !DIExpression()), !dbg !351
  %0 = load i32, ptr @xmlMemInitialized, align 4, !dbg !352, !tbaa !164
  %tobool = icmp ne i32 %0, 0, !dbg !352
  br i1 %tobool, label %if.end, label %if.then, !dbg !354

if.then:                                          ; preds = %entry
  %call = call i32 @xmlInitMemory(), !dbg !355
  br label %if.end, !dbg !355

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !356, !tbaa !190
  %cmp = icmp ugt i64 %1, -41, !dbg !358
  br i1 %cmp, label %if.then1, label %if.end4, !dbg !359

if.then1:                                         ; preds = %if.end
  %call2 = call ptr @__xmlGenericError(), !dbg !360
  %2 = load ptr, ptr %call2, align 8, !dbg !360, !tbaa !158
  %call3 = call ptr @__xmlGenericErrorContext(), !dbg !362
  %3 = load ptr, ptr %call3, align 8, !dbg !362, !tbaa !158
  call void (ptr, ptr, ...) %2(ptr noundef %3, ptr noundef @.str.4), !dbg !360
  call void @xmlMemoryDump(), !dbg !363
  store ptr null, ptr %retval, align 8, !dbg !364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !364

if.end4:                                          ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !365, !tbaa !190
  %add = add i64 40, %4, !dbg !366
  %call5 = call noalias ptr @malloc(i64 noundef %add) #10, !dbg !367
  store ptr %call5, ptr %p, align 8, !dbg !368, !tbaa !158
  %5 = load ptr, ptr %p, align 8, !dbg !369, !tbaa !158
  %tobool6 = icmp ne ptr %5, null, !dbg !369
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !371

if.then7:                                         ; preds = %if.end4
  %call8 = call ptr @__xmlGenericError(), !dbg !372
  %6 = load ptr, ptr %call8, align 8, !dbg !372, !tbaa !158
  %call9 = call ptr @__xmlGenericErrorContext(), !dbg !374
  %7 = load ptr, ptr %call9, align 8, !dbg !374, !tbaa !158
  call void (ptr, ptr, ...) %6(ptr noundef %7, ptr noundef @.str.5), !dbg !372
  call void @xmlMemoryDump(), !dbg !375
  store ptr null, ptr %retval, align 8, !dbg !376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !376

if.end10:                                         ; preds = %if.end4
  %8 = load ptr, ptr %p, align 8, !dbg !377, !tbaa !158
  %mh_tag = getelementptr inbounds %struct.memnod, ptr %8, i32 0, i32 0, !dbg !378
  store i32 23205, ptr %mh_tag, align 8, !dbg !379, !tbaa !227
  %9 = load i64, ptr %size.addr, align 8, !dbg !380, !tbaa !190
  %10 = load ptr, ptr %p, align 8, !dbg !381, !tbaa !158
  %mh_size = getelementptr inbounds %struct.memnod, ptr %10, i32 0, i32 3, !dbg !382
  store i64 %9, ptr %mh_size, align 8, !dbg !383, !tbaa !233
  %11 = load ptr, ptr %p, align 8, !dbg !384, !tbaa !158
  %mh_type = getelementptr inbounds %struct.memnod, ptr %11, i32 0, i32 1, !dbg !385
  store i32 4, ptr %mh_type, align 4, !dbg !386, !tbaa !237
  %12 = load ptr, ptr %file.addr, align 8, !dbg !387, !tbaa !158
  %13 = load ptr, ptr %p, align 8, !dbg !388, !tbaa !158
  %mh_file = getelementptr inbounds %struct.memnod, ptr %13, i32 0, i32 4, !dbg !389
  store ptr %12, ptr %mh_file, align 8, !dbg !390, !tbaa !242
  %14 = load i32, ptr %line.addr, align 4, !dbg !391, !tbaa !164
  %15 = load ptr, ptr %p, align 8, !dbg !392, !tbaa !158
  %mh_line = getelementptr inbounds %struct.memnod, ptr %15, i32 0, i32 5, !dbg !393
  store i32 %14, ptr %mh_line, align 8, !dbg !394, !tbaa !247
  %16 = load ptr, ptr @xmlMemMutex, align 8, !dbg !395, !tbaa !158
  call void @xmlMutexLock(ptr noundef %16), !dbg !396
  %17 = load i32, ptr @block, align 4, !dbg !397, !tbaa !164
  %inc = add i32 %17, 1, !dbg !397
  store i32 %inc, ptr @block, align 4, !dbg !397, !tbaa !164
  %conv = zext i32 %inc to i64, !dbg !397
  %18 = load ptr, ptr %p, align 8, !dbg !398, !tbaa !158
  %mh_number = getelementptr inbounds %struct.memnod, ptr %18, i32 0, i32 2, !dbg !399
  store i64 %conv, ptr %mh_number, align 8, !dbg !400, !tbaa !254
  %19 = load i64, ptr %size.addr, align 8, !dbg !401, !tbaa !190
  %20 = load i64, ptr @debugMemSize, align 8, !dbg !402, !tbaa !190
  %add11 = add i64 %20, %19, !dbg !402
  store i64 %add11, ptr @debugMemSize, align 8, !dbg !402, !tbaa !190
  %21 = load i64, ptr @debugMemBlocks, align 8, !dbg !403, !tbaa !190
  %inc12 = add i64 %21, 1, !dbg !403
  store i64 %inc12, ptr @debugMemBlocks, align 8, !dbg !403, !tbaa !190
  %22 = load i64, ptr @debugMemSize, align 8, !dbg !404, !tbaa !190
  %23 = load i64, ptr @debugMaxMemSize, align 8, !dbg !406, !tbaa !190
  %cmp13 = icmp ugt i64 %22, %23, !dbg !407
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !408

if.then15:                                        ; preds = %if.end10
  %24 = load i64, ptr @debugMemSize, align 8, !dbg !409, !tbaa !190
  store i64 %24, ptr @debugMaxMemSize, align 8, !dbg !410, !tbaa !190
  br label %if.end16, !dbg !411

if.end16:                                         ; preds = %if.then15, %if.end10
  %25 = load ptr, ptr @xmlMemMutex, align 8, !dbg !412, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %25), !dbg !413
  %26 = load i32, ptr @xmlMemStopAtBlock, align 4, !dbg !414, !tbaa !164
  %conv17 = zext i32 %26 to i64, !dbg !414
  %27 = load ptr, ptr %p, align 8, !dbg !416, !tbaa !158
  %mh_number18 = getelementptr inbounds %struct.memnod, ptr %27, i32 0, i32 2, !dbg !417
  %28 = load i64, ptr %mh_number18, align 8, !dbg !417, !tbaa !254
  %cmp19 = icmp eq i64 %conv17, %28, !dbg !418
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !419

if.then21:                                        ; preds = %if.end16
  call void @xmlMallocBreakpoint(), !dbg !420
  br label %if.end22, !dbg !420

if.end22:                                         ; preds = %if.then21, %if.end16
  %29 = load ptr, ptr %p, align 8, !dbg !421, !tbaa !158
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 40, !dbg !421
  store ptr %add.ptr, ptr %ret, align 8, !dbg !422, !tbaa !158
  %30 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !423, !tbaa !158
  %31 = load ptr, ptr %ret, align 8, !dbg !425, !tbaa !158
  %cmp23 = icmp eq ptr %30, %31, !dbg !426
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !427

if.then25:                                        ; preds = %if.end22
  %call26 = call ptr @__xmlGenericError(), !dbg !428
  %32 = load ptr, ptr %call26, align 8, !dbg !428, !tbaa !158
  %call27 = call ptr @__xmlGenericErrorContext(), !dbg !430
  %33 = load ptr, ptr %call27, align 8, !dbg !430, !tbaa !158
  %34 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !431, !tbaa !158
  %35 = load i64, ptr %size.addr, align 8, !dbg !432, !tbaa !190
  call void (ptr, ptr, ...) %32(ptr noundef %33, ptr noundef @.str.3, ptr noundef %34, i64 noundef %35), !dbg !428
  call void @xmlMallocBreakpoint(), !dbg !433
  br label %if.end28, !dbg !434

if.end28:                                         ; preds = %if.then25, %if.end22
  %36 = load ptr, ptr %ret, align 8, !dbg !435, !tbaa !158
  store ptr %36, ptr %retval, align 8, !dbg !436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

cleanup:                                          ; preds = %if.end28, %if.then7, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !437
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !437
  %37 = load ptr, ptr %retval, align 8, !dbg !437
  ret ptr %37, !dbg !437
}

; Function Attrs: nounwind uwtable
define ptr @xmlMemMalloc(i64 noundef %size) #0 !dbg !438 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i64, ptr %size.addr, align 8, !dbg !442, !tbaa !190
  %call = call ptr @xmlMallocLoc(i64 noundef %0, ptr noundef @.str.6, i32 noundef 0), !dbg !443
  ret ptr %call, !dbg !444
}

; Function Attrs: nounwind uwtable
define ptr @xmlReallocLoc(ptr noundef %ptr, i64 noundef %size, ptr noundef %file, i32 noundef %line) #0 !dbg !445 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %number = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !449, metadata !DIExpression()), !dbg !457
  store i64 %size, ptr %size.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !450, metadata !DIExpression()), !dbg !458
  store ptr %file, ptr %file.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !451, metadata !DIExpression()), !dbg !459
  store i32 %line, ptr %line.addr, align 4, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !452, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !461
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !453, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !461
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !454, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 8, ptr %number) #9, !dbg !464
  tail call void @llvm.dbg.declare(metadata ptr %number, metadata !455, metadata !DIExpression()), !dbg !465
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !466, !tbaa !158
  %cmp = icmp eq ptr %0, null, !dbg !468
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !470, !tbaa !190
  %2 = load ptr, ptr %file.addr, align 8, !dbg !471, !tbaa !158
  %3 = load i32, ptr %line.addr, align 4, !dbg !472, !tbaa !164
  %call = call ptr @xmlMallocLoc(i64 noundef %1, ptr noundef %2, i32 noundef %3), !dbg !473
  store ptr %call, ptr %retval, align 8, !dbg !474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !474

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @xmlMemInitialized, align 4, !dbg !475, !tbaa !164
  %tobool = icmp ne i32 %4, 0, !dbg !475
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !477

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @xmlInitMemory(), !dbg !478
  br label %if.end3, !dbg !478

if.end3:                                          ; preds = %if.then1, %if.end
  %5 = load ptr, ptr %ptr.addr, align 8, !dbg !479, !tbaa !158
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 -40, !dbg !479
  store ptr %add.ptr, ptr %p, align 8, !dbg !480, !tbaa !158
  %6 = load ptr, ptr %p, align 8, !dbg !481, !tbaa !158
  %mh_number = getelementptr inbounds %struct.memnod, ptr %6, i32 0, i32 2, !dbg !482
  %7 = load i64, ptr %mh_number, align 8, !dbg !482, !tbaa !254
  store i64 %7, ptr %number, align 8, !dbg !483, !tbaa !190
  %8 = load i32, ptr @xmlMemStopAtBlock, align 4, !dbg !484, !tbaa !164
  %conv = zext i32 %8 to i64, !dbg !484
  %9 = load i64, ptr %number, align 8, !dbg !486, !tbaa !190
  %cmp4 = icmp eq i64 %conv, %9, !dbg !487
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !488

if.then6:                                         ; preds = %if.end3
  call void @xmlMallocBreakpoint(), !dbg !489
  br label %if.end7, !dbg !489

if.end7:                                          ; preds = %if.then6, %if.end3
  %10 = load ptr, ptr %p, align 8, !dbg !490, !tbaa !158
  %mh_tag = getelementptr inbounds %struct.memnod, ptr %10, i32 0, i32 0, !dbg !492
  %11 = load i32, ptr %mh_tag, align 8, !dbg !492, !tbaa !227
  %cmp8 = icmp ne i32 %11, 23205, !dbg !493
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !494

if.then10:                                        ; preds = %if.end7
  %12 = load ptr, ptr %p, align 8, !dbg !495, !tbaa !158
  call void @debugmem_tag_error(ptr noundef %12), !dbg !495
  br label %error, !dbg !497

if.end11:                                         ; preds = %if.end7
  %13 = load ptr, ptr %p, align 8, !dbg !498, !tbaa !158
  %mh_tag12 = getelementptr inbounds %struct.memnod, ptr %13, i32 0, i32 0, !dbg !499
  store i32 -23206, ptr %mh_tag12, align 8, !dbg !500, !tbaa !227
  %14 = load ptr, ptr @xmlMemMutex, align 8, !dbg !501, !tbaa !158
  call void @xmlMutexLock(ptr noundef %14), !dbg !502
  %15 = load ptr, ptr %p, align 8, !dbg !503, !tbaa !158
  %mh_size = getelementptr inbounds %struct.memnod, ptr %15, i32 0, i32 3, !dbg !504
  %16 = load i64, ptr %mh_size, align 8, !dbg !504, !tbaa !233
  %17 = load i64, ptr @debugMemSize, align 8, !dbg !505, !tbaa !190
  %sub = sub i64 %17, %16, !dbg !505
  store i64 %sub, ptr @debugMemSize, align 8, !dbg !505, !tbaa !190
  %18 = load i64, ptr @debugMemBlocks, align 8, !dbg !506, !tbaa !190
  %dec = add i64 %18, -1, !dbg !506
  store i64 %dec, ptr @debugMemBlocks, align 8, !dbg !506, !tbaa !190
  %19 = load ptr, ptr @xmlMemMutex, align 8, !dbg !507, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %19), !dbg !508
  %20 = load i64, ptr %size.addr, align 8, !dbg !509, !tbaa !190
  %cmp13 = icmp ugt i64 %20, -41, !dbg !511
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !512

if.then15:                                        ; preds = %if.end11
  %call16 = call ptr @__xmlGenericError(), !dbg !513
  %21 = load ptr, ptr %call16, align 8, !dbg !513, !tbaa !158
  %call17 = call ptr @__xmlGenericErrorContext(), !dbg !515
  %22 = load ptr, ptr %call17, align 8, !dbg !515, !tbaa !158
  call void (ptr, ptr, ...) %21(ptr noundef %22, ptr noundef @.str.7), !dbg !513
  call void @xmlMemoryDump(), !dbg !516
  store ptr null, ptr %retval, align 8, !dbg !517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !517

if.end18:                                         ; preds = %if.end11
  %23 = load ptr, ptr %p, align 8, !dbg !518, !tbaa !158
  %24 = load i64, ptr %size.addr, align 8, !dbg !519, !tbaa !190
  %add = add i64 40, %24, !dbg !520
  %call19 = call ptr @realloc(ptr noundef %23, i64 noundef %add) #11, !dbg !521
  store ptr %call19, ptr %tmp, align 8, !dbg !522, !tbaa !158
  %25 = load ptr, ptr %tmp, align 8, !dbg !523, !tbaa !158
  %tobool20 = icmp ne ptr %25, null, !dbg !523
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !525

if.then21:                                        ; preds = %if.end18
  %26 = load ptr, ptr %p, align 8, !dbg !526, !tbaa !158
  call void @free(ptr noundef %26) #9, !dbg !528
  br label %error, !dbg !529

if.end22:                                         ; preds = %if.end18
  %27 = load ptr, ptr %tmp, align 8, !dbg !530, !tbaa !158
  store ptr %27, ptr %p, align 8, !dbg !531, !tbaa !158
  %28 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !532, !tbaa !158
  %29 = load ptr, ptr %ptr.addr, align 8, !dbg !534, !tbaa !158
  %cmp23 = icmp eq ptr %28, %29, !dbg !535
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !536

if.then25:                                        ; preds = %if.end22
  %call26 = call ptr @__xmlGenericError(), !dbg !537
  %30 = load ptr, ptr %call26, align 8, !dbg !537, !tbaa !158
  %call27 = call ptr @__xmlGenericErrorContext(), !dbg !539
  %31 = load ptr, ptr %call27, align 8, !dbg !539, !tbaa !158
  %32 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !540, !tbaa !158
  %33 = load ptr, ptr %p, align 8, !dbg !541, !tbaa !158
  %mh_size28 = getelementptr inbounds %struct.memnod, ptr %33, i32 0, i32 3, !dbg !542
  %34 = load i64, ptr %mh_size28, align 8, !dbg !542, !tbaa !233
  %35 = load i64, ptr %size.addr, align 8, !dbg !543, !tbaa !190
  call void (ptr, ptr, ...) %30(ptr noundef %31, ptr noundef @.str.8, ptr noundef %32, i64 noundef %34, i64 noundef %35), !dbg !537
  call void @xmlMallocBreakpoint(), !dbg !544
  br label %if.end29, !dbg !545

if.end29:                                         ; preds = %if.then25, %if.end22
  %36 = load ptr, ptr %p, align 8, !dbg !546, !tbaa !158
  %mh_tag30 = getelementptr inbounds %struct.memnod, ptr %36, i32 0, i32 0, !dbg !547
  store i32 23205, ptr %mh_tag30, align 8, !dbg !548, !tbaa !227
  %37 = load i64, ptr %number, align 8, !dbg !549, !tbaa !190
  %38 = load ptr, ptr %p, align 8, !dbg !550, !tbaa !158
  %mh_number31 = getelementptr inbounds %struct.memnod, ptr %38, i32 0, i32 2, !dbg !551
  store i64 %37, ptr %mh_number31, align 8, !dbg !552, !tbaa !254
  %39 = load ptr, ptr %p, align 8, !dbg !553, !tbaa !158
  %mh_type = getelementptr inbounds %struct.memnod, ptr %39, i32 0, i32 1, !dbg !554
  store i32 2, ptr %mh_type, align 4, !dbg !555, !tbaa !237
  %40 = load i64, ptr %size.addr, align 8, !dbg !556, !tbaa !190
  %41 = load ptr, ptr %p, align 8, !dbg !557, !tbaa !158
  %mh_size32 = getelementptr inbounds %struct.memnod, ptr %41, i32 0, i32 3, !dbg !558
  store i64 %40, ptr %mh_size32, align 8, !dbg !559, !tbaa !233
  %42 = load ptr, ptr %file.addr, align 8, !dbg !560, !tbaa !158
  %43 = load ptr, ptr %p, align 8, !dbg !561, !tbaa !158
  %mh_file = getelementptr inbounds %struct.memnod, ptr %43, i32 0, i32 4, !dbg !562
  store ptr %42, ptr %mh_file, align 8, !dbg !563, !tbaa !242
  %44 = load i32, ptr %line.addr, align 4, !dbg !564, !tbaa !164
  %45 = load ptr, ptr %p, align 8, !dbg !565, !tbaa !158
  %mh_line = getelementptr inbounds %struct.memnod, ptr %45, i32 0, i32 5, !dbg !566
  store i32 %44, ptr %mh_line, align 8, !dbg !567, !tbaa !247
  %46 = load ptr, ptr @xmlMemMutex, align 8, !dbg !568, !tbaa !158
  call void @xmlMutexLock(ptr noundef %46), !dbg !569
  %47 = load i64, ptr %size.addr, align 8, !dbg !570, !tbaa !190
  %48 = load i64, ptr @debugMemSize, align 8, !dbg !571, !tbaa !190
  %add33 = add i64 %48, %47, !dbg !571
  store i64 %add33, ptr @debugMemSize, align 8, !dbg !571, !tbaa !190
  %49 = load i64, ptr @debugMemBlocks, align 8, !dbg !572, !tbaa !190
  %inc = add i64 %49, 1, !dbg !572
  store i64 %inc, ptr @debugMemBlocks, align 8, !dbg !572, !tbaa !190
  %50 = load i64, ptr @debugMemSize, align 8, !dbg !573, !tbaa !190
  %51 = load i64, ptr @debugMaxMemSize, align 8, !dbg !575, !tbaa !190
  %cmp34 = icmp ugt i64 %50, %51, !dbg !576
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !577

if.then36:                                        ; preds = %if.end29
  %52 = load i64, ptr @debugMemSize, align 8, !dbg !578, !tbaa !190
  store i64 %52, ptr @debugMaxMemSize, align 8, !dbg !579, !tbaa !190
  br label %if.end37, !dbg !580

if.end37:                                         ; preds = %if.then36, %if.end29
  %53 = load ptr, ptr @xmlMemMutex, align 8, !dbg !581, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %53), !dbg !582
  %54 = load ptr, ptr %p, align 8, !dbg !583, !tbaa !158
  %add.ptr38 = getelementptr inbounds i8, ptr %54, i64 40, !dbg !583
  store ptr %add.ptr38, ptr %retval, align 8, !dbg !584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !584

error:                                            ; preds = %if.then21, %if.then10
  tail call void @llvm.dbg.label(metadata !456), !dbg !585
  store ptr null, ptr %retval, align 8, !dbg !586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !586

cleanup:                                          ; preds = %error, %if.end37, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %number) #9, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !587
  %55 = load ptr, ptr %retval, align 8, !dbg !587
  ret ptr %55, !dbg !587
}

; Function Attrs: nounwind uwtable
define internal void @debugmem_tag_error(ptr noundef %p) #0 !dbg !588 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %call = call ptr @__xmlGenericError(), !dbg !594
  %0 = load ptr, ptr %call, align 8, !dbg !594, !tbaa !158
  %call1 = call ptr @__xmlGenericErrorContext(), !dbg !595
  %1 = load ptr, ptr %call1, align 8, !dbg !595, !tbaa !158
  %2 = load ptr, ptr %p.addr, align 8, !dbg !596, !tbaa !158
  call void (ptr, ptr, ...) %0(ptr noundef %1, ptr noundef @.str.22, ptr noundef %2), !dbg !594
  ret void, !dbg !597
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !598 ptr @realloc(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare !dbg !601 void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define ptr @xmlMemRealloc(ptr noundef %ptr, i64 noundef %size) #0 !dbg !602 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !604, metadata !DIExpression()), !dbg !606
  store i64 %size, ptr %size.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !605, metadata !DIExpression()), !dbg !607
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !608, !tbaa !158
  %1 = load i64, ptr %size.addr, align 8, !dbg !609, !tbaa !190
  %call = call ptr @xmlReallocLoc(ptr noundef %0, i64 noundef %1, ptr noundef @.str.6, i32 noundef 0), !dbg !610
  ret ptr %call, !dbg !611
}

; Function Attrs: nounwind uwtable
define void @xmlMemFree(ptr noundef %ptr) #0 !dbg !612 {
entry:
  %ptr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %target = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !614, metadata !DIExpression()), !dbg !618
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !619
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !615, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #9, !dbg !621
  tail call void @llvm.dbg.declare(metadata ptr %target, metadata !616, metadata !DIExpression()), !dbg !622
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !623, !tbaa !158
  %cmp = icmp eq ptr %0, null, !dbg !625
  br i1 %cmp, label %if.then, label %if.end, !dbg !626

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !627

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !628, !tbaa !158
  %cmp1 = icmp eq ptr %1, inttoptr (i64 -1 to ptr), !dbg !630
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !631

if.then2:                                         ; preds = %if.end
  %call = call ptr @__xmlGenericError(), !dbg !632
  %2 = load ptr, ptr %call, align 8, !dbg !632, !tbaa !158
  %call3 = call ptr @__xmlGenericErrorContext(), !dbg !634
  %3 = load ptr, ptr %call3, align 8, !dbg !634, !tbaa !158
  call void (ptr, ptr, ...) %2(ptr noundef %3, ptr noundef @.str.9), !dbg !632
  br label %error, !dbg !635

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !636, !tbaa !158
  %5 = load ptr, ptr %ptr.addr, align 8, !dbg !638, !tbaa !158
  %cmp5 = icmp eq ptr %4, %5, !dbg !639
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !640

if.then6:                                         ; preds = %if.end4
  %call7 = call ptr @__xmlGenericError(), !dbg !641
  %6 = load ptr, ptr %call7, align 8, !dbg !641, !tbaa !158
  %call8 = call ptr @__xmlGenericErrorContext(), !dbg !643
  %7 = load ptr, ptr %call8, align 8, !dbg !643, !tbaa !158
  %8 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !644, !tbaa !158
  call void (ptr, ptr, ...) %6(ptr noundef %7, ptr noundef @.str.10, ptr noundef %8), !dbg !641
  call void @xmlMallocBreakpoint(), !dbg !645
  br label %if.end9, !dbg !646

if.end9:                                          ; preds = %if.then6, %if.end4
  %9 = load ptr, ptr %ptr.addr, align 8, !dbg !647, !tbaa !158
  store ptr %9, ptr %target, align 8, !dbg !648, !tbaa !158
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !649, !tbaa !158
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 -40, !dbg !649
  store ptr %add.ptr, ptr %p, align 8, !dbg !650, !tbaa !158
  %11 = load ptr, ptr %p, align 8, !dbg !651, !tbaa !158
  %mh_tag = getelementptr inbounds %struct.memnod, ptr %11, i32 0, i32 0, !dbg !653
  %12 = load i32, ptr %mh_tag, align 8, !dbg !653, !tbaa !227
  %cmp10 = icmp ne i32 %12, 23205, !dbg !654
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !655

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr %p, align 8, !dbg !656, !tbaa !158
  call void @debugmem_tag_error(ptr noundef %13), !dbg !656
  br label %error, !dbg !658

if.end12:                                         ; preds = %if.end9
  %14 = load i32, ptr @xmlMemStopAtBlock, align 4, !dbg !659, !tbaa !164
  %conv = zext i32 %14 to i64, !dbg !659
  %15 = load ptr, ptr %p, align 8, !dbg !661, !tbaa !158
  %mh_number = getelementptr inbounds %struct.memnod, ptr %15, i32 0, i32 2, !dbg !662
  %16 = load i64, ptr %mh_number, align 8, !dbg !662, !tbaa !254
  %cmp13 = icmp eq i64 %conv, %16, !dbg !663
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !664

if.then15:                                        ; preds = %if.end12
  call void @xmlMallocBreakpoint(), !dbg !665
  br label %if.end16, !dbg !665

if.end16:                                         ; preds = %if.then15, %if.end12
  %17 = load ptr, ptr %p, align 8, !dbg !666, !tbaa !158
  %mh_tag17 = getelementptr inbounds %struct.memnod, ptr %17, i32 0, i32 0, !dbg !667
  store i32 -23206, ptr %mh_tag17, align 8, !dbg !668, !tbaa !227
  %18 = load ptr, ptr %target, align 8, !dbg !669, !tbaa !158
  %19 = load ptr, ptr %p, align 8, !dbg !670, !tbaa !158
  %mh_size = getelementptr inbounds %struct.memnod, ptr %19, i32 0, i32 3, !dbg !671
  %20 = load i64, ptr %mh_size, align 8, !dbg !671, !tbaa !233
  call void @llvm.memset.p0.i64(ptr align 1 %18, i8 -1, i64 %20, i1 false), !dbg !672
  %21 = load ptr, ptr @xmlMemMutex, align 8, !dbg !673, !tbaa !158
  call void @xmlMutexLock(ptr noundef %21), !dbg !674
  %22 = load ptr, ptr %p, align 8, !dbg !675, !tbaa !158
  %mh_size18 = getelementptr inbounds %struct.memnod, ptr %22, i32 0, i32 3, !dbg !676
  %23 = load i64, ptr %mh_size18, align 8, !dbg !676, !tbaa !233
  %24 = load i64, ptr @debugMemSize, align 8, !dbg !677, !tbaa !190
  %sub = sub i64 %24, %23, !dbg !677
  store i64 %sub, ptr @debugMemSize, align 8, !dbg !677, !tbaa !190
  %25 = load i64, ptr @debugMemBlocks, align 8, !dbg !678, !tbaa !190
  %dec = add i64 %25, -1, !dbg !678
  store i64 %dec, ptr @debugMemBlocks, align 8, !dbg !678, !tbaa !190
  %26 = load ptr, ptr @xmlMemMutex, align 8, !dbg !679, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %26), !dbg !680
  %27 = load ptr, ptr %p, align 8, !dbg !681, !tbaa !158
  call void @free(ptr noundef %27) #9, !dbg !682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !683

error:                                            ; preds = %if.then11, %if.then2
  tail call void @llvm.dbg.label(metadata !617), !dbg !684
  %call19 = call ptr @__xmlGenericError(), !dbg !685
  %28 = load ptr, ptr %call19, align 8, !dbg !685, !tbaa !158
  %call20 = call ptr @__xmlGenericErrorContext(), !dbg !686
  %29 = load ptr, ptr %call20, align 8, !dbg !686, !tbaa !158
  %30 = load ptr, ptr %ptr.addr, align 8, !dbg !687, !tbaa !158
  call void (ptr, ptr, ...) %28(ptr noundef %29, ptr noundef @.str.11, ptr noundef %30), !dbg !685
  call void @xmlMallocBreakpoint(), !dbg !688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !689

cleanup:                                          ; preds = %error, %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #9, !dbg !690
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !690
  ret void, !dbg !690
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define ptr @xmlMemStrdupLoc(ptr noundef %str, ptr noundef %file, i32 noundef %line) #0 !dbg !691 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %size = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !695, metadata !DIExpression()), !dbg !702
  store ptr %file, ptr %file.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !696, metadata !DIExpression()), !dbg !703
  store i32 %line, ptr %line.addr, align 4, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !697, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #9, !dbg !705
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !698, metadata !DIExpression()), !dbg !706
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #9, !dbg !707
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !699, metadata !DIExpression()), !dbg !708
  %0 = load ptr, ptr %str.addr, align 8, !dbg !709, !tbaa !158
  %call = call i64 @strlen(ptr noundef %0) #12, !dbg !710
  %add = add i64 %call, 1, !dbg !711
  store i64 %add, ptr %size, align 8, !dbg !708, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !712
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !700, metadata !DIExpression()), !dbg !713
  %1 = load i32, ptr @xmlMemInitialized, align 4, !dbg !714, !tbaa !164
  %tobool = icmp ne i32 %1, 0, !dbg !714
  br i1 %tobool, label %if.end, label %if.then, !dbg !716

if.then:                                          ; preds = %entry
  %call1 = call i32 @xmlInitMemory(), !dbg !717
  br label %if.end, !dbg !717

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %size, align 8, !dbg !718, !tbaa !190
  %cmp = icmp ugt i64 %2, -41, !dbg !720
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !721

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @__xmlGenericError(), !dbg !722
  %3 = load ptr, ptr %call3, align 8, !dbg !722, !tbaa !158
  %call4 = call ptr @__xmlGenericErrorContext(), !dbg !724
  %4 = load ptr, ptr %call4, align 8, !dbg !724, !tbaa !158
  call void (ptr, ptr, ...) %3(ptr noundef %4, ptr noundef @.str.12), !dbg !722
  call void @xmlMemoryDump(), !dbg !725
  store ptr null, ptr %retval, align 8, !dbg !726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !726

if.end5:                                          ; preds = %if.end
  %5 = load i64, ptr %size, align 8, !dbg !727, !tbaa !190
  %add6 = add i64 40, %5, !dbg !728
  %call7 = call noalias ptr @malloc(i64 noundef %add6) #10, !dbg !729
  store ptr %call7, ptr %p, align 8, !dbg !730, !tbaa !158
  %6 = load ptr, ptr %p, align 8, !dbg !731, !tbaa !158
  %tobool8 = icmp ne ptr %6, null, !dbg !731
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !733

if.then9:                                         ; preds = %if.end5
  br label %error, !dbg !734

if.end10:                                         ; preds = %if.end5
  %7 = load ptr, ptr %p, align 8, !dbg !736, !tbaa !158
  %mh_tag = getelementptr inbounds %struct.memnod, ptr %7, i32 0, i32 0, !dbg !737
  store i32 23205, ptr %mh_tag, align 8, !dbg !738, !tbaa !227
  %8 = load i64, ptr %size, align 8, !dbg !739, !tbaa !190
  %9 = load ptr, ptr %p, align 8, !dbg !740, !tbaa !158
  %mh_size = getelementptr inbounds %struct.memnod, ptr %9, i32 0, i32 3, !dbg !741
  store i64 %8, ptr %mh_size, align 8, !dbg !742, !tbaa !233
  %10 = load ptr, ptr %p, align 8, !dbg !743, !tbaa !158
  %mh_type = getelementptr inbounds %struct.memnod, ptr %10, i32 0, i32 1, !dbg !744
  store i32 3, ptr %mh_type, align 4, !dbg !745, !tbaa !237
  %11 = load ptr, ptr %file.addr, align 8, !dbg !746, !tbaa !158
  %12 = load ptr, ptr %p, align 8, !dbg !747, !tbaa !158
  %mh_file = getelementptr inbounds %struct.memnod, ptr %12, i32 0, i32 4, !dbg !748
  store ptr %11, ptr %mh_file, align 8, !dbg !749, !tbaa !242
  %13 = load i32, ptr %line.addr, align 4, !dbg !750, !tbaa !164
  %14 = load ptr, ptr %p, align 8, !dbg !751, !tbaa !158
  %mh_line = getelementptr inbounds %struct.memnod, ptr %14, i32 0, i32 5, !dbg !752
  store i32 %13, ptr %mh_line, align 8, !dbg !753, !tbaa !247
  %15 = load ptr, ptr @xmlMemMutex, align 8, !dbg !754, !tbaa !158
  call void @xmlMutexLock(ptr noundef %15), !dbg !755
  %16 = load i32, ptr @block, align 4, !dbg !756, !tbaa !164
  %inc = add i32 %16, 1, !dbg !756
  store i32 %inc, ptr @block, align 4, !dbg !756, !tbaa !164
  %conv = zext i32 %inc to i64, !dbg !756
  %17 = load ptr, ptr %p, align 8, !dbg !757, !tbaa !158
  %mh_number = getelementptr inbounds %struct.memnod, ptr %17, i32 0, i32 2, !dbg !758
  store i64 %conv, ptr %mh_number, align 8, !dbg !759, !tbaa !254
  %18 = load i64, ptr %size, align 8, !dbg !760, !tbaa !190
  %19 = load i64, ptr @debugMemSize, align 8, !dbg !761, !tbaa !190
  %add11 = add i64 %19, %18, !dbg !761
  store i64 %add11, ptr @debugMemSize, align 8, !dbg !761, !tbaa !190
  %20 = load i64, ptr @debugMemBlocks, align 8, !dbg !762, !tbaa !190
  %inc12 = add i64 %20, 1, !dbg !762
  store i64 %inc12, ptr @debugMemBlocks, align 8, !dbg !762, !tbaa !190
  %21 = load i64, ptr @debugMemSize, align 8, !dbg !763, !tbaa !190
  %22 = load i64, ptr @debugMaxMemSize, align 8, !dbg !765, !tbaa !190
  %cmp13 = icmp ugt i64 %21, %22, !dbg !766
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !767

if.then15:                                        ; preds = %if.end10
  %23 = load i64, ptr @debugMemSize, align 8, !dbg !768, !tbaa !190
  store i64 %23, ptr @debugMaxMemSize, align 8, !dbg !769, !tbaa !190
  br label %if.end16, !dbg !770

if.end16:                                         ; preds = %if.then15, %if.end10
  %24 = load ptr, ptr @xmlMemMutex, align 8, !dbg !771, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %24), !dbg !772
  %25 = load ptr, ptr %p, align 8, !dbg !773, !tbaa !158
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 40, !dbg !773
  store ptr %add.ptr, ptr %s, align 8, !dbg !774, !tbaa !158
  %26 = load i32, ptr @xmlMemStopAtBlock, align 4, !dbg !775, !tbaa !164
  %conv17 = zext i32 %26 to i64, !dbg !775
  %27 = load ptr, ptr %p, align 8, !dbg !777, !tbaa !158
  %mh_number18 = getelementptr inbounds %struct.memnod, ptr %27, i32 0, i32 2, !dbg !778
  %28 = load i64, ptr %mh_number18, align 8, !dbg !778, !tbaa !254
  %cmp19 = icmp eq i64 %conv17, %28, !dbg !779
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !780

if.then21:                                        ; preds = %if.end16
  call void @xmlMallocBreakpoint(), !dbg !781
  br label %if.end22, !dbg !781

if.end22:                                         ; preds = %if.then21, %if.end16
  %29 = load ptr, ptr %s, align 8, !dbg !782, !tbaa !158
  %30 = load ptr, ptr %str.addr, align 8, !dbg !783, !tbaa !158
  %call23 = call ptr @strcpy(ptr noundef %29, ptr noundef %30) #9, !dbg !784
  %31 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !785, !tbaa !158
  %32 = load ptr, ptr %s, align 8, !dbg !787, !tbaa !158
  %cmp24 = icmp eq ptr %31, %32, !dbg !788
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !789

if.then26:                                        ; preds = %if.end22
  %call27 = call ptr @__xmlGenericError(), !dbg !790
  %33 = load ptr, ptr %call27, align 8, !dbg !790, !tbaa !158
  %call28 = call ptr @__xmlGenericErrorContext(), !dbg !792
  %34 = load ptr, ptr %call28, align 8, !dbg !792, !tbaa !158
  %35 = load ptr, ptr @xmlMemTraceBlockAt, align 8, !dbg !793, !tbaa !158
  call void (ptr, ptr, ...) %33(ptr noundef %34, ptr noundef @.str.13, ptr noundef %35), !dbg !790
  call void @xmlMallocBreakpoint(), !dbg !794
  br label %if.end29, !dbg !795

if.end29:                                         ; preds = %if.then26, %if.end22
  %36 = load ptr, ptr %s, align 8, !dbg !796, !tbaa !158
  store ptr %36, ptr %retval, align 8, !dbg !797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !797

error:                                            ; preds = %if.then9
  tail call void @llvm.dbg.label(metadata !701), !dbg !798
  store ptr null, ptr %retval, align 8, !dbg !799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !799

cleanup:                                          ; preds = %error, %if.end29, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !800
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #9, !dbg !800
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #9, !dbg !800
  %37 = load ptr, ptr %retval, align 8, !dbg !800
  ret ptr %37, !dbg !800
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !801 i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind
declare !dbg !805 ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define ptr @xmlMemoryStrdup(ptr noundef %str) #0 !dbg !810 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !814, metadata !DIExpression()), !dbg !815
  %0 = load ptr, ptr %str.addr, align 8, !dbg !816, !tbaa !158
  %call = call ptr @xmlMemStrdupLoc(ptr noundef %0, ptr noundef @.str.6, i32 noundef 0), !dbg !817
  ret ptr %call, !dbg !818
}

; Function Attrs: nounwind uwtable
define i32 @xmlMemUsed() #0 !dbg !819 {
entry:
  %res = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !822
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !821, metadata !DIExpression()), !dbg !823
  %0 = load ptr, ptr @xmlMemMutex, align 8, !dbg !824, !tbaa !158
  call void @xmlMutexLock(ptr noundef %0), !dbg !825
  %1 = load i64, ptr @debugMemSize, align 8, !dbg !826, !tbaa !190
  %conv = trunc i64 %1 to i32, !dbg !826
  store i32 %conv, ptr %res, align 4, !dbg !827, !tbaa !164
  %2 = load ptr, ptr @xmlMemMutex, align 8, !dbg !828, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %2), !dbg !829
  %3 = load i32, ptr %res, align 4, !dbg !830, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !831
  ret i32 %3, !dbg !832
}

; Function Attrs: nounwind uwtable
define i32 @xmlMemBlocks() #0 !dbg !833 {
entry:
  %res = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !836
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !835, metadata !DIExpression()), !dbg !837
  %0 = load ptr, ptr @xmlMemMutex, align 8, !dbg !838, !tbaa !158
  call void @xmlMutexLock(ptr noundef %0), !dbg !839
  %1 = load i64, ptr @debugMemBlocks, align 8, !dbg !840, !tbaa !190
  %conv = trunc i64 %1 to i32, !dbg !840
  store i32 %conv, ptr %res, align 4, !dbg !841, !tbaa !164
  %2 = load ptr, ptr @xmlMemMutex, align 8, !dbg !842, !tbaa !158
  call void @xmlMutexUnlock(ptr noundef %2), !dbg !843
  %3 = load i32, ptr %res, align 4, !dbg !844, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !845
  ret i32 %3, !dbg !846
}

; Function Attrs: nounwind uwtable
define void @xmlMemDisplayLast(ptr noundef %fp, i64 noundef %nbBytes) #0 !dbg !847 {
entry:
  %fp.addr = alloca ptr, align 8
  %nbBytes.addr = alloca i64, align 8
  %old_fp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !907, metadata !DIExpression()), !dbg !910
  store i64 %nbBytes, ptr %nbBytes.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %nbBytes.addr, metadata !908, metadata !DIExpression()), !dbg !911
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_fp) #9, !dbg !912
  tail call void @llvm.dbg.declare(metadata ptr %old_fp, metadata !909, metadata !DIExpression()), !dbg !913
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !914, !tbaa !158
  store ptr %0, ptr %old_fp, align 8, !dbg !913, !tbaa !158
  %1 = load i64, ptr %nbBytes.addr, align 8, !dbg !915, !tbaa !190
  %cmp = icmp sle i64 %1, 0, !dbg !917
  br i1 %cmp, label %if.then, label %if.end, !dbg !918

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !919

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !920, !tbaa !158
  %cmp1 = icmp eq ptr %2, null, !dbg !922
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !923

if.then2:                                         ; preds = %if.end
  %call = call noalias ptr @fopen64(ptr noundef @.str.14, ptr noundef @.str.15), !dbg !924
  store ptr %call, ptr %fp.addr, align 8, !dbg !926, !tbaa !158
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !927, !tbaa !158
  %cmp3 = icmp eq ptr %3, null, !dbg !929
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !930

if.then4:                                         ; preds = %if.then2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !931

if.end5:                                          ; preds = %if.then2
  br label %if.end6, !dbg !932

if.end6:                                          ; preds = %if.end5, %if.end
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !933, !tbaa !158
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.16), !dbg !934
  %5 = load ptr, ptr %old_fp, align 8, !dbg !935, !tbaa !158
  %cmp8 = icmp eq ptr %5, null, !dbg !937
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !938

if.then9:                                         ; preds = %if.end6
  %6 = load ptr, ptr %fp.addr, align 8, !dbg !939, !tbaa !158
  %call10 = call i32 @fclose(ptr noundef %6), !dbg !940
  br label %if.end11, !dbg !940

if.end11:                                         ; preds = %if.then9, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !941
  br label %cleanup, !dbg !941

cleanup:                                          ; preds = %if.end11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_fp) #9, !dbg !941
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !941

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !942 noalias ptr @fopen64(ptr noundef, ptr noundef) #1

declare !dbg !946 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare !dbg !950 i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @xmlMemDisplay(ptr noundef %fp) #0 !dbg !953 {
entry:
  %fp.addr = alloca ptr, align 8
  %old_fp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !957, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_fp) #9, !dbg !960
  tail call void @llvm.dbg.declare(metadata ptr %old_fp, metadata !958, metadata !DIExpression()), !dbg !961
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !962, !tbaa !158
  store ptr %0, ptr %old_fp, align 8, !dbg !961, !tbaa !158
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !963, !tbaa !158
  %cmp = icmp eq ptr %1, null, !dbg !965
  br i1 %cmp, label %if.then, label %if.end3, !dbg !966

if.then:                                          ; preds = %entry
  %call = call noalias ptr @fopen64(ptr noundef @.str.14, ptr noundef @.str.15), !dbg !967
  store ptr %call, ptr %fp.addr, align 8, !dbg !969, !tbaa !158
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !970, !tbaa !158
  %cmp1 = icmp eq ptr %2, null, !dbg !972
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !973

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !974

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !975

if.end3:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !976, !tbaa !158
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.16), !dbg !977
  %4 = load ptr, ptr %old_fp, align 8, !dbg !978, !tbaa !158
  %cmp5 = icmp eq ptr %4, null, !dbg !980
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !981

if.then6:                                         ; preds = %if.end3
  %5 = load ptr, ptr %fp.addr, align 8, !dbg !982, !tbaa !158
  %call7 = call i32 @fclose(ptr noundef %5), !dbg !983
  br label %if.end8, !dbg !983

if.end8:                                          ; preds = %if.then6, %if.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !984
  br label %cleanup, !dbg !984

cleanup:                                          ; preds = %if.end8, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_fp) #9, !dbg !984
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !984

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @xmlMemShow(ptr noundef %fp, i32 noundef %nr) #0 !dbg !985 {
entry:
  %fp.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !989, metadata !DIExpression()), !dbg !991
  store i32 %nr, ptr %nr.addr, align 4, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !990, metadata !DIExpression()), !dbg !992
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !993, !tbaa !158
  %cmp = icmp ne ptr %0, null, !dbg !995
  br i1 %cmp, label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !997, !tbaa !158
  %2 = load i64, ptr @debugMemSize, align 8, !dbg !998, !tbaa !190
  %3 = load i64, ptr @debugMaxMemSize, align 8, !dbg !999, !tbaa !190
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.17, i64 noundef %2, i64 noundef %3), !dbg !1000
  br label %if.end, !dbg !1000

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1001
}

declare !dbg !1002 ptr @xmlNewMutex() #1

; Function Attrs: nounwind
declare !dbg !1005 ptr @getenv(ptr noundef) #5

; Function Attrs: nounwind
declare !dbg !1006 i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind uwtable
define void @xmlCleanupMemory() #0 !dbg !1009 {
entry:
  %0 = load i32, ptr @xmlMemInitialized, align 4, !dbg !1010, !tbaa !164
  %cmp = icmp eq i32 %0, 0, !dbg !1012
  br i1 %cmp, label %if.then, label %if.end, !dbg !1013

if.then:                                          ; preds = %entry
  br label %return, !dbg !1014

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @xmlMemMutex, align 8, !dbg !1015, !tbaa !158
  call void @xmlFreeMutex(ptr noundef %1), !dbg !1016
  store ptr null, ptr @xmlMemMutex, align 8, !dbg !1017, !tbaa !158
  store i32 0, ptr @xmlMemInitialized, align 4, !dbg !1018, !tbaa !164
  br label %return, !dbg !1019

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1019
}

declare !dbg !1020 void @xmlFreeMutex(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @xmlMemSetup(ptr noundef %freeFunc, ptr noundef %mallocFunc, ptr noundef %reallocFunc, ptr noundef %strdupFunc) #0 !dbg !1021 {
entry:
  %retval = alloca i32, align 4
  %freeFunc.addr = alloca ptr, align 8
  %mallocFunc.addr = alloca ptr, align 8
  %reallocFunc.addr = alloca ptr, align 8
  %strdupFunc.addr = alloca ptr, align 8
  store ptr %freeFunc, ptr %freeFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %freeFunc.addr, metadata !1034, metadata !DIExpression()), !dbg !1038
  store ptr %mallocFunc, ptr %mallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %mallocFunc.addr, metadata !1035, metadata !DIExpression()), !dbg !1039
  store ptr %reallocFunc, ptr %reallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %reallocFunc.addr, metadata !1036, metadata !DIExpression()), !dbg !1040
  store ptr %strdupFunc, ptr %strdupFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %strdupFunc.addr, metadata !1037, metadata !DIExpression()), !dbg !1041
  %0 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1042, !tbaa !158
  %cmp = icmp eq ptr %0, null, !dbg !1044
  br i1 %cmp, label %if.then, label %if.end, !dbg !1045

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1046
  br label %return, !dbg !1046

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1047, !tbaa !158
  %cmp1 = icmp eq ptr %1, null, !dbg !1049
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1050

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1051
  br label %return, !dbg !1051

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1052, !tbaa !158
  %cmp4 = icmp eq ptr %2, null, !dbg !1054
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1055

if.then5:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4, !dbg !1056
  br label %return, !dbg !1056

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1057, !tbaa !158
  %cmp7 = icmp eq ptr %3, null, !dbg !1059
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1060

if.then8:                                         ; preds = %if.end6
  store i32 -1, ptr %retval, align 4, !dbg !1061
  br label %return, !dbg !1061

if.end9:                                          ; preds = %if.end6
  %4 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1062, !tbaa !158
  store ptr %4, ptr @xmlFree, align 8, !dbg !1063, !tbaa !158
  %5 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1064, !tbaa !158
  store ptr %5, ptr @xmlMalloc, align 8, !dbg !1065, !tbaa !158
  %6 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1066, !tbaa !158
  store ptr %6, ptr @xmlMallocAtomic, align 8, !dbg !1067, !tbaa !158
  %7 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1068, !tbaa !158
  store ptr %7, ptr @xmlRealloc, align 8, !dbg !1069, !tbaa !158
  %8 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1070, !tbaa !158
  store ptr %8, ptr @xmlMemStrdup, align 8, !dbg !1071, !tbaa !158
  store i32 0, ptr %retval, align 4, !dbg !1072
  br label %return, !dbg !1072

return:                                           ; preds = %if.end9, %if.then8, %if.then5, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !1073
  ret i32 %9, !dbg !1073
}

; Function Attrs: nounwind uwtable
define i32 @xmlMemGet(ptr noundef %freeFunc, ptr noundef %mallocFunc, ptr noundef %reallocFunc, ptr noundef %strdupFunc) #0 !dbg !1074 {
entry:
  %freeFunc.addr = alloca ptr, align 8
  %mallocFunc.addr = alloca ptr, align 8
  %reallocFunc.addr = alloca ptr, align 8
  %strdupFunc.addr = alloca ptr, align 8
  store ptr %freeFunc, ptr %freeFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %freeFunc.addr, metadata !1082, metadata !DIExpression()), !dbg !1086
  store ptr %mallocFunc, ptr %mallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %mallocFunc.addr, metadata !1083, metadata !DIExpression()), !dbg !1087
  store ptr %reallocFunc, ptr %reallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %reallocFunc.addr, metadata !1084, metadata !DIExpression()), !dbg !1088
  store ptr %strdupFunc, ptr %strdupFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %strdupFunc.addr, metadata !1085, metadata !DIExpression()), !dbg !1089
  %0 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1090, !tbaa !158
  %cmp = icmp ne ptr %0, null, !dbg !1092
  br i1 %cmp, label %if.then, label %if.end, !dbg !1093

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @xmlFree, align 8, !dbg !1094, !tbaa !158
  %2 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1095, !tbaa !158
  store ptr %1, ptr %2, align 8, !dbg !1096, !tbaa !158
  br label %if.end, !dbg !1097

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1098, !tbaa !158
  %cmp1 = icmp ne ptr %3, null, !dbg !1100
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1101

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr @xmlMalloc, align 8, !dbg !1102, !tbaa !158
  %5 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1103, !tbaa !158
  store ptr %4, ptr %5, align 8, !dbg !1104, !tbaa !158
  br label %if.end3, !dbg !1105

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1106, !tbaa !158
  %cmp4 = icmp ne ptr %6, null, !dbg !1108
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1109

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr @xmlRealloc, align 8, !dbg !1110, !tbaa !158
  %8 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1111, !tbaa !158
  store ptr %7, ptr %8, align 8, !dbg !1112, !tbaa !158
  br label %if.end6, !dbg !1113

if.end6:                                          ; preds = %if.then5, %if.end3
  %9 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1114, !tbaa !158
  %cmp7 = icmp ne ptr %9, null, !dbg !1116
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1117

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr @xmlMemStrdup, align 8, !dbg !1118, !tbaa !158
  %11 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1119, !tbaa !158
  store ptr %10, ptr %11, align 8, !dbg !1120, !tbaa !158
  br label %if.end9, !dbg !1121

if.end9:                                          ; preds = %if.then8, %if.end6
  ret i32 0, !dbg !1122
}

; Function Attrs: nounwind uwtable
define i32 @xmlGcMemSetup(ptr noundef %freeFunc, ptr noundef %mallocFunc, ptr noundef %mallocAtomicFunc, ptr noundef %reallocFunc, ptr noundef %strdupFunc) #0 !dbg !1123 {
entry:
  %retval = alloca i32, align 4
  %freeFunc.addr = alloca ptr, align 8
  %mallocFunc.addr = alloca ptr, align 8
  %mallocAtomicFunc.addr = alloca ptr, align 8
  %reallocFunc.addr = alloca ptr, align 8
  %strdupFunc.addr = alloca ptr, align 8
  store ptr %freeFunc, ptr %freeFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %freeFunc.addr, metadata !1127, metadata !DIExpression()), !dbg !1132
  store ptr %mallocFunc, ptr %mallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %mallocFunc.addr, metadata !1128, metadata !DIExpression()), !dbg !1133
  store ptr %mallocAtomicFunc, ptr %mallocAtomicFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %mallocAtomicFunc.addr, metadata !1129, metadata !DIExpression()), !dbg !1134
  store ptr %reallocFunc, ptr %reallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %reallocFunc.addr, metadata !1130, metadata !DIExpression()), !dbg !1135
  store ptr %strdupFunc, ptr %strdupFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %strdupFunc.addr, metadata !1131, metadata !DIExpression()), !dbg !1136
  %0 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1137, !tbaa !158
  %cmp = icmp eq ptr %0, null, !dbg !1139
  br i1 %cmp, label %if.then, label %if.end, !dbg !1140

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1141
  br label %return, !dbg !1141

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1142, !tbaa !158
  %cmp1 = icmp eq ptr %1, null, !dbg !1144
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1145

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1146
  br label %return, !dbg !1146

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %mallocAtomicFunc.addr, align 8, !dbg !1147, !tbaa !158
  %cmp4 = icmp eq ptr %2, null, !dbg !1149
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1150

if.then5:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4, !dbg !1151
  br label %return, !dbg !1151

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1152, !tbaa !158
  %cmp7 = icmp eq ptr %3, null, !dbg !1154
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1155

if.then8:                                         ; preds = %if.end6
  store i32 -1, ptr %retval, align 4, !dbg !1156
  br label %return, !dbg !1156

if.end9:                                          ; preds = %if.end6
  %4 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1157, !tbaa !158
  %cmp10 = icmp eq ptr %4, null, !dbg !1159
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1160

if.then11:                                        ; preds = %if.end9
  store i32 -1, ptr %retval, align 4, !dbg !1161
  br label %return, !dbg !1161

if.end12:                                         ; preds = %if.end9
  %5 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1162, !tbaa !158
  store ptr %5, ptr @xmlFree, align 8, !dbg !1163, !tbaa !158
  %6 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1164, !tbaa !158
  store ptr %6, ptr @xmlMalloc, align 8, !dbg !1165, !tbaa !158
  %7 = load ptr, ptr %mallocAtomicFunc.addr, align 8, !dbg !1166, !tbaa !158
  store ptr %7, ptr @xmlMallocAtomic, align 8, !dbg !1167, !tbaa !158
  %8 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1168, !tbaa !158
  store ptr %8, ptr @xmlRealloc, align 8, !dbg !1169, !tbaa !158
  %9 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1170, !tbaa !158
  store ptr %9, ptr @xmlMemStrdup, align 8, !dbg !1171, !tbaa !158
  store i32 0, ptr %retval, align 4, !dbg !1172
  br label %return, !dbg !1172

return:                                           ; preds = %if.end12, %if.then11, %if.then8, %if.then5, %if.then2, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !1173
  ret i32 %10, !dbg !1173
}

; Function Attrs: nounwind uwtable
define i32 @xmlGcMemGet(ptr noundef %freeFunc, ptr noundef %mallocFunc, ptr noundef %mallocAtomicFunc, ptr noundef %reallocFunc, ptr noundef %strdupFunc) #0 !dbg !1174 {
entry:
  %freeFunc.addr = alloca ptr, align 8
  %mallocFunc.addr = alloca ptr, align 8
  %mallocAtomicFunc.addr = alloca ptr, align 8
  %reallocFunc.addr = alloca ptr, align 8
  %strdupFunc.addr = alloca ptr, align 8
  store ptr %freeFunc, ptr %freeFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %freeFunc.addr, metadata !1178, metadata !DIExpression()), !dbg !1183
  store ptr %mallocFunc, ptr %mallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %mallocFunc.addr, metadata !1179, metadata !DIExpression()), !dbg !1184
  store ptr %mallocAtomicFunc, ptr %mallocAtomicFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %mallocAtomicFunc.addr, metadata !1180, metadata !DIExpression()), !dbg !1185
  store ptr %reallocFunc, ptr %reallocFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %reallocFunc.addr, metadata !1181, metadata !DIExpression()), !dbg !1186
  store ptr %strdupFunc, ptr %strdupFunc.addr, align 8, !tbaa !158
  tail call void @llvm.dbg.declare(metadata ptr %strdupFunc.addr, metadata !1182, metadata !DIExpression()), !dbg !1187
  %0 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1188, !tbaa !158
  %cmp = icmp ne ptr %0, null, !dbg !1190
  br i1 %cmp, label %if.then, label %if.end, !dbg !1191

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @xmlFree, align 8, !dbg !1192, !tbaa !158
  %2 = load ptr, ptr %freeFunc.addr, align 8, !dbg !1193, !tbaa !158
  store ptr %1, ptr %2, align 8, !dbg !1194, !tbaa !158
  br label %if.end, !dbg !1195

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1196, !tbaa !158
  %cmp1 = icmp ne ptr %3, null, !dbg !1198
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1199

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr @xmlMalloc, align 8, !dbg !1200, !tbaa !158
  %5 = load ptr, ptr %mallocFunc.addr, align 8, !dbg !1201, !tbaa !158
  store ptr %4, ptr %5, align 8, !dbg !1202, !tbaa !158
  br label %if.end3, !dbg !1203

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %mallocAtomicFunc.addr, align 8, !dbg !1204, !tbaa !158
  %cmp4 = icmp ne ptr %6, null, !dbg !1206
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1207

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr @xmlMallocAtomic, align 8, !dbg !1208, !tbaa !158
  %8 = load ptr, ptr %mallocAtomicFunc.addr, align 8, !dbg !1209, !tbaa !158
  store ptr %7, ptr %8, align 8, !dbg !1210, !tbaa !158
  br label %if.end6, !dbg !1211

if.end6:                                          ; preds = %if.then5, %if.end3
  %9 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1212, !tbaa !158
  %cmp7 = icmp ne ptr %9, null, !dbg !1214
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1215

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr @xmlRealloc, align 8, !dbg !1216, !tbaa !158
  %11 = load ptr, ptr %reallocFunc.addr, align 8, !dbg !1217, !tbaa !158
  store ptr %10, ptr %11, align 8, !dbg !1218, !tbaa !158
  br label %if.end9, !dbg !1219

if.end9:                                          ; preds = %if.then8, %if.end6
  %12 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1220, !tbaa !158
  %cmp10 = icmp ne ptr %12, null, !dbg !1222
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1223

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr @xmlMemStrdup, align 8, !dbg !1224, !tbaa !158
  %14 = load ptr, ptr %strdupFunc.addr, align 8, !dbg !1225, !tbaa !158
  store ptr %13, ptr %14, align 8, !dbg !1226, !tbaa !158
  br label %if.end12, !dbg !1227

if.end12:                                         ; preds = %if.then11, %if.end9
  ret i32 0, !dbg !1228
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "xmlmemory.c", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "39d2ad00a47d96da345f3b6454cbc10a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 41)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "xmlMemStopAtBlock", scope: !10, file: !2, line: 102, type: !21, isLocal: true, isDefinition: true)
!10 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !29, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !15, !16, !28, !14}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 70, baseType: !14)
!13 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!14 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "MEMHDR", file: !2, line: 83, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memnod", file: !2, line: 72, size: 320, elements: !19)
!19 = !{!20, !22, !23, !24, !25, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "mh_tag", scope: !18, file: !2, line: 73, baseType: !21, size: 32)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mh_type", scope: !18, file: !2, line: 74, baseType: !21, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mh_number", scope: !18, file: !2, line: 75, baseType: !14, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mh_size", scope: !18, file: !2, line: 76, baseType: !12, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "mh_file", scope: !18, file: !2, line: 81, baseType: !26, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "mh_line", scope: !18, file: !2, line: 82, baseType: !21, size: 32, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!29 = !{!0, !30, !35, !37, !42, !47, !49, !54, !59, !64, !66, !71, !76, !81, !86, !91, !96, !101, !106, !111, !116, !118, !8, !123, !126, !133, !135, !137, !139, !141, !143}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 34)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !32, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 21)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 40)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !44, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 296, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 5)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 347, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 35)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 31)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !44, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 14)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 22)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 37)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 535, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 18)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 681, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 12)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 681, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 2)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 724, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 51)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 872, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 43)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 961, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 19)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 963, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 4)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 965, type: !68, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 967, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 3)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "xmlMemInitialized", scope: !10, file: !2, line: 34, type: !125, isLocal: true, isDefinition: true)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "xmlMemMutex", scope: !10, file: !2, line: 38, type: !128, isLocal: true, isDefinition: true)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlMutexPtr", file: !129, line: 24, baseType: !130)
!129 = !DIFile(filename: "./include/libxml/threads.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "1dc7307a775b27909a6aa3c80fee80a7")
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlMutex", file: !129, line: 23, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlMutex", file: !129, line: 23, flags: DIFlagFwdDecl)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "block", scope: !10, file: !2, line: 101, type: !21, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "debugMemSize", scope: !10, file: !2, line: 35, type: !14, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "debugMemBlocks", scope: !10, file: !2, line: 36, type: !14, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "debugMaxMemSize", scope: !10, file: !2, line: 37, type: !14, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "xmlMemTraceBlockAt", scope: !10, file: !2, line: 103, type: !15, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 844, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 36)
!148 = !{i32 7, !"Dwarf Version", i32 5}
!149 = !{i32 2, !"Debug Info Version", i32 3}
!150 = !{i32 1, !"wchar_size", i32 4}
!151 = !{i32 8, !"PIC Level", i32 2}
!152 = !{i32 7, !"uwtable", i32 2}
!153 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!154 = distinct !DISubprogram(name: "xmlMallocBreakpoint", scope: !2, file: !2, line: 128, type: !155, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!155 = !DISubroutineType(types: !156)
!156 = !{null}
!157 = !DILocation(line: 129, column: 5, scope: !154)
!158 = !{!159, !159, i64 0}
!159 = !{!"any pointer", !160, i64 0}
!160 = !{!"omnipotent char", !161, i64 0}
!161 = !{!"Simple C/C++ TBAA"}
!162 = !DILocation(line: 129, column: 21, scope: !154)
!163 = !DILocation(line: 130, column: 51, scope: !154)
!164 = !{!165, !165, i64 0}
!165 = !{!"int", !160, i64 0}
!166 = !DILocation(line: 131, column: 1, scope: !154)
!167 = !DISubprogram(name: "__xmlGenericError", scope: !168, file: !168, line: 332, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!168 = !DIFile(filename: "./include/libxml/globals.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "7f015ed635e5788f2301bae7c8384545")
!169 = !DISubroutineType(types: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlGenericErrorFunc", file: !173, line: 847, baseType: !174)
!173 = !DIFile(filename: "./include/libxml/xmlerror.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "7e825cd47252b863bbbd4d8d4449cf69")
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !15, !26, null}
!177 = !DISubprogram(name: "__xmlGenericErrorContext", scope: !168, file: !168, line: 348, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!181 = distinct !DISubprogram(name: "xmlMallocLoc", scope: !2, file: !2, line: 145, type: !182, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!15, !12, !26, !125}
!184 = !{!185, !186, !187, !188, !189}
!185 = !DILocalVariable(name: "size", arg: 1, scope: !181, file: !2, line: 145, type: !12)
!186 = !DILocalVariable(name: "file", arg: 2, scope: !181, file: !2, line: 145, type: !26)
!187 = !DILocalVariable(name: "line", arg: 3, scope: !181, file: !2, line: 145, type: !125)
!188 = !DILocalVariable(name: "p", scope: !181, file: !2, line: 147, type: !16)
!189 = !DILocalVariable(name: "ret", scope: !181, file: !2, line: 148, type: !15)
!190 = !{!191, !191, i64 0}
!191 = !{!"long", !160, i64 0}
!192 = !DILocation(line: 145, column: 21, scope: !181)
!193 = !DILocation(line: 145, column: 40, scope: !181)
!194 = !DILocation(line: 145, column: 50, scope: !181)
!195 = !DILocation(line: 147, column: 5, scope: !181)
!196 = !DILocation(line: 147, column: 13, scope: !181)
!197 = !DILocation(line: 148, column: 5, scope: !181)
!198 = !DILocation(line: 148, column: 11, scope: !181)
!199 = !DILocation(line: 150, column: 10, scope: !200)
!200 = distinct !DILexicalBlock(scope: !181, file: !2, line: 150, column: 9)
!201 = !DILocation(line: 150, column: 9, scope: !181)
!202 = !DILocation(line: 150, column: 29, scope: !200)
!203 = !DILocation(line: 158, column: 9, scope: !204)
!204 = distinct !DILexicalBlock(scope: !181, file: !2, line: 158, column: 9)
!205 = !DILocation(line: 158, column: 14, scope: !204)
!206 = !DILocation(line: 158, column: 9, scope: !181)
!207 = !DILocation(line: 159, column: 2, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !2, line: 158, column: 45)
!209 = !DILocation(line: 159, column: 18, scope: !208)
!210 = !DILocation(line: 161, column: 2, scope: !208)
!211 = !DILocation(line: 162, column: 2, scope: !208)
!212 = !DILocation(line: 165, column: 40, scope: !181)
!213 = !DILocation(line: 165, column: 39, scope: !181)
!214 = !DILocation(line: 165, column: 20, scope: !181)
!215 = !DILocation(line: 165, column: 7, scope: !181)
!216 = !DILocation(line: 167, column: 10, scope: !217)
!217 = distinct !DILexicalBlock(scope: !181, file: !2, line: 167, column: 9)
!218 = !DILocation(line: 167, column: 9, scope: !181)
!219 = !DILocation(line: 168, column: 2, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !2, line: 167, column: 13)
!221 = !DILocation(line: 168, column: 18, scope: !220)
!222 = !DILocation(line: 170, column: 2, scope: !220)
!223 = !DILocation(line: 171, column: 2, scope: !220)
!224 = !DILocation(line: 173, column: 5, scope: !181)
!225 = !DILocation(line: 173, column: 8, scope: !181)
!226 = !DILocation(line: 173, column: 15, scope: !181)
!227 = !{!228, !165, i64 0}
!228 = !{!"memnod", !165, i64 0, !165, i64 4, !191, i64 8, !191, i64 16, !159, i64 24, !165, i64 32}
!229 = !DILocation(line: 174, column: 18, scope: !181)
!230 = !DILocation(line: 174, column: 5, scope: !181)
!231 = !DILocation(line: 174, column: 8, scope: !181)
!232 = !DILocation(line: 174, column: 16, scope: !181)
!233 = !{!228, !191, i64 16}
!234 = !DILocation(line: 175, column: 5, scope: !181)
!235 = !DILocation(line: 175, column: 8, scope: !181)
!236 = !DILocation(line: 175, column: 16, scope: !181)
!237 = !{!228, !165, i64 4}
!238 = !DILocation(line: 176, column: 18, scope: !181)
!239 = !DILocation(line: 176, column: 5, scope: !181)
!240 = !DILocation(line: 176, column: 8, scope: !181)
!241 = !DILocation(line: 176, column: 16, scope: !181)
!242 = !{!228, !159, i64 24}
!243 = !DILocation(line: 177, column: 18, scope: !181)
!244 = !DILocation(line: 177, column: 5, scope: !181)
!245 = !DILocation(line: 177, column: 8, scope: !181)
!246 = !DILocation(line: 177, column: 16, scope: !181)
!247 = !{!228, !165, i64 32}
!248 = !DILocation(line: 178, column: 18, scope: !181)
!249 = !DILocation(line: 178, column: 5, scope: !181)
!250 = !DILocation(line: 179, column: 20, scope: !181)
!251 = !DILocation(line: 179, column: 5, scope: !181)
!252 = !DILocation(line: 179, column: 8, scope: !181)
!253 = !DILocation(line: 179, column: 18, scope: !181)
!254 = !{!228, !191, i64 8}
!255 = !DILocation(line: 180, column: 21, scope: !181)
!256 = !DILocation(line: 180, column: 18, scope: !181)
!257 = !DILocation(line: 181, column: 19, scope: !181)
!258 = !DILocation(line: 182, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !181, file: !2, line: 182, column: 9)
!260 = !DILocation(line: 182, column: 24, scope: !259)
!261 = !DILocation(line: 182, column: 22, scope: !259)
!262 = !DILocation(line: 182, column: 9, scope: !181)
!263 = !DILocation(line: 182, column: 59, scope: !259)
!264 = !DILocation(line: 182, column: 57, scope: !259)
!265 = !DILocation(line: 182, column: 41, scope: !259)
!266 = !DILocation(line: 186, column: 20, scope: !181)
!267 = !DILocation(line: 186, column: 5, scope: !181)
!268 = !DILocation(line: 193, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !181, file: !2, line: 193, column: 9)
!270 = !DILocation(line: 193, column: 30, scope: !269)
!271 = !DILocation(line: 193, column: 33, scope: !269)
!272 = !DILocation(line: 193, column: 27, scope: !269)
!273 = !DILocation(line: 193, column: 9, scope: !181)
!274 = !DILocation(line: 193, column: 44, scope: !269)
!275 = !DILocation(line: 195, column: 11, scope: !181)
!276 = !DILocation(line: 195, column: 9, scope: !181)
!277 = !DILocation(line: 197, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !181, file: !2, line: 197, column: 9)
!279 = !DILocation(line: 197, column: 31, scope: !278)
!280 = !DILocation(line: 197, column: 28, scope: !278)
!281 = !DILocation(line: 197, column: 9, scope: !181)
!282 = !DILocation(line: 198, column: 2, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !2, line: 197, column: 36)
!284 = !DILocation(line: 198, column: 18, scope: !283)
!285 = !DILocation(line: 199, column: 29, scope: !283)
!286 = !DILocation(line: 200, column: 19, scope: !283)
!287 = !DILocation(line: 201, column: 2, scope: !283)
!288 = !DILocation(line: 202, column: 5, scope: !283)
!289 = !DILocation(line: 206, column: 12, scope: !181)
!290 = !DILocation(line: 206, column: 5, scope: !181)
!291 = !DILocation(line: 207, column: 1, scope: !181)
!292 = distinct !DISubprogram(name: "xmlInitMemory", scope: !2, file: !2, line: 946, type: !293, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!125}
!295 = !{!296}
!296 = !DILocalVariable(name: "breakpoint", scope: !292, file: !2, line: 948, type: !28)
!297 = !DILocation(line: 948, column: 6, scope: !292)
!298 = !DILocation(line: 948, column: 12, scope: !292)
!299 = !DILocation(line: 957, column: 10, scope: !300)
!300 = distinct !DILexicalBlock(scope: !292, file: !2, line: 957, column: 10)
!301 = !DILocation(line: 957, column: 10, scope: !292)
!302 = !DILocation(line: 957, column: 29, scope: !300)
!303 = !DILocation(line: 958, column: 24, scope: !292)
!304 = !DILocation(line: 959, column: 20, scope: !292)
!305 = !DILocation(line: 959, column: 18, scope: !292)
!306 = !DILocation(line: 961, column: 19, scope: !292)
!307 = !DILocation(line: 961, column: 17, scope: !292)
!308 = !DILocation(line: 962, column: 10, scope: !309)
!309 = distinct !DILexicalBlock(scope: !292, file: !2, line: 962, column: 10)
!310 = !DILocation(line: 962, column: 21, scope: !309)
!311 = !DILocation(line: 962, column: 10, scope: !292)
!312 = !DILocation(line: 963, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !2, line: 962, column: 30)
!314 = !DILocation(line: 963, column: 10, scope: !313)
!315 = !DILocation(line: 964, column: 6, scope: !313)
!316 = !DILocation(line: 965, column: 19, scope: !292)
!317 = !DILocation(line: 965, column: 17, scope: !292)
!318 = !DILocation(line: 966, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !292, file: !2, line: 966, column: 10)
!320 = !DILocation(line: 966, column: 21, scope: !319)
!321 = !DILocation(line: 966, column: 10, scope: !292)
!322 = !DILocation(line: 967, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !2, line: 966, column: 30)
!324 = !DILocation(line: 967, column: 10, scope: !323)
!325 = !DILocation(line: 968, column: 6, scope: !323)
!326 = !DILocation(line: 974, column: 6, scope: !292)
!327 = !DILocation(line: 975, column: 1, scope: !292)
!328 = distinct !DISubprogram(name: "xmlMemoryDump", scope: !2, file: !2, line: 910, type: !155, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!329 = !DILocation(line: 926, column: 1, scope: !328)
!330 = !DISubprogram(name: "malloc", scope: !331, file: !331, line: 540, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!332 = !DISubroutineType(types: !333)
!333 = !{!15, !12}
!334 = !DISubprogram(name: "xmlMutexLock", scope: !129, file: !129, line: 42, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !128}
!337 = !DISubprogram(name: "xmlMutexUnlock", scope: !129, file: !129, line: 44, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = distinct !DISubprogram(name: "xmlMallocAtomicLoc", scope: !2, file: !2, line: 221, type: !182, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !339)
!339 = !{!340, !341, !342, !343, !344}
!340 = !DILocalVariable(name: "size", arg: 1, scope: !338, file: !2, line: 221, type: !12)
!341 = !DILocalVariable(name: "file", arg: 2, scope: !338, file: !2, line: 221, type: !26)
!342 = !DILocalVariable(name: "line", arg: 3, scope: !338, file: !2, line: 221, type: !125)
!343 = !DILocalVariable(name: "p", scope: !338, file: !2, line: 223, type: !16)
!344 = !DILocalVariable(name: "ret", scope: !338, file: !2, line: 224, type: !15)
!345 = !DILocation(line: 221, column: 27, scope: !338)
!346 = !DILocation(line: 221, column: 46, scope: !338)
!347 = !DILocation(line: 221, column: 56, scope: !338)
!348 = !DILocation(line: 223, column: 5, scope: !338)
!349 = !DILocation(line: 223, column: 13, scope: !338)
!350 = !DILocation(line: 224, column: 5, scope: !338)
!351 = !DILocation(line: 224, column: 11, scope: !338)
!352 = !DILocation(line: 226, column: 10, scope: !353)
!353 = distinct !DILexicalBlock(scope: !338, file: !2, line: 226, column: 9)
!354 = !DILocation(line: 226, column: 9, scope: !338)
!355 = !DILocation(line: 226, column: 29, scope: !353)
!356 = !DILocation(line: 234, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !338, file: !2, line: 234, column: 9)
!358 = !DILocation(line: 234, column: 14, scope: !357)
!359 = !DILocation(line: 234, column: 9, scope: !338)
!360 = !DILocation(line: 235, column: 2, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !2, line: 234, column: 45)
!362 = !DILocation(line: 235, column: 18, scope: !361)
!363 = !DILocation(line: 237, column: 2, scope: !361)
!364 = !DILocation(line: 238, column: 2, scope: !361)
!365 = !DILocation(line: 241, column: 40, scope: !338)
!366 = !DILocation(line: 241, column: 39, scope: !338)
!367 = !DILocation(line: 241, column: 20, scope: !338)
!368 = !DILocation(line: 241, column: 7, scope: !338)
!369 = !DILocation(line: 243, column: 10, scope: !370)
!370 = distinct !DILexicalBlock(scope: !338, file: !2, line: 243, column: 9)
!371 = !DILocation(line: 243, column: 9, scope: !338)
!372 = !DILocation(line: 244, column: 2, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !2, line: 243, column: 13)
!374 = !DILocation(line: 244, column: 18, scope: !373)
!375 = !DILocation(line: 246, column: 2, scope: !373)
!376 = !DILocation(line: 247, column: 2, scope: !373)
!377 = !DILocation(line: 249, column: 5, scope: !338)
!378 = !DILocation(line: 249, column: 8, scope: !338)
!379 = !DILocation(line: 249, column: 15, scope: !338)
!380 = !DILocation(line: 250, column: 18, scope: !338)
!381 = !DILocation(line: 250, column: 5, scope: !338)
!382 = !DILocation(line: 250, column: 8, scope: !338)
!383 = !DILocation(line: 250, column: 16, scope: !338)
!384 = !DILocation(line: 251, column: 5, scope: !338)
!385 = !DILocation(line: 251, column: 8, scope: !338)
!386 = !DILocation(line: 251, column: 16, scope: !338)
!387 = !DILocation(line: 252, column: 18, scope: !338)
!388 = !DILocation(line: 252, column: 5, scope: !338)
!389 = !DILocation(line: 252, column: 8, scope: !338)
!390 = !DILocation(line: 252, column: 16, scope: !338)
!391 = !DILocation(line: 253, column: 18, scope: !338)
!392 = !DILocation(line: 253, column: 5, scope: !338)
!393 = !DILocation(line: 253, column: 8, scope: !338)
!394 = !DILocation(line: 253, column: 16, scope: !338)
!395 = !DILocation(line: 254, column: 18, scope: !338)
!396 = !DILocation(line: 254, column: 5, scope: !338)
!397 = !DILocation(line: 255, column: 20, scope: !338)
!398 = !DILocation(line: 255, column: 5, scope: !338)
!399 = !DILocation(line: 255, column: 8, scope: !338)
!400 = !DILocation(line: 255, column: 18, scope: !338)
!401 = !DILocation(line: 256, column: 21, scope: !338)
!402 = !DILocation(line: 256, column: 18, scope: !338)
!403 = !DILocation(line: 257, column: 19, scope: !338)
!404 = !DILocation(line: 258, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !338, file: !2, line: 258, column: 9)
!406 = !DILocation(line: 258, column: 24, scope: !405)
!407 = !DILocation(line: 258, column: 22, scope: !405)
!408 = !DILocation(line: 258, column: 9, scope: !338)
!409 = !DILocation(line: 258, column: 59, scope: !405)
!410 = !DILocation(line: 258, column: 57, scope: !405)
!411 = !DILocation(line: 258, column: 41, scope: !405)
!412 = !DILocation(line: 262, column: 20, scope: !338)
!413 = !DILocation(line: 262, column: 5, scope: !338)
!414 = !DILocation(line: 269, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !338, file: !2, line: 269, column: 9)
!416 = !DILocation(line: 269, column: 30, scope: !415)
!417 = !DILocation(line: 269, column: 33, scope: !415)
!418 = !DILocation(line: 269, column: 27, scope: !415)
!419 = !DILocation(line: 269, column: 9, scope: !338)
!420 = !DILocation(line: 269, column: 44, scope: !415)
!421 = !DILocation(line: 271, column: 11, scope: !338)
!422 = !DILocation(line: 271, column: 9, scope: !338)
!423 = !DILocation(line: 273, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !338, file: !2, line: 273, column: 9)
!425 = !DILocation(line: 273, column: 31, scope: !424)
!426 = !DILocation(line: 273, column: 28, scope: !424)
!427 = !DILocation(line: 273, column: 9, scope: !338)
!428 = !DILocation(line: 274, column: 2, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !2, line: 273, column: 36)
!430 = !DILocation(line: 274, column: 18, scope: !429)
!431 = !DILocation(line: 275, column: 29, scope: !429)
!432 = !DILocation(line: 276, column: 19, scope: !429)
!433 = !DILocation(line: 277, column: 2, scope: !429)
!434 = !DILocation(line: 278, column: 5, scope: !429)
!435 = !DILocation(line: 282, column: 12, scope: !338)
!436 = !DILocation(line: 282, column: 5, scope: !338)
!437 = !DILocation(line: 283, column: 1, scope: !338)
!438 = distinct !DISubprogram(name: "xmlMemMalloc", scope: !2, file: !2, line: 294, type: !332, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !439)
!439 = !{!440}
!440 = !DILocalVariable(name: "size", arg: 1, scope: !438, file: !2, line: 294, type: !12)
!441 = !DILocation(line: 294, column: 21, scope: !438)
!442 = !DILocation(line: 296, column: 25, scope: !438)
!443 = !DILocation(line: 296, column: 12, scope: !438)
!444 = !DILocation(line: 296, column: 5, scope: !438)
!445 = distinct !DISubprogram(name: "xmlReallocLoc", scope: !2, file: !2, line: 312, type: !446, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{!15, !15, !12, !26, !125}
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456}
!449 = !DILocalVariable(name: "ptr", arg: 1, scope: !445, file: !2, line: 312, type: !15)
!450 = !DILocalVariable(name: "size", arg: 2, scope: !445, file: !2, line: 312, type: !12)
!451 = !DILocalVariable(name: "file", arg: 3, scope: !445, file: !2, line: 312, type: !26)
!452 = !DILocalVariable(name: "line", arg: 4, scope: !445, file: !2, line: 312, type: !125)
!453 = !DILocalVariable(name: "p", scope: !445, file: !2, line: 314, type: !16)
!454 = !DILocalVariable(name: "tmp", scope: !445, file: !2, line: 314, type: !16)
!455 = !DILocalVariable(name: "number", scope: !445, file: !2, line: 315, type: !14)
!456 = !DILabel(scope: !445, name: "error", file: !2, line: 388)
!457 = !DILocation(line: 312, column: 21, scope: !445)
!458 = !DILocation(line: 312, column: 32, scope: !445)
!459 = !DILocation(line: 312, column: 51, scope: !445)
!460 = !DILocation(line: 312, column: 61, scope: !445)
!461 = !DILocation(line: 314, column: 5, scope: !445)
!462 = !DILocation(line: 314, column: 13, scope: !445)
!463 = !DILocation(line: 314, column: 17, scope: !445)
!464 = !DILocation(line: 315, column: 5, scope: !445)
!465 = !DILocation(line: 315, column: 19, scope: !445)
!466 = !DILocation(line: 320, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !445, file: !2, line: 320, column: 9)
!468 = !DILocation(line: 320, column: 13, scope: !467)
!469 = !DILocation(line: 320, column: 9, scope: !445)
!470 = !DILocation(line: 321, column: 29, scope: !467)
!471 = !DILocation(line: 321, column: 35, scope: !467)
!472 = !DILocation(line: 321, column: 41, scope: !467)
!473 = !DILocation(line: 321, column: 16, scope: !467)
!474 = !DILocation(line: 321, column: 9, scope: !467)
!475 = !DILocation(line: 323, column: 10, scope: !476)
!476 = distinct !DILexicalBlock(scope: !445, file: !2, line: 323, column: 9)
!477 = !DILocation(line: 323, column: 9, scope: !445)
!478 = !DILocation(line: 323, column: 29, scope: !476)
!479 = !DILocation(line: 326, column: 9, scope: !445)
!480 = !DILocation(line: 326, column: 7, scope: !445)
!481 = !DILocation(line: 327, column: 14, scope: !445)
!482 = !DILocation(line: 327, column: 17, scope: !445)
!483 = !DILocation(line: 327, column: 12, scope: !445)
!484 = !DILocation(line: 328, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !445, file: !2, line: 328, column: 9)
!486 = !DILocation(line: 328, column: 30, scope: !485)
!487 = !DILocation(line: 328, column: 27, scope: !485)
!488 = !DILocation(line: 328, column: 9, scope: !445)
!489 = !DILocation(line: 328, column: 38, scope: !485)
!490 = !DILocation(line: 329, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !445, file: !2, line: 329, column: 9)
!492 = !DILocation(line: 329, column: 12, scope: !491)
!493 = !DILocation(line: 329, column: 19, scope: !491)
!494 = !DILocation(line: 329, column: 9, scope: !445)
!495 = !DILocation(line: 330, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !491, file: !2, line: 329, column: 30)
!497 = !DILocation(line: 331, column: 3, scope: !496)
!498 = !DILocation(line: 333, column: 5, scope: !445)
!499 = !DILocation(line: 333, column: 8, scope: !445)
!500 = !DILocation(line: 333, column: 15, scope: !445)
!501 = !DILocation(line: 334, column: 18, scope: !445)
!502 = !DILocation(line: 334, column: 5, scope: !445)
!503 = !DILocation(line: 335, column: 21, scope: !445)
!504 = !DILocation(line: 335, column: 24, scope: !445)
!505 = !DILocation(line: 335, column: 18, scope: !445)
!506 = !DILocation(line: 336, column: 19, scope: !445)
!507 = !DILocation(line: 343, column: 20, scope: !445)
!508 = !DILocation(line: 343, column: 5, scope: !445)
!509 = !DILocation(line: 345, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !445, file: !2, line: 345, column: 9)
!511 = !DILocation(line: 345, column: 14, scope: !510)
!512 = !DILocation(line: 345, column: 9, scope: !445)
!513 = !DILocation(line: 346, column: 2, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !2, line: 345, column: 45)
!515 = !DILocation(line: 346, column: 18, scope: !514)
!516 = !DILocation(line: 348, column: 2, scope: !514)
!517 = !DILocation(line: 349, column: 2, scope: !514)
!518 = !DILocation(line: 352, column: 30, scope: !445)
!519 = !DILocation(line: 352, column: 45, scope: !445)
!520 = !DILocation(line: 352, column: 44, scope: !445)
!521 = !DILocation(line: 352, column: 22, scope: !445)
!522 = !DILocation(line: 352, column: 9, scope: !445)
!523 = !DILocation(line: 353, column: 10, scope: !524)
!524 = distinct !DILexicalBlock(scope: !445, file: !2, line: 353, column: 9)
!525 = !DILocation(line: 353, column: 9, scope: !445)
!526 = !DILocation(line: 354, column: 8, scope: !527)
!527 = distinct !DILexicalBlock(scope: !524, file: !2, line: 353, column: 15)
!528 = !DILocation(line: 354, column: 3, scope: !527)
!529 = !DILocation(line: 355, column: 3, scope: !527)
!530 = !DILocation(line: 357, column: 9, scope: !445)
!531 = !DILocation(line: 357, column: 7, scope: !445)
!532 = !DILocation(line: 358, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !445, file: !2, line: 358, column: 9)
!534 = !DILocation(line: 358, column: 31, scope: !533)
!535 = !DILocation(line: 358, column: 28, scope: !533)
!536 = !DILocation(line: 358, column: 9, scope: !445)
!537 = !DILocation(line: 359, column: 2, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !2, line: 358, column: 36)
!539 = !DILocation(line: 359, column: 18, scope: !538)
!540 = !DILocation(line: 361, column: 4, scope: !538)
!541 = !DILocation(line: 361, column: 39, scope: !538)
!542 = !DILocation(line: 361, column: 42, scope: !538)
!543 = !DILocation(line: 362, column: 19, scope: !538)
!544 = !DILocation(line: 363, column: 2, scope: !538)
!545 = !DILocation(line: 364, column: 5, scope: !538)
!546 = !DILocation(line: 365, column: 5, scope: !445)
!547 = !DILocation(line: 365, column: 8, scope: !445)
!548 = !DILocation(line: 365, column: 15, scope: !445)
!549 = !DILocation(line: 366, column: 20, scope: !445)
!550 = !DILocation(line: 366, column: 5, scope: !445)
!551 = !DILocation(line: 366, column: 8, scope: !445)
!552 = !DILocation(line: 366, column: 18, scope: !445)
!553 = !DILocation(line: 367, column: 5, scope: !445)
!554 = !DILocation(line: 367, column: 8, scope: !445)
!555 = !DILocation(line: 367, column: 16, scope: !445)
!556 = !DILocation(line: 368, column: 18, scope: !445)
!557 = !DILocation(line: 368, column: 5, scope: !445)
!558 = !DILocation(line: 368, column: 8, scope: !445)
!559 = !DILocation(line: 368, column: 16, scope: !445)
!560 = !DILocation(line: 369, column: 18, scope: !445)
!561 = !DILocation(line: 369, column: 5, scope: !445)
!562 = !DILocation(line: 369, column: 8, scope: !445)
!563 = !DILocation(line: 369, column: 16, scope: !445)
!564 = !DILocation(line: 370, column: 18, scope: !445)
!565 = !DILocation(line: 370, column: 5, scope: !445)
!566 = !DILocation(line: 370, column: 8, scope: !445)
!567 = !DILocation(line: 370, column: 16, scope: !445)
!568 = !DILocation(line: 371, column: 18, scope: !445)
!569 = !DILocation(line: 371, column: 5, scope: !445)
!570 = !DILocation(line: 372, column: 21, scope: !445)
!571 = !DILocation(line: 372, column: 18, scope: !445)
!572 = !DILocation(line: 373, column: 19, scope: !445)
!573 = !DILocation(line: 374, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !445, file: !2, line: 374, column: 9)
!575 = !DILocation(line: 374, column: 24, scope: !574)
!576 = !DILocation(line: 374, column: 22, scope: !574)
!577 = !DILocation(line: 374, column: 9, scope: !445)
!578 = !DILocation(line: 374, column: 59, scope: !574)
!579 = !DILocation(line: 374, column: 57, scope: !574)
!580 = !DILocation(line: 374, column: 41, scope: !574)
!581 = !DILocation(line: 378, column: 20, scope: !445)
!582 = !DILocation(line: 378, column: 5, scope: !445)
!583 = !DILocation(line: 386, column: 12, scope: !445)
!584 = !DILocation(line: 386, column: 5, scope: !445)
!585 = !DILocation(line: 388, column: 1, scope: !445)
!586 = !DILocation(line: 389, column: 5, scope: !445)
!587 = !DILocation(line: 390, column: 1, scope: !445)
!588 = distinct !DISubprogram(name: "debugmem_tag_error", scope: !2, file: !2, line: 841, type: !589, scopeLine: 842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !15}
!591 = !{!592}
!592 = !DILocalVariable(name: "p", arg: 1, scope: !588, file: !2, line: 841, type: !15)
!593 = !DILocation(line: 841, column: 38, scope: !588)
!594 = !DILocation(line: 843, column: 6, scope: !588)
!595 = !DILocation(line: 843, column: 22, scope: !588)
!596 = !DILocation(line: 844, column: 49, scope: !588)
!597 = !DILocation(line: 849, column: 1, scope: !588)
!598 = !DISubprogram(name: "realloc", scope: !331, file: !331, line: 551, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{!15, !15, !12}
!601 = !DISubprogram(name: "free", scope: !331, file: !331, line: 555, type: !589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = distinct !DISubprogram(name: "xmlMemRealloc", scope: !2, file: !2, line: 403, type: !599, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !603)
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "ptr", arg: 1, scope: !602, file: !2, line: 403, type: !15)
!605 = !DILocalVariable(name: "size", arg: 2, scope: !602, file: !2, line: 403, type: !12)
!606 = !DILocation(line: 403, column: 21, scope: !602)
!607 = !DILocation(line: 403, column: 32, scope: !602)
!608 = !DILocation(line: 404, column: 26, scope: !602)
!609 = !DILocation(line: 404, column: 31, scope: !602)
!610 = !DILocation(line: 404, column: 12, scope: !602)
!611 = !DILocation(line: 404, column: 5, scope: !602)
!612 = distinct !DISubprogram(name: "xmlMemFree", scope: !2, file: !2, line: 414, type: !589, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DILocalVariable(name: "ptr", arg: 1, scope: !612, file: !2, line: 414, type: !15)
!615 = !DILocalVariable(name: "p", scope: !612, file: !2, line: 416, type: !16)
!616 = !DILocalVariable(name: "target", scope: !612, file: !2, line: 417, type: !28)
!617 = !DILabel(scope: !612, name: "error", file: !2, line: 471)
!618 = !DILocation(line: 414, column: 18, scope: !612)
!619 = !DILocation(line: 416, column: 5, scope: !612)
!620 = !DILocation(line: 416, column: 13, scope: !612)
!621 = !DILocation(line: 417, column: 5, scope: !612)
!622 = !DILocation(line: 417, column: 11, scope: !612)
!623 = !DILocation(line: 422, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !612, file: !2, line: 422, column: 9)
!625 = !DILocation(line: 422, column: 13, scope: !624)
!626 = !DILocation(line: 422, column: 9, scope: !612)
!627 = !DILocation(line: 423, column: 2, scope: !624)
!628 = !DILocation(line: 425, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !612, file: !2, line: 425, column: 9)
!630 = !DILocation(line: 425, column: 13, scope: !629)
!631 = !DILocation(line: 425, column: 9, scope: !612)
!632 = !DILocation(line: 426, column: 2, scope: !633)
!633 = distinct !DILexicalBlock(scope: !629, file: !2, line: 425, column: 29)
!634 = !DILocation(line: 426, column: 18, scope: !633)
!635 = !DILocation(line: 428, column: 9, scope: !633)
!636 = !DILocation(line: 431, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !612, file: !2, line: 431, column: 9)
!638 = !DILocation(line: 431, column: 31, scope: !637)
!639 = !DILocation(line: 431, column: 28, scope: !637)
!640 = !DILocation(line: 431, column: 9, scope: !612)
!641 = !DILocation(line: 432, column: 2, scope: !642)
!642 = distinct !DILexicalBlock(scope: !637, file: !2, line: 431, column: 36)
!643 = !DILocation(line: 432, column: 18, scope: !642)
!644 = !DILocation(line: 433, column: 22, scope: !642)
!645 = !DILocation(line: 434, column: 2, scope: !642)
!646 = !DILocation(line: 435, column: 5, scope: !642)
!647 = !DILocation(line: 439, column: 23, scope: !612)
!648 = !DILocation(line: 439, column: 12, scope: !612)
!649 = !DILocation(line: 441, column: 9, scope: !612)
!650 = !DILocation(line: 441, column: 7, scope: !612)
!651 = !DILocation(line: 442, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !612, file: !2, line: 442, column: 9)
!653 = !DILocation(line: 442, column: 12, scope: !652)
!654 = !DILocation(line: 442, column: 19, scope: !652)
!655 = !DILocation(line: 442, column: 9, scope: !612)
!656 = !DILocation(line: 443, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !652, file: !2, line: 442, column: 30)
!658 = !DILocation(line: 444, column: 9, scope: !657)
!659 = !DILocation(line: 446, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !612, file: !2, line: 446, column: 9)
!661 = !DILocation(line: 446, column: 30, scope: !660)
!662 = !DILocation(line: 446, column: 33, scope: !660)
!663 = !DILocation(line: 446, column: 27, scope: !660)
!664 = !DILocation(line: 446, column: 9, scope: !612)
!665 = !DILocation(line: 446, column: 44, scope: !660)
!666 = !DILocation(line: 447, column: 5, scope: !612)
!667 = !DILocation(line: 447, column: 8, scope: !612)
!668 = !DILocation(line: 447, column: 15, scope: !612)
!669 = !DILocation(line: 448, column: 12, scope: !612)
!670 = !DILocation(line: 448, column: 24, scope: !612)
!671 = !DILocation(line: 448, column: 27, scope: !612)
!672 = !DILocation(line: 448, column: 5, scope: !612)
!673 = !DILocation(line: 449, column: 18, scope: !612)
!674 = !DILocation(line: 449, column: 5, scope: !612)
!675 = !DILocation(line: 450, column: 21, scope: !612)
!676 = !DILocation(line: 450, column: 24, scope: !612)
!677 = !DILocation(line: 450, column: 18, scope: !612)
!678 = !DILocation(line: 451, column: 19, scope: !612)
!679 = !DILocation(line: 458, column: 20, scope: !612)
!680 = !DILocation(line: 458, column: 5, scope: !612)
!681 = !DILocation(line: 460, column: 10, scope: !612)
!682 = !DILocation(line: 460, column: 5, scope: !612)
!683 = !DILocation(line: 469, column: 5, scope: !612)
!684 = !DILocation(line: 471, column: 1, scope: !612)
!685 = !DILocation(line: 472, column: 5, scope: !612)
!686 = !DILocation(line: 472, column: 21, scope: !612)
!687 = !DILocation(line: 473, column: 32, scope: !612)
!688 = !DILocation(line: 474, column: 5, scope: !612)
!689 = !DILocation(line: 475, column: 5, scope: !612)
!690 = !DILocation(line: 476, column: 1, scope: !612)
!691 = distinct !DISubprogram(name: "xmlMemStrdupLoc", scope: !2, file: !2, line: 490, type: !692, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!28, !26, !26, !125}
!694 = !{!695, !696, !697, !698, !699, !700, !701}
!695 = !DILocalVariable(name: "str", arg: 1, scope: !691, file: !2, line: 490, type: !26)
!696 = !DILocalVariable(name: "file", arg: 2, scope: !691, file: !2, line: 490, type: !26)
!697 = !DILocalVariable(name: "line", arg: 3, scope: !691, file: !2, line: 490, type: !125)
!698 = !DILocalVariable(name: "s", scope: !691, file: !2, line: 492, type: !28)
!699 = !DILocalVariable(name: "size", scope: !691, file: !2, line: 493, type: !12)
!700 = !DILocalVariable(name: "p", scope: !691, file: !2, line: 494, type: !16)
!701 = !DILabel(scope: !691, name: "error", file: !2, line: 541)
!702 = !DILocation(line: 490, column: 29, scope: !691)
!703 = !DILocation(line: 490, column: 46, scope: !691)
!704 = !DILocation(line: 490, column: 56, scope: !691)
!705 = !DILocation(line: 492, column: 5, scope: !691)
!706 = !DILocation(line: 492, column: 11, scope: !691)
!707 = !DILocation(line: 493, column: 5, scope: !691)
!708 = !DILocation(line: 493, column: 12, scope: !691)
!709 = !DILocation(line: 493, column: 26, scope: !691)
!710 = !DILocation(line: 493, column: 19, scope: !691)
!711 = !DILocation(line: 493, column: 31, scope: !691)
!712 = !DILocation(line: 494, column: 5, scope: !691)
!713 = !DILocation(line: 494, column: 13, scope: !691)
!714 = !DILocation(line: 496, column: 10, scope: !715)
!715 = distinct !DILexicalBlock(scope: !691, file: !2, line: 496, column: 9)
!716 = !DILocation(line: 496, column: 9, scope: !691)
!717 = !DILocation(line: 496, column: 29, scope: !715)
!718 = !DILocation(line: 499, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !691, file: !2, line: 499, column: 9)
!720 = !DILocation(line: 499, column: 14, scope: !719)
!721 = !DILocation(line: 499, column: 9, scope: !691)
!722 = !DILocation(line: 500, column: 2, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !2, line: 499, column: 45)
!724 = !DILocation(line: 500, column: 18, scope: !723)
!725 = !DILocation(line: 502, column: 2, scope: !723)
!726 = !DILocation(line: 503, column: 2, scope: !723)
!727 = !DILocation(line: 506, column: 40, scope: !691)
!728 = !DILocation(line: 506, column: 39, scope: !691)
!729 = !DILocation(line: 506, column: 20, scope: !691)
!730 = !DILocation(line: 506, column: 7, scope: !691)
!731 = !DILocation(line: 507, column: 10, scope: !732)
!732 = distinct !DILexicalBlock(scope: !691, file: !2, line: 507, column: 9)
!733 = !DILocation(line: 507, column: 9, scope: !691)
!734 = !DILocation(line: 508, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !2, line: 507, column: 13)
!736 = !DILocation(line: 510, column: 5, scope: !691)
!737 = !DILocation(line: 510, column: 8, scope: !691)
!738 = !DILocation(line: 510, column: 15, scope: !691)
!739 = !DILocation(line: 511, column: 18, scope: !691)
!740 = !DILocation(line: 511, column: 5, scope: !691)
!741 = !DILocation(line: 511, column: 8, scope: !691)
!742 = !DILocation(line: 511, column: 16, scope: !691)
!743 = !DILocation(line: 512, column: 5, scope: !691)
!744 = !DILocation(line: 512, column: 8, scope: !691)
!745 = !DILocation(line: 512, column: 16, scope: !691)
!746 = !DILocation(line: 513, column: 18, scope: !691)
!747 = !DILocation(line: 513, column: 5, scope: !691)
!748 = !DILocation(line: 513, column: 8, scope: !691)
!749 = !DILocation(line: 513, column: 16, scope: !691)
!750 = !DILocation(line: 514, column: 18, scope: !691)
!751 = !DILocation(line: 514, column: 5, scope: !691)
!752 = !DILocation(line: 514, column: 8, scope: !691)
!753 = !DILocation(line: 514, column: 16, scope: !691)
!754 = !DILocation(line: 515, column: 18, scope: !691)
!755 = !DILocation(line: 515, column: 5, scope: !691)
!756 = !DILocation(line: 516, column: 20, scope: !691)
!757 = !DILocation(line: 516, column: 5, scope: !691)
!758 = !DILocation(line: 516, column: 8, scope: !691)
!759 = !DILocation(line: 516, column: 18, scope: !691)
!760 = !DILocation(line: 517, column: 21, scope: !691)
!761 = !DILocation(line: 517, column: 18, scope: !691)
!762 = !DILocation(line: 518, column: 19, scope: !691)
!763 = !DILocation(line: 519, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !691, file: !2, line: 519, column: 9)
!765 = !DILocation(line: 519, column: 24, scope: !764)
!766 = !DILocation(line: 519, column: 22, scope: !764)
!767 = !DILocation(line: 519, column: 9, scope: !691)
!768 = !DILocation(line: 519, column: 59, scope: !764)
!769 = !DILocation(line: 519, column: 57, scope: !764)
!770 = !DILocation(line: 519, column: 41, scope: !764)
!771 = !DILocation(line: 523, column: 20, scope: !691)
!772 = !DILocation(line: 523, column: 5, scope: !691)
!773 = !DILocation(line: 525, column: 18, scope: !691)
!774 = !DILocation(line: 525, column: 7, scope: !691)
!775 = !DILocation(line: 527, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !691, file: !2, line: 527, column: 9)
!777 = !DILocation(line: 527, column: 30, scope: !776)
!778 = !DILocation(line: 527, column: 33, scope: !776)
!779 = !DILocation(line: 527, column: 27, scope: !776)
!780 = !DILocation(line: 527, column: 9, scope: !691)
!781 = !DILocation(line: 527, column: 44, scope: !776)
!782 = !DILocation(line: 529, column: 12, scope: !691)
!783 = !DILocation(line: 529, column: 14, scope: !691)
!784 = !DILocation(line: 529, column: 5, scope: !691)
!785 = !DILocation(line: 533, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !691, file: !2, line: 533, column: 9)
!787 = !DILocation(line: 533, column: 31, scope: !786)
!788 = !DILocation(line: 533, column: 28, scope: !786)
!789 = !DILocation(line: 533, column: 9, scope: !691)
!790 = !DILocation(line: 534, column: 2, scope: !791)
!791 = distinct !DILexicalBlock(scope: !786, file: !2, line: 533, column: 34)
!792 = !DILocation(line: 534, column: 18, scope: !791)
!793 = !DILocation(line: 535, column: 26, scope: !791)
!794 = !DILocation(line: 536, column: 2, scope: !791)
!795 = !DILocation(line: 537, column: 5, scope: !791)
!796 = !DILocation(line: 539, column: 12, scope: !691)
!797 = !DILocation(line: 539, column: 5, scope: !691)
!798 = !DILocation(line: 541, column: 1, scope: !691)
!799 = !DILocation(line: 542, column: 5, scope: !691)
!800 = !DILocation(line: 543, column: 1, scope: !691)
!801 = !DISubprogram(name: "strlen", scope: !802, file: !802, line: 407, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!803 = !DISubroutineType(types: !804)
!804 = !{!14, !26}
!805 = !DISubprogram(name: "strcpy", scope: !802, file: !802, line: 141, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!28, !808, !809}
!808 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!810 = distinct !DISubprogram(name: "xmlMemoryStrdup", scope: !2, file: !2, line: 555, type: !811, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!28, !26}
!813 = !{!814}
!814 = !DILocalVariable(name: "str", arg: 1, scope: !810, file: !2, line: 555, type: !26)
!815 = !DILocation(line: 555, column: 29, scope: !810)
!816 = !DILocation(line: 556, column: 28, scope: !810)
!817 = !DILocation(line: 556, column: 12, scope: !810)
!818 = !DILocation(line: 556, column: 5, scope: !810)
!819 = distinct !DISubprogram(name: "xmlMemUsed", scope: !2, file: !2, line: 568, type: !293, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !820)
!820 = !{!821}
!821 = !DILocalVariable(name: "res", scope: !819, file: !2, line: 569, type: !125)
!822 = !DILocation(line: 569, column: 5, scope: !819)
!823 = !DILocation(line: 569, column: 9, scope: !819)
!824 = !DILocation(line: 571, column: 18, scope: !819)
!825 = !DILocation(line: 571, column: 5, scope: !819)
!826 = !DILocation(line: 572, column: 11, scope: !819)
!827 = !DILocation(line: 572, column: 9, scope: !819)
!828 = !DILocation(line: 573, column: 20, scope: !819)
!829 = !DILocation(line: 573, column: 5, scope: !819)
!830 = !DILocation(line: 574, column: 12, scope: !819)
!831 = !DILocation(line: 575, column: 1, scope: !819)
!832 = !DILocation(line: 574, column: 5, scope: !819)
!833 = distinct !DISubprogram(name: "xmlMemBlocks", scope: !2, file: !2, line: 586, type: !293, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !834)
!834 = !{!835}
!835 = !DILocalVariable(name: "res", scope: !833, file: !2, line: 587, type: !125)
!836 = !DILocation(line: 587, column: 5, scope: !833)
!837 = !DILocation(line: 587, column: 9, scope: !833)
!838 = !DILocation(line: 589, column: 18, scope: !833)
!839 = !DILocation(line: 589, column: 5, scope: !833)
!840 = !DILocation(line: 590, column: 11, scope: !833)
!841 = !DILocation(line: 590, column: 9, scope: !833)
!842 = !DILocation(line: 591, column: 20, scope: !833)
!843 = !DILocation(line: 591, column: 5, scope: !833)
!844 = !DILocation(line: 592, column: 12, scope: !833)
!845 = !DILocation(line: 593, column: 1, scope: !833)
!846 = !DILocation(line: 592, column: 5, scope: !833)
!847 = distinct !DISubprogram(name: "xmlMemDisplayLast", scope: !2, file: !2, line: 668, type: !848, scopeLine: 669, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !906)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !850, !878}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !852, line: 7, baseType: !853)
!852 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !854, line: 49, size: 1728, elements: !855)
!854 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!855 = !{!856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !871, !873, !874, !875, !879, !881, !883, !887, !890, !892, !895, !898, !899, !900, !901, !902}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !853, file: !854, line: 51, baseType: !125, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !853, file: !854, line: 54, baseType: !28, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !853, file: !854, line: 55, baseType: !28, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !853, file: !854, line: 56, baseType: !28, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !853, file: !854, line: 57, baseType: !28, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !853, file: !854, line: 58, baseType: !28, size: 64, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !853, file: !854, line: 59, baseType: !28, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !853, file: !854, line: 60, baseType: !28, size: 64, offset: 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !853, file: !854, line: 61, baseType: !28, size: 64, offset: 512)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !853, file: !854, line: 64, baseType: !28, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !853, file: !854, line: 65, baseType: !28, size: 64, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !853, file: !854, line: 66, baseType: !28, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !853, file: !854, line: 68, baseType: !869, size: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !854, line: 36, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !853, file: !854, line: 70, baseType: !872, size: 64, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !853, file: !854, line: 72, baseType: !125, size: 32, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !853, file: !854, line: 73, baseType: !125, size: 32, offset: 928)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !853, file: !854, line: 74, baseType: !876, size: 64, offset: 960)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !877, line: 152, baseType: !878)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!878 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !853, file: !854, line: 77, baseType: !880, size: 16, offset: 1024)
!880 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !853, file: !854, line: 78, baseType: !882, size: 8, offset: 1040)
!882 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !853, file: !854, line: 79, baseType: !884, size: 8, offset: 1048)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 1)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !853, file: !854, line: 81, baseType: !888, size: 64, offset: 1088)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !854, line: 43, baseType: null)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !853, file: !854, line: 89, baseType: !891, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !877, line: 153, baseType: !878)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !853, file: !854, line: 91, baseType: !893, size: 64, offset: 1216)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !854, line: 37, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !853, file: !854, line: 92, baseType: !896, size: 64, offset: 1280)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !854, line: 38, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !853, file: !854, line: 93, baseType: !872, size: 64, offset: 1344)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !853, file: !854, line: 94, baseType: !15, size: 64, offset: 1408)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !853, file: !854, line: 95, baseType: !12, size: 64, offset: 1472)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !853, file: !854, line: 96, baseType: !125, size: 32, offset: 1536)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !853, file: !854, line: 98, baseType: !903, size: 160, offset: 1568)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 20)
!906 = !{!907, !908, !909}
!907 = !DILocalVariable(name: "fp", arg: 1, scope: !847, file: !2, line: 668, type: !850)
!908 = !DILocalVariable(name: "nbBytes", arg: 2, scope: !847, file: !2, line: 668, type: !878)
!909 = !DILocalVariable(name: "old_fp", scope: !847, file: !2, line: 675, type: !850)
!910 = !DILocation(line: 668, column: 25, scope: !847)
!911 = !DILocation(line: 668, column: 34, scope: !847)
!912 = !DILocation(line: 675, column: 5, scope: !847)
!913 = !DILocation(line: 675, column: 11, scope: !847)
!914 = !DILocation(line: 675, column: 20, scope: !847)
!915 = !DILocation(line: 677, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !847, file: !2, line: 677, column: 9)
!917 = !DILocation(line: 677, column: 17, scope: !916)
!918 = !DILocation(line: 677, column: 9, scope: !847)
!919 = !DILocation(line: 678, column: 9, scope: !916)
!920 = !DILocation(line: 680, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !847, file: !2, line: 680, column: 9)
!922 = !DILocation(line: 680, column: 12, scope: !921)
!923 = !DILocation(line: 680, column: 9, scope: !847)
!924 = !DILocation(line: 681, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !2, line: 680, column: 21)
!926 = !DILocation(line: 681, column: 5, scope: !925)
!927 = !DILocation(line: 682, column: 6, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !2, line: 682, column: 6)
!929 = !DILocation(line: 682, column: 9, scope: !928)
!930 = !DILocation(line: 682, column: 6, scope: !925)
!931 = !DILocation(line: 683, column: 6, scope: !928)
!932 = !DILocation(line: 684, column: 5, scope: !925)
!933 = !DILocation(line: 724, column: 13, scope: !847)
!934 = !DILocation(line: 724, column: 5, scope: !847)
!935 = !DILocation(line: 726, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !847, file: !2, line: 726, column: 9)
!937 = !DILocation(line: 726, column: 16, scope: !936)
!938 = !DILocation(line: 726, column: 9, scope: !847)
!939 = !DILocation(line: 727, column: 9, scope: !936)
!940 = !DILocation(line: 727, column: 2, scope: !936)
!941 = !DILocation(line: 728, column: 1, scope: !847)
!942 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !943, file: !943, line: 270, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!944 = !DISubroutineType(types: !945)
!945 = !{!850, !809, !809}
!946 = !DISubprogram(name: "fprintf", scope: !943, file: !943, line: 350, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubroutineType(types: !948)
!948 = !{!125, !949, !809, null}
!949 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !850)
!950 = !DISubprogram(name: "fclose", scope: !943, file: !943, line: 178, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!125, !850}
!953 = distinct !DISubprogram(name: "xmlMemDisplay", scope: !2, file: !2, line: 739, type: !954, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !850}
!956 = !{!957, !958}
!957 = !DILocalVariable(name: "fp", arg: 1, scope: !953, file: !2, line: 739, type: !850)
!958 = !DILocalVariable(name: "old_fp", scope: !953, file: !2, line: 749, type: !850)
!959 = !DILocation(line: 739, column: 21, scope: !953)
!960 = !DILocation(line: 749, column: 5, scope: !953)
!961 = !DILocation(line: 749, column: 11, scope: !953)
!962 = !DILocation(line: 749, column: 20, scope: !953)
!963 = !DILocation(line: 751, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !2, line: 751, column: 9)
!965 = !DILocation(line: 751, column: 12, scope: !964)
!966 = !DILocation(line: 751, column: 9, scope: !953)
!967 = !DILocation(line: 752, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !2, line: 751, column: 21)
!969 = !DILocation(line: 752, column: 5, scope: !968)
!970 = !DILocation(line: 753, column: 6, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !2, line: 753, column: 6)
!972 = !DILocation(line: 753, column: 9, scope: !971)
!973 = !DILocation(line: 753, column: 6, scope: !968)
!974 = !DILocation(line: 754, column: 6, scope: !971)
!975 = !DILocation(line: 755, column: 5, scope: !968)
!976 = !DILocation(line: 800, column: 13, scope: !953)
!977 = !DILocation(line: 800, column: 5, scope: !953)
!978 = !DILocation(line: 802, column: 9, scope: !979)
!979 = distinct !DILexicalBlock(scope: !953, file: !2, line: 802, column: 9)
!980 = !DILocation(line: 802, column: 16, scope: !979)
!981 = !DILocation(line: 802, column: 9, scope: !953)
!982 = !DILocation(line: 803, column: 9, scope: !979)
!983 = !DILocation(line: 803, column: 2, scope: !979)
!984 = !DILocation(line: 804, column: 1, scope: !953)
!985 = distinct !DISubprogram(name: "xmlMemShow", scope: !2, file: !2, line: 865, type: !986, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !850, !125}
!988 = !{!989, !990}
!989 = !DILocalVariable(name: "fp", arg: 1, scope: !985, file: !2, line: 865, type: !850)
!990 = !DILocalVariable(name: "nr", arg: 2, scope: !985, file: !2, line: 865, type: !125)
!991 = !DILocation(line: 865, column: 18, scope: !985)
!992 = !DILocation(line: 865, column: 26, scope: !985)
!993 = !DILocation(line: 871, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !985, file: !2, line: 871, column: 9)
!995 = !DILocation(line: 871, column: 12, scope: !994)
!996 = !DILocation(line: 871, column: 9, scope: !985)
!997 = !DILocation(line: 872, column: 10, scope: !994)
!998 = !DILocation(line: 873, column: 3, scope: !994)
!999 = !DILocation(line: 873, column: 17, scope: !994)
!1000 = !DILocation(line: 872, column: 2, scope: !994)
!1001 = !DILocation(line: 901, column: 1, scope: !985)
!1002 = !DISubprogram(name: "xmlNewMutex", scope: !129, file: !129, line: 40, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!128}
!1005 = !DISubprogram(name: "getenv", scope: !331, file: !331, line: 641, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !943, file: !943, line: 439, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!125, !809, !809, null}
!1009 = distinct !DISubprogram(name: "xmlCleanupMemory", scope: !2, file: !2, line: 989, type: !155, scopeLine: 989, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!1010 = !DILocation(line: 994, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 994, column: 9)
!1012 = !DILocation(line: 994, column: 27, scope: !1011)
!1013 = !DILocation(line: 994, column: 9, scope: !1009)
!1014 = !DILocation(line: 995, column: 9, scope: !1011)
!1015 = !DILocation(line: 997, column: 18, scope: !1009)
!1016 = !DILocation(line: 997, column: 5, scope: !1009)
!1017 = !DILocation(line: 998, column: 17, scope: !1009)
!1018 = !DILocation(line: 999, column: 23, scope: !1009)
!1019 = !DILocation(line: 1004, column: 1, scope: !1009)
!1020 = !DISubprogram(name: "xmlFreeMutex", scope: !129, file: !129, line: 46, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = distinct !DISubprogram(name: "xmlMemSetup", scope: !2, file: !2, line: 1022, type: !1022, scopeLine: 1023, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1033)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!125, !1024, !1027, !1029, !1031}
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlFreeFunc", file: !1025, line: 57, baseType: !1026)
!1025 = !DIFile(filename: "./include/libxml/xmlmemory.h", directory: "/local-ssd/libxml2-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y-build/aidengro/spack-stage-libxml2-2.10.3-xsvwup3iyubmj2kq4vl5tr75uyk5mi6y/spack-src", checksumkind: CSK_MD5, checksum: "7e446747cb8069ea015f0cc10b63166b")
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlMallocFunc", file: !1025, line: 66, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlReallocFunc", file: !1025, line: 77, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStrdupFunc", file: !1025, line: 87, baseType: !1032)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!1033 = !{!1034, !1035, !1036, !1037}
!1034 = !DILocalVariable(name: "freeFunc", arg: 1, scope: !1021, file: !2, line: 1022, type: !1024)
!1035 = !DILocalVariable(name: "mallocFunc", arg: 2, scope: !1021, file: !2, line: 1022, type: !1027)
!1036 = !DILocalVariable(name: "reallocFunc", arg: 3, scope: !1021, file: !2, line: 1023, type: !1029)
!1037 = !DILocalVariable(name: "strdupFunc", arg: 4, scope: !1021, file: !2, line: 1023, type: !1031)
!1038 = !DILocation(line: 1022, column: 25, scope: !1021)
!1039 = !DILocation(line: 1022, column: 49, scope: !1021)
!1040 = !DILocation(line: 1023, column: 28, scope: !1021)
!1041 = !DILocation(line: 1023, column: 55, scope: !1021)
!1042 = !DILocation(line: 1028, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 1028, column: 9)
!1044 = !DILocation(line: 1028, column: 18, scope: !1043)
!1045 = !DILocation(line: 1028, column: 9, scope: !1021)
!1046 = !DILocation(line: 1029, column: 2, scope: !1043)
!1047 = !DILocation(line: 1030, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 1030, column: 9)
!1049 = !DILocation(line: 1030, column: 20, scope: !1048)
!1050 = !DILocation(line: 1030, column: 9, scope: !1021)
!1051 = !DILocation(line: 1031, column: 2, scope: !1048)
!1052 = !DILocation(line: 1032, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 1032, column: 9)
!1054 = !DILocation(line: 1032, column: 21, scope: !1053)
!1055 = !DILocation(line: 1032, column: 9, scope: !1021)
!1056 = !DILocation(line: 1033, column: 2, scope: !1053)
!1057 = !DILocation(line: 1034, column: 9, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 1034, column: 9)
!1059 = !DILocation(line: 1034, column: 20, scope: !1058)
!1060 = !DILocation(line: 1034, column: 9, scope: !1021)
!1061 = !DILocation(line: 1035, column: 2, scope: !1058)
!1062 = !DILocation(line: 1036, column: 15, scope: !1021)
!1063 = !DILocation(line: 1036, column: 13, scope: !1021)
!1064 = !DILocation(line: 1037, column: 17, scope: !1021)
!1065 = !DILocation(line: 1037, column: 15, scope: !1021)
!1066 = !DILocation(line: 1038, column: 23, scope: !1021)
!1067 = !DILocation(line: 1038, column: 21, scope: !1021)
!1068 = !DILocation(line: 1039, column: 18, scope: !1021)
!1069 = !DILocation(line: 1039, column: 16, scope: !1021)
!1070 = !DILocation(line: 1040, column: 20, scope: !1021)
!1071 = !DILocation(line: 1040, column: 18, scope: !1021)
!1072 = !DILocation(line: 1045, column: 5, scope: !1021)
!1073 = !DILocation(line: 1046, column: 1, scope: !1021)
!1074 = distinct !DISubprogram(name: "xmlMemGet", scope: !2, file: !2, line: 1060, type: !1075, scopeLine: 1061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1081)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!125, !1077, !1078, !1079, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1081 = !{!1082, !1083, !1084, !1085}
!1082 = !DILocalVariable(name: "freeFunc", arg: 1, scope: !1074, file: !2, line: 1060, type: !1077)
!1083 = !DILocalVariable(name: "mallocFunc", arg: 2, scope: !1074, file: !2, line: 1060, type: !1078)
!1084 = !DILocalVariable(name: "reallocFunc", arg: 3, scope: !1074, file: !2, line: 1061, type: !1079)
!1085 = !DILocalVariable(name: "strdupFunc", arg: 4, scope: !1074, file: !2, line: 1061, type: !1080)
!1086 = !DILocation(line: 1060, column: 24, scope: !1074)
!1087 = !DILocation(line: 1060, column: 49, scope: !1074)
!1088 = !DILocation(line: 1061, column: 20, scope: !1074)
!1089 = !DILocation(line: 1061, column: 48, scope: !1074)
!1090 = !DILocation(line: 1062, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 1062, column: 9)
!1092 = !DILocation(line: 1062, column: 18, scope: !1091)
!1093 = !DILocation(line: 1062, column: 9, scope: !1074)
!1094 = !DILocation(line: 1062, column: 39, scope: !1091)
!1095 = !DILocation(line: 1062, column: 28, scope: !1091)
!1096 = !DILocation(line: 1062, column: 37, scope: !1091)
!1097 = !DILocation(line: 1062, column: 27, scope: !1091)
!1098 = !DILocation(line: 1063, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 1063, column: 9)
!1100 = !DILocation(line: 1063, column: 20, scope: !1099)
!1101 = !DILocation(line: 1063, column: 9, scope: !1074)
!1102 = !DILocation(line: 1063, column: 43, scope: !1099)
!1103 = !DILocation(line: 1063, column: 30, scope: !1099)
!1104 = !DILocation(line: 1063, column: 41, scope: !1099)
!1105 = !DILocation(line: 1063, column: 29, scope: !1099)
!1106 = !DILocation(line: 1064, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 1064, column: 9)
!1108 = !DILocation(line: 1064, column: 21, scope: !1107)
!1109 = !DILocation(line: 1064, column: 9, scope: !1074)
!1110 = !DILocation(line: 1064, column: 45, scope: !1107)
!1111 = !DILocation(line: 1064, column: 31, scope: !1107)
!1112 = !DILocation(line: 1064, column: 43, scope: !1107)
!1113 = !DILocation(line: 1064, column: 30, scope: !1107)
!1114 = !DILocation(line: 1065, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 1065, column: 9)
!1116 = !DILocation(line: 1065, column: 20, scope: !1115)
!1117 = !DILocation(line: 1065, column: 9, scope: !1074)
!1118 = !DILocation(line: 1065, column: 43, scope: !1115)
!1119 = !DILocation(line: 1065, column: 30, scope: !1115)
!1120 = !DILocation(line: 1065, column: 41, scope: !1115)
!1121 = !DILocation(line: 1065, column: 29, scope: !1115)
!1122 = !DILocation(line: 1066, column: 5, scope: !1074)
!1123 = distinct !DISubprogram(name: "xmlGcMemSetup", scope: !2, file: !2, line: 1088, type: !1124, scopeLine: 1090, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!125, !1024, !1027, !1027, !1029, !1031}
!1126 = !{!1127, !1128, !1129, !1130, !1131}
!1127 = !DILocalVariable(name: "freeFunc", arg: 1, scope: !1123, file: !2, line: 1088, type: !1024)
!1128 = !DILocalVariable(name: "mallocFunc", arg: 2, scope: !1123, file: !2, line: 1088, type: !1027)
!1129 = !DILocalVariable(name: "mallocAtomicFunc", arg: 3, scope: !1123, file: !2, line: 1089, type: !1027)
!1130 = !DILocalVariable(name: "reallocFunc", arg: 4, scope: !1123, file: !2, line: 1089, type: !1029)
!1131 = !DILocalVariable(name: "strdupFunc", arg: 5, scope: !1123, file: !2, line: 1090, type: !1031)
!1132 = !DILocation(line: 1088, column: 27, scope: !1123)
!1133 = !DILocation(line: 1088, column: 51, scope: !1123)
!1134 = !DILocation(line: 1089, column: 29, scope: !1123)
!1135 = !DILocation(line: 1089, column: 62, scope: !1123)
!1136 = !DILocation(line: 1090, column: 22, scope: !1123)
!1137 = !DILocation(line: 1095, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1095, column: 9)
!1139 = !DILocation(line: 1095, column: 18, scope: !1138)
!1140 = !DILocation(line: 1095, column: 9, scope: !1123)
!1141 = !DILocation(line: 1096, column: 2, scope: !1138)
!1142 = !DILocation(line: 1097, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1097, column: 9)
!1144 = !DILocation(line: 1097, column: 20, scope: !1143)
!1145 = !DILocation(line: 1097, column: 9, scope: !1123)
!1146 = !DILocation(line: 1098, column: 2, scope: !1143)
!1147 = !DILocation(line: 1099, column: 9, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1099, column: 9)
!1149 = !DILocation(line: 1099, column: 26, scope: !1148)
!1150 = !DILocation(line: 1099, column: 9, scope: !1123)
!1151 = !DILocation(line: 1100, column: 2, scope: !1148)
!1152 = !DILocation(line: 1101, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1101, column: 9)
!1154 = !DILocation(line: 1101, column: 21, scope: !1153)
!1155 = !DILocation(line: 1101, column: 9, scope: !1123)
!1156 = !DILocation(line: 1102, column: 2, scope: !1153)
!1157 = !DILocation(line: 1103, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1103, column: 9)
!1159 = !DILocation(line: 1103, column: 20, scope: !1158)
!1160 = !DILocation(line: 1103, column: 9, scope: !1123)
!1161 = !DILocation(line: 1104, column: 2, scope: !1158)
!1162 = !DILocation(line: 1105, column: 15, scope: !1123)
!1163 = !DILocation(line: 1105, column: 13, scope: !1123)
!1164 = !DILocation(line: 1106, column: 17, scope: !1123)
!1165 = !DILocation(line: 1106, column: 15, scope: !1123)
!1166 = !DILocation(line: 1107, column: 23, scope: !1123)
!1167 = !DILocation(line: 1107, column: 21, scope: !1123)
!1168 = !DILocation(line: 1108, column: 18, scope: !1123)
!1169 = !DILocation(line: 1108, column: 16, scope: !1123)
!1170 = !DILocation(line: 1109, column: 20, scope: !1123)
!1171 = !DILocation(line: 1109, column: 18, scope: !1123)
!1172 = !DILocation(line: 1114, column: 5, scope: !1123)
!1173 = !DILocation(line: 1115, column: 1, scope: !1123)
!1174 = distinct !DISubprogram(name: "xmlGcMemGet", scope: !2, file: !2, line: 1132, type: !1175, scopeLine: 1134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!125, !1077, !1078, !1078, !1079, !1080}
!1177 = !{!1178, !1179, !1180, !1181, !1182}
!1178 = !DILocalVariable(name: "freeFunc", arg: 1, scope: !1174, file: !2, line: 1132, type: !1077)
!1179 = !DILocalVariable(name: "mallocFunc", arg: 2, scope: !1174, file: !2, line: 1132, type: !1078)
!1180 = !DILocalVariable(name: "mallocAtomicFunc", arg: 3, scope: !1174, file: !2, line: 1133, type: !1078)
!1181 = !DILocalVariable(name: "reallocFunc", arg: 4, scope: !1174, file: !2, line: 1133, type: !1079)
!1182 = !DILocalVariable(name: "strdupFunc", arg: 5, scope: !1174, file: !2, line: 1134, type: !1080)
!1183 = !DILocation(line: 1132, column: 26, scope: !1174)
!1184 = !DILocation(line: 1132, column: 51, scope: !1174)
!1185 = !DILocation(line: 1133, column: 28, scope: !1174)
!1186 = !DILocation(line: 1133, column: 62, scope: !1174)
!1187 = !DILocation(line: 1134, column: 21, scope: !1174)
!1188 = !DILocation(line: 1135, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1135, column: 9)
!1190 = !DILocation(line: 1135, column: 18, scope: !1189)
!1191 = !DILocation(line: 1135, column: 9, scope: !1174)
!1192 = !DILocation(line: 1135, column: 39, scope: !1189)
!1193 = !DILocation(line: 1135, column: 28, scope: !1189)
!1194 = !DILocation(line: 1135, column: 37, scope: !1189)
!1195 = !DILocation(line: 1135, column: 27, scope: !1189)
!1196 = !DILocation(line: 1136, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1136, column: 9)
!1198 = !DILocation(line: 1136, column: 20, scope: !1197)
!1199 = !DILocation(line: 1136, column: 9, scope: !1174)
!1200 = !DILocation(line: 1136, column: 43, scope: !1197)
!1201 = !DILocation(line: 1136, column: 30, scope: !1197)
!1202 = !DILocation(line: 1136, column: 41, scope: !1197)
!1203 = !DILocation(line: 1136, column: 29, scope: !1197)
!1204 = !DILocation(line: 1137, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1137, column: 9)
!1206 = !DILocation(line: 1137, column: 26, scope: !1205)
!1207 = !DILocation(line: 1137, column: 9, scope: !1174)
!1208 = !DILocation(line: 1137, column: 55, scope: !1205)
!1209 = !DILocation(line: 1137, column: 36, scope: !1205)
!1210 = !DILocation(line: 1137, column: 53, scope: !1205)
!1211 = !DILocation(line: 1137, column: 35, scope: !1205)
!1212 = !DILocation(line: 1138, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1138, column: 9)
!1214 = !DILocation(line: 1138, column: 21, scope: !1213)
!1215 = !DILocation(line: 1138, column: 9, scope: !1174)
!1216 = !DILocation(line: 1138, column: 45, scope: !1213)
!1217 = !DILocation(line: 1138, column: 31, scope: !1213)
!1218 = !DILocation(line: 1138, column: 43, scope: !1213)
!1219 = !DILocation(line: 1138, column: 30, scope: !1213)
!1220 = !DILocation(line: 1139, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 1139, column: 9)
!1222 = !DILocation(line: 1139, column: 20, scope: !1221)
!1223 = !DILocation(line: 1139, column: 9, scope: !1174)
!1224 = !DILocation(line: 1139, column: 43, scope: !1221)
!1225 = !DILocation(line: 1139, column: 30, scope: !1221)
!1226 = !DILocation(line: 1139, column: 41, scope: !1221)
!1227 = !DILocation(line: 1139, column: 29, scope: !1221)
!1228 = !DILocation(line: 1140, column: 5, scope: !1174)

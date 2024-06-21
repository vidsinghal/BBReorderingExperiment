; ModuleID = 'samples/308.bc'
source_filename = "functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.redisServer = type { i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i32, i64, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i64, ptr, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, [16 x ptr], i32, ptr, ptr, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [19 x %struct.clientMemUsageBucket], ptr, i64, i32, ptr, i32, ptr, i64, [3 x ptr], [256 x i8], ptr, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, ptr, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, [3 x %struct.clientBufferLimitsConfig], i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, i64, i64, i64, ptr, i32, ptr, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, ptr, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, ptr, i64, i32, i32, i32, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i64, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], ptr, ptr, i32, i64, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i64, ptr, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, ptr, ptr, ptr, ptr, ptr, i64, i32, ptr, i32, i32, i32, i64, i32 }
%struct.socketFds = type { [16 x i32], i32 }
%struct.clientMemUsageBucket = type { ptr, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.redisOpArray = type { ptr, i32, i32 }
%struct.redisTLSContextConfig = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }
%struct.scriptFlag = type { i64, ptr }
%struct.functionInfo = type { ptr, ptr, ptr, ptr, i64 }
%struct.functionLibInfo = type { ptr, ptr, ptr, ptr }
%struct.engineInfo = type { ptr, ptr, ptr }
%struct.engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.functionsLibCtx = type { ptr, ptr, i64, ptr }
%struct.dictEntry = type { ptr, %union.anon, ptr, [0 x ptr] }
%union.anon = type { ptr }
%struct.functionsLibEngineStats = type { i64, i64 }
%struct.client = type { i64, i64, ptr, i32, ptr, ptr, ptr, i64, i64, i32, ptr, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, i32, i32, i64, ptr, i64, ptr, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i64, ptr, i64, i64, i64, i64, i64, i64, i64, [41 x i8], i32, ptr, i32, i32, %struct.multiState, i32, %struct.blockingState, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, i64, i32, i64, ptr }
%struct.multiState = type { ptr, i32, i32, i32, i64, i32 }
%struct.blockingState = type { i64, i64, ptr, ptr, %struct.blockPos, i64, ptr, ptr, i32, i32, i64, ptr }
%struct.blockPos = type { i32, i32 }
%struct.redisObject = type { i32, i32, ptr }
%struct.dict = type { ptr, [2 x ptr], [2 x i64], i64, i16, [2 x i8] }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>
%struct.scriptRunCtx = type { ptr, ptr, ptr, i32, i32, i64, i64 }
%struct._rio = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, %union.anon.0 }
%union.anon.0 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i64, ptr, i64, i64 }
%struct.anon.1 = type { ptr, i64 }
%struct.list = type { ptr, ptr, ptr, ptr, ptr, i64 }
%struct.listNode = type { ptr, ptr, ptr }
%struct.functionsLibMataData = type { ptr, ptr, ptr }

@engineDictType = dso_local global %struct.dictType { ptr @dictSdsCaseHash, ptr @dictSdsDup, ptr null, ptr @dictSdsKeyCaseCompare, ptr @dictSdsDestructor, ptr null, ptr null, ptr null }, align 8, !dbg !0
@functionDictType = dso_local global %struct.dictType { ptr @dictSdsCaseHash, ptr @dictSdsDup, ptr null, ptr @dictSdsKeyCaseCompare, ptr @dictSdsDestructor, ptr null, ptr null, ptr null }, align 8, !dbg !118
@engineStatsDictType = dso_local global %struct.dictType { ptr @dictSdsCaseHash, ptr @dictSdsDup, ptr null, ptr @dictSdsKeyCaseCompare, ptr @dictSdsDestructor, ptr @engineStatsDispose, ptr null, ptr null }, align 8, !dbg !197
@libraryFunctionDictType = dso_local global %struct.dictType { ptr @dictSdsHash, ptr @dictSdsDup, ptr null, ptr @dictSdsKeyCompare, ptr @dictSdsDestructor, ptr @engineFunctionDispose, ptr null, ptr null }, align 8, !dbg !199
@librariesDictType = dso_local global %struct.dictType { ptr @dictSdsHash, ptr @dictSdsDup, ptr null, ptr @dictSdsKeyCompare, ptr @dictSdsDestructor, ptr @engineLibraryDispose, ptr null, ptr null }, align 8, !dbg !201
@curr_functions_lib_ctx = internal global ptr null, align 8, !dbg !518
@engines = internal global ptr null, align 8, !dbg !528
@.str = private unnamed_addr constant [107 x i8] c"Library names can only contain letters, numbers, or underscores(_) and must be at least one character long\00", align 1, !dbg !203
@.str.1 = private unnamed_addr constant [39 x i8] c"Function already exists in the library\00", align 1, !dbg !208
@.str.2 = private unnamed_addr constant [15 x i8] c"res == DICT_OK\00", align 1, !dbg !213
@.str.3 = private unnamed_addr constant [12 x i8] c"functions.c\00", align 1, !dbg !218
@server = external global %struct.redisServer, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Same engine was registered twice\00", align 1, !dbg !223
@engine_cache_memory = internal global i64 0, align 8, !dbg !530
@shared = external global %struct.sharedObjectsStruct, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"running_script\00", align 1, !dbg !228
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !230
@.str.7 = private unnamed_addr constant [8 x i8] c"command\00", align 1, !dbg !235
@.str.8 = private unnamed_addr constant [12 x i8] c"duration_ms\00", align 1, !dbg !240
@.str.9 = private unnamed_addr constant [8 x i8] c"engines\00", align 1, !dbg !242
@.str.10 = private unnamed_addr constant [16 x i8] c"libraries_count\00", align 1, !dbg !244
@.str.11 = private unnamed_addr constant [16 x i8] c"functions_count\00", align 1, !dbg !249
@.str.12 = private unnamed_addr constant [9 x i8] c"withcode\00", align 1, !dbg !251
@.str.13 = private unnamed_addr constant [12 x i8] c"libraryname\00", align 1, !dbg !256
@.str.14 = private unnamed_addr constant [36 x i8] c"library name argument was not given\00", align 1, !dbg !258
@.str.15 = private unnamed_addr constant [20 x i8] c"Unknown argument %s\00", align 1, !dbg !263
@.str.16 = private unnamed_addr constant [13 x i8] c"library_name\00", align 1, !dbg !268
@.str.17 = private unnamed_addr constant [7 x i8] c"engine\00", align 1, !dbg !273
@.str.18 = private unnamed_addr constant [10 x i8] c"functions\00", align 1, !dbg !278
@.str.19 = private unnamed_addr constant [12 x i8] c"description\00", align 1, !dbg !283
@.str.20 = private unnamed_addr constant [6 x i8] c"flags\00", align 1, !dbg !285
@.str.21 = private unnamed_addr constant [13 x i8] c"library_code\00", align 1, !dbg !290
@.str.22 = private unnamed_addr constant [18 x i8] c"Library not found\00", align 1, !dbg !292
@.str.23 = private unnamed_addr constant [7 x i8] c"append\00", align 1, !dbg !297
@.str.24 = private unnamed_addr constant [8 x i8] c"replace\00", align 1, !dbg !299
@.str.25 = private unnamed_addr constant [6 x i8] c"flush\00", align 1, !dbg !301
@.str.26 = private unnamed_addr constant [77 x i8] c"Wrong restore policy given, value should be either FLUSH, APPEND or REPLACE.\00", align 1, !dbg !303
@.str.27 = private unnamed_addr constant [43 x i8] c"DUMP payload version or checksum are wrong\00", align 1, !dbg !308
@.str.28 = private unnamed_addr constant [23 x i8] c"can not read data type\00", align 1, !dbg !313
@.str.29 = private unnamed_addr constant [29 x i8] c"given type is not a function\00", align 1, !dbg !318
@.str.30 = private unnamed_addr constant [43 x i8] c"failed loading the given functions payload\00", align 1, !dbg !323
@.str.31 = private unnamed_addr constant [5 x i8] c"sync\00", align 1, !dbg !325
@.str.32 = private unnamed_addr constant [6 x i8] c"async\00", align 1, !dbg !327
@.str.33 = private unnamed_addr constant [47 x i8] c"FUNCTION FLUSH only supports SYNC|ASYNC option\00", align 1, !dbg !329
@.str.34 = private unnamed_addr constant [31 x i8] c"LOAD [REPLACE] <FUNCTION CODE>\00", align 1, !dbg !334
@.str.35 = private unnamed_addr constant [63 x i8] c"    Create a new library with the given library name and code.\00", align 1, !dbg !339
@.str.36 = private unnamed_addr constant [22 x i8] c"DELETE <LIBRARY NAME>\00", align 1, !dbg !344
@.str.37 = private unnamed_addr constant [30 x i8] c"    Delete the given library.\00", align 1, !dbg !349
@.str.38 = private unnamed_addr constant [38 x i8] c"LIST [LIBRARYNAME PATTERN] [WITHCODE]\00", align 1, !dbg !354
@.str.39 = private unnamed_addr constant [53 x i8] c"    Return general information on all the libraries:\00", align 1, !dbg !359
@.str.40 = private unnamed_addr constant [19 x i8] c"    * Library name\00", align 1, !dbg !364
@.str.41 = private unnamed_addr constant [41 x i8] c"    * The engine used to run the Library\00", align 1, !dbg !369
@.str.42 = private unnamed_addr constant [26 x i8] c"    * Library description\00", align 1, !dbg !374
@.str.43 = private unnamed_addr constant [21 x i8] c"    * Functions list\00", align 1, !dbg !379
@.str.44 = private unnamed_addr constant [42 x i8] c"    * Library code (if WITHCODE is given)\00", align 1, !dbg !384
@.str.45 = private unnamed_addr constant [93 x i8] c"    It also possible to get only function that matches a pattern using LIBRARYNAME argument.\00", align 1, !dbg !389
@.str.46 = private unnamed_addr constant [6 x i8] c"STATS\00", align 1, !dbg !394
@.str.47 = private unnamed_addr constant [59 x i8] c"    Return information about the current function running:\00", align 1, !dbg !396
@.str.48 = private unnamed_addr constant [20 x i8] c"    * Function name\00", align 1, !dbg !401
@.str.49 = private unnamed_addr constant [39 x i8] c"    * Command used to run the function\00", align 1, !dbg !403
@.str.50 = private unnamed_addr constant [50 x i8] c"    * Duration in MS that the function is running\00", align 1, !dbg !405
@.str.51 = private unnamed_addr constant [42 x i8] c"    If no function is running, return nil\00", align 1, !dbg !410
@.str.52 = private unnamed_addr constant [54 x i8] c"    In addition, returns a list of available engines.\00", align 1, !dbg !412
@.str.53 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1, !dbg !417
@.str.54 = private unnamed_addr constant [39 x i8] c"    Kill the current running function.\00", align 1, !dbg !419
@.str.55 = private unnamed_addr constant [19 x i8] c"FLUSH [ASYNC|SYNC]\00", align 1, !dbg !421
@.str.56 = private unnamed_addr constant [30 x i8] c"    Delete all the libraries.\00", align 1, !dbg !423
@.str.57 = private unnamed_addr constant [86 x i8] c"    When called without the optional mode argument, the behavior is determined by the\00", align 1, !dbg !425
@.str.58 = private unnamed_addr constant [71 x i8] c"    lazyfree-lazy-user-flush configuration directive. Valid modes are:\00", align 1, !dbg !430
@.str.59 = private unnamed_addr constant [49 x i8] c"    * ASYNC: Asynchronously flush the libraries.\00", align 1, !dbg !435
@.str.60 = private unnamed_addr constant [47 x i8] c"    * SYNC: Synchronously flush the libraries.\00", align 1, !dbg !440
@.str.61 = private unnamed_addr constant [5 x i8] c"DUMP\00", align 1, !dbg !442
@.str.62 = private unnamed_addr constant [115 x i8] c"    Return a serialized payload representing the current libraries, can be restored using FUNCTION RESTORE command\00", align 1, !dbg !444
@.str.63 = private unnamed_addr constant [41 x i8] c"RESTORE <PAYLOAD> [FLUSH|APPEND|REPLACE]\00", align 1, !dbg !449
@.str.64 = private unnamed_addr constant [103 x i8] c"    Restore the libraries represented by the given payload, it is possible to give a restore policy to\00", align 1, !dbg !451
@.str.65 = private unnamed_addr constant [63 x i8] c"    control how to handle existing libraries (default APPEND):\00", align 1, !dbg !456
@.str.66 = private unnamed_addr constant [44 x i8] c"    * FLUSH: delete all existing libraries.\00", align 1, !dbg !458
@.str.67 = private unnamed_addr constant [93 x i8] c"    * APPEND: appends the restored libraries to the existing libraries. On collision, abort.\00", align 1, !dbg !463
@.str.68 = private unnamed_addr constant [103 x i8] c"    * REPLACE: appends the restored libraries to the existing libraries, On collision, replace the old\00", align 1, !dbg !465
@.str.69 = private unnamed_addr constant [101 x i8] c"      libraries with the new libraries (notice that even on this option there is a chance of failure\00", align 1, !dbg !467
@.str.70 = private unnamed_addr constant [65 x i8] c"      in case of functions name collision with another library).\00", align 1, !dbg !472
@__const.functionHelpCommand.help = private unnamed_addr constant [38 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr null], align 16
@.str.71 = private unnamed_addr constant [3 x i8] c"#!\00", align 1, !dbg !477
@.str.72 = private unnamed_addr constant [25 x i8] c"Missing library metadata\00", align 1, !dbg !482
@.str.73 = private unnamed_addr constant [25 x i8] c"Invalid library metadata\00", align 1, !dbg !487
@.str.74 = private unnamed_addr constant [6 x i8] c"name=\00", align 1, !dbg !489
@.str.75 = private unnamed_addr constant [63 x i8] c"Invalid metadata value, name argument was given multiple times\00", align 1, !dbg !491
@.str.76 = private unnamed_addr constant [33 x i8] c"Invalid metadata value given: %s\00", align 1, !dbg !493
@.str.77 = private unnamed_addr constant [27 x i8] c"Library name was not given\00", align 1, !dbg !495
@.str.78 = private unnamed_addr constant [22 x i8] c"Engine '%S' not found\00", align 1, !dbg !500
@.str.79 = private unnamed_addr constant [28 x i8] c"Library '%S' already exists\00", align 1, !dbg !502
@.str.80 = private unnamed_addr constant [24 x i8] c"No functions registered\00", align 1, !dbg !507
@.str.81 = private unnamed_addr constant [27 x i8] c"Function %s already exists\00", align 1, !dbg !512
@.str.82 = private unnamed_addr constant [25 x i8] c"Unknown option given: %s\00", align 1, !dbg !514
@.str.83 = private unnamed_addr constant [25 x i8] c"Function code is missing\00", align 1, !dbg !516
@scripts_flags_def = external global [0 x %struct.scriptFlag], align 8
@.str.84 = private unnamed_addr constant [15 x i8] c"ret == DICT_OK\00", align 1, !dbg !532
@.str.85 = private unnamed_addr constant [6 x i8] c"stats\00", align 1, !dbg !534
@.str.86 = private unnamed_addr constant [19 x i8] c"Function not found\00", align 1, !dbg !536
@.str.87 = private unnamed_addr constant [28 x i8] c"Bad number of keys provided\00", align 1, !dbg !538
@.str.88 = private unnamed_addr constant [52 x i8] c"Number of keys can't be greater than number of args\00", align 1, !dbg !540
@.str.89 = private unnamed_addr constant [33 x i8] c"Number of keys can't be negative\00", align 1, !dbg !545
@.str.90 = private unnamed_addr constant [26 x i8] c"Library %s already exists\00", align 1, !dbg !547

declare i64 @dictSdsCaseHash(ptr noundef) #0

declare ptr @dictSdsDup(ptr noundef, ptr noundef) #0

declare i32 @dictSdsKeyCaseCompare(ptr noundef, ptr noundef, ptr noundef) #0

declare void @dictSdsDestructor(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal void @engineStatsDispose(ptr noundef %d, ptr noundef %obj) #1 !dbg !556 {
entry:
  %d.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %stats = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !558, metadata !DIExpression()), !dbg !571
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !559, metadata !DIExpression()), !dbg !572
  %0 = load ptr, ptr %d.addr, align 8, !dbg !573, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %stats) #9, !dbg !574
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !560, metadata !DIExpression()), !dbg !575
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !576, !tbaa !567
  store ptr %1, ptr %stats, align 8, !dbg !575, !tbaa !567
  %2 = load ptr, ptr %stats, align 8, !dbg !577, !tbaa !567
  call void @zfree(ptr noundef %2), !dbg !578
  call void @llvm.lifetime.end.p0(i64 8, ptr %stats) #9, !dbg !579
  ret void, !dbg !579
}

declare i64 @dictSdsHash(ptr noundef) #0

declare i32 @dictSdsKeyCompare(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal void @engineFunctionDispose(ptr noundef %d, ptr noundef %obj) #1 !dbg !580 {
entry:
  %d.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %engine = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !582, metadata !DIExpression()), !dbg !1156
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !583, metadata !DIExpression()), !dbg !1157
  %0 = load ptr, ptr %d.addr, align 8, !dbg !1158, !tbaa !567
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !1159, !tbaa !567
  %tobool = icmp ne ptr %1, null, !dbg !1159
  br i1 %tobool, label %if.end, label %if.then, !dbg !1161

if.then:                                          ; preds = %entry
  br label %return, !dbg !1162

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !1164
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !584, metadata !DIExpression()), !dbg !1165
  %2 = load ptr, ptr %obj.addr, align 8, !dbg !1166, !tbaa !567
  store ptr %2, ptr %fi, align 8, !dbg !1165, !tbaa !567
  %3 = load ptr, ptr %fi, align 8, !dbg !1167, !tbaa !567
  %name = getelementptr inbounds %struct.functionInfo, ptr %3, i32 0, i32 0, !dbg !1168
  %4 = load ptr, ptr %name, align 8, !dbg !1168, !tbaa !1169
  call void @sdsfree(ptr noundef %4), !dbg !1172
  %5 = load ptr, ptr %fi, align 8, !dbg !1173, !tbaa !567
  %desc = getelementptr inbounds %struct.functionInfo, ptr %5, i32 0, i32 3, !dbg !1175
  %6 = load ptr, ptr %desc, align 8, !dbg !1175, !tbaa !1176
  %tobool1 = icmp ne ptr %6, null, !dbg !1173
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !1177

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %fi, align 8, !dbg !1178, !tbaa !567
  %desc3 = getelementptr inbounds %struct.functionInfo, ptr %7, i32 0, i32 3, !dbg !1180
  %8 = load ptr, ptr %desc3, align 8, !dbg !1180, !tbaa !1176
  call void @sdsfree(ptr noundef %8), !dbg !1181
  br label %if.end4, !dbg !1182

if.end4:                                          ; preds = %if.then2, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #9, !dbg !1183
  tail call void @llvm.dbg.declare(metadata ptr %engine, metadata !1155, metadata !DIExpression()), !dbg !1184
  %9 = load ptr, ptr %fi, align 8, !dbg !1185, !tbaa !567
  %li = getelementptr inbounds %struct.functionInfo, ptr %9, i32 0, i32 2, !dbg !1186
  %10 = load ptr, ptr %li, align 8, !dbg !1186, !tbaa !1187
  %ei = getelementptr inbounds %struct.functionLibInfo, ptr %10, i32 0, i32 2, !dbg !1188
  %11 = load ptr, ptr %ei, align 8, !dbg !1188, !tbaa !1189
  %engine5 = getelementptr inbounds %struct.engineInfo, ptr %11, i32 0, i32 1, !dbg !1191
  %12 = load ptr, ptr %engine5, align 8, !dbg !1191, !tbaa !1192
  store ptr %12, ptr %engine, align 8, !dbg !1184, !tbaa !567
  %13 = load ptr, ptr %engine, align 8, !dbg !1194, !tbaa !567
  %free_function = getelementptr inbounds %struct.engine, ptr %13, i32 0, i32 6, !dbg !1195
  %14 = load ptr, ptr %free_function, align 8, !dbg !1195, !tbaa !1196
  %15 = load ptr, ptr %engine, align 8, !dbg !1198, !tbaa !567
  %engine_ctx = getelementptr inbounds %struct.engine, ptr %15, i32 0, i32 0, !dbg !1199
  %16 = load ptr, ptr %engine_ctx, align 8, !dbg !1199, !tbaa !1200
  %17 = load ptr, ptr %fi, align 8, !dbg !1201, !tbaa !567
  %function = getelementptr inbounds %struct.functionInfo, ptr %17, i32 0, i32 1, !dbg !1202
  %18 = load ptr, ptr %function, align 8, !dbg !1202, !tbaa !1203
  call void %14(ptr noundef %16, ptr noundef %18), !dbg !1194
  %19 = load ptr, ptr %fi, align 8, !dbg !1204, !tbaa !567
  call void @zfree(ptr noundef %19), !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #9, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !1206
  br label %return, !dbg !1206

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !1206
}

; Function Attrs: nounwind uwtable
define internal void @engineLibraryDispose(ptr noundef %d, ptr noundef %obj) #1 !dbg !1207 {
entry:
  %d.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1209, metadata !DIExpression()), !dbg !1211
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !1210, metadata !DIExpression()), !dbg !1212
  %0 = load ptr, ptr %d.addr, align 8, !dbg !1213, !tbaa !567
  %1 = load ptr, ptr %obj.addr, align 8, !dbg !1214, !tbaa !567
  call void @engineLibraryFree(ptr noundef %1), !dbg !1215
  ret void, !dbg !1216
}

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxClear(ptr noundef %lib_ctx) #1 !dbg !1217 {
entry:
  %lib_ctx.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %stats = alloca ptr, align 8
  store ptr %lib_ctx, ptr %lib_ctx.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %lib_ctx.addr, metadata !1221, metadata !DIExpression()), !dbg !1237
  %0 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !1238, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %0, i32 0, i32 1, !dbg !1239
  %1 = load ptr, ptr %functions, align 8, !dbg !1239, !tbaa !1240
  call void @dictEmpty(ptr noundef %1, ptr noundef null), !dbg !1242
  %2 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !1243, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %2, i32 0, i32 0, !dbg !1244
  %3 = load ptr, ptr %libraries, align 8, !dbg !1244, !tbaa !1245
  call void @dictEmpty(ptr noundef %3, ptr noundef null), !dbg !1246
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !1247
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1222, metadata !DIExpression()), !dbg !1248
  %4 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !1249, !tbaa !567
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, ptr %4, i32 0, i32 3, !dbg !1250
  %5 = load ptr, ptr %engines_stats, align 8, !dbg !1250, !tbaa !1251
  %call = call ptr @dictGetIterator(ptr noundef %5), !dbg !1252
  store ptr %call, ptr %iter, align 8, !dbg !1248, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !1253
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1234, metadata !DIExpression()), !dbg !1254
  store ptr null, ptr %entry1, align 8, !dbg !1254, !tbaa !567
  br label %while.cond, !dbg !1255

while.cond:                                       ; preds = %while.body, %entry
  %6 = load ptr, ptr %iter, align 8, !dbg !1256, !tbaa !567
  %call2 = call ptr @dictNext(ptr noundef %6), !dbg !1257
  store ptr %call2, ptr %entry1, align 8, !dbg !1258, !tbaa !567
  %tobool = icmp ne ptr %call2, null, !dbg !1255
  br i1 %tobool, label %while.body, label %while.end, !dbg !1255

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %stats) #9, !dbg !1259
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !1235, metadata !DIExpression()), !dbg !1260
  %7 = load ptr, ptr %entry1, align 8, !dbg !1261, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %7, i32 0, i32 1, !dbg !1261
  %8 = load ptr, ptr %v, align 8, !dbg !1261, !tbaa !1262
  store ptr %8, ptr %stats, align 8, !dbg !1260, !tbaa !567
  %9 = load ptr, ptr %stats, align 8, !dbg !1263, !tbaa !567
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, ptr %9, i32 0, i32 1, !dbg !1264
  store i64 0, ptr %n_functions, align 8, !dbg !1265, !tbaa !1266
  %10 = load ptr, ptr %stats, align 8, !dbg !1268, !tbaa !567
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, ptr %10, i32 0, i32 0, !dbg !1269
  store i64 0, ptr %n_lib, align 8, !dbg !1270, !tbaa !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %stats) #9, !dbg !1272
  br label %while.cond, !dbg !1255, !llvm.loop !1273

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %iter, align 8, !dbg !1275, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %11), !dbg !1276
  %12 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1277, !tbaa !567
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, ptr %12, i32 0, i32 2, !dbg !1278
  store i64 0, ptr %cache_memory, align 8, !dbg !1279, !tbaa !1280
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !1281
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !1281
  ret void, !dbg !1281
}

declare !dbg !1282 void @dictEmpty(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1288 ptr @dictGetIterator(ptr noundef) #0

declare !dbg !1291 ptr @dictNext(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1294 void @dictReleaseIterator(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxClearCurrent(i32 noundef %async) #1 !dbg !1297 {
entry:
  %async.addr = alloca i32, align 4
  %old_l_ctx = alloca ptr, align 8
  store i32 %async, ptr %async.addr, align 4, !tbaa !1305
  tail call void @llvm.dbg.declare(metadata ptr %async.addr, metadata !1301, metadata !DIExpression()), !dbg !1307
  %0 = load i32, ptr %async.addr, align 4, !dbg !1308, !tbaa !1305
  %tobool = icmp ne i32 %0, 0, !dbg !1308
  br i1 %tobool, label %if.then, label %if.else, !dbg !1309

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_l_ctx) #9, !dbg !1310
  tail call void @llvm.dbg.declare(metadata ptr %old_l_ctx, metadata !1302, metadata !DIExpression()), !dbg !1311
  %1 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1312, !tbaa !567
  store ptr %1, ptr %old_l_ctx, align 8, !dbg !1311, !tbaa !567
  %call = call ptr @functionsLibCtxCreate(), !dbg !1313
  store ptr %call, ptr @curr_functions_lib_ctx, align 8, !dbg !1314, !tbaa !567
  %2 = load ptr, ptr %old_l_ctx, align 8, !dbg !1315, !tbaa !567
  call void @freeFunctionsAsync(ptr noundef %2), !dbg !1316
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_l_ctx) #9, !dbg !1317
  br label %if.end, !dbg !1318

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1319, !tbaa !567
  call void @functionsLibCtxClear(ptr noundef %3), !dbg !1321
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1322
}

declare !dbg !1323 void @freeFunctionsAsync(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxFree(ptr noundef %functions_lib_ctx) #1 !dbg !1324 {
entry:
  %functions_lib_ctx.addr = alloca ptr, align 8
  store ptr %functions_lib_ctx, ptr %functions_lib_ctx.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %functions_lib_ctx.addr, metadata !1326, metadata !DIExpression()), !dbg !1327
  %0 = load ptr, ptr %functions_lib_ctx.addr, align 8, !dbg !1328, !tbaa !567
  call void @functionsLibCtxClear(ptr noundef %0), !dbg !1329
  %1 = load ptr, ptr %functions_lib_ctx.addr, align 8, !dbg !1330, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %1, i32 0, i32 1, !dbg !1331
  %2 = load ptr, ptr %functions, align 8, !dbg !1331, !tbaa !1240
  call void @dictRelease(ptr noundef %2), !dbg !1332
  %3 = load ptr, ptr %functions_lib_ctx.addr, align 8, !dbg !1333, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %3, i32 0, i32 0, !dbg !1334
  %4 = load ptr, ptr %libraries, align 8, !dbg !1334, !tbaa !1245
  call void @dictRelease(ptr noundef %4), !dbg !1335
  %5 = load ptr, ptr %functions_lib_ctx.addr, align 8, !dbg !1336, !tbaa !567
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, ptr %5, i32 0, i32 3, !dbg !1337
  %6 = load ptr, ptr %engines_stats, align 8, !dbg !1337, !tbaa !1251
  call void @dictRelease(ptr noundef %6), !dbg !1338
  %7 = load ptr, ptr %functions_lib_ctx.addr, align 8, !dbg !1339, !tbaa !567
  call void @zfree(ptr noundef %7), !dbg !1340
  ret void, !dbg !1341
}

declare !dbg !1342 void @dictRelease(ptr noundef) #0

declare !dbg !1343 void @zfree(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxSwapWithCurrent(ptr noundef %new_lib_ctx) #1 !dbg !1345 {
entry:
  %new_lib_ctx.addr = alloca ptr, align 8
  store ptr %new_lib_ctx, ptr %new_lib_ctx.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %new_lib_ctx.addr, metadata !1347, metadata !DIExpression()), !dbg !1348
  %0 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1349, !tbaa !567
  call void @functionsLibCtxFree(ptr noundef %0), !dbg !1350
  %1 = load ptr, ptr %new_lib_ctx.addr, align 8, !dbg !1351, !tbaa !567
  store ptr %1, ptr @curr_functions_lib_ctx, align 8, !dbg !1352, !tbaa !567
  ret void, !dbg !1353
}

; Function Attrs: nounwind uwtable
define dso_local ptr @functionsLibCtxGetCurrent() #1 !dbg !1354 {
entry:
  %0 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1357, !tbaa !567
  ret ptr %0, !dbg !1358
}

; Function Attrs: nounwind uwtable
define dso_local ptr @functionsLibCtxCreate() #1 !dbg !1359 {
entry:
  %ret = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %entry5 = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %stats = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1361, metadata !DIExpression()), !dbg !1368
  %call = call ptr @zmalloc(i64 noundef 32), !dbg !1369
  store ptr %call, ptr %ret, align 8, !dbg !1368, !tbaa !567
  %call1 = call ptr @dictCreate(ptr noundef @librariesDictType), !dbg !1370
  %0 = load ptr, ptr %ret, align 8, !dbg !1371, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %0, i32 0, i32 0, !dbg !1372
  store ptr %call1, ptr %libraries, align 8, !dbg !1373, !tbaa !1245
  %call2 = call ptr @dictCreate(ptr noundef @functionDictType), !dbg !1374
  %1 = load ptr, ptr %ret, align 8, !dbg !1375, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %1, i32 0, i32 1, !dbg !1376
  store ptr %call2, ptr %functions, align 8, !dbg !1377, !tbaa !1240
  %call3 = call ptr @dictCreate(ptr noundef @engineStatsDictType), !dbg !1378
  %2 = load ptr, ptr %ret, align 8, !dbg !1379, !tbaa !567
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, ptr %2, i32 0, i32 3, !dbg !1380
  store ptr %call3, ptr %engines_stats, align 8, !dbg !1381, !tbaa !1251
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !1382
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1362, metadata !DIExpression()), !dbg !1383
  %3 = load ptr, ptr @engines, align 8, !dbg !1384, !tbaa !567
  %call4 = call ptr @dictGetIterator(ptr noundef %3), !dbg !1385
  store ptr %call4, ptr %iter, align 8, !dbg !1383, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry5) #9, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %entry5, metadata !1363, metadata !DIExpression()), !dbg !1387
  store ptr null, ptr %entry5, align 8, !dbg !1387, !tbaa !567
  br label %while.cond, !dbg !1388

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %iter, align 8, !dbg !1389, !tbaa !567
  %call6 = call ptr @dictNext(ptr noundef %4), !dbg !1390
  store ptr %call6, ptr %entry5, align 8, !dbg !1391, !tbaa !567
  %tobool = icmp ne ptr %call6, null, !dbg !1388
  br i1 %tobool, label %while.body, label %while.end, !dbg !1388

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #9, !dbg !1392
  tail call void @llvm.dbg.declare(metadata ptr %ei, metadata !1364, metadata !DIExpression()), !dbg !1393
  %5 = load ptr, ptr %entry5, align 8, !dbg !1394, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %5, i32 0, i32 1, !dbg !1394
  %6 = load ptr, ptr %v, align 8, !dbg !1394, !tbaa !1262
  store ptr %6, ptr %ei, align 8, !dbg !1393, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %stats) #9, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !1366, metadata !DIExpression()), !dbg !1396
  %call7 = call ptr @zcalloc(i64 noundef 16), !dbg !1397
  store ptr %call7, ptr %stats, align 8, !dbg !1396, !tbaa !567
  %7 = load ptr, ptr %ret, align 8, !dbg !1398, !tbaa !567
  %engines_stats8 = getelementptr inbounds %struct.functionsLibCtx, ptr %7, i32 0, i32 3, !dbg !1399
  %8 = load ptr, ptr %engines_stats8, align 8, !dbg !1399, !tbaa !1251
  %9 = load ptr, ptr %ei, align 8, !dbg !1400, !tbaa !567
  %name = getelementptr inbounds %struct.engineInfo, ptr %9, i32 0, i32 0, !dbg !1401
  %10 = load ptr, ptr %name, align 8, !dbg !1401, !tbaa !1402
  %11 = load ptr, ptr %stats, align 8, !dbg !1403, !tbaa !567
  %call9 = call i32 @dictAdd(ptr noundef %8, ptr noundef %10, ptr noundef %11), !dbg !1404
  call void @llvm.lifetime.end.p0(i64 8, ptr %stats) #9, !dbg !1405
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #9, !dbg !1405
  br label %while.cond, !dbg !1388, !llvm.loop !1406

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %iter, align 8, !dbg !1407, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %12), !dbg !1408
  %13 = load ptr, ptr %ret, align 8, !dbg !1409, !tbaa !567
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, ptr %13, i32 0, i32 2, !dbg !1410
  store i64 0, ptr %cache_memory, align 8, !dbg !1411, !tbaa !1280
  %14 = load ptr, ptr %ret, align 8, !dbg !1412, !tbaa !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry5) #9, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !1413
  ret ptr %14, !dbg !1414
}

declare !dbg !1415 ptr @zmalloc(i64 noundef) #0

declare !dbg !1418 ptr @dictCreate(ptr noundef) #0

declare !dbg !1421 ptr @zcalloc(i64 noundef) #0

declare !dbg !1422 i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @functionLibCreateFunction(ptr noundef %name, ptr noundef %function, ptr noundef %li, ptr noundef %desc, i64 noundef %f_flags, ptr noundef %err) #1 !dbg !1425 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %function.addr = alloca ptr, align 8
  %li.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %f_flags.addr = alloca i64, align 8
  %err.addr = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %.compoundliteral = alloca %struct.functionInfo, align 8
  %res = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1429, metadata !DIExpression()), !dbg !1437
  store ptr %function, ptr %function.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1430, metadata !DIExpression()), !dbg !1438
  store ptr %li, ptr %li.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %li.addr, metadata !1431, metadata !DIExpression()), !dbg !1439
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !1432, metadata !DIExpression()), !dbg !1440
  store i64 %f_flags, ptr %f_flags.addr, align 8, !tbaa !1441
  tail call void @llvm.dbg.declare(metadata ptr %f_flags.addr, metadata !1433, metadata !DIExpression()), !dbg !1442
  store ptr %err, ptr %err.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1434, metadata !DIExpression()), !dbg !1443
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1444, !tbaa !567
  %call = call i32 @functionsVerifyName(ptr noundef %0), !dbg !1446
  %cmp = icmp ne i32 %call, 0, !dbg !1447
  br i1 %cmp, label %if.then, label %if.end, !dbg !1448

if.then:                                          ; preds = %entry
  %call1 = call ptr @sdsnew(ptr noundef @.str), !dbg !1449
  %1 = load ptr, ptr %err.addr, align 8, !dbg !1451, !tbaa !567
  store ptr %call1, ptr %1, align 8, !dbg !1452, !tbaa !567
  store i32 -1, ptr %retval, align 4, !dbg !1453
  br label %return, !dbg !1453

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %li.addr, align 8, !dbg !1454, !tbaa !567
  %functions = getelementptr inbounds %struct.functionLibInfo, ptr %2, i32 0, i32 1, !dbg !1456
  %3 = load ptr, ptr %functions, align 8, !dbg !1456, !tbaa !1457
  %4 = load ptr, ptr %name.addr, align 8, !dbg !1458, !tbaa !567
  %call2 = call ptr @dictFetchValue(ptr noundef %3, ptr noundef %4), !dbg !1459
  %tobool = icmp ne ptr %call2, null, !dbg !1459
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !1460

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @sdsnew(ptr noundef @.str.1), !dbg !1461
  %5 = load ptr, ptr %err.addr, align 8, !dbg !1463, !tbaa !567
  store ptr %call4, ptr %5, align 8, !dbg !1464, !tbaa !567
  store i32 -1, ptr %retval, align 4, !dbg !1465
  br label %return, !dbg !1465

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !1466
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !1435, metadata !DIExpression()), !dbg !1467
  %call6 = call ptr @zmalloc(i64 noundef 40), !dbg !1468
  store ptr %call6, ptr %fi, align 8, !dbg !1467, !tbaa !567
  %6 = load ptr, ptr %fi, align 8, !dbg !1469, !tbaa !567
  %name7 = getelementptr inbounds %struct.functionInfo, ptr %.compoundliteral, i32 0, i32 0, !dbg !1470
  %7 = load ptr, ptr %name.addr, align 8, !dbg !1471, !tbaa !567
  store ptr %7, ptr %name7, align 8, !dbg !1470, !tbaa !1169
  %function8 = getelementptr inbounds %struct.functionInfo, ptr %.compoundliteral, i32 0, i32 1, !dbg !1470
  %8 = load ptr, ptr %function.addr, align 8, !dbg !1472, !tbaa !567
  store ptr %8, ptr %function8, align 8, !dbg !1470, !tbaa !1203
  %li9 = getelementptr inbounds %struct.functionInfo, ptr %.compoundliteral, i32 0, i32 2, !dbg !1470
  %9 = load ptr, ptr %li.addr, align 8, !dbg !1473, !tbaa !567
  store ptr %9, ptr %li9, align 8, !dbg !1470, !tbaa !1187
  %desc10 = getelementptr inbounds %struct.functionInfo, ptr %.compoundliteral, i32 0, i32 3, !dbg !1470
  %10 = load ptr, ptr %desc.addr, align 8, !dbg !1474, !tbaa !567
  store ptr %10, ptr %desc10, align 8, !dbg !1470, !tbaa !1176
  %f_flags11 = getelementptr inbounds %struct.functionInfo, ptr %.compoundliteral, i32 0, i32 4, !dbg !1470
  %11 = load i64, ptr %f_flags.addr, align 8, !dbg !1475, !tbaa !1441
  store i64 %11, ptr %f_flags11, align 8, !dbg !1470, !tbaa !1476
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %.compoundliteral, i64 40, i1 false), !dbg !1477, !tbaa.struct !1478
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #9, !dbg !1479
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1436, metadata !DIExpression()), !dbg !1480
  %12 = load ptr, ptr %li.addr, align 8, !dbg !1481, !tbaa !567
  %functions12 = getelementptr inbounds %struct.functionLibInfo, ptr %12, i32 0, i32 1, !dbg !1482
  %13 = load ptr, ptr %functions12, align 8, !dbg !1482, !tbaa !1457
  %14 = load ptr, ptr %fi, align 8, !dbg !1483, !tbaa !567
  %name13 = getelementptr inbounds %struct.functionInfo, ptr %14, i32 0, i32 0, !dbg !1484
  %15 = load ptr, ptr %name13, align 8, !dbg !1484, !tbaa !1169
  %16 = load ptr, ptr %fi, align 8, !dbg !1485, !tbaa !567
  %call14 = call i32 @dictAdd(ptr noundef %13, ptr noundef %15, ptr noundef %16), !dbg !1486
  store i32 %call14, ptr %res, align 4, !dbg !1480, !tbaa !1305
  %17 = load i32, ptr %res, align 4, !dbg !1487, !tbaa !1305
  %cmp15 = icmp eq i32 %17, 0, !dbg !1487
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !1487

cond.true:                                        ; preds = %if.end5
  br label %cond.end, !dbg !1487

cond.false:                                       ; preds = %if.end5
  call void @_serverAssert(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 267), !dbg !1487
  unreachable, !dbg !1487

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1487

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !1488
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #9, !dbg !1489
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !1489
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %18 = load i32, ptr %retval, align 4, !dbg !1489
  ret i32 %18, !dbg !1489
}

; Function Attrs: nounwind uwtable
define internal i32 @functionsVerifyName(ptr noundef %name) #1 !dbg !1490 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %curr_char = alloca i8, align 1
  store ptr %name, ptr %name.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1494, metadata !DIExpression()), !dbg !1500
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1501, !tbaa !567
  %call = call i64 @sdslen(ptr noundef %0), !dbg !1503
  %cmp = icmp eq i64 %call, 0, !dbg !1504
  br i1 %cmp, label %if.then, label %if.end, !dbg !1505

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1506
  br label %return, !dbg !1506

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1508
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1495, metadata !DIExpression()), !dbg !1509
  store i64 0, ptr %i, align 8, !dbg !1509, !tbaa !1441
  br label %for.cond, !dbg !1508

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, ptr %i, align 8, !dbg !1510, !tbaa !1441
  %2 = load ptr, ptr %name.addr, align 8, !dbg !1511, !tbaa !567
  %call1 = call i64 @sdslen(ptr noundef %2), !dbg !1512
  %cmp2 = icmp ult i64 %1, %call1, !dbg !1513
  br i1 %cmp2, label %for.body, label %for.cond.cleanup, !dbg !1514

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !1514

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %curr_char) #9, !dbg !1515
  tail call void @llvm.dbg.declare(metadata ptr %curr_char, metadata !1497, metadata !DIExpression()), !dbg !1516
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1517, !tbaa !567
  %4 = load i64, ptr %i, align 8, !dbg !1518, !tbaa !1441
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4, !dbg !1517
  %5 = load i8, ptr %arrayidx, align 1, !dbg !1517, !tbaa !1262
  store i8 %5, ptr %curr_char, align 1, !dbg !1516, !tbaa !1262
  %6 = load i8, ptr %curr_char, align 1, !dbg !1519, !tbaa !1262
  %conv = sext i8 %6 to i32, !dbg !1519
  %cmp3 = icmp sge i32 %conv, 97, !dbg !1521
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !1522

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8, ptr %curr_char, align 1, !dbg !1523, !tbaa !1262
  %conv5 = sext i8 %7 to i32, !dbg !1523
  %cmp6 = icmp sle i32 %conv5, 122, !dbg !1524
  br i1 %cmp6, label %if.then27, label %lor.lhs.false, !dbg !1525

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %8 = load i8, ptr %curr_char, align 1, !dbg !1526, !tbaa !1262
  %conv8 = sext i8 %8 to i32, !dbg !1526
  %cmp9 = icmp sge i32 %conv8, 65, !dbg !1527
  br i1 %cmp9, label %land.lhs.true11, label %lor.lhs.false15, !dbg !1528

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %9 = load i8, ptr %curr_char, align 1, !dbg !1529, !tbaa !1262
  %conv12 = sext i8 %9 to i32, !dbg !1529
  %cmp13 = icmp sle i32 %conv12, 90, !dbg !1530
  br i1 %cmp13, label %if.then27, label %lor.lhs.false15, !dbg !1531

lor.lhs.false15:                                  ; preds = %land.lhs.true11, %lor.lhs.false
  %10 = load i8, ptr %curr_char, align 1, !dbg !1532, !tbaa !1262
  %conv16 = sext i8 %10 to i32, !dbg !1532
  %cmp17 = icmp sge i32 %conv16, 48, !dbg !1533
  br i1 %cmp17, label %land.lhs.true19, label %lor.lhs.false23, !dbg !1534

land.lhs.true19:                                  ; preds = %lor.lhs.false15
  %11 = load i8, ptr %curr_char, align 1, !dbg !1535, !tbaa !1262
  %conv20 = sext i8 %11 to i32, !dbg !1535
  %cmp21 = icmp sle i32 %conv20, 57, !dbg !1536
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23, !dbg !1537

lor.lhs.false23:                                  ; preds = %land.lhs.true19, %lor.lhs.false15
  %12 = load i8, ptr %curr_char, align 1, !dbg !1538, !tbaa !1262
  %conv24 = sext i8 %12 to i32, !dbg !1538
  %cmp25 = icmp eq i32 %conv24, 95, !dbg !1539
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1540

if.then27:                                        ; preds = %lor.lhs.false23, %land.lhs.true19, %land.lhs.true11, %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1541

if.end28:                                         ; preds = %lor.lhs.false23
  store i32 -1, ptr %retval, align 4, !dbg !1543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1543

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 1, ptr %curr_char) #9, !dbg !1544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %13 = load i64, ptr %i, align 8, !dbg !1545, !tbaa !1441
  %inc = add i64 %13, 1, !dbg !1545
  store i64 %inc, ptr %i, align 8, !dbg !1545, !tbaa !1441
  br label %for.cond, !dbg !1546, !llvm.loop !1547

cleanup29:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1546
  %cleanup.dest30 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest30, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup29
  store i32 0, ptr %retval, align 4, !dbg !1549
  br label %return, !dbg !1549

return:                                           ; preds = %for.end, %cleanup29, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !1550
  ret i32 %14, !dbg !1550

unreachable:                                      ; preds = %cleanup29
  unreachable
}

declare !dbg !1551 ptr @sdsnew(ptr noundef) #0

declare !dbg !1554 ptr @dictFetchValue(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !1555 void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @functionsRegisterEngine(ptr noundef %engine_name, ptr noundef %engine) #1 !dbg !1558 {
entry:
  %retval = alloca i32, align 4
  %engine_name.addr = alloca ptr, align 8
  %engine.addr = alloca ptr, align 8
  %engine_name_sds = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %c = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %.compoundliteral = alloca %struct.engineInfo, align 8
  store ptr %engine_name, ptr %engine_name.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %engine_name.addr, metadata !1562, metadata !DIExpression()), !dbg !1567
  store ptr %engine, ptr %engine.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %engine.addr, metadata !1563, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine_name_sds) #9, !dbg !1569
  tail call void @llvm.dbg.declare(metadata ptr %engine_name_sds, metadata !1564, metadata !DIExpression()), !dbg !1570
  %0 = load ptr, ptr %engine_name.addr, align 8, !dbg !1571, !tbaa !567
  %call = call ptr @sdsnew(ptr noundef %0), !dbg !1572
  store ptr %call, ptr %engine_name_sds, align 8, !dbg !1570, !tbaa !567
  %1 = load ptr, ptr @engines, align 8, !dbg !1573, !tbaa !567
  %2 = load ptr, ptr %engine_name_sds, align 8, !dbg !1575, !tbaa !567
  %call1 = call ptr @dictFetchValue(ptr noundef %1, ptr noundef %2), !dbg !1576
  %tobool = icmp ne ptr %call1, null, !dbg !1576
  br i1 %tobool, label %if.then, label %if.end3, !dbg !1577

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1578

do.body:                                          ; preds = %if.then
  %3 = load i32, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 154), align 8, !dbg !1580, !tbaa !1583
  %cmp = icmp slt i32 3, %3, !dbg !1580
  br i1 %cmp, label %if.then2, label %if.end, !dbg !1591

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !1580

if.end:                                           ; preds = %do.body
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef @.str.4), !dbg !1591
  br label %do.cond, !dbg !1591

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1591

do.end:                                           ; preds = %do.cond, %if.then2
  %4 = load ptr, ptr %engine_name_sds, align 8, !dbg !1592, !tbaa !567
  call void @sdsfree(ptr noundef %4), !dbg !1593
  store i32 -1, ptr %retval, align 4, !dbg !1594
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1594

if.end3:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #9, !dbg !1595
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1565, metadata !DIExpression()), !dbg !1596
  %call4 = call ptr @createClient(ptr noundef null), !dbg !1597
  store ptr %call4, ptr %c, align 8, !dbg !1596, !tbaa !567
  %5 = load ptr, ptr %c, align 8, !dbg !1598, !tbaa !567
  %flags = getelementptr inbounds %struct.client, ptr %5, i32 0, i32 1, !dbg !1599
  %6 = load i64, ptr %flags, align 8, !dbg !1600, !tbaa !1601
  %or = or i64 %6, 2199023255808, !dbg !1600
  store i64 %or, ptr %flags, align 8, !dbg !1600, !tbaa !1601
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #9, !dbg !1606
  tail call void @llvm.dbg.declare(metadata ptr %ei, metadata !1566, metadata !DIExpression()), !dbg !1607
  %call5 = call ptr @zmalloc(i64 noundef 24), !dbg !1608
  store ptr %call5, ptr %ei, align 8, !dbg !1607, !tbaa !567
  %7 = load ptr, ptr %ei, align 8, !dbg !1609, !tbaa !567
  %name = getelementptr inbounds %struct.engineInfo, ptr %.compoundliteral, i32 0, i32 0, !dbg !1610
  %8 = load ptr, ptr %engine_name_sds, align 8, !dbg !1611, !tbaa !567
  store ptr %8, ptr %name, align 8, !dbg !1610, !tbaa !1402
  %engine6 = getelementptr inbounds %struct.engineInfo, ptr %.compoundliteral, i32 0, i32 1, !dbg !1610
  %9 = load ptr, ptr %engine.addr, align 8, !dbg !1612, !tbaa !567
  store ptr %9, ptr %engine6, align 8, !dbg !1610, !tbaa !1192
  %c7 = getelementptr inbounds %struct.engineInfo, ptr %.compoundliteral, i32 0, i32 2, !dbg !1610
  %10 = load ptr, ptr %c, align 8, !dbg !1613, !tbaa !567
  store ptr %10, ptr %c7, align 8, !dbg !1610, !tbaa !1614
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %.compoundliteral, i64 24, i1 false), !dbg !1615, !tbaa.struct !1616
  %11 = load ptr, ptr @engines, align 8, !dbg !1617, !tbaa !567
  %12 = load ptr, ptr %engine_name_sds, align 8, !dbg !1618, !tbaa !567
  %13 = load ptr, ptr %ei, align 8, !dbg !1619, !tbaa !567
  %call8 = call i32 @dictAdd(ptr noundef %11, ptr noundef %12, ptr noundef %13), !dbg !1620
  %14 = load ptr, ptr %ei, align 8, !dbg !1621, !tbaa !567
  %call9 = call i64 @je_malloc_usable_size(ptr noundef %14) #9, !dbg !1621
  %15 = load ptr, ptr %ei, align 8, !dbg !1622, !tbaa !567
  %name10 = getelementptr inbounds %struct.engineInfo, ptr %15, i32 0, i32 0, !dbg !1623
  %16 = load ptr, ptr %name10, align 8, !dbg !1623, !tbaa !1402
  %call11 = call i64 @sdsZmallocSize(ptr noundef %16), !dbg !1624
  %add = add i64 %call9, %call11, !dbg !1625
  %17 = load ptr, ptr %engine.addr, align 8, !dbg !1626, !tbaa !567
  %call12 = call i64 @je_malloc_usable_size(ptr noundef %17) #9, !dbg !1626
  %add13 = add i64 %add, %call12, !dbg !1627
  %18 = load ptr, ptr %engine.addr, align 8, !dbg !1628, !tbaa !567
  %get_engine_memory_overhead = getelementptr inbounds %struct.engine, ptr %18, i32 0, i32 5, !dbg !1629
  %19 = load ptr, ptr %get_engine_memory_overhead, align 8, !dbg !1629, !tbaa !1630
  %20 = load ptr, ptr %engine.addr, align 8, !dbg !1631, !tbaa !567
  %engine_ctx = getelementptr inbounds %struct.engine, ptr %20, i32 0, i32 0, !dbg !1632
  %21 = load ptr, ptr %engine_ctx, align 8, !dbg !1632, !tbaa !1200
  %call14 = call i64 %19(ptr noundef %21), !dbg !1628
  %add15 = add i64 %add13, %call14, !dbg !1633
  %22 = load i64, ptr @engine_cache_memory, align 8, !dbg !1634, !tbaa !1441
  %add16 = add i64 %22, %add15, !dbg !1634
  store i64 %add16, ptr @engine_cache_memory, align 8, !dbg !1634, !tbaa !1441
  store i32 0, ptr %retval, align 4, !dbg !1635
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #9, !dbg !1636
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #9, !dbg !1636
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine_name_sds) #9, !dbg !1636
  %23 = load i32, ptr %retval, align 4, !dbg !1636
  ret i32 %23, !dbg !1636
}

declare !dbg !1637 void @_serverLog(i32 noundef, ptr noundef, ...) #0

declare !dbg !1640 void @sdsfree(ptr noundef) #0

declare !dbg !1643 ptr @createClient(ptr noundef) #0

; Function Attrs: nounwind
declare !dbg !1646 i64 @je_malloc_usable_size(ptr noundef) #4

declare !dbg !1648 i64 @sdsZmallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionStatsCommand(ptr noundef %c) #1 !dbg !1651 {
entry:
  %c.addr = alloca ptr, align 8
  %script_client = alloca ptr, align 8
  %i = alloca i32, align 4
  %iter = alloca ptr, align 8
  %entry21 = alloca ptr, align 8
  %ei = alloca ptr, align 8
  %e_stats = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1653, metadata !DIExpression()), !dbg !1664
  %call = call i32 (...) @scriptIsRunning(), !dbg !1665
  %tobool = icmp ne i32 %call, 0, !dbg !1665
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1667

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 (...) @scriptIsEval(), !dbg !1668
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1668
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1669

if.then:                                          ; preds = %land.lhs.true
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1670, !tbaa !567
  %1 = load ptr, ptr getelementptr inbounds (%struct.sharedObjectsStruct, ptr @shared, i32 0, i32 21), align 8, !dbg !1672, !tbaa !1673
  call void @addReplyErrorObject(ptr noundef %0, ptr noundef %1), !dbg !1675
  br label %return, !dbg !1676

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %c.addr, align 8, !dbg !1677, !tbaa !567
  call void @addReplyMapLen(ptr noundef %2, i64 noundef 2), !dbg !1678
  %3 = load ptr, ptr %c.addr, align 8, !dbg !1679, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %3, ptr noundef @.str.5), !dbg !1680
  %call3 = call i32 (...) @scriptIsRunning(), !dbg !1681
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1681
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !1682

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %c.addr, align 8, !dbg !1683, !tbaa !567
  call void @addReplyNull(ptr noundef %4), !dbg !1685
  br label %if.end16, !dbg !1686

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %c.addr, align 8, !dbg !1687, !tbaa !567
  call void @addReplyMapLen(ptr noundef %5, i64 noundef 3), !dbg !1688
  %6 = load ptr, ptr %c.addr, align 8, !dbg !1689, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %6, ptr noundef @.str.6), !dbg !1690
  %7 = load ptr, ptr %c.addr, align 8, !dbg !1691, !tbaa !567
  %call6 = call ptr (...) @scriptCurrFunction(), !dbg !1692
  call void @addReplyBulkCString(ptr noundef %7, ptr noundef %call6), !dbg !1693
  %8 = load ptr, ptr %c.addr, align 8, !dbg !1694, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %8, ptr noundef @.str.7), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr %script_client) #9, !dbg !1696
  tail call void @llvm.dbg.declare(metadata ptr %script_client, metadata !1654, metadata !DIExpression()), !dbg !1697
  %call7 = call ptr (...) @scriptGetCaller(), !dbg !1698
  store ptr %call7, ptr %script_client, align 8, !dbg !1697, !tbaa !567
  %9 = load ptr, ptr %c.addr, align 8, !dbg !1699, !tbaa !567
  %10 = load ptr, ptr %script_client, align 8, !dbg !1700, !tbaa !567
  %argc = getelementptr inbounds %struct.client, ptr %10, i32 0, i32 9, !dbg !1701
  %11 = load i32, ptr %argc, align 8, !dbg !1701, !tbaa !1702
  %conv = sext i32 %11 to i64, !dbg !1700
  call void @addReplyArrayLen(ptr noundef %9, i64 noundef %conv), !dbg !1703
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1704
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1657, metadata !DIExpression()), !dbg !1705
  store i32 0, ptr %i, align 4, !dbg !1705, !tbaa !1305
  br label %for.cond, !dbg !1704

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i32, ptr %i, align 4, !dbg !1706, !tbaa !1305
  %13 = load ptr, ptr %script_client, align 8, !dbg !1708, !tbaa !567
  %argc8 = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 9, !dbg !1709
  %14 = load i32, ptr %argc8, align 8, !dbg !1709, !tbaa !1702
  %cmp = icmp slt i32 %12, %14, !dbg !1710
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1711

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1712
  br label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %c.addr, align 8, !dbg !1713, !tbaa !567
  %16 = load ptr, ptr %script_client, align 8, !dbg !1715, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %16, i32 0, i32 10, !dbg !1716
  %17 = load ptr, ptr %argv, align 8, !dbg !1716, !tbaa !1717
  %18 = load i32, ptr %i, align 4, !dbg !1718, !tbaa !1305
  %idxprom = sext i32 %18 to i64, !dbg !1715
  %arrayidx = getelementptr inbounds ptr, ptr %17, i64 %idxprom, !dbg !1715
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !1715, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %19, i32 0, i32 2, !dbg !1719
  %20 = load ptr, ptr %ptr, align 8, !dbg !1719, !tbaa !1720
  %21 = load ptr, ptr %script_client, align 8, !dbg !1722, !tbaa !567
  %argv10 = getelementptr inbounds %struct.client, ptr %21, i32 0, i32 10, !dbg !1723
  %22 = load ptr, ptr %argv10, align 8, !dbg !1723, !tbaa !1717
  %23 = load i32, ptr %i, align 4, !dbg !1724, !tbaa !1305
  %idxprom11 = sext i32 %23 to i64, !dbg !1722
  %arrayidx12 = getelementptr inbounds ptr, ptr %22, i64 %idxprom11, !dbg !1722
  %24 = load ptr, ptr %arrayidx12, align 8, !dbg !1722, !tbaa !567
  %ptr13 = getelementptr inbounds %struct.redisObject, ptr %24, i32 0, i32 2, !dbg !1725
  %25 = load ptr, ptr %ptr13, align 8, !dbg !1725, !tbaa !1720
  %call14 = call i64 @sdslen(ptr noundef %25), !dbg !1726
  call void @addReplyBulkCBuffer(ptr noundef %15, ptr noundef %20, i64 noundef %call14), !dbg !1727
  br label %for.inc, !dbg !1728

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !1729, !tbaa !1305
  %inc = add nsw i32 %26, 1, !dbg !1729
  store i32 %inc, ptr %i, align 4, !dbg !1729, !tbaa !1305
  br label %for.cond, !dbg !1712, !llvm.loop !1730

for.end:                                          ; preds = %for.cond.cleanup
  %27 = load ptr, ptr %c.addr, align 8, !dbg !1732, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %27, ptr noundef @.str.8), !dbg !1733
  %28 = load ptr, ptr %c.addr, align 8, !dbg !1734, !tbaa !567
  %call15 = call i64 (...) @scriptRunDuration(), !dbg !1735
  call void @addReplyLongLong(ptr noundef %28, i64 noundef %call15), !dbg !1736
  call void @llvm.lifetime.end.p0(i64 8, ptr %script_client) #9, !dbg !1737
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then5
  %29 = load ptr, ptr %c.addr, align 8, !dbg !1738, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %29, ptr noundef @.str.9), !dbg !1739
  %30 = load ptr, ptr %c.addr, align 8, !dbg !1740, !tbaa !567
  %31 = load ptr, ptr @engines, align 8, !dbg !1741, !tbaa !567
  %ht_used = getelementptr inbounds %struct.dict, ptr %31, i32 0, i32 2, !dbg !1741
  %arrayidx17 = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !1741
  %32 = load i64, ptr %arrayidx17, align 8, !dbg !1741, !tbaa !1441
  %33 = load ptr, ptr @engines, align 8, !dbg !1741, !tbaa !567
  %ht_used18 = getelementptr inbounds %struct.dict, ptr %33, i32 0, i32 2, !dbg !1741
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %ht_used18, i64 0, i64 1, !dbg !1741
  %34 = load i64, ptr %arrayidx19, align 8, !dbg !1741, !tbaa !1441
  %add = add i64 %32, %34, !dbg !1741
  call void @addReplyMapLen(ptr noundef %30, i64 noundef %add), !dbg !1742
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !1743
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1659, metadata !DIExpression()), !dbg !1744
  %35 = load ptr, ptr @engines, align 8, !dbg !1745, !tbaa !567
  %call20 = call ptr @dictGetIterator(ptr noundef %35), !dbg !1746
  store ptr %call20, ptr %iter, align 8, !dbg !1744, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry21) #9, !dbg !1747
  tail call void @llvm.dbg.declare(metadata ptr %entry21, metadata !1660, metadata !DIExpression()), !dbg !1748
  store ptr null, ptr %entry21, align 8, !dbg !1748, !tbaa !567
  br label %while.cond, !dbg !1749

while.cond:                                       ; preds = %while.body, %if.end16
  %36 = load ptr, ptr %iter, align 8, !dbg !1750, !tbaa !567
  %call22 = call ptr @dictNext(ptr noundef %36), !dbg !1751
  store ptr %call22, ptr %entry21, align 8, !dbg !1752, !tbaa !567
  %tobool23 = icmp ne ptr %call22, null, !dbg !1749
  br i1 %tobool23, label %while.body, label %while.end, !dbg !1749

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #9, !dbg !1753
  tail call void @llvm.dbg.declare(metadata ptr %ei, metadata !1661, metadata !DIExpression()), !dbg !1754
  %37 = load ptr, ptr %entry21, align 8, !dbg !1755, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %37, i32 0, i32 1, !dbg !1755
  %38 = load ptr, ptr %v, align 8, !dbg !1755, !tbaa !1262
  store ptr %38, ptr %ei, align 8, !dbg !1754, !tbaa !567
  %39 = load ptr, ptr %c.addr, align 8, !dbg !1756, !tbaa !567
  %40 = load ptr, ptr %ei, align 8, !dbg !1757, !tbaa !567
  %name = getelementptr inbounds %struct.engineInfo, ptr %40, i32 0, i32 0, !dbg !1758
  %41 = load ptr, ptr %name, align 8, !dbg !1758, !tbaa !1402
  call void @addReplyBulkCString(ptr noundef %39, ptr noundef %41), !dbg !1759
  %42 = load ptr, ptr %c.addr, align 8, !dbg !1760, !tbaa !567
  call void @addReplyMapLen(ptr noundef %42, i64 noundef 2), !dbg !1761
  call void @llvm.lifetime.start.p0(i64 8, ptr %e_stats) #9, !dbg !1762
  tail call void @llvm.dbg.declare(metadata ptr %e_stats, metadata !1663, metadata !DIExpression()), !dbg !1763
  %43 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1764, !tbaa !567
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, ptr %43, i32 0, i32 3, !dbg !1765
  %44 = load ptr, ptr %engines_stats, align 8, !dbg !1765, !tbaa !1251
  %45 = load ptr, ptr %ei, align 8, !dbg !1766, !tbaa !567
  %name24 = getelementptr inbounds %struct.engineInfo, ptr %45, i32 0, i32 0, !dbg !1767
  %46 = load ptr, ptr %name24, align 8, !dbg !1767, !tbaa !1402
  %call25 = call ptr @dictFetchValue(ptr noundef %44, ptr noundef %46), !dbg !1768
  store ptr %call25, ptr %e_stats, align 8, !dbg !1763, !tbaa !567
  %47 = load ptr, ptr %c.addr, align 8, !dbg !1769, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %47, ptr noundef @.str.10), !dbg !1770
  %48 = load ptr, ptr %c.addr, align 8, !dbg !1771, !tbaa !567
  %49 = load ptr, ptr %e_stats, align 8, !dbg !1772, !tbaa !567
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, ptr %49, i32 0, i32 0, !dbg !1773
  %50 = load i64, ptr %n_lib, align 8, !dbg !1773, !tbaa !1271
  call void @addReplyLongLong(ptr noundef %48, i64 noundef %50), !dbg !1774
  %51 = load ptr, ptr %c.addr, align 8, !dbg !1775, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %51, ptr noundef @.str.11), !dbg !1776
  %52 = load ptr, ptr %c.addr, align 8, !dbg !1777, !tbaa !567
  %53 = load ptr, ptr %e_stats, align 8, !dbg !1778, !tbaa !567
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, ptr %53, i32 0, i32 1, !dbg !1779
  %54 = load i64, ptr %n_functions, align 8, !dbg !1779, !tbaa !1266
  call void @addReplyLongLong(ptr noundef %52, i64 noundef %54), !dbg !1780
  call void @llvm.lifetime.end.p0(i64 8, ptr %e_stats) #9, !dbg !1781
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #9, !dbg !1781
  br label %while.cond, !dbg !1749, !llvm.loop !1782

while.end:                                        ; preds = %while.cond
  %55 = load ptr, ptr %iter, align 8, !dbg !1783, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %55), !dbg !1784
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry21) #9, !dbg !1785
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !1785
  br label %return, !dbg !1785

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !1785
}

declare !dbg !1786 i32 @scriptIsRunning(...) #0

declare !dbg !1789 i32 @scriptIsEval(...) #0

declare !dbg !1790 void @addReplyErrorObject(ptr noundef, ptr noundef) #0

declare !dbg !1793 void @addReplyMapLen(ptr noundef, i64 noundef) #0

declare !dbg !1796 void @addReplyBulkCString(ptr noundef, ptr noundef) #0

declare !dbg !1799 void @addReplyNull(ptr noundef) #0

declare !dbg !1800 ptr @scriptCurrFunction(...) #0

declare !dbg !1803 ptr @scriptGetCaller(...) #0

declare !dbg !1806 void @addReplyArrayLen(ptr noundef, i64 noundef) #0

declare !dbg !1807 void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @sdslen(ptr noundef %s) #5 !dbg !1810 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %flags = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1815, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #9, !dbg !1818
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1816, metadata !DIExpression()), !dbg !1819
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1820, !tbaa !567
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 -1, !dbg !1820
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1820, !tbaa !1262
  store i8 %1, ptr %flags, align 1, !dbg !1819, !tbaa !1262
  %2 = load i8, ptr %flags, align 1, !dbg !1821, !tbaa !1262
  %conv = zext i8 %2 to i32, !dbg !1821
  %and = and i32 %conv, 7, !dbg !1822
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1823

sw.bb:                                            ; preds = %entry
  %3 = load i8, ptr %flags, align 1, !dbg !1824, !tbaa !1262
  %conv1 = zext i8 %3 to i32, !dbg !1824
  %shr = ashr i32 %conv1, 3, !dbg !1824
  %conv2 = sext i32 %shr to i64, !dbg !1824
  store i64 %conv2, ptr %retval, align 8, !dbg !1826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1826

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1827, !tbaa !567
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 -3, !dbg !1827
  %len = getelementptr inbounds %struct.sdshdr8, ptr %add.ptr, i32 0, i32 0, !dbg !1828
  %5 = load i8, ptr %len, align 1, !dbg !1828, !tbaa !1262
  %conv4 = zext i8 %5 to i64, !dbg !1827
  store i64 %conv4, ptr %retval, align 8, !dbg !1829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1829

sw.bb5:                                           ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1830, !tbaa !567
  %add.ptr6 = getelementptr inbounds i8, ptr %6, i64 -5, !dbg !1830
  %len7 = getelementptr inbounds %struct.sdshdr16, ptr %add.ptr6, i32 0, i32 0, !dbg !1831
  %7 = load i16, ptr %len7, align 1, !dbg !1831, !tbaa !1832
  %conv8 = zext i16 %7 to i64, !dbg !1830
  store i64 %conv8, ptr %retval, align 8, !dbg !1834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1834

sw.bb9:                                           ; preds = %entry
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1835, !tbaa !567
  %add.ptr10 = getelementptr inbounds i8, ptr %8, i64 -9, !dbg !1835
  %len11 = getelementptr inbounds %struct.sdshdr32, ptr %add.ptr10, i32 0, i32 0, !dbg !1836
  %9 = load i32, ptr %len11, align 1, !dbg !1836, !tbaa !1305
  %conv12 = zext i32 %9 to i64, !dbg !1835
  store i64 %conv12, ptr %retval, align 8, !dbg !1837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1837

sw.bb13:                                          ; preds = %entry
  %10 = load ptr, ptr %s.addr, align 8, !dbg !1838, !tbaa !567
  %add.ptr14 = getelementptr inbounds i8, ptr %10, i64 -17, !dbg !1838
  %len15 = getelementptr inbounds %struct.sdshdr64, ptr %add.ptr14, i32 0, i32 0, !dbg !1839
  %11 = load i64, ptr %len15, align 1, !dbg !1839, !tbaa !1441
  store i64 %11, ptr %retval, align 8, !dbg !1840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1840

sw.epilog:                                        ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1841

cleanup:                                          ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #9, !dbg !1842
  %12 = load i64, ptr %retval, align 8, !dbg !1842
  ret i64 %12, !dbg !1842
}

declare !dbg !1843 void @addReplyLongLong(ptr noundef, i64 noundef) #0

declare !dbg !1846 i64 @scriptRunDuration(...) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionListCommand(ptr noundef %c) #1 !dbg !1849 {
entry:
  %c.addr = alloca ptr, align 8
  %with_code = alloca i32, align 4
  %library_name = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %next_arg = alloca ptr, align 8
  %reply_len = alloca i64, align 8
  %len_ptr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %entry33 = alloca ptr, align 8
  %li = alloca ptr, align 8
  %functions_iter = alloca ptr, align 8
  %function_entry = alloca ptr, align 8
  %fi = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1851, metadata !DIExpression()), !dbg !1869
  call void @llvm.lifetime.start.p0(i64 4, ptr %with_code) #9, !dbg !1870
  tail call void @llvm.dbg.declare(metadata ptr %with_code, metadata !1852, metadata !DIExpression()), !dbg !1871
  store i32 0, ptr %with_code, align 4, !dbg !1871, !tbaa !1305
  call void @llvm.lifetime.start.p0(i64 8, ptr %library_name) #9, !dbg !1872
  tail call void @llvm.dbg.declare(metadata ptr %library_name, metadata !1853, metadata !DIExpression()), !dbg !1873
  store ptr null, ptr %library_name, align 8, !dbg !1873, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1874
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1854, metadata !DIExpression()), !dbg !1875
  store i32 2, ptr %i, align 4, !dbg !1875, !tbaa !1305
  br label %for.cond, !dbg !1874

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1876, !tbaa !1305
  %1 = load ptr, ptr %c.addr, align 8, !dbg !1877, !tbaa !567
  %argc = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 9, !dbg !1878
  %2 = load i32, ptr %argc, align 8, !dbg !1878, !tbaa !1702
  %cmp = icmp slt i32 %0, %2, !dbg !1879
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1880

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !1880

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_arg) #9, !dbg !1881
  tail call void @llvm.dbg.declare(metadata ptr %next_arg, metadata !1856, metadata !DIExpression()), !dbg !1882
  %3 = load ptr, ptr %c.addr, align 8, !dbg !1883, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %3, i32 0, i32 10, !dbg !1884
  %4 = load ptr, ptr %argv, align 8, !dbg !1884, !tbaa !1717
  %5 = load i32, ptr %i, align 4, !dbg !1885, !tbaa !1305
  %idxprom = sext i32 %5 to i64, !dbg !1883
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom, !dbg !1883
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1883, !tbaa !567
  store ptr %6, ptr %next_arg, align 8, !dbg !1882, !tbaa !567
  %7 = load i32, ptr %with_code, align 4, !dbg !1886, !tbaa !1305
  %tobool = icmp ne i32 %7, 0, !dbg !1886
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1888

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %next_arg, align 8, !dbg !1889, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %8, i32 0, i32 2, !dbg !1890
  %9 = load ptr, ptr %ptr, align 8, !dbg !1890, !tbaa !1720
  %call = call i32 @strcasecmp(ptr noundef %9, ptr noundef @.str.12) #10, !dbg !1891
  %tobool1 = icmp ne i32 %call, 0, !dbg !1891
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1892

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %with_code, align 4, !dbg !1893, !tbaa !1305
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1895

if.end:                                           ; preds = %land.lhs.true, %for.body
  %10 = load ptr, ptr %library_name, align 8, !dbg !1896, !tbaa !567
  %tobool2 = icmp ne ptr %10, null, !dbg !1896
  br i1 %tobool2, label %if.end16, label %land.lhs.true3, !dbg !1898

land.lhs.true3:                                   ; preds = %if.end
  %11 = load ptr, ptr %next_arg, align 8, !dbg !1899, !tbaa !567
  %ptr4 = getelementptr inbounds %struct.redisObject, ptr %11, i32 0, i32 2, !dbg !1900
  %12 = load ptr, ptr %ptr4, align 8, !dbg !1900, !tbaa !1720
  %call5 = call i32 @strcasecmp(ptr noundef %12, ptr noundef @.str.13) #10, !dbg !1901
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1901
  br i1 %tobool6, label %if.end16, label %if.then7, !dbg !1902

if.then7:                                         ; preds = %land.lhs.true3
  %13 = load i32, ptr %i, align 4, !dbg !1903, !tbaa !1305
  %14 = load ptr, ptr %c.addr, align 8, !dbg !1906, !tbaa !567
  %argc8 = getelementptr inbounds %struct.client, ptr %14, i32 0, i32 9, !dbg !1907
  %15 = load i32, ptr %argc8, align 8, !dbg !1907, !tbaa !1702
  %sub = sub nsw i32 %15, 1, !dbg !1908
  %cmp9 = icmp sge i32 %13, %sub, !dbg !1909
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1910

if.then10:                                        ; preds = %if.then7
  %16 = load ptr, ptr %c.addr, align 8, !dbg !1911, !tbaa !567
  call void @addReplyError(ptr noundef %16, ptr noundef @.str.14), !dbg !1913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1914

if.end11:                                         ; preds = %if.then7
  %17 = load ptr, ptr %c.addr, align 8, !dbg !1915, !tbaa !567
  %argv12 = getelementptr inbounds %struct.client, ptr %17, i32 0, i32 10, !dbg !1916
  %18 = load ptr, ptr %argv12, align 8, !dbg !1916, !tbaa !1717
  %19 = load i32, ptr %i, align 4, !dbg !1917, !tbaa !1305
  %inc = add nsw i32 %19, 1, !dbg !1917
  store i32 %inc, ptr %i, align 4, !dbg !1917, !tbaa !1305
  %idxprom13 = sext i32 %inc to i64, !dbg !1915
  %arrayidx14 = getelementptr inbounds ptr, ptr %18, i64 %idxprom13, !dbg !1915
  %20 = load ptr, ptr %arrayidx14, align 8, !dbg !1915, !tbaa !567
  %ptr15 = getelementptr inbounds %struct.redisObject, ptr %20, i32 0, i32 2, !dbg !1918
  %21 = load ptr, ptr %ptr15, align 8, !dbg !1918, !tbaa !1720
  store ptr %21, ptr %library_name, align 8, !dbg !1919, !tbaa !567
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1920

if.end16:                                         ; preds = %land.lhs.true3, %if.end
  %22 = load ptr, ptr %c.addr, align 8, !dbg !1921, !tbaa !567
  %call17 = call ptr @sdsempty(), !dbg !1922
  %23 = load ptr, ptr %next_arg, align 8, !dbg !1923, !tbaa !567
  %ptr18 = getelementptr inbounds %struct.redisObject, ptr %23, i32 0, i32 2, !dbg !1924
  %24 = load ptr, ptr %ptr18, align 8, !dbg !1924, !tbaa !1720
  %call19 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call17, ptr noundef @.str.15, ptr noundef %24), !dbg !1925
  call void @addReplyErrorSds(ptr noundef %22, ptr noundef %call19), !dbg !1926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1927

cleanup:                                          ; preds = %if.end16, %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_arg) #9, !dbg !1928
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %25 = load i32, ptr %i, align 4, !dbg !1929, !tbaa !1305
  %inc20 = add nsw i32 %25, 1, !dbg !1929
  store i32 %inc20, ptr %i, align 4, !dbg !1929, !tbaa !1305
  br label %for.cond, !dbg !1930, !llvm.loop !1931

cleanup21:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1930
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup91 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup21
  call void @llvm.lifetime.start.p0(i64 8, ptr %reply_len) #9, !dbg !1933
  tail call void @llvm.dbg.declare(metadata ptr %reply_len, metadata !1859, metadata !DIExpression()), !dbg !1934
  store i64 0, ptr %reply_len, align 8, !dbg !1934, !tbaa !1441
  call void @llvm.lifetime.start.p0(i64 8, ptr %len_ptr) #9, !dbg !1935
  tail call void @llvm.dbg.declare(metadata ptr %len_ptr, metadata !1860, metadata !DIExpression()), !dbg !1936
  store ptr null, ptr %len_ptr, align 8, !dbg !1936, !tbaa !567
  %26 = load ptr, ptr %library_name, align 8, !dbg !1937, !tbaa !567
  %tobool23 = icmp ne ptr %26, null, !dbg !1937
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !1939

if.then24:                                        ; preds = %for.end
  %27 = load ptr, ptr %c.addr, align 8, !dbg !1940, !tbaa !567
  %call25 = call ptr @addReplyDeferredLen(ptr noundef %27), !dbg !1942
  store ptr %call25, ptr %len_ptr, align 8, !dbg !1943, !tbaa !567
  br label %if.end30, !dbg !1944

if.else:                                          ; preds = %for.end
  %28 = load ptr, ptr %c.addr, align 8, !dbg !1945, !tbaa !567
  %29 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1947, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %29, i32 0, i32 0, !dbg !1947
  %30 = load ptr, ptr %libraries, align 8, !dbg !1947, !tbaa !1245
  %ht_used = getelementptr inbounds %struct.dict, ptr %30, i32 0, i32 2, !dbg !1947
  %arrayidx26 = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !1947
  %31 = load i64, ptr %arrayidx26, align 8, !dbg !1947, !tbaa !1441
  %32 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1947, !tbaa !567
  %libraries27 = getelementptr inbounds %struct.functionsLibCtx, ptr %32, i32 0, i32 0, !dbg !1947
  %33 = load ptr, ptr %libraries27, align 8, !dbg !1947, !tbaa !1245
  %ht_used28 = getelementptr inbounds %struct.dict, ptr %33, i32 0, i32 2, !dbg !1947
  %arrayidx29 = getelementptr inbounds [2 x i64], ptr %ht_used28, i64 0, i64 1, !dbg !1947
  %34 = load i64, ptr %arrayidx29, align 8, !dbg !1947, !tbaa !1441
  %add = add i64 %31, %34, !dbg !1947
  call void @addReplyArrayLen(ptr noundef %28, i64 noundef %add), !dbg !1948
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then24
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !1949
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !1861, metadata !DIExpression()), !dbg !1950
  %35 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !1951, !tbaa !567
  %libraries31 = getelementptr inbounds %struct.functionsLibCtx, ptr %35, i32 0, i32 0, !dbg !1952
  %36 = load ptr, ptr %libraries31, align 8, !dbg !1952, !tbaa !1245
  %call32 = call ptr @dictGetIterator(ptr noundef %36), !dbg !1953
  store ptr %call32, ptr %iter, align 8, !dbg !1950, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry33) #9, !dbg !1954
  tail call void @llvm.dbg.declare(metadata ptr %entry33, metadata !1862, metadata !DIExpression()), !dbg !1955
  store ptr null, ptr %entry33, align 8, !dbg !1955, !tbaa !567
  br label %while.cond, !dbg !1956

while.cond:                                       ; preds = %cleanup.cont, %cleanup85, %if.end30
  %37 = load ptr, ptr %iter, align 8, !dbg !1957, !tbaa !567
  %call34 = call ptr @dictNext(ptr noundef %37), !dbg !1958
  store ptr %call34, ptr %entry33, align 8, !dbg !1959, !tbaa !567
  %tobool35 = icmp ne ptr %call34, null, !dbg !1956
  br i1 %tobool35, label %while.body, label %while.end87, !dbg !1956

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %li) #9, !dbg !1960
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !1863, metadata !DIExpression()), !dbg !1961
  %38 = load ptr, ptr %entry33, align 8, !dbg !1962, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %38, i32 0, i32 1, !dbg !1962
  %39 = load ptr, ptr %v, align 8, !dbg !1962, !tbaa !1262
  store ptr %39, ptr %li, align 8, !dbg !1961, !tbaa !567
  %40 = load ptr, ptr %library_name, align 8, !dbg !1963, !tbaa !567
  %tobool36 = icmp ne ptr %40, null, !dbg !1963
  br i1 %tobool36, label %if.then37, label %if.end46, !dbg !1965

if.then37:                                        ; preds = %while.body
  %41 = load ptr, ptr %library_name, align 8, !dbg !1966, !tbaa !567
  %42 = load ptr, ptr %library_name, align 8, !dbg !1969, !tbaa !567
  %call38 = call i64 @sdslen(ptr noundef %42), !dbg !1970
  %conv = trunc i64 %call38 to i32, !dbg !1970
  %43 = load ptr, ptr %li, align 8, !dbg !1971, !tbaa !567
  %name = getelementptr inbounds %struct.functionLibInfo, ptr %43, i32 0, i32 0, !dbg !1972
  %44 = load ptr, ptr %name, align 8, !dbg !1972, !tbaa !1973
  %45 = load ptr, ptr %li, align 8, !dbg !1974, !tbaa !567
  %name39 = getelementptr inbounds %struct.functionLibInfo, ptr %45, i32 0, i32 0, !dbg !1975
  %46 = load ptr, ptr %name39, align 8, !dbg !1975, !tbaa !1973
  %call40 = call i64 @sdslen(ptr noundef %46), !dbg !1976
  %conv41 = trunc i64 %call40 to i32, !dbg !1976
  %call42 = call i32 @stringmatchlen(ptr noundef %41, i32 noundef %conv, ptr noundef %44, i32 noundef %conv41, i32 noundef 1), !dbg !1977
  %tobool43 = icmp ne i32 %call42, 0, !dbg !1977
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !1978

if.then44:                                        ; preds = %if.then37
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !1979, !llvm.loop !1981

if.end45:                                         ; preds = %if.then37
  br label %if.end46, !dbg !1983

if.end46:                                         ; preds = %if.end45, %while.body
  %47 = load i64, ptr %reply_len, align 8, !dbg !1984, !tbaa !1441
  %inc47 = add i64 %47, 1, !dbg !1984
  store i64 %inc47, ptr %reply_len, align 8, !dbg !1984, !tbaa !1441
  %48 = load ptr, ptr %c.addr, align 8, !dbg !1985, !tbaa !567
  %49 = load i32, ptr %with_code, align 4, !dbg !1986, !tbaa !1305
  %tobool48 = icmp ne i32 %49, 0, !dbg !1986
  %50 = zext i1 %tobool48 to i64, !dbg !1986
  %cond = select i1 %tobool48, i32 4, i32 3, !dbg !1986
  %conv49 = sext i32 %cond to i64, !dbg !1986
  call void @addReplyMapLen(ptr noundef %48, i64 noundef %conv49), !dbg !1987
  %51 = load ptr, ptr %c.addr, align 8, !dbg !1988, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %51, ptr noundef @.str.16), !dbg !1989
  %52 = load ptr, ptr %c.addr, align 8, !dbg !1990, !tbaa !567
  %53 = load ptr, ptr %li, align 8, !dbg !1991, !tbaa !567
  %name50 = getelementptr inbounds %struct.functionLibInfo, ptr %53, i32 0, i32 0, !dbg !1992
  %54 = load ptr, ptr %name50, align 8, !dbg !1992, !tbaa !1973
  %55 = load ptr, ptr %li, align 8, !dbg !1993, !tbaa !567
  %name51 = getelementptr inbounds %struct.functionLibInfo, ptr %55, i32 0, i32 0, !dbg !1994
  %56 = load ptr, ptr %name51, align 8, !dbg !1994, !tbaa !1973
  %call52 = call i64 @sdslen(ptr noundef %56), !dbg !1995
  call void @addReplyBulkCBuffer(ptr noundef %52, ptr noundef %54, i64 noundef %call52), !dbg !1996
  %57 = load ptr, ptr %c.addr, align 8, !dbg !1997, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %57, ptr noundef @.str.17), !dbg !1998
  %58 = load ptr, ptr %c.addr, align 8, !dbg !1999, !tbaa !567
  %59 = load ptr, ptr %li, align 8, !dbg !2000, !tbaa !567
  %ei = getelementptr inbounds %struct.functionLibInfo, ptr %59, i32 0, i32 2, !dbg !2001
  %60 = load ptr, ptr %ei, align 8, !dbg !2001, !tbaa !1189
  %name53 = getelementptr inbounds %struct.engineInfo, ptr %60, i32 0, i32 0, !dbg !2002
  %61 = load ptr, ptr %name53, align 8, !dbg !2002, !tbaa !1402
  %62 = load ptr, ptr %li, align 8, !dbg !2003, !tbaa !567
  %ei54 = getelementptr inbounds %struct.functionLibInfo, ptr %62, i32 0, i32 2, !dbg !2004
  %63 = load ptr, ptr %ei54, align 8, !dbg !2004, !tbaa !1189
  %name55 = getelementptr inbounds %struct.engineInfo, ptr %63, i32 0, i32 0, !dbg !2005
  %64 = load ptr, ptr %name55, align 8, !dbg !2005, !tbaa !1402
  %call56 = call i64 @sdslen(ptr noundef %64), !dbg !2006
  call void @addReplyBulkCBuffer(ptr noundef %58, ptr noundef %61, i64 noundef %call56), !dbg !2007
  %65 = load ptr, ptr %c.addr, align 8, !dbg !2008, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %65, ptr noundef @.str.18), !dbg !2009
  %66 = load ptr, ptr %c.addr, align 8, !dbg !2010, !tbaa !567
  %67 = load ptr, ptr %li, align 8, !dbg !2011, !tbaa !567
  %functions = getelementptr inbounds %struct.functionLibInfo, ptr %67, i32 0, i32 1, !dbg !2011
  %68 = load ptr, ptr %functions, align 8, !dbg !2011, !tbaa !1457
  %ht_used57 = getelementptr inbounds %struct.dict, ptr %68, i32 0, i32 2, !dbg !2011
  %arrayidx58 = getelementptr inbounds [2 x i64], ptr %ht_used57, i64 0, i64 0, !dbg !2011
  %69 = load i64, ptr %arrayidx58, align 8, !dbg !2011, !tbaa !1441
  %70 = load ptr, ptr %li, align 8, !dbg !2011, !tbaa !567
  %functions59 = getelementptr inbounds %struct.functionLibInfo, ptr %70, i32 0, i32 1, !dbg !2011
  %71 = load ptr, ptr %functions59, align 8, !dbg !2011, !tbaa !1457
  %ht_used60 = getelementptr inbounds %struct.dict, ptr %71, i32 0, i32 2, !dbg !2011
  %arrayidx61 = getelementptr inbounds [2 x i64], ptr %ht_used60, i64 0, i64 1, !dbg !2011
  %72 = load i64, ptr %arrayidx61, align 8, !dbg !2011, !tbaa !1441
  %add62 = add i64 %69, %72, !dbg !2011
  call void @addReplyArrayLen(ptr noundef %66, i64 noundef %add62), !dbg !2012
  call void @llvm.lifetime.start.p0(i64 8, ptr %functions_iter) #9, !dbg !2013
  tail call void @llvm.dbg.declare(metadata ptr %functions_iter, metadata !1865, metadata !DIExpression()), !dbg !2014
  %73 = load ptr, ptr %li, align 8, !dbg !2015, !tbaa !567
  %functions63 = getelementptr inbounds %struct.functionLibInfo, ptr %73, i32 0, i32 1, !dbg !2016
  %74 = load ptr, ptr %functions63, align 8, !dbg !2016, !tbaa !1457
  %call64 = call ptr @dictGetIterator(ptr noundef %74), !dbg !2017
  store ptr %call64, ptr %functions_iter, align 8, !dbg !2014, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %function_entry) #9, !dbg !2018
  tail call void @llvm.dbg.declare(metadata ptr %function_entry, metadata !1866, metadata !DIExpression()), !dbg !2019
  store ptr null, ptr %function_entry, align 8, !dbg !2019, !tbaa !567
  br label %while.cond65, !dbg !2020

while.cond65:                                     ; preds = %if.end79, %if.end46
  %75 = load ptr, ptr %functions_iter, align 8, !dbg !2021, !tbaa !567
  %call66 = call ptr @dictNext(ptr noundef %75), !dbg !2022
  store ptr %call66, ptr %function_entry, align 8, !dbg !2023, !tbaa !567
  %tobool67 = icmp ne ptr %call66, null, !dbg !2020
  br i1 %tobool67, label %while.body68, label %while.end, !dbg !2020

while.body68:                                     ; preds = %while.cond65
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !2024
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !1867, metadata !DIExpression()), !dbg !2025
  %76 = load ptr, ptr %function_entry, align 8, !dbg !2026, !tbaa !567
  %v69 = getelementptr inbounds %struct.dictEntry, ptr %76, i32 0, i32 1, !dbg !2026
  %77 = load ptr, ptr %v69, align 8, !dbg !2026, !tbaa !1262
  store ptr %77, ptr %fi, align 8, !dbg !2025, !tbaa !567
  %78 = load ptr, ptr %c.addr, align 8, !dbg !2027, !tbaa !567
  call void @addReplyMapLen(ptr noundef %78, i64 noundef 3), !dbg !2028
  %79 = load ptr, ptr %c.addr, align 8, !dbg !2029, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %79, ptr noundef @.str.6), !dbg !2030
  %80 = load ptr, ptr %c.addr, align 8, !dbg !2031, !tbaa !567
  %81 = load ptr, ptr %fi, align 8, !dbg !2032, !tbaa !567
  %name70 = getelementptr inbounds %struct.functionInfo, ptr %81, i32 0, i32 0, !dbg !2033
  %82 = load ptr, ptr %name70, align 8, !dbg !2033, !tbaa !1169
  %83 = load ptr, ptr %fi, align 8, !dbg !2034, !tbaa !567
  %name71 = getelementptr inbounds %struct.functionInfo, ptr %83, i32 0, i32 0, !dbg !2035
  %84 = load ptr, ptr %name71, align 8, !dbg !2035, !tbaa !1169
  %call72 = call i64 @sdslen(ptr noundef %84), !dbg !2036
  call void @addReplyBulkCBuffer(ptr noundef %80, ptr noundef %82, i64 noundef %call72), !dbg !2037
  %85 = load ptr, ptr %c.addr, align 8, !dbg !2038, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %85, ptr noundef @.str.19), !dbg !2039
  %86 = load ptr, ptr %fi, align 8, !dbg !2040, !tbaa !567
  %desc = getelementptr inbounds %struct.functionInfo, ptr %86, i32 0, i32 3, !dbg !2042
  %87 = load ptr, ptr %desc, align 8, !dbg !2042, !tbaa !1176
  %tobool73 = icmp ne ptr %87, null, !dbg !2040
  br i1 %tobool73, label %if.then74, label %if.else78, !dbg !2043

if.then74:                                        ; preds = %while.body68
  %88 = load ptr, ptr %c.addr, align 8, !dbg !2044, !tbaa !567
  %89 = load ptr, ptr %fi, align 8, !dbg !2046, !tbaa !567
  %desc75 = getelementptr inbounds %struct.functionInfo, ptr %89, i32 0, i32 3, !dbg !2047
  %90 = load ptr, ptr %desc75, align 8, !dbg !2047, !tbaa !1176
  %91 = load ptr, ptr %fi, align 8, !dbg !2048, !tbaa !567
  %desc76 = getelementptr inbounds %struct.functionInfo, ptr %91, i32 0, i32 3, !dbg !2049
  %92 = load ptr, ptr %desc76, align 8, !dbg !2049, !tbaa !1176
  %call77 = call i64 @sdslen(ptr noundef %92), !dbg !2050
  call void @addReplyBulkCBuffer(ptr noundef %88, ptr noundef %90, i64 noundef %call77), !dbg !2051
  br label %if.end79, !dbg !2052

if.else78:                                        ; preds = %while.body68
  %93 = load ptr, ptr %c.addr, align 8, !dbg !2053, !tbaa !567
  call void @addReplyNull(ptr noundef %93), !dbg !2055
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then74
  %94 = load ptr, ptr %c.addr, align 8, !dbg !2056, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %94, ptr noundef @.str.20), !dbg !2057
  %95 = load ptr, ptr %c.addr, align 8, !dbg !2058, !tbaa !567
  %96 = load ptr, ptr %fi, align 8, !dbg !2059, !tbaa !567
  call void @functionListReplyFlags(ptr noundef %95, ptr noundef %96), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !2061
  br label %while.cond65, !dbg !2020, !llvm.loop !2062

while.end:                                        ; preds = %while.cond65
  %97 = load ptr, ptr %functions_iter, align 8, !dbg !2063, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %97), !dbg !2064
  %98 = load i32, ptr %with_code, align 4, !dbg !2065, !tbaa !1305
  %tobool80 = icmp ne i32 %98, 0, !dbg !2065
  br i1 %tobool80, label %if.then81, label %if.end84, !dbg !2067

if.then81:                                        ; preds = %while.end
  %99 = load ptr, ptr %c.addr, align 8, !dbg !2068, !tbaa !567
  call void @addReplyBulkCString(ptr noundef %99, ptr noundef @.str.21), !dbg !2070
  %100 = load ptr, ptr %c.addr, align 8, !dbg !2071, !tbaa !567
  %101 = load ptr, ptr %li, align 8, !dbg !2072, !tbaa !567
  %code = getelementptr inbounds %struct.functionLibInfo, ptr %101, i32 0, i32 3, !dbg !2073
  %102 = load ptr, ptr %code, align 8, !dbg !2073, !tbaa !2074
  %103 = load ptr, ptr %li, align 8, !dbg !2075, !tbaa !567
  %code82 = getelementptr inbounds %struct.functionLibInfo, ptr %103, i32 0, i32 3, !dbg !2076
  %104 = load ptr, ptr %code82, align 8, !dbg !2076, !tbaa !2074
  %call83 = call i64 @sdslen(ptr noundef %104), !dbg !2077
  call void @addReplyBulkCBuffer(ptr noundef %100, ptr noundef %102, i64 noundef %call83), !dbg !2078
  br label %if.end84, !dbg !2079

if.end84:                                         ; preds = %if.then81, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %function_entry) #9, !dbg !1982
  call void @llvm.lifetime.end.p0(i64 8, ptr %functions_iter) #9, !dbg !1982
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1982
  br label %cleanup85, !dbg !1982

cleanup85:                                        ; preds = %if.end84, %if.then44
  call void @llvm.lifetime.end.p0(i64 8, ptr %li) #9, !dbg !1982
  %cleanup.dest86 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest86, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup85
  br label %while.cond, !dbg !1956, !llvm.loop !1981

while.end87:                                      ; preds = %while.cond
  %105 = load ptr, ptr %iter, align 8, !dbg !2080, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %105), !dbg !2081
  %106 = load ptr, ptr %len_ptr, align 8, !dbg !2082, !tbaa !567
  %tobool88 = icmp ne ptr %106, null, !dbg !2082
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !2084

if.then89:                                        ; preds = %while.end87
  %107 = load ptr, ptr %c.addr, align 8, !dbg !2085, !tbaa !567
  %108 = load ptr, ptr %len_ptr, align 8, !dbg !2087, !tbaa !567
  %109 = load i64, ptr %reply_len, align 8, !dbg !2088, !tbaa !1441
  call void @setDeferredArrayLen(ptr noundef %107, ptr noundef %108, i64 noundef %109), !dbg !2089
  br label %if.end90, !dbg !2090

if.end90:                                         ; preds = %if.then89, %while.end87
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry33) #9, !dbg !2091
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !2091
  call void @llvm.lifetime.end.p0(i64 8, ptr %len_ptr) #9, !dbg !2091
  call void @llvm.lifetime.end.p0(i64 8, ptr %reply_len) #9, !dbg !2091
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2091
  br label %cleanup91, !dbg !2091

cleanup91:                                        ; preds = %if.end90, %cleanup21
  call void @llvm.lifetime.end.p0(i64 8, ptr %library_name) #9, !dbg !2091
  call void @llvm.lifetime.end.p0(i64 4, ptr %with_code) #9, !dbg !2091
  %cleanup.dest93 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest93, label %unreachable [
    i32 0, label %cleanup.cont94
    i32 1, label %cleanup.cont94
  ]

cleanup.cont94:                                   ; preds = %cleanup91, %cleanup91
  ret void, !dbg !2091

unreachable:                                      ; preds = %cleanup91, %cleanup85
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2092 i32 @strcasecmp(ptr noundef, ptr noundef) #6

declare !dbg !2096 void @addReplyError(ptr noundef, ptr noundef) #0

declare !dbg !2097 void @addReplyErrorSds(ptr noundef, ptr noundef) #0

declare !dbg !2100 ptr @sdscatfmt(ptr noundef, ptr noundef, ...) #0

declare !dbg !2103 ptr @sdsempty() #0

declare !dbg !2106 ptr @addReplyDeferredLen(ptr noundef) #0

declare !dbg !2109 i32 @stringmatchlen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal void @functionListReplyFlags(ptr noundef %c, ptr noundef %fi) #1 !dbg !2113 {
entry:
  %c.addr = alloca ptr, align 8
  %fi.addr = alloca ptr, align 8
  %flagcount = alloca i32, align 4
  %flag = alloca ptr, align 8
  %flag3 = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2117, metadata !DIExpression()), !dbg !2130
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !2118, metadata !DIExpression()), !dbg !2131
  call void @llvm.lifetime.start.p0(i64 4, ptr %flagcount) #9, !dbg !2132
  tail call void @llvm.dbg.declare(metadata ptr %flagcount, metadata !2119, metadata !DIExpression()), !dbg !2133
  store i32 0, ptr %flagcount, align 4, !dbg !2133, !tbaa !1305
  call void @llvm.lifetime.start.p0(i64 8, ptr %flag) #9, !dbg !2134
  tail call void @llvm.dbg.declare(metadata ptr %flag, metadata !2120, metadata !DIExpression()), !dbg !2135
  store ptr @scripts_flags_def, ptr %flag, align 8, !dbg !2135, !tbaa !567
  br label %for.cond, !dbg !2134

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %flag, align 8, !dbg !2136, !tbaa !567
  %str = getelementptr inbounds %struct.scriptFlag, ptr %0, i32 0, i32 1, !dbg !2138
  %1 = load ptr, ptr %str, align 8, !dbg !2138, !tbaa !2139
  %tobool = icmp ne ptr %1, null, !dbg !2141
  br i1 %tobool, label %for.body, label %for.cond.cleanup, !dbg !2141

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %flag) #9, !dbg !2142
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %fi.addr, align 8, !dbg !2143, !tbaa !567
  %f_flags = getelementptr inbounds %struct.functionInfo, ptr %2, i32 0, i32 4, !dbg !2146
  %3 = load i64, ptr %f_flags, align 8, !dbg !2146, !tbaa !1476
  %4 = load ptr, ptr %flag, align 8, !dbg !2147, !tbaa !567
  %flag1 = getelementptr inbounds %struct.scriptFlag, ptr %4, i32 0, i32 0, !dbg !2148
  %5 = load i64, ptr %flag1, align 8, !dbg !2148, !tbaa !2149
  %and = and i64 %3, %5, !dbg !2150
  %tobool2 = icmp ne i64 %and, 0, !dbg !2150
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2151

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %flagcount, align 4, !dbg !2152, !tbaa !1305
  %inc = add nsw i32 %6, 1, !dbg !2152
  store i32 %inc, ptr %flagcount, align 4, !dbg !2152, !tbaa !1305
  br label %if.end, !dbg !2154

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2155

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %flag, align 8, !dbg !2156, !tbaa !567
  %incdec.ptr = getelementptr inbounds %struct.scriptFlag, ptr %7, i32 1, !dbg !2156
  store ptr %incdec.ptr, ptr %flag, align 8, !dbg !2156, !tbaa !567
  br label %for.cond, !dbg !2142, !llvm.loop !2157

for.end:                                          ; preds = %for.cond.cleanup
  %8 = load ptr, ptr %c.addr, align 8, !dbg !2159, !tbaa !567
  %9 = load i32, ptr %flagcount, align 4, !dbg !2160, !tbaa !1305
  %conv = sext i32 %9 to i64, !dbg !2160
  call void @addReplySetLen(ptr noundef %8, i64 noundef %conv), !dbg !2161
  call void @llvm.lifetime.start.p0(i64 8, ptr %flag3) #9, !dbg !2162
  tail call void @llvm.dbg.declare(metadata ptr %flag3, metadata !2128, metadata !DIExpression()), !dbg !2163
  store ptr @scripts_flags_def, ptr %flag3, align 8, !dbg !2163, !tbaa !567
  br label %for.cond4, !dbg !2162

for.cond4:                                        ; preds = %for.inc16, %for.end
  %10 = load ptr, ptr %flag3, align 8, !dbg !2164, !tbaa !567
  %str5 = getelementptr inbounds %struct.scriptFlag, ptr %10, i32 0, i32 1, !dbg !2166
  %11 = load ptr, ptr %str5, align 8, !dbg !2166, !tbaa !2139
  %tobool6 = icmp ne ptr %11, null, !dbg !2167
  br i1 %tobool6, label %for.body8, label %for.cond.cleanup7, !dbg !2167

for.cond.cleanup7:                                ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 8, ptr %flag3) #9, !dbg !2168
  br label %for.end18

for.body8:                                        ; preds = %for.cond4
  %12 = load ptr, ptr %fi.addr, align 8, !dbg !2169, !tbaa !567
  %f_flags9 = getelementptr inbounds %struct.functionInfo, ptr %12, i32 0, i32 4, !dbg !2172
  %13 = load i64, ptr %f_flags9, align 8, !dbg !2172, !tbaa !1476
  %14 = load ptr, ptr %flag3, align 8, !dbg !2173, !tbaa !567
  %flag10 = getelementptr inbounds %struct.scriptFlag, ptr %14, i32 0, i32 0, !dbg !2174
  %15 = load i64, ptr %flag10, align 8, !dbg !2174, !tbaa !2149
  %and11 = and i64 %13, %15, !dbg !2175
  %tobool12 = icmp ne i64 %and11, 0, !dbg !2175
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !2176

if.then13:                                        ; preds = %for.body8
  %16 = load ptr, ptr %c.addr, align 8, !dbg !2177, !tbaa !567
  %17 = load ptr, ptr %flag3, align 8, !dbg !2179, !tbaa !567
  %str14 = getelementptr inbounds %struct.scriptFlag, ptr %17, i32 0, i32 1, !dbg !2180
  %18 = load ptr, ptr %str14, align 8, !dbg !2180, !tbaa !2139
  call void @addReplyStatus(ptr noundef %16, ptr noundef %18), !dbg !2181
  br label %if.end15, !dbg !2182

if.end15:                                         ; preds = %if.then13, %for.body8
  br label %for.inc16, !dbg !2183

for.inc16:                                        ; preds = %if.end15
  %19 = load ptr, ptr %flag3, align 8, !dbg !2184, !tbaa !567
  %incdec.ptr17 = getelementptr inbounds %struct.scriptFlag, ptr %19, i32 1, !dbg !2184
  store ptr %incdec.ptr17, ptr %flag3, align 8, !dbg !2184, !tbaa !567
  br label %for.cond4, !dbg !2168, !llvm.loop !2185

for.end18:                                        ; preds = %for.cond.cleanup7
  call void @llvm.lifetime.end.p0(i64 4, ptr %flagcount) #9, !dbg !2187
  ret void, !dbg !2187
}

declare !dbg !2188 void @setDeferredArrayLen(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionDeleteCommand(ptr noundef %c) #1 !dbg !2191 {
entry:
  %c.addr = alloca ptr, align 8
  %function_name = alloca ptr, align 8
  %li = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2193, metadata !DIExpression()), !dbg !2196
  call void @llvm.lifetime.start.p0(i64 8, ptr %function_name) #9, !dbg !2197
  tail call void @llvm.dbg.declare(metadata ptr %function_name, metadata !2194, metadata !DIExpression()), !dbg !2198
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2199, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %0, i32 0, i32 10, !dbg !2200
  %1 = load ptr, ptr %argv, align 8, !dbg !2200, !tbaa !1717
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !2199
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2199, !tbaa !567
  store ptr %2, ptr %function_name, align 8, !dbg !2198, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %li) #9, !dbg !2201
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !2195, metadata !DIExpression()), !dbg !2202
  %3 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !2203, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %3, i32 0, i32 0, !dbg !2204
  %4 = load ptr, ptr %libraries, align 8, !dbg !2204, !tbaa !1245
  %5 = load ptr, ptr %function_name, align 8, !dbg !2205, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %5, i32 0, i32 2, !dbg !2206
  %6 = load ptr, ptr %ptr, align 8, !dbg !2206, !tbaa !1720
  %call = call ptr @dictFetchValue(ptr noundef %4, ptr noundef %6), !dbg !2207
  store ptr %call, ptr %li, align 8, !dbg !2202, !tbaa !567
  %7 = load ptr, ptr %li, align 8, !dbg !2208, !tbaa !567
  %tobool = icmp ne ptr %7, null, !dbg !2208
  br i1 %tobool, label %if.end, label %if.then, !dbg !2210

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %c.addr, align 8, !dbg !2211, !tbaa !567
  call void @addReplyError(ptr noundef %8, ptr noundef @.str.22), !dbg !2213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2214

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !2215, !tbaa !567
  %10 = load ptr, ptr %li, align 8, !dbg !2216, !tbaa !567
  call void @libraryUnlink(ptr noundef %9, ptr noundef %10), !dbg !2217
  %11 = load ptr, ptr %li, align 8, !dbg !2218, !tbaa !567
  call void @engineLibraryFree(ptr noundef %11), !dbg !2219
  %12 = load i64, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !2220, !tbaa !2221
  %inc = add nsw i64 %12, 1, !dbg !2220
  store i64 %inc, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !2220, !tbaa !2221
  %13 = load ptr, ptr %c.addr, align 8, !dbg !2222, !tbaa !567
  %14 = load ptr, ptr getelementptr inbounds (%struct.sharedObjectsStruct, ptr @shared, i32 0, i32 1), align 8, !dbg !2223, !tbaa !2224
  call void @addReply(ptr noundef %13, ptr noundef %14), !dbg !2225
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2226
  br label %cleanup, !dbg !2226

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %li) #9, !dbg !2226
  call void @llvm.lifetime.end.p0(i64 8, ptr %function_name) #9, !dbg !2226
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2226

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @libraryUnlink(ptr noundef %lib_ctx, ptr noundef %li) #1 !dbg !2227 {
entry:
  %lib_ctx.addr = alloca ptr, align 8
  %li.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %ret = alloca i32, align 4
  %stats = alloca ptr, align 8
  store ptr %lib_ctx, ptr %lib_ctx.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %lib_ctx.addr, metadata !2231, metadata !DIExpression()), !dbg !2239
  store ptr %li, ptr %li.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %li.addr, metadata !2232, metadata !DIExpression()), !dbg !2240
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !2241
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !2233, metadata !DIExpression()), !dbg !2242
  %0 = load ptr, ptr %li.addr, align 8, !dbg !2243, !tbaa !567
  %functions = getelementptr inbounds %struct.functionLibInfo, ptr %0, i32 0, i32 1, !dbg !2244
  %1 = load ptr, ptr %functions, align 8, !dbg !2244, !tbaa !1457
  %call = call ptr @dictGetIterator(ptr noundef %1), !dbg !2245
  store ptr %call, ptr %iter, align 8, !dbg !2242, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !2246
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2234, metadata !DIExpression()), !dbg !2247
  store ptr null, ptr %entry1, align 8, !dbg !2247, !tbaa !567
  br label %while.cond, !dbg !2248

while.cond:                                       ; preds = %cond.end, %entry
  %2 = load ptr, ptr %iter, align 8, !dbg !2249, !tbaa !567
  %call2 = call ptr @dictNext(ptr noundef %2), !dbg !2250
  store ptr %call2, ptr %entry1, align 8, !dbg !2251, !tbaa !567
  %tobool = icmp ne ptr %call2, null, !dbg !2248
  br i1 %tobool, label %while.body, label %while.end, !dbg !2248

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !2252
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !2235, metadata !DIExpression()), !dbg !2253
  %3 = load ptr, ptr %entry1, align 8, !dbg !2254, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %3, i32 0, i32 1, !dbg !2254
  %4 = load ptr, ptr %v, align 8, !dbg !2254, !tbaa !1262
  store ptr %4, ptr %fi, align 8, !dbg !2253, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !2255
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2237, metadata !DIExpression()), !dbg !2256
  %5 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2257, !tbaa !567
  %functions3 = getelementptr inbounds %struct.functionsLibCtx, ptr %5, i32 0, i32 1, !dbg !2258
  %6 = load ptr, ptr %functions3, align 8, !dbg !2258, !tbaa !1240
  %7 = load ptr, ptr %fi, align 8, !dbg !2259, !tbaa !567
  %name = getelementptr inbounds %struct.functionInfo, ptr %7, i32 0, i32 0, !dbg !2260
  %8 = load ptr, ptr %name, align 8, !dbg !2260, !tbaa !1169
  %call4 = call i32 @dictDelete(ptr noundef %6, ptr noundef %8), !dbg !2261
  store i32 %call4, ptr %ret, align 4, !dbg !2256, !tbaa !1305
  %9 = load i32, ptr %ret, align 4, !dbg !2262, !tbaa !1305
  %cmp = icmp eq i32 %9, 0, !dbg !2262
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2262

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !2262

cond.false:                                       ; preds = %while.body
  call void @_serverAssert(ptr noundef @.str.84, ptr noundef @.str.3, i32 noundef 289), !dbg !2262
  unreachable, !dbg !2262

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !2262

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %10 = load ptr, ptr %fi, align 8, !dbg !2263, !tbaa !567
  %call5 = call i64 @functionMallocSize(ptr noundef %10), !dbg !2264
  %11 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2265, !tbaa !567
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, ptr %11, i32 0, i32 2, !dbg !2266
  %12 = load i64, ptr %cache_memory, align 8, !dbg !2267, !tbaa !1280
  %sub = sub i64 %12, %call5, !dbg !2267
  store i64 %sub, ptr %cache_memory, align 8, !dbg !2267, !tbaa !1280
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !2268
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !2268
  br label %while.cond, !dbg !2248, !llvm.loop !2269

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %iter, align 8, !dbg !2270, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %13), !dbg !2271
  %14 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2272, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %14, i32 0, i32 0, !dbg !2273
  %15 = load ptr, ptr %libraries, align 8, !dbg !2273, !tbaa !1245
  %16 = load ptr, ptr %li.addr, align 8, !dbg !2274, !tbaa !567
  %name6 = getelementptr inbounds %struct.functionLibInfo, ptr %16, i32 0, i32 0, !dbg !2275
  %17 = load ptr, ptr %name6, align 8, !dbg !2275, !tbaa !1973
  %call7 = call ptr @dictUnlink(ptr noundef %15, ptr noundef %17), !dbg !2276
  store ptr %call7, ptr %entry1, align 8, !dbg !2277, !tbaa !567
  br label %do.body, !dbg !2278

do.body:                                          ; preds = %while.end
  %18 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2279, !tbaa !567
  %libraries8 = getelementptr inbounds %struct.functionsLibCtx, ptr %18, i32 0, i32 0, !dbg !2279
  %19 = load ptr, ptr %libraries8, align 8, !dbg !2279, !tbaa !1245
  %type = getelementptr inbounds %struct.dict, ptr %19, i32 0, i32 0, !dbg !2279
  %20 = load ptr, ptr %type, align 8, !dbg !2279, !tbaa !2282
  %valDup = getelementptr inbounds %struct.dictType, ptr %20, i32 0, i32 2, !dbg !2279
  %21 = load ptr, ptr %valDup, align 8, !dbg !2279, !tbaa !2284
  %tobool9 = icmp ne ptr %21, null, !dbg !2279
  br i1 %tobool9, label %if.then, label %if.else, !dbg !2286

if.then:                                          ; preds = %do.body
  %22 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2279, !tbaa !567
  %libraries10 = getelementptr inbounds %struct.functionsLibCtx, ptr %22, i32 0, i32 0, !dbg !2279
  %23 = load ptr, ptr %libraries10, align 8, !dbg !2279, !tbaa !1245
  %type11 = getelementptr inbounds %struct.dict, ptr %23, i32 0, i32 0, !dbg !2279
  %24 = load ptr, ptr %type11, align 8, !dbg !2279, !tbaa !2282
  %valDup12 = getelementptr inbounds %struct.dictType, ptr %24, i32 0, i32 2, !dbg !2279
  %25 = load ptr, ptr %valDup12, align 8, !dbg !2279, !tbaa !2284
  %26 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2279, !tbaa !567
  %libraries13 = getelementptr inbounds %struct.functionsLibCtx, ptr %26, i32 0, i32 0, !dbg !2279
  %27 = load ptr, ptr %libraries13, align 8, !dbg !2279, !tbaa !1245
  %call14 = call ptr %25(ptr noundef %27, ptr noundef null), !dbg !2279
  %28 = load ptr, ptr %entry1, align 8, !dbg !2279, !tbaa !567
  %v15 = getelementptr inbounds %struct.dictEntry, ptr %28, i32 0, i32 1, !dbg !2279
  store ptr %call14, ptr %v15, align 8, !dbg !2279, !tbaa !1262
  br label %if.end, !dbg !2279

if.else:                                          ; preds = %do.body
  %29 = load ptr, ptr %entry1, align 8, !dbg !2279, !tbaa !567
  %v16 = getelementptr inbounds %struct.dictEntry, ptr %29, i32 0, i32 1, !dbg !2279
  store ptr null, ptr %v16, align 8, !dbg !2279, !tbaa !1262
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.cond, !dbg !2286

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2286

do.end:                                           ; preds = %do.cond
  %30 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2287, !tbaa !567
  %libraries17 = getelementptr inbounds %struct.functionsLibCtx, ptr %30, i32 0, i32 0, !dbg !2288
  %31 = load ptr, ptr %libraries17, align 8, !dbg !2288, !tbaa !1245
  %32 = load ptr, ptr %entry1, align 8, !dbg !2289, !tbaa !567
  call void @dictFreeUnlinkedEntry(ptr noundef %31, ptr noundef %32), !dbg !2290
  %33 = load ptr, ptr %li.addr, align 8, !dbg !2291, !tbaa !567
  %call18 = call i64 @libraryMallocSize(ptr noundef %33), !dbg !2292
  %34 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2293, !tbaa !567
  %cache_memory19 = getelementptr inbounds %struct.functionsLibCtx, ptr %34, i32 0, i32 2, !dbg !2294
  %35 = load i64, ptr %cache_memory19, align 8, !dbg !2295, !tbaa !1280
  %sub20 = sub i64 %35, %call18, !dbg !2295
  store i64 %sub20, ptr %cache_memory19, align 8, !dbg !2295, !tbaa !1280
  call void @llvm.lifetime.start.p0(i64 8, ptr %stats) #9, !dbg !2296
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !2238, metadata !DIExpression()), !dbg !2297
  %36 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !2298, !tbaa !567
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, ptr %36, i32 0, i32 3, !dbg !2299
  %37 = load ptr, ptr %engines_stats, align 8, !dbg !2299, !tbaa !1251
  %38 = load ptr, ptr %li.addr, align 8, !dbg !2300, !tbaa !567
  %ei = getelementptr inbounds %struct.functionLibInfo, ptr %38, i32 0, i32 2, !dbg !2301
  %39 = load ptr, ptr %ei, align 8, !dbg !2301, !tbaa !1189
  %name21 = getelementptr inbounds %struct.engineInfo, ptr %39, i32 0, i32 0, !dbg !2302
  %40 = load ptr, ptr %name21, align 8, !dbg !2302, !tbaa !1402
  %call22 = call ptr @dictFetchValue(ptr noundef %37, ptr noundef %40), !dbg !2303
  store ptr %call22, ptr %stats, align 8, !dbg !2297, !tbaa !567
  %41 = load ptr, ptr %stats, align 8, !dbg !2304, !tbaa !567
  %tobool23 = icmp ne ptr %41, null, !dbg !2304
  br i1 %tobool23, label %cond.true24, label %cond.false25, !dbg !2304

cond.true24:                                      ; preds = %do.end
  br label %cond.end27, !dbg !2304

cond.false25:                                     ; preds = %do.end
  call void @_serverAssert(ptr noundef @.str.85, ptr noundef @.str.3, i32 noundef 300), !dbg !2304
  unreachable, !dbg !2304

unreachable.cont26:                               ; No predecessors!
  br label %cond.end27, !dbg !2304

cond.end27:                                       ; preds = %unreachable.cont26, %cond.true24
  %42 = load ptr, ptr %stats, align 8, !dbg !2305, !tbaa !567
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, ptr %42, i32 0, i32 0, !dbg !2306
  %43 = load i64, ptr %n_lib, align 8, !dbg !2307, !tbaa !1271
  %dec = add i64 %43, -1, !dbg !2307
  store i64 %dec, ptr %n_lib, align 8, !dbg !2307, !tbaa !1271
  %44 = load ptr, ptr %li.addr, align 8, !dbg !2308, !tbaa !567
  %functions28 = getelementptr inbounds %struct.functionLibInfo, ptr %44, i32 0, i32 1, !dbg !2308
  %45 = load ptr, ptr %functions28, align 8, !dbg !2308, !tbaa !1457
  %ht_used = getelementptr inbounds %struct.dict, ptr %45, i32 0, i32 2, !dbg !2308
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !2308
  %46 = load i64, ptr %arrayidx, align 8, !dbg !2308, !tbaa !1441
  %47 = load ptr, ptr %li.addr, align 8, !dbg !2308, !tbaa !567
  %functions29 = getelementptr inbounds %struct.functionLibInfo, ptr %47, i32 0, i32 1, !dbg !2308
  %48 = load ptr, ptr %functions29, align 8, !dbg !2308, !tbaa !1457
  %ht_used30 = getelementptr inbounds %struct.dict, ptr %48, i32 0, i32 2, !dbg !2308
  %arrayidx31 = getelementptr inbounds [2 x i64], ptr %ht_used30, i64 0, i64 1, !dbg !2308
  %49 = load i64, ptr %arrayidx31, align 8, !dbg !2308, !tbaa !1441
  %add = add i64 %46, %49, !dbg !2308
  %50 = load ptr, ptr %stats, align 8, !dbg !2309, !tbaa !567
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, ptr %50, i32 0, i32 1, !dbg !2310
  %51 = load i64, ptr %n_functions, align 8, !dbg !2311, !tbaa !1266
  %sub32 = sub i64 %51, %add, !dbg !2311
  store i64 %sub32, ptr %n_functions, align 8, !dbg !2311, !tbaa !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %stats) #9, !dbg !2312
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !2312
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !2312
  ret void, !dbg !2312
}

; Function Attrs: nounwind uwtable
define internal void @engineLibraryFree(ptr noundef %li) #1 !dbg !2313 {
entry:
  %li.addr = alloca ptr, align 8
  store ptr %li, ptr %li.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %li.addr, metadata !2317, metadata !DIExpression()), !dbg !2318
  %0 = load ptr, ptr %li.addr, align 8, !dbg !2319, !tbaa !567
  %tobool = icmp ne ptr %0, null, !dbg !2319
  br i1 %tobool, label %if.end, label %if.then, !dbg !2321

if.then:                                          ; preds = %entry
  br label %return, !dbg !2322

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %li.addr, align 8, !dbg !2324, !tbaa !567
  %functions = getelementptr inbounds %struct.functionLibInfo, ptr %1, i32 0, i32 1, !dbg !2325
  %2 = load ptr, ptr %functions, align 8, !dbg !2325, !tbaa !1457
  call void @dictRelease(ptr noundef %2), !dbg !2326
  %3 = load ptr, ptr %li.addr, align 8, !dbg !2327, !tbaa !567
  %name = getelementptr inbounds %struct.functionLibInfo, ptr %3, i32 0, i32 0, !dbg !2328
  %4 = load ptr, ptr %name, align 8, !dbg !2328, !tbaa !1973
  call void @sdsfree(ptr noundef %4), !dbg !2329
  %5 = load ptr, ptr %li.addr, align 8, !dbg !2330, !tbaa !567
  %code = getelementptr inbounds %struct.functionLibInfo, ptr %5, i32 0, i32 3, !dbg !2331
  %6 = load ptr, ptr %code, align 8, !dbg !2331, !tbaa !2074
  call void @sdsfree(ptr noundef %6), !dbg !2332
  %7 = load ptr, ptr %li.addr, align 8, !dbg !2333, !tbaa !567
  call void @zfree(ptr noundef %7), !dbg !2334
  br label %return, !dbg !2335

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2335
}

declare !dbg !2336 void @addReply(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionKillCommand(ptr noundef %c) #1 !dbg !2337 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2339, metadata !DIExpression()), !dbg !2340
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2341, !tbaa !567
  call void @scriptKill(ptr noundef %0, i32 noundef 0), !dbg !2342
  ret void, !dbg !2343
}

declare !dbg !2344 void @scriptKill(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @fcallGetCommandFlags(ptr noundef %c, i64 noundef %cmd_flags) #1 !dbg !2347 {
entry:
  %retval = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %cmd_flags.addr = alloca i64, align 8
  %function_name = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %script_flags = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2351, metadata !DIExpression()), !dbg !2356
  store i64 %cmd_flags, ptr %cmd_flags.addr, align 8, !tbaa !1441
  tail call void @llvm.dbg.declare(metadata ptr %cmd_flags.addr, metadata !2352, metadata !DIExpression()), !dbg !2357
  call void @llvm.lifetime.start.p0(i64 8, ptr %function_name) #9, !dbg !2358
  tail call void @llvm.dbg.declare(metadata ptr %function_name, metadata !2353, metadata !DIExpression()), !dbg !2359
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2360, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %0, i32 0, i32 10, !dbg !2361
  %1 = load ptr, ptr %argv, align 8, !dbg !2361, !tbaa !1717
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !2360
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2360, !tbaa !567
  store ptr %2, ptr %function_name, align 8, !dbg !2359, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !2362
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !2354, metadata !DIExpression()), !dbg !2363
  %3 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !2364, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %3, i32 0, i32 1, !dbg !2365
  %4 = load ptr, ptr %functions, align 8, !dbg !2365, !tbaa !1240
  %5 = load ptr, ptr %function_name, align 8, !dbg !2366, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %5, i32 0, i32 2, !dbg !2367
  %6 = load ptr, ptr %ptr, align 8, !dbg !2367, !tbaa !1720
  %call = call ptr @dictFetchValue(ptr noundef %4, ptr noundef %6), !dbg !2368
  store ptr %call, ptr %fi, align 8, !dbg !2363, !tbaa !567
  %7 = load ptr, ptr %fi, align 8, !dbg !2369, !tbaa !567
  %tobool = icmp ne ptr %7, null, !dbg !2369
  br i1 %tobool, label %if.end, label %if.then, !dbg !2371

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %cmd_flags.addr, align 8, !dbg !2372, !tbaa !1441
  store i64 %8, ptr %retval, align 8, !dbg !2373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2373

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %script_flags) #9, !dbg !2374
  tail call void @llvm.dbg.declare(metadata ptr %script_flags, metadata !2355, metadata !DIExpression()), !dbg !2375
  %9 = load ptr, ptr %fi, align 8, !dbg !2376, !tbaa !567
  %f_flags = getelementptr inbounds %struct.functionInfo, ptr %9, i32 0, i32 4, !dbg !2377
  %10 = load i64, ptr %f_flags, align 8, !dbg !2377, !tbaa !1476
  store i64 %10, ptr %script_flags, align 8, !dbg !2375, !tbaa !1441
  %11 = load i64, ptr %cmd_flags.addr, align 8, !dbg !2378, !tbaa !1441
  %12 = load i64, ptr %script_flags, align 8, !dbg !2379, !tbaa !1441
  %call1 = call i64 @scriptFlagsToCmdFlags(i64 noundef %11, i64 noundef %12), !dbg !2380
  store i64 %call1, ptr %retval, align 8, !dbg !2381
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %script_flags) #9, !dbg !2382
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !2382
  call void @llvm.lifetime.end.p0(i64 8, ptr %function_name) #9, !dbg !2382
  %13 = load i64, ptr %retval, align 8, !dbg !2382
  ret i64 %13, !dbg !2382
}

declare !dbg !2383 i64 @scriptFlagsToCmdFlags(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @fcallCommand(ptr noundef %c) #1 !dbg !2386 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2388, metadata !DIExpression()), !dbg !2389
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2390, !tbaa !567
  call void @fcallCommandGeneric(ptr noundef %0, i32 noundef 0), !dbg !2391
  ret void, !dbg !2392
}

; Function Attrs: nounwind uwtable
define internal void @fcallCommandGeneric(ptr noundef %c, i32 noundef %ro) #1 !dbg !2393 {
entry:
  %c.addr = alloca ptr, align 8
  %ro.addr = alloca i32, align 4
  %function_name = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %engine = alloca ptr, align 8
  %numkeys = alloca i64, align 8
  %run_ctx = alloca %struct.scriptRunCtx, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2395, metadata !DIExpression()), !dbg !2402
  store i32 %ro, ptr %ro.addr, align 4, !tbaa !1305
  tail call void @llvm.dbg.declare(metadata ptr %ro.addr, metadata !2396, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 8, ptr %function_name) #9, !dbg !2404
  tail call void @llvm.dbg.declare(metadata ptr %function_name, metadata !2397, metadata !DIExpression()), !dbg !2405
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2406, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %0, i32 0, i32 10, !dbg !2407
  %1 = load ptr, ptr %argv, align 8, !dbg !2407, !tbaa !1717
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !2406
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2406, !tbaa !567
  store ptr %2, ptr %function_name, align 8, !dbg !2405, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !2408
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !2398, metadata !DIExpression()), !dbg !2409
  %3 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !2410, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %3, i32 0, i32 1, !dbg !2411
  %4 = load ptr, ptr %functions, align 8, !dbg !2411, !tbaa !1240
  %5 = load ptr, ptr %function_name, align 8, !dbg !2412, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %5, i32 0, i32 2, !dbg !2413
  %6 = load ptr, ptr %ptr, align 8, !dbg !2413, !tbaa !1720
  %call = call ptr @dictFetchValue(ptr noundef %4, ptr noundef %6), !dbg !2414
  store ptr %call, ptr %fi, align 8, !dbg !2409, !tbaa !567
  %7 = load ptr, ptr %fi, align 8, !dbg !2415, !tbaa !567
  %tobool = icmp ne ptr %7, null, !dbg !2415
  br i1 %tobool, label %if.end, label %if.then, !dbg !2417

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %c.addr, align 8, !dbg !2418, !tbaa !567
  call void @addReplyError(ptr noundef %8, ptr noundef @.str.86), !dbg !2420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !2421

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #9, !dbg !2422
  tail call void @llvm.dbg.declare(metadata ptr %engine, metadata !2399, metadata !DIExpression()), !dbg !2423
  %9 = load ptr, ptr %fi, align 8, !dbg !2424, !tbaa !567
  %li = getelementptr inbounds %struct.functionInfo, ptr %9, i32 0, i32 2, !dbg !2425
  %10 = load ptr, ptr %li, align 8, !dbg !2425, !tbaa !1187
  %ei = getelementptr inbounds %struct.functionLibInfo, ptr %10, i32 0, i32 2, !dbg !2426
  %11 = load ptr, ptr %ei, align 8, !dbg !2426, !tbaa !1189
  %engine1 = getelementptr inbounds %struct.engineInfo, ptr %11, i32 0, i32 1, !dbg !2427
  %12 = load ptr, ptr %engine1, align 8, !dbg !2427, !tbaa !1192
  store ptr %12, ptr %engine, align 8, !dbg !2423, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %numkeys) #9, !dbg !2428
  tail call void @llvm.dbg.declare(metadata ptr %numkeys, metadata !2400, metadata !DIExpression()), !dbg !2429
  %13 = load ptr, ptr %c.addr, align 8, !dbg !2430, !tbaa !567
  %argv2 = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 10, !dbg !2432
  %14 = load ptr, ptr %argv2, align 8, !dbg !2432, !tbaa !1717
  %arrayidx3 = getelementptr inbounds ptr, ptr %14, i64 2, !dbg !2430
  %15 = load ptr, ptr %arrayidx3, align 8, !dbg !2430, !tbaa !567
  %call4 = call i32 @getLongLongFromObject(ptr noundef %15, ptr noundef %numkeys), !dbg !2433
  %cmp = icmp ne i32 %call4, 0, !dbg !2434
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2435

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %c.addr, align 8, !dbg !2436, !tbaa !567
  call void @addReplyError(ptr noundef %16, ptr noundef @.str.87), !dbg !2438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !2439

if.end6:                                          ; preds = %if.end
  %17 = load i64, ptr %numkeys, align 8, !dbg !2440, !tbaa !2442
  %18 = load ptr, ptr %c.addr, align 8, !dbg !2443, !tbaa !567
  %argc = getelementptr inbounds %struct.client, ptr %18, i32 0, i32 9, !dbg !2444
  %19 = load i32, ptr %argc, align 8, !dbg !2444, !tbaa !1702
  %sub = sub nsw i32 %19, 3, !dbg !2445
  %conv = sext i32 %sub to i64, !dbg !2446
  %cmp7 = icmp sgt i64 %17, %conv, !dbg !2447
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !2448

if.then9:                                         ; preds = %if.end6
  %20 = load ptr, ptr %c.addr, align 8, !dbg !2449, !tbaa !567
  call void @addReplyError(ptr noundef %20, ptr noundef @.str.88), !dbg !2451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !2452

if.else:                                          ; preds = %if.end6
  %21 = load i64, ptr %numkeys, align 8, !dbg !2453, !tbaa !2442
  %cmp10 = icmp slt i64 %21, 0, !dbg !2455
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !2456

if.then12:                                        ; preds = %if.else
  %22 = load ptr, ptr %c.addr, align 8, !dbg !2457, !tbaa !567
  call void @addReplyError(ptr noundef %22, ptr noundef @.str.89), !dbg !2459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !2460

if.end13:                                         ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 48, ptr %run_ctx) #9, !dbg !2461
  tail call void @llvm.dbg.declare(metadata ptr %run_ctx, metadata !2401, metadata !DIExpression()), !dbg !2462
  %23 = load ptr, ptr %fi, align 8, !dbg !2463, !tbaa !567
  %li15 = getelementptr inbounds %struct.functionInfo, ptr %23, i32 0, i32 2, !dbg !2465
  %24 = load ptr, ptr %li15, align 8, !dbg !2465, !tbaa !1187
  %ei16 = getelementptr inbounds %struct.functionLibInfo, ptr %24, i32 0, i32 2, !dbg !2466
  %25 = load ptr, ptr %ei16, align 8, !dbg !2466, !tbaa !1189
  %c17 = getelementptr inbounds %struct.engineInfo, ptr %25, i32 0, i32 2, !dbg !2467
  %26 = load ptr, ptr %c17, align 8, !dbg !2467, !tbaa !1614
  %27 = load ptr, ptr %c.addr, align 8, !dbg !2468, !tbaa !567
  %28 = load ptr, ptr %fi, align 8, !dbg !2469, !tbaa !567
  %name = getelementptr inbounds %struct.functionInfo, ptr %28, i32 0, i32 0, !dbg !2470
  %29 = load ptr, ptr %name, align 8, !dbg !2470, !tbaa !1169
  %30 = load ptr, ptr %fi, align 8, !dbg !2471, !tbaa !567
  %f_flags = getelementptr inbounds %struct.functionInfo, ptr %30, i32 0, i32 4, !dbg !2472
  %31 = load i64, ptr %f_flags, align 8, !dbg !2472, !tbaa !1476
  %32 = load i32, ptr %ro.addr, align 4, !dbg !2473, !tbaa !1305
  %call18 = call i32 @scriptPrepareForRun(ptr noundef %run_ctx, ptr noundef %26, ptr noundef %27, ptr noundef %29, i64 noundef %31, i32 noundef %32), !dbg !2474
  %cmp19 = icmp ne i32 %call18, 0, !dbg !2475
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2476

if.then21:                                        ; preds = %if.end14
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2477

if.end22:                                         ; preds = %if.end14
  %33 = load ptr, ptr %engine, align 8, !dbg !2478, !tbaa !567
  %call23 = getelementptr inbounds %struct.engine, ptr %33, i32 0, i32 2, !dbg !2479
  %34 = load ptr, ptr %call23, align 8, !dbg !2479, !tbaa !2480
  %35 = load ptr, ptr %engine, align 8, !dbg !2481, !tbaa !567
  %engine_ctx = getelementptr inbounds %struct.engine, ptr %35, i32 0, i32 0, !dbg !2482
  %36 = load ptr, ptr %engine_ctx, align 8, !dbg !2482, !tbaa !1200
  %37 = load ptr, ptr %fi, align 8, !dbg !2483, !tbaa !567
  %function = getelementptr inbounds %struct.functionInfo, ptr %37, i32 0, i32 1, !dbg !2484
  %38 = load ptr, ptr %function, align 8, !dbg !2484, !tbaa !1203
  %39 = load ptr, ptr %c.addr, align 8, !dbg !2485, !tbaa !567
  %argv24 = getelementptr inbounds %struct.client, ptr %39, i32 0, i32 10, !dbg !2486
  %40 = load ptr, ptr %argv24, align 8, !dbg !2486, !tbaa !1717
  %add.ptr = getelementptr inbounds ptr, ptr %40, i64 3, !dbg !2487
  %41 = load i64, ptr %numkeys, align 8, !dbg !2488, !tbaa !2442
  %42 = load ptr, ptr %c.addr, align 8, !dbg !2489, !tbaa !567
  %argv25 = getelementptr inbounds %struct.client, ptr %42, i32 0, i32 10, !dbg !2490
  %43 = load ptr, ptr %argv25, align 8, !dbg !2490, !tbaa !1717
  %add.ptr26 = getelementptr inbounds ptr, ptr %43, i64 3, !dbg !2491
  %44 = load i64, ptr %numkeys, align 8, !dbg !2492, !tbaa !2442
  %add.ptr27 = getelementptr inbounds ptr, ptr %add.ptr26, i64 %44, !dbg !2493
  %45 = load ptr, ptr %c.addr, align 8, !dbg !2494, !tbaa !567
  %argc28 = getelementptr inbounds %struct.client, ptr %45, i32 0, i32 9, !dbg !2495
  %46 = load i32, ptr %argc28, align 8, !dbg !2495, !tbaa !1702
  %sub29 = sub nsw i32 %46, 3, !dbg !2496
  %conv30 = sext i32 %sub29 to i64, !dbg !2494
  %47 = load i64, ptr %numkeys, align 8, !dbg !2497, !tbaa !2442
  %sub31 = sub nsw i64 %conv30, %47, !dbg !2498
  call void %34(ptr noundef %run_ctx, ptr noundef %36, ptr noundef %38, ptr noundef %add.ptr, i64 noundef %41, ptr noundef %add.ptr27, i64 noundef %sub31), !dbg !2478
  call void @scriptResetRun(ptr noundef %run_ctx), !dbg !2499
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2500
  br label %cleanup, !dbg !2500

cleanup:                                          ; preds = %if.end22, %if.then21
  call void @llvm.lifetime.end.p0(i64 48, ptr %run_ctx) #9, !dbg !2500
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup, %if.then12, %if.then9, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %numkeys) #9, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #9, !dbg !2500
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup32, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !2500
  call void @llvm.lifetime.end.p0(i64 8, ptr %function_name) #9, !dbg !2500
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup34, %cleanup34
  ret void, !dbg !2500

unreachable:                                      ; preds = %cleanup34
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @fcallroCommand(ptr noundef %c) #1 !dbg !2501 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2505, !tbaa !567
  call void @fcallCommandGeneric(ptr noundef %0, i32 noundef 1), !dbg !2506
  ret void, !dbg !2507
}

; Function Attrs: nounwind uwtable
define dso_local void @functionDumpCommand(ptr noundef %c) #1 !dbg !2508 {
entry:
  %c.addr = alloca ptr, align 8
  %buf = alloca [2 x i8], align 1
  %crc = alloca i64, align 8
  %payload = alloca %struct._rio, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2510, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 2, ptr %buf) #9, !dbg !2621
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2511, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #9, !dbg !2623
  tail call void @llvm.dbg.declare(metadata ptr %crc, metadata !2513, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 112, ptr %payload) #9, !dbg !2625
  tail call void @llvm.dbg.declare(metadata ptr %payload, metadata !2514, metadata !DIExpression()), !dbg !2626
  %call = call ptr @sdsempty(), !dbg !2627
  call void @rioInitWithBuffer(ptr noundef %payload, ptr noundef %call), !dbg !2628
  %call1 = call i64 @rdbSaveFunctions(ptr noundef %payload), !dbg !2629
  %arrayidx = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0, !dbg !2630
  store i8 10, ptr %arrayidx, align 1, !dbg !2631, !tbaa !1262
  %arrayidx2 = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 1, !dbg !2632
  store i8 0, ptr %arrayidx2, align 1, !dbg !2633, !tbaa !1262
  %io = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2634
  %ptr = getelementptr inbounds %struct.anon.1, ptr %io, i32 0, i32 0, !dbg !2635
  %0 = load ptr, ptr %ptr, align 8, !dbg !2635, !tbaa !1262
  %arraydecay = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0, !dbg !2636
  %call3 = call ptr @sdscatlen(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 2), !dbg !2637
  %io4 = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2638
  %ptr5 = getelementptr inbounds %struct.anon.1, ptr %io4, i32 0, i32 0, !dbg !2639
  store ptr %call3, ptr %ptr5, align 8, !dbg !2640, !tbaa !1262
  %io6 = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2641
  %ptr7 = getelementptr inbounds %struct.anon.1, ptr %io6, i32 0, i32 0, !dbg !2642
  %1 = load ptr, ptr %ptr7, align 8, !dbg !2642, !tbaa !1262
  %io8 = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2643
  %ptr9 = getelementptr inbounds %struct.anon.1, ptr %io8, i32 0, i32 0, !dbg !2644
  %2 = load ptr, ptr %ptr9, align 8, !dbg !2644, !tbaa !1262
  %call10 = call i64 @sdslen(ptr noundef %2), !dbg !2645
  %call11 = call i64 @crc64(i64 noundef 0, ptr noundef %1, i64 noundef %call10), !dbg !2646
  store i64 %call11, ptr %crc, align 8, !dbg !2647, !tbaa !1441
  %io12 = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2648
  %ptr13 = getelementptr inbounds %struct.anon.1, ptr %io12, i32 0, i32 0, !dbg !2649
  %3 = load ptr, ptr %ptr13, align 8, !dbg !2649, !tbaa !1262
  %call14 = call ptr @sdscatlen(ptr noundef %3, ptr noundef %crc, i64 noundef 8), !dbg !2650
  %io15 = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2651
  %ptr16 = getelementptr inbounds %struct.anon.1, ptr %io15, i32 0, i32 0, !dbg !2652
  store ptr %call14, ptr %ptr16, align 8, !dbg !2653, !tbaa !1262
  %4 = load ptr, ptr %c.addr, align 8, !dbg !2654, !tbaa !567
  %io17 = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2655
  %ptr18 = getelementptr inbounds %struct.anon.1, ptr %io17, i32 0, i32 0, !dbg !2656
  %5 = load ptr, ptr %ptr18, align 8, !dbg !2656, !tbaa !1262
  call void @addReplyBulkSds(ptr noundef %4, ptr noundef %5), !dbg !2657
  call void @llvm.lifetime.end.p0(i64 112, ptr %payload) #9, !dbg !2658
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #9, !dbg !2658
  call void @llvm.lifetime.end.p0(i64 2, ptr %buf) #9, !dbg !2658
  ret void, !dbg !2658
}

declare !dbg !2659 void @rioInitWithBuffer(ptr noundef, ptr noundef) #0

declare !dbg !2663 i64 @rdbSaveFunctions(ptr noundef) #0

declare !dbg !2667 ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) #0

declare !dbg !2670 i64 @crc64(i64 noundef, ptr noundef, i64 noundef) #0

declare !dbg !2675 void @addReplyBulkSds(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @functionRestoreCommand(ptr noundef %c) #1 !dbg !2676 {
entry:
  %c.addr = alloca ptr, align 8
  %restore_replicy = alloca i32, align 4
  %data = alloca ptr, align 8
  %data_len = alloca i64, align 8
  %payload = alloca %struct._rio, align 8
  %err = alloca ptr, align 8
  %restore_policy_str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rdbver = alloca i16, align 2
  %functions_lib_ctx = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2678, metadata !DIExpression()), !dbg !2693
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2694, !tbaa !567
  %argc = getelementptr inbounds %struct.client, ptr %0, i32 0, i32 9, !dbg !2696
  %1 = load i32, ptr %argc, align 8, !dbg !2696, !tbaa !1702
  %cmp = icmp sgt i32 %1, 4, !dbg !2697
  br i1 %cmp, label %if.then, label %if.end, !dbg !2698

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8, !dbg !2699, !tbaa !567
  call void @addReplySubcommandSyntaxError(ptr noundef %2), !dbg !2701
  br label %cleanup.cont75, !dbg !2702

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %restore_replicy) #9, !dbg !2703
  tail call void @llvm.dbg.declare(metadata ptr %restore_replicy, metadata !2679, metadata !DIExpression()), !dbg !2704
  store i32 1, ptr %restore_replicy, align 4, !dbg !2704, !tbaa !1262
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !2705
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !2681, metadata !DIExpression()), !dbg !2706
  %3 = load ptr, ptr %c.addr, align 8, !dbg !2707, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %3, i32 0, i32 10, !dbg !2708
  %4 = load ptr, ptr %argv, align 8, !dbg !2708, !tbaa !1717
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2707
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !2707, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %5, i32 0, i32 2, !dbg !2709
  %6 = load ptr, ptr %ptr, align 8, !dbg !2709, !tbaa !1720
  store ptr %6, ptr %data, align 8, !dbg !2706, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_len) #9, !dbg !2710
  tail call void @llvm.dbg.declare(metadata ptr %data_len, metadata !2682, metadata !DIExpression()), !dbg !2711
  %7 = load ptr, ptr %data, align 8, !dbg !2712, !tbaa !567
  %call = call i64 @sdslen(ptr noundef %7), !dbg !2713
  store i64 %call, ptr %data_len, align 8, !dbg !2711, !tbaa !1441
  call void @llvm.lifetime.start.p0(i64 112, ptr %payload) #9, !dbg !2714
  tail call void @llvm.dbg.declare(metadata ptr %payload, metadata !2683, metadata !DIExpression()), !dbg !2715
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #9, !dbg !2716
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !2684, metadata !DIExpression()), !dbg !2717
  store ptr null, ptr %err, align 8, !dbg !2717, !tbaa !567
  %8 = load ptr, ptr %c.addr, align 8, !dbg !2718, !tbaa !567
  %argc1 = getelementptr inbounds %struct.client, ptr %8, i32 0, i32 9, !dbg !2719
  %9 = load i32, ptr %argc1, align 8, !dbg !2719, !tbaa !1702
  %cmp2 = icmp eq i32 %9, 4, !dbg !2720
  br i1 %cmp2, label %if.then3, label %if.end20, !dbg !2721

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %restore_policy_str) #9, !dbg !2722
  tail call void @llvm.dbg.declare(metadata ptr %restore_policy_str, metadata !2685, metadata !DIExpression()), !dbg !2723
  %10 = load ptr, ptr %c.addr, align 8, !dbg !2724, !tbaa !567
  %argv4 = getelementptr inbounds %struct.client, ptr %10, i32 0, i32 10, !dbg !2725
  %11 = load ptr, ptr %argv4, align 8, !dbg !2725, !tbaa !1717
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 3, !dbg !2724
  %12 = load ptr, ptr %arrayidx5, align 8, !dbg !2724, !tbaa !567
  %ptr6 = getelementptr inbounds %struct.redisObject, ptr %12, i32 0, i32 2, !dbg !2726
  %13 = load ptr, ptr %ptr6, align 8, !dbg !2726, !tbaa !1720
  store ptr %13, ptr %restore_policy_str, align 8, !dbg !2723, !tbaa !567
  %14 = load ptr, ptr %restore_policy_str, align 8, !dbg !2727, !tbaa !567
  %call7 = call i32 @strcasecmp(ptr noundef %14, ptr noundef @.str.23) #10, !dbg !2729
  %tobool = icmp ne i32 %call7, 0, !dbg !2729
  br i1 %tobool, label %if.else, label %if.then8, !dbg !2730

if.then8:                                         ; preds = %if.then3
  store i32 1, ptr %restore_replicy, align 4, !dbg !2731, !tbaa !1262
  br label %if.end19, !dbg !2733

if.else:                                          ; preds = %if.then3
  %15 = load ptr, ptr %restore_policy_str, align 8, !dbg !2734, !tbaa !567
  %call9 = call i32 @strcasecmp(ptr noundef %15, ptr noundef @.str.24) #10, !dbg !2736
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2736
  br i1 %tobool10, label %if.else12, label %if.then11, !dbg !2737

if.then11:                                        ; preds = %if.else
  store i32 2, ptr %restore_replicy, align 4, !dbg !2738, !tbaa !1262
  br label %if.end18, !dbg !2740

if.else12:                                        ; preds = %if.else
  %16 = load ptr, ptr %restore_policy_str, align 8, !dbg !2741, !tbaa !567
  %call13 = call i32 @strcasecmp(ptr noundef %16, ptr noundef @.str.25) #10, !dbg !2743
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2743
  br i1 %tobool14, label %if.else16, label %if.then15, !dbg !2744

if.then15:                                        ; preds = %if.else12
  store i32 0, ptr %restore_replicy, align 4, !dbg !2745, !tbaa !1262
  br label %if.end17, !dbg !2747

if.else16:                                        ; preds = %if.else12
  %17 = load ptr, ptr %c.addr, align 8, !dbg !2748, !tbaa !567
  call void @addReplyError(ptr noundef %17, ptr noundef @.str.26), !dbg !2750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2751

if.end17:                                         ; preds = %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2752
  br label %cleanup, !dbg !2752

cleanup:                                          ; preds = %if.end19, %if.else16
  call void @llvm.lifetime.end.p0(i64 8, ptr %restore_policy_str) #9, !dbg !2752
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end20, !dbg !2753

if.end20:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %rdbver) #9, !dbg !2754
  tail call void @llvm.dbg.declare(metadata ptr %rdbver, metadata !2688, metadata !DIExpression()), !dbg !2755
  %18 = load ptr, ptr %data, align 8, !dbg !2756, !tbaa !567
  %19 = load i64, ptr %data_len, align 8, !dbg !2758, !tbaa !1441
  %call21 = call i32 @verifyDumpPayload(ptr noundef %18, i64 noundef %19, ptr noundef %rdbver), !dbg !2759
  %cmp22 = icmp ne i32 %call21, 0, !dbg !2760
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2761

if.then23:                                        ; preds = %if.end20
  %20 = load ptr, ptr %c.addr, align 8, !dbg !2762, !tbaa !567
  call void @addReplyError(ptr noundef %20, ptr noundef @.str.27), !dbg !2764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !2765

if.end24:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %functions_lib_ctx) #9, !dbg !2766
  tail call void @llvm.dbg.declare(metadata ptr %functions_lib_ctx, metadata !2689, metadata !DIExpression()), !dbg !2767
  %call25 = call ptr @functionsLibCtxCreate(), !dbg !2768
  store ptr %call25, ptr %functions_lib_ctx, align 8, !dbg !2767, !tbaa !567
  %21 = load ptr, ptr %data, align 8, !dbg !2769, !tbaa !567
  call void @rioInitWithBuffer(ptr noundef %payload, ptr noundef %21), !dbg !2770
  br label %while.cond, !dbg !2771

while.cond:                                       ; preds = %cleanup.cont48, %if.end24
  %22 = load i64, ptr %data_len, align 8, !dbg !2772, !tbaa !1441
  %io = getelementptr inbounds %struct._rio, ptr %payload, i32 0, i32 9, !dbg !2773
  %pos = getelementptr inbounds %struct.anon.1, ptr %io, i32 0, i32 1, !dbg !2774
  %23 = load i64, ptr %pos, align 8, !dbg !2774, !tbaa !1262
  %sub = sub i64 %22, %23, !dbg !2775
  %cmp26 = icmp ugt i64 %sub, 10, !dbg !2776
  br i1 %cmp26, label %while.body, label %while.end, !dbg !2771

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #9, !dbg !2777
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !2690, metadata !DIExpression()), !dbg !2778
  %call27 = call i32 @rdbLoadType(ptr noundef %payload), !dbg !2779
  store i32 %call27, ptr %type, align 4, !dbg !2781, !tbaa !1305
  %cmp28 = icmp eq i32 %call27, -1, !dbg !2782
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !2783

if.then29:                                        ; preds = %while.body
  %call30 = call ptr @sdsnew(ptr noundef @.str.28), !dbg !2784
  store ptr %call30, ptr %err, align 8, !dbg !2786, !tbaa !567
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !2787

if.end31:                                         ; preds = %while.body
  %24 = load i32, ptr %type, align 4, !dbg !2788, !tbaa !1305
  %cmp32 = icmp ne i32 %24, 246, !dbg !2790
  br i1 %cmp32, label %land.lhs.true, label %if.end36, !dbg !2791

land.lhs.true:                                    ; preds = %if.end31
  %25 = load i32, ptr %type, align 4, !dbg !2792, !tbaa !1305
  %cmp33 = icmp ne i32 %25, 245, !dbg !2793
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !2794

if.then34:                                        ; preds = %land.lhs.true
  %call35 = call ptr @sdsnew(ptr noundef @.str.29), !dbg !2795
  store ptr %call35, ptr %err, align 8, !dbg !2797, !tbaa !567
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !2798

if.end36:                                         ; preds = %land.lhs.true, %if.end31
  %26 = load i16, ptr %rdbver, align 2, !dbg !2799, !tbaa !1832
  %conv = zext i16 %26 to i32, !dbg !2799
  %27 = load ptr, ptr %functions_lib_ctx, align 8, !dbg !2801, !tbaa !567
  %28 = load i32, ptr %type, align 4, !dbg !2802, !tbaa !1305
  %call37 = call i32 @rdbFunctionLoad(ptr noundef %payload, i32 noundef %conv, ptr noundef %27, i32 noundef %28, i32 noundef 0, ptr noundef %err), !dbg !2803
  %cmp38 = icmp ne i32 %call37, 0, !dbg !2804
  br i1 %cmp38, label %if.then40, label %if.end45, !dbg !2805

if.then40:                                        ; preds = %if.end36
  %29 = load ptr, ptr %err, align 8, !dbg !2806, !tbaa !567
  %tobool41 = icmp ne ptr %29, null, !dbg !2806
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !2809

if.then42:                                        ; preds = %if.then40
  %call43 = call ptr @sdsnew(ptr noundef @.str.30), !dbg !2810
  store ptr %call43, ptr %err, align 8, !dbg !2812, !tbaa !567
  br label %if.end44, !dbg !2813

if.end44:                                         ; preds = %if.then42, %if.then40
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !2814

if.end45:                                         ; preds = %if.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2815
  br label %cleanup46, !dbg !2815

cleanup46:                                        ; preds = %if.end44, %if.then34, %if.then29, %if.end45
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #9, !dbg !2815
  %cleanup.dest47 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest47, label %unreachable [
    i32 0, label %cleanup.cont48
    i32 4, label %load_error
  ]

cleanup.cont48:                                   ; preds = %cleanup46
  br label %while.cond, !dbg !2771, !llvm.loop !2816

while.end:                                        ; preds = %while.cond
  %30 = load i32, ptr %restore_replicy, align 4, !dbg !2817, !tbaa !1262
  %cmp49 = icmp eq i32 %30, 0, !dbg !2819
  br i1 %cmp49, label %if.then51, label %if.else52, !dbg !2820

if.then51:                                        ; preds = %while.end
  %31 = load ptr, ptr %functions_lib_ctx, align 8, !dbg !2821, !tbaa !567
  call void @functionsLibCtxSwapWithCurrent(ptr noundef %31), !dbg !2823
  store ptr null, ptr %functions_lib_ctx, align 8, !dbg !2824, !tbaa !567
  br label %if.end60, !dbg !2825

if.else52:                                        ; preds = %while.end
  %32 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !2826, !tbaa !567
  %33 = load ptr, ptr %functions_lib_ctx, align 8, !dbg !2829, !tbaa !567
  %34 = load i32, ptr %restore_replicy, align 4, !dbg !2830, !tbaa !1262
  %cmp53 = icmp eq i32 %34, 2, !dbg !2831
  %conv54 = zext i1 %cmp53 to i32, !dbg !2831
  %call55 = call i32 @libraryJoin(ptr noundef %32, ptr noundef %33, i32 noundef %conv54, ptr noundef %err), !dbg !2832
  %cmp56 = icmp ne i32 %call55, 0, !dbg !2833
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !2834

if.then58:                                        ; preds = %if.else52
  br label %load_error, !dbg !2835

if.end59:                                         ; preds = %if.else52
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then51
  %35 = load i64, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !2837, !tbaa !2221
  %inc = add nsw i64 %35, 1, !dbg !2837
  store i64 %inc, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !2837, !tbaa !2221
  br label %load_error, !dbg !2838

load_error:                                       ; preds = %if.end60, %cleanup46, %if.then58
  tail call void @llvm.dbg.label(metadata !2692), !dbg !2839
  %36 = load ptr, ptr %err, align 8, !dbg !2840, !tbaa !567
  %tobool61 = icmp ne ptr %36, null, !dbg !2840
  br i1 %tobool61, label %if.then62, label %if.else63, !dbg !2842

if.then62:                                        ; preds = %load_error
  %37 = load ptr, ptr %c.addr, align 8, !dbg !2843, !tbaa !567
  %38 = load ptr, ptr %err, align 8, !dbg !2845, !tbaa !567
  call void @addReplyErrorSds(ptr noundef %37, ptr noundef %38), !dbg !2846
  br label %if.end64, !dbg !2847

if.else63:                                        ; preds = %load_error
  %39 = load ptr, ptr %c.addr, align 8, !dbg !2848, !tbaa !567
  %40 = load ptr, ptr getelementptr inbounds (%struct.sharedObjectsStruct, ptr @shared, i32 0, i32 1), align 8, !dbg !2850, !tbaa !2224
  call void @addReply(ptr noundef %39, ptr noundef %40), !dbg !2851
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then62
  %41 = load ptr, ptr %functions_lib_ctx, align 8, !dbg !2852, !tbaa !567
  %tobool65 = icmp ne ptr %41, null, !dbg !2852
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !2854

if.then66:                                        ; preds = %if.end64
  %42 = load ptr, ptr %functions_lib_ctx, align 8, !dbg !2855, !tbaa !567
  call void @functionsLibCtxFree(ptr noundef %42), !dbg !2857
  br label %if.end67, !dbg !2858

if.end67:                                         ; preds = %if.then66, %if.end64
  call void @llvm.lifetime.end.p0(i64 8, ptr %functions_lib_ctx) #9, !dbg !2859
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2859
  br label %cleanup68, !dbg !2859

cleanup68:                                        ; preds = %if.end67, %if.then23
  call void @llvm.lifetime.end.p0(i64 2, ptr %rdbver) #9, !dbg !2859
  br label %cleanup69

cleanup69:                                        ; preds = %cleanup68, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #9, !dbg !2859
  call void @llvm.lifetime.end.p0(i64 112, ptr %payload) #9, !dbg !2859
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_len) #9, !dbg !2859
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !2859
  call void @llvm.lifetime.end.p0(i64 4, ptr %restore_replicy) #9, !dbg !2859
  %cleanup.dest74 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest74, label %unreachable [
    i32 0, label %cleanup.cont75
    i32 1, label %cleanup.cont75
  ]

cleanup.cont75:                                   ; preds = %if.then, %cleanup69, %cleanup69
  ret void, !dbg !2859

unreachable:                                      ; preds = %cleanup69, %cleanup46
  unreachable
}

declare !dbg !2860 void @addReplySubcommandSyntaxError(ptr noundef) #0

declare !dbg !2861 i32 @verifyDumpPayload(ptr noundef, i64 noundef, ptr noundef) #0

declare !dbg !2865 i32 @rdbLoadType(ptr noundef) #0

declare !dbg !2868 i32 @rdbFunctionLoad(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @libraryJoin(ptr noundef %functions_lib_ctx_dst, ptr noundef %functions_lib_ctx_src, i32 noundef %replace, ptr noundef %err) #1 !dbg !2871 {
entry:
  %retval = alloca i32, align 4
  %functions_lib_ctx_dst.addr = alloca ptr, align 8
  %functions_lib_ctx_src.addr = alloca ptr, align 8
  %replace.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %iter = alloca ptr, align 8
  %old_libraries_list = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %li = alloca ptr, align 8
  %old_li = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fi = alloca ptr, align 8
  %li43 = alloca ptr, align 8
  %head = alloca ptr, align 8
  %li69 = alloca ptr, align 8
  store ptr %functions_lib_ctx_dst, ptr %functions_lib_ctx_dst.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %functions_lib_ctx_dst.addr, metadata !2875, metadata !DIExpression()), !dbg !2896
  store ptr %functions_lib_ctx_src, ptr %functions_lib_ctx_src.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %functions_lib_ctx_src.addr, metadata !2876, metadata !DIExpression()), !dbg !2897
  store i32 %replace, ptr %replace.addr, align 4, !tbaa !1305
  tail call void @llvm.dbg.declare(metadata ptr %replace.addr, metadata !2877, metadata !DIExpression()), !dbg !2898
  store ptr %err, ptr %err.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2878, metadata !DIExpression()), !dbg !2899
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9, !dbg !2900
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2879, metadata !DIExpression()), !dbg !2901
  store i32 -1, ptr %ret, align 4, !dbg !2901, !tbaa !1305
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !2902
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !2880, metadata !DIExpression()), !dbg !2903
  store ptr null, ptr %iter, align 8, !dbg !2903, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_libraries_list) #9, !dbg !2904
  tail call void @llvm.dbg.declare(metadata ptr %old_libraries_list, metadata !2881, metadata !DIExpression()), !dbg !2905
  store ptr null, ptr %old_libraries_list, align 8, !dbg !2905, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !2906
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2882, metadata !DIExpression()), !dbg !2907
  store ptr null, ptr %entry1, align 8, !dbg !2907, !tbaa !567
  %0 = load ptr, ptr %functions_lib_ctx_src.addr, align 8, !dbg !2908, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %0, i32 0, i32 0, !dbg !2909
  %1 = load ptr, ptr %libraries, align 8, !dbg !2909, !tbaa !1245
  %call = call ptr @dictGetIterator(ptr noundef %1), !dbg !2910
  store ptr %call, ptr %iter, align 8, !dbg !2911, !tbaa !567
  br label %while.cond, !dbg !2912

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load ptr, ptr %iter, align 8, !dbg !2913, !tbaa !567
  %call2 = call ptr @dictNext(ptr noundef %2), !dbg !2914
  store ptr %call2, ptr %entry1, align 8, !dbg !2915, !tbaa !567
  %tobool = icmp ne ptr %call2, null, !dbg !2912
  br i1 %tobool, label %while.body, label %while.end, !dbg !2912

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %li) #9, !dbg !2916
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !2883, metadata !DIExpression()), !dbg !2917
  %3 = load ptr, ptr %entry1, align 8, !dbg !2918, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %3, i32 0, i32 1, !dbg !2918
  %4 = load ptr, ptr %v, align 8, !dbg !2918, !tbaa !1262
  store ptr %4, ptr %li, align 8, !dbg !2917, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_li) #9, !dbg !2919
  tail call void @llvm.dbg.declare(metadata ptr %old_li, metadata !2885, metadata !DIExpression()), !dbg !2920
  %5 = load ptr, ptr %functions_lib_ctx_dst.addr, align 8, !dbg !2921, !tbaa !567
  %libraries3 = getelementptr inbounds %struct.functionsLibCtx, ptr %5, i32 0, i32 0, !dbg !2922
  %6 = load ptr, ptr %libraries3, align 8, !dbg !2922, !tbaa !1245
  %7 = load ptr, ptr %li, align 8, !dbg !2923, !tbaa !567
  %name = getelementptr inbounds %struct.functionLibInfo, ptr %7, i32 0, i32 0, !dbg !2924
  %8 = load ptr, ptr %name, align 8, !dbg !2924, !tbaa !1973
  %call4 = call ptr @dictFetchValue(ptr noundef %6, ptr noundef %8), !dbg !2925
  store ptr %call4, ptr %old_li, align 8, !dbg !2920, !tbaa !567
  %9 = load ptr, ptr %old_li, align 8, !dbg !2926, !tbaa !567
  %tobool5 = icmp ne ptr %9, null, !dbg !2926
  br i1 %tobool5, label %if.then, label %if.end16, !dbg !2928

if.then:                                          ; preds = %while.body
  %10 = load i32, ptr %replace.addr, align 4, !dbg !2929, !tbaa !1305
  %tobool6 = icmp ne i32 %10, 0, !dbg !2929
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2932

if.then7:                                         ; preds = %if.then
  %call8 = call ptr @sdsempty(), !dbg !2933
  %11 = load ptr, ptr %li, align 8, !dbg !2935, !tbaa !567
  %name9 = getelementptr inbounds %struct.functionLibInfo, ptr %11, i32 0, i32 0, !dbg !2936
  %12 = load ptr, ptr %name9, align 8, !dbg !2936, !tbaa !1973
  %call10 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call8, ptr noundef @.str.90, ptr noundef %12), !dbg !2937
  %13 = load ptr, ptr %err.addr, align 8, !dbg !2938, !tbaa !567
  store ptr %call10, ptr %13, align 8, !dbg !2939, !tbaa !567
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2940

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %old_libraries_list, align 8, !dbg !2941, !tbaa !567
  %tobool11 = icmp ne ptr %14, null, !dbg !2941
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !2944

if.then12:                                        ; preds = %if.else
  %call13 = call ptr @listCreate(), !dbg !2945
  store ptr %call13, ptr %old_libraries_list, align 8, !dbg !2947, !tbaa !567
  %15 = load ptr, ptr %old_libraries_list, align 8, !dbg !2948, !tbaa !567
  %free = getelementptr inbounds %struct.list, ptr %15, i32 0, i32 3, !dbg !2948
  store ptr @engineLibraryFree, ptr %free, align 8, !dbg !2948, !tbaa !2949
  br label %if.end, !dbg !2951

if.end:                                           ; preds = %if.then12, %if.else
  %16 = load ptr, ptr %functions_lib_ctx_dst.addr, align 8, !dbg !2952, !tbaa !567
  %17 = load ptr, ptr %old_li, align 8, !dbg !2953, !tbaa !567
  call void @libraryUnlink(ptr noundef %16, ptr noundef %17), !dbg !2954
  %18 = load ptr, ptr %old_libraries_list, align 8, !dbg !2955, !tbaa !567
  %19 = load ptr, ptr %old_li, align 8, !dbg !2956, !tbaa !567
  %call14 = call ptr @listAddNodeTail(ptr noundef %18, ptr noundef %19), !dbg !2957
  br label %if.end15

if.end15:                                         ; preds = %if.end
  br label %if.end16, !dbg !2958

if.end16:                                         ; preds = %if.end15, %while.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2959
  br label %cleanup, !dbg !2959

cleanup:                                          ; preds = %if.then7, %if.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_li) #9, !dbg !2959
  call void @llvm.lifetime.end.p0(i64 8, ptr %li) #9, !dbg !2959
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup73 [
    i32 0, label %cleanup.cont
    i32 4, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2912, !llvm.loop !2960

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %iter, align 8, !dbg !2961, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %20), !dbg !2962
  store ptr null, ptr %iter, align 8, !dbg !2963, !tbaa !567
  %21 = load ptr, ptr %functions_lib_ctx_src.addr, align 8, !dbg !2964, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %21, i32 0, i32 1, !dbg !2965
  %22 = load ptr, ptr %functions, align 8, !dbg !2965, !tbaa !1240
  %call18 = call ptr @dictGetIterator(ptr noundef %22), !dbg !2966
  store ptr %call18, ptr %iter, align 8, !dbg !2967, !tbaa !567
  br label %while.cond19, !dbg !2968

while.cond19:                                     ; preds = %cleanup.cont35, %while.end
  %23 = load ptr, ptr %iter, align 8, !dbg !2969, !tbaa !567
  %call20 = call ptr @dictNext(ptr noundef %23), !dbg !2970
  store ptr %call20, ptr %entry1, align 8, !dbg !2971, !tbaa !567
  %tobool21 = icmp ne ptr %call20, null, !dbg !2968
  br i1 %tobool21, label %while.body22, label %while.end36, !dbg !2968

while.body22:                                     ; preds = %while.cond19
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !2972
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !2886, metadata !DIExpression()), !dbg !2973
  %24 = load ptr, ptr %entry1, align 8, !dbg !2974, !tbaa !567
  %v23 = getelementptr inbounds %struct.dictEntry, ptr %24, i32 0, i32 1, !dbg !2974
  %25 = load ptr, ptr %v23, align 8, !dbg !2974, !tbaa !1262
  store ptr %25, ptr %fi, align 8, !dbg !2973, !tbaa !567
  %26 = load ptr, ptr %functions_lib_ctx_dst.addr, align 8, !dbg !2975, !tbaa !567
  %functions24 = getelementptr inbounds %struct.functionsLibCtx, ptr %26, i32 0, i32 1, !dbg !2977
  %27 = load ptr, ptr %functions24, align 8, !dbg !2977, !tbaa !1240
  %28 = load ptr, ptr %fi, align 8, !dbg !2978, !tbaa !567
  %name25 = getelementptr inbounds %struct.functionInfo, ptr %28, i32 0, i32 0, !dbg !2979
  %29 = load ptr, ptr %name25, align 8, !dbg !2979, !tbaa !1169
  %call26 = call ptr @dictFetchValue(ptr noundef %27, ptr noundef %29), !dbg !2980
  %tobool27 = icmp ne ptr %call26, null, !dbg !2980
  br i1 %tobool27, label %if.then28, label %if.end32, !dbg !2981

if.then28:                                        ; preds = %while.body22
  %call29 = call ptr @sdsempty(), !dbg !2982
  %30 = load ptr, ptr %fi, align 8, !dbg !2984, !tbaa !567
  %name30 = getelementptr inbounds %struct.functionInfo, ptr %30, i32 0, i32 0, !dbg !2985
  %31 = load ptr, ptr %name30, align 8, !dbg !2985, !tbaa !1169
  %call31 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call29, ptr noundef @.str.81, ptr noundef %31), !dbg !2986
  %32 = load ptr, ptr %err.addr, align 8, !dbg !2987, !tbaa !567
  store ptr %call31, ptr %32, align 8, !dbg !2988, !tbaa !567
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup33, !dbg !2989

if.end32:                                         ; preds = %while.body22
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2990
  br label %cleanup33, !dbg !2990

cleanup33:                                        ; preds = %if.then28, %if.end32
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !2990
  %cleanup.dest34 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest34, label %cleanup73 [
    i32 0, label %cleanup.cont35
    i32 4, label %done
  ]

cleanup.cont35:                                   ; preds = %cleanup33
  br label %while.cond19, !dbg !2968, !llvm.loop !2991

while.end36:                                      ; preds = %while.cond19
  %33 = load ptr, ptr %iter, align 8, !dbg !2992, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %33), !dbg !2993
  store ptr null, ptr %iter, align 8, !dbg !2994, !tbaa !567
  %34 = load ptr, ptr %functions_lib_ctx_src.addr, align 8, !dbg !2995, !tbaa !567
  %libraries37 = getelementptr inbounds %struct.functionsLibCtx, ptr %34, i32 0, i32 0, !dbg !2996
  %35 = load ptr, ptr %libraries37, align 8, !dbg !2996, !tbaa !1245
  %call38 = call ptr @dictGetIterator(ptr noundef %35), !dbg !2997
  store ptr %call38, ptr %iter, align 8, !dbg !2998, !tbaa !567
  br label %while.cond39, !dbg !2999

while.cond39:                                     ; preds = %do.end, %while.end36
  %36 = load ptr, ptr %iter, align 8, !dbg !3000, !tbaa !567
  %call40 = call ptr @dictNext(ptr noundef %36), !dbg !3001
  store ptr %call40, ptr %entry1, align 8, !dbg !3002, !tbaa !567
  %tobool41 = icmp ne ptr %call40, null, !dbg !2999
  br i1 %tobool41, label %while.body42, label %while.end57, !dbg !2999

while.body42:                                     ; preds = %while.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %li43) #9, !dbg !3003
  tail call void @llvm.dbg.declare(metadata ptr %li43, metadata !2888, metadata !DIExpression()), !dbg !3004
  %37 = load ptr, ptr %entry1, align 8, !dbg !3005, !tbaa !567
  %v44 = getelementptr inbounds %struct.dictEntry, ptr %37, i32 0, i32 1, !dbg !3005
  %38 = load ptr, ptr %v44, align 8, !dbg !3005, !tbaa !1262
  store ptr %38, ptr %li43, align 8, !dbg !3004, !tbaa !567
  %39 = load ptr, ptr %functions_lib_ctx_dst.addr, align 8, !dbg !3006, !tbaa !567
  %40 = load ptr, ptr %li43, align 8, !dbg !3007, !tbaa !567
  call void @libraryLink(ptr noundef %39, ptr noundef %40), !dbg !3008
  br label %do.body, !dbg !3009

do.body:                                          ; preds = %while.body42
  %41 = load ptr, ptr %functions_lib_ctx_src.addr, align 8, !dbg !3010, !tbaa !567
  %libraries45 = getelementptr inbounds %struct.functionsLibCtx, ptr %41, i32 0, i32 0, !dbg !3010
  %42 = load ptr, ptr %libraries45, align 8, !dbg !3010, !tbaa !1245
  %type = getelementptr inbounds %struct.dict, ptr %42, i32 0, i32 0, !dbg !3010
  %43 = load ptr, ptr %type, align 8, !dbg !3010, !tbaa !2282
  %valDup = getelementptr inbounds %struct.dictType, ptr %43, i32 0, i32 2, !dbg !3010
  %44 = load ptr, ptr %valDup, align 8, !dbg !3010, !tbaa !2284
  %tobool46 = icmp ne ptr %44, null, !dbg !3010
  br i1 %tobool46, label %if.then47, label %if.else54, !dbg !3013

if.then47:                                        ; preds = %do.body
  %45 = load ptr, ptr %functions_lib_ctx_src.addr, align 8, !dbg !3010, !tbaa !567
  %libraries48 = getelementptr inbounds %struct.functionsLibCtx, ptr %45, i32 0, i32 0, !dbg !3010
  %46 = load ptr, ptr %libraries48, align 8, !dbg !3010, !tbaa !1245
  %type49 = getelementptr inbounds %struct.dict, ptr %46, i32 0, i32 0, !dbg !3010
  %47 = load ptr, ptr %type49, align 8, !dbg !3010, !tbaa !2282
  %valDup50 = getelementptr inbounds %struct.dictType, ptr %47, i32 0, i32 2, !dbg !3010
  %48 = load ptr, ptr %valDup50, align 8, !dbg !3010, !tbaa !2284
  %49 = load ptr, ptr %functions_lib_ctx_src.addr, align 8, !dbg !3010, !tbaa !567
  %libraries51 = getelementptr inbounds %struct.functionsLibCtx, ptr %49, i32 0, i32 0, !dbg !3010
  %50 = load ptr, ptr %libraries51, align 8, !dbg !3010, !tbaa !1245
  %call52 = call ptr %48(ptr noundef %50, ptr noundef null), !dbg !3010
  %51 = load ptr, ptr %entry1, align 8, !dbg !3010, !tbaa !567
  %v53 = getelementptr inbounds %struct.dictEntry, ptr %51, i32 0, i32 1, !dbg !3010
  store ptr %call52, ptr %v53, align 8, !dbg !3010, !tbaa !1262
  br label %if.end56, !dbg !3010

if.else54:                                        ; preds = %do.body
  %52 = load ptr, ptr %entry1, align 8, !dbg !3010, !tbaa !567
  %v55 = getelementptr inbounds %struct.dictEntry, ptr %52, i32 0, i32 1, !dbg !3010
  store ptr null, ptr %v55, align 8, !dbg !3010, !tbaa !1262
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then47
  br label %do.cond, !dbg !3013

do.cond:                                          ; preds = %if.end56
  br label %do.end, !dbg !3013

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %li43) #9, !dbg !3014
  br label %while.cond39, !dbg !2999, !llvm.loop !3015

while.end57:                                      ; preds = %while.cond39
  %53 = load ptr, ptr %iter, align 8, !dbg !3016, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %53), !dbg !3017
  store ptr null, ptr %iter, align 8, !dbg !3018, !tbaa !567
  %54 = load ptr, ptr %functions_lib_ctx_src.addr, align 8, !dbg !3019, !tbaa !567
  call void @functionsLibCtxClear(ptr noundef %54), !dbg !3020
  %55 = load ptr, ptr %old_libraries_list, align 8, !dbg !3021, !tbaa !567
  %tobool58 = icmp ne ptr %55, null, !dbg !3021
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !3023

if.then59:                                        ; preds = %while.end57
  %56 = load ptr, ptr %old_libraries_list, align 8, !dbg !3024, !tbaa !567
  call void @listRelease(ptr noundef %56), !dbg !3026
  store ptr null, ptr %old_libraries_list, align 8, !dbg !3027, !tbaa !567
  br label %if.end60, !dbg !3028

if.end60:                                         ; preds = %if.then59, %while.end57
  store i32 0, ptr %ret, align 4, !dbg !3029, !tbaa !1305
  br label %done, !dbg !3030

done:                                             ; preds = %if.end60, %cleanup33, %cleanup
  tail call void @llvm.dbg.label(metadata !2890), !dbg !3031
  %57 = load ptr, ptr %iter, align 8, !dbg !3032, !tbaa !567
  %tobool61 = icmp ne ptr %57, null, !dbg !3032
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !3034

if.then62:                                        ; preds = %done
  %58 = load ptr, ptr %iter, align 8, !dbg !3035, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %58), !dbg !3036
  br label %if.end63, !dbg !3036

if.end63:                                         ; preds = %if.then62, %done
  %59 = load ptr, ptr %old_libraries_list, align 8, !dbg !3037, !tbaa !567
  %tobool64 = icmp ne ptr %59, null, !dbg !3037
  br i1 %tobool64, label %if.then65, label %if.end72, !dbg !3038

if.then65:                                        ; preds = %if.end63
  br label %while.cond66, !dbg !3039

while.cond66:                                     ; preds = %while.body67, %if.then65
  %60 = load ptr, ptr %old_libraries_list, align 8, !dbg !3040, !tbaa !567
  %len = getelementptr inbounds %struct.list, ptr %60, i32 0, i32 5, !dbg !3040
  %61 = load i64, ptr %len, align 8, !dbg !3040, !tbaa !3041
  %cmp = icmp ugt i64 %61, 0, !dbg !3042
  br i1 %cmp, label %while.body67, label %while.end71, !dbg !3039

while.body67:                                     ; preds = %while.cond66
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #9, !dbg !3043
  tail call void @llvm.dbg.declare(metadata ptr %head, metadata !2891, metadata !DIExpression()), !dbg !3044
  %62 = load ptr, ptr %old_libraries_list, align 8, !dbg !3045, !tbaa !567
  %head68 = getelementptr inbounds %struct.list, ptr %62, i32 0, i32 0, !dbg !3045
  %63 = load ptr, ptr %head68, align 8, !dbg !3045, !tbaa !3046
  store ptr %63, ptr %head, align 8, !dbg !3044, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %li69) #9, !dbg !3047
  tail call void @llvm.dbg.declare(metadata ptr %li69, metadata !2895, metadata !DIExpression()), !dbg !3048
  %64 = load ptr, ptr %head, align 8, !dbg !3049, !tbaa !567
  %value = getelementptr inbounds %struct.listNode, ptr %64, i32 0, i32 2, !dbg !3049
  %65 = load ptr, ptr %value, align 8, !dbg !3049, !tbaa !3050
  store ptr %65, ptr %li69, align 8, !dbg !3048, !tbaa !567
  %66 = load ptr, ptr %head, align 8, !dbg !3052, !tbaa !567
  %value70 = getelementptr inbounds %struct.listNode, ptr %66, i32 0, i32 2, !dbg !3052
  store ptr null, ptr %value70, align 8, !dbg !3053, !tbaa !3050
  %67 = load ptr, ptr %functions_lib_ctx_dst.addr, align 8, !dbg !3054, !tbaa !567
  %68 = load ptr, ptr %li69, align 8, !dbg !3055, !tbaa !567
  call void @libraryLink(ptr noundef %67, ptr noundef %68), !dbg !3056
  %69 = load ptr, ptr %old_libraries_list, align 8, !dbg !3057, !tbaa !567
  %70 = load ptr, ptr %head, align 8, !dbg !3058, !tbaa !567
  call void @listDelNode(ptr noundef %69, ptr noundef %70), !dbg !3059
  call void @llvm.lifetime.end.p0(i64 8, ptr %li69) #9, !dbg !3060
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #9, !dbg !3060
  br label %while.cond66, !dbg !3039, !llvm.loop !3061

while.end71:                                      ; preds = %while.cond66
  %71 = load ptr, ptr %old_libraries_list, align 8, !dbg !3062, !tbaa !567
  call void @listRelease(ptr noundef %71), !dbg !3063
  br label %if.end72, !dbg !3064

if.end72:                                         ; preds = %while.end71, %if.end63
  %72 = load i32, ptr %ret, align 4, !dbg !3065, !tbaa !1305
  store i32 %72, ptr %retval, align 4, !dbg !3066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73, !dbg !3066

cleanup73:                                        ; preds = %if.end72, %cleanup33, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_libraries_list) #9, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !3067
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9, !dbg !3067
  %73 = load i32, ptr %retval, align 4, !dbg !3067
  ret i32 %73, !dbg !3067
}

; Function Attrs: nounwind uwtable
define dso_local void @functionFlushCommand(ptr noundef %c) #1 !dbg !3068 {
entry:
  %c.addr = alloca ptr, align 8
  %async = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3070, metadata !DIExpression()), !dbg !3072
  %0 = load ptr, ptr %c.addr, align 8, !dbg !3073, !tbaa !567
  %argc = getelementptr inbounds %struct.client, ptr %0, i32 0, i32 9, !dbg !3075
  %1 = load i32, ptr %argc, align 8, !dbg !3075, !tbaa !1702
  %cmp = icmp sgt i32 %1, 3, !dbg !3076
  br i1 %cmp, label %if.then, label %if.end, !dbg !3077

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8, !dbg !3078, !tbaa !567
  call void @addReplySubcommandSyntaxError(ptr noundef %2), !dbg !3080
  br label %cleanup.cont, !dbg !3081

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %async) #9, !dbg !3082
  tail call void @llvm.dbg.declare(metadata ptr %async, metadata !3071, metadata !DIExpression()), !dbg !3083
  store i32 0, ptr %async, align 4, !dbg !3083, !tbaa !1305
  %3 = load ptr, ptr %c.addr, align 8, !dbg !3084, !tbaa !567
  %argc1 = getelementptr inbounds %struct.client, ptr %3, i32 0, i32 9, !dbg !3086
  %4 = load i32, ptr %argc1, align 8, !dbg !3086, !tbaa !1702
  %cmp2 = icmp eq i32 %4, 3, !dbg !3087
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !3088

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %c.addr, align 8, !dbg !3089, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %5, i32 0, i32 10, !dbg !3090
  %6 = load ptr, ptr %argv, align 8, !dbg !3090, !tbaa !1717
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 2, !dbg !3089
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !3089, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %7, i32 0, i32 2, !dbg !3091
  %8 = load ptr, ptr %ptr, align 8, !dbg !3091, !tbaa !1720
  %call = call i32 @strcasecmp(ptr noundef %8, ptr noundef @.str.31) #10, !dbg !3092
  %tobool = icmp ne i32 %call, 0, !dbg !3092
  br i1 %tobool, label %if.else, label %if.then3, !dbg !3093

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %async, align 4, !dbg !3094, !tbaa !1305
  br label %if.end21, !dbg !3096

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %c.addr, align 8, !dbg !3097, !tbaa !567
  %argc4 = getelementptr inbounds %struct.client, ptr %9, i32 0, i32 9, !dbg !3099
  %10 = load i32, ptr %argc4, align 8, !dbg !3099, !tbaa !1702
  %cmp5 = icmp eq i32 %10, 3, !dbg !3100
  br i1 %cmp5, label %land.lhs.true6, label %if.else13, !dbg !3101

land.lhs.true6:                                   ; preds = %if.else
  %11 = load ptr, ptr %c.addr, align 8, !dbg !3102, !tbaa !567
  %argv7 = getelementptr inbounds %struct.client, ptr %11, i32 0, i32 10, !dbg !3103
  %12 = load ptr, ptr %argv7, align 8, !dbg !3103, !tbaa !1717
  %arrayidx8 = getelementptr inbounds ptr, ptr %12, i64 2, !dbg !3102
  %13 = load ptr, ptr %arrayidx8, align 8, !dbg !3102, !tbaa !567
  %ptr9 = getelementptr inbounds %struct.redisObject, ptr %13, i32 0, i32 2, !dbg !3104
  %14 = load ptr, ptr %ptr9, align 8, !dbg !3104, !tbaa !1720
  %call10 = call i32 @strcasecmp(ptr noundef %14, ptr noundef @.str.32) #10, !dbg !3105
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3105
  br i1 %tobool11, label %if.else13, label %if.then12, !dbg !3106

if.then12:                                        ; preds = %land.lhs.true6
  store i32 1, ptr %async, align 4, !dbg !3107, !tbaa !1305
  br label %if.end20, !dbg !3109

if.else13:                                        ; preds = %land.lhs.true6, %if.else
  %15 = load ptr, ptr %c.addr, align 8, !dbg !3110, !tbaa !567
  %argc14 = getelementptr inbounds %struct.client, ptr %15, i32 0, i32 9, !dbg !3112
  %16 = load i32, ptr %argc14, align 8, !dbg !3112, !tbaa !1702
  %cmp15 = icmp eq i32 %16, 2, !dbg !3113
  br i1 %cmp15, label %if.then16, label %if.else18, !dbg !3114

if.then16:                                        ; preds = %if.else13
  %17 = load i32, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 381), align 8, !dbg !3115, !tbaa !3117
  %tobool17 = icmp ne i32 %17, 0, !dbg !3118
  %18 = zext i1 %tobool17 to i64, !dbg !3118
  %cond = select i1 %tobool17, i32 1, i32 0, !dbg !3118
  store i32 %cond, ptr %async, align 4, !dbg !3119, !tbaa !1305
  br label %if.end19, !dbg !3120

if.else18:                                        ; preds = %if.else13
  %19 = load ptr, ptr %c.addr, align 8, !dbg !3121, !tbaa !567
  call void @addReplyError(ptr noundef %19, ptr noundef @.str.33), !dbg !3123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3124

if.end19:                                         ; preds = %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then3
  %20 = load i32, ptr %async, align 4, !dbg !3125, !tbaa !1305
  call void @functionsLibCtxClearCurrent(i32 noundef %20), !dbg !3126
  %21 = load i64, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !3127, !tbaa !2221
  %inc = add nsw i64 %21, 1, !dbg !3127
  store i64 %inc, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !3127, !tbaa !2221
  %22 = load ptr, ptr %c.addr, align 8, !dbg !3128, !tbaa !567
  %23 = load ptr, ptr getelementptr inbounds (%struct.sharedObjectsStruct, ptr @shared, i32 0, i32 1), align 8, !dbg !3129, !tbaa !2224
  call void @addReply(ptr noundef %22, ptr noundef %23), !dbg !3130
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3131
  br label %cleanup, !dbg !3131

cleanup:                                          ; preds = %if.end21, %if.else18
  call void @llvm.lifetime.end.p0(i64 4, ptr %async) #9, !dbg !3131
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %if.then, %cleanup, %cleanup
  ret void, !dbg !3131

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @functionHelpCommand(ptr noundef %c) #1 !dbg !3132 {
entry:
  %c.addr = alloca ptr, align 8
  %help = alloca [38 x ptr], align 16
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3134, metadata !DIExpression()), !dbg !3137
  call void @llvm.lifetime.start.p0(i64 304, ptr %help) #9, !dbg !3138
  tail call void @llvm.dbg.declare(metadata ptr %help, metadata !3135, metadata !DIExpression()), !dbg !3139
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %help, ptr align 16 @__const.functionHelpCommand.help, i64 304, i1 false), !dbg !3139
  %0 = load ptr, ptr %c.addr, align 8, !dbg !3140, !tbaa !567
  %arraydecay = getelementptr inbounds [38 x ptr], ptr %help, i64 0, i64 0, !dbg !3141
  call void @addReplyHelp(ptr noundef %0, ptr noundef %arraydecay), !dbg !3142
  call void @llvm.lifetime.end.p0(i64 304, ptr %help) #9, !dbg !3143
  ret void, !dbg !3143
}

declare !dbg !3144 void @addReplyHelp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @functionExtractLibMetaData(ptr noundef %payload, ptr noundef %md, ptr noundef %err) #1 !dbg !3147 {
entry:
  %retval = alloca i32, align 4
  %payload.addr = alloca ptr, align 8
  %md.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %engine = alloca ptr, align 8
  %code = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %shebang_end = alloca ptr, align 8
  %shebang_len = alloca i64, align 8
  %shebang = alloca ptr, align 8
  %numparts = alloca i32, align 4
  %parts = alloca ptr, align 8
  %i = alloca i32, align 4
  %part = alloca ptr, align 8
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !3158, metadata !DIExpression()), !dbg !3176
  store ptr %md, ptr %md.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %md.addr, metadata !3159, metadata !DIExpression()), !dbg !3177
  store ptr %err, ptr %err.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3160, metadata !DIExpression()), !dbg !3178
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #9, !dbg !3179
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !3161, metadata !DIExpression()), !dbg !3180
  store ptr null, ptr %name, align 8, !dbg !3180, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #9, !dbg !3181
  tail call void @llvm.dbg.declare(metadata ptr %desc, metadata !3162, metadata !DIExpression()), !dbg !3182
  store ptr null, ptr %desc, align 8, !dbg !3182, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #9, !dbg !3183
  tail call void @llvm.dbg.declare(metadata ptr %engine, metadata !3163, metadata !DIExpression()), !dbg !3184
  store ptr null, ptr %engine, align 8, !dbg !3184, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #9, !dbg !3185
  tail call void @llvm.dbg.declare(metadata ptr %code, metadata !3164, metadata !DIExpression()), !dbg !3186
  store ptr null, ptr %code, align 8, !dbg !3186, !tbaa !567
  %0 = load ptr, ptr %payload.addr, align 8, !dbg !3187, !tbaa !567
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str.71, i64 noundef 2) #10, !dbg !3189
  %cmp = icmp ne i32 %call, 0, !dbg !3190
  br i1 %cmp, label %if.then, label %if.end, !dbg !3191

if.then:                                          ; preds = %entry
  %call1 = call ptr @sdsnew(ptr noundef @.str.72), !dbg !3192
  %1 = load ptr, ptr %err.addr, align 8, !dbg !3194, !tbaa !567
  store ptr %call1, ptr %1, align 8, !dbg !3195, !tbaa !567
  store i32 -1, ptr %retval, align 4, !dbg !3196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !3196

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %shebang_end) #9, !dbg !3197
  tail call void @llvm.dbg.declare(metadata ptr %shebang_end, metadata !3165, metadata !DIExpression()), !dbg !3198
  %2 = load ptr, ptr %payload.addr, align 8, !dbg !3199, !tbaa !567
  %call2 = call ptr @strchr(ptr noundef %2, i32 noundef 10) #10, !dbg !3200
  store ptr %call2, ptr %shebang_end, align 8, !dbg !3198, !tbaa !567
  %3 = load ptr, ptr %shebang_end, align 8, !dbg !3201, !tbaa !567
  %cmp3 = icmp eq ptr %3, null, !dbg !3203
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3204

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @sdsnew(ptr noundef @.str.73), !dbg !3205
  %4 = load ptr, ptr %err.addr, align 8, !dbg !3207, !tbaa !567
  store ptr %call5, ptr %4, align 8, !dbg !3208, !tbaa !567
  store i32 -1, ptr %retval, align 4, !dbg !3209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !3209

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %shebang_len) #9, !dbg !3210
  tail call void @llvm.dbg.declare(metadata ptr %shebang_len, metadata !3166, metadata !DIExpression()), !dbg !3211
  %5 = load ptr, ptr %shebang_end, align 8, !dbg !3212, !tbaa !567
  %6 = load ptr, ptr %payload.addr, align 8, !dbg !3213, !tbaa !567
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i64, !dbg !3214
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64, !dbg !3214
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3214
  store i64 %sub.ptr.sub, ptr %shebang_len, align 8, !dbg !3211, !tbaa !1441
  call void @llvm.lifetime.start.p0(i64 8, ptr %shebang) #9, !dbg !3215
  tail call void @llvm.dbg.declare(metadata ptr %shebang, metadata !3167, metadata !DIExpression()), !dbg !3216
  %7 = load ptr, ptr %payload.addr, align 8, !dbg !3217, !tbaa !567
  %8 = load i64, ptr %shebang_len, align 8, !dbg !3218, !tbaa !1441
  %call7 = call ptr @sdsnewlen(ptr noundef %7, i64 noundef %8), !dbg !3219
  store ptr %call7, ptr %shebang, align 8, !dbg !3216, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 4, ptr %numparts) #9, !dbg !3220
  tail call void @llvm.dbg.declare(metadata ptr %numparts, metadata !3168, metadata !DIExpression()), !dbg !3221
  call void @llvm.lifetime.start.p0(i64 8, ptr %parts) #9, !dbg !3222
  tail call void @llvm.dbg.declare(metadata ptr %parts, metadata !3169, metadata !DIExpression()), !dbg !3223
  %9 = load ptr, ptr %shebang, align 8, !dbg !3224, !tbaa !567
  %call8 = call ptr @sdssplitargs(ptr noundef %9, ptr noundef %numparts), !dbg !3225
  store ptr %call8, ptr %parts, align 8, !dbg !3223, !tbaa !567
  %10 = load ptr, ptr %shebang, align 8, !dbg !3226, !tbaa !567
  call void @sdsfree(ptr noundef %10), !dbg !3227
  %11 = load ptr, ptr %parts, align 8, !dbg !3228, !tbaa !567
  %tobool = icmp ne ptr %11, null, !dbg !3228
  br i1 %tobool, label %lor.lhs.false, label %if.then10, !dbg !3230

lor.lhs.false:                                    ; preds = %if.end6
  %12 = load i32, ptr %numparts, align 4, !dbg !3231, !tbaa !1305
  %cmp9 = icmp eq i32 %12, 0, !dbg !3232
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !3233

if.then10:                                        ; preds = %lor.lhs.false, %if.end6
  %call11 = call ptr @sdsnew(ptr noundef @.str.73), !dbg !3234
  %13 = load ptr, ptr %err.addr, align 8, !dbg !3236, !tbaa !567
  store ptr %call11, ptr %13, align 8, !dbg !3237, !tbaa !567
  %14 = load ptr, ptr %parts, align 8, !dbg !3238, !tbaa !567
  %15 = load i32, ptr %numparts, align 4, !dbg !3239, !tbaa !1305
  call void @sdsfreesplitres(ptr noundef %14, i32 noundef %15), !dbg !3240
  store i32 -1, ptr %retval, align 4, !dbg !3241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3241

if.end12:                                         ; preds = %lor.lhs.false
  %16 = load ptr, ptr %parts, align 8, !dbg !3242, !tbaa !567
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 0, !dbg !3242
  %17 = load ptr, ptr %arrayidx, align 8, !dbg !3242, !tbaa !567
  %call13 = call ptr @sdsdup(ptr noundef %17), !dbg !3243
  store ptr %call13, ptr %engine, align 8, !dbg !3244, !tbaa !567
  %18 = load ptr, ptr %engine, align 8, !dbg !3245, !tbaa !567
  call void @sdsrange(ptr noundef %18, i64 noundef 2, i64 noundef -1), !dbg !3246
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !3247
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3170, metadata !DIExpression()), !dbg !3248
  store i32 1, ptr %i, align 4, !dbg !3248, !tbaa !1305
  br label %for.cond, !dbg !3247

for.cond:                                         ; preds = %for.inc, %if.end12
  %19 = load i32, ptr %i, align 4, !dbg !3249, !tbaa !1305
  %20 = load i32, ptr %numparts, align 4, !dbg !3250, !tbaa !1305
  %cmp14 = icmp slt i32 %19, %20, !dbg !3251
  br i1 %cmp14, label %for.body, label %for.cond.cleanup, !dbg !3252

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !3252

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %part) #9, !dbg !3253
  tail call void @llvm.dbg.declare(metadata ptr %part, metadata !3172, metadata !DIExpression()), !dbg !3254
  %21 = load ptr, ptr %parts, align 8, !dbg !3255, !tbaa !567
  %22 = load i32, ptr %i, align 4, !dbg !3256, !tbaa !1305
  %idxprom = sext i32 %22 to i64, !dbg !3255
  %arrayidx15 = getelementptr inbounds ptr, ptr %21, i64 %idxprom, !dbg !3255
  %23 = load ptr, ptr %arrayidx15, align 8, !dbg !3255, !tbaa !567
  store ptr %23, ptr %part, align 8, !dbg !3254, !tbaa !567
  %24 = load ptr, ptr %part, align 8, !dbg !3257, !tbaa !567
  %call16 = call i32 @strncasecmp(ptr noundef %24, ptr noundef @.str.74, i64 noundef 5) #10, !dbg !3259
  %cmp17 = icmp eq i32 %call16, 0, !dbg !3260
  br i1 %cmp17, label %if.then18, label %if.end25, !dbg !3261

if.then18:                                        ; preds = %for.body
  %25 = load ptr, ptr %name, align 8, !dbg !3262, !tbaa !567
  %tobool19 = icmp ne ptr %25, null, !dbg !3262
  br i1 %tobool19, label %if.then20, label %if.end23, !dbg !3265

if.then20:                                        ; preds = %if.then18
  %call21 = call ptr @sdsempty(), !dbg !3266
  %call22 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call21, ptr noundef @.str.75), !dbg !3268
  %26 = load ptr, ptr %err.addr, align 8, !dbg !3269, !tbaa !567
  store ptr %call22, ptr %26, align 8, !dbg !3270, !tbaa !567
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3271

if.end23:                                         ; preds = %if.then18
  %27 = load ptr, ptr %part, align 8, !dbg !3272, !tbaa !567
  %call24 = call ptr @sdsdup(ptr noundef %27), !dbg !3273
  store ptr %call24, ptr %name, align 8, !dbg !3274, !tbaa !567
  %28 = load ptr, ptr %name, align 8, !dbg !3275, !tbaa !567
  call void @sdsrange(ptr noundef %28, i64 noundef 5, i64 noundef -1), !dbg !3276
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3277

if.end25:                                         ; preds = %for.body
  %call26 = call ptr @sdsempty(), !dbg !3278
  %29 = load ptr, ptr %part, align 8, !dbg !3279, !tbaa !567
  %call27 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call26, ptr noundef @.str.76, ptr noundef %29), !dbg !3280
  %30 = load ptr, ptr %err.addr, align 8, !dbg !3281, !tbaa !567
  store ptr %call27, ptr %30, align 8, !dbg !3282, !tbaa !567
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3283

cleanup:                                          ; preds = %if.end25, %if.then20, %if.end23
  call void @llvm.lifetime.end.p0(i64 8, ptr %part) #9, !dbg !3284
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup28 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %31 = load i32, ptr %i, align 4, !dbg !3285, !tbaa !1305
  %inc = add nsw i32 %31, 1, !dbg !3285
  store i32 %inc, ptr %i, align 4, !dbg !3285, !tbaa !1305
  br label %for.cond, !dbg !3286, !llvm.loop !3287

cleanup28:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !3286
  %cleanup.dest29 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest29, label %cleanup51 [
    i32 2, label %for.end
    i32 5, label %error
  ]

for.end:                                          ; preds = %cleanup28
  %32 = load ptr, ptr %name, align 8, !dbg !3289, !tbaa !567
  %tobool30 = icmp ne ptr %32, null, !dbg !3289
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !3291

if.then31:                                        ; preds = %for.end
  %call32 = call ptr @sdsnew(ptr noundef @.str.77), !dbg !3292
  %33 = load ptr, ptr %err.addr, align 8, !dbg !3294, !tbaa !567
  store ptr %call32, ptr %33, align 8, !dbg !3295, !tbaa !567
  br label %error, !dbg !3296

if.end33:                                         ; preds = %for.end
  %34 = load ptr, ptr %parts, align 8, !dbg !3297, !tbaa !567
  %35 = load i32, ptr %numparts, align 4, !dbg !3298, !tbaa !1305
  call void @sdsfreesplitres(ptr noundef %34, i32 noundef %35), !dbg !3299
  %36 = load ptr, ptr %name, align 8, !dbg !3300, !tbaa !567
  %37 = load ptr, ptr %md.addr, align 8, !dbg !3301, !tbaa !567
  %name34 = getelementptr inbounds %struct.functionsLibMataData, ptr %37, i32 0, i32 1, !dbg !3302
  store ptr %36, ptr %name34, align 8, !dbg !3303, !tbaa !3304
  %38 = load ptr, ptr %shebang_end, align 8, !dbg !3306, !tbaa !567
  %39 = load ptr, ptr %payload.addr, align 8, !dbg !3307, !tbaa !567
  %call35 = call i64 @sdslen(ptr noundef %39), !dbg !3308
  %40 = load i64, ptr %shebang_len, align 8, !dbg !3309, !tbaa !1441
  %sub = sub i64 %call35, %40, !dbg !3310
  %call36 = call ptr @sdsnewlen(ptr noundef %38, i64 noundef %sub), !dbg !3311
  %41 = load ptr, ptr %md.addr, align 8, !dbg !3312, !tbaa !567
  %code37 = getelementptr inbounds %struct.functionsLibMataData, ptr %41, i32 0, i32 2, !dbg !3313
  store ptr %call36, ptr %code37, align 8, !dbg !3314, !tbaa !3315
  %42 = load ptr, ptr %engine, align 8, !dbg !3316, !tbaa !567
  %43 = load ptr, ptr %md.addr, align 8, !dbg !3317, !tbaa !567
  %engine38 = getelementptr inbounds %struct.functionsLibMataData, ptr %43, i32 0, i32 0, !dbg !3318
  store ptr %42, ptr %engine38, align 8, !dbg !3319, !tbaa !3320
  store i32 0, ptr %retval, align 4, !dbg !3321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3321

error:                                            ; preds = %cleanup28, %if.then31
  tail call void @llvm.dbg.label(metadata !3175), !dbg !3322
  %44 = load ptr, ptr %name, align 8, !dbg !3323, !tbaa !567
  %tobool39 = icmp ne ptr %44, null, !dbg !3323
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !3325

if.then40:                                        ; preds = %error
  %45 = load ptr, ptr %name, align 8, !dbg !3326, !tbaa !567
  call void @sdsfree(ptr noundef %45), !dbg !3327
  br label %if.end41, !dbg !3327

if.end41:                                         ; preds = %if.then40, %error
  %46 = load ptr, ptr %desc, align 8, !dbg !3328, !tbaa !567
  %tobool42 = icmp ne ptr %46, null, !dbg !3328
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !3330

if.then43:                                        ; preds = %if.end41
  %47 = load ptr, ptr %desc, align 8, !dbg !3331, !tbaa !567
  call void @sdsfree(ptr noundef %47), !dbg !3332
  br label %if.end44, !dbg !3332

if.end44:                                         ; preds = %if.then43, %if.end41
  %48 = load ptr, ptr %engine, align 8, !dbg !3333, !tbaa !567
  %tobool45 = icmp ne ptr %48, null, !dbg !3333
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !3335

if.then46:                                        ; preds = %if.end44
  %49 = load ptr, ptr %engine, align 8, !dbg !3336, !tbaa !567
  call void @sdsfree(ptr noundef %49), !dbg !3337
  br label %if.end47, !dbg !3337

if.end47:                                         ; preds = %if.then46, %if.end44
  %50 = load ptr, ptr %code, align 8, !dbg !3338, !tbaa !567
  %tobool48 = icmp ne ptr %50, null, !dbg !3338
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !3340

if.then49:                                        ; preds = %if.end47
  %51 = load ptr, ptr %code, align 8, !dbg !3341, !tbaa !567
  call void @sdsfree(ptr noundef %51), !dbg !3342
  br label %if.end50, !dbg !3342

if.end50:                                         ; preds = %if.then49, %if.end47
  %52 = load ptr, ptr %parts, align 8, !dbg !3343, !tbaa !567
  %53 = load i32, ptr %numparts, align 4, !dbg !3344, !tbaa !1305
  call void @sdsfreesplitres(ptr noundef %52, i32 noundef %53), !dbg !3345
  store i32 -1, ptr %retval, align 4, !dbg !3346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup51, !dbg !3346

cleanup51:                                        ; preds = %if.end50, %if.end33, %cleanup28, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %parts) #9, !dbg !3347
  call void @llvm.lifetime.end.p0(i64 4, ptr %numparts) #9, !dbg !3347
  call void @llvm.lifetime.end.p0(i64 8, ptr %shebang) #9, !dbg !3347
  call void @llvm.lifetime.end.p0(i64 8, ptr %shebang_len) #9, !dbg !3347
  br label %cleanup55

cleanup55:                                        ; preds = %cleanup51, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %shebang_end) #9, !dbg !3347
  br label %cleanup56

cleanup56:                                        ; preds = %cleanup55, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #9, !dbg !3347
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #9, !dbg !3347
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #9, !dbg !3347
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #9, !dbg !3347
  %54 = load i32, ptr %retval, align 4, !dbg !3347
  ret i32 %54, !dbg !3347
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3348 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3352 ptr @strchr(ptr noundef, i32 noundef) #6

declare !dbg !3355 ptr @sdsnewlen(ptr noundef, i64 noundef) #0

declare !dbg !3358 ptr @sdssplitargs(ptr noundef, ptr noundef) #0

declare !dbg !3362 void @sdsfreesplitres(ptr noundef, i32 noundef) #0

declare !dbg !3365 ptr @sdsdup(ptr noundef) #0

declare !dbg !3368 void @sdsrange(ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3371 i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define dso_local void @functionFreeLibMetaData(ptr noundef %md) #1 !dbg !3372 {
entry:
  %md.addr = alloca ptr, align 8
  store ptr %md, ptr %md.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %md.addr, metadata !3376, metadata !DIExpression()), !dbg !3377
  %0 = load ptr, ptr %md.addr, align 8, !dbg !3378, !tbaa !567
  %code = getelementptr inbounds %struct.functionsLibMataData, ptr %0, i32 0, i32 2, !dbg !3380
  %1 = load ptr, ptr %code, align 8, !dbg !3380, !tbaa !3315
  %tobool = icmp ne ptr %1, null, !dbg !3378
  br i1 %tobool, label %if.then, label %if.end, !dbg !3381

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %md.addr, align 8, !dbg !3382, !tbaa !567
  %code1 = getelementptr inbounds %struct.functionsLibMataData, ptr %2, i32 0, i32 2, !dbg !3383
  %3 = load ptr, ptr %code1, align 8, !dbg !3383, !tbaa !3315
  call void @sdsfree(ptr noundef %3), !dbg !3384
  br label %if.end, !dbg !3384

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %md.addr, align 8, !dbg !3385, !tbaa !567
  %name = getelementptr inbounds %struct.functionsLibMataData, ptr %4, i32 0, i32 1, !dbg !3387
  %5 = load ptr, ptr %name, align 8, !dbg !3387, !tbaa !3304
  %tobool2 = icmp ne ptr %5, null, !dbg !3385
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3388

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %md.addr, align 8, !dbg !3389, !tbaa !567
  %name4 = getelementptr inbounds %struct.functionsLibMataData, ptr %6, i32 0, i32 1, !dbg !3390
  %7 = load ptr, ptr %name4, align 8, !dbg !3390, !tbaa !3304
  call void @sdsfree(ptr noundef %7), !dbg !3391
  br label %if.end5, !dbg !3391

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %md.addr, align 8, !dbg !3392, !tbaa !567
  %engine = getelementptr inbounds %struct.functionsLibMataData, ptr %8, i32 0, i32 0, !dbg !3394
  %9 = load ptr, ptr %engine, align 8, !dbg !3394, !tbaa !3320
  %tobool6 = icmp ne ptr %9, null, !dbg !3392
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !3395

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %md.addr, align 8, !dbg !3396, !tbaa !567
  %engine8 = getelementptr inbounds %struct.functionsLibMataData, ptr %10, i32 0, i32 0, !dbg !3397
  %11 = load ptr, ptr %engine8, align 8, !dbg !3397, !tbaa !3320
  call void @sdsfree(ptr noundef %11), !dbg !3398
  br label %if.end9, !dbg !3398

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !3399
}

; Function Attrs: nounwind uwtable
define dso_local ptr @functionsCreateWithLibraryCtx(ptr noundef %code, i32 noundef %replace, ptr noundef %err, ptr noundef %lib_ctx) #1 !dbg !3400 {
entry:
  %retval = alloca ptr, align 8
  %code.addr = alloca ptr, align 8
  %replace.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %lib_ctx.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %new_li = alloca ptr, align 8
  %old_li = alloca ptr, align 8
  %md = alloca %struct.functionsLibMataData, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ei = alloca ptr, align 8
  %engine13 = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %loaded_lib_name = alloca ptr, align 8
  store ptr %code, ptr %code.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !3404, metadata !DIExpression()), !dbg !3419
  store i32 %replace, ptr %replace.addr, align 4, !tbaa !1305
  tail call void @llvm.dbg.declare(metadata ptr %replace.addr, metadata !3405, metadata !DIExpression()), !dbg !3420
  store ptr %err, ptr %err.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3406, metadata !DIExpression()), !dbg !3421
  store ptr %lib_ctx, ptr %lib_ctx.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %lib_ctx.addr, metadata !3407, metadata !DIExpression()), !dbg !3422
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !3423
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !3408, metadata !DIExpression()), !dbg !3424
  store ptr null, ptr %iter, align 8, !dbg !3424, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !3425
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3409, metadata !DIExpression()), !dbg !3426
  store ptr null, ptr %entry1, align 8, !dbg !3426, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_li) #9, !dbg !3427
  tail call void @llvm.dbg.declare(metadata ptr %new_li, metadata !3410, metadata !DIExpression()), !dbg !3428
  store ptr null, ptr %new_li, align 8, !dbg !3428, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_li) #9, !dbg !3429
  tail call void @llvm.dbg.declare(metadata ptr %old_li, metadata !3411, metadata !DIExpression()), !dbg !3430
  store ptr null, ptr %old_li, align 8, !dbg !3430, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 24, ptr %md) #9, !dbg !3431
  tail call void @llvm.dbg.declare(metadata ptr %md, metadata !3412, metadata !DIExpression()), !dbg !3432
  call void @llvm.memset.p0.i64(ptr align 8 %md, i8 0, i64 24, i1 false), !dbg !3432
  %0 = load ptr, ptr %code.addr, align 8, !dbg !3433, !tbaa !567
  %1 = load ptr, ptr %err.addr, align 8, !dbg !3435, !tbaa !567
  %call = call i32 @functionExtractLibMetaData(ptr noundef %0, ptr noundef %md, ptr noundef %1), !dbg !3436
  %cmp = icmp ne i32 %call, 0, !dbg !3437
  br i1 %cmp, label %if.then, label %if.end, !dbg !3438

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !3439

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 1, !dbg !3441
  %2 = load ptr, ptr %name, align 8, !dbg !3441, !tbaa !3304
  %call2 = call i32 @functionsVerifyName(ptr noundef %2), !dbg !3443
  %tobool = icmp ne i32 %call2, 0, !dbg !3443
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !3444

if.then3:                                         ; preds = %if.end
  %call4 = call ptr @sdsnew(ptr noundef @.str), !dbg !3445
  %3 = load ptr, ptr %err.addr, align 8, !dbg !3447, !tbaa !567
  store ptr %call4, ptr %3, align 8, !dbg !3448, !tbaa !567
  br label %error, !dbg !3449

if.end5:                                          ; preds = %if.end
  tail call void @llvm.dbg.declare(metadata ptr %ei, metadata !3413, metadata !DIExpression()), !dbg !3450
  %4 = load ptr, ptr @engines, align 8, !dbg !3451, !tbaa !567
  %engine = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 0, !dbg !3452
  %5 = load ptr, ptr %engine, align 8, !dbg !3452, !tbaa !3320
  %call6 = call ptr @dictFetchValue(ptr noundef %4, ptr noundef %5), !dbg !3453
  store ptr %call6, ptr %ei, align 8, !dbg !3450, !tbaa !567
  %6 = load ptr, ptr %ei, align 8, !dbg !3454, !tbaa !567
  %tobool7 = icmp ne ptr %6, null, !dbg !3454
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !3456

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @sdsempty(), !dbg !3457
  %engine10 = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 0, !dbg !3459
  %7 = load ptr, ptr %engine10, align 8, !dbg !3459, !tbaa !3320
  %call11 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call9, ptr noundef @.str.78, ptr noundef %7), !dbg !3460
  %8 = load ptr, ptr %err.addr, align 8, !dbg !3461, !tbaa !567
  store ptr %call11, ptr %8, align 8, !dbg !3462, !tbaa !567
  br label %error, !dbg !3463

if.end12:                                         ; preds = %if.end5
  tail call void @llvm.dbg.declare(metadata ptr %engine13, metadata !3414, metadata !DIExpression()), !dbg !3464
  %9 = load ptr, ptr %ei, align 8, !dbg !3465, !tbaa !567
  %engine14 = getelementptr inbounds %struct.engineInfo, ptr %9, i32 0, i32 1, !dbg !3466
  %10 = load ptr, ptr %engine14, align 8, !dbg !3466, !tbaa !1192
  store ptr %10, ptr %engine13, align 8, !dbg !3464, !tbaa !567
  %11 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3467, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %11, i32 0, i32 0, !dbg !3468
  %12 = load ptr, ptr %libraries, align 8, !dbg !3468, !tbaa !1245
  %name15 = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 1, !dbg !3469
  %13 = load ptr, ptr %name15, align 8, !dbg !3469, !tbaa !3304
  %call16 = call ptr @dictFetchValue(ptr noundef %12, ptr noundef %13), !dbg !3470
  store ptr %call16, ptr %old_li, align 8, !dbg !3471, !tbaa !567
  %14 = load ptr, ptr %old_li, align 8, !dbg !3472, !tbaa !567
  %tobool17 = icmp ne ptr %14, null, !dbg !3472
  br i1 %tobool17, label %land.lhs.true, label %if.end23, !dbg !3474

land.lhs.true:                                    ; preds = %if.end12
  %15 = load i32, ptr %replace.addr, align 4, !dbg !3475, !tbaa !1305
  %tobool18 = icmp ne i32 %15, 0, !dbg !3475
  br i1 %tobool18, label %if.end23, label %if.then19, !dbg !3476

if.then19:                                        ; preds = %land.lhs.true
  store ptr null, ptr %old_li, align 8, !dbg !3477, !tbaa !567
  %call20 = call ptr @sdsempty(), !dbg !3479
  %name21 = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 1, !dbg !3480
  %16 = load ptr, ptr %name21, align 8, !dbg !3480, !tbaa !3304
  %call22 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call20, ptr noundef @.str.79, ptr noundef %16), !dbg !3481
  %17 = load ptr, ptr %err.addr, align 8, !dbg !3482, !tbaa !567
  store ptr %call22, ptr %17, align 8, !dbg !3483, !tbaa !567
  br label %error, !dbg !3484

if.end23:                                         ; preds = %land.lhs.true, %if.end12
  %18 = load ptr, ptr %old_li, align 8, !dbg !3485, !tbaa !567
  %tobool24 = icmp ne ptr %18, null, !dbg !3485
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !3487

if.then25:                                        ; preds = %if.end23
  %19 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3488, !tbaa !567
  %20 = load ptr, ptr %old_li, align 8, !dbg !3490, !tbaa !567
  call void @libraryUnlink(ptr noundef %19, ptr noundef %20), !dbg !3491
  br label %if.end26, !dbg !3492

if.end26:                                         ; preds = %if.then25, %if.end23
  %name27 = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 1, !dbg !3493
  %21 = load ptr, ptr %name27, align 8, !dbg !3493, !tbaa !3304
  %22 = load ptr, ptr %ei, align 8, !dbg !3494, !tbaa !567
  %23 = load ptr, ptr %code.addr, align 8, !dbg !3495, !tbaa !567
  %call28 = call ptr @engineLibraryCreate(ptr noundef %21, ptr noundef %22, ptr noundef %23), !dbg !3496
  store ptr %call28, ptr %new_li, align 8, !dbg !3497, !tbaa !567
  %24 = load ptr, ptr %engine13, align 8, !dbg !3498, !tbaa !567
  %create = getelementptr inbounds %struct.engine, ptr %24, i32 0, i32 1, !dbg !3500
  %25 = load ptr, ptr %create, align 8, !dbg !3500, !tbaa !3501
  %26 = load ptr, ptr %engine13, align 8, !dbg !3502, !tbaa !567
  %engine_ctx = getelementptr inbounds %struct.engine, ptr %26, i32 0, i32 0, !dbg !3503
  %27 = load ptr, ptr %engine_ctx, align 8, !dbg !3503, !tbaa !1200
  %28 = load ptr, ptr %new_li, align 8, !dbg !3504, !tbaa !567
  %code29 = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 2, !dbg !3505
  %29 = load ptr, ptr %code29, align 8, !dbg !3505, !tbaa !3315
  %30 = load ptr, ptr %err.addr, align 8, !dbg !3506, !tbaa !567
  %call30 = call i32 %25(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30), !dbg !3498
  %cmp31 = icmp ne i32 %call30, 0, !dbg !3507
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !3508

if.then32:                                        ; preds = %if.end26
  br label %error, !dbg !3509

if.end33:                                         ; preds = %if.end26
  %31 = load ptr, ptr %new_li, align 8, !dbg !3511, !tbaa !567
  %functions = getelementptr inbounds %struct.functionLibInfo, ptr %31, i32 0, i32 1, !dbg !3511
  %32 = load ptr, ptr %functions, align 8, !dbg !3511, !tbaa !1457
  %ht_used = getelementptr inbounds %struct.dict, ptr %32, i32 0, i32 2, !dbg !3511
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !3511
  %33 = load i64, ptr %arrayidx, align 8, !dbg !3511, !tbaa !1441
  %34 = load ptr, ptr %new_li, align 8, !dbg !3511, !tbaa !567
  %functions34 = getelementptr inbounds %struct.functionLibInfo, ptr %34, i32 0, i32 1, !dbg !3511
  %35 = load ptr, ptr %functions34, align 8, !dbg !3511, !tbaa !1457
  %ht_used35 = getelementptr inbounds %struct.dict, ptr %35, i32 0, i32 2, !dbg !3511
  %arrayidx36 = getelementptr inbounds [2 x i64], ptr %ht_used35, i64 0, i64 1, !dbg !3511
  %36 = load i64, ptr %arrayidx36, align 8, !dbg !3511, !tbaa !1441
  %add = add i64 %33, %36, !dbg !3511
  %cmp37 = icmp eq i64 %add, 0, !dbg !3513
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !3514

if.then38:                                        ; preds = %if.end33
  %call39 = call ptr @sdsnew(ptr noundef @.str.80), !dbg !3515
  %37 = load ptr, ptr %err.addr, align 8, !dbg !3517, !tbaa !567
  store ptr %call39, ptr %37, align 8, !dbg !3518, !tbaa !567
  br label %error, !dbg !3519

if.end40:                                         ; preds = %if.end33
  %38 = load ptr, ptr %new_li, align 8, !dbg !3520, !tbaa !567
  %functions41 = getelementptr inbounds %struct.functionLibInfo, ptr %38, i32 0, i32 1, !dbg !3521
  %39 = load ptr, ptr %functions41, align 8, !dbg !3521, !tbaa !1457
  %call42 = call ptr @dictGetIterator(ptr noundef %39), !dbg !3522
  store ptr %call42, ptr %iter, align 8, !dbg !3523, !tbaa !567
  br label %while.cond, !dbg !3524

while.cond:                                       ; preds = %cleanup.cont, %if.end40
  %40 = load ptr, ptr %iter, align 8, !dbg !3525, !tbaa !567
  %call43 = call ptr @dictNext(ptr noundef %40), !dbg !3526
  store ptr %call43, ptr %entry1, align 8, !dbg !3527, !tbaa !567
  %tobool44 = icmp ne ptr %call43, null, !dbg !3524
  br i1 %tobool44, label %while.body, label %while.end, !dbg !3524

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !3528
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !3415, metadata !DIExpression()), !dbg !3529
  %41 = load ptr, ptr %entry1, align 8, !dbg !3530, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %41, i32 0, i32 1, !dbg !3530
  %42 = load ptr, ptr %v, align 8, !dbg !3530, !tbaa !1262
  store ptr %42, ptr %fi, align 8, !dbg !3529, !tbaa !567
  %43 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3531, !tbaa !567
  %functions45 = getelementptr inbounds %struct.functionsLibCtx, ptr %43, i32 0, i32 1, !dbg !3533
  %44 = load ptr, ptr %functions45, align 8, !dbg !3533, !tbaa !1240
  %45 = load ptr, ptr %fi, align 8, !dbg !3534, !tbaa !567
  %name46 = getelementptr inbounds %struct.functionInfo, ptr %45, i32 0, i32 0, !dbg !3535
  %46 = load ptr, ptr %name46, align 8, !dbg !3535, !tbaa !1169
  %call47 = call ptr @dictFetchValue(ptr noundef %44, ptr noundef %46), !dbg !3536
  %tobool48 = icmp ne ptr %call47, null, !dbg !3536
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !3537

if.then49:                                        ; preds = %while.body
  %call50 = call ptr @sdsempty(), !dbg !3538
  %47 = load ptr, ptr %fi, align 8, !dbg !3540, !tbaa !567
  %name51 = getelementptr inbounds %struct.functionInfo, ptr %47, i32 0, i32 0, !dbg !3541
  %48 = load ptr, ptr %name51, align 8, !dbg !3541, !tbaa !1169
  %call52 = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %call50, ptr noundef @.str.81, ptr noundef %48), !dbg !3542
  %49 = load ptr, ptr %err.addr, align 8, !dbg !3543, !tbaa !567
  store ptr %call52, ptr %49, align 8, !dbg !3544, !tbaa !567
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3545

if.end53:                                         ; preds = %while.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3546
  br label %cleanup, !dbg !3546

cleanup:                                          ; preds = %if.then49, %if.end53
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !3546
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup68 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !3524, !llvm.loop !3547

while.end:                                        ; preds = %while.cond
  %50 = load ptr, ptr %iter, align 8, !dbg !3548, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %50), !dbg !3549
  store ptr null, ptr %iter, align 8, !dbg !3550, !tbaa !567
  %51 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3551, !tbaa !567
  %52 = load ptr, ptr %new_li, align 8, !dbg !3552, !tbaa !567
  call void @libraryLink(ptr noundef %51, ptr noundef %52), !dbg !3553
  %53 = load ptr, ptr %old_li, align 8, !dbg !3554, !tbaa !567
  %tobool54 = icmp ne ptr %53, null, !dbg !3554
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !3556

if.then55:                                        ; preds = %while.end
  %54 = load ptr, ptr %old_li, align 8, !dbg !3557, !tbaa !567
  call void @engineLibraryFree(ptr noundef %54), !dbg !3559
  br label %if.end56, !dbg !3560

if.end56:                                         ; preds = %if.then55, %while.end
  tail call void @llvm.dbg.declare(metadata ptr %loaded_lib_name, metadata !3417, metadata !DIExpression()), !dbg !3561
  %name57 = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 1, !dbg !3562
  %55 = load ptr, ptr %name57, align 8, !dbg !3562, !tbaa !3304
  store ptr %55, ptr %loaded_lib_name, align 8, !dbg !3561, !tbaa !567
  %name58 = getelementptr inbounds %struct.functionsLibMataData, ptr %md, i32 0, i32 1, !dbg !3563
  store ptr null, ptr %name58, align 8, !dbg !3564, !tbaa !3304
  call void @functionFreeLibMetaData(ptr noundef %md), !dbg !3565
  %56 = load ptr, ptr %loaded_lib_name, align 8, !dbg !3566, !tbaa !567
  store ptr %56, ptr %retval, align 8, !dbg !3567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !3567

error:                                            ; preds = %cleanup, %if.then38, %if.then32, %if.then19, %if.then8, %if.then3
  tail call void @llvm.dbg.label(metadata !3418), !dbg !3568
  %57 = load ptr, ptr %iter, align 8, !dbg !3569, !tbaa !567
  %tobool59 = icmp ne ptr %57, null, !dbg !3569
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !3571

if.then60:                                        ; preds = %error
  %58 = load ptr, ptr %iter, align 8, !dbg !3572, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %58), !dbg !3573
  br label %if.end61, !dbg !3573

if.end61:                                         ; preds = %if.then60, %error
  %59 = load ptr, ptr %new_li, align 8, !dbg !3574, !tbaa !567
  %tobool62 = icmp ne ptr %59, null, !dbg !3574
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !3576

if.then63:                                        ; preds = %if.end61
  %60 = load ptr, ptr %new_li, align 8, !dbg !3577, !tbaa !567
  call void @engineLibraryFree(ptr noundef %60), !dbg !3578
  br label %if.end64, !dbg !3578

if.end64:                                         ; preds = %if.then63, %if.end61
  %61 = load ptr, ptr %old_li, align 8, !dbg !3579, !tbaa !567
  %tobool65 = icmp ne ptr %61, null, !dbg !3579
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !3581

if.then66:                                        ; preds = %if.end64
  %62 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3582, !tbaa !567
  %63 = load ptr, ptr %old_li, align 8, !dbg !3583, !tbaa !567
  call void @libraryLink(ptr noundef %62, ptr noundef %63), !dbg !3584
  br label %if.end67, !dbg !3584

if.end67:                                         ; preds = %if.then66, %if.end64
  call void @functionFreeLibMetaData(ptr noundef %md), !dbg !3585
  store ptr null, ptr %retval, align 8, !dbg !3586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !3586

cleanup68:                                        ; preds = %if.end67, %if.end56, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %md) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_li) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_li) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !3587
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !3587
  %64 = load ptr, ptr %retval, align 8, !dbg !3587
  ret ptr %64, !dbg !3587
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal ptr @engineLibraryCreate(ptr noundef %name, ptr noundef %ei, ptr noundef %code) #1 !dbg !3588 {
entry:
  %name.addr = alloca ptr, align 8
  %ei.addr = alloca ptr, align 8
  %code.addr = alloca ptr, align 8
  %li = alloca ptr, align 8
  %.compoundliteral = alloca %struct.functionLibInfo, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3592, metadata !DIExpression()), !dbg !3596
  store ptr %ei, ptr %ei.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %ei.addr, metadata !3593, metadata !DIExpression()), !dbg !3597
  store ptr %code, ptr %code.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !3594, metadata !DIExpression()), !dbg !3598
  call void @llvm.lifetime.start.p0(i64 8, ptr %li) #9, !dbg !3599
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !3595, metadata !DIExpression()), !dbg !3600
  %call = call ptr @zmalloc(i64 noundef 32), !dbg !3601
  store ptr %call, ptr %li, align 8, !dbg !3600, !tbaa !567
  %0 = load ptr, ptr %li, align 8, !dbg !3602, !tbaa !567
  %name1 = getelementptr inbounds %struct.functionLibInfo, ptr %.compoundliteral, i32 0, i32 0, !dbg !3603
  %1 = load ptr, ptr %name.addr, align 8, !dbg !3604, !tbaa !567
  %call2 = call ptr @sdsdup(ptr noundef %1), !dbg !3605
  store ptr %call2, ptr %name1, align 8, !dbg !3603, !tbaa !1973
  %functions = getelementptr inbounds %struct.functionLibInfo, ptr %.compoundliteral, i32 0, i32 1, !dbg !3603
  %call3 = call ptr @dictCreate(ptr noundef @libraryFunctionDictType), !dbg !3606
  store ptr %call3, ptr %functions, align 8, !dbg !3603, !tbaa !1457
  %ei4 = getelementptr inbounds %struct.functionLibInfo, ptr %.compoundliteral, i32 0, i32 2, !dbg !3603
  %2 = load ptr, ptr %ei.addr, align 8, !dbg !3607, !tbaa !567
  store ptr %2, ptr %ei4, align 8, !dbg !3603, !tbaa !1189
  %code5 = getelementptr inbounds %struct.functionLibInfo, ptr %.compoundliteral, i32 0, i32 3, !dbg !3603
  %3 = load ptr, ptr %code.addr, align 8, !dbg !3608, !tbaa !567
  %call6 = call ptr @sdsdup(ptr noundef %3), !dbg !3609
  store ptr %call6, ptr %code5, align 8, !dbg !3603, !tbaa !2074
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !3610, !tbaa.struct !3611
  %4 = load ptr, ptr %li, align 8, !dbg !3612, !tbaa !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %li) #9, !dbg !3613
  ret ptr %4, !dbg !3614
}

; Function Attrs: nounwind uwtable
define internal void @libraryLink(ptr noundef %lib_ctx, ptr noundef %li) #1 !dbg !3615 {
entry:
  %lib_ctx.addr = alloca ptr, align 8
  %li.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %stats = alloca ptr, align 8
  store ptr %lib_ctx, ptr %lib_ctx.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %lib_ctx.addr, metadata !3617, metadata !DIExpression()), !dbg !3624
  store ptr %li, ptr %li.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %li.addr, metadata !3618, metadata !DIExpression()), !dbg !3625
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !3626
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !3619, metadata !DIExpression()), !dbg !3627
  %0 = load ptr, ptr %li.addr, align 8, !dbg !3628, !tbaa !567
  %functions = getelementptr inbounds %struct.functionLibInfo, ptr %0, i32 0, i32 1, !dbg !3629
  %1 = load ptr, ptr %functions, align 8, !dbg !3629, !tbaa !1457
  %call = call ptr @dictGetIterator(ptr noundef %1), !dbg !3630
  store ptr %call, ptr %iter, align 8, !dbg !3627, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !3631
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3620, metadata !DIExpression()), !dbg !3632
  store ptr null, ptr %entry1, align 8, !dbg !3632, !tbaa !567
  br label %while.cond, !dbg !3633

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %iter, align 8, !dbg !3634, !tbaa !567
  %call2 = call ptr @dictNext(ptr noundef %2), !dbg !3635
  store ptr %call2, ptr %entry1, align 8, !dbg !3636, !tbaa !567
  %tobool = icmp ne ptr %call2, null, !dbg !3633
  br i1 %tobool, label %while.body, label %while.end, !dbg !3633

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #9, !dbg !3637
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !3621, metadata !DIExpression()), !dbg !3638
  %3 = load ptr, ptr %entry1, align 8, !dbg !3639, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %3, i32 0, i32 1, !dbg !3639
  %4 = load ptr, ptr %v, align 8, !dbg !3639, !tbaa !1262
  store ptr %4, ptr %fi, align 8, !dbg !3638, !tbaa !567
  %5 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3640, !tbaa !567
  %functions3 = getelementptr inbounds %struct.functionsLibCtx, ptr %5, i32 0, i32 1, !dbg !3641
  %6 = load ptr, ptr %functions3, align 8, !dbg !3641, !tbaa !1240
  %7 = load ptr, ptr %fi, align 8, !dbg !3642, !tbaa !567
  %name = getelementptr inbounds %struct.functionInfo, ptr %7, i32 0, i32 0, !dbg !3643
  %8 = load ptr, ptr %name, align 8, !dbg !3643, !tbaa !1169
  %9 = load ptr, ptr %fi, align 8, !dbg !3644, !tbaa !567
  %call4 = call i32 @dictAdd(ptr noundef %6, ptr noundef %8, ptr noundef %9), !dbg !3645
  %10 = load ptr, ptr %fi, align 8, !dbg !3646, !tbaa !567
  %call5 = call i64 @functionMallocSize(ptr noundef %10), !dbg !3647
  %11 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3648, !tbaa !567
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, ptr %11, i32 0, i32 2, !dbg !3649
  %12 = load i64, ptr %cache_memory, align 8, !dbg !3650, !tbaa !1280
  %add = add i64 %12, %call5, !dbg !3650
  store i64 %add, ptr %cache_memory, align 8, !dbg !3650, !tbaa !1280
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #9, !dbg !3651
  br label %while.cond, !dbg !3633, !llvm.loop !3652

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %iter, align 8, !dbg !3653, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %13), !dbg !3654
  %14 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3655, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %14, i32 0, i32 0, !dbg !3656
  %15 = load ptr, ptr %libraries, align 8, !dbg !3656, !tbaa !1245
  %16 = load ptr, ptr %li.addr, align 8, !dbg !3657, !tbaa !567
  %name6 = getelementptr inbounds %struct.functionLibInfo, ptr %16, i32 0, i32 0, !dbg !3658
  %17 = load ptr, ptr %name6, align 8, !dbg !3658, !tbaa !1973
  %18 = load ptr, ptr %li.addr, align 8, !dbg !3659, !tbaa !567
  %call7 = call i32 @dictAdd(ptr noundef %15, ptr noundef %17, ptr noundef %18), !dbg !3660
  %19 = load ptr, ptr %li.addr, align 8, !dbg !3661, !tbaa !567
  %call8 = call i64 @libraryMallocSize(ptr noundef %19), !dbg !3662
  %20 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3663, !tbaa !567
  %cache_memory9 = getelementptr inbounds %struct.functionsLibCtx, ptr %20, i32 0, i32 2, !dbg !3664
  %21 = load i64, ptr %cache_memory9, align 8, !dbg !3665, !tbaa !1280
  %add10 = add i64 %21, %call8, !dbg !3665
  store i64 %add10, ptr %cache_memory9, align 8, !dbg !3665, !tbaa !1280
  call void @llvm.lifetime.start.p0(i64 8, ptr %stats) #9, !dbg !3666
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !3623, metadata !DIExpression()), !dbg !3667
  %22 = load ptr, ptr %lib_ctx.addr, align 8, !dbg !3668, !tbaa !567
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, ptr %22, i32 0, i32 3, !dbg !3669
  %23 = load ptr, ptr %engines_stats, align 8, !dbg !3669, !tbaa !1251
  %24 = load ptr, ptr %li.addr, align 8, !dbg !3670, !tbaa !567
  %ei = getelementptr inbounds %struct.functionLibInfo, ptr %24, i32 0, i32 2, !dbg !3671
  %25 = load ptr, ptr %ei, align 8, !dbg !3671, !tbaa !1189
  %name11 = getelementptr inbounds %struct.engineInfo, ptr %25, i32 0, i32 0, !dbg !3672
  %26 = load ptr, ptr %name11, align 8, !dbg !3672, !tbaa !1402
  %call12 = call ptr @dictFetchValue(ptr noundef %23, ptr noundef %26), !dbg !3673
  store ptr %call12, ptr %stats, align 8, !dbg !3667, !tbaa !567
  %27 = load ptr, ptr %stats, align 8, !dbg !3674, !tbaa !567
  %tobool13 = icmp ne ptr %27, null, !dbg !3674
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !3674

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !3674

cond.false:                                       ; preds = %while.end
  call void @_serverAssert(ptr noundef @.str.85, ptr noundef @.str.3, i32 noundef 320), !dbg !3674
  unreachable, !dbg !3674

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !3674

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %28 = load ptr, ptr %stats, align 8, !dbg !3675, !tbaa !567
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, ptr %28, i32 0, i32 0, !dbg !3676
  %29 = load i64, ptr %n_lib, align 8, !dbg !3677, !tbaa !1271
  %inc = add i64 %29, 1, !dbg !3677
  store i64 %inc, ptr %n_lib, align 8, !dbg !3677, !tbaa !1271
  %30 = load ptr, ptr %li.addr, align 8, !dbg !3678, !tbaa !567
  %functions14 = getelementptr inbounds %struct.functionLibInfo, ptr %30, i32 0, i32 1, !dbg !3678
  %31 = load ptr, ptr %functions14, align 8, !dbg !3678, !tbaa !1457
  %ht_used = getelementptr inbounds %struct.dict, ptr %31, i32 0, i32 2, !dbg !3678
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !3678
  %32 = load i64, ptr %arrayidx, align 8, !dbg !3678, !tbaa !1441
  %33 = load ptr, ptr %li.addr, align 8, !dbg !3678, !tbaa !567
  %functions15 = getelementptr inbounds %struct.functionLibInfo, ptr %33, i32 0, i32 1, !dbg !3678
  %34 = load ptr, ptr %functions15, align 8, !dbg !3678, !tbaa !1457
  %ht_used16 = getelementptr inbounds %struct.dict, ptr %34, i32 0, i32 2, !dbg !3678
  %arrayidx17 = getelementptr inbounds [2 x i64], ptr %ht_used16, i64 0, i64 1, !dbg !3678
  %35 = load i64, ptr %arrayidx17, align 8, !dbg !3678, !tbaa !1441
  %add18 = add i64 %32, %35, !dbg !3678
  %36 = load ptr, ptr %stats, align 8, !dbg !3679, !tbaa !567
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, ptr %36, i32 0, i32 1, !dbg !3680
  %37 = load i64, ptr %n_functions, align 8, !dbg !3681, !tbaa !1266
  %add19 = add i64 %37, %add18, !dbg !3681
  store i64 %add19, ptr %n_functions, align 8, !dbg !3681, !tbaa !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %stats) #9, !dbg !3682
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !3682
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !3682
  ret void, !dbg !3682
}

; Function Attrs: nounwind uwtable
define dso_local void @functionLoadCommand(ptr noundef %c) #1 !dbg !3683 {
entry:
  %c.addr = alloca ptr, align 8
  %replace = alloca i32, align 4
  %argc_pos = alloca i32, align 4
  %next_arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %code = alloca ptr, align 8
  %err = alloca ptr, align 8
  %library_name = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !3685, metadata !DIExpression()), !dbg !3693
  call void @llvm.lifetime.start.p0(i64 4, ptr %replace) #9, !dbg !3694
  tail call void @llvm.dbg.declare(metadata ptr %replace, metadata !3686, metadata !DIExpression()), !dbg !3695
  store i32 0, ptr %replace, align 4, !dbg !3695, !tbaa !1305
  call void @llvm.lifetime.start.p0(i64 4, ptr %argc_pos) #9, !dbg !3696
  tail call void @llvm.dbg.declare(metadata ptr %argc_pos, metadata !3687, metadata !DIExpression()), !dbg !3697
  store i32 2, ptr %argc_pos, align 4, !dbg !3697, !tbaa !1305
  br label %while.cond, !dbg !3698

while.cond:                                       ; preds = %cleanup, %entry
  %0 = load i32, ptr %argc_pos, align 4, !dbg !3699, !tbaa !1305
  %1 = load ptr, ptr %c.addr, align 8, !dbg !3700, !tbaa !567
  %argc = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 9, !dbg !3701
  %2 = load i32, ptr %argc, align 8, !dbg !3701, !tbaa !1702
  %sub = sub nsw i32 %2, 1, !dbg !3702
  %cmp = icmp slt i32 %0, %sub, !dbg !3703
  br i1 %cmp, label %while.body, label %while.end, !dbg !3698

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_arg) #9, !dbg !3704
  tail call void @llvm.dbg.declare(metadata ptr %next_arg, metadata !3688, metadata !DIExpression()), !dbg !3705
  %3 = load ptr, ptr %c.addr, align 8, !dbg !3706, !tbaa !567
  %argv = getelementptr inbounds %struct.client, ptr %3, i32 0, i32 10, !dbg !3707
  %4 = load ptr, ptr %argv, align 8, !dbg !3707, !tbaa !1717
  %5 = load i32, ptr %argc_pos, align 4, !dbg !3708, !tbaa !1305
  %inc = add nsw i32 %5, 1, !dbg !3708
  store i32 %inc, ptr %argc_pos, align 4, !dbg !3708, !tbaa !1305
  %idxprom = sext i32 %5 to i64, !dbg !3706
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom, !dbg !3706
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !3706, !tbaa !567
  store ptr %6, ptr %next_arg, align 8, !dbg !3705, !tbaa !567
  %7 = load ptr, ptr %next_arg, align 8, !dbg !3709, !tbaa !567
  %ptr = getelementptr inbounds %struct.redisObject, ptr %7, i32 0, i32 2, !dbg !3711
  %8 = load ptr, ptr %ptr, align 8, !dbg !3711, !tbaa !1720
  %call = call i32 @strcasecmp(ptr noundef %8, ptr noundef @.str.24) #10, !dbg !3712
  %tobool = icmp ne i32 %call, 0, !dbg !3712
  br i1 %tobool, label %if.end, label %if.then, !dbg !3713

if.then:                                          ; preds = %while.body
  store i32 1, ptr %replace, align 4, !dbg !3714, !tbaa !1305
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3716, !llvm.loop !3717

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %c.addr, align 8, !dbg !3719, !tbaa !567
  %10 = load ptr, ptr %next_arg, align 8, !dbg !3720, !tbaa !567
  %ptr1 = getelementptr inbounds %struct.redisObject, ptr %10, i32 0, i32 2, !dbg !3721
  %11 = load ptr, ptr %ptr1, align 8, !dbg !3721, !tbaa !1720
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %9, ptr noundef @.str.82, ptr noundef %11), !dbg !3722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3723

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_arg) #9, !dbg !3718
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 2, label %while.cond
  ]

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %argc_pos, align 4, !dbg !3724, !tbaa !1305
  %13 = load ptr, ptr %c.addr, align 8, !dbg !3726, !tbaa !567
  %argc2 = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 9, !dbg !3727
  %14 = load i32, ptr %argc2, align 8, !dbg !3727, !tbaa !1702
  %cmp3 = icmp sge i32 %12, %14, !dbg !3728
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3729

if.then4:                                         ; preds = %while.end
  %15 = load ptr, ptr %c.addr, align 8, !dbg !3730, !tbaa !567
  call void @addReplyError(ptr noundef %15, ptr noundef @.str.83), !dbg !3732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !3733

if.end5:                                          ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #9, !dbg !3734
  tail call void @llvm.dbg.declare(metadata ptr %code, metadata !3690, metadata !DIExpression()), !dbg !3735
  %16 = load ptr, ptr %c.addr, align 8, !dbg !3736, !tbaa !567
  %argv6 = getelementptr inbounds %struct.client, ptr %16, i32 0, i32 10, !dbg !3737
  %17 = load ptr, ptr %argv6, align 8, !dbg !3737, !tbaa !1717
  %18 = load i32, ptr %argc_pos, align 4, !dbg !3738, !tbaa !1305
  %idxprom7 = sext i32 %18 to i64, !dbg !3736
  %arrayidx8 = getelementptr inbounds ptr, ptr %17, i64 %idxprom7, !dbg !3736
  %19 = load ptr, ptr %arrayidx8, align 8, !dbg !3736, !tbaa !567
  store ptr %19, ptr %code, align 8, !dbg !3735, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #9, !dbg !3739
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !3691, metadata !DIExpression()), !dbg !3740
  store ptr null, ptr %err, align 8, !dbg !3740, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %library_name) #9, !dbg !3741
  tail call void @llvm.dbg.declare(metadata ptr %library_name, metadata !3692, metadata !DIExpression()), !dbg !3742
  store ptr null, ptr %library_name, align 8, !dbg !3742, !tbaa !567
  %20 = load ptr, ptr %code, align 8, !dbg !3743, !tbaa !567
  %ptr9 = getelementptr inbounds %struct.redisObject, ptr %20, i32 0, i32 2, !dbg !3745
  %21 = load ptr, ptr %ptr9, align 8, !dbg !3745, !tbaa !1720
  %22 = load i32, ptr %replace, align 4, !dbg !3746, !tbaa !1305
  %23 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3747, !tbaa !567
  %call10 = call ptr @functionsCreateWithLibraryCtx(ptr noundef %21, i32 noundef %22, ptr noundef %err, ptr noundef %23), !dbg !3748
  store ptr %call10, ptr %library_name, align 8, !dbg !3749, !tbaa !567
  %tobool11 = icmp ne ptr %call10, null, !dbg !3749
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3750

if.then12:                                        ; preds = %if.end5
  %24 = load ptr, ptr %c.addr, align 8, !dbg !3751, !tbaa !567
  %25 = load ptr, ptr %err, align 8, !dbg !3753, !tbaa !567
  call void @addReplyErrorSds(ptr noundef %24, ptr noundef %25), !dbg !3754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !3755

if.end13:                                         ; preds = %if.end5
  %26 = load i64, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !3756, !tbaa !2221
  %inc14 = add nsw i64 %26, 1, !dbg !3756
  store i64 %inc14, ptr getelementptr inbounds (%struct.redisServer, ptr @server, i32 0, i32 216), align 8, !dbg !3756, !tbaa !2221
  %27 = load ptr, ptr %c.addr, align 8, !dbg !3757, !tbaa !567
  %28 = load ptr, ptr %library_name, align 8, !dbg !3758, !tbaa !567
  call void @addReplyBulkSds(ptr noundef %27, ptr noundef %28), !dbg !3759
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3760
  br label %cleanup15, !dbg !3760

cleanup15:                                        ; preds = %if.end13, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %library_name) #9, !dbg !3760
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #9, !dbg !3760
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #9, !dbg !3760
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup15, %if.then4, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %argc_pos) #9, !dbg !3760
  call void @llvm.lifetime.end.p0(i64 4, ptr %replace) #9, !dbg !3760
  %cleanup.dest20 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest20, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup18, %cleanup18
  ret void, !dbg !3760

unreachable:                                      ; preds = %cleanup18
  unreachable
}

declare !dbg !3761 void @addReplyErrorFormat(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @functionsMemory() #1 !dbg !3764 {
entry:
  %iter = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %engines_nemory = alloca i64, align 8
  %ei = alloca ptr, align 8
  %engine = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #9, !dbg !3774
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !3768, metadata !DIExpression()), !dbg !3775
  %0 = load ptr, ptr @engines, align 8, !dbg !3776, !tbaa !567
  %call = call ptr @dictGetIterator(ptr noundef %0), !dbg !3777
  store ptr %call, ptr %iter, align 8, !dbg !3775, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #9, !dbg !3778
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3769, metadata !DIExpression()), !dbg !3779
  store ptr null, ptr %entry1, align 8, !dbg !3779, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %engines_nemory) #9, !dbg !3780
  tail call void @llvm.dbg.declare(metadata ptr %engines_nemory, metadata !3770, metadata !DIExpression()), !dbg !3781
  store i64 0, ptr %engines_nemory, align 8, !dbg !3781, !tbaa !1441
  br label %while.cond, !dbg !3782

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !3783, !tbaa !567
  %call2 = call ptr @dictNext(ptr noundef %1), !dbg !3784
  store ptr %call2, ptr %entry1, align 8, !dbg !3785, !tbaa !567
  %tobool = icmp ne ptr %call2, null, !dbg !3782
  br i1 %tobool, label %while.body, label %while.end, !dbg !3782

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #9, !dbg !3786
  tail call void @llvm.dbg.declare(metadata ptr %ei, metadata !3771, metadata !DIExpression()), !dbg !3787
  %2 = load ptr, ptr %entry1, align 8, !dbg !3788, !tbaa !567
  %v = getelementptr inbounds %struct.dictEntry, ptr %2, i32 0, i32 1, !dbg !3788
  %3 = load ptr, ptr %v, align 8, !dbg !3788, !tbaa !1262
  store ptr %3, ptr %ei, align 8, !dbg !3787, !tbaa !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #9, !dbg !3789
  tail call void @llvm.dbg.declare(metadata ptr %engine, metadata !3773, metadata !DIExpression()), !dbg !3790
  %4 = load ptr, ptr %ei, align 8, !dbg !3791, !tbaa !567
  %engine3 = getelementptr inbounds %struct.engineInfo, ptr %4, i32 0, i32 1, !dbg !3792
  %5 = load ptr, ptr %engine3, align 8, !dbg !3792, !tbaa !1192
  store ptr %5, ptr %engine, align 8, !dbg !3790, !tbaa !567
  %6 = load ptr, ptr %engine, align 8, !dbg !3793, !tbaa !567
  %get_used_memory = getelementptr inbounds %struct.engine, ptr %6, i32 0, i32 3, !dbg !3794
  %7 = load ptr, ptr %get_used_memory, align 8, !dbg !3794, !tbaa !3795
  %8 = load ptr, ptr %engine, align 8, !dbg !3796, !tbaa !567
  %engine_ctx = getelementptr inbounds %struct.engine, ptr %8, i32 0, i32 0, !dbg !3797
  %9 = load ptr, ptr %engine_ctx, align 8, !dbg !3797, !tbaa !1200
  %call4 = call i64 %7(ptr noundef %9), !dbg !3793
  %10 = load i64, ptr %engines_nemory, align 8, !dbg !3798, !tbaa !1441
  %add = add i64 %10, %call4, !dbg !3798
  store i64 %add, ptr %engines_nemory, align 8, !dbg !3798, !tbaa !1441
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #9, !dbg !3799
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #9, !dbg !3799
  br label %while.cond, !dbg !3782, !llvm.loop !3800

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %iter, align 8, !dbg !3801, !tbaa !567
  call void @dictReleaseIterator(ptr noundef %11), !dbg !3802
  %12 = load i64, ptr %engines_nemory, align 8, !dbg !3803, !tbaa !1441
  call void @llvm.lifetime.end.p0(i64 8, ptr %engines_nemory) #9, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #9, !dbg !3804
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #9, !dbg !3804
  ret i64 %12, !dbg !3805
}

; Function Attrs: nounwind uwtable
define dso_local i64 @functionsMemoryOverhead() #1 !dbg !3806 {
entry:
  %memory_overhead = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %memory_overhead) #9, !dbg !3809
  tail call void @llvm.dbg.declare(metadata ptr %memory_overhead, metadata !3808, metadata !DIExpression()), !dbg !3810
  %0 = load ptr, ptr @engines, align 8, !dbg !3811, !tbaa !567
  %ht_used = getelementptr inbounds %struct.dict, ptr %0, i32 0, i32 2, !dbg !3811
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !3811
  %1 = load i64, ptr %arrayidx, align 8, !dbg !3811, !tbaa !1441
  %2 = load ptr, ptr @engines, align 8, !dbg !3811, !tbaa !567
  %ht_used1 = getelementptr inbounds %struct.dict, ptr %2, i32 0, i32 2, !dbg !3811
  %arrayidx2 = getelementptr inbounds [2 x i64], ptr %ht_used1, i64 0, i64 1, !dbg !3811
  %3 = load i64, ptr %arrayidx2, align 8, !dbg !3811, !tbaa !1441
  %add = add i64 %1, %3, !dbg !3811
  %mul = mul i64 %add, 24, !dbg !3812
  %4 = load ptr, ptr @engines, align 8, !dbg !3813, !tbaa !567
  %ht_size_exp = getelementptr inbounds %struct.dict, ptr %4, i32 0, i32 5, !dbg !3813
  %arrayidx3 = getelementptr inbounds [2 x i8], ptr %ht_size_exp, i64 0, i64 0, !dbg !3813
  %5 = load i8, ptr %arrayidx3, align 2, !dbg !3813, !tbaa !1262
  %conv = sext i8 %5 to i32, !dbg !3813
  %cmp = icmp eq i32 %conv, -1, !dbg !3813
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3813

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3813

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr @engines, align 8, !dbg !3813, !tbaa !567
  %ht_size_exp5 = getelementptr inbounds %struct.dict, ptr %6, i32 0, i32 5, !dbg !3813
  %arrayidx6 = getelementptr inbounds [2 x i8], ptr %ht_size_exp5, i64 0, i64 0, !dbg !3813
  %7 = load i8, ptr %arrayidx6, align 2, !dbg !3813, !tbaa !1262
  %conv7 = sext i8 %7 to i32, !dbg !3813
  %sh_prom = zext i32 %conv7 to i64, !dbg !3813
  %shl = shl i64 1, %sh_prom, !dbg !3813
  br label %cond.end, !dbg !3813

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %shl, %cond.false ], !dbg !3813
  %8 = load ptr, ptr @engines, align 8, !dbg !3813, !tbaa !567
  %ht_size_exp8 = getelementptr inbounds %struct.dict, ptr %8, i32 0, i32 5, !dbg !3813
  %arrayidx9 = getelementptr inbounds [2 x i8], ptr %ht_size_exp8, i64 0, i64 1, !dbg !3813
  %9 = load i8, ptr %arrayidx9, align 1, !dbg !3813, !tbaa !1262
  %conv10 = sext i8 %9 to i32, !dbg !3813
  %cmp11 = icmp eq i32 %conv10, -1, !dbg !3813
  br i1 %cmp11, label %cond.true13, label %cond.false14, !dbg !3813

cond.true13:                                      ; preds = %cond.end
  br label %cond.end20, !dbg !3813

cond.false14:                                     ; preds = %cond.end
  %10 = load ptr, ptr @engines, align 8, !dbg !3813, !tbaa !567
  %ht_size_exp15 = getelementptr inbounds %struct.dict, ptr %10, i32 0, i32 5, !dbg !3813
  %arrayidx16 = getelementptr inbounds [2 x i8], ptr %ht_size_exp15, i64 0, i64 1, !dbg !3813
  %11 = load i8, ptr %arrayidx16, align 1, !dbg !3813, !tbaa !1262
  %conv17 = sext i8 %11 to i32, !dbg !3813
  %sh_prom18 = zext i32 %conv17 to i64, !dbg !3813
  %shl19 = shl i64 1, %sh_prom18, !dbg !3813
  br label %cond.end20, !dbg !3813

cond.end20:                                       ; preds = %cond.false14, %cond.true13
  %cond21 = phi i64 [ 0, %cond.true13 ], [ %shl19, %cond.false14 ], !dbg !3813
  %add22 = add i64 %cond, %cond21, !dbg !3813
  %mul23 = mul i64 %add22, 8, !dbg !3814
  %add24 = add i64 %mul, %mul23, !dbg !3815
  store i64 %add24, ptr %memory_overhead, align 8, !dbg !3810, !tbaa !1441
  %12 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3816, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %12, i32 0, i32 1, !dbg !3816
  %13 = load ptr, ptr %functions, align 8, !dbg !3816, !tbaa !1240
  %ht_used25 = getelementptr inbounds %struct.dict, ptr %13, i32 0, i32 2, !dbg !3816
  %arrayidx26 = getelementptr inbounds [2 x i64], ptr %ht_used25, i64 0, i64 0, !dbg !3816
  %14 = load i64, ptr %arrayidx26, align 8, !dbg !3816, !tbaa !1441
  %15 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3816, !tbaa !567
  %functions27 = getelementptr inbounds %struct.functionsLibCtx, ptr %15, i32 0, i32 1, !dbg !3816
  %16 = load ptr, ptr %functions27, align 8, !dbg !3816, !tbaa !1240
  %ht_used28 = getelementptr inbounds %struct.dict, ptr %16, i32 0, i32 2, !dbg !3816
  %arrayidx29 = getelementptr inbounds [2 x i64], ptr %ht_used28, i64 0, i64 1, !dbg !3816
  %17 = load i64, ptr %arrayidx29, align 8, !dbg !3816, !tbaa !1441
  %add30 = add i64 %14, %17, !dbg !3816
  %mul31 = mul i64 %add30, 24, !dbg !3817
  %18 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3818, !tbaa !567
  %functions32 = getelementptr inbounds %struct.functionsLibCtx, ptr %18, i32 0, i32 1, !dbg !3818
  %19 = load ptr, ptr %functions32, align 8, !dbg !3818, !tbaa !1240
  %ht_size_exp33 = getelementptr inbounds %struct.dict, ptr %19, i32 0, i32 5, !dbg !3818
  %arrayidx34 = getelementptr inbounds [2 x i8], ptr %ht_size_exp33, i64 0, i64 0, !dbg !3818
  %20 = load i8, ptr %arrayidx34, align 2, !dbg !3818, !tbaa !1262
  %conv35 = sext i8 %20 to i32, !dbg !3818
  %cmp36 = icmp eq i32 %conv35, -1, !dbg !3818
  br i1 %cmp36, label %cond.true38, label %cond.false39, !dbg !3818

cond.true38:                                      ; preds = %cond.end20
  br label %cond.end46, !dbg !3818

cond.false39:                                     ; preds = %cond.end20
  %21 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3818, !tbaa !567
  %functions40 = getelementptr inbounds %struct.functionsLibCtx, ptr %21, i32 0, i32 1, !dbg !3818
  %22 = load ptr, ptr %functions40, align 8, !dbg !3818, !tbaa !1240
  %ht_size_exp41 = getelementptr inbounds %struct.dict, ptr %22, i32 0, i32 5, !dbg !3818
  %arrayidx42 = getelementptr inbounds [2 x i8], ptr %ht_size_exp41, i64 0, i64 0, !dbg !3818
  %23 = load i8, ptr %arrayidx42, align 2, !dbg !3818, !tbaa !1262
  %conv43 = sext i8 %23 to i32, !dbg !3818
  %sh_prom44 = zext i32 %conv43 to i64, !dbg !3818
  %shl45 = shl i64 1, %sh_prom44, !dbg !3818
  br label %cond.end46, !dbg !3818

cond.end46:                                       ; preds = %cond.false39, %cond.true38
  %cond47 = phi i64 [ 0, %cond.true38 ], [ %shl45, %cond.false39 ], !dbg !3818
  %24 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3818, !tbaa !567
  %functions48 = getelementptr inbounds %struct.functionsLibCtx, ptr %24, i32 0, i32 1, !dbg !3818
  %25 = load ptr, ptr %functions48, align 8, !dbg !3818, !tbaa !1240
  %ht_size_exp49 = getelementptr inbounds %struct.dict, ptr %25, i32 0, i32 5, !dbg !3818
  %arrayidx50 = getelementptr inbounds [2 x i8], ptr %ht_size_exp49, i64 0, i64 1, !dbg !3818
  %26 = load i8, ptr %arrayidx50, align 1, !dbg !3818, !tbaa !1262
  %conv51 = sext i8 %26 to i32, !dbg !3818
  %cmp52 = icmp eq i32 %conv51, -1, !dbg !3818
  br i1 %cmp52, label %cond.true54, label %cond.false55, !dbg !3818

cond.true54:                                      ; preds = %cond.end46
  br label %cond.end62, !dbg !3818

cond.false55:                                     ; preds = %cond.end46
  %27 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3818, !tbaa !567
  %functions56 = getelementptr inbounds %struct.functionsLibCtx, ptr %27, i32 0, i32 1, !dbg !3818
  %28 = load ptr, ptr %functions56, align 8, !dbg !3818, !tbaa !1240
  %ht_size_exp57 = getelementptr inbounds %struct.dict, ptr %28, i32 0, i32 5, !dbg !3818
  %arrayidx58 = getelementptr inbounds [2 x i8], ptr %ht_size_exp57, i64 0, i64 1, !dbg !3818
  %29 = load i8, ptr %arrayidx58, align 1, !dbg !3818, !tbaa !1262
  %conv59 = sext i8 %29 to i32, !dbg !3818
  %sh_prom60 = zext i32 %conv59 to i64, !dbg !3818
  %shl61 = shl i64 1, %sh_prom60, !dbg !3818
  br label %cond.end62, !dbg !3818

cond.end62:                                       ; preds = %cond.false55, %cond.true54
  %cond63 = phi i64 [ 0, %cond.true54 ], [ %shl61, %cond.false55 ], !dbg !3818
  %add64 = add i64 %cond47, %cond63, !dbg !3818
  %mul65 = mul i64 %add64, 8, !dbg !3819
  %add66 = add i64 %mul31, %mul65, !dbg !3820
  %add67 = add i64 %add66, 32, !dbg !3821
  %30 = load i64, ptr %memory_overhead, align 8, !dbg !3822, !tbaa !1441
  %add68 = add i64 %30, %add67, !dbg !3822
  store i64 %add68, ptr %memory_overhead, align 8, !dbg !3822, !tbaa !1441
  %31 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3823, !tbaa !567
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, ptr %31, i32 0, i32 2, !dbg !3824
  %32 = load i64, ptr %cache_memory, align 8, !dbg !3824, !tbaa !1280
  %33 = load i64, ptr %memory_overhead, align 8, !dbg !3825, !tbaa !1441
  %add69 = add i64 %33, %32, !dbg !3825
  store i64 %add69, ptr %memory_overhead, align 8, !dbg !3825, !tbaa !1441
  %34 = load i64, ptr @engine_cache_memory, align 8, !dbg !3826, !tbaa !1441
  %35 = load i64, ptr %memory_overhead, align 8, !dbg !3827, !tbaa !1441
  %add70 = add i64 %35, %34, !dbg !3827
  store i64 %add70, ptr %memory_overhead, align 8, !dbg !3827, !tbaa !1441
  %36 = load i64, ptr %memory_overhead, align 8, !dbg !3828, !tbaa !1441
  call void @llvm.lifetime.end.p0(i64 8, ptr %memory_overhead) #9, !dbg !3829
  ret i64 %36, !dbg !3830
}

; Function Attrs: nounwind uwtable
define dso_local i64 @functionsNum() #1 !dbg !3831 {
entry:
  %0 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3832, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %0, i32 0, i32 1, !dbg !3832
  %1 = load ptr, ptr %functions, align 8, !dbg !3832, !tbaa !1240
  %ht_used = getelementptr inbounds %struct.dict, ptr %1, i32 0, i32 2, !dbg !3832
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !3832
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3832, !tbaa !1441
  %3 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3832, !tbaa !567
  %functions1 = getelementptr inbounds %struct.functionsLibCtx, ptr %3, i32 0, i32 1, !dbg !3832
  %4 = load ptr, ptr %functions1, align 8, !dbg !3832, !tbaa !1240
  %ht_used2 = getelementptr inbounds %struct.dict, ptr %4, i32 0, i32 2, !dbg !3832
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %ht_used2, i64 0, i64 1, !dbg !3832
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !3832, !tbaa !1441
  %add = add i64 %2, %5, !dbg !3832
  ret i64 %add, !dbg !3833
}

; Function Attrs: nounwind uwtable
define dso_local i64 @functionsLibNum() #1 !dbg !3834 {
entry:
  %0 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3835, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %0, i32 0, i32 0, !dbg !3835
  %1 = load ptr, ptr %libraries, align 8, !dbg !3835, !tbaa !1245
  %ht_used = getelementptr inbounds %struct.dict, ptr %1, i32 0, i32 2, !dbg !3835
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !3835
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3835, !tbaa !1441
  %3 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3835, !tbaa !567
  %libraries1 = getelementptr inbounds %struct.functionsLibCtx, ptr %3, i32 0, i32 0, !dbg !3835
  %4 = load ptr, ptr %libraries1, align 8, !dbg !3835, !tbaa !1245
  %ht_used2 = getelementptr inbounds %struct.dict, ptr %4, i32 0, i32 2, !dbg !3835
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %ht_used2, i64 0, i64 1, !dbg !3835
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !3835, !tbaa !1441
  %add = add i64 %2, %5, !dbg !3835
  ret i64 %add, !dbg !3836
}

; Function Attrs: nounwind uwtable
define dso_local ptr @functionsLibGet() #1 !dbg !3837 {
entry:
  %0 = load ptr, ptr @curr_functions_lib_ctx, align 8, !dbg !3840, !tbaa !567
  %libraries = getelementptr inbounds %struct.functionsLibCtx, ptr %0, i32 0, i32 0, !dbg !3841
  %1 = load ptr, ptr %libraries, align 8, !dbg !3841, !tbaa !1245
  ret ptr %1, !dbg !3842
}

; Function Attrs: nounwind uwtable
define dso_local i64 @functionsLibCtxfunctionsLen(ptr noundef %functions_ctx) #1 !dbg !3843 {
entry:
  %functions_ctx.addr = alloca ptr, align 8
  store ptr %functions_ctx, ptr %functions_ctx.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %functions_ctx.addr, metadata !3847, metadata !DIExpression()), !dbg !3848
  %0 = load ptr, ptr %functions_ctx.addr, align 8, !dbg !3849, !tbaa !567
  %functions = getelementptr inbounds %struct.functionsLibCtx, ptr %0, i32 0, i32 1, !dbg !3849
  %1 = load ptr, ptr %functions, align 8, !dbg !3849, !tbaa !1240
  %ht_used = getelementptr inbounds %struct.dict, ptr %1, i32 0, i32 2, !dbg !3849
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ht_used, i64 0, i64 0, !dbg !3849
  %2 = load i64, ptr %arrayidx, align 8, !dbg !3849, !tbaa !1441
  %3 = load ptr, ptr %functions_ctx.addr, align 8, !dbg !3849, !tbaa !567
  %functions1 = getelementptr inbounds %struct.functionsLibCtx, ptr %3, i32 0, i32 1, !dbg !3849
  %4 = load ptr, ptr %functions1, align 8, !dbg !3849, !tbaa !1240
  %ht_used2 = getelementptr inbounds %struct.dict, ptr %4, i32 0, i32 2, !dbg !3849
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %ht_used2, i64 0, i64 1, !dbg !3849
  %5 = load i64, ptr %arrayidx3, align 8, !dbg !3849, !tbaa !1441
  %add = add i64 %2, %5, !dbg !3849
  ret i64 %add, !dbg !3850
}

; Function Attrs: nounwind uwtable
define dso_local i32 @functionsInit() #1 !dbg !3851 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @dictCreate(ptr noundef @engineDictType), !dbg !3852
  store ptr %call, ptr @engines, align 8, !dbg !3853, !tbaa !567
  %call1 = call i32 (...) @luaEngineInitEngine(), !dbg !3854
  %cmp = icmp ne i32 %call1, 0, !dbg !3856
  br i1 %cmp, label %if.then, label %if.end, !dbg !3857

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !3858
  br label %return, !dbg !3858

if.end:                                           ; preds = %entry
  %call2 = call ptr @functionsLibCtxCreate(), !dbg !3860
  store ptr %call2, ptr @curr_functions_lib_ctx, align 8, !dbg !3861, !tbaa !567
  store i32 0, ptr %retval, align 4, !dbg !3862
  br label %return, !dbg !3862

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !3863
  ret i32 %0, !dbg !3863
}

declare !dbg !3864 i32 @luaEngineInitEngine(...) #0

declare !dbg !3865 void @addReplySetLen(ptr noundef, i64 noundef) #0

declare !dbg !3866 void @addReplyStatus(ptr noundef, ptr noundef) #0

declare !dbg !3867 i32 @dictDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i64 @functionMallocSize(ptr noundef %fi) #1 !dbg !3870 {
entry:
  %fi.addr = alloca ptr, align 8
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %fi.addr, metadata !3874, metadata !DIExpression()), !dbg !3875
  %0 = load ptr, ptr %fi.addr, align 8, !dbg !3876, !tbaa !567
  %call = call i64 @je_malloc_usable_size(ptr noundef %0) #9, !dbg !3876
  %1 = load ptr, ptr %fi.addr, align 8, !dbg !3877, !tbaa !567
  %name = getelementptr inbounds %struct.functionInfo, ptr %1, i32 0, i32 0, !dbg !3878
  %2 = load ptr, ptr %name, align 8, !dbg !3878, !tbaa !1169
  %call1 = call i64 @sdsZmallocSize(ptr noundef %2), !dbg !3879
  %add = add i64 %call, %call1, !dbg !3880
  %3 = load ptr, ptr %fi.addr, align 8, !dbg !3881, !tbaa !567
  %desc = getelementptr inbounds %struct.functionInfo, ptr %3, i32 0, i32 3, !dbg !3882
  %4 = load ptr, ptr %desc, align 8, !dbg !3882, !tbaa !1176
  %tobool = icmp ne ptr %4, null, !dbg !3881
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3881

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %fi.addr, align 8, !dbg !3883, !tbaa !567
  %desc2 = getelementptr inbounds %struct.functionInfo, ptr %5, i32 0, i32 3, !dbg !3884
  %6 = load ptr, ptr %desc2, align 8, !dbg !3884, !tbaa !1176
  %call3 = call i64 @sdsZmallocSize(ptr noundef %6), !dbg !3885
  br label %cond.end, !dbg !3881

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3881

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call3, %cond.true ], [ 0, %cond.false ], !dbg !3881
  %add4 = add i64 %add, %cond, !dbg !3886
  %7 = load ptr, ptr %fi.addr, align 8, !dbg !3887, !tbaa !567
  %li = getelementptr inbounds %struct.functionInfo, ptr %7, i32 0, i32 2, !dbg !3888
  %8 = load ptr, ptr %li, align 8, !dbg !3888, !tbaa !1187
  %ei = getelementptr inbounds %struct.functionLibInfo, ptr %8, i32 0, i32 2, !dbg !3889
  %9 = load ptr, ptr %ei, align 8, !dbg !3889, !tbaa !1189
  %engine = getelementptr inbounds %struct.engineInfo, ptr %9, i32 0, i32 1, !dbg !3890
  %10 = load ptr, ptr %engine, align 8, !dbg !3890, !tbaa !1192
  %get_function_memory_overhead = getelementptr inbounds %struct.engine, ptr %10, i32 0, i32 4, !dbg !3891
  %11 = load ptr, ptr %get_function_memory_overhead, align 8, !dbg !3891, !tbaa !3892
  %12 = load ptr, ptr %fi.addr, align 8, !dbg !3893, !tbaa !567
  %function = getelementptr inbounds %struct.functionInfo, ptr %12, i32 0, i32 1, !dbg !3894
  %13 = load ptr, ptr %function, align 8, !dbg !3894, !tbaa !1203
  %call5 = call i64 %11(ptr noundef %13), !dbg !3887
  %add6 = add i64 %add4, %call5, !dbg !3895
  ret i64 %add6, !dbg !3896
}

declare !dbg !3897 ptr @dictUnlink(ptr noundef, ptr noundef) #0

declare !dbg !3900 void @dictFreeUnlinkedEntry(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i64 @libraryMallocSize(ptr noundef %li) #1 !dbg !3903 {
entry:
  %li.addr = alloca ptr, align 8
  store ptr %li, ptr %li.addr, align 8, !tbaa !567
  tail call void @llvm.dbg.declare(metadata ptr %li.addr, metadata !3907, metadata !DIExpression()), !dbg !3908
  %0 = load ptr, ptr %li.addr, align 8, !dbg !3909, !tbaa !567
  %call = call i64 @je_malloc_usable_size(ptr noundef %0) #9, !dbg !3909
  %1 = load ptr, ptr %li.addr, align 8, !dbg !3910, !tbaa !567
  %name = getelementptr inbounds %struct.functionLibInfo, ptr %1, i32 0, i32 0, !dbg !3911
  %2 = load ptr, ptr %name, align 8, !dbg !3911, !tbaa !1973
  %call1 = call i64 @sdsZmallocSize(ptr noundef %2), !dbg !3912
  %add = add i64 %call, %call1, !dbg !3913
  %3 = load ptr, ptr %li.addr, align 8, !dbg !3914, !tbaa !567
  %code = getelementptr inbounds %struct.functionLibInfo, ptr %3, i32 0, i32 3, !dbg !3915
  %4 = load ptr, ptr %code, align 8, !dbg !3915, !tbaa !2074
  %call2 = call i64 @sdsZmallocSize(ptr noundef %4), !dbg !3916
  %add3 = add i64 %add, %call2, !dbg !3917
  ret i64 %add3, !dbg !3918
}

declare !dbg !3919 i32 @getLongLongFromObject(ptr noundef, ptr noundef) #0

declare !dbg !3923 i32 @scriptPrepareForRun(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #0

declare !dbg !3926 void @scriptResetRun(ptr noundef) #0

declare !dbg !3929 ptr @listCreate() #0

declare !dbg !3932 ptr @listAddNodeTail(ptr noundef, ptr noundef) #0

declare !dbg !3935 void @listRelease(ptr noundef) #0

declare !dbg !3938 void @listDelNode(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!549, !550, !551, !552, !553, !554}
!llvm.ident = !{!555}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "engineDictType", scope: !2, file: !3, line: 66, type: !120, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !64, globals: !117, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "functions.c", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "ea8bdf38aef474c4bcc87338df76d04c")
!4 = !{!5, !15, !36, !42, !48, !59}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./connection.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "a5db6b482abb430f191170acbda520ea")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "CONN_STATE_NONE", value: 0)
!10 = !DIEnumerator(name: "CONN_STATE_CONNECTING", value: 1)
!11 = !DIEnumerator(name: "CONN_STATE_ACCEPTING", value: 2)
!12 = !DIEnumerator(name: "CONN_STATE_CONNECTED", value: 3)
!13 = !DIEnumerator(name: "CONN_STATE_CLOSED", value: 4)
!14 = !DIEnumerator(name: "CONN_STATE_ERROR", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 2109, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./server.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "d13810607e8b272ce8c5554655a1a06b")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!18 = !DIEnumerator(name: "COMMAND_GROUP_GENERIC", value: 0)
!19 = !DIEnumerator(name: "COMMAND_GROUP_STRING", value: 1)
!20 = !DIEnumerator(name: "COMMAND_GROUP_LIST", value: 2)
!21 = !DIEnumerator(name: "COMMAND_GROUP_SET", value: 3)
!22 = !DIEnumerator(name: "COMMAND_GROUP_SORTED_SET", value: 4)
!23 = !DIEnumerator(name: "COMMAND_GROUP_HASH", value: 5)
!24 = !DIEnumerator(name: "COMMAND_GROUP_PUBSUB", value: 6)
!25 = !DIEnumerator(name: "COMMAND_GROUP_TRANSACTIONS", value: 7)
!26 = !DIEnumerator(name: "COMMAND_GROUP_CONNECTION", value: 8)
!27 = !DIEnumerator(name: "COMMAND_GROUP_SERVER", value: 9)
!28 = !DIEnumerator(name: "COMMAND_GROUP_SCRIPTING", value: 10)
!29 = !DIEnumerator(name: "COMMAND_GROUP_HYPERLOGLOG", value: 11)
!30 = !DIEnumerator(name: "COMMAND_GROUP_CLUSTER", value: 12)
!31 = !DIEnumerator(name: "COMMAND_GROUP_SENTINEL", value: 13)
!32 = !DIEnumerator(name: "COMMAND_GROUP_GEO", value: 14)
!33 = !DIEnumerator(name: "COMMAND_GROUP_STREAM", value: 15)
!34 = !DIEnumerator(name: "COMMAND_GROUP_BITMAP", value: 16)
!35 = !DIEnumerator(name: "COMMAND_GROUP_MODULE", value: 17)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 1982, baseType: !7, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "KSPEC_BS_INVALID", value: 0)
!39 = !DIEnumerator(name: "KSPEC_BS_UNKNOWN", value: 1)
!40 = !DIEnumerator(name: "KSPEC_BS_INDEX", value: 2)
!41 = !DIEnumerator(name: "KSPEC_BS_KEYWORD", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 1990, baseType: !7, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "KSPEC_FK_INVALID", value: 0)
!45 = !DIEnumerator(name: "KSPEC_FK_UNKNOWN", value: 1)
!46 = !DIEnumerator(name: "KSPEC_FK_RANGE", value: 2)
!47 = !DIEnumerator(name: "KSPEC_FK_KEYNUM", value: 3)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 2047, baseType: !7, size: 32, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "ARG_TYPE_STRING", value: 0)
!51 = !DIEnumerator(name: "ARG_TYPE_INTEGER", value: 1)
!52 = !DIEnumerator(name: "ARG_TYPE_DOUBLE", value: 2)
!53 = !DIEnumerator(name: "ARG_TYPE_KEY", value: 3)
!54 = !DIEnumerator(name: "ARG_TYPE_PATTERN", value: 4)
!55 = !DIEnumerator(name: "ARG_TYPE_UNIX_TIME", value: 5)
!56 = !DIEnumerator(name: "ARG_TYPE_PURE_TOKEN", value: 6)
!57 = !DIEnumerator(name: "ARG_TYPE_ONEOF", value: 7)
!58 = !DIEnumerator(name: "ARG_TYPE_BLOCK", value: 8)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 36, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "restorePolicy_Flush", value: 0)
!62 = !DIEnumerator(name: "restorePolicy_Append", value: 1)
!63 = !DIEnumerator(name: "restorePolicy_Replace", value: 2)
!64 = !{!65, !66, !68, !70, !71, !86, !96, !105, !114}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !73, line: 51, size: 24, elements: !74)
!73 = !DIFile(filename: "./sds.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "6f1c77e1387f64b3d0932b6a429e2e08")
!74 = !{!75, !80, !81, !82}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !72, file: !73, line: 52, baseType: !76, size: 8)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !77, line: 24, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !79, line: 38, baseType: !67)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !72, file: !73, line: 53, baseType: !76, size: 8, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !73, line: 54, baseType: !67, size: 8, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !72, file: !73, line: 55, baseType: !83, offset: 24)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: -1)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !73, line: 57, size: 40, elements: !88)
!88 = !{!89, !93, !94, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !73, line: 58, baseType: !90, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !77, line: 25, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !79, line: 40, baseType: !92)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !87, file: !73, line: 59, baseType: !90, size: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !73, line: 60, baseType: !67, size: 8, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !87, file: !73, line: 61, baseType: !83, offset: 40)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !73, line: 63, size: 72, elements: !98)
!98 = !{!99, !102, !103, !104}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !97, file: !73, line: 64, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 26, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !79, line: 42, baseType: !7)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !97, file: !73, line: 65, baseType: !100, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !73, line: 66, baseType: !67, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !97, file: !73, line: 67, baseType: !83, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !73, line: 69, size: 136, elements: !107)
!107 = !{!108, !111, !112, !113}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !73, line: 70, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !77, line: 27, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !79, line: 45, baseType: !70)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !106, file: !73, line: 71, baseType: !109, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !73, line: 72, baseType: !67, size: 8, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !106, file: !73, line: 73, baseType: !83, offset: 136)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !65}
!117 = !{!0, !118, !197, !199, !201, !203, !208, !213, !218, !223, !228, !230, !235, !240, !242, !244, !249, !251, !256, !258, !263, !268, !273, !278, !283, !285, !290, !292, !297, !299, !301, !303, !308, !313, !318, !323, !325, !327, !329, !334, !339, !344, !349, !354, !359, !364, !369, !374, !379, !384, !389, !394, !396, !401, !403, !405, !410, !412, !417, !419, !421, !423, !425, !430, !435, !440, !442, !444, !449, !451, !456, !458, !463, !465, !467, !472, !477, !482, !487, !489, !491, !493, !495, !500, !502, !507, !512, !514, !516, !518, !528, !530, !532, !534, !536, !538, !540, !545, !547}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "functionDictType", scope: !2, file: !3, line: 76, type: !120, isLocal: false, isDefinition: true)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !121, line: 74, baseType: !122)
!121 = !DIFile(filename: "./dict.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "95211ac57a0b87e469ab18f9a328461b")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !121, line: 63, size: 512, elements: !123)
!123 = !{!124, !130, !176, !177, !182, !186, !187, !193}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !122, file: !121, line: 64, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!109, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !122, file: !121, line: 65, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!65, !134, !128}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !121, line: 61, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !121, line: 79, size: 448, elements: !137)
!137 = !{!138, !140, !166, !168, !169, !173}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !121, line: 80, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !136, file: !121, line: 82, baseType: !141, size: 128, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !164)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !121, line: 59, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !121, line: 47, size: 192, elements: !146)
!146 = !{!147, !148, !160, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !145, file: !121, line: 48, baseType: !65, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !145, file: !121, line: 54, baseType: !149, size: 64, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !121, line: 49, size: 64, elements: !150)
!150 = !{!151, !152, !153, !158}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !121, line: 50, baseType: !65, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !149, file: !121, line: 51, baseType: !109, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !149, file: !121, line: 52, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !155, line: 27, baseType: !156)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !79, line: 44, baseType: !157)
!157 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !149, file: !121, line: 53, baseType: !159, size: 64)
!159 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !121, line: 55, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !145, file: !121, line: 56, baseType: !163, offset: 192)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !84)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !136, file: !121, line: 83, baseType: !167, size: 128, offset: 192)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !164)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !136, file: !121, line: 85, baseType: !157, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !136, file: !121, line: 88, baseType: !170, size: 16, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !155, line: 25, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !79, line: 39, baseType: !172)
!172 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !136, file: !121, line: 89, baseType: !174, size: 16, offset: 400)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 16, elements: !164)
!175 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !122, file: !121, line: 66, baseType: !131, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !122, file: !121, line: 67, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !134, !128, !128}
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !122, file: !121, line: 68, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !134, !65}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !122, file: !121, line: 69, baseType: !183, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !122, file: !121, line: 70, baseType: !188, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!181, !191, !159}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !192, line: 70, baseType: !70)
!192 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !122, file: !121, line: 73, baseType: !194, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!191, !134}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "engineStatsDictType", scope: !2, file: !3, line: 86, type: !120, isLocal: false, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "libraryFunctionDictType", scope: !2, file: !3, line: 96, type: !120, isLocal: false, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "librariesDictType", scope: !2, file: !3, line: 106, type: !120, isLocal: false, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 856, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 107)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 312, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 39)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 120, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 15)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 96, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 12)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 412, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 264, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 33)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !215, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 40, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 5)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 8)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !220, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !237, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 16)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 470, type: !246, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 72, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 9)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 517, type: !220, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 519, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 288, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 36)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 525, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 20)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 547, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 104, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 13)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 549, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 56, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 7)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 552, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 80, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 10)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 561, type: !220, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 48, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 6)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !3, line: 573, type: !270, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !3, line: 590, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 144, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 18)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 729, type: !275, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !3, line: 731, type: !237, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !3, line: 733, type: !287, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 736, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 616, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 77)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !3, line: 743, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 344, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 43)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !3, line: 754, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 184, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 23)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !3, line: 758, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 232, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 29)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !3, line: 763, type: !310, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 800, type: !232, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 802, type: !287, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 807, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 47)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 822, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 248, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 31)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 823, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 504, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 63)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !3, line: 824, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 176, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 22)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !3, line: 825, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 240, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 30)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !3, line: 826, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 304, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 38)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !3, line: 827, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 424, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 53)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !3, line: 828, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 152, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 19)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 829, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 328, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 41)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !3, line: 830, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 208, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 26)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !3, line: 831, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 168, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 21)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 832, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 336, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 42)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 833, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 744, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 93)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 834, type: !287, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 835, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 472, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 59)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !3, line: 836, type: !265, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !3, line: 837, type: !210, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !3, line: 838, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 400, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 50)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !3, line: 839, type: !386, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !3, line: 840, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 432, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 54)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 841, type: !232, isLocal: true, isDefinition: true)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !3, line: 842, type: !210, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !3, line: 843, type: !366, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !3, line: 844, type: !351, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !3, line: 845, type: !427, isLocal: true, isDefinition: true)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 688, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 86)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !3, line: 846, type: !432, isLocal: true, isDefinition: true)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 568, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 71)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !3, line: 847, type: !437, isLocal: true, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 392, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 49)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !3, line: 848, type: !331, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !3, line: 849, type: !232, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 850, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 920, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 115)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !3, line: 851, type: !371, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !3, line: 852, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 824, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 103)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !3, line: 853, type: !341, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !3, line: 854, type: !460, isLocal: true, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 352, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 44)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !3, line: 855, type: !391, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 856, type: !453, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !3, line: 857, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 808, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 101)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !3, line: 858, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 520, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 65)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !3, line: 887, type: !479, isLocal: true, isDefinition: true)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 24, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 3)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !3, line: 888, type: !484, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 200, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 25)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !3, line: 893, type: !484, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !3, line: 910, type: !287, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !3, line: 912, type: !341, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !3, line: 919, type: !225, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !3, line: 924, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 216, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 27)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !3, line: 970, type: !346, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !3, line: 978, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 224, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 28)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !3, line: 992, type: !509, isLocal: true, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 192, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 24)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1002, type: !497, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1043, type: !484, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1048, type: !484, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "curr_functions_lib_ctx", scope: !2, file: !3, line: 123, type: !520, isLocal: true, isDefinition: true)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionsLibCtx", file: !16, line: 932, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionsLibCtx", file: !3, line: 53, size: 256, elements: !523)
!523 = !{!524, !525, !526, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "libraries", scope: !522, file: !3, line: 54, baseType: !134, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !522, file: !3, line: 55, baseType: !134, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cache_memory", scope: !522, file: !3, line: 56, baseType: !191, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "engines_stats", scope: !522, file: !3, line: 57, baseType: !134, size: 64, offset: 192)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "engines", scope: !2, file: !3, line: 117, type: !134, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "engine_cache_memory", scope: !2, file: !3, line: 40, type: !191, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !215, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !287, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 622, type: !366, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !3, line: 630, type: !504, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !3, line: 634, type: !542, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 416, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 52)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !225, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !3, line: 345, type: !376, isLocal: true, isDefinition: true)
!549 = !{i32 7, !"Dwarf Version", i32 5}
!550 = !{i32 2, !"Debug Info Version", i32 3}
!551 = !{i32 1, !"wchar_size", i32 4}
!552 = !{i32 8, !"PIC Level", i32 2}
!553 = !{i32 7, !"PIE Level", i32 2}
!554 = !{i32 7, !"uwtable", i32 2}
!555 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!556 = distinct !DISubprogram(name: "engineStatsDispose", scope: !3, file: !3, line: 136, type: !184, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(name: "d", arg: 1, scope: !556, file: !3, line: 136, type: !134)
!559 = !DILocalVariable(name: "obj", arg: 2, scope: !556, file: !3, line: 136, type: !65)
!560 = !DILocalVariable(name: "stats", scope: !556, file: !3, line: 138, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionsLibEngineStats", file: !3, line: 51, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionsLibEngineStats", file: !3, line: 48, size: 128, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "n_lib", scope: !563, file: !3, line: 49, baseType: !191, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "n_functions", scope: !563, file: !3, line: 50, baseType: !191, size: 64, offset: 64)
!567 = !{!568, !568, i64 0}
!568 = !{!"any pointer", !569, i64 0}
!569 = !{!"omnipotent char", !570, i64 0}
!570 = !{!"Simple C/C++ TBAA"}
!571 = !DILocation(line: 136, column: 38, scope: !556)
!572 = !DILocation(line: 136, column: 47, scope: !556)
!573 = !DILocation(line: 137, column: 5, scope: !556)
!574 = !DILocation(line: 138, column: 5, scope: !556)
!575 = !DILocation(line: 138, column: 30, scope: !556)
!576 = !DILocation(line: 138, column: 38, scope: !556)
!577 = !DILocation(line: 139, column: 11, scope: !556)
!578 = !DILocation(line: 139, column: 5, scope: !556)
!579 = !DILocation(line: 140, column: 1, scope: !556)
!580 = distinct !DISubprogram(name: "engineFunctionDispose", scope: !3, file: !3, line: 143, type: !184, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!581 = !{!582, !583, !584, !1155}
!582 = !DILocalVariable(name: "d", arg: 1, scope: !580, file: !3, line: 143, type: !134)
!583 = !DILocalVariable(name: "obj", arg: 2, scope: !580, file: !3, line: 143, type: !65)
!584 = !DILocalVariable(name: "fi", scope: !580, file: !3, line: 148, type: !585)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionInfo", file: !587, line: 100, baseType: !588)
!587 = !DIFile(filename: "./functions.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "d8573238def7356632ee8104480e4948")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionInfo", file: !587, line: 93, size: 320, elements: !589)
!589 = !{!590, !592, !593, !1153, !1154}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !587, line: 94, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !73, line: 43, baseType: !68)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !588, file: !587, line: 95, baseType: !65, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !588, file: !587, line: 97, baseType: !594, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionLibInfo", file: !587, line: 50, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionLibInfo", file: !587, line: 104, size: 256, elements: !597)
!597 = !{!598, !599, !600, !1152}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !596, file: !587, line: 105, baseType: !591, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !596, file: !587, line: 106, baseType: !134, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !596, file: !587, line: 107, baseType: !601, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "engineInfo", file: !587, line: 89, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "engineInfo", file: !587, line: 85, size: 192, elements: !604)
!604 = !{!605, !606, !1151}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !603, file: !587, line: 86, baseType: !591, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !603, file: !587, line: 87, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "engine", file: !587, line: 81, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "engine", file: !587, line: 52, size: 448, elements: !610)
!610 = !{!611, !612, !617, !1141, !1145, !1146, !1147}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "engine_ctx", scope: !609, file: !587, line: 54, baseType: !65, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !609, file: !587, line: 58, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!181, !65, !594, !591, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !609, file: !587, line: 65, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !621, !65, !65, !837, !191, !837, !191}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptRunCtx", file: !623, line: 68, baseType: !624)
!623 = !DIFile(filename: "./script.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "498b316688bb230baecb45583d63a38f")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptRunCtx", file: !623, line: 70, size: 384, elements: !625)
!625 = !{!626, !629, !1136, !1137, !1138, !1139, !1140}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "funcname", scope: !624, file: !623, line: 71, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !624, file: !623, line: 72, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !16, line: 1193, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !16, line: 1084, size: 5888, elements: !633)
!633 = !{!634, !635, !636, !778, !779, !822, !832, !833, !834, !835, !836, !838, !839, !840, !841, !842, !993, !994, !995, !1004, !1005, !1006, !1007, !1008, !1010, !1011, !1012, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1060, !1061, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1097, !1098, !1099, !1100, !1119, !1120, !1121, !1122, !1129, !1130, !1131, !1132, !1133, !1134, !1135}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !632, file: !16, line: 1085, baseType: !109, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !16, line: 1086, baseType: !109, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !632, file: !16, line: 1087, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !640)
!640 = !{!641, !768, !770, !771, !772, !773, !774, !775, !776, !777}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !6, line: 78, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !645)
!645 = !{!646, !709, !718, !722, !733, !737, !738, !742, !746, !747, !751, !755, !762, !763, !764}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !644, file: !6, line: 60, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !650, !181, !65, !181}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !652, line: 99, size: 640, elements: !653)
!652 = !DIFile(filename: "./ae.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "0f4d2ec594d44156c6b13a7599803b6c")
!653 = !{!654, !655, !656, !658, !669, !676, !700, !701, !702, !707, !708}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !651, file: !652, line: 100, baseType: !181, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !651, file: !652, line: 101, baseType: !181, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !651, file: !652, line: 102, baseType: !657, size: 64, offset: 64)
!657 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !651, file: !652, line: 103, baseType: !659, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !652, line: 77, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !652, line: 72, size: 256, elements: !662)
!662 = !{!663, !664, !667, !668}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !661, file: !652, line: 73, baseType: !181, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !661, file: !652, line: 74, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !652, line: 66, baseType: !648)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !661, file: !652, line: 75, baseType: !665, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !661, file: !652, line: 76, baseType: !65, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !651, file: !652, line: 104, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !652, line: 96, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !652, line: 93, size: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !672, file: !652, line: 94, baseType: !181, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !672, file: !652, line: 95, baseType: !181, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !651, file: !652, line: 105, baseType: !677, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !652, line: 90, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !652, line: 80, size: 512, elements: !680)
!680 = !{!681, !682, !685, !690, !695, !696, !698, !699}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !679, file: !652, line: 81, baseType: !657, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !679, file: !652, line: 82, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !684, line: 22, baseType: !109)
!684 = !DIFile(filename: "./monotonic.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "3cdff2e2cfd6ca5b26e49c070f6f4e8f")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !679, file: !652, line: 83, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !652, line: 67, baseType: !688)
!688 = !DISubroutineType(types: !689)
!689 = !{!181, !650, !657, !65}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !679, file: !652, line: 84, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !652, line: 68, baseType: !693)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !650, !65}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !679, file: !652, line: 85, baseType: !65, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !679, file: !652, line: 86, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !652, line: 87, baseType: !697, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !679, file: !652, line: 88, baseType: !181, size: 32, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !651, file: !652, line: 106, baseType: !181, size: 32, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !651, file: !652, line: 107, baseType: !65, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !651, file: !652, line: 108, baseType: !703, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !652, line: 69, baseType: !705)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !650}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !651, file: !652, line: 109, baseType: !703, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !652, line: 110, baseType: !181, size: 32, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !644, file: !6, line: 61, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!181, !713, !627, !181, !627, !714}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !713}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !644, file: !6, line: 62, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!181, !713, !128, !191}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !644, file: !6, line: 63, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!181, !713, !726, !181}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !729, line: 26, size: 128, elements: !730)
!729 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !728, file: !729, line: 28, baseType: !65, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !728, file: !729, line: 29, baseType: !191, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !644, file: !6, line: 64, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!181, !713, !65, !191}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !644, file: !6, line: 65, baseType: !715, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !644, file: !6, line: 66, baseType: !739, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!181, !713, !714}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !644, file: !6, line: 67, baseType: !743, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!181, !713, !714, !181}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !644, file: !6, line: 68, baseType: !739, size: 64, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !644, file: !6, line: 69, baseType: !748, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!627, !713}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !644, file: !6, line: 70, baseType: !752, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!181, !713, !627, !181, !657}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !644, file: !6, line: 71, baseType: !756, size: 64, offset: 704)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!759, !713, !68, !759, !657}
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !760, line: 108, baseType: !761)
!760 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !79, line: 194, baseType: !157)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !644, file: !6, line: 72, baseType: !756, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !644, file: !6, line: 73, baseType: !756, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !644, file: !6, line: 74, baseType: !765, size: 64, offset: 896)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!181, !713}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !639, file: !6, line: 79, baseType: !769, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !6, line: 80, baseType: !172, size: 16, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !639, file: !6, line: 81, baseType: !172, size: 16, offset: 112)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !639, file: !6, line: 82, baseType: !181, size: 32, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !639, file: !6, line: 83, baseType: !65, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !639, file: !6, line: 84, baseType: !714, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !639, file: !6, line: 85, baseType: !714, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !639, file: !6, line: 86, baseType: !714, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !639, file: !6, line: 87, baseType: !181, size: 32, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !632, file: !16, line: 1088, baseType: !181, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !632, file: !16, line: 1089, baseType: !780, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !16, line: 929, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !16, line: 918, size: 640, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !818}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !782, file: !16, line: 919, baseType: !134, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !782, file: !16, line: 920, baseType: !134, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !782, file: !16, line: 921, baseType: !134, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !782, file: !16, line: 922, baseType: !134, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !782, file: !16, line: 923, baseType: !134, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !782, file: !16, line: 924, baseType: !181, size: 32, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !782, file: !16, line: 925, baseType: !657, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !782, file: !16, line: 926, baseType: !70, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !782, file: !16, line: 927, baseType: !793, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !795, line: 54, baseType: !796)
!795 = !DIFile(filename: "./adlist.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "7a1b206772988edd77b3a60961c7439d")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !795, line: 47, size: 384, elements: !797)
!797 = !{!798, !807, !808, !812, !813, !817}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !796, file: !795, line: 48, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !795, line: 40, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !795, line: 36, size: 192, elements: !802)
!802 = !{!803, !805, !806}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !801, file: !795, line: 37, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !795, line: 38, baseType: !804, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !801, file: !795, line: 39, baseType: !65, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !796, file: !795, line: 49, baseType: !799, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !796, file: !795, line: 50, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!65, !65}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !796, file: !795, line: 51, baseType: !114, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !796, file: !795, line: 52, baseType: !814, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!181, !65, !65}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !796, file: !795, line: 53, baseType: !70, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !782, file: !16, line: 928, baseType: !819, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !16, line: 913, baseType: !821)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !16, line: 913, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !16, line: 1090, baseType: !823, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !16, line: 858, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !16, line: 850, size: 128, elements: !826)
!826 = !{!827, !828, !829, !830, !831}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !825, file: !16, line: 851, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !825, file: !16, line: 852, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !825, file: !16, line: 853, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !825, file: !16, line: 856, baseType: !181, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !825, file: !16, line: 857, baseType: !65, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !632, file: !16, line: 1091, baseType: !591, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !632, file: !16, line: 1092, baseType: !191, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !632, file: !16, line: 1093, baseType: !191, size: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !632, file: !16, line: 1094, baseType: !181, size: 32, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !632, file: !16, line: 1095, baseType: !837, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !632, file: !16, line: 1096, baseType: !181, size: 32, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !632, file: !16, line: 1097, baseType: !181, size: 32, offset: 736)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !632, file: !16, line: 1098, baseType: !837, size: 64, offset: 768)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !632, file: !16, line: 1099, baseType: !191, size: 64, offset: 832)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !632, file: !16, line: 1100, baseType: !843, size: 64, offset: 896)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !16, line: 2220, size: 4224, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !855, !862, !864, !869, !870, !871, !872, !912, !934, !935, !950, !951, !952, !953, !954, !955, !956, !980, !982, !983, !984, !985, !986, !987, !988, !989, !990}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !844, file: !16, line: 2222, baseType: !627, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !844, file: !16, line: 2224, baseType: !627, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !844, file: !16, line: 2225, baseType: !627, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !844, file: !16, line: 2226, baseType: !627, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !844, file: !16, line: 2227, baseType: !181, size: 32, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !844, file: !16, line: 2228, baseType: !627, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !844, file: !16, line: 2229, baseType: !627, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !844, file: !16, line: 2230, baseType: !854, size: 32, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !16, line: 2128, baseType: !15)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !844, file: !16, line: 2231, baseType: !856, size: 64, offset: 512)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !16, line: 2106, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2103, size: 128, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !858, file: !16, line: 2104, baseType: !627, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !858, file: !16, line: 2105, baseType: !627, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !844, file: !16, line: 2232, baseType: !863, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !844, file: !16, line: 2233, baseType: !865, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !16, line: 2130, baseType: !867)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !630}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !844, file: !16, line: 2234, baseType: !181, size: 32, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !16, line: 2235, baseType: !109, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !844, file: !16, line: 2236, baseType: !109, size: 64, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !844, file: !16, line: 2237, baseType: !873, size: 1792, offset: 896)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 1792, elements: !910)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !16, line: 2041, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1997, size: 448, elements: !876)
!876 = !{!877, !878, !879, !881, !893, !895}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !875, file: !16, line: 1999, baseType: !627, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !875, file: !16, line: 2000, baseType: !109, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !875, file: !16, line: 2001, baseType: !880, size: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !16, line: 1987, baseType: !36)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !875, file: !16, line: 2015, baseType: !882, size: 128, offset: 192)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !16, line: 2002, size: 128, elements: !883)
!883 = !{!884, !888}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !882, file: !16, line: 2006, baseType: !885, size: 32)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !16, line: 2003, size: 32, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !885, file: !16, line: 2005, baseType: !181, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !882, file: !16, line: 2014, baseType: !889, size: 128)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !16, line: 2007, size: 128, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !889, file: !16, line: 2009, baseType: !627, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !889, file: !16, line: 2013, baseType: !181, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !875, file: !16, line: 2016, baseType: !894, size: 32, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !16, line: 1995, baseType: !42)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !875, file: !16, line: 2040, baseType: !896, size: 96, offset: 352)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !16, line: 2017, size: 96, elements: !897)
!897 = !{!898, !904}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !896, file: !16, line: 2030, baseType: !899, size: 96)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !16, line: 2020, size: 96, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !899, file: !16, line: 2024, baseType: !181, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !899, file: !16, line: 2026, baseType: !181, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !899, file: !16, line: 2029, baseType: !181, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !896, file: !16, line: 2039, baseType: !905, size: 96)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !896, file: !16, line: 2031, size: 96, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !905, file: !16, line: 2033, baseType: !181, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !905, file: !16, line: 2036, baseType: !181, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !905, file: !16, line: 2038, baseType: !181, size: 32, offset: 64)
!910 = !{!911}
!911 = !DISubrange(count: 4)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !844, file: !16, line: 2240, baseType: !913, size: 64, offset: 2688)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !16, line: 2131, baseType: !915)
!915 = !DISubroutineType(types: !916)
!916 = !{!181, !843, !837, !181, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !16, line: 1959, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1954, size: 16512, elements: !920)
!920 = !{!921, !930, !932, !933}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !919, file: !16, line: 1955, baseType: !922, size: 16384)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !923, size: 16384, elements: !928)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !16, line: 1948, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1944, size: 64, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !924, file: !16, line: 1945, baseType: !181, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !16, line: 1946, baseType: !181, size: 32, offset: 32)
!928 = !{!929}
!929 = !DISubrange(count: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !919, file: !16, line: 1956, baseType: !931, size: 64, offset: 16384)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !919, file: !16, line: 1957, baseType: !181, size: 32, offset: 16448)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !919, file: !16, line: 1958, baseType: !181, size: 32, offset: 16480)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !844, file: !16, line: 2242, baseType: !843, size: 64, offset: 2752)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !844, file: !16, line: 2244, baseType: !936, size: 64, offset: 2816)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !16, line: 2064, size: 576, elements: !938)
!938 = !{!939, !940, !942, !943, !944, !945, !946, !947, !948, !949}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !937, file: !16, line: 2065, baseType: !627, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !937, file: !16, line: 2066, baseType: !941, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !16, line: 2057, baseType: !48)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !937, file: !16, line: 2067, baseType: !181, size: 32, offset: 96)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !937, file: !16, line: 2068, baseType: !627, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !937, file: !16, line: 2069, baseType: !627, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !937, file: !16, line: 2070, baseType: !627, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !937, file: !16, line: 2071, baseType: !181, size: 32, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !937, file: !16, line: 2072, baseType: !627, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !937, file: !16, line: 2073, baseType: !936, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !937, file: !16, line: 2075, baseType: !181, size: 32, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !844, file: !16, line: 2247, baseType: !657, size: 64, offset: 2880)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !844, file: !16, line: 2247, baseType: !657, size: 64, offset: 2944)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !844, file: !16, line: 2247, baseType: !657, size: 64, offset: 3008)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !844, file: !16, line: 2247, baseType: !657, size: 64, offset: 3072)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !844, file: !16, line: 2248, baseType: !181, size: 32, offset: 3136)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !844, file: !16, line: 2253, baseType: !591, size: 64, offset: 3200)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !844, file: !16, line: 2254, baseType: !957, size: 64, offset: 3264)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !959, line: 17, size: 832, elements: !960)
!959 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "9111fad5dcef4af3913c2e15d298a98c")
!960 = !{!961, !962, !963, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !958, file: !959, line: 19, baseType: !154, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !958, file: !959, line: 20, baseType: !154, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !958, file: !959, line: 21, baseType: !964, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !155, line: 26, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !79, line: 41, baseType: !181)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !958, file: !959, line: 22, baseType: !964, size: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !958, file: !959, line: 23, baseType: !964, size: 32, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !958, file: !959, line: 24, baseType: !964, size: 32, offset: 224)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !958, file: !959, line: 25, baseType: !154, size: 64, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !958, file: !959, line: 26, baseType: !964, size: 32, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !958, file: !959, line: 27, baseType: !964, size: 32, offset: 352)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !958, file: !959, line: 28, baseType: !154, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !958, file: !959, line: 29, baseType: !154, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !958, file: !959, line: 30, baseType: !964, size: 32, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !958, file: !959, line: 31, baseType: !159, size: 64, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !958, file: !959, line: 32, baseType: !964, size: 32, offset: 640)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !958, file: !959, line: 33, baseType: !154, size: 64, offset: 704)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !958, file: !959, line: 34, baseType: !979, size: 64, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !844, file: !16, line: 2255, baseType: !981, size: 64, offset: 3328)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !844, file: !16, line: 2256, baseType: !874, size: 448, offset: 3392)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !844, file: !16, line: 2260, baseType: !181, size: 32, offset: 3840)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !844, file: !16, line: 2261, baseType: !181, size: 32, offset: 3872)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !844, file: !16, line: 2262, baseType: !181, size: 32, offset: 3904)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !844, file: !16, line: 2263, baseType: !181, size: 32, offset: 3936)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !844, file: !16, line: 2264, baseType: !181, size: 32, offset: 3968)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !844, file: !16, line: 2265, baseType: !134, size: 64, offset: 4032)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !844, file: !16, line: 2267, baseType: !843, size: 64, offset: 4096)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !844, file: !16, line: 2268, baseType: !991, size: 64, offset: 4160)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !16, line: 681, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !632, file: !16, line: 1100, baseType: !843, size: 64, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !632, file: !16, line: 1101, baseType: !843, size: 64, offset: 1024)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !632, file: !16, line: 1104, baseType: !996, size: 64, offset: 1088)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !16, line: 1052, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1045, size: 256, elements: !999)
!999 = !{!1000, !1001, !1002, !1003}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !998, file: !16, line: 1046, baseType: !591, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !998, file: !16, line: 1047, baseType: !100, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !998, file: !16, line: 1048, baseType: !793, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !998, file: !16, line: 1049, baseType: !793, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !632, file: !16, line: 1107, baseType: !181, size: 32, offset: 1152)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !632, file: !16, line: 1108, baseType: !181, size: 32, offset: 1184)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !632, file: !16, line: 1109, baseType: !157, size: 64, offset: 1216)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !632, file: !16, line: 1110, baseType: !793, size: 64, offset: 1280)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !632, file: !16, line: 1111, baseType: !1009, size: 64, offset: 1344)
!1009 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !632, file: !16, line: 1112, baseType: !793, size: 64, offset: 1408)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !632, file: !16, line: 1113, baseType: !191, size: 64, offset: 1472)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !632, file: !16, line: 1115, baseType: !1013, size: 64, offset: 1536)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1014, line: 10, baseType: !1015)
!1014 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !79, line: 160, baseType: !157)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !632, file: !16, line: 1116, baseType: !157, size: 64, offset: 1600)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !632, file: !16, line: 1117, baseType: !181, size: 32, offset: 1664)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !632, file: !16, line: 1118, baseType: !1013, size: 64, offset: 1728)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !632, file: !16, line: 1119, baseType: !1013, size: 64, offset: 1792)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !632, file: !16, line: 1120, baseType: !181, size: 32, offset: 1856)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !632, file: !16, line: 1121, baseType: !181, size: 32, offset: 1888)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !632, file: !16, line: 1122, baseType: !181, size: 32, offset: 1920)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !632, file: !16, line: 1123, baseType: !181, size: 32, offset: 1952)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !632, file: !16, line: 1124, baseType: !1025, size: 64, offset: 1984)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1026, line: 58, baseType: !1027)
!1026 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !79, line: 153, baseType: !157)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !632, file: !16, line: 1125, baseType: !1025, size: 64, offset: 2048)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !632, file: !16, line: 1126, baseType: !591, size: 64, offset: 2112)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !632, file: !16, line: 1127, baseType: !657, size: 64, offset: 2176)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !632, file: !16, line: 1128, baseType: !657, size: 64, offset: 2240)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !632, file: !16, line: 1129, baseType: !657, size: 64, offset: 2304)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !632, file: !16, line: 1130, baseType: !657, size: 64, offset: 2368)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !632, file: !16, line: 1131, baseType: !657, size: 64, offset: 2432)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !632, file: !16, line: 1132, baseType: !657, size: 64, offset: 2496)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !632, file: !16, line: 1133, baseType: !657, size: 64, offset: 2560)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !632, file: !16, line: 1136, baseType: !371, size: 328, offset: 2624)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !632, file: !16, line: 1137, baseType: !181, size: 32, offset: 2976)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !632, file: !16, line: 1138, baseType: !68, size: 64, offset: 3008)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !632, file: !16, line: 1139, baseType: !181, size: 32, offset: 3072)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !632, file: !16, line: 1140, baseType: !181, size: 32, offset: 3104)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !632, file: !16, line: 1141, baseType: !1043, size: 320, offset: 3136)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !16, line: 963, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !16, line: 952, size: 320, elements: !1045)
!1045 = !{!1046, !1055, !1056, !1057, !1058, !1059}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1044, file: !16, line: 953, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !16, line: 950, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !16, line: 945, size: 192, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1049, file: !16, line: 946, baseType: !837, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !1049, file: !16, line: 947, baseType: !181, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1049, file: !16, line: 948, baseType: !181, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1049, file: !16, line: 949, baseType: !843, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1044, file: !16, line: 954, baseType: !181, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1044, file: !16, line: 955, baseType: !181, size: 32, offset: 96)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !1044, file: !16, line: 958, baseType: !181, size: 32, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !1044, file: !16, line: 961, baseType: !191, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !1044, file: !16, line: 962, baseType: !181, size: 32, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !632, file: !16, line: 1142, baseType: !181, size: 32, offset: 3456)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !632, file: !16, line: 1143, baseType: !1062, size: 704, offset: 3520)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !16, line: 999, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !16, line: 967, size: 704, elements: !1064)
!1064 = !{!1065, !1066, !1068, !1069, !1070, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1063, file: !16, line: 969, baseType: !157, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1063, file: !16, line: 970, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !16, line: 64, baseType: !657)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1063, file: !16, line: 974, baseType: !134, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1063, file: !16, line: 976, baseType: !823, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !1063, file: !16, line: 981, baseType: !1071, size: 64, offset: 256)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !16, line: 978, size: 64, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !1071, file: !16, line: 979, baseType: !181, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !1071, file: !16, line: 980, baseType: !181, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1063, file: !16, line: 986, baseType: !191, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1063, file: !16, line: 987, baseType: !823, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1063, file: !16, line: 988, baseType: !823, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1063, file: !16, line: 989, baseType: !181, size: 32, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1063, file: !16, line: 992, baseType: !181, size: 32, offset: 544)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1063, file: !16, line: 993, baseType: !657, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1063, file: !16, line: 996, baseType: !65, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !632, file: !16, line: 1144, baseType: !657, size: 64, offset: 4224)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !632, file: !16, line: 1145, baseType: !793, size: 64, offset: 4288)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !632, file: !16, line: 1146, baseType: !134, size: 64, offset: 4352)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !632, file: !16, line: 1147, baseType: !793, size: 64, offset: 4416)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !632, file: !16, line: 1148, baseType: !134, size: 64, offset: 4480)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !632, file: !16, line: 1149, baseType: !591, size: 64, offset: 4544)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !632, file: !16, line: 1150, baseType: !591, size: 64, offset: 4608)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !632, file: !16, line: 1151, baseType: !799, size: 64, offset: 4672)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !632, file: !16, line: 1152, baseType: !799, size: 64, offset: 4736)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !632, file: !16, line: 1153, baseType: !799, size: 64, offset: 4800)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !632, file: !16, line: 1154, baseType: !1093, size: 64, offset: 4864)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !16, line: 711, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{null, !109, !65}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !632, file: !16, line: 1157, baseType: !65, size: 64, offset: 4928)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !632, file: !16, line: 1160, baseType: !65, size: 64, offset: 4992)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !632, file: !16, line: 1167, baseType: !109, size: 64, offset: 5056)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !632, file: !16, line: 1168, baseType: !1101, size: 64, offset: 5120)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !1103, line: 137, baseType: !1104)
!1103 = !DIFile(filename: "./rax.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "097f4607c0c6c774a82cd259b70b55d8")
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !1103, line: 133, size: 192, elements: !1105)
!1105 = !{!1106, !1117, !1118}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1104, file: !1103, line: 134, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !1103, line: 131, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !1103, line: 98, size: 32, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !1109, file: !1103, line: 99, baseType: !100, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !1109, file: !1103, line: 100, baseType: !100, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !1109, file: !1103, line: 101, baseType: !100, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1109, file: !1103, line: 102, baseType: !100, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1109, file: !1103, line: 130, baseType: !1116, offset: 32)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !84)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !1104, file: !1103, line: 135, baseType: !109, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !1104, file: !1103, line: 136, baseType: !109, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !632, file: !16, line: 1176, baseType: !191, size: 64, offset: 5184)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !632, file: !16, line: 1177, baseType: !181, size: 32, offset: 5248)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !632, file: !16, line: 1179, baseType: !799, size: 64, offset: 5312)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !632, file: !16, line: 1180, baseType: !1123, size: 64, offset: 5376)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !16, line: 1082, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1079, size: 128, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !1125, file: !16, line: 1080, baseType: !793, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !1125, file: !16, line: 1081, baseType: !191, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !632, file: !16, line: 1182, baseType: !799, size: 64, offset: 5440)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !632, file: !16, line: 1184, baseType: !191, size: 64, offset: 5504)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !632, file: !16, line: 1188, baseType: !191, size: 64, offset: 5568)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !632, file: !16, line: 1189, baseType: !1067, size: 64, offset: 5632)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !632, file: !16, line: 1190, baseType: !181, size: 32, offset: 5696)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !632, file: !16, line: 1191, baseType: !191, size: 64, offset: 5760)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !632, file: !16, line: 1192, baseType: !68, size: 64, offset: 5824)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "original_client", scope: !624, file: !623, line: 73, baseType: !630, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !623, line: 74, baseType: !181, size: 32, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "repl_flags", scope: !624, file: !623, line: 75, baseType: !181, size: 32, offset: 224)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !624, file: !623, line: 76, baseType: !683, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time", scope: !624, file: !623, line: 77, baseType: !1067, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "get_used_memory", scope: !609, file: !587, line: 69, baseType: !1142, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!191, !65}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "get_function_memory_overhead", scope: !609, file: !587, line: 74, baseType: !1142, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "get_engine_memory_overhead", scope: !609, file: !587, line: 77, baseType: !1142, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "free_function", scope: !609, file: !587, line: 80, baseType: !1148, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !65, !65}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !603, file: !587, line: 88, baseType: !630, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !596, file: !587, line: 108, baseType: !591, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !588, file: !587, line: 98, baseType: !591, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !588, file: !587, line: 99, baseType: !109, size: 64, offset: 256)
!1155 = !DILocalVariable(name: "engine", scope: !580, file: !3, line: 153, type: !607)
!1156 = !DILocation(line: 143, column: 41, scope: !580)
!1157 = !DILocation(line: 143, column: 50, scope: !580)
!1158 = !DILocation(line: 144, column: 5, scope: !580)
!1159 = !DILocation(line: 145, column: 10, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !580, file: !3, line: 145, column: 9)
!1161 = !DILocation(line: 145, column: 9, scope: !580)
!1162 = !DILocation(line: 146, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 145, column: 15)
!1164 = !DILocation(line: 148, column: 5, scope: !580)
!1165 = !DILocation(line: 148, column: 19, scope: !580)
!1166 = !DILocation(line: 148, column: 24, scope: !580)
!1167 = !DILocation(line: 149, column: 13, scope: !580)
!1168 = !DILocation(line: 149, column: 17, scope: !580)
!1169 = !{!1170, !568, i64 0}
!1170 = !{!"functionInfo", !568, i64 0, !568, i64 8, !568, i64 16, !568, i64 24, !1171, i64 32}
!1171 = !{!"long", !569, i64 0}
!1172 = !DILocation(line: 149, column: 5, scope: !580)
!1173 = !DILocation(line: 150, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !580, file: !3, line: 150, column: 9)
!1175 = !DILocation(line: 150, column: 13, scope: !1174)
!1176 = !{!1170, !568, i64 24}
!1177 = !DILocation(line: 150, column: 9, scope: !580)
!1178 = !DILocation(line: 151, column: 17, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 150, column: 19)
!1180 = !DILocation(line: 151, column: 21, scope: !1179)
!1181 = !DILocation(line: 151, column: 9, scope: !1179)
!1182 = !DILocation(line: 152, column: 5, scope: !1179)
!1183 = !DILocation(line: 153, column: 5, scope: !580)
!1184 = !DILocation(line: 153, column: 13, scope: !580)
!1185 = !DILocation(line: 153, column: 22, scope: !580)
!1186 = !DILocation(line: 153, column: 26, scope: !580)
!1187 = !{!1170, !568, i64 16}
!1188 = !DILocation(line: 153, column: 30, scope: !580)
!1189 = !{!1190, !568, i64 16}
!1190 = !{!"functionLibInfo", !568, i64 0, !568, i64 8, !568, i64 16, !568, i64 24}
!1191 = !DILocation(line: 153, column: 34, scope: !580)
!1192 = !{!1193, !568, i64 8}
!1193 = !{!"engineInfo", !568, i64 0, !568, i64 8, !568, i64 16}
!1194 = !DILocation(line: 154, column: 5, scope: !580)
!1195 = !DILocation(line: 154, column: 13, scope: !580)
!1196 = !{!1197, !568, i64 48}
!1197 = !{!"engine", !568, i64 0, !568, i64 8, !568, i64 16, !568, i64 24, !568, i64 32, !568, i64 40, !568, i64 48}
!1198 = !DILocation(line: 154, column: 27, scope: !580)
!1199 = !DILocation(line: 154, column: 35, scope: !580)
!1200 = !{!1197, !568, i64 0}
!1201 = !DILocation(line: 154, column: 47, scope: !580)
!1202 = !DILocation(line: 154, column: 51, scope: !580)
!1203 = !{!1170, !568, i64 8}
!1204 = !DILocation(line: 155, column: 11, scope: !580)
!1205 = !DILocation(line: 155, column: 5, scope: !580)
!1206 = !DILocation(line: 156, column: 1, scope: !580)
!1207 = distinct !DISubprogram(name: "engineLibraryDispose", scope: !3, file: !3, line: 168, type: !184, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1208)
!1208 = !{!1209, !1210}
!1209 = !DILocalVariable(name: "d", arg: 1, scope: !1207, file: !3, line: 168, type: !134)
!1210 = !DILocalVariable(name: "obj", arg: 2, scope: !1207, file: !3, line: 168, type: !65)
!1211 = !DILocation(line: 168, column: 40, scope: !1207)
!1212 = !DILocation(line: 168, column: 49, scope: !1207)
!1213 = !DILocation(line: 169, column: 5, scope: !1207)
!1214 = !DILocation(line: 170, column: 23, scope: !1207)
!1215 = !DILocation(line: 170, column: 5, scope: !1207)
!1216 = !DILocation(line: 171, column: 1, scope: !1207)
!1217 = distinct !DISubprogram(name: "functionsLibCtxClear", scope: !3, file: !3, line: 174, type: !1218, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !520}
!1220 = !{!1221, !1222, !1234, !1235}
!1221 = !DILocalVariable(name: "lib_ctx", arg: 1, scope: !1217, file: !3, line: 174, type: !520)
!1222 = !DILocalVariable(name: "iter", scope: !1217, file: !3, line: 177, type: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !121, line: 103, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !121, line: 96, size: 384, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1225, file: !121, line: 97, baseType: !134, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1225, file: !121, line: 98, baseType: !157, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1225, file: !121, line: 99, baseType: !181, size: 32, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1225, file: !121, line: 99, baseType: !181, size: 32, offset: 160)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1225, file: !121, line: 100, baseType: !143, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !1225, file: !121, line: 100, baseType: !143, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1225, file: !121, line: 102, baseType: !1009, size: 64, offset: 320)
!1234 = !DILocalVariable(name: "entry", scope: !1217, file: !3, line: 178, type: !143)
!1235 = !DILocalVariable(name: "stats", scope: !1236, file: !3, line: 180, type: !561)
!1236 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 179, column: 38)
!1237 = !DILocation(line: 174, column: 44, scope: !1217)
!1238 = !DILocation(line: 175, column: 15, scope: !1217)
!1239 = !DILocation(line: 175, column: 24, scope: !1217)
!1240 = !{!1241, !568, i64 8}
!1241 = !{!"functionsLibCtx", !568, i64 0, !568, i64 8, !1171, i64 16, !568, i64 24}
!1242 = !DILocation(line: 175, column: 5, scope: !1217)
!1243 = !DILocation(line: 176, column: 15, scope: !1217)
!1244 = !DILocation(line: 176, column: 24, scope: !1217)
!1245 = !{!1241, !568, i64 0}
!1246 = !DILocation(line: 176, column: 5, scope: !1217)
!1247 = !DILocation(line: 177, column: 5, scope: !1217)
!1248 = !DILocation(line: 177, column: 19, scope: !1217)
!1249 = !DILocation(line: 177, column: 42, scope: !1217)
!1250 = !DILocation(line: 177, column: 51, scope: !1217)
!1251 = !{!1241, !568, i64 24}
!1252 = !DILocation(line: 177, column: 26, scope: !1217)
!1253 = !DILocation(line: 178, column: 5, scope: !1217)
!1254 = !DILocation(line: 178, column: 16, scope: !1217)
!1255 = !DILocation(line: 179, column: 5, scope: !1217)
!1256 = !DILocation(line: 179, column: 30, scope: !1217)
!1257 = !DILocation(line: 179, column: 21, scope: !1217)
!1258 = !DILocation(line: 179, column: 19, scope: !1217)
!1259 = !DILocation(line: 180, column: 9, scope: !1236)
!1260 = !DILocation(line: 180, column: 34, scope: !1236)
!1261 = !DILocation(line: 180, column: 42, scope: !1236)
!1262 = !{!569, !569, i64 0}
!1263 = !DILocation(line: 181, column: 9, scope: !1236)
!1264 = !DILocation(line: 181, column: 16, scope: !1236)
!1265 = !DILocation(line: 181, column: 28, scope: !1236)
!1266 = !{!1267, !1171, i64 8}
!1267 = !{!"functionsLibEngineStats", !1171, i64 0, !1171, i64 8}
!1268 = !DILocation(line: 182, column: 9, scope: !1236)
!1269 = !DILocation(line: 182, column: 16, scope: !1236)
!1270 = !DILocation(line: 182, column: 22, scope: !1236)
!1271 = !{!1267, !1171, i64 0}
!1272 = !DILocation(line: 183, column: 5, scope: !1217)
!1273 = distinct !{!1273, !1255, !1272, !1274}
!1274 = !{!"llvm.loop.mustprogress"}
!1275 = !DILocation(line: 184, column: 25, scope: !1217)
!1276 = !DILocation(line: 184, column: 5, scope: !1217)
!1277 = !DILocation(line: 185, column: 5, scope: !1217)
!1278 = !DILocation(line: 185, column: 29, scope: !1217)
!1279 = !DILocation(line: 185, column: 42, scope: !1217)
!1280 = !{!1241, !1171, i64 16}
!1281 = !DILocation(line: 186, column: 1, scope: !1217)
!1282 = !DISubprogram(name: "dictEmpty", scope: !121, file: !121, line: 197, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !134, !1285}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !134}
!1288 = !DISubprogram(name: "dictGetIterator", scope: !121, file: !121, line: 187, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!1223, !134}
!1291 = !DISubprogram(name: "dictNext", scope: !121, file: !121, line: 189, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!143, !1223}
!1294 = !DISubprogram(name: "dictReleaseIterator", scope: !121, file: !121, line: 190, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !1223}
!1297 = distinct !DISubprogram(name: "functionsLibCtxClearCurrent", scope: !3, file: !3, line: 188, type: !1298, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1300)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !181}
!1300 = !{!1301, !1302}
!1301 = !DILocalVariable(name: "async", arg: 1, scope: !1297, file: !3, line: 188, type: !181)
!1302 = !DILocalVariable(name: "old_l_ctx", scope: !1303, file: !3, line: 190, type: !520)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 189, column: 16)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 189, column: 9)
!1305 = !{!1306, !1306, i64 0}
!1306 = !{!"int", !569, i64 0}
!1307 = !DILocation(line: 188, column: 38, scope: !1297)
!1308 = !DILocation(line: 189, column: 9, scope: !1304)
!1309 = !DILocation(line: 189, column: 9, scope: !1297)
!1310 = !DILocation(line: 190, column: 9, scope: !1303)
!1311 = !DILocation(line: 190, column: 26, scope: !1303)
!1312 = !DILocation(line: 190, column: 38, scope: !1303)
!1313 = !DILocation(line: 191, column: 34, scope: !1303)
!1314 = !DILocation(line: 191, column: 32, scope: !1303)
!1315 = !DILocation(line: 192, column: 28, scope: !1303)
!1316 = !DILocation(line: 192, column: 9, scope: !1303)
!1317 = !DILocation(line: 193, column: 5, scope: !1304)
!1318 = !DILocation(line: 193, column: 5, scope: !1303)
!1319 = !DILocation(line: 194, column: 30, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 193, column: 12)
!1321 = !DILocation(line: 194, column: 9, scope: !1320)
!1322 = !DILocation(line: 196, column: 1, scope: !1297)
!1323 = !DISubprogram(name: "freeFunctionsAsync", scope: !16, file: !16, line: 3201, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1324 = distinct !DISubprogram(name: "functionsLibCtxFree", scope: !3, file: !3, line: 199, type: !1218, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1325)
!1325 = !{!1326}
!1326 = !DILocalVariable(name: "functions_lib_ctx", arg: 1, scope: !1324, file: !3, line: 199, type: !520)
!1327 = !DILocation(line: 199, column: 43, scope: !1324)
!1328 = !DILocation(line: 200, column: 26, scope: !1324)
!1329 = !DILocation(line: 200, column: 5, scope: !1324)
!1330 = !DILocation(line: 201, column: 17, scope: !1324)
!1331 = !DILocation(line: 201, column: 36, scope: !1324)
!1332 = !DILocation(line: 201, column: 5, scope: !1324)
!1333 = !DILocation(line: 202, column: 17, scope: !1324)
!1334 = !DILocation(line: 202, column: 36, scope: !1324)
!1335 = !DILocation(line: 202, column: 5, scope: !1324)
!1336 = !DILocation(line: 203, column: 17, scope: !1324)
!1337 = !DILocation(line: 203, column: 36, scope: !1324)
!1338 = !DILocation(line: 203, column: 5, scope: !1324)
!1339 = !DILocation(line: 204, column: 11, scope: !1324)
!1340 = !DILocation(line: 204, column: 5, scope: !1324)
!1341 = !DILocation(line: 205, column: 1, scope: !1324)
!1342 = !DISubprogram(name: "dictRelease", scope: !121, file: !121, line: 183, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1343 = !DISubprogram(name: "zfree", scope: !1344, file: !1344, line: 106, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DIFile(filename: "./zmalloc.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "e165f08718e6f3b3aaa809126581c85d")
!1345 = distinct !DISubprogram(name: "functionsLibCtxSwapWithCurrent", scope: !3, file: !3, line: 209, type: !1218, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1346)
!1346 = !{!1347}
!1347 = !DILocalVariable(name: "new_lib_ctx", arg: 1, scope: !1345, file: !3, line: 209, type: !520)
!1348 = !DILocation(line: 209, column: 54, scope: !1345)
!1349 = !DILocation(line: 210, column: 25, scope: !1345)
!1350 = !DILocation(line: 210, column: 5, scope: !1345)
!1351 = !DILocation(line: 211, column: 30, scope: !1345)
!1352 = !DILocation(line: 211, column: 28, scope: !1345)
!1353 = !DILocation(line: 212, column: 1, scope: !1345)
!1354 = distinct !DISubprogram(name: "functionsLibCtxGetCurrent", scope: !3, file: !3, line: 215, type: !1355, scopeLine: 215, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!520}
!1357 = !DILocation(line: 216, column: 12, scope: !1354)
!1358 = !DILocation(line: 216, column: 5, scope: !1354)
!1359 = distinct !DISubprogram(name: "functionsLibCtxCreate", scope: !3, file: !3, line: 220, type: !1355, scopeLine: 220, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1366}
!1361 = !DILocalVariable(name: "ret", scope: !1359, file: !3, line: 221, type: !520)
!1362 = !DILocalVariable(name: "iter", scope: !1359, file: !3, line: 225, type: !1223)
!1363 = !DILocalVariable(name: "entry", scope: !1359, file: !3, line: 226, type: !143)
!1364 = !DILocalVariable(name: "ei", scope: !1365, file: !3, line: 228, type: !601)
!1365 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 227, column: 38)
!1366 = !DILocalVariable(name: "stats", scope: !1365, file: !3, line: 229, type: !561)
!1367 = !DILocation(line: 221, column: 5, scope: !1359)
!1368 = !DILocation(line: 221, column: 22, scope: !1359)
!1369 = !DILocation(line: 221, column: 28, scope: !1359)
!1370 = !DILocation(line: 222, column: 22, scope: !1359)
!1371 = !DILocation(line: 222, column: 5, scope: !1359)
!1372 = !DILocation(line: 222, column: 10, scope: !1359)
!1373 = !DILocation(line: 222, column: 20, scope: !1359)
!1374 = !DILocation(line: 223, column: 22, scope: !1359)
!1375 = !DILocation(line: 223, column: 5, scope: !1359)
!1376 = !DILocation(line: 223, column: 10, scope: !1359)
!1377 = !DILocation(line: 223, column: 20, scope: !1359)
!1378 = !DILocation(line: 224, column: 26, scope: !1359)
!1379 = !DILocation(line: 224, column: 5, scope: !1359)
!1380 = !DILocation(line: 224, column: 10, scope: !1359)
!1381 = !DILocation(line: 224, column: 24, scope: !1359)
!1382 = !DILocation(line: 225, column: 5, scope: !1359)
!1383 = !DILocation(line: 225, column: 19, scope: !1359)
!1384 = !DILocation(line: 225, column: 42, scope: !1359)
!1385 = !DILocation(line: 225, column: 26, scope: !1359)
!1386 = !DILocation(line: 226, column: 5, scope: !1359)
!1387 = !DILocation(line: 226, column: 16, scope: !1359)
!1388 = !DILocation(line: 227, column: 5, scope: !1359)
!1389 = !DILocation(line: 227, column: 30, scope: !1359)
!1390 = !DILocation(line: 227, column: 21, scope: !1359)
!1391 = !DILocation(line: 227, column: 19, scope: !1359)
!1392 = !DILocation(line: 228, column: 9, scope: !1365)
!1393 = !DILocation(line: 228, column: 21, scope: !1365)
!1394 = !DILocation(line: 228, column: 26, scope: !1365)
!1395 = !DILocation(line: 229, column: 9, scope: !1365)
!1396 = !DILocation(line: 229, column: 34, scope: !1365)
!1397 = !DILocation(line: 229, column: 42, scope: !1365)
!1398 = !DILocation(line: 230, column: 17, scope: !1365)
!1399 = !DILocation(line: 230, column: 22, scope: !1365)
!1400 = !DILocation(line: 230, column: 37, scope: !1365)
!1401 = !DILocation(line: 230, column: 41, scope: !1365)
!1402 = !{!1193, !568, i64 0}
!1403 = !DILocation(line: 230, column: 47, scope: !1365)
!1404 = !DILocation(line: 230, column: 9, scope: !1365)
!1405 = !DILocation(line: 231, column: 5, scope: !1359)
!1406 = distinct !{!1406, !1388, !1405, !1274}
!1407 = !DILocation(line: 232, column: 25, scope: !1359)
!1408 = !DILocation(line: 232, column: 5, scope: !1359)
!1409 = !DILocation(line: 233, column: 5, scope: !1359)
!1410 = !DILocation(line: 233, column: 10, scope: !1359)
!1411 = !DILocation(line: 233, column: 23, scope: !1359)
!1412 = !DILocation(line: 234, column: 12, scope: !1359)
!1413 = !DILocation(line: 235, column: 1, scope: !1359)
!1414 = !DILocation(line: 234, column: 5, scope: !1359)
!1415 = !DISubprogram(name: "zmalloc", scope: !1344, file: !1344, line: 99, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!65, !191}
!1418 = !DISubprogram(name: "dictCreate", scope: !121, file: !121, line: 173, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!134, !139}
!1421 = !DISubprogram(name: "zcalloc", scope: !1344, file: !1344, line: 100, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = !DISubprogram(name: "dictAdd", scope: !121, file: !121, line: 176, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!181, !134, !65, !65}
!1425 = distinct !DISubprogram(name: "functionLibCreateFunction", scope: !3, file: !3, line: 246, type: !1426, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!181, !591, !65, !594, !591, !109, !616}
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1429 = !DILocalVariable(name: "name", arg: 1, scope: !1425, file: !3, line: 246, type: !591)
!1430 = !DILocalVariable(name: "function", arg: 2, scope: !1425, file: !3, line: 246, type: !65)
!1431 = !DILocalVariable(name: "li", arg: 3, scope: !1425, file: !3, line: 246, type: !594)
!1432 = !DILocalVariable(name: "desc", arg: 4, scope: !1425, file: !3, line: 246, type: !591)
!1433 = !DILocalVariable(name: "f_flags", arg: 5, scope: !1425, file: !3, line: 246, type: !109)
!1434 = !DILocalVariable(name: "err", arg: 6, scope: !1425, file: !3, line: 246, type: !616)
!1435 = !DILocalVariable(name: "fi", scope: !1425, file: !3, line: 257, type: !585)
!1436 = !DILocalVariable(name: "res", scope: !1425, file: !3, line: 266, type: !181)
!1437 = !DILocation(line: 246, column: 35, scope: !1425)
!1438 = !DILocation(line: 246, column: 47, scope: !1425)
!1439 = !DILocation(line: 246, column: 74, scope: !1425)
!1440 = !DILocation(line: 246, column: 82, scope: !1425)
!1441 = !{!1171, !1171, i64 0}
!1442 = !DILocation(line: 246, column: 97, scope: !1425)
!1443 = !DILocation(line: 246, column: 111, scope: !1425)
!1444 = !DILocation(line: 247, column: 29, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 247, column: 9)
!1446 = !DILocation(line: 247, column: 9, scope: !1445)
!1447 = !DILocation(line: 247, column: 35, scope: !1445)
!1448 = !DILocation(line: 247, column: 9, scope: !1425)
!1449 = !DILocation(line: 248, column: 16, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 247, column: 44)
!1451 = !DILocation(line: 248, column: 10, scope: !1450)
!1452 = !DILocation(line: 248, column: 14, scope: !1450)
!1453 = !DILocation(line: 249, column: 9, scope: !1450)
!1454 = !DILocation(line: 252, column: 24, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 252, column: 9)
!1456 = !DILocation(line: 252, column: 28, scope: !1455)
!1457 = !{!1190, !568, i64 8}
!1458 = !DILocation(line: 252, column: 39, scope: !1455)
!1459 = !DILocation(line: 252, column: 9, scope: !1455)
!1460 = !DILocation(line: 252, column: 9, scope: !1425)
!1461 = !DILocation(line: 253, column: 16, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 252, column: 46)
!1463 = !DILocation(line: 253, column: 10, scope: !1462)
!1464 = !DILocation(line: 253, column: 14, scope: !1462)
!1465 = !DILocation(line: 254, column: 9, scope: !1462)
!1466 = !DILocation(line: 257, column: 5, scope: !1425)
!1467 = !DILocation(line: 257, column: 19, scope: !1425)
!1468 = !DILocation(line: 257, column: 24, scope: !1425)
!1469 = !DILocation(line: 258, column: 6, scope: !1425)
!1470 = !DILocation(line: 258, column: 26, scope: !1425)
!1471 = !DILocation(line: 259, column: 17, scope: !1425)
!1472 = !DILocation(line: 260, column: 21, scope: !1425)
!1473 = !DILocation(line: 261, column: 15, scope: !1425)
!1474 = !DILocation(line: 262, column: 17, scope: !1425)
!1475 = !DILocation(line: 263, column: 20, scope: !1425)
!1476 = !{!1170, !1171, i64 32}
!1477 = !DILocation(line: 258, column: 11, scope: !1425)
!1478 = !{i64 0, i64 8, !567, i64 8, i64 8, !567, i64 16, i64 8, !567, i64 24, i64 8, !567, i64 32, i64 8, !1441}
!1479 = !DILocation(line: 266, column: 5, scope: !1425)
!1480 = !DILocation(line: 266, column: 9, scope: !1425)
!1481 = !DILocation(line: 266, column: 23, scope: !1425)
!1482 = !DILocation(line: 266, column: 27, scope: !1425)
!1483 = !DILocation(line: 266, column: 38, scope: !1425)
!1484 = !DILocation(line: 266, column: 42, scope: !1425)
!1485 = !DILocation(line: 266, column: 48, scope: !1425)
!1486 = !DILocation(line: 266, column: 15, scope: !1425)
!1487 = !DILocation(line: 267, column: 5, scope: !1425)
!1488 = !DILocation(line: 269, column: 5, scope: !1425)
!1489 = !DILocation(line: 270, column: 1, scope: !1425)
!1490 = distinct !DISubprogram(name: "functionsVerifyName", scope: !3, file: !3, line: 864, type: !1491, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!181, !591}
!1493 = !{!1494, !1495, !1497}
!1494 = !DILocalVariable(name: "name", arg: 1, scope: !1490, file: !3, line: 864, type: !591)
!1495 = !DILocalVariable(name: "i", scope: !1496, file: !3, line: 868, type: !191)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 868, column: 5)
!1497 = !DILocalVariable(name: "curr_char", scope: !1498, file: !3, line: 869, type: !69)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 868, column: 49)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 868, column: 5)
!1500 = !DILocation(line: 864, column: 36, scope: !1490)
!1501 = !DILocation(line: 865, column: 16, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 865, column: 9)
!1503 = !DILocation(line: 865, column: 9, scope: !1502)
!1504 = !DILocation(line: 865, column: 22, scope: !1502)
!1505 = !DILocation(line: 865, column: 9, scope: !1490)
!1506 = !DILocation(line: 866, column: 9, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 865, column: 28)
!1508 = !DILocation(line: 868, column: 10, scope: !1496)
!1509 = !DILocation(line: 868, column: 17, scope: !1496)
!1510 = !DILocation(line: 868, column: 25, scope: !1499)
!1511 = !DILocation(line: 868, column: 36, scope: !1499)
!1512 = !DILocation(line: 868, column: 29, scope: !1499)
!1513 = !DILocation(line: 868, column: 27, scope: !1499)
!1514 = !DILocation(line: 868, column: 5, scope: !1496)
!1515 = !DILocation(line: 869, column: 9, scope: !1498)
!1516 = !DILocation(line: 869, column: 14, scope: !1498)
!1517 = !DILocation(line: 869, column: 26, scope: !1498)
!1518 = !DILocation(line: 869, column: 31, scope: !1498)
!1519 = !DILocation(line: 870, column: 14, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 870, column: 13)
!1521 = !DILocation(line: 870, column: 24, scope: !1520)
!1522 = !DILocation(line: 870, column: 31, scope: !1520)
!1523 = !DILocation(line: 870, column: 34, scope: !1520)
!1524 = !DILocation(line: 870, column: 44, scope: !1520)
!1525 = !DILocation(line: 870, column: 52, scope: !1520)
!1526 = !DILocation(line: 871, column: 14, scope: !1520)
!1527 = !DILocation(line: 871, column: 24, scope: !1520)
!1528 = !DILocation(line: 871, column: 31, scope: !1520)
!1529 = !DILocation(line: 871, column: 34, scope: !1520)
!1530 = !DILocation(line: 871, column: 44, scope: !1520)
!1531 = !DILocation(line: 871, column: 52, scope: !1520)
!1532 = !DILocation(line: 872, column: 14, scope: !1520)
!1533 = !DILocation(line: 872, column: 24, scope: !1520)
!1534 = !DILocation(line: 872, column: 31, scope: !1520)
!1535 = !DILocation(line: 872, column: 34, scope: !1520)
!1536 = !DILocation(line: 872, column: 44, scope: !1520)
!1537 = !DILocation(line: 872, column: 52, scope: !1520)
!1538 = !DILocation(line: 873, column: 14, scope: !1520)
!1539 = !DILocation(line: 873, column: 24, scope: !1520)
!1540 = !DILocation(line: 870, column: 13, scope: !1498)
!1541 = !DILocation(line: 875, column: 13, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 874, column: 9)
!1543 = !DILocation(line: 877, column: 9, scope: !1498)
!1544 = !DILocation(line: 878, column: 5, scope: !1499)
!1545 = !DILocation(line: 868, column: 44, scope: !1499)
!1546 = !DILocation(line: 868, column: 5, scope: !1499)
!1547 = distinct !{!1547, !1514, !1548, !1274}
!1548 = !DILocation(line: 878, column: 5, scope: !1496)
!1549 = !DILocation(line: 879, column: 5, scope: !1490)
!1550 = !DILocation(line: 880, column: 1, scope: !1490)
!1551 = !DISubprogram(name: "sdsnew", scope: !73, file: !73, line: 220, type: !1552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!591, !627}
!1554 = !DISubprogram(name: "dictFetchValue", scope: !121, file: !121, line: 185, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1555 = !DISubprogram(name: "_serverAssert", scope: !16, file: !16, line: 3536, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !627, !627, !181}
!1558 = distinct !DISubprogram(name: "functionsRegisterEngine", scope: !3, file: !3, line: 409, type: !1559, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!181, !627, !607}
!1561 = !{!1562, !1563, !1564, !1565, !1566}
!1562 = !DILocalVariable(name: "engine_name", arg: 1, scope: !1558, file: !3, line: 409, type: !627)
!1563 = !DILocalVariable(name: "engine", arg: 2, scope: !1558, file: !3, line: 409, type: !607)
!1564 = !DILocalVariable(name: "engine_name_sds", scope: !1558, file: !3, line: 410, type: !591)
!1565 = !DILocalVariable(name: "c", scope: !1558, file: !3, line: 417, type: !630)
!1566 = !DILocalVariable(name: "ei", scope: !1558, file: !3, line: 419, type: !601)
!1567 = !DILocation(line: 409, column: 41, scope: !1558)
!1568 = !DILocation(line: 409, column: 62, scope: !1558)
!1569 = !DILocation(line: 410, column: 5, scope: !1558)
!1570 = !DILocation(line: 410, column: 9, scope: !1558)
!1571 = !DILocation(line: 410, column: 34, scope: !1558)
!1572 = !DILocation(line: 410, column: 27, scope: !1558)
!1573 = !DILocation(line: 411, column: 24, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 411, column: 9)
!1575 = !DILocation(line: 411, column: 33, scope: !1574)
!1576 = !DILocation(line: 411, column: 9, scope: !1574)
!1577 = !DILocation(line: 411, column: 9, scope: !1558)
!1578 = !DILocation(line: 412, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 411, column: 51)
!1580 = !DILocation(line: 412, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 412, column: 9)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 412, column: 9)
!1583 = !{!1584, !1306, i64 2800}
!1584 = !{!"redisServer", !1306, i64 0, !1171, i64 8, !568, i64 16, !568, i64 24, !568, i64 32, !1306, i64 40, !1306, i64 44, !1306, i64 48, !1306, i64 52, !1306, i64 56, !568, i64 64, !568, i64 72, !568, i64 80, !568, i64 88, !568, i64 96, !569, i64 104, !1306, i64 108, !1585, i64 112, !1306, i64 120, !1306, i64 124, !1306, i64 128, !1306, i64 132, !568, i64 136, !1306, i64 144, !1306, i64 148, !569, i64 152, !1306, i64 196, !1171, i64 200, !1306, i64 208, !1306, i64 212, !1306, i64 216, !568, i64 224, !1306, i64 232, !1306, i64 236, !1306, i64 240, !568, i64 248, !1306, i64 256, !1306, i64 260, !1171, i64 264, !568, i64 272, !568, i64 280, !568, i64 288, !568, i64 296, !569, i64 304, !1306, i64 312, !1306, i64 316, !1306, i64 320, !1306, i64 324, !1306, i64 328, !569, i64 336, !1306, i64 464, !568, i64 472, !568, i64 480, !1306, i64 488, !1586, i64 492, !1586, i64 560, !1306, i64 628, !1306, i64 632, !1586, i64 636, !568, i64 704, !568, i64 712, !568, i64 720, !568, i64 728, !568, i64 736, !568, i64 744, !568, i64 752, !569, i64 760, !568, i64 1064, !1171, i64 1072, !1306, i64 1080, !568, i64 1088, !569, i64 1096, !568, i64 1104, !1585, i64 1112, !569, i64 1120, !569, i64 1144, !568, i64 1400, !569, i64 1408, !1306, i64 1416, !1306, i64 1420, !1306, i64 1424, !1306, i64 1428, !1585, i64 1432, !1306, i64 1440, !1306, i64 1444, !1306, i64 1448, !1306, i64 1452, !1306, i64 1456, !1171, i64 1464, !1171, i64 1472, !1171, i64 1480, !1171, i64 1488, !1171, i64 1496, !1171, i64 1504, !1585, i64 1512, !1585, i64 1520, !1585, i64 1528, !1587, i64 1536, !1585, i64 1544, !1585, i64 1552, !1585, i64 1560, !1585, i64 1568, !1585, i64 1576, !1171, i64 1584, !1585, i64 1592, !1585, i64 1600, !1585, i64 1608, !1585, i64 1616, !1585, i64 1624, !1585, i64 1632, !1585, i64 1640, !1585, i64 1648, !1171, i64 1656, !1171, i64 1664, !1585, i64 1672, !1585, i64 1680, !1585, i64 1688, !1585, i64 1696, !1587, i64 1704, !1585, i64 1712, !1585, i64 1720, !1585, i64 1728, !1585, i64 1736, !1585, i64 1744, !568, i64 1752, !1585, i64 1760, !1585, i64 1768, !1171, i64 1776, !1588, i64 1784, !569, i64 1824, !569, i64 1832, !569, i64 1840, !569, i64 1848, !1171, i64 1856, !1171, i64 1864, !1171, i64 1872, !1171, i64 1880, !1171, i64 1888, !1171, i64 1896, !1171, i64 1904, !1171, i64 1912, !1587, i64 1920, !569, i64 1928, !1171, i64 1960, !1585, i64 1968, !1585, i64 1976, !1585, i64 1984, !1585, i64 1992, !1585, i64 2000, !569, i64 2008, !569, i64 2016, !569, i64 2024, !1585, i64 2784, !1585, i64 2792, !1306, i64 2800, !1306, i64 2804, !1306, i64 2808, !1306, i64 2812, !1306, i64 2816, !1306, i64 2820, !1306, i64 2824, !1306, i64 2828, !1306, i64 2832, !1171, i64 2840, !1306, i64 2848, !1306, i64 2852, !1306, i64 2856, !1306, i64 2860, !1171, i64 2864, !1171, i64 2872, !1306, i64 2880, !1306, i64 2884, !1306, i64 2888, !1306, i64 2892, !1306, i64 2896, !568, i64 2904, !569, i64 2912, !1306, i64 2984, !1306, i64 2988, !568, i64 2992, !1306, i64 3000, !1306, i64 3004, !1306, i64 3008, !1306, i64 3012, !568, i64 3016, !568, i64 3024, !1306, i64 3032, !1306, i64 3036, !1171, i64 3040, !1171, i64 3048, !1171, i64 3056, !1171, i64 3064, !1171, i64 3072, !1306, i64 3080, !1306, i64 3084, !568, i64 3088, !1306, i64 3096, !1306, i64 3100, !1171, i64 3104, !1171, i64 3112, !1171, i64 3120, !1171, i64 3128, !1171, i64 3136, !1306, i64 3144, !1306, i64 3148, !1171, i64 3152, !1306, i64 3160, !1306, i64 3164, !1306, i64 3168, !1306, i64 3172, !1306, i64 3176, !1306, i64 3180, !569, i64 3184, !569, i64 3188, !568, i64 3192, !1306, i64 3200, !1585, i64 3208, !1585, i64 3216, !1585, i64 3224, !1585, i64 3232, !568, i64 3240, !1306, i64 3248, !568, i64 3256, !1306, i64 3264, !1306, i64 3268, !1306, i64 3272, !1171, i64 3280, !1171, i64 3288, !1171, i64 3296, !1171, i64 3304, !1306, i64 3312, !1306, i64 3316, !1306, i64 3320, !1306, i64 3324, !1306, i64 3328, !1306, i64 3332, !568, i64 3336, !1306, i64 3344, !1306, i64 3348, !568, i64 3352, !1306, i64 3360, !1306, i64 3364, !1306, i64 3368, !569, i64 3372, !1306, i64 3380, !1589, i64 3384, !1306, i64 3400, !568, i64 3408, !1306, i64 3416, !568, i64 3424, !1306, i64 3432, !1306, i64 3436, !1306, i64 3440, !1306, i64 3444, !1306, i64 3448, !1306, i64 3452, !1306, i64 3456, !569, i64 3460, !569, i64 3501, !1585, i64 3544, !1585, i64 3552, !1306, i64 3560, !1306, i64 3564, !568, i64 3568, !1585, i64 3576, !1171, i64 3584, !1171, i64 3592, !1306, i64 3600, !1306, i64 3604, !1306, i64 3608, !1306, i64 3612, !1306, i64 3616, !1306, i64 3620, !1306, i64 3624, !1171, i64 3632, !568, i64 3640, !568, i64 3648, !568, i64 3656, !568, i64 3664, !1306, i64 3672, !1306, i64 3676, !568, i64 3680, !568, i64 3688, !1306, i64 3696, !1306, i64 3700, !1171, i64 3704, !1171, i64 3712, !1171, i64 3720, !568, i64 3728, !1306, i64 3736, !568, i64 3744, !1171, i64 3752, !1306, i64 3760, !1306, i64 3764, !1306, i64 3768, !1171, i64 3776, !1306, i64 3784, !1306, i64 3788, !1306, i64 3792, !1306, i64 3796, !568, i64 3800, !1306, i64 3808, !1306, i64 3812, !569, i64 3816, !1585, i64 3864, !1306, i64 3872, !568, i64 3880, !1306, i64 3888, !1306, i64 3892, !1585, i64 3896, !1171, i64 3904, !1306, i64 3912, !1306, i64 3916, !1306, i64 3920, !1306, i64 3924, !1306, i64 3928, !1585, i64 3936, !569, i64 3944, !1306, i64 3956, !1306, i64 3960, !1306, i64 3964, !569, i64 3968, !568, i64 4000, !568, i64 4008, !1306, i64 4016, !1171, i64 4024, !568, i64 4032, !1306, i64 4040, !1306, i64 4044, !1306, i64 4048, !1306, i64 4052, !1171, i64 4056, !1171, i64 4064, !1171, i64 4072, !1171, i64 4080, !1171, i64 4088, !1171, i64 4096, !1171, i64 4104, !1585, i64 4112, !1306, i64 4120, !1306, i64 4124, !569, i64 4128, !1171, i64 4136, !1306, i64 4144, !1585, i64 4152, !1585, i64 4160, !1171, i64 4168, !1585, i64 4176, !568, i64 4184, !568, i64 4192, !1306, i64 4200, !568, i64 4208, !1306, i64 4216, !1306, i64 4220, !1585, i64 4224, !568, i64 4232, !568, i64 4240, !1306, i64 4248, !1306, i64 4252, !1306, i64 4256, !1306, i64 4260, !1306, i64 4264, !568, i64 4272, !568, i64 4280, !1306, i64 4288, !1306, i64 4292, !1306, i64 4296, !1306, i64 4300, !1306, i64 4304, !1306, i64 4308, !1306, i64 4312, !1585, i64 4320, !1306, i64 4328, !568, i64 4336, !1585, i64 4344, !1306, i64 4352, !1306, i64 4356, !1306, i64 4360, !1306, i64 4364, !1306, i64 4368, !1306, i64 4372, !1306, i64 4376, !1585, i64 4384, !568, i64 4392, !568, i64 4400, !1171, i64 4408, !568, i64 4416, !1306, i64 4424, !1306, i64 4428, !1171, i64 4432, !1306, i64 4440, !1306, i64 4444, !1306, i64 4448, !1590, i64 4456, !568, i64 4568, !568, i64 4576, !568, i64 4584, !568, i64 4592, !568, i64 4600, !1585, i64 4608, !1306, i64 4616, !568, i64 4624, !1306, i64 4632, !1306, i64 4636, !1306, i64 4640, !1171, i64 4648, !1306, i64 4656}
!1585 = !{!"long long", !569, i64 0}
!1586 = !{!"socketFds", !569, i64 0, !1306, i64 64}
!1587 = !{!"double", !569, i64 0}
!1588 = !{!"malloc_stats", !1171, i64 0, !1171, i64 8, !1171, i64 16, !1171, i64 24, !1171, i64 32}
!1589 = !{!"redisOpArray", !568, i64 0, !1306, i64 8, !1306, i64 12}
!1590 = !{!"redisTLSContextConfig", !568, i64 0, !568, i64 8, !568, i64 16, !568, i64 24, !568, i64 32, !568, i64 40, !568, i64 48, !568, i64 56, !568, i64 64, !568, i64 72, !568, i64 80, !568, i64 88, !1306, i64 96, !1306, i64 100, !1306, i64 104, !1306, i64 108}
!1591 = !DILocation(line: 412, column: 9, scope: !1582)
!1592 = !DILocation(line: 413, column: 17, scope: !1579)
!1593 = !DILocation(line: 413, column: 9, scope: !1579)
!1594 = !DILocation(line: 414, column: 9, scope: !1579)
!1595 = !DILocation(line: 417, column: 5, scope: !1558)
!1596 = !DILocation(line: 417, column: 13, scope: !1558)
!1597 = !DILocation(line: 417, column: 17, scope: !1558)
!1598 = !DILocation(line: 418, column: 5, scope: !1558)
!1599 = !DILocation(line: 418, column: 8, scope: !1558)
!1600 = !DILocation(line: 418, column: 14, scope: !1558)
!1601 = !{!1602, !1171, i64 8}
!1602 = !{!"client", !1171, i64 0, !1171, i64 8, !568, i64 16, !1306, i64 24, !568, i64 32, !568, i64 40, !568, i64 48, !1171, i64 56, !1171, i64 64, !1306, i64 72, !568, i64 80, !1306, i64 88, !1306, i64 92, !568, i64 96, !1171, i64 104, !568, i64 112, !568, i64 120, !568, i64 128, !568, i64 136, !1306, i64 144, !1306, i64 148, !1171, i64 152, !568, i64 160, !1585, i64 168, !568, i64 176, !1171, i64 184, !1171, i64 192, !1171, i64 200, !1306, i64 208, !1171, i64 216, !1171, i64 224, !1306, i64 232, !1306, i64 236, !1306, i64 240, !1306, i64 244, !1171, i64 248, !1171, i64 256, !568, i64 264, !1585, i64 272, !1585, i64 280, !1585, i64 288, !1585, i64 296, !1585, i64 304, !1585, i64 312, !1585, i64 320, !569, i64 328, !1306, i64 372, !568, i64 376, !1306, i64 384, !1306, i64 388, !1603, i64 392, !1306, i64 432, !1604, i64 440, !1585, i64 528, !568, i64 536, !568, i64 544, !568, i64 552, !568, i64 560, !568, i64 568, !568, i64 576, !568, i64 584, !568, i64 592, !568, i64 600, !568, i64 608, !568, i64 616, !568, i64 624, !1171, i64 632, !568, i64 640, !1171, i64 648, !1306, i64 656, !568, i64 664, !568, i64 672, !568, i64 680, !1171, i64 688, !1171, i64 696, !1585, i64 704, !1306, i64 712, !1171, i64 720, !568, i64 728}
!1603 = !{!"multiState", !568, i64 0, !1306, i64 8, !1306, i64 12, !1306, i64 16, !1171, i64 24, !1306, i64 32}
!1604 = !{!"blockingState", !1171, i64 0, !1585, i64 8, !568, i64 16, !568, i64 24, !1605, i64 32, !1171, i64 40, !568, i64 48, !568, i64 56, !1306, i64 64, !1306, i64 68, !1585, i64 72, !568, i64 80}
!1605 = !{!"blockPos", !1306, i64 0, !1306, i64 4}
!1606 = !DILocation(line: 419, column: 5, scope: !1558)
!1607 = !DILocation(line: 419, column: 17, scope: !1558)
!1608 = !DILocation(line: 419, column: 22, scope: !1558)
!1609 = !DILocation(line: 420, column: 6, scope: !1558)
!1610 = !DILocation(line: 420, column: 25, scope: !1558)
!1611 = !DILocation(line: 420, column: 35, scope: !1558)
!1612 = !DILocation(line: 420, column: 62, scope: !1558)
!1613 = !DILocation(line: 420, column: 75, scope: !1558)
!1614 = !{!1193, !568, i64 16}
!1615 = !DILocation(line: 420, column: 11, scope: !1558)
!1616 = !{i64 0, i64 8, !567, i64 8, i64 8, !567, i64 16, i64 8, !567}
!1617 = !DILocation(line: 422, column: 13, scope: !1558)
!1618 = !DILocation(line: 422, column: 22, scope: !1558)
!1619 = !DILocation(line: 422, column: 39, scope: !1558)
!1620 = !DILocation(line: 422, column: 5, scope: !1558)
!1621 = !DILocation(line: 424, column: 28, scope: !1558)
!1622 = !DILocation(line: 424, column: 62, scope: !1558)
!1623 = !DILocation(line: 424, column: 66, scope: !1558)
!1624 = !DILocation(line: 424, column: 47, scope: !1558)
!1625 = !DILocation(line: 424, column: 45, scope: !1558)
!1626 = !DILocation(line: 425, column: 13, scope: !1558)
!1627 = !DILocation(line: 424, column: 72, scope: !1558)
!1628 = !DILocation(line: 426, column: 13, scope: !1558)
!1629 = !DILocation(line: 426, column: 21, scope: !1558)
!1630 = !{!1197, !568, i64 40}
!1631 = !DILocation(line: 426, column: 48, scope: !1558)
!1632 = !DILocation(line: 426, column: 56, scope: !1558)
!1633 = !DILocation(line: 425, column: 34, scope: !1558)
!1634 = !DILocation(line: 424, column: 25, scope: !1558)
!1635 = !DILocation(line: 428, column: 5, scope: !1558)
!1636 = !DILocation(line: 429, column: 1, scope: !1558)
!1637 = !DISubprogram(name: "_serverLog", scope: !16, file: !16, line: 2915, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !181, !627, null}
!1640 = !DISubprogram(name: "sdsfree", scope: !73, file: !73, line: 223, type: !1641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !591}
!1643 = !DISubprogram(name: "createClient", scope: !16, file: !16, line: 2433, type: !1644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!630, !637}
!1646 = !DISubprogram(name: "je_malloc_usable_size", scope: !1647, file: !1647, line: 273, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1647 = !DIFile(filename: "../deps/jemalloc/include/jemalloc/jemalloc.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "d181e8f693d53034cc8701ff0bf81715")
!1648 = !DISubprogram(name: "sdsZmallocSize", scope: !16, file: !16, line: 2494, type: !1649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!191, !591}
!1651 = distinct !DISubprogram(name: "functionStatsCommand", scope: !3, file: !3, line: 434, type: !867, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1652)
!1652 = !{!1653, !1654, !1657, !1659, !1660, !1661, !1663}
!1653 = !DILocalVariable(name: "c", arg: 1, scope: !1651, file: !3, line: 434, type: !630)
!1654 = !DILocalVariable(name: "script_client", scope: !1655, file: !3, line: 450, type: !630)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 445, column: 12)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 443, column: 9)
!1657 = !DILocalVariable(name: "i", scope: !1658, file: !3, line: 452, type: !181)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 452, column: 9)
!1659 = !DILocalVariable(name: "iter", scope: !1651, file: !3, line: 461, type: !1223)
!1660 = !DILocalVariable(name: "entry", scope: !1651, file: !3, line: 462, type: !143)
!1661 = !DILocalVariable(name: "ei", scope: !1662, file: !3, line: 464, type: !601)
!1662 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 463, column: 38)
!1663 = !DILocalVariable(name: "e_stats", scope: !1662, file: !3, line: 467, type: !561)
!1664 = !DILocation(line: 434, column: 35, scope: !1651)
!1665 = !DILocation(line: 435, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 435, column: 9)
!1667 = !DILocation(line: 435, column: 27, scope: !1666)
!1668 = !DILocation(line: 435, column: 30, scope: !1666)
!1669 = !DILocation(line: 435, column: 9, scope: !1651)
!1670 = !DILocation(line: 436, column: 29, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 435, column: 46)
!1672 = !DILocation(line: 436, column: 39, scope: !1671)
!1673 = !{!1674, !568, i64 264}
!1674 = !{!"sharedObjectsStruct", !568, i64 0, !568, i64 8, !568, i64 16, !568, i64 24, !568, i64 32, !568, i64 40, !568, i64 48, !568, i64 56, !568, i64 64, !569, i64 72, !569, i64 104, !569, i64 136, !569, i64 168, !568, i64 200, !568, i64 208, !568, i64 216, !568, i64 224, !568, i64 232, !568, i64 240, !568, i64 248, !568, i64 256, !568, i64 264, !568, i64 272, !568, i64 280, !568, i64 288, !568, i64 296, !568, i64 304, !568, i64 312, !568, i64 320, !568, i64 328, !568, i64 336, !568, i64 344, !568, i64 352, !568, i64 360, !568, i64 368, !568, i64 376, !568, i64 384, !568, i64 392, !568, i64 400, !568, i64 408, !568, i64 416, !568, i64 424, !568, i64 432, !568, i64 440, !568, i64 448, !568, i64 456, !568, i64 464, !568, i64 472, !568, i64 480, !568, i64 488, !568, i64 496, !568, i64 504, !568, i64 512, !568, i64 520, !568, i64 528, !568, i64 536, !568, i64 544, !568, i64 552, !568, i64 560, !568, i64 568, !568, i64 576, !568, i64 584, !568, i64 592, !568, i64 600, !568, i64 608, !568, i64 616, !568, i64 624, !568, i64 632, !568, i64 640, !568, i64 648, !568, i64 656, !568, i64 664, !568, i64 672, !568, i64 680, !568, i64 688, !568, i64 696, !568, i64 704, !568, i64 712, !568, i64 720, !568, i64 728, !568, i64 736, !568, i64 744, !568, i64 752, !568, i64 760, !568, i64 768, !568, i64 776, !569, i64 784, !569, i64 864, !569, i64 80864, !569, i64 81120, !569, i64 81376, !569, i64 81632, !568, i64 81888, !568, i64 81896}
!1675 = !DILocation(line: 436, column: 9, scope: !1671)
!1676 = !DILocation(line: 437, column: 9, scope: !1671)
!1677 = !DILocation(line: 440, column: 20, scope: !1651)
!1678 = !DILocation(line: 440, column: 5, scope: !1651)
!1679 = !DILocation(line: 442, column: 25, scope: !1651)
!1680 = !DILocation(line: 442, column: 5, scope: !1651)
!1681 = !DILocation(line: 443, column: 10, scope: !1656)
!1682 = !DILocation(line: 443, column: 9, scope: !1651)
!1683 = !DILocation(line: 444, column: 22, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 443, column: 29)
!1685 = !DILocation(line: 444, column: 9, scope: !1684)
!1686 = !DILocation(line: 445, column: 5, scope: !1684)
!1687 = !DILocation(line: 446, column: 24, scope: !1655)
!1688 = !DILocation(line: 446, column: 9, scope: !1655)
!1689 = !DILocation(line: 447, column: 29, scope: !1655)
!1690 = !DILocation(line: 447, column: 9, scope: !1655)
!1691 = !DILocation(line: 448, column: 29, scope: !1655)
!1692 = !DILocation(line: 448, column: 32, scope: !1655)
!1693 = !DILocation(line: 448, column: 9, scope: !1655)
!1694 = !DILocation(line: 449, column: 29, scope: !1655)
!1695 = !DILocation(line: 449, column: 9, scope: !1655)
!1696 = !DILocation(line: 450, column: 9, scope: !1655)
!1697 = !DILocation(line: 450, column: 17, scope: !1655)
!1698 = !DILocation(line: 450, column: 33, scope: !1655)
!1699 = !DILocation(line: 451, column: 26, scope: !1655)
!1700 = !DILocation(line: 451, column: 29, scope: !1655)
!1701 = !DILocation(line: 451, column: 44, scope: !1655)
!1702 = !{!1602, !1306, i64 72}
!1703 = !DILocation(line: 451, column: 9, scope: !1655)
!1704 = !DILocation(line: 452, column: 14, scope: !1658)
!1705 = !DILocation(line: 452, column: 18, scope: !1658)
!1706 = !DILocation(line: 452, column: 26, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 452, column: 9)
!1708 = !DILocation(line: 452, column: 30, scope: !1707)
!1709 = !DILocation(line: 452, column: 45, scope: !1707)
!1710 = !DILocation(line: 452, column: 28, scope: !1707)
!1711 = !DILocation(line: 452, column: 9, scope: !1658)
!1712 = !DILocation(line: 452, column: 9, scope: !1707)
!1713 = !DILocation(line: 453, column: 33, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 452, column: 57)
!1715 = !DILocation(line: 453, column: 36, scope: !1714)
!1716 = !DILocation(line: 453, column: 51, scope: !1714)
!1717 = !{!1602, !568, i64 80}
!1718 = !DILocation(line: 453, column: 56, scope: !1714)
!1719 = !DILocation(line: 453, column: 60, scope: !1714)
!1720 = !{!1721, !568, i64 8}
!1721 = !{!"redisObject", !1306, i64 0, !1306, i64 0, !1306, i64 1, !1306, i64 4, !568, i64 8}
!1722 = !DILocation(line: 453, column: 72, scope: !1714)
!1723 = !DILocation(line: 453, column: 87, scope: !1714)
!1724 = !DILocation(line: 453, column: 92, scope: !1714)
!1725 = !DILocation(line: 453, column: 96, scope: !1714)
!1726 = !DILocation(line: 453, column: 65, scope: !1714)
!1727 = !DILocation(line: 453, column: 13, scope: !1714)
!1728 = !DILocation(line: 454, column: 9, scope: !1714)
!1729 = !DILocation(line: 452, column: 52, scope: !1707)
!1730 = distinct !{!1730, !1711, !1731, !1274}
!1731 = !DILocation(line: 454, column: 9, scope: !1658)
!1732 = !DILocation(line: 455, column: 29, scope: !1655)
!1733 = !DILocation(line: 455, column: 9, scope: !1655)
!1734 = !DILocation(line: 456, column: 26, scope: !1655)
!1735 = !DILocation(line: 456, column: 29, scope: !1655)
!1736 = !DILocation(line: 456, column: 9, scope: !1655)
!1737 = !DILocation(line: 457, column: 5, scope: !1656)
!1738 = !DILocation(line: 459, column: 25, scope: !1651)
!1739 = !DILocation(line: 459, column: 5, scope: !1651)
!1740 = !DILocation(line: 460, column: 20, scope: !1651)
!1741 = !DILocation(line: 460, column: 23, scope: !1651)
!1742 = !DILocation(line: 460, column: 5, scope: !1651)
!1743 = !DILocation(line: 461, column: 5, scope: !1651)
!1744 = !DILocation(line: 461, column: 19, scope: !1651)
!1745 = !DILocation(line: 461, column: 42, scope: !1651)
!1746 = !DILocation(line: 461, column: 26, scope: !1651)
!1747 = !DILocation(line: 462, column: 5, scope: !1651)
!1748 = !DILocation(line: 462, column: 16, scope: !1651)
!1749 = !DILocation(line: 463, column: 5, scope: !1651)
!1750 = !DILocation(line: 463, column: 30, scope: !1651)
!1751 = !DILocation(line: 463, column: 21, scope: !1651)
!1752 = !DILocation(line: 463, column: 19, scope: !1651)
!1753 = !DILocation(line: 464, column: 9, scope: !1662)
!1754 = !DILocation(line: 464, column: 21, scope: !1662)
!1755 = !DILocation(line: 464, column: 26, scope: !1662)
!1756 = !DILocation(line: 465, column: 29, scope: !1662)
!1757 = !DILocation(line: 465, column: 32, scope: !1662)
!1758 = !DILocation(line: 465, column: 36, scope: !1662)
!1759 = !DILocation(line: 465, column: 9, scope: !1662)
!1760 = !DILocation(line: 466, column: 24, scope: !1662)
!1761 = !DILocation(line: 466, column: 9, scope: !1662)
!1762 = !DILocation(line: 467, column: 9, scope: !1662)
!1763 = !DILocation(line: 467, column: 34, scope: !1662)
!1764 = !DILocation(line: 467, column: 59, scope: !1662)
!1765 = !DILocation(line: 467, column: 83, scope: !1662)
!1766 = !DILocation(line: 467, column: 98, scope: !1662)
!1767 = !DILocation(line: 467, column: 102, scope: !1662)
!1768 = !DILocation(line: 467, column: 44, scope: !1662)
!1769 = !DILocation(line: 468, column: 29, scope: !1662)
!1770 = !DILocation(line: 468, column: 9, scope: !1662)
!1771 = !DILocation(line: 469, column: 26, scope: !1662)
!1772 = !DILocation(line: 469, column: 29, scope: !1662)
!1773 = !DILocation(line: 469, column: 38, scope: !1662)
!1774 = !DILocation(line: 469, column: 9, scope: !1662)
!1775 = !DILocation(line: 470, column: 29, scope: !1662)
!1776 = !DILocation(line: 470, column: 9, scope: !1662)
!1777 = !DILocation(line: 471, column: 26, scope: !1662)
!1778 = !DILocation(line: 471, column: 29, scope: !1662)
!1779 = !DILocation(line: 471, column: 38, scope: !1662)
!1780 = !DILocation(line: 471, column: 9, scope: !1662)
!1781 = !DILocation(line: 472, column: 5, scope: !1651)
!1782 = distinct !{!1782, !1749, !1781, !1274}
!1783 = !DILocation(line: 473, column: 25, scope: !1651)
!1784 = !DILocation(line: 473, column: 5, scope: !1651)
!1785 = !DILocation(line: 474, column: 1, scope: !1651)
!1786 = !DISubprogram(name: "scriptIsRunning", scope: !623, file: !623, line: 104, type: !1787, spFlags: DISPFlagOptimized)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!181}
!1789 = !DISubprogram(name: "scriptIsEval", scope: !623, file: !623, line: 106, type: !1787, spFlags: DISPFlagOptimized)
!1790 = !DISubprogram(name: "addReplyErrorObject", scope: !16, file: !16, line: 2469, type: !1791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !630, !823}
!1793 = !DISubprogram(name: "addReplyMapLen", scope: !16, file: !16, line: 2484, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !630, !157}
!1796 = !DISubprogram(name: "addReplyBulkCString", scope: !16, file: !16, line: 2462, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{null, !630, !627}
!1799 = !DISubprogram(name: "addReplyNull", scope: !16, file: !16, line: 2455, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1800 = !DISubprogram(name: "scriptCurrFunction", scope: !623, file: !623, line: 105, type: !1801, spFlags: DISPFlagOptimized)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!627}
!1803 = !DISubprogram(name: "scriptGetCaller", scope: !623, file: !623, line: 109, type: !1804, spFlags: DISPFlagOptimized)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!630}
!1806 = !DISubprogram(name: "addReplyArrayLen", scope: !16, file: !16, line: 2483, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1807 = !DISubprogram(name: "addReplyBulkCBuffer", scope: !16, file: !16, line: 2463, type: !1808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !630, !128, !191}
!1810 = distinct !DISubprogram(name: "sdslen", scope: !73, file: !73, line: 87, type: !1811, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1814)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!191, !1813}
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!1814 = !{!1815, !1816}
!1815 = !DILocalVariable(name: "s", arg: 1, scope: !1810, file: !73, line: 87, type: !1813)
!1816 = !DILocalVariable(name: "flags", scope: !1810, file: !73, line: 88, type: !67)
!1817 = !DILocation(line: 87, column: 39, scope: !1810)
!1818 = !DILocation(line: 88, column: 5, scope: !1810)
!1819 = !DILocation(line: 88, column: 19, scope: !1810)
!1820 = !DILocation(line: 88, column: 27, scope: !1810)
!1821 = !DILocation(line: 89, column: 12, scope: !1810)
!1822 = !DILocation(line: 89, column: 17, scope: !1810)
!1823 = !DILocation(line: 89, column: 5, scope: !1810)
!1824 = !DILocation(line: 91, column: 20, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1810, file: !73, line: 89, column: 33)
!1826 = !DILocation(line: 91, column: 13, scope: !1825)
!1827 = !DILocation(line: 93, column: 20, scope: !1825)
!1828 = !DILocation(line: 93, column: 34, scope: !1825)
!1829 = !DILocation(line: 93, column: 13, scope: !1825)
!1830 = !DILocation(line: 95, column: 20, scope: !1825)
!1831 = !DILocation(line: 95, column: 35, scope: !1825)
!1832 = !{!1833, !1833, i64 0}
!1833 = !{!"short", !569, i64 0}
!1834 = !DILocation(line: 95, column: 13, scope: !1825)
!1835 = !DILocation(line: 97, column: 20, scope: !1825)
!1836 = !DILocation(line: 97, column: 35, scope: !1825)
!1837 = !DILocation(line: 97, column: 13, scope: !1825)
!1838 = !DILocation(line: 99, column: 20, scope: !1825)
!1839 = !DILocation(line: 99, column: 35, scope: !1825)
!1840 = !DILocation(line: 99, column: 13, scope: !1825)
!1841 = !DILocation(line: 101, column: 5, scope: !1810)
!1842 = !DILocation(line: 102, column: 1, scope: !1810)
!1843 = !DISubprogram(name: "addReplyLongLong", scope: !16, file: !16, line: 2482, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !630, !657}
!1846 = !DISubprogram(name: "scriptRunDuration", scope: !623, file: !623, line: 111, type: !1847, spFlags: DISPFlagOptimized)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!657}
!1849 = distinct !DISubprogram(name: "functionListCommand", scope: !3, file: !3, line: 508, type: !867, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1856, !1859, !1860, !1861, !1862, !1863, !1865, !1866, !1867}
!1851 = !DILocalVariable(name: "c", arg: 1, scope: !1849, file: !3, line: 508, type: !630)
!1852 = !DILocalVariable(name: "with_code", scope: !1849, file: !3, line: 509, type: !181)
!1853 = !DILocalVariable(name: "library_name", scope: !1849, file: !3, line: 510, type: !591)
!1854 = !DILocalVariable(name: "i", scope: !1855, file: !3, line: 511, type: !181)
!1855 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 511, column: 5)
!1856 = !DILocalVariable(name: "next_arg", scope: !1857, file: !3, line: 512, type: !823)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 511, column: 41)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 511, column: 5)
!1859 = !DILocalVariable(name: "reply_len", scope: !1849, file: !3, line: 528, type: !191)
!1860 = !DILocalVariable(name: "len_ptr", scope: !1849, file: !3, line: 529, type: !65)
!1861 = !DILocalVariable(name: "iter", scope: !1849, file: !3, line: 536, type: !1223)
!1862 = !DILocalVariable(name: "entry", scope: !1849, file: !3, line: 537, type: !143)
!1863 = !DILocalVariable(name: "li", scope: !1864, file: !3, line: 539, type: !594)
!1864 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 538, column: 38)
!1865 = !DILocalVariable(name: "functions_iter", scope: !1864, file: !3, line: 554, type: !1223)
!1866 = !DILocalVariable(name: "function_entry", scope: !1864, file: !3, line: 555, type: !143)
!1867 = !DILocalVariable(name: "fi", scope: !1868, file: !3, line: 557, type: !585)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 556, column: 61)
!1869 = !DILocation(line: 508, column: 34, scope: !1849)
!1870 = !DILocation(line: 509, column: 5, scope: !1849)
!1871 = !DILocation(line: 509, column: 9, scope: !1849)
!1872 = !DILocation(line: 510, column: 5, scope: !1849)
!1873 = !DILocation(line: 510, column: 9, scope: !1849)
!1874 = !DILocation(line: 511, column: 10, scope: !1855)
!1875 = !DILocation(line: 511, column: 14, scope: !1855)
!1876 = !DILocation(line: 511, column: 22, scope: !1858)
!1877 = !DILocation(line: 511, column: 26, scope: !1858)
!1878 = !DILocation(line: 511, column: 29, scope: !1858)
!1879 = !DILocation(line: 511, column: 24, scope: !1858)
!1880 = !DILocation(line: 511, column: 5, scope: !1855)
!1881 = !DILocation(line: 512, column: 9, scope: !1857)
!1882 = !DILocation(line: 512, column: 15, scope: !1857)
!1883 = !DILocation(line: 512, column: 26, scope: !1857)
!1884 = !DILocation(line: 512, column: 29, scope: !1857)
!1885 = !DILocation(line: 512, column: 34, scope: !1857)
!1886 = !DILocation(line: 513, column: 14, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 513, column: 13)
!1888 = !DILocation(line: 513, column: 24, scope: !1887)
!1889 = !DILocation(line: 513, column: 39, scope: !1887)
!1890 = !DILocation(line: 513, column: 49, scope: !1887)
!1891 = !DILocation(line: 513, column: 28, scope: !1887)
!1892 = !DILocation(line: 513, column: 13, scope: !1857)
!1893 = !DILocation(line: 514, column: 23, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 513, column: 67)
!1895 = !DILocation(line: 515, column: 13, scope: !1894)
!1896 = !DILocation(line: 517, column: 14, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 517, column: 13)
!1898 = !DILocation(line: 517, column: 27, scope: !1897)
!1899 = !DILocation(line: 517, column: 42, scope: !1897)
!1900 = !DILocation(line: 517, column: 52, scope: !1897)
!1901 = !DILocation(line: 517, column: 31, scope: !1897)
!1902 = !DILocation(line: 517, column: 13, scope: !1857)
!1903 = !DILocation(line: 518, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 518, column: 17)
!1905 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 517, column: 73)
!1906 = !DILocation(line: 518, column: 22, scope: !1904)
!1907 = !DILocation(line: 518, column: 25, scope: !1904)
!1908 = !DILocation(line: 518, column: 30, scope: !1904)
!1909 = !DILocation(line: 518, column: 19, scope: !1904)
!1910 = !DILocation(line: 518, column: 17, scope: !1905)
!1911 = !DILocation(line: 519, column: 31, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 518, column: 35)
!1913 = !DILocation(line: 519, column: 17, scope: !1912)
!1914 = !DILocation(line: 520, column: 17, scope: !1912)
!1915 = !DILocation(line: 522, column: 28, scope: !1905)
!1916 = !DILocation(line: 522, column: 31, scope: !1905)
!1917 = !DILocation(line: 522, column: 36, scope: !1905)
!1918 = !DILocation(line: 522, column: 42, scope: !1905)
!1919 = !DILocation(line: 522, column: 26, scope: !1905)
!1920 = !DILocation(line: 523, column: 13, scope: !1905)
!1921 = !DILocation(line: 525, column: 26, scope: !1857)
!1922 = !DILocation(line: 525, column: 39, scope: !1857)
!1923 = !DILocation(line: 525, column: 74, scope: !1857)
!1924 = !DILocation(line: 525, column: 84, scope: !1857)
!1925 = !DILocation(line: 525, column: 29, scope: !1857)
!1926 = !DILocation(line: 525, column: 9, scope: !1857)
!1927 = !DILocation(line: 526, column: 9, scope: !1857)
!1928 = !DILocation(line: 527, column: 5, scope: !1858)
!1929 = !DILocation(line: 511, column: 36, scope: !1858)
!1930 = !DILocation(line: 511, column: 5, scope: !1858)
!1931 = distinct !{!1931, !1880, !1932, !1274}
!1932 = !DILocation(line: 527, column: 5, scope: !1855)
!1933 = !DILocation(line: 528, column: 5, scope: !1849)
!1934 = !DILocation(line: 528, column: 12, scope: !1849)
!1935 = !DILocation(line: 529, column: 5, scope: !1849)
!1936 = !DILocation(line: 529, column: 11, scope: !1849)
!1937 = !DILocation(line: 530, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 530, column: 9)
!1939 = !DILocation(line: 530, column: 9, scope: !1849)
!1940 = !DILocation(line: 531, column: 39, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 530, column: 23)
!1942 = !DILocation(line: 531, column: 19, scope: !1941)
!1943 = !DILocation(line: 531, column: 17, scope: !1941)
!1944 = !DILocation(line: 532, column: 5, scope: !1941)
!1945 = !DILocation(line: 534, column: 26, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 532, column: 12)
!1947 = !DILocation(line: 534, column: 29, scope: !1946)
!1948 = !DILocation(line: 534, column: 9, scope: !1946)
!1949 = !DILocation(line: 536, column: 5, scope: !1849)
!1950 = !DILocation(line: 536, column: 19, scope: !1849)
!1951 = !DILocation(line: 536, column: 42, scope: !1849)
!1952 = !DILocation(line: 536, column: 66, scope: !1849)
!1953 = !DILocation(line: 536, column: 26, scope: !1849)
!1954 = !DILocation(line: 537, column: 5, scope: !1849)
!1955 = !DILocation(line: 537, column: 16, scope: !1849)
!1956 = !DILocation(line: 538, column: 5, scope: !1849)
!1957 = !DILocation(line: 538, column: 30, scope: !1849)
!1958 = !DILocation(line: 538, column: 21, scope: !1849)
!1959 = !DILocation(line: 538, column: 19, scope: !1849)
!1960 = !DILocation(line: 539, column: 9, scope: !1864)
!1961 = !DILocation(line: 539, column: 26, scope: !1864)
!1962 = !DILocation(line: 539, column: 31, scope: !1864)
!1963 = !DILocation(line: 540, column: 13, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 540, column: 13)
!1965 = !DILocation(line: 540, column: 13, scope: !1864)
!1966 = !DILocation(line: 541, column: 33, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 541, column: 17)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 540, column: 27)
!1969 = !DILocation(line: 541, column: 54, scope: !1967)
!1970 = !DILocation(line: 541, column: 47, scope: !1967)
!1971 = !DILocation(line: 541, column: 69, scope: !1967)
!1972 = !DILocation(line: 541, column: 73, scope: !1967)
!1973 = !{!1190, !568, i64 0}
!1974 = !DILocation(line: 541, column: 86, scope: !1967)
!1975 = !DILocation(line: 541, column: 90, scope: !1967)
!1976 = !DILocation(line: 541, column: 79, scope: !1967)
!1977 = !DILocation(line: 541, column: 18, scope: !1967)
!1978 = !DILocation(line: 541, column: 17, scope: !1968)
!1979 = !DILocation(line: 542, column: 17, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 541, column: 101)
!1981 = distinct !{!1981, !1956, !1982, !1274}
!1982 = !DILocation(line: 576, column: 5, scope: !1849)
!1983 = !DILocation(line: 544, column: 9, scope: !1968)
!1984 = !DILocation(line: 545, column: 9, scope: !1864)
!1985 = !DILocation(line: 546, column: 24, scope: !1864)
!1986 = !DILocation(line: 546, column: 27, scope: !1864)
!1987 = !DILocation(line: 546, column: 9, scope: !1864)
!1988 = !DILocation(line: 547, column: 29, scope: !1864)
!1989 = !DILocation(line: 547, column: 9, scope: !1864)
!1990 = !DILocation(line: 548, column: 29, scope: !1864)
!1991 = !DILocation(line: 548, column: 32, scope: !1864)
!1992 = !DILocation(line: 548, column: 36, scope: !1864)
!1993 = !DILocation(line: 548, column: 49, scope: !1864)
!1994 = !DILocation(line: 548, column: 53, scope: !1864)
!1995 = !DILocation(line: 548, column: 42, scope: !1864)
!1996 = !DILocation(line: 548, column: 9, scope: !1864)
!1997 = !DILocation(line: 549, column: 29, scope: !1864)
!1998 = !DILocation(line: 549, column: 9, scope: !1864)
!1999 = !DILocation(line: 550, column: 29, scope: !1864)
!2000 = !DILocation(line: 550, column: 32, scope: !1864)
!2001 = !DILocation(line: 550, column: 36, scope: !1864)
!2002 = !DILocation(line: 550, column: 40, scope: !1864)
!2003 = !DILocation(line: 550, column: 53, scope: !1864)
!2004 = !DILocation(line: 550, column: 57, scope: !1864)
!2005 = !DILocation(line: 550, column: 61, scope: !1864)
!2006 = !DILocation(line: 550, column: 46, scope: !1864)
!2007 = !DILocation(line: 550, column: 9, scope: !1864)
!2008 = !DILocation(line: 552, column: 29, scope: !1864)
!2009 = !DILocation(line: 552, column: 9, scope: !1864)
!2010 = !DILocation(line: 553, column: 26, scope: !1864)
!2011 = !DILocation(line: 553, column: 29, scope: !1864)
!2012 = !DILocation(line: 553, column: 9, scope: !1864)
!2013 = !DILocation(line: 554, column: 9, scope: !1864)
!2014 = !DILocation(line: 554, column: 23, scope: !1864)
!2015 = !DILocation(line: 554, column: 56, scope: !1864)
!2016 = !DILocation(line: 554, column: 60, scope: !1864)
!2017 = !DILocation(line: 554, column: 40, scope: !1864)
!2018 = !DILocation(line: 555, column: 9, scope: !1864)
!2019 = !DILocation(line: 555, column: 20, scope: !1864)
!2020 = !DILocation(line: 556, column: 9, scope: !1864)
!2021 = !DILocation(line: 556, column: 43, scope: !1864)
!2022 = !DILocation(line: 556, column: 34, scope: !1864)
!2023 = !DILocation(line: 556, column: 32, scope: !1864)
!2024 = !DILocation(line: 557, column: 13, scope: !1868)
!2025 = !DILocation(line: 557, column: 27, scope: !1868)
!2026 = !DILocation(line: 557, column: 32, scope: !1868)
!2027 = !DILocation(line: 558, column: 28, scope: !1868)
!2028 = !DILocation(line: 558, column: 13, scope: !1868)
!2029 = !DILocation(line: 559, column: 33, scope: !1868)
!2030 = !DILocation(line: 559, column: 13, scope: !1868)
!2031 = !DILocation(line: 560, column: 33, scope: !1868)
!2032 = !DILocation(line: 560, column: 36, scope: !1868)
!2033 = !DILocation(line: 560, column: 40, scope: !1868)
!2034 = !DILocation(line: 560, column: 53, scope: !1868)
!2035 = !DILocation(line: 560, column: 57, scope: !1868)
!2036 = !DILocation(line: 560, column: 46, scope: !1868)
!2037 = !DILocation(line: 560, column: 13, scope: !1868)
!2038 = !DILocation(line: 561, column: 33, scope: !1868)
!2039 = !DILocation(line: 561, column: 13, scope: !1868)
!2040 = !DILocation(line: 562, column: 17, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 562, column: 17)
!2042 = !DILocation(line: 562, column: 21, scope: !2041)
!2043 = !DILocation(line: 562, column: 17, scope: !1868)
!2044 = !DILocation(line: 563, column: 37, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 562, column: 27)
!2046 = !DILocation(line: 563, column: 40, scope: !2045)
!2047 = !DILocation(line: 563, column: 44, scope: !2045)
!2048 = !DILocation(line: 563, column: 57, scope: !2045)
!2049 = !DILocation(line: 563, column: 61, scope: !2045)
!2050 = !DILocation(line: 563, column: 50, scope: !2045)
!2051 = !DILocation(line: 563, column: 17, scope: !2045)
!2052 = !DILocation(line: 564, column: 13, scope: !2045)
!2053 = !DILocation(line: 565, column: 30, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 564, column: 20)
!2055 = !DILocation(line: 565, column: 17, scope: !2054)
!2056 = !DILocation(line: 567, column: 33, scope: !1868)
!2057 = !DILocation(line: 567, column: 13, scope: !1868)
!2058 = !DILocation(line: 568, column: 36, scope: !1868)
!2059 = !DILocation(line: 568, column: 39, scope: !1868)
!2060 = !DILocation(line: 568, column: 13, scope: !1868)
!2061 = !DILocation(line: 569, column: 9, scope: !1864)
!2062 = distinct !{!2062, !2020, !2061, !1274}
!2063 = !DILocation(line: 570, column: 29, scope: !1864)
!2064 = !DILocation(line: 570, column: 9, scope: !1864)
!2065 = !DILocation(line: 572, column: 13, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 572, column: 13)
!2067 = !DILocation(line: 572, column: 13, scope: !1864)
!2068 = !DILocation(line: 573, column: 33, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 572, column: 24)
!2070 = !DILocation(line: 573, column: 13, scope: !2069)
!2071 = !DILocation(line: 574, column: 33, scope: !2069)
!2072 = !DILocation(line: 574, column: 36, scope: !2069)
!2073 = !DILocation(line: 574, column: 40, scope: !2069)
!2074 = !{!1190, !568, i64 24}
!2075 = !DILocation(line: 574, column: 53, scope: !2069)
!2076 = !DILocation(line: 574, column: 57, scope: !2069)
!2077 = !DILocation(line: 574, column: 46, scope: !2069)
!2078 = !DILocation(line: 574, column: 13, scope: !2069)
!2079 = !DILocation(line: 575, column: 9, scope: !2069)
!2080 = !DILocation(line: 577, column: 25, scope: !1849)
!2081 = !DILocation(line: 577, column: 5, scope: !1849)
!2082 = !DILocation(line: 578, column: 9, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 578, column: 9)
!2084 = !DILocation(line: 578, column: 9, scope: !1849)
!2085 = !DILocation(line: 579, column: 29, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 578, column: 18)
!2087 = !DILocation(line: 579, column: 32, scope: !2086)
!2088 = !DILocation(line: 579, column: 41, scope: !2086)
!2089 = !DILocation(line: 579, column: 9, scope: !2086)
!2090 = !DILocation(line: 580, column: 5, scope: !2086)
!2091 = !DILocation(line: 581, column: 1, scope: !1849)
!2092 = !DISubprogram(name: "strcasecmp", scope: !2093, file: !2093, line: 116, type: !2094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2093 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!181, !627, !627}
!2096 = !DISubprogram(name: "addReplyError", scope: !16, file: !16, line: 2474, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2097 = !DISubprogram(name: "addReplyErrorSds", scope: !16, file: !16, line: 2473, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !630, !591}
!2100 = !DISubprogram(name: "sdscatfmt", scope: !73, file: !73, line: 239, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!591, !591, !627, null}
!2103 = !DISubprogram(name: "sdsempty", scope: !73, file: !73, line: 221, type: !2104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!591}
!2106 = !DISubprogram(name: "addReplyDeferredLen", scope: !16, file: !16, line: 2443, type: !2107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!65, !630}
!2109 = !DISubprogram(name: "stringmatchlen", scope: !2110, file: !2110, line: 60, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2110 = !DIFile(filename: "./util.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "4da9818ce0f61734688297ea1afde3f9")
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!181, !627, !181, !627, !181, !181}
!2113 = distinct !DISubprogram(name: "functionListReplyFlags", scope: !3, file: !3, line: 476, type: !2114, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !630, !585}
!2116 = !{!2117, !2118, !2119, !2120, !2128}
!2117 = !DILocalVariable(name: "c", arg: 1, scope: !2113, file: !3, line: 476, type: !630)
!2118 = !DILocalVariable(name: "fi", arg: 2, scope: !2113, file: !3, line: 476, type: !585)
!2119 = !DILocalVariable(name: "flagcount", scope: !2113, file: !3, line: 478, type: !181)
!2120 = !DILocalVariable(name: "flag", scope: !2121, file: !3, line: 479, type: !2122)
!2121 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 479, column: 5)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptFlag", file: !623, line: 92, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptFlag", file: !623, line: 89, size: 128, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !2124, file: !623, line: 90, baseType: !109, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2124, file: !623, line: 91, baseType: !627, size: 64, offset: 64)
!2128 = !DILocalVariable(name: "flag", scope: !2129, file: !3, line: 487, type: !2122)
!2129 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 487, column: 5)
!2130 = !DILocation(line: 476, column: 44, scope: !2113)
!2131 = !DILocation(line: 476, column: 61, scope: !2113)
!2132 = !DILocation(line: 478, column: 5, scope: !2113)
!2133 = !DILocation(line: 478, column: 9, scope: !2113)
!2134 = !DILocation(line: 479, column: 10, scope: !2121)
!2135 = !DILocation(line: 479, column: 22, scope: !2121)
!2136 = !DILocation(line: 479, column: 48, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 479, column: 5)
!2138 = !DILocation(line: 479, column: 54, scope: !2137)
!2139 = !{!2140, !568, i64 8}
!2140 = !{!"scriptFlag", !1171, i64 0, !568, i64 8}
!2141 = !DILocation(line: 479, column: 5, scope: !2121)
!2142 = !DILocation(line: 479, column: 5, scope: !2137)
!2143 = !DILocation(line: 480, column: 13, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 480, column: 13)
!2145 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 479, column: 68)
!2146 = !DILocation(line: 480, column: 17, scope: !2144)
!2147 = !DILocation(line: 480, column: 27, scope: !2144)
!2148 = !DILocation(line: 480, column: 33, scope: !2144)
!2149 = !{!2140, !1171, i64 0}
!2150 = !DILocation(line: 480, column: 25, scope: !2144)
!2151 = !DILocation(line: 480, column: 13, scope: !2145)
!2152 = !DILocation(line: 481, column: 13, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 480, column: 39)
!2154 = !DILocation(line: 482, column: 9, scope: !2153)
!2155 = !DILocation(line: 483, column: 5, scope: !2145)
!2156 = !DILocation(line: 479, column: 60, scope: !2137)
!2157 = distinct !{!2157, !2141, !2158, !1274}
!2158 = !DILocation(line: 483, column: 5, scope: !2121)
!2159 = !DILocation(line: 485, column: 20, scope: !2113)
!2160 = !DILocation(line: 485, column: 23, scope: !2113)
!2161 = !DILocation(line: 485, column: 5, scope: !2113)
!2162 = !DILocation(line: 487, column: 10, scope: !2129)
!2163 = !DILocation(line: 487, column: 22, scope: !2129)
!2164 = !DILocation(line: 487, column: 48, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 487, column: 5)
!2166 = !DILocation(line: 487, column: 54, scope: !2165)
!2167 = !DILocation(line: 487, column: 5, scope: !2129)
!2168 = !DILocation(line: 487, column: 5, scope: !2165)
!2169 = !DILocation(line: 488, column: 13, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 488, column: 13)
!2171 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 487, column: 68)
!2172 = !DILocation(line: 488, column: 17, scope: !2170)
!2173 = !DILocation(line: 488, column: 27, scope: !2170)
!2174 = !DILocation(line: 488, column: 33, scope: !2170)
!2175 = !DILocation(line: 488, column: 25, scope: !2170)
!2176 = !DILocation(line: 488, column: 13, scope: !2171)
!2177 = !DILocation(line: 489, column: 28, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 488, column: 39)
!2179 = !DILocation(line: 489, column: 31, scope: !2178)
!2180 = !DILocation(line: 489, column: 37, scope: !2178)
!2181 = !DILocation(line: 489, column: 13, scope: !2178)
!2182 = !DILocation(line: 490, column: 9, scope: !2178)
!2183 = !DILocation(line: 491, column: 5, scope: !2171)
!2184 = !DILocation(line: 487, column: 60, scope: !2165)
!2185 = distinct !{!2185, !2167, !2186, !1274}
!2186 = !DILocation(line: 491, column: 5, scope: !2129)
!2187 = !DILocation(line: 492, column: 1, scope: !2113)
!2188 = !DISubprogram(name: "setDeferredArrayLen", scope: !16, file: !16, line: 2444, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !630, !65, !157}
!2191 = distinct !DISubprogram(name: "functionDeleteCommand", scope: !3, file: !3, line: 586, type: !867, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2192 = !{!2193, !2194, !2195}
!2193 = !DILocalVariable(name: "c", arg: 1, scope: !2191, file: !3, line: 586, type: !630)
!2194 = !DILocalVariable(name: "function_name", scope: !2191, file: !3, line: 587, type: !823)
!2195 = !DILocalVariable(name: "li", scope: !2191, file: !3, line: 588, type: !594)
!2196 = !DILocation(line: 586, column: 36, scope: !2191)
!2197 = !DILocation(line: 587, column: 5, scope: !2191)
!2198 = !DILocation(line: 587, column: 11, scope: !2191)
!2199 = !DILocation(line: 587, column: 27, scope: !2191)
!2200 = !DILocation(line: 587, column: 30, scope: !2191)
!2201 = !DILocation(line: 588, column: 5, scope: !2191)
!2202 = !DILocation(line: 588, column: 22, scope: !2191)
!2203 = !DILocation(line: 588, column: 42, scope: !2191)
!2204 = !DILocation(line: 588, column: 66, scope: !2191)
!2205 = !DILocation(line: 588, column: 77, scope: !2191)
!2206 = !DILocation(line: 588, column: 92, scope: !2191)
!2207 = !DILocation(line: 588, column: 27, scope: !2191)
!2208 = !DILocation(line: 589, column: 10, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 589, column: 9)
!2210 = !DILocation(line: 589, column: 9, scope: !2191)
!2211 = !DILocation(line: 590, column: 23, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 589, column: 14)
!2213 = !DILocation(line: 590, column: 9, scope: !2212)
!2214 = !DILocation(line: 591, column: 9, scope: !2212)
!2215 = !DILocation(line: 594, column: 19, scope: !2191)
!2216 = !DILocation(line: 594, column: 43, scope: !2191)
!2217 = !DILocation(line: 594, column: 5, scope: !2191)
!2218 = !DILocation(line: 595, column: 23, scope: !2191)
!2219 = !DILocation(line: 595, column: 5, scope: !2191)
!2220 = !DILocation(line: 598, column: 17, scope: !2191)
!2221 = !{!1584, !1585, i64 3208}
!2222 = !DILocation(line: 599, column: 14, scope: !2191)
!2223 = !DILocation(line: 599, column: 24, scope: !2191)
!2224 = !{!1674, !568, i64 8}
!2225 = !DILocation(line: 599, column: 5, scope: !2191)
!2226 = !DILocation(line: 600, column: 1, scope: !2191)
!2227 = distinct !DISubprogram(name: "libraryUnlink", scope: !3, file: !3, line: 283, type: !2228, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !520, !594}
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2237, !2238}
!2231 = !DILocalVariable(name: "lib_ctx", arg: 1, scope: !2227, file: !3, line: 283, type: !520)
!2232 = !DILocalVariable(name: "li", arg: 2, scope: !2227, file: !3, line: 283, type: !594)
!2233 = !DILocalVariable(name: "iter", scope: !2227, file: !3, line: 284, type: !1223)
!2234 = !DILocalVariable(name: "entry", scope: !2227, file: !3, line: 285, type: !143)
!2235 = !DILocalVariable(name: "fi", scope: !2236, file: !3, line: 287, type: !585)
!2236 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 286, column: 38)
!2237 = !DILocalVariable(name: "ret", scope: !2236, file: !3, line: 288, type: !181)
!2238 = !DILocalVariable(name: "stats", scope: !2227, file: !3, line: 299, type: !561)
!2239 = !DILocation(line: 283, column: 44, scope: !2227)
!2240 = !DILocation(line: 283, column: 70, scope: !2227)
!2241 = !DILocation(line: 284, column: 5, scope: !2227)
!2242 = !DILocation(line: 284, column: 19, scope: !2227)
!2243 = !DILocation(line: 284, column: 42, scope: !2227)
!2244 = !DILocation(line: 284, column: 46, scope: !2227)
!2245 = !DILocation(line: 284, column: 26, scope: !2227)
!2246 = !DILocation(line: 285, column: 5, scope: !2227)
!2247 = !DILocation(line: 285, column: 16, scope: !2227)
!2248 = !DILocation(line: 286, column: 5, scope: !2227)
!2249 = !DILocation(line: 286, column: 30, scope: !2227)
!2250 = !DILocation(line: 286, column: 21, scope: !2227)
!2251 = !DILocation(line: 286, column: 19, scope: !2227)
!2252 = !DILocation(line: 287, column: 9, scope: !2236)
!2253 = !DILocation(line: 287, column: 23, scope: !2236)
!2254 = !DILocation(line: 287, column: 28, scope: !2236)
!2255 = !DILocation(line: 288, column: 9, scope: !2236)
!2256 = !DILocation(line: 288, column: 13, scope: !2236)
!2257 = !DILocation(line: 288, column: 30, scope: !2236)
!2258 = !DILocation(line: 288, column: 39, scope: !2236)
!2259 = !DILocation(line: 288, column: 50, scope: !2236)
!2260 = !DILocation(line: 288, column: 54, scope: !2236)
!2261 = !DILocation(line: 288, column: 19, scope: !2236)
!2262 = !DILocation(line: 289, column: 9, scope: !2236)
!2263 = !DILocation(line: 290, column: 53, scope: !2236)
!2264 = !DILocation(line: 290, column: 34, scope: !2236)
!2265 = !DILocation(line: 290, column: 9, scope: !2236)
!2266 = !DILocation(line: 290, column: 18, scope: !2236)
!2267 = !DILocation(line: 290, column: 31, scope: !2236)
!2268 = !DILocation(line: 291, column: 5, scope: !2227)
!2269 = distinct !{!2269, !2248, !2268, !1274}
!2270 = !DILocation(line: 292, column: 25, scope: !2227)
!2271 = !DILocation(line: 292, column: 5, scope: !2227)
!2272 = !DILocation(line: 293, column: 24, scope: !2227)
!2273 = !DILocation(line: 293, column: 33, scope: !2227)
!2274 = !DILocation(line: 293, column: 44, scope: !2227)
!2275 = !DILocation(line: 293, column: 48, scope: !2227)
!2276 = !DILocation(line: 293, column: 13, scope: !2227)
!2277 = !DILocation(line: 293, column: 11, scope: !2227)
!2278 = !DILocation(line: 294, column: 5, scope: !2227)
!2279 = !DILocation(line: 294, column: 5, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 294, column: 5)
!2281 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 294, column: 5)
!2282 = !{!2283, !568, i64 0}
!2283 = !{!"dict", !568, i64 0, !569, i64 8, !569, i64 24, !1171, i64 40, !1833, i64 48, !569, i64 50}
!2284 = !{!2285, !568, i64 16}
!2285 = !{!"dictType", !568, i64 0, !568, i64 8, !568, i64 16, !568, i64 24, !568, i64 32, !568, i64 40, !568, i64 48, !568, i64 56}
!2286 = !DILocation(line: 294, column: 5, scope: !2281)
!2287 = !DILocation(line: 295, column: 27, scope: !2227)
!2288 = !DILocation(line: 295, column: 36, scope: !2227)
!2289 = !DILocation(line: 295, column: 47, scope: !2227)
!2290 = !DILocation(line: 295, column: 5, scope: !2227)
!2291 = !DILocation(line: 296, column: 48, scope: !2227)
!2292 = !DILocation(line: 296, column: 30, scope: !2227)
!2293 = !DILocation(line: 296, column: 5, scope: !2227)
!2294 = !DILocation(line: 296, column: 14, scope: !2227)
!2295 = !DILocation(line: 296, column: 27, scope: !2227)
!2296 = !DILocation(line: 299, column: 5, scope: !2227)
!2297 = !DILocation(line: 299, column: 30, scope: !2227)
!2298 = !DILocation(line: 299, column: 53, scope: !2227)
!2299 = !DILocation(line: 299, column: 62, scope: !2227)
!2300 = !DILocation(line: 299, column: 77, scope: !2227)
!2301 = !DILocation(line: 299, column: 81, scope: !2227)
!2302 = !DILocation(line: 299, column: 85, scope: !2227)
!2303 = !DILocation(line: 299, column: 38, scope: !2227)
!2304 = !DILocation(line: 300, column: 5, scope: !2227)
!2305 = !DILocation(line: 301, column: 5, scope: !2227)
!2306 = !DILocation(line: 301, column: 12, scope: !2227)
!2307 = !DILocation(line: 301, column: 17, scope: !2227)
!2308 = !DILocation(line: 302, column: 27, scope: !2227)
!2309 = !DILocation(line: 302, column: 5, scope: !2227)
!2310 = !DILocation(line: 302, column: 12, scope: !2227)
!2311 = !DILocation(line: 302, column: 24, scope: !2227)
!2312 = !DILocation(line: 303, column: 1, scope: !2227)
!2313 = distinct !DISubprogram(name: "engineLibraryFree", scope: !3, file: !3, line: 158, type: !2314, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !594}
!2316 = !{!2317}
!2317 = !DILocalVariable(name: "li", arg: 1, scope: !2313, file: !3, line: 158, type: !594)
!2318 = !DILocation(line: 158, column: 48, scope: !2313)
!2319 = !DILocation(line: 159, column: 10, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 159, column: 9)
!2321 = !DILocation(line: 159, column: 9, scope: !2313)
!2322 = !DILocation(line: 160, column: 9, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 159, column: 14)
!2324 = !DILocation(line: 162, column: 17, scope: !2313)
!2325 = !DILocation(line: 162, column: 21, scope: !2313)
!2326 = !DILocation(line: 162, column: 5, scope: !2313)
!2327 = !DILocation(line: 163, column: 13, scope: !2313)
!2328 = !DILocation(line: 163, column: 17, scope: !2313)
!2329 = !DILocation(line: 163, column: 5, scope: !2313)
!2330 = !DILocation(line: 164, column: 13, scope: !2313)
!2331 = !DILocation(line: 164, column: 17, scope: !2313)
!2332 = !DILocation(line: 164, column: 5, scope: !2313)
!2333 = !DILocation(line: 165, column: 11, scope: !2313)
!2334 = !DILocation(line: 165, column: 5, scope: !2313)
!2335 = !DILocation(line: 166, column: 1, scope: !2313)
!2336 = !DISubprogram(name: "addReply", scope: !16, file: !16, line: 2465, type: !1791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2337 = distinct !DISubprogram(name: "functionKillCommand", scope: !3, file: !3, line: 603, type: !867, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2338)
!2338 = !{!2339}
!2339 = !DILocalVariable(name: "c", arg: 1, scope: !2337, file: !3, line: 603, type: !630)
!2340 = !DILocation(line: 603, column: 34, scope: !2337)
!2341 = !DILocation(line: 604, column: 16, scope: !2337)
!2342 = !DILocation(line: 604, column: 5, scope: !2337)
!2343 = !DILocation(line: 605, column: 1, scope: !2337)
!2344 = !DISubprogram(name: "scriptKill", scope: !623, file: !623, line: 103, type: !2345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !630, !181}
!2347 = distinct !DISubprogram(name: "fcallGetCommandFlags", scope: !3, file: !3, line: 609, type: !2348, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!109, !630, !109}
!2350 = !{!2351, !2352, !2353, !2354, !2355}
!2351 = !DILocalVariable(name: "c", arg: 1, scope: !2347, file: !3, line: 609, type: !630)
!2352 = !DILocalVariable(name: "cmd_flags", arg: 2, scope: !2347, file: !3, line: 609, type: !109)
!2353 = !DILocalVariable(name: "function_name", scope: !2347, file: !3, line: 610, type: !823)
!2354 = !DILocalVariable(name: "fi", scope: !2347, file: !3, line: 611, type: !585)
!2355 = !DILocalVariable(name: "script_flags", scope: !2347, file: !3, line: 614, type: !109)
!2356 = !DILocation(line: 609, column: 39, scope: !2347)
!2357 = !DILocation(line: 609, column: 51, scope: !2347)
!2358 = !DILocation(line: 610, column: 5, scope: !2347)
!2359 = !DILocation(line: 610, column: 11, scope: !2347)
!2360 = !DILocation(line: 610, column: 27, scope: !2347)
!2361 = !DILocation(line: 610, column: 30, scope: !2347)
!2362 = !DILocation(line: 611, column: 5, scope: !2347)
!2363 = !DILocation(line: 611, column: 19, scope: !2347)
!2364 = !DILocation(line: 611, column: 39, scope: !2347)
!2365 = !DILocation(line: 611, column: 63, scope: !2347)
!2366 = !DILocation(line: 611, column: 74, scope: !2347)
!2367 = !DILocation(line: 611, column: 89, scope: !2347)
!2368 = !DILocation(line: 611, column: 24, scope: !2347)
!2369 = !DILocation(line: 612, column: 10, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 612, column: 9)
!2371 = !DILocation(line: 612, column: 9, scope: !2347)
!2372 = !DILocation(line: 613, column: 16, scope: !2370)
!2373 = !DILocation(line: 613, column: 9, scope: !2370)
!2374 = !DILocation(line: 614, column: 5, scope: !2347)
!2375 = !DILocation(line: 614, column: 14, scope: !2347)
!2376 = !DILocation(line: 614, column: 29, scope: !2347)
!2377 = !DILocation(line: 614, column: 33, scope: !2347)
!2378 = !DILocation(line: 615, column: 34, scope: !2347)
!2379 = !DILocation(line: 615, column: 45, scope: !2347)
!2380 = !DILocation(line: 615, column: 12, scope: !2347)
!2381 = !DILocation(line: 615, column: 5, scope: !2347)
!2382 = !DILocation(line: 616, column: 1, scope: !2347)
!2383 = !DISubprogram(name: "scriptFlagsToCmdFlags", scope: !623, file: !623, line: 96, type: !2384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!109, !109, !109}
!2386 = distinct !DISubprogram(name: "fcallCommand", scope: !3, file: !3, line: 654, type: !867, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2387 = !{!2388}
!2388 = !DILocalVariable(name: "c", arg: 1, scope: !2386, file: !3, line: 654, type: !630)
!2389 = !DILocation(line: 654, column: 27, scope: !2386)
!2390 = !DILocation(line: 655, column: 25, scope: !2386)
!2391 = !DILocation(line: 655, column: 5, scope: !2386)
!2392 = !DILocation(line: 656, column: 1, scope: !2386)
!2393 = distinct !DISubprogram(name: "fcallCommandGeneric", scope: !3, file: !3, line: 618, type: !2345, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399, !2400, !2401}
!2395 = !DILocalVariable(name: "c", arg: 1, scope: !2393, file: !3, line: 618, type: !630)
!2396 = !DILocalVariable(name: "ro", arg: 2, scope: !2393, file: !3, line: 618, type: !181)
!2397 = !DILocalVariable(name: "function_name", scope: !2393, file: !3, line: 619, type: !823)
!2398 = !DILocalVariable(name: "fi", scope: !2393, file: !3, line: 620, type: !585)
!2399 = !DILocalVariable(name: "engine", scope: !2393, file: !3, line: 625, type: !607)
!2400 = !DILocalVariable(name: "numkeys", scope: !2393, file: !3, line: 627, type: !657)
!2401 = !DILocalVariable(name: "run_ctx", scope: !2393, file: !3, line: 641, type: !622)
!2402 = !DILocation(line: 618, column: 41, scope: !2393)
!2403 = !DILocation(line: 618, column: 48, scope: !2393)
!2404 = !DILocation(line: 619, column: 5, scope: !2393)
!2405 = !DILocation(line: 619, column: 11, scope: !2393)
!2406 = !DILocation(line: 619, column: 27, scope: !2393)
!2407 = !DILocation(line: 619, column: 30, scope: !2393)
!2408 = !DILocation(line: 620, column: 5, scope: !2393)
!2409 = !DILocation(line: 620, column: 19, scope: !2393)
!2410 = !DILocation(line: 620, column: 39, scope: !2393)
!2411 = !DILocation(line: 620, column: 63, scope: !2393)
!2412 = !DILocation(line: 620, column: 74, scope: !2393)
!2413 = !DILocation(line: 620, column: 89, scope: !2393)
!2414 = !DILocation(line: 620, column: 24, scope: !2393)
!2415 = !DILocation(line: 621, column: 10, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 621, column: 9)
!2417 = !DILocation(line: 621, column: 9, scope: !2393)
!2418 = !DILocation(line: 622, column: 23, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 621, column: 14)
!2420 = !DILocation(line: 622, column: 9, scope: !2419)
!2421 = !DILocation(line: 623, column: 9, scope: !2419)
!2422 = !DILocation(line: 625, column: 5, scope: !2393)
!2423 = !DILocation(line: 625, column: 13, scope: !2393)
!2424 = !DILocation(line: 625, column: 22, scope: !2393)
!2425 = !DILocation(line: 625, column: 26, scope: !2393)
!2426 = !DILocation(line: 625, column: 30, scope: !2393)
!2427 = !DILocation(line: 625, column: 34, scope: !2393)
!2428 = !DILocation(line: 627, column: 5, scope: !2393)
!2429 = !DILocation(line: 627, column: 15, scope: !2393)
!2430 = !DILocation(line: 629, column: 31, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 629, column: 9)
!2432 = !DILocation(line: 629, column: 34, scope: !2431)
!2433 = !DILocation(line: 629, column: 9, scope: !2431)
!2434 = !DILocation(line: 629, column: 53, scope: !2431)
!2435 = !DILocation(line: 629, column: 9, scope: !2393)
!2436 = !DILocation(line: 630, column: 23, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 629, column: 62)
!2438 = !DILocation(line: 630, column: 9, scope: !2437)
!2439 = !DILocation(line: 631, column: 9, scope: !2437)
!2440 = !DILocation(line: 633, column: 9, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 633, column: 9)
!2442 = !{!1585, !1585, i64 0}
!2443 = !DILocation(line: 633, column: 20, scope: !2441)
!2444 = !DILocation(line: 633, column: 23, scope: !2441)
!2445 = !DILocation(line: 633, column: 28, scope: !2441)
!2446 = !DILocation(line: 633, column: 19, scope: !2441)
!2447 = !DILocation(line: 633, column: 17, scope: !2441)
!2448 = !DILocation(line: 633, column: 9, scope: !2393)
!2449 = !DILocation(line: 634, column: 23, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 633, column: 34)
!2451 = !DILocation(line: 634, column: 9, scope: !2450)
!2452 = !DILocation(line: 635, column: 9, scope: !2450)
!2453 = !DILocation(line: 636, column: 16, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 636, column: 16)
!2455 = !DILocation(line: 636, column: 24, scope: !2454)
!2456 = !DILocation(line: 636, column: 16, scope: !2441)
!2457 = !DILocation(line: 637, column: 23, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 636, column: 29)
!2459 = !DILocation(line: 637, column: 9, scope: !2458)
!2460 = !DILocation(line: 638, column: 9, scope: !2458)
!2461 = !DILocation(line: 641, column: 5, scope: !2393)
!2462 = !DILocation(line: 641, column: 18, scope: !2393)
!2463 = !DILocation(line: 643, column: 39, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 643, column: 9)
!2465 = !DILocation(line: 643, column: 43, scope: !2464)
!2466 = !DILocation(line: 643, column: 47, scope: !2464)
!2467 = !DILocation(line: 643, column: 51, scope: !2464)
!2468 = !DILocation(line: 643, column: 54, scope: !2464)
!2469 = !DILocation(line: 643, column: 57, scope: !2464)
!2470 = !DILocation(line: 643, column: 61, scope: !2464)
!2471 = !DILocation(line: 643, column: 67, scope: !2464)
!2472 = !DILocation(line: 643, column: 71, scope: !2464)
!2473 = !DILocation(line: 643, column: 80, scope: !2464)
!2474 = !DILocation(line: 643, column: 9, scope: !2464)
!2475 = !DILocation(line: 643, column: 84, scope: !2464)
!2476 = !DILocation(line: 643, column: 9, scope: !2393)
!2477 = !DILocation(line: 644, column: 9, scope: !2464)
!2478 = !DILocation(line: 646, column: 5, scope: !2393)
!2479 = !DILocation(line: 646, column: 13, scope: !2393)
!2480 = !{!1197, !568, i64 16}
!2481 = !DILocation(line: 646, column: 28, scope: !2393)
!2482 = !DILocation(line: 646, column: 36, scope: !2393)
!2483 = !DILocation(line: 646, column: 48, scope: !2393)
!2484 = !DILocation(line: 646, column: 52, scope: !2393)
!2485 = !DILocation(line: 646, column: 62, scope: !2393)
!2486 = !DILocation(line: 646, column: 65, scope: !2393)
!2487 = !DILocation(line: 646, column: 70, scope: !2393)
!2488 = !DILocation(line: 646, column: 75, scope: !2393)
!2489 = !DILocation(line: 647, column: 18, scope: !2393)
!2490 = !DILocation(line: 647, column: 21, scope: !2393)
!2491 = !DILocation(line: 647, column: 26, scope: !2393)
!2492 = !DILocation(line: 647, column: 32, scope: !2393)
!2493 = !DILocation(line: 647, column: 30, scope: !2393)
!2494 = !DILocation(line: 647, column: 41, scope: !2393)
!2495 = !DILocation(line: 647, column: 44, scope: !2393)
!2496 = !DILocation(line: 647, column: 49, scope: !2393)
!2497 = !DILocation(line: 647, column: 55, scope: !2393)
!2498 = !DILocation(line: 647, column: 53, scope: !2393)
!2499 = !DILocation(line: 648, column: 5, scope: !2393)
!2500 = !DILocation(line: 649, column: 1, scope: !2393)
!2501 = distinct !DISubprogram(name: "fcallroCommand", scope: !3, file: !3, line: 661, type: !867, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2502)
!2502 = !{!2503}
!2503 = !DILocalVariable(name: "c", arg: 1, scope: !2501, file: !3, line: 661, type: !630)
!2504 = !DILocation(line: 661, column: 29, scope: !2501)
!2505 = !DILocation(line: 662, column: 25, scope: !2501)
!2506 = !DILocation(line: 662, column: 5, scope: !2501)
!2507 = !DILocation(line: 663, column: 1, scope: !2501)
!2508 = distinct !DISubprogram(name: "functionDumpCommand", scope: !3, file: !3, line: 683, type: !867, scopeLine: 683, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2509)
!2509 = !{!2510, !2511, !2513, !2514}
!2510 = !DILocalVariable(name: "c", arg: 1, scope: !2508, file: !3, line: 683, type: !630)
!2511 = !DILocalVariable(name: "buf", scope: !2508, file: !3, line: 684, type: !2512)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 16, elements: !164)
!2513 = !DILocalVariable(name: "crc", scope: !2508, file: !3, line: 685, type: !109)
!2514 = !DILocalVariable(name: "payload", scope: !2508, file: !3, line: 686, type: !2515)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !2516, line: 102, baseType: !2517)
!2516 = !DIFile(filename: "./rio.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "a44e30a81f6edb3d8cfc55cfe80ccd9a")
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !2516, line: 48, size: 896, elements: !2518)
!2518 = !{!2519, !2524, !2528, !2532, !2536, !2540, !2541, !2542, !2543, !2544}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2517, file: !2516, line: 52, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!191, !2523, !65, !191}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2517, file: !2516, line: 53, baseType: !2525, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!191, !2523, !128, !191}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !2517, file: !2516, line: 54, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!1025, !2523}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2517, file: !2516, line: 55, baseType: !2533, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!181, !2523}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !2517, file: !2516, line: 61, baseType: !2537, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !2523, !128, !191}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !2517, file: !2516, line: 64, baseType: !109, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !2516, line: 64, baseType: !109, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !2517, file: !2516, line: 67, baseType: !191, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !2517, file: !2516, line: 70, baseType: !191, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2517, file: !2516, line: 99, baseType: !2545, size: 320, offset: 576)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !2516, line: 73, size: 320, elements: !2546)
!2546 = !{!2547, !2552, !2606, !2614}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2545, file: !2516, line: 78, baseType: !2548, size: 128)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2516, line: 75, size: 128, elements: !2549)
!2549 = !{!2550, !2551}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2548, file: !2516, line: 76, baseType: !591, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2548, file: !2516, line: 77, baseType: !1025, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2545, file: !2516, line: 84, baseType: !2553, size: 192)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2516, line: 80, size: 192, elements: !2554)
!2554 = !{!2555, !2604, !2605}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !2553, file: !2516, line: 81, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2558, line: 7, baseType: !2559)
!2558 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2560, line: 49, size: 1728, elements: !2561)
!2560 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2577, !2579, !2580, !2581, !2583, !2584, !2585, !2589, !2592, !2593, !2596, !2599, !2600, !2601, !2602, !2603}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2559, file: !2560, line: 51, baseType: !181, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2559, file: !2560, line: 54, baseType: !68, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2559, file: !2560, line: 55, baseType: !68, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2559, file: !2560, line: 56, baseType: !68, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2559, file: !2560, line: 57, baseType: !68, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2559, file: !2560, line: 58, baseType: !68, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2559, file: !2560, line: 59, baseType: !68, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2559, file: !2560, line: 60, baseType: !68, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2559, file: !2560, line: 61, baseType: !68, size: 64, offset: 512)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2559, file: !2560, line: 64, baseType: !68, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2559, file: !2560, line: 65, baseType: !68, size: 64, offset: 640)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2559, file: !2560, line: 66, baseType: !68, size: 64, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2559, file: !2560, line: 68, baseType: !2575, size: 64, offset: 768)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2560, line: 36, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2559, file: !2560, line: 70, baseType: !2578, size: 64, offset: 832)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2559, file: !2560, line: 72, baseType: !181, size: 32, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2559, file: !2560, line: 73, baseType: !181, size: 32, offset: 928)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2559, file: !2560, line: 74, baseType: !2582, size: 64, offset: 960)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 152, baseType: !157)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2559, file: !2560, line: 77, baseType: !92, size: 16, offset: 1024)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2559, file: !2560, line: 78, baseType: !175, size: 8, offset: 1040)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2559, file: !2560, line: 79, baseType: !2586, size: 8, offset: 1048)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !2587)
!2587 = !{!2588}
!2588 = !DISubrange(count: 1)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2559, file: !2560, line: 81, baseType: !2590, size: 64, offset: 1088)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2560, line: 43, baseType: null)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2559, file: !2560, line: 89, baseType: !1027, size: 64, offset: 1152)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2559, file: !2560, line: 91, baseType: !2594, size: 64, offset: 1216)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2560, line: 37, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2559, file: !2560, line: 92, baseType: !2597, size: 64, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2560, line: 38, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2559, file: !2560, line: 93, baseType: !2578, size: 64, offset: 1344)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2559, file: !2560, line: 94, baseType: !65, size: 64, offset: 1408)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2559, file: !2560, line: 95, baseType: !191, size: 64, offset: 1472)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2559, file: !2560, line: 96, baseType: !181, size: 32, offset: 1536)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2559, file: !2560, line: 98, baseType: !265, size: 160, offset: 1568)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !2553, file: !2516, line: 82, baseType: !1025, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !2553, file: !2516, line: 83, baseType: !1025, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !2545, file: !2516, line: 92, baseType: !2607, size: 320)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2516, line: 86, size: 320, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !2607, file: !2516, line: 87, baseType: !637, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2607, file: !2516, line: 88, baseType: !1025, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2607, file: !2516, line: 89, baseType: !591, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !2607, file: !2516, line: 90, baseType: !191, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "read_so_far", scope: !2607, file: !2516, line: 91, baseType: !191, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2545, file: !2516, line: 98, baseType: !2615, size: 192)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2545, file: !2516, line: 94, size: 192, elements: !2616)
!2616 = !{!2617, !2618, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2615, file: !2516, line: 95, baseType: !181, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2615, file: !2516, line: 96, baseType: !1025, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2615, file: !2516, line: 97, baseType: !591, size: 64, offset: 128)
!2620 = !DILocation(line: 683, column: 34, scope: !2508)
!2621 = !DILocation(line: 684, column: 5, scope: !2508)
!2622 = !DILocation(line: 684, column: 19, scope: !2508)
!2623 = !DILocation(line: 685, column: 5, scope: !2508)
!2624 = !DILocation(line: 685, column: 14, scope: !2508)
!2625 = !DILocation(line: 686, column: 5, scope: !2508)
!2626 = !DILocation(line: 686, column: 9, scope: !2508)
!2627 = !DILocation(line: 687, column: 33, scope: !2508)
!2628 = !DILocation(line: 687, column: 5, scope: !2508)
!2629 = !DILocation(line: 689, column: 5, scope: !2508)
!2630 = !DILocation(line: 692, column: 5, scope: !2508)
!2631 = !DILocation(line: 692, column: 12, scope: !2508)
!2632 = !DILocation(line: 693, column: 5, scope: !2508)
!2633 = !DILocation(line: 693, column: 12, scope: !2508)
!2634 = !DILocation(line: 694, column: 47, scope: !2508)
!2635 = !DILocation(line: 694, column: 57, scope: !2508)
!2636 = !DILocation(line: 694, column: 62, scope: !2508)
!2637 = !DILocation(line: 694, column: 29, scope: !2508)
!2638 = !DILocation(line: 694, column: 13, scope: !2508)
!2639 = !DILocation(line: 694, column: 23, scope: !2508)
!2640 = !DILocation(line: 694, column: 27, scope: !2508)
!2641 = !DILocation(line: 697, column: 45, scope: !2508)
!2642 = !DILocation(line: 697, column: 55, scope: !2508)
!2643 = !DILocation(line: 698, column: 32, scope: !2508)
!2644 = !DILocation(line: 698, column: 42, scope: !2508)
!2645 = !DILocation(line: 698, column: 17, scope: !2508)
!2646 = !DILocation(line: 697, column: 11, scope: !2508)
!2647 = !DILocation(line: 697, column: 9, scope: !2508)
!2648 = !DILocation(line: 700, column: 47, scope: !2508)
!2649 = !DILocation(line: 700, column: 57, scope: !2508)
!2650 = !DILocation(line: 700, column: 29, scope: !2508)
!2651 = !DILocation(line: 700, column: 13, scope: !2508)
!2652 = !DILocation(line: 700, column: 23, scope: !2508)
!2653 = !DILocation(line: 700, column: 27, scope: !2508)
!2654 = !DILocation(line: 702, column: 21, scope: !2508)
!2655 = !DILocation(line: 702, column: 32, scope: !2508)
!2656 = !DILocation(line: 702, column: 42, scope: !2508)
!2657 = !DILocation(line: 702, column: 5, scope: !2508)
!2658 = !DILocation(line: 703, column: 1, scope: !2508)
!2659 = !DISubprogram(name: "rioInitWithBuffer", scope: !2516, file: !2516, line: 165, type: !2660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !2662, !591}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2663 = !DISubprogram(name: "rdbSaveFunctions", scope: !2664, file: !2664, line: 176, type: !2665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2664 = !DIFile(filename: "./rdb.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "af69d48469a1c71d3fb8ec13d16fe115")
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!759, !2662}
!2667 = !DISubprogram(name: "sdscatlen", scope: !73, file: !73, line: 225, type: !2668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!591, !591, !128, !191}
!2670 = !DISubprogram(name: "crc64", scope: !16, file: !16, line: 2421, type: !2671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!109, !109, !2673, !109}
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2675 = !DISubprogram(name: "addReplyBulkSds", scope: !16, file: !16, line: 2467, type: !2098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2676 = distinct !DISubprogram(name: "functionRestoreCommand", scope: !3, file: !3, line: 715, type: !867, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2677 = !{!2678, !2679, !2681, !2682, !2683, !2684, !2685, !2688, !2689, !2690, !2692}
!2678 = !DILocalVariable(name: "c", arg: 1, scope: !2676, file: !3, line: 715, type: !630)
!2679 = !DILocalVariable(name: "restore_replicy", scope: !2676, file: !3, line: 721, type: !2680)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "restorePolicy", file: !3, line: 38, baseType: !59)
!2681 = !DILocalVariable(name: "data", scope: !2676, file: !3, line: 722, type: !591)
!2682 = !DILocalVariable(name: "data_len", scope: !2676, file: !3, line: 723, type: !191)
!2683 = !DILocalVariable(name: "payload", scope: !2676, file: !3, line: 724, type: !2515)
!2684 = !DILocalVariable(name: "err", scope: !2676, file: !3, line: 725, type: !591)
!2685 = !DILocalVariable(name: "restore_policy_str", scope: !2686, file: !3, line: 728, type: !627)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 727, column: 23)
!2687 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 727, column: 9)
!2688 = !DILocalVariable(name: "rdbver", scope: !2676, file: !3, line: 741, type: !90)
!2689 = !DILocalVariable(name: "functions_lib_ctx", scope: !2676, file: !3, line: 747, type: !520)
!2690 = !DILocalVariable(name: "type", scope: !2691, file: !3, line: 752, type: !181)
!2691 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 751, column: 51)
!2692 = !DILabel(scope: !2676, name: "load_error", file: !3, line: 782)
!2693 = !DILocation(line: 715, column: 37, scope: !2676)
!2694 = !DILocation(line: 716, column: 9, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 716, column: 9)
!2696 = !DILocation(line: 716, column: 12, scope: !2695)
!2697 = !DILocation(line: 716, column: 17, scope: !2695)
!2698 = !DILocation(line: 716, column: 9, scope: !2676)
!2699 = !DILocation(line: 717, column: 39, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 716, column: 22)
!2701 = !DILocation(line: 717, column: 9, scope: !2700)
!2702 = !DILocation(line: 718, column: 9, scope: !2700)
!2703 = !DILocation(line: 721, column: 5, scope: !2676)
!2704 = !DILocation(line: 721, column: 19, scope: !2676)
!2705 = !DILocation(line: 722, column: 5, scope: !2676)
!2706 = !DILocation(line: 722, column: 9, scope: !2676)
!2707 = !DILocation(line: 722, column: 16, scope: !2676)
!2708 = !DILocation(line: 722, column: 19, scope: !2676)
!2709 = !DILocation(line: 722, column: 28, scope: !2676)
!2710 = !DILocation(line: 723, column: 5, scope: !2676)
!2711 = !DILocation(line: 723, column: 12, scope: !2676)
!2712 = !DILocation(line: 723, column: 30, scope: !2676)
!2713 = !DILocation(line: 723, column: 23, scope: !2676)
!2714 = !DILocation(line: 724, column: 5, scope: !2676)
!2715 = !DILocation(line: 724, column: 9, scope: !2676)
!2716 = !DILocation(line: 725, column: 5, scope: !2676)
!2717 = !DILocation(line: 725, column: 9, scope: !2676)
!2718 = !DILocation(line: 727, column: 9, scope: !2687)
!2719 = !DILocation(line: 727, column: 12, scope: !2687)
!2720 = !DILocation(line: 727, column: 17, scope: !2687)
!2721 = !DILocation(line: 727, column: 9, scope: !2676)
!2722 = !DILocation(line: 728, column: 9, scope: !2686)
!2723 = !DILocation(line: 728, column: 21, scope: !2686)
!2724 = !DILocation(line: 728, column: 42, scope: !2686)
!2725 = !DILocation(line: 728, column: 45, scope: !2686)
!2726 = !DILocation(line: 728, column: 54, scope: !2686)
!2727 = !DILocation(line: 729, column: 25, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 729, column: 13)
!2729 = !DILocation(line: 729, column: 14, scope: !2728)
!2730 = !DILocation(line: 729, column: 13, scope: !2686)
!2731 = !DILocation(line: 730, column: 29, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 729, column: 56)
!2733 = !DILocation(line: 731, column: 9, scope: !2732)
!2734 = !DILocation(line: 731, column: 32, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 731, column: 20)
!2736 = !DILocation(line: 731, column: 21, scope: !2735)
!2737 = !DILocation(line: 731, column: 20, scope: !2728)
!2738 = !DILocation(line: 732, column: 29, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 731, column: 64)
!2740 = !DILocation(line: 733, column: 9, scope: !2739)
!2741 = !DILocation(line: 733, column: 32, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 733, column: 20)
!2743 = !DILocation(line: 733, column: 21, scope: !2742)
!2744 = !DILocation(line: 733, column: 20, scope: !2735)
!2745 = !DILocation(line: 734, column: 29, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 733, column: 62)
!2747 = !DILocation(line: 735, column: 9, scope: !2746)
!2748 = !DILocation(line: 736, column: 27, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 735, column: 16)
!2750 = !DILocation(line: 736, column: 13, scope: !2749)
!2751 = !DILocation(line: 737, column: 13, scope: !2749)
!2752 = !DILocation(line: 739, column: 5, scope: !2687)
!2753 = !DILocation(line: 739, column: 5, scope: !2686)
!2754 = !DILocation(line: 741, column: 5, scope: !2676)
!2755 = !DILocation(line: 741, column: 14, scope: !2676)
!2756 = !DILocation(line: 742, column: 43, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 742, column: 9)
!2758 = !DILocation(line: 742, column: 49, scope: !2757)
!2759 = !DILocation(line: 742, column: 9, scope: !2757)
!2760 = !DILocation(line: 742, column: 68, scope: !2757)
!2761 = !DILocation(line: 742, column: 9, scope: !2676)
!2762 = !DILocation(line: 743, column: 23, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 742, column: 77)
!2764 = !DILocation(line: 743, column: 9, scope: !2763)
!2765 = !DILocation(line: 744, column: 9, scope: !2763)
!2766 = !DILocation(line: 747, column: 5, scope: !2676)
!2767 = !DILocation(line: 747, column: 22, scope: !2676)
!2768 = !DILocation(line: 747, column: 42, scope: !2676)
!2769 = !DILocation(line: 748, column: 33, scope: !2676)
!2770 = !DILocation(line: 748, column: 5, scope: !2676)
!2771 = !DILocation(line: 751, column: 5, scope: !2676)
!2772 = !DILocation(line: 751, column: 12, scope: !2676)
!2773 = !DILocation(line: 751, column: 31, scope: !2676)
!2774 = !DILocation(line: 751, column: 41, scope: !2676)
!2775 = !DILocation(line: 751, column: 21, scope: !2676)
!2776 = !DILocation(line: 751, column: 45, scope: !2676)
!2777 = !DILocation(line: 752, column: 9, scope: !2691)
!2778 = !DILocation(line: 752, column: 13, scope: !2691)
!2779 = !DILocation(line: 753, column: 21, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 753, column: 13)
!2781 = !DILocation(line: 753, column: 19, scope: !2780)
!2782 = !DILocation(line: 753, column: 44, scope: !2780)
!2783 = !DILocation(line: 753, column: 13, scope: !2691)
!2784 = !DILocation(line: 754, column: 19, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 753, column: 51)
!2786 = !DILocation(line: 754, column: 17, scope: !2785)
!2787 = !DILocation(line: 755, column: 13, scope: !2785)
!2788 = !DILocation(line: 757, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 757, column: 13)
!2790 = !DILocation(line: 757, column: 18, scope: !2789)
!2791 = !DILocation(line: 757, column: 41, scope: !2789)
!2792 = !DILocation(line: 757, column: 44, scope: !2789)
!2793 = !DILocation(line: 757, column: 49, scope: !2789)
!2794 = !DILocation(line: 757, column: 13, scope: !2691)
!2795 = !DILocation(line: 758, column: 19, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 757, column: 74)
!2797 = !DILocation(line: 758, column: 17, scope: !2796)
!2798 = !DILocation(line: 759, column: 13, scope: !2796)
!2799 = !DILocation(line: 761, column: 39, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 761, column: 13)
!2801 = !DILocation(line: 761, column: 47, scope: !2800)
!2802 = !DILocation(line: 761, column: 66, scope: !2800)
!2803 = !DILocation(line: 761, column: 13, scope: !2800)
!2804 = !DILocation(line: 761, column: 93, scope: !2800)
!2805 = !DILocation(line: 761, column: 13, scope: !2691)
!2806 = !DILocation(line: 762, column: 18, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !3, line: 762, column: 17)
!2808 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 761, column: 102)
!2809 = !DILocation(line: 762, column: 17, scope: !2808)
!2810 = !DILocation(line: 763, column: 23, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 762, column: 23)
!2812 = !DILocation(line: 763, column: 21, scope: !2811)
!2813 = !DILocation(line: 764, column: 13, scope: !2811)
!2814 = !DILocation(line: 765, column: 13, scope: !2808)
!2815 = !DILocation(line: 767, column: 5, scope: !2676)
!2816 = distinct !{!2816, !2771, !2815, !1274}
!2817 = !DILocation(line: 769, column: 9, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 769, column: 9)
!2819 = !DILocation(line: 769, column: 25, scope: !2818)
!2820 = !DILocation(line: 769, column: 9, scope: !2676)
!2821 = !DILocation(line: 770, column: 40, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 769, column: 49)
!2823 = !DILocation(line: 770, column: 9, scope: !2822)
!2824 = !DILocation(line: 771, column: 27, scope: !2822)
!2825 = !DILocation(line: 772, column: 5, scope: !2822)
!2826 = !DILocation(line: 773, column: 25, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 773, column: 13)
!2828 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 772, column: 12)
!2829 = !DILocation(line: 773, column: 49, scope: !2827)
!2830 = !DILocation(line: 773, column: 68, scope: !2827)
!2831 = !DILocation(line: 773, column: 84, scope: !2827)
!2832 = !DILocation(line: 773, column: 13, scope: !2827)
!2833 = !DILocation(line: 773, column: 116, scope: !2827)
!2834 = !DILocation(line: 773, column: 13, scope: !2828)
!2835 = !DILocation(line: 774, column: 13, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 773, column: 125)
!2837 = !DILocation(line: 780, column: 17, scope: !2676)
!2838 = !DILocation(line: 780, column: 5, scope: !2676)
!2839 = !DILocation(line: 782, column: 1, scope: !2676)
!2840 = !DILocation(line: 783, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 783, column: 9)
!2842 = !DILocation(line: 783, column: 9, scope: !2676)
!2843 = !DILocation(line: 784, column: 26, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 783, column: 14)
!2845 = !DILocation(line: 784, column: 29, scope: !2844)
!2846 = !DILocation(line: 784, column: 9, scope: !2844)
!2847 = !DILocation(line: 785, column: 5, scope: !2844)
!2848 = !DILocation(line: 786, column: 18, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 785, column: 12)
!2850 = !DILocation(line: 786, column: 28, scope: !2849)
!2851 = !DILocation(line: 786, column: 9, scope: !2849)
!2852 = !DILocation(line: 788, column: 9, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 788, column: 9)
!2854 = !DILocation(line: 788, column: 9, scope: !2676)
!2855 = !DILocation(line: 789, column: 29, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 788, column: 28)
!2857 = !DILocation(line: 789, column: 9, scope: !2856)
!2858 = !DILocation(line: 790, column: 5, scope: !2856)
!2859 = !DILocation(line: 791, column: 1, scope: !2676)
!2860 = !DISubprogram(name: "addReplySubcommandSyntaxError", scope: !16, file: !16, line: 2489, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2861 = !DISubprogram(name: "verifyDumpPayload", scope: !16, file: !16, line: 3460, type: !2862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!181, !66, !191, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!2865 = !DISubprogram(name: "rdbLoadType", scope: !2664, file: !2664, line: 143, type: !2866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!181, !2662}
!2868 = !DISubprogram(name: "rdbFunctionLoad", scope: !2664, file: !2664, line: 174, type: !2869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!181, !2662, !181, !520, !181, !181, !616}
!2871 = distinct !DISubprogram(name: "libraryJoin", scope: !3, file: !3, line: 331, type: !2872, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!181, !520, !520, !181, !616}
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2885, !2886, !2888, !2890, !2891, !2895}
!2875 = !DILocalVariable(name: "functions_lib_ctx_dst", arg: 1, scope: !2871, file: !3, line: 331, type: !520)
!2876 = !DILocalVariable(name: "functions_lib_ctx_src", arg: 2, scope: !2871, file: !3, line: 331, type: !520)
!2877 = !DILocalVariable(name: "replace", arg: 3, scope: !2871, file: !3, line: 331, type: !181)
!2878 = !DILocalVariable(name: "err", arg: 4, scope: !2871, file: !3, line: 331, type: !616)
!2879 = !DILocalVariable(name: "ret", scope: !2871, file: !3, line: 332, type: !181)
!2880 = !DILocalVariable(name: "iter", scope: !2871, file: !3, line: 333, type: !1223)
!2881 = !DILocalVariable(name: "old_libraries_list", scope: !2871, file: !3, line: 336, type: !793)
!2882 = !DILocalVariable(name: "entry", scope: !2871, file: !3, line: 337, type: !143)
!2883 = !DILocalVariable(name: "li", scope: !2884, file: !3, line: 340, type: !594)
!2884 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 339, column: 38)
!2885 = !DILocalVariable(name: "old_li", scope: !2884, file: !3, line: 341, type: !594)
!2886 = !DILocalVariable(name: "fi", scope: !2887, file: !3, line: 363, type: !585)
!2887 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 362, column: 38)
!2888 = !DILocalVariable(name: "li", scope: !2889, file: !3, line: 375, type: !594)
!2889 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 374, column: 38)
!2890 = !DILabel(scope: !2871, name: "done", file: !3, line: 389)
!2891 = !DILocalVariable(name: "head", scope: !2892, file: !3, line: 394, type: !799)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 393, column: 52)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 391, column: 29)
!2894 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 391, column: 9)
!2895 = !DILocalVariable(name: "li", scope: !2892, file: !3, line: 395, type: !594)
!2896 = !DILocation(line: 331, column: 41, scope: !2871)
!2897 = !DILocation(line: 331, column: 81, scope: !2871)
!2898 = !DILocation(line: 331, column: 108, scope: !2871)
!2899 = !DILocation(line: 331, column: 122, scope: !2871)
!2900 = !DILocation(line: 332, column: 5, scope: !2871)
!2901 = !DILocation(line: 332, column: 9, scope: !2871)
!2902 = !DILocation(line: 333, column: 5, scope: !2871)
!2903 = !DILocation(line: 333, column: 19, scope: !2871)
!2904 = !DILocation(line: 336, column: 5, scope: !2871)
!2905 = !DILocation(line: 336, column: 11, scope: !2871)
!2906 = !DILocation(line: 337, column: 5, scope: !2871)
!2907 = !DILocation(line: 337, column: 16, scope: !2871)
!2908 = !DILocation(line: 338, column: 28, scope: !2871)
!2909 = !DILocation(line: 338, column: 51, scope: !2871)
!2910 = !DILocation(line: 338, column: 12, scope: !2871)
!2911 = !DILocation(line: 338, column: 10, scope: !2871)
!2912 = !DILocation(line: 339, column: 5, scope: !2871)
!2913 = !DILocation(line: 339, column: 30, scope: !2871)
!2914 = !DILocation(line: 339, column: 21, scope: !2871)
!2915 = !DILocation(line: 339, column: 19, scope: !2871)
!2916 = !DILocation(line: 340, column: 9, scope: !2884)
!2917 = !DILocation(line: 340, column: 26, scope: !2884)
!2918 = !DILocation(line: 340, column: 31, scope: !2884)
!2919 = !DILocation(line: 341, column: 9, scope: !2884)
!2920 = !DILocation(line: 341, column: 26, scope: !2884)
!2921 = !DILocation(line: 341, column: 50, scope: !2884)
!2922 = !DILocation(line: 341, column: 73, scope: !2884)
!2923 = !DILocation(line: 341, column: 84, scope: !2884)
!2924 = !DILocation(line: 341, column: 88, scope: !2884)
!2925 = !DILocation(line: 341, column: 35, scope: !2884)
!2926 = !DILocation(line: 342, column: 13, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 342, column: 13)
!2928 = !DILocation(line: 342, column: 13, scope: !2884)
!2929 = !DILocation(line: 343, column: 18, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 343, column: 17)
!2931 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 342, column: 21)
!2932 = !DILocation(line: 343, column: 17, scope: !2931)
!2933 = !DILocation(line: 345, column: 34, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 343, column: 27)
!2935 = !DILocation(line: 345, column: 75, scope: !2934)
!2936 = !DILocation(line: 345, column: 79, scope: !2934)
!2937 = !DILocation(line: 345, column: 24, scope: !2934)
!2938 = !DILocation(line: 345, column: 18, scope: !2934)
!2939 = !DILocation(line: 345, column: 22, scope: !2934)
!2940 = !DILocation(line: 346, column: 17, scope: !2934)
!2941 = !DILocation(line: 348, column: 22, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 348, column: 21)
!2943 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 347, column: 20)
!2944 = !DILocation(line: 348, column: 21, scope: !2943)
!2945 = !DILocation(line: 349, column: 42, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 348, column: 42)
!2947 = !DILocation(line: 349, column: 40, scope: !2946)
!2948 = !DILocation(line: 350, column: 21, scope: !2946)
!2949 = !{!2950, !568, i64 24}
!2950 = !{!"list", !568, i64 0, !568, i64 8, !568, i64 16, !568, i64 24, !568, i64 32, !1171, i64 40}
!2951 = !DILocation(line: 351, column: 17, scope: !2946)
!2952 = !DILocation(line: 352, column: 31, scope: !2943)
!2953 = !DILocation(line: 352, column: 54, scope: !2943)
!2954 = !DILocation(line: 352, column: 17, scope: !2943)
!2955 = !DILocation(line: 353, column: 33, scope: !2943)
!2956 = !DILocation(line: 353, column: 53, scope: !2943)
!2957 = !DILocation(line: 353, column: 17, scope: !2943)
!2958 = !DILocation(line: 355, column: 9, scope: !2931)
!2959 = !DILocation(line: 356, column: 5, scope: !2871)
!2960 = distinct !{!2960, !2912, !2959, !1274}
!2961 = !DILocation(line: 357, column: 25, scope: !2871)
!2962 = !DILocation(line: 357, column: 5, scope: !2871)
!2963 = !DILocation(line: 358, column: 10, scope: !2871)
!2964 = !DILocation(line: 361, column: 28, scope: !2871)
!2965 = !DILocation(line: 361, column: 51, scope: !2871)
!2966 = !DILocation(line: 361, column: 12, scope: !2871)
!2967 = !DILocation(line: 361, column: 10, scope: !2871)
!2968 = !DILocation(line: 362, column: 5, scope: !2871)
!2969 = !DILocation(line: 362, column: 30, scope: !2871)
!2970 = !DILocation(line: 362, column: 21, scope: !2871)
!2971 = !DILocation(line: 362, column: 19, scope: !2871)
!2972 = !DILocation(line: 363, column: 9, scope: !2887)
!2973 = !DILocation(line: 363, column: 23, scope: !2887)
!2974 = !DILocation(line: 363, column: 28, scope: !2887)
!2975 = !DILocation(line: 364, column: 28, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 364, column: 13)
!2977 = !DILocation(line: 364, column: 51, scope: !2976)
!2978 = !DILocation(line: 364, column: 62, scope: !2976)
!2979 = !DILocation(line: 364, column: 66, scope: !2976)
!2980 = !DILocation(line: 364, column: 13, scope: !2976)
!2981 = !DILocation(line: 364, column: 13, scope: !2887)
!2982 = !DILocation(line: 365, column: 30, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 364, column: 73)
!2984 = !DILocation(line: 365, column: 72, scope: !2983)
!2985 = !DILocation(line: 365, column: 76, scope: !2983)
!2986 = !DILocation(line: 365, column: 20, scope: !2983)
!2987 = !DILocation(line: 365, column: 14, scope: !2983)
!2988 = !DILocation(line: 365, column: 18, scope: !2983)
!2989 = !DILocation(line: 366, column: 13, scope: !2983)
!2990 = !DILocation(line: 368, column: 5, scope: !2871)
!2991 = distinct !{!2991, !2968, !2990, !1274}
!2992 = !DILocation(line: 369, column: 25, scope: !2871)
!2993 = !DILocation(line: 369, column: 5, scope: !2871)
!2994 = !DILocation(line: 370, column: 10, scope: !2871)
!2995 = !DILocation(line: 373, column: 28, scope: !2871)
!2996 = !DILocation(line: 373, column: 51, scope: !2871)
!2997 = !DILocation(line: 373, column: 12, scope: !2871)
!2998 = !DILocation(line: 373, column: 10, scope: !2871)
!2999 = !DILocation(line: 374, column: 5, scope: !2871)
!3000 = !DILocation(line: 374, column: 30, scope: !2871)
!3001 = !DILocation(line: 374, column: 21, scope: !2871)
!3002 = !DILocation(line: 374, column: 19, scope: !2871)
!3003 = !DILocation(line: 375, column: 9, scope: !2889)
!3004 = !DILocation(line: 375, column: 26, scope: !2889)
!3005 = !DILocation(line: 375, column: 31, scope: !2889)
!3006 = !DILocation(line: 376, column: 21, scope: !2889)
!3007 = !DILocation(line: 376, column: 44, scope: !2889)
!3008 = !DILocation(line: 376, column: 9, scope: !2889)
!3009 = !DILocation(line: 377, column: 9, scope: !2889)
!3010 = !DILocation(line: 377, column: 9, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 377, column: 9)
!3012 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 377, column: 9)
!3013 = !DILocation(line: 377, column: 9, scope: !3012)
!3014 = !DILocation(line: 378, column: 5, scope: !2871)
!3015 = distinct !{!3015, !2999, !3014, !1274}
!3016 = !DILocation(line: 379, column: 25, scope: !2871)
!3017 = !DILocation(line: 379, column: 5, scope: !2871)
!3018 = !DILocation(line: 380, column: 10, scope: !2871)
!3019 = !DILocation(line: 382, column: 26, scope: !2871)
!3020 = !DILocation(line: 382, column: 5, scope: !2871)
!3021 = !DILocation(line: 383, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 383, column: 9)
!3023 = !DILocation(line: 383, column: 9, scope: !2871)
!3024 = !DILocation(line: 384, column: 21, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 383, column: 29)
!3026 = !DILocation(line: 384, column: 9, scope: !3025)
!3027 = !DILocation(line: 385, column: 28, scope: !3025)
!3028 = !DILocation(line: 386, column: 5, scope: !3025)
!3029 = !DILocation(line: 387, column: 9, scope: !2871)
!3030 = !DILocation(line: 387, column: 5, scope: !2871)
!3031 = !DILocation(line: 389, column: 1, scope: !2871)
!3032 = !DILocation(line: 390, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 390, column: 9)
!3034 = !DILocation(line: 390, column: 9, scope: !2871)
!3035 = !DILocation(line: 390, column: 35, scope: !3033)
!3036 = !DILocation(line: 390, column: 15, scope: !3033)
!3037 = !DILocation(line: 391, column: 9, scope: !2894)
!3038 = !DILocation(line: 391, column: 9, scope: !2871)
!3039 = !DILocation(line: 393, column: 9, scope: !2893)
!3040 = !DILocation(line: 393, column: 16, scope: !2893)
!3041 = !{!2950, !1171, i64 40}
!3042 = !DILocation(line: 393, column: 47, scope: !2893)
!3043 = !DILocation(line: 394, column: 13, scope: !2892)
!3044 = !DILocation(line: 394, column: 23, scope: !2892)
!3045 = !DILocation(line: 394, column: 30, scope: !2892)
!3046 = !{!2950, !568, i64 0}
!3047 = !DILocation(line: 395, column: 13, scope: !2892)
!3048 = !DILocation(line: 395, column: 30, scope: !2892)
!3049 = !DILocation(line: 395, column: 35, scope: !2892)
!3050 = !{!3051, !568, i64 16}
!3051 = !{!"listNode", !568, i64 0, !568, i64 8, !568, i64 16}
!3052 = !DILocation(line: 396, column: 13, scope: !2892)
!3053 = !DILocation(line: 396, column: 33, scope: !2892)
!3054 = !DILocation(line: 397, column: 25, scope: !2892)
!3055 = !DILocation(line: 397, column: 48, scope: !2892)
!3056 = !DILocation(line: 397, column: 13, scope: !2892)
!3057 = !DILocation(line: 398, column: 25, scope: !2892)
!3058 = !DILocation(line: 398, column: 45, scope: !2892)
!3059 = !DILocation(line: 398, column: 13, scope: !2892)
!3060 = !DILocation(line: 399, column: 9, scope: !2893)
!3061 = distinct !{!3061, !3039, !3060, !1274}
!3062 = !DILocation(line: 400, column: 21, scope: !2893)
!3063 = !DILocation(line: 400, column: 9, scope: !2893)
!3064 = !DILocation(line: 401, column: 5, scope: !2893)
!3065 = !DILocation(line: 402, column: 12, scope: !2871)
!3066 = !DILocation(line: 402, column: 5, scope: !2871)
!3067 = !DILocation(line: 403, column: 1, scope: !2871)
!3068 = distinct !DISubprogram(name: "functionFlushCommand", scope: !3, file: !3, line: 794, type: !867, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3069)
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "c", arg: 1, scope: !3068, file: !3, line: 794, type: !630)
!3071 = !DILocalVariable(name: "async", scope: !3068, file: !3, line: 799, type: !181)
!3072 = !DILocation(line: 794, column: 35, scope: !3068)
!3073 = !DILocation(line: 795, column: 9, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 795, column: 9)
!3075 = !DILocation(line: 795, column: 12, scope: !3074)
!3076 = !DILocation(line: 795, column: 17, scope: !3074)
!3077 = !DILocation(line: 795, column: 9, scope: !3068)
!3078 = !DILocation(line: 796, column: 39, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 795, column: 22)
!3080 = !DILocation(line: 796, column: 9, scope: !3079)
!3081 = !DILocation(line: 797, column: 9, scope: !3079)
!3082 = !DILocation(line: 799, column: 5, scope: !3068)
!3083 = !DILocation(line: 799, column: 9, scope: !3068)
!3084 = !DILocation(line: 800, column: 9, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 800, column: 9)
!3086 = !DILocation(line: 800, column: 12, scope: !3085)
!3087 = !DILocation(line: 800, column: 17, scope: !3085)
!3088 = !DILocation(line: 800, column: 22, scope: !3085)
!3089 = !DILocation(line: 800, column: 37, scope: !3085)
!3090 = !DILocation(line: 800, column: 40, scope: !3085)
!3091 = !DILocation(line: 800, column: 49, scope: !3085)
!3092 = !DILocation(line: 800, column: 26, scope: !3085)
!3093 = !DILocation(line: 800, column: 9, scope: !3068)
!3094 = !DILocation(line: 801, column: 15, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 800, column: 62)
!3096 = !DILocation(line: 802, column: 5, scope: !3095)
!3097 = !DILocation(line: 802, column: 16, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 802, column: 16)
!3099 = !DILocation(line: 802, column: 19, scope: !3098)
!3100 = !DILocation(line: 802, column: 24, scope: !3098)
!3101 = !DILocation(line: 802, column: 29, scope: !3098)
!3102 = !DILocation(line: 802, column: 44, scope: !3098)
!3103 = !DILocation(line: 802, column: 47, scope: !3098)
!3104 = !DILocation(line: 802, column: 56, scope: !3098)
!3105 = !DILocation(line: 802, column: 33, scope: !3098)
!3106 = !DILocation(line: 802, column: 16, scope: !3085)
!3107 = !DILocation(line: 803, column: 15, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 802, column: 70)
!3109 = !DILocation(line: 804, column: 5, scope: !3108)
!3110 = !DILocation(line: 804, column: 16, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 804, column: 16)
!3112 = !DILocation(line: 804, column: 19, scope: !3111)
!3113 = !DILocation(line: 804, column: 24, scope: !3111)
!3114 = !DILocation(line: 804, column: 16, scope: !3098)
!3115 = !DILocation(line: 805, column: 24, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 804, column: 30)
!3117 = !{!1584, !1306, i64 4376}
!3118 = !DILocation(line: 805, column: 17, scope: !3116)
!3119 = !DILocation(line: 805, column: 15, scope: !3116)
!3120 = !DILocation(line: 806, column: 5, scope: !3116)
!3121 = !DILocation(line: 807, column: 23, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 806, column: 12)
!3123 = !DILocation(line: 807, column: 9, scope: !3122)
!3124 = !DILocation(line: 808, column: 9, scope: !3122)
!3125 = !DILocation(line: 811, column: 33, scope: !3068)
!3126 = !DILocation(line: 811, column: 5, scope: !3068)
!3127 = !DILocation(line: 815, column: 17, scope: !3068)
!3128 = !DILocation(line: 816, column: 14, scope: !3068)
!3129 = !DILocation(line: 816, column: 23, scope: !3068)
!3130 = !DILocation(line: 816, column: 5, scope: !3068)
!3131 = !DILocation(line: 817, column: 1, scope: !3068)
!3132 = distinct !DISubprogram(name: "functionHelpCommand", scope: !3, file: !3, line: 820, type: !867, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3133)
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "c", arg: 1, scope: !3132, file: !3, line: 820, type: !630)
!3135 = !DILocalVariable(name: "help", scope: !3132, file: !3, line: 821, type: !3136)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 2432, elements: !357)
!3137 = !DILocation(line: 820, column: 34, scope: !3132)
!3138 = !DILocation(line: 821, column: 5, scope: !3132)
!3139 = !DILocation(line: 821, column: 17, scope: !3132)
!3140 = !DILocation(line: 860, column: 18, scope: !3132)
!3141 = !DILocation(line: 860, column: 21, scope: !3132)
!3142 = !DILocation(line: 860, column: 5, scope: !3132)
!3143 = !DILocation(line: 861, column: 1, scope: !3132)
!3144 = !DISubprogram(name: "addReplyHelp", scope: !16, file: !16, line: 2488, type: !3145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !630, !863}
!3147 = distinct !DISubprogram(name: "functionExtractLibMetaData", scope: !3, file: !3, line: 882, type: !3148, scopeLine: 882, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3157)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!181, !591, !3150, !616}
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionsLibMataData", file: !3, line: 64, baseType: !3152)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionsLibMataData", file: !3, line: 60, size: 192, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !3152, file: !3, line: 61, baseType: !591, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3152, file: !3, line: 62, baseType: !591, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3152, file: !3, line: 63, baseType: !591, size: 64, offset: 128)
!3157 = !{!3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3172, !3175}
!3158 = !DILocalVariable(name: "payload", arg: 1, scope: !3147, file: !3, line: 882, type: !591)
!3159 = !DILocalVariable(name: "md", arg: 2, scope: !3147, file: !3, line: 882, type: !3150)
!3160 = !DILocalVariable(name: "err", arg: 3, scope: !3147, file: !3, line: 882, type: !616)
!3161 = !DILocalVariable(name: "name", scope: !3147, file: !3, line: 883, type: !591)
!3162 = !DILocalVariable(name: "desc", scope: !3147, file: !3, line: 884, type: !591)
!3163 = !DILocalVariable(name: "engine", scope: !3147, file: !3, line: 885, type: !591)
!3164 = !DILocalVariable(name: "code", scope: !3147, file: !3, line: 886, type: !591)
!3165 = !DILocalVariable(name: "shebang_end", scope: !3147, file: !3, line: 891, type: !68)
!3166 = !DILocalVariable(name: "shebang_len", scope: !3147, file: !3, line: 896, type: !191)
!3167 = !DILocalVariable(name: "shebang", scope: !3147, file: !3, line: 897, type: !591)
!3168 = !DILocalVariable(name: "numparts", scope: !3147, file: !3, line: 898, type: !181)
!3169 = !DILocalVariable(name: "parts", scope: !3147, file: !3, line: 899, type: !616)
!3170 = !DILocalVariable(name: "i", scope: !3171, file: !3, line: 908, type: !181)
!3171 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 908, column: 5)
!3172 = !DILocalVariable(name: "part", scope: !3173, file: !3, line: 909, type: !591)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 908, column: 42)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 908, column: 5)
!3175 = !DILabel(scope: !3147, name: "error", file: !3, line: 936)
!3176 = !DILocation(line: 882, column: 36, scope: !3147)
!3177 = !DILocation(line: 882, column: 67, scope: !3147)
!3178 = !DILocation(line: 882, column: 76, scope: !3147)
!3179 = !DILocation(line: 883, column: 5, scope: !3147)
!3180 = !DILocation(line: 883, column: 9, scope: !3147)
!3181 = !DILocation(line: 884, column: 5, scope: !3147)
!3182 = !DILocation(line: 884, column: 9, scope: !3147)
!3183 = !DILocation(line: 885, column: 5, scope: !3147)
!3184 = !DILocation(line: 885, column: 9, scope: !3147)
!3185 = !DILocation(line: 886, column: 5, scope: !3147)
!3186 = !DILocation(line: 886, column: 9, scope: !3147)
!3187 = !DILocation(line: 887, column: 17, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 887, column: 9)
!3189 = !DILocation(line: 887, column: 9, scope: !3188)
!3190 = !DILocation(line: 887, column: 35, scope: !3188)
!3191 = !DILocation(line: 887, column: 9, scope: !3147)
!3192 = !DILocation(line: 888, column: 16, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 887, column: 41)
!3194 = !DILocation(line: 888, column: 10, scope: !3193)
!3195 = !DILocation(line: 888, column: 14, scope: !3193)
!3196 = !DILocation(line: 889, column: 9, scope: !3193)
!3197 = !DILocation(line: 891, column: 5, scope: !3147)
!3198 = !DILocation(line: 891, column: 11, scope: !3147)
!3199 = !DILocation(line: 891, column: 32, scope: !3147)
!3200 = !DILocation(line: 891, column: 25, scope: !3147)
!3201 = !DILocation(line: 892, column: 9, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 892, column: 9)
!3203 = !DILocation(line: 892, column: 21, scope: !3202)
!3204 = !DILocation(line: 892, column: 9, scope: !3147)
!3205 = !DILocation(line: 893, column: 16, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 892, column: 30)
!3207 = !DILocation(line: 893, column: 10, scope: !3206)
!3208 = !DILocation(line: 893, column: 14, scope: !3206)
!3209 = !DILocation(line: 894, column: 9, scope: !3206)
!3210 = !DILocation(line: 896, column: 5, scope: !3147)
!3211 = !DILocation(line: 896, column: 12, scope: !3147)
!3212 = !DILocation(line: 896, column: 26, scope: !3147)
!3213 = !DILocation(line: 896, column: 40, scope: !3147)
!3214 = !DILocation(line: 896, column: 38, scope: !3147)
!3215 = !DILocation(line: 897, column: 5, scope: !3147)
!3216 = !DILocation(line: 897, column: 9, scope: !3147)
!3217 = !DILocation(line: 897, column: 29, scope: !3147)
!3218 = !DILocation(line: 897, column: 38, scope: !3147)
!3219 = !DILocation(line: 897, column: 19, scope: !3147)
!3220 = !DILocation(line: 898, column: 5, scope: !3147)
!3221 = !DILocation(line: 898, column: 9, scope: !3147)
!3222 = !DILocation(line: 899, column: 5, scope: !3147)
!3223 = !DILocation(line: 899, column: 10, scope: !3147)
!3224 = !DILocation(line: 899, column: 31, scope: !3147)
!3225 = !DILocation(line: 899, column: 18, scope: !3147)
!3226 = !DILocation(line: 900, column: 13, scope: !3147)
!3227 = !DILocation(line: 900, column: 5, scope: !3147)
!3228 = !DILocation(line: 901, column: 10, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 901, column: 9)
!3230 = !DILocation(line: 901, column: 16, scope: !3229)
!3231 = !DILocation(line: 901, column: 19, scope: !3229)
!3232 = !DILocation(line: 901, column: 28, scope: !3229)
!3233 = !DILocation(line: 901, column: 9, scope: !3147)
!3234 = !DILocation(line: 902, column: 16, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 901, column: 34)
!3236 = !DILocation(line: 902, column: 10, scope: !3235)
!3237 = !DILocation(line: 902, column: 14, scope: !3235)
!3238 = !DILocation(line: 903, column: 25, scope: !3235)
!3239 = !DILocation(line: 903, column: 32, scope: !3235)
!3240 = !DILocation(line: 903, column: 9, scope: !3235)
!3241 = !DILocation(line: 904, column: 9, scope: !3235)
!3242 = !DILocation(line: 906, column: 21, scope: !3147)
!3243 = !DILocation(line: 906, column: 14, scope: !3147)
!3244 = !DILocation(line: 906, column: 12, scope: !3147)
!3245 = !DILocation(line: 907, column: 14, scope: !3147)
!3246 = !DILocation(line: 907, column: 5, scope: !3147)
!3247 = !DILocation(line: 908, column: 10, scope: !3171)
!3248 = !DILocation(line: 908, column: 14, scope: !3171)
!3249 = !DILocation(line: 908, column: 22, scope: !3174)
!3250 = !DILocation(line: 908, column: 26, scope: !3174)
!3251 = !DILocation(line: 908, column: 24, scope: !3174)
!3252 = !DILocation(line: 908, column: 5, scope: !3171)
!3253 = !DILocation(line: 909, column: 9, scope: !3173)
!3254 = !DILocation(line: 909, column: 13, scope: !3173)
!3255 = !DILocation(line: 909, column: 20, scope: !3173)
!3256 = !DILocation(line: 909, column: 26, scope: !3173)
!3257 = !DILocation(line: 910, column: 25, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 910, column: 13)
!3259 = !DILocation(line: 910, column: 13, scope: !3258)
!3260 = !DILocation(line: 910, column: 43, scope: !3258)
!3261 = !DILocation(line: 910, column: 13, scope: !3173)
!3262 = !DILocation(line: 911, column: 17, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 911, column: 17)
!3264 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 910, column: 49)
!3265 = !DILocation(line: 911, column: 17, scope: !3264)
!3266 = !DILocation(line: 912, column: 34, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 911, column: 23)
!3268 = !DILocation(line: 912, column: 24, scope: !3267)
!3269 = !DILocation(line: 912, column: 18, scope: !3267)
!3270 = !DILocation(line: 912, column: 22, scope: !3267)
!3271 = !DILocation(line: 913, column: 17, scope: !3267)
!3272 = !DILocation(line: 915, column: 27, scope: !3264)
!3273 = !DILocation(line: 915, column: 20, scope: !3264)
!3274 = !DILocation(line: 915, column: 18, scope: !3264)
!3275 = !DILocation(line: 916, column: 22, scope: !3264)
!3276 = !DILocation(line: 916, column: 13, scope: !3264)
!3277 = !DILocation(line: 917, column: 13, scope: !3264)
!3278 = !DILocation(line: 919, column: 26, scope: !3173)
!3279 = !DILocation(line: 919, column: 74, scope: !3173)
!3280 = !DILocation(line: 919, column: 16, scope: !3173)
!3281 = !DILocation(line: 919, column: 10, scope: !3173)
!3282 = !DILocation(line: 919, column: 14, scope: !3173)
!3283 = !DILocation(line: 920, column: 9, scope: !3173)
!3284 = !DILocation(line: 921, column: 5, scope: !3174)
!3285 = !DILocation(line: 908, column: 37, scope: !3174)
!3286 = !DILocation(line: 908, column: 5, scope: !3174)
!3287 = distinct !{!3287, !3252, !3288, !1274}
!3288 = !DILocation(line: 921, column: 5, scope: !3171)
!3289 = !DILocation(line: 923, column: 10, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 923, column: 9)
!3291 = !DILocation(line: 923, column: 9, scope: !3147)
!3292 = !DILocation(line: 924, column: 16, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 923, column: 16)
!3294 = !DILocation(line: 924, column: 10, scope: !3293)
!3295 = !DILocation(line: 924, column: 14, scope: !3293)
!3296 = !DILocation(line: 925, column: 9, scope: !3293)
!3297 = !DILocation(line: 928, column: 21, scope: !3147)
!3298 = !DILocation(line: 928, column: 28, scope: !3147)
!3299 = !DILocation(line: 928, column: 5, scope: !3147)
!3300 = !DILocation(line: 930, column: 16, scope: !3147)
!3301 = !DILocation(line: 930, column: 5, scope: !3147)
!3302 = !DILocation(line: 930, column: 9, scope: !3147)
!3303 = !DILocation(line: 930, column: 14, scope: !3147)
!3304 = !{!3305, !568, i64 8}
!3305 = !{!"functionsLibMataData", !568, i64 0, !568, i64 8, !568, i64 16}
!3306 = !DILocation(line: 931, column: 26, scope: !3147)
!3307 = !DILocation(line: 931, column: 46, scope: !3147)
!3308 = !DILocation(line: 931, column: 39, scope: !3147)
!3309 = !DILocation(line: 931, column: 57, scope: !3147)
!3310 = !DILocation(line: 931, column: 55, scope: !3147)
!3311 = !DILocation(line: 931, column: 16, scope: !3147)
!3312 = !DILocation(line: 931, column: 5, scope: !3147)
!3313 = !DILocation(line: 931, column: 9, scope: !3147)
!3314 = !DILocation(line: 931, column: 14, scope: !3147)
!3315 = !{!3305, !568, i64 16}
!3316 = !DILocation(line: 932, column: 18, scope: !3147)
!3317 = !DILocation(line: 932, column: 5, scope: !3147)
!3318 = !DILocation(line: 932, column: 9, scope: !3147)
!3319 = !DILocation(line: 932, column: 16, scope: !3147)
!3320 = !{!3305, !568, i64 0}
!3321 = !DILocation(line: 934, column: 5, scope: !3147)
!3322 = !DILocation(line: 936, column: 1, scope: !3147)
!3323 = !DILocation(line: 937, column: 9, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 937, column: 9)
!3325 = !DILocation(line: 937, column: 9, scope: !3147)
!3326 = !DILocation(line: 937, column: 23, scope: !3324)
!3327 = !DILocation(line: 937, column: 15, scope: !3324)
!3328 = !DILocation(line: 938, column: 9, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 938, column: 9)
!3330 = !DILocation(line: 938, column: 9, scope: !3147)
!3331 = !DILocation(line: 938, column: 23, scope: !3329)
!3332 = !DILocation(line: 938, column: 15, scope: !3329)
!3333 = !DILocation(line: 939, column: 9, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 939, column: 9)
!3335 = !DILocation(line: 939, column: 9, scope: !3147)
!3336 = !DILocation(line: 939, column: 25, scope: !3334)
!3337 = !DILocation(line: 939, column: 17, scope: !3334)
!3338 = !DILocation(line: 940, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3147, file: !3, line: 940, column: 9)
!3340 = !DILocation(line: 940, column: 9, scope: !3147)
!3341 = !DILocation(line: 940, column: 23, scope: !3339)
!3342 = !DILocation(line: 940, column: 15, scope: !3339)
!3343 = !DILocation(line: 941, column: 21, scope: !3147)
!3344 = !DILocation(line: 941, column: 28, scope: !3147)
!3345 = !DILocation(line: 941, column: 5, scope: !3147)
!3346 = !DILocation(line: 942, column: 5, scope: !3147)
!3347 = !DILocation(line: 943, column: 1, scope: !3147)
!3348 = !DISubprogram(name: "strncmp", scope: !3349, file: !3349, line: 159, type: !3350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3349 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!181, !627, !627, !191}
!3352 = !DISubprogram(name: "strchr", scope: !3349, file: !3349, line: 246, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!68, !627, !181}
!3355 = !DISubprogram(name: "sdsnewlen", scope: !73, file: !73, line: 218, type: !3356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!591, !128, !191}
!3358 = !DISubprogram(name: "sdssplitargs", scope: !73, file: !73, line: 252, type: !3359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!616, !627, !3361}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3362 = !DISubprogram(name: "sdsfreesplitres", scope: !73, file: !73, line: 247, type: !3363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !616, !181}
!3365 = !DISubprogram(name: "sdsdup", scope: !73, file: !73, line: 222, type: !3366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!591, !1813}
!3368 = !DISubprogram(name: "sdsrange", scope: !73, file: !73, line: 242, type: !3369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !591, !759, !759}
!3371 = !DISubprogram(name: "strncasecmp", scope: !2093, file: !2093, line: 120, type: !3350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3372 = distinct !DISubprogram(name: "functionFreeLibMetaData", scope: !3, file: !3, line: 945, type: !3373, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{null, !3150}
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "md", arg: 1, scope: !3372, file: !3, line: 945, type: !3150)
!3377 = !DILocation(line: 945, column: 52, scope: !3372)
!3378 = !DILocation(line: 946, column: 9, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 946, column: 9)
!3380 = !DILocation(line: 946, column: 13, scope: !3379)
!3381 = !DILocation(line: 946, column: 9, scope: !3372)
!3382 = !DILocation(line: 946, column: 27, scope: !3379)
!3383 = !DILocation(line: 946, column: 31, scope: !3379)
!3384 = !DILocation(line: 946, column: 19, scope: !3379)
!3385 = !DILocation(line: 947, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 947, column: 9)
!3387 = !DILocation(line: 947, column: 13, scope: !3386)
!3388 = !DILocation(line: 947, column: 9, scope: !3372)
!3389 = !DILocation(line: 947, column: 27, scope: !3386)
!3390 = !DILocation(line: 947, column: 31, scope: !3386)
!3391 = !DILocation(line: 947, column: 19, scope: !3386)
!3392 = !DILocation(line: 948, column: 9, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 948, column: 9)
!3394 = !DILocation(line: 948, column: 13, scope: !3393)
!3395 = !DILocation(line: 948, column: 9, scope: !3372)
!3396 = !DILocation(line: 948, column: 29, scope: !3393)
!3397 = !DILocation(line: 948, column: 33, scope: !3393)
!3398 = !DILocation(line: 948, column: 21, scope: !3393)
!3399 = !DILocation(line: 949, column: 1, scope: !3372)
!3400 = distinct !DISubprogram(name: "functionsCreateWithLibraryCtx", scope: !3, file: !3, line: 953, type: !3401, scopeLine: 953, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!591, !591, !181, !616, !520}
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3417, !3418}
!3404 = !DILocalVariable(name: "code", arg: 1, scope: !3400, file: !3, line: 953, type: !591)
!3405 = !DILocalVariable(name: "replace", arg: 2, scope: !3400, file: !3, line: 953, type: !181)
!3406 = !DILocalVariable(name: "err", arg: 3, scope: !3400, file: !3, line: 953, type: !616)
!3407 = !DILocalVariable(name: "lib_ctx", arg: 4, scope: !3400, file: !3, line: 953, type: !520)
!3408 = !DILocalVariable(name: "iter", scope: !3400, file: !3, line: 954, type: !1223)
!3409 = !DILocalVariable(name: "entry", scope: !3400, file: !3, line: 955, type: !143)
!3410 = !DILocalVariable(name: "new_li", scope: !3400, file: !3, line: 956, type: !594)
!3411 = !DILocalVariable(name: "old_li", scope: !3400, file: !3, line: 957, type: !594)
!3412 = !DILocalVariable(name: "md", scope: !3400, file: !3, line: 958, type: !3151)
!3413 = !DILocalVariable(name: "ei", scope: !3400, file: !3, line: 968, type: !601)
!3414 = !DILocalVariable(name: "engine", scope: !3400, file: !3, line: 973, type: !607)
!3415 = !DILocalVariable(name: "fi", scope: !3416, file: !3, line: 999, type: !585)
!3416 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 998, column: 38)
!3417 = !DILocalVariable(name: "loaded_lib_name", scope: !3400, file: !3, line: 1015, type: !591)
!3418 = !DILabel(scope: !3400, name: "error", file: !3, line: 1021)
!3419 = !DILocation(line: 953, column: 39, scope: !3400)
!3420 = !DILocation(line: 953, column: 49, scope: !3400)
!3421 = !DILocation(line: 953, column: 63, scope: !3400)
!3422 = !DILocation(line: 953, column: 85, scope: !3400)
!3423 = !DILocation(line: 954, column: 5, scope: !3400)
!3424 = !DILocation(line: 954, column: 19, scope: !3400)
!3425 = !DILocation(line: 955, column: 5, scope: !3400)
!3426 = !DILocation(line: 955, column: 16, scope: !3400)
!3427 = !DILocation(line: 956, column: 5, scope: !3400)
!3428 = !DILocation(line: 956, column: 22, scope: !3400)
!3429 = !DILocation(line: 957, column: 5, scope: !3400)
!3430 = !DILocation(line: 957, column: 22, scope: !3400)
!3431 = !DILocation(line: 958, column: 5, scope: !3400)
!3432 = !DILocation(line: 958, column: 26, scope: !3400)
!3433 = !DILocation(line: 959, column: 36, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 959, column: 9)
!3435 = !DILocation(line: 959, column: 47, scope: !3434)
!3436 = !DILocation(line: 959, column: 9, scope: !3434)
!3437 = !DILocation(line: 959, column: 52, scope: !3434)
!3438 = !DILocation(line: 959, column: 9, scope: !3400)
!3439 = !DILocation(line: 960, column: 9, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 959, column: 61)
!3441 = !DILocation(line: 963, column: 32, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 963, column: 9)
!3443 = !DILocation(line: 963, column: 9, scope: !3442)
!3444 = !DILocation(line: 963, column: 9, scope: !3400)
!3445 = !DILocation(line: 964, column: 16, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 963, column: 39)
!3447 = !DILocation(line: 964, column: 10, scope: !3446)
!3448 = !DILocation(line: 964, column: 14, scope: !3446)
!3449 = !DILocation(line: 965, column: 9, scope: !3446)
!3450 = !DILocation(line: 968, column: 17, scope: !3400)
!3451 = !DILocation(line: 968, column: 37, scope: !3400)
!3452 = !DILocation(line: 968, column: 49, scope: !3400)
!3453 = !DILocation(line: 968, column: 22, scope: !3400)
!3454 = !DILocation(line: 969, column: 10, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 969, column: 9)
!3456 = !DILocation(line: 969, column: 9, scope: !3400)
!3457 = !DILocation(line: 970, column: 26, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 969, column: 14)
!3459 = !DILocation(line: 970, column: 66, scope: !3458)
!3460 = !DILocation(line: 970, column: 16, scope: !3458)
!3461 = !DILocation(line: 970, column: 10, scope: !3458)
!3462 = !DILocation(line: 970, column: 14, scope: !3458)
!3463 = !DILocation(line: 971, column: 9, scope: !3458)
!3464 = !DILocation(line: 973, column: 13, scope: !3400)
!3465 = !DILocation(line: 973, column: 22, scope: !3400)
!3466 = !DILocation(line: 973, column: 26, scope: !3400)
!3467 = !DILocation(line: 975, column: 29, scope: !3400)
!3468 = !DILocation(line: 975, column: 38, scope: !3400)
!3469 = !DILocation(line: 975, column: 52, scope: !3400)
!3470 = !DILocation(line: 975, column: 14, scope: !3400)
!3471 = !DILocation(line: 975, column: 12, scope: !3400)
!3472 = !DILocation(line: 976, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 976, column: 9)
!3474 = !DILocation(line: 976, column: 16, scope: !3473)
!3475 = !DILocation(line: 976, column: 20, scope: !3473)
!3476 = !DILocation(line: 976, column: 9, scope: !3400)
!3477 = !DILocation(line: 977, column: 16, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 976, column: 29)
!3479 = !DILocation(line: 978, column: 26, scope: !3478)
!3480 = !DILocation(line: 978, column: 72, scope: !3478)
!3481 = !DILocation(line: 978, column: 16, scope: !3478)
!3482 = !DILocation(line: 978, column: 10, scope: !3478)
!3483 = !DILocation(line: 978, column: 14, scope: !3478)
!3484 = !DILocation(line: 979, column: 9, scope: !3478)
!3485 = !DILocation(line: 982, column: 9, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 982, column: 9)
!3487 = !DILocation(line: 982, column: 9, scope: !3400)
!3488 = !DILocation(line: 983, column: 23, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 982, column: 17)
!3490 = !DILocation(line: 983, column: 32, scope: !3489)
!3491 = !DILocation(line: 983, column: 9, scope: !3489)
!3492 = !DILocation(line: 984, column: 5, scope: !3489)
!3493 = !DILocation(line: 986, column: 37, scope: !3400)
!3494 = !DILocation(line: 986, column: 43, scope: !3400)
!3495 = !DILocation(line: 986, column: 47, scope: !3400)
!3496 = !DILocation(line: 986, column: 14, scope: !3400)
!3497 = !DILocation(line: 986, column: 12, scope: !3400)
!3498 = !DILocation(line: 987, column: 9, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 987, column: 9)
!3500 = !DILocation(line: 987, column: 17, scope: !3499)
!3501 = !{!1197, !568, i64 8}
!3502 = !DILocation(line: 987, column: 24, scope: !3499)
!3503 = !DILocation(line: 987, column: 32, scope: !3499)
!3504 = !DILocation(line: 987, column: 44, scope: !3499)
!3505 = !DILocation(line: 987, column: 55, scope: !3499)
!3506 = !DILocation(line: 987, column: 61, scope: !3499)
!3507 = !DILocation(line: 987, column: 66, scope: !3499)
!3508 = !DILocation(line: 987, column: 9, scope: !3400)
!3509 = !DILocation(line: 988, column: 9, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 987, column: 75)
!3511 = !DILocation(line: 991, column: 9, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 991, column: 9)
!3513 = !DILocation(line: 991, column: 37, scope: !3512)
!3514 = !DILocation(line: 991, column: 9, scope: !3400)
!3515 = !DILocation(line: 992, column: 16, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 991, column: 43)
!3517 = !DILocation(line: 992, column: 10, scope: !3516)
!3518 = !DILocation(line: 992, column: 14, scope: !3516)
!3519 = !DILocation(line: 993, column: 9, scope: !3516)
!3520 = !DILocation(line: 997, column: 28, scope: !3400)
!3521 = !DILocation(line: 997, column: 36, scope: !3400)
!3522 = !DILocation(line: 997, column: 12, scope: !3400)
!3523 = !DILocation(line: 997, column: 10, scope: !3400)
!3524 = !DILocation(line: 998, column: 5, scope: !3400)
!3525 = !DILocation(line: 998, column: 30, scope: !3400)
!3526 = !DILocation(line: 998, column: 21, scope: !3400)
!3527 = !DILocation(line: 998, column: 19, scope: !3400)
!3528 = !DILocation(line: 999, column: 9, scope: !3416)
!3529 = !DILocation(line: 999, column: 23, scope: !3416)
!3530 = !DILocation(line: 999, column: 28, scope: !3416)
!3531 = !DILocation(line: 1000, column: 28, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 1000, column: 13)
!3533 = !DILocation(line: 1000, column: 37, scope: !3532)
!3534 = !DILocation(line: 1000, column: 48, scope: !3532)
!3535 = !DILocation(line: 1000, column: 52, scope: !3532)
!3536 = !DILocation(line: 1000, column: 13, scope: !3532)
!3537 = !DILocation(line: 1000, column: 13, scope: !3416)
!3538 = !DILocation(line: 1002, column: 30, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 1000, column: 59)
!3540 = !DILocation(line: 1002, column: 72, scope: !3539)
!3541 = !DILocation(line: 1002, column: 76, scope: !3539)
!3542 = !DILocation(line: 1002, column: 20, scope: !3539)
!3543 = !DILocation(line: 1002, column: 14, scope: !3539)
!3544 = !DILocation(line: 1002, column: 18, scope: !3539)
!3545 = !DILocation(line: 1003, column: 13, scope: !3539)
!3546 = !DILocation(line: 1005, column: 5, scope: !3400)
!3547 = distinct !{!3547, !3524, !3546, !1274}
!3548 = !DILocation(line: 1006, column: 25, scope: !3400)
!3549 = !DILocation(line: 1006, column: 5, scope: !3400)
!3550 = !DILocation(line: 1007, column: 10, scope: !3400)
!3551 = !DILocation(line: 1009, column: 17, scope: !3400)
!3552 = !DILocation(line: 1009, column: 26, scope: !3400)
!3553 = !DILocation(line: 1009, column: 5, scope: !3400)
!3554 = !DILocation(line: 1011, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1011, column: 9)
!3556 = !DILocation(line: 1011, column: 9, scope: !3400)
!3557 = !DILocation(line: 1012, column: 27, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1011, column: 17)
!3559 = !DILocation(line: 1012, column: 9, scope: !3558)
!3560 = !DILocation(line: 1013, column: 5, scope: !3558)
!3561 = !DILocation(line: 1015, column: 9, scope: !3400)
!3562 = !DILocation(line: 1015, column: 30, scope: !3400)
!3563 = !DILocation(line: 1016, column: 8, scope: !3400)
!3564 = !DILocation(line: 1016, column: 13, scope: !3400)
!3565 = !DILocation(line: 1017, column: 5, scope: !3400)
!3566 = !DILocation(line: 1019, column: 12, scope: !3400)
!3567 = !DILocation(line: 1019, column: 5, scope: !3400)
!3568 = !DILocation(line: 1021, column: 1, scope: !3400)
!3569 = !DILocation(line: 1022, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1022, column: 9)
!3571 = !DILocation(line: 1022, column: 9, scope: !3400)
!3572 = !DILocation(line: 1022, column: 35, scope: !3570)
!3573 = !DILocation(line: 1022, column: 15, scope: !3570)
!3574 = !DILocation(line: 1023, column: 9, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1023, column: 9)
!3576 = !DILocation(line: 1023, column: 9, scope: !3400)
!3577 = !DILocation(line: 1023, column: 35, scope: !3575)
!3578 = !DILocation(line: 1023, column: 17, scope: !3575)
!3579 = !DILocation(line: 1024, column: 9, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1024, column: 9)
!3581 = !DILocation(line: 1024, column: 9, scope: !3400)
!3582 = !DILocation(line: 1024, column: 29, scope: !3580)
!3583 = !DILocation(line: 1024, column: 38, scope: !3580)
!3584 = !DILocation(line: 1024, column: 17, scope: !3580)
!3585 = !DILocation(line: 1025, column: 5, scope: !3400)
!3586 = !DILocation(line: 1026, column: 5, scope: !3400)
!3587 = !DILocation(line: 1027, column: 1, scope: !3400)
!3588 = distinct !DISubprogram(name: "engineLibraryCreate", scope: !3, file: !3, line: 272, type: !3589, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!594, !591, !601, !591}
!3591 = !{!3592, !3593, !3594, !3595}
!3592 = !DILocalVariable(name: "name", arg: 1, scope: !3588, file: !3, line: 272, type: !591)
!3593 = !DILocalVariable(name: "ei", arg: 2, scope: !3588, file: !3, line: 272, type: !601)
!3594 = !DILocalVariable(name: "code", arg: 3, scope: !3588, file: !3, line: 272, type: !591)
!3595 = !DILocalVariable(name: "li", scope: !3588, file: !3, line: 273, type: !594)
!3596 = !DILocation(line: 272, column: 49, scope: !3588)
!3597 = !DILocation(line: 272, column: 67, scope: !3588)
!3598 = !DILocation(line: 272, column: 75, scope: !3588)
!3599 = !DILocation(line: 273, column: 5, scope: !3588)
!3600 = !DILocation(line: 273, column: 22, scope: !3588)
!3601 = !DILocation(line: 273, column: 27, scope: !3588)
!3602 = !DILocation(line: 274, column: 6, scope: !3588)
!3603 = !DILocation(line: 274, column: 29, scope: !3588)
!3604 = !DILocation(line: 275, column: 24, scope: !3588)
!3605 = !DILocation(line: 275, column: 17, scope: !3588)
!3606 = !DILocation(line: 276, column: 22, scope: !3588)
!3607 = !DILocation(line: 277, column: 15, scope: !3588)
!3608 = !DILocation(line: 278, column: 24, scope: !3588)
!3609 = !DILocation(line: 278, column: 17, scope: !3588)
!3610 = !DILocation(line: 274, column: 11, scope: !3588)
!3611 = !{i64 0, i64 8, !567, i64 8, i64 8, !567, i64 16, i64 8, !567, i64 24, i64 8, !567}
!3612 = !DILocation(line: 280, column: 12, scope: !3588)
!3613 = !DILocation(line: 281, column: 1, scope: !3588)
!3614 = !DILocation(line: 280, column: 5, scope: !3588)
!3615 = distinct !DISubprogram(name: "libraryLink", scope: !3, file: !3, line: 305, type: !2228, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3623}
!3617 = !DILocalVariable(name: "lib_ctx", arg: 1, scope: !3615, file: !3, line: 305, type: !520)
!3618 = !DILocalVariable(name: "li", arg: 2, scope: !3615, file: !3, line: 305, type: !594)
!3619 = !DILocalVariable(name: "iter", scope: !3615, file: !3, line: 306, type: !1223)
!3620 = !DILocalVariable(name: "entry", scope: !3615, file: !3, line: 307, type: !143)
!3621 = !DILocalVariable(name: "fi", scope: !3622, file: !3, line: 309, type: !585)
!3622 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 308, column: 38)
!3623 = !DILocalVariable(name: "stats", scope: !3615, file: !3, line: 319, type: !561)
!3624 = !DILocation(line: 305, column: 42, scope: !3615)
!3625 = !DILocation(line: 305, column: 68, scope: !3615)
!3626 = !DILocation(line: 306, column: 5, scope: !3615)
!3627 = !DILocation(line: 306, column: 19, scope: !3615)
!3628 = !DILocation(line: 306, column: 42, scope: !3615)
!3629 = !DILocation(line: 306, column: 46, scope: !3615)
!3630 = !DILocation(line: 306, column: 26, scope: !3615)
!3631 = !DILocation(line: 307, column: 5, scope: !3615)
!3632 = !DILocation(line: 307, column: 16, scope: !3615)
!3633 = !DILocation(line: 308, column: 5, scope: !3615)
!3634 = !DILocation(line: 308, column: 30, scope: !3615)
!3635 = !DILocation(line: 308, column: 21, scope: !3615)
!3636 = !DILocation(line: 308, column: 19, scope: !3615)
!3637 = !DILocation(line: 309, column: 9, scope: !3622)
!3638 = !DILocation(line: 309, column: 23, scope: !3622)
!3639 = !DILocation(line: 309, column: 28, scope: !3622)
!3640 = !DILocation(line: 310, column: 17, scope: !3622)
!3641 = !DILocation(line: 310, column: 26, scope: !3622)
!3642 = !DILocation(line: 310, column: 37, scope: !3622)
!3643 = !DILocation(line: 310, column: 41, scope: !3622)
!3644 = !DILocation(line: 310, column: 47, scope: !3622)
!3645 = !DILocation(line: 310, column: 9, scope: !3622)
!3646 = !DILocation(line: 311, column: 53, scope: !3622)
!3647 = !DILocation(line: 311, column: 34, scope: !3622)
!3648 = !DILocation(line: 311, column: 9, scope: !3622)
!3649 = !DILocation(line: 311, column: 18, scope: !3622)
!3650 = !DILocation(line: 311, column: 31, scope: !3622)
!3651 = !DILocation(line: 312, column: 5, scope: !3615)
!3652 = distinct !{!3652, !3633, !3651, !1274}
!3653 = !DILocation(line: 313, column: 25, scope: !3615)
!3654 = !DILocation(line: 313, column: 5, scope: !3615)
!3655 = !DILocation(line: 315, column: 13, scope: !3615)
!3656 = !DILocation(line: 315, column: 22, scope: !3615)
!3657 = !DILocation(line: 315, column: 33, scope: !3615)
!3658 = !DILocation(line: 315, column: 37, scope: !3615)
!3659 = !DILocation(line: 315, column: 43, scope: !3615)
!3660 = !DILocation(line: 315, column: 5, scope: !3615)
!3661 = !DILocation(line: 316, column: 48, scope: !3615)
!3662 = !DILocation(line: 316, column: 30, scope: !3615)
!3663 = !DILocation(line: 316, column: 5, scope: !3615)
!3664 = !DILocation(line: 316, column: 14, scope: !3615)
!3665 = !DILocation(line: 316, column: 27, scope: !3615)
!3666 = !DILocation(line: 319, column: 5, scope: !3615)
!3667 = !DILocation(line: 319, column: 30, scope: !3615)
!3668 = !DILocation(line: 319, column: 53, scope: !3615)
!3669 = !DILocation(line: 319, column: 62, scope: !3615)
!3670 = !DILocation(line: 319, column: 77, scope: !3615)
!3671 = !DILocation(line: 319, column: 81, scope: !3615)
!3672 = !DILocation(line: 319, column: 85, scope: !3615)
!3673 = !DILocation(line: 319, column: 38, scope: !3615)
!3674 = !DILocation(line: 320, column: 5, scope: !3615)
!3675 = !DILocation(line: 321, column: 5, scope: !3615)
!3676 = !DILocation(line: 321, column: 12, scope: !3615)
!3677 = !DILocation(line: 321, column: 17, scope: !3615)
!3678 = !DILocation(line: 322, column: 27, scope: !3615)
!3679 = !DILocation(line: 322, column: 5, scope: !3615)
!3680 = !DILocation(line: 322, column: 12, scope: !3615)
!3681 = !DILocation(line: 322, column: 24, scope: !3615)
!3682 = !DILocation(line: 323, column: 1, scope: !3615)
!3683 = distinct !DISubprogram(name: "functionLoadCommand", scope: !3, file: !3, line: 1034, type: !867, scopeLine: 1034, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3684 = !{!3685, !3686, !3687, !3688, !3690, !3691, !3692}
!3685 = !DILocalVariable(name: "c", arg: 1, scope: !3683, file: !3, line: 1034, type: !630)
!3686 = !DILocalVariable(name: "replace", scope: !3683, file: !3, line: 1035, type: !181)
!3687 = !DILocalVariable(name: "argc_pos", scope: !3683, file: !3, line: 1036, type: !181)
!3688 = !DILocalVariable(name: "next_arg", scope: !3689, file: !3, line: 1038, type: !823)
!3689 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1037, column: 36)
!3690 = !DILocalVariable(name: "code", scope: !3683, file: !3, line: 1052, type: !823)
!3691 = !DILocalVariable(name: "err", scope: !3683, file: !3, line: 1053, type: !591)
!3692 = !DILocalVariable(name: "library_name", scope: !3683, file: !3, line: 1054, type: !591)
!3693 = !DILocation(line: 1034, column: 34, scope: !3683)
!3694 = !DILocation(line: 1035, column: 5, scope: !3683)
!3695 = !DILocation(line: 1035, column: 9, scope: !3683)
!3696 = !DILocation(line: 1036, column: 5, scope: !3683)
!3697 = !DILocation(line: 1036, column: 9, scope: !3683)
!3698 = !DILocation(line: 1037, column: 5, scope: !3683)
!3699 = !DILocation(line: 1037, column: 12, scope: !3683)
!3700 = !DILocation(line: 1037, column: 23, scope: !3683)
!3701 = !DILocation(line: 1037, column: 26, scope: !3683)
!3702 = !DILocation(line: 1037, column: 31, scope: !3683)
!3703 = !DILocation(line: 1037, column: 21, scope: !3683)
!3704 = !DILocation(line: 1038, column: 9, scope: !3689)
!3705 = !DILocation(line: 1038, column: 15, scope: !3689)
!3706 = !DILocation(line: 1038, column: 26, scope: !3689)
!3707 = !DILocation(line: 1038, column: 29, scope: !3689)
!3708 = !DILocation(line: 1038, column: 42, scope: !3689)
!3709 = !DILocation(line: 1039, column: 25, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 1039, column: 13)
!3711 = !DILocation(line: 1039, column: 35, scope: !3710)
!3712 = !DILocation(line: 1039, column: 14, scope: !3710)
!3713 = !DILocation(line: 1039, column: 13, scope: !3689)
!3714 = !DILocation(line: 1040, column: 21, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 1039, column: 52)
!3716 = !DILocation(line: 1041, column: 13, scope: !3715)
!3717 = distinct !{!3717, !3698, !3718, !1274}
!3718 = !DILocation(line: 1045, column: 5, scope: !3683)
!3719 = !DILocation(line: 1043, column: 29, scope: !3689)
!3720 = !DILocation(line: 1043, column: 67, scope: !3689)
!3721 = !DILocation(line: 1043, column: 77, scope: !3689)
!3722 = !DILocation(line: 1043, column: 9, scope: !3689)
!3723 = !DILocation(line: 1044, column: 9, scope: !3689)
!3724 = !DILocation(line: 1047, column: 9, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1047, column: 9)
!3726 = !DILocation(line: 1047, column: 21, scope: !3725)
!3727 = !DILocation(line: 1047, column: 24, scope: !3725)
!3728 = !DILocation(line: 1047, column: 18, scope: !3725)
!3729 = !DILocation(line: 1047, column: 9, scope: !3683)
!3730 = !DILocation(line: 1048, column: 23, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 1047, column: 30)
!3732 = !DILocation(line: 1048, column: 9, scope: !3731)
!3733 = !DILocation(line: 1049, column: 9, scope: !3731)
!3734 = !DILocation(line: 1052, column: 5, scope: !3683)
!3735 = !DILocation(line: 1052, column: 11, scope: !3683)
!3736 = !DILocation(line: 1052, column: 18, scope: !3683)
!3737 = !DILocation(line: 1052, column: 21, scope: !3683)
!3738 = !DILocation(line: 1052, column: 26, scope: !3683)
!3739 = !DILocation(line: 1053, column: 5, scope: !3683)
!3740 = !DILocation(line: 1053, column: 9, scope: !3683)
!3741 = !DILocation(line: 1054, column: 5, scope: !3683)
!3742 = !DILocation(line: 1054, column: 9, scope: !3683)
!3743 = !DILocation(line: 1055, column: 56, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1055, column: 9)
!3745 = !DILocation(line: 1055, column: 62, scope: !3744)
!3746 = !DILocation(line: 1055, column: 67, scope: !3744)
!3747 = !DILocation(line: 1055, column: 82, scope: !3744)
!3748 = !DILocation(line: 1055, column: 26, scope: !3744)
!3749 = !DILocation(line: 1055, column: 24, scope: !3744)
!3750 = !DILocation(line: 1055, column: 9, scope: !3683)
!3751 = !DILocation(line: 1057, column: 26, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 1056, column: 5)
!3753 = !DILocation(line: 1057, column: 29, scope: !3752)
!3754 = !DILocation(line: 1057, column: 9, scope: !3752)
!3755 = !DILocation(line: 1058, column: 9, scope: !3752)
!3756 = !DILocation(line: 1062, column: 17, scope: !3683)
!3757 = !DILocation(line: 1063, column: 21, scope: !3683)
!3758 = !DILocation(line: 1063, column: 24, scope: !3683)
!3759 = !DILocation(line: 1063, column: 5, scope: !3683)
!3760 = !DILocation(line: 1064, column: 1, scope: !3683)
!3761 = !DISubprogram(name: "addReplyErrorFormat", scope: !16, file: !16, line: 2548, type: !3762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !630, !627, null}
!3764 = distinct !DISubprogram(name: "functionsMemory", scope: !3, file: !3, line: 1067, type: !3765, scopeLine: 1067, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!70}
!3767 = !{!3768, !3769, !3770, !3771, !3773}
!3768 = !DILocalVariable(name: "iter", scope: !3764, file: !3, line: 1068, type: !1223)
!3769 = !DILocalVariable(name: "entry", scope: !3764, file: !3, line: 1069, type: !143)
!3770 = !DILocalVariable(name: "engines_nemory", scope: !3764, file: !3, line: 1070, type: !191)
!3771 = !DILocalVariable(name: "ei", scope: !3772, file: !3, line: 1072, type: !601)
!3772 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 1071, column: 38)
!3773 = !DILocalVariable(name: "engine", scope: !3772, file: !3, line: 1073, type: !607)
!3774 = !DILocation(line: 1068, column: 5, scope: !3764)
!3775 = !DILocation(line: 1068, column: 19, scope: !3764)
!3776 = !DILocation(line: 1068, column: 42, scope: !3764)
!3777 = !DILocation(line: 1068, column: 26, scope: !3764)
!3778 = !DILocation(line: 1069, column: 5, scope: !3764)
!3779 = !DILocation(line: 1069, column: 16, scope: !3764)
!3780 = !DILocation(line: 1070, column: 5, scope: !3764)
!3781 = !DILocation(line: 1070, column: 12, scope: !3764)
!3782 = !DILocation(line: 1071, column: 5, scope: !3764)
!3783 = !DILocation(line: 1071, column: 30, scope: !3764)
!3784 = !DILocation(line: 1071, column: 21, scope: !3764)
!3785 = !DILocation(line: 1071, column: 19, scope: !3764)
!3786 = !DILocation(line: 1072, column: 9, scope: !3772)
!3787 = !DILocation(line: 1072, column: 21, scope: !3772)
!3788 = !DILocation(line: 1072, column: 26, scope: !3772)
!3789 = !DILocation(line: 1073, column: 9, scope: !3772)
!3790 = !DILocation(line: 1073, column: 17, scope: !3772)
!3791 = !DILocation(line: 1073, column: 26, scope: !3772)
!3792 = !DILocation(line: 1073, column: 30, scope: !3772)
!3793 = !DILocation(line: 1074, column: 27, scope: !3772)
!3794 = !DILocation(line: 1074, column: 35, scope: !3772)
!3795 = !{!1197, !568, i64 24}
!3796 = !DILocation(line: 1074, column: 51, scope: !3772)
!3797 = !DILocation(line: 1074, column: 59, scope: !3772)
!3798 = !DILocation(line: 1074, column: 24, scope: !3772)
!3799 = !DILocation(line: 1075, column: 5, scope: !3764)
!3800 = distinct !{!3800, !3782, !3799, !1274}
!3801 = !DILocation(line: 1076, column: 25, scope: !3764)
!3802 = !DILocation(line: 1076, column: 5, scope: !3764)
!3803 = !DILocation(line: 1078, column: 12, scope: !3764)
!3804 = !DILocation(line: 1079, column: 1, scope: !3764)
!3805 = !DILocation(line: 1078, column: 5, scope: !3764)
!3806 = distinct !DISubprogram(name: "functionsMemoryOverhead", scope: !3, file: !3, line: 1082, type: !3765, scopeLine: 1082, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3807)
!3807 = !{!3808}
!3808 = !DILocalVariable(name: "memory_overhead", scope: !3806, file: !3, line: 1083, type: !191)
!3809 = !DILocation(line: 1083, column: 5, scope: !3806)
!3810 = !DILocation(line: 1083, column: 12, scope: !3806)
!3811 = !DILocation(line: 1083, column: 30, scope: !3806)
!3812 = !DILocation(line: 1083, column: 48, scope: !3806)
!3813 = !DILocation(line: 1084, column: 13, scope: !3806)
!3814 = !DILocation(line: 1084, column: 32, scope: !3806)
!3815 = !DILocation(line: 1083, column: 68, scope: !3806)
!3816 = !DILocation(line: 1085, column: 24, scope: !3806)
!3817 = !DILocation(line: 1085, column: 68, scope: !3806)
!3818 = !DILocation(line: 1086, column: 13, scope: !3806)
!3819 = !DILocation(line: 1086, column: 58, scope: !3806)
!3820 = !DILocation(line: 1085, column: 88, scope: !3806)
!3821 = !DILocation(line: 1086, column: 79, scope: !3806)
!3822 = !DILocation(line: 1085, column: 21, scope: !3806)
!3823 = !DILocation(line: 1087, column: 24, scope: !3806)
!3824 = !DILocation(line: 1087, column: 48, scope: !3806)
!3825 = !DILocation(line: 1087, column: 21, scope: !3806)
!3826 = !DILocation(line: 1088, column: 24, scope: !3806)
!3827 = !DILocation(line: 1088, column: 21, scope: !3806)
!3828 = !DILocation(line: 1090, column: 12, scope: !3806)
!3829 = !DILocation(line: 1091, column: 1, scope: !3806)
!3830 = !DILocation(line: 1090, column: 5, scope: !3806)
!3831 = distinct !DISubprogram(name: "functionsNum", scope: !3, file: !3, line: 1094, type: !3765, scopeLine: 1094, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3832 = !DILocation(line: 1095, column: 12, scope: !3831)
!3833 = !DILocation(line: 1095, column: 5, scope: !3831)
!3834 = distinct !DISubprogram(name: "functionsLibNum", scope: !3, file: !3, line: 1098, type: !3765, scopeLine: 1098, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3835 = !DILocation(line: 1099, column: 12, scope: !3834)
!3836 = !DILocation(line: 1099, column: 5, scope: !3834)
!3837 = distinct !DISubprogram(name: "functionsLibGet", scope: !3, file: !3, line: 1102, type: !3838, scopeLine: 1102, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!134}
!3840 = !DILocation(line: 1103, column: 12, scope: !3837)
!3841 = !DILocation(line: 1103, column: 36, scope: !3837)
!3842 = !DILocation(line: 1103, column: 5, scope: !3837)
!3843 = distinct !DISubprogram(name: "functionsLibCtxfunctionsLen", scope: !3, file: !3, line: 1106, type: !3844, scopeLine: 1106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!191, !520}
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "functions_ctx", arg: 1, scope: !3843, file: !3, line: 1106, type: !520)
!3848 = !DILocation(line: 1106, column: 53, scope: !3843)
!3849 = !DILocation(line: 1107, column: 12, scope: !3843)
!3850 = !DILocation(line: 1107, column: 5, scope: !3843)
!3851 = distinct !DISubprogram(name: "functionsInit", scope: !3, file: !3, line: 1112, type: !1787, scopeLine: 1112, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3852 = !DILocation(line: 1113, column: 15, scope: !3851)
!3853 = !DILocation(line: 1113, column: 13, scope: !3851)
!3854 = !DILocation(line: 1115, column: 9, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 1115, column: 9)
!3856 = !DILocation(line: 1115, column: 31, scope: !3855)
!3857 = !DILocation(line: 1115, column: 9, scope: !3851)
!3858 = !DILocation(line: 1116, column: 9, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 1115, column: 40)
!3860 = !DILocation(line: 1120, column: 30, scope: !3851)
!3861 = !DILocation(line: 1120, column: 28, scope: !3851)
!3862 = !DILocation(line: 1122, column: 5, scope: !3851)
!3863 = !DILocation(line: 1123, column: 1, scope: !3851)
!3864 = !DISubprogram(name: "luaEngineInitEngine", scope: !587, file: !587, line: 128, type: !1787, spFlags: DISPFlagOptimized)
!3865 = !DISubprogram(name: "addReplySetLen", scope: !16, file: !16, line: 2485, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3866 = !DISubprogram(name: "addReplyStatus", scope: !16, file: !16, line: 2477, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3867 = !DISubprogram(name: "dictDelete", scope: !121, file: !121, line: 180, type: !3868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!181, !134, !128}
!3870 = distinct !DISubprogram(name: "functionMallocSize", scope: !3, file: !3, line: 125, type: !3871, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3873)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!191, !585}
!3873 = !{!3874}
!3874 = !DILocalVariable(name: "fi", arg: 1, scope: !3870, file: !3, line: 125, type: !585)
!3875 = !DILocation(line: 125, column: 48, scope: !3870)
!3876 = !DILocation(line: 126, column: 12, scope: !3870)
!3877 = !DILocation(line: 126, column: 46, scope: !3870)
!3878 = !DILocation(line: 126, column: 50, scope: !3870)
!3879 = !DILocation(line: 126, column: 31, scope: !3870)
!3880 = !DILocation(line: 126, column: 29, scope: !3870)
!3881 = !DILocation(line: 127, column: 16, scope: !3870)
!3882 = !DILocation(line: 127, column: 20, scope: !3870)
!3883 = !DILocation(line: 127, column: 42, scope: !3870)
!3884 = !DILocation(line: 127, column: 46, scope: !3870)
!3885 = !DILocation(line: 127, column: 27, scope: !3870)
!3886 = !DILocation(line: 127, column: 13, scope: !3870)
!3887 = !DILocation(line: 128, column: 15, scope: !3870)
!3888 = !DILocation(line: 128, column: 19, scope: !3870)
!3889 = !DILocation(line: 128, column: 23, scope: !3870)
!3890 = !DILocation(line: 128, column: 27, scope: !3870)
!3891 = !DILocation(line: 128, column: 35, scope: !3870)
!3892 = !{!1197, !568, i64 32}
!3893 = !DILocation(line: 128, column: 64, scope: !3870)
!3894 = !DILocation(line: 128, column: 68, scope: !3870)
!3895 = !DILocation(line: 128, column: 13, scope: !3870)
!3896 = !DILocation(line: 126, column: 5, scope: !3870)
!3897 = !DISubprogram(name: "dictUnlink", scope: !121, file: !121, line: 181, type: !3898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!143, !134, !128}
!3900 = !DISubprogram(name: "dictFreeUnlinkedEntry", scope: !121, file: !121, line: 182, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !134, !143}
!3903 = distinct !DISubprogram(name: "libraryMallocSize", scope: !3, file: !3, line: 131, type: !3904, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!191, !594}
!3906 = !{!3907}
!3907 = !DILocalVariable(name: "li", arg: 1, scope: !3903, file: !3, line: 131, type: !594)
!3908 = !DILocation(line: 131, column: 50, scope: !3903)
!3909 = !DILocation(line: 132, column: 12, scope: !3903)
!3910 = !DILocation(line: 132, column: 46, scope: !3903)
!3911 = !DILocation(line: 132, column: 50, scope: !3903)
!3912 = !DILocation(line: 132, column: 31, scope: !3903)
!3913 = !DILocation(line: 132, column: 29, scope: !3903)
!3914 = !DILocation(line: 133, column: 30, scope: !3903)
!3915 = !DILocation(line: 133, column: 34, scope: !3903)
!3916 = !DILocation(line: 133, column: 15, scope: !3903)
!3917 = !DILocation(line: 133, column: 13, scope: !3903)
!3918 = !DILocation(line: 132, column: 5, scope: !3903)
!3919 = !DISubprogram(name: "getLongLongFromObject", scope: !16, file: !16, line: 2648, type: !3920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!181, !823, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3923 = !DISubprogram(name: "scriptPrepareForRun", scope: !623, file: !623, line: 97, type: !3924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!181, !621, !630, !630, !627, !109, !181}
!3926 = !DISubprogram(name: "scriptResetRun", scope: !623, file: !623, line: 98, type: !3927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !621}
!3929 = !DISubprogram(name: "listCreate", scope: !795, file: !795, line: 73, type: !3930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!793}
!3932 = !DISubprogram(name: "listAddNodeTail", scope: !795, file: !795, line: 77, type: !3933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!793, !793, !65}
!3935 = !DISubprogram(name: "listRelease", scope: !795, file: !795, line: 74, type: !3936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !793}
!3938 = !DISubprogram(name: "listDelNode", scope: !795, file: !795, line: 79, type: !3939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !793, !799}

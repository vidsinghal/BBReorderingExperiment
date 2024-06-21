; ModuleID = 'samples/816.bc'
source_filename = "file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_logcategory = type { ptr, i32 }
%struct.isc_logmodule = type { ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"file.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [19 x i8] c"size != ((void*)0)\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [20 x i8] c"modep != ((void*)0)\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [19 x i8] c"file != ((void*)0)\00", align 1, !dbg !18
@.str.4 = private unnamed_addr constant [22 x i8] c"modtime != ((void*)0)\00", align 1, !dbg !20
@.str.5 = private unnamed_addr constant [41 x i8] c"file != ((void*)0) && when != ((void*)0)\00", align 1, !dbg !25
@.str.6 = private unnamed_addr constant [15 x i8] c"tmp-XXXXXXXXXX\00", align 1, !dbg !30
@.str.7 = private unnamed_addr constant [22 x i8] c"templet != ((void*)0)\00", align 1, !dbg !35
@.str.8 = private unnamed_addr constant [18 x i8] c"buf != ((void*)0)\00", align 1, !dbg !37
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@alphnum = internal constant [63 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00", align 16, !dbg !47
@.str.10 = private unnamed_addr constant [38 x i8] c"fp != ((void*)0) && *fp == ((void*)0)\00", align 1, !dbg !74
@.str.11 = private unnamed_addr constant [3 x i8] c"w+\00", align 1, !dbg !79
@isc_lctx = external global ptr, align 8
@isc_categories = external global [0 x %struct.isc_logcategory], align 8
@isc_modules = external global [0 x %struct.isc_logmodule], align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"remove '%s': failed\00", align 1, !dbg !84
@.str.13 = private unnamed_addr constant [23 x i8] c"filename != ((void*)0)\00", align 1, !dbg !86
@.str.14 = private unnamed_addr constant [22 x i8] c"oldname != ((void*)0)\00", align 1, !dbg !91
@.str.15 = private unnamed_addr constant [22 x i8] c"newname != ((void*)0)\00", align 1, !dbg !93
@.str.16 = private unnamed_addr constant [23 x i8] c"pathname != ((void*)0)\00", align 1, !dbg !95
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !97
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !102
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !104
@.str.20 = private unnamed_addr constant [19 x i8] c"base != ((void*)0)\00", align 1, !dbg !106
@.str.21 = private unnamed_addr constant [19 x i8] c"path != ((void*)0)\00", align 1, !dbg !108
@.str.22 = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1, !dbg !110
@.str.23 = private unnamed_addr constant [29 x i8] c"\\/ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1, !dbg !115
@.str.24 = private unnamed_addr constant [20 x i8] c"stats != ((void*)0)\00", align 1, !dbg !120
@.str.25 = private unnamed_addr constant [22 x i8] c"dirname != ((void*)0)\00", align 1, !dbg !122
@.str.26 = private unnamed_addr constant [12 x i8] c"length > 0U\00", align 1, !dbg !124
@.str.27 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !129

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_getsizefd(i32 noundef %fd, ptr noundef %size) #0 !dbg !143 {
entry:
  %fd.addr = alloca i32, align 4
  %size.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %stats = alloca %struct.stat, align 8
  store i32 %fd, ptr %fd.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !153, metadata !DIExpression()), !dbg !191
  store ptr %size, ptr %size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !154, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !193
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !155, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 144, ptr %stats) #11, !dbg !195
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !156, metadata !DIExpression()), !dbg !196
  %0 = load ptr, ptr %size.addr, align 8, !dbg !197
  %cmp = icmp ne ptr %0, null, !dbg !197
  %lnot = xor i1 %cmp, true, !dbg !197
  %lnot1 = xor i1 %lnot, true, !dbg !197
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !197
  %conv = sext i32 %lnot.ext to i64, !dbg !197
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !197
  %tobool = icmp ne i64 %expval, 0, !dbg !197
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !197

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 114, i32 noundef 0, ptr noundef @.str.1) #12, !dbg !197
  unreachable, !dbg !197

1:                                                ; No predecessors!
  br label %lor.end, !dbg !197

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !197
  %3 = load i32, ptr %fd.addr, align 4, !dbg !198
  %call = call i32 @fd_stats(i32 noundef %3, ptr noundef %stats), !dbg !199
  store i32 %call, ptr %result, align 4, !dbg !200
  %4 = load i32, ptr %result, align 4, !dbg !201
  %cmp2 = icmp eq i32 %4, 0, !dbg !203
  br i1 %cmp2, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %lor.end
  %st_size = getelementptr inbounds %struct.stat, ptr %stats, i32 0, i32 8, !dbg !205
  %5 = load i64, ptr %st_size, align 8, !dbg !205
  %6 = load ptr, ptr %size.addr, align 8, !dbg !206
  store i64 %5, ptr %6, align 8, !dbg !207
  br label %if.end, !dbg !208

if.end:                                           ; preds = %if.then, %lor.end
  %7 = load i32, ptr %result, align 4, !dbg !209
  call void @llvm.lifetime.end.p0(i64 144, ptr %stats) #11, !dbg !210
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !210
  ret i32 %7, !dbg !211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #2

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !212 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @fd_stats(i32 noundef %fd, ptr noundef %stats) #0 !dbg !217 {
entry:
  %fd.addr = alloca i32, align 4
  %stats.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !222, metadata !DIExpression()), !dbg !225
  store ptr %stats, ptr %stats.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %stats.addr, metadata !223, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !227
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !224, metadata !DIExpression()), !dbg !228
  store i32 0, ptr %result, align 4, !dbg !228
  %0 = load ptr, ptr %stats.addr, align 8, !dbg !229
  %cmp = icmp ne ptr %0, null, !dbg !229
  %lnot = xor i1 %cmp, true, !dbg !229
  %lnot1 = xor i1 %lnot, true, !dbg !229
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !229
  %conv = sext i32 %lnot.ext to i64, !dbg !229
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !229
  %tobool = icmp ne i64 %expval, 0, !dbg !229
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !229

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 101, i32 noundef 0, ptr noundef @.str.24) #12, !dbg !229
  unreachable, !dbg !229

1:                                                ; No predecessors!
  br label %lor.end, !dbg !229

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !229
  %3 = load i32, ptr %fd.addr, align 4, !dbg !230
  %4 = load ptr, ptr %stats.addr, align 8, !dbg !232
  %call = call i32 @fstat(i32 noundef %3, ptr noundef %4) #11, !dbg !233
  %cmp2 = icmp ne i32 %call, 0, !dbg !234
  br i1 %cmp2, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %lor.end
  %call4 = call ptr @__errno_location() #13, !dbg !236
  %5 = load i32, ptr %call4, align 4, !dbg !236
  %call5 = call i32 @isc___errno2result(i32 noundef %5, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 104), !dbg !236
  store i32 %call5, ptr %result, align 4, !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %lor.end
  %6 = load i32, ptr %result, align 4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !240
  ret i32 %6, !dbg !241
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_mode(ptr noundef %file, ptr noundef %modep) #0 !dbg !242 {
entry:
  %file.addr = alloca ptr, align 8
  %modep.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %stats = alloca %struct.stat, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !248, metadata !DIExpression()), !dbg !252
  store ptr %modep, ptr %modep.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %modep.addr, metadata !249, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !254
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !250, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 144, ptr %stats) #11, !dbg !256
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !251, metadata !DIExpression()), !dbg !257
  %0 = load ptr, ptr %modep.addr, align 8, !dbg !258
  %cmp = icmp ne ptr %0, null, !dbg !258
  %lnot = xor i1 %cmp, true, !dbg !258
  %lnot1 = xor i1 %lnot, true, !dbg !258
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !258
  %conv = sext i32 %lnot.ext to i64, !dbg !258
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !258
  %tobool = icmp ne i64 %expval, 0, !dbg !258
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !258

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 129, i32 noundef 0, ptr noundef @.str.2) #12, !dbg !258
  unreachable, !dbg !258

1:                                                ; No predecessors!
  br label %lor.end, !dbg !258

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !258
  %3 = load ptr, ptr %file.addr, align 8, !dbg !259
  %call = call i32 @file_stats(ptr noundef %3, ptr noundef %stats), !dbg !260
  store i32 %call, ptr %result, align 4, !dbg !261
  %4 = load i32, ptr %result, align 4, !dbg !262
  %cmp2 = icmp eq i32 %4, 0, !dbg !264
  br i1 %cmp2, label %if.then, label %if.end, !dbg !265

if.then:                                          ; preds = %lor.end
  %st_mode = getelementptr inbounds %struct.stat, ptr %stats, i32 0, i32 3, !dbg !266
  %5 = load i32, ptr %st_mode, align 8, !dbg !266
  %and = and i32 %5, 4095, !dbg !267
  %6 = load ptr, ptr %modep.addr, align 8, !dbg !268
  store i32 %and, ptr %6, align 4, !dbg !269
  br label %if.end, !dbg !270

if.end:                                           ; preds = %if.then, %lor.end
  %7 = load i32, ptr %result, align 4, !dbg !271
  call void @llvm.lifetime.end.p0(i64 144, ptr %stats) #11, !dbg !272
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !272
  ret i32 %7, !dbg !273
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @file_stats(ptr noundef %file, ptr noundef %stats) #0 !dbg !274 {
entry:
  %file.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !278, metadata !DIExpression()), !dbg !281
  store ptr %stats, ptr %stats.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %stats.addr, metadata !279, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !283
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !280, metadata !DIExpression()), !dbg !284
  store i32 0, ptr %result, align 4, !dbg !284
  %0 = load ptr, ptr %file.addr, align 8, !dbg !285
  %cmp = icmp ne ptr %0, null, !dbg !285
  %lnot = xor i1 %cmp, true, !dbg !285
  %lnot1 = xor i1 %lnot, true, !dbg !285
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !285
  %conv = sext i32 %lnot.ext to i64, !dbg !285
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !285
  %tobool = icmp ne i64 %expval, 0, !dbg !285
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !285

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 88, i32 noundef 0, ptr noundef @.str.3) #12, !dbg !285
  unreachable, !dbg !285

1:                                                ; No predecessors!
  br label %lor.end, !dbg !285

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !285
  %3 = load ptr, ptr %stats.addr, align 8, !dbg !286
  %cmp2 = icmp ne ptr %3, null, !dbg !286
  %lnot4 = xor i1 %cmp2, true, !dbg !286
  %lnot6 = xor i1 %lnot4, true, !dbg !286
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !286
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !286
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !286
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !286
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !286

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 89, i32 noundef 0, ptr noundef @.str.24) #12, !dbg !286
  unreachable, !dbg !286

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !286

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !286
  %6 = load ptr, ptr %file.addr, align 8, !dbg !287
  %7 = load ptr, ptr %stats.addr, align 8, !dbg !289
  %call = call i32 @stat(ptr noundef %6, ptr noundef %7) #11, !dbg !290
  %cmp14 = icmp ne i32 %call, 0, !dbg !291
  br i1 %cmp14, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %lor.end12
  %call16 = call ptr @__errno_location() #13, !dbg !293
  %8 = load i32, ptr %call16, align 4, !dbg !293
  %call17 = call i32 @isc___errno2result(i32 noundef %8, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 92), !dbg !293
  store i32 %call17, ptr %result, align 4, !dbg !294
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.then, %lor.end12
  %9 = load i32, ptr %result, align 4, !dbg !296
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !297
  ret i32 %9, !dbg !298
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_getmodtime(ptr noundef %file, ptr noundef %modtime) #0 !dbg !299 {
entry:
  %file.addr = alloca ptr, align 8
  %modtime.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %stats = alloca %struct.stat, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !310, metadata !DIExpression()), !dbg !314
  store ptr %modtime, ptr %modtime.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %modtime.addr, metadata !311, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !316
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !312, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 144, ptr %stats) #11, !dbg !318
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !313, metadata !DIExpression()), !dbg !319
  %0 = load ptr, ptr %file.addr, align 8, !dbg !320
  %cmp = icmp ne ptr %0, null, !dbg !320
  %lnot = xor i1 %cmp, true, !dbg !320
  %lnot1 = xor i1 %lnot, true, !dbg !320
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !320
  %conv = sext i32 %lnot.ext to i64, !dbg !320
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !320
  %tobool = icmp ne i64 %expval, 0, !dbg !320
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !320

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 143, i32 noundef 0, ptr noundef @.str.3) #12, !dbg !320
  unreachable, !dbg !320

1:                                                ; No predecessors!
  br label %lor.end, !dbg !320

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !320
  %3 = load ptr, ptr %modtime.addr, align 8, !dbg !321
  %cmp2 = icmp ne ptr %3, null, !dbg !321
  %lnot4 = xor i1 %cmp2, true, !dbg !321
  %lnot6 = xor i1 %lnot4, true, !dbg !321
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !321
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !321
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !321
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !321
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !321

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 144, i32 noundef 0, ptr noundef @.str.4) #12, !dbg !321
  unreachable, !dbg !321

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !321

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !321
  %6 = load ptr, ptr %file.addr, align 8, !dbg !322
  %call = call i32 @file_stats(ptr noundef %6, ptr noundef %stats), !dbg !323
  store i32 %call, ptr %result, align 4, !dbg !324
  %7 = load i32, ptr %result, align 4, !dbg !325
  %cmp14 = icmp eq i32 %7, 0, !dbg !327
  br i1 %cmp14, label %if.then, label %if.end, !dbg !328

if.then:                                          ; preds = %lor.end12
  %8 = load ptr, ptr %modtime.addr, align 8, !dbg !329
  %st_mtim = getelementptr inbounds %struct.stat, ptr %stats, i32 0, i32 12, !dbg !330
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %st_mtim, i32 0, i32 0, !dbg !330
  %9 = load i64, ptr %tv_sec, align 8, !dbg !330
  %conv16 = trunc i64 %9 to i32, !dbg !331
  %st_mtim17 = getelementptr inbounds %struct.stat, ptr %stats, i32 0, i32 12, !dbg !332
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %st_mtim17, i32 0, i32 1, !dbg !333
  %10 = load i64, ptr %tv_nsec, align 8, !dbg !333
  %conv18 = trunc i64 %10 to i32, !dbg !334
  call void @isc_time_set(ptr noundef %8, i32 noundef %conv16, i32 noundef %conv18), !dbg !335
  br label %if.end, !dbg !335

if.end:                                           ; preds = %if.then, %lor.end12
  %11 = load i32, ptr %result, align 4, !dbg !336
  call void @llvm.lifetime.end.p0(i64 144, ptr %stats) #11, !dbg !337
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !337
  ret i32 %11, !dbg !338
}

; Function Attrs: null_pointer_is_valid
declare !dbg !339 void @isc_time_set(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_getsize(ptr noundef %file, ptr noundef %size) #0 !dbg !342 {
entry:
  %file.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %stats = alloca %struct.stat, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !346, metadata !DIExpression()), !dbg !350
  store ptr %size, ptr %size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !347, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !352
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !348, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 144, ptr %stats) #11, !dbg !354
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !349, metadata !DIExpression()), !dbg !355
  %0 = load ptr, ptr %file.addr, align 8, !dbg !356
  %cmp = icmp ne ptr %0, null, !dbg !356
  %lnot = xor i1 %cmp, true, !dbg !356
  %lnot1 = xor i1 %lnot, true, !dbg !356
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !356
  %conv = sext i32 %lnot.ext to i64, !dbg !356
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !356
  %tobool = icmp ne i64 %expval, 0, !dbg !356
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !356

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 163, i32 noundef 0, ptr noundef @.str.3) #12, !dbg !356
  unreachable, !dbg !356

1:                                                ; No predecessors!
  br label %lor.end, !dbg !356

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !356
  %3 = load ptr, ptr %size.addr, align 8, !dbg !357
  %cmp2 = icmp ne ptr %3, null, !dbg !357
  %lnot4 = xor i1 %cmp2, true, !dbg !357
  %lnot6 = xor i1 %lnot4, true, !dbg !357
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !357
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !357
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !357
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !357
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !357

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 164, i32 noundef 0, ptr noundef @.str.1) #12, !dbg !357
  unreachable, !dbg !357

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !357

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !357
  %6 = load ptr, ptr %file.addr, align 8, !dbg !358
  %call = call i32 @file_stats(ptr noundef %6, ptr noundef %stats), !dbg !359
  store i32 %call, ptr %result, align 4, !dbg !360
  %7 = load i32, ptr %result, align 4, !dbg !361
  %cmp14 = icmp eq i32 %7, 0, !dbg !363
  br i1 %cmp14, label %if.then, label %if.end, !dbg !364

if.then:                                          ; preds = %lor.end12
  %st_size = getelementptr inbounds %struct.stat, ptr %stats, i32 0, i32 8, !dbg !365
  %8 = load i64, ptr %st_size, align 8, !dbg !365
  %9 = load ptr, ptr %size.addr, align 8, !dbg !366
  store i64 %8, ptr %9, align 8, !dbg !367
  br label %if.end, !dbg !368

if.end:                                           ; preds = %if.then, %lor.end12
  %10 = load i32, ptr %result, align 4, !dbg !369
  call void @llvm.lifetime.end.p0(i64 144, ptr %stats) #11, !dbg !370
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !370
  ret i32 %10, !dbg !371
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_settime(ptr noundef %file, ptr noundef %when) #0 !dbg !372 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %when.addr = alloca ptr, align 8
  %times = alloca [2 x %struct.timeval], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !374, metadata !DIExpression()), !dbg !384
  store ptr %when, ptr %when.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %when.addr, metadata !375, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 32, ptr %times) #11, !dbg !386
  tail call void @llvm.dbg.declare(metadata ptr %times, metadata !376, metadata !DIExpression()), !dbg !387
  %0 = load ptr, ptr %file.addr, align 8, !dbg !388
  %cmp = icmp ne ptr %0, null, !dbg !388
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !388

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %when.addr, align 8, !dbg !388
  %cmp1 = icmp ne ptr %1, null, !dbg !388
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !389
  %lnot = xor i1 %2, true, !dbg !388
  %lnot2 = xor i1 %lnot, true, !dbg !388
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !388
  %conv = sext i32 %lnot.ext to i64, !dbg !388
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !388
  %tobool = icmp ne i64 %expval, 0, !dbg !388
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !388

lor.rhs:                                          ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 178, i32 noundef 0, ptr noundef @.str.5) #12, !dbg !388
  unreachable, !dbg !388

3:                                                ; No predecessors!
  br label %lor.end, !dbg !388

lor.end:                                          ; preds = %3, %land.end
  %4 = phi i1 [ true, %land.end ], [ false, %3 ]
  %lor.ext = zext i1 %4 to i32, !dbg !388
  %5 = load ptr, ptr %when.addr, align 8, !dbg !390
  %call = call i32 @isc_time_seconds(ptr noundef %5), !dbg !391
  %conv3 = zext i32 %call to i64, !dbg !392
  %arrayidx = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 1, !dbg !393
  %tv_sec = getelementptr inbounds %struct.timeval, ptr %arrayidx, i32 0, i32 0, !dbg !394
  store i64 %conv3, ptr %tv_sec, align 16, !dbg !395
  %arrayidx4 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 0, !dbg !396
  %tv_sec5 = getelementptr inbounds %struct.timeval, ptr %arrayidx4, i32 0, i32 0, !dbg !397
  store i64 %conv3, ptr %tv_sec5, align 16, !dbg !398
  %arrayidx6 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 0, !dbg !399
  %tv_sec7 = getelementptr inbounds %struct.timeval, ptr %arrayidx6, i32 0, i32 0, !dbg !401
  %6 = load i64, ptr %tv_sec7, align 16, !dbg !401
  %and = and i64 %6, -9223372036854775808, !dbg !402
  %cmp8 = icmp ne i64 %and, 0, !dbg !403
  br i1 %cmp8, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %lor.end
  store i32 41, ptr %retval, align 4, !dbg !405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !405

if.end:                                           ; preds = %lor.end
  %7 = load ptr, ptr %when.addr, align 8, !dbg !406
  %call10 = call i32 @isc_time_nanoseconds(ptr noundef %7), !dbg !407
  %div = udiv i32 %call10, 1000, !dbg !408
  %conv11 = sext i32 %div to i64, !dbg !409
  %arrayidx12 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 1, !dbg !410
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %arrayidx12, i32 0, i32 1, !dbg !411
  store i64 %conv11, ptr %tv_usec, align 8, !dbg !412
  %arrayidx13 = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 0, !dbg !413
  %tv_usec14 = getelementptr inbounds %struct.timeval, ptr %arrayidx13, i32 0, i32 1, !dbg !414
  store i64 %conv11, ptr %tv_usec14, align 8, !dbg !415
  %8 = load ptr, ptr %file.addr, align 8, !dbg !416
  %arraydecay = getelementptr inbounds [2 x %struct.timeval], ptr %times, i64 0, i64 0, !dbg !418
  %call15 = call i32 @utimes(ptr noundef %8, ptr noundef %arraydecay) #11, !dbg !419
  %cmp16 = icmp slt i32 %call15, 0, !dbg !420
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !421

if.then18:                                        ; preds = %if.end
  %call19 = call ptr @__errno_location() #13, !dbg !422
  %9 = load i32, ptr %call19, align 4, !dbg !422
  %call20 = call i32 @isc___errno2result(i32 noundef %9, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 207), !dbg !422
  store i32 %call20, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end21:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !424

cleanup:                                          ; preds = %if.end21, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %times) #11, !dbg !425
  %10 = load i32, ptr %retval, align 4, !dbg !425
  ret i32 %10, !dbg !425
}

; Function Attrs: null_pointer_is_valid
declare !dbg !426 i32 @isc_time_seconds(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !434 i32 @isc_time_nanoseconds(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !435 i32 @utimes(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !441 i32 @isc___errno2result(i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(none)
declare !dbg !446 ptr @__errno_location() #6

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_mktemplate(ptr noundef %path, ptr noundef %buf, i64 noundef %buflen) #0 !dbg !451 {
entry:
  %path.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !456, metadata !DIExpression()), !dbg !459
  store ptr %buf, ptr %buf.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !457, metadata !DIExpression()), !dbg !460
  store i64 %buflen, ptr %buflen.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !458, metadata !DIExpression()), !dbg !461
  %0 = load ptr, ptr %path.addr, align 8, !dbg !462
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !463
  %2 = load i64, ptr %buflen.addr, align 8, !dbg !464
  %call = call i32 @isc_file_template(ptr noundef %0, ptr noundef @.str.6, ptr noundef %1, i64 noundef %2), !dbg !465
  ret i32 %call, !dbg !466
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_template(ptr noundef %path, ptr noundef %templet, ptr noundef %buf, i64 noundef %buflen) #0 !dbg !467 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %templet.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  %prefixlen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !471, metadata !DIExpression()), !dbg !479
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !472, metadata !DIExpression()), !dbg !480
  store ptr %buf, ptr %buf.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !473, metadata !DIExpression()), !dbg !481
  store i64 %buflen, ptr %buflen.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !474, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !483
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !475, metadata !DIExpression()), !dbg !484
  %0 = load ptr, ptr %templet.addr, align 8, !dbg !485
  %cmp = icmp ne ptr %0, null, !dbg !485
  %lnot = xor i1 %cmp, true, !dbg !485
  %lnot1 = xor i1 %lnot, true, !dbg !485
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !485
  %conv = sext i32 %lnot.ext to i64, !dbg !485
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !485
  %tobool = icmp ne i64 %expval, 0, !dbg !485
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !485

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 226, i32 noundef 0, ptr noundef @.str.7) #12, !dbg !485
  unreachable, !dbg !485

1:                                                ; No predecessors!
  br label %lor.end, !dbg !485

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !485
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !486
  %cmp2 = icmp ne ptr %3, null, !dbg !486
  %lnot4 = xor i1 %cmp2, true, !dbg !486
  %lnot6 = xor i1 %lnot4, true, !dbg !486
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !486
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !486
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !486
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !486
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !486

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 227, i32 noundef 0, ptr noundef @.str.8) #12, !dbg !486
  unreachable, !dbg !486

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !486

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !486
  %6 = load ptr, ptr %path.addr, align 8, !dbg !487
  %cmp14 = icmp eq ptr %6, null, !dbg !489
  br i1 %cmp14, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %lor.end12
  store ptr @.str.9, ptr %path.addr, align 8, !dbg !491
  br label %if.end, !dbg !492

if.end:                                           ; preds = %if.then, %lor.end12
  %7 = load ptr, ptr %templet.addr, align 8, !dbg !493
  %call = call ptr @strrchr(ptr noundef %7, i32 noundef 47) #14, !dbg !494
  store ptr %call, ptr %s, align 8, !dbg !495
  %8 = load ptr, ptr %s, align 8, !dbg !496
  %cmp16 = icmp ne ptr %8, null, !dbg !498
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !499

if.then18:                                        ; preds = %if.end
  %9 = load ptr, ptr %s, align 8, !dbg !500
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 1, !dbg !501
  store ptr %add.ptr, ptr %templet.addr, align 8, !dbg !502
  br label %if.end19, !dbg !503

if.end19:                                         ; preds = %if.then18, %if.end
  %10 = load ptr, ptr %path.addr, align 8, !dbg !504
  %call20 = call ptr @strrchr(ptr noundef %10, i32 noundef 47) #14, !dbg !505
  store ptr %call20, ptr %s, align 8, !dbg !506
  %11 = load ptr, ptr %s, align 8, !dbg !507
  %cmp21 = icmp ne ptr %11, null, !dbg !508
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !509

if.then23:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixlen) #11, !dbg !510
  tail call void @llvm.dbg.declare(metadata ptr %prefixlen, metadata !476, metadata !DIExpression()), !dbg !511
  %12 = load ptr, ptr %s, align 8, !dbg !512
  %13 = load ptr, ptr %path.addr, align 8, !dbg !513
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !514
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64, !dbg !514
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !514
  %add = add nsw i64 %sub.ptr.sub, 1, !dbg !515
  store i64 %add, ptr %prefixlen, align 8, !dbg !511
  %14 = load i64, ptr %prefixlen, align 8, !dbg !516
  %15 = load ptr, ptr %templet.addr, align 8, !dbg !518
  %call24 = call i64 @strlen(ptr noundef %15) #14, !dbg !519
  %add25 = add i64 %14, %call24, !dbg !520
  %add26 = add i64 %add25, 1, !dbg !521
  %16 = load i64, ptr %buflen.addr, align 8, !dbg !522
  %cmp27 = icmp ugt i64 %add26, %16, !dbg !523
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !524

if.then29:                                        ; preds = %if.then23
  store i32 19, ptr %retval, align 4, !dbg !525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !525

if.end30:                                         ; preds = %if.then23
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !526
  %18 = load ptr, ptr %path.addr, align 8, !dbg !527
  %19 = load i64, ptr %prefixlen, align 8, !dbg !528
  %add31 = add i64 %19, 1, !dbg !528
  %20 = load i64, ptr %buflen.addr, align 8, !dbg !528
  %cmp32 = icmp ult i64 %add31, %20, !dbg !528
  br i1 %cmp32, label %cond.true, label %cond.false, !dbg !528

cond.true:                                        ; preds = %if.end30
  %21 = load i64, ptr %prefixlen, align 8, !dbg !528
  %add34 = add i64 %21, 1, !dbg !528
  br label %cond.end, !dbg !528

cond.false:                                       ; preds = %if.end30
  %22 = load i64, ptr %buflen.addr, align 8, !dbg !528
  br label %cond.end, !dbg !528

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add34, %cond.true ], [ %22, %cond.false ], !dbg !528
  %call35 = call i64 @strlcpy(ptr noundef %17, ptr noundef %18, i64 noundef %cond), !dbg !529
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !530
  %24 = load ptr, ptr %templet.addr, align 8, !dbg !531
  %25 = load i64, ptr %buflen.addr, align 8, !dbg !532
  %call36 = call i64 @strlcat(ptr noundef %23, ptr noundef %24, i64 noundef %25), !dbg !533
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !534
  br label %cleanup, !dbg !534

cleanup:                                          ; preds = %cond.end, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixlen) #11, !dbg !534
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44, !dbg !535

if.else:                                          ; preds = %if.end19
  %26 = load ptr, ptr %templet.addr, align 8, !dbg !536
  %call37 = call i64 @strlen(ptr noundef %26) #14, !dbg !539
  %add38 = add i64 %call37, 1, !dbg !540
  %27 = load i64, ptr %buflen.addr, align 8, !dbg !541
  %cmp39 = icmp ugt i64 %add38, %27, !dbg !542
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !543

if.then41:                                        ; preds = %if.else
  store i32 19, ptr %retval, align 4, !dbg !544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !544

if.end42:                                         ; preds = %if.else
  %28 = load ptr, ptr %buf.addr, align 8, !dbg !545
  %29 = load ptr, ptr %templet.addr, align 8, !dbg !546
  %30 = load i64, ptr %buflen.addr, align 8, !dbg !547
  %call43 = call i64 @strlcpy(ptr noundef %28, ptr noundef %29, i64 noundef %30), !dbg !548
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %cleanup.cont
  store i32 0, ptr %retval, align 4, !dbg !549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !549

cleanup45:                                        ; preds = %if.end44, %if.then41, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !550
  %31 = load i32, ptr %retval, align 4, !dbg !550
  ret i32 %31, !dbg !550
}

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !551 ptr @strrchr(ptr noundef, i32 noundef) #7

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !555 i64 @strlen(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !558 i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !562 i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_renameunique(ptr noundef %file, ptr noundef %templet) #0 !dbg !563 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %templet.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !567, metadata !DIExpression()), !dbg !576
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !568, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #11, !dbg !578
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !569, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #11, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !570, metadata !DIExpression()), !dbg !581
  %0 = load ptr, ptr %file.addr, align 8, !dbg !582
  %cmp = icmp ne ptr %0, null, !dbg !582
  %lnot = xor i1 %cmp, true, !dbg !582
  %lnot1 = xor i1 %lnot, true, !dbg !582
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !582
  %conv = sext i32 %lnot.ext to i64, !dbg !582
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !582
  %tobool = icmp ne i64 %expval, 0, !dbg !582
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !582

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 264, i32 noundef 0, ptr noundef @.str.3) #12, !dbg !582
  unreachable, !dbg !582

1:                                                ; No predecessors!
  br label %lor.end, !dbg !582

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !582
  %3 = load ptr, ptr %templet.addr, align 8, !dbg !583
  %cmp2 = icmp ne ptr %3, null, !dbg !583
  %lnot4 = xor i1 %cmp2, true, !dbg !583
  %lnot6 = xor i1 %lnot4, true, !dbg !583
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !583
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !583
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !583
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !583
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !583

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 265, i32 noundef 0, ptr noundef @.str.7) #12, !dbg !583
  unreachable, !dbg !583

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !583

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !583
  %6 = load ptr, ptr %templet.addr, align 8, !dbg !584
  store ptr %6, ptr %cp, align 8, !dbg !585
  br label %while.cond, !dbg !586

while.cond:                                       ; preds = %while.body, %lor.end12
  %7 = load ptr, ptr %cp, align 8, !dbg !587
  %8 = load i8, ptr %7, align 1, !dbg !588
  %conv14 = sext i8 %8 to i32, !dbg !588
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !589
  br i1 %cmp15, label %while.body, label %while.end, !dbg !586

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %cp, align 8, !dbg !590
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1, !dbg !590
  store ptr %incdec.ptr, ptr %cp, align 8, !dbg !590
  br label %while.cond, !dbg !586, !llvm.loop !591

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %cp, align 8, !dbg !593
  %11 = load ptr, ptr %templet.addr, align 8, !dbg !595
  %cmp17 = icmp eq ptr %10, %11, !dbg !596
  br i1 %cmp17, label %if.then, label %if.end, !dbg !597

if.then:                                          ; preds = %while.end
  store i32 25, ptr %retval, align 4, !dbg !598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !598

if.end:                                           ; preds = %while.end
  %12 = load ptr, ptr %cp, align 8, !dbg !599
  %incdec.ptr19 = getelementptr inbounds i8, ptr %12, i32 -1, !dbg !599
  store ptr %incdec.ptr19, ptr %cp, align 8, !dbg !599
  store ptr %12, ptr %x, align 8, !dbg !600
  br label %while.cond20, !dbg !601

while.cond20:                                     ; preds = %while.body26, %if.end
  %13 = load ptr, ptr %cp, align 8, !dbg !602
  %14 = load ptr, ptr %templet.addr, align 8, !dbg !603
  %cmp21 = icmp uge ptr %13, %14, !dbg !604
  br i1 %cmp21, label %land.rhs, label %land.end, !dbg !605

land.rhs:                                         ; preds = %while.cond20
  %15 = load ptr, ptr %cp, align 8, !dbg !606
  %16 = load i8, ptr %15, align 1, !dbg !607
  %conv23 = sext i8 %16 to i32, !dbg !607
  %cmp24 = icmp eq i32 %conv23, 88, !dbg !608
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond20
  %17 = phi i1 [ false, %while.cond20 ], [ %cmp24, %land.rhs ], !dbg !609
  br i1 %17, label %while.body26, label %while.end28, !dbg !601

while.body26:                                     ; preds = %land.end
  %call = call i32 @isc_random_uniform(i32 noundef 62), !dbg !610
  %idxprom = zext i32 %call to i64, !dbg !612
  %arrayidx = getelementptr inbounds [63 x i8], ptr @alphnum, i64 0, i64 %idxprom, !dbg !612
  %18 = load i8, ptr %arrayidx, align 1, !dbg !612
  %19 = load ptr, ptr %cp, align 8, !dbg !613
  store i8 %18, ptr %19, align 1, !dbg !614
  %20 = load ptr, ptr %cp, align 8, !dbg !615
  %incdec.ptr27 = getelementptr inbounds i8, ptr %20, i32 -1, !dbg !615
  store ptr %incdec.ptr27, ptr %cp, align 8, !dbg !615
  store ptr %20, ptr %x, align 8, !dbg !616
  br label %while.cond20, !dbg !601, !llvm.loop !617

while.end28:                                      ; preds = %land.end
  br label %while.cond29, !dbg !619

while.cond29:                                     ; preds = %for.end, %while.end28
  %21 = load ptr, ptr %file.addr, align 8, !dbg !620
  %22 = load ptr, ptr %templet.addr, align 8, !dbg !621
  %call30 = call i32 @link(ptr noundef %21, ptr noundef %22) #11, !dbg !622
  %cmp31 = icmp eq i32 %call30, -1, !dbg !623
  br i1 %cmp31, label %while.body33, label %while.end57, !dbg !619

while.body33:                                     ; preds = %while.cond29
  %call34 = call ptr @__errno_location() #13, !dbg !624
  %23 = load i32, ptr %call34, align 4, !dbg !624
  %cmp35 = icmp ne i32 %23, 17, !dbg !626
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !627

if.then37:                                        ; preds = %while.body33
  %call38 = call ptr @__errno_location() #13, !dbg !628
  %24 = load i32, ptr %call38, align 4, !dbg !628
  %call39 = call i32 @isc___errno2result(i32 noundef %24, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 280), !dbg !628
  store i32 %call39, ptr %retval, align 4, !dbg !629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !629

if.end40:                                         ; preds = %while.body33
  %25 = load ptr, ptr %x, align 8, !dbg !630
  store ptr %25, ptr %cp, align 8, !dbg !631
  br label %for.cond, !dbg !632

for.cond:                                         ; preds = %cleanup.cont, %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #11, !dbg !633
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !571, metadata !DIExpression()), !dbg !634
  %26 = load ptr, ptr %cp, align 8, !dbg !635
  %27 = load i8, ptr %26, align 1, !dbg !637
  %conv41 = sext i8 %27 to i32, !dbg !637
  %cmp42 = icmp eq i32 %conv41, 0, !dbg !638
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !639

if.then44:                                        ; preds = %for.cond
  store i32 25, ptr %retval, align 4, !dbg !640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !640

if.end45:                                         ; preds = %for.cond
  %28 = load ptr, ptr %cp, align 8, !dbg !641
  %29 = load i8, ptr %28, align 1, !dbg !642
  %conv46 = sext i8 %29 to i32, !dbg !642
  %call47 = call ptr @strchr(ptr noundef @alphnum, i32 noundef %conv46) #14, !dbg !643
  store ptr %call47, ptr %t, align 8, !dbg !644
  %30 = load ptr, ptr %t, align 8, !dbg !645
  %cmp48 = icmp eq ptr %30, null, !dbg !647
  br i1 %cmp48, label %if.then54, label %lor.lhs.false, !dbg !648

lor.lhs.false:                                    ; preds = %if.end45
  %31 = load ptr, ptr %t, align 8, !dbg !649
  %incdec.ptr50 = getelementptr inbounds i8, ptr %31, i32 1, !dbg !649
  store ptr %incdec.ptr50, ptr %t, align 8, !dbg !649
  %32 = load i8, ptr %incdec.ptr50, align 1, !dbg !650
  %conv51 = sext i8 %32 to i32, !dbg !650
  %cmp52 = icmp eq i32 %conv51, 0, !dbg !651
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !652

if.then54:                                        ; preds = %lor.lhs.false, %if.end45
  %33 = load i8, ptr @alphnum, align 16, !dbg !653
  %34 = load ptr, ptr %cp, align 8, !dbg !654
  %incdec.ptr55 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !654
  store ptr %incdec.ptr55, ptr %cp, align 8, !dbg !654
  store i8 %33, ptr %34, align 1, !dbg !655
  br label %if.end56, !dbg !656

if.else:                                          ; preds = %lor.lhs.false
  %35 = load ptr, ptr %t, align 8, !dbg !657
  %36 = load i8, ptr %35, align 1, !dbg !659
  %37 = load ptr, ptr %cp, align 8, !dbg !660
  store i8 %36, ptr %37, align 1, !dbg !661
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !662

if.end56:                                         ; preds = %if.then54
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !663
  br label %cleanup, !dbg !663

cleanup:                                          ; preds = %if.end56, %if.else, %if.then44
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #11, !dbg !663
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup70 [
    i32 0, label %cleanup.cont
    i32 8, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !664, !llvm.loop !665

for.end:                                          ; preds = %cleanup
  br label %while.cond29, !dbg !619, !llvm.loop !668

while.end57:                                      ; preds = %while.cond29
  %38 = load ptr, ptr %file.addr, align 8, !dbg !670
  %call58 = call i32 @unlink(ptr noundef %38) #11, !dbg !672
  %cmp59 = icmp slt i32 %call58, 0, !dbg !673
  br i1 %cmp59, label %if.then61, label %if.end69, !dbg !674

if.then61:                                        ; preds = %while.end57
  %call62 = call ptr @__errno_location() #13, !dbg !675
  %39 = load i32, ptr %call62, align 4, !dbg !675
  %cmp63 = icmp ne i32 %39, 2, !dbg !677
  br i1 %cmp63, label %if.then65, label %if.end68, !dbg !678

if.then65:                                        ; preds = %if.then61
  %call66 = call ptr @__errno_location() #13, !dbg !679
  %40 = load i32, ptr %call66, align 4, !dbg !679
  %call67 = call i32 @isc___errno2result(i32 noundef %40, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 296), !dbg !679
  store i32 %call67, ptr %retval, align 4, !dbg !680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !680

if.end68:                                         ; preds = %if.then61
  br label %if.end69, !dbg !681

if.end69:                                         ; preds = %if.end68, %while.end57
  store i32 0, ptr %retval, align 4, !dbg !682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup70, !dbg !682

cleanup70:                                        ; preds = %if.end69, %if.then65, %cleanup, %if.then37, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #11, !dbg !683
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #11, !dbg !683
  %41 = load i32, ptr %retval, align 4, !dbg !683
  ret i32 %41, !dbg !683
}

; Function Attrs: null_pointer_is_valid
declare !dbg !684 i32 @isc_random_uniform(i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !688 i32 @link(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !692 ptr @strchr(ptr noundef, i32 noundef) #7

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !693 i32 @unlink(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_openunique(ptr noundef %templet, ptr noundef %fp) #0 !dbg !696 {
entry:
  %templet.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %mode = alloca i32, align 4
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !750, metadata !DIExpression()), !dbg !753
  store ptr %fp, ptr %fp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !751, metadata !DIExpression()), !dbg !754
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #11, !dbg !755
  tail call void @llvm.dbg.declare(metadata ptr %mode, metadata !752, metadata !DIExpression()), !dbg !756
  store i32 438, ptr %mode, align 4, !dbg !756
  %0 = load ptr, ptr %templet.addr, align 8, !dbg !757
  %1 = load i32, ptr %mode, align 4, !dbg !758
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !759
  %call = call i32 @isc_file_openuniquemode(ptr noundef %0, i32 noundef %1, ptr noundef %2), !dbg !760
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #11, !dbg !761
  ret i32 %call, !dbg !762
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_openuniquemode(ptr noundef %templet, i32 noundef %mode, ptr noundef %fp) #0 !dbg !763 {
entry:
  %retval = alloca i32, align 4
  %templet.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %f = alloca ptr, align 8
  %result = alloca i32, align 4
  %x = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !767, metadata !DIExpression()), !dbg !780
  store i32 %mode, ptr %mode.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !768, metadata !DIExpression()), !dbg !781
  store ptr %fp, ptr %fp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !769, metadata !DIExpression()), !dbg !782
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #11, !dbg !783
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !770, metadata !DIExpression()), !dbg !784
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !785
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !771, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !787
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !772, metadata !DIExpression()), !dbg !788
  store i32 0, ptr %result, align 4, !dbg !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #11, !dbg !789
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !773, metadata !DIExpression()), !dbg !790
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #11, !dbg !791
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !774, metadata !DIExpression()), !dbg !792
  %0 = load ptr, ptr %templet.addr, align 8, !dbg !793
  %cmp = icmp ne ptr %0, null, !dbg !793
  %lnot = xor i1 %cmp, true, !dbg !793
  %lnot1 = xor i1 %lnot, true, !dbg !793
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !793
  %conv = sext i32 %lnot.ext to i64, !dbg !793
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !793
  %tobool = icmp ne i64 %expval, 0, !dbg !793
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !793

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 320, i32 noundef 0, ptr noundef @.str.7) #12, !dbg !793
  unreachable, !dbg !793

1:                                                ; No predecessors!
  br label %lor.end, !dbg !793

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !793
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !794
  %cmp2 = icmp ne ptr %3, null, !dbg !794
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !794

land.rhs:                                         ; preds = %lor.end
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !794
  %5 = load ptr, ptr %4, align 8, !dbg !794
  %cmp4 = icmp eq ptr %5, null, !dbg !794
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %6 = phi i1 [ false, %lor.end ], [ %cmp4, %land.rhs ], !dbg !795
  %lnot6 = xor i1 %6, true, !dbg !794
  %lnot8 = xor i1 %lnot6, true, !dbg !794
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !794
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !794
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !794
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !794
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !794

lor.rhs13:                                        ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 321, i32 noundef 0, ptr noundef @.str.10) #12, !dbg !794
  unreachable, !dbg !794

7:                                                ; No predecessors!
  br label %lor.end14, !dbg !794

lor.end14:                                        ; preds = %7, %land.end
  %8 = phi i1 [ true, %land.end ], [ false, %7 ]
  %lor.ext15 = zext i1 %8 to i32, !dbg !794
  %9 = load ptr, ptr %templet.addr, align 8, !dbg !796
  store ptr %9, ptr %cp, align 8, !dbg !797
  br label %while.cond, !dbg !798

while.cond:                                       ; preds = %while.body, %lor.end14
  %10 = load ptr, ptr %cp, align 8, !dbg !799
  %11 = load i8, ptr %10, align 1, !dbg !800
  %conv16 = sext i8 %11 to i32, !dbg !800
  %cmp17 = icmp ne i32 %conv16, 0, !dbg !801
  br i1 %cmp17, label %while.body, label %while.end, !dbg !798

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %cp, align 8, !dbg !802
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1, !dbg !802
  store ptr %incdec.ptr, ptr %cp, align 8, !dbg !802
  br label %while.cond, !dbg !798, !llvm.loop !803

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %cp, align 8, !dbg !804
  %14 = load ptr, ptr %templet.addr, align 8, !dbg !806
  %cmp19 = icmp eq ptr %13, %14, !dbg !807
  br i1 %cmp19, label %if.then, label %if.end, !dbg !808

if.then:                                          ; preds = %while.end
  store i32 25, ptr %retval, align 4, !dbg !809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !809

if.end:                                           ; preds = %while.end
  %15 = load ptr, ptr %cp, align 8, !dbg !810
  %incdec.ptr21 = getelementptr inbounds i8, ptr %15, i32 -1, !dbg !810
  store ptr %incdec.ptr21, ptr %cp, align 8, !dbg !810
  store ptr %15, ptr %x, align 8, !dbg !811
  br label %while.cond22, !dbg !812

while.cond22:                                     ; preds = %while.body30, %if.end
  %16 = load ptr, ptr %cp, align 8, !dbg !813
  %17 = load ptr, ptr %templet.addr, align 8, !dbg !814
  %cmp23 = icmp uge ptr %16, %17, !dbg !815
  br i1 %cmp23, label %land.rhs25, label %land.end29, !dbg !816

land.rhs25:                                       ; preds = %while.cond22
  %18 = load ptr, ptr %cp, align 8, !dbg !817
  %19 = load i8, ptr %18, align 1, !dbg !818
  %conv26 = sext i8 %19 to i32, !dbg !818
  %cmp27 = icmp eq i32 %conv26, 88, !dbg !819
  br label %land.end29

land.end29:                                       ; preds = %land.rhs25, %while.cond22
  %20 = phi i1 [ false, %while.cond22 ], [ %cmp27, %land.rhs25 ], !dbg !795
  br i1 %20, label %while.body30, label %while.end32, !dbg !812

while.body30:                                     ; preds = %land.end29
  %call = call i32 @isc_random_uniform(i32 noundef 62), !dbg !820
  %idxprom = zext i32 %call to i64, !dbg !822
  %arrayidx = getelementptr inbounds [63 x i8], ptr @alphnum, i64 0, i64 %idxprom, !dbg !822
  %21 = load i8, ptr %arrayidx, align 1, !dbg !822
  %22 = load ptr, ptr %cp, align 8, !dbg !823
  store i8 %21, ptr %22, align 1, !dbg !824
  %23 = load ptr, ptr %cp, align 8, !dbg !825
  %incdec.ptr31 = getelementptr inbounds i8, ptr %23, i32 -1, !dbg !825
  store ptr %incdec.ptr31, ptr %cp, align 8, !dbg !825
  store ptr %23, ptr %x, align 8, !dbg !826
  br label %while.cond22, !dbg !812, !llvm.loop !827

while.end32:                                      ; preds = %land.end29
  br label %while.cond33, !dbg !829

while.cond33:                                     ; preds = %for.end, %while.end32
  %24 = load ptr, ptr %templet.addr, align 8, !dbg !830
  %25 = load i32, ptr %mode.addr, align 4, !dbg !831
  %call34 = call i32 (ptr, i32, ...) @open(ptr noundef %24, i32 noundef 194, i32 noundef %25), !dbg !832
  store i32 %call34, ptr %fd, align 4, !dbg !833
  %cmp35 = icmp eq i32 %call34, -1, !dbg !834
  br i1 %cmp35, label %while.body37, label %while.end61, !dbg !829

while.body37:                                     ; preds = %while.cond33
  %call38 = call ptr @__errno_location() #13, !dbg !835
  %26 = load i32, ptr %call38, align 4, !dbg !835
  %cmp39 = icmp ne i32 %26, 17, !dbg !837
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !838

if.then41:                                        ; preds = %while.body37
  %call42 = call ptr @__errno_location() #13, !dbg !839
  %27 = load i32, ptr %call42, align 4, !dbg !839
  %call43 = call i32 @isc___errno2result(i32 noundef %27, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 338), !dbg !839
  store i32 %call43, ptr %retval, align 4, !dbg !840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !840

if.end44:                                         ; preds = %while.body37
  %28 = load ptr, ptr %x, align 8, !dbg !841
  store ptr %28, ptr %cp, align 8, !dbg !842
  br label %for.cond, !dbg !843

for.cond:                                         ; preds = %cleanup.cont, %if.end44
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #11, !dbg !844
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !775, metadata !DIExpression()), !dbg !845
  %29 = load ptr, ptr %cp, align 8, !dbg !846
  %30 = load i8, ptr %29, align 1, !dbg !848
  %conv45 = sext i8 %30 to i32, !dbg !848
  %cmp46 = icmp eq i32 %conv45, 0, !dbg !849
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !850

if.then48:                                        ; preds = %for.cond
  store i32 25, ptr %retval, align 4, !dbg !851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !851

if.end49:                                         ; preds = %for.cond
  %31 = load ptr, ptr %cp, align 8, !dbg !852
  %32 = load i8, ptr %31, align 1, !dbg !853
  %conv50 = sext i8 %32 to i32, !dbg !853
  %call51 = call ptr @strchr(ptr noundef @alphnum, i32 noundef %conv50) #14, !dbg !854
  store ptr %call51, ptr %t, align 8, !dbg !855
  %33 = load ptr, ptr %t, align 8, !dbg !856
  %cmp52 = icmp eq ptr %33, null, !dbg !858
  br i1 %cmp52, label %if.then58, label %lor.lhs.false, !dbg !859

lor.lhs.false:                                    ; preds = %if.end49
  %34 = load ptr, ptr %t, align 8, !dbg !860
  %incdec.ptr54 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !860
  store ptr %incdec.ptr54, ptr %t, align 8, !dbg !860
  %35 = load i8, ptr %incdec.ptr54, align 1, !dbg !861
  %conv55 = sext i8 %35 to i32, !dbg !861
  %cmp56 = icmp eq i32 %conv55, 0, !dbg !862
  br i1 %cmp56, label %if.then58, label %if.else, !dbg !863

if.then58:                                        ; preds = %lor.lhs.false, %if.end49
  %36 = load i8, ptr @alphnum, align 16, !dbg !864
  %37 = load ptr, ptr %cp, align 8, !dbg !865
  %incdec.ptr59 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !865
  store ptr %incdec.ptr59, ptr %cp, align 8, !dbg !865
  store i8 %36, ptr %37, align 1, !dbg !866
  br label %if.end60, !dbg !867

if.else:                                          ; preds = %lor.lhs.false
  %38 = load ptr, ptr %t, align 8, !dbg !868
  %39 = load i8, ptr %38, align 1, !dbg !870
  %40 = load ptr, ptr %cp, align 8, !dbg !871
  store i8 %39, ptr %40, align 1, !dbg !872
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !873

if.end60:                                         ; preds = %if.then58
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !874
  br label %cleanup, !dbg !874

cleanup:                                          ; preds = %if.end60, %if.else, %if.then48
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #11, !dbg !874
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup76 [
    i32 0, label %cleanup.cont
    i32 8, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !875, !llvm.loop !876

for.end:                                          ; preds = %cleanup
  br label %while.cond33, !dbg !829, !llvm.loop !879

while.end61:                                      ; preds = %while.cond33
  %41 = load i32, ptr %fd, align 4, !dbg !881
  %call62 = call noalias ptr @fdopen(i32 noundef %41, ptr noundef @.str.11) #11, !dbg !882
  store ptr %call62, ptr %f, align 8, !dbg !883
  %42 = load ptr, ptr %f, align 8, !dbg !884
  %cmp63 = icmp eq ptr %42, null, !dbg !886
  br i1 %cmp63, label %if.then65, label %if.else74, !dbg !887

if.then65:                                        ; preds = %while.end61
  %call66 = call ptr @__errno_location() #13, !dbg !888
  %43 = load i32, ptr %call66, align 4, !dbg !888
  %call67 = call i32 @isc___errno2result(i32 noundef %43, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 354), !dbg !888
  store i32 %call67, ptr %result, align 4, !dbg !890
  %44 = load ptr, ptr %templet.addr, align 8, !dbg !891
  %call68 = call i32 @remove(ptr noundef %44) #11, !dbg !893
  %cmp69 = icmp slt i32 %call68, 0, !dbg !894
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !895

if.then71:                                        ; preds = %if.then65
  %45 = load ptr, ptr @isc_lctx, align 8, !dbg !896
  %46 = load ptr, ptr %templet.addr, align 8, !dbg !898
  call void (ptr, ptr, ptr, i32, ptr, ...) @isc_log_write(ptr noundef %45, ptr noundef getelementptr inbounds ([0 x %struct.isc_logcategory], ptr @isc_categories, i64 0, i64 1), ptr noundef getelementptr inbounds ([0 x %struct.isc_logmodule], ptr @isc_modules, i64 0, i64 4), i32 noundef -4, ptr noundef @.str.12, ptr noundef %46), !dbg !899
  br label %if.end72, !dbg !900

if.end72:                                         ; preds = %if.then71, %if.then65
  %47 = load i32, ptr %fd, align 4, !dbg !901
  %call73 = call i32 @close(i32 noundef %47), !dbg !902
  br label %if.end75, !dbg !903

if.else74:                                        ; preds = %while.end61
  %48 = load ptr, ptr %f, align 8, !dbg !904
  %49 = load ptr, ptr %fp.addr, align 8, !dbg !905
  store ptr %48, ptr %49, align 8, !dbg !906
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.end72
  %50 = load i32, ptr %result, align 4, !dbg !907
  store i32 %50, ptr %retval, align 4, !dbg !908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !908

cleanup76:                                        ; preds = %if.end75, %cleanup, %if.then41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #11, !dbg !909
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #11, !dbg !909
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !909
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !909
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #11, !dbg !909
  %51 = load i32, ptr %retval, align 4, !dbg !909
  ret i32 %51, !dbg !909
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_openuniqueprivate(ptr noundef %templet, ptr noundef %fp) #0 !dbg !910 {
entry:
  %templet.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %mode = alloca i32, align 4
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !912, metadata !DIExpression()), !dbg !915
  store ptr %fp, ptr %fp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !913, metadata !DIExpression()), !dbg !916
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #11, !dbg !917
  tail call void @llvm.dbg.declare(metadata ptr %mode, metadata !914, metadata !DIExpression()), !dbg !918
  store i32 384, ptr %mode, align 4, !dbg !918
  %0 = load ptr, ptr %templet.addr, align 8, !dbg !919
  %1 = load i32, ptr %mode, align 4, !dbg !920
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !921
  %call = call i32 @isc_file_openuniquemode(ptr noundef %0, i32 noundef %1, ptr noundef %2), !dbg !922
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #11, !dbg !923
  ret i32 %call, !dbg !924
}

; Function Attrs: null_pointer_is_valid
declare !dbg !925 i32 @open(ptr noundef, i32 noundef, ...) #4

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !928 noalias ptr @fdopen(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !932 i32 @remove(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !933 void @isc_log_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !952 i32 @close(i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_bopenunique(ptr noundef %templet, ptr noundef %fp) #0 !dbg !955 {
entry:
  %templet.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %mode = alloca i32, align 4
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !957, metadata !DIExpression()), !dbg !960
  store ptr %fp, ptr %fp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !958, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #11, !dbg !962
  tail call void @llvm.dbg.declare(metadata ptr %mode, metadata !959, metadata !DIExpression()), !dbg !963
  store i32 438, ptr %mode, align 4, !dbg !963
  %0 = load ptr, ptr %templet.addr, align 8, !dbg !964
  %1 = load i32, ptr %mode, align 4, !dbg !965
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !966
  %call = call i32 @isc_file_openuniquemode(ptr noundef %0, i32 noundef %1, ptr noundef %2), !dbg !967
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #11, !dbg !968
  ret i32 %call, !dbg !969
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_bopenuniqueprivate(ptr noundef %templet, ptr noundef %fp) #0 !dbg !970 {
entry:
  %templet.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %mode = alloca i32, align 4
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !972, metadata !DIExpression()), !dbg !975
  store ptr %fp, ptr %fp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !973, metadata !DIExpression()), !dbg !976
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #11, !dbg !977
  tail call void @llvm.dbg.declare(metadata ptr %mode, metadata !974, metadata !DIExpression()), !dbg !978
  store i32 384, ptr %mode, align 4, !dbg !978
  %0 = load ptr, ptr %templet.addr, align 8, !dbg !979
  %1 = load i32, ptr %mode, align 4, !dbg !980
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !981
  %call = call i32 @isc_file_openuniquemode(ptr noundef %0, i32 noundef %1, ptr noundef %2), !dbg !982
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #11, !dbg !983
  ret i32 %call, !dbg !984
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_bopenuniquemode(ptr noundef %templet, i32 noundef %mode, ptr noundef %fp) #0 !dbg !985 {
entry:
  %templet.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  store ptr %templet, ptr %templet.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %templet.addr, metadata !987, metadata !DIExpression()), !dbg !990
  store i32 %mode, ptr %mode.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !988, metadata !DIExpression()), !dbg !991
  store ptr %fp, ptr %fp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !989, metadata !DIExpression()), !dbg !992
  %0 = load ptr, ptr %templet.addr, align 8, !dbg !993
  %1 = load i32, ptr %mode.addr, align 4, !dbg !994
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !995
  %call = call i32 @isc_file_openuniquemode(ptr noundef %0, i32 noundef %1, ptr noundef %2), !dbg !996
  ret i32 %call, !dbg !997
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_remove(ptr noundef %filename) #0 !dbg !998 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1002, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1005
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1003, metadata !DIExpression()), !dbg !1006
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1007
  %cmp = icmp ne ptr %0, null, !dbg !1007
  %lnot = xor i1 %cmp, true, !dbg !1007
  %lnot1 = xor i1 %lnot, true, !dbg !1007
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1007
  %conv = sext i32 %lnot.ext to i64, !dbg !1007
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1007
  %tobool = icmp ne i64 %expval, 0, !dbg !1007
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1007

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 388, i32 noundef 0, ptr noundef @.str.13) #12, !dbg !1007
  unreachable, !dbg !1007

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1007

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1007
  %3 = load ptr, ptr %filename.addr, align 8, !dbg !1008
  %call = call i32 @unlink(ptr noundef %3) #11, !dbg !1009
  store i32 %call, ptr %r, align 4, !dbg !1010
  %4 = load i32, ptr %r, align 4, !dbg !1011
  %cmp2 = icmp eq i32 %4, 0, !dbg !1013
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1014

if.then:                                          ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !1015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1015

if.else:                                          ; preds = %lor.end
  %call4 = call ptr @__errno_location() #13, !dbg !1016
  %5 = load i32, ptr %call4, align 4, !dbg !1016
  %call5 = call i32 @isc___errno2result(i32 noundef %5, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 394), !dbg !1016
  store i32 %call5, ptr %retval, align 4, !dbg !1017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1017

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1018
  %6 = load i32, ptr %retval, align 4, !dbg !1018
  ret i32 %6, !dbg !1018
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_rename(ptr noundef %oldname, ptr noundef %newname) #0 !dbg !1019 {
entry:
  %retval = alloca i32, align 4
  %oldname.addr = alloca ptr, align 8
  %newname.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %oldname, ptr %oldname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %oldname.addr, metadata !1023, metadata !DIExpression()), !dbg !1026
  store ptr %newname, ptr %newname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %newname.addr, metadata !1024, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #11, !dbg !1028
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !1025, metadata !DIExpression()), !dbg !1029
  %0 = load ptr, ptr %oldname.addr, align 8, !dbg !1030
  %cmp = icmp ne ptr %0, null, !dbg !1030
  %lnot = xor i1 %cmp, true, !dbg !1030
  %lnot1 = xor i1 %lnot, true, !dbg !1030
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1030
  %conv = sext i32 %lnot.ext to i64, !dbg !1030
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1030
  %tobool = icmp ne i64 %expval, 0, !dbg !1030
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1030

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 401, i32 noundef 0, ptr noundef @.str.14) #12, !dbg !1030
  unreachable, !dbg !1030

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1030

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1030
  %3 = load ptr, ptr %newname.addr, align 8, !dbg !1031
  %cmp2 = icmp ne ptr %3, null, !dbg !1031
  %lnot4 = xor i1 %cmp2, true, !dbg !1031
  %lnot6 = xor i1 %lnot4, true, !dbg !1031
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1031
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1031
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !1031
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !1031
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !1031

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 402, i32 noundef 0, ptr noundef @.str.15) #12, !dbg !1031
  unreachable, !dbg !1031

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !1031

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !1031
  %6 = load ptr, ptr %oldname.addr, align 8, !dbg !1032
  %7 = load ptr, ptr %newname.addr, align 8, !dbg !1033
  %call = call i32 @rename(ptr noundef %6, ptr noundef %7) #11, !dbg !1034
  store i32 %call, ptr %r, align 4, !dbg !1035
  %8 = load i32, ptr %r, align 4, !dbg !1036
  %cmp14 = icmp eq i32 %8, 0, !dbg !1038
  br i1 %cmp14, label %if.then, label %if.else, !dbg !1039

if.then:                                          ; preds = %lor.end12
  store i32 0, ptr %retval, align 4, !dbg !1040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1040

if.else:                                          ; preds = %lor.end12
  %call16 = call ptr @__errno_location() #13, !dbg !1041
  %9 = load i32, ptr %call16, align 4, !dbg !1041
  %call17 = call i32 @isc___errno2result(i32 noundef %9, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 408), !dbg !1041
  store i32 %call17, ptr %retval, align 4, !dbg !1042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1042

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #11, !dbg !1043
  %10 = load i32, ptr %retval, align 4, !dbg !1043
  ret i32 %10, !dbg !1043
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1044 i32 @rename(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define zeroext i1 @isc_file_exists(ptr noundef %pathname) #0 !dbg !1045 {
entry:
  %pathname.addr = alloca ptr, align 8
  %stats = alloca %struct.stat, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1049, metadata !DIExpression()), !dbg !1051
  call void @llvm.lifetime.start.p0(i64 144, ptr %stats) #11, !dbg !1052
  tail call void @llvm.dbg.declare(metadata ptr %stats, metadata !1050, metadata !DIExpression()), !dbg !1053
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !1054
  %cmp = icmp ne ptr %0, null, !dbg !1054
  %lnot = xor i1 %cmp, true, !dbg !1054
  %lnot1 = xor i1 %lnot, true, !dbg !1054
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1054
  %conv = sext i32 %lnot.ext to i64, !dbg !1054
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1054
  %tobool = icmp ne i64 %expval, 0, !dbg !1054
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1054

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 415, i32 noundef 0, ptr noundef @.str.16) #12, !dbg !1054
  unreachable, !dbg !1054

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1054

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1054
  %3 = load ptr, ptr %pathname.addr, align 8, !dbg !1055
  %call = call i32 @file_stats(ptr noundef %3, ptr noundef %stats), !dbg !1056
  %cmp2 = icmp eq i32 %call, 0, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 144, ptr %stats) #11, !dbg !1058
  ret i1 %cmp2, !dbg !1059
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_isplainfile(ptr noundef %filename) #0 !dbg !1060 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %filestat = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1062, metadata !DIExpression()), !dbg !1064
  call void @llvm.lifetime.start.p0(i64 144, ptr %filestat) #11, !dbg !1065
  tail call void @llvm.dbg.declare(metadata ptr %filestat, metadata !1063, metadata !DIExpression()), !dbg !1066
  call void @llvm.memset.p0.i64(ptr align 8 %filestat, i8 0, i64 144, i1 false), !dbg !1067
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1068
  %call = call i32 @stat(ptr noundef %0, ptr noundef %filestat) #11, !dbg !1070
  %cmp = icmp eq i32 %call, -1, !dbg !1071
  br i1 %cmp, label %if.then, label %if.end, !dbg !1072

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #13, !dbg !1073
  %1 = load i32, ptr %call1, align 4, !dbg !1073
  %call2 = call i32 @isc___errno2result(i32 noundef %1, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 429), !dbg !1073
  store i32 %call2, ptr %retval, align 4, !dbg !1074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1074

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %filestat, i32 0, i32 3, !dbg !1075
  %2 = load i32, ptr %st_mode, align 8, !dbg !1075
  %and = and i32 %2, 61440, !dbg !1075
  %cmp3 = icmp eq i32 %and, 32768, !dbg !1075
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1077

if.then4:                                         ; preds = %if.end
  store i32 30, ptr %retval, align 4, !dbg !1078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1078

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1079

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 144, ptr %filestat) #11, !dbg !1080
  %3 = load i32, ptr %retval, align 4, !dbg !1080
  ret i32 %3, !dbg !1080
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1081 i32 @stat(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_isplainfilefd(i32 noundef %fd) #0 !dbg !1087 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %filestat = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1091, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.start.p0(i64 144, ptr %filestat) #11, !dbg !1094
  tail call void @llvm.dbg.declare(metadata ptr %filestat, metadata !1092, metadata !DIExpression()), !dbg !1095
  call void @llvm.memset.p0.i64(ptr align 8 %filestat, i8 0, i64 144, i1 false), !dbg !1096
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1097
  %call = call i32 @fstat(i32 noundef %0, ptr noundef %filestat) #11, !dbg !1099
  %cmp = icmp eq i32 %call, -1, !dbg !1100
  br i1 %cmp, label %if.then, label %if.end, !dbg !1101

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #13, !dbg !1102
  %1 = load i32, ptr %call1, align 4, !dbg !1102
  %call2 = call i32 @isc___errno2result(i32 noundef %1, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 446), !dbg !1102
  store i32 %call2, ptr %retval, align 4, !dbg !1103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1103

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %filestat, i32 0, i32 3, !dbg !1104
  %2 = load i32, ptr %st_mode, align 8, !dbg !1104
  %and = and i32 %2, 61440, !dbg !1104
  %cmp3 = icmp eq i32 %and, 32768, !dbg !1104
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1106

if.then4:                                         ; preds = %if.end
  store i32 30, ptr %retval, align 4, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1108

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 144, ptr %filestat) #11, !dbg !1109
  %3 = load i32, ptr %retval, align 4, !dbg !1109
  ret i32 %3, !dbg !1109
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1110 i32 @fstat(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_isdirectory(ptr noundef %filename) #0 !dbg !1113 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %filestat = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 144, ptr %filestat) #11, !dbg !1118
  tail call void @llvm.dbg.declare(metadata ptr %filestat, metadata !1116, metadata !DIExpression()), !dbg !1119
  call void @llvm.memset.p0.i64(ptr align 8 %filestat, i8 0, i64 144, i1 false), !dbg !1120
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1121
  %call = call i32 @stat(ptr noundef %0, ptr noundef %filestat) #11, !dbg !1123
  %cmp = icmp eq i32 %call, -1, !dbg !1124
  br i1 %cmp, label %if.then, label %if.end, !dbg !1125

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #13, !dbg !1126
  %1 = load i32, ptr %call1, align 4, !dbg !1126
  %call2 = call i32 @isc___errno2result(i32 noundef %1, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 464), !dbg !1126
  store i32 %call2, ptr %retval, align 4, !dbg !1127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1127

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %filestat, i32 0, i32 3, !dbg !1128
  %2 = load i32, ptr %st_mode, align 8, !dbg !1128
  %and = and i32 %2, 61440, !dbg !1128
  %cmp3 = icmp eq i32 %and, 16384, !dbg !1128
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1130

if.then4:                                         ; preds = %if.end
  store i32 30, ptr %retval, align 4, !dbg !1131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1131

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1132

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 144, ptr %filestat) #11, !dbg !1133
  %3 = load i32, ptr %retval, align 4, !dbg !1133
  ret i32 %3, !dbg !1133
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define zeroext i1 @isc_file_isabsolute(ptr noundef %filename) #0 !dbg !1134 {
entry:
  %filename.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1136, metadata !DIExpression()), !dbg !1137
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1138
  %cmp = icmp ne ptr %0, null, !dbg !1138
  %lnot = xor i1 %cmp, true, !dbg !1138
  %lnot1 = xor i1 %lnot, true, !dbg !1138
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1138
  %conv = sext i32 %lnot.ext to i64, !dbg !1138
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1138
  %tobool = icmp ne i64 %expval, 0, !dbg !1138
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1138

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 475, i32 noundef 0, ptr noundef @.str.13) #12, !dbg !1138
  unreachable, !dbg !1138

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1138

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1138
  %3 = load ptr, ptr %filename.addr, align 8, !dbg !1139
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !1139
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1139
  %conv2 = sext i8 %4 to i32, !dbg !1139
  %cmp3 = icmp eq i32 %conv2, 47, !dbg !1140
  ret i1 %cmp3, !dbg !1141
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define zeroext i1 @isc_file_iscurrentdir(ptr noundef %filename) #0 !dbg !1142 {
entry:
  %filename.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1146
  %cmp = icmp ne ptr %0, null, !dbg !1146
  %lnot = xor i1 %cmp, true, !dbg !1146
  %lnot1 = xor i1 %lnot, true, !dbg !1146
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1146
  %conv = sext i32 %lnot.ext to i64, !dbg !1146
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1146
  %tobool = icmp ne i64 %expval, 0, !dbg !1146
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1146

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 481, i32 noundef 0, ptr noundef @.str.13) #12, !dbg !1146
  unreachable, !dbg !1146

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1146

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1146
  %3 = load ptr, ptr %filename.addr, align 8, !dbg !1147
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !1147
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1147
  %conv2 = sext i8 %4 to i32, !dbg !1147
  %cmp3 = icmp eq i32 %conv2, 46, !dbg !1148
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !1149

land.rhs:                                         ; preds = %lor.end
  %5 = load ptr, ptr %filename.addr, align 8, !dbg !1150
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !1150
  %6 = load i8, ptr %arrayidx5, align 1, !dbg !1150
  %conv6 = sext i8 %6 to i32, !dbg !1150
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !1151
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %7 = phi i1 [ false, %lor.end ], [ %cmp7, %land.rhs ], !dbg !1152
  ret i1 %7, !dbg !1153
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define zeroext i1 @isc_file_ischdiridempotent(ptr noundef %filename) #0 !dbg !1154 {
entry:
  %retval = alloca i1, align 1
  %filename.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1156, metadata !DIExpression()), !dbg !1157
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1158
  %cmp = icmp ne ptr %0, null, !dbg !1158
  %lnot = xor i1 %cmp, true, !dbg !1158
  %lnot1 = xor i1 %lnot, true, !dbg !1158
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1158
  %conv = sext i32 %lnot.ext to i64, !dbg !1158
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1158
  %tobool = icmp ne i64 %expval, 0, !dbg !1158
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1158

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 487, i32 noundef 0, ptr noundef @.str.13) #12, !dbg !1158
  unreachable, !dbg !1158

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1158

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1158
  %3 = load ptr, ptr %filename.addr, align 8, !dbg !1159
  %call = call zeroext i1 @isc_file_isabsolute(ptr noundef %3), !dbg !1161
  br i1 %call, label %if.then, label %if.end, !dbg !1162

if.then:                                          ; preds = %lor.end
  store i1 true, ptr %retval, align 1, !dbg !1163
  br label %return, !dbg !1163

if.end:                                           ; preds = %lor.end
  %4 = load ptr, ptr %filename.addr, align 8, !dbg !1164
  %call2 = call zeroext i1 @isc_file_iscurrentdir(ptr noundef %4), !dbg !1166
  br i1 %call2, label %if.then3, label %if.end4, !dbg !1167

if.then3:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !1168
  br label %return, !dbg !1168

if.end4:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1169
  br label %return, !dbg !1169

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !1170
  ret i1 %5, !dbg !1170
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define ptr @isc_file_basename(ptr noundef %filename) #0 !dbg !1171 {
entry:
  %retval = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1175, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !1178
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !1176, metadata !DIExpression()), !dbg !1179
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1180
  %cmp = icmp ne ptr %0, null, !dbg !1180
  %lnot = xor i1 %cmp, true, !dbg !1180
  %lnot1 = xor i1 %lnot, true, !dbg !1180
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1180
  %conv = sext i32 %lnot.ext to i64, !dbg !1180
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1180
  %tobool = icmp ne i64 %expval, 0, !dbg !1180
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1180

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 499, i32 noundef 0, ptr noundef @.str.13) #12, !dbg !1180
  unreachable, !dbg !1180

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1180

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1180
  %3 = load ptr, ptr %filename.addr, align 8, !dbg !1181
  %call = call ptr @strrchr(ptr noundef %3, i32 noundef 47) #14, !dbg !1182
  store ptr %call, ptr %s, align 8, !dbg !1183
  %4 = load ptr, ptr %s, align 8, !dbg !1184
  %cmp2 = icmp eq ptr %4, null, !dbg !1186
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1187

if.then:                                          ; preds = %lor.end
  %5 = load ptr, ptr %filename.addr, align 8, !dbg !1188
  store ptr %5, ptr %retval, align 8, !dbg !1189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1189

if.end:                                           ; preds = %lor.end
  %6 = load ptr, ptr %s, align 8, !dbg !1190
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1191
  store ptr %add.ptr, ptr %retval, align 8, !dbg !1192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1192

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !1193
  %7 = load ptr, ptr %retval, align 8, !dbg !1193
  ret ptr %7, !dbg !1193
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_progname(ptr noundef %filename, ptr noundef %buf, i64 noundef %buflen) #0 !dbg !1194 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %base = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1196, metadata !DIExpression()), !dbg !1201
  store ptr %buf, ptr %buf.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1197, metadata !DIExpression()), !dbg !1202
  store i64 %buflen, ptr %buflen.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !1198, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #11, !dbg !1204
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !1199, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #11, !dbg !1206
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1200, metadata !DIExpression()), !dbg !1207
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1208
  %cmp = icmp ne ptr %0, null, !dbg !1208
  %lnot = xor i1 %cmp, true, !dbg !1208
  %lnot1 = xor i1 %lnot, true, !dbg !1208
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1208
  %conv = sext i32 %lnot.ext to i64, !dbg !1208
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1208
  %tobool = icmp ne i64 %expval, 0, !dbg !1208
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1208

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 513, i32 noundef 0, ptr noundef @.str.13) #12, !dbg !1208
  unreachable, !dbg !1208

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1208

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1208
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !1209
  %cmp2 = icmp ne ptr %3, null, !dbg !1209
  %lnot4 = xor i1 %cmp2, true, !dbg !1209
  %lnot6 = xor i1 %lnot4, true, !dbg !1209
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1209
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1209
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !1209
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !1209
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !1209

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 514, i32 noundef 0, ptr noundef @.str.8) #12, !dbg !1209
  unreachable, !dbg !1209

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !1209

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !1209
  %6 = load ptr, ptr %filename.addr, align 8, !dbg !1210
  %call = call ptr @isc_file_basename(ptr noundef %6), !dbg !1211
  store ptr %call, ptr %base, align 8, !dbg !1212
  %7 = load ptr, ptr %base, align 8, !dbg !1213
  %call14 = call i64 @strlen(ptr noundef %7) #14, !dbg !1214
  %add = add i64 %call14, 1, !dbg !1215
  store i64 %add, ptr %len, align 8, !dbg !1216
  %8 = load i64, ptr %len, align 8, !dbg !1217
  %9 = load i64, ptr %buflen.addr, align 8, !dbg !1219
  %cmp15 = icmp ugt i64 %8, %9, !dbg !1220
  br i1 %cmp15, label %if.then, label %if.end, !dbg !1221

if.then:                                          ; preds = %lor.end12
  store i32 19, ptr %retval, align 4, !dbg !1222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1222

if.end:                                           ; preds = %lor.end12
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !1223
  %11 = load ptr, ptr %base, align 8, !dbg !1224
  %12 = load i64, ptr %len, align 8, !dbg !1225
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %11, i64 %12, i1 false), !dbg !1226
  store i32 0, ptr %retval, align 4, !dbg !1227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1227

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #11, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #11, !dbg !1228
  %13 = load i32, ptr %retval, align 4, !dbg !1228
  ret i32 %13, !dbg !1228
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_absolutepath(ptr noundef %filename, ptr noundef %path, i64 noundef %pathlen) #0 !dbg !1229 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %pathlen.addr = alloca i64, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1231, metadata !DIExpression()), !dbg !1235
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1232, metadata !DIExpression()), !dbg !1236
  store i64 %pathlen, ptr %pathlen.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %pathlen.addr, metadata !1233, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !1238
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1234, metadata !DIExpression()), !dbg !1239
  %0 = load ptr, ptr %path.addr, align 8, !dbg !1240
  %1 = load i64, ptr %pathlen.addr, align 8, !dbg !1241
  %call = call i32 @dir_current(ptr noundef %0, i64 noundef %1), !dbg !1242
  store i32 %call, ptr %result, align 4, !dbg !1243
  %2 = load i32, ptr %result, align 4, !dbg !1244
  %cmp = icmp ne i32 %2, 0, !dbg !1246
  br i1 %cmp, label %if.then, label %if.end, !dbg !1247

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %result, align 4, !dbg !1248
  store i32 %3, ptr %retval, align 4, !dbg !1249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1249

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %path.addr, align 8, !dbg !1250
  %call1 = call i64 @strlen(ptr noundef %4) #14, !dbg !1252
  %5 = load ptr, ptr %filename.addr, align 8, !dbg !1253
  %call2 = call i64 @strlen(ptr noundef %5) #14, !dbg !1254
  %add = add i64 %call1, %call2, !dbg !1255
  %add3 = add i64 %add, 1, !dbg !1256
  %6 = load i64, ptr %pathlen.addr, align 8, !dbg !1257
  %cmp4 = icmp ugt i64 %add3, %6, !dbg !1258
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1259

if.then5:                                         ; preds = %if.end
  store i32 19, ptr %retval, align 4, !dbg !1260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1260

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %path.addr, align 8, !dbg !1261
  %8 = load ptr, ptr %filename.addr, align 8, !dbg !1262
  %9 = load i64, ptr %pathlen.addr, align 8, !dbg !1263
  %call7 = call i64 @strlcat(ptr noundef %7, ptr noundef %8, i64 noundef %9), !dbg !1264
  store i32 0, ptr %retval, align 4, !dbg !1265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1265

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !1266
  %10 = load i32, ptr %retval, align 4, !dbg !1266
  ret i32 %10, !dbg !1266
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @dir_current(ptr noundef %dirname, i64 noundef %length) #0 !dbg !1267 {
entry:
  %dirname.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %cwd = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %dirname, ptr %dirname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dirname.addr, metadata !1271, metadata !DIExpression()), !dbg !1275
  store i64 %length, ptr %length.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1272, metadata !DIExpression()), !dbg !1276
  call void @llvm.lifetime.start.p0(i64 8, ptr %cwd) #11, !dbg !1277
  tail call void @llvm.dbg.declare(metadata ptr %cwd, metadata !1273, metadata !DIExpression()), !dbg !1278
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !1279
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1274, metadata !DIExpression()), !dbg !1280
  store i32 0, ptr %result, align 4, !dbg !1280
  %0 = load ptr, ptr %dirname.addr, align 8, !dbg !1281
  %cmp = icmp ne ptr %0, null, !dbg !1281
  %lnot = xor i1 %cmp, true, !dbg !1281
  %lnot1 = xor i1 %lnot, true, !dbg !1281
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1281
  %conv = sext i32 %lnot.ext to i64, !dbg !1281
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1281
  %tobool = icmp ne i64 %expval, 0, !dbg !1281
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1281

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 537, i32 noundef 0, ptr noundef @.str.25) #12, !dbg !1281
  unreachable, !dbg !1281

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1281

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1281
  %3 = load i64, ptr %length.addr, align 8, !dbg !1282
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1282
  %lnot4 = xor i1 %cmp2, true, !dbg !1282
  %lnot6 = xor i1 %lnot4, true, !dbg !1282
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1282
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1282
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !1282
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !1282
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !1282

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 538, i32 noundef 0, ptr noundef @.str.26) #12, !dbg !1282
  unreachable, !dbg !1282

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !1282

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !1282
  %6 = load ptr, ptr %dirname.addr, align 8, !dbg !1283
  %7 = load i64, ptr %length.addr, align 8, !dbg !1284
  %call = call ptr @getcwd(ptr noundef %6, i64 noundef %7) #11, !dbg !1285
  store ptr %call, ptr %cwd, align 8, !dbg !1286
  %8 = load ptr, ptr %cwd, align 8, !dbg !1287
  %cmp14 = icmp eq ptr %8, null, !dbg !1289
  br i1 %cmp14, label %if.then, label %if.else22, !dbg !1290

if.then:                                          ; preds = %lor.end12
  %call16 = call ptr @__errno_location() #13, !dbg !1291
  %9 = load i32, ptr %call16, align 4, !dbg !1291
  %cmp17 = icmp eq i32 %9, 34, !dbg !1294
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !1295

if.then19:                                        ; preds = %if.then
  store i32 19, ptr %result, align 4, !dbg !1296
  br label %if.end, !dbg !1298

if.else:                                          ; preds = %if.then
  %call20 = call ptr @__errno_location() #13, !dbg !1299
  %10 = load i32, ptr %call20, align 4, !dbg !1299
  %call21 = call i32 @isc___errno2result(i32 noundef %10, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 546), !dbg !1299
  store i32 %call21, ptr %result, align 4, !dbg !1301
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  br label %if.end35, !dbg !1302

if.else22:                                        ; preds = %lor.end12
  %11 = load ptr, ptr %dirname.addr, align 8, !dbg !1303
  %call23 = call i64 @strlen(ptr noundef %11) #14, !dbg !1306
  %add = add i64 %call23, 1, !dbg !1307
  %12 = load i64, ptr %length.addr, align 8, !dbg !1308
  %cmp24 = icmp eq i64 %add, %12, !dbg !1309
  br i1 %cmp24, label %if.then26, label %if.else27, !dbg !1310

if.then26:                                        ; preds = %if.else22
  store i32 19, ptr %result, align 4, !dbg !1311
  br label %if.end34, !dbg !1313

if.else27:                                        ; preds = %if.else22
  %13 = load ptr, ptr %dirname.addr, align 8, !dbg !1314
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 1, !dbg !1314
  %14 = load i8, ptr %arrayidx, align 1, !dbg !1314
  %conv28 = sext i8 %14 to i32, !dbg !1314
  %cmp29 = icmp ne i32 %conv28, 0, !dbg !1316
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !1317

if.then31:                                        ; preds = %if.else27
  %15 = load ptr, ptr %dirname.addr, align 8, !dbg !1318
  %16 = load i64, ptr %length.addr, align 8, !dbg !1320
  %call32 = call i64 @strlcat(ptr noundef %15, ptr noundef @.str.18, i64 noundef %16), !dbg !1321
  br label %if.end33, !dbg !1322

if.end33:                                         ; preds = %if.then31, %if.else27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  %17 = load i32, ptr %result, align 4, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 8, ptr %cwd) #11, !dbg !1324
  ret i32 %17, !dbg !1325
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_truncate(ptr noundef %filename, i64 noundef %size) #0 !dbg !1326 {
entry:
  %filename.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %result = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1332, metadata !DIExpression()), !dbg !1335
  store i64 %size, ptr %size.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1333, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !1337
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1334, metadata !DIExpression()), !dbg !1338
  store i32 0, ptr %result, align 4, !dbg !1338
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1339
  %1 = load i64, ptr %size.addr, align 8, !dbg !1341
  %call = call i32 @truncate(ptr noundef %0, i64 noundef %1) #11, !dbg !1342
  %cmp = icmp slt i32 %call, 0, !dbg !1343
  br i1 %cmp, label %if.then, label %if.end, !dbg !1344

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #13, !dbg !1345
  %2 = load i32, ptr %call1, align 4, !dbg !1345
  %call2 = call i32 @isc___errno2result(i32 noundef %2, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 576), !dbg !1345
  store i32 %call2, ptr %result, align 4, !dbg !1346
  br label %if.end, !dbg !1347

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %result, align 4, !dbg !1348
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !1349
  ret i32 %3, !dbg !1350
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1351 i32 @truncate(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_safecreate(ptr noundef %filename, ptr noundef %fp) #0 !dbg !1354 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %flags = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %f = alloca ptr, align 8
  %fd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1358, metadata !DIExpression()), !dbg !1365
  store ptr %fp, ptr %fp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !1359, metadata !DIExpression()), !dbg !1366
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11, !dbg !1367
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1360, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #11, !dbg !1369
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1361, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 144, ptr %sb) #11, !dbg !1371
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !1362, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #11, !dbg !1373
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !1363, metadata !DIExpression()), !dbg !1374
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #11, !dbg !1375
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !1364, metadata !DIExpression()), !dbg !1376
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !1377
  %cmp = icmp ne ptr %0, null, !dbg !1377
  %lnot = xor i1 %cmp, true, !dbg !1377
  %lnot1 = xor i1 %lnot, true, !dbg !1377
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1377
  %conv = sext i32 %lnot.ext to i64, !dbg !1377
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1377
  %tobool = icmp ne i64 %expval, 0, !dbg !1377
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1377

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 588, i32 noundef 0, ptr noundef @.str.13) #12, !dbg !1377
  unreachable, !dbg !1377

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1377

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1377
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !1378
  %cmp2 = icmp ne ptr %3, null, !dbg !1378
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !1378

land.rhs:                                         ; preds = %lor.end
  %4 = load ptr, ptr %fp.addr, align 8, !dbg !1378
  %5 = load ptr, ptr %4, align 8, !dbg !1378
  %cmp4 = icmp eq ptr %5, null, !dbg !1378
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %6 = phi i1 [ false, %lor.end ], [ %cmp4, %land.rhs ], !dbg !1379
  %lnot6 = xor i1 %6, true, !dbg !1378
  %lnot8 = xor i1 %lnot6, true, !dbg !1378
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1378
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1378
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1378
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !1378
  br i1 %tobool12, label %lor.end14, label %lor.rhs13, !dbg !1378

lor.rhs13:                                        ; preds = %land.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 589, i32 noundef 0, ptr noundef @.str.10) #12, !dbg !1378
  unreachable, !dbg !1378

7:                                                ; No predecessors!
  br label %lor.end14, !dbg !1378

lor.end14:                                        ; preds = %7, %land.end
  %8 = phi i1 [ true, %land.end ], [ false, %7 ]
  %lor.ext15 = zext i1 %8 to i32, !dbg !1378
  %9 = load ptr, ptr %filename.addr, align 8, !dbg !1380
  %call = call i32 @file_stats(ptr noundef %9, ptr noundef %sb), !dbg !1381
  store i32 %call, ptr %result, align 4, !dbg !1382
  %10 = load i32, ptr %result, align 4, !dbg !1383
  %cmp16 = icmp eq i32 %10, 0, !dbg !1385
  br i1 %cmp16, label %if.then, label %if.else, !dbg !1386

if.then:                                          ; preds = %lor.end14
  %st_mode = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3, !dbg !1387
  %11 = load i32, ptr %st_mode, align 8, !dbg !1387
  %and = and i32 %11, 32768, !dbg !1390
  %cmp18 = icmp eq i32 %and, 0, !dbg !1391
  br i1 %cmp18, label %if.then20, label %if.end, !dbg !1392

if.then20:                                        ; preds = %if.then
  store i32 30, ptr %retval, align 4, !dbg !1393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1393

if.end:                                           ; preds = %if.then
  store i32 513, ptr %flags, align 4, !dbg !1394
  br label %if.end26, !dbg !1395

if.else:                                          ; preds = %lor.end14
  %12 = load i32, ptr %result, align 4, !dbg !1396
  %cmp21 = icmp eq i32 %12, 38, !dbg !1398
  br i1 %cmp21, label %if.then23, label %if.else24, !dbg !1399

if.then23:                                        ; preds = %if.else
  store i32 193, ptr %flags, align 4, !dbg !1400
  br label %if.end25, !dbg !1402

if.else24:                                        ; preds = %if.else
  %13 = load i32, ptr %result, align 4, !dbg !1403
  store i32 %13, ptr %retval, align 4, !dbg !1404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1404

if.end25:                                         ; preds = %if.then23
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end
  %14 = load ptr, ptr %filename.addr, align 8, !dbg !1405
  %15 = load i32, ptr %flags, align 4, !dbg !1406
  %call27 = call i32 (ptr, i32, ...) @open(ptr noundef %14, i32 noundef %15, i32 noundef 384), !dbg !1407
  store i32 %call27, ptr %fd, align 4, !dbg !1408
  %16 = load i32, ptr %fd, align 4, !dbg !1409
  %cmp28 = icmp eq i32 %16, -1, !dbg !1411
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !1412

if.then30:                                        ; preds = %if.end26
  %call31 = call ptr @__errno_location() #13, !dbg !1413
  %17 = load i32, ptr %call31, align 4, !dbg !1413
  %call32 = call i32 @isc___errno2result(i32 noundef %17, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 603), !dbg !1413
  store i32 %call32, ptr %retval, align 4, !dbg !1414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1414

if.end33:                                         ; preds = %if.end26
  %18 = load i32, ptr %fd, align 4, !dbg !1415
  %call34 = call noalias ptr @fdopen(i32 noundef %18, ptr noundef @.str.17) #11, !dbg !1416
  store ptr %call34, ptr %f, align 8, !dbg !1417
  %19 = load ptr, ptr %f, align 8, !dbg !1418
  %cmp35 = icmp eq ptr %19, null, !dbg !1420
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !1421

if.then37:                                        ; preds = %if.end33
  %call38 = call ptr @__errno_location() #13, !dbg !1422
  %20 = load i32, ptr %call38, align 4, !dbg !1422
  %call39 = call i32 @isc___errno2result(i32 noundef %20, i1 noundef zeroext true, ptr noundef @.str, i32 noundef 607), !dbg !1422
  store i32 %call39, ptr %result, align 4, !dbg !1424
  %21 = load i32, ptr %fd, align 4, !dbg !1425
  %call40 = call i32 @close(i32 noundef %21), !dbg !1426
  %22 = load i32, ptr %result, align 4, !dbg !1427
  store i32 %22, ptr %retval, align 4, !dbg !1428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1428

if.end41:                                         ; preds = %if.end33
  %23 = load ptr, ptr %f, align 8, !dbg !1429
  %24 = load ptr, ptr %fp.addr, align 8, !dbg !1430
  store ptr %23, ptr %24, align 8, !dbg !1431
  store i32 0, ptr %retval, align 4, !dbg !1432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1432

cleanup:                                          ; preds = %if.end41, %if.then37, %if.then30, %if.else24, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #11, !dbg !1433
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #11, !dbg !1433
  call void @llvm.lifetime.end.p0(i64 144, ptr %sb) #11, !dbg !1433
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #11, !dbg !1433
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11, !dbg !1433
  %25 = load i32, ptr %retval, align 4, !dbg !1433
  ret i32 %25, !dbg !1433
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_splitpath(ptr noundef %mctx, ptr noundef %path, ptr noundef %dirname, ptr noundef %bname) #0 !dbg !1434 {
entry:
  %retval = alloca i32, align 4
  %mctx.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %dirname.addr = alloca ptr, align 8
  %bname.addr = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %file = alloca ptr, align 8
  %slash = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !1478, metadata !DIExpression()), !dbg !1485
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1479, metadata !DIExpression()), !dbg !1486
  store ptr %dirname, ptr %dirname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dirname.addr, metadata !1480, metadata !DIExpression()), !dbg !1487
  store ptr %bname, ptr %bname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %bname.addr, metadata !1481, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #11, !dbg !1489
  tail call void @llvm.dbg.declare(metadata ptr %dir, metadata !1482, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #11, !dbg !1491
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !1483, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 8, ptr %slash) #11, !dbg !1491
  tail call void @llvm.dbg.declare(metadata ptr %slash, metadata !1484, metadata !DIExpression()), !dbg !1493
  %0 = load ptr, ptr %path.addr, align 8, !dbg !1494
  %cmp = icmp eq ptr %0, null, !dbg !1496
  br i1 %cmp, label %if.then, label %if.end, !dbg !1497

if.then:                                          ; preds = %entry
  store i32 30, ptr %retval, align 4, !dbg !1498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1498

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %path.addr, align 8, !dbg !1499
  %call = call ptr @strrchr(ptr noundef %1, i32 noundef 47) #14, !dbg !1500
  store ptr %call, ptr %slash, align 8, !dbg !1501
  %2 = load ptr, ptr %slash, align 8, !dbg !1502
  %3 = load ptr, ptr %path.addr, align 8, !dbg !1504
  %cmp1 = icmp eq ptr %2, %3, !dbg !1505
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1506

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %slash, align 8, !dbg !1507
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1, !dbg !1507
  store ptr %incdec.ptr, ptr %slash, align 8, !dbg !1507
  store ptr %incdec.ptr, ptr %file, align 8, !dbg !1509
  %5 = load ptr, ptr %mctx.addr, align 8, !dbg !1510
  %call3 = call ptr @isc__mem_strdup(ptr noundef %5, ptr noundef @.str.18, ptr noundef @.str, i32 noundef 630), !dbg !1510
  store ptr %call3, ptr %dir, align 8, !dbg !1511
  br label %if.end18, !dbg !1512

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %slash, align 8, !dbg !1513
  %cmp4 = icmp ne ptr %6, null, !dbg !1515
  br i1 %cmp4, label %if.then5, label %if.else15, !dbg !1516

if.then5:                                         ; preds = %if.else
  %7 = load ptr, ptr %slash, align 8, !dbg !1517
  %incdec.ptr6 = getelementptr inbounds i8, ptr %7, i32 1, !dbg !1517
  store ptr %incdec.ptr6, ptr %slash, align 8, !dbg !1517
  store ptr %incdec.ptr6, ptr %file, align 8, !dbg !1519
  %8 = load ptr, ptr %mctx.addr, align 8, !dbg !1520
  %9 = load ptr, ptr %slash, align 8, !dbg !1520
  %10 = load ptr, ptr %path.addr, align 8, !dbg !1520
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !1520
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64, !dbg !1520
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1520
  %call7 = call ptr @isc__mem_allocate(ptr noundef %8, i64 noundef %sub.ptr.sub, ptr noundef @.str, i32 noundef 633), !dbg !1520
  store ptr %call7, ptr %dir, align 8, !dbg !1521
  %11 = load ptr, ptr %dir, align 8, !dbg !1522
  %cmp8 = icmp ne ptr %11, null, !dbg !1524
  br i1 %cmp8, label %if.then9, label %if.end14, !dbg !1525

if.then9:                                         ; preds = %if.then5
  %12 = load ptr, ptr %dir, align 8, !dbg !1526
  %13 = load ptr, ptr %path.addr, align 8, !dbg !1527
  %14 = load ptr, ptr %slash, align 8, !dbg !1528
  %15 = load ptr, ptr %path.addr, align 8, !dbg !1529
  %sub.ptr.lhs.cast10 = ptrtoint ptr %14 to i64, !dbg !1530
  %sub.ptr.rhs.cast11 = ptrtoint ptr %15 to i64, !dbg !1530
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11, !dbg !1530
  %call13 = call i64 @strlcpy(ptr noundef %12, ptr noundef %13, i64 noundef %sub.ptr.sub12), !dbg !1531
  br label %if.end14, !dbg !1531

if.end14:                                         ; preds = %if.then9, %if.then5
  br label %if.end17, !dbg !1532

if.else15:                                        ; preds = %if.else
  %16 = load ptr, ptr %path.addr, align 8, !dbg !1533
  store ptr %16, ptr %file, align 8, !dbg !1535
  %17 = load ptr, ptr %mctx.addr, align 8, !dbg !1536
  %call16 = call ptr @isc__mem_strdup(ptr noundef %17, ptr noundef @.str.19, ptr noundef @.str, i32 noundef 638), !dbg !1536
  store ptr %call16, ptr %dir, align 8, !dbg !1537
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.end14
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then2
  %18 = load ptr, ptr %dir, align 8, !dbg !1538
  %cmp19 = icmp eq ptr %18, null, !dbg !1540
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1541

if.then20:                                        ; preds = %if.end18
  store i32 1, ptr %retval, align 4, !dbg !1542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1542

if.end21:                                         ; preds = %if.end18
  %19 = load ptr, ptr %file, align 8, !dbg !1543
  %20 = load i8, ptr %19, align 1, !dbg !1545
  %conv = sext i8 %20 to i32, !dbg !1545
  %cmp22 = icmp eq i32 %conv, 0, !dbg !1546
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !1547

if.then24:                                        ; preds = %if.end21
  br label %do.body, !dbg !1548

do.body:                                          ; preds = %if.then24
  %21 = load ptr, ptr %mctx.addr, align 8, !dbg !1550
  %22 = load ptr, ptr %dir, align 8, !dbg !1550
  call void @isc__mem_free(ptr noundef %21, ptr noundef %22, ptr noundef @.str, i32 noundef 645), !dbg !1550
  store ptr null, ptr %dir, align 8, !dbg !1550
  br label %do.cond, !dbg !1550

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1550

do.end:                                           ; preds = %do.cond
  store i32 30, ptr %retval, align 4, !dbg !1552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1552

if.end25:                                         ; preds = %if.end21
  %23 = load ptr, ptr %dir, align 8, !dbg !1553
  %24 = load ptr, ptr %dirname.addr, align 8, !dbg !1554
  store ptr %23, ptr %24, align 8, !dbg !1555
  %25 = load ptr, ptr %file, align 8, !dbg !1556
  %26 = load ptr, ptr %bname.addr, align 8, !dbg !1557
  store ptr %25, ptr %26, align 8, !dbg !1558
  store i32 0, ptr %retval, align 4, !dbg !1559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1559

cleanup:                                          ; preds = %if.end25, %do.end, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slash) #11, !dbg !1560
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #11, !dbg !1560
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #11, !dbg !1560
  %27 = load i32, ptr %retval, align 4, !dbg !1560
  ret i32 %27, !dbg !1560
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1561 ptr @isc__mem_strdup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1562 ptr @isc__mem_allocate(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1563 void @isc__mem_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable
define ptr @isc_file_mmap(ptr noundef %addr, i64 noundef %len, i32 noundef %prot, i32 noundef %flags, i32 noundef %fd, i64 noundef %offset) #0 !dbg !1564 {
entry:
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %prot.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1568, metadata !DIExpression()), !dbg !1574
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1569, metadata !DIExpression()), !dbg !1575
  store i32 %prot, ptr %prot.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !1570, metadata !DIExpression()), !dbg !1576
  store i32 %flags, ptr %flags.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1571, metadata !DIExpression()), !dbg !1577
  store i32 %fd, ptr %fd.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1572, metadata !DIExpression()), !dbg !1578
  store i64 %offset, ptr %offset.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1573, metadata !DIExpression()), !dbg !1579
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1580
  %1 = load i64, ptr %len.addr, align 8, !dbg !1581
  %2 = load i32, ptr %prot.addr, align 4, !dbg !1582
  %3 = load i32, ptr %flags.addr, align 4, !dbg !1583
  %4 = load i32, ptr %fd.addr, align 4, !dbg !1584
  %5 = load i64, ptr %offset.addr, align 8, !dbg !1585
  %call = call ptr @mmap(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #11, !dbg !1586
  ret ptr %call, !dbg !1587
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1588 ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_munmap(ptr noundef %addr, i64 noundef %len) #0 !dbg !1592 {
entry:
  %addr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1596, metadata !DIExpression()), !dbg !1598
  store i64 %len, ptr %len.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1597, metadata !DIExpression()), !dbg !1599
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1600
  %1 = load i64, ptr %len.addr, align 8, !dbg !1601
  %call = call i32 @munmap(ptr noundef %0, i64 noundef %1) #11, !dbg !1602
  ret i32 %call, !dbg !1603
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1604 i32 @munmap(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @isc_file_sanitize(ptr noundef %dir, ptr noundef %base, ptr noundef %ext, ptr noundef %path, i64 noundef %length) #0 !dbg !1605 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %ext.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %buf = alloca [4096 x i8], align 16
  %digest = alloca [64 x i8], align 16
  %digestlen = alloca i32, align 4
  %hash = alloca [129 x i8], align 16
  %l = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dir, ptr %dir.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !1609, metadata !DIExpression()), !dbg !1629
  store ptr %base, ptr %base.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1610, metadata !DIExpression()), !dbg !1630
  store ptr %ext, ptr %ext.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ext.addr, metadata !1611, metadata !DIExpression()), !dbg !1631
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1612, metadata !DIExpression()), !dbg !1632
  store i64 %length, ptr %length.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1613, metadata !DIExpression()), !dbg !1633
  call void @llvm.lifetime.start.p0(i64 4096, ptr %buf) #11, !dbg !1634
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1614, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.start.p0(i64 64, ptr %digest) #11, !dbg !1636
  tail call void @llvm.dbg.declare(metadata ptr %digest, metadata !1618, metadata !DIExpression()), !dbg !1637
  call void @llvm.lifetime.start.p0(i64 4, ptr %digestlen) #11, !dbg !1638
  tail call void @llvm.dbg.declare(metadata ptr %digestlen, metadata !1622, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0(i64 129, ptr %hash) #11, !dbg !1640
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !1623, metadata !DIExpression()), !dbg !1641
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #11, !dbg !1642
  tail call void @llvm.dbg.declare(metadata ptr %l, metadata !1627, metadata !DIExpression()), !dbg !1643
  store i64 0, ptr %l, align 8, !dbg !1643
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !1644
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1628, metadata !DIExpression()), !dbg !1645
  %0 = load ptr, ptr %base.addr, align 8, !dbg !1646
  %cmp = icmp ne ptr %0, null, !dbg !1646
  %lnot = xor i1 %cmp, true, !dbg !1646
  %lnot1 = xor i1 %lnot, true, !dbg !1646
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1646
  %conv = sext i32 %lnot.ext to i64, !dbg !1646
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1646
  %tobool = icmp ne i64 %expval, 0, !dbg !1646
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1646

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 733, i32 noundef 0, ptr noundef @.str.20) #12, !dbg !1646
  unreachable, !dbg !1646

1:                                                ; No predecessors!
  br label %lor.end, !dbg !1646

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !1646
  %3 = load ptr, ptr %path.addr, align 8, !dbg !1647
  %cmp2 = icmp ne ptr %3, null, !dbg !1647
  %lnot4 = xor i1 %cmp2, true, !dbg !1647
  %lnot6 = xor i1 %lnot4, true, !dbg !1647
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1647
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1647
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !1647
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !1647
  br i1 %tobool10, label %lor.end12, label %lor.rhs11, !dbg !1647

lor.rhs11:                                        ; preds = %lor.end
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 734, i32 noundef 0, ptr noundef @.str.21) #12, !dbg !1647
  unreachable, !dbg !1647

4:                                                ; No predecessors!
  br label %lor.end12, !dbg !1647

lor.end12:                                        ; preds = %4, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ false, %4 ]
  %lor.ext13 = zext i1 %5 to i32, !dbg !1647
  %6 = load ptr, ptr %base.addr, align 8, !dbg !1648
  %call = call i64 @strlen(ptr noundef %6) #14, !dbg !1649
  %add = add i64 %call, 1, !dbg !1650
  store i64 %add, ptr %l, align 8, !dbg !1651
  %7 = load i64, ptr %l, align 8, !dbg !1652
  %cmp14 = icmp ult i64 %7, 65, !dbg !1654
  br i1 %cmp14, label %if.then, label %if.end, !dbg !1655

if.then:                                          ; preds = %lor.end12
  store i64 65, ptr %l, align 8, !dbg !1656
  br label %if.end, !dbg !1657

if.end:                                           ; preds = %if.then, %lor.end12
  %8 = load ptr, ptr %dir.addr, align 8, !dbg !1658
  %cmp16 = icmp ne ptr %8, null, !dbg !1660
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !1661

if.then18:                                        ; preds = %if.end
  %9 = load ptr, ptr %dir.addr, align 8, !dbg !1662
  %call19 = call i64 @strlen(ptr noundef %9) #14, !dbg !1663
  %add20 = add i64 %call19, 1, !dbg !1664
  %10 = load i64, ptr %l, align 8, !dbg !1665
  %add21 = add i64 %10, %add20, !dbg !1665
  store i64 %add21, ptr %l, align 8, !dbg !1665
  br label %if.end22, !dbg !1666

if.end22:                                         ; preds = %if.then18, %if.end
  %11 = load ptr, ptr %ext.addr, align 8, !dbg !1667
  %cmp23 = icmp ne ptr %11, null, !dbg !1669
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !1670

if.then25:                                        ; preds = %if.end22
  %12 = load ptr, ptr %ext.addr, align 8, !dbg !1671
  %call26 = call i64 @strlen(ptr noundef %12) #14, !dbg !1672
  %add27 = add i64 %call26, 1, !dbg !1673
  %13 = load i64, ptr %l, align 8, !dbg !1674
  %add28 = add i64 %13, %add27, !dbg !1674
  store i64 %add28, ptr %l, align 8, !dbg !1674
  br label %if.end29, !dbg !1675

if.end29:                                         ; preds = %if.then25, %if.end22
  %14 = load i64, ptr %l, align 8, !dbg !1676
  %15 = load i64, ptr %length.addr, align 8, !dbg !1678
  %cmp30 = icmp ugt i64 %14, %15, !dbg !1679
  br i1 %cmp30, label %if.then34, label %lor.lhs.false, !dbg !1680

lor.lhs.false:                                    ; preds = %if.end29
  %16 = load i64, ptr %l, align 8, !dbg !1681
  %cmp32 = icmp ugt i64 %16, 4096, !dbg !1682
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1683

if.then34:                                        ; preds = %lor.lhs.false, %if.end29
  store i32 19, ptr %retval, align 4, !dbg !1684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1684

if.end35:                                         ; preds = %lor.lhs.false
  %call36 = call ptr @EVP_sha256(), !dbg !1685
  %17 = load ptr, ptr %base.addr, align 8, !dbg !1686
  %18 = load ptr, ptr %base.addr, align 8, !dbg !1687
  %call37 = call i64 @strlen(ptr noundef %18) #14, !dbg !1688
  %arraydecay = getelementptr inbounds [64 x i8], ptr %digest, i64 0, i64 0, !dbg !1689
  %call38 = call i32 @isc_md(ptr noundef %call36, ptr noundef %17, i64 noundef %call37, ptr noundef %arraydecay, ptr noundef %digestlen), !dbg !1690
  store i32 %call38, ptr %err, align 4, !dbg !1691
  %19 = load i32, ptr %err, align 4, !dbg !1692
  %cmp39 = icmp ne i32 %19, 0, !dbg !1694
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1695

if.then41:                                        ; preds = %if.end35
  %20 = load i32, ptr %err, align 4, !dbg !1696
  store i32 %20, ptr %retval, align 4, !dbg !1698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1698

if.end42:                                         ; preds = %if.end35
  %arraydecay43 = getelementptr inbounds [64 x i8], ptr %digest, i64 0, i64 0, !dbg !1699
  %21 = load i32, ptr %digestlen, align 4, !dbg !1700
  %arraydecay44 = getelementptr inbounds [129 x i8], ptr %hash, i64 0, i64 0, !dbg !1701
  %call45 = call i32 @digest2hex(ptr noundef %arraydecay43, i32 noundef %21, ptr noundef %arraydecay44, i64 noundef 129), !dbg !1702
  store i32 %call45, ptr %err, align 4, !dbg !1703
  %22 = load i32, ptr %err, align 4, !dbg !1704
  %cmp46 = icmp ne i32 %22, 0, !dbg !1706
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1707

if.then48:                                        ; preds = %if.end42
  %23 = load i32, ptr %err, align 4, !dbg !1708
  store i32 %23, ptr %retval, align 4, !dbg !1710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1710

if.end49:                                         ; preds = %if.end42
  %arraydecay50 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1711
  %24 = load ptr, ptr %dir.addr, align 8, !dbg !1712
  %cmp51 = icmp ne ptr %24, null, !dbg !1713
  br i1 %cmp51, label %cond.true, label %cond.false, !dbg !1712

cond.true:                                        ; preds = %if.end49
  %25 = load ptr, ptr %dir.addr, align 8, !dbg !1714
  br label %cond.end, !dbg !1712

cond.false:                                       ; preds = %if.end49
  br label %cond.end, !dbg !1712

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %25, %cond.true ], [ @.str.9, %cond.false ], !dbg !1712
  %26 = load ptr, ptr %dir.addr, align 8, !dbg !1715
  %cmp53 = icmp ne ptr %26, null, !dbg !1716
  %27 = zext i1 %cmp53 to i64, !dbg !1715
  %cond55 = select i1 %cmp53, ptr @.str.18, ptr @.str.9, !dbg !1715
  %arraydecay56 = getelementptr inbounds [129 x i8], ptr %hash, i64 0, i64 0, !dbg !1717
  %28 = load ptr, ptr %ext.addr, align 8, !dbg !1718
  %cmp57 = icmp ne ptr %28, null, !dbg !1719
  %29 = zext i1 %cmp57 to i64, !dbg !1718
  %cond59 = select i1 %cmp57, ptr @.str.19, ptr @.str.9, !dbg !1718
  %30 = load ptr, ptr %ext.addr, align 8, !dbg !1720
  %cmp60 = icmp ne ptr %30, null, !dbg !1721
  br i1 %cmp60, label %cond.true62, label %cond.false63, !dbg !1720

cond.true62:                                      ; preds = %cond.end
  %31 = load ptr, ptr %ext.addr, align 8, !dbg !1722
  br label %cond.end64, !dbg !1720

cond.false63:                                     ; preds = %cond.end
  br label %cond.end64, !dbg !1720

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi ptr [ %31, %cond.true62 ], [ @.str.9, %cond.false63 ], !dbg !1720
  %call66 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay50, i64 noundef 4096, ptr noundef @.str.22, ptr noundef %cond, ptr noundef %cond55, ptr noundef %arraydecay56, ptr noundef %cond59, ptr noundef %cond65) #11, !dbg !1723
  %arraydecay67 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1724
  %call68 = call zeroext i1 @isc_file_exists(ptr noundef %arraydecay67), !dbg !1726
  br i1 %call68, label %if.then69, label %if.end72, !dbg !1727

if.then69:                                        ; preds = %cond.end64
  %32 = load ptr, ptr %path.addr, align 8, !dbg !1728
  %arraydecay70 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1730
  %33 = load i64, ptr %length.addr, align 8, !dbg !1731
  %call71 = call i64 @strlcpy(ptr noundef %32, ptr noundef %arraydecay70, i64 noundef %33), !dbg !1732
  store i32 0, ptr %retval, align 4, !dbg !1733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1733

if.end72:                                         ; preds = %cond.end64
  %arrayidx = getelementptr inbounds [129 x i8], ptr %hash, i64 0, i64 16, !dbg !1734
  store i8 0, ptr %arrayidx, align 16, !dbg !1735
  %arraydecay73 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1736
  %34 = load ptr, ptr %dir.addr, align 8, !dbg !1737
  %cmp74 = icmp ne ptr %34, null, !dbg !1738
  br i1 %cmp74, label %cond.true76, label %cond.false77, !dbg !1737

cond.true76:                                      ; preds = %if.end72
  %35 = load ptr, ptr %dir.addr, align 8, !dbg !1739
  br label %cond.end78, !dbg !1737

cond.false77:                                     ; preds = %if.end72
  br label %cond.end78, !dbg !1737

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi ptr [ %35, %cond.true76 ], [ @.str.9, %cond.false77 ], !dbg !1737
  %36 = load ptr, ptr %dir.addr, align 8, !dbg !1740
  %cmp80 = icmp ne ptr %36, null, !dbg !1741
  %37 = zext i1 %cmp80 to i64, !dbg !1740
  %cond82 = select i1 %cmp80, ptr @.str.18, ptr @.str.9, !dbg !1740
  %arraydecay83 = getelementptr inbounds [129 x i8], ptr %hash, i64 0, i64 0, !dbg !1742
  %38 = load ptr, ptr %ext.addr, align 8, !dbg !1743
  %cmp84 = icmp ne ptr %38, null, !dbg !1744
  %39 = zext i1 %cmp84 to i64, !dbg !1743
  %cond86 = select i1 %cmp84, ptr @.str.19, ptr @.str.9, !dbg !1743
  %40 = load ptr, ptr %ext.addr, align 8, !dbg !1745
  %cmp87 = icmp ne ptr %40, null, !dbg !1746
  br i1 %cmp87, label %cond.true89, label %cond.false90, !dbg !1745

cond.true89:                                      ; preds = %cond.end78
  %41 = load ptr, ptr %ext.addr, align 8, !dbg !1747
  br label %cond.end91, !dbg !1745

cond.false90:                                     ; preds = %cond.end78
  br label %cond.end91, !dbg !1745

cond.end91:                                       ; preds = %cond.false90, %cond.true89
  %cond92 = phi ptr [ %41, %cond.true89 ], [ @.str.9, %cond.false90 ], !dbg !1745
  %call93 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay73, i64 noundef 4096, ptr noundef @.str.22, ptr noundef %cond79, ptr noundef %cond82, ptr noundef %arraydecay83, ptr noundef %cond86, ptr noundef %cond92) #11, !dbg !1748
  %arraydecay94 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1749
  %call95 = call zeroext i1 @isc_file_exists(ptr noundef %arraydecay94), !dbg !1751
  br i1 %call95, label %if.then96, label %if.end99, !dbg !1752

if.then96:                                        ; preds = %cond.end91
  %42 = load ptr, ptr %path.addr, align 8, !dbg !1753
  %arraydecay97 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1755
  %43 = load i64, ptr %length.addr, align 8, !dbg !1756
  %call98 = call i64 @strlcpy(ptr noundef %42, ptr noundef %arraydecay97, i64 noundef %43), !dbg !1757
  store i32 0, ptr %retval, align 4, !dbg !1758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1758

if.end99:                                         ; preds = %cond.end91
  %44 = load ptr, ptr %base.addr, align 8, !dbg !1759
  %call100 = call ptr @strpbrk(ptr noundef %44, ptr noundef @.str.23) #14, !dbg !1761
  %cmp101 = icmp ne ptr %call100, null, !dbg !1762
  br i1 %cmp101, label %if.then103, label %if.end106, !dbg !1763

if.then103:                                       ; preds = %if.end99
  %45 = load ptr, ptr %path.addr, align 8, !dbg !1764
  %arraydecay104 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1766
  %46 = load i64, ptr %length.addr, align 8, !dbg !1767
  %call105 = call i64 @strlcpy(ptr noundef %45, ptr noundef %arraydecay104, i64 noundef %46), !dbg !1768
  store i32 0, ptr %retval, align 4, !dbg !1769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1769

if.end106:                                        ; preds = %if.end99
  %arraydecay107 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1770
  %47 = load ptr, ptr %dir.addr, align 8, !dbg !1771
  %cmp108 = icmp ne ptr %47, null, !dbg !1772
  br i1 %cmp108, label %cond.true110, label %cond.false111, !dbg !1771

cond.true110:                                     ; preds = %if.end106
  %48 = load ptr, ptr %dir.addr, align 8, !dbg !1773
  br label %cond.end112, !dbg !1771

cond.false111:                                    ; preds = %if.end106
  br label %cond.end112, !dbg !1771

cond.end112:                                      ; preds = %cond.false111, %cond.true110
  %cond113 = phi ptr [ %48, %cond.true110 ], [ @.str.9, %cond.false111 ], !dbg !1771
  %49 = load ptr, ptr %dir.addr, align 8, !dbg !1774
  %cmp114 = icmp ne ptr %49, null, !dbg !1775
  %50 = zext i1 %cmp114 to i64, !dbg !1774
  %cond116 = select i1 %cmp114, ptr @.str.18, ptr @.str.9, !dbg !1774
  %51 = load ptr, ptr %base.addr, align 8, !dbg !1776
  %52 = load ptr, ptr %ext.addr, align 8, !dbg !1777
  %cmp117 = icmp ne ptr %52, null, !dbg !1778
  %53 = zext i1 %cmp117 to i64, !dbg !1777
  %cond119 = select i1 %cmp117, ptr @.str.19, ptr @.str.9, !dbg !1777
  %54 = load ptr, ptr %ext.addr, align 8, !dbg !1779
  %cmp120 = icmp ne ptr %54, null, !dbg !1780
  br i1 %cmp120, label %cond.true122, label %cond.false123, !dbg !1779

cond.true122:                                     ; preds = %cond.end112
  %55 = load ptr, ptr %ext.addr, align 8, !dbg !1781
  br label %cond.end124, !dbg !1779

cond.false123:                                    ; preds = %cond.end112
  br label %cond.end124, !dbg !1779

cond.end124:                                      ; preds = %cond.false123, %cond.true122
  %cond125 = phi ptr [ %55, %cond.true122 ], [ @.str.9, %cond.false123 ], !dbg !1779
  %call126 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay107, i64 noundef 4096, ptr noundef @.str.22, ptr noundef %cond113, ptr noundef %cond116, ptr noundef %51, ptr noundef %cond119, ptr noundef %cond125) #11, !dbg !1782
  %56 = load ptr, ptr %path.addr, align 8, !dbg !1783
  %arraydecay127 = getelementptr inbounds [4096 x i8], ptr %buf, i64 0, i64 0, !dbg !1784
  %57 = load i64, ptr %length.addr, align 8, !dbg !1785
  %call128 = call i64 @strlcpy(ptr noundef %56, ptr noundef %arraydecay127, i64 noundef %57), !dbg !1786
  store i32 0, ptr %retval, align 4, !dbg !1787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1787

cleanup:                                          ; preds = %cond.end124, %if.then103, %if.then96, %if.then69, %if.then48, %if.then41, %if.then34
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 129, ptr %hash) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 4, ptr %digestlen) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 64, ptr %digest) #11, !dbg !1788
  call void @llvm.lifetime.end.p0(i64 4096, ptr %buf) #11, !dbg !1788
  %58 = load i32, ptr %retval, align 4, !dbg !1788
  ret i32 %58, !dbg !1788
}

; Function Attrs: null_pointer_is_valid
declare !dbg !1789 i32 @isc_md(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1802 ptr @EVP_sha256() #4

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @digest2hex(ptr noundef %digest, i32 noundef %digestlen, ptr noundef %hash, i64 noundef %hashlen) #0 !dbg !1806 {
entry:
  %retval = alloca i32, align 4
  %digest.addr = alloca ptr, align 8
  %digestlen.addr = alloca i32, align 4
  %hash.addr = alloca ptr, align 8
  %hashlen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %left = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %digest, ptr %digest.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %digest.addr, metadata !1810, metadata !DIExpression()), !dbg !1820
  store i32 %digestlen, ptr %digestlen.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %digestlen.addr, metadata !1811, metadata !DIExpression()), !dbg !1821
  store ptr %hash, ptr %hash.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !1812, metadata !DIExpression()), !dbg !1822
  store i64 %hashlen, ptr %hashlen.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %hashlen.addr, metadata !1813, metadata !DIExpression()), !dbg !1823
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1824
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1814, metadata !DIExpression()), !dbg !1825
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1826
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1815, metadata !DIExpression()), !dbg !1827
  store i32 0, ptr %i, align 4, !dbg !1828
  br label %for.cond, !dbg !1829

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1830
  %1 = load i32, ptr %digestlen.addr, align 4, !dbg !1831
  %cmp = icmp ult i32 %0, %1, !dbg !1832
  br i1 %cmp, label %for.body, label %for.end, !dbg !1833

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #11, !dbg !1834
  tail call void @llvm.dbg.declare(metadata ptr %left, metadata !1816, metadata !DIExpression()), !dbg !1835
  %2 = load i64, ptr %hashlen.addr, align 8, !dbg !1836
  %3 = load i32, ptr %i, align 4, !dbg !1837
  %mul = mul i32 %3, 2, !dbg !1838
  %conv = zext i32 %mul to i64, !dbg !1837
  %sub = sub i64 %2, %conv, !dbg !1839
  store i64 %sub, ptr %left, align 8, !dbg !1835
  %4 = load ptr, ptr %hash.addr, align 8, !dbg !1840
  %5 = load i32, ptr %i, align 4, !dbg !1841
  %mul1 = mul i32 %5, 2, !dbg !1842
  %idx.ext = zext i32 %mul1 to i64, !dbg !1843
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !1843
  %6 = load i64, ptr %left, align 8, !dbg !1844
  %7 = load ptr, ptr %digest.addr, align 8, !dbg !1845
  %8 = load i32, ptr %i, align 4, !dbg !1846
  %idxprom = zext i32 %8 to i64, !dbg !1845
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom, !dbg !1845
  %9 = load i8, ptr %arrayidx, align 1, !dbg !1845
  %conv2 = zext i8 %9 to i32, !dbg !1845
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr, i64 noundef %6, ptr noundef @.str.27, i32 noundef %conv2) #11, !dbg !1847
  store i32 %call, ptr %ret, align 4, !dbg !1848
  %10 = load i32, ptr %ret, align 4, !dbg !1849
  %cmp3 = icmp slt i32 %10, 0, !dbg !1851
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !1852

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i32, ptr %ret, align 4, !dbg !1853
  %conv5 = sext i32 %11 to i64, !dbg !1854
  %12 = load i64, ptr %left, align 8, !dbg !1855
  %cmp6 = icmp uge i64 %conv5, %12, !dbg !1856
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1857

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 19, ptr %retval, align 4, !dbg !1858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1858

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1860
  br label %cleanup, !dbg !1860

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #11, !dbg !1860
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1861

for.inc:                                          ; preds = %cleanup.cont
  %13 = load i32, ptr %i, align 4, !dbg !1862
  %inc = add i32 %13, 1, !dbg !1862
  store i32 %inc, ptr %i, align 4, !dbg !1862
  br label %for.cond, !dbg !1863, !llvm.loop !1864

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !1866

cleanup8:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1867
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1867
  %14 = load i32, ptr %retval, align 4, !dbg !1867
  ret i32 %14, !dbg !1867
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1868 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !1872 ptr @strpbrk(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind null_pointer_is_valid uwtable
define zeroext i1 @isc_file_isdirwritable(ptr noundef %path) #0 !dbg !1875 {
entry:
  %path.addr = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1877, metadata !DIExpression()), !dbg !1878
  %0 = load ptr, ptr %path.addr, align 8, !dbg !1879
  %call = call i32 @access(ptr noundef %0, i32 noundef 3) #11, !dbg !1880
  %cmp = icmp eq i32 %call, 0, !dbg !1881
  ret i1 %cmp, !dbg !1882
}

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1883 i32 @access(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !1886 ptr @getcwd(ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #10

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!49}
!llvm.module.flags = !{!137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "file.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "7672619b47cb6e498d0b7c4a3e1ce907")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 7)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 19)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 20)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 22)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 41)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 15)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !22, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 18)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "alphnum", scope: !49, file: !2, line: 256, type: !134, isLocal: true, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !59, globals: !73, splitDebugInlining: false, nameTableKind: None)
!50 = !{!51}
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 25, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!53 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!56 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!57 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!58 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!59 = !{!60, !61, !62, !53, !67, !70}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !63, line: 26, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !65, line: 41, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 70, baseType: !72)
!71 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !{!0, !8, !13, !18, !20, !25, !30, !35, !37, !42, !74, !79, !84, !86, !91, !93, !95, !97, !102, !104, !106, !108, !110, !115, !120, !47, !122, !124, !129}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 321, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 38)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 3)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !15, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 388, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 23)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !22, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !22, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !88, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 2)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 630, type: !99, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 638, type: !99, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 733, type: !10, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !10, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 11)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 788, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 29)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !15, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !22, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 538, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 12)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 714, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 5)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 63)
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 8, !"PIC Level", i32 2}
!141 = !{i32 7, !"uwtable", i32 2}
!142 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!143 = distinct !DISubprogram(name: "isc_file_getsizefd", scope: !2, file: !2, line: 110, type: !144, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !152)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !66, !148}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !147, line: 67, baseType: !53)
!147 = !DIFile(filename: "../include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !150, line: 56, baseType: !151)
!150 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !61)
!152 = !{!153, !154, !155, !156}
!153 = !DILocalVariable(name: "fd", arg: 1, scope: !143, file: !2, line: 110, type: !66)
!154 = !DILocalVariable(name: "size", arg: 2, scope: !143, file: !2, line: 110, type: !148)
!155 = !DILocalVariable(name: "result", scope: !143, file: !2, line: 111, type: !146)
!156 = !DILocalVariable(name: "stats", scope: !143, file: !2, line: 112, type: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !158, line: 26, size: 1152, elements: !159)
!158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!159 = !{!160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !179, !187, !188, !189}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !157, file: !158, line: 31, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !65, line: 145, baseType: !72)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !157, file: !158, line: 36, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !65, line: 148, baseType: !72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !157, file: !158, line: 44, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !65, line: 151, baseType: !72)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !157, file: !158, line: 45, baseType: !167, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !65, line: 150, baseType: !53)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !157, file: !158, line: 47, baseType: !169, size: 32, offset: 224)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !65, line: 146, baseType: !53)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !157, file: !158, line: 48, baseType: !171, size: 32, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !65, line: 147, baseType: !53)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !157, file: !158, line: 50, baseType: !66, size: 32, offset: 288)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !157, file: !158, line: 52, baseType: !161, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !157, file: !158, line: 57, baseType: !151, size: 64, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !157, file: !158, line: 61, baseType: !176, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !65, line: 175, baseType: !61)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !157, file: !158, line: 63, baseType: !178, size: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !65, line: 180, baseType: !61)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !157, file: !158, line: 74, baseType: !180, size: 128, offset: 576)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !181, line: 11, size: 128, elements: !182)
!181 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !180, file: !181, line: 16, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !65, line: 160, baseType: !61)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !180, file: !181, line: 21, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !65, line: 197, baseType: !61)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !157, file: !158, line: 75, baseType: !180, size: 128, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !157, file: !158, line: 76, baseType: !180, size: 128, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !157, file: !158, line: 89, baseType: !190, size: 192, offset: 960)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 192, elements: !82)
!191 = !DILocation(line: 110, column: 24, scope: !143)
!192 = !DILocation(line: 110, column: 35, scope: !143)
!193 = !DILocation(line: 111, column: 2, scope: !143)
!194 = !DILocation(line: 111, column: 15, scope: !143)
!195 = !DILocation(line: 112, column: 2, scope: !143)
!196 = !DILocation(line: 112, column: 14, scope: !143)
!197 = !DILocation(line: 114, column: 2, scope: !143)
!198 = !DILocation(line: 116, column: 20, scope: !143)
!199 = !DILocation(line: 116, column: 11, scope: !143)
!200 = !DILocation(line: 116, column: 9, scope: !143)
!201 = !DILocation(line: 118, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !143, file: !2, line: 118, column: 6)
!203 = !DILocation(line: 118, column: 13, scope: !202)
!204 = !DILocation(line: 118, column: 6, scope: !143)
!205 = !DILocation(line: 119, column: 17, scope: !202)
!206 = !DILocation(line: 119, column: 4, scope: !202)
!207 = !DILocation(line: 119, column: 9, scope: !202)
!208 = !DILocation(line: 119, column: 3, scope: !202)
!209 = !DILocation(line: 121, column: 10, scope: !143)
!210 = !DILocation(line: 122, column: 1, scope: !143)
!211 = !DILocation(line: 121, column: 2, scope: !143)
!212 = !DISubprogram(name: "isc_assertion_failed", scope: !52, file: !52, line: 37, type: !213, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !215, !66, !216, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !52, line: 30, baseType: !51)
!217 = distinct !DISubprogram(name: "fd_stats", scope: !2, file: !2, line: 98, type: !218, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !221)
!218 = !DISubroutineType(types: !219)
!219 = !{!146, !66, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!221 = !{!222, !223, !224}
!222 = !DILocalVariable(name: "fd", arg: 1, scope: !217, file: !2, line: 98, type: !66)
!223 = !DILocalVariable(name: "stats", arg: 2, scope: !217, file: !2, line: 98, type: !220)
!224 = !DILocalVariable(name: "result", scope: !217, file: !2, line: 99, type: !146)
!225 = !DILocation(line: 98, column: 14, scope: !217)
!226 = !DILocation(line: 98, column: 31, scope: !217)
!227 = !DILocation(line: 99, column: 2, scope: !217)
!228 = !DILocation(line: 99, column: 15, scope: !217)
!229 = !DILocation(line: 101, column: 2, scope: !217)
!230 = !DILocation(line: 103, column: 12, scope: !231)
!231 = distinct !DILexicalBlock(scope: !217, file: !2, line: 103, column: 6)
!232 = !DILocation(line: 103, column: 16, scope: !231)
!233 = !DILocation(line: 103, column: 6, scope: !231)
!234 = !DILocation(line: 103, column: 23, scope: !231)
!235 = !DILocation(line: 103, column: 6, scope: !217)
!236 = !DILocation(line: 104, column: 12, scope: !231)
!237 = !DILocation(line: 104, column: 10, scope: !231)
!238 = !DILocation(line: 104, column: 3, scope: !231)
!239 = !DILocation(line: 106, column: 10, scope: !217)
!240 = !DILocation(line: 107, column: 1, scope: !217)
!241 = !DILocation(line: 106, column: 2, scope: !217)
!242 = distinct !DISubprogram(name: "isc_file_mode", scope: !2, file: !2, line: 125, type: !243, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !247)
!243 = !DISubroutineType(types: !244)
!244 = !{!146, !215, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !150, line: 50, baseType: !167)
!247 = !{!248, !249, !250, !251}
!248 = !DILocalVariable(name: "file", arg: 1, scope: !242, file: !2, line: 125, type: !215)
!249 = !DILocalVariable(name: "modep", arg: 2, scope: !242, file: !2, line: 125, type: !245)
!250 = !DILocalVariable(name: "result", scope: !242, file: !2, line: 126, type: !146)
!251 = !DILocalVariable(name: "stats", scope: !242, file: !2, line: 127, type: !157)
!252 = !DILocation(line: 125, column: 27, scope: !242)
!253 = !DILocation(line: 125, column: 41, scope: !242)
!254 = !DILocation(line: 126, column: 2, scope: !242)
!255 = !DILocation(line: 126, column: 15, scope: !242)
!256 = !DILocation(line: 127, column: 2, scope: !242)
!257 = !DILocation(line: 127, column: 14, scope: !242)
!258 = !DILocation(line: 129, column: 2, scope: !242)
!259 = !DILocation(line: 131, column: 22, scope: !242)
!260 = !DILocation(line: 131, column: 11, scope: !242)
!261 = !DILocation(line: 131, column: 9, scope: !242)
!262 = !DILocation(line: 132, column: 6, scope: !263)
!263 = distinct !DILexicalBlock(scope: !242, file: !2, line: 132, column: 6)
!264 = !DILocation(line: 132, column: 13, scope: !263)
!265 = !DILocation(line: 132, column: 6, scope: !242)
!266 = !DILocation(line: 133, column: 19, scope: !263)
!267 = !DILocation(line: 133, column: 27, scope: !263)
!268 = !DILocation(line: 133, column: 4, scope: !263)
!269 = !DILocation(line: 133, column: 10, scope: !263)
!270 = !DILocation(line: 133, column: 3, scope: !263)
!271 = !DILocation(line: 135, column: 10, scope: !242)
!272 = !DILocation(line: 136, column: 1, scope: !242)
!273 = !DILocation(line: 135, column: 2, scope: !242)
!274 = distinct !DISubprogram(name: "file_stats", scope: !2, file: !2, line: 85, type: !275, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!146, !215, !220}
!277 = !{!278, !279, !280}
!278 = !DILocalVariable(name: "file", arg: 1, scope: !274, file: !2, line: 85, type: !215)
!279 = !DILocalVariable(name: "stats", arg: 2, scope: !274, file: !2, line: 85, type: !220)
!280 = !DILocalVariable(name: "result", scope: !274, file: !2, line: 86, type: !146)
!281 = !DILocation(line: 85, column: 24, scope: !274)
!282 = !DILocation(line: 85, column: 43, scope: !274)
!283 = !DILocation(line: 86, column: 2, scope: !274)
!284 = !DILocation(line: 86, column: 15, scope: !274)
!285 = !DILocation(line: 88, column: 2, scope: !274)
!286 = !DILocation(line: 89, column: 2, scope: !274)
!287 = !DILocation(line: 91, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !274, file: !2, line: 91, column: 6)
!289 = !DILocation(line: 91, column: 17, scope: !288)
!290 = !DILocation(line: 91, column: 6, scope: !288)
!291 = !DILocation(line: 91, column: 24, scope: !288)
!292 = !DILocation(line: 91, column: 6, scope: !274)
!293 = !DILocation(line: 92, column: 12, scope: !288)
!294 = !DILocation(line: 92, column: 10, scope: !288)
!295 = !DILocation(line: 92, column: 3, scope: !288)
!296 = !DILocation(line: 94, column: 10, scope: !274)
!297 = !DILocation(line: 95, column: 1, scope: !274)
!298 = !DILocation(line: 94, column: 2, scope: !274)
!299 = distinct !DISubprogram(name: "isc_file_getmodtime", scope: !2, file: !2, line: 139, type: !300, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !309)
!300 = !DISubroutineType(types: !301)
!301 = !{!146, !215, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_time_t", file: !147, line: 81, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_time", file: !305, line: 86, size: 64, elements: !306)
!305 = !DIFile(filename: "./include/isc/time.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "a0595c59a7eba4194a4b687b13cdc892")
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !304, file: !305, line: 87, baseType: !53, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nanoseconds", scope: !304, file: !305, line: 88, baseType: !53, size: 32, offset: 32)
!309 = !{!310, !311, !312, !313}
!310 = !DILocalVariable(name: "file", arg: 1, scope: !299, file: !2, line: 139, type: !215)
!311 = !DILocalVariable(name: "modtime", arg: 2, scope: !299, file: !2, line: 139, type: !302)
!312 = !DILocalVariable(name: "result", scope: !299, file: !2, line: 140, type: !146)
!313 = !DILocalVariable(name: "stats", scope: !299, file: !2, line: 141, type: !157)
!314 = !DILocation(line: 139, column: 33, scope: !299)
!315 = !DILocation(line: 139, column: 51, scope: !299)
!316 = !DILocation(line: 140, column: 2, scope: !299)
!317 = !DILocation(line: 140, column: 15, scope: !299)
!318 = !DILocation(line: 141, column: 2, scope: !299)
!319 = !DILocation(line: 141, column: 14, scope: !299)
!320 = !DILocation(line: 143, column: 2, scope: !299)
!321 = !DILocation(line: 144, column: 2, scope: !299)
!322 = !DILocation(line: 146, column: 22, scope: !299)
!323 = !DILocation(line: 146, column: 11, scope: !299)
!324 = !DILocation(line: 146, column: 9, scope: !299)
!325 = !DILocation(line: 148, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !299, file: !2, line: 148, column: 6)
!327 = !DILocation(line: 148, column: 13, scope: !326)
!328 = !DILocation(line: 148, column: 6, scope: !299)
!329 = !DILocation(line: 150, column: 16, scope: !326)
!330 = !DILocation(line: 150, column: 31, scope: !326)
!331 = !DILocation(line: 150, column: 25, scope: !326)
!332 = !DILocation(line: 150, column: 47, scope: !326)
!333 = !DILocation(line: 150, column: 55, scope: !326)
!334 = !DILocation(line: 150, column: 41, scope: !326)
!335 = !DILocation(line: 150, column: 3, scope: !326)
!336 = !DILocation(line: 155, column: 10, scope: !299)
!337 = !DILocation(line: 156, column: 1, scope: !299)
!338 = !DILocation(line: 155, column: 2, scope: !299)
!339 = !DISubprogram(name: "isc_time_set", scope: !305, file: !305, line: 94, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !302, !53, !53}
!342 = distinct !DISubprogram(name: "isc_file_getsize", scope: !2, file: !2, line: 159, type: !343, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!146, !215, !148}
!345 = !{!346, !347, !348, !349}
!346 = !DILocalVariable(name: "file", arg: 1, scope: !342, file: !2, line: 159, type: !215)
!347 = !DILocalVariable(name: "size", arg: 2, scope: !342, file: !2, line: 159, type: !148)
!348 = !DILocalVariable(name: "result", scope: !342, file: !2, line: 160, type: !146)
!349 = !DILocalVariable(name: "stats", scope: !342, file: !2, line: 161, type: !157)
!350 = !DILocation(line: 159, column: 30, scope: !342)
!351 = !DILocation(line: 159, column: 43, scope: !342)
!352 = !DILocation(line: 160, column: 2, scope: !342)
!353 = !DILocation(line: 160, column: 15, scope: !342)
!354 = !DILocation(line: 161, column: 2, scope: !342)
!355 = !DILocation(line: 161, column: 14, scope: !342)
!356 = !DILocation(line: 163, column: 2, scope: !342)
!357 = !DILocation(line: 164, column: 2, scope: !342)
!358 = !DILocation(line: 166, column: 22, scope: !342)
!359 = !DILocation(line: 166, column: 11, scope: !342)
!360 = !DILocation(line: 166, column: 9, scope: !342)
!361 = !DILocation(line: 168, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !342, file: !2, line: 168, column: 6)
!363 = !DILocation(line: 168, column: 13, scope: !362)
!364 = !DILocation(line: 168, column: 6, scope: !342)
!365 = !DILocation(line: 169, column: 17, scope: !362)
!366 = !DILocation(line: 169, column: 4, scope: !362)
!367 = !DILocation(line: 169, column: 9, scope: !362)
!368 = !DILocation(line: 169, column: 3, scope: !362)
!369 = !DILocation(line: 171, column: 10, scope: !342)
!370 = !DILocation(line: 172, column: 1, scope: !342)
!371 = !DILocation(line: 171, column: 2, scope: !342)
!372 = distinct !DISubprogram(name: "isc_file_settime", scope: !2, file: !2, line: 175, type: !300, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !373)
!373 = !{!374, !375, !376}
!374 = !DILocalVariable(name: "file", arg: 1, scope: !372, file: !2, line: 175, type: !215)
!375 = !DILocalVariable(name: "when", arg: 2, scope: !372, file: !2, line: 175, type: !302)
!376 = !DILocalVariable(name: "times", scope: !372, file: !2, line: 176, type: !377)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 256, elements: !100)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !379, line: 8, size: 128, elements: !380)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !378, file: !379, line: 14, baseType: !184, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !378, file: !379, line: 15, baseType: !383, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !65, line: 162, baseType: !61)
!384 = !DILocation(line: 175, column: 30, scope: !372)
!385 = !DILocation(line: 175, column: 48, scope: !372)
!386 = !DILocation(line: 176, column: 2, scope: !372)
!387 = !DILocation(line: 176, column: 17, scope: !372)
!388 = !DILocation(line: 178, column: 2, scope: !372)
!389 = !DILocation(line: 0, scope: !372)
!390 = !DILocation(line: 190, column: 61, scope: !372)
!391 = !DILocation(line: 190, column: 44, scope: !372)
!392 = !DILocation(line: 190, column: 38, scope: !372)
!393 = !DILocation(line: 190, column: 20, scope: !372)
!394 = !DILocation(line: 190, column: 29, scope: !372)
!395 = !DILocation(line: 190, column: 36, scope: !372)
!396 = !DILocation(line: 190, column: 2, scope: !372)
!397 = !DILocation(line: 190, column: 11, scope: !372)
!398 = !DILocation(line: 190, column: 18, scope: !372)
!399 = !DILocation(line: 195, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !372, file: !2, line: 195, column: 6)
!401 = !DILocation(line: 195, column: 16, scope: !400)
!402 = !DILocation(line: 195, column: 23, scope: !400)
!403 = !DILocation(line: 196, column: 59, scope: !400)
!404 = !DILocation(line: 195, column: 6, scope: !372)
!405 = !DILocation(line: 197, column: 3, scope: !400)
!406 = !DILocation(line: 204, column: 34, scope: !372)
!407 = !DILocation(line: 204, column: 13, scope: !372)
!408 = !DILocation(line: 204, column: 40, scope: !372)
!409 = !DILocation(line: 204, column: 3, scope: !372)
!410 = !DILocation(line: 203, column: 21, scope: !372)
!411 = !DILocation(line: 203, column: 30, scope: !372)
!412 = !DILocation(line: 203, column: 38, scope: !372)
!413 = !DILocation(line: 203, column: 2, scope: !372)
!414 = !DILocation(line: 203, column: 11, scope: !372)
!415 = !DILocation(line: 203, column: 19, scope: !372)
!416 = !DILocation(line: 206, column: 13, scope: !417)
!417 = distinct !DILexicalBlock(scope: !372, file: !2, line: 206, column: 6)
!418 = !DILocation(line: 206, column: 19, scope: !417)
!419 = !DILocation(line: 206, column: 6, scope: !417)
!420 = !DILocation(line: 206, column: 26, scope: !417)
!421 = !DILocation(line: 206, column: 6, scope: !372)
!422 = !DILocation(line: 207, column: 11, scope: !417)
!423 = !DILocation(line: 207, column: 3, scope: !417)
!424 = !DILocation(line: 209, column: 2, scope: !372)
!425 = !DILocation(line: 210, column: 1, scope: !372)
!426 = !DISubprogram(name: "isc_time_seconds", scope: !305, file: !305, line: 244, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !432}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !430, line: 26, baseType: !431)
!430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !65, line: 42, baseType: !53)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!434 = !DISubprogram(name: "isc_time_nanoseconds", scope: !305, file: !305, line: 277, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubprogram(name: "utimes", scope: !436, file: !436, line: 162, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "b36e339815f62ba7208e5294180e353c")
!437 = !DISubroutineType(types: !438)
!438 = !{!66, !215, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!441 = !DISubprogram(name: "isc___errno2result", scope: !442, file: !442, line: 30, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DIFile(filename: "./errno2result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "785b67342fa3bc61840c425b2d0ec5b3")
!443 = !DISubroutineType(types: !444)
!444 = !{!146, !66, !445, !215, !53}
!445 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!446 = !DISubprogram(name: "__errno_location", scope: !447, file: !447, line: 37, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!447 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!448 = !DISubroutineType(types: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!451 = distinct !DISubprogram(name: "isc_file_mktemplate", scope: !2, file: !2, line: 216, type: !452, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !455)
!452 = !DISubroutineType(types: !453)
!453 = !{!146, !215, !454, !70}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!455 = !{!456, !457, !458}
!456 = !DILocalVariable(name: "path", arg: 1, scope: !451, file: !2, line: 216, type: !215)
!457 = !DILocalVariable(name: "buf", arg: 2, scope: !451, file: !2, line: 216, type: !454)
!458 = !DILocalVariable(name: "buflen", arg: 3, scope: !451, file: !2, line: 216, type: !70)
!459 = !DILocation(line: 216, column: 33, scope: !451)
!460 = !DILocation(line: 216, column: 45, scope: !451)
!461 = !DILocation(line: 216, column: 57, scope: !451)
!462 = !DILocation(line: 217, column: 28, scope: !451)
!463 = !DILocation(line: 217, column: 44, scope: !451)
!464 = !DILocation(line: 217, column: 49, scope: !451)
!465 = !DILocation(line: 217, column: 10, scope: !451)
!466 = !DILocation(line: 217, column: 2, scope: !451)
!467 = distinct !DISubprogram(name: "isc_file_template", scope: !2, file: !2, line: 221, type: !468, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!146, !215, !215, !454, !70}
!470 = !{!471, !472, !473, !474, !475, !476}
!471 = !DILocalVariable(name: "path", arg: 1, scope: !467, file: !2, line: 221, type: !215)
!472 = !DILocalVariable(name: "templet", arg: 2, scope: !467, file: !2, line: 221, type: !215)
!473 = !DILocalVariable(name: "buf", arg: 3, scope: !467, file: !2, line: 221, type: !454)
!474 = !DILocalVariable(name: "buflen", arg: 4, scope: !467, file: !2, line: 222, type: !70)
!475 = !DILocalVariable(name: "s", scope: !467, file: !2, line: 224, type: !215)
!476 = !DILocalVariable(name: "prefixlen", scope: !477, file: !2, line: 239, type: !70)
!477 = distinct !DILexicalBlock(scope: !478, file: !2, line: 238, column: 17)
!478 = distinct !DILexicalBlock(scope: !467, file: !2, line: 238, column: 6)
!479 = !DILocation(line: 221, column: 31, scope: !467)
!480 = !DILocation(line: 221, column: 49, scope: !467)
!481 = !DILocation(line: 221, column: 64, scope: !467)
!482 = !DILocation(line: 222, column: 12, scope: !467)
!483 = !DILocation(line: 224, column: 2, scope: !467)
!484 = !DILocation(line: 224, column: 14, scope: !467)
!485 = !DILocation(line: 226, column: 2, scope: !467)
!486 = !DILocation(line: 227, column: 2, scope: !467)
!487 = !DILocation(line: 229, column: 6, scope: !488)
!488 = distinct !DILexicalBlock(scope: !467, file: !2, line: 229, column: 6)
!489 = !DILocation(line: 229, column: 11, scope: !488)
!490 = !DILocation(line: 229, column: 6, scope: !467)
!491 = !DILocation(line: 230, column: 8, scope: !488)
!492 = !DILocation(line: 230, column: 3, scope: !488)
!493 = !DILocation(line: 232, column: 14, scope: !467)
!494 = !DILocation(line: 232, column: 6, scope: !467)
!495 = !DILocation(line: 232, column: 4, scope: !467)
!496 = !DILocation(line: 233, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !467, file: !2, line: 233, column: 6)
!498 = !DILocation(line: 233, column: 8, scope: !497)
!499 = !DILocation(line: 233, column: 6, scope: !467)
!500 = !DILocation(line: 234, column: 13, scope: !497)
!501 = !DILocation(line: 234, column: 15, scope: !497)
!502 = !DILocation(line: 234, column: 11, scope: !497)
!503 = !DILocation(line: 234, column: 3, scope: !497)
!504 = !DILocation(line: 236, column: 14, scope: !467)
!505 = !DILocation(line: 236, column: 6, scope: !467)
!506 = !DILocation(line: 236, column: 4, scope: !467)
!507 = !DILocation(line: 238, column: 6, scope: !478)
!508 = !DILocation(line: 238, column: 8, scope: !478)
!509 = !DILocation(line: 238, column: 6, scope: !467)
!510 = !DILocation(line: 239, column: 3, scope: !477)
!511 = !DILocation(line: 239, column: 10, scope: !477)
!512 = !DILocation(line: 239, column: 22, scope: !477)
!513 = !DILocation(line: 239, column: 26, scope: !477)
!514 = !DILocation(line: 239, column: 24, scope: !477)
!515 = !DILocation(line: 239, column: 31, scope: !477)
!516 = !DILocation(line: 240, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !477, file: !2, line: 240, column: 7)
!518 = !DILocation(line: 240, column: 27, scope: !517)
!519 = !DILocation(line: 240, column: 20, scope: !517)
!520 = !DILocation(line: 240, column: 18, scope: !517)
!521 = !DILocation(line: 240, column: 36, scope: !517)
!522 = !DILocation(line: 240, column: 43, scope: !517)
!523 = !DILocation(line: 240, column: 41, scope: !517)
!524 = !DILocation(line: 240, column: 7, scope: !477)
!525 = !DILocation(line: 241, column: 4, scope: !517)
!526 = !DILocation(line: 244, column: 11, scope: !477)
!527 = !DILocation(line: 244, column: 16, scope: !477)
!528 = !DILocation(line: 244, column: 22, scope: !477)
!529 = !DILocation(line: 244, column: 3, scope: !477)
!530 = !DILocation(line: 245, column: 11, scope: !477)
!531 = !DILocation(line: 245, column: 16, scope: !477)
!532 = !DILocation(line: 245, column: 25, scope: !477)
!533 = !DILocation(line: 245, column: 3, scope: !477)
!534 = !DILocation(line: 246, column: 2, scope: !478)
!535 = !DILocation(line: 246, column: 2, scope: !477)
!536 = !DILocation(line: 247, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 247, column: 7)
!538 = distinct !DILexicalBlock(scope: !478, file: !2, line: 246, column: 9)
!539 = !DILocation(line: 247, column: 8, scope: !537)
!540 = !DILocation(line: 247, column: 24, scope: !537)
!541 = !DILocation(line: 247, column: 31, scope: !537)
!542 = !DILocation(line: 247, column: 29, scope: !537)
!543 = !DILocation(line: 247, column: 7, scope: !538)
!544 = !DILocation(line: 248, column: 4, scope: !537)
!545 = !DILocation(line: 250, column: 11, scope: !538)
!546 = !DILocation(line: 250, column: 16, scope: !538)
!547 = !DILocation(line: 250, column: 25, scope: !538)
!548 = !DILocation(line: 250, column: 3, scope: !538)
!549 = !DILocation(line: 253, column: 2, scope: !467)
!550 = !DILocation(line: 254, column: 1, scope: !467)
!551 = !DISubprogram(name: "strrchr", scope: !552, file: !552, line: 273, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!553 = !DISubroutineType(types: !554)
!554 = !{!454, !215, !66}
!555 = !DISubprogram(name: "strlen", scope: !552, file: !552, line: 407, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{!72, !215}
!558 = !DISubprogram(name: "strlcpy", scope: !559, file: !559, line: 25, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DIFile(filename: "../include/isc/string.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "f245dcbdceb547553a76113e9d71cd5e")
!560 = !DISubroutineType(types: !561)
!561 = !{!72, !454, !215, !70}
!562 = !DISubprogram(name: "strlcat", scope: !559, file: !559, line: 30, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = distinct !DISubprogram(name: "isc_file_renameunique", scope: !2, file: !2, line: 260, type: !564, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!146, !215, !454}
!566 = !{!567, !568, !569, !570, !571}
!567 = !DILocalVariable(name: "file", arg: 1, scope: !563, file: !2, line: 260, type: !215)
!568 = !DILocalVariable(name: "templet", arg: 2, scope: !563, file: !2, line: 260, type: !454)
!569 = !DILocalVariable(name: "x", scope: !563, file: !2, line: 261, type: !454)
!570 = !DILocalVariable(name: "cp", scope: !563, file: !2, line: 262, type: !454)
!571 = !DILocalVariable(name: "t", scope: !572, file: !2, line: 282, type: !215)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 281, column: 18)
!573 = distinct !DILexicalBlock(scope: !574, file: !2, line: 281, column: 3)
!574 = distinct !DILexicalBlock(scope: !575, file: !2, line: 281, column: 3)
!575 = distinct !DILexicalBlock(scope: !563, file: !2, line: 278, column: 36)
!576 = !DILocation(line: 260, column: 35, scope: !563)
!577 = !DILocation(line: 260, column: 47, scope: !563)
!578 = !DILocation(line: 261, column: 2, scope: !563)
!579 = !DILocation(line: 261, column: 8, scope: !563)
!580 = !DILocation(line: 262, column: 2, scope: !563)
!581 = !DILocation(line: 262, column: 8, scope: !563)
!582 = !DILocation(line: 264, column: 2, scope: !563)
!583 = !DILocation(line: 265, column: 2, scope: !563)
!584 = !DILocation(line: 267, column: 7, scope: !563)
!585 = !DILocation(line: 267, column: 5, scope: !563)
!586 = !DILocation(line: 268, column: 2, scope: !563)
!587 = !DILocation(line: 268, column: 10, scope: !563)
!588 = !DILocation(line: 268, column: 9, scope: !563)
!589 = !DILocation(line: 268, column: 13, scope: !563)
!590 = !DILocation(line: 269, column: 5, scope: !563)
!591 = distinct !{!591, !586, !590, !592}
!592 = !{!"llvm.loop.mustprogress"}
!593 = !DILocation(line: 270, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !563, file: !2, line: 270, column: 6)
!595 = !DILocation(line: 270, column: 12, scope: !594)
!596 = !DILocation(line: 270, column: 9, scope: !594)
!597 = !DILocation(line: 270, column: 6, scope: !563)
!598 = !DILocation(line: 271, column: 3, scope: !594)
!599 = !DILocation(line: 273, column: 8, scope: !563)
!600 = !DILocation(line: 273, column: 4, scope: !563)
!601 = !DILocation(line: 274, column: 2, scope: !563)
!602 = !DILocation(line: 274, column: 9, scope: !563)
!603 = !DILocation(line: 274, column: 15, scope: !563)
!604 = !DILocation(line: 274, column: 12, scope: !563)
!605 = !DILocation(line: 274, column: 23, scope: !563)
!606 = !DILocation(line: 274, column: 27, scope: !563)
!607 = !DILocation(line: 274, column: 26, scope: !563)
!608 = !DILocation(line: 274, column: 30, scope: !563)
!609 = !DILocation(line: 0, scope: !563)
!610 = !DILocation(line: 275, column: 17, scope: !611)
!611 = distinct !DILexicalBlock(scope: !563, file: !2, line: 274, column: 38)
!612 = !DILocation(line: 275, column: 9, scope: !611)
!613 = !DILocation(line: 275, column: 4, scope: !611)
!614 = !DILocation(line: 275, column: 7, scope: !611)
!615 = !DILocation(line: 276, column: 9, scope: !611)
!616 = !DILocation(line: 276, column: 5, scope: !611)
!617 = distinct !{!617, !601, !618, !592}
!618 = !DILocation(line: 277, column: 2, scope: !563)
!619 = !DILocation(line: 278, column: 2, scope: !563)
!620 = !DILocation(line: 278, column: 14, scope: !563)
!621 = !DILocation(line: 278, column: 20, scope: !563)
!622 = !DILocation(line: 278, column: 9, scope: !563)
!623 = !DILocation(line: 278, column: 29, scope: !563)
!624 = !DILocation(line: 279, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !575, file: !2, line: 279, column: 7)
!626 = !DILocation(line: 279, column: 13, scope: !625)
!627 = !DILocation(line: 279, column: 7, scope: !575)
!628 = !DILocation(line: 280, column: 12, scope: !625)
!629 = !DILocation(line: 280, column: 4, scope: !625)
!630 = !DILocation(line: 281, column: 13, scope: !574)
!631 = !DILocation(line: 281, column: 11, scope: !574)
!632 = !DILocation(line: 281, column: 8, scope: !574)
!633 = !DILocation(line: 282, column: 4, scope: !572)
!634 = !DILocation(line: 282, column: 16, scope: !572)
!635 = !DILocation(line: 283, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !572, file: !2, line: 283, column: 8)
!637 = !DILocation(line: 283, column: 8, scope: !636)
!638 = !DILocation(line: 283, column: 12, scope: !636)
!639 = !DILocation(line: 283, column: 8, scope: !572)
!640 = !DILocation(line: 284, column: 5, scope: !636)
!641 = !DILocation(line: 285, column: 25, scope: !572)
!642 = !DILocation(line: 285, column: 24, scope: !572)
!643 = !DILocation(line: 285, column: 8, scope: !572)
!644 = !DILocation(line: 285, column: 6, scope: !572)
!645 = !DILocation(line: 286, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !572, file: !2, line: 286, column: 8)
!647 = !DILocation(line: 286, column: 10, scope: !646)
!648 = !DILocation(line: 286, column: 18, scope: !646)
!649 = !DILocation(line: 286, column: 22, scope: !646)
!650 = !DILocation(line: 286, column: 21, scope: !646)
!651 = !DILocation(line: 286, column: 26, scope: !646)
!652 = !DILocation(line: 286, column: 8, scope: !572)
!653 = !DILocation(line: 287, column: 13, scope: !646)
!654 = !DILocation(line: 287, column: 8, scope: !646)
!655 = !DILocation(line: 287, column: 11, scope: !646)
!656 = !DILocation(line: 287, column: 5, scope: !646)
!657 = !DILocation(line: 289, column: 12, scope: !658)
!658 = distinct !DILexicalBlock(scope: !646, file: !2, line: 288, column: 9)
!659 = !DILocation(line: 289, column: 11, scope: !658)
!660 = !DILocation(line: 289, column: 6, scope: !658)
!661 = !DILocation(line: 289, column: 9, scope: !658)
!662 = !DILocation(line: 290, column: 5, scope: !658)
!663 = !DILocation(line: 292, column: 3, scope: !573)
!664 = !DILocation(line: 281, column: 3, scope: !573)
!665 = distinct !{!665, !666, !667}
!666 = !DILocation(line: 281, column: 3, scope: !574)
!667 = !DILocation(line: 292, column: 3, scope: !574)
!668 = distinct !{!668, !619, !669, !592}
!669 = !DILocation(line: 293, column: 2, scope: !563)
!670 = !DILocation(line: 294, column: 13, scope: !671)
!671 = distinct !DILexicalBlock(scope: !563, file: !2, line: 294, column: 6)
!672 = !DILocation(line: 294, column: 6, scope: !671)
!673 = !DILocation(line: 294, column: 19, scope: !671)
!674 = !DILocation(line: 294, column: 6, scope: !563)
!675 = !DILocation(line: 295, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !2, line: 295, column: 7)
!677 = !DILocation(line: 295, column: 13, scope: !676)
!678 = !DILocation(line: 295, column: 7, scope: !671)
!679 = !DILocation(line: 296, column: 12, scope: !676)
!680 = !DILocation(line: 296, column: 4, scope: !676)
!681 = !DILocation(line: 295, column: 16, scope: !676)
!682 = !DILocation(line: 297, column: 2, scope: !563)
!683 = !DILocation(line: 298, column: 1, scope: !563)
!684 = !DISubprogram(name: "isc_random_uniform", scope: !685, file: !685, line: 53, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DIFile(filename: "../include/isc/random.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "edf29be04d446fd54280a24722b64007")
!686 = !DISubroutineType(types: !687)
!687 = !{!429, !429}
!688 = !DISubprogram(name: "link", scope: !689, file: !689, line: 819, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!689 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!690 = !DISubroutineType(types: !691)
!691 = !{!66, !215, !215}
!692 = !DISubprogram(name: "strchr", scope: !552, file: !552, line: 246, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!693 = !DISubprogram(name: "unlink", scope: !689, file: !689, line: 858, type: !694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = !DISubroutineType(types: !695)
!695 = !{!66, !215}
!696 = distinct !DISubprogram(name: "isc_file_openunique", scope: !2, file: !2, line: 301, type: !697, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !749)
!697 = !DISubroutineType(types: !698)
!698 = !{!146, !454, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !702, line: 7, baseType: !703)
!702 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !704, line: 49, size: 1728, elements: !705)
!704 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !721, !723, !724, !725, !726, !728, !730, !732, !735, !737, !740, !743, !744, !745, !746, !747}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !703, file: !704, line: 51, baseType: !66, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !703, file: !704, line: 54, baseType: !454, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !703, file: !704, line: 55, baseType: !454, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !703, file: !704, line: 56, baseType: !454, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !703, file: !704, line: 57, baseType: !454, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !703, file: !704, line: 58, baseType: !454, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !703, file: !704, line: 59, baseType: !454, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !703, file: !704, line: 60, baseType: !454, size: 64, offset: 448)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !703, file: !704, line: 61, baseType: !454, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !703, file: !704, line: 64, baseType: !454, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !703, file: !704, line: 65, baseType: !454, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !703, file: !704, line: 66, baseType: !454, size: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !703, file: !704, line: 68, baseType: !719, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !704, line: 36, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !703, file: !704, line: 70, baseType: !722, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !703, file: !704, line: 72, baseType: !66, size: 32, offset: 896)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !703, file: !704, line: 73, baseType: !66, size: 32, offset: 928)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !703, file: !704, line: 74, baseType: !151, size: 64, offset: 960)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !703, file: !704, line: 77, baseType: !727, size: 16, offset: 1024)
!727 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !703, file: !704, line: 78, baseType: !729, size: 8, offset: 1040)
!729 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !703, file: !704, line: 79, baseType: !731, size: 8, offset: 1048)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !45)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !703, file: !704, line: 81, baseType: !733, size: 64, offset: 1088)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !704, line: 43, baseType: null)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !703, file: !704, line: 89, baseType: !736, size: 64, offset: 1152)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !61)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !703, file: !704, line: 91, baseType: !738, size: 64, offset: 1216)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !704, line: 37, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !703, file: !704, line: 92, baseType: !741, size: 64, offset: 1280)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !704, line: 38, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !703, file: !704, line: 93, baseType: !722, size: 64, offset: 1344)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !703, file: !704, line: 94, baseType: !60, size: 64, offset: 1408)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !703, file: !704, line: 95, baseType: !70, size: 64, offset: 1472)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !703, file: !704, line: 96, baseType: !66, size: 32, offset: 1536)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !703, file: !704, line: 98, baseType: !748, size: 160, offset: 1568)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !16)
!749 = !{!750, !751, !752}
!750 = !DILocalVariable(name: "templet", arg: 1, scope: !696, file: !2, line: 301, type: !454)
!751 = !DILocalVariable(name: "fp", arg: 2, scope: !696, file: !2, line: 301, type: !699)
!752 = !DILocalVariable(name: "mode", scope: !696, file: !2, line: 302, type: !66)
!753 = !DILocation(line: 301, column: 27, scope: !696)
!754 = !DILocation(line: 301, column: 43, scope: !696)
!755 = !DILocation(line: 302, column: 2, scope: !696)
!756 = !DILocation(line: 302, column: 6, scope: !696)
!757 = !DILocation(line: 303, column: 34, scope: !696)
!758 = !DILocation(line: 303, column: 43, scope: !696)
!759 = !DILocation(line: 303, column: 49, scope: !696)
!760 = !DILocation(line: 303, column: 10, scope: !696)
!761 = !DILocation(line: 304, column: 1, scope: !696)
!762 = !DILocation(line: 303, column: 2, scope: !696)
!763 = distinct !DISubprogram(name: "isc_file_openuniquemode", scope: !2, file: !2, line: 313, type: !764, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!146, !454, !66, !699}
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775}
!767 = !DILocalVariable(name: "templet", arg: 1, scope: !763, file: !2, line: 313, type: !454)
!768 = !DILocalVariable(name: "mode", arg: 2, scope: !763, file: !2, line: 313, type: !66)
!769 = !DILocalVariable(name: "fp", arg: 3, scope: !763, file: !2, line: 313, type: !699)
!770 = !DILocalVariable(name: "fd", scope: !763, file: !2, line: 314, type: !66)
!771 = !DILocalVariable(name: "f", scope: !763, file: !2, line: 315, type: !700)
!772 = !DILocalVariable(name: "result", scope: !763, file: !2, line: 316, type: !146)
!773 = !DILocalVariable(name: "x", scope: !763, file: !2, line: 317, type: !454)
!774 = !DILocalVariable(name: "cp", scope: !763, file: !2, line: 318, type: !454)
!775 = !DILocalVariable(name: "t", scope: !776, file: !2, line: 340, type: !454)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 339, column: 18)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 339, column: 3)
!778 = distinct !DILexicalBlock(scope: !779, file: !2, line: 339, column: 3)
!779 = distinct !DILexicalBlock(scope: !763, file: !2, line: 336, column: 66)
!780 = !DILocation(line: 313, column: 31, scope: !763)
!781 = !DILocation(line: 313, column: 44, scope: !763)
!782 = !DILocation(line: 313, column: 57, scope: !763)
!783 = !DILocation(line: 314, column: 2, scope: !763)
!784 = !DILocation(line: 314, column: 6, scope: !763)
!785 = !DILocation(line: 315, column: 2, scope: !763)
!786 = !DILocation(line: 315, column: 8, scope: !763)
!787 = !DILocation(line: 316, column: 2, scope: !763)
!788 = !DILocation(line: 316, column: 15, scope: !763)
!789 = !DILocation(line: 317, column: 2, scope: !763)
!790 = !DILocation(line: 317, column: 8, scope: !763)
!791 = !DILocation(line: 318, column: 2, scope: !763)
!792 = !DILocation(line: 318, column: 8, scope: !763)
!793 = !DILocation(line: 320, column: 2, scope: !763)
!794 = !DILocation(line: 321, column: 2, scope: !763)
!795 = !DILocation(line: 0, scope: !763)
!796 = !DILocation(line: 323, column: 7, scope: !763)
!797 = !DILocation(line: 323, column: 5, scope: !763)
!798 = !DILocation(line: 324, column: 2, scope: !763)
!799 = !DILocation(line: 324, column: 10, scope: !763)
!800 = !DILocation(line: 324, column: 9, scope: !763)
!801 = !DILocation(line: 324, column: 13, scope: !763)
!802 = !DILocation(line: 325, column: 5, scope: !763)
!803 = distinct !{!803, !798, !802, !592}
!804 = !DILocation(line: 326, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !763, file: !2, line: 326, column: 6)
!806 = !DILocation(line: 326, column: 12, scope: !805)
!807 = !DILocation(line: 326, column: 9, scope: !805)
!808 = !DILocation(line: 326, column: 6, scope: !763)
!809 = !DILocation(line: 327, column: 3, scope: !805)
!810 = !DILocation(line: 329, column: 8, scope: !763)
!811 = !DILocation(line: 329, column: 4, scope: !763)
!812 = !DILocation(line: 330, column: 2, scope: !763)
!813 = !DILocation(line: 330, column: 9, scope: !763)
!814 = !DILocation(line: 330, column: 15, scope: !763)
!815 = !DILocation(line: 330, column: 12, scope: !763)
!816 = !DILocation(line: 330, column: 23, scope: !763)
!817 = !DILocation(line: 330, column: 27, scope: !763)
!818 = !DILocation(line: 330, column: 26, scope: !763)
!819 = !DILocation(line: 330, column: 30, scope: !763)
!820 = !DILocation(line: 331, column: 17, scope: !821)
!821 = distinct !DILexicalBlock(scope: !763, file: !2, line: 330, column: 38)
!822 = !DILocation(line: 331, column: 9, scope: !821)
!823 = !DILocation(line: 331, column: 4, scope: !821)
!824 = !DILocation(line: 331, column: 7, scope: !821)
!825 = !DILocation(line: 332, column: 9, scope: !821)
!826 = !DILocation(line: 332, column: 5, scope: !821)
!827 = distinct !{!827, !812, !828, !592}
!828 = !DILocation(line: 333, column: 2, scope: !763)
!829 = !DILocation(line: 336, column: 2, scope: !763)
!830 = !DILocation(line: 336, column: 20, scope: !763)
!831 = !DILocation(line: 336, column: 52, scope: !763)
!832 = !DILocation(line: 336, column: 15, scope: !763)
!833 = !DILocation(line: 336, column: 13, scope: !763)
!834 = !DILocation(line: 336, column: 59, scope: !763)
!835 = !DILocation(line: 337, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !779, file: !2, line: 337, column: 7)
!837 = !DILocation(line: 337, column: 13, scope: !836)
!838 = !DILocation(line: 337, column: 7, scope: !779)
!839 = !DILocation(line: 338, column: 12, scope: !836)
!840 = !DILocation(line: 338, column: 4, scope: !836)
!841 = !DILocation(line: 339, column: 13, scope: !778)
!842 = !DILocation(line: 339, column: 11, scope: !778)
!843 = !DILocation(line: 339, column: 8, scope: !778)
!844 = !DILocation(line: 340, column: 4, scope: !776)
!845 = !DILocation(line: 340, column: 10, scope: !776)
!846 = !DILocation(line: 341, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !776, file: !2, line: 341, column: 8)
!848 = !DILocation(line: 341, column: 8, scope: !847)
!849 = !DILocation(line: 341, column: 12, scope: !847)
!850 = !DILocation(line: 341, column: 8, scope: !776)
!851 = !DILocation(line: 342, column: 5, scope: !847)
!852 = !DILocation(line: 343, column: 25, scope: !776)
!853 = !DILocation(line: 343, column: 24, scope: !776)
!854 = !DILocation(line: 343, column: 8, scope: !776)
!855 = !DILocation(line: 343, column: 6, scope: !776)
!856 = !DILocation(line: 344, column: 8, scope: !857)
!857 = distinct !DILexicalBlock(scope: !776, file: !2, line: 344, column: 8)
!858 = !DILocation(line: 344, column: 10, scope: !857)
!859 = !DILocation(line: 344, column: 18, scope: !857)
!860 = !DILocation(line: 344, column: 22, scope: !857)
!861 = !DILocation(line: 344, column: 21, scope: !857)
!862 = !DILocation(line: 344, column: 26, scope: !857)
!863 = !DILocation(line: 344, column: 8, scope: !776)
!864 = !DILocation(line: 345, column: 13, scope: !857)
!865 = !DILocation(line: 345, column: 8, scope: !857)
!866 = !DILocation(line: 345, column: 11, scope: !857)
!867 = !DILocation(line: 345, column: 5, scope: !857)
!868 = !DILocation(line: 347, column: 12, scope: !869)
!869 = distinct !DILexicalBlock(scope: !857, file: !2, line: 346, column: 9)
!870 = !DILocation(line: 347, column: 11, scope: !869)
!871 = !DILocation(line: 347, column: 6, scope: !869)
!872 = !DILocation(line: 347, column: 9, scope: !869)
!873 = !DILocation(line: 348, column: 5, scope: !869)
!874 = !DILocation(line: 350, column: 3, scope: !777)
!875 = !DILocation(line: 339, column: 3, scope: !777)
!876 = distinct !{!876, !877, !878}
!877 = !DILocation(line: 339, column: 3, scope: !778)
!878 = !DILocation(line: 350, column: 3, scope: !778)
!879 = distinct !{!879, !829, !880, !592}
!880 = !DILocation(line: 351, column: 2, scope: !763)
!881 = !DILocation(line: 352, column: 13, scope: !763)
!882 = !DILocation(line: 352, column: 6, scope: !763)
!883 = !DILocation(line: 352, column: 4, scope: !763)
!884 = !DILocation(line: 353, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !763, file: !2, line: 353, column: 6)
!886 = !DILocation(line: 353, column: 8, scope: !885)
!887 = !DILocation(line: 353, column: 6, scope: !763)
!888 = !DILocation(line: 354, column: 12, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !2, line: 353, column: 17)
!890 = !DILocation(line: 354, column: 10, scope: !889)
!891 = !DILocation(line: 355, column: 14, scope: !892)
!892 = distinct !DILexicalBlock(scope: !889, file: !2, line: 355, column: 7)
!893 = !DILocation(line: 355, column: 7, scope: !892)
!894 = !DILocation(line: 355, column: 23, scope: !892)
!895 = !DILocation(line: 355, column: 7, scope: !889)
!896 = !DILocation(line: 356, column: 18, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !2, line: 355, column: 28)
!898 = !DILocation(line: 358, column: 34, scope: !897)
!899 = !DILocation(line: 356, column: 4, scope: !897)
!900 = !DILocation(line: 359, column: 3, scope: !897)
!901 = !DILocation(line: 360, column: 15, scope: !889)
!902 = !DILocation(line: 360, column: 9, scope: !889)
!903 = !DILocation(line: 361, column: 2, scope: !889)
!904 = !DILocation(line: 362, column: 9, scope: !885)
!905 = !DILocation(line: 362, column: 4, scope: !885)
!906 = !DILocation(line: 362, column: 7, scope: !885)
!907 = !DILocation(line: 364, column: 10, scope: !763)
!908 = !DILocation(line: 364, column: 2, scope: !763)
!909 = !DILocation(line: 365, column: 1, scope: !763)
!910 = distinct !DISubprogram(name: "isc_file_openuniqueprivate", scope: !2, file: !2, line: 307, type: !697, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !911)
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(name: "templet", arg: 1, scope: !910, file: !2, line: 307, type: !454)
!913 = !DILocalVariable(name: "fp", arg: 2, scope: !910, file: !2, line: 307, type: !699)
!914 = !DILocalVariable(name: "mode", scope: !910, file: !2, line: 308, type: !66)
!915 = !DILocation(line: 307, column: 34, scope: !910)
!916 = !DILocation(line: 307, column: 50, scope: !910)
!917 = !DILocation(line: 308, column: 2, scope: !910)
!918 = !DILocation(line: 308, column: 6, scope: !910)
!919 = !DILocation(line: 309, column: 34, scope: !910)
!920 = !DILocation(line: 309, column: 43, scope: !910)
!921 = !DILocation(line: 309, column: 49, scope: !910)
!922 = !DILocation(line: 309, column: 10, scope: !910)
!923 = !DILocation(line: 310, column: 1, scope: !910)
!924 = !DILocation(line: 309, column: 2, scope: !910)
!925 = !DISubprogram(name: "open", scope: !150, file: !150, line: 181, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DISubroutineType(types: !927)
!927 = !{!66, !215, !66, null}
!928 = !DISubprogram(name: "fdopen", scope: !929, file: !929, line: 293, type: !930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!930 = !DISubroutineType(types: !931)
!931 = !{!700, !66, !215}
!932 = !DISubprogram(name: "remove", scope: !929, file: !929, line: 152, type: !694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DISubprogram(name: "isc_log_write", scope: !934, file: !934, line: 576, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DIFile(filename: "../include/isc/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "6c5d6bf932d34a38240a36d83b90e60a")
!935 = !DISubroutineType(types: !936)
!936 = !{null, !937, !940, !946, !66, !215, null}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_log_t", file: !147, line: 55, baseType: !939)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_log", file: !147, line: 55, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logcategory_t", file: !147, line: 56, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logcategory", file: !934, line: 104, size: 128, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !942, file: !934, line: 105, baseType: !215, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !942, file: !934, line: 106, baseType: !53, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logmodule_t", file: !147, line: 58, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logmodule", file: !934, line: 112, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !948, file: !934, line: 113, baseType: !215, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !948, file: !934, line: 114, baseType: !53, size: 32, offset: 64)
!952 = !DISubprogram(name: "close", scope: !689, file: !689, line: 358, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DISubroutineType(types: !954)
!954 = !{!66, !66}
!955 = distinct !DISubprogram(name: "isc_file_bopenunique", scope: !2, file: !2, line: 368, type: !697, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !956)
!956 = !{!957, !958, !959}
!957 = !DILocalVariable(name: "templet", arg: 1, scope: !955, file: !2, line: 368, type: !454)
!958 = !DILocalVariable(name: "fp", arg: 2, scope: !955, file: !2, line: 368, type: !699)
!959 = !DILocalVariable(name: "mode", scope: !955, file: !2, line: 369, type: !66)
!960 = !DILocation(line: 368, column: 28, scope: !955)
!961 = !DILocation(line: 368, column: 44, scope: !955)
!962 = !DILocation(line: 369, column: 2, scope: !955)
!963 = !DILocation(line: 369, column: 6, scope: !955)
!964 = !DILocation(line: 370, column: 34, scope: !955)
!965 = !DILocation(line: 370, column: 43, scope: !955)
!966 = !DILocation(line: 370, column: 49, scope: !955)
!967 = !DILocation(line: 370, column: 10, scope: !955)
!968 = !DILocation(line: 371, column: 1, scope: !955)
!969 = !DILocation(line: 370, column: 2, scope: !955)
!970 = distinct !DISubprogram(name: "isc_file_bopenuniqueprivate", scope: !2, file: !2, line: 374, type: !697, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !971)
!971 = !{!972, !973, !974}
!972 = !DILocalVariable(name: "templet", arg: 1, scope: !970, file: !2, line: 374, type: !454)
!973 = !DILocalVariable(name: "fp", arg: 2, scope: !970, file: !2, line: 374, type: !699)
!974 = !DILocalVariable(name: "mode", scope: !970, file: !2, line: 375, type: !66)
!975 = !DILocation(line: 374, column: 35, scope: !970)
!976 = !DILocation(line: 374, column: 51, scope: !970)
!977 = !DILocation(line: 375, column: 2, scope: !970)
!978 = !DILocation(line: 375, column: 6, scope: !970)
!979 = !DILocation(line: 376, column: 34, scope: !970)
!980 = !DILocation(line: 376, column: 43, scope: !970)
!981 = !DILocation(line: 376, column: 49, scope: !970)
!982 = !DILocation(line: 376, column: 10, scope: !970)
!983 = !DILocation(line: 377, column: 1, scope: !970)
!984 = !DILocation(line: 376, column: 2, scope: !970)
!985 = distinct !DISubprogram(name: "isc_file_bopenuniquemode", scope: !2, file: !2, line: 380, type: !764, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !986)
!986 = !{!987, !988, !989}
!987 = !DILocalVariable(name: "templet", arg: 1, scope: !985, file: !2, line: 380, type: !454)
!988 = !DILocalVariable(name: "mode", arg: 2, scope: !985, file: !2, line: 380, type: !66)
!989 = !DILocalVariable(name: "fp", arg: 3, scope: !985, file: !2, line: 380, type: !699)
!990 = !DILocation(line: 380, column: 32, scope: !985)
!991 = !DILocation(line: 380, column: 45, scope: !985)
!992 = !DILocation(line: 380, column: 58, scope: !985)
!993 = !DILocation(line: 381, column: 34, scope: !985)
!994 = !DILocation(line: 381, column: 43, scope: !985)
!995 = !DILocation(line: 381, column: 49, scope: !985)
!996 = !DILocation(line: 381, column: 10, scope: !985)
!997 = !DILocation(line: 381, column: 2, scope: !985)
!998 = distinct !DISubprogram(name: "isc_file_remove", scope: !2, file: !2, line: 385, type: !999, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!146, !215}
!1001 = !{!1002, !1003}
!1002 = !DILocalVariable(name: "filename", arg: 1, scope: !998, file: !2, line: 385, type: !215)
!1003 = !DILocalVariable(name: "r", scope: !998, file: !2, line: 386, type: !66)
!1004 = !DILocation(line: 385, column: 29, scope: !998)
!1005 = !DILocation(line: 386, column: 2, scope: !998)
!1006 = !DILocation(line: 386, column: 6, scope: !998)
!1007 = !DILocation(line: 388, column: 2, scope: !998)
!1008 = !DILocation(line: 390, column: 13, scope: !998)
!1009 = !DILocation(line: 390, column: 6, scope: !998)
!1010 = !DILocation(line: 390, column: 4, scope: !998)
!1011 = !DILocation(line: 391, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !998, file: !2, line: 391, column: 6)
!1013 = !DILocation(line: 391, column: 8, scope: !1012)
!1014 = !DILocation(line: 391, column: 6, scope: !998)
!1015 = !DILocation(line: 392, column: 3, scope: !1012)
!1016 = !DILocation(line: 394, column: 11, scope: !1012)
!1017 = !DILocation(line: 394, column: 3, scope: !1012)
!1018 = !DILocation(line: 395, column: 1, scope: !998)
!1019 = distinct !DISubprogram(name: "isc_file_rename", scope: !2, file: !2, line: 398, type: !1020, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!146, !215, !215}
!1022 = !{!1023, !1024, !1025}
!1023 = !DILocalVariable(name: "oldname", arg: 1, scope: !1019, file: !2, line: 398, type: !215)
!1024 = !DILocalVariable(name: "newname", arg: 2, scope: !1019, file: !2, line: 398, type: !215)
!1025 = !DILocalVariable(name: "r", scope: !1019, file: !2, line: 399, type: !66)
!1026 = !DILocation(line: 398, column: 29, scope: !1019)
!1027 = !DILocation(line: 398, column: 50, scope: !1019)
!1028 = !DILocation(line: 399, column: 2, scope: !1019)
!1029 = !DILocation(line: 399, column: 6, scope: !1019)
!1030 = !DILocation(line: 401, column: 2, scope: !1019)
!1031 = !DILocation(line: 402, column: 2, scope: !1019)
!1032 = !DILocation(line: 404, column: 13, scope: !1019)
!1033 = !DILocation(line: 404, column: 22, scope: !1019)
!1034 = !DILocation(line: 404, column: 6, scope: !1019)
!1035 = !DILocation(line: 404, column: 4, scope: !1019)
!1036 = !DILocation(line: 405, column: 6, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 405, column: 6)
!1038 = !DILocation(line: 405, column: 8, scope: !1037)
!1039 = !DILocation(line: 405, column: 6, scope: !1019)
!1040 = !DILocation(line: 406, column: 3, scope: !1037)
!1041 = !DILocation(line: 408, column: 11, scope: !1037)
!1042 = !DILocation(line: 408, column: 3, scope: !1037)
!1043 = !DILocation(line: 409, column: 1, scope: !1019)
!1044 = !DISubprogram(name: "rename", scope: !929, file: !929, line: 154, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = distinct !DISubprogram(name: "isc_file_exists", scope: !2, file: !2, line: 412, type: !1046, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1048)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!445, !215}
!1048 = !{!1049, !1050}
!1049 = !DILocalVariable(name: "pathname", arg: 1, scope: !1045, file: !2, line: 412, type: !215)
!1050 = !DILocalVariable(name: "stats", scope: !1045, file: !2, line: 413, type: !157)
!1051 = !DILocation(line: 412, column: 29, scope: !1045)
!1052 = !DILocation(line: 413, column: 2, scope: !1045)
!1053 = !DILocation(line: 413, column: 14, scope: !1045)
!1054 = !DILocation(line: 415, column: 2, scope: !1045)
!1055 = !DILocation(line: 417, column: 21, scope: !1045)
!1056 = !DILocation(line: 417, column: 10, scope: !1045)
!1057 = !DILocation(line: 417, column: 39, scope: !1045)
!1058 = !DILocation(line: 418, column: 1, scope: !1045)
!1059 = !DILocation(line: 417, column: 2, scope: !1045)
!1060 = distinct !DISubprogram(name: "isc_file_isplainfile", scope: !2, file: !2, line: 421, type: !999, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1061)
!1061 = !{!1062, !1063}
!1062 = !DILocalVariable(name: "filename", arg: 1, scope: !1060, file: !2, line: 421, type: !215)
!1063 = !DILocalVariable(name: "filestat", scope: !1060, file: !2, line: 425, type: !157)
!1064 = !DILocation(line: 421, column: 34, scope: !1060)
!1065 = !DILocation(line: 425, column: 2, scope: !1060)
!1066 = !DILocation(line: 425, column: 14, scope: !1060)
!1067 = !DILocation(line: 426, column: 2, scope: !1060)
!1068 = !DILocation(line: 428, column: 12, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 428, column: 6)
!1070 = !DILocation(line: 428, column: 7, scope: !1069)
!1071 = !DILocation(line: 428, column: 34, scope: !1069)
!1072 = !DILocation(line: 428, column: 6, scope: !1060)
!1073 = !DILocation(line: 429, column: 10, scope: !1069)
!1074 = !DILocation(line: 429, column: 3, scope: !1069)
!1075 = !DILocation(line: 431, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 431, column: 5)
!1077 = !DILocation(line: 431, column: 5, scope: !1060)
!1078 = !DILocation(line: 432, column: 3, scope: !1076)
!1079 = !DILocation(line: 434, column: 2, scope: !1060)
!1080 = !DILocation(line: 435, column: 1, scope: !1060)
!1081 = !DISubprogram(name: "stat", scope: !1082, file: !1082, line: 205, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!66, !1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!1086 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!1087 = distinct !DISubprogram(name: "isc_file_isplainfilefd", scope: !2, file: !2, line: 438, type: !1088, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!146, !66}
!1090 = !{!1091, !1092}
!1091 = !DILocalVariable(name: "fd", arg: 1, scope: !1087, file: !2, line: 438, type: !66)
!1092 = !DILocalVariable(name: "filestat", scope: !1087, file: !2, line: 442, type: !157)
!1093 = !DILocation(line: 438, column: 28, scope: !1087)
!1094 = !DILocation(line: 442, column: 2, scope: !1087)
!1095 = !DILocation(line: 442, column: 14, scope: !1087)
!1096 = !DILocation(line: 443, column: 2, scope: !1087)
!1097 = !DILocation(line: 445, column: 13, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 445, column: 6)
!1099 = !DILocation(line: 445, column: 7, scope: !1098)
!1100 = !DILocation(line: 445, column: 29, scope: !1098)
!1101 = !DILocation(line: 445, column: 6, scope: !1087)
!1102 = !DILocation(line: 446, column: 10, scope: !1098)
!1103 = !DILocation(line: 446, column: 3, scope: !1098)
!1104 = !DILocation(line: 448, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 448, column: 5)
!1106 = !DILocation(line: 448, column: 5, scope: !1087)
!1107 = !DILocation(line: 449, column: 3, scope: !1105)
!1108 = !DILocation(line: 451, column: 2, scope: !1087)
!1109 = !DILocation(line: 452, column: 1, scope: !1087)
!1110 = !DISubprogram(name: "fstat", scope: !1082, file: !1082, line: 210, type: !1111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!66, !66, !220}
!1113 = distinct !DISubprogram(name: "isc_file_isdirectory", scope: !2, file: !2, line: 455, type: !999, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1114)
!1114 = !{!1115, !1116}
!1115 = !DILocalVariable(name: "filename", arg: 1, scope: !1113, file: !2, line: 455, type: !215)
!1116 = !DILocalVariable(name: "filestat", scope: !1113, file: !2, line: 460, type: !157)
!1117 = !DILocation(line: 455, column: 34, scope: !1113)
!1118 = !DILocation(line: 460, column: 2, scope: !1113)
!1119 = !DILocation(line: 460, column: 14, scope: !1113)
!1120 = !DILocation(line: 461, column: 2, scope: !1113)
!1121 = !DILocation(line: 463, column: 12, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 463, column: 6)
!1123 = !DILocation(line: 463, column: 7, scope: !1122)
!1124 = !DILocation(line: 463, column: 34, scope: !1122)
!1125 = !DILocation(line: 463, column: 6, scope: !1113)
!1126 = !DILocation(line: 464, column: 10, scope: !1122)
!1127 = !DILocation(line: 464, column: 3, scope: !1122)
!1128 = !DILocation(line: 466, column: 7, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 466, column: 5)
!1130 = !DILocation(line: 466, column: 5, scope: !1113)
!1131 = !DILocation(line: 467, column: 3, scope: !1129)
!1132 = !DILocation(line: 469, column: 2, scope: !1113)
!1133 = !DILocation(line: 470, column: 1, scope: !1113)
!1134 = distinct !DISubprogram(name: "isc_file_isabsolute", scope: !2, file: !2, line: 474, type: !1046, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1135)
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "filename", arg: 1, scope: !1134, file: !2, line: 474, type: !215)
!1137 = !DILocation(line: 474, column: 33, scope: !1134)
!1138 = !DILocation(line: 475, column: 2, scope: !1134)
!1139 = !DILocation(line: 476, column: 10, scope: !1134)
!1140 = !DILocation(line: 476, column: 22, scope: !1134)
!1141 = !DILocation(line: 476, column: 2, scope: !1134)
!1142 = distinct !DISubprogram(name: "isc_file_iscurrentdir", scope: !2, file: !2, line: 480, type: !1046, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1143)
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "filename", arg: 1, scope: !1142, file: !2, line: 480, type: !215)
!1145 = !DILocation(line: 480, column: 35, scope: !1142)
!1146 = !DILocation(line: 481, column: 2, scope: !1142)
!1147 = !DILocation(line: 482, column: 10, scope: !1142)
!1148 = !DILocation(line: 482, column: 22, scope: !1142)
!1149 = !DILocation(line: 482, column: 29, scope: !1142)
!1150 = !DILocation(line: 482, column: 32, scope: !1142)
!1151 = !DILocation(line: 482, column: 44, scope: !1142)
!1152 = !DILocation(line: 0, scope: !1142)
!1153 = !DILocation(line: 482, column: 2, scope: !1142)
!1154 = distinct !DISubprogram(name: "isc_file_ischdiridempotent", scope: !2, file: !2, line: 486, type: !1046, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1155)
!1155 = !{!1156}
!1156 = !DILocalVariable(name: "filename", arg: 1, scope: !1154, file: !2, line: 486, type: !215)
!1157 = !DILocation(line: 486, column: 40, scope: !1154)
!1158 = !DILocation(line: 487, column: 2, scope: !1154)
!1159 = !DILocation(line: 488, column: 26, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 488, column: 6)
!1161 = !DILocation(line: 488, column: 6, scope: !1160)
!1162 = !DILocation(line: 488, column: 6, scope: !1154)
!1163 = !DILocation(line: 489, column: 3, scope: !1160)
!1164 = !DILocation(line: 490, column: 28, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 490, column: 6)
!1166 = !DILocation(line: 490, column: 6, scope: !1165)
!1167 = !DILocation(line: 490, column: 6, scope: !1154)
!1168 = !DILocation(line: 491, column: 3, scope: !1165)
!1169 = !DILocation(line: 492, column: 2, scope: !1154)
!1170 = !DILocation(line: 493, column: 1, scope: !1154)
!1171 = distinct !DISubprogram(name: "isc_file_basename", scope: !2, file: !2, line: 496, type: !1172, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!215, !215}
!1174 = !{!1175, !1176}
!1175 = !DILocalVariable(name: "filename", arg: 1, scope: !1171, file: !2, line: 496, type: !215)
!1176 = !DILocalVariable(name: "s", scope: !1171, file: !2, line: 497, type: !215)
!1177 = !DILocation(line: 496, column: 31, scope: !1171)
!1178 = !DILocation(line: 497, column: 2, scope: !1171)
!1179 = !DILocation(line: 497, column: 14, scope: !1171)
!1180 = !DILocation(line: 499, column: 2, scope: !1171)
!1181 = !DILocation(line: 501, column: 14, scope: !1171)
!1182 = !DILocation(line: 501, column: 6, scope: !1171)
!1183 = !DILocation(line: 501, column: 4, scope: !1171)
!1184 = !DILocation(line: 502, column: 6, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 502, column: 6)
!1186 = !DILocation(line: 502, column: 8, scope: !1185)
!1187 = !DILocation(line: 502, column: 6, scope: !1171)
!1188 = !DILocation(line: 503, column: 11, scope: !1185)
!1189 = !DILocation(line: 503, column: 3, scope: !1185)
!1190 = !DILocation(line: 505, column: 10, scope: !1171)
!1191 = !DILocation(line: 505, column: 12, scope: !1171)
!1192 = !DILocation(line: 505, column: 2, scope: !1171)
!1193 = !DILocation(line: 506, column: 1, scope: !1171)
!1194 = distinct !DISubprogram(name: "isc_file_progname", scope: !2, file: !2, line: 509, type: !452, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200}
!1196 = !DILocalVariable(name: "filename", arg: 1, scope: !1194, file: !2, line: 509, type: !215)
!1197 = !DILocalVariable(name: "buf", arg: 2, scope: !1194, file: !2, line: 509, type: !454)
!1198 = !DILocalVariable(name: "buflen", arg: 3, scope: !1194, file: !2, line: 509, type: !70)
!1199 = !DILocalVariable(name: "base", scope: !1194, file: !2, line: 510, type: !215)
!1200 = !DILocalVariable(name: "len", scope: !1194, file: !2, line: 511, type: !70)
!1201 = !DILocation(line: 509, column: 31, scope: !1194)
!1202 = !DILocation(line: 509, column: 47, scope: !1194)
!1203 = !DILocation(line: 509, column: 59, scope: !1194)
!1204 = !DILocation(line: 510, column: 2, scope: !1194)
!1205 = !DILocation(line: 510, column: 14, scope: !1194)
!1206 = !DILocation(line: 511, column: 2, scope: !1194)
!1207 = !DILocation(line: 511, column: 9, scope: !1194)
!1208 = !DILocation(line: 513, column: 2, scope: !1194)
!1209 = !DILocation(line: 514, column: 2, scope: !1194)
!1210 = !DILocation(line: 516, column: 27, scope: !1194)
!1211 = !DILocation(line: 516, column: 9, scope: !1194)
!1212 = !DILocation(line: 516, column: 7, scope: !1194)
!1213 = !DILocation(line: 517, column: 15, scope: !1194)
!1214 = !DILocation(line: 517, column: 8, scope: !1194)
!1215 = !DILocation(line: 517, column: 21, scope: !1194)
!1216 = !DILocation(line: 517, column: 6, scope: !1194)
!1217 = !DILocation(line: 519, column: 6, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 519, column: 6)
!1219 = !DILocation(line: 519, column: 12, scope: !1218)
!1220 = !DILocation(line: 519, column: 10, scope: !1218)
!1221 = !DILocation(line: 519, column: 6, scope: !1194)
!1222 = !DILocation(line: 520, column: 3, scope: !1218)
!1223 = !DILocation(line: 521, column: 10, scope: !1194)
!1224 = !DILocation(line: 521, column: 15, scope: !1194)
!1225 = !DILocation(line: 521, column: 21, scope: !1194)
!1226 = !DILocation(line: 521, column: 2, scope: !1194)
!1227 = !DILocation(line: 523, column: 2, scope: !1194)
!1228 = !DILocation(line: 524, column: 1, scope: !1194)
!1229 = distinct !DISubprogram(name: "isc_file_absolutepath", scope: !2, file: !2, line: 560, type: !452, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1230)
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DILocalVariable(name: "filename", arg: 1, scope: !1229, file: !2, line: 560, type: !215)
!1232 = !DILocalVariable(name: "path", arg: 2, scope: !1229, file: !2, line: 560, type: !454)
!1233 = !DILocalVariable(name: "pathlen", arg: 3, scope: !1229, file: !2, line: 560, type: !70)
!1234 = !DILocalVariable(name: "result", scope: !1229, file: !2, line: 561, type: !146)
!1235 = !DILocation(line: 560, column: 35, scope: !1229)
!1236 = !DILocation(line: 560, column: 51, scope: !1229)
!1237 = !DILocation(line: 560, column: 64, scope: !1229)
!1238 = !DILocation(line: 561, column: 2, scope: !1229)
!1239 = !DILocation(line: 561, column: 15, scope: !1229)
!1240 = !DILocation(line: 562, column: 23, scope: !1229)
!1241 = !DILocation(line: 562, column: 29, scope: !1229)
!1242 = !DILocation(line: 562, column: 11, scope: !1229)
!1243 = !DILocation(line: 562, column: 9, scope: !1229)
!1244 = !DILocation(line: 563, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 563, column: 6)
!1246 = !DILocation(line: 563, column: 13, scope: !1245)
!1247 = !DILocation(line: 563, column: 6, scope: !1229)
!1248 = !DILocation(line: 564, column: 11, scope: !1245)
!1249 = !DILocation(line: 564, column: 3, scope: !1245)
!1250 = !DILocation(line: 565, column: 13, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 565, column: 6)
!1252 = !DILocation(line: 565, column: 6, scope: !1251)
!1253 = !DILocation(line: 565, column: 28, scope: !1251)
!1254 = !DILocation(line: 565, column: 21, scope: !1251)
!1255 = !DILocation(line: 565, column: 19, scope: !1251)
!1256 = !DILocation(line: 565, column: 38, scope: !1251)
!1257 = !DILocation(line: 565, column: 44, scope: !1251)
!1258 = !DILocation(line: 565, column: 42, scope: !1251)
!1259 = !DILocation(line: 565, column: 6, scope: !1229)
!1260 = !DILocation(line: 566, column: 3, scope: !1251)
!1261 = !DILocation(line: 567, column: 10, scope: !1229)
!1262 = !DILocation(line: 567, column: 16, scope: !1229)
!1263 = !DILocation(line: 567, column: 26, scope: !1229)
!1264 = !DILocation(line: 567, column: 2, scope: !1229)
!1265 = !DILocation(line: 568, column: 2, scope: !1229)
!1266 = !DILocation(line: 569, column: 1, scope: !1229)
!1267 = distinct !DISubprogram(name: "dir_current", scope: !2, file: !2, line: 533, type: !1268, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!146, !454, !70}
!1270 = !{!1271, !1272, !1273, !1274}
!1271 = !DILocalVariable(name: "dirname", arg: 1, scope: !1267, file: !2, line: 533, type: !454)
!1272 = !DILocalVariable(name: "length", arg: 2, scope: !1267, file: !2, line: 533, type: !70)
!1273 = !DILocalVariable(name: "cwd", scope: !1267, file: !2, line: 534, type: !454)
!1274 = !DILocalVariable(name: "result", scope: !1267, file: !2, line: 535, type: !146)
!1275 = !DILocation(line: 533, column: 19, scope: !1267)
!1276 = !DILocation(line: 533, column: 35, scope: !1267)
!1277 = !DILocation(line: 534, column: 2, scope: !1267)
!1278 = !DILocation(line: 534, column: 8, scope: !1267)
!1279 = !DILocation(line: 535, column: 2, scope: !1267)
!1280 = !DILocation(line: 535, column: 15, scope: !1267)
!1281 = !DILocation(line: 537, column: 2, scope: !1267)
!1282 = !DILocation(line: 538, column: 2, scope: !1267)
!1283 = !DILocation(line: 540, column: 15, scope: !1267)
!1284 = !DILocation(line: 540, column: 24, scope: !1267)
!1285 = !DILocation(line: 540, column: 8, scope: !1267)
!1286 = !DILocation(line: 540, column: 6, scope: !1267)
!1287 = !DILocation(line: 542, column: 6, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 542, column: 6)
!1289 = !DILocation(line: 542, column: 10, scope: !1288)
!1290 = !DILocation(line: 542, column: 6, scope: !1267)
!1291 = !DILocation(line: 543, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 543, column: 7)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 542, column: 19)
!1294 = !DILocation(line: 543, column: 13, scope: !1292)
!1295 = !DILocation(line: 543, column: 7, scope: !1293)
!1296 = !DILocation(line: 544, column: 11, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 543, column: 24)
!1298 = !DILocation(line: 545, column: 3, scope: !1297)
!1299 = !DILocation(line: 546, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 545, column: 10)
!1301 = !DILocation(line: 546, column: 11, scope: !1300)
!1302 = !DILocation(line: 548, column: 2, scope: !1293)
!1303 = !DILocation(line: 549, column: 14, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 549, column: 7)
!1305 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 548, column: 9)
!1306 = !DILocation(line: 549, column: 7, scope: !1304)
!1307 = !DILocation(line: 549, column: 23, scope: !1304)
!1308 = !DILocation(line: 549, column: 30, scope: !1304)
!1309 = !DILocation(line: 549, column: 27, scope: !1304)
!1310 = !DILocation(line: 549, column: 7, scope: !1305)
!1311 = !DILocation(line: 550, column: 11, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 549, column: 38)
!1313 = !DILocation(line: 551, column: 3, scope: !1312)
!1314 = !DILocation(line: 551, column: 14, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 551, column: 14)
!1316 = !DILocation(line: 551, column: 25, scope: !1315)
!1317 = !DILocation(line: 551, column: 14, scope: !1304)
!1318 = !DILocation(line: 552, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 551, column: 34)
!1320 = !DILocation(line: 552, column: 26, scope: !1319)
!1321 = !DILocation(line: 552, column: 4, scope: !1319)
!1322 = !DILocation(line: 553, column: 3, scope: !1319)
!1323 = !DILocation(line: 556, column: 10, scope: !1267)
!1324 = !DILocation(line: 557, column: 1, scope: !1267)
!1325 = !DILocation(line: 556, column: 2, scope: !1267)
!1326 = distinct !DISubprogram(name: "isc_file_truncate", scope: !2, file: !2, line: 572, type: !1327, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1331)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!146, !215, !1329}
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_offset_t", file: !1330, line: 24, baseType: !149)
!1330 = !DIFile(filename: "./include/isc/offset.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "bcf92adabe55bfd4bb2a4ec0fa8b7b63")
!1331 = !{!1332, !1333, !1334}
!1332 = !DILocalVariable(name: "filename", arg: 1, scope: !1326, file: !2, line: 572, type: !215)
!1333 = !DILocalVariable(name: "size", arg: 2, scope: !1326, file: !2, line: 572, type: !1329)
!1334 = !DILocalVariable(name: "result", scope: !1326, file: !2, line: 573, type: !146)
!1335 = !DILocation(line: 572, column: 31, scope: !1326)
!1336 = !DILocation(line: 572, column: 54, scope: !1326)
!1337 = !DILocation(line: 573, column: 2, scope: !1326)
!1338 = !DILocation(line: 573, column: 15, scope: !1326)
!1339 = !DILocation(line: 575, column: 15, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 575, column: 6)
!1341 = !DILocation(line: 575, column: 25, scope: !1340)
!1342 = !DILocation(line: 575, column: 6, scope: !1340)
!1343 = !DILocation(line: 575, column: 31, scope: !1340)
!1344 = !DILocation(line: 575, column: 6, scope: !1326)
!1345 = !DILocation(line: 576, column: 12, scope: !1340)
!1346 = !DILocation(line: 576, column: 10, scope: !1340)
!1347 = !DILocation(line: 576, column: 3, scope: !1340)
!1348 = !DILocation(line: 577, column: 10, scope: !1326)
!1349 = !DILocation(line: 578, column: 1, scope: !1326)
!1350 = !DILocation(line: 577, column: 2, scope: !1326)
!1351 = !DISubprogram(name: "truncate", scope: !689, file: !689, line: 1026, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!66, !215, !151}
!1354 = distinct !DISubprogram(name: "isc_file_safecreate", scope: !2, file: !2, line: 581, type: !1355, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!146, !215, !699}
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1358 = !DILocalVariable(name: "filename", arg: 1, scope: !1354, file: !2, line: 581, type: !215)
!1359 = !DILocalVariable(name: "fp", arg: 2, scope: !1354, file: !2, line: 581, type: !699)
!1360 = !DILocalVariable(name: "result", scope: !1354, file: !2, line: 582, type: !146)
!1361 = !DILocalVariable(name: "flags", scope: !1354, file: !2, line: 583, type: !66)
!1362 = !DILocalVariable(name: "sb", scope: !1354, file: !2, line: 584, type: !157)
!1363 = !DILocalVariable(name: "f", scope: !1354, file: !2, line: 585, type: !700)
!1364 = !DILocalVariable(name: "fd", scope: !1354, file: !2, line: 586, type: !66)
!1365 = !DILocation(line: 581, column: 33, scope: !1354)
!1366 = !DILocation(line: 581, column: 50, scope: !1354)
!1367 = !DILocation(line: 582, column: 2, scope: !1354)
!1368 = !DILocation(line: 582, column: 15, scope: !1354)
!1369 = !DILocation(line: 583, column: 2, scope: !1354)
!1370 = !DILocation(line: 583, column: 6, scope: !1354)
!1371 = !DILocation(line: 584, column: 2, scope: !1354)
!1372 = !DILocation(line: 584, column: 14, scope: !1354)
!1373 = !DILocation(line: 585, column: 2, scope: !1354)
!1374 = !DILocation(line: 585, column: 8, scope: !1354)
!1375 = !DILocation(line: 586, column: 2, scope: !1354)
!1376 = !DILocation(line: 586, column: 6, scope: !1354)
!1377 = !DILocation(line: 588, column: 2, scope: !1354)
!1378 = !DILocation(line: 589, column: 2, scope: !1354)
!1379 = !DILocation(line: 0, scope: !1354)
!1380 = !DILocation(line: 591, column: 22, scope: !1354)
!1381 = !DILocation(line: 591, column: 11, scope: !1354)
!1382 = !DILocation(line: 591, column: 9, scope: !1354)
!1383 = !DILocation(line: 592, column: 6, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 592, column: 6)
!1385 = !DILocation(line: 592, column: 13, scope: !1384)
!1386 = !DILocation(line: 592, column: 6, scope: !1354)
!1387 = !DILocation(line: 593, column: 11, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 593, column: 7)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 592, column: 31)
!1390 = !DILocation(line: 593, column: 19, scope: !1388)
!1391 = !DILocation(line: 593, column: 30, scope: !1388)
!1392 = !DILocation(line: 593, column: 7, scope: !1389)
!1393 = !DILocation(line: 594, column: 4, scope: !1388)
!1394 = !DILocation(line: 595, column: 9, scope: !1389)
!1395 = !DILocation(line: 596, column: 2, scope: !1389)
!1396 = !DILocation(line: 596, column: 13, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 596, column: 13)
!1398 = !DILocation(line: 596, column: 20, scope: !1397)
!1399 = !DILocation(line: 596, column: 13, scope: !1384)
!1400 = !DILocation(line: 597, column: 9, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 596, column: 43)
!1402 = !DILocation(line: 598, column: 2, scope: !1401)
!1403 = !DILocation(line: 599, column: 11, scope: !1397)
!1404 = !DILocation(line: 599, column: 3, scope: !1397)
!1405 = !DILocation(line: 601, column: 12, scope: !1354)
!1406 = !DILocation(line: 601, column: 22, scope: !1354)
!1407 = !DILocation(line: 601, column: 7, scope: !1354)
!1408 = !DILocation(line: 601, column: 5, scope: !1354)
!1409 = !DILocation(line: 602, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 602, column: 6)
!1411 = !DILocation(line: 602, column: 9, scope: !1410)
!1412 = !DILocation(line: 602, column: 6, scope: !1354)
!1413 = !DILocation(line: 603, column: 11, scope: !1410)
!1414 = !DILocation(line: 603, column: 3, scope: !1410)
!1415 = !DILocation(line: 605, column: 13, scope: !1354)
!1416 = !DILocation(line: 605, column: 6, scope: !1354)
!1417 = !DILocation(line: 605, column: 4, scope: !1354)
!1418 = !DILocation(line: 606, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 606, column: 6)
!1420 = !DILocation(line: 606, column: 8, scope: !1419)
!1421 = !DILocation(line: 606, column: 6, scope: !1354)
!1422 = !DILocation(line: 607, column: 12, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 606, column: 17)
!1424 = !DILocation(line: 607, column: 10, scope: !1423)
!1425 = !DILocation(line: 608, column: 9, scope: !1423)
!1426 = !DILocation(line: 608, column: 3, scope: !1423)
!1427 = !DILocation(line: 609, column: 11, scope: !1423)
!1428 = !DILocation(line: 609, column: 3, scope: !1423)
!1429 = !DILocation(line: 612, column: 8, scope: !1354)
!1430 = !DILocation(line: 612, column: 3, scope: !1354)
!1431 = !DILocation(line: 612, column: 6, scope: !1354)
!1432 = !DILocation(line: 613, column: 2, scope: !1354)
!1433 = !DILocation(line: 614, column: 1, scope: !1354)
!1434 = distinct !DISubprogram(name: "isc_file_splitpath", scope: !2, file: !2, line: 617, type: !1435, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1477)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!146, !1437, !215, !1475, !1476}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !147, line: 59, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !1440, line: 191, size: 128, elements: !1441)
!1440 = !DIFile(filename: "../include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!1441 = !{!1442, !1443, !1444}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !1439, file: !1440, line: 192, baseType: !53, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1439, file: !1440, line: 193, baseType: !53, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !1439, file: !1440, line: 194, baseType: !1445, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !1440, line: 180, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !1440, line: 170, size: 448, elements: !1448)
!1448 = !{!1449, !1453, !1457, !1462, !1463, !1467, !1471}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !1447, file: !1440, line: 171, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!60, !1437, !70, !215, !53}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !1447, file: !1440, line: 172, baseType: !1454, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1437, !60, !70, !215, !53}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !1447, file: !1440, line: 173, baseType: !1458, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1461, !60, !70, !215, !53}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !1447, file: !1440, line: 175, baseType: !1450, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !1447, file: !1440, line: 176, baseType: !1464, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!60, !1437, !60, !70, !215, !53}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !1447, file: !1440, line: 178, baseType: !1468, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!454, !1437, !215, !215, !53}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !1447, file: !1440, line: 179, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{null, !1437, !60, !215, !53}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1478 = !DILocalVariable(name: "mctx", arg: 1, scope: !1434, file: !2, line: 617, type: !1437)
!1479 = !DILocalVariable(name: "path", arg: 2, scope: !1434, file: !2, line: 617, type: !215)
!1480 = !DILocalVariable(name: "dirname", arg: 3, scope: !1434, file: !2, line: 617, type: !1475)
!1481 = !DILocalVariable(name: "bname", arg: 4, scope: !1434, file: !2, line: 618, type: !1476)
!1482 = !DILocalVariable(name: "dir", scope: !1434, file: !2, line: 620, type: !454)
!1483 = !DILocalVariable(name: "file", scope: !1434, file: !2, line: 621, type: !215)
!1484 = !DILocalVariable(name: "slash", scope: !1434, file: !2, line: 621, type: !215)
!1485 = !DILocation(line: 617, column: 31, scope: !1434)
!1486 = !DILocation(line: 617, column: 49, scope: !1434)
!1487 = !DILocation(line: 617, column: 62, scope: !1434)
!1488 = !DILocation(line: 618, column: 19, scope: !1434)
!1489 = !DILocation(line: 620, column: 2, scope: !1434)
!1490 = !DILocation(line: 620, column: 8, scope: !1434)
!1491 = !DILocation(line: 621, column: 2, scope: !1434)
!1492 = !DILocation(line: 621, column: 14, scope: !1434)
!1493 = !DILocation(line: 621, column: 21, scope: !1434)
!1494 = !DILocation(line: 623, column: 6, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 623, column: 6)
!1496 = !DILocation(line: 623, column: 11, scope: !1495)
!1497 = !DILocation(line: 623, column: 6, scope: !1434)
!1498 = !DILocation(line: 624, column: 3, scope: !1495)
!1499 = !DILocation(line: 626, column: 18, scope: !1434)
!1500 = !DILocation(line: 626, column: 10, scope: !1434)
!1501 = !DILocation(line: 626, column: 8, scope: !1434)
!1502 = !DILocation(line: 628, column: 6, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 628, column: 6)
!1504 = !DILocation(line: 628, column: 15, scope: !1503)
!1505 = !DILocation(line: 628, column: 12, scope: !1503)
!1506 = !DILocation(line: 628, column: 6, scope: !1434)
!1507 = !DILocation(line: 629, column: 10, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 628, column: 21)
!1509 = !DILocation(line: 629, column: 8, scope: !1508)
!1510 = !DILocation(line: 630, column: 9, scope: !1508)
!1511 = !DILocation(line: 630, column: 7, scope: !1508)
!1512 = !DILocation(line: 631, column: 2, scope: !1508)
!1513 = !DILocation(line: 631, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 631, column: 13)
!1515 = !DILocation(line: 631, column: 19, scope: !1514)
!1516 = !DILocation(line: 631, column: 13, scope: !1503)
!1517 = !DILocation(line: 632, column: 10, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 631, column: 28)
!1519 = !DILocation(line: 632, column: 8, scope: !1518)
!1520 = !DILocation(line: 633, column: 9, scope: !1518)
!1521 = !DILocation(line: 633, column: 7, scope: !1518)
!1522 = !DILocation(line: 634, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 634, column: 7)
!1524 = !DILocation(line: 634, column: 11, scope: !1523)
!1525 = !DILocation(line: 634, column: 7, scope: !1518)
!1526 = !DILocation(line: 635, column: 12, scope: !1523)
!1527 = !DILocation(line: 635, column: 17, scope: !1523)
!1528 = !DILocation(line: 635, column: 23, scope: !1523)
!1529 = !DILocation(line: 635, column: 31, scope: !1523)
!1530 = !DILocation(line: 635, column: 29, scope: !1523)
!1531 = !DILocation(line: 635, column: 4, scope: !1523)
!1532 = !DILocation(line: 636, column: 2, scope: !1518)
!1533 = !DILocation(line: 637, column: 10, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 636, column: 9)
!1535 = !DILocation(line: 637, column: 8, scope: !1534)
!1536 = !DILocation(line: 638, column: 9, scope: !1534)
!1537 = !DILocation(line: 638, column: 7, scope: !1534)
!1538 = !DILocation(line: 641, column: 6, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 641, column: 6)
!1540 = !DILocation(line: 641, column: 10, scope: !1539)
!1541 = !DILocation(line: 641, column: 6, scope: !1434)
!1542 = !DILocation(line: 642, column: 3, scope: !1539)
!1543 = !DILocation(line: 644, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1434, file: !2, line: 644, column: 6)
!1545 = !DILocation(line: 644, column: 6, scope: !1544)
!1546 = !DILocation(line: 644, column: 12, scope: !1544)
!1547 = !DILocation(line: 644, column: 6, scope: !1434)
!1548 = !DILocation(line: 645, column: 3, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 644, column: 21)
!1550 = !DILocation(line: 645, column: 3, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 645, column: 3)
!1552 = !DILocation(line: 646, column: 3, scope: !1549)
!1553 = !DILocation(line: 649, column: 13, scope: !1434)
!1554 = !DILocation(line: 649, column: 3, scope: !1434)
!1555 = !DILocation(line: 649, column: 11, scope: !1434)
!1556 = !DILocation(line: 650, column: 11, scope: !1434)
!1557 = !DILocation(line: 650, column: 3, scope: !1434)
!1558 = !DILocation(line: 650, column: 9, scope: !1434)
!1559 = !DILocation(line: 652, column: 2, scope: !1434)
!1560 = !DILocation(line: 653, column: 1, scope: !1434)
!1561 = !DISubprogram(name: "isc__mem_strdup", scope: !1440, file: !1440, line: 642, type: !1469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1562 = !DISubprogram(name: "isc__mem_allocate", scope: !1440, file: !1440, line: 636, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubprogram(name: "isc__mem_free", scope: !1440, file: !1440, line: 640, type: !1473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = distinct !DISubprogram(name: "isc_file_mmap", scope: !2, file: !2, line: 656, type: !1565, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!60, !60, !70, !66, !66, !66, !149}
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573}
!1568 = !DILocalVariable(name: "addr", arg: 1, scope: !1564, file: !2, line: 656, type: !60)
!1569 = !DILocalVariable(name: "len", arg: 2, scope: !1564, file: !2, line: 656, type: !70)
!1570 = !DILocalVariable(name: "prot", arg: 3, scope: !1564, file: !2, line: 656, type: !66)
!1571 = !DILocalVariable(name: "flags", arg: 4, scope: !1564, file: !2, line: 657, type: !66)
!1572 = !DILocalVariable(name: "fd", arg: 5, scope: !1564, file: !2, line: 657, type: !66)
!1573 = !DILocalVariable(name: "offset", arg: 6, scope: !1564, file: !2, line: 657, type: !149)
!1574 = !DILocation(line: 656, column: 21, scope: !1564)
!1575 = !DILocation(line: 656, column: 34, scope: !1564)
!1576 = !DILocation(line: 656, column: 43, scope: !1564)
!1577 = !DILocation(line: 657, column: 12, scope: !1564)
!1578 = !DILocation(line: 657, column: 23, scope: !1564)
!1579 = !DILocation(line: 657, column: 33, scope: !1564)
!1580 = !DILocation(line: 660, column: 15, scope: !1564)
!1581 = !DILocation(line: 660, column: 21, scope: !1564)
!1582 = !DILocation(line: 660, column: 26, scope: !1564)
!1583 = !DILocation(line: 660, column: 32, scope: !1564)
!1584 = !DILocation(line: 660, column: 39, scope: !1564)
!1585 = !DILocation(line: 660, column: 43, scope: !1564)
!1586 = !DILocation(line: 660, column: 10, scope: !1564)
!1587 = !DILocation(line: 660, column: 2, scope: !1564)
!1588 = !DISubprogram(name: "mmap", scope: !1589, file: !1589, line: 57, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1589 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mman.h", directory: "", checksumkind: CSK_MD5, checksum: "93a87cc3b0558893646eb0c257165272")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!60, !60, !70, !66, !66, !66, !151}
!1592 = distinct !DISubprogram(name: "isc_file_munmap", scope: !2, file: !2, line: 690, type: !1593, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!66, !60, !70}
!1595 = !{!1596, !1597}
!1596 = !DILocalVariable(name: "addr", arg: 1, scope: !1592, file: !2, line: 690, type: !60)
!1597 = !DILocalVariable(name: "len", arg: 2, scope: !1592, file: !2, line: 690, type: !70)
!1598 = !DILocation(line: 690, column: 23, scope: !1592)
!1599 = !DILocation(line: 690, column: 36, scope: !1592)
!1600 = !DILocation(line: 692, column: 17, scope: !1592)
!1601 = !DILocation(line: 692, column: 23, scope: !1592)
!1602 = !DILocation(line: 692, column: 10, scope: !1592)
!1603 = !DILocation(line: 692, column: 2, scope: !1592)
!1604 = !DISubprogram(name: "munmap", scope: !1589, file: !1589, line: 76, type: !1593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1605 = distinct !DISubprogram(name: "isc_file_sanitize", scope: !2, file: !2, line: 723, type: !1606, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1608)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!146, !215, !215, !215, !454, !70}
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1618, !1622, !1623, !1627, !1628}
!1609 = !DILocalVariable(name: "dir", arg: 1, scope: !1605, file: !2, line: 723, type: !215)
!1610 = !DILocalVariable(name: "base", arg: 2, scope: !1605, file: !2, line: 723, type: !215)
!1611 = !DILocalVariable(name: "ext", arg: 3, scope: !1605, file: !2, line: 723, type: !215)
!1612 = !DILocalVariable(name: "path", arg: 4, scope: !1605, file: !2, line: 724, type: !454)
!1613 = !DILocalVariable(name: "length", arg: 5, scope: !1605, file: !2, line: 724, type: !70)
!1614 = !DILocalVariable(name: "buf", scope: !1605, file: !2, line: 726, type: !1615)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32768, elements: !1616)
!1616 = !{!1617}
!1617 = !DISubrange(count: 4096)
!1618 = !DILocalVariable(name: "digest", scope: !1605, file: !2, line: 727, type: !1619)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 512, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 64)
!1622 = !DILocalVariable(name: "digestlen", scope: !1605, file: !2, line: 728, type: !53)
!1623 = !DILocalVariable(name: "hash", scope: !1605, file: !2, line: 729, type: !1624)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1032, elements: !1625)
!1625 = !{!1626}
!1626 = !DISubrange(count: 129)
!1627 = !DILocalVariable(name: "l", scope: !1605, file: !2, line: 730, type: !70)
!1628 = !DILocalVariable(name: "err", scope: !1605, file: !2, line: 731, type: !146)
!1629 = !DILocation(line: 723, column: 31, scope: !1605)
!1630 = !DILocation(line: 723, column: 48, scope: !1605)
!1631 = !DILocation(line: 723, column: 66, scope: !1605)
!1632 = !DILocation(line: 724, column: 11, scope: !1605)
!1633 = !DILocation(line: 724, column: 24, scope: !1605)
!1634 = !DILocation(line: 726, column: 2, scope: !1605)
!1635 = !DILocation(line: 726, column: 7, scope: !1605)
!1636 = !DILocation(line: 727, column: 2, scope: !1605)
!1637 = !DILocation(line: 727, column: 16, scope: !1605)
!1638 = !DILocation(line: 728, column: 2, scope: !1605)
!1639 = !DILocation(line: 728, column: 15, scope: !1605)
!1640 = !DILocation(line: 729, column: 2, scope: !1605)
!1641 = !DILocation(line: 729, column: 7, scope: !1605)
!1642 = !DILocation(line: 730, column: 2, scope: !1605)
!1643 = !DILocation(line: 730, column: 9, scope: !1605)
!1644 = !DILocation(line: 731, column: 2, scope: !1605)
!1645 = !DILocation(line: 731, column: 15, scope: !1605)
!1646 = !DILocation(line: 733, column: 2, scope: !1605)
!1647 = !DILocation(line: 734, column: 2, scope: !1605)
!1648 = !DILocation(line: 736, column: 13, scope: !1605)
!1649 = !DILocation(line: 736, column: 6, scope: !1605)
!1650 = !DILocation(line: 736, column: 19, scope: !1605)
!1651 = !DILocation(line: 736, column: 4, scope: !1605)
!1652 = !DILocation(line: 742, column: 6, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 742, column: 6)
!1654 = !DILocation(line: 742, column: 8, scope: !1653)
!1655 = !DILocation(line: 742, column: 6, scope: !1605)
!1656 = !DILocation(line: 743, column: 5, scope: !1653)
!1657 = !DILocation(line: 743, column: 3, scope: !1653)
!1658 = !DILocation(line: 745, column: 6, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 745, column: 6)
!1660 = !DILocation(line: 745, column: 10, scope: !1659)
!1661 = !DILocation(line: 745, column: 6, scope: !1605)
!1662 = !DILocation(line: 746, column: 15, scope: !1659)
!1663 = !DILocation(line: 746, column: 8, scope: !1659)
!1664 = !DILocation(line: 746, column: 20, scope: !1659)
!1665 = !DILocation(line: 746, column: 5, scope: !1659)
!1666 = !DILocation(line: 746, column: 3, scope: !1659)
!1667 = !DILocation(line: 747, column: 6, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 747, column: 6)
!1669 = !DILocation(line: 747, column: 10, scope: !1668)
!1670 = !DILocation(line: 747, column: 6, scope: !1605)
!1671 = !DILocation(line: 748, column: 15, scope: !1668)
!1672 = !DILocation(line: 748, column: 8, scope: !1668)
!1673 = !DILocation(line: 748, column: 20, scope: !1668)
!1674 = !DILocation(line: 748, column: 5, scope: !1668)
!1675 = !DILocation(line: 748, column: 3, scope: !1668)
!1676 = !DILocation(line: 750, column: 6, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 750, column: 6)
!1678 = !DILocation(line: 750, column: 10, scope: !1677)
!1679 = !DILocation(line: 750, column: 8, scope: !1677)
!1680 = !DILocation(line: 750, column: 17, scope: !1677)
!1681 = !DILocation(line: 750, column: 20, scope: !1677)
!1682 = !DILocation(line: 750, column: 22, scope: !1677)
!1683 = !DILocation(line: 750, column: 6, scope: !1605)
!1684 = !DILocation(line: 751, column: 3, scope: !1677)
!1685 = !DILocation(line: 754, column: 15, scope: !1605)
!1686 = !DILocation(line: 754, column: 53, scope: !1605)
!1687 = !DILocation(line: 755, column: 15, scope: !1605)
!1688 = !DILocation(line: 755, column: 8, scope: !1605)
!1689 = !DILocation(line: 755, column: 22, scope: !1605)
!1690 = !DILocation(line: 754, column: 8, scope: !1605)
!1691 = !DILocation(line: 754, column: 6, scope: !1605)
!1692 = !DILocation(line: 756, column: 6, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 756, column: 6)
!1694 = !DILocation(line: 756, column: 10, scope: !1693)
!1695 = !DILocation(line: 756, column: 6, scope: !1605)
!1696 = !DILocation(line: 757, column: 11, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 756, column: 28)
!1698 = !DILocation(line: 757, column: 3, scope: !1697)
!1699 = !DILocation(line: 760, column: 19, scope: !1605)
!1700 = !DILocation(line: 760, column: 27, scope: !1605)
!1701 = !DILocation(line: 760, column: 38, scope: !1605)
!1702 = !DILocation(line: 760, column: 8, scope: !1605)
!1703 = !DILocation(line: 760, column: 6, scope: !1605)
!1704 = !DILocation(line: 761, column: 6, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 761, column: 6)
!1706 = !DILocation(line: 761, column: 10, scope: !1705)
!1707 = !DILocation(line: 761, column: 6, scope: !1605)
!1708 = !DILocation(line: 762, column: 11, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 761, column: 28)
!1710 = !DILocation(line: 762, column: 3, scope: !1709)
!1711 = !DILocation(line: 765, column: 11, scope: !1605)
!1712 = !DILocation(line: 766, column: 3, scope: !1605)
!1713 = !DILocation(line: 766, column: 7, scope: !1605)
!1714 = !DILocation(line: 766, column: 17, scope: !1605)
!1715 = !DILocation(line: 766, column: 27, scope: !1605)
!1716 = !DILocation(line: 766, column: 31, scope: !1605)
!1717 = !DILocation(line: 767, column: 3, scope: !1605)
!1718 = !DILocation(line: 767, column: 9, scope: !1605)
!1719 = !DILocation(line: 767, column: 13, scope: !1605)
!1720 = !DILocation(line: 767, column: 33, scope: !1605)
!1721 = !DILocation(line: 767, column: 37, scope: !1605)
!1722 = !DILocation(line: 767, column: 47, scope: !1605)
!1723 = !DILocation(line: 765, column: 2, scope: !1605)
!1724 = !DILocation(line: 768, column: 22, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 768, column: 6)
!1726 = !DILocation(line: 768, column: 6, scope: !1725)
!1727 = !DILocation(line: 768, column: 6, scope: !1605)
!1728 = !DILocation(line: 769, column: 11, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 768, column: 28)
!1730 = !DILocation(line: 769, column: 17, scope: !1729)
!1731 = !DILocation(line: 769, column: 22, scope: !1729)
!1732 = !DILocation(line: 769, column: 3, scope: !1729)
!1733 = !DILocation(line: 770, column: 3, scope: !1729)
!1734 = !DILocation(line: 774, column: 2, scope: !1605)
!1735 = !DILocation(line: 774, column: 11, scope: !1605)
!1736 = !DILocation(line: 775, column: 11, scope: !1605)
!1737 = !DILocation(line: 776, column: 3, scope: !1605)
!1738 = !DILocation(line: 776, column: 7, scope: !1605)
!1739 = !DILocation(line: 776, column: 17, scope: !1605)
!1740 = !DILocation(line: 776, column: 27, scope: !1605)
!1741 = !DILocation(line: 776, column: 31, scope: !1605)
!1742 = !DILocation(line: 777, column: 3, scope: !1605)
!1743 = !DILocation(line: 777, column: 9, scope: !1605)
!1744 = !DILocation(line: 777, column: 13, scope: !1605)
!1745 = !DILocation(line: 777, column: 33, scope: !1605)
!1746 = !DILocation(line: 777, column: 37, scope: !1605)
!1747 = !DILocation(line: 777, column: 47, scope: !1605)
!1748 = !DILocation(line: 775, column: 2, scope: !1605)
!1749 = !DILocation(line: 778, column: 22, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 778, column: 6)
!1751 = !DILocation(line: 778, column: 6, scope: !1750)
!1752 = !DILocation(line: 778, column: 6, scope: !1605)
!1753 = !DILocation(line: 779, column: 11, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 778, column: 28)
!1755 = !DILocation(line: 779, column: 17, scope: !1754)
!1756 = !DILocation(line: 779, column: 22, scope: !1754)
!1757 = !DILocation(line: 779, column: 3, scope: !1754)
!1758 = !DILocation(line: 780, column: 3, scope: !1754)
!1759 = !DILocation(line: 788, column: 14, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 788, column: 6)
!1761 = !DILocation(line: 788, column: 6, scope: !1760)
!1762 = !DILocation(line: 788, column: 30, scope: !1760)
!1763 = !DILocation(line: 788, column: 6, scope: !1605)
!1764 = !DILocation(line: 789, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 788, column: 39)
!1766 = !DILocation(line: 789, column: 17, scope: !1765)
!1767 = !DILocation(line: 789, column: 22, scope: !1765)
!1768 = !DILocation(line: 789, column: 3, scope: !1765)
!1769 = !DILocation(line: 790, column: 3, scope: !1765)
!1770 = !DILocation(line: 793, column: 11, scope: !1605)
!1771 = !DILocation(line: 794, column: 3, scope: !1605)
!1772 = !DILocation(line: 794, column: 7, scope: !1605)
!1773 = !DILocation(line: 794, column: 17, scope: !1605)
!1774 = !DILocation(line: 794, column: 27, scope: !1605)
!1775 = !DILocation(line: 794, column: 31, scope: !1605)
!1776 = !DILocation(line: 795, column: 3, scope: !1605)
!1777 = !DILocation(line: 795, column: 9, scope: !1605)
!1778 = !DILocation(line: 795, column: 13, scope: !1605)
!1779 = !DILocation(line: 795, column: 33, scope: !1605)
!1780 = !DILocation(line: 795, column: 37, scope: !1605)
!1781 = !DILocation(line: 795, column: 47, scope: !1605)
!1782 = !DILocation(line: 793, column: 2, scope: !1605)
!1783 = !DILocation(line: 796, column: 10, scope: !1605)
!1784 = !DILocation(line: 796, column: 16, scope: !1605)
!1785 = !DILocation(line: 796, column: 21, scope: !1605)
!1786 = !DILocation(line: 796, column: 2, scope: !1605)
!1787 = !DILocation(line: 797, column: 2, scope: !1605)
!1788 = !DILocation(line: 798, column: 1, scope: !1605)
!1789 = !DISubprogram(name: "isc_md", scope: !1790, file: !1790, line: 78, type: !1791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1790 = !DIFile(filename: "../include/isc/md.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/isc/unix", checksumkind: CSK_MD5, checksum: "8bf2760bb4fd6cb11c448afd792ecbb7")
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!146, !1793, !67, !1799, !1800, !1801}
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_md_type_t", file: !1790, line: 39, baseType: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD", file: !1797, line: 106, baseType: !1798)
!1797 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/openssl-3.1.3-t2z4gdp5gh6gi55dbaqbl32ceazzcooa/include/openssl/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build", checksumkind: CSK_MD5, checksum: "b6649ae9fb159d98e26ef5156a06b00d")
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_md_st", file: !1797, line: 106, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1802 = !DISubprogram(name: "EVP_sha256", scope: !1803, file: !1803, line: 915, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1803 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/openssl-3.1.3-t2z4gdp5gh6gi55dbaqbl32ceazzcooa/include/openssl/evp.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build", checksumkind: CSK_MD5, checksum: "ac1dc50387863ec2034ef6e4d41bd902")
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!1794}
!1806 = distinct !DISubprogram(name: "digest2hex", scope: !2, file: !2, line: 707, type: !1807, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!146, !1800, !53, !454, !70}
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1810 = !DILocalVariable(name: "digest", arg: 1, scope: !1806, file: !2, line: 707, type: !1800)
!1811 = !DILocalVariable(name: "digestlen", arg: 2, scope: !1806, file: !2, line: 707, type: !53)
!1812 = !DILocalVariable(name: "hash", arg: 3, scope: !1806, file: !2, line: 708, type: !454)
!1813 = !DILocalVariable(name: "hashlen", arg: 4, scope: !1806, file: !2, line: 708, type: !70)
!1814 = !DILocalVariable(name: "i", scope: !1806, file: !2, line: 710, type: !53)
!1815 = !DILocalVariable(name: "ret", scope: !1806, file: !2, line: 711, type: !66)
!1816 = !DILocalVariable(name: "left", scope: !1817, file: !2, line: 713, type: !70)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 712, column: 34)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 712, column: 2)
!1819 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 712, column: 2)
!1820 = !DILocation(line: 707, column: 27, scope: !1806)
!1821 = !DILocation(line: 707, column: 48, scope: !1806)
!1822 = !DILocation(line: 708, column: 11, scope: !1806)
!1823 = !DILocation(line: 708, column: 24, scope: !1806)
!1824 = !DILocation(line: 710, column: 2, scope: !1806)
!1825 = !DILocation(line: 710, column: 15, scope: !1806)
!1826 = !DILocation(line: 711, column: 2, scope: !1806)
!1827 = !DILocation(line: 711, column: 6, scope: !1806)
!1828 = !DILocation(line: 712, column: 9, scope: !1819)
!1829 = !DILocation(line: 712, column: 7, scope: !1819)
!1830 = !DILocation(line: 712, column: 14, scope: !1818)
!1831 = !DILocation(line: 712, column: 18, scope: !1818)
!1832 = !DILocation(line: 712, column: 16, scope: !1818)
!1833 = !DILocation(line: 712, column: 2, scope: !1819)
!1834 = !DILocation(line: 713, column: 3, scope: !1817)
!1835 = !DILocation(line: 713, column: 10, scope: !1817)
!1836 = !DILocation(line: 713, column: 17, scope: !1817)
!1837 = !DILocation(line: 713, column: 27, scope: !1817)
!1838 = !DILocation(line: 713, column: 29, scope: !1817)
!1839 = !DILocation(line: 713, column: 25, scope: !1817)
!1840 = !DILocation(line: 714, column: 18, scope: !1817)
!1841 = !DILocation(line: 714, column: 25, scope: !1817)
!1842 = !DILocation(line: 714, column: 27, scope: !1817)
!1843 = !DILocation(line: 714, column: 23, scope: !1817)
!1844 = !DILocation(line: 714, column: 32, scope: !1817)
!1845 = !DILocation(line: 714, column: 46, scope: !1817)
!1846 = !DILocation(line: 714, column: 53, scope: !1817)
!1847 = !DILocation(line: 714, column: 9, scope: !1817)
!1848 = !DILocation(line: 714, column: 7, scope: !1817)
!1849 = !DILocation(line: 715, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 715, column: 7)
!1851 = !DILocation(line: 715, column: 11, scope: !1850)
!1852 = !DILocation(line: 715, column: 15, scope: !1850)
!1853 = !DILocation(line: 715, column: 26, scope: !1850)
!1854 = !DILocation(line: 715, column: 18, scope: !1850)
!1855 = !DILocation(line: 715, column: 33, scope: !1850)
!1856 = !DILocation(line: 715, column: 30, scope: !1850)
!1857 = !DILocation(line: 715, column: 7, scope: !1817)
!1858 = !DILocation(line: 716, column: 4, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 715, column: 39)
!1860 = !DILocation(line: 718, column: 2, scope: !1818)
!1861 = !DILocation(line: 718, column: 2, scope: !1817)
!1862 = !DILocation(line: 712, column: 30, scope: !1818)
!1863 = !DILocation(line: 712, column: 2, scope: !1818)
!1864 = distinct !{!1864, !1833, !1865, !592}
!1865 = !DILocation(line: 718, column: 2, scope: !1819)
!1866 = !DILocation(line: 719, column: 2, scope: !1806)
!1867 = !DILocation(line: 720, column: 1, scope: !1806)
!1868 = !DISubprogram(name: "snprintf", scope: !929, file: !929, line: 378, type: !1869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!66, !1871, !70, !1085, null}
!1871 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !454)
!1872 = !DISubprogram(name: "strpbrk", scope: !552, file: !552, line: 323, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!454, !215, !215}
!1875 = distinct !DISubprogram(name: "isc_file_isdirwritable", scope: !2, file: !2, line: 801, type: !1046, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !1876)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "path", arg: 1, scope: !1875, file: !2, line: 801, type: !215)
!1878 = !DILocation(line: 801, column: 36, scope: !1875)
!1879 = !DILocation(line: 802, column: 17, scope: !1875)
!1880 = !DILocation(line: 802, column: 10, scope: !1875)
!1881 = !DILocation(line: 802, column: 34, scope: !1875)
!1882 = !DILocation(line: 802, column: 2, scope: !1875)
!1883 = !DISubprogram(name: "access", scope: !689, file: !689, line: 287, type: !1884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!66, !215, !66}
!1886 = !DISubprogram(name: "getcwd", scope: !689, file: !689, line: 531, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!454, !454, !70}

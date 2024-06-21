; ModuleID = 'samples/224.bc'
source_filename = "redis-check-aof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.listIter = type { ptr, i32 }
%struct.aofManifest = type { ptr, ptr, ptr, i64, i64, i32 }
%struct.list = type { ptr, ptr, ptr, ptr, ptr, i64 }
%struct.aofInfo = type { ptr, i64, i32 }
%struct.listNode = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected \\r\\n, got: %02x%02x\00", align 1, !dbg !7
@error = internal global [1044 x i8] zeroinitializer, align 16, !dbg !12
@.str.2 = private unnamed_addr constant [13 x i8] c"0x%16llx: %s\00", align 1, !dbg !44
@epos = internal global i64 0, align 8, !dbg !267
@line = internal global i64 1, align 8, !dbg !273
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected prefix '%c', got: '%c'\00", align 1, !dbg !49
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected to read %ld bytes, got %ld bytes\00", align 1, !dbg !54
@.str.5 = private unnamed_addr constant [73 x i8] c"Expected to read string of %ld bytes, which is not in the suitable range\00", align 1, !dbg !59
@.str.6 = private unnamed_addr constant [6 x i8] c"multi\00", align 1, !dbg !64
@.str.7 = private unnamed_addr constant [27 x i8] c"Unexpected MULTI in AOF %s\00", align 1, !dbg !69
@.str.8 = private unnamed_addr constant [5 x i8] c"exec\00", align 1, !dbg !74
@.str.9 = private unnamed_addr constant [26 x i8] c"Unexpected EXEC in AOF %s\00", align 1, !dbg !79
@.str.10 = private unnamed_addr constant [53 x i8] c"Failed to read annotations from AOF %s, aborting...\0A\00", align 1, !dbg !84
@to_timestamp = internal global i64 0, align 8, !dbg !275
@.str.11 = private unnamed_addr constant [5 x i8] c"#TS:\00", align 1, !dbg !89
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid timestamp annotation\0A\00", align 1, !dbg !91
@.str.13 = private unnamed_addr constant [54 x i8] c"AOF %s has nothing before timestamp %ld, aborting...\0A\00", align 1, !dbg !96
@.str.14 = private unnamed_addr constant [91 x i8] c"Failed to truncate AOF %s to timestamp %ld to offset %ld because it is not the last file.\0A\00", align 1, !dbg !101
@.str.15 = private unnamed_addr constant [180 x i8] c"If you insist, please delete all files after this file according to the manifest file and delete the corresponding records in manifest file manually. Then re-run redis-check-aof.\0A\00", align 1, !dbg !106
@.str.16 = private unnamed_addr constant [44 x i8] c"Failed to truncate AOF %s to timestamp %ld\0A\00", align 1, !dbg !111
@.str.17 = private unnamed_addr constant [3 x i8] c"r+\00", align 1, !dbg !116
@.str.18 = private unnamed_addr constant [38 x i8] c"Cannot open file %s: %s, aborting...\0A\00", align 1, !dbg !118
@.str.19 = private unnamed_addr constant [35 x i8] c"Cannot stat file: %s, aborting...\0A\00", align 1, !dbg !123
@.str.20 = private unnamed_addr constant [49 x i8] c"RDB preamble of AOF file is not sane, aborting.\0A\00", align 1, !dbg !128
@.str.21 = private unnamed_addr constant [49 x i8] c"RDB preamble is OK, proceeding with AOF tail...\0A\00", align 1, !dbg !133
@.str.22 = private unnamed_addr constant [41 x i8] c"Failed to read from AOF %s, aborting...\0A\00", align 1, !dbg !135
@.str.23 = private unnamed_addr constant [30 x i8] c"Failed to fseek in AOF %s: %s\00", align 1, !dbg !140
@.str.24 = private unnamed_addr constant [21 x i8] c"AOF %s format error\0A\00", align 1, !dbg !142
@.str.25 = private unnamed_addr constant [42 x i8] c"Reached EOF before reading EXEC for MULTI\00", align 1, !dbg !147
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !149
@.str.27 = private unnamed_addr constant [45 x i8] c"Truncate nothing in AOF %s to timestamp %ld\0A\00", align 1, !dbg !154
@.str.28 = private unnamed_addr constant [84 x i8] c"AOF analyzed: filename=%s, size=%lld, ok_up_to=%lld, ok_up_to_line=%lld, diff=%lld\0A\00", align 1, !dbg !159
@.str.29 = private unnamed_addr constant [59 x i8] c"Failed to truncate AOF %s because it is not the last file\0A\00", align 1, !dbg !164
@.str.30 = private unnamed_addr constant [77 x i8] c"This will shrink the AOF %s from %lld bytes, with %lld bytes, to %lld bytes\0A\00", align 1, !dbg !169
@.str.31 = private unnamed_addr constant [18 x i8] c"Continue? [y/N]: \00", align 1, !dbg !174
@stdin = external global ptr, align 8
@.str.32 = private unnamed_addr constant [2 x i8] c"y\00", align 1, !dbg !179
@.str.33 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1, !dbg !184
@.str.34 = private unnamed_addr constant [27 x i8] c"Failed to truncate AOF %s\0A\00", align 1, !dbg !186
@.str.35 = private unnamed_addr constant [61 x i8] c"AOF %s is not valid. Use the --fix option to try fixing it.\0A\00", align 1, !dbg !188
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !193
@.str.37 = private unnamed_addr constant [25 x i8] c"Cannot open file %s: %s\0A\00", align 1, !dbg !195
@.str.38 = private unnamed_addr constant [22 x i8] c"Cannot stat file: %s\0A\00", align 1, !dbg !200
@.str.39 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1, !dbg !205
@.str.40 = private unnamed_addr constant [22 x i8] c"Cannot read file: %s\0A\00", align 1, !dbg !207
@.str.41 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !209
@.str.42 = private unnamed_addr constant [31 x i8] c"Start checking Multi Part AOF\0A\00", align 1, !dbg !211
@.str.43 = private unnamed_addr constant [38 x i8] c"Start to check BASE AOF (%s format).\0A\00", align 1, !dbg !216
@.str.44 = private unnamed_addr constant [4 x i8] c"RDB\00", align 1, !dbg !218
@.str.45 = private unnamed_addr constant [5 x i8] c"RESP\00", align 1, !dbg !220
@.str.46 = private unnamed_addr constant [22 x i8] c"BASE AOF %s is valid\0A\00", align 1, !dbg !222
@.str.47 = private unnamed_addr constant [22 x i8] c"BASE AOF %s is empty\0A\00", align 1, !dbg !224
@.str.48 = private unnamed_addr constant [48 x i8] c"Successfully truncated AOF %s to timestamp %ld\0A\00", align 1, !dbg !226
@.str.49 = private unnamed_addr constant [31 x i8] c"Successfully truncated AOF %s\0A\00", align 1, !dbg !231
@.str.50 = private unnamed_addr constant [28 x i8] c"Start to check INCR files.\0A\00", align 1, !dbg !233
@.str.51 = private unnamed_addr constant [22 x i8] c"INCR AOF %s is valid\0A\00", align 1, !dbg !238
@.str.52 = private unnamed_addr constant [22 x i8] c"INCR AOF %s is empty\0A\00", align 1, !dbg !240
@.str.53 = private unnamed_addr constant [38 x i8] c"All AOF files and manifest are valid\0A\00", align 1, !dbg !242
@.str.54 = private unnamed_addr constant [30 x i8] c"Start checking Old-Style AOF\0A\00", align 1, !dbg !244
@.str.55 = private unnamed_addr constant [17 x i8] c"AOF %s is valid\0A\00", align 1, !dbg !246
@.str.56 = private unnamed_addr constant [17 x i8] c"AOF %s is empty\0A\00", align 1, !dbg !251
@.str.57 = private unnamed_addr constant [6 x i8] c"--fix\00", align 1, !dbg !253
@.str.58 = private unnamed_addr constant [24 x i8] c"--truncate-to-timestamp\00", align 1, !dbg !255
@.str.59 = private unnamed_addr constant [32 x i8] c"Invalid timestamp, aborting...\0A\00", align 1, !dbg !260
@.str.60 = private unnamed_addr constant [79 x i8] c"Usage: %s [--fix|--truncate-to-timestamp $timestamp] <file.manifest|file.aof>\0A\00", align 1, !dbg !262

; Function Attrs: nounwind uwtable
define dso_local i32 @consumeNewline(ptr noundef %buf) #0 !dbg !290 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %__buf = alloca [1024 x i8], align 16
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !295, metadata !DIExpression()), !dbg !307
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !308, !tbaa !303
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str, i64 noundef 2) #9, !dbg !309
  %cmp = icmp ne i32 %call, 0, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1024, ptr %__buf) #10, !dbg !312
  tail call void @llvm.dbg.declare(metadata ptr %__buf, metadata !296, metadata !DIExpression()), !dbg !312
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !312
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !312, !tbaa !303
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0, !dbg !312
  %2 = load i8, ptr %arrayidx, align 1, !dbg !312, !tbaa !313
  %conv = sext i8 %2 to i32, !dbg !312
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !312, !tbaa !303
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !312
  %4 = load i8, ptr %arrayidx1, align 1, !dbg !312, !tbaa !313
  %conv2 = sext i8 %4 to i32, !dbg !312
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 1024, ptr noundef @.str.1, i32 noundef %conv, i32 noundef %conv2) #10, !dbg !312
  %5 = load i64, ptr @epos, align 8, !dbg !312, !tbaa !314
  %arraydecay4 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !312
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @error, i64 noundef 1044, ptr noundef @.str.2, i64 noundef %5, ptr noundef %arraydecay4) #10, !dbg !312
  call void @llvm.lifetime.end.p0(i64 1024, ptr %__buf) #10, !dbg !316
  store i32 0, ptr %retval, align 4, !dbg !317
  br label %return, !dbg !317

if.end:                                           ; preds = %entry
  %6 = load i64, ptr @line, align 8, !dbg !318, !tbaa !319
  %add = add nsw i64 %6, 1, !dbg !318
  store i64 %add, ptr @line, align 8, !dbg !318, !tbaa !319
  store i32 1, ptr %retval, align 4, !dbg !321
  br label %return, !dbg !321

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !322
  ret i32 %7, !dbg !322
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !323 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare !dbg !332 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @readLong(ptr noundef %fp, i8 noundef signext %prefix, ptr noundef %target) #0 !dbg !338 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %prefix.addr = alloca i8, align 1
  %target.addr = alloca ptr, align 8
  %buf = alloca [128 x i8], align 16
  %eptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__buf = alloca [1024 x i8], align 16
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !396, metadata !DIExpression()), !dbg !408
  store i8 %prefix, ptr %prefix.addr, align 1, !tbaa !313
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !397, metadata !DIExpression()), !dbg !409
  store ptr %target, ptr %target.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !398, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 128, ptr %buf) #10, !dbg !411
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !399, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #10, !dbg !411
  tail call void @llvm.dbg.declare(metadata ptr %eptr, metadata !403, metadata !DIExpression()), !dbg !413
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !414, !tbaa !303
  %call = call i64 @ftello64(ptr noundef %0), !dbg !415
  store i64 %call, ptr @epos, align 8, !dbg !416, !tbaa !314
  %arraydecay = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !417
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !419, !tbaa !303
  %call1 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 128, ptr noundef %1), !dbg !420
  %cmp = icmp eq ptr %call1, null, !dbg !421
  br i1 %cmp, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !425
  %2 = load i8, ptr %arrayidx, align 16, !dbg !425, !tbaa !313
  %conv = sext i8 %2 to i32, !dbg !425
  %3 = load i8, ptr %prefix.addr, align 1, !dbg !426, !tbaa !313
  %conv2 = sext i8 %3 to i32, !dbg !426
  %cmp3 = icmp ne i32 %conv, %conv2, !dbg !427
  br i1 %cmp3, label %if.then5, label %if.end13, !dbg !428

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1024, ptr %__buf) #10, !dbg !429
  tail call void @llvm.dbg.declare(metadata ptr %__buf, metadata !404, metadata !DIExpression()), !dbg !429
  %arraydecay6 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !429
  %4 = load i8, ptr %prefix.addr, align 1, !dbg !429, !tbaa !313
  %conv7 = sext i8 %4 to i32, !dbg !429
  %arrayidx8 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !429
  %5 = load i8, ptr %arrayidx8, align 16, !dbg !429, !tbaa !313
  %conv9 = sext i8 %5 to i32, !dbg !429
  %call10 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay6, i64 noundef 1024, ptr noundef @.str.3, i32 noundef %conv7, i32 noundef %conv9) #10, !dbg !429
  %6 = load i64, ptr @epos, align 8, !dbg !429, !tbaa !314
  %arraydecay11 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !429
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @error, i64 noundef 1044, ptr noundef @.str.2, i64 noundef %6, ptr noundef %arraydecay11) #10, !dbg !429
  call void @llvm.lifetime.end.p0(i64 1024, ptr %__buf) #10, !dbg !430
  store i32 0, ptr %retval, align 4, !dbg !431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !431

if.end13:                                         ; preds = %if.end
  %arraydecay14 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0, !dbg !432
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay14, i64 1, !dbg !433
  %call15 = call i64 @strtol(ptr noundef %add.ptr, ptr noundef %eptr, i32 noundef 10) #10, !dbg !434
  %7 = load ptr, ptr %target.addr, align 8, !dbg !435, !tbaa !303
  store i64 %call15, ptr %7, align 8, !dbg !436, !tbaa !314
  %8 = load ptr, ptr %eptr, align 8, !dbg !437, !tbaa !303
  %call16 = call i32 @consumeNewline(ptr noundef %8), !dbg !438
  store i32 %call16, ptr %retval, align 4, !dbg !439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !439

cleanup:                                          ; preds = %if.end13, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #10, !dbg !440
  call void @llvm.lifetime.end.p0(i64 128, ptr %buf) #10, !dbg !440
  %9 = load i32, ptr %retval, align 4, !dbg !440
  ret i32 %9, !dbg !440
}

declare !dbg !441 i64 @ftello64(ptr noundef) #4

declare !dbg !444 ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !448 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @readBytes(ptr noundef %fp, ptr noundef %target, i64 noundef %length) #0 !dbg !454 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %real = alloca i64, align 8
  %__buf = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !458, metadata !DIExpression()), !dbg !466
  store ptr %target, ptr %target.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !459, metadata !DIExpression()), !dbg !467
  store i64 %length, ptr %length.addr, align 8, !tbaa !314
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !460, metadata !DIExpression()), !dbg !468
  call void @llvm.lifetime.start.p0(i64 8, ptr %real) #10, !dbg !469
  tail call void @llvm.dbg.declare(metadata ptr %real, metadata !461, metadata !DIExpression()), !dbg !470
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !471, !tbaa !303
  %call = call i64 @ftello64(ptr noundef %0), !dbg !472
  store i64 %call, ptr @epos, align 8, !dbg !473, !tbaa !314
  %1 = load ptr, ptr %target.addr, align 8, !dbg !474, !tbaa !303
  %2 = load i64, ptr %length.addr, align 8, !dbg !475, !tbaa !314
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !476, !tbaa !303
  %call1 = call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %3), !dbg !477
  store i64 %call1, ptr %real, align 8, !dbg !478, !tbaa !314
  %4 = load i64, ptr %real, align 8, !dbg !479, !tbaa !314
  %5 = load i64, ptr %length.addr, align 8, !dbg !480, !tbaa !314
  %cmp = icmp ne i64 %4, %5, !dbg !481
  br i1 %cmp, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1024, ptr %__buf) #10, !dbg !483
  tail call void @llvm.dbg.declare(metadata ptr %__buf, metadata !462, metadata !DIExpression()), !dbg !483
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !483
  %6 = load i64, ptr %length.addr, align 8, !dbg !483, !tbaa !314
  %7 = load i64, ptr %real, align 8, !dbg !483, !tbaa !314
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 1024, ptr noundef @.str.4, i64 noundef %6, i64 noundef %7) #10, !dbg !483
  %8 = load i64, ptr @epos, align 8, !dbg !483, !tbaa !314
  %arraydecay3 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !483
  %call4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @error, i64 noundef 1044, ptr noundef @.str.2, i64 noundef %8, ptr noundef %arraydecay3) #10, !dbg !483
  call void @llvm.lifetime.end.p0(i64 1024, ptr %__buf) #10, !dbg !484
  store i32 0, ptr %retval, align 4, !dbg !485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !485

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !486

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %real) #10, !dbg !487
  %9 = load i32, ptr %retval, align 4, !dbg !487
  ret i32 %9, !dbg !487
}

declare !dbg !488 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @readString(ptr noundef %fp, ptr noundef %target) #0 !dbg !492 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__buf = alloca [1024 x i8], align 16
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !496, metadata !DIExpression()), !dbg !503
  store ptr %target, ptr %target.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !497, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10, !dbg !505
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !498, metadata !DIExpression()), !dbg !506
  %0 = load ptr, ptr %target.addr, align 8, !dbg !507, !tbaa !303
  store ptr null, ptr %0, align 8, !dbg !508, !tbaa !303
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !509, !tbaa !303
  %call = call i32 @readLong(ptr noundef %1, i8 noundef signext 36, ptr noundef %len), !dbg !511
  %tobool = icmp ne i32 %call, 0, !dbg !511
  br i1 %tobool, label %if.end, label %if.then, !dbg !512

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !513

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %len, align 8, !dbg !515, !tbaa !314
  %cmp = icmp slt i64 %2, 0, !dbg !516
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !517

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, ptr %len, align 8, !dbg !518, !tbaa !314
  %cmp1 = icmp sgt i64 %3, 9223372036854775805, !dbg !519
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !520

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 1024, ptr %__buf) #10, !dbg !521
  tail call void @llvm.dbg.declare(metadata ptr %__buf, metadata !499, metadata !DIExpression()), !dbg !521
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !521
  %4 = load i64, ptr %len, align 8, !dbg !521, !tbaa !314
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 1024, ptr noundef @.str.5, i64 noundef %4) #10, !dbg !521
  %5 = load i64, ptr @epos, align 8, !dbg !521, !tbaa !314
  %arraydecay4 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !521
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @error, i64 noundef 1044, ptr noundef @.str.2, i64 noundef %5, ptr noundef %arraydecay4) #10, !dbg !521
  call void @llvm.lifetime.end.p0(i64 1024, ptr %__buf) #10, !dbg !522
  store i32 0, ptr %retval, align 4, !dbg !523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !523

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load i64, ptr %len, align 8, !dbg !524, !tbaa !314
  %add = add nsw i64 %6, 2, !dbg !524
  store i64 %add, ptr %len, align 8, !dbg !524, !tbaa !314
  %7 = load i64, ptr %len, align 8, !dbg !525, !tbaa !314
  %call7 = call ptr @zmalloc(i64 noundef %7), !dbg !526
  %8 = load ptr, ptr %target.addr, align 8, !dbg !527, !tbaa !303
  store ptr %call7, ptr %8, align 8, !dbg !528, !tbaa !303
  %9 = load ptr, ptr %fp.addr, align 8, !dbg !529, !tbaa !303
  %10 = load ptr, ptr %target.addr, align 8, !dbg !531, !tbaa !303
  %11 = load ptr, ptr %10, align 8, !dbg !532, !tbaa !303
  %12 = load i64, ptr %len, align 8, !dbg !533, !tbaa !314
  %call8 = call i32 @readBytes(ptr noundef %9, ptr noundef %11, i64 noundef %12), !dbg !534
  %tobool9 = icmp ne i32 %call8, 0, !dbg !534
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !535

if.then10:                                        ; preds = %if.end6
  %13 = load ptr, ptr %target.addr, align 8, !dbg !536, !tbaa !303
  %14 = load ptr, ptr %13, align 8, !dbg !538, !tbaa !303
  call void @zfree(ptr noundef %14), !dbg !539
  %15 = load ptr, ptr %target.addr, align 8, !dbg !540, !tbaa !303
  store ptr null, ptr %15, align 8, !dbg !541, !tbaa !303
  store i32 0, ptr %retval, align 4, !dbg !542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !542

if.end11:                                         ; preds = %if.end6
  %16 = load ptr, ptr %target.addr, align 8, !dbg !543, !tbaa !303
  %17 = load ptr, ptr %16, align 8, !dbg !545, !tbaa !303
  %18 = load i64, ptr %len, align 8, !dbg !546, !tbaa !314
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !547
  %add.ptr12 = getelementptr inbounds i8, ptr %add.ptr, i64 -2, !dbg !548
  %call13 = call i32 @consumeNewline(ptr noundef %add.ptr12), !dbg !549
  %tobool14 = icmp ne i32 %call13, 0, !dbg !549
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !550

if.then15:                                        ; preds = %if.end11
  %19 = load ptr, ptr %target.addr, align 8, !dbg !551, !tbaa !303
  %20 = load ptr, ptr %19, align 8, !dbg !553, !tbaa !303
  call void @zfree(ptr noundef %20), !dbg !554
  %21 = load ptr, ptr %target.addr, align 8, !dbg !555, !tbaa !303
  store ptr null, ptr %21, align 8, !dbg !556, !tbaa !303
  store i32 0, ptr %retval, align 4, !dbg !557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !557

if.end16:                                         ; preds = %if.end11
  %22 = load ptr, ptr %target.addr, align 8, !dbg !558, !tbaa !303
  %23 = load ptr, ptr %22, align 8, !dbg !559, !tbaa !303
  %24 = load i64, ptr %len, align 8, !dbg !560, !tbaa !314
  %sub = sub nsw i64 %24, 2, !dbg !561
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %sub, !dbg !562
  store i8 0, ptr %arrayidx, align 1, !dbg !563, !tbaa !313
  store i32 1, ptr %retval, align 4, !dbg !564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !564

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10, !dbg !565
  %25 = load i32, ptr %retval, align 4, !dbg !565
  ret i32 %25, !dbg !565
}

declare !dbg !566 ptr @zmalloc(i64 noundef) #4

declare !dbg !570 void @zfree(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @readArgc(ptr noundef %fp, ptr noundef %target) #0 !dbg !573 {
entry:
  %fp.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !577, metadata !DIExpression()), !dbg !579
  store ptr %target, ptr %target.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !578, metadata !DIExpression()), !dbg !580
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !581, !tbaa !303
  %1 = load ptr, ptr %target.addr, align 8, !dbg !582, !tbaa !303
  %call = call i32 @readLong(ptr noundef %0, i8 noundef signext 42, ptr noundef %1), !dbg !583
  ret i32 %call, !dbg !584
}

; Function Attrs: nounwind uwtable
define dso_local i32 @processRESP(ptr noundef %fp, ptr noundef %filename, ptr noundef %out_multi) #0 !dbg !585 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %out_multi.addr = alloca ptr, align 8
  %argc = alloca i64, align 8
  %str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %__buf = alloca [1024 x i8], align 16
  %__buf25 = alloca [1024 x i8], align 16
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !590, metadata !DIExpression()), !dbg !613
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !591, metadata !DIExpression()), !dbg !614
  store ptr %out_multi, ptr %out_multi.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %out_multi.addr, metadata !592, metadata !DIExpression()), !dbg !615
  call void @llvm.lifetime.start.p0(i64 8, ptr %argc) #10, !dbg !616
  tail call void @llvm.dbg.declare(metadata ptr %argc, metadata !593, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #10, !dbg !618
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !594, metadata !DIExpression()), !dbg !619
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !620, !tbaa !303
  %call = call i32 @readArgc(ptr noundef %0, ptr noundef %argc), !dbg !622
  %tobool = icmp ne i32 %call, 0, !dbg !622
  br i1 %tobool, label %if.end, label %if.then, !dbg !623

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !624

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !625
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !595, metadata !DIExpression()), !dbg !626
  store i32 0, ptr %i, align 4, !dbg !626, !tbaa !627
  br label %for.cond, !dbg !625

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !dbg !629, !tbaa !627
  %conv = sext i32 %1 to i64, !dbg !629
  %2 = load i64, ptr %argc, align 8, !dbg !630, !tbaa !314
  %cmp = icmp slt i64 %conv, %2, !dbg !631
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !632

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !632

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %fp.addr, align 8, !dbg !633, !tbaa !303
  %call2 = call i32 @readString(ptr noundef %3, ptr noundef %str), !dbg !635
  %tobool3 = icmp ne i32 %call2, 0, !dbg !635
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !636

if.then4:                                         ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !637

if.end5:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !638, !tbaa !627
  %cmp6 = icmp eq i32 %4, 0, !dbg !639
  br i1 %cmp6, label %if.then8, label %if.end33, !dbg !640

if.then8:                                         ; preds = %if.end5
  %5 = load ptr, ptr %str, align 8, !dbg !641, !tbaa !303
  %call9 = call i32 @strcasecmp(ptr noundef %5, ptr noundef @.str.6) #9, !dbg !642
  %cmp10 = icmp eq i32 %call9, 0, !dbg !643
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !644

if.then12:                                        ; preds = %if.then8
  %6 = load ptr, ptr %out_multi.addr, align 8, !dbg !645, !tbaa !303
  %7 = load i32, ptr %6, align 4, !dbg !646, !tbaa !627
  %inc = add nsw i32 %7, 1, !dbg !646
  store i32 %inc, ptr %6, align 4, !dbg !646, !tbaa !627
  %tobool13 = icmp ne i32 %7, 0, !dbg !646
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !647

if.then14:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 1024, ptr %__buf) #10, !dbg !648
  tail call void @llvm.dbg.declare(metadata ptr %__buf, metadata !597, metadata !DIExpression()), !dbg !648
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !648
  %8 = load ptr, ptr %filename.addr, align 8, !dbg !648, !tbaa !303
  %call15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 1024, ptr noundef @.str.7, ptr noundef %8) #10, !dbg !648
  %9 = load i64, ptr @epos, align 8, !dbg !648, !tbaa !314
  %arraydecay16 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !648
  %call17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @error, i64 noundef 1044, ptr noundef @.str.2, i64 noundef %9, ptr noundef %arraydecay16) #10, !dbg !648
  call void @llvm.lifetime.end.p0(i64 1024, ptr %__buf) #10, !dbg !649
  %10 = load ptr, ptr %str, align 8, !dbg !650, !tbaa !303
  call void @zfree(ptr noundef %10), !dbg !651
  store i32 0, ptr %retval, align 4, !dbg !652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !652

if.end18:                                         ; preds = %if.then12
  br label %if.end32, !dbg !653

if.else:                                          ; preds = %if.then8
  %11 = load ptr, ptr %str, align 8, !dbg !654, !tbaa !303
  %call19 = call i32 @strcasecmp(ptr noundef %11, ptr noundef @.str.8) #9, !dbg !655
  %cmp20 = icmp eq i32 %call19, 0, !dbg !656
  br i1 %cmp20, label %if.then22, label %if.end31, !dbg !657

if.then22:                                        ; preds = %if.else
  %12 = load ptr, ptr %out_multi.addr, align 8, !dbg !658, !tbaa !303
  %13 = load i32, ptr %12, align 4, !dbg !659, !tbaa !627
  %dec = add nsw i32 %13, -1, !dbg !659
  store i32 %dec, ptr %12, align 4, !dbg !659, !tbaa !627
  %tobool23 = icmp ne i32 %dec, 0, !dbg !659
  br i1 %tobool23, label %if.then24, label %if.end30, !dbg !660

if.then24:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 1024, ptr %__buf25) #10, !dbg !661
  tail call void @llvm.dbg.declare(metadata ptr %__buf25, metadata !607, metadata !DIExpression()), !dbg !661
  %arraydecay26 = getelementptr inbounds [1024 x i8], ptr %__buf25, i64 0, i64 0, !dbg !661
  %14 = load ptr, ptr %filename.addr, align 8, !dbg !661, !tbaa !303
  %call27 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay26, i64 noundef 1024, ptr noundef @.str.9, ptr noundef %14) #10, !dbg !661
  %15 = load i64, ptr @epos, align 8, !dbg !661, !tbaa !314
  %arraydecay28 = getelementptr inbounds [1024 x i8], ptr %__buf25, i64 0, i64 0, !dbg !661
  %call29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @error, i64 noundef 1044, ptr noundef @.str.2, i64 noundef %15, ptr noundef %arraydecay28) #10, !dbg !661
  call void @llvm.lifetime.end.p0(i64 1024, ptr %__buf25) #10, !dbg !662
  %16 = load ptr, ptr %str, align 8, !dbg !663, !tbaa !303
  call void @zfree(ptr noundef %16), !dbg !664
  store i32 0, ptr %retval, align 4, !dbg !665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !665

if.end30:                                         ; preds = %if.then22
  br label %if.end31, !dbg !666

if.end31:                                         ; preds = %if.end30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end18
  br label %if.end33, !dbg !667

if.end33:                                         ; preds = %if.end32, %if.end5
  %17 = load ptr, ptr %str, align 8, !dbg !668, !tbaa !303
  call void @zfree(ptr noundef %17), !dbg !669
  br label %for.inc, !dbg !670

for.inc:                                          ; preds = %if.end33
  %18 = load i32, ptr %i, align 4, !dbg !671, !tbaa !627
  %inc34 = add nsw i32 %18, 1, !dbg !671
  store i32 %inc34, ptr %i, align 4, !dbg !671, !tbaa !627
  br label %for.cond, !dbg !672, !llvm.loop !673

cleanup:                                          ; preds = %if.then24, %if.then14, %if.then4, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !672
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  store i32 1, ptr %retval, align 4, !dbg !676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !676

cleanup35:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #10, !dbg !677
  call void @llvm.lifetime.end.p0(i64 8, ptr %argc) #10, !dbg !677
  %19 = load i32, ptr %retval, align 4, !dbg !677
  ret i32 %19, !dbg !677
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !678 i32 @strcasecmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @processAnnotations(ptr noundef %fp, ptr noundef %filename, i32 noundef %last_file) #0 !dbg !682 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %last_file.addr = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %endptr = alloca ptr, align 8
  %ts = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !686, metadata !DIExpression()), !dbg !694
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !687, metadata !DIExpression()), !dbg !695
  store i32 %last_file, ptr %last_file.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %last_file.addr, metadata !688, metadata !DIExpression()), !dbg !696
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #10, !dbg !697
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !689, metadata !DIExpression()), !dbg !698
  %0 = load ptr, ptr %fp.addr, align 8, !dbg !699, !tbaa !303
  %call = call i64 @ftello64(ptr noundef %0), !dbg !700
  store i64 %call, ptr @epos, align 8, !dbg !701, !tbaa !314
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !702
  %1 = load ptr, ptr %fp.addr, align 8, !dbg !704, !tbaa !303
  %call1 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef %1), !dbg !705
  %cmp = icmp eq ptr %call1, null, !dbg !706
  br i1 %cmp, label %if.then, label %if.end, !dbg !707

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8, !dbg !708, !tbaa !303
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %2), !dbg !710
  call void @exit(i32 noundef 1) #11, !dbg !711
  unreachable, !dbg !711

if.end:                                           ; preds = %entry
  %3 = load i64, ptr @to_timestamp, align 8, !dbg !712, !tbaa !314
  %tobool = icmp ne i64 %3, 0, !dbg !712
  br i1 %tobool, label %land.lhs.true, label %if.end38, !dbg !713

land.lhs.true:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !714
  %call4 = call i32 @strncmp(ptr noundef %arraydecay3, ptr noundef @.str.11, i64 noundef 4) #9, !dbg !715
  %cmp5 = icmp eq i32 %call4, 0, !dbg !716
  br i1 %cmp5, label %if.then6, label %if.end38, !dbg !717

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %endptr) #10, !dbg !718
  tail call void @llvm.dbg.declare(metadata ptr %endptr, metadata !690, metadata !DIExpression()), !dbg !719
  %call7 = call ptr @__errno_location() #12, !dbg !720
  store i32 0, ptr %call7, align 4, !dbg !721, !tbaa !627
  call void @llvm.lifetime.start.p0(i64 8, ptr %ts) #10, !dbg !722
  tail call void @llvm.dbg.declare(metadata ptr %ts, metadata !693, metadata !DIExpression()), !dbg !723
  %arraydecay8 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !724
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay8, i64 4, !dbg !725
  %call9 = call i64 @strtol(ptr noundef %add.ptr, ptr noundef %endptr, i32 noundef 10) #10, !dbg !726
  store i64 %call9, ptr %ts, align 8, !dbg !723, !tbaa !314
  %call10 = call ptr @__errno_location() #12, !dbg !727
  %4 = load i32, ptr %call10, align 4, !dbg !727, !tbaa !627
  %cmp11 = icmp ne i32 %4, 0, !dbg !729
  br i1 %cmp11, label %if.then14, label %lor.lhs.false, !dbg !730

lor.lhs.false:                                    ; preds = %if.then6
  %5 = load ptr, ptr %endptr, align 8, !dbg !731, !tbaa !303
  %6 = load i8, ptr %5, align 1, !dbg !732, !tbaa !313
  %conv = sext i8 %6 to i32, !dbg !732
  %cmp12 = icmp ne i32 %conv, 13, !dbg !733
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !734

if.then14:                                        ; preds = %lor.lhs.false, %if.then6
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.12), !dbg !735
  call void @exit(i32 noundef 1) #11, !dbg !737
  unreachable, !dbg !737

if.end16:                                         ; preds = %lor.lhs.false
  %7 = load i64, ptr %ts, align 8, !dbg !738, !tbaa !314
  %8 = load i64, ptr @to_timestamp, align 8, !dbg !740, !tbaa !314
  %cmp17 = icmp sle i64 %7, %8, !dbg !741
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !742

if.then19:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4, !dbg !743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !743

if.end20:                                         ; preds = %if.end16
  %9 = load i64, ptr @epos, align 8, !dbg !744, !tbaa !314
  %cmp21 = icmp eq i64 %9, 0, !dbg !746
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !747

if.then23:                                        ; preds = %if.end20
  %10 = load ptr, ptr %filename.addr, align 8, !dbg !748, !tbaa !303
  %11 = load i64, ptr @to_timestamp, align 8, !dbg !750, !tbaa !314
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef %10, i64 noundef %11), !dbg !751
  call void @exit(i32 noundef 1) #11, !dbg !752
  unreachable, !dbg !752

if.end25:                                         ; preds = %if.end20
  %12 = load i32, ptr %last_file.addr, align 4, !dbg !753, !tbaa !627
  %tobool26 = icmp ne i32 %12, 0, !dbg !753
  br i1 %tobool26, label %if.end30, label %if.then27, !dbg !755

if.then27:                                        ; preds = %if.end25
  %13 = load ptr, ptr %filename.addr, align 8, !dbg !756, !tbaa !303
  %14 = load i64, ptr @to_timestamp, align 8, !dbg !758, !tbaa !314
  %15 = load i64, ptr @epos, align 8, !dbg !759, !tbaa !314
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %13, i64 noundef %14, i64 noundef %15), !dbg !760
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.15), !dbg !761
  call void @exit(i32 noundef 1) #11, !dbg !762
  unreachable, !dbg !762

if.end30:                                         ; preds = %if.end25
  %16 = load ptr, ptr %fp.addr, align 8, !dbg !763, !tbaa !303
  %call31 = call i32 @fileno(ptr noundef %16) #10, !dbg !765
  %17 = load i64, ptr @epos, align 8, !dbg !766, !tbaa !314
  %call32 = call i32 @ftruncate64(i32 noundef %call31, i64 noundef %17) #10, !dbg !767
  %cmp33 = icmp eq i32 %call32, -1, !dbg !768
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !769

if.then35:                                        ; preds = %if.end30
  %18 = load ptr, ptr %filename.addr, align 8, !dbg !770, !tbaa !303
  %19 = load i64, ptr @to_timestamp, align 8, !dbg !772, !tbaa !314
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef %18, i64 noundef %19), !dbg !773
  call void @exit(i32 noundef 1) #11, !dbg !774
  unreachable, !dbg !774

if.else:                                          ; preds = %if.end30
  store i32 0, ptr %retval, align 4, !dbg !775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !775

cleanup:                                          ; preds = %if.else, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %ts) #10, !dbg !777
  call void @llvm.lifetime.end.p0(i64 8, ptr %endptr) #10, !dbg !777
  br label %cleanup39

if.end38:                                         ; preds = %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4, !dbg !778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !778

cleanup39:                                        ; preds = %if.end38, %cleanup
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #10, !dbg !779
  %20 = load i32, ptr %retval, align 4, !dbg !779
  ret i32 %20, !dbg !779
}

declare !dbg !780 i32 @printf(ptr noundef, ...) #4

; Function Attrs: noreturn nounwind
declare !dbg !783 void @exit(i32 noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !786 ptr @__errno_location() #6

; Function Attrs: nounwind
declare !dbg !790 i32 @ftruncate64(i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare !dbg !794 i32 @fileno(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @checkSingleAof(ptr noundef %aof_filename, ptr noundef %aof_filepath, i32 noundef %last_file, i32 noundef %fix, i32 noundef %preamble) #0 !dbg !797 {
entry:
  %retval = alloca i32, align 4
  %aof_filename.addr = alloca ptr, align 8
  %aof_filepath.addr = alloca ptr, align 8
  %last_file.addr = alloca i32, align 4
  %fix.addr = alloca i32, align 4
  %preamble.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  %diff = alloca i64, align 8
  %multi = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %fp = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %argv = alloca [2 x ptr], align 16
  %__buf = alloca [1024 x i8], align 16
  %buf101 = alloca [2 x i8], align 1
  store ptr %aof_filename, ptr %aof_filename.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %aof_filename.addr, metadata !801, metadata !DIExpression()), !dbg !859
  store ptr %aof_filepath, ptr %aof_filepath.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %aof_filepath.addr, metadata !802, metadata !DIExpression()), !dbg !860
  store i32 %last_file, ptr %last_file.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %last_file.addr, metadata !803, metadata !DIExpression()), !dbg !861
  store i32 %fix, ptr %fix.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %fix.addr, metadata !804, metadata !DIExpression()), !dbg !862
  store i32 %preamble, ptr %preamble.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %preamble.addr, metadata !805, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #10, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !806, metadata !DIExpression()), !dbg !865
  store i64 0, ptr %pos, align 8, !dbg !865, !tbaa !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #10, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %diff, metadata !807, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 4, ptr %multi) #10, !dbg !867
  tail call void @llvm.dbg.declare(metadata ptr %multi, metadata !808, metadata !DIExpression()), !dbg !868
  store i32 0, ptr %multi, align 4, !dbg !868, !tbaa !627
  call void @llvm.lifetime.start.p0(i64 2, ptr %buf) #10, !dbg !869
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !809, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #10, !dbg !871
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !810, metadata !DIExpression()), !dbg !872
  %0 = load ptr, ptr %aof_filepath.addr, align 8, !dbg !873, !tbaa !303
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str.17), !dbg !874
  store ptr %call, ptr %fp, align 8, !dbg !872, !tbaa !303
  %1 = load ptr, ptr %fp, align 8, !dbg !875, !tbaa !303
  %cmp = icmp eq ptr %1, null, !dbg !877
  br i1 %cmp, label %if.then, label %if.end, !dbg !878

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %aof_filepath.addr, align 8, !dbg !879, !tbaa !303
  %call1 = call ptr @__errno_location() #12, !dbg !881
  %3 = load i32, ptr %call1, align 4, !dbg !881, !tbaa !627
  %call2 = call ptr @strerror(i32 noundef %3) #10, !dbg !882
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %2, ptr noundef %call2), !dbg !883
  call void @exit(i32 noundef 1) #11, !dbg !884
  unreachable, !dbg !884

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 144, ptr %sb) #10, !dbg !885
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !811, metadata !DIExpression()), !dbg !886
  %4 = load ptr, ptr %fp, align 8, !dbg !887, !tbaa !303
  %call4 = call i32 @fileno(ptr noundef %4) #10, !dbg !889
  %call5 = call i32 @fstat64(i32 noundef %call4, ptr noundef %sb) #10, !dbg !890
  %cmp6 = icmp eq i32 %call5, -1, !dbg !891
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !892

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr %aof_filename.addr, align 8, !dbg !893, !tbaa !303
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, ptr noundef %5), !dbg !895
  call void @exit(i32 noundef 1) #11, !dbg !896
  unreachable, !dbg !896

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !897
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !845, metadata !DIExpression()), !dbg !898
  %st_size = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 8, !dbg !899
  %6 = load i64, ptr %st_size, align 8, !dbg !899, !tbaa !900
  store i64 %6, ptr %size, align 8, !dbg !898, !tbaa !314
  %7 = load i64, ptr %size, align 8, !dbg !903, !tbaa !314
  %cmp10 = icmp eq i64 %7, 0, !dbg !905
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !906

if.then11:                                        ; preds = %if.end9
  store i32 1, ptr %retval, align 4, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !907

if.end12:                                         ; preds = %if.end9
  %8 = load i32, ptr %preamble.addr, align 4, !dbg !909, !tbaa !627
  %tobool = icmp ne i32 %8, 0, !dbg !909
  br i1 %tobool, label %if.then13, label %if.end20, !dbg !910

if.then13:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 16, ptr %argv) #10, !dbg !911
  tail call void @llvm.dbg.declare(metadata ptr %argv, metadata !846, metadata !DIExpression()), !dbg !912
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %argv, i64 0, i64 0, !dbg !913
  store ptr null, ptr %arrayinit.begin, align 8, !dbg !913, !tbaa !303
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1, !dbg !913
  %9 = load ptr, ptr %aof_filename.addr, align 8, !dbg !914, !tbaa !303
  store ptr %9, ptr %arrayinit.element, align 8, !dbg !913, !tbaa !303
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %argv, i64 0, i64 0, !dbg !915
  %10 = load ptr, ptr %fp, align 8, !dbg !917, !tbaa !303
  %call14 = call i32 @redis_check_rdb_main(i32 noundef 2, ptr noundef %arraydecay, ptr noundef %10), !dbg !918
  %cmp15 = icmp eq i32 %call14, -1, !dbg !919
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !920

if.then16:                                        ; preds = %if.then13
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.20), !dbg !921
  call void @exit(i32 noundef 1) #11, !dbg !923
  unreachable, !dbg !923

if.else:                                          ; preds = %if.then13
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.21), !dbg !924
  br label %if.end19

if.end19:                                         ; preds = %if.else
  call void @llvm.lifetime.end.p0(i64 16, ptr %argv) #10, !dbg !926
  br label %if.end20, !dbg !927

if.end20:                                         ; preds = %if.end19, %if.end12
  br label %while.cond, !dbg !928

while.cond:                                       ; preds = %if.end63, %if.end20
  br label %while.body, !dbg !928

while.body:                                       ; preds = %while.cond
  %11 = load i32, ptr %multi, align 4, !dbg !929, !tbaa !627
  %tobool21 = icmp ne i32 %11, 0, !dbg !929
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !932

if.then22:                                        ; preds = %while.body
  %12 = load ptr, ptr %fp, align 8, !dbg !933, !tbaa !303
  %call23 = call i64 @ftello64(ptr noundef %12), !dbg !934
  store i64 %call23, ptr %pos, align 8, !dbg !935, !tbaa !314
  br label %if.end24, !dbg !936

if.end24:                                         ; preds = %if.then22, %while.body
  %arraydecay25 = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0, !dbg !937
  %13 = load ptr, ptr %fp, align 8, !dbg !939, !tbaa !303
  %call26 = call ptr @fgets(ptr noundef %arraydecay25, i32 noundef 2, ptr noundef %13), !dbg !940
  %cmp27 = icmp eq ptr %call26, null, !dbg !941
  br i1 %cmp27, label %if.then28, label %if.end34, !dbg !942

if.then28:                                        ; preds = %if.end24
  %14 = load ptr, ptr %fp, align 8, !dbg !943, !tbaa !303
  %call29 = call i32 @feof(ptr noundef %14) #10, !dbg !946
  %tobool30 = icmp ne i32 %call29, 0, !dbg !946
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !947

if.then31:                                        ; preds = %if.then28
  br label %while.end, !dbg !948

if.end32:                                         ; preds = %if.then28
  %15 = load ptr, ptr %aof_filename.addr, align 8, !dbg !950, !tbaa !303
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, ptr noundef %15), !dbg !951
  call void @exit(i32 noundef 1) #11, !dbg !952
  unreachable, !dbg !952

if.end34:                                         ; preds = %if.end24
  %16 = load ptr, ptr %fp, align 8, !dbg !953, !tbaa !303
  %call35 = call i32 @fseek(ptr noundef %16, i64 noundef -1, i32 noundef 1), !dbg !955
  %cmp36 = icmp eq i32 %call35, -1, !dbg !956
  br i1 %cmp36, label %if.then37, label %if.end41, !dbg !957

if.then37:                                        ; preds = %if.end34
  %17 = load ptr, ptr %aof_filename.addr, align 8, !dbg !958, !tbaa !303
  %call38 = call ptr @__errno_location() #12, !dbg !960
  %18 = load i32, ptr %call38, align 4, !dbg !960, !tbaa !627
  %call39 = call ptr @strerror(i32 noundef %18) #10, !dbg !961
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %17, ptr noundef %call39), !dbg !962
  call void @exit(i32 noundef 1) #11, !dbg !963
  unreachable, !dbg !963

if.end41:                                         ; preds = %if.end34
  %arrayidx = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0, !dbg !964
  %19 = load i8, ptr %arrayidx, align 1, !dbg !964, !tbaa !313
  %conv = sext i8 %19 to i32, !dbg !964
  %cmp42 = icmp eq i32 %conv, 35, !dbg !966
  br i1 %cmp42, label %if.then44, label %if.else50, !dbg !967

if.then44:                                        ; preds = %if.end41
  %20 = load ptr, ptr %fp, align 8, !dbg !968, !tbaa !303
  %21 = load ptr, ptr %aof_filepath.addr, align 8, !dbg !971, !tbaa !303
  %22 = load i32, ptr %last_file.addr, align 4, !dbg !972, !tbaa !627
  %call45 = call i32 @processAnnotations(ptr noundef %20, ptr noundef %21, i32 noundef %22), !dbg !973
  %tobool46 = icmp ne i32 %call45, 0, !dbg !973
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !974

if.then47:                                        ; preds = %if.then44
  %23 = load ptr, ptr %fp, align 8, !dbg !975, !tbaa !303
  %call48 = call i32 @fclose(ptr noundef %23), !dbg !977
  store i32 3, ptr %retval, align 4, !dbg !978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !978

if.end49:                                         ; preds = %if.then44
  br label %if.end63, !dbg !979

if.else50:                                        ; preds = %if.end41
  %arrayidx51 = getelementptr inbounds [2 x i8], ptr %buf, i64 0, i64 0, !dbg !980
  %24 = load i8, ptr %arrayidx51, align 1, !dbg !980, !tbaa !313
  %conv52 = sext i8 %24 to i32, !dbg !980
  %cmp53 = icmp eq i32 %conv52, 42, !dbg !982
  br i1 %cmp53, label %if.then55, label %if.else60, !dbg !983

if.then55:                                        ; preds = %if.else50
  %25 = load ptr, ptr %fp, align 8, !dbg !984, !tbaa !303
  %26 = load ptr, ptr %aof_filepath.addr, align 8, !dbg !987, !tbaa !303
  %call56 = call i32 @processRESP(ptr noundef %25, ptr noundef %26, ptr noundef %multi), !dbg !988
  %tobool57 = icmp ne i32 %call56, 0, !dbg !988
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !989

if.then58:                                        ; preds = %if.then55
  br label %while.end, !dbg !990

if.end59:                                         ; preds = %if.then55
  br label %if.end62, !dbg !991

if.else60:                                        ; preds = %if.else50
  %27 = load ptr, ptr %aof_filename.addr, align 8, !dbg !992, !tbaa !303
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %27), !dbg !994
  br label %while.end, !dbg !995

if.end62:                                         ; preds = %if.end59
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end49
  br label %while.cond, !dbg !928, !llvm.loop !996

while.end:                                        ; preds = %if.else60, %if.then58, %if.then31
  %28 = load ptr, ptr %fp, align 8, !dbg !998, !tbaa !303
  %call64 = call i32 @feof(ptr noundef %28) #10, !dbg !999
  %tobool65 = icmp ne i32 %call64, 0, !dbg !999
  br i1 %tobool65, label %land.lhs.true, label %if.end76, !dbg !1000

land.lhs.true:                                    ; preds = %while.end
  %29 = load i32, ptr %multi, align 4, !dbg !1001, !tbaa !627
  %tobool66 = icmp ne i32 %29, 0, !dbg !1001
  br i1 %tobool66, label %land.lhs.true67, label %if.end76, !dbg !1002

land.lhs.true67:                                  ; preds = %land.lhs.true
  %call68 = call i64 @strlen(ptr noundef @error) #9, !dbg !1003
  %cmp69 = icmp eq i64 %call68, 0, !dbg !1004
  br i1 %cmp69, label %if.then71, label %if.end76, !dbg !1005

if.then71:                                        ; preds = %land.lhs.true67
  call void @llvm.lifetime.start.p0(i64 1024, ptr %__buf) #10, !dbg !1006
  tail call void @llvm.dbg.declare(metadata ptr %__buf, metadata !850, metadata !DIExpression()), !dbg !1006
  %arraydecay72 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !1006
  %call73 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay72, i64 noundef 1024, ptr noundef @.str.25) #10, !dbg !1006
  %30 = load i64, ptr @epos, align 8, !dbg !1006, !tbaa !314
  %arraydecay74 = getelementptr inbounds [1024 x i8], ptr %__buf, i64 0, i64 0, !dbg !1006
  %call75 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @error, i64 noundef 1044, ptr noundef @.str.2, i64 noundef %30, ptr noundef %arraydecay74) #10, !dbg !1006
  call void @llvm.lifetime.end.p0(i64 1024, ptr %__buf) #10, !dbg !1007
  br label %if.end76, !dbg !1008

if.end76:                                         ; preds = %if.then71, %land.lhs.true67, %land.lhs.true, %while.end
  %call77 = call i64 @strlen(ptr noundef @error) #9, !dbg !1009
  %cmp78 = icmp ugt i64 %call77, 0, !dbg !1011
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !1012

if.then80:                                        ; preds = %if.end76
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, ptr noundef @error), !dbg !1013
  br label %if.end82, !dbg !1015

if.end82:                                         ; preds = %if.then80, %if.end76
  %31 = load i64, ptr %size, align 8, !dbg !1016, !tbaa !314
  %32 = load i64, ptr %pos, align 8, !dbg !1017, !tbaa !314
  %sub = sub nsw i64 %31, %32, !dbg !1018
  store i64 %sub, ptr %diff, align 8, !dbg !1019, !tbaa !314
  %33 = load i64, ptr %diff, align 8, !dbg !1020, !tbaa !314
  %cmp83 = icmp eq i64 %33, 0, !dbg !1022
  br i1 %cmp83, label %land.lhs.true85, label %if.end90, !dbg !1023

land.lhs.true85:                                  ; preds = %if.end82
  %34 = load i64, ptr @to_timestamp, align 8, !dbg !1024, !tbaa !314
  %tobool86 = icmp ne i64 %34, 0, !dbg !1024
  br i1 %tobool86, label %if.then87, label %if.end90, !dbg !1025

if.then87:                                        ; preds = %land.lhs.true85
  %35 = load ptr, ptr %aof_filename.addr, align 8, !dbg !1026, !tbaa !303
  %36 = load i64, ptr @to_timestamp, align 8, !dbg !1028, !tbaa !314
  %call88 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef %35, i64 noundef %36), !dbg !1029
  %37 = load ptr, ptr %fp, align 8, !dbg !1030, !tbaa !303
  %call89 = call i32 @fclose(ptr noundef %37), !dbg !1031
  store i32 0, ptr %retval, align 4, !dbg !1032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

if.end90:                                         ; preds = %land.lhs.true85, %if.end82
  %38 = load ptr, ptr %aof_filename.addr, align 8, !dbg !1033, !tbaa !303
  %39 = load i64, ptr %size, align 8, !dbg !1034, !tbaa !314
  %40 = load i64, ptr %pos, align 8, !dbg !1035, !tbaa !314
  %41 = load i64, ptr @line, align 8, !dbg !1036, !tbaa !319
  %42 = load i64, ptr %diff, align 8, !dbg !1037, !tbaa !314
  %call91 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, ptr noundef %38, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef %42), !dbg !1038
  %43 = load i64, ptr %diff, align 8, !dbg !1039, !tbaa !314
  %cmp92 = icmp sgt i64 %43, 0, !dbg !1040
  br i1 %cmp92, label %if.then94, label %if.end125, !dbg !1041

if.then94:                                        ; preds = %if.end90
  %44 = load i32, ptr %fix.addr, align 4, !dbg !1042, !tbaa !627
  %tobool95 = icmp ne i32 %44, 0, !dbg !1042
  br i1 %tobool95, label %if.then96, label %if.else123, !dbg !1043

if.then96:                                        ; preds = %if.then94
  %45 = load i32, ptr %last_file.addr, align 4, !dbg !1044, !tbaa !627
  %tobool97 = icmp ne i32 %45, 0, !dbg !1044
  br i1 %tobool97, label %if.end100, label %if.then98, !dbg !1046

if.then98:                                        ; preds = %if.then96
  %46 = load ptr, ptr %aof_filename.addr, align 8, !dbg !1047, !tbaa !303
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.29, ptr noundef %46), !dbg !1049
  call void @exit(i32 noundef 1) #11, !dbg !1050
  unreachable, !dbg !1050

if.end100:                                        ; preds = %if.then96
  call void @llvm.lifetime.start.p0(i64 2, ptr %buf101) #10, !dbg !1051
  tail call void @llvm.dbg.declare(metadata ptr %buf101, metadata !854, metadata !DIExpression()), !dbg !1052
  %47 = load ptr, ptr %aof_filename.addr, align 8, !dbg !1053, !tbaa !303
  %48 = load i64, ptr %size, align 8, !dbg !1054, !tbaa !314
  %49 = load i64, ptr %diff, align 8, !dbg !1055, !tbaa !314
  %50 = load i64, ptr %pos, align 8, !dbg !1056, !tbaa !314
  %call102 = call i32 (ptr, ...) @printf(ptr noundef @.str.30, ptr noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef %50), !dbg !1057
  %call103 = call i32 (ptr, ...) @printf(ptr noundef @.str.31), !dbg !1058
  %arraydecay104 = getelementptr inbounds [2 x i8], ptr %buf101, i64 0, i64 0, !dbg !1059
  %51 = load ptr, ptr @stdin, align 8, !dbg !1061, !tbaa !303
  %call105 = call ptr @fgets(ptr noundef %arraydecay104, i32 noundef 2, ptr noundef %51), !dbg !1062
  %cmp106 = icmp eq ptr %call105, null, !dbg !1063
  br i1 %cmp106, label %if.then112, label %lor.lhs.false, !dbg !1064

lor.lhs.false:                                    ; preds = %if.end100
  %arraydecay108 = getelementptr inbounds [2 x i8], ptr %buf101, i64 0, i64 0, !dbg !1065
  %call109 = call i32 @strncasecmp(ptr noundef %arraydecay108, ptr noundef @.str.32, i64 noundef 1) #9, !dbg !1066
  %cmp110 = icmp ne i32 %call109, 0, !dbg !1067
  br i1 %cmp110, label %if.then112, label %if.end114, !dbg !1068

if.then112:                                       ; preds = %lor.lhs.false, %if.end100
  %call113 = call i32 (ptr, ...) @printf(ptr noundef @.str.33), !dbg !1069
  call void @exit(i32 noundef 1) #11, !dbg !1071
  unreachable, !dbg !1071

if.end114:                                        ; preds = %lor.lhs.false
  %52 = load ptr, ptr %fp, align 8, !dbg !1072, !tbaa !303
  %call115 = call i32 @fileno(ptr noundef %52) #10, !dbg !1074
  %53 = load i64, ptr %pos, align 8, !dbg !1075, !tbaa !314
  %call116 = call i32 @ftruncate64(i32 noundef %call115, i64 noundef %53) #10, !dbg !1076
  %cmp117 = icmp eq i32 %call116, -1, !dbg !1077
  br i1 %cmp117, label %if.then119, label %if.else121, !dbg !1078

if.then119:                                       ; preds = %if.end114
  %54 = load ptr, ptr %aof_filename.addr, align 8, !dbg !1079, !tbaa !303
  %call120 = call i32 (ptr, ...) @printf(ptr noundef @.str.34, ptr noundef %54), !dbg !1081
  call void @exit(i32 noundef 1) #11, !dbg !1082
  unreachable, !dbg !1082

if.else121:                                       ; preds = %if.end114
  %55 = load ptr, ptr %fp, align 8, !dbg !1083, !tbaa !303
  %call122 = call i32 @fclose(ptr noundef %55), !dbg !1085
  store i32 2, ptr %retval, align 4, !dbg !1086
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr %buf101) #10, !dbg !1087
  br label %cleanup

if.else123:                                       ; preds = %if.then94
  %56 = load ptr, ptr %aof_filename.addr, align 8, !dbg !1088, !tbaa !303
  %call124 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, ptr noundef %56), !dbg !1090
  call void @exit(i32 noundef 1) #11, !dbg !1091
  unreachable, !dbg !1091

if.end125:                                        ; preds = %if.end90
  %57 = load ptr, ptr %fp, align 8, !dbg !1092, !tbaa !303
  %call126 = call i32 @fclose(ptr noundef %57), !dbg !1093
  store i32 0, ptr %retval, align 4, !dbg !1094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1094

cleanup:                                          ; preds = %if.end125, %if.else121, %if.then87, %if.then47, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 144, ptr %sb) #10, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #10, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 2, ptr %buf) #10, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 4, ptr %multi) #10, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #10, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #10, !dbg !1095
  %58 = load i32, ptr %retval, align 4, !dbg !1095
  ret i32 %58, !dbg !1095
}

declare !dbg !1096 noalias ptr @fopen64(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !1099 ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind
declare !dbg !1102 i32 @fstat64(i32 noundef, ptr noundef) #3

declare !dbg !1107 i32 @redis_check_rdb_main(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !1110 i32 @feof(ptr noundef) #3

declare !dbg !1111 i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #4

declare !dbg !1114 i32 @fclose(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1115 i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1118 i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fileIsRDB(ptr noundef %filepath) #0 !dbg !1119 {
entry:
  %retval = alloca i32, align 4
  %filepath.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %sig = alloca [5 x i8], align 1
  %rdb_file = alloca i32, align 4
  store ptr %filepath, ptr %filepath.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %filepath.addr, metadata !1121, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #10, !dbg !1130
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !1122, metadata !DIExpression()), !dbg !1131
  %0 = load ptr, ptr %filepath.addr, align 8, !dbg !1132, !tbaa !303
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str.36), !dbg !1133
  store ptr %call, ptr %fp, align 8, !dbg !1131, !tbaa !303
  %1 = load ptr, ptr %fp, align 8, !dbg !1134, !tbaa !303
  %cmp = icmp eq ptr %1, null, !dbg !1136
  br i1 %cmp, label %if.then, label %if.end, !dbg !1137

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filepath.addr, align 8, !dbg !1138, !tbaa !303
  %call1 = call ptr @__errno_location() #12, !dbg !1140
  %3 = load i32, ptr %call1, align 4, !dbg !1140, !tbaa !627
  %call2 = call ptr @strerror(i32 noundef %3) #10, !dbg !1141
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %2, ptr noundef %call2), !dbg !1142
  call void @exit(i32 noundef 1) #11, !dbg !1143
  unreachable, !dbg !1143

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 144, ptr %sb) #10, !dbg !1144
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !1123, metadata !DIExpression()), !dbg !1145
  %4 = load ptr, ptr %fp, align 8, !dbg !1146, !tbaa !303
  %call4 = call i32 @fileno(ptr noundef %4) #10, !dbg !1148
  %call5 = call i32 @fstat64(i32 noundef %call4, ptr noundef %sb) #10, !dbg !1149
  %cmp6 = icmp eq i32 %call5, -1, !dbg !1150
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1151

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr %filepath.addr, align 8, !dbg !1152, !tbaa !303
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.38, ptr noundef %5), !dbg !1154
  call void @exit(i32 noundef 1) #11, !dbg !1155
  unreachable, !dbg !1155

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !1156
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1124, metadata !DIExpression()), !dbg !1157
  %st_size = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 8, !dbg !1158
  %6 = load i64, ptr %st_size, align 8, !dbg !1158, !tbaa !900
  store i64 %6, ptr %size, align 8, !dbg !1157, !tbaa !314
  %7 = load i64, ptr %size, align 8, !dbg !1159, !tbaa !314
  %cmp10 = icmp eq i64 %7, 0, !dbg !1161
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !1162

if.then11:                                        ; preds = %if.end9
  %8 = load ptr, ptr %fp, align 8, !dbg !1163, !tbaa !303
  %call12 = call i32 @fclose(ptr noundef %8), !dbg !1165
  store i32 0, ptr %retval, align 4, !dbg !1166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !1166

if.end13:                                         ; preds = %if.end9
  %9 = load i64, ptr %size, align 8, !dbg !1167, !tbaa !314
  %cmp14 = icmp sge i64 %9, 8, !dbg !1168
  br i1 %cmp14, label %if.then15, label %if.end25, !dbg !1169

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 5, ptr %sig) #10, !dbg !1170
  tail call void @llvm.dbg.declare(metadata ptr %sig, metadata !1125, metadata !DIExpression()), !dbg !1171
  call void @llvm.lifetime.start.p0(i64 4, ptr %rdb_file) #10, !dbg !1172
  tail call void @llvm.dbg.declare(metadata ptr %rdb_file, metadata !1128, metadata !DIExpression()), !dbg !1173
  %arraydecay = getelementptr inbounds [5 x i8], ptr %sig, i64 0, i64 0, !dbg !1174
  %10 = load ptr, ptr %fp, align 8, !dbg !1175, !tbaa !303
  %call16 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 5, i64 noundef 1, ptr noundef %10), !dbg !1176
  %cmp17 = icmp eq i64 %call16, 1, !dbg !1177
  br i1 %cmp17, label %land.rhs, label %land.end, !dbg !1178

land.rhs:                                         ; preds = %if.then15
  %arraydecay18 = getelementptr inbounds [5 x i8], ptr %sig, i64 0, i64 0, !dbg !1179
  %call19 = call i32 @memcmp(ptr noundef %arraydecay18, ptr noundef @.str.39, i64 noundef 5) #9, !dbg !1180
  %cmp20 = icmp eq i32 %call19, 0, !dbg !1181
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then15
  %11 = phi i1 [ false, %if.then15 ], [ %cmp20, %land.rhs ], !dbg !1182
  %land.ext = zext i1 %11 to i32, !dbg !1178
  store i32 %land.ext, ptr %rdb_file, align 4, !dbg !1173, !tbaa !627
  %12 = load i32, ptr %rdb_file, align 4, !dbg !1183, !tbaa !627
  %tobool = icmp ne i32 %12, 0, !dbg !1183
  br i1 %tobool, label %if.then21, label %if.end23, !dbg !1185

if.then21:                                        ; preds = %land.end
  %13 = load ptr, ptr %fp, align 8, !dbg !1186, !tbaa !303
  %call22 = call i32 @fclose(ptr noundef %13), !dbg !1188
  store i32 1, ptr %retval, align 4, !dbg !1189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1189

if.end23:                                         ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1190
  br label %cleanup, !dbg !1190

cleanup:                                          ; preds = %if.end23, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr %rdb_file) #10, !dbg !1190
  call void @llvm.lifetime.end.p0(i64 5, ptr %sig) #10, !dbg !1190
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !1191

if.end25:                                         ; preds = %cleanup.cont, %if.end13
  %14 = load ptr, ptr %fp, align 8, !dbg !1192, !tbaa !303
  %call26 = call i32 @fclose(ptr noundef %14), !dbg !1193
  store i32 0, ptr %retval, align 4, !dbg !1194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !1194

cleanup27:                                        ; preds = %if.end25, %cleanup, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 144, ptr %sb) #10, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #10, !dbg !1195
  %15 = load i32, ptr %retval, align 4, !dbg !1195
  ret i32 %15, !dbg !1195
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1196 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fileIsManifest(ptr noundef %filepath) #0 !dbg !1201 {
entry:
  %retval = alloca i32, align 4
  %filepath.addr = alloca ptr, align 8
  %is_manifest = alloca i32, align 4
  %fp = alloca ptr, align 8
  %sb = alloca %struct.stat, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %buf = alloca [1025 x i8], align 16
  store ptr %filepath, ptr %filepath.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %filepath.addr, metadata !1203, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_manifest) #10, !dbg !1213
  tail call void @llvm.dbg.declare(metadata ptr %is_manifest, metadata !1204, metadata !DIExpression()), !dbg !1214
  store i32 0, ptr %is_manifest, align 4, !dbg !1214, !tbaa !627
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #10, !dbg !1215
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !1205, metadata !DIExpression()), !dbg !1216
  %0 = load ptr, ptr %filepath.addr, align 8, !dbg !1217, !tbaa !303
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str.36), !dbg !1218
  store ptr %call, ptr %fp, align 8, !dbg !1216, !tbaa !303
  %1 = load ptr, ptr %fp, align 8, !dbg !1219, !tbaa !303
  %cmp = icmp eq ptr %1, null, !dbg !1221
  br i1 %cmp, label %if.then, label %if.end, !dbg !1222

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filepath.addr, align 8, !dbg !1223, !tbaa !303
  %call1 = call ptr @__errno_location() #12, !dbg !1225
  %3 = load i32, ptr %call1, align 4, !dbg !1225, !tbaa !627
  %call2 = call ptr @strerror(i32 noundef %3) #10, !dbg !1226
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %2, ptr noundef %call2), !dbg !1227
  call void @exit(i32 noundef 1) #11, !dbg !1228
  unreachable, !dbg !1228

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 144, ptr %sb) #10, !dbg !1229
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !1206, metadata !DIExpression()), !dbg !1230
  %4 = load ptr, ptr %fp, align 8, !dbg !1231, !tbaa !303
  %call4 = call i32 @fileno(ptr noundef %4) #10, !dbg !1233
  %call5 = call i32 @fstat64(i32 noundef %call4, ptr noundef %sb) #10, !dbg !1234
  %cmp6 = icmp eq i32 %call5, -1, !dbg !1235
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1236

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr %filepath.addr, align 8, !dbg !1237, !tbaa !303
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.38, ptr noundef %5), !dbg !1239
  call void @exit(i32 noundef 1) #11, !dbg !1240
  unreachable, !dbg !1240

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !1241
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1207, metadata !DIExpression()), !dbg !1242
  %st_size = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 8, !dbg !1243
  %6 = load i64, ptr %st_size, align 8, !dbg !1243, !tbaa !900
  store i64 %6, ptr %size, align 8, !dbg !1242, !tbaa !314
  %7 = load i64, ptr %size, align 8, !dbg !1244, !tbaa !314
  %cmp10 = icmp eq i64 %7, 0, !dbg !1246
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !1247

if.then11:                                        ; preds = %if.end9
  %8 = load ptr, ptr %fp, align 8, !dbg !1248, !tbaa !303
  %call12 = call i32 @fclose(ptr noundef %8), !dbg !1250
  store i32 0, ptr %retval, align 4, !dbg !1251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1251

if.end13:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 1025, ptr %buf) #10, !dbg !1252
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1208, metadata !DIExpression()), !dbg !1253
  br label %while.cond, !dbg !1254

while.cond:                                       ; preds = %if.end30, %if.then23, %if.end13
  br label %while.body, !dbg !1254

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %buf, i64 0, i64 0, !dbg !1255
  %9 = load ptr, ptr %fp, align 8, !dbg !1258, !tbaa !303
  %call14 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1025, ptr noundef %9), !dbg !1259
  %cmp15 = icmp eq ptr %call14, null, !dbg !1260
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !1261

if.then16:                                        ; preds = %while.body
  %10 = load ptr, ptr %fp, align 8, !dbg !1262, !tbaa !303
  %call17 = call i32 @feof(ptr noundef %10) #10, !dbg !1265
  %tobool = icmp ne i32 %call17, 0, !dbg !1265
  br i1 %tobool, label %if.then18, label %if.else, !dbg !1266

if.then18:                                        ; preds = %if.then16
  br label %while.end, !dbg !1267

if.else:                                          ; preds = %if.then16
  %11 = load ptr, ptr %filepath.addr, align 8, !dbg !1269, !tbaa !303
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.40, ptr noundef %11), !dbg !1271
  call void @exit(i32 noundef 1) #11, !dbg !1272
  unreachable, !dbg !1272

if.end20:                                         ; preds = %while.body
  %arrayidx = getelementptr inbounds [1025 x i8], ptr %buf, i64 0, i64 0, !dbg !1273
  %12 = load i8, ptr %arrayidx, align 16, !dbg !1273, !tbaa !313
  %conv = sext i8 %12 to i32, !dbg !1273
  %cmp21 = icmp eq i32 %conv, 35, !dbg !1275
  br i1 %cmp21, label %if.then23, label %if.else24, !dbg !1276

if.then23:                                        ; preds = %if.end20
  br label %while.cond, !dbg !1277, !llvm.loop !1279

if.else24:                                        ; preds = %if.end20
  %arraydecay25 = getelementptr inbounds [1025 x i8], ptr %buf, i64 0, i64 0, !dbg !1281
  %call26 = call i32 @memcmp(ptr noundef %arraydecay25, ptr noundef @.str.41, i64 noundef 4) #9, !dbg !1283
  %tobool27 = icmp ne i32 %call26, 0, !dbg !1283
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !1284

if.then28:                                        ; preds = %if.else24
  store i32 1, ptr %is_manifest, align 4, !dbg !1285, !tbaa !627
  br label %if.end29, !dbg !1287

if.end29:                                         ; preds = %if.then28, %if.else24
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  br label %while.cond, !dbg !1254, !llvm.loop !1279

while.end:                                        ; preds = %if.then18
  %13 = load ptr, ptr %fp, align 8, !dbg !1288, !tbaa !303
  %call31 = call i32 @fclose(ptr noundef %13), !dbg !1289
  %14 = load i32, ptr %is_manifest, align 4, !dbg !1290, !tbaa !627
  store i32 %14, ptr %retval, align 4, !dbg !1291
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1025, ptr %buf) #10, !dbg !1292
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !1292
  call void @llvm.lifetime.end.p0(i64 144, ptr %sb) #10, !dbg !1292
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #10, !dbg !1292
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_manifest) #10, !dbg !1292
  %15 = load i32, ptr %retval, align 4, !dbg !1292
  ret i32 %15, !dbg !1292
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getInputFileType(ptr noundef %filepath) #0 !dbg !1293 {
entry:
  %retval = alloca i32, align 4
  %filepath.addr = alloca ptr, align 8
  store ptr %filepath, ptr %filepath.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %filepath.addr, metadata !1298, metadata !DIExpression()), !dbg !1299
  %0 = load ptr, ptr %filepath.addr, align 8, !dbg !1300, !tbaa !303
  %call = call i32 @fileIsManifest(ptr noundef %0), !dbg !1302
  %tobool = icmp ne i32 %call, 0, !dbg !1302
  br i1 %tobool, label %if.then, label %if.else, !dbg !1303

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !1304
  br label %return, !dbg !1304

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %filepath.addr, align 8, !dbg !1306, !tbaa !303
  %call1 = call i32 @fileIsRDB(ptr noundef %1), !dbg !1308
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1308
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !1309

if.then3:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !1310
  br label %return, !dbg !1310

if.else4:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !1312
  br label %return, !dbg !1312

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1314
  ret i32 %2, !dbg !1314
}

; Function Attrs: nounwind uwtable
define dso_local void @checkMultiPartAof(ptr noundef %dirpath, ptr noundef %manifest_filepath, i32 noundef %fix) #0 !dbg !1315 {
entry:
  %dirpath.addr = alloca ptr, align 8
  %manifest_filepath.addr = alloca ptr, align 8
  %fix.addr = alloca i32, align 4
  %total_num = alloca i32, align 4
  %aof_num = alloca i32, align 4
  %last_file = alloca i32, align 4
  %ret = alloca i32, align 4
  %am = alloca ptr, align 8
  %aof_filename = alloca ptr, align 8
  %aof_filepath = alloca ptr, align 8
  %aof_preable = alloca i32, align 4
  %ln = alloca ptr, align 8
  %li = alloca %struct.listIter, align 8
  %ai = alloca ptr, align 8
  %aof_filename50 = alloca ptr, align 8
  %aof_filepath52 = alloca ptr, align 8
  store ptr %dirpath, ptr %dirpath.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %dirpath.addr, metadata !1319, metadata !DIExpression()), !dbg !1381
  store ptr %manifest_filepath, ptr %manifest_filepath.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %manifest_filepath.addr, metadata !1320, metadata !DIExpression()), !dbg !1382
  store i32 %fix, ptr %fix.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %fix.addr, metadata !1321, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_num) #10, !dbg !1384
  tail call void @llvm.dbg.declare(metadata ptr %total_num, metadata !1322, metadata !DIExpression()), !dbg !1385
  store i32 0, ptr %total_num, align 4, !dbg !1385, !tbaa !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %aof_num) #10, !dbg !1384
  tail call void @llvm.dbg.declare(metadata ptr %aof_num, metadata !1323, metadata !DIExpression()), !dbg !1386
  store i32 0, ptr %aof_num, align 4, !dbg !1386, !tbaa !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_file) #10, !dbg !1384
  tail call void @llvm.dbg.declare(metadata ptr %last_file, metadata !1324, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1325, metadata !DIExpression()), !dbg !1389
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.42), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 8, ptr %am) #10, !dbg !1391
  tail call void @llvm.dbg.declare(metadata ptr %am, metadata !1326, metadata !DIExpression()), !dbg !1392
  %0 = load ptr, ptr %manifest_filepath.addr, align 8, !dbg !1393, !tbaa !303
  %call1 = call ptr @aofLoadManifestFromFile(ptr noundef %0), !dbg !1394
  store ptr %call1, ptr %am, align 8, !dbg !1392, !tbaa !303
  %1 = load ptr, ptr %am, align 8, !dbg !1395, !tbaa !303
  %base_aof_info = getelementptr inbounds %struct.aofManifest, ptr %1, i32 0, i32 0, !dbg !1397
  %2 = load ptr, ptr %base_aof_info, align 8, !dbg !1397, !tbaa !1398
  %tobool = icmp ne ptr %2, null, !dbg !1395
  br i1 %tobool, label %if.then, label %if.end, !dbg !1400

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %total_num, align 4, !dbg !1401, !tbaa !627
  %inc = add nsw i32 %3, 1, !dbg !1401
  store i32 %inc, ptr %total_num, align 4, !dbg !1401, !tbaa !627
  br label %if.end, !dbg !1402

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %am, align 8, !dbg !1403, !tbaa !303
  %incr_aof_list = getelementptr inbounds %struct.aofManifest, ptr %4, i32 0, i32 1, !dbg !1405
  %5 = load ptr, ptr %incr_aof_list, align 8, !dbg !1405, !tbaa !1406
  %tobool2 = icmp ne ptr %5, null, !dbg !1403
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !1407

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %am, align 8, !dbg !1408, !tbaa !303
  %incr_aof_list4 = getelementptr inbounds %struct.aofManifest, ptr %6, i32 0, i32 1, !dbg !1408
  %7 = load ptr, ptr %incr_aof_list4, align 8, !dbg !1408, !tbaa !1406
  %len = getelementptr inbounds %struct.list, ptr %7, i32 0, i32 5, !dbg !1408
  %8 = load i64, ptr %len, align 8, !dbg !1408, !tbaa !1409
  %9 = load i32, ptr %total_num, align 4, !dbg !1411, !tbaa !627
  %conv = sext i32 %9 to i64, !dbg !1411
  %add = add i64 %conv, %8, !dbg !1411
  %conv5 = trunc i64 %add to i32, !dbg !1411
  store i32 %conv5, ptr %total_num, align 4, !dbg !1411, !tbaa !627
  br label %if.end6, !dbg !1412

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %am, align 8, !dbg !1413, !tbaa !303
  %base_aof_info7 = getelementptr inbounds %struct.aofManifest, ptr %10, i32 0, i32 0, !dbg !1414
  %11 = load ptr, ptr %base_aof_info7, align 8, !dbg !1414, !tbaa !1398
  %tobool8 = icmp ne ptr %11, null, !dbg !1413
  br i1 %tobool8, label %if.then9, label %if.end40, !dbg !1415

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %aof_filename) #10, !dbg !1416
  tail call void @llvm.dbg.declare(metadata ptr %aof_filename, metadata !1363, metadata !DIExpression()), !dbg !1417
  %12 = load ptr, ptr %am, align 8, !dbg !1418, !tbaa !303
  %base_aof_info10 = getelementptr inbounds %struct.aofManifest, ptr %12, i32 0, i32 0, !dbg !1419
  %13 = load ptr, ptr %base_aof_info10, align 8, !dbg !1419, !tbaa !1398
  %file_name = getelementptr inbounds %struct.aofInfo, ptr %13, i32 0, i32 0, !dbg !1420
  %14 = load ptr, ptr %file_name, align 8, !dbg !1420, !tbaa !1421
  store ptr %14, ptr %aof_filename, align 8, !dbg !1417, !tbaa !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %aof_filepath) #10, !dbg !1423
  tail call void @llvm.dbg.declare(metadata ptr %aof_filepath, metadata !1366, metadata !DIExpression()), !dbg !1424
  %15 = load ptr, ptr %dirpath.addr, align 8, !dbg !1425, !tbaa !303
  %16 = load ptr, ptr %aof_filename, align 8, !dbg !1426, !tbaa !303
  %call11 = call ptr @makePath(ptr noundef %15, ptr noundef %16), !dbg !1427
  store ptr %call11, ptr %aof_filepath, align 8, !dbg !1424, !tbaa !303
  %17 = load i32, ptr %aof_num, align 4, !dbg !1428, !tbaa !627
  %inc12 = add nsw i32 %17, 1, !dbg !1428
  store i32 %inc12, ptr %aof_num, align 4, !dbg !1428, !tbaa !627
  %18 = load i32, ptr %total_num, align 4, !dbg !1429, !tbaa !627
  %cmp = icmp eq i32 %inc12, %18, !dbg !1430
  %conv13 = zext i1 %cmp to i32, !dbg !1430
  store i32 %conv13, ptr %last_file, align 4, !dbg !1431, !tbaa !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %aof_preable) #10, !dbg !1432
  tail call void @llvm.dbg.declare(metadata ptr %aof_preable, metadata !1367, metadata !DIExpression()), !dbg !1433
  %19 = load ptr, ptr %aof_filepath, align 8, !dbg !1434, !tbaa !303
  %call14 = call i32 @fileIsRDB(ptr noundef %19), !dbg !1435
  store i32 %call14, ptr %aof_preable, align 4, !dbg !1433, !tbaa !627
  %20 = load i32, ptr %aof_preable, align 4, !dbg !1436, !tbaa !627
  %tobool15 = icmp ne i32 %20, 0, !dbg !1436
  %21 = zext i1 %tobool15 to i64, !dbg !1436
  %cond = select i1 %tobool15, ptr @.str.44, ptr @.str.45, !dbg !1436
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.43, ptr noundef %cond), !dbg !1437
  %22 = load ptr, ptr %aof_filename, align 8, !dbg !1438, !tbaa !303
  %23 = load ptr, ptr %aof_filepath, align 8, !dbg !1439, !tbaa !303
  %24 = load i32, ptr %last_file, align 4, !dbg !1440, !tbaa !627
  %25 = load i32, ptr %fix.addr, align 4, !dbg !1441, !tbaa !627
  %26 = load i32, ptr %aof_preable, align 4, !dbg !1442, !tbaa !627
  %call17 = call i32 @checkSingleAof(ptr noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26), !dbg !1443
  store i32 %call17, ptr %ret, align 4, !dbg !1444, !tbaa !627
  %27 = load i32, ptr %ret, align 4, !dbg !1445, !tbaa !627
  %cmp18 = icmp eq i32 %27, 0, !dbg !1447
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1448

if.then20:                                        ; preds = %if.then9
  %28 = load ptr, ptr %aof_filename, align 8, !dbg !1449, !tbaa !303
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.46, ptr noundef %28), !dbg !1451
  br label %if.end39, !dbg !1452

if.else:                                          ; preds = %if.then9
  %29 = load i32, ptr %ret, align 4, !dbg !1453, !tbaa !627
  %cmp22 = icmp eq i32 %29, 1, !dbg !1455
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !1456

if.then24:                                        ; preds = %if.else
  %30 = load ptr, ptr %aof_filename, align 8, !dbg !1457, !tbaa !303
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.47, ptr noundef %30), !dbg !1459
  br label %if.end38, !dbg !1460

if.else26:                                        ; preds = %if.else
  %31 = load i32, ptr %ret, align 4, !dbg !1461, !tbaa !627
  %cmp27 = icmp eq i32 %31, 3, !dbg !1463
  br i1 %cmp27, label %if.then29, label %if.else31, !dbg !1464

if.then29:                                        ; preds = %if.else26
  %32 = load ptr, ptr %aof_filename, align 8, !dbg !1465, !tbaa !303
  %33 = load i64, ptr @to_timestamp, align 8, !dbg !1467, !tbaa !314
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.48, ptr noundef %32, i64 noundef %33), !dbg !1468
  br label %if.end37, !dbg !1469

if.else31:                                        ; preds = %if.else26
  %34 = load i32, ptr %ret, align 4, !dbg !1470, !tbaa !627
  %cmp32 = icmp eq i32 %34, 2, !dbg !1472
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !1473

if.then34:                                        ; preds = %if.else31
  %35 = load ptr, ptr %aof_filename, align 8, !dbg !1474, !tbaa !303
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.49, ptr noundef %35), !dbg !1476
  br label %if.end36, !dbg !1477

if.end36:                                         ; preds = %if.then34, %if.else31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then29
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then20
  %36 = load ptr, ptr %aof_filepath, align 8, !dbg !1478, !tbaa !303
  call void @sdsfree(ptr noundef %36), !dbg !1479
  call void @llvm.lifetime.end.p0(i64 4, ptr %aof_preable) #10, !dbg !1480
  call void @llvm.lifetime.end.p0(i64 8, ptr %aof_filepath) #10, !dbg !1480
  call void @llvm.lifetime.end.p0(i64 8, ptr %aof_filename) #10, !dbg !1480
  br label %if.end40, !dbg !1481

if.end40:                                         ; preds = %if.end39, %if.end6
  %37 = load ptr, ptr %am, align 8, !dbg !1482, !tbaa !303
  %incr_aof_list41 = getelementptr inbounds %struct.aofManifest, ptr %37, i32 0, i32 1, !dbg !1482
  %38 = load ptr, ptr %incr_aof_list41, align 8, !dbg !1482, !tbaa !1406
  %len42 = getelementptr inbounds %struct.list, ptr %38, i32 0, i32 5, !dbg !1482
  %39 = load i64, ptr %len42, align 8, !dbg !1482, !tbaa !1409
  %tobool43 = icmp ne i64 %39, 0, !dbg !1482
  br i1 %tobool43, label %if.then44, label %if.end81, !dbg !1483

if.then44:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr %ln) #10, !dbg !1484
  tail call void @llvm.dbg.declare(metadata ptr %ln, metadata !1368, metadata !DIExpression()), !dbg !1485
  call void @llvm.lifetime.start.p0(i64 16, ptr %li) #10, !dbg !1486
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !1371, metadata !DIExpression()), !dbg !1487
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.50), !dbg !1488
  %40 = load ptr, ptr %am, align 8, !dbg !1489, !tbaa !303
  %incr_aof_list46 = getelementptr inbounds %struct.aofManifest, ptr %40, i32 0, i32 1, !dbg !1490
  %41 = load ptr, ptr %incr_aof_list46, align 8, !dbg !1490, !tbaa !1406
  call void @listRewind(ptr noundef %41, ptr noundef %li), !dbg !1491
  br label %while.cond, !dbg !1492

while.cond:                                       ; preds = %if.end80, %if.then44
  %call47 = call ptr @listNext(ptr noundef %li), !dbg !1493
  store ptr %call47, ptr %ln, align 8, !dbg !1494, !tbaa !303
  %cmp48 = icmp ne ptr %call47, null, !dbg !1495
  br i1 %cmp48, label %while.body, label %while.end, !dbg !1492

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #10, !dbg !1496
  tail call void @llvm.dbg.declare(metadata ptr %ai, metadata !1377, metadata !DIExpression()), !dbg !1497
  %42 = load ptr, ptr %ln, align 8, !dbg !1498, !tbaa !303
  %value = getelementptr inbounds %struct.listNode, ptr %42, i32 0, i32 2, !dbg !1499
  %43 = load ptr, ptr %value, align 8, !dbg !1499, !tbaa !1500
  store ptr %43, ptr %ai, align 8, !dbg !1497, !tbaa !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %aof_filename50) #10, !dbg !1502
  tail call void @llvm.dbg.declare(metadata ptr %aof_filename50, metadata !1379, metadata !DIExpression()), !dbg !1503
  %44 = load ptr, ptr %ai, align 8, !dbg !1504, !tbaa !303
  %file_name51 = getelementptr inbounds %struct.aofInfo, ptr %44, i32 0, i32 0, !dbg !1505
  %45 = load ptr, ptr %file_name51, align 8, !dbg !1505, !tbaa !1421
  store ptr %45, ptr %aof_filename50, align 8, !dbg !1503, !tbaa !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %aof_filepath52) #10, !dbg !1506
  tail call void @llvm.dbg.declare(metadata ptr %aof_filepath52, metadata !1380, metadata !DIExpression()), !dbg !1507
  %46 = load ptr, ptr %dirpath.addr, align 8, !dbg !1508, !tbaa !303
  %47 = load ptr, ptr %aof_filename50, align 8, !dbg !1509, !tbaa !303
  %call53 = call ptr @makePath(ptr noundef %46, ptr noundef %47), !dbg !1510
  store ptr %call53, ptr %aof_filepath52, align 8, !dbg !1507, !tbaa !303
  %48 = load i32, ptr %aof_num, align 4, !dbg !1511, !tbaa !627
  %inc54 = add nsw i32 %48, 1, !dbg !1511
  store i32 %inc54, ptr %aof_num, align 4, !dbg !1511, !tbaa !627
  %49 = load i32, ptr %total_num, align 4, !dbg !1512, !tbaa !627
  %cmp55 = icmp eq i32 %inc54, %49, !dbg !1513
  %conv56 = zext i1 %cmp55 to i32, !dbg !1513
  store i32 %conv56, ptr %last_file, align 4, !dbg !1514, !tbaa !627
  %50 = load ptr, ptr %aof_filename50, align 8, !dbg !1515, !tbaa !303
  %51 = load ptr, ptr %aof_filepath52, align 8, !dbg !1516, !tbaa !303
  %52 = load i32, ptr %last_file, align 4, !dbg !1517, !tbaa !627
  %53 = load i32, ptr %fix.addr, align 4, !dbg !1518, !tbaa !627
  %call57 = call i32 @checkSingleAof(ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef 0), !dbg !1519
  store i32 %call57, ptr %ret, align 4, !dbg !1520, !tbaa !627
  %54 = load i32, ptr %ret, align 4, !dbg !1521, !tbaa !627
  %cmp58 = icmp eq i32 %54, 0, !dbg !1523
  br i1 %cmp58, label %if.then60, label %if.else62, !dbg !1524

if.then60:                                        ; preds = %while.body
  %55 = load ptr, ptr %aof_filename50, align 8, !dbg !1525, !tbaa !303
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.51, ptr noundef %55), !dbg !1527
  br label %if.end80, !dbg !1528

if.else62:                                        ; preds = %while.body
  %56 = load i32, ptr %ret, align 4, !dbg !1529, !tbaa !627
  %cmp63 = icmp eq i32 %56, 1, !dbg !1531
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !1532

if.then65:                                        ; preds = %if.else62
  %57 = load ptr, ptr %aof_filename50, align 8, !dbg !1533, !tbaa !303
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.52, ptr noundef %57), !dbg !1535
  br label %if.end79, !dbg !1536

if.else67:                                        ; preds = %if.else62
  %58 = load i32, ptr %ret, align 4, !dbg !1537, !tbaa !627
  %cmp68 = icmp eq i32 %58, 3, !dbg !1539
  br i1 %cmp68, label %if.then70, label %if.else72, !dbg !1540

if.then70:                                        ; preds = %if.else67
  %59 = load ptr, ptr %aof_filename50, align 8, !dbg !1541, !tbaa !303
  %60 = load i64, ptr @to_timestamp, align 8, !dbg !1543, !tbaa !314
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.48, ptr noundef %59, i64 noundef %60), !dbg !1544
  br label %if.end78, !dbg !1545

if.else72:                                        ; preds = %if.else67
  %61 = load i32, ptr %ret, align 4, !dbg !1546, !tbaa !627
  %cmp73 = icmp eq i32 %61, 2, !dbg !1548
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !1549

if.then75:                                        ; preds = %if.else72
  %62 = load ptr, ptr %aof_filename50, align 8, !dbg !1550, !tbaa !303
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.49, ptr noundef %62), !dbg !1552
  br label %if.end77, !dbg !1553

if.end77:                                         ; preds = %if.then75, %if.else72
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then70
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then65
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then60
  %63 = load ptr, ptr %aof_filepath52, align 8, !dbg !1554, !tbaa !303
  call void @sdsfree(ptr noundef %63), !dbg !1555
  call void @llvm.lifetime.end.p0(i64 8, ptr %aof_filepath52) #10, !dbg !1556
  call void @llvm.lifetime.end.p0(i64 8, ptr %aof_filename50) #10, !dbg !1556
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #10, !dbg !1556
  br label %while.cond, !dbg !1492, !llvm.loop !1557

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %li) #10, !dbg !1558
  call void @llvm.lifetime.end.p0(i64 8, ptr %ln) #10, !dbg !1558
  br label %if.end81, !dbg !1559

if.end81:                                         ; preds = %while.end, %if.end40
  %64 = load ptr, ptr %am, align 8, !dbg !1560, !tbaa !303
  call void @aofManifestFree(ptr noundef %64), !dbg !1561
  %call82 = call i32 (ptr, ...) @printf(ptr noundef @.str.53), !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr %am) #10, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_file) #10, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 4, ptr %aof_num) #10, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_num) #10, !dbg !1563
  ret void, !dbg !1563
}

declare !dbg !1564 ptr @aofLoadManifestFromFile(ptr noundef) #4

declare !dbg !1567 ptr @makePath(ptr noundef, ptr noundef) #4

declare !dbg !1571 void @sdsfree(ptr noundef) #4

declare !dbg !1574 void @listRewind(ptr noundef, ptr noundef) #4

declare !dbg !1578 ptr @listNext(ptr noundef) #4

declare !dbg !1581 void @aofManifestFree(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @checkOldStyleAof(ptr noundef %filepath, i32 noundef %fix, i32 noundef %preamble) #0 !dbg !1584 {
entry:
  %filepath.addr = alloca ptr, align 8
  %fix.addr = alloca i32, align 4
  %preamble.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %filepath, ptr %filepath.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %filepath.addr, metadata !1588, metadata !DIExpression()), !dbg !1592
  store i32 %fix, ptr %fix.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %fix.addr, metadata !1589, metadata !DIExpression()), !dbg !1593
  store i32 %preamble, ptr %preamble.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %preamble.addr, metadata !1590, metadata !DIExpression()), !dbg !1594
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.54), !dbg !1595
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1596
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1591, metadata !DIExpression()), !dbg !1597
  %0 = load ptr, ptr %filepath.addr, align 8, !dbg !1598, !tbaa !303
  %1 = load ptr, ptr %filepath.addr, align 8, !dbg !1599, !tbaa !303
  %2 = load i32, ptr %fix.addr, align 4, !dbg !1600, !tbaa !627
  %3 = load i32, ptr %preamble.addr, align 4, !dbg !1601, !tbaa !627
  %call1 = call i32 @checkSingleAof(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %3), !dbg !1602
  store i32 %call1, ptr %ret, align 4, !dbg !1597, !tbaa !627
  %4 = load i32, ptr %ret, align 4, !dbg !1603, !tbaa !627
  %cmp = icmp eq i32 %4, 0, !dbg !1605
  br i1 %cmp, label %if.then, label %if.else, !dbg !1606

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %filepath.addr, align 8, !dbg !1607, !tbaa !303
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.55, ptr noundef %5), !dbg !1609
  br label %if.end16, !dbg !1610

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %ret, align 4, !dbg !1611, !tbaa !627
  %cmp3 = icmp eq i32 %6, 1, !dbg !1613
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !1614

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %filepath.addr, align 8, !dbg !1615, !tbaa !303
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.56, ptr noundef %7), !dbg !1617
  br label %if.end15, !dbg !1618

if.else6:                                         ; preds = %if.else
  %8 = load i32, ptr %ret, align 4, !dbg !1619, !tbaa !627
  %cmp7 = icmp eq i32 %8, 3, !dbg !1621
  br i1 %cmp7, label %if.then8, label %if.else10, !dbg !1622

if.then8:                                         ; preds = %if.else6
  %9 = load ptr, ptr %filepath.addr, align 8, !dbg !1623, !tbaa !303
  %10 = load i64, ptr @to_timestamp, align 8, !dbg !1625, !tbaa !314
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.48, ptr noundef %9, i64 noundef %10), !dbg !1626
  br label %if.end14, !dbg !1627

if.else10:                                        ; preds = %if.else6
  %11 = load i32, ptr %ret, align 4, !dbg !1628, !tbaa !627
  %cmp11 = icmp eq i32 %11, 2, !dbg !1630
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !1631

if.then12:                                        ; preds = %if.else10
  %12 = load ptr, ptr %filepath.addr, align 8, !dbg !1632, !tbaa !303
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.49, ptr noundef %12), !dbg !1634
  br label %if.end, !dbg !1635

if.end:                                           ; preds = %if.then12, %if.else10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1636
  ret void, !dbg !1636
}

; Function Attrs: nounwind uwtable
define dso_local i32 @redis_check_aof_main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !1637 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %filepath = alloca ptr, align 8
  %temp_filepath = alloca [4097 x i8], align 16
  %dirpath = alloca ptr, align 8
  %fix = alloca i32, align 4
  %endptr = alloca ptr, align 8
  %type = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !627
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !1641, metadata !DIExpression()), !dbg !1660
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !1642, metadata !DIExpression()), !dbg !1661
  call void @llvm.lifetime.start.p0(i64 8, ptr %filepath) #10, !dbg !1662
  tail call void @llvm.dbg.declare(metadata ptr %filepath, metadata !1643, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.start.p0(i64 4097, ptr %temp_filepath) #10, !dbg !1664
  tail call void @llvm.dbg.declare(metadata ptr %temp_filepath, metadata !1644, metadata !DIExpression()), !dbg !1665
  call void @llvm.lifetime.start.p0(i64 8, ptr %dirpath) #10, !dbg !1666
  tail call void @llvm.dbg.declare(metadata ptr %dirpath, metadata !1648, metadata !DIExpression()), !dbg !1667
  call void @llvm.lifetime.start.p0(i64 4, ptr %fix) #10, !dbg !1668
  tail call void @llvm.dbg.declare(metadata ptr %fix, metadata !1649, metadata !DIExpression()), !dbg !1669
  store i32 0, ptr %fix, align 4, !dbg !1669, !tbaa !627
  %0 = load i32, ptr %argc.addr, align 4, !dbg !1670, !tbaa !627
  %cmp = icmp slt i32 %0, 2, !dbg !1671
  br i1 %cmp, label %if.then, label %if.else, !dbg !1672

if.then:                                          ; preds = %entry
  br label %invalid_args, !dbg !1673

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %argc.addr, align 4, !dbg !1675, !tbaa !627
  %cmp1 = icmp eq i32 %1, 2, !dbg !1676
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !1677

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %argv.addr, align 8, !dbg !1678, !tbaa !303
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1, !dbg !1678
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1678, !tbaa !303
  store ptr %3, ptr %filepath, align 8, !dbg !1680, !tbaa !303
  br label %if.end33, !dbg !1681

if.else3:                                         ; preds = %if.else
  %4 = load i32, ptr %argc.addr, align 4, !dbg !1682, !tbaa !627
  %cmp4 = icmp eq i32 %4, 3, !dbg !1683
  br i1 %cmp4, label %if.then5, label %if.else10, !dbg !1684

if.then5:                                         ; preds = %if.else3
  %5 = load ptr, ptr %argv.addr, align 8, !dbg !1685, !tbaa !303
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 1, !dbg !1685
  %6 = load ptr, ptr %arrayidx6, align 8, !dbg !1685, !tbaa !303
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.57) #9, !dbg !1688
  %tobool = icmp ne i32 %call, 0, !dbg !1688
  br i1 %tobool, label %if.else9, label %if.then7, !dbg !1689

if.then7:                                         ; preds = %if.then5
  %7 = load ptr, ptr %argv.addr, align 8, !dbg !1690, !tbaa !303
  %arrayidx8 = getelementptr inbounds ptr, ptr %7, i64 2, !dbg !1690
  %8 = load ptr, ptr %arrayidx8, align 8, !dbg !1690, !tbaa !303
  store ptr %8, ptr %filepath, align 8, !dbg !1692, !tbaa !303
  store i32 1, ptr %fix, align 4, !dbg !1693, !tbaa !627
  br label %if.end, !dbg !1694

if.else9:                                         ; preds = %if.then5
  br label %invalid_args, !dbg !1695

if.end:                                           ; preds = %if.then7
  br label %if.end32, !dbg !1697

if.else10:                                        ; preds = %if.else3
  %9 = load i32, ptr %argc.addr, align 4, !dbg !1698, !tbaa !627
  %cmp11 = icmp eq i32 %9, 4, !dbg !1699
  br i1 %cmp11, label %if.then12, label %if.else30, !dbg !1700

if.then12:                                        ; preds = %if.else10
  %10 = load ptr, ptr %argv.addr, align 8, !dbg !1701, !tbaa !303
  %arrayidx13 = getelementptr inbounds ptr, ptr %10, i64 1, !dbg !1701
  %11 = load ptr, ptr %arrayidx13, align 8, !dbg !1701, !tbaa !303
  %call14 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.58) #9, !dbg !1702
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1702
  br i1 %tobool15, label %if.else28, label %if.then16, !dbg !1703

if.then16:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %endptr) #10, !dbg !1704
  tail call void @llvm.dbg.declare(metadata ptr %endptr, metadata !1650, metadata !DIExpression()), !dbg !1705
  %call17 = call ptr @__errno_location() #12, !dbg !1706
  store i32 0, ptr %call17, align 4, !dbg !1707, !tbaa !627
  %12 = load ptr, ptr %argv.addr, align 8, !dbg !1708, !tbaa !303
  %arrayidx18 = getelementptr inbounds ptr, ptr %12, i64 2, !dbg !1708
  %13 = load ptr, ptr %arrayidx18, align 8, !dbg !1708, !tbaa !303
  %call19 = call i64 @strtol(ptr noundef %13, ptr noundef %endptr, i32 noundef 10) #10, !dbg !1709
  store i64 %call19, ptr @to_timestamp, align 8, !dbg !1710, !tbaa !314
  %call20 = call ptr @__errno_location() #12, !dbg !1711
  %14 = load i32, ptr %call20, align 4, !dbg !1711, !tbaa !627
  %cmp21 = icmp ne i32 %14, 0, !dbg !1713
  br i1 %cmp21, label %if.then24, label %lor.lhs.false, !dbg !1714

lor.lhs.false:                                    ; preds = %if.then16
  %15 = load ptr, ptr %endptr, align 8, !dbg !1715, !tbaa !303
  %16 = load i8, ptr %15, align 1, !dbg !1716, !tbaa !313
  %conv = sext i8 %16 to i32, !dbg !1716
  %cmp22 = icmp ne i32 %conv, 0, !dbg !1717
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !1718

if.then24:                                        ; preds = %lor.lhs.false, %if.then16
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.59), !dbg !1719
  call void @exit(i32 noundef 1) #11, !dbg !1721
  unreachable, !dbg !1721

if.end26:                                         ; preds = %lor.lhs.false
  %17 = load ptr, ptr %argv.addr, align 8, !dbg !1722, !tbaa !303
  %arrayidx27 = getelementptr inbounds ptr, ptr %17, i64 3, !dbg !1722
  %18 = load ptr, ptr %arrayidx27, align 8, !dbg !1722, !tbaa !303
  store ptr %18, ptr %filepath, align 8, !dbg !1723, !tbaa !303
  call void @llvm.lifetime.end.p0(i64 8, ptr %endptr) #10, !dbg !1724
  br label %if.end29, !dbg !1725

if.else28:                                        ; preds = %if.then12
  br label %invalid_args, !dbg !1726

if.end29:                                         ; preds = %if.end26
  br label %if.end31, !dbg !1728

if.else30:                                        ; preds = %if.else10
  br label %invalid_args, !dbg !1729

if.end31:                                         ; preds = %if.end29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then2
  br label %if.end34

if.end34:                                         ; preds = %if.end33
  %arraydecay = getelementptr inbounds [4097 x i8], ptr %temp_filepath, i64 0, i64 0, !dbg !1731
  %19 = load ptr, ptr %filepath, align 8, !dbg !1732, !tbaa !303
  %20 = load ptr, ptr %filepath, align 8, !dbg !1733, !tbaa !303
  %call35 = call i64 @strlen(ptr noundef %20) #9, !dbg !1734
  %add = add i64 %call35, 1, !dbg !1735
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %19, i64 %add, i1 false), !dbg !1731
  %arraydecay36 = getelementptr inbounds [4097 x i8], ptr %temp_filepath, i64 0, i64 0, !dbg !1736
  %call37 = call ptr @dirname(ptr noundef %arraydecay36) #10, !dbg !1737
  store ptr %call37, ptr %dirpath, align 8, !dbg !1738, !tbaa !303
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !1658, metadata !DIExpression()), !dbg !1739
  %21 = load ptr, ptr %filepath, align 8, !dbg !1740, !tbaa !303
  %call38 = call i32 @getInputFileType(ptr noundef %21), !dbg !1741
  store i32 %call38, ptr %type, align 4, !dbg !1739, !tbaa !313
  %22 = load i32, ptr %type, align 4, !dbg !1742, !tbaa !313
  switch i32 %22, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb39
    i32 1, label %sw.bb40
  ], !dbg !1743

sw.bb:                                            ; preds = %if.end34
  %23 = load ptr, ptr %dirpath, align 8, !dbg !1744, !tbaa !303
  %24 = load ptr, ptr %filepath, align 8, !dbg !1746, !tbaa !303
  %25 = load i32, ptr %fix, align 4, !dbg !1747, !tbaa !627
  call void @checkMultiPartAof(ptr noundef %23, ptr noundef %24, i32 noundef %25), !dbg !1748
  br label %sw.epilog, !dbg !1749

sw.bb39:                                          ; preds = %if.end34
  %26 = load ptr, ptr %filepath, align 8, !dbg !1750, !tbaa !303
  %27 = load i32, ptr %fix, align 4, !dbg !1751, !tbaa !627
  call void @checkOldStyleAof(ptr noundef %26, i32 noundef %27, i32 noundef 0), !dbg !1752
  br label %sw.epilog, !dbg !1753

sw.bb40:                                          ; preds = %if.end34
  %28 = load ptr, ptr %filepath, align 8, !dbg !1754, !tbaa !303
  %29 = load i32, ptr %fix, align 4, !dbg !1755, !tbaa !627
  call void @checkOldStyleAof(ptr noundef %28, i32 noundef %29, i32 noundef 1), !dbg !1756
  br label %sw.epilog, !dbg !1757

sw.epilog:                                        ; preds = %if.end34, %sw.bb40, %sw.bb39, %sw.bb
  call void @exit(i32 noundef 0) #11, !dbg !1758
  unreachable, !dbg !1758

invalid_args:                                     ; preds = %if.else30, %if.else28, %if.else9, %if.then
  tail call void @llvm.dbg.label(metadata !1659), !dbg !1759
  %30 = load ptr, ptr %argv.addr, align 8, !dbg !1760, !tbaa !303
  %arrayidx41 = getelementptr inbounds ptr, ptr %30, i64 0, !dbg !1760
  %31 = load ptr, ptr %arrayidx41, align 8, !dbg !1760, !tbaa !303
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.60, ptr noundef %31), !dbg !1761
  call void @exit(i32 noundef 1) #11, !dbg !1762
  unreachable, !dbg !1762
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1763 i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare !dbg !1764 ptr @dirname(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "redis-check-aof.c", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "65f90980df6ecf9d0ba64ee004300929")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 29)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "error", scope: !14, file: !2, line: 58, type: !280, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !28, globals: !43, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !22}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 42, baseType: !17, size: 32, elements: !18)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "AOF_RESP", value: 0)
!20 = !DIEnumerator(name: "AOF_RDB_PREAMBLE", value: 1)
!21 = !DIEnumerator(name: "AOF_MULTI_PART", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 1402, baseType: !17, size: 32, elements: !24)
!23 = !DIFile(filename: "./server.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "d13810607e8b272ce8c5554655a1a06b")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "AOF_FILE_TYPE_BASE", value: 98)
!26 = !DIEnumerator(name: "AOF_FILE_TYPE_HIST", value: 104)
!27 = !DIEnumerator(name: "AOF_FILE_TYPE_INCR", value: 105)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!32 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "aofInfo", file: !23, line: 1412, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 1408, size: 192, elements: !36)
!36 = !{!37, !40, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !35, file: !23, line: 1409, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !39, line: 43, baseType: !31)
!39 = !DIFile(filename: "./sds.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "6f1c77e1387f64b3d0932b6a429e2e08")
!40 = !DIDerivedType(tag: DW_TAG_member, name: "file_seq", scope: !35, file: !23, line: 1410, baseType: !29, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "file_type", scope: !35, file: !23, line: 1411, baseType: !42, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "aof_file_type", file: !23, line: 1406, baseType: !22)
!43 = !{!0, !7, !44, !49, !54, !59, !64, !69, !74, !79, !84, !89, !91, !96, !101, !106, !111, !116, !118, !123, !128, !133, !135, !140, !142, !147, !149, !154, !159, !164, !169, !174, !179, !184, !186, !188, !193, !195, !200, !205, !207, !209, !211, !216, !218, !220, !222, !224, !226, !231, !233, !238, !240, !242, !244, !246, !251, !253, !255, !260, !262, !12, !267, !273, !275}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 13)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 32)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 42)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 73)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 6)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 27)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 5)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 26)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 53)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 184, type: !76, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 30)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 194, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 54)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 728, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 91)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1440, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 180)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 44)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !3, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 38)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 35)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 49)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !130, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 41)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !93, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 21)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !56, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 4)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 45)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 672, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 84)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 59)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 77)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 18)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 2)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !46, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 317, type: !71, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 61)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !181, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 339, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 25)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 22)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !66, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !202, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !76, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 31)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !120, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !151, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !76, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 462, type: !202, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !202, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 466, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 48)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !213, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 28)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 487, type: !202, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 489, type: !202, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !120, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 508, type: !93, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 17)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !248, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !66, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 24)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !51, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 79)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "epos", scope: !14, file: !2, line: 59, type: !269, isLocal: true, isDefinition: true)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !270, line: 58, baseType: !271)
!270 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !272, line: 153, baseType: !32)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "line", scope: !14, file: !2, line: 60, type: !29, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "to_timestamp", scope: !14, file: !2, line: 61, type: !277, isLocal: true, isDefinition: true)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !278, line: 10, baseType: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !272, line: 160, baseType: !32)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8352, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 1044)
!283 = !{i32 7, !"Dwarf Version", i32 5}
!284 = !{i32 2, !"Debug Info Version", i32 3}
!285 = !{i32 1, !"wchar_size", i32 4}
!286 = !{i32 8, !"PIC Level", i32 2}
!287 = !{i32 7, !"PIE Level", i32 2}
!288 = !{i32 7, !"uwtable", i32 2}
!289 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!290 = distinct !DISubprogram(name: "consumeNewline", scope: !2, file: !2, line: 63, type: !291, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !294)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !31}
!293 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!294 = !{!295, !296}
!295 = !DILocalVariable(name: "buf", arg: 1, scope: !290, file: !2, line: 63, type: !31)
!296 = !DILocalVariable(name: "__buf", scope: !297, file: !2, line: 65, type: !300)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 65, column: 9)
!298 = distinct !DILexicalBlock(scope: !299, file: !2, line: 64, column: 37)
!299 = distinct !DILexicalBlock(scope: !290, file: !2, line: 64, column: 9)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 1024)
!303 = !{!304, !304, i64 0}
!304 = !{!"any pointer", !305, i64 0}
!305 = !{!"omnipotent char", !306, i64 0}
!306 = !{!"Simple C/C++ TBAA"}
!307 = !DILocation(line: 63, column: 26, scope: !290)
!308 = !DILocation(line: 64, column: 17, scope: !299)
!309 = !DILocation(line: 64, column: 9, scope: !299)
!310 = !DILocation(line: 64, column: 31, scope: !299)
!311 = !DILocation(line: 64, column: 9, scope: !290)
!312 = !DILocation(line: 65, column: 9, scope: !297)
!313 = !{!305, !305, i64 0}
!314 = !{!315, !315, i64 0}
!315 = !{!"long", !305, i64 0}
!316 = !DILocation(line: 65, column: 9, scope: !298)
!317 = !DILocation(line: 66, column: 9, scope: !298)
!318 = !DILocation(line: 68, column: 10, scope: !290)
!319 = !{!320, !320, i64 0}
!320 = !{!"long long", !305, i64 0}
!321 = !DILocation(line: 69, column: 5, scope: !290)
!322 = !DILocation(line: 70, column: 1, scope: !290)
!323 = !DISubprogram(name: "strncmp", scope: !324, file: !324, line: 159, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!325 = !DISubroutineType(types: !326)
!326 = !{!293, !327, !327, !329}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !330, line: 70, baseType: !331)
!330 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!331 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!332 = !DISubprogram(name: "snprintf", scope: !333, file: !333, line: 378, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!334 = !DISubroutineType(types: !335)
!335 = !{!293, !336, !329, !337, null}
!336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!337 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !327)
!338 = distinct !DISubprogram(name: "readLong", scope: !2, file: !2, line: 72, type: !339, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !395)
!339 = !DISubroutineType(types: !340)
!340 = !{!293, !341, !4, !394}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !343, line: 7, baseType: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !345, line: 49, size: 1728, elements: !346)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !362, !364, !365, !366, !368, !370, !372, !376, !379, !380, !383, !386, !387, !388, !389, !390}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !344, file: !345, line: 51, baseType: !293, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !344, file: !345, line: 54, baseType: !31, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !344, file: !345, line: 55, baseType: !31, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !344, file: !345, line: 56, baseType: !31, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !344, file: !345, line: 57, baseType: !31, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !344, file: !345, line: 58, baseType: !31, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !344, file: !345, line: 59, baseType: !31, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !344, file: !345, line: 60, baseType: !31, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !344, file: !345, line: 61, baseType: !31, size: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !344, file: !345, line: 64, baseType: !31, size: 64, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !344, file: !345, line: 65, baseType: !31, size: 64, offset: 640)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !344, file: !345, line: 66, baseType: !31, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !344, file: !345, line: 68, baseType: !360, size: 64, offset: 768)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !345, line: 36, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !344, file: !345, line: 70, baseType: !363, size: 64, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !344, file: !345, line: 72, baseType: !293, size: 32, offset: 896)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !344, file: !345, line: 73, baseType: !293, size: 32, offset: 928)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !344, file: !345, line: 74, baseType: !367, size: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !272, line: 152, baseType: !32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !344, file: !345, line: 77, baseType: !369, size: 16, offset: 1024)
!369 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !344, file: !345, line: 78, baseType: !371, size: 8, offset: 1040)
!371 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !344, file: !345, line: 79, baseType: !373, size: 8, offset: 1048)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 1)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !344, file: !345, line: 81, baseType: !377, size: 64, offset: 1088)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !345, line: 43, baseType: null)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !344, file: !345, line: 89, baseType: !271, size: 64, offset: 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !344, file: !345, line: 91, baseType: !381, size: 64, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !345, line: 37, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !344, file: !345, line: 92, baseType: !384, size: 64, offset: 1280)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !345, line: 38, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !344, file: !345, line: 93, baseType: !363, size: 64, offset: 1344)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !344, file: !345, line: 94, baseType: !30, size: 64, offset: 1408)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !344, file: !345, line: 95, baseType: !329, size: 64, offset: 1472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !344, file: !345, line: 96, baseType: !293, size: 32, offset: 1536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !344, file: !345, line: 98, baseType: !391, size: 160, offset: 1568)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 20)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!395 = !{!396, !397, !398, !399, !403, !404}
!396 = !DILocalVariable(name: "fp", arg: 1, scope: !338, file: !2, line: 72, type: !341)
!397 = !DILocalVariable(name: "prefix", arg: 2, scope: !338, file: !2, line: 72, type: !4)
!398 = !DILocalVariable(name: "target", arg: 3, scope: !338, file: !2, line: 72, type: !394)
!399 = !DILocalVariable(name: "buf", scope: !338, file: !2, line: 73, type: !400)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 128)
!403 = !DILocalVariable(name: "eptr", scope: !338, file: !2, line: 73, type: !31)
!404 = !DILocalVariable(name: "__buf", scope: !405, file: !2, line: 79, type: !300)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 79, column: 9)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 78, column: 27)
!407 = distinct !DILexicalBlock(scope: !338, file: !2, line: 78, column: 9)
!408 = !DILocation(line: 72, column: 20, scope: !338)
!409 = !DILocation(line: 72, column: 29, scope: !338)
!410 = !DILocation(line: 72, column: 43, scope: !338)
!411 = !DILocation(line: 73, column: 5, scope: !338)
!412 = !DILocation(line: 73, column: 10, scope: !338)
!413 = !DILocation(line: 73, column: 21, scope: !338)
!414 = !DILocation(line: 74, column: 19, scope: !338)
!415 = !DILocation(line: 74, column: 12, scope: !338)
!416 = !DILocation(line: 74, column: 10, scope: !338)
!417 = !DILocation(line: 75, column: 15, scope: !418)
!418 = distinct !DILexicalBlock(scope: !338, file: !2, line: 75, column: 9)
!419 = !DILocation(line: 75, column: 31, scope: !418)
!420 = !DILocation(line: 75, column: 9, scope: !418)
!421 = !DILocation(line: 75, column: 35, scope: !418)
!422 = !DILocation(line: 75, column: 9, scope: !338)
!423 = !DILocation(line: 76, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !2, line: 75, column: 44)
!425 = !DILocation(line: 78, column: 9, scope: !407)
!426 = !DILocation(line: 78, column: 19, scope: !407)
!427 = !DILocation(line: 78, column: 16, scope: !407)
!428 = !DILocation(line: 78, column: 9, scope: !338)
!429 = !DILocation(line: 79, column: 9, scope: !405)
!430 = !DILocation(line: 79, column: 9, scope: !406)
!431 = !DILocation(line: 80, column: 9, scope: !406)
!432 = !DILocation(line: 82, column: 22, scope: !338)
!433 = !DILocation(line: 82, column: 25, scope: !338)
!434 = !DILocation(line: 82, column: 15, scope: !338)
!435 = !DILocation(line: 82, column: 6, scope: !338)
!436 = !DILocation(line: 82, column: 13, scope: !338)
!437 = !DILocation(line: 83, column: 27, scope: !338)
!438 = !DILocation(line: 83, column: 12, scope: !338)
!439 = !DILocation(line: 83, column: 5, scope: !338)
!440 = !DILocation(line: 84, column: 1, scope: !338)
!441 = !DISubprogram(name: "ftello", linkageName: "ftello64", scope: !333, file: !333, line: 747, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!271, !341}
!444 = !DISubprogram(name: "fgets", scope: !333, file: !333, line: 592, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!31, !336, !293, !447}
!447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !341)
!448 = !DISubprogram(name: "strtol", scope: !449, file: !449, line: 177, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!450 = !DISubroutineType(types: !451)
!451 = !{!32, !337, !452, !293}
!452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!454 = distinct !DISubprogram(name: "readBytes", scope: !2, file: !2, line: 86, type: !455, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!293, !341, !31, !32}
!457 = !{!458, !459, !460, !461, !462}
!458 = !DILocalVariable(name: "fp", arg: 1, scope: !454, file: !2, line: 86, type: !341)
!459 = !DILocalVariable(name: "target", arg: 2, scope: !454, file: !2, line: 86, type: !31)
!460 = !DILocalVariable(name: "length", arg: 3, scope: !454, file: !2, line: 86, type: !32)
!461 = !DILocalVariable(name: "real", scope: !454, file: !2, line: 87, type: !32)
!462 = !DILocalVariable(name: "__buf", scope: !463, file: !2, line: 91, type: !300)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 91, column: 9)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 90, column: 25)
!465 = distinct !DILexicalBlock(scope: !454, file: !2, line: 90, column: 9)
!466 = !DILocation(line: 86, column: 21, scope: !454)
!467 = !DILocation(line: 86, column: 31, scope: !454)
!468 = !DILocation(line: 86, column: 44, scope: !454)
!469 = !DILocation(line: 87, column: 5, scope: !454)
!470 = !DILocation(line: 87, column: 10, scope: !454)
!471 = !DILocation(line: 88, column: 19, scope: !454)
!472 = !DILocation(line: 88, column: 12, scope: !454)
!473 = !DILocation(line: 88, column: 10, scope: !454)
!474 = !DILocation(line: 89, column: 18, scope: !454)
!475 = !DILocation(line: 89, column: 27, scope: !454)
!476 = !DILocation(line: 89, column: 34, scope: !454)
!477 = !DILocation(line: 89, column: 12, scope: !454)
!478 = !DILocation(line: 89, column: 10, scope: !454)
!479 = !DILocation(line: 90, column: 9, scope: !465)
!480 = !DILocation(line: 90, column: 17, scope: !465)
!481 = !DILocation(line: 90, column: 14, scope: !465)
!482 = !DILocation(line: 90, column: 9, scope: !454)
!483 = !DILocation(line: 91, column: 9, scope: !463)
!484 = !DILocation(line: 91, column: 9, scope: !464)
!485 = !DILocation(line: 92, column: 9, scope: !464)
!486 = !DILocation(line: 94, column: 5, scope: !454)
!487 = !DILocation(line: 95, column: 1, scope: !454)
!488 = !DISubprogram(name: "fread", scope: !333, file: !333, line: 675, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DISubroutineType(types: !490)
!490 = !{!331, !491, !329, !329, !447}
!491 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!492 = distinct !DISubprogram(name: "readString", scope: !2, file: !2, line: 97, type: !493, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!293, !341, !453}
!495 = !{!496, !497, !498, !499}
!496 = !DILocalVariable(name: "fp", arg: 1, scope: !492, file: !2, line: 97, type: !341)
!497 = !DILocalVariable(name: "target", arg: 2, scope: !492, file: !2, line: 97, type: !453)
!498 = !DILocalVariable(name: "len", scope: !492, file: !2, line: 98, type: !32)
!499 = !DILocalVariable(name: "__buf", scope: !500, file: !2, line: 105, type: !300)
!500 = distinct !DILexicalBlock(scope: !501, file: !2, line: 105, column: 9)
!501 = distinct !DILexicalBlock(scope: !502, file: !2, line: 104, column: 40)
!502 = distinct !DILexicalBlock(scope: !492, file: !2, line: 104, column: 9)
!503 = !DILocation(line: 97, column: 22, scope: !492)
!504 = !DILocation(line: 97, column: 33, scope: !492)
!505 = !DILocation(line: 98, column: 5, scope: !492)
!506 = !DILocation(line: 98, column: 10, scope: !492)
!507 = !DILocation(line: 99, column: 6, scope: !492)
!508 = !DILocation(line: 99, column: 13, scope: !492)
!509 = !DILocation(line: 100, column: 19, scope: !510)
!510 = distinct !DILexicalBlock(scope: !492, file: !2, line: 100, column: 9)
!511 = !DILocation(line: 100, column: 10, scope: !510)
!512 = !DILocation(line: 100, column: 9, scope: !492)
!513 = !DILocation(line: 101, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !2, line: 100, column: 33)
!515 = !DILocation(line: 104, column: 9, scope: !502)
!516 = !DILocation(line: 104, column: 13, scope: !502)
!517 = !DILocation(line: 104, column: 17, scope: !502)
!518 = !DILocation(line: 104, column: 20, scope: !502)
!519 = !DILocation(line: 104, column: 24, scope: !502)
!520 = !DILocation(line: 104, column: 9, scope: !492)
!521 = !DILocation(line: 105, column: 9, scope: !500)
!522 = !DILocation(line: 105, column: 9, scope: !501)
!523 = !DILocation(line: 106, column: 9, scope: !501)
!524 = !DILocation(line: 110, column: 9, scope: !492)
!525 = !DILocation(line: 111, column: 30, scope: !492)
!526 = !DILocation(line: 111, column: 22, scope: !492)
!527 = !DILocation(line: 111, column: 6, scope: !492)
!528 = !DILocation(line: 111, column: 13, scope: !492)
!529 = !DILocation(line: 112, column: 20, scope: !530)
!530 = distinct !DILexicalBlock(scope: !492, file: !2, line: 112, column: 9)
!531 = !DILocation(line: 112, column: 24, scope: !530)
!532 = !DILocation(line: 112, column: 23, scope: !530)
!533 = !DILocation(line: 112, column: 31, scope: !530)
!534 = !DILocation(line: 112, column: 10, scope: !530)
!535 = !DILocation(line: 112, column: 9, scope: !492)
!536 = !DILocation(line: 113, column: 16, scope: !537)
!537 = distinct !DILexicalBlock(scope: !530, file: !2, line: 112, column: 37)
!538 = !DILocation(line: 113, column: 15, scope: !537)
!539 = !DILocation(line: 113, column: 9, scope: !537)
!540 = !DILocation(line: 114, column: 10, scope: !537)
!541 = !DILocation(line: 114, column: 17, scope: !537)
!542 = !DILocation(line: 115, column: 9, scope: !537)
!543 = !DILocation(line: 117, column: 26, scope: !544)
!544 = distinct !DILexicalBlock(scope: !492, file: !2, line: 117, column: 9)
!545 = !DILocation(line: 117, column: 25, scope: !544)
!546 = !DILocation(line: 117, column: 33, scope: !544)
!547 = !DILocation(line: 117, column: 32, scope: !544)
!548 = !DILocation(line: 117, column: 36, scope: !544)
!549 = !DILocation(line: 117, column: 10, scope: !544)
!550 = !DILocation(line: 117, column: 9, scope: !492)
!551 = !DILocation(line: 118, column: 16, scope: !552)
!552 = distinct !DILexicalBlock(scope: !544, file: !2, line: 117, column: 41)
!553 = !DILocation(line: 118, column: 15, scope: !552)
!554 = !DILocation(line: 118, column: 9, scope: !552)
!555 = !DILocation(line: 119, column: 10, scope: !552)
!556 = !DILocation(line: 119, column: 17, scope: !552)
!557 = !DILocation(line: 120, column: 9, scope: !552)
!558 = !DILocation(line: 122, column: 7, scope: !492)
!559 = !DILocation(line: 122, column: 6, scope: !492)
!560 = !DILocation(line: 122, column: 15, scope: !492)
!561 = !DILocation(line: 122, column: 18, scope: !492)
!562 = !DILocation(line: 122, column: 5, scope: !492)
!563 = !DILocation(line: 122, column: 22, scope: !492)
!564 = !DILocation(line: 123, column: 5, scope: !492)
!565 = !DILocation(line: 124, column: 1, scope: !492)
!566 = !DISubprogram(name: "zmalloc", scope: !567, file: !567, line: 99, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!567 = !DIFile(filename: "./zmalloc.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "e165f08718e6f3b3aaa809126581c85d")
!568 = !DISubroutineType(types: !569)
!569 = !{!30, !329}
!570 = !DISubprogram(name: "zfree", scope: !567, file: !567, line: 106, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !30}
!573 = distinct !DISubprogram(name: "readArgc", scope: !2, file: !2, line: 126, type: !574, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!293, !341, !394}
!576 = !{!577, !578}
!577 = !DILocalVariable(name: "fp", arg: 1, scope: !573, file: !2, line: 126, type: !341)
!578 = !DILocalVariable(name: "target", arg: 2, scope: !573, file: !2, line: 126, type: !394)
!579 = !DILocation(line: 126, column: 20, scope: !573)
!580 = !DILocation(line: 126, column: 30, scope: !573)
!581 = !DILocation(line: 127, column: 21, scope: !573)
!582 = !DILocation(line: 127, column: 28, scope: !573)
!583 = !DILocation(line: 127, column: 12, scope: !573)
!584 = !DILocation(line: 127, column: 5, scope: !573)
!585 = distinct !DISubprogram(name: "processRESP", scope: !2, file: !2, line: 137, type: !586, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !589)
!586 = !DISubroutineType(types: !587)
!587 = !{!293, !341, !31, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!589 = !{!590, !591, !592, !593, !594, !595, !597, !607}
!590 = !DILocalVariable(name: "fp", arg: 1, scope: !585, file: !2, line: 137, type: !341)
!591 = !DILocalVariable(name: "filename", arg: 2, scope: !585, file: !2, line: 137, type: !31)
!592 = !DILocalVariable(name: "out_multi", arg: 3, scope: !585, file: !2, line: 137, type: !588)
!593 = !DILocalVariable(name: "argc", scope: !585, file: !2, line: 138, type: !32)
!594 = !DILocalVariable(name: "str", scope: !585, file: !2, line: 139, type: !31)
!595 = !DILocalVariable(name: "i", scope: !596, file: !2, line: 143, type: !293)
!596 = distinct !DILexicalBlock(scope: !585, file: !2, line: 143, column: 5)
!597 = !DILocalVariable(name: "__buf", scope: !598, file: !2, line: 148, type: !300)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 148, column: 21)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 147, column: 37)
!600 = distinct !DILexicalBlock(scope: !601, file: !2, line: 147, column: 21)
!601 = distinct !DILexicalBlock(scope: !602, file: !2, line: 146, column: 48)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 146, column: 17)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 145, column: 21)
!604 = distinct !DILexicalBlock(scope: !605, file: !2, line: 145, column: 13)
!605 = distinct !DILexicalBlock(scope: !606, file: !2, line: 143, column: 36)
!606 = distinct !DILexicalBlock(scope: !596, file: !2, line: 143, column: 5)
!607 = !DILocalVariable(name: "__buf", scope: !608, file: !2, line: 154, type: !300)
!608 = distinct !DILexicalBlock(scope: !609, file: !2, line: 154, column: 21)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 153, column: 37)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 153, column: 21)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 152, column: 54)
!612 = distinct !DILexicalBlock(scope: !602, file: !2, line: 152, column: 24)
!613 = !DILocation(line: 137, column: 23, scope: !585)
!614 = !DILocation(line: 137, column: 33, scope: !585)
!615 = !DILocation(line: 137, column: 48, scope: !585)
!616 = !DILocation(line: 138, column: 5, scope: !585)
!617 = !DILocation(line: 138, column: 10, scope: !585)
!618 = !DILocation(line: 139, column: 5, scope: !585)
!619 = !DILocation(line: 139, column: 11, scope: !585)
!620 = !DILocation(line: 141, column: 19, scope: !621)
!621 = distinct !DILexicalBlock(scope: !585, file: !2, line: 141, column: 9)
!622 = !DILocation(line: 141, column: 10, scope: !621)
!623 = !DILocation(line: 141, column: 9, scope: !585)
!624 = !DILocation(line: 141, column: 31, scope: !621)
!625 = !DILocation(line: 143, column: 10, scope: !596)
!626 = !DILocation(line: 143, column: 14, scope: !596)
!627 = !{!628, !628, i64 0}
!628 = !{!"int", !305, i64 0}
!629 = !DILocation(line: 143, column: 21, scope: !606)
!630 = !DILocation(line: 143, column: 25, scope: !606)
!631 = !DILocation(line: 143, column: 23, scope: !606)
!632 = !DILocation(line: 143, column: 5, scope: !596)
!633 = !DILocation(line: 144, column: 25, scope: !634)
!634 = distinct !DILexicalBlock(scope: !605, file: !2, line: 144, column: 13)
!635 = !DILocation(line: 144, column: 14, scope: !634)
!636 = !DILocation(line: 144, column: 13, scope: !605)
!637 = !DILocation(line: 144, column: 36, scope: !634)
!638 = !DILocation(line: 145, column: 13, scope: !604)
!639 = !DILocation(line: 145, column: 15, scope: !604)
!640 = !DILocation(line: 145, column: 13, scope: !605)
!641 = !DILocation(line: 146, column: 28, scope: !602)
!642 = !DILocation(line: 146, column: 17, scope: !602)
!643 = !DILocation(line: 146, column: 42, scope: !602)
!644 = !DILocation(line: 146, column: 17, scope: !603)
!645 = !DILocation(line: 147, column: 23, scope: !600)
!646 = !DILocation(line: 147, column: 33, scope: !600)
!647 = !DILocation(line: 147, column: 21, scope: !601)
!648 = !DILocation(line: 148, column: 21, scope: !598)
!649 = !DILocation(line: 148, column: 21, scope: !599)
!650 = !DILocation(line: 149, column: 27, scope: !599)
!651 = !DILocation(line: 149, column: 21, scope: !599)
!652 = !DILocation(line: 150, column: 21, scope: !599)
!653 = !DILocation(line: 152, column: 13, scope: !601)
!654 = !DILocation(line: 152, column: 35, scope: !612)
!655 = !DILocation(line: 152, column: 24, scope: !612)
!656 = !DILocation(line: 152, column: 48, scope: !612)
!657 = !DILocation(line: 152, column: 24, scope: !602)
!658 = !DILocation(line: 153, column: 25, scope: !610)
!659 = !DILocation(line: 153, column: 21, scope: !610)
!660 = !DILocation(line: 153, column: 21, scope: !611)
!661 = !DILocation(line: 154, column: 21, scope: !608)
!662 = !DILocation(line: 154, column: 21, scope: !609)
!663 = !DILocation(line: 155, column: 27, scope: !609)
!664 = !DILocation(line: 155, column: 21, scope: !609)
!665 = !DILocation(line: 156, column: 21, scope: !609)
!666 = !DILocation(line: 158, column: 13, scope: !611)
!667 = !DILocation(line: 159, column: 9, scope: !603)
!668 = !DILocation(line: 160, column: 15, scope: !605)
!669 = !DILocation(line: 160, column: 9, scope: !605)
!670 = !DILocation(line: 161, column: 5, scope: !605)
!671 = !DILocation(line: 143, column: 32, scope: !606)
!672 = !DILocation(line: 143, column: 5, scope: !606)
!673 = distinct !{!673, !632, !674, !675}
!674 = !DILocation(line: 161, column: 5, scope: !596)
!675 = !{!"llvm.loop.mustprogress"}
!676 = !DILocation(line: 163, column: 5, scope: !585)
!677 = !DILocation(line: 164, column: 1, scope: !585)
!678 = !DISubprogram(name: "strcasecmp", scope: !679, file: !679, line: 116, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!680 = !DISubroutineType(types: !681)
!681 = !{!293, !327, !327}
!682 = distinct !DISubprogram(name: "processAnnotations", scope: !2, file: !2, line: 175, type: !683, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!293, !341, !31, !293}
!685 = !{!686, !687, !688, !689, !690, !693}
!686 = !DILocalVariable(name: "fp", arg: 1, scope: !682, file: !2, line: 175, type: !341)
!687 = !DILocalVariable(name: "filename", arg: 2, scope: !682, file: !2, line: 175, type: !31)
!688 = !DILocalVariable(name: "last_file", arg: 3, scope: !682, file: !2, line: 175, type: !293)
!689 = !DILocalVariable(name: "buf", scope: !682, file: !2, line: 176, type: !300)
!690 = !DILocalVariable(name: "endptr", scope: !691, file: !2, line: 185, type: !31)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 184, column: 55)
!692 = distinct !DILexicalBlock(scope: !682, file: !2, line: 184, column: 9)
!693 = !DILocalVariable(name: "ts", scope: !691, file: !2, line: 187, type: !277)
!694 = !DILocation(line: 175, column: 30, scope: !682)
!695 = !DILocation(line: 175, column: 40, scope: !682)
!696 = !DILocation(line: 175, column: 54, scope: !682)
!697 = !DILocation(line: 176, column: 5, scope: !682)
!698 = !DILocation(line: 176, column: 10, scope: !682)
!699 = !DILocation(line: 178, column: 19, scope: !682)
!700 = !DILocation(line: 178, column: 12, scope: !682)
!701 = !DILocation(line: 178, column: 10, scope: !682)
!702 = !DILocation(line: 179, column: 15, scope: !703)
!703 = distinct !DILexicalBlock(scope: !682, file: !2, line: 179, column: 9)
!704 = !DILocation(line: 179, column: 33, scope: !703)
!705 = !DILocation(line: 179, column: 9, scope: !703)
!706 = !DILocation(line: 179, column: 37, scope: !703)
!707 = !DILocation(line: 179, column: 9, scope: !682)
!708 = !DILocation(line: 180, column: 73, scope: !709)
!709 = distinct !DILexicalBlock(scope: !703, file: !2, line: 179, column: 46)
!710 = !DILocation(line: 180, column: 9, scope: !709)
!711 = !DILocation(line: 181, column: 9, scope: !709)
!712 = !DILocation(line: 184, column: 9, scope: !692)
!713 = !DILocation(line: 184, column: 22, scope: !692)
!714 = !DILocation(line: 184, column: 33, scope: !692)
!715 = !DILocation(line: 184, column: 25, scope: !692)
!716 = !DILocation(line: 184, column: 49, scope: !692)
!717 = !DILocation(line: 184, column: 9, scope: !682)
!718 = !DILocation(line: 185, column: 9, scope: !691)
!719 = !DILocation(line: 185, column: 15, scope: !691)
!720 = !DILocation(line: 186, column: 9, scope: !691)
!721 = !DILocation(line: 186, column: 15, scope: !691)
!722 = !DILocation(line: 187, column: 9, scope: !691)
!723 = !DILocation(line: 187, column: 16, scope: !691)
!724 = !DILocation(line: 187, column: 28, scope: !691)
!725 = !DILocation(line: 187, column: 31, scope: !691)
!726 = !DILocation(line: 187, column: 21, scope: !691)
!727 = !DILocation(line: 188, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !691, file: !2, line: 188, column: 13)
!729 = !DILocation(line: 188, column: 19, scope: !728)
!730 = !DILocation(line: 188, column: 24, scope: !728)
!731 = !DILocation(line: 188, column: 28, scope: !728)
!732 = !DILocation(line: 188, column: 27, scope: !728)
!733 = !DILocation(line: 188, column: 35, scope: !728)
!734 = !DILocation(line: 188, column: 13, scope: !691)
!735 = !DILocation(line: 189, column: 13, scope: !736)
!736 = distinct !DILexicalBlock(scope: !728, file: !2, line: 188, column: 44)
!737 = !DILocation(line: 190, column: 13, scope: !736)
!738 = !DILocation(line: 192, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !691, file: !2, line: 192, column: 13)
!740 = !DILocation(line: 192, column: 19, scope: !739)
!741 = !DILocation(line: 192, column: 16, scope: !739)
!742 = !DILocation(line: 192, column: 13, scope: !691)
!743 = !DILocation(line: 192, column: 33, scope: !739)
!744 = !DILocation(line: 193, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !691, file: !2, line: 193, column: 13)
!746 = !DILocation(line: 193, column: 18, scope: !745)
!747 = !DILocation(line: 193, column: 13, scope: !691)
!748 = !DILocation(line: 195, column: 38, scope: !749)
!749 = distinct !DILexicalBlock(scope: !745, file: !2, line: 193, column: 24)
!750 = !DILocation(line: 195, column: 48, scope: !749)
!751 = !DILocation(line: 194, column: 13, scope: !749)
!752 = !DILocation(line: 196, column: 13, scope: !749)
!753 = !DILocation(line: 198, column: 14, scope: !754)
!754 = distinct !DILexicalBlock(scope: !691, file: !2, line: 198, column: 13)
!755 = !DILocation(line: 198, column: 13, scope: !691)
!756 = !DILocation(line: 200, column: 17, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !2, line: 198, column: 25)
!758 = !DILocation(line: 200, column: 27, scope: !757)
!759 = !DILocation(line: 200, column: 51, scope: !757)
!760 = !DILocation(line: 199, column: 13, scope: !757)
!761 = !DILocation(line: 201, column: 13, scope: !757)
!762 = !DILocation(line: 203, column: 13, scope: !757)
!763 = !DILocation(line: 206, column: 30, scope: !764)
!764 = distinct !DILexicalBlock(scope: !691, file: !2, line: 206, column: 13)
!765 = !DILocation(line: 206, column: 23, scope: !764)
!766 = !DILocation(line: 206, column: 35, scope: !764)
!767 = !DILocation(line: 206, column: 13, scope: !764)
!768 = !DILocation(line: 206, column: 41, scope: !764)
!769 = !DILocation(line: 206, column: 13, scope: !691)
!770 = !DILocation(line: 208, column: 21, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !2, line: 206, column: 48)
!772 = !DILocation(line: 208, column: 31, scope: !771)
!773 = !DILocation(line: 207, column: 13, scope: !771)
!774 = !DILocation(line: 209, column: 13, scope: !771)
!775 = !DILocation(line: 211, column: 13, scope: !776)
!776 = distinct !DILexicalBlock(scope: !764, file: !2, line: 210, column: 16)
!777 = !DILocation(line: 213, column: 5, scope: !692)
!778 = !DILocation(line: 214, column: 5, scope: !682)
!779 = !DILocation(line: 215, column: 1, scope: !682)
!780 = !DISubprogram(name: "printf", scope: !333, file: !333, line: 356, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!781 = !DISubroutineType(types: !782)
!782 = !{!293, !337, null}
!783 = !DISubprogram(name: "exit", scope: !449, file: !449, line: 624, type: !784, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !293}
!786 = !DISubprogram(name: "__errno_location", scope: !787, file: !787, line: 37, type: !788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!787 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!788 = !DISubroutineType(types: !789)
!789 = !{!588}
!790 = !DISubprogram(name: "ftruncate", linkageName: "ftruncate64", scope: !791, file: !791, line: 1052, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!792 = !DISubroutineType(types: !793)
!793 = !{!293, !293, !271}
!794 = !DISubprogram(name: "fileno", scope: !333, file: !333, line: 809, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DISubroutineType(types: !796)
!796 = !{!293, !341}
!797 = distinct !DISubprogram(name: "checkSingleAof", scope: !2, file: !2, line: 222, type: !798, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!293, !31, !31, !293, !293, !293}
!800 = !{!801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !845, !846, !850, !854}
!801 = !DILocalVariable(name: "aof_filename", arg: 1, scope: !797, file: !2, line: 222, type: !31)
!802 = !DILocalVariable(name: "aof_filepath", arg: 2, scope: !797, file: !2, line: 222, type: !31)
!803 = !DILocalVariable(name: "last_file", arg: 3, scope: !797, file: !2, line: 222, type: !293)
!804 = !DILocalVariable(name: "fix", arg: 4, scope: !797, file: !2, line: 222, type: !293)
!805 = !DILocalVariable(name: "preamble", arg: 5, scope: !797, file: !2, line: 222, type: !293)
!806 = !DILocalVariable(name: "pos", scope: !797, file: !2, line: 223, type: !269)
!807 = !DILocalVariable(name: "diff", scope: !797, file: !2, line: 223, type: !269)
!808 = !DILocalVariable(name: "multi", scope: !797, file: !2, line: 224, type: !293)
!809 = !DILocalVariable(name: "buf", scope: !797, file: !2, line: 225, type: !181)
!810 = !DILocalVariable(name: "fp", scope: !797, file: !2, line: 227, type: !341)
!811 = !DILocalVariable(name: "sb", scope: !797, file: !2, line: 233, type: !812)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !813, line: 26, size: 1152, elements: !814)
!813 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!814 = !{!815, !817, !819, !821, !823, !825, !827, !828, !829, !830, !832, !834, !841, !842, !843}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !812, file: !813, line: 31, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !272, line: 145, baseType: !331)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !812, file: !813, line: 36, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !272, line: 148, baseType: !331)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !812, file: !813, line: 44, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !272, line: 151, baseType: !331)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !812, file: !813, line: 45, baseType: !822, size: 32, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !272, line: 150, baseType: !17)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !812, file: !813, line: 47, baseType: !824, size: 32, offset: 224)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !272, line: 146, baseType: !17)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !812, file: !813, line: 48, baseType: !826, size: 32, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !272, line: 147, baseType: !17)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !812, file: !813, line: 50, baseType: !293, size: 32, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !812, file: !813, line: 52, baseType: !816, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !812, file: !813, line: 57, baseType: !367, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !812, file: !813, line: 61, baseType: !831, size: 64, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !272, line: 175, baseType: !32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !812, file: !813, line: 63, baseType: !833, size: 64, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !272, line: 180, baseType: !32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !812, file: !813, line: 74, baseType: !835, size: 128, offset: 576)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !836, line: 11, size: 128, elements: !837)
!836 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !835, file: !836, line: 16, baseType: !279, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !835, file: !836, line: 21, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !272, line: 197, baseType: !32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !812, file: !813, line: 75, baseType: !835, size: 128, offset: 704)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !812, file: !813, line: 76, baseType: !835, size: 128, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !812, file: !813, line: 89, baseType: !844, size: 192, offset: 960)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 192, elements: !5)
!845 = !DILocalVariable(name: "size", scope: !797, file: !2, line: 239, type: !269)
!846 = !DILocalVariable(name: "argv", scope: !847, file: !2, line: 245, type: !849)
!847 = distinct !DILexicalBlock(scope: !848, file: !2, line: 244, column: 19)
!848 = distinct !DILexicalBlock(scope: !797, file: !2, line: 244, column: 9)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !182)
!850 = !DILocalVariable(name: "__buf", scope: !851, file: !2, line: 283, type: !300)
!851 = distinct !DILexicalBlock(scope: !852, file: !2, line: 283, column: 9)
!852 = distinct !DILexicalBlock(scope: !853, file: !2, line: 282, column: 50)
!853 = distinct !DILexicalBlock(scope: !797, file: !2, line: 282, column: 9)
!854 = !DILocalVariable(name: "buf", scope: !855, file: !2, line: 308, type: !181)
!855 = distinct !DILexicalBlock(scope: !856, file: !2, line: 302, column: 18)
!856 = distinct !DILexicalBlock(scope: !857, file: !2, line: 302, column: 13)
!857 = distinct !DILexicalBlock(scope: !858, file: !2, line: 301, column: 19)
!858 = distinct !DILexicalBlock(scope: !797, file: !2, line: 301, column: 9)
!859 = !DILocation(line: 222, column: 26, scope: !797)
!860 = !DILocation(line: 222, column: 46, scope: !797)
!861 = !DILocation(line: 222, column: 64, scope: !797)
!862 = !DILocation(line: 222, column: 79, scope: !797)
!863 = !DILocation(line: 222, column: 88, scope: !797)
!864 = !DILocation(line: 223, column: 5, scope: !797)
!865 = !DILocation(line: 223, column: 11, scope: !797)
!866 = !DILocation(line: 223, column: 20, scope: !797)
!867 = !DILocation(line: 224, column: 5, scope: !797)
!868 = !DILocation(line: 224, column: 9, scope: !797)
!869 = !DILocation(line: 225, column: 5, scope: !797)
!870 = !DILocation(line: 225, column: 10, scope: !797)
!871 = !DILocation(line: 227, column: 5, scope: !797)
!872 = !DILocation(line: 227, column: 11, scope: !797)
!873 = !DILocation(line: 227, column: 22, scope: !797)
!874 = !DILocation(line: 227, column: 16, scope: !797)
!875 = !DILocation(line: 228, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !797, file: !2, line: 228, column: 9)
!877 = !DILocation(line: 228, column: 12, scope: !876)
!878 = !DILocation(line: 228, column: 9, scope: !797)
!879 = !DILocation(line: 229, column: 58, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !2, line: 228, column: 21)
!881 = !DILocation(line: 229, column: 81, scope: !880)
!882 = !DILocation(line: 229, column: 72, scope: !880)
!883 = !DILocation(line: 229, column: 9, scope: !880)
!884 = !DILocation(line: 230, column: 9, scope: !880)
!885 = !DILocation(line: 233, column: 5, scope: !797)
!886 = !DILocation(line: 233, column: 23, scope: !797)
!887 = !DILocation(line: 234, column: 28, scope: !888)
!888 = distinct !DILexicalBlock(scope: !797, file: !2, line: 234, column: 9)
!889 = !DILocation(line: 234, column: 21, scope: !888)
!890 = !DILocation(line: 234, column: 9, scope: !888)
!891 = !DILocation(line: 234, column: 37, scope: !888)
!892 = !DILocation(line: 234, column: 9, scope: !797)
!893 = !DILocation(line: 235, column: 55, scope: !894)
!894 = distinct !DILexicalBlock(scope: !888, file: !2, line: 234, column: 44)
!895 = !DILocation(line: 235, column: 9, scope: !894)
!896 = !DILocation(line: 236, column: 9, scope: !894)
!897 = !DILocation(line: 239, column: 5, scope: !797)
!898 = !DILocation(line: 239, column: 11, scope: !797)
!899 = !DILocation(line: 239, column: 21, scope: !797)
!900 = !{!901, !315, i64 48}
!901 = !{!"stat", !315, i64 0, !315, i64 8, !315, i64 16, !628, i64 24, !628, i64 28, !628, i64 32, !628, i64 36, !315, i64 40, !315, i64 48, !315, i64 56, !315, i64 64, !902, i64 72, !902, i64 88, !902, i64 104, !305, i64 120}
!902 = !{!"timespec", !315, i64 0, !315, i64 8}
!903 = !DILocation(line: 240, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !797, file: !2, line: 240, column: 9)
!905 = !DILocation(line: 240, column: 14, scope: !904)
!906 = !DILocation(line: 240, column: 9, scope: !797)
!907 = !DILocation(line: 241, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !2, line: 240, column: 20)
!909 = !DILocation(line: 244, column: 9, scope: !848)
!910 = !DILocation(line: 244, column: 9, scope: !797)
!911 = !DILocation(line: 245, column: 9, scope: !847)
!912 = !DILocation(line: 245, column: 15, scope: !847)
!913 = !DILocation(line: 245, column: 25, scope: !847)
!914 = !DILocation(line: 245, column: 32, scope: !847)
!915 = !DILocation(line: 246, column: 37, scope: !916)
!916 = distinct !DILexicalBlock(scope: !847, file: !2, line: 246, column: 13)
!917 = !DILocation(line: 246, column: 43, scope: !916)
!918 = !DILocation(line: 246, column: 13, scope: !916)
!919 = !DILocation(line: 246, column: 47, scope: !916)
!920 = !DILocation(line: 246, column: 13, scope: !847)
!921 = !DILocation(line: 247, column: 13, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !2, line: 246, column: 57)
!923 = !DILocation(line: 248, column: 13, scope: !922)
!924 = !DILocation(line: 250, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !916, file: !2, line: 249, column: 16)
!926 = !DILocation(line: 252, column: 5, scope: !848)
!927 = !DILocation(line: 252, column: 5, scope: !847)
!928 = !DILocation(line: 254, column: 5, scope: !797)
!929 = !DILocation(line: 255, column: 14, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 255, column: 13)
!931 = distinct !DILexicalBlock(scope: !797, file: !2, line: 254, column: 14)
!932 = !DILocation(line: 255, column: 13, scope: !931)
!933 = !DILocation(line: 255, column: 34, scope: !930)
!934 = !DILocation(line: 255, column: 27, scope: !930)
!935 = !DILocation(line: 255, column: 25, scope: !930)
!936 = !DILocation(line: 255, column: 21, scope: !930)
!937 = !DILocation(line: 256, column: 19, scope: !938)
!938 = distinct !DILexicalBlock(scope: !931, file: !2, line: 256, column: 13)
!939 = !DILocation(line: 256, column: 37, scope: !938)
!940 = !DILocation(line: 256, column: 13, scope: !938)
!941 = !DILocation(line: 256, column: 41, scope: !938)
!942 = !DILocation(line: 256, column: 13, scope: !931)
!943 = !DILocation(line: 257, column: 22, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 257, column: 17)
!945 = distinct !DILexicalBlock(scope: !938, file: !2, line: 256, column: 50)
!946 = !DILocation(line: 257, column: 17, scope: !944)
!947 = !DILocation(line: 257, column: 17, scope: !945)
!948 = !DILocation(line: 258, column: 17, scope: !949)
!949 = distinct !DILexicalBlock(scope: !944, file: !2, line: 257, column: 27)
!950 = !DILocation(line: 260, column: 65, scope: !945)
!951 = !DILocation(line: 260, column: 13, scope: !945)
!952 = !DILocation(line: 261, column: 13, scope: !945)
!953 = !DILocation(line: 264, column: 19, scope: !954)
!954 = distinct !DILexicalBlock(scope: !931, file: !2, line: 264, column: 13)
!955 = !DILocation(line: 264, column: 13, scope: !954)
!956 = !DILocation(line: 264, column: 37, scope: !954)
!957 = !DILocation(line: 264, column: 13, scope: !931)
!958 = !DILocation(line: 265, column: 53, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !2, line: 264, column: 44)
!960 = !DILocation(line: 265, column: 76, scope: !959)
!961 = !DILocation(line: 265, column: 67, scope: !959)
!962 = !DILocation(line: 265, column: 13, scope: !959)
!963 = !DILocation(line: 266, column: 13, scope: !959)
!964 = !DILocation(line: 269, column: 13, scope: !965)
!965 = distinct !DILexicalBlock(scope: !931, file: !2, line: 269, column: 13)
!966 = !DILocation(line: 269, column: 20, scope: !965)
!967 = !DILocation(line: 269, column: 13, scope: !931)
!968 = !DILocation(line: 270, column: 37, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !2, line: 270, column: 17)
!970 = distinct !DILexicalBlock(scope: !965, file: !2, line: 269, column: 28)
!971 = !DILocation(line: 270, column: 41, scope: !969)
!972 = !DILocation(line: 270, column: 55, scope: !969)
!973 = !DILocation(line: 270, column: 18, scope: !969)
!974 = !DILocation(line: 270, column: 17, scope: !970)
!975 = !DILocation(line: 271, column: 24, scope: !976)
!976 = distinct !DILexicalBlock(scope: !969, file: !2, line: 270, column: 67)
!977 = !DILocation(line: 271, column: 17, scope: !976)
!978 = !DILocation(line: 272, column: 17, scope: !976)
!979 = !DILocation(line: 274, column: 9, scope: !970)
!980 = !DILocation(line: 274, column: 20, scope: !981)
!981 = distinct !DILexicalBlock(scope: !965, file: !2, line: 274, column: 20)
!982 = !DILocation(line: 274, column: 27, scope: !981)
!983 = !DILocation(line: 274, column: 20, scope: !965)
!984 = !DILocation(line: 275, column: 30, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 275, column: 17)
!986 = distinct !DILexicalBlock(scope: !981, file: !2, line: 274, column: 34)
!987 = !DILocation(line: 275, column: 34, scope: !985)
!988 = !DILocation(line: 275, column: 18, scope: !985)
!989 = !DILocation(line: 275, column: 17, scope: !986)
!990 = !DILocation(line: 275, column: 57, scope: !985)
!991 = !DILocation(line: 276, column: 9, scope: !986)
!992 = !DILocation(line: 277, column: 45, scope: !993)
!993 = distinct !DILexicalBlock(scope: !981, file: !2, line: 276, column: 16)
!994 = !DILocation(line: 277, column: 13, scope: !993)
!995 = !DILocation(line: 278, column: 13, scope: !993)
!996 = distinct !{!996, !928, !997}
!997 = !DILocation(line: 280, column: 5, scope: !797)
!998 = !DILocation(line: 282, column: 14, scope: !853)
!999 = !DILocation(line: 282, column: 9, scope: !853)
!1000 = !DILocation(line: 282, column: 18, scope: !853)
!1001 = !DILocation(line: 282, column: 21, scope: !853)
!1002 = !DILocation(line: 282, column: 27, scope: !853)
!1003 = !DILocation(line: 282, column: 30, scope: !853)
!1004 = !DILocation(line: 282, column: 44, scope: !853)
!1005 = !DILocation(line: 282, column: 9, scope: !797)
!1006 = !DILocation(line: 283, column: 9, scope: !851)
!1007 = !DILocation(line: 283, column: 9, scope: !852)
!1008 = !DILocation(line: 284, column: 5, scope: !852)
!1009 = !DILocation(line: 286, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !797, file: !2, line: 286, column: 9)
!1011 = !DILocation(line: 286, column: 23, scope: !1010)
!1012 = !DILocation(line: 286, column: 9, scope: !797)
!1013 = !DILocation(line: 287, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 286, column: 28)
!1015 = !DILocation(line: 288, column: 5, scope: !1014)
!1016 = !DILocation(line: 290, column: 12, scope: !797)
!1017 = !DILocation(line: 290, column: 17, scope: !797)
!1018 = !DILocation(line: 290, column: 16, scope: !797)
!1019 = !DILocation(line: 290, column: 10, scope: !797)
!1020 = !DILocation(line: 293, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !797, file: !2, line: 293, column: 9)
!1022 = !DILocation(line: 293, column: 14, scope: !1021)
!1023 = !DILocation(line: 293, column: 19, scope: !1021)
!1024 = !DILocation(line: 293, column: 22, scope: !1021)
!1025 = !DILocation(line: 293, column: 9, scope: !797)
!1026 = !DILocation(line: 294, column: 65, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 293, column: 36)
!1028 = !DILocation(line: 294, column: 79, scope: !1027)
!1029 = !DILocation(line: 294, column: 9, scope: !1027)
!1030 = !DILocation(line: 295, column: 16, scope: !1027)
!1031 = !DILocation(line: 295, column: 9, scope: !1027)
!1032 = !DILocation(line: 296, column: 9, scope: !1027)
!1033 = !DILocation(line: 300, column: 9, scope: !797)
!1034 = !DILocation(line: 300, column: 35, scope: !797)
!1035 = !DILocation(line: 300, column: 53, scope: !797)
!1036 = !DILocation(line: 300, column: 58, scope: !797)
!1037 = !DILocation(line: 300, column: 76, scope: !797)
!1038 = !DILocation(line: 299, column: 5, scope: !797)
!1039 = !DILocation(line: 301, column: 9, scope: !858)
!1040 = !DILocation(line: 301, column: 14, scope: !858)
!1041 = !DILocation(line: 301, column: 9, scope: !797)
!1042 = !DILocation(line: 302, column: 13, scope: !856)
!1043 = !DILocation(line: 302, column: 13, scope: !857)
!1044 = !DILocation(line: 303, column: 18, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !855, file: !2, line: 303, column: 17)
!1046 = !DILocation(line: 303, column: 17, scope: !855)
!1047 = !DILocation(line: 304, column: 87, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 303, column: 29)
!1049 = !DILocation(line: 304, column: 17, scope: !1048)
!1050 = !DILocation(line: 305, column: 17, scope: !1048)
!1051 = !DILocation(line: 308, column: 13, scope: !855)
!1052 = !DILocation(line: 308, column: 18, scope: !855)
!1053 = !DILocation(line: 310, column: 17, scope: !855)
!1054 = !DILocation(line: 310, column: 42, scope: !855)
!1055 = !DILocation(line: 310, column: 59, scope: !855)
!1056 = !DILocation(line: 310, column: 76, scope: !855)
!1057 = !DILocation(line: 309, column: 13, scope: !855)
!1058 = !DILocation(line: 311, column: 13, scope: !855)
!1059 = !DILocation(line: 312, column: 23, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !855, file: !2, line: 312, column: 17)
!1061 = !DILocation(line: 312, column: 41, scope: !1060)
!1062 = !DILocation(line: 312, column: 17, scope: !1060)
!1063 = !DILocation(line: 312, column: 48, scope: !1060)
!1064 = !DILocation(line: 312, column: 56, scope: !1060)
!1065 = !DILocation(line: 312, column: 71, scope: !1060)
!1066 = !DILocation(line: 312, column: 59, scope: !1060)
!1067 = !DILocation(line: 312, column: 84, scope: !1060)
!1068 = !DILocation(line: 312, column: 17, scope: !855)
!1069 = !DILocation(line: 313, column: 17, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 312, column: 90)
!1071 = !DILocation(line: 314, column: 17, scope: !1070)
!1072 = !DILocation(line: 316, column: 34, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !855, file: !2, line: 316, column: 17)
!1074 = !DILocation(line: 316, column: 27, scope: !1073)
!1075 = !DILocation(line: 316, column: 39, scope: !1073)
!1076 = !DILocation(line: 316, column: 17, scope: !1073)
!1077 = !DILocation(line: 316, column: 44, scope: !1073)
!1078 = !DILocation(line: 316, column: 17, scope: !855)
!1079 = !DILocation(line: 317, column: 55, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 316, column: 51)
!1081 = !DILocation(line: 317, column: 17, scope: !1080)
!1082 = !DILocation(line: 318, column: 17, scope: !1080)
!1083 = !DILocation(line: 320, column: 24, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 319, column: 20)
!1085 = !DILocation(line: 320, column: 17, scope: !1084)
!1086 = !DILocation(line: 321, column: 17, scope: !1084)
!1087 = !DILocation(line: 323, column: 9, scope: !856)
!1088 = !DILocation(line: 324, column: 85, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !856, file: !2, line: 323, column: 16)
!1090 = !DILocation(line: 324, column: 13, scope: !1089)
!1091 = !DILocation(line: 325, column: 13, scope: !1089)
!1092 = !DILocation(line: 328, column: 12, scope: !797)
!1093 = !DILocation(line: 328, column: 5, scope: !797)
!1094 = !DILocation(line: 329, column: 5, scope: !797)
!1095 = !DILocation(line: 330, column: 1, scope: !797)
!1096 = !DISubprogram(name: "fopen", linkageName: "fopen64", scope: !333, file: !333, line: 270, type: !1097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!341, !337, !337}
!1099 = !DISubprogram(name: "strerror", scope: !324, file: !324, line: 419, type: !1100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!31, !293}
!1102 = !DISubprogram(name: "fstat", linkageName: "fstat64", scope: !1103, file: !1103, line: 230, type: !1104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!293, !293, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1107 = !DISubprogram(name: "redis_check_rdb_main", scope: !23, file: !23, line: 3190, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!293, !293, !453, !341}
!1110 = !DISubprogram(name: "feof", scope: !333, file: !333, line: 788, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DISubprogram(name: "fseek", scope: !333, file: !333, line: 713, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!293, !341, !32, !293}
!1114 = !DISubprogram(name: "fclose", scope: !333, file: !333, line: 178, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DISubprogram(name: "strlen", scope: !324, file: !324, line: 407, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!331, !327}
!1118 = !DISubprogram(name: "strncasecmp", scope: !679, file: !679, line: 120, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = distinct !DISubprogram(name: "fileIsRDB", scope: !2, file: !2, line: 336, type: !291, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1128}
!1121 = !DILocalVariable(name: "filepath", arg: 1, scope: !1119, file: !2, line: 336, type: !31)
!1122 = !DILocalVariable(name: "fp", scope: !1119, file: !2, line: 337, type: !341)
!1123 = !DILocalVariable(name: "sb", scope: !1119, file: !2, line: 343, type: !812)
!1124 = !DILocalVariable(name: "size", scope: !1119, file: !2, line: 349, type: !269)
!1125 = !DILocalVariable(name: "sig", scope: !1126, file: !2, line: 356, type: !76)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 355, column: 20)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 355, column: 9)
!1128 = !DILocalVariable(name: "rdb_file", scope: !1126, file: !2, line: 357, type: !293)
!1129 = !DILocation(line: 336, column: 21, scope: !1119)
!1130 = !DILocation(line: 337, column: 5, scope: !1119)
!1131 = !DILocation(line: 337, column: 11, scope: !1119)
!1132 = !DILocation(line: 337, column: 22, scope: !1119)
!1133 = !DILocation(line: 337, column: 16, scope: !1119)
!1134 = !DILocation(line: 338, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 338, column: 9)
!1136 = !DILocation(line: 338, column: 12, scope: !1135)
!1137 = !DILocation(line: 338, column: 9, scope: !1119)
!1138 = !DILocation(line: 339, column: 45, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 338, column: 21)
!1140 = !DILocation(line: 339, column: 64, scope: !1139)
!1141 = !DILocation(line: 339, column: 55, scope: !1139)
!1142 = !DILocation(line: 339, column: 9, scope: !1139)
!1143 = !DILocation(line: 340, column: 9, scope: !1139)
!1144 = !DILocation(line: 343, column: 5, scope: !1119)
!1145 = !DILocation(line: 343, column: 23, scope: !1119)
!1146 = !DILocation(line: 344, column: 28, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 344, column: 9)
!1148 = !DILocation(line: 344, column: 21, scope: !1147)
!1149 = !DILocation(line: 344, column: 9, scope: !1147)
!1150 = !DILocation(line: 344, column: 38, scope: !1147)
!1151 = !DILocation(line: 344, column: 9, scope: !1119)
!1152 = !DILocation(line: 345, column: 42, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 344, column: 45)
!1154 = !DILocation(line: 345, column: 9, scope: !1153)
!1155 = !DILocation(line: 346, column: 9, scope: !1153)
!1156 = !DILocation(line: 349, column: 5, scope: !1119)
!1157 = !DILocation(line: 349, column: 11, scope: !1119)
!1158 = !DILocation(line: 349, column: 21, scope: !1119)
!1159 = !DILocation(line: 350, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 350, column: 9)
!1161 = !DILocation(line: 350, column: 14, scope: !1160)
!1162 = !DILocation(line: 350, column: 9, scope: !1119)
!1163 = !DILocation(line: 351, column: 16, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !2, line: 350, column: 20)
!1165 = !DILocation(line: 351, column: 9, scope: !1164)
!1166 = !DILocation(line: 352, column: 9, scope: !1164)
!1167 = !DILocation(line: 355, column: 9, scope: !1127)
!1168 = !DILocation(line: 355, column: 14, scope: !1127)
!1169 = !DILocation(line: 355, column: 9, scope: !1119)
!1170 = !DILocation(line: 356, column: 9, scope: !1126)
!1171 = !DILocation(line: 356, column: 14, scope: !1126)
!1172 = !DILocation(line: 357, column: 9, scope: !1126)
!1173 = !DILocation(line: 357, column: 13, scope: !1126)
!1174 = !DILocation(line: 357, column: 30, scope: !1126)
!1175 = !DILocation(line: 357, column: 51, scope: !1126)
!1176 = !DILocation(line: 357, column: 24, scope: !1126)
!1177 = !DILocation(line: 357, column: 55, scope: !1126)
!1178 = !DILocation(line: 357, column: 60, scope: !1126)
!1179 = !DILocation(line: 358, column: 36, scope: !1126)
!1180 = !DILocation(line: 358, column: 29, scope: !1126)
!1181 = !DILocation(line: 358, column: 63, scope: !1126)
!1182 = !DILocation(line: 0, scope: !1126)
!1183 = !DILocation(line: 359, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 359, column: 13)
!1185 = !DILocation(line: 359, column: 13, scope: !1126)
!1186 = !DILocation(line: 360, column: 20, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 359, column: 23)
!1188 = !DILocation(line: 360, column: 13, scope: !1187)
!1189 = !DILocation(line: 361, column: 13, scope: !1187)
!1190 = !DILocation(line: 363, column: 5, scope: !1127)
!1191 = !DILocation(line: 363, column: 5, scope: !1126)
!1192 = !DILocation(line: 365, column: 12, scope: !1119)
!1193 = !DILocation(line: 365, column: 5, scope: !1119)
!1194 = !DILocation(line: 366, column: 5, scope: !1119)
!1195 = !DILocation(line: 367, column: 1, scope: !1119)
!1196 = !DISubprogram(name: "memcmp", scope: !324, file: !324, line: 64, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!293, !1199, !1199, !329}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1201 = distinct !DISubprogram(name: "fileIsManifest", scope: !2, file: !2, line: 371, type: !291, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208}
!1203 = !DILocalVariable(name: "filepath", arg: 1, scope: !1201, file: !2, line: 371, type: !31)
!1204 = !DILocalVariable(name: "is_manifest", scope: !1201, file: !2, line: 372, type: !293)
!1205 = !DILocalVariable(name: "fp", scope: !1201, file: !2, line: 373, type: !341)
!1206 = !DILocalVariable(name: "sb", scope: !1201, file: !2, line: 379, type: !812)
!1207 = !DILocalVariable(name: "size", scope: !1201, file: !2, line: 385, type: !269)
!1208 = !DILocalVariable(name: "buf", scope: !1201, file: !2, line: 391, type: !1209)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 1025)
!1212 = !DILocation(line: 371, column: 26, scope: !1201)
!1213 = !DILocation(line: 372, column: 5, scope: !1201)
!1214 = !DILocation(line: 372, column: 9, scope: !1201)
!1215 = !DILocation(line: 373, column: 5, scope: !1201)
!1216 = !DILocation(line: 373, column: 11, scope: !1201)
!1217 = !DILocation(line: 373, column: 22, scope: !1201)
!1218 = !DILocation(line: 373, column: 16, scope: !1201)
!1219 = !DILocation(line: 374, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 374, column: 9)
!1221 = !DILocation(line: 374, column: 12, scope: !1220)
!1222 = !DILocation(line: 374, column: 9, scope: !1201)
!1223 = !DILocation(line: 375, column: 45, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 374, column: 21)
!1225 = !DILocation(line: 375, column: 64, scope: !1224)
!1226 = !DILocation(line: 375, column: 55, scope: !1224)
!1227 = !DILocation(line: 375, column: 9, scope: !1224)
!1228 = !DILocation(line: 376, column: 9, scope: !1224)
!1229 = !DILocation(line: 379, column: 5, scope: !1201)
!1230 = !DILocation(line: 379, column: 23, scope: !1201)
!1231 = !DILocation(line: 380, column: 28, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 380, column: 9)
!1233 = !DILocation(line: 380, column: 21, scope: !1232)
!1234 = !DILocation(line: 380, column: 9, scope: !1232)
!1235 = !DILocation(line: 380, column: 38, scope: !1232)
!1236 = !DILocation(line: 380, column: 9, scope: !1201)
!1237 = !DILocation(line: 381, column: 42, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 380, column: 45)
!1239 = !DILocation(line: 381, column: 9, scope: !1238)
!1240 = !DILocation(line: 382, column: 9, scope: !1238)
!1241 = !DILocation(line: 385, column: 5, scope: !1201)
!1242 = !DILocation(line: 385, column: 11, scope: !1201)
!1243 = !DILocation(line: 385, column: 21, scope: !1201)
!1244 = !DILocation(line: 386, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 386, column: 9)
!1246 = !DILocation(line: 386, column: 14, scope: !1245)
!1247 = !DILocation(line: 386, column: 9, scope: !1201)
!1248 = !DILocation(line: 387, column: 16, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 386, column: 20)
!1250 = !DILocation(line: 387, column: 9, scope: !1249)
!1251 = !DILocation(line: 388, column: 9, scope: !1249)
!1252 = !DILocation(line: 391, column: 5, scope: !1201)
!1253 = !DILocation(line: 391, column: 10, scope: !1201)
!1254 = !DILocation(line: 392, column: 5, scope: !1201)
!1255 = !DILocation(line: 393, column: 19, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 393, column: 13)
!1257 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 392, column: 15)
!1258 = !DILocation(line: 393, column: 45, scope: !1256)
!1259 = !DILocation(line: 393, column: 13, scope: !1256)
!1260 = !DILocation(line: 393, column: 49, scope: !1256)
!1261 = !DILocation(line: 393, column: 13, scope: !1257)
!1262 = !DILocation(line: 394, column: 22, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 394, column: 17)
!1264 = distinct !DILexicalBlock(scope: !1256, file: !2, line: 393, column: 58)
!1265 = !DILocation(line: 394, column: 17, scope: !1263)
!1266 = !DILocation(line: 394, column: 17, scope: !1264)
!1267 = !DILocation(line: 395, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 394, column: 27)
!1269 = !DILocation(line: 397, column: 50, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 396, column: 20)
!1271 = !DILocation(line: 397, column: 17, scope: !1270)
!1272 = !DILocation(line: 398, column: 17, scope: !1270)
!1273 = !DILocation(line: 403, column: 13, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 403, column: 13)
!1275 = !DILocation(line: 403, column: 20, scope: !1274)
!1276 = !DILocation(line: 403, column: 13, scope: !1257)
!1277 = !DILocation(line: 404, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 403, column: 28)
!1279 = distinct !{!1279, !1254, !1280}
!1280 = !DILocation(line: 408, column: 5, scope: !1201)
!1281 = !DILocation(line: 405, column: 28, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 405, column: 20)
!1283 = !DILocation(line: 405, column: 21, scope: !1282)
!1284 = !DILocation(line: 405, column: 20, scope: !1274)
!1285 = !DILocation(line: 406, column: 25, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 405, column: 58)
!1287 = !DILocation(line: 407, column: 9, scope: !1286)
!1288 = !DILocation(line: 410, column: 12, scope: !1201)
!1289 = !DILocation(line: 410, column: 5, scope: !1201)
!1290 = !DILocation(line: 411, column: 12, scope: !1201)
!1291 = !DILocation(line: 411, column: 5, scope: !1201)
!1292 = !DILocation(line: 412, column: 1, scope: !1201)
!1293 = distinct !DISubprogram(name: "getInputFileType", scope: !2, file: !2, line: 422, type: !1294, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1297)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!1296, !31}
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_file_type", file: !2, line: 46, baseType: !16)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "filepath", arg: 1, scope: !1293, file: !2, line: 422, type: !31)
!1299 = !DILocation(line: 422, column: 40, scope: !1293)
!1300 = !DILocation(line: 423, column: 24, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 423, column: 9)
!1302 = !DILocation(line: 423, column: 9, scope: !1301)
!1303 = !DILocation(line: 423, column: 9, scope: !1293)
!1304 = !DILocation(line: 424, column: 9, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 423, column: 35)
!1306 = !DILocation(line: 425, column: 26, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 425, column: 16)
!1308 = !DILocation(line: 425, column: 16, scope: !1307)
!1309 = !DILocation(line: 425, column: 16, scope: !1301)
!1310 = !DILocation(line: 426, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 425, column: 37)
!1312 = !DILocation(line: 428, column: 9, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !2, line: 427, column: 12)
!1314 = !DILocation(line: 430, column: 1, scope: !1293)
!1315 = distinct !DISubprogram(name: "checkMultiPartAof", scope: !2, file: !2, line: 443, type: !1316, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !31, !31, !293}
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1363, !1366, !1367, !1368, !1371, !1377, !1379, !1380}
!1319 = !DILocalVariable(name: "dirpath", arg: 1, scope: !1315, file: !2, line: 443, type: !31)
!1320 = !DILocalVariable(name: "manifest_filepath", arg: 2, scope: !1315, file: !2, line: 443, type: !31)
!1321 = !DILocalVariable(name: "fix", arg: 3, scope: !1315, file: !2, line: 443, type: !293)
!1322 = !DILocalVariable(name: "total_num", scope: !1315, file: !2, line: 444, type: !293)
!1323 = !DILocalVariable(name: "aof_num", scope: !1315, file: !2, line: 444, type: !293)
!1324 = !DILocalVariable(name: "last_file", scope: !1315, file: !2, line: 444, type: !293)
!1325 = !DILocalVariable(name: "ret", scope: !1315, file: !2, line: 445, type: !293)
!1326 = !DILocalVariable(name: "am", scope: !1315, file: !2, line: 448, type: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "aofManifest", file: !23, line: 1424, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 1414, size: 384, elements: !1330)
!1330 = !{!1331, !1332, !1359, !1360, !1361, !1362}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "base_aof_info", scope: !1329, file: !23, line: 1415, baseType: !33, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "incr_aof_list", scope: !1329, file: !23, line: 1416, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1335, line: 54, baseType: !1336)
!1335 = !DIFile(filename: "./adlist.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "7a1b206772988edd77b3a60961c7439d")
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1335, line: 47, size: 384, elements: !1337)
!1337 = !{!1338, !1347, !1348, !1352, !1354, !1358}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1336, file: !1335, line: 48, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1335, line: 40, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1335, line: 36, size: 192, elements: !1342)
!1342 = !{!1343, !1345, !1346}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1341, file: !1335, line: 37, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1341, file: !1335, line: 38, baseType: !1344, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1341, file: !1335, line: 39, baseType: !30, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1336, file: !1335, line: 49, baseType: !1339, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1336, file: !1335, line: 50, baseType: !1349, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!30, !30}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1336, file: !1335, line: 51, baseType: !1353, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1336, file: !1335, line: 52, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!293, !30, !30}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1336, file: !1335, line: 53, baseType: !331, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "history_aof_list", scope: !1329, file: !23, line: 1417, baseType: !1333, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "curr_base_file_seq", scope: !1329, file: !23, line: 1420, baseType: !29, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "curr_incr_file_seq", scope: !1329, file: !23, line: 1421, baseType: !29, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !1329, file: !23, line: 1422, baseType: !293, size: 32, offset: 320)
!1363 = !DILocalVariable(name: "aof_filename", scope: !1364, file: !2, line: 454, type: !38)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 453, column: 28)
!1365 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 453, column: 9)
!1366 = !DILocalVariable(name: "aof_filepath", scope: !1364, file: !2, line: 455, type: !38)
!1367 = !DILocalVariable(name: "aof_preable", scope: !1364, file: !2, line: 457, type: !293)
!1368 = !DILocalVariable(name: "ln", scope: !1369, file: !2, line: 475, type: !1339)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 474, column: 40)
!1370 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 474, column: 9)
!1371 = !DILocalVariable(name: "li", scope: !1369, file: !2, line: 476, type: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !1335, line: 45, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !1335, line: 42, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1373, file: !1335, line: 43, baseType: !1339, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1373, file: !1335, line: 44, baseType: !293, size: 32, offset: 64)
!1377 = !DILocalVariable(name: "ai", scope: !1378, file: !2, line: 481, type: !33)
!1378 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 480, column: 46)
!1379 = !DILocalVariable(name: "aof_filename", scope: !1378, file: !2, line: 482, type: !38)
!1380 = !DILocalVariable(name: "aof_filepath", scope: !1378, file: !2, line: 483, type: !38)
!1381 = !DILocation(line: 443, column: 30, scope: !1315)
!1382 = !DILocation(line: 443, column: 45, scope: !1315)
!1383 = !DILocation(line: 443, column: 68, scope: !1315)
!1384 = !DILocation(line: 444, column: 5, scope: !1315)
!1385 = !DILocation(line: 444, column: 9, scope: !1315)
!1386 = !DILocation(line: 444, column: 24, scope: !1315)
!1387 = !DILocation(line: 444, column: 37, scope: !1315)
!1388 = !DILocation(line: 445, column: 5, scope: !1315)
!1389 = !DILocation(line: 445, column: 9, scope: !1315)
!1390 = !DILocation(line: 447, column: 5, scope: !1315)
!1391 = !DILocation(line: 448, column: 5, scope: !1315)
!1392 = !DILocation(line: 448, column: 18, scope: !1315)
!1393 = !DILocation(line: 448, column: 47, scope: !1315)
!1394 = !DILocation(line: 448, column: 23, scope: !1315)
!1395 = !DILocation(line: 450, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 450, column: 9)
!1397 = !DILocation(line: 450, column: 13, scope: !1396)
!1398 = !{!1399, !304, i64 0}
!1399 = !{!"", !304, i64 0, !304, i64 8, !304, i64 16, !320, i64 24, !320, i64 32, !628, i64 40}
!1400 = !DILocation(line: 450, column: 9, scope: !1315)
!1401 = !DILocation(line: 450, column: 37, scope: !1396)
!1402 = !DILocation(line: 450, column: 28, scope: !1396)
!1403 = !DILocation(line: 451, column: 9, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 451, column: 9)
!1405 = !DILocation(line: 451, column: 13, scope: !1404)
!1406 = !{!1399, !304, i64 8}
!1407 = !DILocation(line: 451, column: 9, scope: !1315)
!1408 = !DILocation(line: 451, column: 41, scope: !1404)
!1409 = !{!1410, !315, i64 40}
!1410 = !{!"list", !304, i64 0, !304, i64 8, !304, i64 16, !304, i64 24, !304, i64 32, !315, i64 40}
!1411 = !DILocation(line: 451, column: 38, scope: !1404)
!1412 = !DILocation(line: 451, column: 28, scope: !1404)
!1413 = !DILocation(line: 453, column: 9, scope: !1365)
!1414 = !DILocation(line: 453, column: 13, scope: !1365)
!1415 = !DILocation(line: 453, column: 9, scope: !1315)
!1416 = !DILocation(line: 454, column: 9, scope: !1364)
!1417 = !DILocation(line: 454, column: 13, scope: !1364)
!1418 = !DILocation(line: 454, column: 28, scope: !1364)
!1419 = !DILocation(line: 454, column: 32, scope: !1364)
!1420 = !DILocation(line: 454, column: 47, scope: !1364)
!1421 = !{!1422, !304, i64 0}
!1422 = !{!"", !304, i64 0, !320, i64 8, !305, i64 16}
!1423 = !DILocation(line: 455, column: 9, scope: !1364)
!1424 = !DILocation(line: 455, column: 13, scope: !1364)
!1425 = !DILocation(line: 455, column: 37, scope: !1364)
!1426 = !DILocation(line: 455, column: 46, scope: !1364)
!1427 = !DILocation(line: 455, column: 28, scope: !1364)
!1428 = !DILocation(line: 456, column: 21, scope: !1364)
!1429 = !DILocation(line: 456, column: 34, scope: !1364)
!1430 = !DILocation(line: 456, column: 31, scope: !1364)
!1431 = !DILocation(line: 456, column: 19, scope: !1364)
!1432 = !DILocation(line: 457, column: 9, scope: !1364)
!1433 = !DILocation(line: 457, column: 13, scope: !1364)
!1434 = !DILocation(line: 457, column: 37, scope: !1364)
!1435 = !DILocation(line: 457, column: 27, scope: !1364)
!1436 = !DILocation(line: 459, column: 58, scope: !1364)
!1437 = !DILocation(line: 459, column: 9, scope: !1364)
!1438 = !DILocation(line: 460, column: 30, scope: !1364)
!1439 = !DILocation(line: 460, column: 44, scope: !1364)
!1440 = !DILocation(line: 460, column: 58, scope: !1364)
!1441 = !DILocation(line: 460, column: 69, scope: !1364)
!1442 = !DILocation(line: 460, column: 74, scope: !1364)
!1443 = !DILocation(line: 460, column: 15, scope: !1364)
!1444 = !DILocation(line: 460, column: 13, scope: !1364)
!1445 = !DILocation(line: 461, column: 13, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 461, column: 13)
!1447 = !DILocation(line: 461, column: 17, scope: !1446)
!1448 = !DILocation(line: 461, column: 13, scope: !1364)
!1449 = !DILocation(line: 462, column: 46, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 461, column: 34)
!1451 = !DILocation(line: 462, column: 13, scope: !1450)
!1452 = !DILocation(line: 463, column: 9, scope: !1450)
!1453 = !DILocation(line: 463, column: 20, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 463, column: 20)
!1455 = !DILocation(line: 463, column: 24, scope: !1454)
!1456 = !DILocation(line: 463, column: 20, scope: !1446)
!1457 = !DILocation(line: 464, column: 46, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 463, column: 44)
!1459 = !DILocation(line: 464, column: 13, scope: !1458)
!1460 = !DILocation(line: 465, column: 9, scope: !1458)
!1461 = !DILocation(line: 465, column: 20, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 465, column: 20)
!1463 = !DILocation(line: 465, column: 24, scope: !1462)
!1464 = !DILocation(line: 465, column: 20, scope: !1454)
!1465 = !DILocation(line: 467, column: 17, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 465, column: 58)
!1467 = !DILocation(line: 467, column: 31, scope: !1466)
!1468 = !DILocation(line: 466, column: 13, scope: !1466)
!1469 = !DILocation(line: 468, column: 9, scope: !1466)
!1470 = !DILocation(line: 468, column: 20, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1462, file: !2, line: 468, column: 20)
!1472 = !DILocation(line: 468, column: 24, scope: !1471)
!1473 = !DILocation(line: 468, column: 20, scope: !1462)
!1474 = !DILocation(line: 469, column: 55, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 468, column: 48)
!1476 = !DILocation(line: 469, column: 13, scope: !1475)
!1477 = !DILocation(line: 470, column: 9, scope: !1475)
!1478 = !DILocation(line: 471, column: 17, scope: !1364)
!1479 = !DILocation(line: 471, column: 9, scope: !1364)
!1480 = !DILocation(line: 472, column: 5, scope: !1365)
!1481 = !DILocation(line: 472, column: 5, scope: !1364)
!1482 = !DILocation(line: 474, column: 9, scope: !1370)
!1483 = !DILocation(line: 474, column: 9, scope: !1315)
!1484 = !DILocation(line: 475, column: 9, scope: !1369)
!1485 = !DILocation(line: 475, column: 19, scope: !1369)
!1486 = !DILocation(line: 476, column: 9, scope: !1369)
!1487 = !DILocation(line: 476, column: 18, scope: !1369)
!1488 = !DILocation(line: 478, column: 9, scope: !1369)
!1489 = !DILocation(line: 479, column: 20, scope: !1369)
!1490 = !DILocation(line: 479, column: 24, scope: !1369)
!1491 = !DILocation(line: 479, column: 9, scope: !1369)
!1492 = !DILocation(line: 480, column: 9, scope: !1369)
!1493 = !DILocation(line: 480, column: 22, scope: !1369)
!1494 = !DILocation(line: 480, column: 20, scope: !1369)
!1495 = !DILocation(line: 480, column: 37, scope: !1369)
!1496 = !DILocation(line: 481, column: 13, scope: !1378)
!1497 = !DILocation(line: 481, column: 22, scope: !1378)
!1498 = !DILocation(line: 481, column: 37, scope: !1378)
!1499 = !DILocation(line: 481, column: 41, scope: !1378)
!1500 = !{!1501, !304, i64 16}
!1501 = !{!"listNode", !304, i64 0, !304, i64 8, !304, i64 16}
!1502 = !DILocation(line: 482, column: 13, scope: !1378)
!1503 = !DILocation(line: 482, column: 17, scope: !1378)
!1504 = !DILocation(line: 482, column: 39, scope: !1378)
!1505 = !DILocation(line: 482, column: 43, scope: !1378)
!1506 = !DILocation(line: 483, column: 13, scope: !1378)
!1507 = !DILocation(line: 483, column: 17, scope: !1378)
!1508 = !DILocation(line: 483, column: 41, scope: !1378)
!1509 = !DILocation(line: 483, column: 50, scope: !1378)
!1510 = !DILocation(line: 483, column: 32, scope: !1378)
!1511 = !DILocation(line: 484, column: 25, scope: !1378)
!1512 = !DILocation(line: 484, column: 38, scope: !1378)
!1513 = !DILocation(line: 484, column: 35, scope: !1378)
!1514 = !DILocation(line: 484, column: 23, scope: !1378)
!1515 = !DILocation(line: 485, column: 34, scope: !1378)
!1516 = !DILocation(line: 485, column: 48, scope: !1378)
!1517 = !DILocation(line: 485, column: 62, scope: !1378)
!1518 = !DILocation(line: 485, column: 73, scope: !1378)
!1519 = !DILocation(line: 485, column: 19, scope: !1378)
!1520 = !DILocation(line: 485, column: 17, scope: !1378)
!1521 = !DILocation(line: 486, column: 17, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 486, column: 17)
!1523 = !DILocation(line: 486, column: 21, scope: !1522)
!1524 = !DILocation(line: 486, column: 17, scope: !1378)
!1525 = !DILocation(line: 487, column: 50, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 486, column: 38)
!1527 = !DILocation(line: 487, column: 17, scope: !1526)
!1528 = !DILocation(line: 488, column: 13, scope: !1526)
!1529 = !DILocation(line: 488, column: 24, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 488, column: 24)
!1531 = !DILocation(line: 488, column: 28, scope: !1530)
!1532 = !DILocation(line: 488, column: 24, scope: !1522)
!1533 = !DILocation(line: 489, column: 50, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 488, column: 48)
!1535 = !DILocation(line: 489, column: 17, scope: !1534)
!1536 = !DILocation(line: 490, column: 13, scope: !1534)
!1537 = !DILocation(line: 490, column: 24, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 490, column: 24)
!1539 = !DILocation(line: 490, column: 28, scope: !1538)
!1540 = !DILocation(line: 490, column: 24, scope: !1530)
!1541 = !DILocation(line: 492, column: 21, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 490, column: 62)
!1543 = !DILocation(line: 492, column: 35, scope: !1542)
!1544 = !DILocation(line: 491, column: 17, scope: !1542)
!1545 = !DILocation(line: 493, column: 13, scope: !1542)
!1546 = !DILocation(line: 493, column: 24, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 493, column: 24)
!1548 = !DILocation(line: 493, column: 28, scope: !1547)
!1549 = !DILocation(line: 493, column: 24, scope: !1538)
!1550 = !DILocation(line: 494, column: 59, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 493, column: 52)
!1552 = !DILocation(line: 494, column: 17, scope: !1551)
!1553 = !DILocation(line: 495, column: 13, scope: !1551)
!1554 = !DILocation(line: 496, column: 21, scope: !1378)
!1555 = !DILocation(line: 496, column: 13, scope: !1378)
!1556 = !DILocation(line: 497, column: 9, scope: !1369)
!1557 = distinct !{!1557, !1492, !1556, !675}
!1558 = !DILocation(line: 498, column: 5, scope: !1370)
!1559 = !DILocation(line: 498, column: 5, scope: !1369)
!1560 = !DILocation(line: 500, column: 21, scope: !1315)
!1561 = !DILocation(line: 500, column: 5, scope: !1315)
!1562 = !DILocation(line: 501, column: 5, scope: !1315)
!1563 = !DILocation(line: 502, column: 1, scope: !1315)
!1564 = !DISubprogram(name: "aofLoadManifestFromFile", scope: !2, file: !2, line: 50, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!1327, !38}
!1567 = !DISubprogram(name: "makePath", scope: !1568, file: !1568, line: 87, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DIFile(filename: "./util.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/src", checksumkind: CSK_MD5, checksum: "4da9818ce0f61734688297ea1afde3f9")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!38, !31, !31}
!1571 = !DISubprogram(name: "sdsfree", scope: !39, file: !39, line: 223, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !38}
!1574 = !DISubprogram(name: "listRewind", scope: !1335, file: !1335, line: 86, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !1333, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1578 = !DISubprogram(name: "listNext", scope: !1335, file: !1335, line: 81, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1339, !1577}
!1581 = !DISubprogram(name: "aofManifestFree", scope: !2, file: !2, line: 49, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1327}
!1584 = distinct !DISubprogram(name: "checkOldStyleAof", scope: !2, file: !2, line: 507, type: !1585, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !31, !293, !293}
!1587 = !{!1588, !1589, !1590, !1591}
!1588 = !DILocalVariable(name: "filepath", arg: 1, scope: !1584, file: !2, line: 507, type: !31)
!1589 = !DILocalVariable(name: "fix", arg: 2, scope: !1584, file: !2, line: 507, type: !293)
!1590 = !DILocalVariable(name: "preamble", arg: 3, scope: !1584, file: !2, line: 507, type: !293)
!1591 = !DILocalVariable(name: "ret", scope: !1584, file: !2, line: 509, type: !293)
!1592 = !DILocation(line: 507, column: 29, scope: !1584)
!1593 = !DILocation(line: 507, column: 43, scope: !1584)
!1594 = !DILocation(line: 507, column: 52, scope: !1584)
!1595 = !DILocation(line: 508, column: 5, scope: !1584)
!1596 = !DILocation(line: 509, column: 5, scope: !1584)
!1597 = !DILocation(line: 509, column: 9, scope: !1584)
!1598 = !DILocation(line: 509, column: 30, scope: !1584)
!1599 = !DILocation(line: 509, column: 40, scope: !1584)
!1600 = !DILocation(line: 509, column: 53, scope: !1584)
!1601 = !DILocation(line: 509, column: 58, scope: !1584)
!1602 = !DILocation(line: 509, column: 15, scope: !1584)
!1603 = !DILocation(line: 510, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 510, column: 9)
!1605 = !DILocation(line: 510, column: 13, scope: !1604)
!1606 = !DILocation(line: 510, column: 9, scope: !1584)
!1607 = !DILocation(line: 511, column: 37, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 510, column: 30)
!1609 = !DILocation(line: 511, column: 9, scope: !1608)
!1610 = !DILocation(line: 512, column: 5, scope: !1608)
!1611 = !DILocation(line: 512, column: 16, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 512, column: 16)
!1613 = !DILocation(line: 512, column: 20, scope: !1612)
!1614 = !DILocation(line: 512, column: 16, scope: !1604)
!1615 = !DILocation(line: 513, column: 37, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 512, column: 40)
!1617 = !DILocation(line: 513, column: 9, scope: !1616)
!1618 = !DILocation(line: 514, column: 5, scope: !1616)
!1619 = !DILocation(line: 514, column: 16, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 514, column: 16)
!1621 = !DILocation(line: 514, column: 20, scope: !1620)
!1622 = !DILocation(line: 514, column: 16, scope: !1612)
!1623 = !DILocation(line: 516, column: 13, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 514, column: 54)
!1625 = !DILocation(line: 516, column: 23, scope: !1624)
!1626 = !DILocation(line: 515, column: 9, scope: !1624)
!1627 = !DILocation(line: 517, column: 5, scope: !1624)
!1628 = !DILocation(line: 517, column: 16, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 517, column: 16)
!1630 = !DILocation(line: 517, column: 20, scope: !1629)
!1631 = !DILocation(line: 517, column: 16, scope: !1620)
!1632 = !DILocation(line: 518, column: 51, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 517, column: 44)
!1634 = !DILocation(line: 518, column: 9, scope: !1633)
!1635 = !DILocation(line: 519, column: 5, scope: !1633)
!1636 = !DILocation(line: 520, column: 1, scope: !1584)
!1637 = distinct !DISubprogram(name: "redis_check_aof_main", scope: !2, file: !2, line: 522, type: !1638, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!293, !293, !453}
!1640 = !{!1641, !1642, !1643, !1644, !1648, !1649, !1650, !1658, !1659}
!1641 = !DILocalVariable(name: "argc", arg: 1, scope: !1637, file: !2, line: 522, type: !293)
!1642 = !DILocalVariable(name: "argv", arg: 2, scope: !1637, file: !2, line: 522, type: !453)
!1643 = !DILocalVariable(name: "filepath", scope: !1637, file: !2, line: 523, type: !31)
!1644 = !DILocalVariable(name: "temp_filepath", scope: !1637, file: !2, line: 524, type: !1645)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32776, elements: !1646)
!1646 = !{!1647}
!1647 = !DISubrange(count: 4097)
!1648 = !DILocalVariable(name: "dirpath", scope: !1637, file: !2, line: 525, type: !31)
!1649 = !DILocalVariable(name: "fix", scope: !1637, file: !2, line: 526, type: !293)
!1650 = !DILocalVariable(name: "endptr", scope: !1651, file: !2, line: 541, type: !31)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 540, column: 58)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 540, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 539, column: 27)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 539, column: 16)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 532, column: 16)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 530, column: 16)
!1657 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 528, column: 9)
!1658 = !DILocalVariable(name: "type", scope: !1637, file: !2, line: 561, type: !1296)
!1659 = !DILabel(scope: !1637, name: "invalid_args", file: !2, line: 576)
!1660 = !DILocation(line: 522, column: 30, scope: !1637)
!1661 = !DILocation(line: 522, column: 43, scope: !1637)
!1662 = !DILocation(line: 523, column: 5, scope: !1637)
!1663 = !DILocation(line: 523, column: 11, scope: !1637)
!1664 = !DILocation(line: 524, column: 5, scope: !1637)
!1665 = !DILocation(line: 524, column: 10, scope: !1637)
!1666 = !DILocation(line: 525, column: 5, scope: !1637)
!1667 = !DILocation(line: 525, column: 11, scope: !1637)
!1668 = !DILocation(line: 526, column: 5, scope: !1637)
!1669 = !DILocation(line: 526, column: 9, scope: !1637)
!1670 = !DILocation(line: 528, column: 9, scope: !1657)
!1671 = !DILocation(line: 528, column: 14, scope: !1657)
!1672 = !DILocation(line: 528, column: 9, scope: !1637)
!1673 = !DILocation(line: 529, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 528, column: 19)
!1675 = !DILocation(line: 530, column: 16, scope: !1656)
!1676 = !DILocation(line: 530, column: 21, scope: !1656)
!1677 = !DILocation(line: 530, column: 16, scope: !1657)
!1678 = !DILocation(line: 531, column: 20, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 530, column: 27)
!1680 = !DILocation(line: 531, column: 18, scope: !1679)
!1681 = !DILocation(line: 532, column: 5, scope: !1679)
!1682 = !DILocation(line: 532, column: 16, scope: !1655)
!1683 = !DILocation(line: 532, column: 21, scope: !1655)
!1684 = !DILocation(line: 532, column: 16, scope: !1656)
!1685 = !DILocation(line: 533, column: 21, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 533, column: 13)
!1687 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 532, column: 27)
!1688 = !DILocation(line: 533, column: 14, scope: !1686)
!1689 = !DILocation(line: 533, column: 13, scope: !1687)
!1690 = !DILocation(line: 534, column: 24, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 533, column: 40)
!1692 = !DILocation(line: 534, column: 22, scope: !1691)
!1693 = !DILocation(line: 535, column: 17, scope: !1691)
!1694 = !DILocation(line: 536, column: 9, scope: !1691)
!1695 = !DILocation(line: 537, column: 13, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 536, column: 16)
!1697 = !DILocation(line: 539, column: 5, scope: !1687)
!1698 = !DILocation(line: 539, column: 16, scope: !1654)
!1699 = !DILocation(line: 539, column: 21, scope: !1654)
!1700 = !DILocation(line: 539, column: 16, scope: !1655)
!1701 = !DILocation(line: 540, column: 21, scope: !1652)
!1702 = !DILocation(line: 540, column: 14, scope: !1652)
!1703 = !DILocation(line: 540, column: 13, scope: !1653)
!1704 = !DILocation(line: 541, column: 13, scope: !1651)
!1705 = !DILocation(line: 541, column: 19, scope: !1651)
!1706 = !DILocation(line: 542, column: 13, scope: !1651)
!1707 = !DILocation(line: 542, column: 19, scope: !1651)
!1708 = !DILocation(line: 543, column: 35, scope: !1651)
!1709 = !DILocation(line: 543, column: 28, scope: !1651)
!1710 = !DILocation(line: 543, column: 26, scope: !1651)
!1711 = !DILocation(line: 544, column: 17, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1651, file: !2, line: 544, column: 17)
!1713 = !DILocation(line: 544, column: 23, scope: !1712)
!1714 = !DILocation(line: 544, column: 28, scope: !1712)
!1715 = !DILocation(line: 544, column: 32, scope: !1712)
!1716 = !DILocation(line: 544, column: 31, scope: !1712)
!1717 = !DILocation(line: 544, column: 39, scope: !1712)
!1718 = !DILocation(line: 544, column: 17, scope: !1651)
!1719 = !DILocation(line: 545, column: 17, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 544, column: 48)
!1721 = !DILocation(line: 546, column: 17, scope: !1720)
!1722 = !DILocation(line: 548, column: 24, scope: !1651)
!1723 = !DILocation(line: 548, column: 22, scope: !1651)
!1724 = !DILocation(line: 549, column: 9, scope: !1652)
!1725 = !DILocation(line: 549, column: 9, scope: !1651)
!1726 = !DILocation(line: 550, column: 13, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 549, column: 16)
!1728 = !DILocation(line: 552, column: 5, scope: !1653)
!1729 = !DILocation(line: 553, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1654, file: !2, line: 552, column: 12)
!1731 = !DILocation(line: 557, column: 5, scope: !1637)
!1732 = !DILocation(line: 557, column: 27, scope: !1637)
!1733 = !DILocation(line: 557, column: 44, scope: !1637)
!1734 = !DILocation(line: 557, column: 37, scope: !1637)
!1735 = !DILocation(line: 557, column: 54, scope: !1637)
!1736 = !DILocation(line: 558, column: 23, scope: !1637)
!1737 = !DILocation(line: 558, column: 15, scope: !1637)
!1738 = !DILocation(line: 558, column: 13, scope: !1637)
!1739 = !DILocation(line: 561, column: 21, scope: !1637)
!1740 = !DILocation(line: 561, column: 45, scope: !1637)
!1741 = !DILocation(line: 561, column: 28, scope: !1637)
!1742 = !DILocation(line: 562, column: 13, scope: !1637)
!1743 = !DILocation(line: 562, column: 5, scope: !1637)
!1744 = !DILocation(line: 564, column: 27, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 562, column: 19)
!1746 = !DILocation(line: 564, column: 36, scope: !1745)
!1747 = !DILocation(line: 564, column: 46, scope: !1745)
!1748 = !DILocation(line: 564, column: 9, scope: !1745)
!1749 = !DILocation(line: 565, column: 9, scope: !1745)
!1750 = !DILocation(line: 567, column: 26, scope: !1745)
!1751 = !DILocation(line: 567, column: 36, scope: !1745)
!1752 = !DILocation(line: 567, column: 9, scope: !1745)
!1753 = !DILocation(line: 568, column: 9, scope: !1745)
!1754 = !DILocation(line: 570, column: 26, scope: !1745)
!1755 = !DILocation(line: 570, column: 36, scope: !1745)
!1756 = !DILocation(line: 570, column: 9, scope: !1745)
!1757 = !DILocation(line: 571, column: 9, scope: !1745)
!1758 = !DILocation(line: 574, column: 5, scope: !1637)
!1759 = !DILocation(line: 576, column: 1, scope: !1637)
!1760 = !DILocation(line: 578, column: 9, scope: !1637)
!1761 = !DILocation(line: 577, column: 5, scope: !1637)
!1762 = !DILocation(line: 579, column: 5, scope: !1637)
!1763 = !DISubprogram(name: "strcmp", scope: !324, file: !324, line: 156, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1764 = !DISubprogram(name: "dirname", scope: !1765, file: !1765, line: 26, type: !1766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1765 = !DIFile(filename: "/usr/include/libgen.h", directory: "", checksumkind: CSK_MD5, checksum: "e8d5a6721380300d6fcf446d5f347f15")
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!31, !31}

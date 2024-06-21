; ModuleID = 'samples/918.bc'
source_filename = "zipcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { ptr, ptr, i64, ptr, ptr, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._ftsent = type { ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i16, i16, i64, i64, i64, i16, i16, i16, i16, ptr, [1 x i8] }
%struct.entry = type { ptr, i64, i32, i32, ptr, i16, ptr, i32 }
%struct.zip_stat = type { i64, ptr, i64, i64, i64, i64, i32, i16, i16, i32 }
%struct.zip_error = type { i32, i32, ptr }
%struct.ef = type { ptr, i16, i16, i16, ptr }

@help_head = dso_local global [54 x i8] c"zipcmp (libzip) by Dieter Baron and Thomas Klausner\0A\0A\00", align 16, !dbg !0
@help = dso_local global [338 x i8] c"\0A  -h       display this help message\0A  -i       compare names ignoring case distinctions\0A  -p       compare as many details as possible\0A  -q       be quiet\0A  -t       test zip files (compare file contents to checksum)\0A  -V       display version number\0A  -v       be verbose (print differences, default)\0A\0AReport bugs to <libzip@nih.at>.\0A\00", align 16, !dbg !67
@version_string = dso_local global [154 x i8] c"zipcmp (libzip 1.3.2)\0ACopyright (C) 2003-2016 Dieter Baron and Thomas Klausner\0Alibzip comes with ABSOLUTELY NO WARRANTY, to the extent permitted by law.\0A\00", align 16, !dbg !72
@prg = dso_local global ptr null, align 8, !dbg !87
@ignore_case = dso_local global i32 0, align 4, !dbg !89
@test_files = dso_local global i32 0, align 4, !dbg !91
@paranoid = dso_local global i32 0, align 4, !dbg !93
@verbose = dso_local global i32 0, align 4, !dbg !95
@.str = private unnamed_addr constant [8 x i8] c"hVipqtv\00", align 1, !dbg !77
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"usage: %s [-hipqtVv] archive1 archive2\0A\00", align 1, !dbg !82
@stderr = external global ptr, align 8
@optind = external global i32, align 4
@header_done = dso_local global i32 0, align 4, !dbg !97
@.str.2 = private unnamed_addr constant [27 x i8] c"--- archive comment (%zd)\0A\00", align 1, !dbg !99
@.str.3 = private unnamed_addr constant [27 x i8] c"+++ archive comment (%zd)\0A\00", align 1, !dbg !104
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: can't open directory '%s': %s\0A\00", align 1, !dbg !106
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: malloc failure\0A\00", align 1, !dbg !111
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: error closing directory '%s': %s\0A\00", align 1, !dbg !116
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !121
@.str.8 = private unnamed_addr constant [23 x i8] c"%s: can't open %s: %s\0A\00", align 1, !dbg !126
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: read error on %s: %s\0A\00", align 1, !dbg !131
@.str.10 = private unnamed_addr constant [38 x i8] c"%s: cannot open zip archive '%s': %s\0A\00", align 1, !dbg !136
@.str.11 = private unnamed_addr constant [41 x i8] c"%s: cannot open file %lu in archive: %s\0A\00", align 1, !dbg !138
@.str.12 = private unnamed_addr constant [43 x i8] c"%s: error reading file %lu in archive: %s\0A\00", align 1, !dbg !143
@.str.13 = private unnamed_addr constant [53 x i8] c"%s: file %lu: unexpected length %ld (should be %ld)\0A\00", align 1, !dbg !148
@.str.14 = private unnamed_addr constant [51 x i8] c"%s: file %lu: unexpected length %x (should be %x)\0A\00", align 1, !dbg !153
@.str.15 = private unnamed_addr constant [15 x i8] c"--- %s\0A+++ %s\0A\00", align 1, !dbg !158
@.str.16 = private unnamed_addr constant [4 x i8] c"%c \00", align 1, !dbg !163
@.str.17 = private unnamed_addr constant [29 x i8] c"---                     %s  \00", align 1, !dbg !168
@.str.18 = private unnamed_addr constant [11 x i8] c"method %u\0A\00", align 1, !dbg !173
@.str.19 = private unnamed_addr constant [29 x i8] c"+++                     %s  \00", align 1, !dbg !178
@.str.20 = private unnamed_addr constant [12 x i8] c"comment %d\0A\00", align 1, !dbg !180
@.str.21 = private unnamed_addr constant [25 x i8] c"                    %s  \00", align 1, !dbg !185
@.str.22 = private unnamed_addr constant [10 x i8] c"%04x %c <\00", align 1, !dbg !190
@.str.23 = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1, !dbg !195
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !200
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !202
@.str.26 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1, !dbg !207
@.str.27 = private unnamed_addr constant [15 x i8] c"%10lu %08x %s\0A\00", align 1, !dbg !212

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !224 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !233
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !230, metadata !DIExpression()), !dbg !237
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !231, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10, !dbg !241
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !232, metadata !DIExpression()), !dbg !242
  %0 = load ptr, ptr %argv.addr, align 8, !dbg !243, !tbaa !238
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0, !dbg !243
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !243, !tbaa !238
  store ptr %1, ptr @prg, align 8, !dbg !244, !tbaa !238
  store i32 0, ptr @ignore_case, align 4, !dbg !245, !tbaa !233
  store i32 0, ptr @test_files, align 4, !dbg !246, !tbaa !233
  store i32 0, ptr @paranoid, align 4, !dbg !247, !tbaa !233
  store i32 1, ptr @verbose, align 4, !dbg !248, !tbaa !233
  br label %while.cond, !dbg !249

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, ptr %argc.addr, align 4, !dbg !250, !tbaa !233
  %3 = load ptr, ptr %argv.addr, align 8, !dbg !251, !tbaa !238
  %call = call i32 @getopt(i32 noundef %2, ptr noundef %3, ptr noundef @.str) #10, !dbg !252
  store i32 %call, ptr %c, align 4, !dbg !253, !tbaa !233
  %cmp = icmp ne i32 %call, -1, !dbg !254
  br i1 %cmp, label %while.body, label %while.end, !dbg !249

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %c, align 4, !dbg !255, !tbaa !233
  switch i32 %4, label %sw.default [
    i32 105, label %sw.bb
    i32 112, label %sw.bb1
    i32 113, label %sw.bb2
    i32 116, label %sw.bb3
    i32 118, label %sw.bb4
    i32 104, label %sw.bb5
    i32 86, label %sw.bb9
  ], !dbg !257

sw.bb:                                            ; preds = %while.body
  store i32 1, ptr @ignore_case, align 4, !dbg !258, !tbaa !233
  br label %sw.epilog, !dbg !260

sw.bb1:                                           ; preds = %while.body
  store i32 1, ptr @paranoid, align 4, !dbg !261, !tbaa !233
  br label %sw.epilog, !dbg !262

sw.bb2:                                           ; preds = %while.body
  store i32 0, ptr @verbose, align 4, !dbg !263, !tbaa !233
  br label %sw.epilog, !dbg !264

sw.bb3:                                           ; preds = %while.body
  store i32 1, ptr @test_files, align 4, !dbg !265, !tbaa !233
  br label %sw.epilog, !dbg !266

sw.bb4:                                           ; preds = %while.body
  store i32 1, ptr @verbose, align 4, !dbg !267, !tbaa !233
  br label %sw.epilog, !dbg !268

sw.bb5:                                           ; preds = %while.body
  %5 = load ptr, ptr @stdout, align 8, !dbg !269, !tbaa !238
  %call6 = call i32 @fputs(ptr noundef @help_head, ptr noundef %5), !dbg !270
  %6 = load ptr, ptr @prg, align 8, !dbg !271, !tbaa !238
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %6), !dbg !272
  %7 = load ptr, ptr @stdout, align 8, !dbg !273, !tbaa !238
  %call8 = call i32 @fputs(ptr noundef @help, ptr noundef %7), !dbg !274
  call void @exit(i32 noundef 0) #11, !dbg !275
  unreachable, !dbg !275

sw.bb9:                                           ; preds = %while.body
  %8 = load ptr, ptr @stdout, align 8, !dbg !276, !tbaa !238
  %call10 = call i32 @fputs(ptr noundef @version_string, ptr noundef %8), !dbg !277
  call void @exit(i32 noundef 0) #11, !dbg !278
  unreachable, !dbg !278

sw.default:                                       ; preds = %while.body
  %9 = load ptr, ptr @stderr, align 8, !dbg !279, !tbaa !238
  %10 = load ptr, ptr @prg, align 8, !dbg !280, !tbaa !238
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1, ptr noundef %10), !dbg !281
  call void @exit(i32 noundef 2) #11, !dbg !282
  unreachable, !dbg !282

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !dbg !249, !llvm.loop !283

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %argc.addr, align 4, !dbg !286, !tbaa !233
  %12 = load i32, ptr @optind, align 4, !dbg !288, !tbaa !233
  %add = add nsw i32 %12, 2, !dbg !289
  %cmp12 = icmp ne i32 %11, %add, !dbg !290
  br i1 %cmp12, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %while.end
  %13 = load ptr, ptr @stderr, align 8, !dbg !292, !tbaa !238
  %14 = load ptr, ptr @prg, align 8, !dbg !294, !tbaa !238
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1, ptr noundef %14), !dbg !295
  call void @exit(i32 noundef 2) #11, !dbg !296
  unreachable, !dbg !296

if.end:                                           ; preds = %while.end
  %15 = load ptr, ptr %argv.addr, align 8, !dbg !297, !tbaa !238
  %16 = load i32, ptr @optind, align 4, !dbg !298, !tbaa !233
  %idx.ext = sext i32 %16 to i64, !dbg !299
  %add.ptr = getelementptr inbounds ptr, ptr %15, i64 %idx.ext, !dbg !299
  %call14 = call i32 @compare_zip(ptr noundef %add.ptr), !dbg !300
  %cmp15 = icmp eq i32 %call14, 0, !dbg !301
  %17 = zext i1 %cmp15 to i64, !dbg !302
  %cond = select i1 %cmp15, i32 0, i32 1, !dbg !302
  call void @exit(i32 noundef %cond) #11, !dbg !303
  unreachable, !dbg !303
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !304 i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #2

declare !dbg !308 i32 @fputs(ptr noundef, ptr noundef) #3

declare !dbg !361 i32 @printf(ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare !dbg !364 void @exit(i32 noundef) #4

declare !dbg !368 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @compare_zip(ptr noundef %zn) #0 !dbg !371 {
entry:
  %zn.addr = alloca ptr, align 8
  %a = alloca [2 x %struct.archive], align 16
  %e = alloca [2 x ptr], align 16
  %n = alloca [2 x i64], align 16
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store ptr %zn, ptr %zn.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %zn.addr, metadata !375, metadata !DIExpression()), !dbg !396
  call void @llvm.lifetime.start.p0(i64 96, ptr %a) #10, !dbg !397
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !376, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 16, ptr %e) #10, !dbg !399
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !390, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 16, ptr %n) #10, !dbg !401
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !392, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !403
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !394, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10, !dbg !405
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !395, metadata !DIExpression()), !dbg !406
  store i32 0, ptr %i, align 4, !dbg !407, !tbaa !233
  br label %for.cond, !dbg !409

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !410, !tbaa !233
  %cmp = icmp slt i32 %0, 2, !dbg !412
  br i1 %cmp, label %for.body, label %for.end, !dbg !413

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %zn.addr, align 8, !dbg !414, !tbaa !238
  %2 = load i32, ptr %i, align 4, !dbg !416, !tbaa !233
  %idxprom = sext i32 %2 to i64, !dbg !414
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !414
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !414, !tbaa !238
  %4 = load i32, ptr %i, align 4, !dbg !417, !tbaa !233
  %idxprom1 = sext i32 %4 to i64, !dbg !418
  %arrayidx2 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom1, !dbg !418
  %name = getelementptr inbounds %struct.archive, ptr %arrayidx2, i32 0, i32 0, !dbg !419
  store ptr %3, ptr %name, align 16, !dbg !420, !tbaa !421
  %5 = load i32, ptr %i, align 4, !dbg !424, !tbaa !233
  %idxprom3 = sext i32 %5 to i64, !dbg !425
  %arrayidx4 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom3, !dbg !425
  %entry5 = getelementptr inbounds %struct.archive, ptr %arrayidx4, i32 0, i32 3, !dbg !426
  store ptr null, ptr %entry5, align 8, !dbg !427, !tbaa !428
  %6 = load i32, ptr %i, align 4, !dbg !429, !tbaa !233
  %idxprom6 = sext i32 %6 to i64, !dbg !430
  %arrayidx7 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom6, !dbg !430
  %nentry = getelementptr inbounds %struct.archive, ptr %arrayidx7, i32 0, i32 2, !dbg !431
  store i64 0, ptr %nentry, align 16, !dbg !432, !tbaa !433
  %7 = load i32, ptr %i, align 4, !dbg !434, !tbaa !233
  %idxprom8 = sext i32 %7 to i64, !dbg !435
  %arrayidx9 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom8, !dbg !435
  %za = getelementptr inbounds %struct.archive, ptr %arrayidx9, i32 0, i32 1, !dbg !436
  store ptr null, ptr %za, align 8, !dbg !437, !tbaa !438
  %8 = load i32, ptr %i, align 4, !dbg !439, !tbaa !233
  %idxprom10 = sext i32 %8 to i64, !dbg !440
  %arrayidx11 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom10, !dbg !440
  %comment = getelementptr inbounds %struct.archive, ptr %arrayidx11, i32 0, i32 4, !dbg !441
  store ptr null, ptr %comment, align 16, !dbg !442, !tbaa !443
  %9 = load i32, ptr %i, align 4, !dbg !444, !tbaa !233
  %idxprom12 = sext i32 %9 to i64, !dbg !445
  %arrayidx13 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom12, !dbg !445
  %comment_length = getelementptr inbounds %struct.archive, ptr %arrayidx13, i32 0, i32 5, !dbg !446
  store i64 0, ptr %comment_length, align 8, !dbg !447, !tbaa !448
  %10 = load ptr, ptr %zn.addr, align 8, !dbg !449, !tbaa !238
  %11 = load i32, ptr %i, align 4, !dbg !451, !tbaa !233
  %idxprom14 = sext i32 %11 to i64, !dbg !449
  %arrayidx15 = getelementptr inbounds ptr, ptr %10, i64 %idxprom14, !dbg !449
  %12 = load ptr, ptr %arrayidx15, align 8, !dbg !449, !tbaa !238
  %call = call i32 @is_directory(ptr noundef %12), !dbg !452
  %tobool = icmp ne i32 %call, 0, !dbg !452
  br i1 %tobool, label %if.then, label %if.else, !dbg !453

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %zn.addr, align 8, !dbg !454, !tbaa !238
  %14 = load i32, ptr %i, align 4, !dbg !457, !tbaa !233
  %idxprom16 = sext i32 %14 to i64, !dbg !454
  %arrayidx17 = getelementptr inbounds ptr, ptr %13, i64 %idxprom16, !dbg !454
  %15 = load ptr, ptr %arrayidx17, align 8, !dbg !454, !tbaa !238
  %arraydecay = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 0, !dbg !458
  %16 = load i32, ptr %i, align 4, !dbg !459, !tbaa !233
  %idx.ext = sext i32 %16 to i64, !dbg !460
  %add.ptr = getelementptr inbounds %struct.archive, ptr %arraydecay, i64 %idx.ext, !dbg !460
  %call18 = call i32 @list_directory(ptr noundef %15, ptr noundef %add.ptr), !dbg !461
  %cmp19 = icmp slt i32 %call18, 0, !dbg !462
  br i1 %cmp19, label %if.then20, label %if.end, !dbg !463

if.then20:                                        ; preds = %if.then
  call void @exit(i32 noundef 2) #11, !dbg !464
  unreachable, !dbg !464

if.end:                                           ; preds = %if.then
  store i32 0, ptr @paranoid, align 4, !dbg !465, !tbaa !233
  br label %if.end30, !dbg !466

if.else:                                          ; preds = %for.body
  %17 = load ptr, ptr %zn.addr, align 8, !dbg !467, !tbaa !238
  %18 = load i32, ptr %i, align 4, !dbg !470, !tbaa !233
  %idxprom21 = sext i32 %18 to i64, !dbg !467
  %arrayidx22 = getelementptr inbounds ptr, ptr %17, i64 %idxprom21, !dbg !467
  %19 = load ptr, ptr %arrayidx22, align 8, !dbg !467, !tbaa !238
  %arraydecay23 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 0, !dbg !471
  %20 = load i32, ptr %i, align 4, !dbg !472, !tbaa !233
  %idx.ext24 = sext i32 %20 to i64, !dbg !473
  %add.ptr25 = getelementptr inbounds %struct.archive, ptr %arraydecay23, i64 %idx.ext24, !dbg !473
  %call26 = call i32 @list_zip(ptr noundef %19, ptr noundef %add.ptr25), !dbg !474
  %cmp27 = icmp slt i32 %call26, 0, !dbg !475
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !476

if.then28:                                        ; preds = %if.else
  call void @exit(i32 noundef 2) #11, !dbg !477
  unreachable, !dbg !477

if.end29:                                         ; preds = %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end
  %21 = load i32, ptr %i, align 4, !dbg !478, !tbaa !233
  %idxprom31 = sext i32 %21 to i64, !dbg !480
  %arrayidx32 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom31, !dbg !480
  %nentry33 = getelementptr inbounds %struct.archive, ptr %arrayidx32, i32 0, i32 2, !dbg !481
  %22 = load i64, ptr %nentry33, align 16, !dbg !481, !tbaa !433
  %cmp34 = icmp ugt i64 %22, 0, !dbg !482
  br i1 %cmp34, label %if.then35, label %if.end42, !dbg !483

if.then35:                                        ; preds = %if.end30
  %23 = load i32, ptr %i, align 4, !dbg !484, !tbaa !233
  %idxprom36 = sext i32 %23 to i64, !dbg !485
  %arrayidx37 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom36, !dbg !485
  %entry38 = getelementptr inbounds %struct.archive, ptr %arrayidx37, i32 0, i32 3, !dbg !486
  %24 = load ptr, ptr %entry38, align 8, !dbg !486, !tbaa !428
  %25 = load i32, ptr %i, align 4, !dbg !487, !tbaa !233
  %idxprom39 = sext i32 %25 to i64, !dbg !488
  %arrayidx40 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom39, !dbg !488
  %nentry41 = getelementptr inbounds %struct.archive, ptr %arrayidx40, i32 0, i32 2, !dbg !489
  %26 = load i64, ptr %nentry41, align 16, !dbg !489, !tbaa !433
  call void @qsort(ptr noundef %24, i64 noundef %26, i64 noundef 56, ptr noundef @entry_cmp), !dbg !490
  br label %if.end42, !dbg !490

if.end42:                                         ; preds = %if.then35, %if.end30
  br label %for.inc, !dbg !491

for.inc:                                          ; preds = %if.end42
  %27 = load i32, ptr %i, align 4, !dbg !492, !tbaa !233
  %inc = add nsw i32 %27, 1, !dbg !492
  store i32 %inc, ptr %i, align 4, !dbg !492, !tbaa !233
  br label %for.cond, !dbg !493, !llvm.loop !494

for.end:                                          ; preds = %for.cond
  store i32 0, ptr @header_done, align 4, !dbg !496, !tbaa !233
  %arrayidx43 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 0, !dbg !497
  %entry44 = getelementptr inbounds %struct.archive, ptr %arrayidx43, i32 0, i32 3, !dbg !498
  %28 = load ptr, ptr %entry44, align 8, !dbg !498, !tbaa !428
  %arrayidx45 = getelementptr inbounds [2 x ptr], ptr %e, i64 0, i64 0, !dbg !499
  store ptr %28, ptr %arrayidx45, align 16, !dbg !500, !tbaa !238
  %arrayidx46 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 1, !dbg !501
  %entry47 = getelementptr inbounds %struct.archive, ptr %arrayidx46, i32 0, i32 3, !dbg !502
  %29 = load ptr, ptr %entry47, align 8, !dbg !502, !tbaa !428
  %arrayidx48 = getelementptr inbounds [2 x ptr], ptr %e, i64 0, i64 1, !dbg !503
  store ptr %29, ptr %arrayidx48, align 8, !dbg !504, !tbaa !238
  %arrayidx49 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 0, !dbg !505
  %nentry50 = getelementptr inbounds %struct.archive, ptr %arrayidx49, i32 0, i32 2, !dbg !506
  %30 = load i64, ptr %nentry50, align 16, !dbg !506, !tbaa !433
  %arrayidx51 = getelementptr inbounds [2 x i64], ptr %n, i64 0, i64 0, !dbg !507
  store i64 %30, ptr %arrayidx51, align 16, !dbg !508, !tbaa !509
  %arrayidx52 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 1, !dbg !510
  %nentry53 = getelementptr inbounds %struct.archive, ptr %arrayidx52, i32 0, i32 2, !dbg !511
  %31 = load i64, ptr %nentry53, align 16, !dbg !511, !tbaa !433
  %arrayidx54 = getelementptr inbounds [2 x i64], ptr %n, i64 0, i64 1, !dbg !512
  store i64 %31, ptr %arrayidx54, align 8, !dbg !513, !tbaa !509
  %32 = load ptr, ptr %zn.addr, align 8, !dbg !514, !tbaa !238
  %arraydecay55 = getelementptr inbounds [2 x ptr], ptr %e, i64 0, i64 0, !dbg !515
  %arraydecay56 = getelementptr inbounds [2 x i64], ptr %n, i64 0, i64 0, !dbg !516
  %33 = load i32, ptr @paranoid, align 4, !dbg !517, !tbaa !233
  %tobool57 = icmp ne i32 %33, 0, !dbg !517
  %34 = zext i1 %tobool57 to i64, !dbg !517
  %cond = select i1 %tobool57, ptr @entry_paranoia_checks, ptr null, !dbg !517
  %call58 = call i32 @compare_list(ptr noundef %32, ptr noundef %arraydecay55, ptr noundef %arraydecay56, i32 noundef 56, ptr noundef @entry_cmp, ptr noundef %cond, ptr noundef @entry_print), !dbg !518
  store i32 %call58, ptr %res, align 4, !dbg !519, !tbaa !233
  %35 = load i32, ptr @paranoid, align 4, !dbg !520, !tbaa !233
  %tobool59 = icmp ne i32 %35, 0, !dbg !520
  br i1 %tobool59, label %if.then60, label %if.end82, !dbg !522

if.then60:                                        ; preds = %for.end
  %arrayidx61 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 0, !dbg !523
  %comment62 = getelementptr inbounds %struct.archive, ptr %arrayidx61, i32 0, i32 4, !dbg !526
  %36 = load ptr, ptr %comment62, align 16, !dbg !526, !tbaa !443
  %arrayidx63 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 0, !dbg !527
  %comment_length64 = getelementptr inbounds %struct.archive, ptr %arrayidx63, i32 0, i32 5, !dbg !528
  %37 = load i64, ptr %comment_length64, align 8, !dbg !528, !tbaa !448
  %arrayidx65 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 1, !dbg !529
  %comment66 = getelementptr inbounds %struct.archive, ptr %arrayidx65, i32 0, i32 4, !dbg !530
  %38 = load ptr, ptr %comment66, align 16, !dbg !530, !tbaa !443
  %arrayidx67 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 1, !dbg !531
  %comment_length68 = getelementptr inbounds %struct.archive, ptr %arrayidx67, i32 0, i32 5, !dbg !532
  %39 = load i64, ptr %comment_length68, align 8, !dbg !532, !tbaa !448
  %call69 = call i32 @comment_compare(ptr noundef %36, i64 noundef %37, ptr noundef %38, i64 noundef %39), !dbg !533
  %cmp70 = icmp ne i32 %call69, 0, !dbg !534
  br i1 %cmp70, label %if.then71, label %if.end81, !dbg !535

if.then71:                                        ; preds = %if.then60
  %40 = load i32, ptr @verbose, align 4, !dbg !536, !tbaa !233
  %tobool72 = icmp ne i32 %40, 0, !dbg !536
  br i1 %tobool72, label %if.then73, label %if.end80, !dbg !539

if.then73:                                        ; preds = %if.then71
  %arrayidx74 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 0, !dbg !540
  %comment_length75 = getelementptr inbounds %struct.archive, ptr %arrayidx74, i32 0, i32 5, !dbg !542
  %41 = load i64, ptr %comment_length75, align 8, !dbg !542, !tbaa !448
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %41), !dbg !543
  %arrayidx77 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 1, !dbg !544
  %comment_length78 = getelementptr inbounds %struct.archive, ptr %arrayidx77, i32 0, i32 5, !dbg !545
  %42 = load i64, ptr %comment_length78, align 8, !dbg !545, !tbaa !448
  %call79 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %42), !dbg !546
  br label %if.end80, !dbg !547

if.end80:                                         ; preds = %if.then73, %if.then71
  store i32 1, ptr %res, align 4, !dbg !548, !tbaa !233
  br label %if.end81, !dbg !549

if.end81:                                         ; preds = %if.end80, %if.then60
  br label %if.end82, !dbg !550

if.end82:                                         ; preds = %if.end81, %for.end
  store i32 0, ptr %i, align 4, !dbg !551, !tbaa !233
  br label %for.cond83, !dbg !553

for.cond83:                                       ; preds = %for.inc96, %if.end82
  %43 = load i32, ptr %i, align 4, !dbg !554, !tbaa !233
  %cmp84 = icmp slt i32 %43, 2, !dbg !556
  br i1 %cmp84, label %for.body85, label %for.end98, !dbg !557

for.body85:                                       ; preds = %for.cond83
  %44 = load i32, ptr %i, align 4, !dbg !558, !tbaa !233
  %idxprom86 = sext i32 %44 to i64, !dbg !560
  %arrayidx87 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom86, !dbg !560
  %za88 = getelementptr inbounds %struct.archive, ptr %arrayidx87, i32 0, i32 1, !dbg !561
  %45 = load ptr, ptr %za88, align 8, !dbg !561, !tbaa !438
  %tobool89 = icmp ne ptr %45, null, !dbg !560
  br i1 %tobool89, label %if.then90, label %if.end95, !dbg !562

if.then90:                                        ; preds = %for.body85
  %46 = load i32, ptr %i, align 4, !dbg !563, !tbaa !233
  %idxprom91 = sext i32 %46 to i64, !dbg !564
  %arrayidx92 = getelementptr inbounds [2 x %struct.archive], ptr %a, i64 0, i64 %idxprom91, !dbg !564
  %za93 = getelementptr inbounds %struct.archive, ptr %arrayidx92, i32 0, i32 1, !dbg !565
  %47 = load ptr, ptr %za93, align 8, !dbg !565, !tbaa !438
  %call94 = call i32 @zip_close(ptr noundef %47), !dbg !566
  br label %if.end95, !dbg !566

if.end95:                                         ; preds = %if.then90, %for.body85
  br label %for.inc96, !dbg !561

for.inc96:                                        ; preds = %if.end95
  %48 = load i32, ptr %i, align 4, !dbg !567, !tbaa !233
  %inc97 = add nsw i32 %48, 1, !dbg !567
  store i32 %inc97, ptr %i, align 4, !dbg !567, !tbaa !233
  br label %for.cond83, !dbg !568, !llvm.loop !569

for.end98:                                        ; preds = %for.cond83
  %49 = load i32, ptr %res, align 4, !dbg !571, !tbaa !233
  switch i32 %49, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb99
  ], !dbg !572

sw.bb:                                            ; preds = %for.end98
  call void @exit(i32 noundef 0) #11, !dbg !573
  unreachable, !dbg !573

sw.bb99:                                          ; preds = %for.end98
  call void @exit(i32 noundef 1) #11, !dbg !575
  unreachable, !dbg !575

sw.default:                                       ; preds = %for.end98
  call void @exit(i32 noundef 2) #11, !dbg !576
  unreachable, !dbg !576
}

; Function Attrs: nounwind uwtable
define internal i32 @is_directory(ptr noundef %name) #0 !dbg !577 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !581, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 144, ptr %st) #10, !dbg !618
  tail call void @llvm.dbg.declare(metadata ptr %st, metadata !582, metadata !DIExpression()), !dbg !619
  %0 = load ptr, ptr %name.addr, align 8, !dbg !620, !tbaa !238
  %call = call i32 @stat(ptr noundef %0, ptr noundef %st) #10, !dbg !622
  %cmp = icmp slt i32 %call, 0, !dbg !623
  br i1 %cmp, label %if.then, label %if.end, !dbg !624

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !625

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %st, i32 0, i32 3, !dbg !626
  %1 = load i32, ptr %st_mode, align 8, !dbg !626, !tbaa !627
  %and = and i32 %1, 61440, !dbg !626
  %cmp1 = icmp eq i32 %and, 16384, !dbg !626
  %conv = zext i1 %cmp1 to i32, !dbg !626
  store i32 %conv, ptr %retval, align 4, !dbg !630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !630

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 144, ptr %st) #10, !dbg !631
  %2 = load i32, ptr %retval, align 4, !dbg !631
  ret i32 %2, !dbg !631
}

; Function Attrs: nounwind uwtable
define internal i32 @list_directory(ptr noundef %name, ptr noundef %a) #0 !dbg !632 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %fts = alloca ptr, align 8
  %ent = alloca ptr, align 8
  %nalloc = alloca i64, align 8
  %prefix_length = alloca i64, align 8
  %names = alloca [2 x ptr], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %crc = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !637, metadata !DIExpression()), !dbg !697
  store ptr %a, ptr %a.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !638, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 8, ptr %fts) #10, !dbg !699
  tail call void @llvm.dbg.declare(metadata ptr %fts, metadata !639, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #10, !dbg !701
  tail call void @llvm.dbg.declare(metadata ptr %ent, metadata !688, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 8, ptr %nalloc) #10, !dbg !703
  tail call void @llvm.dbg.declare(metadata ptr %nalloc, metadata !691, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix_length) #10, !dbg !705
  tail call void @llvm.dbg.declare(metadata ptr %prefix_length, metadata !692, metadata !DIExpression()), !dbg !706
  call void @llvm.lifetime.start.p0(i64 16, ptr %names) #10, !dbg !707
  tail call void @llvm.dbg.declare(metadata ptr %names, metadata !693, metadata !DIExpression()), !dbg !708
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %names, i64 0, i64 0, !dbg !709
  %0 = load ptr, ptr %name.addr, align 8, !dbg !710, !tbaa !238
  store ptr %0, ptr %arrayinit.begin, align 8, !dbg !709, !tbaa !238
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1, !dbg !709
  store ptr null, ptr %arrayinit.element, align 8, !dbg !709, !tbaa !238
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %names, i64 0, i64 0, !dbg !711
  %call = call ptr @fts_open(ptr noundef %arraydecay, i32 noundef 6, ptr noundef null), !dbg !713
  store ptr %call, ptr %fts, align 8, !dbg !714, !tbaa !238
  %cmp = icmp eq ptr %call, null, !dbg !715
  br i1 %cmp, label %if.then, label %if.end, !dbg !716

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !717, !tbaa !238
  %2 = load ptr, ptr @prg, align 8, !dbg !719, !tbaa !238
  %3 = load ptr, ptr %name.addr, align 8, !dbg !720, !tbaa !238
  %call1 = call ptr @__errno_location() #12, !dbg !721
  %4 = load i32, ptr %call1, align 4, !dbg !721, !tbaa !233
  %call2 = call ptr @strerror(i32 noundef %4) #10, !dbg !722
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.4, ptr noundef %2, ptr noundef %3, ptr noundef %call2), !dbg !723
  store i32 -1, ptr %retval, align 4, !dbg !724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !724

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %name.addr, align 8, !dbg !725, !tbaa !238
  %call4 = call i64 @strlen(ptr noundef %5) #13, !dbg !726
  %add = add i64 %call4, 1, !dbg !727
  store i64 %add, ptr %prefix_length, align 8, !dbg !728, !tbaa !509
  store i64 0, ptr %nalloc, align 8, !dbg !729, !tbaa !509
  br label %while.cond, !dbg !730

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %6 = load ptr, ptr %fts, align 8, !dbg !731, !tbaa !238
  %call5 = call ptr @fts_read(ptr noundef %6), !dbg !732
  store ptr %call5, ptr %ent, align 8, !dbg !733, !tbaa !238
  %tobool = icmp ne ptr %call5, null, !dbg !730
  br i1 %tobool, label %while.body, label %while.end, !dbg !730

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #10, !dbg !734
  tail call void @llvm.dbg.declare(metadata ptr %crc, metadata !695, metadata !DIExpression()), !dbg !735
  %7 = load ptr, ptr %ent, align 8, !dbg !736, !tbaa !238
  %fts_info = getelementptr inbounds %struct._ftsent, ptr %7, i32 0, i32 15, !dbg !737
  %8 = load i16, ptr %fts_info, align 2, !dbg !737, !tbaa !738
  %conv = zext i16 %8 to i32, !dbg !736
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 3, label %sw.bb
    i32 12, label %sw.bb
    i32 11, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb6
    i32 7, label %sw.bb6
    i32 10, label %sw.bb6
    i32 13, label %sw.bb6
    i32 8, label %sw.bb8
  ], !dbg !741

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog, !dbg !742

sw.bb6:                                           ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %9 = load ptr, ptr %fts, align 8, !dbg !744, !tbaa !238
  %call7 = call i32 @fts_close(ptr noundef %9), !dbg !745
  store i32 -1, ptr %retval, align 4, !dbg !746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !746

sw.bb8:                                           ; preds = %while.body
  %10 = load ptr, ptr %a.addr, align 8, !dbg !747, !tbaa !238
  %nentry = getelementptr inbounds %struct.archive, ptr %10, i32 0, i32 2, !dbg !749
  %11 = load i64, ptr %nentry, align 8, !dbg !749, !tbaa !433
  %12 = load i64, ptr %nalloc, align 8, !dbg !750, !tbaa !509
  %cmp9 = icmp uge i64 %11, %12, !dbg !751
  br i1 %cmp9, label %if.then11, label %if.end27, !dbg !752

if.then11:                                        ; preds = %sw.bb8
  %13 = load i64, ptr %nalloc, align 8, !dbg !753, !tbaa !509
  %add12 = add i64 %13, 16, !dbg !753
  store i64 %add12, ptr %nalloc, align 8, !dbg !753, !tbaa !509
  %14 = load i64, ptr %nalloc, align 8, !dbg !755, !tbaa !509
  %cmp13 = icmp ugt i64 %14, 329406144173384850, !dbg !757
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !758

if.then15:                                        ; preds = %if.then11
  %15 = load ptr, ptr @stderr, align 8, !dbg !759, !tbaa !238
  %16 = load ptr, ptr @prg, align 8, !dbg !761, !tbaa !238
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.5, ptr noundef %16), !dbg !762
  call void @exit(i32 noundef 1) #11, !dbg !763
  unreachable, !dbg !763

if.end17:                                         ; preds = %if.then11
  %17 = load ptr, ptr %a.addr, align 8, !dbg !764, !tbaa !238
  %entry18 = getelementptr inbounds %struct.archive, ptr %17, i32 0, i32 3, !dbg !765
  %18 = load ptr, ptr %entry18, align 8, !dbg !765, !tbaa !428
  %19 = load i64, ptr %nalloc, align 8, !dbg !766, !tbaa !509
  %mul = mul i64 56, %19, !dbg !767
  %call19 = call ptr @realloc(ptr noundef %18, i64 noundef %mul) #14, !dbg !768
  %20 = load ptr, ptr %a.addr, align 8, !dbg !769, !tbaa !238
  %entry20 = getelementptr inbounds %struct.archive, ptr %20, i32 0, i32 3, !dbg !770
  store ptr %call19, ptr %entry20, align 8, !dbg !771, !tbaa !428
  %21 = load ptr, ptr %a.addr, align 8, !dbg !772, !tbaa !238
  %entry21 = getelementptr inbounds %struct.archive, ptr %21, i32 0, i32 3, !dbg !774
  %22 = load ptr, ptr %entry21, align 8, !dbg !774, !tbaa !428
  %cmp22 = icmp eq ptr %22, null, !dbg !775
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !776

if.then24:                                        ; preds = %if.end17
  %23 = load ptr, ptr @stderr, align 8, !dbg !777, !tbaa !238
  %24 = load ptr, ptr @prg, align 8, !dbg !779, !tbaa !238
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.5, ptr noundef %24), !dbg !780
  call void @exit(i32 noundef 1) #11, !dbg !781
  unreachable, !dbg !781

if.end26:                                         ; preds = %if.end17
  br label %if.end27, !dbg !782

if.end27:                                         ; preds = %if.end26, %sw.bb8
  %25 = load ptr, ptr %ent, align 8, !dbg !783, !tbaa !238
  %fts_path = getelementptr inbounds %struct._ftsent, ptr %25, i32 0, i32 6, !dbg !784
  %26 = load ptr, ptr %fts_path, align 8, !dbg !784, !tbaa !785
  %27 = load i64, ptr %prefix_length, align 8, !dbg !786, !tbaa !509
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !787
  %call28 = call noalias ptr @strdup(ptr noundef %add.ptr) #10, !dbg !788
  %28 = load ptr, ptr %a.addr, align 8, !dbg !789, !tbaa !238
  %entry29 = getelementptr inbounds %struct.archive, ptr %28, i32 0, i32 3, !dbg !790
  %29 = load ptr, ptr %entry29, align 8, !dbg !790, !tbaa !428
  %30 = load ptr, ptr %a.addr, align 8, !dbg !791, !tbaa !238
  %nentry30 = getelementptr inbounds %struct.archive, ptr %30, i32 0, i32 2, !dbg !792
  %31 = load i64, ptr %nentry30, align 8, !dbg !792, !tbaa !433
  %arrayidx = getelementptr inbounds %struct.entry, ptr %29, i64 %31, !dbg !789
  %name31 = getelementptr inbounds %struct.entry, ptr %arrayidx, i32 0, i32 0, !dbg !793
  store ptr %call28, ptr %name31, align 8, !dbg !794, !tbaa !795
  %32 = load ptr, ptr %ent, align 8, !dbg !797, !tbaa !238
  %fts_statp = getelementptr inbounds %struct._ftsent, ptr %32, i32 0, i32 18, !dbg !798
  %33 = load ptr, ptr %fts_statp, align 8, !dbg !798, !tbaa !799
  %st_size = getelementptr inbounds %struct.stat, ptr %33, i32 0, i32 8, !dbg !800
  %34 = load i64, ptr %st_size, align 8, !dbg !800, !tbaa !801
  %35 = load ptr, ptr %a.addr, align 8, !dbg !802, !tbaa !238
  %entry32 = getelementptr inbounds %struct.archive, ptr %35, i32 0, i32 3, !dbg !803
  %36 = load ptr, ptr %entry32, align 8, !dbg !803, !tbaa !428
  %37 = load ptr, ptr %a.addr, align 8, !dbg !804, !tbaa !238
  %nentry33 = getelementptr inbounds %struct.archive, ptr %37, i32 0, i32 2, !dbg !805
  %38 = load i64, ptr %nentry33, align 8, !dbg !805, !tbaa !433
  %arrayidx34 = getelementptr inbounds %struct.entry, ptr %36, i64 %38, !dbg !802
  %size = getelementptr inbounds %struct.entry, ptr %arrayidx34, i32 0, i32 1, !dbg !806
  store i64 %34, ptr %size, align 8, !dbg !807, !tbaa !808
  %39 = load ptr, ptr %ent, align 8, !dbg !809, !tbaa !238
  %fts_accpath = getelementptr inbounds %struct._ftsent, ptr %39, i32 0, i32 5, !dbg !811
  %40 = load ptr, ptr %fts_accpath, align 8, !dbg !811, !tbaa !812
  %call35 = call i64 @compute_crc(ptr noundef %40), !dbg !813
  store i64 %call35, ptr %crc, align 8, !dbg !814, !tbaa !509
  %cmp36 = icmp slt i64 %call35, 0, !dbg !815
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !816

if.then38:                                        ; preds = %if.end27
  %41 = load ptr, ptr %fts, align 8, !dbg !817, !tbaa !238
  %call39 = call i32 @fts_close(ptr noundef %41), !dbg !819
  store i32 -1, ptr %retval, align 4, !dbg !820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !820

if.end40:                                         ; preds = %if.end27
  %42 = load i64, ptr %crc, align 8, !dbg !821, !tbaa !509
  %conv41 = trunc i64 %42 to i32, !dbg !822
  %43 = load ptr, ptr %a.addr, align 8, !dbg !823, !tbaa !238
  %entry42 = getelementptr inbounds %struct.archive, ptr %43, i32 0, i32 3, !dbg !824
  %44 = load ptr, ptr %entry42, align 8, !dbg !824, !tbaa !428
  %45 = load ptr, ptr %a.addr, align 8, !dbg !825, !tbaa !238
  %nentry43 = getelementptr inbounds %struct.archive, ptr %45, i32 0, i32 2, !dbg !826
  %46 = load i64, ptr %nentry43, align 8, !dbg !826, !tbaa !433
  %arrayidx44 = getelementptr inbounds %struct.entry, ptr %44, i64 %46, !dbg !823
  %crc45 = getelementptr inbounds %struct.entry, ptr %arrayidx44, i32 0, i32 2, !dbg !827
  store i32 %conv41, ptr %crc45, align 8, !dbg !828, !tbaa !829
  %47 = load ptr, ptr %a.addr, align 8, !dbg !830, !tbaa !238
  %nentry46 = getelementptr inbounds %struct.archive, ptr %47, i32 0, i32 2, !dbg !831
  %48 = load i64, ptr %nentry46, align 8, !dbg !832, !tbaa !433
  %inc = add i64 %48, 1, !dbg !832
  store i64 %inc, ptr %nentry46, align 8, !dbg !832, !tbaa !433
  br label %sw.epilog, !dbg !833

sw.epilog:                                        ; preds = %while.body, %if.end40, %sw.bb
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !834
  br label %cleanup, !dbg !834

cleanup:                                          ; preds = %sw.epilog, %if.then38, %sw.bb6
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #10, !dbg !834
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !730, !llvm.loop !835

while.end:                                        ; preds = %while.cond
  %49 = load ptr, ptr %fts, align 8, !dbg !836, !tbaa !238
  %call47 = call i32 @fts_close(ptr noundef %49), !dbg !838
  %tobool48 = icmp ne i32 %call47, 0, !dbg !838
  br i1 %tobool48, label %if.then49, label %if.end54, !dbg !839

if.then49:                                        ; preds = %while.end
  %50 = load ptr, ptr @stderr, align 8, !dbg !840, !tbaa !238
  %51 = load ptr, ptr @prg, align 8, !dbg !842, !tbaa !238
  %52 = load ptr, ptr %a.addr, align 8, !dbg !843, !tbaa !238
  %name50 = getelementptr inbounds %struct.archive, ptr %52, i32 0, i32 0, !dbg !844
  %53 = load ptr, ptr %name50, align 8, !dbg !844, !tbaa !421
  %call51 = call ptr @__errno_location() #12, !dbg !845
  %54 = load i32, ptr %call51, align 4, !dbg !845, !tbaa !233
  %call52 = call ptr @strerror(i32 noundef %54) #10, !dbg !846
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.6, ptr noundef %51, ptr noundef %53, ptr noundef %call52), !dbg !847
  store i32 -1, ptr %retval, align 4, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !848

if.end54:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4, !dbg !849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !849

cleanup55:                                        ; preds = %if.end54, %if.then49, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %names) #10, !dbg !850
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix_length) #10, !dbg !850
  call void @llvm.lifetime.end.p0(i64 8, ptr %nalloc) #10, !dbg !850
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #10, !dbg !850
  call void @llvm.lifetime.end.p0(i64 8, ptr %fts) #10, !dbg !850
  %55 = load i32, ptr %retval, align 4, !dbg !850
  ret i32 %55, !dbg !850
}

; Function Attrs: nounwind uwtable
define internal i32 @list_zip(ptr noundef %name, ptr noundef %a) #0 !dbg !851 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %za = alloca ptr, align 8
  %err = alloca i32, align 4
  %st = alloca %struct.zip_stat, align 8
  %i = alloca i32, align 4
  %error = alloca %struct.zip_error, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %length = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !853, metadata !DIExpression()), !dbg !887
  store ptr %a, ptr %a.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !854, metadata !DIExpression()), !dbg !888
  call void @llvm.lifetime.start.p0(i64 8, ptr %za) #10, !dbg !889
  tail call void @llvm.dbg.declare(metadata ptr %za, metadata !855, metadata !DIExpression()), !dbg !890
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !891
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !856, metadata !DIExpression()), !dbg !892
  call void @llvm.lifetime.start.p0(i64 64, ptr %st) #10, !dbg !893
  tail call void @llvm.dbg.declare(metadata ptr %st, metadata !857, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !895
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !872, metadata !DIExpression()), !dbg !896
  %0 = load ptr, ptr %name.addr, align 8, !dbg !897, !tbaa !238
  %1 = load i32, ptr @paranoid, align 4, !dbg !898, !tbaa !233
  %tobool = icmp ne i32 %1, 0, !dbg !898
  %2 = zext i1 %tobool to i64, !dbg !898
  %cond = select i1 %tobool, i32 4, i32 0, !dbg !898
  %call = call ptr @zip_open(ptr noundef %0, i32 noundef %cond, ptr noundef %err), !dbg !899
  store ptr %call, ptr %za, align 8, !dbg !900, !tbaa !238
  %cmp = icmp eq ptr %call, null, !dbg !901
  br i1 %cmp, label %if.then, label %if.end, !dbg !902

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %error) #10, !dbg !903
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !873, metadata !DIExpression()), !dbg !904
  %3 = load i32, ptr %err, align 4, !dbg !905, !tbaa !233
  call void @zip_error_init_with_code(ptr noundef %error, i32 noundef %3), !dbg !906
  %4 = load ptr, ptr @stderr, align 8, !dbg !907, !tbaa !238
  %5 = load ptr, ptr @prg, align 8, !dbg !908, !tbaa !238
  %6 = load ptr, ptr %name.addr, align 8, !dbg !909, !tbaa !238
  %call1 = call ptr @zip_error_strerror(ptr noundef %error), !dbg !910
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.10, ptr noundef %5, ptr noundef %6, ptr noundef %call1), !dbg !911
  call void @zip_error_fini(ptr noundef %error), !dbg !912
  store i32 -1, ptr %retval, align 4, !dbg !913
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %error) #10, !dbg !914
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %za, align 8, !dbg !915, !tbaa !238
  %8 = load ptr, ptr %a.addr, align 8, !dbg !916, !tbaa !238
  %za3 = getelementptr inbounds %struct.archive, ptr %8, i32 0, i32 1, !dbg !917
  store ptr %7, ptr %za3, align 8, !dbg !918, !tbaa !438
  %9 = load ptr, ptr %za, align 8, !dbg !919, !tbaa !238
  %call4 = call i64 @zip_get_num_entries(ptr noundef %9, i32 noundef 0), !dbg !920
  %10 = load ptr, ptr %a.addr, align 8, !dbg !921, !tbaa !238
  %nentry = getelementptr inbounds %struct.archive, ptr %10, i32 0, i32 2, !dbg !922
  store i64 %call4, ptr %nentry, align 8, !dbg !923, !tbaa !433
  %11 = load ptr, ptr %a.addr, align 8, !dbg !924, !tbaa !238
  %nentry5 = getelementptr inbounds %struct.archive, ptr %11, i32 0, i32 2, !dbg !925
  %12 = load i64, ptr %nentry5, align 8, !dbg !925, !tbaa !433
  %cmp6 = icmp eq i64 %12, 0, !dbg !926
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !927

if.then7:                                         ; preds = %if.end
  %13 = load ptr, ptr %a.addr, align 8, !dbg !928, !tbaa !238
  %entry8 = getelementptr inbounds %struct.archive, ptr %13, i32 0, i32 3, !dbg !929
  store ptr null, ptr %entry8, align 8, !dbg !930, !tbaa !428
  br label %if.end79, !dbg !928

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %a.addr, align 8, !dbg !931, !tbaa !238
  %nentry9 = getelementptr inbounds %struct.archive, ptr %14, i32 0, i32 2, !dbg !933
  %15 = load i64, ptr %nentry9, align 8, !dbg !933, !tbaa !433
  %cmp10 = icmp ugt i64 %15, 329406144173384850, !dbg !934
  br i1 %cmp10, label %if.then15, label %lor.lhs.false, !dbg !935

lor.lhs.false:                                    ; preds = %if.else
  %16 = load ptr, ptr %a.addr, align 8, !dbg !936, !tbaa !238
  %nentry11 = getelementptr inbounds %struct.archive, ptr %16, i32 0, i32 2, !dbg !937
  %17 = load i64, ptr %nentry11, align 8, !dbg !937, !tbaa !433
  %mul = mul i64 56, %17, !dbg !938
  %call12 = call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !939
  %18 = load ptr, ptr %a.addr, align 8, !dbg !940, !tbaa !238
  %entry13 = getelementptr inbounds %struct.archive, ptr %18, i32 0, i32 3, !dbg !941
  store ptr %call12, ptr %entry13, align 8, !dbg !942, !tbaa !428
  %cmp14 = icmp eq ptr %call12, null, !dbg !943
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !944

if.then15:                                        ; preds = %lor.lhs.false, %if.else
  %19 = load ptr, ptr @stderr, align 8, !dbg !945, !tbaa !238
  %20 = load ptr, ptr @prg, align 8, !dbg !947, !tbaa !238
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.5, ptr noundef %20), !dbg !948
  call void @exit(i32 noundef 1) #11, !dbg !949
  unreachable, !dbg !949

if.end17:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !950, !tbaa !233
  br label %for.cond, !dbg !952

for.cond:                                         ; preds = %for.inc, %if.end17
  %21 = load i32, ptr %i, align 4, !dbg !953, !tbaa !233
  %conv = zext i32 %21 to i64, !dbg !953
  %22 = load ptr, ptr %a.addr, align 8, !dbg !955, !tbaa !238
  %nentry18 = getelementptr inbounds %struct.archive, ptr %22, i32 0, i32 2, !dbg !956
  %23 = load i64, ptr %nentry18, align 8, !dbg !956, !tbaa !433
  %cmp19 = icmp ult i64 %conv, %23, !dbg !957
  br i1 %cmp19, label %for.body, label %for.end, !dbg !958

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %za, align 8, !dbg !959, !tbaa !238
  %25 = load i32, ptr %i, align 4, !dbg !961, !tbaa !233
  %conv21 = zext i32 %25 to i64, !dbg !961
  %call22 = call i32 @zip_stat_index(ptr noundef %24, i64 noundef %conv21, i32 noundef 0, ptr noundef %st), !dbg !962
  %name23 = getelementptr inbounds %struct.zip_stat, ptr %st, i32 0, i32 1, !dbg !963
  %26 = load ptr, ptr %name23, align 8, !dbg !963, !tbaa !964
  %call24 = call noalias ptr @strdup(ptr noundef %26) #10, !dbg !966
  %27 = load ptr, ptr %a.addr, align 8, !dbg !967, !tbaa !238
  %entry25 = getelementptr inbounds %struct.archive, ptr %27, i32 0, i32 3, !dbg !968
  %28 = load ptr, ptr %entry25, align 8, !dbg !968, !tbaa !428
  %29 = load i32, ptr %i, align 4, !dbg !969, !tbaa !233
  %idxprom = zext i32 %29 to i64, !dbg !967
  %arrayidx = getelementptr inbounds %struct.entry, ptr %28, i64 %idxprom, !dbg !967
  %name26 = getelementptr inbounds %struct.entry, ptr %arrayidx, i32 0, i32 0, !dbg !970
  store ptr %call24, ptr %name26, align 8, !dbg !971, !tbaa !795
  %size = getelementptr inbounds %struct.zip_stat, ptr %st, i32 0, i32 3, !dbg !972
  %30 = load i64, ptr %size, align 8, !dbg !972, !tbaa !973
  %31 = load ptr, ptr %a.addr, align 8, !dbg !974, !tbaa !238
  %entry27 = getelementptr inbounds %struct.archive, ptr %31, i32 0, i32 3, !dbg !975
  %32 = load ptr, ptr %entry27, align 8, !dbg !975, !tbaa !428
  %33 = load i32, ptr %i, align 4, !dbg !976, !tbaa !233
  %idxprom28 = zext i32 %33 to i64, !dbg !974
  %arrayidx29 = getelementptr inbounds %struct.entry, ptr %32, i64 %idxprom28, !dbg !974
  %size30 = getelementptr inbounds %struct.entry, ptr %arrayidx29, i32 0, i32 1, !dbg !977
  store i64 %30, ptr %size30, align 8, !dbg !978, !tbaa !808
  %crc = getelementptr inbounds %struct.zip_stat, ptr %st, i32 0, i32 6, !dbg !979
  %34 = load i32, ptr %crc, align 8, !dbg !979, !tbaa !980
  %35 = load ptr, ptr %a.addr, align 8, !dbg !981, !tbaa !238
  %entry31 = getelementptr inbounds %struct.archive, ptr %35, i32 0, i32 3, !dbg !982
  %36 = load ptr, ptr %entry31, align 8, !dbg !982, !tbaa !428
  %37 = load i32, ptr %i, align 4, !dbg !983, !tbaa !233
  %idxprom32 = zext i32 %37 to i64, !dbg !981
  %arrayidx33 = getelementptr inbounds %struct.entry, ptr %36, i64 %idxprom32, !dbg !981
  %crc34 = getelementptr inbounds %struct.entry, ptr %arrayidx33, i32 0, i32 2, !dbg !984
  store i32 %34, ptr %crc34, align 8, !dbg !985, !tbaa !829
  %38 = load i32, ptr @test_files, align 4, !dbg !986, !tbaa !233
  %tobool35 = icmp ne i32 %38, 0, !dbg !986
  br i1 %tobool35, label %if.then36, label %if.end41, !dbg !988

if.then36:                                        ; preds = %for.body
  %39 = load ptr, ptr %za, align 8, !dbg !989, !tbaa !238
  %40 = load i32, ptr %i, align 4, !dbg !990, !tbaa !233
  %conv37 = zext i32 %40 to i64, !dbg !990
  %size38 = getelementptr inbounds %struct.zip_stat, ptr %st, i32 0, i32 3, !dbg !991
  %41 = load i64, ptr %size38, align 8, !dbg !991, !tbaa !973
  %crc39 = getelementptr inbounds %struct.zip_stat, ptr %st, i32 0, i32 6, !dbg !992
  %42 = load i32, ptr %crc39, align 8, !dbg !992, !tbaa !980
  %call40 = call i32 @test_file(ptr noundef %39, i64 noundef %conv37, i64 noundef %41, i32 noundef %42), !dbg !993
  br label %if.end41, !dbg !993

if.end41:                                         ; preds = %if.then36, %for.body
  %43 = load i32, ptr @paranoid, align 4, !dbg !994, !tbaa !233
  %tobool42 = icmp ne i32 %43, 0, !dbg !994
  br i1 %tobool42, label %if.then43, label %if.else60, !dbg !996

if.then43:                                        ; preds = %if.end41
  %comp_method = getelementptr inbounds %struct.zip_stat, ptr %st, i32 0, i32 7, !dbg !997
  %44 = load i16, ptr %comp_method, align 4, !dbg !997, !tbaa !999
  %conv44 = zext i16 %44 to i32, !dbg !1000
  %45 = load ptr, ptr %a.addr, align 8, !dbg !1001, !tbaa !238
  %entry45 = getelementptr inbounds %struct.archive, ptr %45, i32 0, i32 3, !dbg !1002
  %46 = load ptr, ptr %entry45, align 8, !dbg !1002, !tbaa !428
  %47 = load i32, ptr %i, align 4, !dbg !1003, !tbaa !233
  %idxprom46 = zext i32 %47 to i64, !dbg !1001
  %arrayidx47 = getelementptr inbounds %struct.entry, ptr %46, i64 %idxprom46, !dbg !1001
  %comp_method48 = getelementptr inbounds %struct.entry, ptr %arrayidx47, i32 0, i32 3, !dbg !1004
  store i32 %conv44, ptr %comp_method48, align 4, !dbg !1005, !tbaa !1006
  %48 = load ptr, ptr %za, align 8, !dbg !1007, !tbaa !238
  %49 = load i32, ptr %i, align 4, !dbg !1008, !tbaa !233
  %conv49 = zext i32 %49 to i64, !dbg !1008
  %50 = load ptr, ptr %a.addr, align 8, !dbg !1009, !tbaa !238
  %entry50 = getelementptr inbounds %struct.archive, ptr %50, i32 0, i32 3, !dbg !1010
  %51 = load ptr, ptr %entry50, align 8, !dbg !1010, !tbaa !428
  %52 = load i32, ptr %i, align 4, !dbg !1011, !tbaa !233
  %idx.ext = zext i32 %52 to i64, !dbg !1012
  %add.ptr = getelementptr inbounds %struct.entry, ptr %51, i64 %idx.ext, !dbg !1012
  %call51 = call i32 @ef_read(ptr noundef %48, i64 noundef %conv49, ptr noundef %add.ptr), !dbg !1013
  %53 = load ptr, ptr %za, align 8, !dbg !1014, !tbaa !238
  %54 = load i32, ptr %i, align 4, !dbg !1015, !tbaa !233
  %conv52 = zext i32 %54 to i64, !dbg !1015
  %55 = load ptr, ptr %a.addr, align 8, !dbg !1016, !tbaa !238
  %entry53 = getelementptr inbounds %struct.archive, ptr %55, i32 0, i32 3, !dbg !1017
  %56 = load ptr, ptr %entry53, align 8, !dbg !1017, !tbaa !428
  %57 = load i32, ptr %i, align 4, !dbg !1018, !tbaa !233
  %idxprom54 = zext i32 %57 to i64, !dbg !1016
  %arrayidx55 = getelementptr inbounds %struct.entry, ptr %56, i64 %idxprom54, !dbg !1016
  %comment_length = getelementptr inbounds %struct.entry, ptr %arrayidx55, i32 0, i32 7, !dbg !1019
  %call56 = call ptr @zip_file_get_comment(ptr noundef %53, i64 noundef %conv52, ptr noundef %comment_length, i32 noundef 0), !dbg !1020
  %58 = load ptr, ptr %a.addr, align 8, !dbg !1021, !tbaa !238
  %entry57 = getelementptr inbounds %struct.archive, ptr %58, i32 0, i32 3, !dbg !1022
  %59 = load ptr, ptr %entry57, align 8, !dbg !1022, !tbaa !428
  %60 = load i32, ptr %i, align 4, !dbg !1023, !tbaa !233
  %idxprom58 = zext i32 %60 to i64, !dbg !1021
  %arrayidx59 = getelementptr inbounds %struct.entry, ptr %59, i64 %idxprom58, !dbg !1021
  %comment = getelementptr inbounds %struct.entry, ptr %arrayidx59, i32 0, i32 6, !dbg !1024
  store ptr %call56, ptr %comment, align 8, !dbg !1025, !tbaa !1026
  br label %if.end68, !dbg !1027

if.else60:                                        ; preds = %if.end41
  %61 = load ptr, ptr %a.addr, align 8, !dbg !1028, !tbaa !238
  %entry61 = getelementptr inbounds %struct.archive, ptr %61, i32 0, i32 3, !dbg !1030
  %62 = load ptr, ptr %entry61, align 8, !dbg !1030, !tbaa !428
  %63 = load i32, ptr %i, align 4, !dbg !1031, !tbaa !233
  %idxprom62 = zext i32 %63 to i64, !dbg !1028
  %arrayidx63 = getelementptr inbounds %struct.entry, ptr %62, i64 %idxprom62, !dbg !1028
  %comp_method64 = getelementptr inbounds %struct.entry, ptr %arrayidx63, i32 0, i32 3, !dbg !1032
  store i32 0, ptr %comp_method64, align 4, !dbg !1033, !tbaa !1006
  %64 = load ptr, ptr %a.addr, align 8, !dbg !1034, !tbaa !238
  %entry65 = getelementptr inbounds %struct.archive, ptr %64, i32 0, i32 3, !dbg !1035
  %65 = load ptr, ptr %entry65, align 8, !dbg !1035, !tbaa !428
  %66 = load i32, ptr %i, align 4, !dbg !1036, !tbaa !233
  %idxprom66 = zext i32 %66 to i64, !dbg !1034
  %arrayidx67 = getelementptr inbounds %struct.entry, ptr %65, i64 %idxprom66, !dbg !1034
  %n_extra_fields = getelementptr inbounds %struct.entry, ptr %arrayidx67, i32 0, i32 5, !dbg !1037
  store i16 0, ptr %n_extra_fields, align 8, !dbg !1038, !tbaa !1039
  br label %if.end68

if.end68:                                         ; preds = %if.else60, %if.then43
  br label %for.inc, !dbg !1040

for.inc:                                          ; preds = %if.end68
  %67 = load i32, ptr %i, align 4, !dbg !1041, !tbaa !233
  %inc = add i32 %67, 1, !dbg !1041
  store i32 %inc, ptr %i, align 4, !dbg !1041, !tbaa !233
  br label %for.cond, !dbg !1042, !llvm.loop !1043

for.end:                                          ; preds = %for.cond
  %68 = load i32, ptr @paranoid, align 4, !dbg !1045, !tbaa !233
  %tobool69 = icmp ne i32 %68, 0, !dbg !1045
  br i1 %tobool69, label %if.then70, label %if.else75, !dbg !1046

if.then70:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #10, !dbg !1047
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !882, metadata !DIExpression()), !dbg !1048
  %69 = load ptr, ptr %za, align 8, !dbg !1049, !tbaa !238
  %call71 = call ptr @zip_get_archive_comment(ptr noundef %69, ptr noundef %length, i32 noundef 0), !dbg !1050
  %70 = load ptr, ptr %a.addr, align 8, !dbg !1051, !tbaa !238
  %comment72 = getelementptr inbounds %struct.archive, ptr %70, i32 0, i32 4, !dbg !1052
  store ptr %call71, ptr %comment72, align 8, !dbg !1053, !tbaa !443
  %71 = load i32, ptr %length, align 4, !dbg !1054, !tbaa !233
  %conv73 = sext i32 %71 to i64, !dbg !1055
  %72 = load ptr, ptr %a.addr, align 8, !dbg !1056, !tbaa !238
  %comment_length74 = getelementptr inbounds %struct.archive, ptr %72, i32 0, i32 5, !dbg !1057
  store i64 %conv73, ptr %comment_length74, align 8, !dbg !1058, !tbaa !448
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #10, !dbg !1059
  br label %if.end78, !dbg !1060

if.else75:                                        ; preds = %for.end
  %73 = load ptr, ptr %a.addr, align 8, !dbg !1061, !tbaa !238
  %comment76 = getelementptr inbounds %struct.archive, ptr %73, i32 0, i32 4, !dbg !1063
  store ptr null, ptr %comment76, align 8, !dbg !1064, !tbaa !443
  %74 = load ptr, ptr %a.addr, align 8, !dbg !1065, !tbaa !238
  %comment_length77 = getelementptr inbounds %struct.archive, ptr %74, i32 0, i32 5, !dbg !1066
  store i64 0, ptr %comment_length77, align 8, !dbg !1067, !tbaa !448
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.then70
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then7
  store i32 0, ptr %retval, align 4, !dbg !1068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1068

cleanup:                                          ; preds = %if.end79, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 64, ptr %st) #10, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr %za) #10, !dbg !1069
  %75 = load i32, ptr %retval, align 4, !dbg !1069
  ret i32 %75, !dbg !1069
}

declare !dbg !1070 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @entry_cmp(ptr noundef %p1, ptr noundef %p2) #0 !dbg !1074 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %e1 = alloca ptr, align 8
  %e2 = alloca ptr, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !1076, metadata !DIExpression()), !dbg !1083
  store ptr %p2, ptr %p2.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !1077, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 8, ptr %e1) #10, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %e1, metadata !1078, metadata !DIExpression()), !dbg !1086
  call void @llvm.lifetime.start.p0(i64 8, ptr %e2) #10, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %e2, metadata !1081, metadata !DIExpression()), !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10, !dbg !1088
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1082, metadata !DIExpression()), !dbg !1089
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !1090, !tbaa !238
  store ptr %0, ptr %e1, align 8, !dbg !1091, !tbaa !238
  %1 = load ptr, ptr %p2.addr, align 8, !dbg !1092, !tbaa !238
  store ptr %1, ptr %e2, align 8, !dbg !1093, !tbaa !238
  %2 = load i32, ptr @ignore_case, align 4, !dbg !1094, !tbaa !233
  %tobool = icmp ne i32 %2, 0, !dbg !1094
  %3 = zext i1 %tobool to i64, !dbg !1094
  %cond = select i1 %tobool, ptr @strcasecmp, ptr @strcmp, !dbg !1094
  %4 = load ptr, ptr %e1, align 8, !dbg !1096, !tbaa !238
  %name = getelementptr inbounds %struct.entry, ptr %4, i32 0, i32 0, !dbg !1097
  %5 = load ptr, ptr %name, align 8, !dbg !1097, !tbaa !795
  %6 = load ptr, ptr %e2, align 8, !dbg !1098, !tbaa !238
  %name1 = getelementptr inbounds %struct.entry, ptr %6, i32 0, i32 0, !dbg !1099
  %7 = load ptr, ptr %name1, align 8, !dbg !1099, !tbaa !795
  %call = call i32 %cond(ptr noundef %5, ptr noundef %7), !dbg !1100
  store i32 %call, ptr %c, align 4, !dbg !1101, !tbaa !233
  %cmp = icmp ne i32 %call, 0, !dbg !1102
  br i1 %cmp, label %if.then, label %if.end, !dbg !1103

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %c, align 4, !dbg !1104, !tbaa !233
  store i32 %8, ptr %retval, align 4, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %e1, align 8, !dbg !1106, !tbaa !238
  %size = getelementptr inbounds %struct.entry, ptr %9, i32 0, i32 1, !dbg !1108
  %10 = load i64, ptr %size, align 8, !dbg !1108, !tbaa !808
  %11 = load ptr, ptr %e2, align 8, !dbg !1109, !tbaa !238
  %size2 = getelementptr inbounds %struct.entry, ptr %11, i32 0, i32 1, !dbg !1110
  %12 = load i64, ptr %size2, align 8, !dbg !1110, !tbaa !808
  %cmp3 = icmp ne i64 %10, %12, !dbg !1111
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !1112

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %e1, align 8, !dbg !1113, !tbaa !238
  %size5 = getelementptr inbounds %struct.entry, ptr %13, i32 0, i32 1, !dbg !1116
  %14 = load i64, ptr %size5, align 8, !dbg !1116, !tbaa !808
  %15 = load ptr, ptr %e2, align 8, !dbg !1117, !tbaa !238
  %size6 = getelementptr inbounds %struct.entry, ptr %15, i32 0, i32 1, !dbg !1118
  %16 = load i64, ptr %size6, align 8, !dbg !1118, !tbaa !808
  %cmp7 = icmp ugt i64 %14, %16, !dbg !1119
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1120

if.then8:                                         ; preds = %if.then4
  store i32 1, ptr %retval, align 4, !dbg !1121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1121

if.else:                                          ; preds = %if.then4
  store i32 -1, ptr %retval, align 4, !dbg !1122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1122

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %e1, align 8, !dbg !1123, !tbaa !238
  %crc = getelementptr inbounds %struct.entry, ptr %17, i32 0, i32 2, !dbg !1125
  %18 = load i32, ptr %crc, align 8, !dbg !1125, !tbaa !829
  %19 = load ptr, ptr %e2, align 8, !dbg !1126, !tbaa !238
  %crc10 = getelementptr inbounds %struct.entry, ptr %19, i32 0, i32 2, !dbg !1127
  %20 = load i32, ptr %crc10, align 8, !dbg !1127, !tbaa !829
  %cmp11 = icmp ne i32 %18, %20, !dbg !1128
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !1129

if.then12:                                        ; preds = %if.end9
  %21 = load ptr, ptr %e1, align 8, !dbg !1130, !tbaa !238
  %crc13 = getelementptr inbounds %struct.entry, ptr %21, i32 0, i32 2, !dbg !1131
  %22 = load i32, ptr %crc13, align 8, !dbg !1131, !tbaa !829
  %23 = load ptr, ptr %e2, align 8, !dbg !1132, !tbaa !238
  %crc14 = getelementptr inbounds %struct.entry, ptr %23, i32 0, i32 2, !dbg !1133
  %24 = load i32, ptr %crc14, align 8, !dbg !1133, !tbaa !829
  %sub = sub nsw i32 %22, %24, !dbg !1134
  store i32 %sub, ptr %retval, align 4, !dbg !1135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1135

if.end15:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !1136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1136

cleanup:                                          ; preds = %if.end15, %if.then12, %if.else, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 8, ptr %e2) #10, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 8, ptr %e1) #10, !dbg !1137
  %25 = load i32, ptr %retval, align 4, !dbg !1137
  ret i32 %25, !dbg !1137
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_list(ptr noundef %name, ptr noundef %l, ptr noundef %n, i32 noundef %size, ptr noundef %cmp, ptr noundef %check, ptr noundef %print) #0 !dbg !1138 {
entry:
  %name.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %cmp.addr = alloca ptr, align 8
  %check.addr = alloca ptr, align 8
  %print.addr = alloca ptr, align 8
  %i = alloca [2 x i32], align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %diff = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1150, metadata !DIExpression()), !dbg !1162
  store ptr %l, ptr %l.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !1151, metadata !DIExpression()), !dbg !1163
  store ptr %n, ptr %n.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1152, metadata !DIExpression()), !dbg !1164
  store i32 %size, ptr %size.addr, align 4, !tbaa !233
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1153, metadata !DIExpression()), !dbg !1165
  store ptr %cmp, ptr %cmp.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %cmp.addr, metadata !1154, metadata !DIExpression()), !dbg !1166
  store ptr %check, ptr %check.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %check.addr, metadata !1155, metadata !DIExpression()), !dbg !1167
  store ptr %print, ptr %print.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %print.addr, metadata !1156, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !1169
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1157, metadata !DIExpression()), !dbg !1170
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10, !dbg !1171
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1159, metadata !DIExpression()), !dbg !1172
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #10, !dbg !1171
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1160, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 4, ptr %diff) #10, !dbg !1174
  tail call void @llvm.dbg.declare(metadata ptr %diff, metadata !1161, metadata !DIExpression()), !dbg !1175
  %arrayidx = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 1, !dbg !1176
  store i32 0, ptr %arrayidx, align 4, !dbg !1177, !tbaa !233
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 0, !dbg !1178
  store i32 0, ptr %arrayidx1, align 4, !dbg !1179, !tbaa !233
  store i32 0, ptr %diff, align 4, !dbg !1180, !tbaa !233
  br label %while.cond, !dbg !1181

while.cond:                                       ; preds = %if.end75, %entry
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 0, !dbg !1182
  %0 = load i32, ptr %arrayidx2, align 4, !dbg !1182, !tbaa !233
  %conv = zext i32 %0 to i64, !dbg !1182
  %1 = load ptr, ptr %n.addr, align 8, !dbg !1183, !tbaa !238
  %arrayidx3 = getelementptr inbounds i64, ptr %1, i64 0, !dbg !1183
  %2 = load i64, ptr %arrayidx3, align 8, !dbg !1183, !tbaa !509
  %cmp4 = icmp ult i64 %conv, %2, !dbg !1184
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !1185

land.rhs:                                         ; preds = %while.cond
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 1, !dbg !1186
  %3 = load i32, ptr %arrayidx6, align 4, !dbg !1186, !tbaa !233
  %conv7 = zext i32 %3 to i64, !dbg !1186
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1187, !tbaa !238
  %arrayidx8 = getelementptr inbounds i64, ptr %4, i64 1, !dbg !1187
  %5 = load i64, ptr %arrayidx8, align 8, !dbg !1187, !tbaa !509
  %cmp9 = icmp ult i64 %conv7, %5, !dbg !1188
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ], !dbg !1189
  br i1 %6, label %while.body, label %while.end, !dbg !1181

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %cmp.addr, align 8, !dbg !1190, !tbaa !238
  %8 = load ptr, ptr %l.addr, align 8, !dbg !1192, !tbaa !238
  %arrayidx11 = getelementptr inbounds ptr, ptr %8, i64 0, !dbg !1192
  %9 = load ptr, ptr %arrayidx11, align 8, !dbg !1192, !tbaa !238
  %10 = load ptr, ptr %l.addr, align 8, !dbg !1193, !tbaa !238
  %arrayidx12 = getelementptr inbounds ptr, ptr %10, i64 1, !dbg !1193
  %11 = load ptr, ptr %arrayidx12, align 8, !dbg !1193, !tbaa !238
  %call = call i32 %7(ptr noundef %9, ptr noundef %11), !dbg !1190
  store i32 %call, ptr %c, align 4, !dbg !1194, !tbaa !233
  %12 = load i32, ptr %c, align 4, !dbg !1195, !tbaa !233
  %cmp13 = icmp eq i32 %12, 0, !dbg !1197
  br i1 %cmp13, label %if.then, label %if.else, !dbg !1198

if.then:                                          ; preds = %while.body
  %13 = load ptr, ptr %check.addr, align 8, !dbg !1199, !tbaa !238
  %tobool = icmp ne ptr %13, null, !dbg !1199
  br i1 %tobool, label %if.then15, label %if.end, !dbg !1202

if.then15:                                        ; preds = %if.then
  %14 = load ptr, ptr %check.addr, align 8, !dbg !1203, !tbaa !238
  %15 = load ptr, ptr %name.addr, align 8, !dbg !1204, !tbaa !238
  %16 = load ptr, ptr %l.addr, align 8, !dbg !1205, !tbaa !238
  %arrayidx16 = getelementptr inbounds ptr, ptr %16, i64 0, !dbg !1205
  %17 = load ptr, ptr %arrayidx16, align 8, !dbg !1205, !tbaa !238
  %18 = load ptr, ptr %l.addr, align 8, !dbg !1206, !tbaa !238
  %arrayidx17 = getelementptr inbounds ptr, ptr %18, i64 1, !dbg !1206
  %19 = load ptr, ptr %arrayidx17, align 8, !dbg !1206, !tbaa !238
  %call18 = call i32 %14(ptr noundef %15, ptr noundef %17, ptr noundef %19), !dbg !1203
  %20 = load i32, ptr %diff, align 4, !dbg !1207, !tbaa !233
  %or = or i32 %20, %call18, !dbg !1207
  store i32 %or, ptr %diff, align 4, !dbg !1207, !tbaa !233
  br label %if.end, !dbg !1208

if.end:                                           ; preds = %if.then15, %if.then
  %arrayidx19 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 0, !dbg !1209
  %21 = load i32, ptr %arrayidx19, align 4, !dbg !1209, !tbaa !233
  %inc = add i32 %21, 1, !dbg !1209
  store i32 %inc, ptr %arrayidx19, align 4, !dbg !1209, !tbaa !233
  %22 = load ptr, ptr %l.addr, align 8, !dbg !1209, !tbaa !238
  %arrayidx20 = getelementptr inbounds ptr, ptr %22, i64 0, !dbg !1209
  %23 = load ptr, ptr %arrayidx20, align 8, !dbg !1209, !tbaa !238
  %24 = load i32, ptr %size.addr, align 4, !dbg !1209, !tbaa !233
  %idx.ext = sext i32 %24 to i64, !dbg !1209
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %idx.ext, !dbg !1209
  %25 = load ptr, ptr %l.addr, align 8, !dbg !1209, !tbaa !238
  %arrayidx21 = getelementptr inbounds ptr, ptr %25, i64 0, !dbg !1209
  store ptr %add.ptr, ptr %arrayidx21, align 8, !dbg !1209, !tbaa !238
  %arrayidx22 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 1, !dbg !1210
  %26 = load i32, ptr %arrayidx22, align 4, !dbg !1210, !tbaa !233
  %inc23 = add i32 %26, 1, !dbg !1210
  store i32 %inc23, ptr %arrayidx22, align 4, !dbg !1210, !tbaa !233
  %27 = load ptr, ptr %l.addr, align 8, !dbg !1210, !tbaa !238
  %arrayidx24 = getelementptr inbounds ptr, ptr %27, i64 1, !dbg !1210
  %28 = load ptr, ptr %arrayidx24, align 8, !dbg !1210, !tbaa !238
  %29 = load i32, ptr %size.addr, align 4, !dbg !1210, !tbaa !233
  %idx.ext25 = sext i32 %29 to i64, !dbg !1210
  %add.ptr26 = getelementptr inbounds i8, ptr %28, i64 %idx.ext25, !dbg !1210
  %30 = load ptr, ptr %l.addr, align 8, !dbg !1210, !tbaa !238
  %arrayidx27 = getelementptr inbounds ptr, ptr %30, i64 1, !dbg !1210
  store ptr %add.ptr26, ptr %arrayidx27, align 8, !dbg !1210, !tbaa !238
  br label %if.end75, !dbg !1211

if.else:                                          ; preds = %while.body
  %31 = load i32, ptr %c, align 4, !dbg !1212, !tbaa !233
  %cmp28 = icmp slt i32 %31, 0, !dbg !1214
  br i1 %cmp28, label %if.then30, label %if.else50, !dbg !1215

if.then30:                                        ; preds = %if.else
  br label %do.body, !dbg !1216

do.body:                                          ; preds = %if.then30
  %32 = load i32, ptr @header_done, align 4, !dbg !1218, !tbaa !233
  %cmp31 = icmp eq i32 %32, 0, !dbg !1218
  br i1 %cmp31, label %land.lhs.true, label %if.end38, !dbg !1218

land.lhs.true:                                    ; preds = %do.body
  %33 = load i32, ptr @verbose, align 4, !dbg !1218, !tbaa !233
  %tobool33 = icmp ne i32 %33, 0, !dbg !1218
  br i1 %tobool33, label %if.then34, label %if.end38, !dbg !1221

if.then34:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %name.addr, align 8, !dbg !1222, !tbaa !238
  %arrayidx35 = getelementptr inbounds ptr, ptr %34, i64 0, !dbg !1222
  %35 = load ptr, ptr %arrayidx35, align 8, !dbg !1222, !tbaa !238
  %36 = load ptr, ptr %name.addr, align 8, !dbg !1222, !tbaa !238
  %arrayidx36 = getelementptr inbounds ptr, ptr %36, i64 1, !dbg !1222
  %37 = load ptr, ptr %arrayidx36, align 8, !dbg !1222, !tbaa !238
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef %35, ptr noundef %37), !dbg !1222
  store i32 1, ptr @header_done, align 4, !dbg !1222, !tbaa !233
  br label %if.end38, !dbg !1222

if.end38:                                         ; preds = %if.then34, %land.lhs.true, %do.body
  %38 = load i32, ptr @verbose, align 4, !dbg !1224, !tbaa !233
  %tobool39 = icmp ne i32 %38, 0, !dbg !1224
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !1221

if.then40:                                        ; preds = %if.end38
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef 45), !dbg !1226
  %39 = load ptr, ptr %print.addr, align 8, !dbg !1226, !tbaa !238
  %40 = load ptr, ptr %l.addr, align 8, !dbg !1226, !tbaa !238
  %arrayidx42 = getelementptr inbounds ptr, ptr %40, i64 0, !dbg !1226
  %41 = load ptr, ptr %arrayidx42, align 8, !dbg !1226, !tbaa !238
  call void %39(ptr noundef %41), !dbg !1226
  br label %if.end43, !dbg !1226

if.end43:                                         ; preds = %if.then40, %if.end38
  store i32 1, ptr %diff, align 4, !dbg !1221, !tbaa !233
  br label %do.cond, !dbg !1221

do.cond:                                          ; preds = %if.end43
  br label %do.end, !dbg !1221

do.end:                                           ; preds = %do.cond
  %arrayidx44 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 0, !dbg !1228
  %42 = load i32, ptr %arrayidx44, align 4, !dbg !1228, !tbaa !233
  %inc45 = add i32 %42, 1, !dbg !1228
  store i32 %inc45, ptr %arrayidx44, align 4, !dbg !1228, !tbaa !233
  %43 = load ptr, ptr %l.addr, align 8, !dbg !1228, !tbaa !238
  %arrayidx46 = getelementptr inbounds ptr, ptr %43, i64 0, !dbg !1228
  %44 = load ptr, ptr %arrayidx46, align 8, !dbg !1228, !tbaa !238
  %45 = load i32, ptr %size.addr, align 4, !dbg !1228, !tbaa !233
  %idx.ext47 = sext i32 %45 to i64, !dbg !1228
  %add.ptr48 = getelementptr inbounds i8, ptr %44, i64 %idx.ext47, !dbg !1228
  %46 = load ptr, ptr %l.addr, align 8, !dbg !1228, !tbaa !238
  %arrayidx49 = getelementptr inbounds ptr, ptr %46, i64 0, !dbg !1228
  store ptr %add.ptr48, ptr %arrayidx49, align 8, !dbg !1228, !tbaa !238
  br label %if.end74, !dbg !1229

if.else50:                                        ; preds = %if.else
  br label %do.body51, !dbg !1230

do.body51:                                        ; preds = %if.else50
  %47 = load i32, ptr @header_done, align 4, !dbg !1232, !tbaa !233
  %cmp52 = icmp eq i32 %47, 0, !dbg !1232
  br i1 %cmp52, label %land.lhs.true54, label %if.end60, !dbg !1232

land.lhs.true54:                                  ; preds = %do.body51
  %48 = load i32, ptr @verbose, align 4, !dbg !1232, !tbaa !233
  %tobool55 = icmp ne i32 %48, 0, !dbg !1232
  br i1 %tobool55, label %if.then56, label %if.end60, !dbg !1235

if.then56:                                        ; preds = %land.lhs.true54
  %49 = load ptr, ptr %name.addr, align 8, !dbg !1236, !tbaa !238
  %arrayidx57 = getelementptr inbounds ptr, ptr %49, i64 0, !dbg !1236
  %50 = load ptr, ptr %arrayidx57, align 8, !dbg !1236, !tbaa !238
  %51 = load ptr, ptr %name.addr, align 8, !dbg !1236, !tbaa !238
  %arrayidx58 = getelementptr inbounds ptr, ptr %51, i64 1, !dbg !1236
  %52 = load ptr, ptr %arrayidx58, align 8, !dbg !1236, !tbaa !238
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef %50, ptr noundef %52), !dbg !1236
  store i32 1, ptr @header_done, align 4, !dbg !1236, !tbaa !233
  br label %if.end60, !dbg !1236

if.end60:                                         ; preds = %if.then56, %land.lhs.true54, %do.body51
  %53 = load i32, ptr @verbose, align 4, !dbg !1238, !tbaa !233
  %tobool61 = icmp ne i32 %53, 0, !dbg !1238
  br i1 %tobool61, label %if.then62, label %if.end65, !dbg !1235

if.then62:                                        ; preds = %if.end60
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef 43), !dbg !1240
  %54 = load ptr, ptr %print.addr, align 8, !dbg !1240, !tbaa !238
  %55 = load ptr, ptr %l.addr, align 8, !dbg !1240, !tbaa !238
  %arrayidx64 = getelementptr inbounds ptr, ptr %55, i64 1, !dbg !1240
  %56 = load ptr, ptr %arrayidx64, align 8, !dbg !1240, !tbaa !238
  call void %54(ptr noundef %56), !dbg !1240
  br label %if.end65, !dbg !1240

if.end65:                                         ; preds = %if.then62, %if.end60
  store i32 1, ptr %diff, align 4, !dbg !1235, !tbaa !233
  br label %do.cond66, !dbg !1235

do.cond66:                                        ; preds = %if.end65
  br label %do.end67, !dbg !1235

do.end67:                                         ; preds = %do.cond66
  %arrayidx68 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 1, !dbg !1242
  %57 = load i32, ptr %arrayidx68, align 4, !dbg !1242, !tbaa !233
  %inc69 = add i32 %57, 1, !dbg !1242
  store i32 %inc69, ptr %arrayidx68, align 4, !dbg !1242, !tbaa !233
  %58 = load ptr, ptr %l.addr, align 8, !dbg !1242, !tbaa !238
  %arrayidx70 = getelementptr inbounds ptr, ptr %58, i64 1, !dbg !1242
  %59 = load ptr, ptr %arrayidx70, align 8, !dbg !1242, !tbaa !238
  %60 = load i32, ptr %size.addr, align 4, !dbg !1242, !tbaa !233
  %idx.ext71 = sext i32 %60 to i64, !dbg !1242
  %add.ptr72 = getelementptr inbounds i8, ptr %59, i64 %idx.ext71, !dbg !1242
  %61 = load ptr, ptr %l.addr, align 8, !dbg !1242, !tbaa !238
  %arrayidx73 = getelementptr inbounds ptr, ptr %61, i64 1, !dbg !1242
  store ptr %add.ptr72, ptr %arrayidx73, align 8, !dbg !1242, !tbaa !238
  br label %if.end74

if.end74:                                         ; preds = %do.end67, %do.end
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end
  br label %while.cond, !dbg !1181, !llvm.loop !1243

while.end:                                        ; preds = %land.end
  store i32 0, ptr %j, align 4, !dbg !1245, !tbaa !233
  br label %for.cond, !dbg !1247

for.cond:                                         ; preds = %for.inc, %while.end
  %62 = load i32, ptr %j, align 4, !dbg !1248, !tbaa !233
  %cmp76 = icmp slt i32 %62, 2, !dbg !1250
  br i1 %cmp76, label %for.body, label %for.end, !dbg !1251

for.body:                                         ; preds = %for.cond
  br label %while.cond78, !dbg !1252

while.cond78:                                     ; preds = %do.end104, %for.body
  %63 = load i32, ptr %j, align 4, !dbg !1254, !tbaa !233
  %idxprom = sext i32 %63 to i64, !dbg !1255
  %arrayidx79 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 %idxprom, !dbg !1255
  %64 = load i32, ptr %arrayidx79, align 4, !dbg !1255, !tbaa !233
  %conv80 = zext i32 %64 to i64, !dbg !1255
  %65 = load ptr, ptr %n.addr, align 8, !dbg !1256, !tbaa !238
  %66 = load i32, ptr %j, align 4, !dbg !1257, !tbaa !233
  %idxprom81 = sext i32 %66 to i64, !dbg !1256
  %arrayidx82 = getelementptr inbounds i64, ptr %65, i64 %idxprom81, !dbg !1256
  %67 = load i64, ptr %arrayidx82, align 8, !dbg !1256, !tbaa !509
  %cmp83 = icmp ult i64 %conv80, %67, !dbg !1258
  br i1 %cmp83, label %while.body85, label %while.end114, !dbg !1252

while.body85:                                     ; preds = %while.cond78
  br label %do.body86, !dbg !1259

do.body86:                                        ; preds = %while.body85
  %68 = load i32, ptr @header_done, align 4, !dbg !1261, !tbaa !233
  %cmp87 = icmp eq i32 %68, 0, !dbg !1261
  br i1 %cmp87, label %land.lhs.true89, label %if.end95, !dbg !1261

land.lhs.true89:                                  ; preds = %do.body86
  %69 = load i32, ptr @verbose, align 4, !dbg !1261, !tbaa !233
  %tobool90 = icmp ne i32 %69, 0, !dbg !1261
  br i1 %tobool90, label %if.then91, label %if.end95, !dbg !1264

if.then91:                                        ; preds = %land.lhs.true89
  %70 = load ptr, ptr %name.addr, align 8, !dbg !1265, !tbaa !238
  %arrayidx92 = getelementptr inbounds ptr, ptr %70, i64 0, !dbg !1265
  %71 = load ptr, ptr %arrayidx92, align 8, !dbg !1265, !tbaa !238
  %72 = load ptr, ptr %name.addr, align 8, !dbg !1265, !tbaa !238
  %arrayidx93 = getelementptr inbounds ptr, ptr %72, i64 1, !dbg !1265
  %73 = load ptr, ptr %arrayidx93, align 8, !dbg !1265, !tbaa !238
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef %71, ptr noundef %73), !dbg !1265
  store i32 1, ptr @header_done, align 4, !dbg !1265, !tbaa !233
  br label %if.end95, !dbg !1265

if.end95:                                         ; preds = %if.then91, %land.lhs.true89, %do.body86
  %74 = load i32, ptr @verbose, align 4, !dbg !1267, !tbaa !233
  %tobool96 = icmp ne i32 %74, 0, !dbg !1267
  br i1 %tobool96, label %if.then97, label %if.end102, !dbg !1264

if.then97:                                        ; preds = %if.end95
  %75 = load i32, ptr %j, align 4, !dbg !1269, !tbaa !233
  %tobool98 = icmp ne i32 %75, 0, !dbg !1269
  %76 = zext i1 %tobool98 to i64, !dbg !1269
  %cond = select i1 %tobool98, i32 43, i32 45, !dbg !1269
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %cond), !dbg !1269
  %77 = load ptr, ptr %print.addr, align 8, !dbg !1269, !tbaa !238
  %78 = load ptr, ptr %l.addr, align 8, !dbg !1269, !tbaa !238
  %79 = load i32, ptr %j, align 4, !dbg !1269, !tbaa !233
  %idxprom100 = sext i32 %79 to i64, !dbg !1269
  %arrayidx101 = getelementptr inbounds ptr, ptr %78, i64 %idxprom100, !dbg !1269
  %80 = load ptr, ptr %arrayidx101, align 8, !dbg !1269, !tbaa !238
  call void %77(ptr noundef %80), !dbg !1269
  br label %if.end102, !dbg !1269

if.end102:                                        ; preds = %if.then97, %if.end95
  store i32 1, ptr %diff, align 4, !dbg !1264, !tbaa !233
  br label %do.cond103, !dbg !1264

do.cond103:                                       ; preds = %if.end102
  br label %do.end104, !dbg !1264

do.end104:                                        ; preds = %do.cond103
  %81 = load i32, ptr %j, align 4, !dbg !1271, !tbaa !233
  %idxprom105 = sext i32 %81 to i64, !dbg !1271
  %arrayidx106 = getelementptr inbounds [2 x i32], ptr %i, i64 0, i64 %idxprom105, !dbg !1271
  %82 = load i32, ptr %arrayidx106, align 4, !dbg !1271, !tbaa !233
  %inc107 = add i32 %82, 1, !dbg !1271
  store i32 %inc107, ptr %arrayidx106, align 4, !dbg !1271, !tbaa !233
  %83 = load ptr, ptr %l.addr, align 8, !dbg !1271, !tbaa !238
  %84 = load i32, ptr %j, align 4, !dbg !1271, !tbaa !233
  %idxprom108 = sext i32 %84 to i64, !dbg !1271
  %arrayidx109 = getelementptr inbounds ptr, ptr %83, i64 %idxprom108, !dbg !1271
  %85 = load ptr, ptr %arrayidx109, align 8, !dbg !1271, !tbaa !238
  %86 = load i32, ptr %size.addr, align 4, !dbg !1271, !tbaa !233
  %idx.ext110 = sext i32 %86 to i64, !dbg !1271
  %add.ptr111 = getelementptr inbounds i8, ptr %85, i64 %idx.ext110, !dbg !1271
  %87 = load ptr, ptr %l.addr, align 8, !dbg !1271, !tbaa !238
  %88 = load i32, ptr %j, align 4, !dbg !1271, !tbaa !233
  %idxprom112 = sext i32 %88 to i64, !dbg !1271
  %arrayidx113 = getelementptr inbounds ptr, ptr %87, i64 %idxprom112, !dbg !1271
  store ptr %add.ptr111, ptr %arrayidx113, align 8, !dbg !1271, !tbaa !238
  br label %while.cond78, !dbg !1252, !llvm.loop !1272

while.end114:                                     ; preds = %while.cond78
  br label %for.inc, !dbg !1274

for.inc:                                          ; preds = %while.end114
  %89 = load i32, ptr %j, align 4, !dbg !1275, !tbaa !233
  %inc115 = add nsw i32 %89, 1, !dbg !1275
  store i32 %inc115, ptr %j, align 4, !dbg !1275, !tbaa !233
  br label %for.cond, !dbg !1276, !llvm.loop !1277

for.end:                                          ; preds = %for.cond
  %90 = load i32, ptr %diff, align 4, !dbg !1279, !tbaa !233
  call void @llvm.lifetime.end.p0(i64 4, ptr %diff) #10, !dbg !1280
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #10, !dbg !1280
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10, !dbg !1280
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !1280
  ret i32 %90, !dbg !1281
}

; Function Attrs: nounwind uwtable
define internal i32 @entry_paranoia_checks(ptr noundef %name, ptr noundef %p1, ptr noundef %p2) #0 !dbg !1282 {
entry:
  %name.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %e1 = alloca ptr, align 8
  %e2 = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1284, metadata !DIExpression()), !dbg !1290
  store ptr %p1, ptr %p1.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %p1.addr, metadata !1285, metadata !DIExpression()), !dbg !1291
  store ptr %p2, ptr %p2.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %p2.addr, metadata !1286, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 8, ptr %e1) #10, !dbg !1293
  tail call void @llvm.dbg.declare(metadata ptr %e1, metadata !1287, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.start.p0(i64 8, ptr %e2) #10, !dbg !1293
  tail call void @llvm.dbg.declare(metadata ptr %e2, metadata !1288, metadata !DIExpression()), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !1296
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1289, metadata !DIExpression()), !dbg !1297
  %0 = load ptr, ptr %p1.addr, align 8, !dbg !1298, !tbaa !238
  store ptr %0, ptr %e1, align 8, !dbg !1299, !tbaa !238
  %1 = load ptr, ptr %p2.addr, align 8, !dbg !1300, !tbaa !238
  store ptr %1, ptr %e2, align 8, !dbg !1301, !tbaa !238
  store i32 0, ptr %ret, align 4, !dbg !1302, !tbaa !233
  %2 = load ptr, ptr %name.addr, align 8, !dbg !1303, !tbaa !238
  %3 = load ptr, ptr %e1, align 8, !dbg !1305, !tbaa !238
  %4 = load ptr, ptr %e2, align 8, !dbg !1306, !tbaa !238
  %call = call i32 @ef_compare(ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !1307
  %cmp = icmp ne i32 %call, 0, !dbg !1308
  br i1 %cmp, label %if.then, label %if.end, !dbg !1309

if.then:                                          ; preds = %entry
  store i32 1, ptr %ret, align 4, !dbg !1310, !tbaa !233
  br label %if.end, !dbg !1311

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %e1, align 8, !dbg !1312, !tbaa !238
  %comp_method = getelementptr inbounds %struct.entry, ptr %5, i32 0, i32 3, !dbg !1314
  %6 = load i32, ptr %comp_method, align 4, !dbg !1314, !tbaa !1006
  %7 = load ptr, ptr %e2, align 8, !dbg !1315, !tbaa !238
  %comp_method1 = getelementptr inbounds %struct.entry, ptr %7, i32 0, i32 3, !dbg !1316
  %8 = load i32, ptr %comp_method1, align 4, !dbg !1316, !tbaa !1006
  %cmp2 = icmp ne i32 %6, %8, !dbg !1317
  br i1 %cmp2, label %if.then3, label %if.end19, !dbg !1318

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr @verbose, align 4, !dbg !1319, !tbaa !233
  %tobool = icmp ne i32 %9, 0, !dbg !1319
  br i1 %tobool, label %if.then4, label %if.end18, !dbg !1322

if.then4:                                         ; preds = %if.then3
  %10 = load i32, ptr @header_done, align 4, !dbg !1323, !tbaa !233
  %cmp5 = icmp eq i32 %10, 0, !dbg !1326
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !1327

if.then6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %name.addr, align 8, !dbg !1328, !tbaa !238
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !1328
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !1328, !tbaa !238
  %13 = load ptr, ptr %name.addr, align 8, !dbg !1330, !tbaa !238
  %arrayidx7 = getelementptr inbounds ptr, ptr %13, i64 1, !dbg !1330
  %14 = load ptr, ptr %arrayidx7, align 8, !dbg !1330, !tbaa !238
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef %12, ptr noundef %14), !dbg !1331
  store i32 1, ptr @header_done, align 4, !dbg !1332, !tbaa !233
  br label %if.end9, !dbg !1333

if.end9:                                          ; preds = %if.then6, %if.then4
  %15 = load ptr, ptr %e1, align 8, !dbg !1334, !tbaa !238
  %name10 = getelementptr inbounds %struct.entry, ptr %15, i32 0, i32 0, !dbg !1335
  %16 = load ptr, ptr %name10, align 8, !dbg !1335, !tbaa !795
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, ptr noundef %16), !dbg !1336
  %17 = load ptr, ptr %e1, align 8, !dbg !1337, !tbaa !238
  %comp_method12 = getelementptr inbounds %struct.entry, ptr %17, i32 0, i32 3, !dbg !1338
  %18 = load i32, ptr %comp_method12, align 4, !dbg !1338, !tbaa !1006
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %18), !dbg !1339
  %19 = load ptr, ptr %e1, align 8, !dbg !1340, !tbaa !238
  %name14 = getelementptr inbounds %struct.entry, ptr %19, i32 0, i32 0, !dbg !1341
  %20 = load ptr, ptr %name14, align 8, !dbg !1341, !tbaa !795
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, ptr noundef %20), !dbg !1342
  %21 = load ptr, ptr %e2, align 8, !dbg !1343, !tbaa !238
  %comp_method16 = getelementptr inbounds %struct.entry, ptr %21, i32 0, i32 3, !dbg !1344
  %22 = load i32, ptr %comp_method16, align 4, !dbg !1344, !tbaa !1006
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %22), !dbg !1345
  br label %if.end18, !dbg !1346

if.end18:                                         ; preds = %if.end9, %if.then3
  store i32 1, ptr %ret, align 4, !dbg !1347, !tbaa !233
  br label %if.end19, !dbg !1348

if.end19:                                         ; preds = %if.end18, %if.end
  %23 = load ptr, ptr %e1, align 8, !dbg !1349, !tbaa !238
  %comment = getelementptr inbounds %struct.entry, ptr %23, i32 0, i32 6, !dbg !1351
  %24 = load ptr, ptr %comment, align 8, !dbg !1351, !tbaa !1026
  %25 = load ptr, ptr %e1, align 8, !dbg !1352, !tbaa !238
  %comment_length = getelementptr inbounds %struct.entry, ptr %25, i32 0, i32 7, !dbg !1353
  %26 = load i32, ptr %comment_length, align 8, !dbg !1353, !tbaa !1354
  %conv = zext i32 %26 to i64, !dbg !1352
  %27 = load ptr, ptr %e2, align 8, !dbg !1355, !tbaa !238
  %comment20 = getelementptr inbounds %struct.entry, ptr %27, i32 0, i32 6, !dbg !1356
  %28 = load ptr, ptr %comment20, align 8, !dbg !1356, !tbaa !1026
  %29 = load ptr, ptr %e2, align 8, !dbg !1357, !tbaa !238
  %comment_length21 = getelementptr inbounds %struct.entry, ptr %29, i32 0, i32 7, !dbg !1358
  %30 = load i32, ptr %comment_length21, align 8, !dbg !1358, !tbaa !1354
  %conv22 = zext i32 %30 to i64, !dbg !1357
  %call23 = call i32 @comment_compare(ptr noundef %24, i64 noundef %conv, ptr noundef %28, i64 noundef %conv22), !dbg !1359
  %cmp24 = icmp ne i32 %call23, 0, !dbg !1360
  br i1 %cmp24, label %if.then26, label %if.end45, !dbg !1361

if.then26:                                        ; preds = %if.end19
  %31 = load i32, ptr @verbose, align 4, !dbg !1362, !tbaa !233
  %tobool27 = icmp ne i32 %31, 0, !dbg !1362
  br i1 %tobool27, label %if.then28, label %if.end44, !dbg !1365

if.then28:                                        ; preds = %if.then26
  %32 = load i32, ptr @header_done, align 4, !dbg !1366, !tbaa !233
  %cmp29 = icmp eq i32 %32, 0, !dbg !1369
  br i1 %cmp29, label %if.then31, label %if.end35, !dbg !1370

if.then31:                                        ; preds = %if.then28
  %33 = load ptr, ptr %name.addr, align 8, !dbg !1371, !tbaa !238
  %arrayidx32 = getelementptr inbounds ptr, ptr %33, i64 0, !dbg !1371
  %34 = load ptr, ptr %arrayidx32, align 8, !dbg !1371, !tbaa !238
  %35 = load ptr, ptr %name.addr, align 8, !dbg !1373, !tbaa !238
  %arrayidx33 = getelementptr inbounds ptr, ptr %35, i64 1, !dbg !1373
  %36 = load ptr, ptr %arrayidx33, align 8, !dbg !1373, !tbaa !238
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef %34, ptr noundef %36), !dbg !1374
  store i32 1, ptr @header_done, align 4, !dbg !1375, !tbaa !233
  br label %if.end35, !dbg !1376

if.end35:                                         ; preds = %if.then31, %if.then28
  %37 = load ptr, ptr %e1, align 8, !dbg !1377, !tbaa !238
  %name36 = getelementptr inbounds %struct.entry, ptr %37, i32 0, i32 0, !dbg !1378
  %38 = load ptr, ptr %name36, align 8, !dbg !1378, !tbaa !795
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, ptr noundef %38), !dbg !1379
  %39 = load ptr, ptr %e1, align 8, !dbg !1380, !tbaa !238
  %comment_length38 = getelementptr inbounds %struct.entry, ptr %39, i32 0, i32 7, !dbg !1381
  %40 = load i32, ptr %comment_length38, align 8, !dbg !1381, !tbaa !1354
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %40), !dbg !1382
  %41 = load ptr, ptr %e1, align 8, !dbg !1383, !tbaa !238
  %name40 = getelementptr inbounds %struct.entry, ptr %41, i32 0, i32 0, !dbg !1384
  %42 = load ptr, ptr %name40, align 8, !dbg !1384, !tbaa !795
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, ptr noundef %42), !dbg !1385
  %43 = load ptr, ptr %e2, align 8, !dbg !1386, !tbaa !238
  %comment_length42 = getelementptr inbounds %struct.entry, ptr %43, i32 0, i32 7, !dbg !1387
  %44 = load i32, ptr %comment_length42, align 8, !dbg !1387, !tbaa !1354
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %44), !dbg !1388
  br label %if.end44, !dbg !1389

if.end44:                                         ; preds = %if.end35, %if.then26
  store i32 1, ptr %ret, align 4, !dbg !1390, !tbaa !233
  br label %if.end45, !dbg !1391

if.end45:                                         ; preds = %if.end44, %if.end19
  %45 = load i32, ptr %ret, align 4, !dbg !1392, !tbaa !233
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %e2) #10, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %e1) #10, !dbg !1393
  ret i32 %45, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal void @entry_print(ptr noundef %p) #0 !dbg !1395 {
entry:
  %p.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1397, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #10, !dbg !1400
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !1398, metadata !DIExpression()), !dbg !1401
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1402, !tbaa !238
  store ptr %0, ptr %e, align 8, !dbg !1403, !tbaa !238
  %1 = load ptr, ptr %e, align 8, !dbg !1404, !tbaa !238
  %size = getelementptr inbounds %struct.entry, ptr %1, i32 0, i32 1, !dbg !1405
  %2 = load i64, ptr %size, align 8, !dbg !1405, !tbaa !808
  %3 = load ptr, ptr %e, align 8, !dbg !1406, !tbaa !238
  %crc = getelementptr inbounds %struct.entry, ptr %3, i32 0, i32 2, !dbg !1407
  %4 = load i32, ptr %crc, align 8, !dbg !1407, !tbaa !829
  %5 = load ptr, ptr %e, align 8, !dbg !1408, !tbaa !238
  %name = getelementptr inbounds %struct.entry, ptr %5, i32 0, i32 0, !dbg !1409
  %6 = load ptr, ptr %name, align 8, !dbg !1409, !tbaa !795
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.27, i64 noundef %2, i32 noundef %4, ptr noundef %6), !dbg !1410
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #10, !dbg !1411
  ret void, !dbg !1411
}

; Function Attrs: nounwind uwtable
define internal i32 @comment_compare(ptr noundef %c1, i64 noundef %l1, ptr noundef %c2, i64 noundef %l2) #0 !dbg !1412 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca ptr, align 8
  %l1.addr = alloca i64, align 8
  %c2.addr = alloca ptr, align 8
  %l2.addr = alloca i64, align 8
  store ptr %c1, ptr %c1.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %c1.addr, metadata !1416, metadata !DIExpression()), !dbg !1420
  store i64 %l1, ptr %l1.addr, align 8, !tbaa !509
  tail call void @llvm.dbg.declare(metadata ptr %l1.addr, metadata !1417, metadata !DIExpression()), !dbg !1421
  store ptr %c2, ptr %c2.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %c2.addr, metadata !1418, metadata !DIExpression()), !dbg !1422
  store i64 %l2, ptr %l2.addr, align 8, !tbaa !509
  tail call void @llvm.dbg.declare(metadata ptr %l2.addr, metadata !1419, metadata !DIExpression()), !dbg !1423
  %0 = load i64, ptr %l1.addr, align 8, !dbg !1424, !tbaa !509
  %1 = load i64, ptr %l2.addr, align 8, !dbg !1426, !tbaa !509
  %cmp = icmp ne i64 %0, %1, !dbg !1427
  br i1 %cmp, label %if.then, label %if.end, !dbg !1428

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1429
  br label %return, !dbg !1429

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %l1.addr, align 8, !dbg !1430, !tbaa !509
  %cmp1 = icmp eq i64 %2, 0, !dbg !1432
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1433

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1434
  br label %return, !dbg !1434

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %c1.addr, align 8, !dbg !1435, !tbaa !238
  %cmp4 = icmp eq ptr %3, null, !dbg !1437
  br i1 %cmp4, label %if.then6, label %lor.lhs.false, !dbg !1438

lor.lhs.false:                                    ; preds = %if.end3
  %4 = load ptr, ptr %c2.addr, align 8, !dbg !1439, !tbaa !238
  %cmp5 = icmp eq ptr %4, null, !dbg !1440
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !1441

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  %5 = load ptr, ptr %c1.addr, align 8, !dbg !1442, !tbaa !238
  %6 = load ptr, ptr %c2.addr, align 8, !dbg !1443, !tbaa !238
  %cmp7 = icmp eq ptr %5, %6, !dbg !1444
  %conv = zext i1 %cmp7 to i32, !dbg !1444
  store i32 %conv, ptr %retval, align 4, !dbg !1445
  br label %return, !dbg !1445

if.end8:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %c1.addr, align 8, !dbg !1446, !tbaa !238
  %8 = load ptr, ptr %c2.addr, align 8, !dbg !1447, !tbaa !238
  %9 = load i64, ptr %l2.addr, align 8, !dbg !1448, !tbaa !509
  %call = call i32 @memcmp(ptr noundef %7, ptr noundef %8, i64 noundef %9) #13, !dbg !1449
  store i32 %call, ptr %retval, align 4, !dbg !1450
  br label %return, !dbg !1450

return:                                           ; preds = %if.end8, %if.then6, %if.then2, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !1451
  ret i32 %10, !dbg !1451
}

declare !dbg !1452 i32 @zip_close(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !1455 i32 @stat(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1459 ptr @fts_open(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !1468 ptr @strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1472 ptr @__errno_location() #5

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1477 i64 @strlen(ptr noundef) #6

declare !dbg !1480 ptr @fts_read(ptr noundef) #3

declare !dbg !1483 i32 @fts_close(ptr noundef) #3

; Function Attrs: nounwind allocsize(1)
declare !dbg !1486 ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
declare !dbg !1489 noalias ptr @strdup(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @compute_crc(ptr noundef %fname) #0 !dbg !1492 {
entry:
  %retval = alloca i64, align 8
  %fname.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %crc = alloca i64, align 8
  %n = alloca i64, align 8
  %buffer = alloca [8192 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fname, ptr %fname.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %fname.addr, metadata !1496, metadata !DIExpression()), !dbg !1505
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #10, !dbg !1506
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !1497, metadata !DIExpression()), !dbg !1507
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #10, !dbg !1508
  tail call void @llvm.dbg.declare(metadata ptr %crc, metadata !1498, metadata !DIExpression()), !dbg !1509
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0), !dbg !1510
  store i64 %call, ptr %crc, align 8, !dbg !1509, !tbaa !509
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !1511
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1500, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 8192, ptr %buffer) #10, !dbg !1513
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1501, metadata !DIExpression()), !dbg !1514
  %0 = load ptr, ptr %fname.addr, align 8, !dbg !1515, !tbaa !238
  %call1 = call noalias ptr @fopen(ptr noundef %0, ptr noundef @.str.7), !dbg !1517
  store ptr %call1, ptr %f, align 8, !dbg !1518, !tbaa !238
  %cmp = icmp eq ptr %call1, null, !dbg !1519
  br i1 %cmp, label %if.then, label %if.end, !dbg !1520

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !1521, !tbaa !238
  %2 = load ptr, ptr @prg, align 8, !dbg !1523, !tbaa !238
  %3 = load ptr, ptr %fname.addr, align 8, !dbg !1524, !tbaa !238
  %call2 = call ptr @__errno_location() #12, !dbg !1525
  %4 = load i32, ptr %call2, align 4, !dbg !1525, !tbaa !233
  %call3 = call ptr @strerror(i32 noundef %4) #10, !dbg !1526
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.8, ptr noundef %2, ptr noundef %3, ptr noundef %call3), !dbg !1527
  store i64 -1, ptr %retval, align 8, !dbg !1528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1528

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1529

while.cond:                                       ; preds = %while.body, %if.end
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0, !dbg !1530
  %5 = load ptr, ptr %f, align 8, !dbg !1531, !tbaa !238
  %call5 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 8192, ptr noundef %5), !dbg !1532
  store i64 %call5, ptr %n, align 8, !dbg !1533, !tbaa !509
  %cmp6 = icmp ugt i64 %call5, 0, !dbg !1534
  br i1 %cmp6, label %while.body, label %while.end, !dbg !1529

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %crc, align 8, !dbg !1535, !tbaa !509
  %arraydecay7 = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0, !dbg !1537
  %7 = load i64, ptr %n, align 8, !dbg !1538, !tbaa !509
  %conv = trunc i64 %7 to i32, !dbg !1539
  %call8 = call i64 @crc32(i64 noundef %6, ptr noundef %arraydecay7, i32 noundef %conv), !dbg !1540
  store i64 %call8, ptr %crc, align 8, !dbg !1541, !tbaa !509
  br label %while.cond, !dbg !1529, !llvm.loop !1542

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %f, align 8, !dbg !1544, !tbaa !238
  %call9 = call i32 @ferror(ptr noundef %8) #10, !dbg !1546
  %tobool = icmp ne i32 %call9, 0, !dbg !1546
  br i1 %tobool, label %if.then10, label %if.end15, !dbg !1547

if.then10:                                        ; preds = %while.end
  %9 = load ptr, ptr @stderr, align 8, !dbg !1548, !tbaa !238
  %10 = load ptr, ptr @prg, align 8, !dbg !1550, !tbaa !238
  %11 = load ptr, ptr %fname.addr, align 8, !dbg !1551, !tbaa !238
  %call11 = call ptr @__errno_location() #12, !dbg !1552
  %12 = load i32, ptr %call11, align 4, !dbg !1552, !tbaa !233
  %call12 = call ptr @strerror(i32 noundef %12) #10, !dbg !1553
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.9, ptr noundef %10, ptr noundef %11, ptr noundef %call12), !dbg !1554
  %13 = load ptr, ptr %f, align 8, !dbg !1555, !tbaa !238
  %call14 = call i32 @fclose(ptr noundef %13), !dbg !1556
  store i64 -1, ptr %retval, align 8, !dbg !1557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1557

if.end15:                                         ; preds = %while.end
  %14 = load ptr, ptr %f, align 8, !dbg !1558, !tbaa !238
  %call16 = call i32 @fclose(ptr noundef %14), !dbg !1559
  %15 = load i64, ptr %crc, align 8, !dbg !1560, !tbaa !509
  store i64 %15, ptr %retval, align 8, !dbg !1561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1561

cleanup:                                          ; preds = %if.end15, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8192, ptr %buffer) #10, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #10, !dbg !1562
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #10, !dbg !1562
  %16 = load i64, ptr %retval, align 8, !dbg !1562
  ret i64 %16, !dbg !1562
}

declare !dbg !1563 i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #3

declare !dbg !1569 noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare !dbg !1572 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !1576 i32 @ferror(ptr noundef) #2

declare !dbg !1579 i32 @fclose(ptr noundef) #3

declare !dbg !1580 ptr @zip_open(ptr noundef, i32 noundef, ptr noundef) #3

declare !dbg !1583 void @zip_error_init_with_code(ptr noundef, i32 noundef) #3

declare !dbg !1587 ptr @zip_error_strerror(ptr noundef) #3

declare !dbg !1590 void @zip_error_fini(ptr noundef) #3

declare !dbg !1593 i64 @zip_get_num_entries(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind allocsize(0)
declare !dbg !1597 noalias ptr @malloc(i64 noundef) #8

declare !dbg !1600 i32 @zip_stat_index(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @test_file(ptr noundef %za, i64 noundef %idx, i64 noundef %size, i32 noundef %crc) #0 !dbg !1605 {
entry:
  %retval = alloca i32, align 4
  %za.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %crc.addr = alloca i32, align 4
  %zf = alloca ptr, align 8
  %buf = alloca [8192 x i8], align 16
  %nsize = alloca i64, align 8
  %n = alloca i64, align 8
  %ncrc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %za, ptr %za.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %za.addr, metadata !1609, metadata !DIExpression()), !dbg !1622
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !509
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1610, metadata !DIExpression()), !dbg !1623
  store i64 %size, ptr %size.addr, align 8, !tbaa !509
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1611, metadata !DIExpression()), !dbg !1624
  store i32 %crc, ptr %crc.addr, align 4, !tbaa !233
  tail call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !1612, metadata !DIExpression()), !dbg !1625
  call void @llvm.lifetime.start.p0(i64 8, ptr %zf) #10, !dbg !1626
  tail call void @llvm.dbg.declare(metadata ptr %zf, metadata !1613, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.start.p0(i64 8192, ptr %buf) #10, !dbg !1628
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1617, metadata !DIExpression()), !dbg !1629
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsize) #10, !dbg !1630
  tail call void @llvm.dbg.declare(metadata ptr %nsize, metadata !1619, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #10, !dbg !1632
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1620, metadata !DIExpression()), !dbg !1633
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncrc) #10, !dbg !1634
  tail call void @llvm.dbg.declare(metadata ptr %ncrc, metadata !1621, metadata !DIExpression()), !dbg !1635
  %0 = load ptr, ptr %za.addr, align 8, !dbg !1636, !tbaa !238
  %1 = load i64, ptr %idx.addr, align 8, !dbg !1638, !tbaa !509
  %call = call ptr @zip_fopen_index(ptr noundef %0, i64 noundef %1, i32 noundef 0), !dbg !1639
  store ptr %call, ptr %zf, align 8, !dbg !1640, !tbaa !238
  %cmp = icmp eq ptr %call, null, !dbg !1641
  br i1 %cmp, label %if.then, label %if.end, !dbg !1642

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !1643, !tbaa !238
  %3 = load ptr, ptr @prg, align 8, !dbg !1645, !tbaa !238
  %4 = load i64, ptr %idx.addr, align 8, !dbg !1646, !tbaa !509
  %5 = load ptr, ptr %za.addr, align 8, !dbg !1647, !tbaa !238
  %call1 = call ptr @zip_strerror(ptr noundef %5), !dbg !1648
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.11, ptr noundef %3, i64 noundef %4, ptr noundef %call1), !dbg !1649
  store i32 -1, ptr %retval, align 4, !dbg !1650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1650

if.end:                                           ; preds = %entry
  %call3 = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0), !dbg !1651
  %conv = trunc i64 %call3 to i32, !dbg !1652
  store i32 %conv, ptr %ncrc, align 4, !dbg !1653, !tbaa !233
  store i64 0, ptr %nsize, align 8, !dbg !1654, !tbaa !509
  br label %while.cond, !dbg !1655

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load ptr, ptr %zf, align 8, !dbg !1656, !tbaa !238
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0, !dbg !1657
  %call4 = call i64 @zip_fread(ptr noundef %6, ptr noundef %arraydecay, i64 noundef 8192), !dbg !1658
  store i64 %call4, ptr %n, align 8, !dbg !1659, !tbaa !509
  %cmp5 = icmp sgt i64 %call4, 0, !dbg !1660
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1655

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %n, align 8, !dbg !1661, !tbaa !509
  %8 = load i64, ptr %nsize, align 8, !dbg !1663, !tbaa !509
  %add = add i64 %8, %7, !dbg !1663
  store i64 %add, ptr %nsize, align 8, !dbg !1663, !tbaa !509
  %9 = load i32, ptr %ncrc, align 4, !dbg !1664, !tbaa !233
  %conv7 = zext i32 %9 to i64, !dbg !1664
  %arraydecay8 = getelementptr inbounds [8192 x i8], ptr %buf, i64 0, i64 0, !dbg !1665
  %10 = load i64, ptr %n, align 8, !dbg !1666, !tbaa !509
  %conv9 = trunc i64 %10 to i32, !dbg !1667
  %call10 = call i64 @crc32(i64 noundef %conv7, ptr noundef %arraydecay8, i32 noundef %conv9), !dbg !1668
  %conv11 = trunc i64 %call10 to i32, !dbg !1669
  store i32 %conv11, ptr %ncrc, align 4, !dbg !1670, !tbaa !233
  br label %while.cond, !dbg !1655, !llvm.loop !1671

while.end:                                        ; preds = %while.cond
  %11 = load i64, ptr %n, align 8, !dbg !1673, !tbaa !509
  %cmp12 = icmp slt i64 %11, 0, !dbg !1675
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !1676

if.then14:                                        ; preds = %while.end
  %12 = load ptr, ptr @stderr, align 8, !dbg !1677, !tbaa !238
  %13 = load ptr, ptr @prg, align 8, !dbg !1679, !tbaa !238
  %14 = load i64, ptr %idx.addr, align 8, !dbg !1680, !tbaa !509
  %15 = load ptr, ptr %zf, align 8, !dbg !1681, !tbaa !238
  %call15 = call ptr @zip_file_strerror(ptr noundef %15), !dbg !1682
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.12, ptr noundef %13, i64 noundef %14, ptr noundef %call15), !dbg !1683
  %16 = load ptr, ptr %zf, align 8, !dbg !1684, !tbaa !238
  %call17 = call i32 @zip_fclose(ptr noundef %16), !dbg !1685
  store i32 -1, ptr %retval, align 4, !dbg !1686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1686

if.end18:                                         ; preds = %while.end
  %17 = load ptr, ptr %zf, align 8, !dbg !1687, !tbaa !238
  %call19 = call i32 @zip_fclose(ptr noundef %17), !dbg !1688
  %18 = load i64, ptr %nsize, align 8, !dbg !1689, !tbaa !509
  %19 = load i64, ptr %size.addr, align 8, !dbg !1691, !tbaa !509
  %cmp20 = icmp ne i64 %18, %19, !dbg !1692
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !1693

if.then22:                                        ; preds = %if.end18
  %20 = load ptr, ptr @stderr, align 8, !dbg !1694, !tbaa !238
  %21 = load ptr, ptr @prg, align 8, !dbg !1696, !tbaa !238
  %22 = load i64, ptr %idx.addr, align 8, !dbg !1697, !tbaa !509
  %23 = load i64, ptr %nsize, align 8, !dbg !1698, !tbaa !509
  %24 = load i64, ptr %size.addr, align 8, !dbg !1699, !tbaa !509
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.13, ptr noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24), !dbg !1700
  store i32 -2, ptr %retval, align 4, !dbg !1701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1701

if.end24:                                         ; preds = %if.end18
  %25 = load i32, ptr %ncrc, align 4, !dbg !1702, !tbaa !233
  %26 = load i32, ptr %crc.addr, align 4, !dbg !1704, !tbaa !233
  %cmp25 = icmp ne i32 %25, %26, !dbg !1705
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !1706

if.then27:                                        ; preds = %if.end24
  %27 = load ptr, ptr @stderr, align 8, !dbg !1707, !tbaa !238
  %28 = load ptr, ptr @prg, align 8, !dbg !1709, !tbaa !238
  %29 = load i64, ptr %idx.addr, align 8, !dbg !1710, !tbaa !509
  %30 = load i32, ptr %ncrc, align 4, !dbg !1711, !tbaa !233
  %31 = load i32, ptr %crc.addr, align 4, !dbg !1712, !tbaa !233
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.14, ptr noundef %28, i64 noundef %29, i32 noundef %30, i32 noundef %31), !dbg !1713
  store i32 -2, ptr %retval, align 4, !dbg !1714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1714

if.end29:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4, !dbg !1715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1715

cleanup:                                          ; preds = %if.end29, %if.then27, %if.then22, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncrc) #10, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #10, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsize) #10, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8192, ptr %buf) #10, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr %zf) #10, !dbg !1716
  %32 = load i32, ptr %retval, align 4, !dbg !1716
  ret i32 %32, !dbg !1716
}

; Function Attrs: nounwind uwtable
define internal i32 @ef_read(ptr noundef %za, i64 noundef %idx, ptr noundef %e) #0 !dbg !1717 {
entry:
  %retval = alloca i32, align 4
  %za.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %e.addr = alloca ptr, align 8
  %n_local = alloca i16, align 2
  %n_central = alloca i16, align 2
  %i = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %za, ptr %za.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %za.addr, metadata !1721, metadata !DIExpression()), !dbg !1730
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !509
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1722, metadata !DIExpression()), !dbg !1731
  store ptr %e, ptr %e.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1723, metadata !DIExpression()), !dbg !1732
  call void @llvm.lifetime.start.p0(i64 2, ptr %n_local) #10, !dbg !1733
  tail call void @llvm.dbg.declare(metadata ptr %n_local, metadata !1724, metadata !DIExpression()), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 2, ptr %n_central) #10, !dbg !1733
  tail call void @llvm.dbg.declare(metadata ptr %n_central, metadata !1728, metadata !DIExpression()), !dbg !1735
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #10, !dbg !1736
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1729, metadata !DIExpression()), !dbg !1737
  %0 = load ptr, ptr %za.addr, align 8, !dbg !1738, !tbaa !238
  %1 = load i64, ptr %idx.addr, align 8, !dbg !1740, !tbaa !509
  %call = call signext i16 @zip_file_extra_fields_count(ptr noundef %0, i64 noundef %1, i32 noundef 256), !dbg !1741
  store i16 %call, ptr %n_local, align 2, !dbg !1742, !tbaa !1743
  %conv = sext i16 %call to i32, !dbg !1744
  %cmp = icmp slt i32 %conv, 0, !dbg !1745
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1746

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %za.addr, align 8, !dbg !1747, !tbaa !238
  %3 = load i64, ptr %idx.addr, align 8, !dbg !1748, !tbaa !509
  %call2 = call signext i16 @zip_file_extra_fields_count(ptr noundef %2, i64 noundef %3, i32 noundef 512), !dbg !1749
  store i16 %call2, ptr %n_central, align 2, !dbg !1750, !tbaa !1743
  %conv3 = sext i16 %call2 to i32, !dbg !1751
  %cmp4 = icmp slt i32 %conv3, 0, !dbg !1752
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1753

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !1754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1754

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i16, ptr %n_local, align 2, !dbg !1756, !tbaa !1743
  %conv6 = sext i16 %4 to i32, !dbg !1756
  %5 = load i16, ptr %n_central, align 2, !dbg !1757, !tbaa !1743
  %conv7 = sext i16 %5 to i32, !dbg !1757
  %add = add nsw i32 %conv6, %conv7, !dbg !1758
  %conv8 = trunc i32 %add to i16, !dbg !1759
  %6 = load ptr, ptr %e.addr, align 8, !dbg !1760, !tbaa !238
  %n_extra_fields = getelementptr inbounds %struct.entry, ptr %6, i32 0, i32 5, !dbg !1761
  store i16 %conv8, ptr %n_extra_fields, align 8, !dbg !1762, !tbaa !1039
  %7 = load ptr, ptr %e.addr, align 8, !dbg !1763, !tbaa !238
  %n_extra_fields9 = getelementptr inbounds %struct.entry, ptr %7, i32 0, i32 5, !dbg !1765
  %8 = load i16, ptr %n_extra_fields9, align 8, !dbg !1765, !tbaa !1039
  %conv10 = zext i16 %8 to i64, !dbg !1763
  %mul = mul i64 24, %conv10, !dbg !1766
  %call11 = call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !1767
  %9 = load ptr, ptr %e.addr, align 8, !dbg !1768, !tbaa !238
  %extra_fields = getelementptr inbounds %struct.entry, ptr %9, i32 0, i32 4, !dbg !1769
  store ptr %call11, ptr %extra_fields, align 8, !dbg !1770, !tbaa !1771
  %cmp12 = icmp eq ptr %call11, null, !dbg !1772
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !1773

if.then14:                                        ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1774

if.end15:                                         ; preds = %if.end
  store i16 0, ptr %i, align 2, !dbg !1775, !tbaa !1743
  br label %for.cond, !dbg !1777

for.cond:                                         ; preds = %for.inc, %if.end15
  %10 = load i16, ptr %i, align 2, !dbg !1778, !tbaa !1743
  %conv16 = zext i16 %10 to i32, !dbg !1778
  %11 = load i16, ptr %n_local, align 2, !dbg !1780, !tbaa !1743
  %conv17 = sext i16 %11 to i32, !dbg !1780
  %cmp18 = icmp slt i32 %conv16, %conv17, !dbg !1781
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1782

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %e.addr, align 8, !dbg !1783, !tbaa !238
  %name = getelementptr inbounds %struct.entry, ptr %12, i32 0, i32 0, !dbg !1785
  %13 = load ptr, ptr %name, align 8, !dbg !1785, !tbaa !795
  %14 = load ptr, ptr %e.addr, align 8, !dbg !1786, !tbaa !238
  %extra_fields20 = getelementptr inbounds %struct.entry, ptr %14, i32 0, i32 4, !dbg !1787
  %15 = load ptr, ptr %extra_fields20, align 8, !dbg !1787, !tbaa !1771
  %16 = load i16, ptr %i, align 2, !dbg !1788, !tbaa !1743
  %idxprom = zext i16 %16 to i64, !dbg !1786
  %arrayidx = getelementptr inbounds %struct.ef, ptr %15, i64 %idxprom, !dbg !1786
  %name21 = getelementptr inbounds %struct.ef, ptr %arrayidx, i32 0, i32 0, !dbg !1789
  store ptr %13, ptr %name21, align 8, !dbg !1790, !tbaa !1791
  %17 = load ptr, ptr %za.addr, align 8, !dbg !1793, !tbaa !238
  %18 = load i64, ptr %idx.addr, align 8, !dbg !1794, !tbaa !509
  %19 = load i16, ptr %i, align 2, !dbg !1795, !tbaa !1743
  %20 = load ptr, ptr %e.addr, align 8, !dbg !1796, !tbaa !238
  %extra_fields22 = getelementptr inbounds %struct.entry, ptr %20, i32 0, i32 4, !dbg !1797
  %21 = load ptr, ptr %extra_fields22, align 8, !dbg !1797, !tbaa !1771
  %22 = load i16, ptr %i, align 2, !dbg !1798, !tbaa !1743
  %idxprom23 = zext i16 %22 to i64, !dbg !1796
  %arrayidx24 = getelementptr inbounds %struct.ef, ptr %21, i64 %idxprom23, !dbg !1796
  %id = getelementptr inbounds %struct.ef, ptr %arrayidx24, i32 0, i32 2, !dbg !1799
  %23 = load ptr, ptr %e.addr, align 8, !dbg !1800, !tbaa !238
  %extra_fields25 = getelementptr inbounds %struct.entry, ptr %23, i32 0, i32 4, !dbg !1801
  %24 = load ptr, ptr %extra_fields25, align 8, !dbg !1801, !tbaa !1771
  %25 = load i16, ptr %i, align 2, !dbg !1802, !tbaa !1743
  %idxprom26 = zext i16 %25 to i64, !dbg !1800
  %arrayidx27 = getelementptr inbounds %struct.ef, ptr %24, i64 %idxprom26, !dbg !1800
  %size = getelementptr inbounds %struct.ef, ptr %arrayidx27, i32 0, i32 3, !dbg !1803
  %call28 = call ptr @zip_file_extra_field_get(ptr noundef %17, i64 noundef %18, i16 noundef zeroext %19, ptr noundef %id, ptr noundef %size, i32 noundef 256), !dbg !1804
  %26 = load ptr, ptr %e.addr, align 8, !dbg !1805, !tbaa !238
  %extra_fields29 = getelementptr inbounds %struct.entry, ptr %26, i32 0, i32 4, !dbg !1806
  %27 = load ptr, ptr %extra_fields29, align 8, !dbg !1806, !tbaa !1771
  %28 = load i16, ptr %i, align 2, !dbg !1807, !tbaa !1743
  %idxprom30 = zext i16 %28 to i64, !dbg !1805
  %arrayidx31 = getelementptr inbounds %struct.ef, ptr %27, i64 %idxprom30, !dbg !1805
  %data = getelementptr inbounds %struct.ef, ptr %arrayidx31, i32 0, i32 4, !dbg !1808
  store ptr %call28, ptr %data, align 8, !dbg !1809, !tbaa !1810
  %29 = load ptr, ptr %e.addr, align 8, !dbg !1811, !tbaa !238
  %extra_fields32 = getelementptr inbounds %struct.entry, ptr %29, i32 0, i32 4, !dbg !1813
  %30 = load ptr, ptr %extra_fields32, align 8, !dbg !1813, !tbaa !1771
  %31 = load i16, ptr %i, align 2, !dbg !1814, !tbaa !1743
  %idxprom33 = zext i16 %31 to i64, !dbg !1811
  %arrayidx34 = getelementptr inbounds %struct.ef, ptr %30, i64 %idxprom33, !dbg !1811
  %data35 = getelementptr inbounds %struct.ef, ptr %arrayidx34, i32 0, i32 4, !dbg !1815
  %32 = load ptr, ptr %data35, align 8, !dbg !1815, !tbaa !1810
  %cmp36 = icmp eq ptr %32, null, !dbg !1816
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1817

if.then38:                                        ; preds = %for.body
  store i32 -1, ptr %retval, align 4, !dbg !1818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1818

if.end39:                                         ; preds = %for.body
  %33 = load ptr, ptr %e.addr, align 8, !dbg !1819, !tbaa !238
  %extra_fields40 = getelementptr inbounds %struct.entry, ptr %33, i32 0, i32 4, !dbg !1820
  %34 = load ptr, ptr %extra_fields40, align 8, !dbg !1820, !tbaa !1771
  %35 = load i16, ptr %i, align 2, !dbg !1821, !tbaa !1743
  %idxprom41 = zext i16 %35 to i64, !dbg !1819
  %arrayidx42 = getelementptr inbounds %struct.ef, ptr %34, i64 %idxprom41, !dbg !1819
  %flags = getelementptr inbounds %struct.ef, ptr %arrayidx42, i32 0, i32 1, !dbg !1822
  store i16 256, ptr %flags, align 8, !dbg !1823, !tbaa !1824
  br label %for.inc, !dbg !1825

for.inc:                                          ; preds = %if.end39
  %36 = load i16, ptr %i, align 2, !dbg !1826, !tbaa !1743
  %inc = add i16 %36, 1, !dbg !1826
  store i16 %inc, ptr %i, align 2, !dbg !1826, !tbaa !1743
  br label %for.cond, !dbg !1827, !llvm.loop !1828

for.end:                                          ; preds = %for.cond
  br label %for.cond43, !dbg !1830

for.cond43:                                       ; preds = %for.inc83, %for.end
  %37 = load i16, ptr %i, align 2, !dbg !1831, !tbaa !1743
  %conv44 = zext i16 %37 to i32, !dbg !1831
  %38 = load ptr, ptr %e.addr, align 8, !dbg !1834, !tbaa !238
  %n_extra_fields45 = getelementptr inbounds %struct.entry, ptr %38, i32 0, i32 5, !dbg !1835
  %39 = load i16, ptr %n_extra_fields45, align 8, !dbg !1835, !tbaa !1039
  %conv46 = zext i16 %39 to i32, !dbg !1834
  %cmp47 = icmp slt i32 %conv44, %conv46, !dbg !1836
  br i1 %cmp47, label %for.body49, label %for.end85, !dbg !1837

for.body49:                                       ; preds = %for.cond43
  %40 = load ptr, ptr %e.addr, align 8, !dbg !1838, !tbaa !238
  %name50 = getelementptr inbounds %struct.entry, ptr %40, i32 0, i32 0, !dbg !1840
  %41 = load ptr, ptr %name50, align 8, !dbg !1840, !tbaa !795
  %42 = load ptr, ptr %e.addr, align 8, !dbg !1841, !tbaa !238
  %extra_fields51 = getelementptr inbounds %struct.entry, ptr %42, i32 0, i32 4, !dbg !1842
  %43 = load ptr, ptr %extra_fields51, align 8, !dbg !1842, !tbaa !1771
  %44 = load i16, ptr %i, align 2, !dbg !1843, !tbaa !1743
  %idxprom52 = zext i16 %44 to i64, !dbg !1841
  %arrayidx53 = getelementptr inbounds %struct.ef, ptr %43, i64 %idxprom52, !dbg !1841
  %name54 = getelementptr inbounds %struct.ef, ptr %arrayidx53, i32 0, i32 0, !dbg !1844
  store ptr %41, ptr %name54, align 8, !dbg !1845, !tbaa !1791
  %45 = load ptr, ptr %za.addr, align 8, !dbg !1846, !tbaa !238
  %46 = load i64, ptr %idx.addr, align 8, !dbg !1847, !tbaa !509
  %47 = load i16, ptr %i, align 2, !dbg !1848, !tbaa !1743
  %conv55 = zext i16 %47 to i32, !dbg !1848
  %48 = load i16, ptr %n_local, align 2, !dbg !1849, !tbaa !1743
  %conv56 = sext i16 %48 to i32, !dbg !1849
  %sub = sub nsw i32 %conv55, %conv56, !dbg !1850
  %conv57 = trunc i32 %sub to i16, !dbg !1851
  %49 = load ptr, ptr %e.addr, align 8, !dbg !1852, !tbaa !238
  %extra_fields58 = getelementptr inbounds %struct.entry, ptr %49, i32 0, i32 4, !dbg !1853
  %50 = load ptr, ptr %extra_fields58, align 8, !dbg !1853, !tbaa !1771
  %51 = load i16, ptr %i, align 2, !dbg !1854, !tbaa !1743
  %idxprom59 = zext i16 %51 to i64, !dbg !1852
  %arrayidx60 = getelementptr inbounds %struct.ef, ptr %50, i64 %idxprom59, !dbg !1852
  %id61 = getelementptr inbounds %struct.ef, ptr %arrayidx60, i32 0, i32 2, !dbg !1855
  %52 = load ptr, ptr %e.addr, align 8, !dbg !1856, !tbaa !238
  %extra_fields62 = getelementptr inbounds %struct.entry, ptr %52, i32 0, i32 4, !dbg !1857
  %53 = load ptr, ptr %extra_fields62, align 8, !dbg !1857, !tbaa !1771
  %54 = load i16, ptr %i, align 2, !dbg !1858, !tbaa !1743
  %idxprom63 = zext i16 %54 to i64, !dbg !1856
  %arrayidx64 = getelementptr inbounds %struct.ef, ptr %53, i64 %idxprom63, !dbg !1856
  %size65 = getelementptr inbounds %struct.ef, ptr %arrayidx64, i32 0, i32 3, !dbg !1859
  %call66 = call ptr @zip_file_extra_field_get(ptr noundef %45, i64 noundef %46, i16 noundef zeroext %conv57, ptr noundef %id61, ptr noundef %size65, i32 noundef 512), !dbg !1860
  %55 = load ptr, ptr %e.addr, align 8, !dbg !1861, !tbaa !238
  %extra_fields67 = getelementptr inbounds %struct.entry, ptr %55, i32 0, i32 4, !dbg !1862
  %56 = load ptr, ptr %extra_fields67, align 8, !dbg !1862, !tbaa !1771
  %57 = load i16, ptr %i, align 2, !dbg !1863, !tbaa !1743
  %idxprom68 = zext i16 %57 to i64, !dbg !1861
  %arrayidx69 = getelementptr inbounds %struct.ef, ptr %56, i64 %idxprom68, !dbg !1861
  %data70 = getelementptr inbounds %struct.ef, ptr %arrayidx69, i32 0, i32 4, !dbg !1864
  store ptr %call66, ptr %data70, align 8, !dbg !1865, !tbaa !1810
  %58 = load ptr, ptr %e.addr, align 8, !dbg !1866, !tbaa !238
  %extra_fields71 = getelementptr inbounds %struct.entry, ptr %58, i32 0, i32 4, !dbg !1868
  %59 = load ptr, ptr %extra_fields71, align 8, !dbg !1868, !tbaa !1771
  %60 = load i16, ptr %i, align 2, !dbg !1869, !tbaa !1743
  %idxprom72 = zext i16 %60 to i64, !dbg !1866
  %arrayidx73 = getelementptr inbounds %struct.ef, ptr %59, i64 %idxprom72, !dbg !1866
  %data74 = getelementptr inbounds %struct.ef, ptr %arrayidx73, i32 0, i32 4, !dbg !1870
  %61 = load ptr, ptr %data74, align 8, !dbg !1870, !tbaa !1810
  %cmp75 = icmp eq ptr %61, null, !dbg !1871
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !1872

if.then77:                                        ; preds = %for.body49
  store i32 -1, ptr %retval, align 4, !dbg !1873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1873

if.end78:                                         ; preds = %for.body49
  %62 = load ptr, ptr %e.addr, align 8, !dbg !1874, !tbaa !238
  %extra_fields79 = getelementptr inbounds %struct.entry, ptr %62, i32 0, i32 4, !dbg !1875
  %63 = load ptr, ptr %extra_fields79, align 8, !dbg !1875, !tbaa !1771
  %64 = load i16, ptr %i, align 2, !dbg !1876, !tbaa !1743
  %idxprom80 = zext i16 %64 to i64, !dbg !1874
  %arrayidx81 = getelementptr inbounds %struct.ef, ptr %63, i64 %idxprom80, !dbg !1874
  %flags82 = getelementptr inbounds %struct.ef, ptr %arrayidx81, i32 0, i32 1, !dbg !1877
  store i16 512, ptr %flags82, align 8, !dbg !1878, !tbaa !1824
  br label %for.inc83, !dbg !1879

for.inc83:                                        ; preds = %if.end78
  %65 = load i16, ptr %i, align 2, !dbg !1880, !tbaa !1743
  %inc84 = add i16 %65, 1, !dbg !1880
  store i16 %inc84, ptr %i, align 2, !dbg !1880, !tbaa !1743
  br label %for.cond43, !dbg !1881, !llvm.loop !1882

for.end85:                                        ; preds = %for.cond43
  %66 = load ptr, ptr %e.addr, align 8, !dbg !1884, !tbaa !238
  %extra_fields86 = getelementptr inbounds %struct.entry, ptr %66, i32 0, i32 4, !dbg !1885
  %67 = load ptr, ptr %extra_fields86, align 8, !dbg !1885, !tbaa !1771
  %68 = load ptr, ptr %e.addr, align 8, !dbg !1886, !tbaa !238
  %n_extra_fields87 = getelementptr inbounds %struct.entry, ptr %68, i32 0, i32 5, !dbg !1887
  %69 = load i16, ptr %n_extra_fields87, align 8, !dbg !1887, !tbaa !1039
  %conv88 = zext i16 %69 to i64, !dbg !1886
  call void @qsort(ptr noundef %67, i64 noundef %conv88, i64 noundef 24, ptr noundef @ef_order), !dbg !1888
  store i32 0, ptr %retval, align 4, !dbg !1889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1889

cleanup:                                          ; preds = %for.end85, %if.then77, %if.then38, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #10, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 2, ptr %n_central) #10, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 2, ptr %n_local) #10, !dbg !1890
  %70 = load i32, ptr %retval, align 4, !dbg !1890
  ret i32 %70, !dbg !1890
}

declare !dbg !1891 ptr @zip_file_get_comment(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

declare !dbg !1895 ptr @zip_get_archive_comment(ptr noundef, ptr noundef, i32 noundef) #3

declare !dbg !1898 ptr @zip_fopen_index(ptr noundef, i64 noundef, i32 noundef) #3

declare !dbg !1901 ptr @zip_strerror(ptr noundef) #3

declare !dbg !1904 i64 @zip_fread(ptr noundef, ptr noundef, i64 noundef) #3

declare !dbg !1907 ptr @zip_file_strerror(ptr noundef) #3

declare !dbg !1910 i32 @zip_fclose(ptr noundef) #3

declare !dbg !1913 signext i16 @zip_file_extra_fields_count(ptr noundef, i64 noundef, i32 noundef) #3

declare !dbg !1916 ptr @zip_file_extra_field_get(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @ef_order(ptr noundef %ap, ptr noundef %bp) #0 !dbg !1920 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %bp.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !1922, metadata !DIExpression()), !dbg !1928
  store ptr %bp, ptr %bp.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !1923, metadata !DIExpression()), !dbg !1929
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #10, !dbg !1930
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !1924, metadata !DIExpression()), !dbg !1931
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #10, !dbg !1930
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !1927, metadata !DIExpression()), !dbg !1932
  %0 = load ptr, ptr %ap.addr, align 8, !dbg !1933, !tbaa !238
  store ptr %0, ptr %a, align 8, !dbg !1934, !tbaa !238
  %1 = load ptr, ptr %bp.addr, align 8, !dbg !1935, !tbaa !238
  store ptr %1, ptr %b, align 8, !dbg !1936, !tbaa !238
  %2 = load ptr, ptr %a, align 8, !dbg !1937, !tbaa !238
  %flags = getelementptr inbounds %struct.ef, ptr %2, i32 0, i32 1, !dbg !1939
  %3 = load i16, ptr %flags, align 8, !dbg !1939, !tbaa !1824
  %conv = zext i16 %3 to i32, !dbg !1937
  %4 = load ptr, ptr %b, align 8, !dbg !1940, !tbaa !238
  %flags1 = getelementptr inbounds %struct.ef, ptr %4, i32 0, i32 1, !dbg !1941
  %5 = load i16, ptr %flags1, align 8, !dbg !1941, !tbaa !1824
  %conv2 = zext i16 %5 to i32, !dbg !1940
  %cmp = icmp ne i32 %conv, %conv2, !dbg !1942
  br i1 %cmp, label %if.then, label %if.end, !dbg !1943

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %a, align 8, !dbg !1944, !tbaa !238
  %flags4 = getelementptr inbounds %struct.ef, ptr %6, i32 0, i32 1, !dbg !1945
  %7 = load i16, ptr %flags4, align 8, !dbg !1945, !tbaa !1824
  %conv5 = zext i16 %7 to i32, !dbg !1944
  %8 = load ptr, ptr %b, align 8, !dbg !1946, !tbaa !238
  %flags6 = getelementptr inbounds %struct.ef, ptr %8, i32 0, i32 1, !dbg !1947
  %9 = load i16, ptr %flags6, align 8, !dbg !1947, !tbaa !1824
  %conv7 = zext i16 %9 to i32, !dbg !1946
  %sub = sub nsw i32 %conv5, %conv7, !dbg !1948
  store i32 %sub, ptr %retval, align 4, !dbg !1949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1949

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %a, align 8, !dbg !1950, !tbaa !238
  %id = getelementptr inbounds %struct.ef, ptr %10, i32 0, i32 2, !dbg !1952
  %11 = load i16, ptr %id, align 2, !dbg !1952, !tbaa !1953
  %conv8 = zext i16 %11 to i32, !dbg !1950
  %12 = load ptr, ptr %b, align 8, !dbg !1954, !tbaa !238
  %id9 = getelementptr inbounds %struct.ef, ptr %12, i32 0, i32 2, !dbg !1955
  %13 = load i16, ptr %id9, align 2, !dbg !1955, !tbaa !1953
  %conv10 = zext i16 %13 to i32, !dbg !1954
  %cmp11 = icmp ne i32 %conv8, %conv10, !dbg !1956
  br i1 %cmp11, label %if.then13, label %if.end19, !dbg !1957

if.then13:                                        ; preds = %if.end
  %14 = load ptr, ptr %a, align 8, !dbg !1958, !tbaa !238
  %id14 = getelementptr inbounds %struct.ef, ptr %14, i32 0, i32 2, !dbg !1959
  %15 = load i16, ptr %id14, align 2, !dbg !1959, !tbaa !1953
  %conv15 = zext i16 %15 to i32, !dbg !1958
  %16 = load ptr, ptr %b, align 8, !dbg !1960, !tbaa !238
  %id16 = getelementptr inbounds %struct.ef, ptr %16, i32 0, i32 2, !dbg !1961
  %17 = load i16, ptr %id16, align 2, !dbg !1961, !tbaa !1953
  %conv17 = zext i16 %17 to i32, !dbg !1960
  %sub18 = sub nsw i32 %conv15, %conv17, !dbg !1962
  store i32 %sub18, ptr %retval, align 4, !dbg !1963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1963

if.end19:                                         ; preds = %if.end
  %18 = load ptr, ptr %a, align 8, !dbg !1964, !tbaa !238
  %size = getelementptr inbounds %struct.ef, ptr %18, i32 0, i32 3, !dbg !1966
  %19 = load i16, ptr %size, align 4, !dbg !1966, !tbaa !1967
  %conv20 = zext i16 %19 to i32, !dbg !1964
  %20 = load ptr, ptr %b, align 8, !dbg !1968, !tbaa !238
  %size21 = getelementptr inbounds %struct.ef, ptr %20, i32 0, i32 3, !dbg !1969
  %21 = load i16, ptr %size21, align 4, !dbg !1969, !tbaa !1967
  %conv22 = zext i16 %21 to i32, !dbg !1968
  %cmp23 = icmp ne i32 %conv20, %conv22, !dbg !1970
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !1971

if.then25:                                        ; preds = %if.end19
  %22 = load ptr, ptr %a, align 8, !dbg !1972, !tbaa !238
  %size26 = getelementptr inbounds %struct.ef, ptr %22, i32 0, i32 3, !dbg !1973
  %23 = load i16, ptr %size26, align 4, !dbg !1973, !tbaa !1967
  %conv27 = zext i16 %23 to i32, !dbg !1972
  %24 = load ptr, ptr %b, align 8, !dbg !1974, !tbaa !238
  %size28 = getelementptr inbounds %struct.ef, ptr %24, i32 0, i32 3, !dbg !1975
  %25 = load i16, ptr %size28, align 4, !dbg !1975, !tbaa !1967
  %conv29 = zext i16 %25 to i32, !dbg !1974
  %sub30 = sub nsw i32 %conv27, %conv29, !dbg !1976
  store i32 %sub30, ptr %retval, align 4, !dbg !1977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1977

if.end31:                                         ; preds = %if.end19
  %26 = load ptr, ptr %a, align 8, !dbg !1978, !tbaa !238
  %data = getelementptr inbounds %struct.ef, ptr %26, i32 0, i32 4, !dbg !1979
  %27 = load ptr, ptr %data, align 8, !dbg !1979, !tbaa !1810
  %28 = load ptr, ptr %b, align 8, !dbg !1980, !tbaa !238
  %data32 = getelementptr inbounds %struct.ef, ptr %28, i32 0, i32 4, !dbg !1981
  %29 = load ptr, ptr %data32, align 8, !dbg !1981, !tbaa !1810
  %30 = load ptr, ptr %a, align 8, !dbg !1982, !tbaa !238
  %size33 = getelementptr inbounds %struct.ef, ptr %30, i32 0, i32 3, !dbg !1983
  %31 = load i16, ptr %size33, align 4, !dbg !1983, !tbaa !1967
  %conv34 = zext i16 %31 to i64, !dbg !1982
  %call = call i32 @memcmp(ptr noundef %27, ptr noundef %29, i64 noundef %conv34) #13, !dbg !1984
  store i32 %call, ptr %retval, align 4, !dbg !1985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1985

cleanup:                                          ; preds = %if.end31, %if.then25, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #10, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #10, !dbg !1986
  %32 = load i32, ptr %retval, align 4, !dbg !1986
  ret i32 %32, !dbg !1986
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1987 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal i32 @ef_compare(ptr noundef %name, ptr noundef %e1, ptr noundef %e2) #0 !dbg !1990 {
entry:
  %name.addr = alloca ptr, align 8
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %ef = alloca [2 x ptr], align 16
  %n = alloca [2 x i64], align 16
  store ptr %name, ptr %name.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1994, metadata !DIExpression()), !dbg !2000
  store ptr %e1, ptr %e1.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !1995, metadata !DIExpression()), !dbg !2001
  store ptr %e2, ptr %e2.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !1996, metadata !DIExpression()), !dbg !2002
  call void @llvm.lifetime.start.p0(i64 16, ptr %ef) #10, !dbg !2003
  tail call void @llvm.dbg.declare(metadata ptr %ef, metadata !1997, metadata !DIExpression()), !dbg !2004
  call void @llvm.lifetime.start.p0(i64 16, ptr %n) #10, !dbg !2005
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1999, metadata !DIExpression()), !dbg !2006
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !2007, !tbaa !238
  %extra_fields = getelementptr inbounds %struct.entry, ptr %0, i32 0, i32 4, !dbg !2008
  %1 = load ptr, ptr %extra_fields, align 8, !dbg !2008, !tbaa !1771
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %ef, i64 0, i64 0, !dbg !2009
  store ptr %1, ptr %arrayidx, align 16, !dbg !2010, !tbaa !238
  %2 = load ptr, ptr %e2.addr, align 8, !dbg !2011, !tbaa !238
  %extra_fields1 = getelementptr inbounds %struct.entry, ptr %2, i32 0, i32 4, !dbg !2012
  %3 = load ptr, ptr %extra_fields1, align 8, !dbg !2012, !tbaa !1771
  %arrayidx2 = getelementptr inbounds [2 x ptr], ptr %ef, i64 0, i64 1, !dbg !2013
  store ptr %3, ptr %arrayidx2, align 8, !dbg !2014, !tbaa !238
  %4 = load ptr, ptr %e1.addr, align 8, !dbg !2015, !tbaa !238
  %n_extra_fields = getelementptr inbounds %struct.entry, ptr %4, i32 0, i32 5, !dbg !2016
  %5 = load i16, ptr %n_extra_fields, align 8, !dbg !2016, !tbaa !1039
  %conv = zext i16 %5 to i64, !dbg !2015
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %n, i64 0, i64 0, !dbg !2017
  store i64 %conv, ptr %arrayidx3, align 16, !dbg !2018, !tbaa !509
  %6 = load ptr, ptr %e2.addr, align 8, !dbg !2019, !tbaa !238
  %n_extra_fields4 = getelementptr inbounds %struct.entry, ptr %6, i32 0, i32 5, !dbg !2020
  %7 = load i16, ptr %n_extra_fields4, align 8, !dbg !2020, !tbaa !1039
  %conv5 = zext i16 %7 to i64, !dbg !2019
  %arrayidx6 = getelementptr inbounds [2 x i64], ptr %n, i64 0, i64 1, !dbg !2021
  store i64 %conv5, ptr %arrayidx6, align 8, !dbg !2022, !tbaa !509
  %8 = load ptr, ptr %name.addr, align 8, !dbg !2023, !tbaa !238
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %ef, i64 0, i64 0, !dbg !2024
  %arraydecay7 = getelementptr inbounds [2 x i64], ptr %n, i64 0, i64 0, !dbg !2025
  %call = call i32 @compare_list(ptr noundef %8, ptr noundef %arraydecay, ptr noundef %arraydecay7, i32 noundef 24, ptr noundef @ef_order, ptr noundef null, ptr noundef @ef_print), !dbg !2026
  call void @llvm.lifetime.end.p0(i64 16, ptr %n) #10, !dbg !2027
  call void @llvm.lifetime.end.p0(i64 16, ptr %ef) #10, !dbg !2027
  ret i32 %call, !dbg !2028
}

; Function Attrs: nounwind uwtable
define internal void @ef_print(ptr noundef %p) #0 !dbg !2029 {
entry:
  %p.addr = alloca ptr, align 8
  %ef = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !238
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2031, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef) #10, !dbg !2035
  tail call void @llvm.dbg.declare(metadata ptr %ef, metadata !2032, metadata !DIExpression()), !dbg !2036
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2037, !tbaa !238
  store ptr %0, ptr %ef, align 8, !dbg !2036, !tbaa !238
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2038
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2033, metadata !DIExpression()), !dbg !2039
  %1 = load ptr, ptr %ef, align 8, !dbg !2040, !tbaa !238
  %name = getelementptr inbounds %struct.ef, ptr %1, i32 0, i32 0, !dbg !2041
  %2 = load ptr, ptr %name, align 8, !dbg !2041, !tbaa !1791
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.21, ptr noundef %2), !dbg !2042
  %3 = load ptr, ptr %ef, align 8, !dbg !2043, !tbaa !238
  %id = getelementptr inbounds %struct.ef, ptr %3, i32 0, i32 2, !dbg !2044
  %4 = load i16, ptr %id, align 2, !dbg !2044, !tbaa !1953
  %conv = zext i16 %4 to i32, !dbg !2043
  %5 = load ptr, ptr %ef, align 8, !dbg !2045, !tbaa !238
  %flags = getelementptr inbounds %struct.ef, ptr %5, i32 0, i32 1, !dbg !2046
  %6 = load i16, ptr %flags, align 8, !dbg !2046, !tbaa !1824
  %conv1 = zext i16 %6 to i32, !dbg !2045
  %cmp = icmp eq i32 %conv1, 256, !dbg !2047
  %7 = zext i1 %cmp to i64, !dbg !2045
  %cond = select i1 %cmp, i32 108, i32 99, !dbg !2045
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, i32 noundef %conv, i32 noundef %cond), !dbg !2048
  store i32 0, ptr %i, align 4, !dbg !2049, !tbaa !233
  br label %for.cond, !dbg !2051

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4, !dbg !2052, !tbaa !233
  %9 = load ptr, ptr %ef, align 8, !dbg !2054, !tbaa !238
  %size = getelementptr inbounds %struct.ef, ptr %9, i32 0, i32 3, !dbg !2055
  %10 = load i16, ptr %size, align 4, !dbg !2055, !tbaa !1967
  %conv4 = zext i16 %10 to i32, !dbg !2054
  %cmp5 = icmp slt i32 %8, %conv4, !dbg !2056
  br i1 %cmp5, label %for.body, label %for.end, !dbg !2057

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4, !dbg !2058, !tbaa !233
  %tobool = icmp ne i32 %11, 0, !dbg !2058
  %12 = zext i1 %tobool to i64, !dbg !2058
  %cond7 = select i1 %tobool, ptr @.str.24, ptr @.str.25, !dbg !2058
  %13 = load ptr, ptr %ef, align 8, !dbg !2059, !tbaa !238
  %data = getelementptr inbounds %struct.ef, ptr %13, i32 0, i32 4, !dbg !2060
  %14 = load ptr, ptr %data, align 8, !dbg !2060, !tbaa !1810
  %15 = load i32, ptr %i, align 4, !dbg !2061, !tbaa !233
  %idxprom = sext i32 %15 to i64, !dbg !2059
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom, !dbg !2059
  %16 = load i8, ptr %arrayidx, align 1, !dbg !2059, !tbaa !2062
  %conv8 = zext i8 %16 to i32, !dbg !2059
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %cond7, i32 noundef %conv8), !dbg !2063
  br label %for.inc, !dbg !2063

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !dbg !2064, !tbaa !233
  %inc = add nsw i32 %17, 1, !dbg !2064
  store i32 %inc, ptr %i, align 4, !dbg !2064, !tbaa !233
  br label %for.cond, !dbg !2065, !llvm.loop !2066

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.26), !dbg !2068
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef) #10, !dbg !2069
  ret void, !dbg !2069
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_head", scope: !2, file: !3, line: 95, type: !214, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "zipcmp.c", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/src", checksumkind: CSK_MD5, checksum: "d089923c99e2b7d8a08ce295a3b39648")
!4 = !{!5, !8, !10, !11, !18, !21, !22, !27, !58, !60, !42, !35, !65, !39, !17}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint64_t", file: !12, line: 43, baseType: !13)
!12 = !DIFile(filename: "../lib/zipconf.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/src", checksumkind: CSK_MD5, checksum: "7cb5f99232d7b54e05c9f9d3c2375652")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint32_t", file: !12, line: 36, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 26, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int64_t", file: !12, line: 39, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !24, line: 27, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !16, line: 44, baseType: !26)
!26 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "entry", file: !3, line: 77, size: 448, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !55, !56, !57}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !3, line: 78, baseType: !8, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !28, file: !3, line: 79, baseType: !11, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !28, file: !3, line: 80, baseType: !18, size: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "comp_method", scope: !28, file: !3, line: 81, baseType: !18, size: 32, offset: 160)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "extra_fields", scope: !28, file: !3, line: 82, baseType: !35, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ef", file: !3, line: 69, size: 192, elements: !37)
!37 = !{!38, !41, !46, !47, !48}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !3, line: 70, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !3, line: 71, baseType: !42, size: 16, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint16_t", file: !12, line: 29, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !14, line: 25, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !16, line: 40, baseType: !45)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !36, file: !3, line: 72, baseType: !42, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !3, line: 73, baseType: !42, size: 16, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !36, file: !3, line: 74, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint8_t", file: !12, line: 22, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 24, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !16, line: 38, baseType: !54)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "n_extra_fields", scope: !28, file: !3, line: 83, baseType: !42, size: 16, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !28, file: !3, line: 84, baseType: !39, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "comment_length", scope: !28, file: !3, line: 85, baseType: !18, size: 32, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 70, baseType: !17)
!59 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !63, line: 122, baseType: !64)
!63 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_/linux-ubuntu22.04-zen2/clang-18.0.0/zlib-ng-2.1.4-lf6r7k4krys7xeuhd6faiwtpvvvf43ts/include/zconf.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build", checksumkind: CSK_MD5, checksum: "56ad34ae1afb4a00ae966a76a3620886")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !63, line: 121, baseType: !54)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{!0, !67, !72, !77, !82, !87, !89, !91, !93, !95, !97, !99, !104, !106, !111, !116, !121, !126, !131, !136, !138, !143, !148, !153, !158, !163, !168, !173, !178, !180, !185, !190, !195, !200, !202, !207, !212}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "help", scope: !2, file: !3, line: 98, type: !69, isLocal: false, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2704, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 338)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "version_string", scope: !2, file: !3, line: 109, type: !74, isLocal: false, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1232, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 154)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 8)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 40)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "prg", scope: !2, file: !3, line: 89, type: !39, isLocal: false, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 139, type: !65, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "test_files", scope: !2, file: !3, line: 139, type: !65, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "paranoid", scope: !2, file: !3, line: 139, type: !65, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 139, type: !65, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "header_done", scope: !2, file: !3, line: 140, type: !65, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 216, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 27)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !101, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 323, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 280, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 35)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 304, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 38)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 2)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 184, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 23)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 208, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 26)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 399, type: !118, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 694, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 328, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 41)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 707, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 344, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 43)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 715, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 424, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 53)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 719, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 408, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 51)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 120, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 15)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 499, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 4)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 232, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 29)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 647, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 88, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 11)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 648, type: !170, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 660, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 12)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 595, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 200, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 25)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 596, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 80, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 10)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !3, line: 598, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 56, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 7)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 598, type: !123, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 598, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 1)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 599, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 24, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 3)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !3, line: 680, type: !160, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 432, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 54)
!217 = !{i32 7, !"Dwarf Version", i32 5}
!218 = !{i32 2, !"Debug Info Version", i32 3}
!219 = !{i32 1, !"wchar_size", i32 4}
!220 = !{i32 8, !"PIC Level", i32 2}
!221 = !{i32 7, !"PIE Level", i32 2}
!222 = !{i32 7, !"uwtable", i32 2}
!223 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!224 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 144, type: !225, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!225 = !DISubroutineType(types: !226)
!226 = !{!65, !65, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!229 = !{!230, !231, !232}
!230 = !DILocalVariable(name: "argc", arg: 1, scope: !224, file: !3, line: 144, type: !65)
!231 = !DILocalVariable(name: "argv", arg: 2, scope: !224, file: !3, line: 144, type: !227)
!232 = !DILocalVariable(name: "c", scope: !224, file: !3, line: 146, type: !65)
!233 = !{!234, !234, i64 0}
!234 = !{!"int", !235, i64 0}
!235 = !{!"omnipotent char", !236, i64 0}
!236 = !{!"Simple C/C++ TBAA"}
!237 = !DILocation(line: 144, column: 10, scope: !224)
!238 = !{!239, !239, i64 0}
!239 = !{!"any pointer", !235, i64 0}
!240 = !DILocation(line: 144, column: 29, scope: !224)
!241 = !DILocation(line: 146, column: 5, scope: !224)
!242 = !DILocation(line: 146, column: 9, scope: !224)
!243 = !DILocation(line: 148, column: 11, scope: !224)
!244 = !DILocation(line: 148, column: 9, scope: !224)
!245 = !DILocation(line: 150, column: 17, scope: !224)
!246 = !DILocation(line: 151, column: 16, scope: !224)
!247 = !DILocation(line: 152, column: 14, scope: !224)
!248 = !DILocation(line: 153, column: 13, scope: !224)
!249 = !DILocation(line: 155, column: 5, scope: !224)
!250 = !DILocation(line: 155, column: 22, scope: !224)
!251 = !DILocation(line: 155, column: 28, scope: !224)
!252 = !DILocation(line: 155, column: 15, scope: !224)
!253 = !DILocation(line: 155, column: 14, scope: !224)
!254 = !DILocation(line: 155, column: 44, scope: !224)
!255 = !DILocation(line: 156, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !224, file: !3, line: 155, column: 51)
!257 = !DILocation(line: 156, column: 2, scope: !256)
!258 = !DILocation(line: 158, column: 18, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !3, line: 156, column: 13)
!260 = !DILocation(line: 159, column: 6, scope: !259)
!261 = !DILocation(line: 161, column: 15, scope: !259)
!262 = !DILocation(line: 162, column: 6, scope: !259)
!263 = !DILocation(line: 164, column: 14, scope: !259)
!264 = !DILocation(line: 165, column: 6, scope: !259)
!265 = !DILocation(line: 167, column: 17, scope: !259)
!266 = !DILocation(line: 168, column: 6, scope: !259)
!267 = !DILocation(line: 170, column: 14, scope: !259)
!268 = !DILocation(line: 171, column: 6, scope: !259)
!269 = !DILocation(line: 174, column: 23, scope: !259)
!270 = !DILocation(line: 174, column: 6, scope: !259)
!271 = !DILocation(line: 175, column: 20, scope: !259)
!272 = !DILocation(line: 175, column: 6, scope: !259)
!273 = !DILocation(line: 176, column: 18, scope: !259)
!274 = !DILocation(line: 176, column: 6, scope: !259)
!275 = !DILocation(line: 177, column: 6, scope: !259)
!276 = !DILocation(line: 179, column: 28, scope: !259)
!277 = !DILocation(line: 179, column: 6, scope: !259)
!278 = !DILocation(line: 180, column: 6, scope: !259)
!279 = !DILocation(line: 183, column: 14, scope: !259)
!280 = !DILocation(line: 183, column: 29, scope: !259)
!281 = !DILocation(line: 183, column: 6, scope: !259)
!282 = !DILocation(line: 184, column: 6, scope: !259)
!283 = distinct !{!283, !249, !284, !285}
!284 = !DILocation(line: 186, column: 5, scope: !224)
!285 = !{!"llvm.loop.mustprogress"}
!286 = !DILocation(line: 188, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !224, file: !3, line: 188, column: 9)
!288 = !DILocation(line: 188, column: 17, scope: !287)
!289 = !DILocation(line: 188, column: 23, scope: !287)
!290 = !DILocation(line: 188, column: 14, scope: !287)
!291 = !DILocation(line: 188, column: 9, scope: !224)
!292 = !DILocation(line: 189, column: 10, scope: !293)
!293 = distinct !DILexicalBlock(scope: !287, file: !3, line: 188, column: 27)
!294 = !DILocation(line: 189, column: 25, scope: !293)
!295 = !DILocation(line: 189, column: 2, scope: !293)
!296 = !DILocation(line: 190, column: 2, scope: !293)
!297 = !DILocation(line: 193, column: 23, scope: !224)
!298 = !DILocation(line: 193, column: 28, scope: !224)
!299 = !DILocation(line: 193, column: 27, scope: !224)
!300 = !DILocation(line: 193, column: 11, scope: !224)
!301 = !DILocation(line: 193, column: 36, scope: !224)
!302 = !DILocation(line: 193, column: 10, scope: !224)
!303 = !DILocation(line: 193, column: 5, scope: !224)
!304 = !DISubprogram(name: "getopt", scope: !305, file: !305, line: 91, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_core.h", directory: "", checksumkind: CSK_MD5, checksum: "81ab788980ce9d5be2ba931a6ae17301")
!306 = !DISubroutineType(types: !307)
!307 = !{!65, !65, !227, !39}
!308 = !DISubprogram(name: "fputs", scope: !309, file: !309, line: 655, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!310 = !DISubroutineType(types: !311)
!311 = !{!65, !312, !313}
!312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !316, line: 7, baseType: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !318, line: 49, size: 1728, elements: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !335, !337, !338, !339, !341, !342, !344, !345, !348, !350, !353, !356, !357, !358, !359, !360}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !317, file: !318, line: 51, baseType: !65, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !317, file: !318, line: 54, baseType: !8, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !317, file: !318, line: 55, baseType: !8, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !317, file: !318, line: 56, baseType: !8, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !317, file: !318, line: 57, baseType: !8, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !317, file: !318, line: 58, baseType: !8, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !317, file: !318, line: 59, baseType: !8, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !317, file: !318, line: 60, baseType: !8, size: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !317, file: !318, line: 61, baseType: !8, size: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !317, file: !318, line: 64, baseType: !8, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !317, file: !318, line: 65, baseType: !8, size: 64, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !317, file: !318, line: 66, baseType: !8, size: 64, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !317, file: !318, line: 68, baseType: !333, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !318, line: 36, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !317, file: !318, line: 70, baseType: !336, size: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !317, file: !318, line: 72, baseType: !65, size: 32, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !317, file: !318, line: 73, baseType: !65, size: 32, offset: 928)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !317, file: !318, line: 74, baseType: !340, size: 64, offset: 960)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 152, baseType: !26)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !317, file: !318, line: 77, baseType: !45, size: 16, offset: 1024)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !317, file: !318, line: 78, baseType: !343, size: 8, offset: 1040)
!343 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !317, file: !318, line: 79, baseType: !204, size: 8, offset: 1048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !317, file: !318, line: 81, baseType: !346, size: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !318, line: 43, baseType: null)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !317, file: !318, line: 89, baseType: !349, size: 64, offset: 1152)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 153, baseType: !26)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !317, file: !318, line: 91, baseType: !351, size: 64, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !318, line: 37, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !317, file: !318, line: 92, baseType: !354, size: 64, offset: 1280)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !318, line: 38, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !317, file: !318, line: 93, baseType: !336, size: 64, offset: 1344)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !317, file: !318, line: 94, baseType: !10, size: 64, offset: 1408)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !317, file: !318, line: 95, baseType: !58, size: 64, offset: 1472)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !317, file: !318, line: 96, baseType: !65, size: 32, offset: 1536)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !317, file: !318, line: 98, baseType: !113, size: 160, offset: 1568)
!361 = !DISubprogram(name: "printf", scope: !309, file: !309, line: 356, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{!65, !312, null}
!364 = !DISubprogram(name: "exit", scope: !365, file: !365, line: 624, type: !366, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!365 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!366 = !DISubroutineType(types: !367)
!367 = !{null, !65}
!368 = !DISubprogram(name: "fprintf", scope: !309, file: !309, line: 350, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DISubroutineType(types: !370)
!370 = !{!65, !313, !312, null}
!371 = distinct !DISubprogram(name: "compare_zip", scope: !3, file: !3, line: 198, type: !372, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{!65, !227}
!374 = !{!375, !376, !390, !392, !394, !395}
!375 = !DILocalVariable(name: "zn", arg: 1, scope: !371, file: !3, line: 198, type: !227)
!376 = !DILocalVariable(name: "a", scope: !371, file: !3, line: 200, type: !377)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 768, elements: !124)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "archive", file: !3, line: 60, size: 384, elements: !379)
!379 = !{!380, !381, !386, !387, !388, !389}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !3, line: 61, baseType: !39, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "za", scope: !378, file: !3, line: 62, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_t", file: !384, line: 303, baseType: !385)
!384 = !DIFile(filename: "../lib/zip.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/src", checksumkind: CSK_MD5, checksum: "6758aaa3e0d08949c1a3d4b0a3aed88b")
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip", file: !384, line: 299, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nentry", scope: !378, file: !3, line: 63, baseType: !11, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !378, file: !3, line: 64, baseType: !27, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !378, file: !3, line: 65, baseType: !39, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "comment_length", scope: !378, file: !3, line: 66, baseType: !58, size: 64, offset: 320)
!390 = !DILocalVariable(name: "e", scope: !371, file: !3, line: 201, type: !391)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 128, elements: !124)
!392 = !DILocalVariable(name: "n", scope: !371, file: !3, line: 202, type: !393)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !124)
!394 = !DILocalVariable(name: "i", scope: !371, file: !3, line: 203, type: !65)
!395 = !DILocalVariable(name: "res", scope: !371, file: !3, line: 204, type: !65)
!396 = !DILocation(line: 198, column: 26, scope: !371)
!397 = !DILocation(line: 200, column: 5, scope: !371)
!398 = !DILocation(line: 200, column: 20, scope: !371)
!399 = !DILocation(line: 201, column: 5, scope: !371)
!400 = !DILocation(line: 201, column: 19, scope: !371)
!401 = !DILocation(line: 202, column: 5, scope: !371)
!402 = !DILocation(line: 202, column: 18, scope: !371)
!403 = !DILocation(line: 203, column: 5, scope: !371)
!404 = !DILocation(line: 203, column: 9, scope: !371)
!405 = !DILocation(line: 204, column: 5, scope: !371)
!406 = !DILocation(line: 204, column: 9, scope: !371)
!407 = !DILocation(line: 206, column: 11, scope: !408)
!408 = distinct !DILexicalBlock(scope: !371, file: !3, line: 206, column: 5)
!409 = !DILocation(line: 206, column: 10, scope: !408)
!410 = !DILocation(line: 206, column: 15, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !3, line: 206, column: 5)
!412 = !DILocation(line: 206, column: 16, scope: !411)
!413 = !DILocation(line: 206, column: 5, scope: !408)
!414 = !DILocation(line: 207, column: 14, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !3, line: 206, column: 25)
!416 = !DILocation(line: 207, column: 17, scope: !415)
!417 = !DILocation(line: 207, column: 4, scope: !415)
!418 = !DILocation(line: 207, column: 2, scope: !415)
!419 = !DILocation(line: 207, column: 7, scope: !415)
!420 = !DILocation(line: 207, column: 12, scope: !415)
!421 = !{!422, !239, i64 0}
!422 = !{!"archive", !239, i64 0, !239, i64 8, !423, i64 16, !239, i64 24, !239, i64 32, !423, i64 40}
!423 = !{!"long", !235, i64 0}
!424 = !DILocation(line: 208, column: 4, scope: !415)
!425 = !DILocation(line: 208, column: 2, scope: !415)
!426 = !DILocation(line: 208, column: 7, scope: !415)
!427 = !DILocation(line: 208, column: 13, scope: !415)
!428 = !{!422, !239, i64 24}
!429 = !DILocation(line: 209, column: 4, scope: !415)
!430 = !DILocation(line: 209, column: 2, scope: !415)
!431 = !DILocation(line: 209, column: 7, scope: !415)
!432 = !DILocation(line: 209, column: 14, scope: !415)
!433 = !{!422, !423, i64 16}
!434 = !DILocation(line: 210, column: 4, scope: !415)
!435 = !DILocation(line: 210, column: 2, scope: !415)
!436 = !DILocation(line: 210, column: 7, scope: !415)
!437 = !DILocation(line: 210, column: 10, scope: !415)
!438 = !{!422, !239, i64 8}
!439 = !DILocation(line: 211, column: 4, scope: !415)
!440 = !DILocation(line: 211, column: 2, scope: !415)
!441 = !DILocation(line: 211, column: 7, scope: !415)
!442 = !DILocation(line: 211, column: 15, scope: !415)
!443 = !{!422, !239, i64 32}
!444 = !DILocation(line: 212, column: 4, scope: !415)
!445 = !DILocation(line: 212, column: 2, scope: !415)
!446 = !DILocation(line: 212, column: 7, scope: !415)
!447 = !DILocation(line: 212, column: 22, scope: !415)
!448 = !{!422, !423, i64 40}
!449 = !DILocation(line: 214, column: 19, scope: !450)
!450 = distinct !DILexicalBlock(scope: !415, file: !3, line: 214, column: 6)
!451 = !DILocation(line: 214, column: 22, scope: !450)
!452 = !DILocation(line: 214, column: 6, scope: !450)
!453 = !DILocation(line: 214, column: 6, scope: !415)
!454 = !DILocation(line: 219, column: 25, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 219, column: 10)
!456 = distinct !DILexicalBlock(scope: !450, file: !3, line: 214, column: 27)
!457 = !DILocation(line: 219, column: 28, scope: !455)
!458 = !DILocation(line: 219, column: 32, scope: !455)
!459 = !DILocation(line: 219, column: 34, scope: !455)
!460 = !DILocation(line: 219, column: 33, scope: !455)
!461 = !DILocation(line: 219, column: 10, scope: !455)
!462 = !DILocation(line: 219, column: 37, scope: !455)
!463 = !DILocation(line: 219, column: 10, scope: !456)
!464 = !DILocation(line: 220, column: 3, scope: !455)
!465 = !DILocation(line: 221, column: 15, scope: !456)
!466 = !DILocation(line: 223, column: 2, scope: !456)
!467 = !DILocation(line: 225, column: 19, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 225, column: 10)
!469 = distinct !DILexicalBlock(scope: !450, file: !3, line: 224, column: 7)
!470 = !DILocation(line: 225, column: 22, scope: !468)
!471 = !DILocation(line: 225, column: 26, scope: !468)
!472 = !DILocation(line: 225, column: 28, scope: !468)
!473 = !DILocation(line: 225, column: 27, scope: !468)
!474 = !DILocation(line: 225, column: 10, scope: !468)
!475 = !DILocation(line: 225, column: 31, scope: !468)
!476 = !DILocation(line: 225, column: 10, scope: !469)
!477 = !DILocation(line: 226, column: 3, scope: !468)
!478 = !DILocation(line: 228, column: 8, scope: !479)
!479 = distinct !DILexicalBlock(scope: !415, file: !3, line: 228, column: 6)
!480 = !DILocation(line: 228, column: 6, scope: !479)
!481 = !DILocation(line: 228, column: 11, scope: !479)
!482 = !DILocation(line: 228, column: 18, scope: !479)
!483 = !DILocation(line: 228, column: 6, scope: !415)
!484 = !DILocation(line: 229, column: 14, scope: !479)
!485 = !DILocation(line: 229, column: 12, scope: !479)
!486 = !DILocation(line: 229, column: 17, scope: !479)
!487 = !DILocation(line: 229, column: 26, scope: !479)
!488 = !DILocation(line: 229, column: 24, scope: !479)
!489 = !DILocation(line: 229, column: 29, scope: !479)
!490 = !DILocation(line: 229, column: 6, scope: !479)
!491 = !DILocation(line: 230, column: 5, scope: !415)
!492 = !DILocation(line: 206, column: 21, scope: !411)
!493 = !DILocation(line: 206, column: 5, scope: !411)
!494 = distinct !{!494, !413, !495, !285}
!495 = !DILocation(line: 230, column: 5, scope: !408)
!496 = !DILocation(line: 232, column: 17, scope: !371)
!497 = !DILocation(line: 234, column: 12, scope: !371)
!498 = !DILocation(line: 234, column: 17, scope: !371)
!499 = !DILocation(line: 234, column: 5, scope: !371)
!500 = !DILocation(line: 234, column: 10, scope: !371)
!501 = !DILocation(line: 235, column: 12, scope: !371)
!502 = !DILocation(line: 235, column: 17, scope: !371)
!503 = !DILocation(line: 235, column: 5, scope: !371)
!504 = !DILocation(line: 235, column: 10, scope: !371)
!505 = !DILocation(line: 236, column: 12, scope: !371)
!506 = !DILocation(line: 236, column: 17, scope: !371)
!507 = !DILocation(line: 236, column: 5, scope: !371)
!508 = !DILocation(line: 236, column: 10, scope: !371)
!509 = !{!423, !423, i64 0}
!510 = !DILocation(line: 237, column: 12, scope: !371)
!511 = !DILocation(line: 237, column: 17, scope: !371)
!512 = !DILocation(line: 237, column: 5, scope: !371)
!513 = !DILocation(line: 237, column: 10, scope: !371)
!514 = !DILocation(line: 238, column: 24, scope: !371)
!515 = !DILocation(line: 238, column: 43, scope: !371)
!516 = !DILocation(line: 238, column: 46, scope: !371)
!517 = !DILocation(line: 238, column: 77, scope: !371)
!518 = !DILocation(line: 238, column: 11, scope: !371)
!519 = !DILocation(line: 238, column: 9, scope: !371)
!520 = !DILocation(line: 240, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !371, file: !3, line: 240, column: 9)
!522 = !DILocation(line: 240, column: 9, scope: !371)
!523 = !DILocation(line: 241, column: 22, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 241, column: 6)
!525 = distinct !DILexicalBlock(scope: !521, file: !3, line: 240, column: 19)
!526 = !DILocation(line: 241, column: 27, scope: !524)
!527 = !DILocation(line: 241, column: 36, scope: !524)
!528 = !DILocation(line: 241, column: 41, scope: !524)
!529 = !DILocation(line: 241, column: 57, scope: !524)
!530 = !DILocation(line: 241, column: 62, scope: !524)
!531 = !DILocation(line: 241, column: 71, scope: !524)
!532 = !DILocation(line: 241, column: 76, scope: !524)
!533 = !DILocation(line: 241, column: 6, scope: !524)
!534 = !DILocation(line: 241, column: 92, scope: !524)
!535 = !DILocation(line: 241, column: 6, scope: !525)
!536 = !DILocation(line: 242, column: 10, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 242, column: 10)
!538 = distinct !DILexicalBlock(scope: !524, file: !3, line: 241, column: 98)
!539 = !DILocation(line: 242, column: 10, scope: !538)
!540 = !DILocation(line: 243, column: 41, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !3, line: 242, column: 19)
!542 = !DILocation(line: 243, column: 46, scope: !541)
!543 = !DILocation(line: 243, column: 3, scope: !541)
!544 = !DILocation(line: 244, column: 41, scope: !541)
!545 = !DILocation(line: 244, column: 46, scope: !541)
!546 = !DILocation(line: 244, column: 3, scope: !541)
!547 = !DILocation(line: 245, column: 6, scope: !541)
!548 = !DILocation(line: 246, column: 10, scope: !538)
!549 = !DILocation(line: 247, column: 2, scope: !538)
!550 = !DILocation(line: 248, column: 5, scope: !525)
!551 = !DILocation(line: 250, column: 11, scope: !552)
!552 = distinct !DILexicalBlock(scope: !371, file: !3, line: 250, column: 5)
!553 = !DILocation(line: 250, column: 10, scope: !552)
!554 = !DILocation(line: 250, column: 15, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !3, line: 250, column: 5)
!556 = !DILocation(line: 250, column: 16, scope: !555)
!557 = !DILocation(line: 250, column: 5, scope: !552)
!558 = !DILocation(line: 251, column: 8, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 251, column: 6)
!560 = !DILocation(line: 251, column: 6, scope: !559)
!561 = !DILocation(line: 251, column: 11, scope: !559)
!562 = !DILocation(line: 251, column: 6, scope: !555)
!563 = !DILocation(line: 252, column: 18, scope: !559)
!564 = !DILocation(line: 252, column: 16, scope: !559)
!565 = !DILocation(line: 252, column: 21, scope: !559)
!566 = !DILocation(line: 252, column: 6, scope: !559)
!567 = !DILocation(line: 250, column: 21, scope: !555)
!568 = !DILocation(line: 250, column: 5, scope: !555)
!569 = distinct !{!569, !557, !570, !285}
!570 = !DILocation(line: 252, column: 23, scope: !552)
!571 = !DILocation(line: 254, column: 13, scope: !371)
!572 = !DILocation(line: 254, column: 5, scope: !371)
!573 = !DILocation(line: 256, column: 2, scope: !574)
!574 = distinct !DILexicalBlock(scope: !371, file: !3, line: 254, column: 18)
!575 = !DILocation(line: 259, column: 2, scope: !574)
!576 = !DILocation(line: 262, column: 2, scope: !574)
!577 = distinct !DISubprogram(name: "is_directory", scope: !3, file: !3, line: 299, type: !578, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{!65, !39}
!580 = !{!581, !582}
!581 = !DILocalVariable(name: "name", arg: 1, scope: !577, file: !3, line: 299, type: !39)
!582 = !DILocalVariable(name: "st", scope: !577, file: !3, line: 301, type: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !584, line: 26, size: 1152, elements: !585)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!585 = !{!586, !588, !590, !592, !594, !596, !598, !599, !600, !601, !603, !605, !613, !614, !615}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !583, file: !584, line: 31, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !16, line: 145, baseType: !17)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !583, file: !584, line: 36, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !16, line: 148, baseType: !17)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !583, file: !584, line: 44, baseType: !591, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !16, line: 151, baseType: !17)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !583, file: !584, line: 45, baseType: !593, size: 32, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !16, line: 150, baseType: !21)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !583, file: !584, line: 47, baseType: !595, size: 32, offset: 224)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !16, line: 146, baseType: !21)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !583, file: !584, line: 48, baseType: !597, size: 32, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !16, line: 147, baseType: !21)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !583, file: !584, line: 50, baseType: !65, size: 32, offset: 288)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !583, file: !584, line: 52, baseType: !587, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !583, file: !584, line: 57, baseType: !340, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !583, file: !584, line: 61, baseType: !602, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !16, line: 175, baseType: !26)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !583, file: !584, line: 63, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !16, line: 180, baseType: !26)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !583, file: !584, line: 74, baseType: !606, size: 128, offset: 576)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !607, line: 11, size: 128, elements: !608)
!607 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!608 = !{!609, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !606, file: !607, line: 16, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !16, line: 160, baseType: !26)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !606, file: !607, line: 21, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !16, line: 197, baseType: !26)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !583, file: !584, line: 75, baseType: !606, size: 128, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !583, file: !584, line: 76, baseType: !606, size: 128, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !583, file: !584, line: 89, baseType: !616, size: 192, offset: 960)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 192, elements: !210)
!617 = !DILocation(line: 299, column: 26, scope: !577)
!618 = !DILocation(line: 301, column: 5, scope: !577)
!619 = !DILocation(line: 301, column: 17, scope: !577)
!620 = !DILocation(line: 303, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !577, file: !3, line: 303, column: 9)
!622 = !DILocation(line: 303, column: 9, scope: !621)
!623 = !DILocation(line: 303, column: 25, scope: !621)
!624 = !DILocation(line: 303, column: 9, scope: !577)
!625 = !DILocation(line: 304, column: 2, scope: !621)
!626 = !DILocation(line: 306, column: 12, scope: !577)
!627 = !{!628, !234, i64 24}
!628 = !{!"stat", !423, i64 0, !423, i64 8, !423, i64 16, !234, i64 24, !234, i64 28, !234, i64 32, !234, i64 36, !423, i64 40, !423, i64 48, !423, i64 56, !423, i64 64, !629, i64 72, !629, i64 88, !629, i64 104, !235, i64 120}
!629 = !{!"timespec", !423, i64 0, !423, i64 8}
!630 = !DILocation(line: 306, column: 5, scope: !577)
!631 = !DILocation(line: 307, column: 1, scope: !577)
!632 = distinct !DISubprogram(name: "list_directory", scope: !3, file: !3, line: 312, type: !633, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!633 = !DISubroutineType(types: !634)
!634 = !{!65, !39, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!636 = !{!637, !638, !639, !688, !691, !692, !693, !695}
!637 = !DILocalVariable(name: "name", arg: 1, scope: !632, file: !3, line: 312, type: !39)
!638 = !DILocalVariable(name: "a", arg: 2, scope: !632, file: !3, line: 312, type: !635)
!639 = !DILocalVariable(name: "fts", scope: !632, file: !3, line: 314, type: !640)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTS", file: !642, line: 81, baseType: !643)
!642 = !DIFile(filename: "/usr/include/fts.h", directory: "", checksumkind: CSK_MD5, checksum: "e1ffa02657848203cb8f98e7e0b7c9d9")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !642, line: 57, size: 576, elements: !644)
!644 = !{!645, !675, !676, !678, !679, !680, !681, !682, !683, !687}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cur", scope: !643, file: !642, line: 58, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ftsent", file: !642, line: 98, size: 960, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !663, !665, !667, !669, !670, !671, !672, !674}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "fts_cycle", scope: !647, file: !642, line: 99, baseType: !646, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "fts_parent", scope: !647, file: !642, line: 100, baseType: !646, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "fts_link", scope: !647, file: !642, line: 101, baseType: !646, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fts_number", scope: !647, file: !642, line: 102, baseType: !26, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pointer", scope: !647, file: !642, line: 103, baseType: !10, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "fts_accpath", scope: !647, file: !642, line: 104, baseType: !8, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !647, file: !642, line: 105, baseType: !8, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "fts_errno", scope: !647, file: !642, line: 106, baseType: !65, size: 32, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "fts_symfd", scope: !647, file: !642, line: 107, baseType: !65, size: 32, offset: 480)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !647, file: !642, line: 108, baseType: !45, size: 16, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fts_namelen", scope: !647, file: !642, line: 109, baseType: !45, size: 16, offset: 528)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "fts_ino", scope: !647, file: !642, line: 111, baseType: !661, size: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !662, line: 51, baseType: !589)
!662 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dev", scope: !647, file: !642, line: 112, baseType: !664, size: 64, offset: 640)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !662, line: 40, baseType: !587)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fts_nlink", scope: !647, file: !642, line: 113, baseType: !666, size: 64, offset: 704)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !662, line: 64, baseType: !591)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fts_level", scope: !647, file: !642, line: 117, baseType: !668, size: 16, offset: 768)
!668 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fts_info", scope: !647, file: !642, line: 133, baseType: !45, size: 16, offset: 784)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "fts_flags", scope: !647, file: !642, line: 137, baseType: !45, size: 16, offset: 800)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fts_instr", scope: !647, file: !642, line: 143, baseType: !45, size: 16, offset: 816)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fts_statp", scope: !647, file: !642, line: 145, baseType: !673, size: 64, offset: 832)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fts_name", scope: !647, file: !642, line: 146, baseType: !204, size: 8, offset: 896)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fts_child", scope: !643, file: !642, line: 59, baseType: !646, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "fts_array", scope: !643, file: !642, line: 60, baseType: !677, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fts_dev", scope: !643, file: !642, line: 61, baseType: !664, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fts_path", scope: !643, file: !642, line: 62, baseType: !8, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "fts_rfd", scope: !643, file: !642, line: 63, baseType: !65, size: 32, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fts_pathlen", scope: !643, file: !642, line: 64, baseType: !65, size: 32, offset: 352)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "fts_nitems", scope: !643, file: !642, line: 65, baseType: !65, size: 32, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "fts_compar", scope: !643, file: !642, line: 66, baseType: !684, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!65, !6, !6}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fts_options", scope: !643, file: !642, line: 80, baseType: !65, size: 32, offset: 512)
!688 = !DILocalVariable(name: "ent", scope: !632, file: !3, line: 315, type: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTSENT", file: !642, line: 147, baseType: !647)
!691 = !DILocalVariable(name: "nalloc", scope: !632, file: !3, line: 316, type: !11)
!692 = !DILocalVariable(name: "prefix_length", scope: !632, file: !3, line: 317, type: !58)
!693 = !DILocalVariable(name: "names", scope: !632, file: !3, line: 319, type: !694)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !124)
!695 = !DILocalVariable(name: "crc", scope: !696, file: !3, line: 331, type: !22)
!696 = distinct !DILexicalBlock(scope: !632, file: !3, line: 330, column: 35)
!697 = !DILocation(line: 312, column: 28, scope: !632)
!698 = !DILocation(line: 312, column: 50, scope: !632)
!699 = !DILocation(line: 314, column: 5, scope: !632)
!700 = !DILocation(line: 314, column: 10, scope: !632)
!701 = !DILocation(line: 315, column: 5, scope: !632)
!702 = !DILocation(line: 315, column: 13, scope: !632)
!703 = !DILocation(line: 316, column: 5, scope: !632)
!704 = !DILocation(line: 316, column: 18, scope: !632)
!705 = !DILocation(line: 317, column: 5, scope: !632)
!706 = !DILocation(line: 317, column: 12, scope: !632)
!707 = !DILocation(line: 319, column: 5, scope: !632)
!708 = !DILocation(line: 319, column: 18, scope: !632)
!709 = !DILocation(line: 319, column: 29, scope: !632)
!710 = !DILocation(line: 319, column: 39, scope: !632)
!711 = !DILocation(line: 322, column: 25, scope: !712)
!712 = distinct !DILexicalBlock(scope: !632, file: !3, line: 322, column: 9)
!713 = !DILocation(line: 322, column: 16, scope: !712)
!714 = !DILocation(line: 322, column: 14, scope: !712)
!715 = !DILocation(line: 322, column: 64, scope: !712)
!716 = !DILocation(line: 322, column: 9, scope: !632)
!717 = !DILocation(line: 323, column: 10, scope: !718)
!718 = distinct !DILexicalBlock(scope: !712, file: !3, line: 322, column: 73)
!719 = !DILocation(line: 323, column: 57, scope: !718)
!720 = !DILocation(line: 323, column: 62, scope: !718)
!721 = !DILocation(line: 323, column: 77, scope: !718)
!722 = !DILocation(line: 323, column: 68, scope: !718)
!723 = !DILocation(line: 323, column: 2, scope: !718)
!724 = !DILocation(line: 324, column: 2, scope: !718)
!725 = !DILocation(line: 326, column: 28, scope: !632)
!726 = !DILocation(line: 326, column: 21, scope: !632)
!727 = !DILocation(line: 326, column: 33, scope: !632)
!728 = !DILocation(line: 326, column: 19, scope: !632)
!729 = !DILocation(line: 328, column: 12, scope: !632)
!730 = !DILocation(line: 330, column: 5, scope: !632)
!731 = !DILocation(line: 330, column: 28, scope: !632)
!732 = !DILocation(line: 330, column: 19, scope: !632)
!733 = !DILocation(line: 330, column: 17, scope: !632)
!734 = !DILocation(line: 331, column: 2, scope: !696)
!735 = !DILocation(line: 331, column: 14, scope: !696)
!736 = !DILocation(line: 333, column: 10, scope: !696)
!737 = !DILocation(line: 333, column: 15, scope: !696)
!738 = !{!739, !740, i64 98}
!739 = !{!"_ftsent", !239, i64 0, !239, i64 8, !239, i64 16, !423, i64 24, !239, i64 32, !239, i64 40, !239, i64 48, !234, i64 56, !234, i64 60, !740, i64 64, !740, i64 66, !423, i64 72, !423, i64 80, !423, i64 88, !740, i64 96, !740, i64 98, !740, i64 100, !740, i64 102, !239, i64 104, !235, i64 112}
!740 = !{!"short", !235, i64 0}
!741 = !DILocation(line: 333, column: 2, scope: !696)
!742 = !DILocation(line: 340, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !696, file: !3, line: 333, column: 25)
!744 = !DILocation(line: 348, column: 16, scope: !743)
!745 = !DILocation(line: 348, column: 6, scope: !743)
!746 = !DILocation(line: 349, column: 6, scope: !743)
!747 = !DILocation(line: 352, column: 10, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !3, line: 352, column: 10)
!749 = !DILocation(line: 352, column: 13, scope: !748)
!750 = !DILocation(line: 352, column: 23, scope: !748)
!751 = !DILocation(line: 352, column: 20, scope: !748)
!752 = !DILocation(line: 352, column: 10, scope: !743)
!753 = !DILocation(line: 353, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !748, file: !3, line: 352, column: 31)
!755 = !DILocation(line: 354, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !754, file: !3, line: 354, column: 7)
!757 = !DILocation(line: 354, column: 14, scope: !756)
!758 = !DILocation(line: 354, column: 7, scope: !754)
!759 = !DILocation(line: 355, column: 15, scope: !760)
!760 = distinct !DILexicalBlock(scope: !756, file: !3, line: 354, column: 46)
!761 = !DILocation(line: 355, column: 47, scope: !760)
!762 = !DILocation(line: 355, column: 7, scope: !760)
!763 = !DILocation(line: 356, column: 7, scope: !760)
!764 = !DILocation(line: 358, column: 22, scope: !754)
!765 = !DILocation(line: 358, column: 25, scope: !754)
!766 = !DILocation(line: 358, column: 52, scope: !754)
!767 = !DILocation(line: 358, column: 51, scope: !754)
!768 = !DILocation(line: 358, column: 14, scope: !754)
!769 = !DILocation(line: 358, column: 3, scope: !754)
!770 = !DILocation(line: 358, column: 6, scope: !754)
!771 = !DILocation(line: 358, column: 12, scope: !754)
!772 = !DILocation(line: 359, column: 7, scope: !773)
!773 = distinct !DILexicalBlock(scope: !754, file: !3, line: 359, column: 7)
!774 = !DILocation(line: 359, column: 10, scope: !773)
!775 = !DILocation(line: 359, column: 16, scope: !773)
!776 = !DILocation(line: 359, column: 7, scope: !754)
!777 = !DILocation(line: 360, column: 15, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !3, line: 359, column: 25)
!779 = !DILocation(line: 360, column: 47, scope: !778)
!780 = !DILocation(line: 360, column: 7, scope: !778)
!781 = !DILocation(line: 361, column: 7, scope: !778)
!782 = !DILocation(line: 363, column: 6, scope: !754)
!783 = !DILocation(line: 365, column: 40, scope: !743)
!784 = !DILocation(line: 365, column: 45, scope: !743)
!785 = !{!739, !239, i64 48}
!786 = !DILocation(line: 365, column: 54, scope: !743)
!787 = !DILocation(line: 365, column: 53, scope: !743)
!788 = !DILocation(line: 365, column: 33, scope: !743)
!789 = !DILocation(line: 365, column: 6, scope: !743)
!790 = !DILocation(line: 365, column: 9, scope: !743)
!791 = !DILocation(line: 365, column: 15, scope: !743)
!792 = !DILocation(line: 365, column: 18, scope: !743)
!793 = !DILocation(line: 365, column: 26, scope: !743)
!794 = !DILocation(line: 365, column: 31, scope: !743)
!795 = !{!796, !239, i64 0}
!796 = !{!"entry", !239, i64 0, !423, i64 8, !234, i64 16, !234, i64 20, !239, i64 24, !740, i64 32, !239, i64 40, !234, i64 48}
!797 = !DILocation(line: 366, column: 47, scope: !743)
!798 = !DILocation(line: 366, column: 52, scope: !743)
!799 = !{!739, !239, i64 104}
!800 = !DILocation(line: 366, column: 63, scope: !743)
!801 = !{!628, !423, i64 48}
!802 = !DILocation(line: 366, column: 6, scope: !743)
!803 = !DILocation(line: 366, column: 9, scope: !743)
!804 = !DILocation(line: 366, column: 15, scope: !743)
!805 = !DILocation(line: 366, column: 18, scope: !743)
!806 = !DILocation(line: 366, column: 26, scope: !743)
!807 = !DILocation(line: 366, column: 31, scope: !743)
!808 = !{!796, !423, i64 8}
!809 = !DILocation(line: 367, column: 29, scope: !810)
!810 = distinct !DILexicalBlock(scope: !743, file: !3, line: 367, column: 10)
!811 = !DILocation(line: 367, column: 34, scope: !810)
!812 = !{!739, !239, i64 40}
!813 = !DILocation(line: 367, column: 17, scope: !810)
!814 = !DILocation(line: 367, column: 15, scope: !810)
!815 = !DILocation(line: 367, column: 48, scope: !810)
!816 = !DILocation(line: 367, column: 10, scope: !743)
!817 = !DILocation(line: 368, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !810, file: !3, line: 367, column: 53)
!819 = !DILocation(line: 368, column: 3, scope: !818)
!820 = !DILocation(line: 369, column: 3, scope: !818)
!821 = !DILocation(line: 372, column: 46, scope: !743)
!822 = !DILocation(line: 372, column: 32, scope: !743)
!823 = !DILocation(line: 372, column: 6, scope: !743)
!824 = !DILocation(line: 372, column: 9, scope: !743)
!825 = !DILocation(line: 372, column: 15, scope: !743)
!826 = !DILocation(line: 372, column: 18, scope: !743)
!827 = !DILocation(line: 372, column: 26, scope: !743)
!828 = !DILocation(line: 372, column: 30, scope: !743)
!829 = !{!796, !234, i64 16}
!830 = !DILocation(line: 373, column: 6, scope: !743)
!831 = !DILocation(line: 373, column: 9, scope: !743)
!832 = !DILocation(line: 373, column: 15, scope: !743)
!833 = !DILocation(line: 374, column: 6, scope: !743)
!834 = !DILocation(line: 376, column: 5, scope: !632)
!835 = distinct !{!835, !730, !834, !285}
!836 = !DILocation(line: 378, column: 19, scope: !837)
!837 = distinct !DILexicalBlock(scope: !632, file: !3, line: 378, column: 9)
!838 = !DILocation(line: 378, column: 9, scope: !837)
!839 = !DILocation(line: 378, column: 9, scope: !632)
!840 = !DILocation(line: 379, column: 10, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 378, column: 25)
!842 = !DILocation(line: 379, column: 60, scope: !841)
!843 = !DILocation(line: 379, column: 65, scope: !841)
!844 = !DILocation(line: 379, column: 68, scope: !841)
!845 = !DILocation(line: 379, column: 83, scope: !841)
!846 = !DILocation(line: 379, column: 74, scope: !841)
!847 = !DILocation(line: 379, column: 2, scope: !841)
!848 = !DILocation(line: 380, column: 2, scope: !841)
!849 = !DILocation(line: 383, column: 5, scope: !632)
!850 = !DILocation(line: 384, column: 1, scope: !632)
!851 = distinct !DISubprogram(name: "list_zip", scope: !3, file: !3, line: 389, type: !633, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!852 = !{!853, !854, !855, !856, !857, !872, !873, !882}
!853 = !DILocalVariable(name: "name", arg: 1, scope: !851, file: !3, line: 389, type: !39)
!854 = !DILocalVariable(name: "a", arg: 2, scope: !851, file: !3, line: 389, type: !635)
!855 = !DILocalVariable(name: "za", scope: !851, file: !3, line: 391, type: !382)
!856 = !DILocalVariable(name: "err", scope: !851, file: !3, line: 392, type: !65)
!857 = !DILocalVariable(name: "st", scope: !851, file: !3, line: 393, type: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_stat", file: !384, line: 286, size: 512, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !868, !869, !870, !871}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !858, file: !384, line: 287, baseType: !11, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !384, line: 288, baseType: !39, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !858, file: !384, line: 289, baseType: !11, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !858, file: !384, line: 290, baseType: !11, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "comp_size", scope: !858, file: !384, line: 291, baseType: !11, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !858, file: !384, line: 292, baseType: !866, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !867, line: 10, baseType: !610)
!867 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!868 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !858, file: !384, line: 293, baseType: !18, size: 32, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "comp_method", scope: !858, file: !384, line: 294, baseType: !42, size: 16, offset: 416)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_method", scope: !858, file: !384, line: 295, baseType: !42, size: 16, offset: 432)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !858, file: !384, line: 296, baseType: !18, size: 32, offset: 448)
!872 = !DILocalVariable(name: "i", scope: !851, file: !3, line: 394, type: !21)
!873 = !DILocalVariable(name: "error", scope: !874, file: !3, line: 397, type: !876)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 396, column: 74)
!875 = distinct !DILexicalBlock(scope: !851, file: !3, line: 396, column: 9)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_error_t", file: !384, line: 304, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_error", file: !384, line: 270, size: 128, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "zip_err", scope: !877, file: !384, line: 271, baseType: !65, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sys_err", scope: !877, file: !384, line: 272, baseType: !65, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !877, file: !384, line: 273, baseType: !8, size: 64, offset: 64)
!882 = !DILocalVariable(name: "length", scope: !883, file: !3, line: 434, type: !65)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 433, column: 23)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 433, column: 13)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 409, column: 10)
!886 = distinct !DILexicalBlock(scope: !851, file: !3, line: 407, column: 9)
!887 = !DILocation(line: 389, column: 22, scope: !851)
!888 = !DILocation(line: 389, column: 44, scope: !851)
!889 = !DILocation(line: 391, column: 5, scope: !851)
!890 = !DILocation(line: 391, column: 12, scope: !851)
!891 = !DILocation(line: 392, column: 5, scope: !851)
!892 = !DILocation(line: 392, column: 9, scope: !851)
!893 = !DILocation(line: 393, column: 5, scope: !851)
!894 = !DILocation(line: 393, column: 21, scope: !851)
!895 = !DILocation(line: 394, column: 5, scope: !851)
!896 = !DILocation(line: 394, column: 18, scope: !851)
!897 = !DILocation(line: 396, column: 22, scope: !875)
!898 = !DILocation(line: 396, column: 28, scope: !875)
!899 = !DILocation(line: 396, column: 13, scope: !875)
!900 = !DILocation(line: 396, column: 12, scope: !875)
!901 = !DILocation(line: 396, column: 65, scope: !875)
!902 = !DILocation(line: 396, column: 9, scope: !851)
!903 = !DILocation(line: 397, column: 2, scope: !874)
!904 = !DILocation(line: 397, column: 14, scope: !874)
!905 = !DILocation(line: 398, column: 35, scope: !874)
!906 = !DILocation(line: 398, column: 2, scope: !874)
!907 = !DILocation(line: 399, column: 10, scope: !874)
!908 = !DILocation(line: 399, column: 60, scope: !874)
!909 = !DILocation(line: 399, column: 65, scope: !874)
!910 = !DILocation(line: 399, column: 71, scope: !874)
!911 = !DILocation(line: 399, column: 2, scope: !874)
!912 = !DILocation(line: 400, column: 2, scope: !874)
!913 = !DILocation(line: 401, column: 2, scope: !874)
!914 = !DILocation(line: 402, column: 5, scope: !875)
!915 = !DILocation(line: 404, column: 13, scope: !851)
!916 = !DILocation(line: 404, column: 5, scope: !851)
!917 = !DILocation(line: 404, column: 8, scope: !851)
!918 = !DILocation(line: 404, column: 11, scope: !851)
!919 = !DILocation(line: 405, column: 51, scope: !851)
!920 = !DILocation(line: 405, column: 31, scope: !851)
!921 = !DILocation(line: 405, column: 5, scope: !851)
!922 = !DILocation(line: 405, column: 8, scope: !851)
!923 = !DILocation(line: 405, column: 15, scope: !851)
!924 = !DILocation(line: 407, column: 9, scope: !886)
!925 = !DILocation(line: 407, column: 12, scope: !886)
!926 = !DILocation(line: 407, column: 19, scope: !886)
!927 = !DILocation(line: 407, column: 9, scope: !851)
!928 = !DILocation(line: 408, column: 2, scope: !886)
!929 = !DILocation(line: 408, column: 5, scope: !886)
!930 = !DILocation(line: 408, column: 11, scope: !886)
!931 = !DILocation(line: 410, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !885, file: !3, line: 410, column: 6)
!933 = !DILocation(line: 410, column: 10, scope: !932)
!934 = !DILocation(line: 410, column: 17, scope: !932)
!935 = !DILocation(line: 410, column: 49, scope: !932)
!936 = !DILocation(line: 410, column: 107, scope: !932)
!937 = !DILocation(line: 410, column: 110, scope: !932)
!938 = !DILocation(line: 410, column: 105, scope: !932)
!939 = !DILocation(line: 410, column: 78, scope: !932)
!940 = !DILocation(line: 410, column: 53, scope: !932)
!941 = !DILocation(line: 410, column: 56, scope: !932)
!942 = !DILocation(line: 410, column: 61, scope: !932)
!943 = !DILocation(line: 410, column: 119, scope: !932)
!944 = !DILocation(line: 410, column: 6, scope: !885)
!945 = !DILocation(line: 411, column: 14, scope: !946)
!946 = distinct !DILexicalBlock(scope: !932, file: !3, line: 410, column: 128)
!947 = !DILocation(line: 411, column: 46, scope: !946)
!948 = !DILocation(line: 411, column: 6, scope: !946)
!949 = !DILocation(line: 412, column: 6, scope: !946)
!950 = !DILocation(line: 415, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !885, file: !3, line: 415, column: 2)
!952 = !DILocation(line: 415, column: 7, scope: !951)
!953 = !DILocation(line: 415, column: 12, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 415, column: 2)
!955 = !DILocation(line: 415, column: 14, scope: !954)
!956 = !DILocation(line: 415, column: 17, scope: !954)
!957 = !DILocation(line: 415, column: 13, scope: !954)
!958 = !DILocation(line: 415, column: 2, scope: !951)
!959 = !DILocation(line: 416, column: 21, scope: !960)
!960 = distinct !DILexicalBlock(scope: !954, file: !3, line: 415, column: 30)
!961 = !DILocation(line: 416, column: 25, scope: !960)
!962 = !DILocation(line: 416, column: 6, scope: !960)
!963 = !DILocation(line: 417, column: 35, scope: !960)
!964 = !{!965, !239, i64 8}
!965 = !{!"zip_stat", !423, i64 0, !239, i64 8, !423, i64 16, !423, i64 24, !423, i64 32, !423, i64 40, !234, i64 48, !740, i64 52, !740, i64 54, !234, i64 56}
!966 = !DILocation(line: 417, column: 25, scope: !960)
!967 = !DILocation(line: 417, column: 6, scope: !960)
!968 = !DILocation(line: 417, column: 9, scope: !960)
!969 = !DILocation(line: 417, column: 15, scope: !960)
!970 = !DILocation(line: 417, column: 18, scope: !960)
!971 = !DILocation(line: 417, column: 23, scope: !960)
!972 = !DILocation(line: 418, column: 28, scope: !960)
!973 = !{!965, !423, i64 24}
!974 = !DILocation(line: 418, column: 6, scope: !960)
!975 = !DILocation(line: 418, column: 9, scope: !960)
!976 = !DILocation(line: 418, column: 15, scope: !960)
!977 = !DILocation(line: 418, column: 18, scope: !960)
!978 = !DILocation(line: 418, column: 23, scope: !960)
!979 = !DILocation(line: 419, column: 27, scope: !960)
!980 = !{!965, !234, i64 48}
!981 = !DILocation(line: 419, column: 6, scope: !960)
!982 = !DILocation(line: 419, column: 9, scope: !960)
!983 = !DILocation(line: 419, column: 15, scope: !960)
!984 = !DILocation(line: 419, column: 18, scope: !960)
!985 = !DILocation(line: 419, column: 22, scope: !960)
!986 = !DILocation(line: 420, column: 10, scope: !987)
!987 = distinct !DILexicalBlock(scope: !960, file: !3, line: 420, column: 10)
!988 = !DILocation(line: 420, column: 10, scope: !960)
!989 = !DILocation(line: 421, column: 13, scope: !987)
!990 = !DILocation(line: 421, column: 17, scope: !987)
!991 = !DILocation(line: 421, column: 23, scope: !987)
!992 = !DILocation(line: 421, column: 32, scope: !987)
!993 = !DILocation(line: 421, column: 3, scope: !987)
!994 = !DILocation(line: 422, column: 10, scope: !995)
!995 = distinct !DILexicalBlock(scope: !960, file: !3, line: 422, column: 10)
!996 = !DILocation(line: 422, column: 10, scope: !960)
!997 = !DILocation(line: 423, column: 32, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 422, column: 20)
!999 = !{!965, !740, i64 52}
!1000 = !DILocation(line: 423, column: 29, scope: !998)
!1001 = !DILocation(line: 423, column: 3, scope: !998)
!1002 = !DILocation(line: 423, column: 6, scope: !998)
!1003 = !DILocation(line: 423, column: 12, scope: !998)
!1004 = !DILocation(line: 423, column: 15, scope: !998)
!1005 = !DILocation(line: 423, column: 27, scope: !998)
!1006 = !{!796, !234, i64 20}
!1007 = !DILocation(line: 424, column: 11, scope: !998)
!1008 = !DILocation(line: 424, column: 15, scope: !998)
!1009 = !DILocation(line: 424, column: 18, scope: !998)
!1010 = !DILocation(line: 424, column: 21, scope: !998)
!1011 = !DILocation(line: 424, column: 27, scope: !998)
!1012 = !DILocation(line: 424, column: 26, scope: !998)
!1013 = !DILocation(line: 424, column: 3, scope: !998)
!1014 = !DILocation(line: 425, column: 46, scope: !998)
!1015 = !DILocation(line: 425, column: 50, scope: !998)
!1016 = !DILocation(line: 425, column: 54, scope: !998)
!1017 = !DILocation(line: 425, column: 57, scope: !998)
!1018 = !DILocation(line: 425, column: 63, scope: !998)
!1019 = !DILocation(line: 425, column: 66, scope: !998)
!1020 = !DILocation(line: 425, column: 25, scope: !998)
!1021 = !DILocation(line: 425, column: 3, scope: !998)
!1022 = !DILocation(line: 425, column: 6, scope: !998)
!1023 = !DILocation(line: 425, column: 12, scope: !998)
!1024 = !DILocation(line: 425, column: 15, scope: !998)
!1025 = !DILocation(line: 425, column: 23, scope: !998)
!1026 = !{!796, !239, i64 40}
!1027 = !DILocation(line: 426, column: 6, scope: !998)
!1028 = !DILocation(line: 428, column: 3, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !995, file: !3, line: 427, column: 11)
!1030 = !DILocation(line: 428, column: 6, scope: !1029)
!1031 = !DILocation(line: 428, column: 12, scope: !1029)
!1032 = !DILocation(line: 428, column: 15, scope: !1029)
!1033 = !DILocation(line: 428, column: 27, scope: !1029)
!1034 = !DILocation(line: 429, column: 3, scope: !1029)
!1035 = !DILocation(line: 429, column: 6, scope: !1029)
!1036 = !DILocation(line: 429, column: 12, scope: !1029)
!1037 = !DILocation(line: 429, column: 15, scope: !1029)
!1038 = !DILocation(line: 429, column: 30, scope: !1029)
!1039 = !{!796, !740, i64 32}
!1040 = !DILocation(line: 431, column: 9, scope: !960)
!1041 = !DILocation(line: 415, column: 26, scope: !954)
!1042 = !DILocation(line: 415, column: 2, scope: !954)
!1043 = distinct !{!1043, !958, !1044, !285}
!1044 = !DILocation(line: 431, column: 9, scope: !951)
!1045 = !DILocation(line: 433, column: 13, scope: !884)
!1046 = !DILocation(line: 433, column: 13, scope: !885)
!1047 = !DILocation(line: 434, column: 13, scope: !883)
!1048 = !DILocation(line: 434, column: 17, scope: !883)
!1049 = !DILocation(line: 435, column: 43, scope: !883)
!1050 = !DILocation(line: 435, column: 19, scope: !883)
!1051 = !DILocation(line: 435, column: 6, scope: !883)
!1052 = !DILocation(line: 435, column: 9, scope: !883)
!1053 = !DILocation(line: 435, column: 17, scope: !883)
!1054 = !DILocation(line: 436, column: 41, scope: !883)
!1055 = !DILocation(line: 436, column: 33, scope: !883)
!1056 = !DILocation(line: 436, column: 13, scope: !883)
!1057 = !DILocation(line: 436, column: 16, scope: !883)
!1058 = !DILocation(line: 436, column: 31, scope: !883)
!1059 = !DILocation(line: 437, column: 9, scope: !884)
!1060 = !DILocation(line: 437, column: 9, scope: !883)
!1061 = !DILocation(line: 439, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !884, file: !3, line: 438, column: 14)
!1063 = !DILocation(line: 439, column: 16, scope: !1062)
!1064 = !DILocation(line: 439, column: 24, scope: !1062)
!1065 = !DILocation(line: 440, column: 13, scope: !1062)
!1066 = !DILocation(line: 440, column: 16, scope: !1062)
!1067 = !DILocation(line: 440, column: 31, scope: !1062)
!1068 = !DILocation(line: 444, column: 5, scope: !851)
!1069 = !DILocation(line: 445, column: 1, scope: !851)
!1070 = !DISubprogram(name: "qsort", scope: !365, file: !365, line: 838, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !10, !58, !58, !1073}
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !365, line: 816, baseType: !684)
!1074 = distinct !DISubprogram(name: "entry_cmp", scope: !3, file: !3, line: 604, type: !685, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1075 = !{!1076, !1077, !1078, !1081, !1082}
!1076 = !DILocalVariable(name: "p1", arg: 1, scope: !1074, file: !3, line: 604, type: !6)
!1077 = !DILocalVariable(name: "p2", arg: 2, scope: !1074, file: !3, line: 604, type: !6)
!1078 = !DILocalVariable(name: "e1", scope: !1074, file: !3, line: 606, type: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!1081 = !DILocalVariable(name: "e2", scope: !1074, file: !3, line: 606, type: !1079)
!1082 = !DILocalVariable(name: "c", scope: !1074, file: !3, line: 607, type: !65)
!1083 = !DILocation(line: 604, column: 23, scope: !1074)
!1084 = !DILocation(line: 604, column: 39, scope: !1074)
!1085 = !DILocation(line: 606, column: 5, scope: !1074)
!1086 = !DILocation(line: 606, column: 25, scope: !1074)
!1087 = !DILocation(line: 606, column: 30, scope: !1074)
!1088 = !DILocation(line: 607, column: 5, scope: !1074)
!1089 = !DILocation(line: 607, column: 9, scope: !1074)
!1090 = !DILocation(line: 609, column: 26, scope: !1074)
!1091 = !DILocation(line: 609, column: 8, scope: !1074)
!1092 = !DILocation(line: 610, column: 26, scope: !1074)
!1093 = !DILocation(line: 610, column: 8, scope: !1074)
!1094 = !DILocation(line: 612, column: 13, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 612, column: 9)
!1096 = !DILocation(line: 612, column: 48, scope: !1095)
!1097 = !DILocation(line: 612, column: 52, scope: !1095)
!1098 = !DILocation(line: 612, column: 58, scope: !1095)
!1099 = !DILocation(line: 612, column: 62, scope: !1095)
!1100 = !DILocation(line: 612, column: 12, scope: !1095)
!1101 = !DILocation(line: 612, column: 11, scope: !1095)
!1102 = !DILocation(line: 612, column: 69, scope: !1095)
!1103 = !DILocation(line: 612, column: 9, scope: !1074)
!1104 = !DILocation(line: 613, column: 9, scope: !1095)
!1105 = !DILocation(line: 613, column: 2, scope: !1095)
!1106 = !DILocation(line: 614, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 614, column: 9)
!1108 = !DILocation(line: 614, column: 13, scope: !1107)
!1109 = !DILocation(line: 614, column: 21, scope: !1107)
!1110 = !DILocation(line: 614, column: 25, scope: !1107)
!1111 = !DILocation(line: 614, column: 18, scope: !1107)
!1112 = !DILocation(line: 614, column: 9, scope: !1074)
!1113 = !DILocation(line: 615, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 615, column: 13)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 614, column: 31)
!1116 = !DILocation(line: 615, column: 17, scope: !1114)
!1117 = !DILocation(line: 615, column: 24, scope: !1114)
!1118 = !DILocation(line: 615, column: 28, scope: !1114)
!1119 = !DILocation(line: 615, column: 22, scope: !1114)
!1120 = !DILocation(line: 615, column: 13, scope: !1115)
!1121 = !DILocation(line: 616, column: 13, scope: !1114)
!1122 = !DILocation(line: 618, column: 13, scope: !1114)
!1123 = !DILocation(line: 620, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 620, column: 9)
!1125 = !DILocation(line: 620, column: 13, scope: !1124)
!1126 = !DILocation(line: 620, column: 20, scope: !1124)
!1127 = !DILocation(line: 620, column: 24, scope: !1124)
!1128 = !DILocation(line: 620, column: 17, scope: !1124)
!1129 = !DILocation(line: 620, column: 9, scope: !1074)
!1130 = !DILocation(line: 621, column: 14, scope: !1124)
!1131 = !DILocation(line: 621, column: 18, scope: !1124)
!1132 = !DILocation(line: 621, column: 29, scope: !1124)
!1133 = !DILocation(line: 621, column: 33, scope: !1124)
!1134 = !DILocation(line: 621, column: 22, scope: !1124)
!1135 = !DILocation(line: 621, column: 2, scope: !1124)
!1136 = !DILocation(line: 623, column: 5, scope: !1074)
!1137 = !DILocation(line: 624, column: 1, scope: !1074)
!1138 = distinct !DISubprogram(name: "compare_list", scope: !3, file: !3, line: 464, type: !1139, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1149)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!65, !227, !5, !1141, !65, !684, !1143, !1146}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!65, !227, !6, !6}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !6}
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1159, !1160, !1161}
!1150 = !DILocalVariable(name: "name", arg: 1, scope: !1138, file: !3, line: 464, type: !227)
!1151 = !DILocalVariable(name: "l", arg: 2, scope: !1138, file: !3, line: 465, type: !5)
!1152 = !DILocalVariable(name: "n", arg: 3, scope: !1138, file: !3, line: 465, type: !1141)
!1153 = !DILocalVariable(name: "size", arg: 4, scope: !1138, file: !3, line: 465, type: !65)
!1154 = !DILocalVariable(name: "cmp", arg: 5, scope: !1138, file: !3, line: 466, type: !684)
!1155 = !DILocalVariable(name: "check", arg: 6, scope: !1138, file: !3, line: 467, type: !1143)
!1156 = !DILocalVariable(name: "print", arg: 7, scope: !1138, file: !3, line: 468, type: !1146)
!1157 = !DILocalVariable(name: "i", scope: !1138, file: !3, line: 470, type: !1158)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !124)
!1159 = !DILocalVariable(name: "j", scope: !1138, file: !3, line: 471, type: !65)
!1160 = !DILocalVariable(name: "c", scope: !1138, file: !3, line: 471, type: !65)
!1161 = !DILocalVariable(name: "diff", scope: !1138, file: !3, line: 472, type: !65)
!1162 = !DILocation(line: 464, column: 27, scope: !1138)
!1163 = !DILocation(line: 465, column: 19, scope: !1138)
!1164 = !DILocation(line: 465, column: 44, scope: !1138)
!1165 = !DILocation(line: 465, column: 54, scope: !1138)
!1166 = !DILocation(line: 466, column: 13, scope: !1138)
!1167 = !DILocation(line: 467, column: 13, scope: !1138)
!1168 = !DILocation(line: 468, column: 14, scope: !1138)
!1169 = !DILocation(line: 470, column: 5, scope: !1138)
!1170 = !DILocation(line: 470, column: 18, scope: !1138)
!1171 = !DILocation(line: 471, column: 5, scope: !1138)
!1172 = !DILocation(line: 471, column: 9, scope: !1138)
!1173 = !DILocation(line: 471, column: 12, scope: !1138)
!1174 = !DILocation(line: 472, column: 5, scope: !1138)
!1175 = !DILocation(line: 472, column: 9, scope: !1138)
!1176 = !DILocation(line: 487, column: 12, scope: !1138)
!1177 = !DILocation(line: 487, column: 17, scope: !1138)
!1178 = !DILocation(line: 487, column: 5, scope: !1138)
!1179 = !DILocation(line: 487, column: 10, scope: !1138)
!1180 = !DILocation(line: 488, column: 10, scope: !1138)
!1181 = !DILocation(line: 489, column: 5, scope: !1138)
!1182 = !DILocation(line: 489, column: 12, scope: !1138)
!1183 = !DILocation(line: 489, column: 17, scope: !1138)
!1184 = !DILocation(line: 489, column: 16, scope: !1138)
!1185 = !DILocation(line: 489, column: 22, scope: !1138)
!1186 = !DILocation(line: 489, column: 25, scope: !1138)
!1187 = !DILocation(line: 489, column: 30, scope: !1138)
!1188 = !DILocation(line: 489, column: 29, scope: !1138)
!1189 = !DILocation(line: 0, scope: !1138)
!1190 = !DILocation(line: 490, column: 6, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 489, column: 36)
!1192 = !DILocation(line: 490, column: 10, scope: !1191)
!1193 = !DILocation(line: 490, column: 16, scope: !1191)
!1194 = !DILocation(line: 490, column: 4, scope: !1191)
!1195 = !DILocation(line: 492, column: 6, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 492, column: 6)
!1197 = !DILocation(line: 492, column: 8, scope: !1196)
!1198 = !DILocation(line: 492, column: 6, scope: !1191)
!1199 = !DILocation(line: 493, column: 10, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 493, column: 10)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 492, column: 14)
!1202 = !DILocation(line: 493, column: 10, scope: !1201)
!1203 = !DILocation(line: 494, column: 11, scope: !1200)
!1204 = !DILocation(line: 494, column: 17, scope: !1200)
!1205 = !DILocation(line: 494, column: 23, scope: !1200)
!1206 = !DILocation(line: 494, column: 29, scope: !1200)
!1207 = !DILocation(line: 494, column: 8, scope: !1200)
!1208 = !DILocation(line: 494, column: 3, scope: !1200)
!1209 = !DILocation(line: 495, column: 6, scope: !1201)
!1210 = !DILocation(line: 496, column: 6, scope: !1201)
!1211 = !DILocation(line: 497, column: 2, scope: !1201)
!1212 = !DILocation(line: 498, column: 11, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 498, column: 11)
!1214 = !DILocation(line: 498, column: 13, scope: !1213)
!1215 = !DILocation(line: 498, column: 11, scope: !1196)
!1216 = !DILocation(line: 499, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 498, column: 18)
!1218 = !DILocation(line: 499, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 499, column: 6)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 499, column: 6)
!1221 = !DILocation(line: 499, column: 6, scope: !1220)
!1222 = !DILocation(line: 499, column: 6, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 499, column: 6)
!1224 = !DILocation(line: 499, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 499, column: 6)
!1226 = !DILocation(line: 499, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 499, column: 6)
!1228 = !DILocation(line: 500, column: 6, scope: !1217)
!1229 = !DILocation(line: 501, column: 2, scope: !1217)
!1230 = !DILocation(line: 503, column: 6, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 502, column: 7)
!1232 = !DILocation(line: 503, column: 6, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 503, column: 6)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 503, column: 6)
!1235 = !DILocation(line: 503, column: 6, scope: !1234)
!1236 = !DILocation(line: 503, column: 6, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 503, column: 6)
!1238 = !DILocation(line: 503, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 503, column: 6)
!1240 = !DILocation(line: 503, column: 6, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 503, column: 6)
!1242 = !DILocation(line: 504, column: 6, scope: !1231)
!1243 = distinct !{!1243, !1181, !1244, !285}
!1244 = !DILocation(line: 506, column: 5, scope: !1138)
!1245 = !DILocation(line: 508, column: 11, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 508, column: 5)
!1247 = !DILocation(line: 508, column: 10, scope: !1246)
!1248 = !DILocation(line: 508, column: 15, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 508, column: 5)
!1250 = !DILocation(line: 508, column: 16, scope: !1249)
!1251 = !DILocation(line: 508, column: 5, scope: !1246)
!1252 = !DILocation(line: 509, column: 2, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 508, column: 25)
!1254 = !DILocation(line: 509, column: 11, scope: !1253)
!1255 = !DILocation(line: 509, column: 9, scope: !1253)
!1256 = !DILocation(line: 509, column: 14, scope: !1253)
!1257 = !DILocation(line: 509, column: 16, scope: !1253)
!1258 = !DILocation(line: 509, column: 13, scope: !1253)
!1259 = !DILocation(line: 510, column: 6, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 509, column: 20)
!1261 = !DILocation(line: 510, column: 6, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 510, column: 6)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 510, column: 6)
!1264 = !DILocation(line: 510, column: 6, scope: !1263)
!1265 = !DILocation(line: 510, column: 6, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 510, column: 6)
!1267 = !DILocation(line: 510, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 510, column: 6)
!1269 = !DILocation(line: 510, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 510, column: 6)
!1271 = !DILocation(line: 511, column: 6, scope: !1260)
!1272 = distinct !{!1272, !1252, !1273, !285}
!1273 = !DILocation(line: 512, column: 2, scope: !1253)
!1274 = !DILocation(line: 513, column: 5, scope: !1253)
!1275 = !DILocation(line: 508, column: 21, scope: !1249)
!1276 = !DILocation(line: 508, column: 5, scope: !1249)
!1277 = distinct !{!1277, !1251, !1278, !285}
!1278 = !DILocation(line: 513, column: 5, scope: !1246)
!1279 = !DILocation(line: 515, column: 12, scope: !1138)
!1280 = !DILocation(line: 516, column: 1, scope: !1138)
!1281 = !DILocation(line: 515, column: 5, scope: !1138)
!1282 = distinct !DISubprogram(name: "entry_paranoia_checks", scope: !3, file: !3, line: 628, type: !1144, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289}
!1284 = !DILocalVariable(name: "name", arg: 1, scope: !1282, file: !3, line: 628, type: !227)
!1285 = !DILocalVariable(name: "p1", arg: 2, scope: !1282, file: !3, line: 628, type: !6)
!1286 = !DILocalVariable(name: "p2", arg: 3, scope: !1282, file: !3, line: 628, type: !6)
!1287 = !DILocalVariable(name: "e1", scope: !1282, file: !3, line: 629, type: !1079)
!1288 = !DILocalVariable(name: "e2", scope: !1282, file: !3, line: 629, type: !1079)
!1289 = !DILocalVariable(name: "ret", scope: !1282, file: !3, line: 630, type: !65)
!1290 = !DILocation(line: 628, column: 35, scope: !1282)
!1291 = !DILocation(line: 628, column: 56, scope: !1282)
!1292 = !DILocation(line: 628, column: 72, scope: !1282)
!1293 = !DILocation(line: 629, column: 5, scope: !1282)
!1294 = !DILocation(line: 629, column: 25, scope: !1282)
!1295 = !DILocation(line: 629, column: 30, scope: !1282)
!1296 = !DILocation(line: 630, column: 5, scope: !1282)
!1297 = !DILocation(line: 630, column: 9, scope: !1282)
!1298 = !DILocation(line: 632, column: 26, scope: !1282)
!1299 = !DILocation(line: 632, column: 8, scope: !1282)
!1300 = !DILocation(line: 633, column: 26, scope: !1282)
!1301 = !DILocation(line: 633, column: 8, scope: !1282)
!1302 = !DILocation(line: 635, column: 9, scope: !1282)
!1303 = !DILocation(line: 637, column: 20, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 637, column: 9)
!1305 = !DILocation(line: 637, column: 26, scope: !1304)
!1306 = !DILocation(line: 637, column: 30, scope: !1304)
!1307 = !DILocation(line: 637, column: 9, scope: !1304)
!1308 = !DILocation(line: 637, column: 34, scope: !1304)
!1309 = !DILocation(line: 637, column: 9, scope: !1282)
!1310 = !DILocation(line: 638, column: 6, scope: !1304)
!1311 = !DILocation(line: 638, column: 2, scope: !1304)
!1312 = !DILocation(line: 640, column: 9, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 640, column: 9)
!1314 = !DILocation(line: 640, column: 13, scope: !1313)
!1315 = !DILocation(line: 640, column: 28, scope: !1313)
!1316 = !DILocation(line: 640, column: 32, scope: !1313)
!1317 = !DILocation(line: 640, column: 25, scope: !1313)
!1318 = !DILocation(line: 640, column: 9, scope: !1282)
!1319 = !DILocation(line: 641, column: 6, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 641, column: 6)
!1321 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 640, column: 45)
!1322 = !DILocation(line: 641, column: 6, scope: !1321)
!1323 = !DILocation(line: 642, column: 10, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 642, column: 10)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 641, column: 15)
!1326 = !DILocation(line: 642, column: 21, scope: !1324)
!1327 = !DILocation(line: 642, column: 10, scope: !1325)
!1328 = !DILocation(line: 643, column: 30, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 642, column: 26)
!1330 = !DILocation(line: 643, column: 39, scope: !1329)
!1331 = !DILocation(line: 643, column: 3, scope: !1329)
!1332 = !DILocation(line: 644, column: 15, scope: !1329)
!1333 = !DILocation(line: 645, column: 6, scope: !1329)
!1334 = !DILocation(line: 646, column: 45, scope: !1325)
!1335 = !DILocation(line: 646, column: 49, scope: !1325)
!1336 = !DILocation(line: 646, column: 6, scope: !1325)
!1337 = !DILocation(line: 647, column: 28, scope: !1325)
!1338 = !DILocation(line: 647, column: 32, scope: !1325)
!1339 = !DILocation(line: 647, column: 6, scope: !1325)
!1340 = !DILocation(line: 648, column: 45, scope: !1325)
!1341 = !DILocation(line: 648, column: 49, scope: !1325)
!1342 = !DILocation(line: 648, column: 6, scope: !1325)
!1343 = !DILocation(line: 649, column: 28, scope: !1325)
!1344 = !DILocation(line: 649, column: 32, scope: !1325)
!1345 = !DILocation(line: 649, column: 6, scope: !1325)
!1346 = !DILocation(line: 650, column: 2, scope: !1325)
!1347 = !DILocation(line: 651, column: 6, scope: !1321)
!1348 = !DILocation(line: 652, column: 5, scope: !1321)
!1349 = !DILocation(line: 653, column: 25, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 653, column: 9)
!1351 = !DILocation(line: 653, column: 29, scope: !1350)
!1352 = !DILocation(line: 653, column: 38, scope: !1350)
!1353 = !DILocation(line: 653, column: 42, scope: !1350)
!1354 = !{!796, !234, i64 48}
!1355 = !DILocation(line: 653, column: 58, scope: !1350)
!1356 = !DILocation(line: 653, column: 62, scope: !1350)
!1357 = !DILocation(line: 653, column: 71, scope: !1350)
!1358 = !DILocation(line: 653, column: 75, scope: !1350)
!1359 = !DILocation(line: 653, column: 9, scope: !1350)
!1360 = !DILocation(line: 653, column: 91, scope: !1350)
!1361 = !DILocation(line: 653, column: 9, scope: !1282)
!1362 = !DILocation(line: 654, column: 6, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 654, column: 6)
!1364 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 653, column: 97)
!1365 = !DILocation(line: 654, column: 6, scope: !1364)
!1366 = !DILocation(line: 655, column: 10, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 655, column: 10)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 654, column: 15)
!1369 = !DILocation(line: 655, column: 21, scope: !1367)
!1370 = !DILocation(line: 655, column: 10, scope: !1368)
!1371 = !DILocation(line: 656, column: 30, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 655, column: 26)
!1373 = !DILocation(line: 656, column: 39, scope: !1372)
!1374 = !DILocation(line: 656, column: 3, scope: !1372)
!1375 = !DILocation(line: 657, column: 15, scope: !1372)
!1376 = !DILocation(line: 658, column: 6, scope: !1372)
!1377 = !DILocation(line: 659, column: 45, scope: !1368)
!1378 = !DILocation(line: 659, column: 49, scope: !1368)
!1379 = !DILocation(line: 659, column: 6, scope: !1368)
!1380 = !DILocation(line: 660, column: 29, scope: !1368)
!1381 = !DILocation(line: 660, column: 33, scope: !1368)
!1382 = !DILocation(line: 660, column: 6, scope: !1368)
!1383 = !DILocation(line: 661, column: 45, scope: !1368)
!1384 = !DILocation(line: 661, column: 49, scope: !1368)
!1385 = !DILocation(line: 661, column: 6, scope: !1368)
!1386 = !DILocation(line: 662, column: 29, scope: !1368)
!1387 = !DILocation(line: 662, column: 33, scope: !1368)
!1388 = !DILocation(line: 662, column: 6, scope: !1368)
!1389 = !DILocation(line: 663, column: 2, scope: !1368)
!1390 = !DILocation(line: 664, column: 6, scope: !1364)
!1391 = !DILocation(line: 665, column: 5, scope: !1364)
!1392 = !DILocation(line: 667, column: 12, scope: !1282)
!1393 = !DILocation(line: 668, column: 1, scope: !1282)
!1394 = !DILocation(line: 667, column: 5, scope: !1282)
!1395 = distinct !DISubprogram(name: "entry_print", scope: !3, file: !3, line: 673, type: !1147, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1396 = !{!1397, !1398}
!1397 = !DILocalVariable(name: "p", arg: 1, scope: !1395, file: !3, line: 673, type: !6)
!1398 = !DILocalVariable(name: "e", scope: !1395, file: !3, line: 675, type: !1079)
!1399 = !DILocation(line: 673, column: 25, scope: !1395)
!1400 = !DILocation(line: 675, column: 5, scope: !1395)
!1401 = !DILocation(line: 675, column: 25, scope: !1395)
!1402 = !DILocation(line: 677, column: 25, scope: !1395)
!1403 = !DILocation(line: 677, column: 7, scope: !1395)
!1404 = !DILocation(line: 680, column: 46, scope: !1395)
!1405 = !DILocation(line: 680, column: 49, scope: !1395)
!1406 = !DILocation(line: 680, column: 55, scope: !1395)
!1407 = !DILocation(line: 680, column: 58, scope: !1395)
!1408 = !DILocation(line: 680, column: 63, scope: !1395)
!1409 = !DILocation(line: 680, column: 66, scope: !1395)
!1410 = !DILocation(line: 680, column: 5, scope: !1395)
!1411 = !DILocation(line: 681, column: 1, scope: !1395)
!1412 = distinct !DISubprogram(name: "comment_compare", scope: !3, file: !3, line: 449, type: !1413, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!65, !39, !58, !39, !58}
!1415 = !{!1416, !1417, !1418, !1419}
!1416 = !DILocalVariable(name: "c1", arg: 1, scope: !1412, file: !3, line: 449, type: !39)
!1417 = !DILocalVariable(name: "l1", arg: 2, scope: !1412, file: !3, line: 449, type: !58)
!1418 = !DILocalVariable(name: "c2", arg: 3, scope: !1412, file: !3, line: 449, type: !39)
!1419 = !DILocalVariable(name: "l2", arg: 4, scope: !1412, file: !3, line: 449, type: !58)
!1420 = !DILocation(line: 449, column: 29, scope: !1412)
!1421 = !DILocation(line: 449, column: 40, scope: !1412)
!1422 = !DILocation(line: 449, column: 56, scope: !1412)
!1423 = !DILocation(line: 449, column: 67, scope: !1412)
!1424 = !DILocation(line: 450, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 450, column: 9)
!1426 = !DILocation(line: 450, column: 15, scope: !1425)
!1427 = !DILocation(line: 450, column: 12, scope: !1425)
!1428 = !DILocation(line: 450, column: 9, scope: !1412)
!1429 = !DILocation(line: 451, column: 2, scope: !1425)
!1430 = !DILocation(line: 453, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 453, column: 9)
!1432 = !DILocation(line: 453, column: 12, scope: !1431)
!1433 = !DILocation(line: 453, column: 9, scope: !1412)
!1434 = !DILocation(line: 454, column: 2, scope: !1431)
!1435 = !DILocation(line: 456, column: 9, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 456, column: 9)
!1437 = !DILocation(line: 456, column: 12, scope: !1436)
!1438 = !DILocation(line: 456, column: 20, scope: !1436)
!1439 = !DILocation(line: 456, column: 23, scope: !1436)
!1440 = !DILocation(line: 456, column: 26, scope: !1436)
!1441 = !DILocation(line: 456, column: 9, scope: !1412)
!1442 = !DILocation(line: 457, column: 16, scope: !1436)
!1443 = !DILocation(line: 457, column: 22, scope: !1436)
!1444 = !DILocation(line: 457, column: 19, scope: !1436)
!1445 = !DILocation(line: 457, column: 9, scope: !1436)
!1446 = !DILocation(line: 459, column: 19, scope: !1412)
!1447 = !DILocation(line: 459, column: 23, scope: !1412)
!1448 = !DILocation(line: 459, column: 35, scope: !1412)
!1449 = !DILocation(line: 459, column: 12, scope: !1412)
!1450 = !DILocation(line: 459, column: 5, scope: !1412)
!1451 = !DILocation(line: 460, column: 1, scope: !1412)
!1452 = !DISubprogram(name: "zip_close", scope: !384, file: !384, line: 331, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!65, !382}
!1455 = !DISubprogram(name: "stat", scope: !662, file: !662, line: 205, type: !1456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!65, !312, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !673)
!1459 = !DISubprogram(name: "fts_open", scope: !642, file: !642, line: 184, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!640, !227, !65, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!65, !1465, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!1468 = !DISubprogram(name: "strerror", scope: !1469, file: !1469, line: 419, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1469 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!8, !65}
!1472 = !DISubprogram(name: "__errno_location", scope: !1473, file: !1473, line: 37, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1473 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1477 = !DISubprogram(name: "strlen", scope: !1469, file: !1469, line: 407, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!17, !39}
!1480 = !DISubprogram(name: "fts_read", scope: !642, file: !642, line: 186, type: !1481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!689, !640}
!1483 = !DISubprogram(name: "fts_close", scope: !642, file: !642, line: 183, type: !1484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!65, !640}
!1486 = !DISubprogram(name: "realloc", scope: !365, file: !365, line: 551, type: !1487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!10, !10, !58}
!1489 = !DISubprogram(name: "strdup", scope: !1469, file: !1469, line: 187, type: !1490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!8, !39}
!1492 = distinct !DISubprogram(name: "compute_crc", scope: !3, file: !3, line: 268, type: !1493, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!22, !39}
!1495 = !{!1496, !1497, !1498, !1500, !1501}
!1496 = !DILocalVariable(name: "fname", arg: 1, scope: !1492, file: !3, line: 268, type: !39)
!1497 = !DILocalVariable(name: "f", scope: !1492, file: !3, line: 270, type: !314)
!1498 = !DILocalVariable(name: "crc", scope: !1492, file: !3, line: 271, type: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !63, line: 125, baseType: !17)
!1500 = !DILocalVariable(name: "n", scope: !1492, file: !3, line: 272, type: !58)
!1501 = !DILocalVariable(name: "buffer", scope: !1492, file: !3, line: 273, type: !1502)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 65536, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 8192)
!1505 = !DILocation(line: 268, column: 25, scope: !1492)
!1506 = !DILocation(line: 270, column: 5, scope: !1492)
!1507 = !DILocation(line: 270, column: 11, scope: !1492)
!1508 = !DILocation(line: 271, column: 5, scope: !1492)
!1509 = !DILocation(line: 271, column: 11, scope: !1492)
!1510 = !DILocation(line: 271, column: 17, scope: !1492)
!1511 = !DILocation(line: 272, column: 5, scope: !1492)
!1512 = !DILocation(line: 272, column: 12, scope: !1492)
!1513 = !DILocation(line: 273, column: 5, scope: !1492)
!1514 = !DILocation(line: 273, column: 11, scope: !1492)
!1515 = !DILocation(line: 276, column: 18, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 276, column: 9)
!1517 = !DILocation(line: 276, column: 12, scope: !1516)
!1518 = !DILocation(line: 276, column: 11, scope: !1516)
!1519 = !DILocation(line: 276, column: 31, scope: !1516)
!1520 = !DILocation(line: 276, column: 9, scope: !1492)
!1521 = !DILocation(line: 277, column: 10, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 276, column: 40)
!1523 = !DILocation(line: 277, column: 45, scope: !1522)
!1524 = !DILocation(line: 277, column: 50, scope: !1522)
!1525 = !DILocation(line: 277, column: 66, scope: !1522)
!1526 = !DILocation(line: 277, column: 57, scope: !1522)
!1527 = !DILocation(line: 277, column: 2, scope: !1522)
!1528 = !DILocation(line: 278, column: 2, scope: !1522)
!1529 = !DILocation(line: 281, column: 5, scope: !1492)
!1530 = !DILocation(line: 281, column: 21, scope: !1492)
!1531 = !DILocation(line: 281, column: 48, scope: !1492)
!1532 = !DILocation(line: 281, column: 15, scope: !1492)
!1533 = !DILocation(line: 281, column: 14, scope: !1492)
!1534 = !DILocation(line: 281, column: 52, scope: !1492)
!1535 = !DILocation(line: 282, column: 14, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 281, column: 57)
!1537 = !DILocation(line: 282, column: 19, scope: !1536)
!1538 = !DILocation(line: 282, column: 41, scope: !1536)
!1539 = !DILocation(line: 282, column: 27, scope: !1536)
!1540 = !DILocation(line: 282, column: 8, scope: !1536)
!1541 = !DILocation(line: 282, column: 6, scope: !1536)
!1542 = distinct !{!1542, !1529, !1543, !285}
!1543 = !DILocation(line: 283, column: 5, scope: !1492)
!1544 = !DILocation(line: 285, column: 16, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 285, column: 9)
!1546 = !DILocation(line: 285, column: 9, scope: !1545)
!1547 = !DILocation(line: 285, column: 9, scope: !1492)
!1548 = !DILocation(line: 286, column: 10, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 285, column: 20)
!1550 = !DILocation(line: 286, column: 48, scope: !1549)
!1551 = !DILocation(line: 286, column: 53, scope: !1549)
!1552 = !DILocation(line: 286, column: 69, scope: !1549)
!1553 = !DILocation(line: 286, column: 60, scope: !1549)
!1554 = !DILocation(line: 286, column: 2, scope: !1549)
!1555 = !DILocation(line: 287, column: 9, scope: !1549)
!1556 = !DILocation(line: 287, column: 2, scope: !1549)
!1557 = !DILocation(line: 288, column: 2, scope: !1549)
!1558 = !DILocation(line: 291, column: 12, scope: !1492)
!1559 = !DILocation(line: 291, column: 5, scope: !1492)
!1560 = !DILocation(line: 293, column: 25, scope: !1492)
!1561 = !DILocation(line: 293, column: 5, scope: !1492)
!1562 = !DILocation(line: 294, column: 1, scope: !1492)
!1563 = !DISubprogram(name: "crc32", scope: !1564, file: !1564, line: 1705, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_/linux-ubuntu22.04-zen2/clang-18.0.0/zlib-ng-2.1.4-lf6r7k4krys7xeuhd6faiwtpvvvf43ts/include/zlib.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build", checksumkind: CSK_MD5, checksum: "6de5f76a2b2462480db006f0a81f31fb")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!17, !17, !1567, !21}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1569 = !DISubprogram(name: "fopen", scope: !309, file: !309, line: 258, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!314, !312, !312}
!1572 = !DISubprogram(name: "fread", scope: !309, file: !309, line: 675, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!17, !1575, !58, !58, !313}
!1575 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!1576 = !DISubprogram(name: "ferror", scope: !309, file: !309, line: 790, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!65, !314}
!1579 = !DISubprogram(name: "fclose", scope: !309, file: !309, line: 178, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DISubprogram(name: "zip_open", scope: !384, file: !384, line: 382, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!382, !39, !65, !1476}
!1583 = !DISubprogram(name: "zip_error_init_with_code", scope: !384, file: !384, line: 342, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586, !65}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!1587 = !DISubprogram(name: "zip_error_strerror", scope: !384, file: !384, line: 344, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!39, !1586}
!1590 = !DISubprogram(name: "zip_error_fini", scope: !384, file: !384, line: 340, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1586}
!1593 = !DISubprogram(name: "zip_get_num_entries", scope: !384, file: !384, line: 379, type: !1594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!22, !382, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_flags_t", file: !384, line: 309, baseType: !18)
!1597 = !DISubprogram(name: "malloc", scope: !365, file: !365, line: 540, type: !1598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!10, !58}
!1600 = !DISubprogram(name: "zip_stat_index", scope: !384, file: !384, line: 425, type: !1601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!65, !382, !11, !1596, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_stat_t", file: !384, line: 307, baseType: !858)
!1605 = distinct !DISubprogram(name: "test_file", scope: !3, file: !3, line: 685, type: !1606, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1608)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!65, !382, !11, !11, !18}
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1617, !1619, !1620, !1621}
!1609 = !DILocalVariable(name: "za", arg: 1, scope: !1605, file: !3, line: 685, type: !382)
!1610 = !DILocalVariable(name: "idx", arg: 2, scope: !1605, file: !3, line: 685, type: !11)
!1611 = !DILocalVariable(name: "size", arg: 3, scope: !1605, file: !3, line: 685, type: !11)
!1612 = !DILocalVariable(name: "crc", arg: 4, scope: !1605, file: !3, line: 685, type: !18)
!1613 = !DILocalVariable(name: "zf", scope: !1605, file: !3, line: 687, type: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_file_t", file: !384, line: 305, baseType: !1616)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip_file", file: !384, line: 300, flags: DIFlagFwdDecl)
!1617 = !DILocalVariable(name: "buf", scope: !1605, file: !3, line: 688, type: !1618)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 65536, elements: !1503)
!1619 = !DILocalVariable(name: "nsize", scope: !1605, file: !3, line: 689, type: !11)
!1620 = !DILocalVariable(name: "n", scope: !1605, file: !3, line: 690, type: !22)
!1621 = !DILocalVariable(name: "ncrc", scope: !1605, file: !3, line: 691, type: !18)
!1622 = !DILocation(line: 685, column: 18, scope: !1605)
!1623 = !DILocation(line: 685, column: 35, scope: !1605)
!1624 = !DILocation(line: 685, column: 53, scope: !1605)
!1625 = !DILocation(line: 685, column: 72, scope: !1605)
!1626 = !DILocation(line: 687, column: 5, scope: !1605)
!1627 = !DILocation(line: 687, column: 17, scope: !1605)
!1628 = !DILocation(line: 688, column: 5, scope: !1605)
!1629 = !DILocation(line: 688, column: 10, scope: !1605)
!1630 = !DILocation(line: 689, column: 5, scope: !1605)
!1631 = !DILocation(line: 689, column: 18, scope: !1605)
!1632 = !DILocation(line: 690, column: 5, scope: !1605)
!1633 = !DILocation(line: 690, column: 17, scope: !1605)
!1634 = !DILocation(line: 691, column: 5, scope: !1605)
!1635 = !DILocation(line: 691, column: 18, scope: !1605)
!1636 = !DILocation(line: 693, column: 29, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 693, column: 9)
!1638 = !DILocation(line: 693, column: 33, scope: !1637)
!1639 = !DILocation(line: 693, column: 13, scope: !1637)
!1640 = !DILocation(line: 693, column: 12, scope: !1637)
!1641 = !DILocation(line: 693, column: 42, scope: !1637)
!1642 = !DILocation(line: 693, column: 9, scope: !1605)
!1643 = !DILocation(line: 694, column: 10, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 693, column: 51)
!1645 = !DILocation(line: 694, column: 71, scope: !1644)
!1646 = !DILocation(line: 694, column: 76, scope: !1644)
!1647 = !DILocation(line: 694, column: 94, scope: !1644)
!1648 = !DILocation(line: 694, column: 81, scope: !1644)
!1649 = !DILocation(line: 694, column: 2, scope: !1644)
!1650 = !DILocation(line: 695, column: 2, scope: !1644)
!1651 = !DILocation(line: 698, column: 26, scope: !1605)
!1652 = !DILocation(line: 698, column: 12, scope: !1605)
!1653 = !DILocation(line: 698, column: 10, scope: !1605)
!1654 = !DILocation(line: 699, column: 11, scope: !1605)
!1655 = !DILocation(line: 701, column: 5, scope: !1605)
!1656 = !DILocation(line: 701, column: 25, scope: !1605)
!1657 = !DILocation(line: 701, column: 29, scope: !1605)
!1658 = !DILocation(line: 701, column: 15, scope: !1605)
!1659 = !DILocation(line: 701, column: 14, scope: !1605)
!1660 = !DILocation(line: 701, column: 48, scope: !1605)
!1661 = !DILocation(line: 702, column: 25, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 701, column: 53)
!1663 = !DILocation(line: 702, column: 8, scope: !1662)
!1664 = !DILocation(line: 703, column: 29, scope: !1662)
!1665 = !DILocation(line: 703, column: 50, scope: !1662)
!1666 = !DILocation(line: 703, column: 69, scope: !1662)
!1667 = !DILocation(line: 703, column: 55, scope: !1662)
!1668 = !DILocation(line: 703, column: 23, scope: !1662)
!1669 = !DILocation(line: 703, column: 9, scope: !1662)
!1670 = !DILocation(line: 703, column: 7, scope: !1662)
!1671 = distinct !{!1671, !1655, !1672, !285}
!1672 = !DILocation(line: 704, column: 5, scope: !1605)
!1673 = !DILocation(line: 706, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 706, column: 9)
!1675 = !DILocation(line: 706, column: 11, scope: !1674)
!1676 = !DILocation(line: 706, column: 9, scope: !1605)
!1677 = !DILocation(line: 707, column: 10, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 706, column: 16)
!1679 = !DILocation(line: 707, column: 73, scope: !1678)
!1680 = !DILocation(line: 707, column: 78, scope: !1678)
!1681 = !DILocation(line: 707, column: 101, scope: !1678)
!1682 = !DILocation(line: 707, column: 83, scope: !1678)
!1683 = !DILocation(line: 707, column: 2, scope: !1678)
!1684 = !DILocation(line: 708, column: 13, scope: !1678)
!1685 = !DILocation(line: 708, column: 2, scope: !1678)
!1686 = !DILocation(line: 709, column: 2, scope: !1678)
!1687 = !DILocation(line: 712, column: 16, scope: !1605)
!1688 = !DILocation(line: 712, column: 5, scope: !1605)
!1689 = !DILocation(line: 714, column: 9, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 714, column: 9)
!1691 = !DILocation(line: 714, column: 18, scope: !1690)
!1692 = !DILocation(line: 714, column: 15, scope: !1690)
!1693 = !DILocation(line: 714, column: 9, scope: !1605)
!1694 = !DILocation(line: 715, column: 10, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 714, column: 24)
!1696 = !DILocation(line: 715, column: 99, scope: !1695)
!1697 = !DILocation(line: 715, column: 104, scope: !1695)
!1698 = !DILocation(line: 715, column: 109, scope: !1695)
!1699 = !DILocation(line: 715, column: 116, scope: !1695)
!1700 = !DILocation(line: 715, column: 2, scope: !1695)
!1701 = !DILocation(line: 716, column: 2, scope: !1695)
!1702 = !DILocation(line: 718, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 718, column: 9)
!1704 = !DILocation(line: 718, column: 17, scope: !1703)
!1705 = !DILocation(line: 718, column: 14, scope: !1703)
!1706 = !DILocation(line: 718, column: 9, scope: !1605)
!1707 = !DILocation(line: 719, column: 10, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 718, column: 22)
!1709 = !DILocation(line: 719, column: 81, scope: !1708)
!1710 = !DILocation(line: 719, column: 86, scope: !1708)
!1711 = !DILocation(line: 719, column: 91, scope: !1708)
!1712 = !DILocation(line: 719, column: 97, scope: !1708)
!1713 = !DILocation(line: 719, column: 2, scope: !1708)
!1714 = !DILocation(line: 720, column: 2, scope: !1708)
!1715 = !DILocation(line: 723, column: 5, scope: !1605)
!1716 = !DILocation(line: 724, column: 1, scope: !1605)
!1717 = distinct !DISubprogram(name: "ef_read", scope: !3, file: !3, line: 520, type: !1718, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!65, !382, !11, !27}
!1720 = !{!1721, !1722, !1723, !1724, !1728, !1729}
!1721 = !DILocalVariable(name: "za", arg: 1, scope: !1717, file: !3, line: 520, type: !382)
!1722 = !DILocalVariable(name: "idx", arg: 2, scope: !1717, file: !3, line: 520, type: !11)
!1723 = !DILocalVariable(name: "e", arg: 3, scope: !1717, file: !3, line: 520, type: !27)
!1724 = !DILocalVariable(name: "n_local", scope: !1717, file: !3, line: 522, type: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int16_t", file: !12, line: 25, baseType: !1726)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !24, line: 25, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !16, line: 39, baseType: !668)
!1728 = !DILocalVariable(name: "n_central", scope: !1717, file: !3, line: 522, type: !1725)
!1729 = !DILocalVariable(name: "i", scope: !1717, file: !3, line: 523, type: !42)
!1730 = !DILocation(line: 520, column: 16, scope: !1717)
!1731 = !DILocation(line: 520, column: 33, scope: !1717)
!1732 = !DILocation(line: 520, column: 52, scope: !1717)
!1733 = !DILocation(line: 522, column: 5, scope: !1717)
!1734 = !DILocation(line: 522, column: 17, scope: !1717)
!1735 = !DILocation(line: 522, column: 26, scope: !1717)
!1736 = !DILocation(line: 523, column: 5, scope: !1717)
!1737 = !DILocation(line: 523, column: 18, scope: !1717)
!1738 = !DILocation(line: 525, column: 48, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 525, column: 9)
!1740 = !DILocation(line: 525, column: 52, scope: !1739)
!1741 = !DILocation(line: 525, column: 20, scope: !1739)
!1742 = !DILocation(line: 525, column: 18, scope: !1739)
!1743 = !{!740, !740, i64 0}
!1744 = !DILocation(line: 525, column: 9, scope: !1739)
!1745 = !DILocation(line: 525, column: 72, scope: !1739)
!1746 = !DILocation(line: 526, column: 9, scope: !1739)
!1747 = !DILocation(line: 526, column: 53, scope: !1739)
!1748 = !DILocation(line: 526, column: 57, scope: !1739)
!1749 = !DILocation(line: 526, column: 25, scope: !1739)
!1750 = !DILocation(line: 526, column: 23, scope: !1739)
!1751 = !DILocation(line: 526, column: 12, scope: !1739)
!1752 = !DILocation(line: 526, column: 79, scope: !1739)
!1753 = !DILocation(line: 525, column: 9, scope: !1717)
!1754 = !DILocation(line: 527, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 526, column: 84)
!1756 = !DILocation(line: 530, column: 40, scope: !1717)
!1757 = !DILocation(line: 530, column: 50, scope: !1717)
!1758 = !DILocation(line: 530, column: 48, scope: !1717)
!1759 = !DILocation(line: 530, column: 25, scope: !1717)
!1760 = !DILocation(line: 530, column: 5, scope: !1717)
!1761 = !DILocation(line: 530, column: 8, scope: !1717)
!1762 = !DILocation(line: 530, column: 23, scope: !1717)
!1763 = !DILocation(line: 532, column: 73, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 532, column: 9)
!1765 = !DILocation(line: 532, column: 76, scope: !1764)
!1766 = !DILocation(line: 532, column: 72, scope: !1764)
!1767 = !DILocation(line: 532, column: 39, scope: !1764)
!1768 = !DILocation(line: 532, column: 10, scope: !1764)
!1769 = !DILocation(line: 532, column: 13, scope: !1764)
!1770 = !DILocation(line: 532, column: 25, scope: !1764)
!1771 = !{!796, !239, i64 24}
!1772 = !DILocation(line: 532, column: 93, scope: !1764)
!1773 = !DILocation(line: 532, column: 9, scope: !1717)
!1774 = !DILocation(line: 533, column: 2, scope: !1764)
!1775 = !DILocation(line: 535, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 535, column: 5)
!1777 = !DILocation(line: 535, column: 10, scope: !1776)
!1778 = !DILocation(line: 535, column: 15, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 535, column: 5)
!1780 = !DILocation(line: 535, column: 17, scope: !1779)
!1781 = !DILocation(line: 535, column: 16, scope: !1779)
!1782 = !DILocation(line: 535, column: 5, scope: !1776)
!1783 = !DILocation(line: 536, column: 28, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 535, column: 31)
!1785 = !DILocation(line: 536, column: 31, scope: !1784)
!1786 = !DILocation(line: 536, column: 2, scope: !1784)
!1787 = !DILocation(line: 536, column: 5, scope: !1784)
!1788 = !DILocation(line: 536, column: 18, scope: !1784)
!1789 = !DILocation(line: 536, column: 21, scope: !1784)
!1790 = !DILocation(line: 536, column: 26, scope: !1784)
!1791 = !{!1792, !239, i64 0}
!1792 = !{!"ef", !239, i64 0, !740, i64 8, !740, i64 10, !740, i64 12, !239, i64 16}
!1793 = !DILocation(line: 537, column: 53, scope: !1784)
!1794 = !DILocation(line: 537, column: 57, scope: !1784)
!1795 = !DILocation(line: 537, column: 62, scope: !1784)
!1796 = !DILocation(line: 537, column: 66, scope: !1784)
!1797 = !DILocation(line: 537, column: 69, scope: !1784)
!1798 = !DILocation(line: 537, column: 82, scope: !1784)
!1799 = !DILocation(line: 537, column: 85, scope: !1784)
!1800 = !DILocation(line: 537, column: 90, scope: !1784)
!1801 = !DILocation(line: 537, column: 93, scope: !1784)
!1802 = !DILocation(line: 537, column: 106, scope: !1784)
!1803 = !DILocation(line: 537, column: 109, scope: !1784)
!1804 = !DILocation(line: 537, column: 28, scope: !1784)
!1805 = !DILocation(line: 537, column: 2, scope: !1784)
!1806 = !DILocation(line: 537, column: 5, scope: !1784)
!1807 = !DILocation(line: 537, column: 18, scope: !1784)
!1808 = !DILocation(line: 537, column: 21, scope: !1784)
!1809 = !DILocation(line: 537, column: 26, scope: !1784)
!1810 = !{!1792, !239, i64 16}
!1811 = !DILocation(line: 538, column: 6, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 538, column: 6)
!1813 = !DILocation(line: 538, column: 9, scope: !1812)
!1814 = !DILocation(line: 538, column: 22, scope: !1812)
!1815 = !DILocation(line: 538, column: 25, scope: !1812)
!1816 = !DILocation(line: 538, column: 30, scope: !1812)
!1817 = !DILocation(line: 538, column: 6, scope: !1784)
!1818 = !DILocation(line: 539, column: 6, scope: !1812)
!1819 = !DILocation(line: 540, column: 2, scope: !1784)
!1820 = !DILocation(line: 540, column: 5, scope: !1784)
!1821 = !DILocation(line: 540, column: 18, scope: !1784)
!1822 = !DILocation(line: 540, column: 21, scope: !1784)
!1823 = !DILocation(line: 540, column: 27, scope: !1784)
!1824 = !{!1792, !740, i64 8}
!1825 = !DILocation(line: 541, column: 5, scope: !1784)
!1826 = !DILocation(line: 535, column: 27, scope: !1779)
!1827 = !DILocation(line: 535, column: 5, scope: !1779)
!1828 = distinct !{!1828, !1782, !1829, !285}
!1829 = !DILocation(line: 541, column: 5, scope: !1776)
!1830 = !DILocation(line: 542, column: 5, scope: !1717)
!1831 = !DILocation(line: 542, column: 12, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 542, column: 5)
!1833 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 542, column: 5)
!1834 = !DILocation(line: 542, column: 14, scope: !1832)
!1835 = !DILocation(line: 542, column: 17, scope: !1832)
!1836 = !DILocation(line: 542, column: 13, scope: !1832)
!1837 = !DILocation(line: 542, column: 5, scope: !1833)
!1838 = !DILocation(line: 543, column: 28, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 542, column: 38)
!1840 = !DILocation(line: 543, column: 31, scope: !1839)
!1841 = !DILocation(line: 543, column: 2, scope: !1839)
!1842 = !DILocation(line: 543, column: 5, scope: !1839)
!1843 = !DILocation(line: 543, column: 18, scope: !1839)
!1844 = !DILocation(line: 543, column: 21, scope: !1839)
!1845 = !DILocation(line: 543, column: 26, scope: !1839)
!1846 = !DILocation(line: 544, column: 51, scope: !1839)
!1847 = !DILocation(line: 544, column: 55, scope: !1839)
!1848 = !DILocation(line: 544, column: 75, scope: !1839)
!1849 = !DILocation(line: 544, column: 77, scope: !1839)
!1850 = !DILocation(line: 544, column: 76, scope: !1839)
!1851 = !DILocation(line: 544, column: 60, scope: !1839)
!1852 = !DILocation(line: 544, column: 88, scope: !1839)
!1853 = !DILocation(line: 544, column: 91, scope: !1839)
!1854 = !DILocation(line: 544, column: 104, scope: !1839)
!1855 = !DILocation(line: 544, column: 107, scope: !1839)
!1856 = !DILocation(line: 544, column: 112, scope: !1839)
!1857 = !DILocation(line: 544, column: 115, scope: !1839)
!1858 = !DILocation(line: 544, column: 128, scope: !1839)
!1859 = !DILocation(line: 544, column: 131, scope: !1839)
!1860 = !DILocation(line: 544, column: 26, scope: !1839)
!1861 = !DILocation(line: 544, column: 2, scope: !1839)
!1862 = !DILocation(line: 544, column: 5, scope: !1839)
!1863 = !DILocation(line: 544, column: 18, scope: !1839)
!1864 = !DILocation(line: 544, column: 21, scope: !1839)
!1865 = !DILocation(line: 544, column: 25, scope: !1839)
!1866 = !DILocation(line: 545, column: 6, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 545, column: 6)
!1868 = !DILocation(line: 545, column: 9, scope: !1867)
!1869 = !DILocation(line: 545, column: 22, scope: !1867)
!1870 = !DILocation(line: 545, column: 25, scope: !1867)
!1871 = !DILocation(line: 545, column: 30, scope: !1867)
!1872 = !DILocation(line: 545, column: 6, scope: !1839)
!1873 = !DILocation(line: 546, column: 6, scope: !1867)
!1874 = !DILocation(line: 547, column: 2, scope: !1839)
!1875 = !DILocation(line: 547, column: 5, scope: !1839)
!1876 = !DILocation(line: 547, column: 18, scope: !1839)
!1877 = !DILocation(line: 547, column: 21, scope: !1839)
!1878 = !DILocation(line: 547, column: 27, scope: !1839)
!1879 = !DILocation(line: 548, column: 5, scope: !1839)
!1880 = !DILocation(line: 542, column: 34, scope: !1832)
!1881 = !DILocation(line: 542, column: 5, scope: !1832)
!1882 = distinct !{!1882, !1837, !1883, !285}
!1883 = !DILocation(line: 548, column: 5, scope: !1833)
!1884 = !DILocation(line: 550, column: 11, scope: !1717)
!1885 = !DILocation(line: 550, column: 14, scope: !1717)
!1886 = !DILocation(line: 550, column: 28, scope: !1717)
!1887 = !DILocation(line: 550, column: 31, scope: !1717)
!1888 = !DILocation(line: 550, column: 5, scope: !1717)
!1889 = !DILocation(line: 552, column: 5, scope: !1717)
!1890 = !DILocation(line: 553, column: 1, scope: !1717)
!1891 = !DISubprogram(name: "zip_file_get_comment", scope: !384, file: !384, line: 359, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!39, !382, !11, !1894, !1596}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1895 = !DISubprogram(name: "zip_get_archive_comment", scope: !384, file: !384, line: 376, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!39, !382, !1476, !1596}
!1898 = !DISubprogram(name: "zip_fopen_index", scope: !384, file: !384, line: 371, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1614, !382, !11, !1596}
!1901 = !DISubprogram(name: "zip_strerror", scope: !384, file: !384, line: 427, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!39, !382}
!1904 = !DISubprogram(name: "zip_fread", scope: !384, file: !384, line: 373, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!22, !1614, !10, !11}
!1907 = !DISubprogram(name: "zip_file_strerror", scope: !384, file: !384, line: 368, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!39, !1614}
!1910 = !DISubprogram(name: "zip_fclose", scope: !384, file: !384, line: 348, type: !1911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!65, !1614}
!1913 = !DISubprogram(name: "zip_file_extra_fields_count", scope: !384, file: !384, line: 355, type: !1914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!1725, !382, !11, !1596}
!1916 = !DISubprogram(name: "zip_file_extra_field_get", scope: !384, file: !384, line: 357, type: !1917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!49, !382, !11, !42, !1919, !1919, !1596}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1920 = distinct !DISubprogram(name: "ef_order", scope: !3, file: !3, line: 573, type: !685, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1921 = !{!1922, !1923, !1924, !1927}
!1922 = !DILocalVariable(name: "ap", arg: 1, scope: !1920, file: !3, line: 573, type: !6)
!1923 = !DILocalVariable(name: "bp", arg: 2, scope: !1920, file: !3, line: 573, type: !6)
!1924 = !DILocalVariable(name: "a", scope: !1920, file: !3, line: 574, type: !1925)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!1927 = !DILocalVariable(name: "b", scope: !1920, file: !3, line: 574, type: !1925)
!1928 = !DILocation(line: 573, column: 22, scope: !1920)
!1929 = !DILocation(line: 573, column: 38, scope: !1920)
!1930 = !DILocation(line: 574, column: 5, scope: !1920)
!1931 = !DILocation(line: 574, column: 22, scope: !1920)
!1932 = !DILocation(line: 574, column: 26, scope: !1920)
!1933 = !DILocation(line: 576, column: 22, scope: !1920)
!1934 = !DILocation(line: 576, column: 7, scope: !1920)
!1935 = !DILocation(line: 577, column: 22, scope: !1920)
!1936 = !DILocation(line: 577, column: 7, scope: !1920)
!1937 = !DILocation(line: 579, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 579, column: 9)
!1939 = !DILocation(line: 579, column: 12, scope: !1938)
!1940 = !DILocation(line: 579, column: 21, scope: !1938)
!1941 = !DILocation(line: 579, column: 24, scope: !1938)
!1942 = !DILocation(line: 579, column: 18, scope: !1938)
!1943 = !DILocation(line: 579, column: 9, scope: !1920)
!1944 = !DILocation(line: 580, column: 9, scope: !1938)
!1945 = !DILocation(line: 580, column: 12, scope: !1938)
!1946 = !DILocation(line: 580, column: 20, scope: !1938)
!1947 = !DILocation(line: 580, column: 23, scope: !1938)
!1948 = !DILocation(line: 580, column: 18, scope: !1938)
!1949 = !DILocation(line: 580, column: 2, scope: !1938)
!1950 = !DILocation(line: 581, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 581, column: 9)
!1952 = !DILocation(line: 581, column: 12, scope: !1951)
!1953 = !{!1792, !740, i64 10}
!1954 = !DILocation(line: 581, column: 18, scope: !1951)
!1955 = !DILocation(line: 581, column: 21, scope: !1951)
!1956 = !DILocation(line: 581, column: 15, scope: !1951)
!1957 = !DILocation(line: 581, column: 9, scope: !1920)
!1958 = !DILocation(line: 582, column: 9, scope: !1951)
!1959 = !DILocation(line: 582, column: 12, scope: !1951)
!1960 = !DILocation(line: 582, column: 17, scope: !1951)
!1961 = !DILocation(line: 582, column: 20, scope: !1951)
!1962 = !DILocation(line: 582, column: 15, scope: !1951)
!1963 = !DILocation(line: 582, column: 2, scope: !1951)
!1964 = !DILocation(line: 583, column: 9, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 583, column: 9)
!1966 = !DILocation(line: 583, column: 12, scope: !1965)
!1967 = !{!1792, !740, i64 12}
!1968 = !DILocation(line: 583, column: 20, scope: !1965)
!1969 = !DILocation(line: 583, column: 23, scope: !1965)
!1970 = !DILocation(line: 583, column: 17, scope: !1965)
!1971 = !DILocation(line: 583, column: 9, scope: !1920)
!1972 = !DILocation(line: 584, column: 9, scope: !1965)
!1973 = !DILocation(line: 584, column: 12, scope: !1965)
!1974 = !DILocation(line: 584, column: 19, scope: !1965)
!1975 = !DILocation(line: 584, column: 22, scope: !1965)
!1976 = !DILocation(line: 584, column: 17, scope: !1965)
!1977 = !DILocation(line: 584, column: 2, scope: !1965)
!1978 = !DILocation(line: 585, column: 19, scope: !1920)
!1979 = !DILocation(line: 585, column: 22, scope: !1920)
!1980 = !DILocation(line: 585, column: 28, scope: !1920)
!1981 = !DILocation(line: 585, column: 31, scope: !1920)
!1982 = !DILocation(line: 585, column: 37, scope: !1920)
!1983 = !DILocation(line: 585, column: 40, scope: !1920)
!1984 = !DILocation(line: 585, column: 12, scope: !1920)
!1985 = !DILocation(line: 585, column: 5, scope: !1920)
!1986 = !DILocation(line: 586, column: 1, scope: !1920)
!1987 = !DISubprogram(name: "memcmp", scope: !1469, file: !1469, line: 64, type: !1988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!65, !6, !6, !58}
!1990 = distinct !DISubprogram(name: "ef_compare", scope: !3, file: !3, line: 557, type: !1991, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!65, !227, !1079, !1079}
!1993 = !{!1994, !1995, !1996, !1997, !1999}
!1994 = !DILocalVariable(name: "name", arg: 1, scope: !1990, file: !3, line: 557, type: !227)
!1995 = !DILocalVariable(name: "e1", arg: 2, scope: !1990, file: !3, line: 557, type: !1079)
!1996 = !DILocalVariable(name: "e2", arg: 3, scope: !1990, file: !3, line: 557, type: !1079)
!1997 = !DILocalVariable(name: "ef", scope: !1990, file: !3, line: 559, type: !1998)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !124)
!1999 = !DILocalVariable(name: "n", scope: !1990, file: !3, line: 560, type: !393)
!2000 = !DILocation(line: 557, column: 24, scope: !1990)
!2001 = !DILocation(line: 557, column: 53, scope: !1990)
!2002 = !DILocation(line: 557, column: 77, scope: !1990)
!2003 = !DILocation(line: 559, column: 5, scope: !1990)
!2004 = !DILocation(line: 559, column: 16, scope: !1990)
!2005 = !DILocation(line: 560, column: 5, scope: !1990)
!2006 = !DILocation(line: 560, column: 18, scope: !1990)
!2007 = !DILocation(line: 562, column: 13, scope: !1990)
!2008 = !DILocation(line: 562, column: 17, scope: !1990)
!2009 = !DILocation(line: 562, column: 5, scope: !1990)
!2010 = !DILocation(line: 562, column: 11, scope: !1990)
!2011 = !DILocation(line: 563, column: 13, scope: !1990)
!2012 = !DILocation(line: 563, column: 17, scope: !1990)
!2013 = !DILocation(line: 563, column: 5, scope: !1990)
!2014 = !DILocation(line: 563, column: 11, scope: !1990)
!2015 = !DILocation(line: 564, column: 12, scope: !1990)
!2016 = !DILocation(line: 564, column: 16, scope: !1990)
!2017 = !DILocation(line: 564, column: 5, scope: !1990)
!2018 = !DILocation(line: 564, column: 10, scope: !1990)
!2019 = !DILocation(line: 565, column: 12, scope: !1990)
!2020 = !DILocation(line: 565, column: 16, scope: !1990)
!2021 = !DILocation(line: 565, column: 5, scope: !1990)
!2022 = !DILocation(line: 565, column: 10, scope: !1990)
!2023 = !DILocation(line: 567, column: 25, scope: !1990)
!2024 = !DILocation(line: 567, column: 46, scope: !1990)
!2025 = !DILocation(line: 567, column: 50, scope: !1990)
!2026 = !DILocation(line: 567, column: 12, scope: !1990)
!2027 = !DILocation(line: 568, column: 1, scope: !1990)
!2028 = !DILocation(line: 567, column: 5, scope: !1990)
!2029 = distinct !DISubprogram(name: "ef_print", scope: !3, file: !3, line: 590, type: !1147, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2030)
!2030 = !{!2031, !2032, !2033}
!2031 = !DILocalVariable(name: "p", arg: 1, scope: !2029, file: !3, line: 590, type: !6)
!2032 = !DILocalVariable(name: "ef", scope: !2029, file: !3, line: 592, type: !1925)
!2033 = !DILocalVariable(name: "i", scope: !2029, file: !3, line: 593, type: !65)
!2034 = !DILocation(line: 590, column: 22, scope: !2029)
!2035 = !DILocation(line: 592, column: 5, scope: !2029)
!2036 = !DILocation(line: 592, column: 22, scope: !2029)
!2037 = !DILocation(line: 592, column: 40, scope: !2029)
!2038 = !DILocation(line: 593, column: 5, scope: !2029)
!2039 = !DILocation(line: 593, column: 9, scope: !2029)
!2040 = !DILocation(line: 595, column: 40, scope: !2029)
!2041 = !DILocation(line: 595, column: 44, scope: !2029)
!2042 = !DILocation(line: 595, column: 5, scope: !2029)
!2043 = !DILocation(line: 596, column: 25, scope: !2029)
!2044 = !DILocation(line: 596, column: 29, scope: !2029)
!2045 = !DILocation(line: 596, column: 33, scope: !2029)
!2046 = !DILocation(line: 596, column: 37, scope: !2029)
!2047 = !DILocation(line: 596, column: 43, scope: !2029)
!2048 = !DILocation(line: 596, column: 5, scope: !2029)
!2049 = !DILocation(line: 597, column: 11, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 597, column: 5)
!2051 = !DILocation(line: 597, column: 10, scope: !2050)
!2052 = !DILocation(line: 597, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 597, column: 5)
!2054 = !DILocation(line: 597, column: 17, scope: !2053)
!2055 = !DILocation(line: 597, column: 21, scope: !2053)
!2056 = !DILocation(line: 597, column: 16, scope: !2053)
!2057 = !DILocation(line: 597, column: 5, scope: !2050)
!2058 = !DILocation(line: 598, column: 19, scope: !2053)
!2059 = !DILocation(line: 598, column: 33, scope: !2053)
!2060 = !DILocation(line: 598, column: 37, scope: !2053)
!2061 = !DILocation(line: 598, column: 42, scope: !2053)
!2062 = !{!235, !235, i64 0}
!2063 = !DILocation(line: 598, column: 2, scope: !2053)
!2064 = !DILocation(line: 597, column: 28, scope: !2053)
!2065 = !DILocation(line: 597, column: 5, scope: !2053)
!2066 = distinct !{!2066, !2057, !2067, !285}
!2067 = !DILocation(line: 598, column: 44, scope: !2050)
!2068 = !DILocation(line: 599, column: 5, scope: !2029)
!2069 = !DILocation(line: 600, column: 1, scope: !2029)

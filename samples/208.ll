; ModuleID = 'samples/208.bc'
source_filename = "dnssec-revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon, ptr, i8 }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"dnssec-revoke\00", align 1, !dbg !0
@program = global ptr @.str, align 8, !dbg !8
@mctx = internal global ptr null, align 8, !dbg !161
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1, !dbg !14
@isc_commandline_errprint = external global i8, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"E:fK:rRhv:V\00", align 1, !dbg !16
@isc_commandline_argument = external global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"dnssec-revoke.c\00", align 1, !dbg !21
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to allocate memory for directory\00", align 1, !dbg !26
@verbose = global i32 0, align 4, !dbg !102
@.str.5 = private unnamed_addr constant [32 x i8] c"-v must be followed by a number\00", align 1, !dbg !31
@isc_commandline_option = external global i32, align 4
@stderr = external global ptr, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: invalid argument -%c\0A\00", align 1, !dbg !36
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: unhandled option -%c\0A\00", align 1, !dbg !41
@isc_commandline_index = external global i32, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"The key file name was not specified\00", align 1, !dbg !43
@.str.9 = private unnamed_addr constant [21 x i8] c"Extraneous arguments\00", align 1, !dbg !48
@.str.10 = private unnamed_addr constant [31 x i8] c"cannot process filename %s: %s\00", align 1, !dbg !53
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !58
@.str.12 = private unnamed_addr constant [29 x i8] c"Could not initialize dst: %s\00", align 1, !dbg !63
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid keyfile name %s: %s\00", align 1, !dbg !68
@stdout = external global ptr, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !73
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1, !dbg !78
@.str.16 = private unnamed_addr constant [83 x i8] c"%s: warning: Key is not flagged as a KSK. Revoking a ZSK is legal, but undefined.\0A\00", align 1, !dbg !83
@.str.17 = private unnamed_addr constant [54 x i8] c"Key file %s already exists; use -f to force overwrite\00", align 1, !dbg !88
@.str.18 = private unnamed_addr constant [27 x i8] c"Failed to write key %s: %s\00", align 1, !dbg !93
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !98
@.str.20 = private unnamed_addr constant [26 x i8] c"Key %s is already revoked\00", align 1, !dbg !100
@.str.21 = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1, !dbg !105
@.str.22 = private unnamed_addr constant [27 x i8] c"    %s [options] keyfile\0A\0A\00", align 1, !dbg !107
@.str.23 = private unnamed_addr constant [13 x i8] c"Version: %s\0A\00", align 1, !dbg !109
@.str.24 = private unnamed_addr constant [7 x i8] c"9.14.6\00", align 1, !dbg !114
@.str.25 = private unnamed_addr constant [42 x i8] c"    -E engine:    specify OpenSSL engine\0A\00", align 1, !dbg !119
@.str.26 = private unnamed_addr constant [35 x i8] c"    -f:           force overwrite\0A\00", align 1, !dbg !124
@.str.27 = private unnamed_addr constant [24 x i8] c"    -h:           help\0A\00", align 1, !dbg !129
@.str.28 = private unnamed_addr constant [47 x i8] c"    -K directory: use directory for key files\0A\00", align 1, !dbg !134
@.str.29 = private unnamed_addr constant [70 x i8] c"    -r:           remove old keyfiles after creating revoked version\0A\00", align 1, !dbg !139
@.str.30 = private unnamed_addr constant [42 x i8] c"    -v level:     set level of verbosity\0A\00", align 1, !dbg !144
@.str.31 = private unnamed_addr constant [45 x i8] c"    -V:           print version information\0A\00", align 1, !dbg !146
@.str.32 = private unnamed_addr constant [9 x i8] c"Output:\0A\00", align 1, !dbg !151
@.str.33 = private unnamed_addr constant [65 x i8] c"     K<name>+<alg>+<new id>.key, K<name>+<alg>+<new id>.private\0A\00", align 1, !dbg !156

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !214 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %engine = alloca ptr, align 8
  %filename = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %newname = alloca [1024 x i8], align 16
  %oldname = alloca [1024 x i8], align 16
  %keystr = alloca [1051 x i8], align 16
  %endp = alloca ptr, align 8
  %ch = alloca i32, align 4
  %key = alloca ptr, align 8
  %flags = alloca i32, align 4
  %buf = alloca %struct.isc_buffer, align 8
  %force = alloca i8, align 1
  %removefile = alloca i8, align 1
  %id = alloca i8, align 1
  %now = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !219, metadata !DIExpression()), !dbg !276
  store ptr %argv, ptr %argv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !220, metadata !DIExpression()), !dbg !277
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !278
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !221, metadata !DIExpression()), !dbg !279
  call void @llvm.lifetime.start.p0(i64 8, ptr %engine) #9, !dbg !280
  tail call void @llvm.dbg.declare(metadata ptr %engine, metadata !223, metadata !DIExpression()), !dbg !281
  store ptr null, ptr %engine, align 8, !dbg !281
  call void @llvm.lifetime.start.p0(i64 8, ptr %filename) #9, !dbg !282
  tail call void @llvm.dbg.declare(metadata ptr %filename, metadata !224, metadata !DIExpression()), !dbg !283
  store ptr null, ptr %filename, align 8, !dbg !283
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #9, !dbg !284
  tail call void @llvm.dbg.declare(metadata ptr %dir, metadata !225, metadata !DIExpression()), !dbg !285
  store ptr null, ptr %dir, align 8, !dbg !285
  call void @llvm.lifetime.start.p0(i64 1024, ptr %newname) #9, !dbg !286
  tail call void @llvm.dbg.declare(metadata ptr %newname, metadata !226, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 1024, ptr %oldname) #9, !dbg !286
  tail call void @llvm.dbg.declare(metadata ptr %oldname, metadata !230, metadata !DIExpression()), !dbg !288
  call void @llvm.lifetime.start.p0(i64 1051, ptr %keystr) #9, !dbg !289
  tail call void @llvm.dbg.declare(metadata ptr %keystr, metadata !231, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %endp) #9, !dbg !291
  tail call void @llvm.dbg.declare(metadata ptr %endp, metadata !235, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #9, !dbg !293
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !236, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #9, !dbg !295
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !237, metadata !DIExpression()), !dbg !296
  store ptr null, ptr %key, align 8, !dbg !296
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #9, !dbg !297
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !242, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 64, ptr %buf) #9, !dbg !299
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !247, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 1, ptr %force) #9, !dbg !301
  tail call void @llvm.dbg.declare(metadata ptr %force, metadata !267, metadata !DIExpression()), !dbg !302
  store i8 0, ptr %force, align 1, !dbg !302
  call void @llvm.lifetime.start.p0(i64 1, ptr %removefile) #9, !dbg !303
  tail call void @llvm.dbg.declare(metadata ptr %removefile, metadata !268, metadata !DIExpression()), !dbg !304
  store i8 0, ptr %removefile, align 1, !dbg !304
  call void @llvm.lifetime.start.p0(i64 1, ptr %id) #9, !dbg !305
  tail call void @llvm.dbg.declare(metadata ptr %id, metadata !269, metadata !DIExpression()), !dbg !306
  store i8 0, ptr %id, align 1, !dbg !306
  %0 = load i32, ptr %argc.addr, align 4, !dbg !307
  %cmp = icmp eq i32 %0, 1, !dbg !309
  br i1 %cmp, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  call void @usage() #10, !dbg !311
  unreachable, !dbg !311

if.end:                                           ; preds = %entry
  %call = call i32 @isc_mem_create(i64 noundef 0, i64 noundef 0, ptr noundef @mctx), !dbg !312
  store i32 %call, ptr %result, align 4, !dbg !313
  %1 = load i32, ptr %result, align 4, !dbg !314
  %cmp1 = icmp ne i32 %1, 0, !dbg !316
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !317

if.then2:                                         ; preds = %if.end
  call void (ptr, ...) @fatal(ptr noundef @.str.1) #10, !dbg !318
  unreachable, !dbg !318

if.end3:                                          ; preds = %if.end
  call void @dns_result_register(), !dbg !319
  store i8 0, ptr @isc_commandline_errprint, align 1, !dbg !320
  br label %while.cond, !dbg !321

while.cond:                                       ; preds = %sw.epilog, %if.end3
  %2 = load i32, ptr %argc.addr, align 4, !dbg !322
  %3 = load ptr, ptr %argv.addr, align 8, !dbg !323
  %call4 = call i32 @isc_commandline_parse(i32 noundef %2, ptr noundef %3, ptr noundef @.str.2), !dbg !324
  store i32 %call4, ptr %ch, align 4, !dbg !325
  %cmp5 = icmp ne i32 %call4, -1, !dbg !326
  br i1 %cmp5, label %while.body, label %while.end, !dbg !321

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %ch, align 4, !dbg !327
  switch i32 %4, label %sw.default [
    i32 69, label %sw.bb
    i32 102, label %sw.bb6
    i32 75, label %sw.bb7
    i32 114, label %sw.bb12
    i32 82, label %sw.bb13
    i32 118, label %sw.bb14
    i32 63, label %sw.bb21
    i32 104, label %sw.bb27
    i32 86, label %sw.bb28
  ], !dbg !329

sw.bb:                                            ; preds = %while.body
  %5 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !330
  store ptr %5, ptr %engine, align 8, !dbg !332
  br label %sw.epilog, !dbg !333

sw.bb6:                                           ; preds = %while.body
  store i8 1, ptr %force, align 1, !dbg !334
  br label %sw.epilog, !dbg !335

sw.bb7:                                           ; preds = %while.body
  %6 = load ptr, ptr @mctx, align 8, !dbg !336
  %7 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !336
  %call8 = call ptr @isc__mem_strdup(ptr noundef %6, ptr noundef %7, ptr noundef @.str.3, i32 noundef 118), !dbg !336
  store ptr %call8, ptr %dir, align 8, !dbg !337
  %8 = load ptr, ptr %dir, align 8, !dbg !338
  %cmp9 = icmp eq ptr %8, null, !dbg !340
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !341

if.then10:                                        ; preds = %sw.bb7
  call void (ptr, ...) @fatal(ptr noundef @.str.4) #10, !dbg !342
  unreachable, !dbg !342

if.end11:                                         ; preds = %sw.bb7
  br label %sw.epilog, !dbg !344

sw.bb12:                                          ; preds = %while.body
  store i8 1, ptr %removefile, align 1, !dbg !345
  br label %sw.epilog, !dbg !346

sw.bb13:                                          ; preds = %while.body
  store i8 1, ptr %id, align 1, !dbg !347
  br label %sw.epilog, !dbg !348

sw.bb14:                                          ; preds = %while.body
  %9 = load ptr, ptr @isc_commandline_argument, align 8, !dbg !349
  %call15 = call i64 @strtol(ptr noundef %9, ptr noundef %endp, i32 noundef 0) #9, !dbg !350
  %conv = trunc i64 %call15 to i32, !dbg !350
  store i32 %conv, ptr @verbose, align 4, !dbg !351
  %10 = load ptr, ptr %endp, align 8, !dbg !352
  %11 = load i8, ptr %10, align 1, !dbg !354
  %conv16 = sext i8 %11 to i32, !dbg !354
  %cmp17 = icmp ne i32 %conv16, 0, !dbg !355
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !356

if.then19:                                        ; preds = %sw.bb14
  call void (ptr, ...) @fatal(ptr noundef @.str.5) #10, !dbg !357
  unreachable, !dbg !357

if.end20:                                         ; preds = %sw.bb14
  br label %sw.epilog, !dbg !358

sw.bb21:                                          ; preds = %while.body
  %12 = load i32, ptr @isc_commandline_option, align 4, !dbg !359
  %cmp22 = icmp ne i32 %12, 63, !dbg !361
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !362

if.then24:                                        ; preds = %sw.bb21
  %13 = load ptr, ptr @stderr, align 8, !dbg !363
  %14 = load ptr, ptr @program, align 8, !dbg !364
  %15 = load i32, ptr @isc_commandline_option, align 4, !dbg !365
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.6, ptr noundef %14, i32 noundef %15), !dbg !366
  br label %if.end26, !dbg !366

if.end26:                                         ; preds = %if.then24, %sw.bb21
  br label %sw.bb27, !dbg !367

sw.bb27:                                          ; preds = %while.body, %if.end26
  call void @usage() #10, !dbg !368
  unreachable, !dbg !368

sw.bb28:                                          ; preds = %while.body
  %16 = load ptr, ptr @program, align 8, !dbg !369
  call void @version(ptr noundef %16) #10, !dbg !370
  unreachable, !dbg !370

sw.default:                                       ; preds = %while.body
  %17 = load ptr, ptr @stderr, align 8, !dbg !371
  %18 = load ptr, ptr @program, align 8, !dbg !372
  %19 = load i32, ptr @isc_commandline_option, align 4, !dbg !373
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.7, ptr noundef %18, i32 noundef %19), !dbg !374
  call void @exit(i32 noundef 1) #11, !dbg !375
  unreachable, !dbg !375

sw.epilog:                                        ; preds = %if.end20, %sw.bb13, %sw.bb12, %if.end11, %sw.bb6, %sw.bb
  br label %while.cond, !dbg !321, !llvm.loop !376

while.end:                                        ; preds = %while.cond
  %20 = load i32, ptr %argc.addr, align 4, !dbg !379
  %21 = load i32, ptr @isc_commandline_index, align 4, !dbg !381
  %add = add nsw i32 %21, 1, !dbg !382
  %cmp30 = icmp slt i32 %20, %add, !dbg !383
  br i1 %cmp30, label %if.then34, label %lor.lhs.false, !dbg !384

lor.lhs.false:                                    ; preds = %while.end
  %22 = load ptr, ptr %argv.addr, align 8, !dbg !385
  %23 = load i32, ptr @isc_commandline_index, align 4, !dbg !386
  %idxprom = sext i32 %23 to i64, !dbg !385
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %idxprom, !dbg !385
  %24 = load ptr, ptr %arrayidx, align 8, !dbg !385
  %cmp32 = icmp eq ptr %24, null, !dbg !387
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !388

if.then34:                                        ; preds = %lor.lhs.false, %while.end
  call void (ptr, ...) @fatal(ptr noundef @.str.8) #10, !dbg !389
  unreachable, !dbg !389

if.end35:                                         ; preds = %lor.lhs.false
  %25 = load i32, ptr %argc.addr, align 4, !dbg !390
  %26 = load i32, ptr @isc_commandline_index, align 4, !dbg !392
  %add36 = add nsw i32 %26, 1, !dbg !393
  %cmp37 = icmp sgt i32 %25, %add36, !dbg !394
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !395

if.then39:                                        ; preds = %if.end35
  call void (ptr, ...) @fatal(ptr noundef @.str.9) #10, !dbg !396
  unreachable, !dbg !396

if.end40:                                         ; preds = %if.end35
  %27 = load ptr, ptr %dir, align 8, !dbg !397
  %cmp41 = icmp ne ptr %27, null, !dbg !399
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !400

if.then43:                                        ; preds = %if.end40
  %28 = load ptr, ptr %argv.addr, align 8, !dbg !401
  %29 = load i32, ptr @isc_commandline_index, align 4, !dbg !403
  %idxprom44 = sext i32 %29 to i64, !dbg !401
  %arrayidx45 = getelementptr inbounds ptr, ptr %28, i64 %idxprom44, !dbg !401
  %30 = load ptr, ptr %arrayidx45, align 8, !dbg !401
  store ptr %30, ptr %filename, align 8, !dbg !404
  br label %if.end61, !dbg !405

if.else:                                          ; preds = %if.end40
  %31 = load ptr, ptr @mctx, align 8, !dbg !406
  %32 = load ptr, ptr %argv.addr, align 8, !dbg !408
  %33 = load i32, ptr @isc_commandline_index, align 4, !dbg !409
  %idxprom46 = sext i32 %33 to i64, !dbg !408
  %arrayidx47 = getelementptr inbounds ptr, ptr %32, i64 %idxprom46, !dbg !408
  %34 = load ptr, ptr %arrayidx47, align 8, !dbg !408
  %call48 = call i32 @isc_file_splitpath(ptr noundef %31, ptr noundef %34, ptr noundef %dir, ptr noundef %filename), !dbg !410
  store i32 %call48, ptr %result, align 4, !dbg !411
  %35 = load i32, ptr %result, align 4, !dbg !412
  %cmp49 = icmp ne i32 %35, 0, !dbg !414
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !415

if.then51:                                        ; preds = %if.else
  %36 = load ptr, ptr %argv.addr, align 8, !dbg !416
  %37 = load i32, ptr @isc_commandline_index, align 4, !dbg !417
  %idxprom52 = sext i32 %37 to i64, !dbg !416
  %arrayidx53 = getelementptr inbounds ptr, ptr %36, i64 %idxprom52, !dbg !416
  %38 = load ptr, ptr %arrayidx53, align 8, !dbg !416
  %39 = load i32, ptr %result, align 4, !dbg !418
  %call54 = call ptr @isc_result_totext(i32 noundef %39), !dbg !419
  call void (ptr, ...) @fatal(ptr noundef @.str.10, ptr noundef %38, ptr noundef %call54) #10, !dbg !420
  unreachable, !dbg !420

if.end55:                                         ; preds = %if.else
  %40 = load ptr, ptr %dir, align 8, !dbg !421
  %call56 = call i32 @strcmp(ptr noundef %40, ptr noundef @.str.11) #12, !dbg !423
  %cmp57 = icmp eq i32 %call56, 0, !dbg !424
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !425

if.then59:                                        ; preds = %if.end55
  br label %do.body, !dbg !426

do.body:                                          ; preds = %if.then59
  %41 = load ptr, ptr @mctx, align 8, !dbg !428
  %42 = load ptr, ptr %dir, align 8, !dbg !428
  call void @isc__mem_free(ptr noundef %41, ptr noundef %42, ptr noundef @.str.3, i32 noundef 171), !dbg !428
  store ptr null, ptr %dir, align 8, !dbg !428
  br label %do.cond, !dbg !428

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !428

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %dir, align 8, !dbg !430
  br label %if.end60, !dbg !431

if.end60:                                         ; preds = %do.end, %if.end55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then43
  %43 = load ptr, ptr @mctx, align 8, !dbg !432
  %44 = load ptr, ptr %engine, align 8, !dbg !433
  %call62 = call i32 @dst_lib_init(ptr noundef %43, ptr noundef %44), !dbg !434
  store i32 %call62, ptr %result, align 4, !dbg !435
  %45 = load i32, ptr %result, align 4, !dbg !436
  %cmp63 = icmp ne i32 %45, 0, !dbg !438
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !439

if.then65:                                        ; preds = %if.end61
  %46 = load i32, ptr %result, align 4, !dbg !440
  %call66 = call ptr @isc_result_totext(i32 noundef %46), !dbg !441
  call void (ptr, ...) @fatal(ptr noundef @.str.12, ptr noundef %call66) #10, !dbg !442
  unreachable, !dbg !442

if.end67:                                         ; preds = %if.end61
  %47 = load ptr, ptr %filename, align 8, !dbg !443
  %48 = load ptr, ptr %dir, align 8, !dbg !444
  %49 = load ptr, ptr @mctx, align 8, !dbg !445
  %call68 = call i32 @dst_key_fromnamedfile(ptr noundef %47, ptr noundef %48, i32 noundef 100663296, ptr noundef %49, ptr noundef %key), !dbg !446
  store i32 %call68, ptr %result, align 4, !dbg !447
  %50 = load i32, ptr %result, align 4, !dbg !448
  %cmp69 = icmp ne i32 %50, 0, !dbg !450
  br i1 %cmp69, label %if.then71, label %if.end73, !dbg !451

if.then71:                                        ; preds = %if.end67
  %51 = load ptr, ptr %filename, align 8, !dbg !452
  %52 = load i32, ptr %result, align 4, !dbg !453
  %call72 = call ptr @isc_result_totext(i32 noundef %52), !dbg !454
  call void (ptr, ...) @fatal(ptr noundef @.str.13, ptr noundef %51, ptr noundef %call72) #10, !dbg !455
  unreachable, !dbg !455

if.end73:                                         ; preds = %if.end67
  %53 = load i8, ptr %id, align 1, !dbg !456, !range !458, !noundef !459
  %tobool = trunc i8 %53 to i1, !dbg !456
  br i1 %tobool, label %if.then74, label %if.end78, !dbg !460

if.then74:                                        ; preds = %if.end73
  %54 = load ptr, ptr @stdout, align 8, !dbg !461
  %55 = load ptr, ptr %key, align 8, !dbg !463
  %call75 = call zeroext i16 @dst_key_rid(ptr noundef %55), !dbg !464
  %conv76 = zext i16 %call75 to i32, !dbg !464
  %call77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.14, i32 noundef %conv76), !dbg !465
  br label %cleanup182, !dbg !466

if.end78:                                         ; preds = %if.end73
  %56 = load ptr, ptr %key, align 8, !dbg !467
  %arraydecay = getelementptr inbounds [1051 x i8], ptr %keystr, i64 0, i64 0, !dbg !468
  call void @dst_key_format(ptr noundef %56, ptr noundef %arraydecay, i32 noundef 1051), !dbg !469
  %57 = load i32, ptr @verbose, align 4, !dbg !470
  %cmp79 = icmp sgt i32 %57, 2, !dbg !472
  br i1 %cmp79, label %if.then81, label %if.end84, !dbg !473

if.then81:                                        ; preds = %if.end78
  %58 = load ptr, ptr @stderr, align 8, !dbg !474
  %59 = load ptr, ptr @program, align 8, !dbg !475
  %arraydecay82 = getelementptr inbounds [1051 x i8], ptr %keystr, i64 0, i64 0, !dbg !476
  %call83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.15, ptr noundef %59, ptr noundef %arraydecay82), !dbg !477
  br label %if.end84, !dbg !477

if.end84:                                         ; preds = %if.then81, %if.end78
  %60 = load i8, ptr %force, align 1, !dbg !478, !range !458, !noundef !459
  %tobool85 = trunc i8 %60 to i1, !dbg !478
  br i1 %tobool85, label %if.then86, label %if.else87, !dbg !480

if.then86:                                        ; preds = %if.end84
  %61 = load ptr, ptr %key, align 8, !dbg !481
  call void @set_keyversion(ptr noundef %61), !dbg !482
  br label %if.end89, !dbg !482

if.else87:                                        ; preds = %if.end84
  %62 = load ptr, ptr %key, align 8, !dbg !483
  %arraydecay88 = getelementptr inbounds [1051 x i8], ptr %keystr, i64 0, i64 0, !dbg !484
  call void @check_keyversion(ptr noundef %62, ptr noundef %arraydecay88), !dbg !485
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.then86
  %63 = load ptr, ptr %key, align 8, !dbg !486
  %call90 = call i32 @dst_key_flags(ptr noundef %63), !dbg !487
  store i32 %call90, ptr %flags, align 4, !dbg !488
  %64 = load i32, ptr %flags, align 4, !dbg !489
  %and = and i32 %64, 128, !dbg !490
  %cmp91 = icmp eq i32 %and, 0, !dbg !491
  br i1 %cmp91, label %if.then93, label %if.else178, !dbg !492

if.then93:                                        ; preds = %if.end89
  call void @llvm.lifetime.start.p0(i64 4, ptr %now) #9, !dbg !493
  tail call void @llvm.dbg.declare(metadata ptr %now, metadata !270, metadata !DIExpression()), !dbg !494
  %65 = load i32, ptr %flags, align 4, !dbg !495
  %and94 = and i32 %65, 1, !dbg !497
  %cmp95 = icmp eq i32 %and94, 0, !dbg !498
  br i1 %cmp95, label %if.then97, label %if.end99, !dbg !499

if.then97:                                        ; preds = %if.then93
  %66 = load ptr, ptr @stderr, align 8, !dbg !500
  %67 = load ptr, ptr @program, align 8, !dbg !501
  %call98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.16, ptr noundef %67), !dbg !502
  br label %if.end99, !dbg !502

if.end99:                                         ; preds = %if.then97, %if.then93
  call void @isc_stdtime_get(ptr noundef %now), !dbg !503
  %68 = load ptr, ptr %key, align 8, !dbg !504
  %69 = load i32, ptr %now, align 4, !dbg !505
  call void @dst_key_settime(ptr noundef %68, i32 noundef 3, i32 noundef %69), !dbg !506
  %70 = load ptr, ptr %key, align 8, !dbg !507
  %71 = load i32, ptr %flags, align 4, !dbg !508
  %or = or i32 %71, 128, !dbg !509
  %call100 = call i32 @dst_key_setflags(ptr noundef %70, i32 noundef %or), !dbg !510
  br label %do.body101, !dbg !511

do.body101:                                       ; preds = %if.end99
  %arraydecay102 = getelementptr inbounds [1024 x i8], ptr %newname, i64 0, i64 0, !dbg !512
  %base = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !512
  store ptr %arraydecay102, ptr %base, align 8, !dbg !512
  %length = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !512
  store i32 1024, ptr %length, align 8, !dbg !512
  %used = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !512
  store i32 0, ptr %used, align 4, !dbg !512
  %current = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 4, !dbg !512
  store i32 0, ptr %current, align 8, !dbg !512
  %active = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 5, !dbg !512
  store i32 0, ptr %active, align 4, !dbg !512
  %mctx = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 7, !dbg !512
  store ptr null, ptr %mctx, align 8, !dbg !512
  br label %do.body103, !dbg !512

do.body103:                                       ; preds = %do.body101
  %link = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !514
  %prev = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !514
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !514
  %link104 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !514
  %next = getelementptr inbounds %struct.anon, ptr %link104, i32 0, i32 1, !dbg !514
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !514
  br label %do.cond105, !dbg !514

do.cond105:                                       ; preds = %do.body103
  br label %do.end106, !dbg !514

do.end106:                                        ; preds = %do.cond105
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 0, !dbg !512
  store i32 1114990113, ptr %magic, align 8, !dbg !512
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !512
  store i8 0, ptr %autore, align 8, !dbg !512
  br label %do.cond107, !dbg !512

do.cond107:                                       ; preds = %do.end106
  br label %do.end108, !dbg !512

do.end108:                                        ; preds = %do.cond107
  %72 = load ptr, ptr %key, align 8, !dbg !516
  %73 = load ptr, ptr %dir, align 8, !dbg !517
  %call109 = call i32 @dst_key_buildfilename(ptr noundef %72, i32 noundef 67108864, ptr noundef %73, ptr noundef %buf), !dbg !518
  %arraydecay110 = getelementptr inbounds [1024 x i8], ptr %newname, i64 0, i64 0, !dbg !519
  %call111 = call i32 @access(ptr noundef %arraydecay110, i32 noundef 0) #9, !dbg !521
  %cmp112 = icmp eq i32 %call111, 0, !dbg !522
  br i1 %cmp112, label %land.lhs.true, label %if.end117, !dbg !523

land.lhs.true:                                    ; preds = %do.end108
  %74 = load i8, ptr %force, align 1, !dbg !524, !range !458, !noundef !459
  %tobool114 = trunc i8 %74 to i1, !dbg !524
  br i1 %tobool114, label %if.end117, label %if.then115, !dbg !525

if.then115:                                       ; preds = %land.lhs.true
  %arraydecay116 = getelementptr inbounds [1024 x i8], ptr %newname, i64 0, i64 0, !dbg !526
  call void (ptr, ...) @fatal(ptr noundef @.str.17, ptr noundef %arraydecay116) #10, !dbg !528
  unreachable, !dbg !528

if.end117:                                        ; preds = %land.lhs.true, %do.end108
  %75 = load ptr, ptr %key, align 8, !dbg !529
  %76 = load ptr, ptr %dir, align 8, !dbg !530
  %call118 = call i32 @dst_key_tofile(ptr noundef %75, i32 noundef 100663296, ptr noundef %76), !dbg !531
  store i32 %call118, ptr %result, align 4, !dbg !532
  %77 = load i32, ptr %result, align 4, !dbg !533
  %cmp119 = icmp ne i32 %77, 0, !dbg !535
  br i1 %cmp119, label %if.then121, label %if.end125, !dbg !536

if.then121:                                       ; preds = %if.end117
  %78 = load ptr, ptr %key, align 8, !dbg !537
  %arraydecay122 = getelementptr inbounds [1051 x i8], ptr %keystr, i64 0, i64 0, !dbg !539
  call void @dst_key_format(ptr noundef %78, ptr noundef %arraydecay122, i32 noundef 1051), !dbg !540
  %arraydecay123 = getelementptr inbounds [1051 x i8], ptr %keystr, i64 0, i64 0, !dbg !541
  %79 = load i32, ptr %result, align 4, !dbg !542
  %call124 = call ptr @isc_result_totext(i32 noundef %79), !dbg !543
  call void (ptr, ...) @fatal(ptr noundef @.str.18, ptr noundef %arraydecay123, ptr noundef %call124) #10, !dbg !544
  unreachable, !dbg !544

if.end125:                                        ; preds = %if.end117
  br label %do.body126, !dbg !545

do.body126:                                       ; preds = %if.end125
  %used127 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !546
  store i32 0, ptr %used127, align 4, !dbg !546
  %current128 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 4, !dbg !546
  store i32 0, ptr %current128, align 8, !dbg !546
  %active129 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 5, !dbg !546
  store i32 0, ptr %active129, align 4, !dbg !546
  br label %do.cond130, !dbg !546

do.cond130:                                       ; preds = %do.body126
  br label %do.end131, !dbg !546

do.end131:                                        ; preds = %do.cond130
  %80 = load ptr, ptr %key, align 8, !dbg !548
  %81 = load ptr, ptr %dir, align 8, !dbg !549
  %call132 = call i32 @dst_key_buildfilename(ptr noundef %80, i32 noundef 0, ptr noundef %81, ptr noundef %buf), !dbg !550
  %arraydecay133 = getelementptr inbounds [1024 x i8], ptr %newname, i64 0, i64 0, !dbg !551
  %call134 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, ptr noundef %arraydecay133), !dbg !552
  %82 = load i8, ptr %removefile, align 1, !dbg !553, !range !458, !noundef !459
  %tobool135 = trunc i8 %82 to i1, !dbg !553
  br i1 %tobool135, label %if.then136, label %if.end177, !dbg !555

if.then136:                                       ; preds = %do.end131
  br label %do.body137, !dbg !556

do.body137:                                       ; preds = %if.then136
  %arraydecay138 = getelementptr inbounds [1024 x i8], ptr %oldname, i64 0, i64 0, !dbg !558
  %base139 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 1, !dbg !558
  store ptr %arraydecay138, ptr %base139, align 8, !dbg !558
  %length140 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 2, !dbg !558
  store i32 1024, ptr %length140, align 8, !dbg !558
  %used141 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !558
  store i32 0, ptr %used141, align 4, !dbg !558
  %current142 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 4, !dbg !558
  store i32 0, ptr %current142, align 8, !dbg !558
  %active143 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 5, !dbg !558
  store i32 0, ptr %active143, align 4, !dbg !558
  %mctx144 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 7, !dbg !558
  store ptr null, ptr %mctx144, align 8, !dbg !558
  br label %do.body145, !dbg !558

do.body145:                                       ; preds = %do.body137
  %link146 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !560
  %prev147 = getelementptr inbounds %struct.anon, ptr %link146, i32 0, i32 0, !dbg !560
  store ptr inttoptr (i64 -1 to ptr), ptr %prev147, align 8, !dbg !560
  %link148 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 6, !dbg !560
  %next149 = getelementptr inbounds %struct.anon, ptr %link148, i32 0, i32 1, !dbg !560
  store ptr inttoptr (i64 -1 to ptr), ptr %next149, align 8, !dbg !560
  br label %do.cond150, !dbg !560

do.cond150:                                       ; preds = %do.body145
  br label %do.end151, !dbg !560

do.end151:                                        ; preds = %do.cond150
  %magic152 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 0, !dbg !558
  store i32 1114990113, ptr %magic152, align 8, !dbg !558
  %autore153 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 8, !dbg !558
  store i8 0, ptr %autore153, align 8, !dbg !558
  br label %do.cond154, !dbg !558

do.cond154:                                       ; preds = %do.end151
  br label %do.end155, !dbg !558

do.end155:                                        ; preds = %do.cond154
  %83 = load ptr, ptr %key, align 8, !dbg !562
  %84 = load i32, ptr %flags, align 4, !dbg !563
  %and156 = and i32 %84, -129, !dbg !564
  %call157 = call i32 @dst_key_setflags(ptr noundef %83, i32 noundef %and156), !dbg !565
  %85 = load ptr, ptr %key, align 8, !dbg !566
  %86 = load ptr, ptr %dir, align 8, !dbg !567
  %call158 = call i32 @dst_key_buildfilename(ptr noundef %85, i32 noundef 33554432, ptr noundef %86, ptr noundef %buf), !dbg !568
  %arraydecay159 = getelementptr inbounds [1024 x i8], ptr %oldname, i64 0, i64 0, !dbg !569
  %arraydecay160 = getelementptr inbounds [1024 x i8], ptr %newname, i64 0, i64 0, !dbg !571
  %call161 = call i32 @strcmp(ptr noundef %arraydecay159, ptr noundef %arraydecay160) #12, !dbg !572
  %cmp162 = icmp eq i32 %call161, 0, !dbg !573
  br i1 %cmp162, label %if.then164, label %if.end165, !dbg !574

if.then164:                                       ; preds = %do.end155
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !575

if.end165:                                        ; preds = %do.end155
  %arraydecay166 = getelementptr inbounds [1024 x i8], ptr %oldname, i64 0, i64 0, !dbg !576
  %call167 = call i32 @unlink(ptr noundef %arraydecay166) #9, !dbg !577
  br label %do.body168, !dbg !578

do.body168:                                       ; preds = %if.end165
  %used169 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 3, !dbg !579
  store i32 0, ptr %used169, align 4, !dbg !579
  %current170 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 4, !dbg !579
  store i32 0, ptr %current170, align 8, !dbg !579
  %active171 = getelementptr inbounds %struct.isc_buffer, ptr %buf, i32 0, i32 5, !dbg !579
  store i32 0, ptr %active171, align 4, !dbg !579
  br label %do.cond172, !dbg !579

do.cond172:                                       ; preds = %do.body168
  br label %do.end173, !dbg !579

do.end173:                                        ; preds = %do.cond172
  %87 = load ptr, ptr %key, align 8, !dbg !581
  %88 = load ptr, ptr %dir, align 8, !dbg !582
  %call174 = call i32 @dst_key_buildfilename(ptr noundef %87, i32 noundef 67108864, ptr noundef %88, ptr noundef %buf), !dbg !583
  %arraydecay175 = getelementptr inbounds [1024 x i8], ptr %oldname, i64 0, i64 0, !dbg !584
  %call176 = call i32 @unlink(ptr noundef %arraydecay175) #9, !dbg !585
  br label %if.end177, !dbg !586

if.end177:                                        ; preds = %do.end173, %do.end131
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !587
  br label %cleanup, !dbg !587

cleanup:                                          ; preds = %if.then164, %if.end177
  call void @llvm.lifetime.end.p0(i64 4, ptr %now) #9, !dbg !587
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup194 [
    i32 0, label %cleanup.cont
    i32 7, label %cleanup182
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end181, !dbg !588

if.else178:                                       ; preds = %if.end89
  %89 = load ptr, ptr %key, align 8, !dbg !589
  %arraydecay179 = getelementptr inbounds [1051 x i8], ptr %keystr, i64 0, i64 0, !dbg !591
  call void @dst_key_format(ptr noundef %89, ptr noundef %arraydecay179, i32 noundef 1051), !dbg !592
  %arraydecay180 = getelementptr inbounds [1051 x i8], ptr %keystr, i64 0, i64 0, !dbg !593
  call void (ptr, ...) @fatal(ptr noundef @.str.20, ptr noundef %arraydecay180) #10, !dbg !594
  unreachable, !dbg !594

if.end181:                                        ; preds = %cleanup.cont
  br label %cleanup182, !dbg !595

cleanup182:                                       ; preds = %if.end181, %cleanup, %if.then74
  tail call void @llvm.dbg.label(metadata !275), !dbg !596
  call void @dst_key_free(ptr noundef %key), !dbg !597
  call void @dst_lib_destroy(), !dbg !598
  %90 = load i32, ptr @verbose, align 4, !dbg !599
  %cmp183 = icmp sgt i32 %90, 10, !dbg !601
  br i1 %cmp183, label %if.then185, label %if.end186, !dbg !602

if.then185:                                       ; preds = %cleanup182
  %91 = load ptr, ptr @mctx, align 8, !dbg !603
  %92 = load ptr, ptr @stdout, align 8, !dbg !604
  call void @isc_mem_stats(ptr noundef %91, ptr noundef %92), !dbg !605
  br label %if.end186, !dbg !605

if.end186:                                        ; preds = %if.then185, %cleanup182
  %93 = load ptr, ptr %dir, align 8, !dbg !606
  %cmp187 = icmp ne ptr %93, null, !dbg !608
  br i1 %cmp187, label %if.then189, label %if.end193, !dbg !609

if.then189:                                       ; preds = %if.end186
  br label %do.body190, !dbg !610

do.body190:                                       ; preds = %if.then189
  %94 = load ptr, ptr @mctx, align 8, !dbg !611
  %95 = load ptr, ptr %dir, align 8, !dbg !611
  call void @isc__mem_free(ptr noundef %94, ptr noundef %95, ptr noundef @.str.3, i32 noundef 264), !dbg !611
  store ptr null, ptr %dir, align 8, !dbg !611
  br label %do.cond191, !dbg !611

do.cond191:                                       ; preds = %do.body190
  br label %do.end192, !dbg !611

do.end192:                                        ; preds = %do.cond191
  br label %if.end193, !dbg !611

if.end193:                                        ; preds = %do.end192, %if.end186
  call void @isc_mem_destroy(ptr noundef @mctx), !dbg !613
  store i32 0, ptr %retval, align 4, !dbg !614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194, !dbg !614

cleanup194:                                       ; preds = %if.end193, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %id) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 1, ptr %removefile) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 1, ptr %force) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 64, ptr %buf) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %endp) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 1051, ptr %keystr) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 1024, ptr %oldname) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 1024, ptr %newname) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %filename) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %engine) #9, !dbg !615
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !615
  %96 = load i32, ptr %retval, align 4, !dbg !615
  ret i32 %96, !dbg !615
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind null_pointer_is_valid uwtable
define internal void @usage() #2 !dbg !616 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !dbg !619
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.21), !dbg !620
  %1 = load ptr, ptr @stderr, align 8, !dbg !621
  %2 = load ptr, ptr @program, align 8, !dbg !622
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.22, ptr noundef %2), !dbg !623
  %3 = load ptr, ptr @stderr, align 8, !dbg !624
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.23, ptr noundef @.str.24), !dbg !625
  %4 = load ptr, ptr @stderr, align 8, !dbg !626
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.25), !dbg !627
  %5 = load ptr, ptr @stderr, align 8, !dbg !628
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.26), !dbg !629
  %6 = load ptr, ptr @stderr, align 8, !dbg !630
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.27), !dbg !631
  %7 = load ptr, ptr @stderr, align 8, !dbg !632
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.28), !dbg !633
  %8 = load ptr, ptr @stderr, align 8, !dbg !634
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.29), !dbg !635
  %9 = load ptr, ptr @stderr, align 8, !dbg !636
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.30), !dbg !637
  %10 = load ptr, ptr @stderr, align 8, !dbg !638
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.31), !dbg !639
  %11 = load ptr, ptr @stderr, align 8, !dbg !640
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.32), !dbg !641
  %12 = load ptr, ptr @stderr, align 8, !dbg !642
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.33), !dbg !643
  call void @exit(i32 noundef -1) #11, !dbg !644
  unreachable, !dbg !644
}

; Function Attrs: null_pointer_is_valid
declare !dbg !645 i32 @isc_mem_create(i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !648 void @fatal(ptr noundef, ...) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !652 void @dns_result_register() #3

; Function Attrs: null_pointer_is_valid
declare !dbg !654 i32 @isc_commandline_parse(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !660 ptr @isc__mem_strdup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !661 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !668 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !727 void @version(ptr noundef) #4

; Function Attrs: noreturn nounwind null_pointer_is_valid
declare !dbg !730 void @exit(i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !733 i32 @isc_file_splitpath(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !738 ptr @isc_result_totext(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !742 i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !746 void @isc__mem_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !747 i32 @dst_lib_init(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !750 i32 @dst_key_fromnamedfile(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !754 zeroext i16 @dst_key_rid(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !763 void @dst_key_format(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !766 void @set_keyversion(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !769 void @check_keyversion(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !772 i32 @dst_key_flags(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !775 void @isc_stdtime_get(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !779 void @dst_key_settime(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !782 i32 @dst_key_setflags(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !785 i32 @dst_key_buildfilename(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !788 i32 @access(ptr noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare !dbg !792 i32 @dst_key_tofile(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !795 i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind null_pointer_is_valid
declare !dbg !798 i32 @unlink(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare !dbg !801 void @dst_key_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !804 void @dst_lib_destroy() #3

; Function Attrs: null_pointer_is_valid
declare !dbg !805 void @isc_mem_stats(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !808 void @isc_mem_destroy(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "dnssec-revoke.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "84c73729dfcaa5b8ac926efaf926a55e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 14)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "program", scope: !10, file: !2, line: 41, type: !184, isLocal: false, isDefinition: true)
!10 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0, !8, !14, !16, !21, !26, !31, !36, !41, !43, !48, !53, !58, !63, !68, !73, !78, !83, !88, !93, !98, !100, !102, !105, !107, !109, !114, !119, !124, !129, !134, !139, !144, !146, !151, !156, !161}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !3, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 12)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 16)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 40)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 32)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 26)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 36)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 21)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 31)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 2)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 29)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 28)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 4)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 8)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 664, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 83)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 54)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 27)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !75, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !38, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "verbose", scope: !10, file: !2, line: 42, type: !104, isLocal: false, isDefinition: true)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !80, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !95, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 13)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 7)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 42)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 35)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 24)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 47)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 70)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !121, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 45)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 9)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 65)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "mctx", scope: !10, file: !2, line: 44, type: !163, isLocal: true, isDefinition: true)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !165, line: 59, baseType: !166)
!165 = !DIFile(filename: "lib/isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !167, line: 191, size: 128, elements: !168)
!167 = !DIFile(filename: "lib/isc/include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!168 = !{!169, !171, !172}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !166, file: !167, line: 192, baseType: !170, size: 32)
!170 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !166, file: !167, line: 193, baseType: !170, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !166, file: !167, line: 194, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !167, line: 180, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !167, line: 170, size: 448, elements: !176)
!176 = !{!177, !185, !189, !194, !195, !199, !204}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !175, file: !167, line: 171, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!12, !163, !181, !184, !170}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 70, baseType: !183)
!182 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!183 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !175, file: !167, line: 172, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !163, !12, !181, !184, !170}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !175, file: !167, line: 173, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !193, !12, !181, !184, !170}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !175, file: !167, line: 175, baseType: !178, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !175, file: !167, line: 176, baseType: !196, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!12, !163, !12, !181, !184, !170}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !175, file: !167, line: 178, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !163, !184, !184, !170}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !175, file: !167, line: 179, baseType: !205, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !163, !12, !184, !170}
!208 = !{i32 7, !"Dwarf Version", i32 5}
!209 = !{i32 2, !"Debug Info Version", i32 3}
!210 = !{i32 1, !"wchar_size", i32 4}
!211 = !{i32 8, !"PIC Level", i32 2}
!212 = !{i32 7, !"uwtable", i32 2}
!213 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!214 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 75, type: !215, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !218)
!215 = !DISubroutineType(types: !216)
!216 = !{!104, !104, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!218 = !{!219, !220, !221, !223, !224, !225, !226, !230, !231, !235, !236, !237, !242, !247, !267, !268, !269, !270, !275}
!219 = !DILocalVariable(name: "argc", arg: 1, scope: !214, file: !2, line: 75, type: !104)
!220 = !DILocalVariable(name: "argv", arg: 2, scope: !214, file: !2, line: 75, type: !217)
!221 = !DILocalVariable(name: "result", scope: !214, file: !2, line: 76, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !165, line: 67, baseType: !170)
!223 = !DILocalVariable(name: "engine", scope: !214, file: !2, line: 77, type: !184)
!224 = !DILocalVariable(name: "filename", scope: !214, file: !2, line: 78, type: !184)
!225 = !DILocalVariable(name: "dir", scope: !214, file: !2, line: 79, type: !203)
!226 = !DILocalVariable(name: "newname", scope: !214, file: !2, line: 80, type: !227)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 1024)
!230 = !DILocalVariable(name: "oldname", scope: !214, file: !2, line: 80, type: !227)
!231 = !DILocalVariable(name: "keystr", scope: !214, file: !2, line: 81, type: !232)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8408, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 1051)
!235 = !DILocalVariable(name: "endp", scope: !214, file: !2, line: 82, type: !203)
!236 = !DILocalVariable(name: "ch", scope: !214, file: !2, line: 83, type: !104)
!237 = !DILocalVariable(name: "key", scope: !214, file: !2, line: 84, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !240, line: 44, baseType: !241)
!240 = !DIFile(filename: "lib/dns/include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !240, line: 44, flags: DIFlagFwdDecl)
!242 = !DILocalVariable(name: "flags", scope: !214, file: !2, line: 85, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !244, line: 26, baseType: !245)
!244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !246, line: 42, baseType: !170)
!246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!247 = !DILocalVariable(name: "buf", scope: !214, file: !2, line: 86, type: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !165, line: 35, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !250, line: 173, size: 512, elements: !251)
!250 = !DIFile(filename: "lib/isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!251 = !{!252, !253, !254, !255, !256, !257, !258, !264, !265}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !249, file: !250, line: 174, baseType: !170, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !249, file: !250, line: 175, baseType: !12, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !249, file: !250, line: 178, baseType: !170, size: 32, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !249, file: !250, line: 179, baseType: !170, size: 32, offset: 160)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !249, file: !250, line: 180, baseType: !170, size: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !249, file: !250, line: 181, baseType: !170, size: 32, offset: 224)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !249, file: !250, line: 184, baseType: !259, size: 128, offset: 256)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !250, line: 184, size: 128, elements: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !259, file: !250, line: 184, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !250, line: 184, baseType: !262, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !249, file: !250, line: 186, baseType: !163, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !249, file: !250, line: 188, baseType: !266, size: 8, offset: 448)
!266 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!267 = !DILocalVariable(name: "force", scope: !214, file: !2, line: 87, type: !266)
!268 = !DILocalVariable(name: "removefile", scope: !214, file: !2, line: 88, type: !266)
!269 = !DILocalVariable(name: "id", scope: !214, file: !2, line: 89, type: !266)
!270 = !DILocalVariable(name: "now", scope: !271, file: !2, line: 205, type: !273)
!271 = distinct !DILexicalBlock(scope: !272, file: !2, line: 204, column: 41)
!272 = distinct !DILexicalBlock(scope: !214, file: !2, line: 204, column: 6)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !274, line: 26, baseType: !243)
!274 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!275 = !DILabel(scope: !214, name: "cleanup", file: !2, line: 258)
!276 = !DILocation(line: 75, column: 10, scope: !214)
!277 = !DILocation(line: 75, column: 23, scope: !214)
!278 = !DILocation(line: 76, column: 2, scope: !214)
!279 = !DILocation(line: 76, column: 15, scope: !214)
!280 = !DILocation(line: 77, column: 2, scope: !214)
!281 = !DILocation(line: 77, column: 14, scope: !214)
!282 = !DILocation(line: 78, column: 2, scope: !214)
!283 = !DILocation(line: 78, column: 14, scope: !214)
!284 = !DILocation(line: 79, column: 2, scope: !214)
!285 = !DILocation(line: 79, column: 8, scope: !214)
!286 = !DILocation(line: 80, column: 2, scope: !214)
!287 = !DILocation(line: 80, column: 7, scope: !214)
!288 = !DILocation(line: 80, column: 22, scope: !214)
!289 = !DILocation(line: 81, column: 2, scope: !214)
!290 = !DILocation(line: 81, column: 7, scope: !214)
!291 = !DILocation(line: 82, column: 2, scope: !214)
!292 = !DILocation(line: 82, column: 8, scope: !214)
!293 = !DILocation(line: 83, column: 2, scope: !214)
!294 = !DILocation(line: 83, column: 6, scope: !214)
!295 = !DILocation(line: 84, column: 2, scope: !214)
!296 = !DILocation(line: 84, column: 13, scope: !214)
!297 = !DILocation(line: 85, column: 2, scope: !214)
!298 = !DILocation(line: 85, column: 11, scope: !214)
!299 = !DILocation(line: 86, column: 2, scope: !214)
!300 = !DILocation(line: 86, column: 15, scope: !214)
!301 = !DILocation(line: 87, column: 2, scope: !214)
!302 = !DILocation(line: 87, column: 7, scope: !214)
!303 = !DILocation(line: 88, column: 2, scope: !214)
!304 = !DILocation(line: 88, column: 7, scope: !214)
!305 = !DILocation(line: 89, column: 2, scope: !214)
!306 = !DILocation(line: 89, column: 7, scope: !214)
!307 = !DILocation(line: 91, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !214, file: !2, line: 91, column: 6)
!309 = !DILocation(line: 91, column: 11, scope: !308)
!310 = !DILocation(line: 91, column: 6, scope: !214)
!311 = !DILocation(line: 92, column: 3, scope: !308)
!312 = !DILocation(line: 94, column: 11, scope: !214)
!313 = !DILocation(line: 94, column: 9, scope: !214)
!314 = !DILocation(line: 95, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !214, file: !2, line: 95, column: 6)
!316 = !DILocation(line: 95, column: 13, scope: !315)
!317 = !DILocation(line: 95, column: 6, scope: !214)
!318 = !DILocation(line: 96, column: 3, scope: !315)
!319 = !DILocation(line: 101, column: 2, scope: !214)
!320 = !DILocation(line: 103, column: 27, scope: !214)
!321 = !DILocation(line: 105, column: 2, scope: !214)
!322 = !DILocation(line: 105, column: 37, scope: !214)
!323 = !DILocation(line: 105, column: 43, scope: !214)
!324 = !DILocation(line: 105, column: 15, scope: !214)
!325 = !DILocation(line: 105, column: 13, scope: !214)
!326 = !DILocation(line: 105, column: 65, scope: !214)
!327 = !DILocation(line: 106, column: 11, scope: !328)
!328 = distinct !DILexicalBlock(scope: !214, file: !2, line: 105, column: 72)
!329 = !DILocation(line: 106, column: 3, scope: !328)
!330 = !DILocation(line: 108, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !2, line: 106, column: 15)
!332 = !DILocation(line: 108, column: 11, scope: !331)
!333 = !DILocation(line: 109, column: 4, scope: !331)
!334 = !DILocation(line: 111, column: 10, scope: !331)
!335 = !DILocation(line: 112, column: 4, scope: !331)
!336 = !DILocation(line: 118, column: 10, scope: !331)
!337 = !DILocation(line: 118, column: 8, scope: !331)
!338 = !DILocation(line: 119, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !331, file: !2, line: 119, column: 8)
!340 = !DILocation(line: 119, column: 12, scope: !339)
!341 = !DILocation(line: 119, column: 8, scope: !331)
!342 = !DILocation(line: 120, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !2, line: 119, column: 21)
!344 = !DILocation(line: 123, column: 4, scope: !331)
!345 = !DILocation(line: 125, column: 15, scope: !331)
!346 = !DILocation(line: 126, column: 4, scope: !331)
!347 = !DILocation(line: 128, column: 7, scope: !331)
!348 = !DILocation(line: 129, column: 4, scope: !331)
!349 = !DILocation(line: 131, column: 21, scope: !331)
!350 = !DILocation(line: 131, column: 14, scope: !331)
!351 = !DILocation(line: 131, column: 12, scope: !331)
!352 = !DILocation(line: 132, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !331, file: !2, line: 132, column: 8)
!354 = !DILocation(line: 132, column: 8, scope: !353)
!355 = !DILocation(line: 132, column: 14, scope: !353)
!356 = !DILocation(line: 132, column: 8, scope: !331)
!357 = !DILocation(line: 133, column: 5, scope: !353)
!358 = !DILocation(line: 134, column: 4, scope: !331)
!359 = !DILocation(line: 136, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !331, file: !2, line: 136, column: 8)
!361 = !DILocation(line: 136, column: 31, scope: !360)
!362 = !DILocation(line: 136, column: 8, scope: !331)
!363 = !DILocation(line: 137, column: 13, scope: !360)
!364 = !DILocation(line: 138, column: 6, scope: !360)
!365 = !DILocation(line: 138, column: 15, scope: !360)
!366 = !DILocation(line: 137, column: 5, scope: !360)
!367 = !DILocation(line: 136, column: 34, scope: !360)
!368 = !DILocation(line: 142, column: 4, scope: !331)
!369 = !DILocation(line: 146, column: 12, scope: !331)
!370 = !DILocation(line: 146, column: 4, scope: !331)
!371 = !DILocation(line: 149, column: 12, scope: !331)
!372 = !DILocation(line: 150, column: 5, scope: !331)
!373 = !DILocation(line: 150, column: 14, scope: !331)
!374 = !DILocation(line: 149, column: 4, scope: !331)
!375 = !DILocation(line: 151, column: 4, scope: !331)
!376 = distinct !{!376, !321, !377, !378}
!377 = !DILocation(line: 153, column: 2, scope: !214)
!378 = !{!"llvm.loop.mustprogress"}
!379 = !DILocation(line: 155, column: 6, scope: !380)
!380 = distinct !DILexicalBlock(scope: !214, file: !2, line: 155, column: 6)
!381 = !DILocation(line: 155, column: 13, scope: !380)
!382 = !DILocation(line: 155, column: 35, scope: !380)
!383 = !DILocation(line: 155, column: 11, scope: !380)
!384 = !DILocation(line: 155, column: 39, scope: !380)
!385 = !DILocation(line: 156, column: 6, scope: !380)
!386 = !DILocation(line: 156, column: 11, scope: !380)
!387 = !DILocation(line: 156, column: 34, scope: !380)
!388 = !DILocation(line: 155, column: 6, scope: !214)
!389 = !DILocation(line: 157, column: 3, scope: !380)
!390 = !DILocation(line: 158, column: 6, scope: !391)
!391 = distinct !DILexicalBlock(scope: !214, file: !2, line: 158, column: 6)
!392 = !DILocation(line: 158, column: 13, scope: !391)
!393 = !DILocation(line: 158, column: 35, scope: !391)
!394 = !DILocation(line: 158, column: 11, scope: !391)
!395 = !DILocation(line: 158, column: 6, scope: !214)
!396 = !DILocation(line: 159, column: 3, scope: !391)
!397 = !DILocation(line: 161, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !214, file: !2, line: 161, column: 6)
!399 = !DILocation(line: 161, column: 10, scope: !398)
!400 = !DILocation(line: 161, column: 6, scope: !214)
!401 = !DILocation(line: 162, column: 14, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !2, line: 161, column: 19)
!403 = !DILocation(line: 162, column: 19, scope: !402)
!404 = !DILocation(line: 162, column: 12, scope: !402)
!405 = !DILocation(line: 163, column: 2, scope: !402)
!406 = !DILocation(line: 164, column: 31, scope: !407)
!407 = distinct !DILexicalBlock(scope: !398, file: !2, line: 163, column: 9)
!408 = !DILocation(line: 164, column: 37, scope: !407)
!409 = !DILocation(line: 164, column: 42, scope: !407)
!410 = !DILocation(line: 164, column: 12, scope: !407)
!411 = !DILocation(line: 164, column: 10, scope: !407)
!412 = !DILocation(line: 166, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !407, file: !2, line: 166, column: 7)
!414 = !DILocation(line: 166, column: 14, scope: !413)
!415 = !DILocation(line: 166, column: 7, scope: !407)
!416 = !DILocation(line: 168, column: 10, scope: !413)
!417 = !DILocation(line: 168, column: 15, scope: !413)
!418 = !DILocation(line: 169, column: 28, scope: !413)
!419 = !DILocation(line: 169, column: 10, scope: !413)
!420 = !DILocation(line: 167, column: 4, scope: !413)
!421 = !DILocation(line: 170, column: 14, scope: !422)
!422 = distinct !DILexicalBlock(scope: !407, file: !2, line: 170, column: 7)
!423 = !DILocation(line: 170, column: 7, scope: !422)
!424 = !DILocation(line: 170, column: 24, scope: !422)
!425 = !DILocation(line: 170, column: 7, scope: !407)
!426 = !DILocation(line: 171, column: 4, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !2, line: 170, column: 30)
!428 = !DILocation(line: 171, column: 4, scope: !429)
!429 = distinct !DILexicalBlock(scope: !427, file: !2, line: 171, column: 4)
!430 = !DILocation(line: 172, column: 8, scope: !427)
!431 = !DILocation(line: 173, column: 3, scope: !427)
!432 = !DILocation(line: 176, column: 24, scope: !214)
!433 = !DILocation(line: 176, column: 30, scope: !214)
!434 = !DILocation(line: 176, column: 11, scope: !214)
!435 = !DILocation(line: 176, column: 9, scope: !214)
!436 = !DILocation(line: 177, column: 6, scope: !437)
!437 = distinct !DILexicalBlock(scope: !214, file: !2, line: 177, column: 6)
!438 = !DILocation(line: 177, column: 13, scope: !437)
!439 = !DILocation(line: 177, column: 6, scope: !214)
!440 = !DILocation(line: 179, column: 27, scope: !437)
!441 = !DILocation(line: 179, column: 9, scope: !437)
!442 = !DILocation(line: 178, column: 3, scope: !437)
!443 = !DILocation(line: 181, column: 33, scope: !214)
!444 = !DILocation(line: 181, column: 43, scope: !214)
!445 = !DILocation(line: 183, column: 12, scope: !214)
!446 = !DILocation(line: 181, column: 11, scope: !214)
!447 = !DILocation(line: 181, column: 9, scope: !214)
!448 = !DILocation(line: 184, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !214, file: !2, line: 184, column: 6)
!450 = !DILocation(line: 184, column: 13, scope: !449)
!451 = !DILocation(line: 184, column: 6, scope: !214)
!452 = !DILocation(line: 186, column: 9, scope: !449)
!453 = !DILocation(line: 186, column: 37, scope: !449)
!454 = !DILocation(line: 186, column: 19, scope: !449)
!455 = !DILocation(line: 185, column: 3, scope: !449)
!456 = !DILocation(line: 188, column: 6, scope: !457)
!457 = distinct !DILexicalBlock(scope: !214, file: !2, line: 188, column: 6)
!458 = !{i8 0, i8 2}
!459 = !{}
!460 = !DILocation(line: 188, column: 6, scope: !214)
!461 = !DILocation(line: 189, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !2, line: 188, column: 10)
!463 = !DILocation(line: 189, column: 39, scope: !462)
!464 = !DILocation(line: 189, column: 27, scope: !462)
!465 = !DILocation(line: 189, column: 3, scope: !462)
!466 = !DILocation(line: 190, column: 3, scope: !462)
!467 = !DILocation(line: 192, column: 17, scope: !214)
!468 = !DILocation(line: 192, column: 22, scope: !214)
!469 = !DILocation(line: 192, column: 2, scope: !214)
!470 = !DILocation(line: 194, column: 6, scope: !471)
!471 = distinct !DILexicalBlock(scope: !214, file: !2, line: 194, column: 6)
!472 = !DILocation(line: 194, column: 14, scope: !471)
!473 = !DILocation(line: 194, column: 6, scope: !214)
!474 = !DILocation(line: 195, column: 11, scope: !471)
!475 = !DILocation(line: 195, column: 31, scope: !471)
!476 = !DILocation(line: 195, column: 40, scope: !471)
!477 = !DILocation(line: 195, column: 3, scope: !471)
!478 = !DILocation(line: 197, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !214, file: !2, line: 197, column: 6)
!480 = !DILocation(line: 197, column: 6, scope: !214)
!481 = !DILocation(line: 198, column: 18, scope: !479)
!482 = !DILocation(line: 198, column: 3, scope: !479)
!483 = !DILocation(line: 200, column: 20, scope: !479)
!484 = !DILocation(line: 200, column: 25, scope: !479)
!485 = !DILocation(line: 200, column: 3, scope: !479)
!486 = !DILocation(line: 203, column: 24, scope: !214)
!487 = !DILocation(line: 203, column: 10, scope: !214)
!488 = !DILocation(line: 203, column: 8, scope: !214)
!489 = !DILocation(line: 204, column: 7, scope: !272)
!490 = !DILocation(line: 204, column: 13, scope: !272)
!491 = !DILocation(line: 204, column: 35, scope: !272)
!492 = !DILocation(line: 204, column: 6, scope: !214)
!493 = !DILocation(line: 205, column: 3, scope: !271)
!494 = !DILocation(line: 205, column: 17, scope: !271)
!495 = !DILocation(line: 207, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !271, file: !2, line: 207, column: 7)
!497 = !DILocation(line: 207, column: 14, scope: !496)
!498 = !DILocation(line: 207, column: 33, scope: !496)
!499 = !DILocation(line: 207, column: 7, scope: !271)
!500 = !DILocation(line: 208, column: 12, scope: !496)
!501 = !DILocation(line: 211, column: 6, scope: !496)
!502 = !DILocation(line: 208, column: 4, scope: !496)
!503 = !DILocation(line: 213, column: 3, scope: !271)
!504 = !DILocation(line: 214, column: 19, scope: !271)
!505 = !DILocation(line: 214, column: 41, scope: !271)
!506 = !DILocation(line: 214, column: 3, scope: !271)
!507 = !DILocation(line: 216, column: 20, scope: !271)
!508 = !DILocation(line: 216, column: 25, scope: !271)
!509 = !DILocation(line: 216, column: 31, scope: !271)
!510 = !DILocation(line: 216, column: 3, scope: !271)
!511 = !DILocation(line: 218, column: 3, scope: !271)
!512 = !DILocation(line: 218, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !271, file: !2, line: 218, column: 3)
!514 = !DILocation(line: 218, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !513, file: !2, line: 218, column: 3)
!516 = !DILocation(line: 219, column: 25, scope: !271)
!517 = !DILocation(line: 219, column: 47, scope: !271)
!518 = !DILocation(line: 219, column: 3, scope: !271)
!519 = !DILocation(line: 221, column: 14, scope: !520)
!520 = distinct !DILexicalBlock(scope: !271, file: !2, line: 221, column: 7)
!521 = !DILocation(line: 221, column: 7, scope: !520)
!522 = !DILocation(line: 221, column: 29, scope: !520)
!523 = !DILocation(line: 221, column: 34, scope: !520)
!524 = !DILocation(line: 221, column: 38, scope: !520)
!525 = !DILocation(line: 221, column: 7, scope: !271)
!526 = !DILocation(line: 223, column: 39, scope: !527)
!527 = distinct !DILexicalBlock(scope: !520, file: !2, line: 221, column: 45)
!528 = !DILocation(line: 222, column: 4, scope: !527)
!529 = !DILocation(line: 226, column: 27, scope: !271)
!530 = !DILocation(line: 227, column: 6, scope: !271)
!531 = !DILocation(line: 226, column: 12, scope: !271)
!532 = !DILocation(line: 226, column: 10, scope: !271)
!533 = !DILocation(line: 228, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !271, file: !2, line: 228, column: 7)
!535 = !DILocation(line: 228, column: 14, scope: !534)
!536 = !DILocation(line: 228, column: 7, scope: !271)
!537 = !DILocation(line: 229, column: 19, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !2, line: 228, column: 32)
!539 = !DILocation(line: 229, column: 24, scope: !538)
!540 = !DILocation(line: 229, column: 4, scope: !538)
!541 = !DILocation(line: 230, column: 40, scope: !538)
!542 = !DILocation(line: 231, column: 28, scope: !538)
!543 = !DILocation(line: 231, column: 10, scope: !538)
!544 = !DILocation(line: 230, column: 4, scope: !538)
!545 = !DILocation(line: 234, column: 3, scope: !271)
!546 = !DILocation(line: 234, column: 3, scope: !547)
!547 = distinct !DILexicalBlock(scope: !271, file: !2, line: 234, column: 3)
!548 = !DILocation(line: 235, column: 25, scope: !271)
!549 = !DILocation(line: 235, column: 33, scope: !271)
!550 = !DILocation(line: 235, column: 3, scope: !271)
!551 = !DILocation(line: 236, column: 18, scope: !271)
!552 = !DILocation(line: 236, column: 3, scope: !271)
!553 = !DILocation(line: 242, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !271, file: !2, line: 242, column: 7)
!555 = !DILocation(line: 242, column: 7, scope: !271)
!556 = !DILocation(line: 243, column: 4, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !2, line: 242, column: 19)
!558 = !DILocation(line: 243, column: 4, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !2, line: 243, column: 4)
!560 = !DILocation(line: 243, column: 4, scope: !561)
!561 = distinct !DILexicalBlock(scope: !559, file: !2, line: 243, column: 4)
!562 = !DILocation(line: 244, column: 21, scope: !557)
!563 = !DILocation(line: 244, column: 26, scope: !557)
!564 = !DILocation(line: 244, column: 32, scope: !557)
!565 = !DILocation(line: 244, column: 4, scope: !557)
!566 = !DILocation(line: 245, column: 26, scope: !557)
!567 = !DILocation(line: 245, column: 49, scope: !557)
!568 = !DILocation(line: 245, column: 4, scope: !557)
!569 = !DILocation(line: 246, column: 15, scope: !570)
!570 = distinct !DILexicalBlock(scope: !557, file: !2, line: 246, column: 8)
!571 = !DILocation(line: 246, column: 24, scope: !570)
!572 = !DILocation(line: 246, column: 8, scope: !570)
!573 = !DILocation(line: 246, column: 33, scope: !570)
!574 = !DILocation(line: 246, column: 8, scope: !557)
!575 = !DILocation(line: 247, column: 5, scope: !570)
!576 = !DILocation(line: 248, column: 17, scope: !557)
!577 = !DILocation(line: 248, column: 10, scope: !557)
!578 = !DILocation(line: 249, column: 4, scope: !557)
!579 = !DILocation(line: 249, column: 4, scope: !580)
!580 = distinct !DILexicalBlock(scope: !557, file: !2, line: 249, column: 4)
!581 = !DILocation(line: 250, column: 26, scope: !557)
!582 = !DILocation(line: 250, column: 48, scope: !557)
!583 = !DILocation(line: 250, column: 4, scope: !557)
!584 = !DILocation(line: 251, column: 17, scope: !557)
!585 = !DILocation(line: 251, column: 10, scope: !557)
!586 = !DILocation(line: 252, column: 3, scope: !557)
!587 = !DILocation(line: 253, column: 2, scope: !272)
!588 = !DILocation(line: 253, column: 2, scope: !271)
!589 = !DILocation(line: 254, column: 18, scope: !590)
!590 = distinct !DILexicalBlock(scope: !272, file: !2, line: 253, column: 9)
!591 = !DILocation(line: 254, column: 23, scope: !590)
!592 = !DILocation(line: 254, column: 3, scope: !590)
!593 = !DILocation(line: 255, column: 38, scope: !590)
!594 = !DILocation(line: 255, column: 3, scope: !590)
!595 = !DILocation(line: 204, column: 38, scope: !272)
!596 = !DILocation(line: 258, column: 1, scope: !214)
!597 = !DILocation(line: 259, column: 2, scope: !214)
!598 = !DILocation(line: 260, column: 2, scope: !214)
!599 = !DILocation(line: 261, column: 6, scope: !600)
!600 = distinct !DILexicalBlock(scope: !214, file: !2, line: 261, column: 6)
!601 = !DILocation(line: 261, column: 14, scope: !600)
!602 = !DILocation(line: 261, column: 6, scope: !214)
!603 = !DILocation(line: 262, column: 17, scope: !600)
!604 = !DILocation(line: 262, column: 23, scope: !600)
!605 = !DILocation(line: 262, column: 3, scope: !600)
!606 = !DILocation(line: 263, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !214, file: !2, line: 263, column: 6)
!608 = !DILocation(line: 263, column: 10, scope: !607)
!609 = !DILocation(line: 263, column: 6, scope: !214)
!610 = !DILocation(line: 264, column: 3, scope: !607)
!611 = !DILocation(line: 264, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !607, file: !2, line: 264, column: 3)
!613 = !DILocation(line: 265, column: 2, scope: !214)
!614 = !DILocation(line: 267, column: 2, scope: !214)
!615 = !DILocation(line: 268, column: 1, scope: !214)
!616 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 50, type: !617, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!617 = !DISubroutineType(types: !618)
!618 = !{null}
!619 = !DILocation(line: 51, column: 10, scope: !616)
!620 = !DILocation(line: 51, column: 2, scope: !616)
!621 = !DILocation(line: 52, column: 10, scope: !616)
!622 = !DILocation(line: 52, column: 50, scope: !616)
!623 = !DILocation(line: 52, column: 2, scope: !616)
!624 = !DILocation(line: 53, column: 10, scope: !616)
!625 = !DILocation(line: 53, column: 2, scope: !616)
!626 = !DILocation(line: 58, column: 10, scope: !616)
!627 = !DILocation(line: 58, column: 2, scope: !616)
!628 = !DILocation(line: 60, column: 10, scope: !616)
!629 = !DILocation(line: 60, column: 2, scope: !616)
!630 = !DILocation(line: 61, column: 10, scope: !616)
!631 = !DILocation(line: 61, column: 2, scope: !616)
!632 = !DILocation(line: 62, column: 10, scope: !616)
!633 = !DILocation(line: 62, column: 2, scope: !616)
!634 = !DILocation(line: 63, column: 10, scope: !616)
!635 = !DILocation(line: 63, column: 2, scope: !616)
!636 = !DILocation(line: 65, column: 10, scope: !616)
!637 = !DILocation(line: 65, column: 2, scope: !616)
!638 = !DILocation(line: 66, column: 10, scope: !616)
!639 = !DILocation(line: 66, column: 2, scope: !616)
!640 = !DILocation(line: 67, column: 10, scope: !616)
!641 = !DILocation(line: 67, column: 2, scope: !616)
!642 = !DILocation(line: 68, column: 10, scope: !616)
!643 = !DILocation(line: 68, column: 2, scope: !616)
!644 = !DILocation(line: 71, column: 2, scope: !616)
!645 = !DISubprogram(name: "isc_mem_create", scope: !167, file: !167, line: 258, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DISubroutineType(types: !647)
!647 = !{!222, !181, !181, !193}
!648 = !DISubprogram(name: "fatal", scope: !649, file: !649, line: 27, type: !650, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!649 = !DIFile(filename: "./dnssectool.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/bin/dnssec", checksumkind: CSK_MD5, checksum: "a3925156dd343f43ce1030829ae687f7")
!650 = !DISubroutineType(types: !651)
!651 = !{null, !184, null}
!652 = !DISubprogram(name: "dns_result_register", scope: !653, file: !653, line: 195, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!653 = !DIFile(filename: "lib/dns/include/dns/result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "6f221f4c26ac435952b3c9016391913e")
!654 = !DISubprogram(name: "isc_commandline_parse", scope: !655, file: !655, line: 40, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DIFile(filename: "lib/isc/include/isc/commandline.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "e2d6ed42554c7c309a715d6bbca56377")
!656 = !DISubroutineType(types: !657)
!657 = !{!104, !104, !658, !184}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!660 = !DISubprogram(name: "isc__mem_strdup", scope: !167, file: !167, line: 642, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DISubprogram(name: "strtol", scope: !662, file: !662, line: 177, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!663 = !DISubroutineType(types: !664)
!664 = !{!665, !666, !667, !104}
!665 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!667 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !217)
!668 = !DISubprogram(name: "fprintf", scope: !669, file: !669, line: 350, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!669 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!670 = !DISubroutineType(types: !671)
!671 = !{!104, !672, !666, null}
!672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !675, line: 7, baseType: !676)
!675 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !677, line: 49, size: 1728, elements: !678)
!677 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !694, !696, !697, !698, !700, !702, !704, !708, !711, !713, !716, !719, !720, !721, !722, !723}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !676, file: !677, line: 51, baseType: !104, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !676, file: !677, line: 54, baseType: !203, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !676, file: !677, line: 55, baseType: !203, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !676, file: !677, line: 56, baseType: !203, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !676, file: !677, line: 57, baseType: !203, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !676, file: !677, line: 58, baseType: !203, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !676, file: !677, line: 59, baseType: !203, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !676, file: !677, line: 60, baseType: !203, size: 64, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !676, file: !677, line: 61, baseType: !203, size: 64, offset: 512)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !676, file: !677, line: 64, baseType: !203, size: 64, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !676, file: !677, line: 65, baseType: !203, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !676, file: !677, line: 66, baseType: !203, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !676, file: !677, line: 68, baseType: !692, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !677, line: 36, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !676, file: !677, line: 70, baseType: !695, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !676, file: !677, line: 72, baseType: !104, size: 32, offset: 896)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !676, file: !677, line: 73, baseType: !104, size: 32, offset: 928)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !676, file: !677, line: 74, baseType: !699, size: 64, offset: 960)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !246, line: 152, baseType: !665)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !676, file: !677, line: 77, baseType: !701, size: 16, offset: 1024)
!701 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !676, file: !677, line: 78, baseType: !703, size: 8, offset: 1040)
!703 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !676, file: !677, line: 79, baseType: !705, size: 8, offset: 1048)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 1)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !676, file: !677, line: 81, baseType: !709, size: 64, offset: 1088)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !677, line: 43, baseType: null)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !676, file: !677, line: 89, baseType: !712, size: 64, offset: 1152)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !246, line: 153, baseType: !665)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !676, file: !677, line: 91, baseType: !714, size: 64, offset: 1216)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !677, line: 37, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !676, file: !677, line: 92, baseType: !717, size: 64, offset: 1280)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !677, line: 38, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !676, file: !677, line: 93, baseType: !695, size: 64, offset: 1344)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !676, file: !677, line: 94, baseType: !12, size: 64, offset: 1408)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !676, file: !677, line: 95, baseType: !181, size: 64, offset: 1472)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !676, file: !677, line: 96, baseType: !104, size: 32, offset: 1536)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !676, file: !677, line: 98, baseType: !724, size: 160, offset: 1568)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !725)
!725 = !{!726}
!726 = !DISubrange(count: 20)
!727 = !DISubprogram(name: "version", scope: !649, file: !649, line: 40, type: !728, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !184}
!730 = !DISubprogram(name: "exit", scope: !662, file: !662, line: 624, type: !731, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !104}
!733 = !DISubprogram(name: "isc_file_splitpath", scope: !734, file: !734, line: 311, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DIFile(filename: "lib/isc/include/isc/file.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "5593ae1824411974c480d3213e2cfe04")
!735 = !DISubroutineType(types: !736)
!736 = !{!222, !163, !184, !217, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!738 = !DISubprogram(name: "isc_result_totext", scope: !739, file: !739, line: 97, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DIFile(filename: "lib/isc/include/isc/result.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "b66e2fce4d36f26ced5288e76c5bf05c")
!740 = !DISubroutineType(types: !741)
!741 = !{!184, !222}
!742 = !DISubprogram(name: "strcmp", scope: !743, file: !743, line: 156, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!744 = !DISubroutineType(types: !745)
!745 = !{!104, !184, !184}
!746 = !DISubprogram(name: "isc__mem_free", scope: !167, file: !167, line: 640, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DISubprogram(name: "dst_lib_init", scope: !240, file: !240, line: 134, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!748 = !DISubroutineType(types: !749)
!749 = !{!222, !163, !184}
!750 = !DISubprogram(name: "dst_key_fromnamedfile", scope: !240, file: !240, line: 335, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!751 = !DISubroutineType(types: !752)
!752 = !{!222, !184, !184, !104, !163, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!754 = !DISubprogram(name: "dst_key_rid", scope: !240, file: !240, line: 687, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!755 = !DISubroutineType(types: !756)
!756 = !{!757, !761}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_keytag_t", file: !758, line: 98, baseType: !759)
!758 = !DIFile(filename: "lib/dns/include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !244, line: 25, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !246, line: 40, baseType: !701)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!763 = !DISubprogram(name: "dst_key_format", scope: !240, file: !240, line: 902, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !761, !203, !170}
!766 = !DISubprogram(name: "set_keyversion", scope: !649, file: !649, line: 71, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !238}
!769 = !DISubprogram(name: "check_keyversion", scope: !649, file: !649, line: 68, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !238, !203}
!772 = !DISubprogram(name: "dst_key_flags", scope: !240, file: !240, line: 681, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!773 = !DISubroutineType(types: !774)
!774 = !{!243, !761}
!775 = !DISubprogram(name: "isc_stdtime_get", scope: !274, file: !274, line: 31, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!779 = !DISubprogram(name: "dst_key_settime", scope: !240, file: !240, line: 857, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !238, !104, !273}
!782 = !DISubprogram(name: "dst_key_setflags", scope: !240, file: !240, line: 806, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{!222, !238, !243}
!785 = !DISubprogram(name: "dst_key_buildfilename", scope: !240, file: !240, line: 702, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!786 = !DISubroutineType(types: !787)
!787 = !{!222, !761, !104, !184, !262}
!788 = !DISubprogram(name: "access", scope: !789, file: !789, line: 287, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!789 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!790 = !DISubroutineType(types: !791)
!791 = !{!104, !184, !104}
!792 = !DISubprogram(name: "dst_key_tofile", scope: !240, file: !240, line: 385, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DISubroutineType(types: !794)
!794 = !{!222, !761, !104, !184}
!795 = !DISubprogram(name: "printf", scope: !669, file: !669, line: 356, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DISubroutineType(types: !797)
!797 = !{!104, !666, null}
!798 = !DISubprogram(name: "unlink", scope: !789, file: !789, line: 858, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!799 = !DISubroutineType(types: !800)
!800 = !{!104, !184}
!801 = !DISubprogram(name: "dst_key_free", scope: !240, file: !240, line: 648, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !753}
!804 = !DISubprogram(name: "dst_lib_destroy", scope: !240, file: !240, line: 151, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DISubprogram(name: "isc_mem_stats", scope: !167, file: !167, line: 323, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !163, !673}
!808 = !DISubprogram(name: "isc_mem_destroy", scope: !167, file: !167, line: 317, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !193}

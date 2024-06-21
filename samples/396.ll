; ModuleID = 'samples/396.bc'
source_filename = "gssapi_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dst_context = type { i32, i32, ptr, ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct.dst_gssapi_signverifyctx = type { ptr }
%struct.isc_region = type { ptr, i32 }
%struct.isc_buffer = type { i32, ptr, i32, i32, i32, i32, %struct.anon, ptr, i8 }
%struct.anon = type { ptr, ptr }
%struct.gss_buffer_desc_struct = type { i64, ptr }
%struct.dst_key = type { i32, i64, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, ptr, %union.anon.0, [9 x i32], [9 x i8], [4 x i32], [4 x i8], i8, i8, i32, i32, ptr, ptr }
%union.anon.0 = type { ptr }

@.str = private unnamed_addr constant [14 x i8] c"gssapi_link.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [20 x i8] c"funcp != ((void*)0)\00", align 1, !dbg !8
@gssapi_functions = internal global %struct.dst_func { ptr @gssapi_create_signverify_ctx, ptr null, ptr @gssapi_destroy_signverify_ctx, ptr @gssapi_adddata, ptr @gssapi_sign, ptr @gssapi_verify, ptr null, ptr null, ptr @gssapi_compare, ptr null, ptr @gssapi_generate, ptr @gssapi_isprivate, ptr @gssapi_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gssapi_dump, ptr @gssapi_restore }, align 8, !dbg !13
@.str.2 = private unnamed_addr constant [19 x i8] c"GSS sign error: %s\00", align 1, !dbg !43
@.str.3 = private unnamed_addr constant [70 x i8] c"isc_buffer_reserve(&_tmp, (unsigned int)gsig.length) == ISC_R_SUCCESS\00", align 1, !dbg !48
@.str.4 = private unnamed_addr constant [76 x i8] c"isc_buffer_availablelength(sig) >= (unsigned int) (unsigned int)gsig.length\00", align 1, !dbg !53
@.str.5 = private unnamed_addr constant [21 x i8] c"GSS verify error: %s\00", align 1, !dbg !58
@.str.6 = private unnamed_addr constant [18 x i8] c"key != ((void*)0)\00", align 1, !dbg !63
@stderr = external global ptr, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"gss_export_sec_context -> %d, %d\0A\00", align 1, !dbg !68
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !73
@.str.9 = private unnamed_addr constant [12 x i8] c"result == 0\00", align 1, !dbg !78

; Function Attrs: nounwind null_pointer_is_valid uwtable
define i32 @dst__gssapi_init(ptr noundef %funcp) #0 !dbg !389 {
entry:
  %funcp.addr = alloca ptr, align 8
  store ptr %funcp, ptr %funcp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %funcp.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load ptr, ptr %funcp.addr, align 8, !dbg !396
  %cmp = icmp ne ptr %0, null, !dbg !396
  %lnot = xor i1 %cmp, true, !dbg !396
  %lnot1 = xor i1 %lnot, true, !dbg !396
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !396
  %conv = sext i32 %lnot.ext to i64, !dbg !396
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !396
  %tobool = icmp ne i64 %expval, 0, !dbg !396
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !396

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 367, i32 noundef 0, ptr noundef @.str.1) #9, !dbg !396
  unreachable, !dbg !396

1:                                                ; No predecessors!
  br label %lor.end, !dbg !396

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !396
  %3 = load ptr, ptr %funcp.addr, align 8, !dbg !397
  %4 = load ptr, ptr %3, align 8, !dbg !399
  %cmp2 = icmp eq ptr %4, null, !dbg !400
  br i1 %cmp2, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %lor.end
  %5 = load ptr, ptr %funcp.addr, align 8, !dbg !402
  store ptr @gssapi_functions, ptr %5, align 8, !dbg !403
  br label %if.end, !dbg !404

if.end:                                           ; preds = %if.then, %lor.end
  ret i32 0, !dbg !405
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !406 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @gssapi_create_signverify_ctx(ptr noundef %key, ptr noundef %dctx) #0 !dbg !410 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %dctx.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !412, metadata !DIExpression()), !dbg !416
  store ptr %dctx, ptr %dctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !413, metadata !DIExpression()), !dbg !417
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10, !dbg !418
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !414, metadata !DIExpression()), !dbg !419
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !420
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !415, metadata !DIExpression()), !dbg !421
  %0 = load ptr, ptr %key.addr, align 8, !dbg !422
  %1 = load ptr, ptr %dctx.addr, align 8, !dbg !423
  %mctx = getelementptr inbounds %struct.dst_context, ptr %1, i32 0, i32 3, !dbg !423
  %2 = load ptr, ptr %mctx, align 8, !dbg !423
  %call = call ptr @isc__mem_get(ptr noundef %2, i64 noundef 8, ptr noundef @.str, i32 noundef 63), !dbg !423
  store ptr %call, ptr %ctx, align 8, !dbg !424
  %3 = load ptr, ptr %ctx, align 8, !dbg !425
  %cmp = icmp eq ptr %3, null, !dbg !427
  br i1 %cmp, label %if.then, label %if.end, !dbg !428

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !429

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx, align 8, !dbg !430
  %buffer = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %4, i32 0, i32 0, !dbg !431
  store ptr null, ptr %buffer, align 8, !dbg !432
  %5 = load ptr, ptr %dctx.addr, align 8, !dbg !433
  %mctx1 = getelementptr inbounds %struct.dst_context, ptr %5, i32 0, i32 3, !dbg !434
  %6 = load ptr, ptr %mctx1, align 8, !dbg !434
  %7 = load ptr, ptr %ctx, align 8, !dbg !435
  %buffer2 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %7, i32 0, i32 0, !dbg !436
  %call3 = call i32 @isc_buffer_allocate(ptr noundef %6, ptr noundef %buffer2, i32 noundef 1024), !dbg !437
  store i32 %call3, ptr %result, align 4, !dbg !438
  %8 = load i32, ptr %result, align 4, !dbg !439
  %cmp4 = icmp ne i32 %8, 0, !dbg !441
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !442

if.then5:                                         ; preds = %if.end
  br label %do.body, !dbg !443

do.body:                                          ; preds = %if.then5
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !445
  %mctx6 = getelementptr inbounds %struct.dst_context, ptr %9, i32 0, i32 3, !dbg !445
  %10 = load ptr, ptr %mctx6, align 8, !dbg !445
  %11 = load ptr, ptr %ctx, align 8, !dbg !445
  call void @isc__mem_put(ptr noundef %10, ptr noundef %11, i64 noundef 8, ptr noundef @.str, i32 noundef 70), !dbg !445
  store ptr null, ptr %ctx, align 8, !dbg !445
  br label %do.cond, !dbg !445

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !445

do.end:                                           ; preds = %do.cond
  %12 = load i32, ptr %result, align 4, !dbg !447
  store i32 %12, ptr %retval, align 4, !dbg !448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !448

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %ctx, align 8, !dbg !449
  %14 = load ptr, ptr %dctx.addr, align 8, !dbg !450
  %ctxdata = getelementptr inbounds %struct.dst_context, ptr %14, i32 0, i32 5, !dbg !451
  store ptr %13, ptr %ctxdata, align 8, !dbg !452
  store i32 0, ptr %retval, align 4, !dbg !453
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !453

cleanup:                                          ; preds = %if.end7, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !454
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10, !dbg !454
  %15 = load i32, ptr %retval, align 4, !dbg !454
  ret i32 %15, !dbg !454
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @gssapi_destroy_signverify_ctx(ptr noundef %dctx) #0 !dbg !455 {
entry:
  %dctx.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !457, metadata !DIExpression()), !dbg !459
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10, !dbg !460
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !458, metadata !DIExpression()), !dbg !461
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !462
  %ctxdata = getelementptr inbounds %struct.dst_context, ptr %0, i32 0, i32 5, !dbg !463
  %1 = load ptr, ptr %ctxdata, align 8, !dbg !464
  store ptr %1, ptr %ctx, align 8, !dbg !461
  %2 = load ptr, ptr %ctx, align 8, !dbg !465
  %cmp = icmp ne ptr %2, null, !dbg !467
  br i1 %cmp, label %if.then, label %if.end5, !dbg !468

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %ctx, align 8, !dbg !469
  %buffer = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %3, i32 0, i32 0, !dbg !472
  %4 = load ptr, ptr %buffer, align 8, !dbg !472
  %cmp1 = icmp ne ptr %4, null, !dbg !473
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !474

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %ctx, align 8, !dbg !475
  %buffer3 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %5, i32 0, i32 0, !dbg !476
  call void @isc_buffer_free(ptr noundef %buffer3), !dbg !477
  br label %if.end, !dbg !477

if.end:                                           ; preds = %if.then2, %if.then
  br label %do.body, !dbg !478

do.body:                                          ; preds = %if.end
  %6 = load ptr, ptr %dctx.addr, align 8, !dbg !479
  %mctx = getelementptr inbounds %struct.dst_context, ptr %6, i32 0, i32 3, !dbg !479
  %7 = load ptr, ptr %mctx, align 8, !dbg !479
  %8 = load ptr, ptr %ctx, align 8, !dbg !479
  call void @isc__mem_put(ptr noundef %7, ptr noundef %8, i64 noundef 8, ptr noundef @.str, i32 noundef 89), !dbg !479
  store ptr null, ptr %ctx, align 8, !dbg !479
  br label %do.cond, !dbg !479

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !479

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %dctx.addr, align 8, !dbg !481
  %ctxdata4 = getelementptr inbounds %struct.dst_context, ptr %9, i32 0, i32 5, !dbg !482
  store ptr null, ptr %ctxdata4, align 8, !dbg !483
  br label %if.end5, !dbg !484

if.end5:                                          ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10, !dbg !485
  ret void, !dbg !485
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @gssapi_adddata(ptr noundef %dctx, ptr noundef %data) #0 !dbg !486 {
entry:
  %retval = alloca i32, align 4
  %dctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %newbuffer = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %length = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !488, metadata !DIExpression()), !dbg !495
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !489, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10, !dbg !497
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !490, metadata !DIExpression()), !dbg !498
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !499
  %ctxdata = getelementptr inbounds %struct.dst_context, ptr %0, i32 0, i32 5, !dbg !500
  %1 = load ptr, ptr %ctxdata, align 8, !dbg !501
  store ptr %1, ptr %ctx, align 8, !dbg !498
  call void @llvm.lifetime.start.p0(i64 8, ptr %newbuffer) #10, !dbg !502
  tail call void @llvm.dbg.declare(metadata ptr %newbuffer, metadata !491, metadata !DIExpression()), !dbg !503
  store ptr null, ptr %newbuffer, align 8, !dbg !503
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !492, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #10, !dbg !506
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !493, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !508
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !494, metadata !DIExpression()), !dbg !509
  %2 = load ptr, ptr %ctx, align 8, !dbg !510
  %buffer = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %2, i32 0, i32 0, !dbg !511
  %3 = load ptr, ptr %buffer, align 8, !dbg !511
  %4 = load ptr, ptr %data.addr, align 8, !dbg !512
  %call = call i32 @isc_buffer_copyregion(ptr noundef %3, ptr noundef %4), !dbg !513
  store i32 %call, ptr %result, align 4, !dbg !514
  %5 = load i32, ptr %result, align 4, !dbg !515
  %cmp = icmp eq i32 %5, 0, !dbg !517
  br i1 %cmp, label %if.then, label %if.end, !dbg !518

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ctx, align 8, !dbg !520
  %buffer1 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %6, i32 0, i32 0, !dbg !520
  %7 = load ptr, ptr %buffer1, align 8, !dbg !520
  %length2 = getelementptr inbounds %struct.isc_buffer, ptr %7, i32 0, i32 2, !dbg !520
  %8 = load i32, ptr %length2, align 8, !dbg !520
  %9 = load ptr, ptr %data.addr, align 8, !dbg !521
  %length3 = getelementptr inbounds %struct.isc_region, ptr %9, i32 0, i32 1, !dbg !522
  %10 = load i32, ptr %length3, align 8, !dbg !522
  %add = add i32 %8, %10, !dbg !523
  %add4 = add i32 %add, 1024, !dbg !524
  store i32 %add4, ptr %length, align 4, !dbg !525
  %11 = load ptr, ptr %dctx.addr, align 8, !dbg !526
  %mctx = getelementptr inbounds %struct.dst_context, ptr %11, i32 0, i32 3, !dbg !527
  %12 = load ptr, ptr %mctx, align 8, !dbg !527
  %13 = load i32, ptr %length, align 4, !dbg !528
  %call5 = call i32 @isc_buffer_allocate(ptr noundef %12, ptr noundef %newbuffer, i32 noundef %13), !dbg !529
  store i32 %call5, ptr %result, align 4, !dbg !530
  %14 = load i32, ptr %result, align 4, !dbg !531
  %cmp6 = icmp ne i32 %14, 0, !dbg !533
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !534

if.then7:                                         ; preds = %if.end
  %15 = load i32, ptr %result, align 4, !dbg !535
  store i32 %15, ptr %retval, align 4, !dbg !536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !536

if.end8:                                          ; preds = %if.end
  br label %do.body, !dbg !537

do.body:                                          ; preds = %if.end8
  %16 = load ptr, ptr %ctx, align 8, !dbg !538
  %buffer9 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %16, i32 0, i32 0, !dbg !538
  %17 = load ptr, ptr %buffer9, align 8, !dbg !538
  %base = getelementptr inbounds %struct.isc_buffer, ptr %17, i32 0, i32 1, !dbg !538
  %18 = load ptr, ptr %base, align 8, !dbg !538
  %base10 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !538
  store ptr %18, ptr %base10, align 8, !dbg !538
  %19 = load ptr, ptr %ctx, align 8, !dbg !538
  %buffer11 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %19, i32 0, i32 0, !dbg !538
  %20 = load ptr, ptr %buffer11, align 8, !dbg !538
  %used = getelementptr inbounds %struct.isc_buffer, ptr %20, i32 0, i32 3, !dbg !538
  %21 = load i32, ptr %used, align 4, !dbg !538
  %length12 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !538
  store i32 %21, ptr %length12, align 8, !dbg !538
  br label %do.cond, !dbg !538

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !538

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %newbuffer, align 8, !dbg !540
  %call13 = call i32 @isc_buffer_copyregion(ptr noundef %22, ptr noundef %r), !dbg !541
  %23 = load ptr, ptr %newbuffer, align 8, !dbg !542
  %24 = load ptr, ptr %data.addr, align 8, !dbg !543
  %call14 = call i32 @isc_buffer_copyregion(ptr noundef %23, ptr noundef %24), !dbg !544
  %25 = load ptr, ptr %ctx, align 8, !dbg !545
  %buffer15 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %25, i32 0, i32 0, !dbg !546
  call void @isc_buffer_free(ptr noundef %buffer15), !dbg !547
  %26 = load ptr, ptr %newbuffer, align 8, !dbg !548
  %27 = load ptr, ptr %ctx, align 8, !dbg !549
  %buffer16 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %27, i32 0, i32 0, !dbg !550
  store ptr %26, ptr %buffer16, align 8, !dbg !551
  store i32 0, ptr %retval, align 4, !dbg !552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !552

cleanup:                                          ; preds = %do.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !553
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #10, !dbg !553
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr %newbuffer) #10, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10, !dbg !553
  %28 = load i32, ptr %retval, align 4, !dbg !553
  ret i32 %28, !dbg !553
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @gssapi_sign(ptr noundef %dctx, ptr noundef %sig) #0 !dbg !554 {
entry:
  %retval = alloca i32, align 4
  %dctx.addr = alloca ptr, align 8
  %sig.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %message = alloca %struct.isc_region, align 8
  %gmessage = alloca %struct.gss_buffer_desc_struct, align 8
  %gsig = alloca %struct.gss_buffer_desc_struct, align 8
  %minor = alloca i32, align 4
  %gret = alloca i32, align 4
  %gssctx = alloca ptr, align 8
  %buf = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %_tmp = alloca ptr, align 8
  store ptr %dctx, ptr %dctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !556, metadata !DIExpression()), !dbg !578
  store ptr %sig, ptr %sig.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !557, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !558, metadata !DIExpression()), !dbg !581
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !582
  %ctxdata = getelementptr inbounds %struct.dst_context, ptr %0, i32 0, i32 5, !dbg !583
  %1 = load ptr, ptr %ctxdata, align 8, !dbg !584
  store ptr %1, ptr %ctx, align 8, !dbg !581
  call void @llvm.lifetime.start.p0(i64 16, ptr %message) #10, !dbg !585
  tail call void @llvm.dbg.declare(metadata ptr %message, metadata !559, metadata !DIExpression()), !dbg !586
  call void @llvm.lifetime.start.p0(i64 16, ptr %gmessage) #10, !dbg !587
  tail call void @llvm.dbg.declare(metadata ptr %gmessage, metadata !560, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 16, ptr %gsig) #10, !dbg !587
  tail call void @llvm.dbg.declare(metadata ptr %gsig, metadata !566, metadata !DIExpression()), !dbg !589
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #10, !dbg !590
  tail call void @llvm.dbg.declare(metadata ptr %minor, metadata !567, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 4, ptr %gret) #10, !dbg !590
  tail call void @llvm.dbg.declare(metadata ptr %gret, metadata !568, metadata !DIExpression()), !dbg !592
  call void @llvm.lifetime.start.p0(i64 8, ptr %gssctx) #10, !dbg !593
  tail call void @llvm.dbg.declare(metadata ptr %gssctx, metadata !569, metadata !DIExpression()), !dbg !594
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !595
  %key = getelementptr inbounds %struct.dst_context, ptr %2, i32 0, i32 2, !dbg !596
  %3 = load ptr, ptr %key, align 8, !dbg !596
  %keydata = getelementptr inbounds %struct.dst_key, ptr %3, i32 0, i32 15, !dbg !597
  %4 = load ptr, ptr %keydata, align 8, !dbg !598
  store ptr %4, ptr %gssctx, align 8, !dbg !594
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #10, !dbg !599
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !570, metadata !DIExpression()), !dbg !600
  br label %do.body, !dbg !601

do.body:                                          ; preds = %entry
  %5 = load ptr, ptr %ctx, align 8, !dbg !602
  %buffer = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %5, i32 0, i32 0, !dbg !602
  %6 = load ptr, ptr %buffer, align 8, !dbg !602
  %base = getelementptr inbounds %struct.isc_buffer, ptr %6, i32 0, i32 1, !dbg !602
  %7 = load ptr, ptr %base, align 8, !dbg !602
  %base1 = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 0, !dbg !602
  store ptr %7, ptr %base1, align 8, !dbg !602
  %8 = load ptr, ptr %ctx, align 8, !dbg !602
  %buffer2 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %8, i32 0, i32 0, !dbg !602
  %9 = load ptr, ptr %buffer2, align 8, !dbg !602
  %used = getelementptr inbounds %struct.isc_buffer, ptr %9, i32 0, i32 3, !dbg !602
  %10 = load i32, ptr %used, align 4, !dbg !602
  %length = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 1, !dbg !602
  store i32 %10, ptr %length, align 8, !dbg !602
  br label %do.cond, !dbg !602

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !602

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !604

do.body3:                                         ; preds = %do.end
  %length4 = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 1, !dbg !605
  %11 = load i32, ptr %length4, align 8, !dbg !605
  %conv = zext i32 %11 to i64, !dbg !605
  %length5 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gmessage, i32 0, i32 0, !dbg !605
  store i64 %conv, ptr %length5, align 8, !dbg !605
  %base6 = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 0, !dbg !605
  %12 = load ptr, ptr %base6, align 8, !dbg !605
  %value = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gmessage, i32 0, i32 1, !dbg !605
  store ptr %12, ptr %value, align 8, !dbg !605
  br label %do.cond7, !dbg !605

do.cond7:                                         ; preds = %do.body3
  br label %do.end8, !dbg !605

do.end8:                                          ; preds = %do.cond7
  %13 = load ptr, ptr %gssctx, align 8, !dbg !607
  %call = call i32 @gss_get_mic(ptr noundef %minor, ptr noundef %13, i32 noundef 0, ptr noundef %gmessage, ptr noundef %gsig), !dbg !608
  store i32 %call, ptr %gret, align 4, !dbg !609
  %14 = load i32, ptr %gret, align 4, !dbg !610
  %cmp = icmp ne i32 %14, 0, !dbg !612
  br i1 %cmp, label %if.then, label %if.end, !dbg !613

if.then:                                          ; preds = %do.end8
  %15 = load i32, ptr %gret, align 4, !dbg !614
  %16 = load i32, ptr %minor, align 4, !dbg !616
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0, !dbg !617
  %call10 = call ptr @gss_error_tostring(i32 noundef %15, i32 noundef %16, ptr noundef %arraydecay, i64 noundef 1024), !dbg !618
  call void (i32, ptr, ...) @gss_log(i32 noundef 3, ptr noundef @.str.2, ptr noundef %call10), !dbg !619
  store i32 25, ptr %retval, align 4, !dbg !620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !620

if.end:                                           ; preds = %do.end8
  %length11 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !621
  %17 = load i64, ptr %length11, align 8, !dbg !621
  %18 = load ptr, ptr %sig.addr, align 8, !dbg !623
  %length12 = getelementptr inbounds %struct.isc_buffer, ptr %18, i32 0, i32 2, !dbg !623
  %19 = load i32, ptr %length12, align 8, !dbg !623
  %20 = load ptr, ptr %sig.addr, align 8, !dbg !623
  %used13 = getelementptr inbounds %struct.isc_buffer, ptr %20, i32 0, i32 3, !dbg !623
  %21 = load i32, ptr %used13, align 4, !dbg !623
  %sub = sub i32 %19, %21, !dbg !623
  %conv14 = zext i32 %sub to i64, !dbg !623
  %cmp15 = icmp ugt i64 %17, %conv14, !dbg !624
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !625

if.then17:                                        ; preds = %if.end
  %call18 = call i32 @gss_release_buffer(ptr noundef %minor, ptr noundef %gsig), !dbg !626
  store i32 19, ptr %retval, align 4, !dbg !628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !628

if.end19:                                         ; preds = %if.end
  br label %do.body20, !dbg !629

do.body20:                                        ; preds = %if.end19
  %22 = load ptr, ptr %sig.addr, align 8, !dbg !630
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %22, i32 0, i32 8, !dbg !630
  %23 = load i8, ptr %autore, align 8, !dbg !630, !range !631, !noundef !632
  %tobool = trunc i8 %23 to i1, !dbg !630
  %lnot = xor i1 %tobool, true, !dbg !630
  %lnot21 = xor i1 %lnot, true, !dbg !630
  %lnot.ext = zext i1 %lnot21 to i32, !dbg !630
  %conv22 = sext i32 %lnot.ext to i64, !dbg !630
  %expval = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !630
  %tobool23 = icmp ne i64 %expval, 0, !dbg !630
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !633

if.then24:                                        ; preds = %do.body20
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #10, !dbg !634
  tail call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !574, metadata !DIExpression()), !dbg !634
  %24 = load ptr, ptr %sig.addr, align 8, !dbg !634
  store ptr %24, ptr %_tmp, align 8, !dbg !634
  %length25 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !634
  %25 = load i64, ptr %length25, align 8, !dbg !634
  %conv26 = trunc i64 %25 to i32, !dbg !634
  %call27 = call i32 @isc_buffer_reserve(ptr noundef %_tmp, i32 noundef %conv26), !dbg !634
  %cmp28 = icmp eq i32 %call27, 0, !dbg !634
  %lnot30 = xor i1 %cmp28, true, !dbg !634
  %lnot32 = xor i1 %lnot30, true, !dbg !634
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !634
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !634
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 1), !dbg !634
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !634
  br i1 %tobool36, label %lor.end, label %lor.rhs, !dbg !634

lor.rhs:                                          ; preds = %if.then24
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 176, i32 noundef 0, ptr noundef @.str.3) #9, !dbg !634
  unreachable, !dbg !634

26:                                               ; No predecessors!
  br label %lor.end, !dbg !634

lor.end:                                          ; preds = %26, %if.then24
  %27 = phi i1 [ true, %if.then24 ], [ false, %26 ]
  %lor.ext = zext i1 %27 to i32, !dbg !634
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #10, !dbg !630
  br label %if.end37, !dbg !634

if.end37:                                         ; preds = %lor.end, %do.body20
  %28 = load ptr, ptr %sig.addr, align 8, !dbg !633
  %length38 = getelementptr inbounds %struct.isc_buffer, ptr %28, i32 0, i32 2, !dbg !633
  %29 = load i32, ptr %length38, align 8, !dbg !633
  %30 = load ptr, ptr %sig.addr, align 8, !dbg !633
  %used39 = getelementptr inbounds %struct.isc_buffer, ptr %30, i32 0, i32 3, !dbg !633
  %31 = load i32, ptr %used39, align 4, !dbg !633
  %sub40 = sub i32 %29, %31, !dbg !633
  %length41 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !633
  %32 = load i64, ptr %length41, align 8, !dbg !633
  %conv42 = trunc i64 %32 to i32, !dbg !633
  %cmp43 = icmp uge i32 %sub40, %conv42, !dbg !633
  %lnot45 = xor i1 %cmp43, true, !dbg !633
  %lnot47 = xor i1 %lnot45, true, !dbg !633
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !633
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !633
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 1), !dbg !633
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !633
  br i1 %tobool51, label %lor.end53, label %lor.rhs52, !dbg !633

lor.rhs52:                                        ; preds = %if.end37
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 176, i32 noundef 0, ptr noundef @.str.4) #9, !dbg !633
  unreachable, !dbg !633

33:                                               ; No predecessors!
  br label %lor.end53, !dbg !633

lor.end53:                                        ; preds = %33, %if.end37
  %34 = phi i1 [ true, %if.end37 ], [ false, %33 ]
  %lor.ext54 = zext i1 %34 to i32, !dbg !633
  %length55 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !635
  %35 = load i64, ptr %length55, align 8, !dbg !635
  %conv56 = trunc i64 %35 to i32, !dbg !635
  %cmp57 = icmp ugt i32 %conv56, 0, !dbg !635
  br i1 %cmp57, label %if.then59, label %if.end69, !dbg !633

if.then59:                                        ; preds = %lor.end53
  %36 = load ptr, ptr %sig.addr, align 8, !dbg !637
  %base60 = getelementptr inbounds %struct.isc_buffer, ptr %36, i32 0, i32 1, !dbg !637
  %37 = load ptr, ptr %base60, align 8, !dbg !637
  %38 = load ptr, ptr %sig.addr, align 8, !dbg !637
  %used61 = getelementptr inbounds %struct.isc_buffer, ptr %38, i32 0, i32 3, !dbg !637
  %39 = load i32, ptr %used61, align 4, !dbg !637
  %idx.ext = zext i32 %39 to i64, !dbg !637
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %idx.ext, !dbg !637
  %value62 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 1, !dbg !637
  %40 = load ptr, ptr %value62, align 8, !dbg !637
  %length63 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !637
  %41 = load i64, ptr %length63, align 8, !dbg !637
  %conv64 = trunc i64 %41 to i32, !dbg !637
  %conv65 = zext i32 %conv64 to i64, !dbg !637
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %40, i64 %conv65, i1 false), !dbg !637
  %length66 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !637
  %42 = load i64, ptr %length66, align 8, !dbg !637
  %conv67 = trunc i64 %42 to i32, !dbg !637
  %43 = load ptr, ptr %sig.addr, align 8, !dbg !637
  %used68 = getelementptr inbounds %struct.isc_buffer, ptr %43, i32 0, i32 3, !dbg !637
  %44 = load i32, ptr %used68, align 4, !dbg !637
  %add = add i32 %44, %conv67, !dbg !637
  store i32 %add, ptr %used68, align 4, !dbg !637
  br label %if.end69, !dbg !637

if.end69:                                         ; preds = %if.then59, %lor.end53
  br label %do.cond70, !dbg !633

do.cond70:                                        ; preds = %if.end69
  br label %do.end71, !dbg !633

do.end71:                                         ; preds = %do.cond70
  %length72 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !639
  %45 = load i64, ptr %length72, align 8, !dbg !639
  %cmp73 = icmp ne i64 %45, 0, !dbg !641
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !642

if.then75:                                        ; preds = %do.end71
  %call76 = call i32 @gss_release_buffer(ptr noundef %minor, ptr noundef %gsig), !dbg !643
  br label %if.end77, !dbg !643

if.end77:                                         ; preds = %if.then75, %do.end71
  store i32 0, ptr %retval, align 4, !dbg !644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !644

cleanup:                                          ; preds = %if.end77, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %gssctx) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 4, ptr %gret) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 16, ptr %gsig) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 16, ptr %gmessage) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 16, ptr %message) #10, !dbg !645
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10, !dbg !645
  %46 = load i32, ptr %retval, align 4, !dbg !645
  ret i32 %46, !dbg !645
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @gssapi_verify(ptr noundef %dctx, ptr noundef %sig) #0 !dbg !646 {
entry:
  %retval = alloca i32, align 4
  %dctx.addr = alloca ptr, align 8
  %sig.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %message = alloca %struct.isc_region, align 8
  %r = alloca %struct.isc_region, align 8
  %gmessage = alloca %struct.gss_buffer_desc_struct, align 8
  %gsig = alloca %struct.gss_buffer_desc_struct, align 8
  %minor = alloca i32, align 4
  %gret = alloca i32, align 4
  %gssctx = alloca ptr, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %err = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dctx, ptr %dctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %dctx.addr, metadata !648, metadata !DIExpression()), !dbg !664
  store ptr %sig, ptr %sig.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !649, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #10, !dbg !666
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !650, metadata !DIExpression()), !dbg !667
  %0 = load ptr, ptr %dctx.addr, align 8, !dbg !668
  %ctxdata = getelementptr inbounds %struct.dst_context, ptr %0, i32 0, i32 5, !dbg !669
  %1 = load ptr, ptr %ctxdata, align 8, !dbg !670
  store ptr %1, ptr %ctx, align 8, !dbg !667
  call void @llvm.lifetime.start.p0(i64 16, ptr %message) #10, !dbg !671
  tail call void @llvm.dbg.declare(metadata ptr %message, metadata !651, metadata !DIExpression()), !dbg !672
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10, !dbg !671
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !652, metadata !DIExpression()), !dbg !673
  call void @llvm.lifetime.start.p0(i64 16, ptr %gmessage) #10, !dbg !674
  tail call void @llvm.dbg.declare(metadata ptr %gmessage, metadata !653, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 16, ptr %gsig) #10, !dbg !674
  tail call void @llvm.dbg.declare(metadata ptr %gsig, metadata !654, metadata !DIExpression()), !dbg !676
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #10, !dbg !677
  tail call void @llvm.dbg.declare(metadata ptr %minor, metadata !655, metadata !DIExpression()), !dbg !678
  call void @llvm.lifetime.start.p0(i64 4, ptr %gret) #10, !dbg !677
  tail call void @llvm.dbg.declare(metadata ptr %gret, metadata !656, metadata !DIExpression()), !dbg !679
  call void @llvm.lifetime.start.p0(i64 8, ptr %gssctx) #10, !dbg !680
  tail call void @llvm.dbg.declare(metadata ptr %gssctx, metadata !657, metadata !DIExpression()), !dbg !681
  %2 = load ptr, ptr %dctx.addr, align 8, !dbg !682
  %key = getelementptr inbounds %struct.dst_context, ptr %2, i32 0, i32 2, !dbg !683
  %3 = load ptr, ptr %key, align 8, !dbg !683
  %keydata = getelementptr inbounds %struct.dst_key, ptr %3, i32 0, i32 15, !dbg !684
  %4 = load ptr, ptr %keydata, align 8, !dbg !685
  store ptr %4, ptr %gssctx, align 8, !dbg !681
  %5 = load ptr, ptr %sig.addr, align 8, !dbg !686
  %length = getelementptr inbounds %struct.isc_region, ptr %5, i32 0, i32 1, !dbg !687
  %6 = load i32, ptr %length, align 8, !dbg !687
  %7 = zext i32 %6 to i64, !dbg !688
  %8 = call ptr @llvm.stacksave.p0(), !dbg !688
  store ptr %8, ptr %saved_stack, align 8, !dbg !688
  %vla = alloca i8, i64 %7, align 16, !dbg !688
  store i64 %7, ptr %__vla_expr0, align 8, !dbg !688
  tail call void @llvm.dbg.declare(metadata ptr %__vla_expr0, metadata !658, metadata !DIExpression()), !dbg !689
  tail call void @llvm.dbg.declare(metadata ptr %vla, metadata !659, metadata !DIExpression()), !dbg !690
  call void @llvm.lifetime.start.p0(i64 1024, ptr %err) #10, !dbg !691
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !663, metadata !DIExpression()), !dbg !692
  br label %do.body, !dbg !693

do.body:                                          ; preds = %entry
  %9 = load ptr, ptr %ctx, align 8, !dbg !694
  %buffer = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %9, i32 0, i32 0, !dbg !694
  %10 = load ptr, ptr %buffer, align 8, !dbg !694
  %base = getelementptr inbounds %struct.isc_buffer, ptr %10, i32 0, i32 1, !dbg !694
  %11 = load ptr, ptr %base, align 8, !dbg !694
  %base1 = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 0, !dbg !694
  store ptr %11, ptr %base1, align 8, !dbg !694
  %12 = load ptr, ptr %ctx, align 8, !dbg !694
  %buffer2 = getelementptr inbounds %struct.dst_gssapi_signverifyctx, ptr %12, i32 0, i32 0, !dbg !694
  %13 = load ptr, ptr %buffer2, align 8, !dbg !694
  %used = getelementptr inbounds %struct.isc_buffer, ptr %13, i32 0, i32 3, !dbg !694
  %14 = load i32, ptr %used, align 4, !dbg !694
  %length3 = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 1, !dbg !694
  store i32 %14, ptr %length3, align 8, !dbg !694
  br label %do.cond, !dbg !694

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !694

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !696

do.body4:                                         ; preds = %do.end
  %length5 = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 1, !dbg !697
  %15 = load i32, ptr %length5, align 8, !dbg !697
  %conv = zext i32 %15 to i64, !dbg !697
  %length6 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gmessage, i32 0, i32 0, !dbg !697
  store i64 %conv, ptr %length6, align 8, !dbg !697
  %base7 = getelementptr inbounds %struct.isc_region, ptr %message, i32 0, i32 0, !dbg !697
  %16 = load ptr, ptr %base7, align 8, !dbg !697
  %value = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gmessage, i32 0, i32 1, !dbg !697
  store ptr %16, ptr %value, align 8, !dbg !697
  br label %do.cond8, !dbg !697

do.cond8:                                         ; preds = %do.body4
  br label %do.end9, !dbg !697

do.end9:                                          ; preds = %do.cond8
  %17 = load ptr, ptr %sig.addr, align 8, !dbg !699
  %base10 = getelementptr inbounds %struct.isc_region, ptr %17, i32 0, i32 0, !dbg !700
  %18 = load ptr, ptr %base10, align 8, !dbg !700
  %19 = load ptr, ptr %sig.addr, align 8, !dbg !701
  %length11 = getelementptr inbounds %struct.isc_region, ptr %19, i32 0, i32 1, !dbg !702
  %20 = load i32, ptr %length11, align 8, !dbg !702
  %conv12 = zext i32 %20 to i64, !dbg !701
  call void @llvm.memmove.p0.p0.i64(ptr align 16 %vla, ptr align 1 %18, i64 %conv12, i1 false), !dbg !703
  %base13 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !704
  store ptr %vla, ptr %base13, align 8, !dbg !705
  %21 = load ptr, ptr %sig.addr, align 8, !dbg !706
  %length14 = getelementptr inbounds %struct.isc_region, ptr %21, i32 0, i32 1, !dbg !707
  %22 = load i32, ptr %length14, align 8, !dbg !707
  %length15 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !708
  store i32 %22, ptr %length15, align 8, !dbg !709
  br label %do.body16, !dbg !710

do.body16:                                        ; preds = %do.end9
  %length17 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !711
  %23 = load i32, ptr %length17, align 8, !dbg !711
  %conv18 = zext i32 %23 to i64, !dbg !711
  %length19 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 0, !dbg !711
  store i64 %conv18, ptr %length19, align 8, !dbg !711
  %base20 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !711
  %24 = load ptr, ptr %base20, align 8, !dbg !711
  %value21 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gsig, i32 0, i32 1, !dbg !711
  store ptr %24, ptr %value21, align 8, !dbg !711
  br label %do.cond22, !dbg !711

do.cond22:                                        ; preds = %do.body16
  br label %do.end23, !dbg !711

do.end23:                                         ; preds = %do.cond22
  %25 = load ptr, ptr %gssctx, align 8, !dbg !713
  %call = call i32 @gss_verify_mic(ptr noundef %minor, ptr noundef %25, ptr noundef %gmessage, ptr noundef %gsig, ptr noundef null), !dbg !714
  store i32 %call, ptr %gret, align 4, !dbg !715
  %26 = load i32, ptr %gret, align 4, !dbg !716
  %cmp = icmp ne i32 %26, 0, !dbg !718
  br i1 %cmp, label %if.then, label %if.end, !dbg !719

if.then:                                          ; preds = %do.end23
  %27 = load i32, ptr %gret, align 4, !dbg !720
  %28 = load i32, ptr %minor, align 4, !dbg !722
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %err, i64 0, i64 0, !dbg !723
  %call25 = call ptr @gss_error_tostring(i32 noundef %27, i32 noundef %28, ptr noundef %arraydecay, i64 noundef 1024), !dbg !724
  call void (i32, ptr, ...) @gss_log(i32 noundef 3, ptr noundef @.str.5, ptr noundef %call25), !dbg !725
  %29 = load i32, ptr %gret, align 4, !dbg !726
  %cmp26 = icmp eq i32 %29, 589824, !dbg !728
  br i1 %cmp26, label %if.then51, label %lor.lhs.false, !dbg !729

lor.lhs.false:                                    ; preds = %if.then
  %30 = load i32, ptr %gret, align 4, !dbg !730
  %cmp28 = icmp eq i32 %30, 393216, !dbg !731
  br i1 %cmp28, label %if.then51, label %lor.lhs.false30, !dbg !732

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %31 = load i32, ptr %gret, align 4, !dbg !733
  %cmp31 = icmp eq i32 %31, 2, !dbg !734
  br i1 %cmp31, label %if.then51, label %lor.lhs.false33, !dbg !735

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %32 = load i32, ptr %gret, align 4, !dbg !736
  %cmp34 = icmp eq i32 %32, 4, !dbg !737
  br i1 %cmp34, label %if.then51, label %lor.lhs.false36, !dbg !738

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %33 = load i32, ptr %gret, align 4, !dbg !739
  %cmp37 = icmp eq i32 %33, 8, !dbg !740
  br i1 %cmp37, label %if.then51, label %lor.lhs.false39, !dbg !741

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %34 = load i32, ptr %gret, align 4, !dbg !742
  %cmp40 = icmp eq i32 %34, 16, !dbg !743
  br i1 %cmp40, label %if.then51, label %lor.lhs.false42, !dbg !744

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %35 = load i32, ptr %gret, align 4, !dbg !745
  %cmp43 = icmp eq i32 %35, 786432, !dbg !746
  br i1 %cmp43, label %if.then51, label %lor.lhs.false45, !dbg !747

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %36 = load i32, ptr %gret, align 4, !dbg !748
  %cmp46 = icmp eq i32 %36, 524288, !dbg !749
  br i1 %cmp46, label %if.then51, label %lor.lhs.false48, !dbg !750

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %37 = load i32, ptr %gret, align 4, !dbg !751
  %cmp49 = icmp eq i32 %37, 851968, !dbg !752
  br i1 %cmp49, label %if.then51, label %if.else, !dbg !753

if.then51:                                        ; preds = %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false42, %lor.lhs.false39, %lor.lhs.false36, %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false, %if.then
  store i32 131086, ptr %retval, align 4, !dbg !754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !754

if.else:                                          ; preds = %lor.lhs.false48
  store i32 25, ptr %retval, align 4, !dbg !755
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !755

if.end:                                           ; preds = %do.end23
  store i32 0, ptr %retval, align 4, !dbg !756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !756

cleanup:                                          ; preds = %if.end, %if.else, %if.then51
  call void @llvm.lifetime.end.p0(i64 1024, ptr %err) #10, !dbg !757
  %38 = load ptr, ptr %saved_stack, align 8, !dbg !757
  call void @llvm.stackrestore.p0(ptr %38), !dbg !757
  call void @llvm.lifetime.end.p0(i64 8, ptr %gssctx) #10, !dbg !757
  call void @llvm.lifetime.end.p0(i64 4, ptr %gret) #10, !dbg !757
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #10, !dbg !757
  call void @llvm.lifetime.end.p0(i64 16, ptr %gsig) #10, !dbg !757
  call void @llvm.lifetime.end.p0(i64 16, ptr %gmessage) #10, !dbg !757
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10, !dbg !757
  call void @llvm.lifetime.end.p0(i64 16, ptr %message) #10, !dbg !757
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #10, !dbg !757
  %39 = load i32, ptr %retval, align 4, !dbg !757
  ret i32 %39, !dbg !757
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @gssapi_compare(ptr noundef %key1, ptr noundef %key2) #0 !dbg !758 {
entry:
  %key1.addr = alloca ptr, align 8
  %key2.addr = alloca ptr, align 8
  %gsskey1 = alloca ptr, align 8
  %gsskey2 = alloca ptr, align 8
  store ptr %key1, ptr %key1.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key1.addr, metadata !760, metadata !DIExpression()), !dbg !764
  store ptr %key2, ptr %key2.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key2.addr, metadata !761, metadata !DIExpression()), !dbg !765
  call void @llvm.lifetime.start.p0(i64 8, ptr %gsskey1) #10, !dbg !766
  tail call void @llvm.dbg.declare(metadata ptr %gsskey1, metadata !762, metadata !DIExpression()), !dbg !767
  %0 = load ptr, ptr %key1.addr, align 8, !dbg !768
  %keydata = getelementptr inbounds %struct.dst_key, ptr %0, i32 0, i32 15, !dbg !769
  %1 = load ptr, ptr %keydata, align 8, !dbg !770
  store ptr %1, ptr %gsskey1, align 8, !dbg !767
  call void @llvm.lifetime.start.p0(i64 8, ptr %gsskey2) #10, !dbg !771
  tail call void @llvm.dbg.declare(metadata ptr %gsskey2, metadata !763, metadata !DIExpression()), !dbg !772
  %2 = load ptr, ptr %key2.addr, align 8, !dbg !773
  %keydata1 = getelementptr inbounds %struct.dst_key, ptr %2, i32 0, i32 15, !dbg !774
  %3 = load ptr, ptr %keydata1, align 8, !dbg !775
  store ptr %3, ptr %gsskey2, align 8, !dbg !772
  %4 = load ptr, ptr %gsskey1, align 8, !dbg !776
  %5 = load ptr, ptr %gsskey2, align 8, !dbg !777
  %cmp = icmp eq ptr %4, %5, !dbg !778
  call void @llvm.lifetime.end.p0(i64 8, ptr %gsskey2) #10, !dbg !779
  call void @llvm.lifetime.end.p0(i64 8, ptr %gsskey1) #10, !dbg !779
  ret i1 %cmp, !dbg !780
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @gssapi_generate(ptr noundef %key, i32 noundef %unused, ptr noundef %callback) #0 !dbg !781 {
entry:
  %key.addr = alloca ptr, align 8
  %unused.addr = alloca i32, align 4
  %callback.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !783, metadata !DIExpression()), !dbg !786
  store i32 %unused, ptr %unused.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !784, metadata !DIExpression()), !dbg !787
  store ptr %callback, ptr %callback.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !785, metadata !DIExpression()), !dbg !788
  %0 = load ptr, ptr %key.addr, align 8, !dbg !789
  %1 = load i32, ptr %unused.addr, align 4, !dbg !790
  %2 = load ptr, ptr %callback.addr, align 8, !dbg !791
  ret i32 25, !dbg !792
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @gssapi_isprivate(ptr noundef %key) #0 !dbg !793 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !795, metadata !DIExpression()), !dbg !796
  %0 = load ptr, ptr %key.addr, align 8, !dbg !797
  ret i1 true, !dbg !798
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal void @gssapi_destroy(ptr noundef %key) #0 !dbg !799 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !801, metadata !DIExpression()), !dbg !802
  %0 = load ptr, ptr %key.addr, align 8, !dbg !803
  %cmp = icmp ne ptr %0, null, !dbg !803
  %lnot = xor i1 %cmp, true, !dbg !803
  %lnot1 = xor i1 %lnot, true, !dbg !803
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !803
  %conv = sext i32 %lnot.ext to i64, !dbg !803
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !803
  %tobool = icmp ne i64 %expval, 0, !dbg !803
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !803

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str, i32 noundef 263, i32 noundef 0, ptr noundef @.str.6) #9, !dbg !803
  unreachable, !dbg !803

1:                                                ; No predecessors!
  br label %lor.end, !dbg !803

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !803
  %3 = load ptr, ptr %key.addr, align 8, !dbg !804
  %mctx = getelementptr inbounds %struct.dst_key, ptr %3, i32 0, i32 12, !dbg !805
  %4 = load ptr, ptr %mctx, align 8, !dbg !805
  %5 = load ptr, ptr %key.addr, align 8, !dbg !806
  %keydata = getelementptr inbounds %struct.dst_key, ptr %5, i32 0, i32 15, !dbg !807
  %call = call i32 @dst_gssapi_deletectx(ptr noundef %4, ptr noundef %keydata), !dbg !808
  %6 = load ptr, ptr %key.addr, align 8, !dbg !809
  %keydata2 = getelementptr inbounds %struct.dst_key, ptr %6, i32 0, i32 15, !dbg !810
  store ptr null, ptr %keydata2, align 8, !dbg !811
  ret void, !dbg !812
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @gssapi_dump(ptr noundef %key, ptr noundef %mctx, ptr noundef %buffer, ptr noundef %length) #0 !dbg !813 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %mctx.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %gssbuffer = alloca %struct.gss_buffer_desc_struct, align 8
  %len = alloca i64, align 8
  %buf = alloca ptr, align 8
  %b = alloca %struct.isc_buffer, align 8
  %r = alloca %struct.isc_region, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !815, metadata !DIExpression()), !dbg !827
  store ptr %mctx, ptr %mctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %mctx.addr, metadata !816, metadata !DIExpression()), !dbg !828
  store ptr %buffer, ptr %buffer.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !817, metadata !DIExpression()), !dbg !829
  store ptr %length, ptr %length.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !818, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #10, !dbg !831
  tail call void @llvm.dbg.declare(metadata ptr %major, metadata !819, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #10, !dbg !831
  tail call void @llvm.dbg.declare(metadata ptr %minor, metadata !820, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 16, ptr %gssbuffer) #10, !dbg !834
  tail call void @llvm.dbg.declare(metadata ptr %gssbuffer, metadata !821, metadata !DIExpression()), !dbg !835
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10, !dbg !836
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !822, metadata !DIExpression()), !dbg !837
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #10, !dbg !838
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !823, metadata !DIExpression()), !dbg !839
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #10, !dbg !840
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !824, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10, !dbg !842
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !825, metadata !DIExpression()), !dbg !843
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !844
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !826, metadata !DIExpression()), !dbg !845
  %0 = load ptr, ptr %key.addr, align 8, !dbg !846
  %keydata = getelementptr inbounds %struct.dst_key, ptr %0, i32 0, i32 15, !dbg !847
  %call = call i32 @gss_export_sec_context(ptr noundef %minor, ptr noundef %keydata, ptr noundef %gssbuffer), !dbg !848
  store i32 %call, ptr %major, align 4, !dbg !849
  %1 = load i32, ptr %major, align 4, !dbg !850
  %cmp = icmp ne i32 %1, 0, !dbg !852
  br i1 %cmp, label %if.then, label %if.end, !dbg !853

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !854
  %3 = load i32, ptr %major, align 4, !dbg !856
  %4 = load i32, ptr %minor, align 4, !dbg !857
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.7, i32 noundef %3, i32 noundef %4), !dbg !858
  store i32 25, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

if.end:                                           ; preds = %entry
  %length2 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gssbuffer, i32 0, i32 0, !dbg !860
  %5 = load i64, ptr %length2, align 8, !dbg !860
  %cmp3 = icmp eq i64 %5, 0, !dbg !862
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !863

if.then4:                                         ; preds = %if.end
  store i32 25, ptr %retval, align 4, !dbg !864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !864

if.end5:                                          ; preds = %if.end
  %length6 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gssbuffer, i32 0, i32 0, !dbg !865
  %6 = load i64, ptr %length6, align 8, !dbg !865
  %add = add i64 %6, 2, !dbg !866
  %div = udiv i64 %add, 3, !dbg !867
  %mul = mul i64 %div, 4, !dbg !868
  store i64 %mul, ptr %len, align 8, !dbg !869
  %7 = load ptr, ptr %mctx.addr, align 8, !dbg !870
  %8 = load i64, ptr %len, align 8, !dbg !870
  %call7 = call ptr @isc__mem_get(ptr noundef %7, i64 noundef %8, ptr noundef @.str, i32 noundef 326), !dbg !870
  store ptr %call7, ptr %buf, align 8, !dbg !871
  %9 = load ptr, ptr %buf, align 8, !dbg !872
  %cmp8 = icmp eq ptr %9, null, !dbg !874
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !875

if.then9:                                         ; preds = %if.end5
  %call10 = call i32 @gss_release_buffer(ptr noundef %minor, ptr noundef %gssbuffer), !dbg !876
  store i32 1, ptr %retval, align 4, !dbg !878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !878

if.end11:                                         ; preds = %if.end5
  br label %do.body, !dbg !879

do.body:                                          ; preds = %if.end11
  %10 = load ptr, ptr %buf, align 8, !dbg !880
  %base = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 1, !dbg !880
  store ptr %10, ptr %base, align 8, !dbg !880
  %11 = load i64, ptr %len, align 8, !dbg !880
  %conv = trunc i64 %11 to i32, !dbg !880
  %length12 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 2, !dbg !880
  store i32 %conv, ptr %length12, align 8, !dbg !880
  %used = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 3, !dbg !880
  store i32 0, ptr %used, align 4, !dbg !880
  %current = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 4, !dbg !880
  store i32 0, ptr %current, align 8, !dbg !880
  %active = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 5, !dbg !880
  store i32 0, ptr %active, align 4, !dbg !880
  %mctx13 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 7, !dbg !880
  store ptr null, ptr %mctx13, align 8, !dbg !880
  br label %do.body14, !dbg !880

do.body14:                                        ; preds = %do.body
  %link = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !882
  %prev = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !882
  store ptr inttoptr (i64 -1 to ptr), ptr %prev, align 8, !dbg !882
  %link15 = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 6, !dbg !882
  %next = getelementptr inbounds %struct.anon, ptr %link15, i32 0, i32 1, !dbg !882
  store ptr inttoptr (i64 -1 to ptr), ptr %next, align 8, !dbg !882
  br label %do.cond, !dbg !882

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !882

do.end:                                           ; preds = %do.cond
  %magic = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 0, !dbg !880
  store i32 1114990113, ptr %magic, align 8, !dbg !880
  %autore = getelementptr inbounds %struct.isc_buffer, ptr %b, i32 0, i32 8, !dbg !880
  store i8 0, ptr %autore, align 8, !dbg !880
  br label %do.cond16, !dbg !880

do.cond16:                                        ; preds = %do.end
  br label %do.end17, !dbg !880

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !884

do.body18:                                        ; preds = %do.end17
  %length19 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gssbuffer, i32 0, i32 0, !dbg !885
  %12 = load i64, ptr %length19, align 8, !dbg !885
  %conv20 = trunc i64 %12 to i32, !dbg !885
  %length21 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !885
  store i32 %conv20, ptr %length21, align 8, !dbg !885
  %value = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gssbuffer, i32 0, i32 1, !dbg !885
  %13 = load ptr, ptr %value, align 8, !dbg !885
  %base22 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !885
  store ptr %13, ptr %base22, align 8, !dbg !885
  br label %do.cond23, !dbg !885

do.cond23:                                        ; preds = %do.body18
  br label %do.end24, !dbg !885

do.end24:                                         ; preds = %do.cond23
  %call25 = call i32 @isc_base64_totext(ptr noundef %r, i32 noundef 0, ptr noundef @.str.8, ptr noundef %b), !dbg !887
  store i32 %call25, ptr %result, align 4, !dbg !888
  %14 = load i32, ptr %result, align 4, !dbg !889
  %cmp26 = icmp eq i32 %14, 0, !dbg !889
  %lnot = xor i1 %cmp26, true, !dbg !889
  %lnot28 = xor i1 %lnot, true, !dbg !889
  %lnot.ext = zext i1 %lnot28 to i32, !dbg !889
  %conv29 = sext i32 %lnot.ext to i64, !dbg !889
  %expval = call i64 @llvm.expect.i64(i64 %conv29, i64 1), !dbg !889
  %tobool = icmp ne i64 %expval, 0, !dbg !889
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !889

lor.rhs:                                          ; preds = %do.end24
  call void @isc_error_runtimecheck(ptr noundef @.str, i32 noundef 334, ptr noundef @.str.9) #9, !dbg !889
  unreachable, !dbg !889

15:                                               ; No predecessors!
  br label %lor.end, !dbg !889

lor.end:                                          ; preds = %15, %do.end24
  %16 = phi i1 [ true, %do.end24 ], [ false, %15 ]
  %lor.ext = zext i1 %16 to i32, !dbg !889
  %call30 = call i32 @gss_release_buffer(ptr noundef %minor, ptr noundef %gssbuffer), !dbg !890
  %17 = load ptr, ptr %buf, align 8, !dbg !891
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !892
  store ptr %17, ptr %18, align 8, !dbg !893
  %19 = load i64, ptr %len, align 8, !dbg !894
  %conv31 = trunc i64 %19 to i32, !dbg !895
  %20 = load ptr, ptr %length.addr, align 8, !dbg !896
  store i32 %conv31, ptr %20, align 4, !dbg !897
  store i32 0, ptr %retval, align 4, !dbg !898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !898

cleanup:                                          ; preds = %lor.end, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !899
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10, !dbg !899
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #10, !dbg !899
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #10, !dbg !899
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10, !dbg !899
  call void @llvm.lifetime.end.p0(i64 16, ptr %gssbuffer) #10, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #10, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #10, !dbg !899
  %21 = load i32, ptr %retval, align 4, !dbg !899
  ret i32 %21, !dbg !899
}

; Function Attrs: nounwind null_pointer_is_valid uwtable
define internal i32 @gssapi_restore(ptr noundef %key, ptr noundef %keystr) #0 !dbg !900 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %keystr.addr = alloca ptr, align 8
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %len = alloca i32, align 4
  %b = alloca ptr, align 8
  %r = alloca %struct.isc_region, align 8
  %gssbuffer = alloca %struct.gss_buffer_desc_struct, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !902, metadata !DIExpression()), !dbg !911
  store ptr %keystr, ptr %keystr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keystr.addr, metadata !903, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #10, !dbg !913
  tail call void @llvm.dbg.declare(metadata ptr %major, metadata !904, metadata !DIExpression()), !dbg !914
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #10, !dbg !913
  tail call void @llvm.dbg.declare(metadata ptr %minor, metadata !905, metadata !DIExpression()), !dbg !915
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !916
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !906, metadata !DIExpression()), !dbg !917
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #10, !dbg !918
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !907, metadata !DIExpression()), !dbg !919
  store ptr null, ptr %b, align 8, !dbg !919
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10, !dbg !920
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !908, metadata !DIExpression()), !dbg !921
  call void @llvm.lifetime.start.p0(i64 16, ptr %gssbuffer) #10, !dbg !922
  tail call void @llvm.dbg.declare(metadata ptr %gssbuffer, metadata !909, metadata !DIExpression()), !dbg !923
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !924
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !910, metadata !DIExpression()), !dbg !925
  %0 = load ptr, ptr %keystr.addr, align 8, !dbg !926
  %call = call i64 @strlen(ptr noundef %0) #11, !dbg !927
  %conv = trunc i64 %call to i32, !dbg !927
  store i32 %conv, ptr %len, align 4, !dbg !928
  %1 = load i32, ptr %len, align 4, !dbg !929
  %rem = urem i32 %1, 4, !dbg !931
  %cmp = icmp ne i32 %rem, 0, !dbg !932
  br i1 %cmp, label %if.then, label %if.end, !dbg !933

if.then:                                          ; preds = %entry
  store i32 31, ptr %retval, align 4, !dbg !934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !934

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %len, align 4, !dbg !935
  %div = udiv i32 %2, 4, !dbg !936
  %mul = mul i32 %div, 3, !dbg !937
  store i32 %mul, ptr %len, align 4, !dbg !938
  %3 = load ptr, ptr %key.addr, align 8, !dbg !939
  %mctx = getelementptr inbounds %struct.dst_key, ptr %3, i32 0, i32 12, !dbg !940
  %4 = load ptr, ptr %mctx, align 8, !dbg !940
  %5 = load i32, ptr %len, align 4, !dbg !941
  %call2 = call i32 @isc_buffer_allocate(ptr noundef %4, ptr noundef %b, i32 noundef %5), !dbg !942
  store i32 %call2, ptr %result, align 4, !dbg !943
  %6 = load i32, ptr %result, align 4, !dbg !944
  %cmp3 = icmp ne i32 %6, 0, !dbg !946
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !947

if.then5:                                         ; preds = %if.end
  %7 = load i32, ptr %result, align 4, !dbg !948
  store i32 %7, ptr %retval, align 4, !dbg !949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !949

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %keystr.addr, align 8, !dbg !950
  %9 = load ptr, ptr %b, align 8, !dbg !951
  %call7 = call i32 @isc_base64_decodestring(ptr noundef %8, ptr noundef %9), !dbg !952
  store i32 %call7, ptr %result, align 4, !dbg !953
  %10 = load i32, ptr %result, align 4, !dbg !954
  %cmp8 = icmp ne i32 %10, 0, !dbg !956
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !957

if.then10:                                        ; preds = %if.end6
  call void @isc_buffer_free(ptr noundef %b), !dbg !958
  %11 = load i32, ptr %result, align 4, !dbg !960
  store i32 %11, ptr %retval, align 4, !dbg !961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !961

if.end11:                                         ; preds = %if.end6
  br label %do.body, !dbg !962

do.body:                                          ; preds = %if.end11
  %12 = load ptr, ptr %b, align 8, !dbg !963
  %base = getelementptr inbounds %struct.isc_buffer, ptr %12, i32 0, i32 1, !dbg !963
  %13 = load ptr, ptr %base, align 8, !dbg !963
  %14 = load ptr, ptr %b, align 8, !dbg !963
  %current = getelementptr inbounds %struct.isc_buffer, ptr %14, i32 0, i32 4, !dbg !963
  %15 = load i32, ptr %current, align 8, !dbg !963
  %idx.ext = zext i32 %15 to i64, !dbg !963
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext, !dbg !963
  %base12 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !963
  store ptr %add.ptr, ptr %base12, align 8, !dbg !963
  %16 = load ptr, ptr %b, align 8, !dbg !963
  %used = getelementptr inbounds %struct.isc_buffer, ptr %16, i32 0, i32 3, !dbg !963
  %17 = load i32, ptr %used, align 4, !dbg !963
  %18 = load ptr, ptr %b, align 8, !dbg !963
  %current13 = getelementptr inbounds %struct.isc_buffer, ptr %18, i32 0, i32 4, !dbg !963
  %19 = load i32, ptr %current13, align 8, !dbg !963
  %sub = sub i32 %17, %19, !dbg !963
  %length = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !963
  store i32 %sub, ptr %length, align 8, !dbg !963
  br label %do.cond, !dbg !963

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !963

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !965

do.body14:                                        ; preds = %do.end
  %length15 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 1, !dbg !966
  %20 = load i32, ptr %length15, align 8, !dbg !966
  %conv16 = zext i32 %20 to i64, !dbg !966
  %length17 = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gssbuffer, i32 0, i32 0, !dbg !966
  store i64 %conv16, ptr %length17, align 8, !dbg !966
  %base18 = getelementptr inbounds %struct.isc_region, ptr %r, i32 0, i32 0, !dbg !966
  %21 = load ptr, ptr %base18, align 8, !dbg !966
  %value = getelementptr inbounds %struct.gss_buffer_desc_struct, ptr %gssbuffer, i32 0, i32 1, !dbg !966
  store ptr %21, ptr %value, align 8, !dbg !966
  br label %do.cond19, !dbg !966

do.cond19:                                        ; preds = %do.body14
  br label %do.end20, !dbg !966

do.end20:                                         ; preds = %do.cond19
  %22 = load ptr, ptr %key.addr, align 8, !dbg !968
  %keydata = getelementptr inbounds %struct.dst_key, ptr %22, i32 0, i32 15, !dbg !969
  %call21 = call i32 @gss_import_sec_context(ptr noundef %minor, ptr noundef %gssbuffer, ptr noundef %keydata), !dbg !970
  store i32 %call21, ptr %major, align 4, !dbg !971
  %23 = load i32, ptr %major, align 4, !dbg !972
  %cmp22 = icmp ne i32 %23, 0, !dbg !974
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !975

if.then24:                                        ; preds = %do.end20
  call void @isc_buffer_free(ptr noundef %b), !dbg !976
  store i32 25, ptr %retval, align 4, !dbg !978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !978

if.end25:                                         ; preds = %do.end20
  call void @isc_buffer_free(ptr noundef %b), !dbg !979
  store i32 0, ptr %retval, align 4, !dbg !980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !980

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !981
  call void @llvm.lifetime.end.p0(i64 16, ptr %gssbuffer) #10, !dbg !981
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10, !dbg !981
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #10, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #10, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #10, !dbg !981
  %24 = load i32, ptr %retval, align 4, !dbg !981
  ret i32 %24, !dbg !981
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !982 ptr @isc__mem_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !983 i32 @isc_buffer_allocate(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !987 void @isc__mem_put(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !988 void @isc_buffer_free(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !991 i32 @isc_buffer_copyregion(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !994 i32 @gss_get_mic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1001 void @gss_log(i32 noundef, ptr noundef, ...) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1005 ptr @gss_error_tostring(i32 noundef, i32 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1008 i32 @gss_release_buffer(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1011 i32 @isc_buffer_reserve(ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1014 i32 @gss_verify_mic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #6

; Function Attrs: null_pointer_is_valid
declare !dbg !1018 i32 @dst_gssapi_deletectx(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1022 i32 @gss_export_sec_context(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1025 i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1081 i32 @isc_base64_totext(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !1086 void @isc_error_runtimecheck(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid willreturn memory(read)
declare !dbg !1090 i64 @strlen(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare !dbg !1094 i32 @isc_base64_decodestring(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare !dbg !1097 i32 @gss_import_sec_context(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!383, !384, !385, !386, !387}
!llvm.ident = !{!388}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "gssapi_link.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "aba7c5021de25e0af40f12dd65990b8a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 14)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 20)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "gssapi_functions", scope: !15, file: !2, line: 341, type: !83, isLocal: true, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !30, globals: !42, splitDebugInlining: false, nameTableKind: None)
!16 = !{!17, !23}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 78, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "./dst_internal.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "31327bbd24d38b55d2f8cec4faa1d6ff")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "DO_SIGN", value: 0)
!22 = !DIEnumerator(name: "DO_VERIFY", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 25, baseType: !19, size: 32, elements: !25)
!24 = !DIFile(filename: "isc/include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!27 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!28 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!29 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!30 = !{!31, !19, !32, !34, !41}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "OM_uint32", file: !35, line: 104, baseType: !36)
!35 = !DIFile(filename: "/usr/include/gssapi/gssapi.h", directory: "", checksumkind: CSK_MD5, checksum: "807b4c8bdeb8eab1f0291b12c162f53b")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gss_uint32", file: !35, line: 91, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 26, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !40, line: 42, baseType: !19)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !{!0, !8, !13, !43, !48, !53, !58, !63, !68, !73, !78}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 19)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 70)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 76)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 21)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 18)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 34)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 333, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 12)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_func_t", file: !18, line: 70, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_func", file: !18, line: 143, size: 1344, elements: !85)
!85 = !{!86, !291, !295, !299, !311, !315, !316, !320, !326, !330, !331, !338, !342, !346, !350, !354, !358, !365, !369, !373, !379}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "createctx", scope: !84, file: !18, line: 147, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !92, !254}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_result_t", file: !91, line: 67, baseType: !19)
!91 = !DIFile(filename: "isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_key_t", file: !94, line: 44, baseType: !95)
!94 = !DIFile(filename: "include/dst/dst.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "10e76bcacbe005e6cc7dee2ac6ffac9a")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_key", file: !18, line: 81, size: 1472, elements: !96)
!96 = !{!97, !98, !107, !195, !196, !197, !198, !199, !203, !204, !205, !207, !209, !210, !211, !212, !233, !239, !241, !245, !247, !248, !249, !250, !251, !253}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !95, file: !18, line: 82, baseType: !19, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !95, file: !18, line: 83, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_refcount_t", file: !100, line: 33, baseType: !101)
!100 = !DIFile(filename: "isc/include/isc/refcount.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "91efe302f7658e72e20c0f8ed1bea09f")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_uint_fast32_t", file: !102, line: 123, baseType: !103)
!102 = !DIFile(filename: "/usr/lib/clang/18/include/stdatomic.h", directory: "", checksumkind: CSK_MD5, checksum: "1c2aee2a953dfc5407753d1f439b6977")
!103 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !105, line: 74, baseType: !106)
!105 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "key_name", scope: !95, file: !18, line: 84, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_name_t", file: !110, line: 107, baseType: !111)
!110 = !DIFile(filename: "include/dns/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "f35a187441d60b1b4301c816339e75b0")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_name", file: !112, line: 104, size: 640, elements: !113)
!112 = !DIFile(filename: "include/dns/name.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "ec64c9a43875cd86cb4b0e37c1191a89")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !182, !187}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !111, file: !112, line: 105, baseType: !19, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ndata", scope: !111, file: !112, line: 106, baseType: !32, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !111, file: !112, line: 107, baseType: !19, size: 32, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !111, file: !112, line: 108, baseType: !19, size: 32, offset: 160)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !111, file: !112, line: 109, baseType: !19, size: 32, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !111, file: !112, line: 110, baseType: !32, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !111, file: !112, line: 111, baseType: !121, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_buffer_t", file: !91, line: 35, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_buffer", file: !124, line: 173, size: 512, elements: !125)
!124 = !DIFile(filename: "isc/include/isc/buffer.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "feec9784066f3891a27281dd5bdccd55")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !137, !180}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !123, file: !124, line: 174, baseType: !19, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !123, file: !124, line: 175, baseType: !31, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !123, file: !124, line: 178, baseType: !19, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !123, file: !124, line: 179, baseType: !19, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !123, file: !124, line: 180, baseType: !19, size: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !123, file: !124, line: 181, baseType: !19, size: 32, offset: 224)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !123, file: !124, line: 184, baseType: !133, size: 128, offset: 256)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !123, file: !124, line: 184, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !124, line: 184, baseType: !121, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !124, line: 184, baseType: !121, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !123, file: !124, line: 186, baseType: !138, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_mem_t", file: !91, line: 59, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_mem", file: !141, line: 191, size: 128, elements: !142)
!141 = !DIFile(filename: "isc/include/isc/mem.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "587a841195795b087519b89f298822b2")
!142 = !{!143, !144, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "impmagic", scope: !140, file: !141, line: 192, baseType: !19, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !140, file: !141, line: 193, baseType: !19, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !140, file: !141, line: 194, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_memmethods_t", file: !141, line: 180, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_memmethods", file: !141, line: 170, size: 448, elements: !149)
!149 = !{!150, !157, !161, !166, !167, !171, !176}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "memget", scope: !148, file: !141, line: 171, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!31, !138, !154, !156, !19}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 70, baseType: !106)
!155 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "memput", scope: !148, file: !141, line: 172, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !138, !31, !154, !156, !19}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "memputanddetach", scope: !148, file: !141, line: 173, baseType: !162, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165, !31, !154, !156, !19}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "memallocate", scope: !148, file: !141, line: 175, baseType: !151, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "memreallocate", scope: !148, file: !141, line: 176, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!31, !138, !31, !154, !156, !19}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "memstrdup", scope: !148, file: !141, line: 178, baseType: !172, size: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !138, !156, !156, !19}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "memfree", scope: !148, file: !141, line: 179, baseType: !177, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !138, !31, !156, !19}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "autore", scope: !123, file: !124, line: 188, baseType: !181, size: 8, offset: 448)
!181 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !111, file: !112, line: 112, baseType: !183, size: 128, offset: 384)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !112, line: 112, size: 128, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !183, file: !112, line: 112, baseType: !108, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !112, line: 112, baseType: !108, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !111, file: !112, line: 113, baseType: !188, size: 128, offset: 512)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !112, line: 113, size: 128, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !188, file: !112, line: 113, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataset_t", file: !110, line: 123, baseType: !193)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "dns_rdataset", file: !110, line: 123, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !188, file: !112, line: 113, baseType: !191, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !95, file: !18, line: 85, baseType: !19, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "key_proto", scope: !95, file: !18, line: 86, baseType: !19, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "key_alg", scope: !95, file: !18, line: 87, baseType: !19, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "key_flags", scope: !95, file: !18, line: 88, baseType: !37, size: 32, offset: 288)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "key_id", scope: !95, file: !18, line: 89, baseType: !200, size: 16, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !38, line: 25, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !40, line: 40, baseType: !202)
!202 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "key_rid", scope: !95, file: !18, line: 90, baseType: !200, size: 16, offset: 336)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "key_bits", scope: !95, file: !18, line: 92, baseType: !200, size: 16, offset: 352)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "key_class", scope: !95, file: !18, line: 93, baseType: !206, size: 16, offset: 368)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_rdataclass_t", file: !110, line: 121, baseType: !200)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "key_ttl", scope: !95, file: !18, line: 94, baseType: !208, size: 32, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_ttl_t", file: !110, line: 144, baseType: !37)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !95, file: !18, line: 95, baseType: !138, size: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !95, file: !18, line: 96, baseType: !175, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !95, file: !18, line: 97, baseType: !175, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "keydata", scope: !95, file: !18, line: 109, baseType: !213, size: 64, offset: 640)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !18, line: 98, size: 64, elements: !214)
!214 = !{!215, !216, !220, !225, !229}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !213, file: !18, line: 99, baseType: !31, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "gssctx", scope: !213, file: !18, line: 100, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "gss_ctx_id_t", file: !35, line: 85, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "gss_ctx_id_struct", file: !35, line: 84, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !213, file: !18, line: 101, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "DH", file: !223, line: 137, baseType: !224)
!223 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/openssl-3.1.3-t2z4gdp5gh6gi55dbaqbl32ceazzcooa/include/openssl/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build", checksumkind: CSK_MD5, checksum: "b6649ae9fb159d98e26ef5156a06b00d")
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "dh_st", file: !223, line: 137, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pkey", scope: !213, file: !18, line: 103, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_PKEY", file: !223, line: 110, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_pkey_st", file: !223, line: 110, flags: DIFlagFwdDecl)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "hmac_key", scope: !213, file: !18, line: 108, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_hmac_key_t", file: !18, line: 72, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_hmac_key", file: !18, line: 72, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !95, file: !18, line: 111, baseType: !234, size: 288, offset: 704)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 288, elements: !237)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_stdtime_t", file: !236, line: 26, baseType: !37)
!236 = !DIFile(filename: "../../lib/isc/unix/include/isc/stdtime.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "b8868fded6c0eb282ad50986c628a693")
!237 = !{!238}
!238 = !DISubrange(count: 9)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "timeset", scope: !95, file: !18, line: 112, baseType: !240, size: 72, offset: 992)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 72, elements: !237)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nums", scope: !95, file: !18, line: 113, baseType: !242, size: 128, offset: 1088)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 4)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "numset", scope: !95, file: !18, line: 114, baseType: !246, size: 32, offset: 1216)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 32, elements: !243)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "inactive", scope: !95, file: !18, line: 115, baseType: !181, size: 8, offset: 1248)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "external", scope: !95, file: !18, line: 117, baseType: !181, size: 8, offset: 1256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_major", scope: !95, file: !18, line: 119, baseType: !41, size: 32, offset: 1280)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_minor", scope: !95, file: !18, line: 120, baseType: !41, size: 32, offset: 1312)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !95, file: !18, line: 122, baseType: !252, size: 64, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "key_tkeytoken", scope: !95, file: !18, line: 123, baseType: !121, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_context_t", file: !94, line: 45, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_context", file: !18, line: 126, size: 320, elements: !257)
!257 = !{!258, !259, !261, !262, !263, !271}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !256, file: !18, line: 127, baseType: !19, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !256, file: !18, line: 128, baseType: !260, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_use_t", file: !18, line: 78, baseType: !17)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !256, file: !18, line: 129, baseType: !92, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mctx", scope: !256, file: !18, line: 130, baseType: !138, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !256, file: !18, line: 131, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logcategory_t", file: !91, line: 56, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logcategory", file: !267, line: 104, size: 128, elements: !268)
!267 = !DIFile(filename: "isc/include/isc/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6c5d6bf932d34a38240a36d83b90e60a")
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !267, line: 105, baseType: !156, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !266, file: !267, line: 106, baseType: !19, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ctxdata", scope: !256, file: !18, line: 140, baseType: !272, size: 64, offset: 256)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !18, line: 132, size: 64, elements: !273)
!273 = !{!274, !275, !281, !287}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !272, file: !18, line: 133, baseType: !31, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "gssctx", scope: !272, file: !18, line: 134, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "dst_gssapi_signverifyctx_t", file: !110, line: 162, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_gssapi_signverifyctx", file: !2, line: 48, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !278, file: !2, line: 49, baseType: !121, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "hmac_ctx", scope: !272, file: !18, line: 135, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_hmac_t", file: !284, line: 27, baseType: !285)
!284 = !DIFile(filename: "isc/include/isc/hmac.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6549b45454a0767f8b743b53f73cde61")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "HMAC_CTX", file: !223, line: 135, baseType: !286)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "hmac_ctx_st", file: !223, line: 135, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "evp_md_ctx", scope: !272, file: !18, line: 136, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "EVP_MD_CTX", file: !223, line: 107, baseType: !290)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "evp_md_ctx_st", file: !223, line: 107, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "createctx2", scope: !84, file: !18, line: 148, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!90, !92, !41, !254}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "destroyctx", scope: !84, file: !18, line: 150, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !254}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "adddata", scope: !84, file: !18, line: 151, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!90, !254, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_region_t", file: !91, line: 65, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_region", file: !307, line: 21, size: 128, elements: !308)
!307 = !DIFile(filename: "isc/include/isc/region.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "2ed4a07dc05ddbd48f51e2dc9be9f317")
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !306, file: !307, line: 22, baseType: !32, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !306, file: !307, line: 23, baseType: !19, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !84, file: !18, line: 156, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!90, !254, !121}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !84, file: !18, line: 157, baseType: !300, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "verify2", scope: !84, file: !18, line: 158, baseType: !317, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!90, !254, !41, !303}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "computesecret", scope: !84, file: !18, line: 160, baseType: !321, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!90, !324, !324, !121}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !84, file: !18, line: 163, baseType: !327, size: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!181, !324, !324}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "paramcompare", scope: !84, file: !18, line: 164, baseType: !327, size: 64, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "generate", scope: !84, file: !18, line: 166, baseType: !332, size: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!90, !92, !41, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !41}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "isprivate", scope: !84, file: !18, line: 168, baseType: !339, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!181, !324}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !84, file: !18, line: 169, baseType: !343, size: 64, offset: 768)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !92}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "todns", scope: !84, file: !18, line: 172, baseType: !347, size: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!90, !324, !121}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fromdns", scope: !84, file: !18, line: 173, baseType: !351, size: 64, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!90, !92, !121}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tofile", scope: !84, file: !18, line: 174, baseType: !355, size: 64, offset: 960)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!90, !324, !156}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !84, file: !18, line: 175, baseType: !359, size: 64, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!90, !92, !362, !92}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_lex_t", file: !91, line: 54, baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_lex", file: !91, line: 54, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !84, file: !18, line: 180, baseType: !366, size: 64, offset: 1088)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "fromlabel", scope: !84, file: !18, line: 182, baseType: !370, size: 64, offset: 1152)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!90, !92, !156, !156, !156}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !84, file: !18, line: 184, baseType: !374, size: 64, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!90, !92, !138, !377, !378}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !84, file: !18, line: 186, baseType: !380, size: 64, offset: 1280)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!90, !92, !156}
!383 = !{i32 7, !"Dwarf Version", i32 5}
!384 = !{i32 2, !"Debug Info Version", i32 3}
!385 = !{i32 1, !"wchar_size", i32 4}
!386 = !{i32 8, !"PIC Level", i32 2}
!387 = !{i32 7, !"uwtable", i32 2}
!388 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!389 = distinct !DISubprogram(name: "dst__gssapi_init", scope: !2, file: !2, line: 366, type: !390, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !393)
!390 = !DISubroutineType(types: !391)
!391 = !{!90, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!393 = !{!394}
!394 = !DILocalVariable(name: "funcp", arg: 1, scope: !389, file: !2, line: 366, type: !392)
!395 = !DILocation(line: 366, column: 31, scope: !389)
!396 = !DILocation(line: 367, column: 2, scope: !389)
!397 = !DILocation(line: 368, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !389, file: !2, line: 368, column: 6)
!399 = !DILocation(line: 368, column: 6, scope: !398)
!400 = !DILocation(line: 368, column: 13, scope: !398)
!401 = !DILocation(line: 368, column: 6, scope: !389)
!402 = !DILocation(line: 369, column: 4, scope: !398)
!403 = !DILocation(line: 369, column: 10, scope: !398)
!404 = !DILocation(line: 369, column: 3, scope: !398)
!405 = !DILocation(line: 370, column: 2, scope: !389)
!406 = !DISubprogram(name: "isc_assertion_failed", scope: !24, file: !24, line: 37, type: !407, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !156, !41, !409, !156}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !24, line: 30, baseType: !23)
!410 = distinct !DISubprogram(name: "gssapi_create_signverify_ctx", scope: !2, file: !2, line: 57, type: !88, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !411)
!411 = !{!412, !413, !414, !415}
!412 = !DILocalVariable(name: "key", arg: 1, scope: !410, file: !2, line: 57, type: !92)
!413 = !DILocalVariable(name: "dctx", arg: 2, scope: !410, file: !2, line: 57, type: !254)
!414 = !DILocalVariable(name: "ctx", scope: !410, file: !2, line: 58, type: !276)
!415 = !DILocalVariable(name: "result", scope: !410, file: !2, line: 59, type: !90)
!416 = !DILocation(line: 57, column: 41, scope: !410)
!417 = !DILocation(line: 57, column: 61, scope: !410)
!418 = !DILocation(line: 58, column: 2, scope: !410)
!419 = !DILocation(line: 58, column: 30, scope: !410)
!420 = !DILocation(line: 59, column: 2, scope: !410)
!421 = !DILocation(line: 59, column: 15, scope: !410)
!422 = !DILocation(line: 61, column: 2, scope: !410)
!423 = !DILocation(line: 63, column: 8, scope: !410)
!424 = !DILocation(line: 63, column: 6, scope: !410)
!425 = !DILocation(line: 64, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !410, file: !2, line: 64, column: 6)
!427 = !DILocation(line: 64, column: 10, scope: !426)
!428 = !DILocation(line: 64, column: 6, scope: !410)
!429 = !DILocation(line: 65, column: 3, scope: !426)
!430 = !DILocation(line: 66, column: 2, scope: !410)
!431 = !DILocation(line: 66, column: 7, scope: !410)
!432 = !DILocation(line: 66, column: 14, scope: !410)
!433 = !DILocation(line: 67, column: 31, scope: !410)
!434 = !DILocation(line: 67, column: 37, scope: !410)
!435 = !DILocation(line: 67, column: 44, scope: !410)
!436 = !DILocation(line: 67, column: 49, scope: !410)
!437 = !DILocation(line: 67, column: 11, scope: !410)
!438 = !DILocation(line: 67, column: 9, scope: !410)
!439 = !DILocation(line: 69, column: 6, scope: !440)
!440 = distinct !DILexicalBlock(scope: !410, file: !2, line: 69, column: 6)
!441 = !DILocation(line: 69, column: 13, scope: !440)
!442 = !DILocation(line: 69, column: 6, scope: !410)
!443 = !DILocation(line: 70, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !2, line: 69, column: 31)
!445 = !DILocation(line: 70, column: 3, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !2, line: 70, column: 3)
!447 = !DILocation(line: 71, column: 11, scope: !444)
!448 = !DILocation(line: 71, column: 3, scope: !444)
!449 = !DILocation(line: 74, column: 25, scope: !410)
!450 = !DILocation(line: 74, column: 2, scope: !410)
!451 = !DILocation(line: 74, column: 8, scope: !410)
!452 = !DILocation(line: 74, column: 23, scope: !410)
!453 = !DILocation(line: 76, column: 2, scope: !410)
!454 = !DILocation(line: 77, column: 1, scope: !410)
!455 = distinct !DISubprogram(name: "gssapi_destroy_signverify_ctx", scope: !2, file: !2, line: 83, type: !297, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !456)
!456 = !{!457, !458}
!457 = !DILocalVariable(name: "dctx", arg: 1, scope: !455, file: !2, line: 83, type: !254)
!458 = !DILocalVariable(name: "ctx", scope: !455, file: !2, line: 84, type: !276)
!459 = !DILocation(line: 83, column: 46, scope: !455)
!460 = !DILocation(line: 84, column: 2, scope: !455)
!461 = !DILocation(line: 84, column: 30, scope: !455)
!462 = !DILocation(line: 84, column: 36, scope: !455)
!463 = !DILocation(line: 84, column: 42, scope: !455)
!464 = !DILocation(line: 84, column: 50, scope: !455)
!465 = !DILocation(line: 86, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !455, file: !2, line: 86, column: 6)
!467 = !DILocation(line: 86, column: 10, scope: !466)
!468 = !DILocation(line: 86, column: 6, scope: !455)
!469 = !DILocation(line: 87, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !2, line: 87, column: 7)
!471 = distinct !DILexicalBlock(scope: !466, file: !2, line: 86, column: 19)
!472 = !DILocation(line: 87, column: 12, scope: !470)
!473 = !DILocation(line: 87, column: 19, scope: !470)
!474 = !DILocation(line: 87, column: 7, scope: !471)
!475 = !DILocation(line: 88, column: 21, scope: !470)
!476 = !DILocation(line: 88, column: 26, scope: !470)
!477 = !DILocation(line: 88, column: 4, scope: !470)
!478 = !DILocation(line: 89, column: 3, scope: !471)
!479 = !DILocation(line: 89, column: 3, scope: !480)
!480 = distinct !DILexicalBlock(scope: !471, file: !2, line: 89, column: 3)
!481 = !DILocation(line: 90, column: 3, scope: !471)
!482 = !DILocation(line: 90, column: 9, scope: !471)
!483 = !DILocation(line: 90, column: 24, scope: !471)
!484 = !DILocation(line: 91, column: 2, scope: !471)
!485 = !DILocation(line: 92, column: 1, scope: !455)
!486 = distinct !DISubprogram(name: "gssapi_adddata", scope: !2, file: !2, line: 101, type: !301, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494}
!488 = !DILocalVariable(name: "dctx", arg: 1, scope: !486, file: !2, line: 101, type: !254)
!489 = !DILocalVariable(name: "data", arg: 2, scope: !486, file: !2, line: 101, type: !303)
!490 = !DILocalVariable(name: "ctx", scope: !486, file: !2, line: 102, type: !276)
!491 = !DILocalVariable(name: "newbuffer", scope: !486, file: !2, line: 103, type: !121)
!492 = !DILocalVariable(name: "r", scope: !486, file: !2, line: 104, type: !305)
!493 = !DILocalVariable(name: "length", scope: !486, file: !2, line: 105, type: !19)
!494 = !DILocalVariable(name: "result", scope: !486, file: !2, line: 106, type: !90)
!495 = !DILocation(line: 101, column: 31, scope: !486)
!496 = !DILocation(line: 101, column: 57, scope: !486)
!497 = !DILocation(line: 102, column: 2, scope: !486)
!498 = !DILocation(line: 102, column: 30, scope: !486)
!499 = !DILocation(line: 102, column: 36, scope: !486)
!500 = !DILocation(line: 102, column: 42, scope: !486)
!501 = !DILocation(line: 102, column: 50, scope: !486)
!502 = !DILocation(line: 103, column: 2, scope: !486)
!503 = !DILocation(line: 103, column: 16, scope: !486)
!504 = !DILocation(line: 104, column: 2, scope: !486)
!505 = !DILocation(line: 104, column: 15, scope: !486)
!506 = !DILocation(line: 105, column: 2, scope: !486)
!507 = !DILocation(line: 105, column: 15, scope: !486)
!508 = !DILocation(line: 106, column: 2, scope: !486)
!509 = !DILocation(line: 106, column: 15, scope: !486)
!510 = !DILocation(line: 108, column: 33, scope: !486)
!511 = !DILocation(line: 108, column: 38, scope: !486)
!512 = !DILocation(line: 108, column: 46, scope: !486)
!513 = !DILocation(line: 108, column: 11, scope: !486)
!514 = !DILocation(line: 108, column: 9, scope: !486)
!515 = !DILocation(line: 109, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !486, file: !2, line: 109, column: 6)
!517 = !DILocation(line: 109, column: 13, scope: !516)
!518 = !DILocation(line: 109, column: 6, scope: !486)
!519 = !DILocation(line: 110, column: 3, scope: !516)
!520 = !DILocation(line: 112, column: 11, scope: !486)
!521 = !DILocation(line: 112, column: 44, scope: !486)
!522 = !DILocation(line: 112, column: 50, scope: !486)
!523 = !DILocation(line: 112, column: 42, scope: !486)
!524 = !DILocation(line: 112, column: 57, scope: !486)
!525 = !DILocation(line: 112, column: 9, scope: !486)
!526 = !DILocation(line: 114, column: 31, scope: !486)
!527 = !DILocation(line: 114, column: 37, scope: !486)
!528 = !DILocation(line: 114, column: 55, scope: !486)
!529 = !DILocation(line: 114, column: 11, scope: !486)
!530 = !DILocation(line: 114, column: 9, scope: !486)
!531 = !DILocation(line: 115, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !486, file: !2, line: 115, column: 6)
!533 = !DILocation(line: 115, column: 13, scope: !532)
!534 = !DILocation(line: 115, column: 6, scope: !486)
!535 = !DILocation(line: 116, column: 11, scope: !532)
!536 = !DILocation(line: 116, column: 3, scope: !532)
!537 = !DILocation(line: 118, column: 2, scope: !486)
!538 = !DILocation(line: 118, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !486, file: !2, line: 118, column: 2)
!540 = !DILocation(line: 119, column: 30, scope: !486)
!541 = !DILocation(line: 119, column: 8, scope: !486)
!542 = !DILocation(line: 120, column: 30, scope: !486)
!543 = !DILocation(line: 120, column: 41, scope: !486)
!544 = !DILocation(line: 120, column: 8, scope: !486)
!545 = !DILocation(line: 122, column: 19, scope: !486)
!546 = !DILocation(line: 122, column: 24, scope: !486)
!547 = !DILocation(line: 122, column: 2, scope: !486)
!548 = !DILocation(line: 123, column: 16, scope: !486)
!549 = !DILocation(line: 123, column: 2, scope: !486)
!550 = !DILocation(line: 123, column: 7, scope: !486)
!551 = !DILocation(line: 123, column: 14, scope: !486)
!552 = !DILocation(line: 125, column: 2, scope: !486)
!553 = !DILocation(line: 126, column: 1, scope: !486)
!554 = distinct !DISubprogram(name: "gssapi_sign", scope: !2, file: !2, line: 132, type: !313, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !555)
!555 = !{!556, !557, !558, !559, !560, !566, !567, !568, !569, !570, !574}
!556 = !DILocalVariable(name: "dctx", arg: 1, scope: !554, file: !2, line: 132, type: !254)
!557 = !DILocalVariable(name: "sig", arg: 2, scope: !554, file: !2, line: 132, type: !121)
!558 = !DILocalVariable(name: "ctx", scope: !554, file: !2, line: 133, type: !276)
!559 = !DILocalVariable(name: "message", scope: !554, file: !2, line: 134, type: !305)
!560 = !DILocalVariable(name: "gmessage", scope: !554, file: !2, line: 135, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "gss_buffer_desc", file: !35, line: 120, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gss_buffer_desc_struct", file: !35, line: 117, size: 128, elements: !563)
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !562, file: !35, line: 118, baseType: !154, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !562, file: !35, line: 119, baseType: !31, size: 64, offset: 64)
!566 = !DILocalVariable(name: "gsig", scope: !554, file: !2, line: 135, type: !561)
!567 = !DILocalVariable(name: "minor", scope: !554, file: !2, line: 136, type: !34)
!568 = !DILocalVariable(name: "gret", scope: !554, file: !2, line: 136, type: !34)
!569 = !DILocalVariable(name: "gssctx", scope: !554, file: !2, line: 137, type: !217)
!570 = !DILocalVariable(name: "buf", scope: !554, file: !2, line: 138, type: !571)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 1024)
!574 = !DILocalVariable(name: "_tmp", scope: !575, file: !2, line: 176, type: !121)
!575 = distinct !DILexicalBlock(scope: !576, file: !2, line: 176, column: 2)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 176, column: 2)
!577 = distinct !DILexicalBlock(scope: !554, file: !2, line: 176, column: 2)
!578 = !DILocation(line: 132, column: 28, scope: !554)
!579 = !DILocation(line: 132, column: 48, scope: !554)
!580 = !DILocation(line: 133, column: 2, scope: !554)
!581 = !DILocation(line: 133, column: 30, scope: !554)
!582 = !DILocation(line: 133, column: 36, scope: !554)
!583 = !DILocation(line: 133, column: 42, scope: !554)
!584 = !DILocation(line: 133, column: 50, scope: !554)
!585 = !DILocation(line: 134, column: 2, scope: !554)
!586 = !DILocation(line: 134, column: 15, scope: !554)
!587 = !DILocation(line: 135, column: 2, scope: !554)
!588 = !DILocation(line: 135, column: 18, scope: !554)
!589 = !DILocation(line: 135, column: 28, scope: !554)
!590 = !DILocation(line: 136, column: 2, scope: !554)
!591 = !DILocation(line: 136, column: 12, scope: !554)
!592 = !DILocation(line: 136, column: 19, scope: !554)
!593 = !DILocation(line: 137, column: 2, scope: !554)
!594 = !DILocation(line: 137, column: 15, scope: !554)
!595 = !DILocation(line: 137, column: 24, scope: !554)
!596 = !DILocation(line: 137, column: 30, scope: !554)
!597 = !DILocation(line: 137, column: 35, scope: !554)
!598 = !DILocation(line: 137, column: 43, scope: !554)
!599 = !DILocation(line: 138, column: 2, scope: !554)
!600 = !DILocation(line: 138, column: 7, scope: !554)
!601 = !DILocation(line: 144, column: 2, scope: !554)
!602 = !DILocation(line: 144, column: 2, scope: !603)
!603 = distinct !DILexicalBlock(scope: !554, file: !2, line: 144, column: 2)
!604 = !DILocation(line: 145, column: 2, scope: !554)
!605 = !DILocation(line: 145, column: 2, scope: !606)
!606 = distinct !DILexicalBlock(scope: !554, file: !2, line: 145, column: 2)
!607 = !DILocation(line: 150, column: 29, scope: !554)
!608 = !DILocation(line: 150, column: 9, scope: !554)
!609 = !DILocation(line: 150, column: 7, scope: !554)
!610 = !DILocation(line: 157, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !554, file: !2, line: 157, column: 6)
!612 = !DILocation(line: 157, column: 11, scope: !611)
!613 = !DILocation(line: 157, column: 6, scope: !554)
!614 = !DILocation(line: 159, column: 23, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !2, line: 157, column: 30)
!616 = !DILocation(line: 159, column: 29, scope: !615)
!617 = !DILocation(line: 159, column: 36, scope: !615)
!618 = !DILocation(line: 159, column: 4, scope: !615)
!619 = !DILocation(line: 158, column: 3, scope: !615)
!620 = !DILocation(line: 160, column: 3, scope: !615)
!621 = !DILocation(line: 167, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !554, file: !2, line: 167, column: 6)
!623 = !DILocation(line: 167, column: 20, scope: !622)
!624 = !DILocation(line: 167, column: 18, scope: !622)
!625 = !DILocation(line: 167, column: 6, scope: !554)
!626 = !DILocation(line: 168, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !2, line: 167, column: 53)
!628 = !DILocation(line: 169, column: 3, scope: !627)
!629 = !DILocation(line: 176, column: 2, scope: !554)
!630 = !DILocation(line: 176, column: 2, scope: !576)
!631 = !{i8 0, i8 2}
!632 = !{}
!633 = !DILocation(line: 176, column: 2, scope: !577)
!634 = !DILocation(line: 176, column: 2, scope: !575)
!635 = !DILocation(line: 176, column: 2, scope: !636)
!636 = distinct !DILexicalBlock(scope: !577, file: !2, line: 176, column: 2)
!637 = !DILocation(line: 176, column: 2, scope: !638)
!638 = distinct !DILexicalBlock(scope: !636, file: !2, line: 176, column: 2)
!639 = !DILocation(line: 177, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !554, file: !2, line: 177, column: 6)
!641 = !DILocation(line: 177, column: 18, scope: !640)
!642 = !DILocation(line: 177, column: 6, scope: !554)
!643 = !DILocation(line: 178, column: 3, scope: !640)
!644 = !DILocation(line: 180, column: 2, scope: !554)
!645 = !DILocation(line: 181, column: 1, scope: !554)
!646 = distinct !DISubprogram(name: "gssapi_verify", scope: !2, file: !2, line: 187, type: !301, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !663}
!648 = !DILocalVariable(name: "dctx", arg: 1, scope: !646, file: !2, line: 187, type: !254)
!649 = !DILocalVariable(name: "sig", arg: 2, scope: !646, file: !2, line: 187, type: !303)
!650 = !DILocalVariable(name: "ctx", scope: !646, file: !2, line: 188, type: !276)
!651 = !DILocalVariable(name: "message", scope: !646, file: !2, line: 189, type: !305)
!652 = !DILocalVariable(name: "r", scope: !646, file: !2, line: 189, type: !305)
!653 = !DILocalVariable(name: "gmessage", scope: !646, file: !2, line: 190, type: !561)
!654 = !DILocalVariable(name: "gsig", scope: !646, file: !2, line: 190, type: !561)
!655 = !DILocalVariable(name: "minor", scope: !646, file: !2, line: 191, type: !34)
!656 = !DILocalVariable(name: "gret", scope: !646, file: !2, line: 191, type: !34)
!657 = !DILocalVariable(name: "gssctx", scope: !646, file: !2, line: 192, type: !217)
!658 = !DILocalVariable(name: "__vla_expr0", scope: !646, type: !106, flags: DIFlagArtificial)
!659 = !DILocalVariable(name: "buf", scope: !646, file: !2, line: 193, type: !660)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: !658)
!663 = !DILocalVariable(name: "err", scope: !646, file: !2, line: 194, type: !571)
!664 = !DILocation(line: 187, column: 30, scope: !646)
!665 = !DILocation(line: 187, column: 56, scope: !646)
!666 = !DILocation(line: 188, column: 2, scope: !646)
!667 = !DILocation(line: 188, column: 30, scope: !646)
!668 = !DILocation(line: 188, column: 36, scope: !646)
!669 = !DILocation(line: 188, column: 42, scope: !646)
!670 = !DILocation(line: 188, column: 50, scope: !646)
!671 = !DILocation(line: 189, column: 2, scope: !646)
!672 = !DILocation(line: 189, column: 15, scope: !646)
!673 = !DILocation(line: 189, column: 24, scope: !646)
!674 = !DILocation(line: 190, column: 2, scope: !646)
!675 = !DILocation(line: 190, column: 18, scope: !646)
!676 = !DILocation(line: 190, column: 28, scope: !646)
!677 = !DILocation(line: 191, column: 2, scope: !646)
!678 = !DILocation(line: 191, column: 12, scope: !646)
!679 = !DILocation(line: 191, column: 19, scope: !646)
!680 = !DILocation(line: 192, column: 2, scope: !646)
!681 = !DILocation(line: 192, column: 15, scope: !646)
!682 = !DILocation(line: 192, column: 24, scope: !646)
!683 = !DILocation(line: 192, column: 30, scope: !646)
!684 = !DILocation(line: 192, column: 35, scope: !646)
!685 = !DILocation(line: 192, column: 43, scope: !646)
!686 = !DILocation(line: 193, column: 20, scope: !646)
!687 = !DILocation(line: 193, column: 25, scope: !646)
!688 = !DILocation(line: 193, column: 2, scope: !646)
!689 = !DILocation(line: 0, scope: !646)
!690 = !DILocation(line: 193, column: 16, scope: !646)
!691 = !DILocation(line: 194, column: 2, scope: !646)
!692 = !DILocation(line: 194, column: 7, scope: !646)
!693 = !DILocation(line: 200, column: 2, scope: !646)
!694 = !DILocation(line: 200, column: 2, scope: !695)
!695 = distinct !DILexicalBlock(scope: !646, file: !2, line: 200, column: 2)
!696 = !DILocation(line: 201, column: 2, scope: !646)
!697 = !DILocation(line: 201, column: 2, scope: !698)
!698 = distinct !DILexicalBlock(scope: !646, file: !2, line: 201, column: 2)
!699 = !DILocation(line: 203, column: 15, scope: !646)
!700 = !DILocation(line: 203, column: 20, scope: !646)
!701 = !DILocation(line: 203, column: 26, scope: !646)
!702 = !DILocation(line: 203, column: 31, scope: !646)
!703 = !DILocation(line: 203, column: 2, scope: !646)
!704 = !DILocation(line: 204, column: 4, scope: !646)
!705 = !DILocation(line: 204, column: 9, scope: !646)
!706 = !DILocation(line: 205, column: 13, scope: !646)
!707 = !DILocation(line: 205, column: 18, scope: !646)
!708 = !DILocation(line: 205, column: 4, scope: !646)
!709 = !DILocation(line: 205, column: 11, scope: !646)
!710 = !DILocation(line: 206, column: 2, scope: !646)
!711 = !DILocation(line: 206, column: 2, scope: !712)
!712 = distinct !DILexicalBlock(scope: !646, file: !2, line: 206, column: 2)
!713 = !DILocation(line: 211, column: 32, scope: !646)
!714 = !DILocation(line: 211, column: 9, scope: !646)
!715 = !DILocation(line: 211, column: 7, scope: !646)
!716 = !DILocation(line: 216, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !646, file: !2, line: 216, column: 6)
!718 = !DILocation(line: 216, column: 11, scope: !717)
!719 = !DILocation(line: 216, column: 6, scope: !646)
!720 = !DILocation(line: 218, column: 23, scope: !721)
!721 = distinct !DILexicalBlock(scope: !717, file: !2, line: 216, column: 30)
!722 = !DILocation(line: 218, column: 29, scope: !721)
!723 = !DILocation(line: 218, column: 36, scope: !721)
!724 = !DILocation(line: 218, column: 4, scope: !721)
!725 = !DILocation(line: 217, column: 3, scope: !721)
!726 = !DILocation(line: 219, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !2, line: 219, column: 7)
!728 = !DILocation(line: 219, column: 12, scope: !727)
!729 = !DILocation(line: 219, column: 37, scope: !727)
!730 = !DILocation(line: 220, column: 7, scope: !727)
!731 = !DILocation(line: 220, column: 12, scope: !727)
!732 = !DILocation(line: 220, column: 29, scope: !727)
!733 = !DILocation(line: 221, column: 7, scope: !727)
!734 = !DILocation(line: 221, column: 12, scope: !727)
!735 = !DILocation(line: 221, column: 37, scope: !727)
!736 = !DILocation(line: 222, column: 7, scope: !727)
!737 = !DILocation(line: 222, column: 12, scope: !727)
!738 = !DILocation(line: 222, column: 31, scope: !727)
!739 = !DILocation(line: 223, column: 7, scope: !727)
!740 = !DILocation(line: 223, column: 12, scope: !727)
!741 = !DILocation(line: 223, column: 33, scope: !727)
!742 = !DILocation(line: 224, column: 7, scope: !727)
!743 = !DILocation(line: 224, column: 12, scope: !727)
!744 = !DILocation(line: 224, column: 31, scope: !727)
!745 = !DILocation(line: 225, column: 7, scope: !727)
!746 = !DILocation(line: 225, column: 12, scope: !727)
!747 = !DILocation(line: 225, column: 37, scope: !727)
!748 = !DILocation(line: 226, column: 7, scope: !727)
!749 = !DILocation(line: 226, column: 12, scope: !727)
!750 = !DILocation(line: 226, column: 32, scope: !727)
!751 = !DILocation(line: 227, column: 7, scope: !727)
!752 = !DILocation(line: 227, column: 12, scope: !727)
!753 = !DILocation(line: 219, column: 7, scope: !721)
!754 = !DILocation(line: 228, column: 4, scope: !727)
!755 = !DILocation(line: 230, column: 4, scope: !727)
!756 = !DILocation(line: 233, column: 2, scope: !646)
!757 = !DILocation(line: 234, column: 1, scope: !646)
!758 = distinct !DISubprogram(name: "gssapi_compare", scope: !2, file: !2, line: 237, type: !328, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !759)
!759 = !{!760, !761, !762, !763}
!760 = !DILocalVariable(name: "key1", arg: 1, scope: !758, file: !2, line: 237, type: !324)
!761 = !DILocalVariable(name: "key2", arg: 2, scope: !758, file: !2, line: 237, type: !324)
!762 = !DILocalVariable(name: "gsskey1", scope: !758, file: !2, line: 238, type: !217)
!763 = !DILocalVariable(name: "gsskey2", scope: !758, file: !2, line: 239, type: !217)
!764 = !DILocation(line: 237, column: 33, scope: !758)
!765 = !DILocation(line: 237, column: 56, scope: !758)
!766 = !DILocation(line: 238, column: 2, scope: !758)
!767 = !DILocation(line: 238, column: 15, scope: !758)
!768 = !DILocation(line: 238, column: 25, scope: !758)
!769 = !DILocation(line: 238, column: 31, scope: !758)
!770 = !DILocation(line: 238, column: 39, scope: !758)
!771 = !DILocation(line: 239, column: 2, scope: !758)
!772 = !DILocation(line: 239, column: 15, scope: !758)
!773 = !DILocation(line: 239, column: 25, scope: !758)
!774 = !DILocation(line: 239, column: 31, scope: !758)
!775 = !DILocation(line: 239, column: 39, scope: !758)
!776 = !DILocation(line: 242, column: 10, scope: !758)
!777 = !DILocation(line: 242, column: 21, scope: !758)
!778 = !DILocation(line: 242, column: 18, scope: !758)
!779 = !DILocation(line: 243, column: 1, scope: !758)
!780 = !DILocation(line: 242, column: 2, scope: !758)
!781 = distinct !DISubprogram(name: "gssapi_generate", scope: !2, file: !2, line: 246, type: !333, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !782)
!782 = !{!783, !784, !785}
!783 = !DILocalVariable(name: "key", arg: 1, scope: !781, file: !2, line: 246, type: !92)
!784 = !DILocalVariable(name: "unused", arg: 2, scope: !781, file: !2, line: 246, type: !41)
!785 = !DILocalVariable(name: "callback", arg: 3, scope: !781, file: !2, line: 246, type: !335)
!786 = !DILocation(line: 246, column: 28, scope: !781)
!787 = !DILocation(line: 246, column: 37, scope: !781)
!788 = !DILocation(line: 246, column: 52, scope: !781)
!789 = !DILocation(line: 247, column: 2, scope: !781)
!790 = !DILocation(line: 248, column: 2, scope: !781)
!791 = !DILocation(line: 249, column: 2, scope: !781)
!792 = !DILocation(line: 252, column: 2, scope: !781)
!793 = distinct !DISubprogram(name: "gssapi_isprivate", scope: !2, file: !2, line: 256, type: !340, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !794)
!794 = !{!795}
!795 = !DILocalVariable(name: "key", arg: 1, scope: !793, file: !2, line: 256, type: !324)
!796 = !DILocation(line: 256, column: 35, scope: !793)
!797 = !DILocation(line: 257, column: 2, scope: !793)
!798 = !DILocation(line: 258, column: 2, scope: !793)
!799 = distinct !DISubprogram(name: "gssapi_destroy", scope: !2, file: !2, line: 262, type: !344, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !800)
!800 = !{!801}
!801 = !DILocalVariable(name: "key", arg: 1, scope: !799, file: !2, line: 262, type: !92)
!802 = !DILocation(line: 262, column: 27, scope: !799)
!803 = !DILocation(line: 263, column: 2, scope: !799)
!804 = !DILocation(line: 264, column: 23, scope: !799)
!805 = !DILocation(line: 264, column: 28, scope: !799)
!806 = !DILocation(line: 264, column: 35, scope: !799)
!807 = !DILocation(line: 264, column: 40, scope: !799)
!808 = !DILocation(line: 264, column: 2, scope: !799)
!809 = !DILocation(line: 265, column: 2, scope: !799)
!810 = !DILocation(line: 265, column: 7, scope: !799)
!811 = !DILocation(line: 265, column: 22, scope: !799)
!812 = !DILocation(line: 266, column: 1, scope: !799)
!813 = distinct !DISubprogram(name: "gssapi_dump", scope: !2, file: !2, line: 307, type: !375, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !814)
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826}
!815 = !DILocalVariable(name: "key", arg: 1, scope: !813, file: !2, line: 307, type: !92)
!816 = !DILocalVariable(name: "mctx", arg: 2, scope: !813, file: !2, line: 307, type: !138)
!817 = !DILocalVariable(name: "buffer", arg: 3, scope: !813, file: !2, line: 307, type: !377)
!818 = !DILocalVariable(name: "length", arg: 4, scope: !813, file: !2, line: 307, type: !378)
!819 = !DILocalVariable(name: "major", scope: !813, file: !2, line: 308, type: !34)
!820 = !DILocalVariable(name: "minor", scope: !813, file: !2, line: 308, type: !34)
!821 = !DILocalVariable(name: "gssbuffer", scope: !813, file: !2, line: 309, type: !561)
!822 = !DILocalVariable(name: "len", scope: !813, file: !2, line: 310, type: !154)
!823 = !DILocalVariable(name: "buf", scope: !813, file: !2, line: 311, type: !175)
!824 = !DILocalVariable(name: "b", scope: !813, file: !2, line: 312, type: !122)
!825 = !DILocalVariable(name: "r", scope: !813, file: !2, line: 313, type: !305)
!826 = !DILocalVariable(name: "result", scope: !813, file: !2, line: 314, type: !90)
!827 = !DILocation(line: 307, column: 24, scope: !813)
!828 = !DILocation(line: 307, column: 40, scope: !813)
!829 = !DILocation(line: 307, column: 53, scope: !813)
!830 = !DILocation(line: 307, column: 66, scope: !813)
!831 = !DILocation(line: 308, column: 2, scope: !813)
!832 = !DILocation(line: 308, column: 12, scope: !813)
!833 = !DILocation(line: 308, column: 19, scope: !813)
!834 = !DILocation(line: 309, column: 2, scope: !813)
!835 = !DILocation(line: 309, column: 18, scope: !813)
!836 = !DILocation(line: 310, column: 2, scope: !813)
!837 = !DILocation(line: 310, column: 9, scope: !813)
!838 = !DILocation(line: 311, column: 2, scope: !813)
!839 = !DILocation(line: 311, column: 8, scope: !813)
!840 = !DILocation(line: 312, column: 2, scope: !813)
!841 = !DILocation(line: 312, column: 15, scope: !813)
!842 = !DILocation(line: 313, column: 2, scope: !813)
!843 = !DILocation(line: 313, column: 15, scope: !813)
!844 = !DILocation(line: 314, column: 2, scope: !813)
!845 = !DILocation(line: 314, column: 15, scope: !813)
!846 = !DILocation(line: 316, column: 42, scope: !813)
!847 = !DILocation(line: 316, column: 47, scope: !813)
!848 = !DILocation(line: 316, column: 10, scope: !813)
!849 = !DILocation(line: 316, column: 8, scope: !813)
!850 = !DILocation(line: 318, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !813, file: !2, line: 318, column: 6)
!852 = !DILocation(line: 318, column: 12, scope: !851)
!853 = !DILocation(line: 318, column: 6, scope: !813)
!854 = !DILocation(line: 319, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !2, line: 318, column: 31)
!856 = !DILocation(line: 320, column: 4, scope: !855)
!857 = !DILocation(line: 320, column: 11, scope: !855)
!858 = !DILocation(line: 319, column: 3, scope: !855)
!859 = !DILocation(line: 321, column: 3, scope: !855)
!860 = !DILocation(line: 323, column: 16, scope: !861)
!861 = distinct !DILexicalBlock(scope: !813, file: !2, line: 323, column: 6)
!862 = !DILocation(line: 323, column: 23, scope: !861)
!863 = !DILocation(line: 323, column: 6, scope: !813)
!864 = !DILocation(line: 324, column: 3, scope: !861)
!865 = !DILocation(line: 325, column: 20, scope: !813)
!866 = !DILocation(line: 325, column: 27, scope: !813)
!867 = !DILocation(line: 325, column: 31, scope: !813)
!868 = !DILocation(line: 325, column: 35, scope: !813)
!869 = !DILocation(line: 325, column: 6, scope: !813)
!870 = !DILocation(line: 326, column: 8, scope: !813)
!871 = !DILocation(line: 326, column: 6, scope: !813)
!872 = !DILocation(line: 327, column: 6, scope: !873)
!873 = distinct !DILexicalBlock(scope: !813, file: !2, line: 327, column: 6)
!874 = !DILocation(line: 327, column: 10, scope: !873)
!875 = !DILocation(line: 327, column: 6, scope: !813)
!876 = !DILocation(line: 328, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !2, line: 327, column: 19)
!878 = !DILocation(line: 329, column: 3, scope: !877)
!879 = !DILocation(line: 331, column: 2, scope: !813)
!880 = !DILocation(line: 331, column: 2, scope: !881)
!881 = distinct !DILexicalBlock(scope: !813, file: !2, line: 331, column: 2)
!882 = !DILocation(line: 331, column: 2, scope: !883)
!883 = distinct !DILexicalBlock(scope: !881, file: !2, line: 331, column: 2)
!884 = !DILocation(line: 332, column: 2, scope: !813)
!885 = !DILocation(line: 332, column: 2, scope: !886)
!886 = distinct !DILexicalBlock(scope: !813, file: !2, line: 332, column: 2)
!887 = !DILocation(line: 333, column: 11, scope: !813)
!888 = !DILocation(line: 333, column: 9, scope: !813)
!889 = !DILocation(line: 334, column: 2, scope: !813)
!890 = !DILocation(line: 335, column: 2, scope: !813)
!891 = !DILocation(line: 336, column: 12, scope: !813)
!892 = !DILocation(line: 336, column: 3, scope: !813)
!893 = !DILocation(line: 336, column: 10, scope: !813)
!894 = !DILocation(line: 337, column: 17, scope: !813)
!895 = !DILocation(line: 337, column: 12, scope: !813)
!896 = !DILocation(line: 337, column: 3, scope: !813)
!897 = !DILocation(line: 337, column: 10, scope: !813)
!898 = !DILocation(line: 338, column: 2, scope: !813)
!899 = !DILocation(line: 339, column: 1, scope: !813)
!900 = distinct !DISubprogram(name: "gssapi_restore", scope: !2, file: !2, line: 269, type: !381, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !901)
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910}
!902 = !DILocalVariable(name: "key", arg: 1, scope: !900, file: !2, line: 269, type: !92)
!903 = !DILocalVariable(name: "keystr", arg: 2, scope: !900, file: !2, line: 269, type: !156)
!904 = !DILocalVariable(name: "major", scope: !900, file: !2, line: 270, type: !34)
!905 = !DILocalVariable(name: "minor", scope: !900, file: !2, line: 270, type: !34)
!906 = !DILocalVariable(name: "len", scope: !900, file: !2, line: 271, type: !19)
!907 = !DILocalVariable(name: "b", scope: !900, file: !2, line: 272, type: !121)
!908 = !DILocalVariable(name: "r", scope: !900, file: !2, line: 273, type: !305)
!909 = !DILocalVariable(name: "gssbuffer", scope: !900, file: !2, line: 274, type: !561)
!910 = !DILocalVariable(name: "result", scope: !900, file: !2, line: 275, type: !90)
!911 = !DILocation(line: 269, column: 27, scope: !900)
!912 = !DILocation(line: 269, column: 44, scope: !900)
!913 = !DILocation(line: 270, column: 2, scope: !900)
!914 = !DILocation(line: 270, column: 12, scope: !900)
!915 = !DILocation(line: 270, column: 19, scope: !900)
!916 = !DILocation(line: 271, column: 2, scope: !900)
!917 = !DILocation(line: 271, column: 15, scope: !900)
!918 = !DILocation(line: 272, column: 2, scope: !900)
!919 = !DILocation(line: 272, column: 16, scope: !900)
!920 = !DILocation(line: 273, column: 2, scope: !900)
!921 = !DILocation(line: 273, column: 15, scope: !900)
!922 = !DILocation(line: 274, column: 2, scope: !900)
!923 = !DILocation(line: 274, column: 18, scope: !900)
!924 = !DILocation(line: 275, column: 2, scope: !900)
!925 = !DILocation(line: 275, column: 15, scope: !900)
!926 = !DILocation(line: 277, column: 15, scope: !900)
!927 = !DILocation(line: 277, column: 8, scope: !900)
!928 = !DILocation(line: 277, column: 6, scope: !900)
!929 = !DILocation(line: 278, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !900, file: !2, line: 278, column: 6)
!931 = !DILocation(line: 278, column: 11, scope: !930)
!932 = !DILocation(line: 278, column: 16, scope: !930)
!933 = !DILocation(line: 278, column: 6, scope: !900)
!934 = !DILocation(line: 279, column: 3, scope: !930)
!935 = !DILocation(line: 281, column: 9, scope: !900)
!936 = !DILocation(line: 281, column: 13, scope: !900)
!937 = !DILocation(line: 281, column: 18, scope: !900)
!938 = !DILocation(line: 281, column: 6, scope: !900)
!939 = !DILocation(line: 283, column: 31, scope: !900)
!940 = !DILocation(line: 283, column: 36, scope: !900)
!941 = !DILocation(line: 283, column: 46, scope: !900)
!942 = !DILocation(line: 283, column: 11, scope: !900)
!943 = !DILocation(line: 283, column: 9, scope: !900)
!944 = !DILocation(line: 284, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !900, file: !2, line: 284, column: 6)
!946 = !DILocation(line: 284, column: 13, scope: !945)
!947 = !DILocation(line: 284, column: 6, scope: !900)
!948 = !DILocation(line: 285, column: 11, scope: !945)
!949 = !DILocation(line: 285, column: 3, scope: !945)
!950 = !DILocation(line: 287, column: 35, scope: !900)
!951 = !DILocation(line: 287, column: 43, scope: !900)
!952 = !DILocation(line: 287, column: 11, scope: !900)
!953 = !DILocation(line: 287, column: 9, scope: !900)
!954 = !DILocation(line: 288, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !900, file: !2, line: 288, column: 6)
!956 = !DILocation(line: 288, column: 13, scope: !955)
!957 = !DILocation(line: 288, column: 6, scope: !900)
!958 = !DILocation(line: 289, column: 3, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !2, line: 288, column: 31)
!960 = !DILocation(line: 290, column: 11, scope: !959)
!961 = !DILocation(line: 290, column: 3, scope: !959)
!962 = !DILocation(line: 293, column: 2, scope: !900)
!963 = !DILocation(line: 293, column: 2, scope: !964)
!964 = distinct !DILexicalBlock(scope: !900, file: !2, line: 293, column: 2)
!965 = !DILocation(line: 294, column: 2, scope: !900)
!966 = !DILocation(line: 294, column: 2, scope: !967)
!967 = distinct !DILexicalBlock(scope: !900, file: !2, line: 294, column: 2)
!968 = !DILocation(line: 296, column: 13, scope: !900)
!969 = !DILocation(line: 296, column: 18, scope: !900)
!970 = !DILocation(line: 295, column: 10, scope: !900)
!971 = !DILocation(line: 295, column: 8, scope: !900)
!972 = !DILocation(line: 297, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !900, file: !2, line: 297, column: 6)
!974 = !DILocation(line: 297, column: 12, scope: !973)
!975 = !DILocation(line: 297, column: 6, scope: !900)
!976 = !DILocation(line: 298, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !973, file: !2, line: 297, column: 31)
!978 = !DILocation(line: 299, column: 3, scope: !977)
!979 = !DILocation(line: 302, column: 2, scope: !900)
!980 = !DILocation(line: 303, column: 2, scope: !900)
!981 = !DILocation(line: 304, column: 1, scope: !900)
!982 = !DISubprogram(name: "isc__mem_get", scope: !141, file: !141, line: 630, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubprogram(name: "isc_buffer_allocate", scope: !124, file: !124, line: 196, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!90, !138, !986, !19}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!987 = !DISubprogram(name: "isc__mem_put", scope: !141, file: !141, line: 634, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubprogram(name: "isc_buffer_free", scope: !124, file: !124, line: 237, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !986}
!991 = !DISubprogram(name: "isc_buffer_copyregion", scope: !124, file: !124, line: 698, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DISubroutineType(types: !993)
!993 = !{!90, !121, !303}
!994 = !DISubprogram(name: "gss_get_mic", scope: !35, file: !35, line: 490, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!34, !997, !217, !998, !999, !999}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "gss_qop_t", file: !35, line: 134, baseType: !34)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "gss_buffer_t", file: !35, line: 120, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!1001 = !DISubprogram(name: "gss_log", scope: !1002, file: !1002, line: 164, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DIFile(filename: "include/dst/gssapi.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "00b104aa1731fad3e9c8551ed8241955")
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !41, !156, null}
!1005 = !DISubprogram(name: "gss_error_tostring", scope: !1002, file: !1002, line: 175, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!175, !37, !37, !175, !154}
!1008 = !DISubprogram(name: "gss_release_buffer", scope: !35, file: !35, line: 575, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!34, !997, !999}
!1011 = !DISubprogram(name: "isc_buffer_reserve", scope: !124, file: !124, line: 216, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!90, !986, !19}
!1014 = !DISubprogram(name: "gss_verify_mic", scope: !35, file: !35, line: 500, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!34, !997, !217, !999, !999, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1018 = !DISubprogram(name: "dst_gssapi_deletectx", scope: !1002, file: !1002, line: 149, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!90, !138, !1021}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!1022 = !DISubprogram(name: "gss_export_sec_context", scope: !35, file: !35, line: 660, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!34, !997, !1021, !999}
!1025 = !DISubprogram(name: "fprintf", scope: !1026, file: !1026, line: 350, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!41, !1029, !1080, null}
!1029 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1032, line: 7, baseType: !1033)
!1032 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1034, line: 49, size: 1728, elements: !1035)
!1034 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1051, !1053, !1054, !1055, !1058, !1059, !1061, !1063, !1066, !1068, !1071, !1074, !1075, !1076, !1077, !1078}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1033, file: !1034, line: 51, baseType: !41, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1033, file: !1034, line: 54, baseType: !175, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1033, file: !1034, line: 55, baseType: !175, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1033, file: !1034, line: 56, baseType: !175, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1033, file: !1034, line: 57, baseType: !175, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1033, file: !1034, line: 58, baseType: !175, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1033, file: !1034, line: 59, baseType: !175, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1033, file: !1034, line: 60, baseType: !175, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1033, file: !1034, line: 61, baseType: !175, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1033, file: !1034, line: 64, baseType: !175, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1033, file: !1034, line: 65, baseType: !175, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1033, file: !1034, line: 66, baseType: !175, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1033, file: !1034, line: 68, baseType: !1049, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1034, line: 36, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1033, file: !1034, line: 70, baseType: !1052, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1033, file: !1034, line: 72, baseType: !41, size: 32, offset: 896)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1033, file: !1034, line: 73, baseType: !41, size: 32, offset: 928)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1033, file: !1034, line: 74, baseType: !1056, size: 64, offset: 960)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !40, line: 152, baseType: !1057)
!1057 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1033, file: !1034, line: 77, baseType: !202, size: 16, offset: 1024)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1033, file: !1034, line: 78, baseType: !1060, size: 8, offset: 1040)
!1060 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1033, file: !1034, line: 79, baseType: !1062, size: 8, offset: 1048)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !76)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1033, file: !1034, line: 81, baseType: !1064, size: 64, offset: 1088)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1034, line: 43, baseType: null)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1033, file: !1034, line: 89, baseType: !1067, size: 64, offset: 1152)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !40, line: 153, baseType: !1057)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1033, file: !1034, line: 91, baseType: !1069, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1034, line: 37, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1033, file: !1034, line: 92, baseType: !1072, size: 64, offset: 1280)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1034, line: 38, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1033, file: !1034, line: 93, baseType: !1052, size: 64, offset: 1344)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1033, file: !1034, line: 94, baseType: !31, size: 64, offset: 1408)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1033, file: !1034, line: 95, baseType: !154, size: 64, offset: 1472)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1033, file: !1034, line: 96, baseType: !41, size: 32, offset: 1536)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1033, file: !1034, line: 98, baseType: !1079, size: 160, offset: 1568)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !11)
!1080 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !156)
!1081 = !DISubprogram(name: "isc_base64_totext", scope: !1082, file: !1082, line: 28, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DIFile(filename: "isc/include/isc/base64.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "4ceb48f3331eddbf77a8163e7ba32beb")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!90, !1085, !41, !156, !121}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1086 = !DISubprogram(name: "isc_error_runtimecheck", scope: !1087, file: !1087, line: 49, type: !1088, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1087 = !DIFile(filename: "isc/include/isc/error.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "e90b8298ea6c947397fab383c61a094d")
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !156, !41, !156}
!1090 = !DISubprogram(name: "strlen", scope: !1091, file: !1091, line: 407, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1091 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!106, !156}
!1094 = !DISubprogram(name: "isc_base64_decodestring", scope: !1082, file: !1082, line: 52, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!90, !156, !121}
!1097 = !DISubprogram(name: "gss_import_sec_context", scope: !35, file: !35, line: 667, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!34, !997, !999, !1021}

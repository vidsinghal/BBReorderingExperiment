; ModuleID = 'samples/269.bc'
source_filename = "src/core/ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MA = type { ptr, i8, i8, i64, i64, i64 }
%struct.MAInfo = type { i64, ptr, i32 }
%struct.CheckSpaceLeakInfo = type { i8 }

@ma = internal global ptr null, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !98
@.str.1 = private unnamed_addr constant [4 x i8] c"!ma\00", align 1, !dbg !103
@__func__.gt_ma_init = private unnamed_addr constant [11 x i8] c"gt_ma_init\00", align 1, !dbg !108
@.str.2 = private unnamed_addr constant [14 x i8] c"src/core/ma.c\00", align 1, !dbg !113
@.str.3 = private unnamed_addr constant [17 x i8] c"!ma->bookkeeping\00", align 1, !dbg !118
@bookkeeping_lock = internal global ptr null, align 8, !dbg !225
@.str.4 = private unnamed_addr constant [3 x i8] c"ma\00", align 1, !dbg !123
@__func__.gt_malloc_mem = private unnamed_addr constant [14 x i8] c"gt_malloc_mem\00", align 1, !dbg !128
@__func__.gt_calloc_mem = private unnamed_addr constant [14 x i8] c"gt_calloc_mem\00", align 1, !dbg !131
@__func__.gt_realloc_mem = private unnamed_addr constant [15 x i8] c"gt_realloc_mem\00", align 1, !dbg !133
@.str.5 = private unnamed_addr constant [7 x i8] c"mainfo\00", align 1, !dbg !138
@__func__.gt_free_mem = private unnamed_addr constant [12 x i8] c"gt_free_mem\00", align 1, !dbg !143
@.str.6 = private unnamed_addr constant [54 x i8] c"bug: double free() attempted on line %d in file \22%s\22\0A\00", align 1, !dbg !148
@__func__.gt_ma_enable_global_spacepeak = private unnamed_addr constant [30 x i8] c"gt_ma_enable_global_spacepeak\00", align 1, !dbg !153
@__func__.gt_ma_disable_global_spacepeak = private unnamed_addr constant [31 x i8] c"gt_ma_disable_global_spacepeak\00", align 1, !dbg !158
@__func__.gt_ma_get_space_peak = private unnamed_addr constant [21 x i8] c"gt_ma_get_space_peak\00", align 1, !dbg !163
@__func__.gt_ma_get_space_current = private unnamed_addr constant [24 x i8] c"gt_ma_get_space_current\00", align 1, !dbg !168
@__func__.gt_ma_show_space_peak = private unnamed_addr constant [22 x i8] c"gt_ma_show_space_peak\00", align 1, !dbg !173
@.str.7 = private unnamed_addr constant [50 x i8] c"# space peak in megabytes: %.2f (in %llu events)\0A\00", align 1, !dbg !178
@__func__.gt_ma_check_space_leak = private unnamed_addr constant [23 x i8] c"gt_ma_check_space_leak\00", align 1, !dbg !183
@.str.8 = private unnamed_addr constant [9 x i8] c"!had_err\00", align 1, !dbg !188
@__func__.gt_ma_bookkeeping_enabled = private unnamed_addr constant [26 x i8] c"gt_ma_bookkeeping_enabled\00", align 1, !dbg !193
@__func__.gt_ma_show_allocations = private unnamed_addr constant [23 x i8] c"gt_ma_show_allocations\00", align 1, !dbg !198
@__func__.gt_ma_clean = private unnamed_addr constant [12 x i8] c"gt_ma_clean\00", align 1, !dbg !200
@.str.9 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !202
@__func__.gt_ma_unit_test = private unnamed_addr constant [16 x i8] c"gt_ma_unit_test\00", align 1, !dbg !205
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot calloc(%zu, %zu) memory\0A\00", align 1, !dbg !210
@.str.11 = private unnamed_addr constant [35 x i8] c"attempted on line %d in file \22%s\22\0A\00", align 1, !dbg !215
@.str.12 = private unnamed_addr constant [37 x i8] c"%lu bytes were allocated altogether\0A\00", align 1, !dbg !220
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot malloc(%zu) memory\0A\00", align 1, !dbg !231
@__func__.add_size = private unnamed_addr constant [9 x i8] c"add_size\00", align 1, !dbg !236
@__func__.subtract_size = private unnamed_addr constant [14 x i8] c"subtract_size\00", align 1, !dbg !239
@.str.14 = private unnamed_addr constant [25 x i8] c"ma->current_size >= size\00", align 1, !dbg !241
@.str.15 = private unnamed_addr constant [28 x i8] c"cannot realloc(%zu) memory\0A\00", align 1, !dbg !246
@__func__.check_space_leak = private unnamed_addr constant [17 x i8] c"check_space_leak\00", align 1, !dbg !251
@.str.16 = private unnamed_addr constant [21 x i8] c"key && value && data\00", align 1, !dbg !254
@.str.17 = private unnamed_addr constant [66 x i8] c"bug: %zu bytes memory leaked (allocated on line %d in file \22%s\22)\0A\00", align 1, !dbg !257
@__func__.print_allocation = private unnamed_addr constant [17 x i8] c"print_allocation\00", align 1, !dbg !262
@.str.18 = private unnamed_addr constant [22 x i8] c"outfp && key && value\00", align 1, !dbg !264
@.str.19 = private unnamed_addr constant [53 x i8] c"%zu bytes memory allocated on line %d in file \22%s\22)\0A\00", align 1, !dbg !267

; Function Attrs: nounwind uwtable
define void @gt_ma_init(i1 noundef zeroext %bookkeeping) #0 !dbg !295 {
entry:
  %bookkeeping.addr = alloca i8, align 1
  %frombool = zext i1 %bookkeeping to i8
  store i8 %frombool, ptr %bookkeeping.addr, align 1, !tbaa !300
  tail call void @llvm.dbg.declare(metadata ptr %bookkeeping.addr, metadata !299, metadata !DIExpression()), !dbg !304
  br label %do.body, !dbg !305

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !306, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !306
  br i1 %tobool, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !312, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_ma_init, ptr noundef @.str.2, i32 noundef 106), !dbg !312
  call void @abort() #9, !dbg !312
  unreachable, !dbg !312

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !311

do.end:                                           ; preds = %if.end
  %call1 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40, i64 noundef 0, ptr noundef @.str.2, i32 noundef 107), !dbg !314
  store ptr %call1, ptr @ma, align 8, !dbg !315, !tbaa !309
  br label %do.body2, !dbg !316

do.body2:                                         ; preds = %do.end
  %2 = load ptr, ptr @ma, align 8, !dbg !317, !tbaa !309
  %bookkeeping3 = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 1, !dbg !317
  %3 = load i8, ptr %bookkeeping3, align 8, !dbg !317, !tbaa !320, !range !324, !noundef !325
  %tobool4 = trunc i8 %3 to i1, !dbg !317
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !326

if.then5:                                         ; preds = %do.body2
  %4 = load ptr, ptr @stderr, align 8, !dbg !327, !tbaa !309
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_ma_init, ptr noundef @.str.2, i32 noundef 108), !dbg !327
  call void @abort() #9, !dbg !327
  unreachable, !dbg !327

if.end7:                                          ; preds = %do.body2
  br label %do.end8, !dbg !326

do.end8:                                          ; preds = %if.end7
  %call9 = call ptr @gt_hashmap_new_no_ma(i32 noundef 0, ptr noundef null, ptr noundef @ma_info_free), !dbg !329
  %5 = load ptr, ptr @ma, align 8, !dbg !330, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %5, i32 0, i32 0, !dbg !331
  store ptr %call9, ptr %allocated_pointer, align 8, !dbg !332, !tbaa !333
  %6 = load i8, ptr %bookkeeping.addr, align 1, !dbg !334, !tbaa !300, !range !324, !noundef !325
  %tobool10 = trunc i8 %6 to i1, !dbg !334
  %7 = load ptr, ptr @ma, align 8, !dbg !335, !tbaa !309
  %bookkeeping11 = getelementptr inbounds %struct.MA, ptr %7, i32 0, i32 1, !dbg !336
  %frombool12 = zext i1 %tobool10 to i8, !dbg !337
  store i8 %frombool12, ptr %bookkeeping11, align 8, !dbg !337, !tbaa !320
  %call13 = call ptr @gt_mutex_new(), !dbg !338
  store ptr %call13, ptr @bookkeeping_lock, align 8, !dbg !339, !tbaa !309
  %8 = load ptr, ptr @ma, align 8, !dbg !340, !tbaa !309
  %global_space_peak = getelementptr inbounds %struct.MA, ptr %8, i32 0, i32 2, !dbg !341
  store i8 0, ptr %global_space_peak, align 1, !dbg !342, !tbaa !343
  ret void, !dbg !344
}

declare !dbg !345 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !351 void @abort() #2

; Function Attrs: nounwind uwtable
define internal ptr @xcalloc(i64 noundef %nmemb, i64 noundef %size, i64 noundef %current_size, ptr noundef %src_file, i32 noundef %src_line) #0 !dbg !355 {
entry:
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %current_size.addr = alloca i64, align 8
  %src_file.addr = alloca ptr, align 8
  %src_line.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i64 %nmemb, ptr %nmemb.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %nmemb.addr, metadata !359, metadata !DIExpression()), !dbg !366
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !360, metadata !DIExpression()), !dbg !367
  store i64 %current_size, ptr %current_size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %current_size.addr, metadata !361, metadata !DIExpression()), !dbg !368
  store ptr %src_file, ptr %src_file.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %src_file.addr, metadata !362, metadata !DIExpression()), !dbg !369
  store i32 %src_line, ptr %src_line.addr, align 4, !tbaa !370
  tail call void @llvm.dbg.declare(metadata ptr %src_line.addr, metadata !363, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !373
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !364, metadata !DIExpression()), !dbg !374
  %0 = load i64, ptr %nmemb.addr, align 8, !dbg !375, !tbaa !365
  %1 = load i64, ptr %size.addr, align 8, !dbg !377, !tbaa !365
  %call = call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #11, !dbg !378
  store ptr %call, ptr %p, align 8, !dbg !379, !tbaa !309
  %cmp = icmp eq ptr %call, null, !dbg !380
  br i1 %cmp, label %if.then, label %if.end5, !dbg !381

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !382, !tbaa !309
  %3 = load i64, ptr %nmemb.addr, align 8, !dbg !384, !tbaa !365
  %4 = load i64, ptr %size.addr, align 8, !dbg !385, !tbaa !365
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.10, i64 noundef %3, i64 noundef %4), !dbg !386
  %5 = load ptr, ptr @stderr, align 8, !dbg !387, !tbaa !309
  %6 = load i32, ptr %src_line.addr, align 4, !dbg !388, !tbaa !370
  %7 = load ptr, ptr %src_file.addr, align 8, !dbg !389, !tbaa !309
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.11, i32 noundef %6, ptr noundef %7), !dbg !390
  %8 = load i64, ptr %current_size.addr, align 8, !dbg !391, !tbaa !365
  %tobool = icmp ne i64 %8, 0, !dbg !391
  br i1 %tobool, label %if.then3, label %if.end, !dbg !393

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr @stderr, align 8, !dbg !394, !tbaa !309
  %10 = load i64, ptr %current_size.addr, align 8, !dbg !395, !tbaa !365
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.12, i64 noundef %10), !dbg !396
  br label %if.end, !dbg !396

if.end:                                           ; preds = %if.then3, %if.then
  call void @exit(i32 noundef 1) #9, !dbg !397
  unreachable, !dbg !397

if.end5:                                          ; preds = %entry
  %11 = load ptr, ptr %p, align 8, !dbg !398, !tbaa !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !399
  ret ptr %11, !dbg !400
}

declare !dbg !401 ptr @gt_hashmap_new_no_ma(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @ma_info_free(ptr noundef %mainfo) #0 !dbg !405 {
entry:
  %mainfo.addr = alloca ptr, align 8
  store ptr %mainfo, ptr %mainfo.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %mainfo.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load ptr, ptr %mainfo.addr, align 8, !dbg !411, !tbaa !309
  call void @free(ptr noundef %0) #10, !dbg !412
  ret void, !dbg !413
}

declare !dbg !414 ptr @gt_mutex_new() #1

; Function Attrs: nounwind uwtable
define ptr @gt_malloc_mem(i64 noundef %size, ptr noundef %src_file, i32 noundef %src_line) #0 !dbg !417 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %src_file.addr = alloca ptr, align 8
  %src_line.addr = alloca i32, align 4
  %mainfo = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !421, metadata !DIExpression()), !dbg !426
  store ptr %src_file, ptr %src_file.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %src_file.addr, metadata !422, metadata !DIExpression()), !dbg !427
  store i32 %src_line, ptr %src_line.addr, align 4, !tbaa !370
  tail call void @llvm.dbg.declare(metadata ptr %src_line.addr, metadata !423, metadata !DIExpression()), !dbg !428
  call void @llvm.lifetime.start.p0(i64 8, ptr %mainfo) #10, !dbg !429
  tail call void @llvm.dbg.declare(metadata ptr %mainfo, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #10, !dbg !431
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !425, metadata !DIExpression()), !dbg !432
  br label %do.body, !dbg !433

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !434, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !434
  br i1 %tobool, label %if.end, label %if.then, !dbg !437

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !438, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_malloc_mem, ptr noundef @.str.2, i32 noundef 140), !dbg !438
  call void @abort() #9, !dbg !438
  unreachable, !dbg !438

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !437

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !437

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr @ma, align 8, !dbg !440, !tbaa !309
  %bookkeeping = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 1, !dbg !442
  %3 = load i8, ptr %bookkeeping, align 8, !dbg !442, !tbaa !320, !range !324, !noundef !325
  %tobool1 = trunc i8 %3 to i1, !dbg !442
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !443

if.then2:                                         ; preds = %do.end
  %4 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !444, !tbaa !309
  call void @gt_mutex_lock_func(ptr noundef %4), !dbg !444
  %5 = load ptr, ptr @ma, align 8, !dbg !446, !tbaa !309
  %mallocevents = getelementptr inbounds %struct.MA, ptr %5, i32 0, i32 3, !dbg !447
  %6 = load i64, ptr %mallocevents, align 8, !dbg !448, !tbaa !449
  %inc = add i64 %6, 1, !dbg !448
  store i64 %inc, ptr %mallocevents, align 8, !dbg !448, !tbaa !449
  %7 = load ptr, ptr @ma, align 8, !dbg !450, !tbaa !309
  %current_size = getelementptr inbounds %struct.MA, ptr %7, i32 0, i32 4, !dbg !451
  %8 = load i64, ptr %current_size, align 8, !dbg !451, !tbaa !452
  %9 = load ptr, ptr %src_file.addr, align 8, !dbg !453, !tbaa !309
  %10 = load i32, ptr %src_line.addr, align 4, !dbg !454, !tbaa !370
  %call3 = call ptr @xmalloc(i64 noundef 24, i64 noundef %8, ptr noundef %9, i32 noundef %10), !dbg !455
  store ptr %call3, ptr %mainfo, align 8, !dbg !456, !tbaa !309
  %11 = load i64, ptr %size.addr, align 8, !dbg !457, !tbaa !365
  %12 = load ptr, ptr %mainfo, align 8, !dbg !458, !tbaa !309
  %size4 = getelementptr inbounds %struct.MAInfo, ptr %12, i32 0, i32 0, !dbg !459
  store i64 %11, ptr %size4, align 8, !dbg !460, !tbaa !461
  %13 = load ptr, ptr %src_file.addr, align 8, !dbg !463, !tbaa !309
  %14 = load ptr, ptr %mainfo, align 8, !dbg !464, !tbaa !309
  %src_file5 = getelementptr inbounds %struct.MAInfo, ptr %14, i32 0, i32 1, !dbg !465
  store ptr %13, ptr %src_file5, align 8, !dbg !466, !tbaa !467
  %15 = load i32, ptr %src_line.addr, align 4, !dbg !468, !tbaa !370
  %16 = load ptr, ptr %mainfo, align 8, !dbg !469, !tbaa !309
  %src_line6 = getelementptr inbounds %struct.MAInfo, ptr %16, i32 0, i32 2, !dbg !470
  store i32 %15, ptr %src_line6, align 8, !dbg !471, !tbaa !472
  %17 = load i64, ptr %size.addr, align 8, !dbg !473, !tbaa !365
  %18 = load ptr, ptr @ma, align 8, !dbg !474, !tbaa !309
  %current_size7 = getelementptr inbounds %struct.MA, ptr %18, i32 0, i32 4, !dbg !475
  %19 = load i64, ptr %current_size7, align 8, !dbg !475, !tbaa !452
  %20 = load ptr, ptr %src_file.addr, align 8, !dbg !476, !tbaa !309
  %21 = load i32, ptr %src_line.addr, align 4, !dbg !477, !tbaa !370
  %call8 = call ptr @xmalloc(i64 noundef %17, i64 noundef %19, ptr noundef %20, i32 noundef %21), !dbg !478
  store ptr %call8, ptr %mem, align 8, !dbg !479, !tbaa !309
  %22 = load ptr, ptr @ma, align 8, !dbg !480, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %22, i32 0, i32 0, !dbg !481
  %23 = load ptr, ptr %allocated_pointer, align 8, !dbg !481, !tbaa !333
  %24 = load ptr, ptr %mem, align 8, !dbg !482, !tbaa !309
  %25 = load ptr, ptr %mainfo, align 8, !dbg !483, !tbaa !309
  call void @gt_hashmap_add(ptr noundef %23, ptr noundef %24, ptr noundef %25), !dbg !484
  %26 = load ptr, ptr @ma, align 8, !dbg !485, !tbaa !309
  %27 = load i64, ptr %size.addr, align 8, !dbg !486, !tbaa !365
  call void @add_size(ptr noundef %26, i64 noundef %27), !dbg !487
  %28 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !488, !tbaa !309
  call void @gt_mutex_unlock_func(ptr noundef %28), !dbg !488
  %29 = load ptr, ptr %mem, align 8, !dbg !489, !tbaa !309
  store ptr %29, ptr %retval, align 8, !dbg !490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !490

if.end9:                                          ; preds = %do.end
  %30 = load i64, ptr %size.addr, align 8, !dbg !491, !tbaa !365
  %31 = load ptr, ptr @ma, align 8, !dbg !492, !tbaa !309
  %current_size10 = getelementptr inbounds %struct.MA, ptr %31, i32 0, i32 4, !dbg !493
  %32 = load i64, ptr %current_size10, align 8, !dbg !493, !tbaa !452
  %33 = load ptr, ptr %src_file.addr, align 8, !dbg !494, !tbaa !309
  %34 = load i32, ptr %src_line.addr, align 4, !dbg !495, !tbaa !370
  %call11 = call ptr @xmalloc(i64 noundef %30, i64 noundef %32, ptr noundef %33, i32 noundef %34), !dbg !496
  store ptr %call11, ptr %retval, align 8, !dbg !497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !497

cleanup:                                          ; preds = %if.end9, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #10, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr %mainfo) #10, !dbg !498
  %35 = load ptr, ptr %retval, align 8, !dbg !498
  ret ptr %35, !dbg !498
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !499 void @gt_mutex_lock_func(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @xmalloc(i64 noundef %size, i64 noundef %current_size, ptr noundef %src_file, i32 noundef %src_line) #0 !dbg !502 {
entry:
  %size.addr = alloca i64, align 8
  %current_size.addr = alloca i64, align 8
  %src_file.addr = alloca ptr, align 8
  %src_line.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !506, metadata !DIExpression()), !dbg !511
  store i64 %current_size, ptr %current_size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %current_size.addr, metadata !507, metadata !DIExpression()), !dbg !512
  store ptr %src_file, ptr %src_file.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %src_file.addr, metadata !508, metadata !DIExpression()), !dbg !513
  store i32 %src_line, ptr %src_line.addr, align 4, !tbaa !370
  tail call void @llvm.dbg.declare(metadata ptr %src_line.addr, metadata !509, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !515
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !510, metadata !DIExpression()), !dbg !516
  %0 = load i64, ptr %size.addr, align 8, !dbg !517, !tbaa !365
  %call = call noalias ptr @malloc(i64 noundef %0) #12, !dbg !519
  store ptr %call, ptr %p, align 8, !dbg !520, !tbaa !309
  %cmp = icmp eq ptr %call, null, !dbg !521
  br i1 %cmp, label %if.then, label %if.end5, !dbg !522

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !523, !tbaa !309
  %2 = load i64, ptr %size.addr, align 8, !dbg !525, !tbaa !365
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.13, i64 noundef %2), !dbg !526
  %3 = load ptr, ptr @stderr, align 8, !dbg !527, !tbaa !309
  %4 = load i32, ptr %src_line.addr, align 4, !dbg !528, !tbaa !370
  %5 = load ptr, ptr %src_file.addr, align 8, !dbg !529, !tbaa !309
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.11, i32 noundef %4, ptr noundef %5), !dbg !530
  %6 = load i64, ptr %current_size.addr, align 8, !dbg !531, !tbaa !365
  %tobool = icmp ne i64 %6, 0, !dbg !531
  br i1 %tobool, label %if.then3, label %if.end, !dbg !533

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr @stderr, align 8, !dbg !534, !tbaa !309
  %8 = load i64, ptr %current_size.addr, align 8, !dbg !535, !tbaa !365
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.12, i64 noundef %8), !dbg !536
  br label %if.end, !dbg !536

if.end:                                           ; preds = %if.then3, %if.then
  call void @exit(i32 noundef 1) #9, !dbg !537
  unreachable, !dbg !537

if.end5:                                          ; preds = %entry
  %9 = load ptr, ptr %p, align 8, !dbg !538, !tbaa !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !539
  ret ptr %9, !dbg !540
}

declare !dbg !541 void @gt_hashmap_add(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @add_size(ptr noundef %ma, i64 noundef %size) #0 !dbg !544 {
entry:
  %ma.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %ma, ptr %ma.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %ma.addr, metadata !548, metadata !DIExpression()), !dbg !550
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !549, metadata !DIExpression()), !dbg !551
  br label %do.body, !dbg !552

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ma.addr, align 8, !dbg !553, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !553
  br i1 %tobool, label %if.end, label %if.then, !dbg !556

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !557, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.add_size, ptr noundef @.str.2, i32 noundef 119), !dbg !557
  call void @abort() #9, !dbg !557
  unreachable, !dbg !557

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !556

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !559, !tbaa !365
  %3 = load ptr, ptr %ma.addr, align 8, !dbg !560, !tbaa !309
  %current_size = getelementptr inbounds %struct.MA, ptr %3, i32 0, i32 4, !dbg !561
  %4 = load i64, ptr %current_size, align 8, !dbg !562, !tbaa !452
  %add = add i64 %4, %2, !dbg !562
  store i64 %add, ptr %current_size, align 8, !dbg !562, !tbaa !452
  %5 = load ptr, ptr %ma.addr, align 8, !dbg !563, !tbaa !309
  %global_space_peak = getelementptr inbounds %struct.MA, ptr %5, i32 0, i32 2, !dbg !565
  %6 = load i8, ptr %global_space_peak, align 1, !dbg !565, !tbaa !343, !range !324, !noundef !325
  %tobool1 = trunc i8 %6 to i1, !dbg !565
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !566

if.then2:                                         ; preds = %do.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !567, !tbaa !365
  call void @gt_spacepeak_add(i64 noundef %7), !dbg !568
  br label %if.end3, !dbg !568

if.end3:                                          ; preds = %if.then2, %do.end
  %8 = load ptr, ptr %ma.addr, align 8, !dbg !569, !tbaa !309
  %current_size4 = getelementptr inbounds %struct.MA, ptr %8, i32 0, i32 4, !dbg !571
  %9 = load i64, ptr %current_size4, align 8, !dbg !571, !tbaa !452
  %10 = load ptr, ptr %ma.addr, align 8, !dbg !572, !tbaa !309
  %max_size = getelementptr inbounds %struct.MA, ptr %10, i32 0, i32 5, !dbg !573
  %11 = load i64, ptr %max_size, align 8, !dbg !573, !tbaa !574
  %cmp = icmp ugt i64 %9, %11, !dbg !575
  br i1 %cmp, label %if.then5, label %if.end8, !dbg !576

if.then5:                                         ; preds = %if.end3
  %12 = load ptr, ptr %ma.addr, align 8, !dbg !577, !tbaa !309
  %current_size6 = getelementptr inbounds %struct.MA, ptr %12, i32 0, i32 4, !dbg !578
  %13 = load i64, ptr %current_size6, align 8, !dbg !578, !tbaa !452
  %14 = load ptr, ptr %ma.addr, align 8, !dbg !579, !tbaa !309
  %max_size7 = getelementptr inbounds %struct.MA, ptr %14, i32 0, i32 5, !dbg !580
  store i64 %13, ptr %max_size7, align 8, !dbg !581, !tbaa !574
  br label %if.end8, !dbg !579

if.end8:                                          ; preds = %if.then5, %if.end3
  ret void, !dbg !582
}

declare !dbg !583 void @gt_mutex_unlock_func(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define ptr @gt_calloc_mem(i64 noundef %nmemb, i64 noundef %size, ptr noundef %src_file, i32 noundef %src_line) #0 !dbg !584 {
entry:
  %retval = alloca ptr, align 8
  %nmemb.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %src_file.addr = alloca ptr, align 8
  %src_line.addr = alloca i32, align 4
  %mainfo = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nmemb, ptr %nmemb.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %nmemb.addr, metadata !588, metadata !DIExpression()), !dbg !594
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !589, metadata !DIExpression()), !dbg !595
  store ptr %src_file, ptr %src_file.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %src_file.addr, metadata !590, metadata !DIExpression()), !dbg !596
  store i32 %src_line, ptr %src_line.addr, align 4, !tbaa !370
  tail call void @llvm.dbg.declare(metadata ptr %src_line.addr, metadata !591, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 8, ptr %mainfo) #10, !dbg !598
  tail call void @llvm.dbg.declare(metadata ptr %mainfo, metadata !592, metadata !DIExpression()), !dbg !599
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #10, !dbg !600
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !593, metadata !DIExpression()), !dbg !601
  br label %do.body, !dbg !602

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !603, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !603
  br i1 %tobool, label %if.end, label %if.then, !dbg !606

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !607, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_calloc_mem, ptr noundef @.str.2, i32 noundef 162), !dbg !607
  call void @abort() #9, !dbg !607
  unreachable, !dbg !607

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !606

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !606

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr @ma, align 8, !dbg !609, !tbaa !309
  %bookkeeping = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 1, !dbg !611
  %3 = load i8, ptr %bookkeeping, align 8, !dbg !611, !tbaa !320, !range !324, !noundef !325
  %tobool1 = trunc i8 %3 to i1, !dbg !611
  br i1 %tobool1, label %if.then2, label %if.end10, !dbg !612

if.then2:                                         ; preds = %do.end
  %4 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !613, !tbaa !309
  call void @gt_mutex_lock_func(ptr noundef %4), !dbg !613
  %5 = load ptr, ptr @ma, align 8, !dbg !615, !tbaa !309
  %mallocevents = getelementptr inbounds %struct.MA, ptr %5, i32 0, i32 3, !dbg !616
  %6 = load i64, ptr %mallocevents, align 8, !dbg !617, !tbaa !449
  %inc = add i64 %6, 1, !dbg !617
  store i64 %inc, ptr %mallocevents, align 8, !dbg !617, !tbaa !449
  %7 = load ptr, ptr @ma, align 8, !dbg !618, !tbaa !309
  %current_size = getelementptr inbounds %struct.MA, ptr %7, i32 0, i32 4, !dbg !619
  %8 = load i64, ptr %current_size, align 8, !dbg !619, !tbaa !452
  %9 = load ptr, ptr %src_file.addr, align 8, !dbg !620, !tbaa !309
  %10 = load i32, ptr %src_line.addr, align 4, !dbg !621, !tbaa !370
  %call3 = call ptr @xmalloc(i64 noundef 24, i64 noundef %8, ptr noundef %9, i32 noundef %10), !dbg !622
  store ptr %call3, ptr %mainfo, align 8, !dbg !623, !tbaa !309
  %11 = load i64, ptr %nmemb.addr, align 8, !dbg !624, !tbaa !365
  %12 = load i64, ptr %size.addr, align 8, !dbg !625, !tbaa !365
  %mul = mul i64 %11, %12, !dbg !626
  %13 = load ptr, ptr %mainfo, align 8, !dbg !627, !tbaa !309
  %size4 = getelementptr inbounds %struct.MAInfo, ptr %13, i32 0, i32 0, !dbg !628
  store i64 %mul, ptr %size4, align 8, !dbg !629, !tbaa !461
  %14 = load ptr, ptr %src_file.addr, align 8, !dbg !630, !tbaa !309
  %15 = load ptr, ptr %mainfo, align 8, !dbg !631, !tbaa !309
  %src_file5 = getelementptr inbounds %struct.MAInfo, ptr %15, i32 0, i32 1, !dbg !632
  store ptr %14, ptr %src_file5, align 8, !dbg !633, !tbaa !467
  %16 = load i32, ptr %src_line.addr, align 4, !dbg !634, !tbaa !370
  %17 = load ptr, ptr %mainfo, align 8, !dbg !635, !tbaa !309
  %src_line6 = getelementptr inbounds %struct.MAInfo, ptr %17, i32 0, i32 2, !dbg !636
  store i32 %16, ptr %src_line6, align 8, !dbg !637, !tbaa !472
  %18 = load i64, ptr %nmemb.addr, align 8, !dbg !638, !tbaa !365
  %19 = load i64, ptr %size.addr, align 8, !dbg !639, !tbaa !365
  %20 = load ptr, ptr @ma, align 8, !dbg !640, !tbaa !309
  %current_size7 = getelementptr inbounds %struct.MA, ptr %20, i32 0, i32 4, !dbg !641
  %21 = load i64, ptr %current_size7, align 8, !dbg !641, !tbaa !452
  %22 = load ptr, ptr %src_file.addr, align 8, !dbg !642, !tbaa !309
  %23 = load i32, ptr %src_line.addr, align 4, !dbg !643, !tbaa !370
  %call8 = call ptr @xcalloc(i64 noundef %18, i64 noundef %19, i64 noundef %21, ptr noundef %22, i32 noundef %23), !dbg !644
  store ptr %call8, ptr %mem, align 8, !dbg !645, !tbaa !309
  %24 = load ptr, ptr @ma, align 8, !dbg !646, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %24, i32 0, i32 0, !dbg !647
  %25 = load ptr, ptr %allocated_pointer, align 8, !dbg !647, !tbaa !333
  %26 = load ptr, ptr %mem, align 8, !dbg !648, !tbaa !309
  %27 = load ptr, ptr %mainfo, align 8, !dbg !649, !tbaa !309
  call void @gt_hashmap_add(ptr noundef %25, ptr noundef %26, ptr noundef %27), !dbg !650
  %28 = load ptr, ptr @ma, align 8, !dbg !651, !tbaa !309
  %29 = load i64, ptr %nmemb.addr, align 8, !dbg !652, !tbaa !365
  %30 = load i64, ptr %size.addr, align 8, !dbg !653, !tbaa !365
  %mul9 = mul i64 %29, %30, !dbg !654
  call void @add_size(ptr noundef %28, i64 noundef %mul9), !dbg !655
  %31 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !656, !tbaa !309
  call void @gt_mutex_unlock_func(ptr noundef %31), !dbg !656
  %32 = load ptr, ptr %mem, align 8, !dbg !657, !tbaa !309
  store ptr %32, ptr %retval, align 8, !dbg !658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !658

if.end10:                                         ; preds = %do.end
  %33 = load i64, ptr %nmemb.addr, align 8, !dbg !659, !tbaa !365
  %34 = load i64, ptr %size.addr, align 8, !dbg !660, !tbaa !365
  %35 = load ptr, ptr @ma, align 8, !dbg !661, !tbaa !309
  %current_size11 = getelementptr inbounds %struct.MA, ptr %35, i32 0, i32 4, !dbg !662
  %36 = load i64, ptr %current_size11, align 8, !dbg !662, !tbaa !452
  %37 = load ptr, ptr %src_file.addr, align 8, !dbg !663, !tbaa !309
  %38 = load i32, ptr %src_line.addr, align 4, !dbg !664, !tbaa !370
  %call12 = call ptr @xcalloc(i64 noundef %33, i64 noundef %34, i64 noundef %36, ptr noundef %37, i32 noundef %38), !dbg !665
  store ptr %call12, ptr %retval, align 8, !dbg !666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !666

cleanup:                                          ; preds = %if.end10, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #10, !dbg !667
  call void @llvm.lifetime.end.p0(i64 8, ptr %mainfo) #10, !dbg !667
  %39 = load ptr, ptr %retval, align 8, !dbg !667
  ret ptr %39, !dbg !667
}

; Function Attrs: nounwind uwtable
define ptr @gt_realloc_mem(ptr noundef %ptr, i64 noundef %size, ptr noundef %src_file, i32 noundef %src_line) #0 !dbg !668 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %src_file.addr = alloca ptr, align 8
  %src_line.addr = alloca i32, align 4
  %mainfo = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !672, metadata !DIExpression()), !dbg !678
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !673, metadata !DIExpression()), !dbg !679
  store ptr %src_file, ptr %src_file.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %src_file.addr, metadata !674, metadata !DIExpression()), !dbg !680
  store i32 %src_line, ptr %src_line.addr, align 4, !tbaa !370
  tail call void @llvm.dbg.declare(metadata ptr %src_line.addr, metadata !675, metadata !DIExpression()), !dbg !681
  call void @llvm.lifetime.start.p0(i64 8, ptr %mainfo) #10, !dbg !682
  tail call void @llvm.dbg.declare(metadata ptr %mainfo, metadata !676, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #10, !dbg !684
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !677, metadata !DIExpression()), !dbg !685
  br label %do.body, !dbg !686

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !687, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !687
  br i1 %tobool, label %if.end, label %if.then, !dbg !690

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !691, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_realloc_mem, ptr noundef @.str.2, i32 noundef 183), !dbg !691
  call void @abort() #9, !dbg !691
  unreachable, !dbg !691

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !690

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !690

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr @ma, align 8, !dbg !693, !tbaa !309
  %bookkeeping = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 1, !dbg !695
  %3 = load i8, ptr %bookkeeping, align 8, !dbg !695, !tbaa !320, !range !324, !noundef !325
  %tobool1 = trunc i8 %3 to i1, !dbg !695
  br i1 %tobool1, label %if.then2, label %if.end23, !dbg !696

if.then2:                                         ; preds = %do.end
  %4 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !697, !tbaa !309
  call void @gt_mutex_lock_func(ptr noundef %4), !dbg !697
  %5 = load ptr, ptr @ma, align 8, !dbg !699, !tbaa !309
  %mallocevents = getelementptr inbounds %struct.MA, ptr %5, i32 0, i32 3, !dbg !700
  %6 = load i64, ptr %mallocevents, align 8, !dbg !701, !tbaa !449
  %inc = add i64 %6, 1, !dbg !701
  store i64 %inc, ptr %mallocevents, align 8, !dbg !701, !tbaa !449
  %7 = load ptr, ptr %ptr.addr, align 8, !dbg !702, !tbaa !309
  %tobool3 = icmp ne ptr %7, null, !dbg !702
  br i1 %tobool3, label %if.then4, label %if.end15, !dbg !704

if.then4:                                         ; preds = %if.then2
  %8 = load ptr, ptr @ma, align 8, !dbg !705, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %8, i32 0, i32 0, !dbg !707
  %9 = load ptr, ptr %allocated_pointer, align 8, !dbg !707, !tbaa !333
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !708, !tbaa !309
  %call5 = call ptr @gt_hashmap_get(ptr noundef %9, ptr noundef %10), !dbg !709
  store ptr %call5, ptr %mainfo, align 8, !dbg !710, !tbaa !309
  br label %do.body6, !dbg !711

do.body6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %mainfo, align 8, !dbg !712, !tbaa !309
  %tobool7 = icmp ne ptr %11, null, !dbg !712
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !715

if.then8:                                         ; preds = %do.body6
  %12 = load ptr, ptr @stderr, align 8, !dbg !716, !tbaa !309
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_realloc_mem, ptr noundef @.str.2, i32 noundef 189), !dbg !716
  call void @abort() #9, !dbg !716
  unreachable, !dbg !716

if.end10:                                         ; preds = %do.body6
  br label %do.cond11, !dbg !715

do.cond11:                                        ; preds = %if.end10
  br label %do.end12, !dbg !715

do.end12:                                         ; preds = %do.cond11
  %13 = load ptr, ptr @ma, align 8, !dbg !718, !tbaa !309
  %14 = load ptr, ptr %mainfo, align 8, !dbg !719, !tbaa !309
  %size13 = getelementptr inbounds %struct.MAInfo, ptr %14, i32 0, i32 0, !dbg !720
  %15 = load i64, ptr %size13, align 8, !dbg !720, !tbaa !461
  call void @subtract_size(ptr noundef %13, i64 noundef %15), !dbg !721
  %16 = load ptr, ptr @ma, align 8, !dbg !722, !tbaa !309
  %allocated_pointer14 = getelementptr inbounds %struct.MA, ptr %16, i32 0, i32 0, !dbg !723
  %17 = load ptr, ptr %allocated_pointer14, align 8, !dbg !723, !tbaa !333
  %18 = load ptr, ptr %ptr.addr, align 8, !dbg !724, !tbaa !309
  call void @gt_hashmap_remove(ptr noundef %17, ptr noundef %18), !dbg !725
  br label %if.end15, !dbg !726

if.end15:                                         ; preds = %do.end12, %if.then2
  %19 = load ptr, ptr @ma, align 8, !dbg !727, !tbaa !309
  %current_size = getelementptr inbounds %struct.MA, ptr %19, i32 0, i32 4, !dbg !728
  %20 = load i64, ptr %current_size, align 8, !dbg !728, !tbaa !452
  %21 = load ptr, ptr %src_file.addr, align 8, !dbg !729, !tbaa !309
  %22 = load i32, ptr %src_line.addr, align 4, !dbg !730, !tbaa !370
  %call16 = call ptr @xmalloc(i64 noundef 24, i64 noundef %20, ptr noundef %21, i32 noundef %22), !dbg !731
  store ptr %call16, ptr %mainfo, align 8, !dbg !732, !tbaa !309
  %23 = load i64, ptr %size.addr, align 8, !dbg !733, !tbaa !365
  %24 = load ptr, ptr %mainfo, align 8, !dbg !734, !tbaa !309
  %size17 = getelementptr inbounds %struct.MAInfo, ptr %24, i32 0, i32 0, !dbg !735
  store i64 %23, ptr %size17, align 8, !dbg !736, !tbaa !461
  %25 = load ptr, ptr %src_file.addr, align 8, !dbg !737, !tbaa !309
  %26 = load ptr, ptr %mainfo, align 8, !dbg !738, !tbaa !309
  %src_file18 = getelementptr inbounds %struct.MAInfo, ptr %26, i32 0, i32 1, !dbg !739
  store ptr %25, ptr %src_file18, align 8, !dbg !740, !tbaa !467
  %27 = load i32, ptr %src_line.addr, align 4, !dbg !741, !tbaa !370
  %28 = load ptr, ptr %mainfo, align 8, !dbg !742, !tbaa !309
  %src_line19 = getelementptr inbounds %struct.MAInfo, ptr %28, i32 0, i32 2, !dbg !743
  store i32 %27, ptr %src_line19, align 8, !dbg !744, !tbaa !472
  %29 = load ptr, ptr %ptr.addr, align 8, !dbg !745, !tbaa !309
  %30 = load i64, ptr %size.addr, align 8, !dbg !746, !tbaa !365
  %31 = load ptr, ptr @ma, align 8, !dbg !747, !tbaa !309
  %current_size20 = getelementptr inbounds %struct.MA, ptr %31, i32 0, i32 4, !dbg !748
  %32 = load i64, ptr %current_size20, align 8, !dbg !748, !tbaa !452
  %33 = load ptr, ptr %src_file.addr, align 8, !dbg !749, !tbaa !309
  %34 = load i32, ptr %src_line.addr, align 4, !dbg !750, !tbaa !370
  %call21 = call ptr @xrealloc(ptr noundef %29, i64 noundef %30, i64 noundef %32, ptr noundef %33, i32 noundef %34), !dbg !751
  store ptr %call21, ptr %mem, align 8, !dbg !752, !tbaa !309
  %35 = load ptr, ptr @ma, align 8, !dbg !753, !tbaa !309
  %allocated_pointer22 = getelementptr inbounds %struct.MA, ptr %35, i32 0, i32 0, !dbg !754
  %36 = load ptr, ptr %allocated_pointer22, align 8, !dbg !754, !tbaa !333
  %37 = load ptr, ptr %mem, align 8, !dbg !755, !tbaa !309
  %38 = load ptr, ptr %mainfo, align 8, !dbg !756, !tbaa !309
  call void @gt_hashmap_add(ptr noundef %36, ptr noundef %37, ptr noundef %38), !dbg !757
  %39 = load ptr, ptr @ma, align 8, !dbg !758, !tbaa !309
  %40 = load i64, ptr %size.addr, align 8, !dbg !759, !tbaa !365
  call void @add_size(ptr noundef %39, i64 noundef %40), !dbg !760
  %41 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !761, !tbaa !309
  call void @gt_mutex_unlock_func(ptr noundef %41), !dbg !761
  %42 = load ptr, ptr %mem, align 8, !dbg !762, !tbaa !309
  store ptr %42, ptr %retval, align 8, !dbg !763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !763

if.end23:                                         ; preds = %do.end
  %43 = load ptr, ptr %ptr.addr, align 8, !dbg !764, !tbaa !309
  %44 = load i64, ptr %size.addr, align 8, !dbg !765, !tbaa !365
  %45 = load ptr, ptr @ma, align 8, !dbg !766, !tbaa !309
  %current_size24 = getelementptr inbounds %struct.MA, ptr %45, i32 0, i32 4, !dbg !767
  %46 = load i64, ptr %current_size24, align 8, !dbg !767, !tbaa !452
  %47 = load ptr, ptr %src_file.addr, align 8, !dbg !768, !tbaa !309
  %48 = load i32, ptr %src_line.addr, align 4, !dbg !769, !tbaa !370
  %call25 = call ptr @xrealloc(ptr noundef %43, i64 noundef %44, i64 noundef %46, ptr noundef %47, i32 noundef %48), !dbg !770
  store ptr %call25, ptr %retval, align 8, !dbg !771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !771

cleanup:                                          ; preds = %if.end23, %if.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #10, !dbg !772
  call void @llvm.lifetime.end.p0(i64 8, ptr %mainfo) #10, !dbg !772
  %49 = load ptr, ptr %retval, align 8, !dbg !772
  ret ptr %49, !dbg !772
}

declare !dbg !773 ptr @gt_hashmap_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @subtract_size(ptr noundef %ma, i64 noundef %size) #0 !dbg !778 {
entry:
  %ma.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %ma, ptr %ma.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %ma.addr, metadata !780, metadata !DIExpression()), !dbg !782
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !781, metadata !DIExpression()), !dbg !783
  br label %do.body, !dbg !784

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %ma.addr, align 8, !dbg !785, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !785
  br i1 %tobool, label %if.end, label %if.then, !dbg !788

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !789, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.subtract_size, ptr noundef @.str.2, i32 noundef 129), !dbg !789
  call void @abort() #9, !dbg !789
  unreachable, !dbg !789

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !788

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !791

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %ma.addr, align 8, !dbg !792, !tbaa !309
  %current_size = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 4, !dbg !792
  %3 = load i64, ptr %current_size, align 8, !dbg !792, !tbaa !452
  %4 = load i64, ptr %size.addr, align 8, !dbg !792, !tbaa !365
  %cmp = icmp uge i64 %3, %4, !dbg !792
  br i1 %cmp, label %if.end4, label %if.then2, !dbg !795

if.then2:                                         ; preds = %do.body1
  %5 = load ptr, ptr @stderr, align 8, !dbg !796, !tbaa !309
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.subtract_size, ptr noundef @.str.2, i32 noundef 130), !dbg !796
  call void @abort() #9, !dbg !796
  unreachable, !dbg !796

if.end4:                                          ; preds = %do.body1
  br label %do.end5, !dbg !795

do.end5:                                          ; preds = %if.end4
  %6 = load i64, ptr %size.addr, align 8, !dbg !798, !tbaa !365
  %7 = load ptr, ptr %ma.addr, align 8, !dbg !799, !tbaa !309
  %current_size6 = getelementptr inbounds %struct.MA, ptr %7, i32 0, i32 4, !dbg !800
  %8 = load i64, ptr %current_size6, align 8, !dbg !801, !tbaa !452
  %sub = sub i64 %8, %6, !dbg !801
  store i64 %sub, ptr %current_size6, align 8, !dbg !801, !tbaa !452
  %9 = load ptr, ptr %ma.addr, align 8, !dbg !802, !tbaa !309
  %global_space_peak = getelementptr inbounds %struct.MA, ptr %9, i32 0, i32 2, !dbg !804
  %10 = load i8, ptr %global_space_peak, align 1, !dbg !804, !tbaa !343, !range !324, !noundef !325
  %tobool7 = trunc i8 %10 to i1, !dbg !804
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !805

if.then8:                                         ; preds = %do.end5
  %11 = load i64, ptr %size.addr, align 8, !dbg !806, !tbaa !365
  call void @gt_spacepeak_free(i64 noundef %11), !dbg !807
  br label %if.end9, !dbg !807

if.end9:                                          ; preds = %if.then8, %do.end5
  ret void, !dbg !808
}

declare !dbg !809 void @gt_hashmap_remove(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @xrealloc(ptr noundef %ptr, i64 noundef %size, i64 noundef %current_size, ptr noundef %src_file, i32 noundef %src_line) #0 !dbg !812 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %current_size.addr = alloca i64, align 8
  %src_file.addr = alloca ptr, align 8
  %src_line.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !816, metadata !DIExpression()), !dbg !822
  store i64 %size, ptr %size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !817, metadata !DIExpression()), !dbg !823
  store i64 %current_size, ptr %current_size.addr, align 8, !tbaa !365
  tail call void @llvm.dbg.declare(metadata ptr %current_size.addr, metadata !818, metadata !DIExpression()), !dbg !824
  store ptr %src_file, ptr %src_file.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %src_file.addr, metadata !819, metadata !DIExpression()), !dbg !825
  store i32 %src_line, ptr %src_line.addr, align 4, !tbaa !370
  tail call void @llvm.dbg.declare(metadata ptr %src_line.addr, metadata !820, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !827
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !821, metadata !DIExpression()), !dbg !828
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !829, !tbaa !309
  %1 = load i64, ptr %size.addr, align 8, !dbg !831, !tbaa !365
  %call = call ptr @realloc(ptr noundef %0, i64 noundef %1) #13, !dbg !832
  store ptr %call, ptr %p, align 8, !dbg !833, !tbaa !309
  %cmp = icmp eq ptr %call, null, !dbg !834
  br i1 %cmp, label %if.then, label %if.end5, !dbg !835

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !dbg !836, !tbaa !309
  %3 = load i64, ptr %size.addr, align 8, !dbg !838, !tbaa !365
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.15, i64 noundef %3), !dbg !839
  %4 = load ptr, ptr @stderr, align 8, !dbg !840, !tbaa !309
  %5 = load i32, ptr %src_line.addr, align 4, !dbg !841, !tbaa !370
  %6 = load ptr, ptr %src_file.addr, align 8, !dbg !842, !tbaa !309
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.11, i32 noundef %5, ptr noundef %6), !dbg !843
  %7 = load i64, ptr %current_size.addr, align 8, !dbg !844, !tbaa !365
  %tobool = icmp ne i64 %7, 0, !dbg !844
  br i1 %tobool, label %if.then3, label %if.end, !dbg !846

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr @stderr, align 8, !dbg !847, !tbaa !309
  %9 = load i64, ptr %current_size.addr, align 8, !dbg !848, !tbaa !365
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.12, i64 noundef %9), !dbg !849
  br label %if.end, !dbg !849

if.end:                                           ; preds = %if.then3, %if.then
  call void @exit(i32 noundef 1) #9, !dbg !850
  unreachable, !dbg !850

if.end5:                                          ; preds = %entry
  %10 = load ptr, ptr %p, align 8, !dbg !851, !tbaa !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !852
  ret ptr %10, !dbg !853
}

; Function Attrs: nounwind uwtable
define void @gt_free_mem(ptr noundef %ptr, ptr noundef %src_file, i32 noundef %src_line) #0 !dbg !854 {
entry:
  %ptr.addr = alloca ptr, align 8
  %src_file.addr = alloca ptr, align 8
  %src_line.addr = alloca i32, align 4
  %mainfo = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !858, metadata !DIExpression()), !dbg !862
  store ptr %src_file, ptr %src_file.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %src_file.addr, metadata !859, metadata !DIExpression()), !dbg !863
  store i32 %src_line, ptr %src_line.addr, align 4, !tbaa !370
  tail call void @llvm.dbg.declare(metadata ptr %src_line.addr, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 8, ptr %mainfo) #10, !dbg !865
  tail call void @llvm.dbg.declare(metadata ptr %mainfo, metadata !861, metadata !DIExpression()), !dbg !866
  br label %do.body, !dbg !867

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !868, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !868
  br i1 %tobool, label %if.end, label %if.then, !dbg !871

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !872, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_free_mem, ptr noundef @.str.2, i32 noundef 210), !dbg !872
  call void @abort() #9, !dbg !872
  unreachable, !dbg !872

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !871

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !871

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !874, !tbaa !309
  %cmp = icmp eq ptr %2, null, !dbg !876
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !877

if.then1:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !878

if.end2:                                          ; preds = %do.end
  %3 = load ptr, ptr @ma, align 8, !dbg !879, !tbaa !309
  %bookkeeping = getelementptr inbounds %struct.MA, ptr %3, i32 0, i32 1, !dbg !881
  %4 = load i8, ptr %bookkeeping, align 8, !dbg !881, !tbaa !320, !range !324, !noundef !325
  %tobool3 = trunc i8 %4 to i1, !dbg !881
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !882

if.then4:                                         ; preds = %if.end2
  %5 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !883, !tbaa !309
  call void @gt_mutex_lock_func(ptr noundef %5), !dbg !883
  %6 = load ptr, ptr @ma, align 8, !dbg !885, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %6, i32 0, i32 0, !dbg !887
  %7 = load ptr, ptr %allocated_pointer, align 8, !dbg !887, !tbaa !333
  %8 = load ptr, ptr %ptr.addr, align 8, !dbg !888, !tbaa !309
  %call5 = call ptr @gt_hashmap_get(ptr noundef %7, ptr noundef %8), !dbg !889
  %tobool6 = icmp ne ptr %call5, null, !dbg !889
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !890

if.then7:                                         ; preds = %if.then4
  %9 = load ptr, ptr @stderr, align 8, !dbg !891, !tbaa !309
  %10 = load i32, ptr %src_line.addr, align 4, !dbg !893, !tbaa !370
  %11 = load ptr, ptr %src_file.addr, align 8, !dbg !894, !tbaa !309
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.6, i32 noundef %10, ptr noundef %11), !dbg !895
  call void @exit(i32 noundef 2) #9, !dbg !896
  unreachable, !dbg !896

if.end9:                                          ; preds = %if.then4
  %12 = load ptr, ptr @ma, align 8, !dbg !897, !tbaa !309
  %allocated_pointer10 = getelementptr inbounds %struct.MA, ptr %12, i32 0, i32 0, !dbg !898
  %13 = load ptr, ptr %allocated_pointer10, align 8, !dbg !898, !tbaa !333
  %14 = load ptr, ptr %ptr.addr, align 8, !dbg !899, !tbaa !309
  %call11 = call ptr @gt_hashmap_get(ptr noundef %13, ptr noundef %14), !dbg !900
  store ptr %call11, ptr %mainfo, align 8, !dbg !901, !tbaa !309
  br label %do.body12, !dbg !902

do.body12:                                        ; preds = %if.end9
  %15 = load ptr, ptr %mainfo, align 8, !dbg !903, !tbaa !309
  %tobool13 = icmp ne ptr %15, null, !dbg !903
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !906

if.then14:                                        ; preds = %do.body12
  %16 = load ptr, ptr @stderr, align 8, !dbg !907, !tbaa !309
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_free_mem, ptr noundef @.str.2, i32 noundef 222), !dbg !907
  call void @abort() #9, !dbg !907
  unreachable, !dbg !907

if.end16:                                         ; preds = %do.body12
  br label %do.cond17, !dbg !906

do.cond17:                                        ; preds = %if.end16
  br label %do.end18, !dbg !906

do.end18:                                         ; preds = %do.cond17
  %17 = load ptr, ptr @ma, align 8, !dbg !909, !tbaa !309
  %18 = load ptr, ptr %mainfo, align 8, !dbg !910, !tbaa !309
  %size = getelementptr inbounds %struct.MAInfo, ptr %18, i32 0, i32 0, !dbg !911
  %19 = load i64, ptr %size, align 8, !dbg !911, !tbaa !461
  call void @subtract_size(ptr noundef %17, i64 noundef %19), !dbg !912
  %20 = load ptr, ptr @ma, align 8, !dbg !913, !tbaa !309
  %allocated_pointer19 = getelementptr inbounds %struct.MA, ptr %20, i32 0, i32 0, !dbg !914
  %21 = load ptr, ptr %allocated_pointer19, align 8, !dbg !914, !tbaa !333
  %22 = load ptr, ptr %ptr.addr, align 8, !dbg !915, !tbaa !309
  call void @gt_hashmap_remove(ptr noundef %21, ptr noundef %22), !dbg !916
  %23 = load ptr, ptr %ptr.addr, align 8, !dbg !917, !tbaa !309
  call void @free(ptr noundef %23) #10, !dbg !918
  %24 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !919, !tbaa !309
  call void @gt_mutex_unlock_func(ptr noundef %24), !dbg !919
  br label %if.end20, !dbg !920

if.else:                                          ; preds = %if.end2
  %25 = load ptr, ptr %ptr.addr, align 8, !dbg !921, !tbaa !309
  call void @free(ptr noundef %25) #10, !dbg !923
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.end18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !924
  br label %cleanup, !dbg !924

cleanup:                                          ; preds = %if.end20, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %mainfo) #10, !dbg !924
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !924

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noreturn nounwind
declare !dbg !925 void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !928 void @free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define void @gt_free_func(ptr noundef %ptr) #0 !dbg !929 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !931, metadata !DIExpression()), !dbg !932
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !933, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !933
  br i1 %tobool, label %if.end, label %if.then, !dbg !935

if.then:                                          ; preds = %entry
  br label %return, !dbg !936

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !937, !tbaa !309
  call void @gt_free_mem(ptr noundef %1, ptr noundef @.str.2, i32 noundef 236), !dbg !937
  br label %return, !dbg !938

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !938
}

; Function Attrs: nounwind uwtable
define void @gt_ma_enable_global_spacepeak() #0 !dbg !939 {
entry:
  br label %do.body, !dbg !940

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !941, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !941
  br i1 %tobool, label %if.end, label %if.then, !dbg !944

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !945, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_enable_global_spacepeak, ptr noundef @.str.2, i32 noundef 257), !dbg !945
  call void @abort() #9, !dbg !945
  unreachable, !dbg !945

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !944

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @ma, align 8, !dbg !947, !tbaa !309
  %global_space_peak = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 2, !dbg !948
  store i8 1, ptr %global_space_peak, align 1, !dbg !949, !tbaa !343
  ret void, !dbg !950
}

; Function Attrs: nounwind uwtable
define void @gt_ma_disable_global_spacepeak() #0 !dbg !951 {
entry:
  br label %do.body, !dbg !952

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !953, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !953
  br i1 %tobool, label %if.end, label %if.then, !dbg !956

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !957, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_disable_global_spacepeak, ptr noundef @.str.2, i32 noundef 263), !dbg !957
  call void @abort() #9, !dbg !957
  unreachable, !dbg !957

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !956

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @ma, align 8, !dbg !959, !tbaa !309
  %global_space_peak = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 2, !dbg !960
  store i8 0, ptr %global_space_peak, align 1, !dbg !961, !tbaa !343
  ret void, !dbg !962
}

; Function Attrs: nounwind uwtable
define i64 @gt_ma_get_space_peak() #0 !dbg !963 {
entry:
  br label %do.body, !dbg !966

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !967, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !967
  br i1 %tobool, label %if.end, label %if.then, !dbg !970

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !971, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_get_space_peak, ptr noundef @.str.2, i32 noundef 269), !dbg !971
  call void @abort() #9, !dbg !971
  unreachable, !dbg !971

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !970

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @ma, align 8, !dbg !973, !tbaa !309
  %max_size = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 5, !dbg !974
  %3 = load i64, ptr %max_size, align 8, !dbg !974, !tbaa !574
  ret i64 %3, !dbg !975
}

; Function Attrs: nounwind uwtable
define i64 @gt_ma_get_space_current() #0 !dbg !976 {
entry:
  br label %do.body, !dbg !977

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !978, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !978
  br i1 %tobool, label %if.end, label %if.then, !dbg !981

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !982, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_get_space_current, ptr noundef @.str.2, i32 noundef 275), !dbg !982
  call void @abort() #9, !dbg !982
  unreachable, !dbg !982

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !981

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @ma, align 8, !dbg !984, !tbaa !309
  %current_size = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 4, !dbg !985
  %3 = load i64, ptr %current_size, align 8, !dbg !985, !tbaa !452
  ret i64 %3, !dbg !986
}

; Function Attrs: nounwind uwtable
define void @gt_ma_show_space_peak(ptr noundef %fp) #0 !dbg !987 {
entry:
  %fp.addr = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !991, metadata !DIExpression()), !dbg !992
  br label %do.body, !dbg !993

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !994, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !994
  br i1 %tobool, label %if.end, label %if.then, !dbg !997

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !998, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_show_space_peak, ptr noundef @.str.2, i32 noundef 281), !dbg !998
  call void @abort() #9, !dbg !998
  unreachable, !dbg !998

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !997

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %fp.addr, align 8, !dbg !1000, !tbaa !309
  %3 = load ptr, ptr @ma, align 8, !dbg !1001, !tbaa !309
  %max_size = getelementptr inbounds %struct.MA, ptr %3, i32 0, i32 5, !dbg !1001
  %4 = load i64, ptr %max_size, align 8, !dbg !1001, !tbaa !574
  %conv = uitofp i64 %4 to double, !dbg !1001
  %div = fdiv double %conv, 0x4130000000000000, !dbg !1001
  %5 = load ptr, ptr @ma, align 8, !dbg !1002, !tbaa !309
  %mallocevents = getelementptr inbounds %struct.MA, ptr %5, i32 0, i32 3, !dbg !1003
  %6 = load i64, ptr %mallocevents, align 8, !dbg !1003, !tbaa !449
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.7, double noundef %div, i64 noundef %6), !dbg !1004
  ret void, !dbg !1005
}

; Function Attrs: nounwind uwtable
define i32 @gt_ma_check_space_leak() #0 !dbg !1006 {
entry:
  %retval = alloca i32, align 4
  %info = alloca %struct.CheckSpaceLeakInfo, align 1
  %had_err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %info) #10, !dbg !1012
  tail call void @llvm.dbg.declare(metadata ptr %info, metadata !1010, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !1014
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !1011, metadata !DIExpression()), !dbg !1015
  br label %do.body, !dbg !1016

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !1017, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !1017
  br i1 %tobool, label %if.end, label %if.then, !dbg !1020

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1021, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_check_space_leak, ptr noundef @.str.2, i32 noundef 291), !dbg !1021
  call void @abort() #9, !dbg !1021
  unreachable, !dbg !1021

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1020

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1020

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !1023, !tbaa !309
  call void @gt_mutex_lock_func(ptr noundef %2), !dbg !1023
  %has_leak = getelementptr inbounds %struct.CheckSpaceLeakInfo, ptr %info, i32 0, i32 0, !dbg !1024
  store i8 0, ptr %has_leak, align 1, !dbg !1025, !tbaa !1026
  %3 = load ptr, ptr @ma, align 8, !dbg !1028, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %3, i32 0, i32 0, !dbg !1029
  %4 = load ptr, ptr %allocated_pointer, align 8, !dbg !1029, !tbaa !333
  %call1 = call i32 @gt_hashmap_foreach(ptr noundef %4, ptr noundef @check_space_leak, ptr noundef %info, ptr noundef null), !dbg !1030
  store i32 %call1, ptr %had_err, align 4, !dbg !1031, !tbaa !370
  br label %do.body2, !dbg !1032

do.body2:                                         ; preds = %do.end
  %5 = load i32, ptr %had_err, align 4, !dbg !1033, !tbaa !370
  %tobool3 = icmp ne i32 %5, 0, !dbg !1033
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1036

if.then4:                                         ; preds = %do.body2
  %6 = load ptr, ptr @stderr, align 8, !dbg !1037, !tbaa !309
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @__func__.gt_ma_check_space_leak, ptr noundef @.str.2, i32 noundef 296), !dbg !1037
  call void @abort() #9, !dbg !1037
  unreachable, !dbg !1037

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !1036

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !1036

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !1039, !tbaa !309
  call void @gt_mutex_unlock_func(ptr noundef %7), !dbg !1039
  %has_leak9 = getelementptr inbounds %struct.CheckSpaceLeakInfo, ptr %info, i32 0, i32 0, !dbg !1040
  %8 = load i8, ptr %has_leak9, align 1, !dbg !1040, !tbaa !1026, !range !324, !noundef !325
  %tobool10 = trunc i8 %8 to i1, !dbg !1040
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1042

if.then11:                                        ; preds = %do.end8
  store i32 -1, ptr %retval, align 4, !dbg !1043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1043

if.end12:                                         ; preds = %do.end8
  store i32 0, ptr %retval, align 4, !dbg !1044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1044

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 1, ptr %info) #10, !dbg !1045
  %9 = load i32, ptr %retval, align 4, !dbg !1045
  ret i32 %9, !dbg !1045
}

declare !dbg !1046 i32 @gt_hashmap_foreach(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_space_leak(ptr noundef %key, ptr noundef %value, ptr noundef %data, ptr noundef %err) #0 !dbg !1057 {
entry:
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %mainfo = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1059, metadata !DIExpression()), !dbg !1065
  store ptr %value, ptr %value.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1060, metadata !DIExpression()), !dbg !1066
  store ptr %data, ptr %data.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1061, metadata !DIExpression()), !dbg !1067
  store ptr %err, ptr %err.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1062, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #10, !dbg !1069
  tail call void @llvm.dbg.declare(metadata ptr %info, metadata !1063, metadata !DIExpression()), !dbg !1070
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1071, !tbaa !309
  store ptr %0, ptr %info, align 8, !dbg !1070, !tbaa !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %mainfo) #10, !dbg !1072
  tail call void @llvm.dbg.declare(metadata ptr %mainfo, metadata !1064, metadata !DIExpression()), !dbg !1073
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1074, !tbaa !309
  store ptr %1, ptr %mainfo, align 8, !dbg !1073, !tbaa !309
  br label %do.body, !dbg !1075

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %err.addr, align 8, !dbg !1076, !tbaa !309
  %tobool = icmp ne ptr %2, null, !dbg !1076
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !1076

lor.lhs.false:                                    ; preds = %do.body
  %3 = load ptr, ptr %err.addr, align 8, !dbg !1076, !tbaa !309
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %3), !dbg !1076
  br i1 %call, label %if.then, label %if.end, !dbg !1079

if.then:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr @stderr, align 8, !dbg !1080, !tbaa !309
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.check_space_leak, ptr noundef @.str.2, i32 noundef 244), !dbg !1080
  call void @abort() #9, !dbg !1080
  unreachable, !dbg !1080

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !1079

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1079

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1082

do.body2:                                         ; preds = %do.end
  %5 = load ptr, ptr %key.addr, align 8, !dbg !1083, !tbaa !309
  %tobool3 = icmp ne ptr %5, null, !dbg !1083
  br i1 %tobool3, label %land.lhs.true, label %if.then7, !dbg !1083

land.lhs.true:                                    ; preds = %do.body2
  %6 = load ptr, ptr %value.addr, align 8, !dbg !1083, !tbaa !309
  %tobool4 = icmp ne ptr %6, null, !dbg !1083
  br i1 %tobool4, label %land.lhs.true5, label %if.then7, !dbg !1083

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %data.addr, align 8, !dbg !1083, !tbaa !309
  %tobool6 = icmp ne ptr %7, null, !dbg !1083
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !1086

if.then7:                                         ; preds = %land.lhs.true5, %land.lhs.true, %do.body2
  %8 = load ptr, ptr @stderr, align 8, !dbg !1087, !tbaa !309
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @__func__.check_space_leak, ptr noundef @.str.2, i32 noundef 245), !dbg !1087
  call void @abort() #9, !dbg !1087
  unreachable, !dbg !1087

if.end9:                                          ; preds = %land.lhs.true5
  br label %do.cond10, !dbg !1086

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !1086

do.end11:                                         ; preds = %do.cond10
  %9 = load ptr, ptr %info, align 8, !dbg !1089, !tbaa !309
  %has_leak = getelementptr inbounds %struct.CheckSpaceLeakInfo, ptr %9, i32 0, i32 0, !dbg !1091
  %10 = load i8, ptr %has_leak, align 1, !dbg !1091, !tbaa !1026, !range !324, !noundef !325
  %tobool12 = trunc i8 %10 to i1, !dbg !1091
  br i1 %tobool12, label %if.end16, label %if.then13, !dbg !1092

if.then13:                                        ; preds = %do.end11
  %11 = load ptr, ptr @stderr, align 8, !dbg !1093, !tbaa !309
  %12 = load ptr, ptr %mainfo, align 8, !dbg !1095, !tbaa !309
  %size = getelementptr inbounds %struct.MAInfo, ptr %12, i32 0, i32 0, !dbg !1096
  %13 = load i64, ptr %size, align 8, !dbg !1096, !tbaa !461
  %14 = load ptr, ptr %mainfo, align 8, !dbg !1097, !tbaa !309
  %src_line = getelementptr inbounds %struct.MAInfo, ptr %14, i32 0, i32 2, !dbg !1098
  %15 = load i32, ptr %src_line, align 8, !dbg !1098, !tbaa !472
  %16 = load ptr, ptr %mainfo, align 8, !dbg !1099, !tbaa !309
  %src_file = getelementptr inbounds %struct.MAInfo, ptr %16, i32 0, i32 1, !dbg !1100
  %17 = load ptr, ptr %src_file, align 8, !dbg !1100, !tbaa !467
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.17, i64 noundef %13, i32 noundef %15, ptr noundef %17), !dbg !1101
  %18 = load ptr, ptr %info, align 8, !dbg !1102, !tbaa !309
  %has_leak15 = getelementptr inbounds %struct.CheckSpaceLeakInfo, ptr %18, i32 0, i32 0, !dbg !1103
  store i8 1, ptr %has_leak15, align 1, !dbg !1104, !tbaa !1026
  br label %if.end16, !dbg !1105

if.end16:                                         ; preds = %if.then13, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %mainfo) #10, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #10, !dbg !1106
  ret i32 0, !dbg !1107
}

; Function Attrs: nounwind uwtable
define zeroext i1 @gt_ma_bookkeeping_enabled() #0 !dbg !1108 {
entry:
  br label %do.body, !dbg !1111

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !1112, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !1112
  br i1 %tobool, label %if.end, label %if.then, !dbg !1115

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1116, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_bookkeeping_enabled, ptr noundef @.str.2, i32 noundef 305), !dbg !1116
  call void @abort() #9, !dbg !1116
  unreachable, !dbg !1116

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1115

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @ma, align 8, !dbg !1118, !tbaa !309
  %bookkeeping = getelementptr inbounds %struct.MA, ptr %2, i32 0, i32 1, !dbg !1119
  %3 = load i8, ptr %bookkeeping, align 8, !dbg !1119, !tbaa !320, !range !324, !noundef !325
  %tobool1 = trunc i8 %3 to i1, !dbg !1119
  ret i1 %tobool1, !dbg !1120
}

; Function Attrs: nounwind uwtable
define void @gt_ma_show_allocations(ptr noundef %outfp) #0 !dbg !1121 {
entry:
  %outfp.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %outfp, ptr %outfp.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %outfp.addr, metadata !1123, metadata !DIExpression()), !dbg !1125
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !1126
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !1124, metadata !DIExpression()), !dbg !1127
  br label %do.body, !dbg !1128

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !1129, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !1129
  br i1 %tobool, label %if.end, label %if.then, !dbg !1132

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1133, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_show_allocations, ptr noundef @.str.2, i32 noundef 324), !dbg !1133
  call void @abort() #9, !dbg !1133
  unreachable, !dbg !1133

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1132

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1132

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !1135, !tbaa !309
  call void @gt_mutex_lock_func(ptr noundef %2), !dbg !1135
  %3 = load ptr, ptr @ma, align 8, !dbg !1136, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %3, i32 0, i32 0, !dbg !1137
  %4 = load ptr, ptr %allocated_pointer, align 8, !dbg !1137, !tbaa !333
  %5 = load ptr, ptr %outfp.addr, align 8, !dbg !1138, !tbaa !309
  %call1 = call i32 @gt_hashmap_foreach(ptr noundef %4, ptr noundef @print_allocation, ptr noundef %5, ptr noundef null), !dbg !1139
  store i32 %call1, ptr %had_err, align 4, !dbg !1140, !tbaa !370
  %6 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !1141, !tbaa !309
  call void @gt_mutex_unlock_func(ptr noundef %6), !dbg !1141
  br label %do.body2, !dbg !1142

do.body2:                                         ; preds = %do.end
  %7 = load i32, ptr %had_err, align 4, !dbg !1143, !tbaa !370
  %tobool3 = icmp ne i32 %7, 0, !dbg !1143
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1146

if.then4:                                         ; preds = %do.body2
  %8 = load ptr, ptr @stderr, align 8, !dbg !1147, !tbaa !309
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @__func__.gt_ma_show_allocations, ptr noundef @.str.2, i32 noundef 329), !dbg !1147
  call void @abort() #9, !dbg !1147
  unreachable, !dbg !1147

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !1146

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !1146

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !1149
  ret void, !dbg !1149
}

; Function Attrs: nounwind uwtable
define internal i32 @print_allocation(ptr noundef %key, ptr noundef %value, ptr noundef %data, ptr noundef %err) #0 !dbg !1150 {
entry:
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %mainfo = alloca ptr, align 8
  %outfp = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1152, metadata !DIExpression()), !dbg !1158
  store ptr %value, ptr %value.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1153, metadata !DIExpression()), !dbg !1159
  store ptr %data, ptr %data.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1154, metadata !DIExpression()), !dbg !1160
  store ptr %err, ptr %err.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1155, metadata !DIExpression()), !dbg !1161
  call void @llvm.lifetime.start.p0(i64 8, ptr %mainfo) #10, !dbg !1162
  tail call void @llvm.dbg.declare(metadata ptr %mainfo, metadata !1156, metadata !DIExpression()), !dbg !1163
  %0 = load ptr, ptr %value.addr, align 8, !dbg !1164, !tbaa !309
  store ptr %0, ptr %mainfo, align 8, !dbg !1163, !tbaa !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %outfp) #10, !dbg !1165
  tail call void @llvm.dbg.declare(metadata ptr %outfp, metadata !1157, metadata !DIExpression()), !dbg !1166
  %1 = load ptr, ptr %data.addr, align 8, !dbg !1167, !tbaa !309
  store ptr %1, ptr %outfp, align 8, !dbg !1166, !tbaa !309
  br label %do.body, !dbg !1168

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %err.addr, align 8, !dbg !1169, !tbaa !309
  %tobool = icmp ne ptr %2, null, !dbg !1169
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !1169

lor.lhs.false:                                    ; preds = %do.body
  %3 = load ptr, ptr %err.addr, align 8, !dbg !1169, !tbaa !309
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %3), !dbg !1169
  br i1 %call, label %if.then, label %if.end, !dbg !1172

if.then:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr @stderr, align 8, !dbg !1173, !tbaa !309
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.print_allocation, ptr noundef @.str.2, i32 noundef 314), !dbg !1173
  call void @abort() #9, !dbg !1173
  unreachable, !dbg !1173

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !1172

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1172

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1175

do.body2:                                         ; preds = %do.end
  %5 = load ptr, ptr %outfp, align 8, !dbg !1176, !tbaa !309
  %tobool3 = icmp ne ptr %5, null, !dbg !1176
  br i1 %tobool3, label %land.lhs.true, label %if.then7, !dbg !1176

land.lhs.true:                                    ; preds = %do.body2
  %6 = load ptr, ptr %key.addr, align 8, !dbg !1176, !tbaa !309
  %tobool4 = icmp ne ptr %6, null, !dbg !1176
  br i1 %tobool4, label %land.lhs.true5, label %if.then7, !dbg !1176

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %value.addr, align 8, !dbg !1176, !tbaa !309
  %tobool6 = icmp ne ptr %7, null, !dbg !1176
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !1179

if.then7:                                         ; preds = %land.lhs.true5, %land.lhs.true, %do.body2
  %8 = load ptr, ptr @stderr, align 8, !dbg !1180, !tbaa !309
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.18, ptr noundef @__func__.print_allocation, ptr noundef @.str.2, i32 noundef 315), !dbg !1180
  call void @abort() #9, !dbg !1180
  unreachable, !dbg !1180

if.end9:                                          ; preds = %land.lhs.true5
  br label %do.cond10, !dbg !1179

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !1179

do.end11:                                         ; preds = %do.cond10
  %9 = load ptr, ptr %outfp, align 8, !dbg !1182, !tbaa !309
  %10 = load ptr, ptr %mainfo, align 8, !dbg !1183, !tbaa !309
  %size = getelementptr inbounds %struct.MAInfo, ptr %10, i32 0, i32 0, !dbg !1184
  %11 = load i64, ptr %size, align 8, !dbg !1184, !tbaa !461
  %12 = load ptr, ptr %mainfo, align 8, !dbg !1185, !tbaa !309
  %src_line = getelementptr inbounds %struct.MAInfo, ptr %12, i32 0, i32 2, !dbg !1186
  %13 = load i32, ptr %src_line, align 8, !dbg !1186, !tbaa !472
  %14 = load ptr, ptr %mainfo, align 8, !dbg !1187, !tbaa !309
  %src_file = getelementptr inbounds %struct.MAInfo, ptr %14, i32 0, i32 1, !dbg !1188
  %15 = load ptr, ptr %src_file, align 8, !dbg !1188, !tbaa !467
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.19, i64 noundef %11, i32 noundef %13, ptr noundef %15), !dbg !1189
  call void @llvm.lifetime.end.p0(i64 8, ptr %outfp) #10, !dbg !1190
  call void @llvm.lifetime.end.p0(i64 8, ptr %mainfo) #10, !dbg !1190
  ret i32 0, !dbg !1191
}

; Function Attrs: nounwind uwtable
define void @gt_ma_clean() #0 !dbg !1192 {
entry:
  br label %do.body, !dbg !1193

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @ma, align 8, !dbg !1194, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !1194
  br i1 %tobool, label %if.end, label %if.then, !dbg !1197

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1198, !tbaa !309
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_ma_clean, ptr noundef @.str.2, i32 noundef 334), !dbg !1198
  call void @abort() #9, !dbg !1198
  unreachable, !dbg !1198

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1197

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !1200, !tbaa !309
  call void @gt_mutex_lock_func(ptr noundef %2), !dbg !1200
  %3 = load ptr, ptr @ma, align 8, !dbg !1201, !tbaa !309
  %bookkeeping = getelementptr inbounds %struct.MA, ptr %3, i32 0, i32 1, !dbg !1202
  store i8 0, ptr %bookkeeping, align 8, !dbg !1203, !tbaa !320
  %4 = load ptr, ptr @ma, align 8, !dbg !1204, !tbaa !309
  %allocated_pointer = getelementptr inbounds %struct.MA, ptr %4, i32 0, i32 0, !dbg !1205
  %5 = load ptr, ptr %allocated_pointer, align 8, !dbg !1205, !tbaa !333
  call void @gt_hashmap_delete(ptr noundef %5), !dbg !1206
  %6 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !1207, !tbaa !309
  call void @gt_mutex_unlock_func(ptr noundef %6), !dbg !1207
  %7 = load ptr, ptr @bookkeeping_lock, align 8, !dbg !1208, !tbaa !309
  call void @gt_mutex_delete(ptr noundef %7), !dbg !1209
  %8 = load ptr, ptr @ma, align 8, !dbg !1210, !tbaa !309
  call void @free(ptr noundef %8) #10, !dbg !1211
  store ptr null, ptr @ma, align 8, !dbg !1212, !tbaa !309
  ret void, !dbg !1213
}

declare !dbg !1214 void @gt_hashmap_delete(ptr noundef) #1

declare !dbg !1217 void @gt_mutex_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @gt_ma_unit_test(ptr noundef %err) #0 !dbg !1218 {
entry:
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %err, ptr %err.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1222, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !1225
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !1223, metadata !DIExpression()), !dbg !1226
  br label %do.body, !dbg !1227

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !1228, !tbaa !309
  %tobool = icmp ne ptr %0, null, !dbg !1228
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !1228

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !1228, !tbaa !309
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !1228
  br i1 %call, label %if.then, label %if.end, !dbg !1231

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !1232, !tbaa !309
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.gt_ma_unit_test, ptr noundef @.str.2, i32 noundef 405), !dbg !1232
  call void @abort() #9, !dbg !1232
  unreachable, !dbg !1232

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !1231

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1231

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %err.addr, align 8, !dbg !1234, !tbaa !309
  %call2 = call i32 @gt_multithread(ptr noundef @test_malloc, ptr noundef null, ptr noundef %3), !dbg !1235
  store i32 %call2, ptr %had_err, align 4, !dbg !1236, !tbaa !370
  %4 = load i32, ptr %had_err, align 4, !dbg !1237, !tbaa !370
  %tobool3 = icmp ne i32 %4, 0, !dbg !1237
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1239

if.then4:                                         ; preds = %do.end
  %5 = load ptr, ptr %err.addr, align 8, !dbg !1240, !tbaa !309
  %call5 = call i32 @gt_multithread(ptr noundef @test_calloc, ptr noundef null, ptr noundef %5), !dbg !1241
  store i32 %call5, ptr %had_err, align 4, !dbg !1242, !tbaa !370
  br label %if.end6, !dbg !1243

if.end6:                                          ; preds = %if.then4, %do.end
  %6 = load i32, ptr %had_err, align 4, !dbg !1244, !tbaa !370
  %tobool7 = icmp ne i32 %6, 0, !dbg !1244
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1246

if.then8:                                         ; preds = %if.end6
  %7 = load ptr, ptr %err.addr, align 8, !dbg !1247, !tbaa !309
  %call9 = call i32 @gt_multithread(ptr noundef @test_realloc, ptr noundef null, ptr noundef %7), !dbg !1248
  store i32 %call9, ptr %had_err, align 4, !dbg !1249, !tbaa !370
  br label %if.end10, !dbg !1250

if.end10:                                         ; preds = %if.then8, %if.end6
  %8 = load i32, ptr %had_err, align 4, !dbg !1251, !tbaa !370
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !1252
  ret i32 %8, !dbg !1253
}

declare !dbg !1254 zeroext i1 @gt_error_is_set(ptr noundef) #1

declare !dbg !1259 i32 @gt_multithread(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @test_malloc(ptr noundef %data) #0 !dbg !1267 {
entry:
  %data.addr = alloca ptr, align 8
  %chunks = alloca ptr, align 8
  %i = alloca i32, align 4
  %mem = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1269, metadata !DIExpression()), !dbg !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunks) #10, !dbg !1278
  tail call void @llvm.dbg.declare(metadata ptr %chunks, metadata !1270, metadata !DIExpression()), !dbg !1279
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1280
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1275, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #10, !dbg !1282
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1276, metadata !DIExpression()), !dbg !1283
  %call = call ptr @gt_array_new(i64 noundef 8), !dbg !1284
  store ptr %call, ptr %chunks, align 8, !dbg !1285, !tbaa !309
  store i32 0, ptr %i, align 4, !dbg !1286, !tbaa !370
  br label %for.cond, !dbg !1288

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1289, !tbaa !370
  %cmp = icmp ult i32 %0, 100000, !dbg !1291
  br i1 %cmp, label %for.body, label %for.end, !dbg !1292

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @gt_malloc_mem(i64 noundef 64, ptr noundef @.str.2, i32 noundef 354), !dbg !1293
  store ptr %call1, ptr %mem, align 8, !dbg !1295, !tbaa !309
  %1 = load ptr, ptr %chunks, align 8, !dbg !1296, !tbaa !309
  call void @gt_array_add_elem(ptr noundef %1, ptr noundef %mem, i64 noundef 8), !dbg !1296
  br label %for.inc, !dbg !1297

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !1298, !tbaa !370
  %inc = add i32 %2, 1, !dbg !1298
  store i32 %inc, ptr %i, align 4, !dbg !1298, !tbaa !370
  br label %for.cond, !dbg !1299, !llvm.loop !1300

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1303, !tbaa !370
  br label %for.cond2, !dbg !1305

for.cond2:                                        ; preds = %for.inc6, %for.end
  %3 = load i32, ptr %i, align 4, !dbg !1306, !tbaa !370
  %cmp3 = icmp ult i32 %3, 100000, !dbg !1308
  br i1 %cmp3, label %for.body4, label %for.end8, !dbg !1309

for.body4:                                        ; preds = %for.cond2
  %4 = load ptr, ptr %chunks, align 8, !dbg !1310, !tbaa !309
  %5 = load i32, ptr %i, align 4, !dbg !1312, !tbaa !370
  %conv = zext i32 %5 to i64, !dbg !1312
  %call5 = call ptr @gt_array_get(ptr noundef %4, i64 noundef %conv), !dbg !1313
  %6 = load ptr, ptr %call5, align 8, !dbg !1314, !tbaa !309
  store ptr %6, ptr %mem, align 8, !dbg !1315, !tbaa !309
  %7 = load ptr, ptr %mem, align 8, !dbg !1316, !tbaa !309
  call void @gt_free_mem(ptr noundef %7, ptr noundef @.str.2, i32 noundef 359), !dbg !1316
  br label %for.inc6, !dbg !1317

for.inc6:                                         ; preds = %for.body4
  %8 = load i32, ptr %i, align 4, !dbg !1318, !tbaa !370
  %inc7 = add i32 %8, 1, !dbg !1318
  store i32 %inc7, ptr %i, align 4, !dbg !1318, !tbaa !370
  br label %for.cond2, !dbg !1319, !llvm.loop !1320

for.end8:                                         ; preds = %for.cond2
  %9 = load ptr, ptr %chunks, align 8, !dbg !1322, !tbaa !309
  call void @gt_array_delete(ptr noundef %9), !dbg !1323
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #10, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunks) #10, !dbg !1324
  ret ptr null, !dbg !1325
}

; Function Attrs: nounwind uwtable
define internal ptr @test_calloc(ptr noundef %data) #0 !dbg !1326 {
entry:
  %data.addr = alloca ptr, align 8
  %chunks = alloca ptr, align 8
  %i = alloca i32, align 4
  %mem = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1328, metadata !DIExpression()), !dbg !1332
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunks) #10, !dbg !1333
  tail call void @llvm.dbg.declare(metadata ptr %chunks, metadata !1329, metadata !DIExpression()), !dbg !1334
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1335
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1330, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #10, !dbg !1337
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1331, metadata !DIExpression()), !dbg !1338
  %call = call ptr @gt_array_new(i64 noundef 8), !dbg !1339
  store ptr %call, ptr %chunks, align 8, !dbg !1340, !tbaa !309
  store i32 0, ptr %i, align 4, !dbg !1341, !tbaa !370
  br label %for.cond, !dbg !1343

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1344, !tbaa !370
  %cmp = icmp ult i32 %0, 100000, !dbg !1346
  br i1 %cmp, label %for.body, label %for.end, !dbg !1347

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 64, ptr noundef @.str.2, i32 noundef 372), !dbg !1348
  store ptr %call1, ptr %mem, align 8, !dbg !1350, !tbaa !309
  %1 = load ptr, ptr %chunks, align 8, !dbg !1351, !tbaa !309
  call void @gt_array_add_elem(ptr noundef %1, ptr noundef %mem, i64 noundef 8), !dbg !1351
  br label %for.inc, !dbg !1352

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !dbg !1353, !tbaa !370
  %inc = add i32 %2, 1, !dbg !1353
  store i32 %inc, ptr %i, align 4, !dbg !1353, !tbaa !370
  br label %for.cond, !dbg !1354, !llvm.loop !1355

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1357, !tbaa !370
  br label %for.cond2, !dbg !1359

for.cond2:                                        ; preds = %for.inc6, %for.end
  %3 = load i32, ptr %i, align 4, !dbg !1360, !tbaa !370
  %cmp3 = icmp ult i32 %3, 100000, !dbg !1362
  br i1 %cmp3, label %for.body4, label %for.end8, !dbg !1363

for.body4:                                        ; preds = %for.cond2
  %4 = load ptr, ptr %chunks, align 8, !dbg !1364, !tbaa !309
  %5 = load i32, ptr %i, align 4, !dbg !1366, !tbaa !370
  %conv = zext i32 %5 to i64, !dbg !1366
  %call5 = call ptr @gt_array_get(ptr noundef %4, i64 noundef %conv), !dbg !1367
  %6 = load ptr, ptr %call5, align 8, !dbg !1368, !tbaa !309
  store ptr %6, ptr %mem, align 8, !dbg !1369, !tbaa !309
  %7 = load ptr, ptr %mem, align 8, !dbg !1370, !tbaa !309
  call void @gt_free_mem(ptr noundef %7, ptr noundef @.str.2, i32 noundef 377), !dbg !1370
  br label %for.inc6, !dbg !1371

for.inc6:                                         ; preds = %for.body4
  %8 = load i32, ptr %i, align 4, !dbg !1372, !tbaa !370
  %inc7 = add i32 %8, 1, !dbg !1372
  store i32 %inc7, ptr %i, align 4, !dbg !1372, !tbaa !370
  br label %for.cond2, !dbg !1373, !llvm.loop !1374

for.end8:                                         ; preds = %for.cond2
  %9 = load ptr, ptr %chunks, align 8, !dbg !1376, !tbaa !309
  call void @gt_array_delete(ptr noundef %9), !dbg !1377
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunks) #10, !dbg !1378
  ret ptr null, !dbg !1379
}

; Function Attrs: nounwind uwtable
define internal ptr @test_realloc(ptr noundef %data) #0 !dbg !1380 {
entry:
  %data.addr = alloca ptr, align 8
  %chunks = alloca ptr, align 8
  %i = alloca i32, align 4
  %mem = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !309
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1382, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunks) #10, !dbg !1387
  tail call void @llvm.dbg.declare(metadata ptr %chunks, metadata !1383, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !1389
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1384, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #10, !dbg !1391
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1385, metadata !DIExpression()), !dbg !1392
  %call = call ptr @gt_array_new(i64 noundef 8), !dbg !1393
  store ptr %call, ptr %chunks, align 8, !dbg !1394, !tbaa !309
  store i32 0, ptr %i, align 4, !dbg !1395, !tbaa !370
  br label %for.cond, !dbg !1397

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1398, !tbaa !370
  %cmp = icmp ult i32 %0, 100000, !dbg !1400
  br i1 %cmp, label %for.body, label %for.end, !dbg !1401

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @gt_realloc_mem(ptr noundef null, i64 noundef 32, ptr noundef @.str.2, i32 noundef 390), !dbg !1402
  store ptr %call1, ptr %mem, align 8, !dbg !1404, !tbaa !309
  %1 = load ptr, ptr %mem, align 8, !dbg !1405, !tbaa !309
  %call2 = call ptr @gt_realloc_mem(ptr noundef %1, i64 noundef 32, ptr noundef @.str.2, i32 noundef 391), !dbg !1405
  store ptr %call2, ptr %mem, align 8, !dbg !1406, !tbaa !309
  %2 = load ptr, ptr %chunks, align 8, !dbg !1407, !tbaa !309
  call void @gt_array_add_elem(ptr noundef %2, ptr noundef %mem, i64 noundef 8), !dbg !1407
  br label %for.inc, !dbg !1408

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !1409, !tbaa !370
  %inc = add i32 %3, 1, !dbg !1409
  store i32 %inc, ptr %i, align 4, !dbg !1409, !tbaa !370
  br label %for.cond, !dbg !1410, !llvm.loop !1411

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !1413, !tbaa !370
  br label %for.cond3, !dbg !1415

for.cond3:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, ptr %i, align 4, !dbg !1416, !tbaa !370
  %cmp4 = icmp ult i32 %4, 100000, !dbg !1418
  br i1 %cmp4, label %for.body5, label %for.end9, !dbg !1419

for.body5:                                        ; preds = %for.cond3
  %5 = load ptr, ptr %chunks, align 8, !dbg !1420, !tbaa !309
  %6 = load i32, ptr %i, align 4, !dbg !1422, !tbaa !370
  %conv = zext i32 %6 to i64, !dbg !1422
  %call6 = call ptr @gt_array_get(ptr noundef %5, i64 noundef %conv), !dbg !1423
  %7 = load ptr, ptr %call6, align 8, !dbg !1424, !tbaa !309
  store ptr %7, ptr %mem, align 8, !dbg !1425, !tbaa !309
  %8 = load ptr, ptr %mem, align 8, !dbg !1426, !tbaa !309
  call void @gt_free_mem(ptr noundef %8, ptr noundef @.str.2, i32 noundef 396), !dbg !1426
  br label %for.inc7, !dbg !1427

for.inc7:                                         ; preds = %for.body5
  %9 = load i32, ptr %i, align 4, !dbg !1428, !tbaa !370
  %inc8 = add i32 %9, 1, !dbg !1428
  store i32 %inc8, ptr %i, align 4, !dbg !1428, !tbaa !370
  br label %for.cond3, !dbg !1429, !llvm.loop !1430

for.end9:                                         ; preds = %for.cond3
  %10 = load ptr, ptr %chunks, align 8, !dbg !1432, !tbaa !309
  call void @gt_array_delete(ptr noundef %10), !dbg !1433
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #10, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !1434
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunks) #10, !dbg !1434
  ret ptr null, !dbg !1435
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !1436 noalias ptr @calloc(i64 noundef, i64 noundef) #5

; Function Attrs: nounwind allocsize(0)
declare !dbg !1439 noalias ptr @malloc(i64 noundef) #6

declare !dbg !1442 void @gt_spacepeak_add(i64 noundef) #1

declare !dbg !1446 void @gt_spacepeak_free(i64 noundef) #1

; Function Attrs: nounwind allocsize(1)
declare !dbg !1447 ptr @realloc(ptr noundef, i64 noundef) #7

declare !dbg !1450 ptr @gt_array_new(i64 noundef) #1

declare !dbg !1453 void @gt_array_add_elem(ptr noundef, ptr noundef, i64 noundef) #1

declare !dbg !1456 ptr @gt_array_get(ptr noundef, i64 noundef) #1

declare !dbg !1461 void @gt_array_delete(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ma", scope: !2, file: !3, line: 41, type: !272, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !97, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/core/ma.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c82626ac884f39bc00243b64753e0fbe")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/core/hashmap_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fbce1bd34708e945658f0c72ee2baa3b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "GT_HASH_DIRECT", value: 0)
!10 = !DIEnumerator(name: "GT_HASH_STRING", value: 1)
!11 = !{!12, !17, !18, !19, !25, !39, !96}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtFree", file: !13, line: 32, baseType: !14)
!13 = !DIFile(filename: "src/core/fptr_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d793c53bd8610c5e0713924496ef4c73")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "CheckSpaceLeakInfo", file: !3, line: 52, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 50, size: 8, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "has_leak", scope: !21, file: !3, line: 51, baseType: !24, size: 8)
!24 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAInfo", file: !3, line: 48, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 44, size: 192, elements: !28)
!28 = !{!29, !33, !37}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !27, file: !3, line: 45, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 70, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "src_file", scope: !27, file: !3, line: 46, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "src_line", scope: !27, file: !3, line: 47, baseType: !38, size: 32, offset: 128)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 7, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 49, size: 1728, elements: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!44 = !{!45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !61, !63, !64, !65, !69, !71, !73, !77, !80, !82, !85, !88, !89, !90, !91, !92}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !43, line: 51, baseType: !38, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !42, file: !43, line: 54, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !42, file: !43, line: 55, baseType: !47, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !42, file: !43, line: 56, baseType: !47, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !42, file: !43, line: 57, baseType: !47, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !42, file: !43, line: 58, baseType: !47, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !42, file: !43, line: 59, baseType: !47, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !42, file: !43, line: 60, baseType: !47, size: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !42, file: !43, line: 61, baseType: !47, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !42, file: !43, line: 64, baseType: !47, size: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !42, file: !43, line: 65, baseType: !47, size: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !42, file: !43, line: 66, baseType: !47, size: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !42, file: !43, line: 68, baseType: !59, size: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !43, line: 36, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !42, file: !43, line: 70, baseType: !62, size: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !42, file: !43, line: 72, baseType: !38, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !43, line: 73, baseType: !38, size: 32, offset: 928)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !42, file: !43, line: 74, baseType: !66, size: 64, offset: 960)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !67, line: 152, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!68 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !42, file: !43, line: 77, baseType: !70, size: 16, offset: 1024)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !42, file: !43, line: 78, baseType: !72, size: 8, offset: 1040)
!72 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !42, file: !43, line: 79, baseType: !74, size: 8, offset: 1048)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !43, line: 81, baseType: !78, size: 64, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !43, line: 43, baseType: null)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !43, line: 89, baseType: !81, size: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !67, line: 153, baseType: !68)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !42, file: !43, line: 91, baseType: !83, size: 64, offset: 1216)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !43, line: 37, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !42, file: !43, line: 92, baseType: !86, size: 64, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !43, line: 38, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !42, file: !43, line: 93, baseType: !62, size: 64, offset: 1344)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !42, file: !43, line: 94, baseType: !17, size: 64, offset: 1408)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !42, file: !43, line: 95, baseType: !30, size: 64, offset: 1472)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !42, file: !43, line: 96, baseType: !38, size: 32, offset: 1536)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !42, file: !43, line: 98, baseType: !93, size: 160, offset: 1568)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 20)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!97 = !{!98, !103, !108, !113, !118, !123, !128, !131, !133, !138, !143, !148, !153, !158, !163, !168, !173, !178, !183, !188, !193, !198, !200, !202, !205, !0, !210, !215, !220, !225, !231, !236, !239, !241, !246, !251, !254, !257, !262, !264, !267}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2376, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 297)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 88, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 11)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 112, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 14)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 136, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 17)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 112, elements: !116)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !130, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 120, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 15)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 56, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 7)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 96, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 12)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 432, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 54)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 240, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 30)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 248, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 31)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 168, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 21)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 24)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 176, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 22)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 400, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 50)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 184, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 23)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 72, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 9)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 305, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 208, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 26)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !185, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !145, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 240, elements: !156)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !3, line: 405, type: !207, isLocal: true, isDefinition: true)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 16)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 32)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 280, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 35)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 296, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 37)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "bookkeeping_lock", scope: !2, file: !3, line: 42, type: !227, isLocal: true, isDefinition: true)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtMutex", file: !229, line: 32, baseType: !230)
!229 = !DIFile(filename: "src/core/thread_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "cf3159d72cab6fde515c01dafea360e4")
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtMutex", file: !229, line: 32, flags: DIFlagFwdDecl)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 74, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 216, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 27)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 72, elements: !191)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !130, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 200, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 25)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 224, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 28)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 136, elements: !121)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 168, elements: !166)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 528, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 66)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !253, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 315, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 176, elements: !176)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 424, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 53)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "MA", file: !3, line: 39, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 32, size: 320, elements: !275)
!275 = !{!276, !280, !281, !282, !286, !288}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_pointer", scope: !274, file: !3, line: 33, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHashmap", file: !6, line: 26, baseType: !279)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtHashmap", file: !6, line: 26, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "bookkeeping", scope: !274, file: !3, line: 34, baseType: !24, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "global_space_peak", scope: !274, file: !3, line: 35, baseType: !24, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mallocevents", scope: !274, file: !3, line: 36, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUint64", file: !284, line: 100, baseType: !285)
!284 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!285 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "current_size", scope: !274, file: !3, line: 37, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !284, line: 83, baseType: !32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !274, file: !3, line: 38, baseType: !287, size: 64, offset: 256)
!289 = !{i32 7, !"Dwarf Version", i32 5}
!290 = !{i32 2, !"Debug Info Version", i32 3}
!291 = !{i32 1, !"wchar_size", i32 4}
!292 = !{i32 8, !"PIC Level", i32 2}
!293 = !{i32 7, !"uwtable", i32 2}
!294 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!295 = distinct !DISubprogram(name: "gt_ma_init", scope: !3, file: !3, line: 104, type: !296, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !24}
!298 = !{!299}
!299 = !DILocalVariable(name: "bookkeeping", arg: 1, scope: !295, file: !3, line: 104, type: !24)
!300 = !{!301, !301, i64 0}
!301 = !{!"_Bool", !302, i64 0}
!302 = !{!"omnipotent char", !303, i64 0}
!303 = !{!"Simple C/C++ TBAA"}
!304 = !DILocation(line: 104, column: 22, scope: !295)
!305 = !DILocation(line: 106, column: 3, scope: !295)
!306 = !DILocation(line: 106, column: 3, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 106, column: 3)
!308 = distinct !DILexicalBlock(scope: !295, file: !3, line: 106, column: 3)
!309 = !{!310, !310, i64 0}
!310 = !{!"any pointer", !302, i64 0}
!311 = !DILocation(line: 106, column: 3, scope: !308)
!312 = !DILocation(line: 106, column: 3, scope: !313)
!313 = distinct !DILexicalBlock(scope: !307, file: !3, line: 106, column: 3)
!314 = !DILocation(line: 107, column: 8, scope: !295)
!315 = !DILocation(line: 107, column: 6, scope: !295)
!316 = !DILocation(line: 108, column: 3, scope: !295)
!317 = !DILocation(line: 108, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 108, column: 3)
!319 = distinct !DILexicalBlock(scope: !295, file: !3, line: 108, column: 3)
!320 = !{!321, !301, i64 8}
!321 = !{!"", !310, i64 0, !301, i64 8, !301, i64 9, !322, i64 16, !323, i64 24, !323, i64 32}
!322 = !{!"long long", !302, i64 0}
!323 = !{!"long", !302, i64 0}
!324 = !{i8 0, i8 2}
!325 = !{}
!326 = !DILocation(line: 108, column: 3, scope: !319)
!327 = !DILocation(line: 108, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !318, file: !3, line: 108, column: 3)
!329 = !DILocation(line: 109, column: 27, scope: !295)
!330 = !DILocation(line: 109, column: 3, scope: !295)
!331 = !DILocation(line: 109, column: 7, scope: !295)
!332 = !DILocation(line: 109, column: 25, scope: !295)
!333 = !{!321, !310, i64 0}
!334 = !DILocation(line: 112, column: 21, scope: !295)
!335 = !DILocation(line: 112, column: 3, scope: !295)
!336 = !DILocation(line: 112, column: 7, scope: !295)
!337 = !DILocation(line: 112, column: 19, scope: !295)
!338 = !DILocation(line: 113, column: 22, scope: !295)
!339 = !DILocation(line: 113, column: 20, scope: !295)
!340 = !DILocation(line: 114, column: 3, scope: !295)
!341 = !DILocation(line: 114, column: 7, scope: !295)
!342 = !DILocation(line: 114, column: 25, scope: !295)
!343 = !{!321, !301, i64 9}
!344 = !DILocation(line: 115, column: 1, scope: !295)
!345 = !DISubprogram(name: "fprintf", scope: !346, file: !346, line: 350, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!347 = !DISubroutineType(types: !348)
!348 = !{!38, !349, !350, null}
!349 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!350 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!351 = !DISubprogram(name: "abort", scope: !352, file: !352, line: 598, type: !353, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!352 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!353 = !DISubroutineType(types: !354)
!354 = !{null}
!355 = distinct !DISubprogram(name: "xcalloc", scope: !3, file: !3, line: 54, type: !356, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{!17, !30, !30, !287, !34, !38}
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DILocalVariable(name: "nmemb", arg: 1, scope: !355, file: !3, line: 54, type: !30)
!360 = !DILocalVariable(name: "size", arg: 2, scope: !355, file: !3, line: 54, type: !30)
!361 = !DILocalVariable(name: "current_size", arg: 3, scope: !355, file: !3, line: 54, type: !287)
!362 = !DILocalVariable(name: "src_file", arg: 4, scope: !355, file: !3, line: 55, type: !34)
!363 = !DILocalVariable(name: "src_line", arg: 5, scope: !355, file: !3, line: 55, type: !38)
!364 = !DILocalVariable(name: "p", scope: !355, file: !3, line: 57, type: !17)
!365 = !{!323, !323, i64 0}
!366 = !DILocation(line: 54, column: 29, scope: !355)
!367 = !DILocation(line: 54, column: 43, scope: !355)
!368 = !DILocation(line: 54, column: 57, scope: !355)
!369 = !DILocation(line: 55, column: 34, scope: !355)
!370 = !{!371, !371, i64 0}
!371 = !{!"int", !302, i64 0}
!372 = !DILocation(line: 55, column: 48, scope: !355)
!373 = !DILocation(line: 57, column: 3, scope: !355)
!374 = !DILocation(line: 57, column: 9, scope: !355)
!375 = !DILocation(line: 58, column: 19, scope: !376)
!376 = distinct !DILexicalBlock(scope: !355, file: !3, line: 58, column: 7)
!377 = !DILocation(line: 58, column: 26, scope: !376)
!378 = !DILocation(line: 58, column: 12, scope: !376)
!379 = !DILocation(line: 58, column: 10, scope: !376)
!380 = !DILocation(line: 58, column: 33, scope: !376)
!381 = !DILocation(line: 58, column: 7, scope: !355)
!382 = !DILocation(line: 59, column: 13, scope: !383)
!383 = distinct !DILexicalBlock(scope: !376, file: !3, line: 58, column: 42)
!384 = !DILocation(line: 59, column: 65, scope: !383)
!385 = !DILocation(line: 59, column: 72, scope: !383)
!386 = !DILocation(line: 59, column: 5, scope: !383)
!387 = !DILocation(line: 60, column: 13, scope: !383)
!388 = !DILocation(line: 60, column: 62, scope: !383)
!389 = !DILocation(line: 61, column: 12, scope: !383)
!390 = !DILocation(line: 60, column: 5, scope: !383)
!391 = !DILocation(line: 62, column: 9, scope: !392)
!392 = distinct !DILexicalBlock(scope: !383, file: !3, line: 62, column: 9)
!393 = !DILocation(line: 62, column: 9, scope: !383)
!394 = !DILocation(line: 63, column: 15, scope: !392)
!395 = !DILocation(line: 63, column: 67, scope: !392)
!396 = !DILocation(line: 63, column: 7, scope: !392)
!397 = !DILocation(line: 64, column: 5, scope: !383)
!398 = !DILocation(line: 66, column: 10, scope: !355)
!399 = !DILocation(line: 67, column: 1, scope: !355)
!400 = !DILocation(line: 66, column: 3, scope: !355)
!401 = !DISubprogram(name: "gt_hashmap_new_no_ma", scope: !6, file: !6, line: 52, type: !402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = !DISubroutineType(types: !403)
!403 = !{!277, !404, !12, !12}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHashType", file: !6, line: 31, baseType: !5)
!405 = distinct !DISubprogram(name: "ma_info_free", scope: !3, file: !3, line: 99, type: !406, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !25}
!408 = !{!409}
!409 = !DILocalVariable(name: "mainfo", arg: 1, scope: !405, file: !3, line: 99, type: !25)
!410 = !DILocation(line: 99, column: 34, scope: !405)
!411 = !DILocation(line: 101, column: 8, scope: !405)
!412 = !DILocation(line: 101, column: 3, scope: !405)
!413 = !DILocation(line: 102, column: 1, scope: !405)
!414 = !DISubprogram(name: "gt_mutex_new", scope: !229, file: !229, line: 86, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubroutineType(types: !416)
!416 = !{!227}
!417 = distinct !DISubprogram(name: "gt_malloc_mem", scope: !3, file: !3, line: 136, type: !418, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!17, !30, !34, !38}
!420 = !{!421, !422, !423, !424, !425}
!421 = !DILocalVariable(name: "size", arg: 1, scope: !417, file: !3, line: 136, type: !30)
!422 = !DILocalVariable(name: "src_file", arg: 2, scope: !417, file: !3, line: 136, type: !34)
!423 = !DILocalVariable(name: "src_line", arg: 3, scope: !417, file: !3, line: 136, type: !38)
!424 = !DILocalVariable(name: "mainfo", scope: !417, file: !3, line: 138, type: !25)
!425 = !DILocalVariable(name: "mem", scope: !417, file: !3, line: 139, type: !17)
!426 = !DILocation(line: 136, column: 28, scope: !417)
!427 = !DILocation(line: 136, column: 46, scope: !417)
!428 = !DILocation(line: 136, column: 60, scope: !417)
!429 = !DILocation(line: 138, column: 3, scope: !417)
!430 = !DILocation(line: 138, column: 11, scope: !417)
!431 = !DILocation(line: 139, column: 3, scope: !417)
!432 = !DILocation(line: 139, column: 9, scope: !417)
!433 = !DILocation(line: 140, column: 3, scope: !417)
!434 = !DILocation(line: 140, column: 3, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 140, column: 3)
!436 = distinct !DILexicalBlock(scope: !417, file: !3, line: 140, column: 3)
!437 = !DILocation(line: 140, column: 3, scope: !436)
!438 = !DILocation(line: 140, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !3, line: 140, column: 3)
!440 = !DILocation(line: 141, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !417, file: !3, line: 141, column: 7)
!442 = !DILocation(line: 141, column: 11, scope: !441)
!443 = !DILocation(line: 141, column: 7, scope: !417)
!444 = !DILocation(line: 142, column: 5, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !3, line: 141, column: 24)
!446 = !DILocation(line: 143, column: 5, scope: !445)
!447 = !DILocation(line: 143, column: 9, scope: !445)
!448 = !DILocation(line: 143, column: 21, scope: !445)
!449 = !{!321, !322, i64 16}
!450 = !DILocation(line: 144, column: 38, scope: !445)
!451 = !DILocation(line: 144, column: 42, scope: !445)
!452 = !{!321, !323, i64 24}
!453 = !DILocation(line: 144, column: 56, scope: !445)
!454 = !DILocation(line: 144, column: 66, scope: !445)
!455 = !DILocation(line: 144, column: 14, scope: !445)
!456 = !DILocation(line: 144, column: 12, scope: !445)
!457 = !DILocation(line: 145, column: 20, scope: !445)
!458 = !DILocation(line: 145, column: 5, scope: !445)
!459 = !DILocation(line: 145, column: 13, scope: !445)
!460 = !DILocation(line: 145, column: 18, scope: !445)
!461 = !{!462, !323, i64 0}
!462 = !{!"", !323, i64 0, !310, i64 8, !371, i64 16}
!463 = !DILocation(line: 146, column: 24, scope: !445)
!464 = !DILocation(line: 146, column: 5, scope: !445)
!465 = !DILocation(line: 146, column: 13, scope: !445)
!466 = !DILocation(line: 146, column: 22, scope: !445)
!467 = !{!462, !310, i64 8}
!468 = !DILocation(line: 147, column: 24, scope: !445)
!469 = !DILocation(line: 147, column: 5, scope: !445)
!470 = !DILocation(line: 147, column: 13, scope: !445)
!471 = !DILocation(line: 147, column: 22, scope: !445)
!472 = !{!462, !371, i64 16}
!473 = !DILocation(line: 148, column: 19, scope: !445)
!474 = !DILocation(line: 148, column: 25, scope: !445)
!475 = !DILocation(line: 148, column: 29, scope: !445)
!476 = !DILocation(line: 148, column: 43, scope: !445)
!477 = !DILocation(line: 148, column: 53, scope: !445)
!478 = !DILocation(line: 148, column: 11, scope: !445)
!479 = !DILocation(line: 148, column: 9, scope: !445)
!480 = !DILocation(line: 149, column: 20, scope: !445)
!481 = !DILocation(line: 149, column: 24, scope: !445)
!482 = !DILocation(line: 149, column: 43, scope: !445)
!483 = !DILocation(line: 149, column: 48, scope: !445)
!484 = !DILocation(line: 149, column: 5, scope: !445)
!485 = !DILocation(line: 150, column: 14, scope: !445)
!486 = !DILocation(line: 150, column: 18, scope: !445)
!487 = !DILocation(line: 150, column: 5, scope: !445)
!488 = !DILocation(line: 151, column: 5, scope: !445)
!489 = !DILocation(line: 152, column: 12, scope: !445)
!490 = !DILocation(line: 152, column: 5, scope: !445)
!491 = !DILocation(line: 154, column: 18, scope: !417)
!492 = !DILocation(line: 154, column: 24, scope: !417)
!493 = !DILocation(line: 154, column: 28, scope: !417)
!494 = !DILocation(line: 154, column: 42, scope: !417)
!495 = !DILocation(line: 154, column: 52, scope: !417)
!496 = !DILocation(line: 154, column: 10, scope: !417)
!497 = !DILocation(line: 154, column: 3, scope: !417)
!498 = !DILocation(line: 155, column: 1, scope: !417)
!499 = !DISubprogram(name: "gt_mutex_lock_func", scope: !229, file: !229, line: 95, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !227}
!502 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 69, type: !503, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!17, !30, !287, !34, !38}
!505 = !{!506, !507, !508, !509, !510}
!506 = !DILocalVariable(name: "size", arg: 1, scope: !502, file: !3, line: 69, type: !30)
!507 = !DILocalVariable(name: "current_size", arg: 2, scope: !502, file: !3, line: 69, type: !287)
!508 = !DILocalVariable(name: "src_file", arg: 3, scope: !502, file: !3, line: 70, type: !34)
!509 = !DILocalVariable(name: "src_line", arg: 4, scope: !502, file: !3, line: 70, type: !38)
!510 = !DILocalVariable(name: "p", scope: !502, file: !3, line: 72, type: !17)
!511 = !DILocation(line: 69, column: 29, scope: !502)
!512 = !DILocation(line: 69, column: 43, scope: !502)
!513 = !DILocation(line: 70, column: 34, scope: !502)
!514 = !DILocation(line: 70, column: 48, scope: !502)
!515 = !DILocation(line: 72, column: 3, scope: !502)
!516 = !DILocation(line: 72, column: 9, scope: !502)
!517 = !DILocation(line: 73, column: 19, scope: !518)
!518 = distinct !DILexicalBlock(scope: !502, file: !3, line: 73, column: 7)
!519 = !DILocation(line: 73, column: 12, scope: !518)
!520 = !DILocation(line: 73, column: 10, scope: !518)
!521 = !DILocation(line: 73, column: 26, scope: !518)
!522 = !DILocation(line: 73, column: 7, scope: !502)
!523 = !DILocation(line: 74, column: 13, scope: !524)
!524 = distinct !DILexicalBlock(scope: !518, file: !3, line: 73, column: 35)
!525 = !DILocation(line: 74, column: 56, scope: !524)
!526 = !DILocation(line: 74, column: 5, scope: !524)
!527 = !DILocation(line: 75, column: 13, scope: !524)
!528 = !DILocation(line: 75, column: 62, scope: !524)
!529 = !DILocation(line: 76, column: 13, scope: !524)
!530 = !DILocation(line: 75, column: 5, scope: !524)
!531 = !DILocation(line: 77, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !524, file: !3, line: 77, column: 9)
!533 = !DILocation(line: 77, column: 9, scope: !524)
!534 = !DILocation(line: 78, column: 15, scope: !532)
!535 = !DILocation(line: 78, column: 67, scope: !532)
!536 = !DILocation(line: 78, column: 7, scope: !532)
!537 = !DILocation(line: 79, column: 5, scope: !524)
!538 = !DILocation(line: 81, column: 10, scope: !502)
!539 = !DILocation(line: 82, column: 1, scope: !502)
!540 = !DILocation(line: 81, column: 3, scope: !502)
!541 = !DISubprogram(name: "gt_hashmap_add", scope: !6, file: !6, line: 64, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !277, !17, !17}
!544 = distinct !DISubprogram(name: "add_size", scope: !3, file: !3, line: 117, type: !545, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !272, !287}
!547 = !{!548, !549}
!548 = !DILocalVariable(name: "ma", arg: 1, scope: !544, file: !3, line: 117, type: !272)
!549 = !DILocalVariable(name: "size", arg: 2, scope: !544, file: !3, line: 117, type: !287)
!550 = !DILocation(line: 117, column: 26, scope: !544)
!551 = !DILocation(line: 117, column: 38, scope: !544)
!552 = !DILocation(line: 119, column: 3, scope: !544)
!553 = !DILocation(line: 119, column: 3, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 119, column: 3)
!555 = distinct !DILexicalBlock(scope: !544, file: !3, line: 119, column: 3)
!556 = !DILocation(line: 119, column: 3, scope: !555)
!557 = !DILocation(line: 119, column: 3, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !3, line: 119, column: 3)
!559 = !DILocation(line: 120, column: 23, scope: !544)
!560 = !DILocation(line: 120, column: 3, scope: !544)
!561 = !DILocation(line: 120, column: 7, scope: !544)
!562 = !DILocation(line: 120, column: 20, scope: !544)
!563 = !DILocation(line: 121, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !544, file: !3, line: 121, column: 7)
!565 = !DILocation(line: 121, column: 11, scope: !564)
!566 = !DILocation(line: 121, column: 7, scope: !544)
!567 = !DILocation(line: 122, column: 22, scope: !564)
!568 = !DILocation(line: 122, column: 5, scope: !564)
!569 = !DILocation(line: 123, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !544, file: !3, line: 123, column: 7)
!571 = !DILocation(line: 123, column: 11, scope: !570)
!572 = !DILocation(line: 123, column: 26, scope: !570)
!573 = !DILocation(line: 123, column: 30, scope: !570)
!574 = !{!321, !323, i64 32}
!575 = !DILocation(line: 123, column: 24, scope: !570)
!576 = !DILocation(line: 123, column: 7, scope: !544)
!577 = !DILocation(line: 124, column: 20, scope: !570)
!578 = !DILocation(line: 124, column: 24, scope: !570)
!579 = !DILocation(line: 124, column: 5, scope: !570)
!580 = !DILocation(line: 124, column: 9, scope: !570)
!581 = !DILocation(line: 124, column: 18, scope: !570)
!582 = !DILocation(line: 125, column: 1, scope: !544)
!583 = !DISubprogram(name: "gt_mutex_unlock_func", scope: !229, file: !229, line: 105, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = distinct !DISubprogram(name: "gt_calloc_mem", scope: !3, file: !3, line: 157, type: !585, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!17, !30, !30, !34, !38}
!587 = !{!588, !589, !590, !591, !592, !593}
!588 = !DILocalVariable(name: "nmemb", arg: 1, scope: !584, file: !3, line: 157, type: !30)
!589 = !DILocalVariable(name: "size", arg: 2, scope: !584, file: !3, line: 157, type: !30)
!590 = !DILocalVariable(name: "src_file", arg: 3, scope: !584, file: !3, line: 157, type: !34)
!591 = !DILocalVariable(name: "src_line", arg: 4, scope: !584, file: !3, line: 158, type: !38)
!592 = !DILocalVariable(name: "mainfo", scope: !584, file: !3, line: 160, type: !25)
!593 = !DILocalVariable(name: "mem", scope: !584, file: !3, line: 161, type: !17)
!594 = !DILocation(line: 157, column: 28, scope: !584)
!595 = !DILocation(line: 157, column: 42, scope: !584)
!596 = !DILocation(line: 157, column: 60, scope: !584)
!597 = !DILocation(line: 158, column: 25, scope: !584)
!598 = !DILocation(line: 160, column: 3, scope: !584)
!599 = !DILocation(line: 160, column: 11, scope: !584)
!600 = !DILocation(line: 161, column: 3, scope: !584)
!601 = !DILocation(line: 161, column: 9, scope: !584)
!602 = !DILocation(line: 162, column: 3, scope: !584)
!603 = !DILocation(line: 162, column: 3, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 162, column: 3)
!605 = distinct !DILexicalBlock(scope: !584, file: !3, line: 162, column: 3)
!606 = !DILocation(line: 162, column: 3, scope: !605)
!607 = !DILocation(line: 162, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !604, file: !3, line: 162, column: 3)
!609 = !DILocation(line: 163, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !584, file: !3, line: 163, column: 7)
!611 = !DILocation(line: 163, column: 11, scope: !610)
!612 = !DILocation(line: 163, column: 7, scope: !584)
!613 = !DILocation(line: 164, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !3, line: 163, column: 24)
!615 = !DILocation(line: 165, column: 5, scope: !614)
!616 = !DILocation(line: 165, column: 9, scope: !614)
!617 = !DILocation(line: 165, column: 21, scope: !614)
!618 = !DILocation(line: 166, column: 38, scope: !614)
!619 = !DILocation(line: 166, column: 42, scope: !614)
!620 = !DILocation(line: 166, column: 56, scope: !614)
!621 = !DILocation(line: 166, column: 66, scope: !614)
!622 = !DILocation(line: 166, column: 14, scope: !614)
!623 = !DILocation(line: 166, column: 12, scope: !614)
!624 = !DILocation(line: 167, column: 20, scope: !614)
!625 = !DILocation(line: 167, column: 28, scope: !614)
!626 = !DILocation(line: 167, column: 26, scope: !614)
!627 = !DILocation(line: 167, column: 5, scope: !614)
!628 = !DILocation(line: 167, column: 13, scope: !614)
!629 = !DILocation(line: 167, column: 18, scope: !614)
!630 = !DILocation(line: 168, column: 24, scope: !614)
!631 = !DILocation(line: 168, column: 5, scope: !614)
!632 = !DILocation(line: 168, column: 13, scope: !614)
!633 = !DILocation(line: 168, column: 22, scope: !614)
!634 = !DILocation(line: 169, column: 24, scope: !614)
!635 = !DILocation(line: 169, column: 5, scope: !614)
!636 = !DILocation(line: 169, column: 13, scope: !614)
!637 = !DILocation(line: 169, column: 22, scope: !614)
!638 = !DILocation(line: 170, column: 19, scope: !614)
!639 = !DILocation(line: 170, column: 26, scope: !614)
!640 = !DILocation(line: 170, column: 32, scope: !614)
!641 = !DILocation(line: 170, column: 36, scope: !614)
!642 = !DILocation(line: 170, column: 50, scope: !614)
!643 = !DILocation(line: 170, column: 60, scope: !614)
!644 = !DILocation(line: 170, column: 11, scope: !614)
!645 = !DILocation(line: 170, column: 9, scope: !614)
!646 = !DILocation(line: 171, column: 20, scope: !614)
!647 = !DILocation(line: 171, column: 24, scope: !614)
!648 = !DILocation(line: 171, column: 43, scope: !614)
!649 = !DILocation(line: 171, column: 48, scope: !614)
!650 = !DILocation(line: 171, column: 5, scope: !614)
!651 = !DILocation(line: 172, column: 14, scope: !614)
!652 = !DILocation(line: 172, column: 18, scope: !614)
!653 = !DILocation(line: 172, column: 26, scope: !614)
!654 = !DILocation(line: 172, column: 24, scope: !614)
!655 = !DILocation(line: 172, column: 5, scope: !614)
!656 = !DILocation(line: 173, column: 5, scope: !614)
!657 = !DILocation(line: 174, column: 12, scope: !614)
!658 = !DILocation(line: 174, column: 5, scope: !614)
!659 = !DILocation(line: 176, column: 18, scope: !584)
!660 = !DILocation(line: 176, column: 25, scope: !584)
!661 = !DILocation(line: 176, column: 31, scope: !584)
!662 = !DILocation(line: 176, column: 35, scope: !584)
!663 = !DILocation(line: 176, column: 49, scope: !584)
!664 = !DILocation(line: 176, column: 59, scope: !584)
!665 = !DILocation(line: 176, column: 10, scope: !584)
!666 = !DILocation(line: 176, column: 3, scope: !584)
!667 = !DILocation(line: 177, column: 1, scope: !584)
!668 = distinct !DISubprogram(name: "gt_realloc_mem", scope: !3, file: !3, line: 179, type: !669, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!17, !17, !30, !34, !38}
!671 = !{!672, !673, !674, !675, !676, !677}
!672 = !DILocalVariable(name: "ptr", arg: 1, scope: !668, file: !3, line: 179, type: !17)
!673 = !DILocalVariable(name: "size", arg: 2, scope: !668, file: !3, line: 179, type: !30)
!674 = !DILocalVariable(name: "src_file", arg: 3, scope: !668, file: !3, line: 179, type: !34)
!675 = !DILocalVariable(name: "src_line", arg: 4, scope: !668, file: !3, line: 179, type: !38)
!676 = !DILocalVariable(name: "mainfo", scope: !668, file: !3, line: 181, type: !25)
!677 = !DILocalVariable(name: "mem", scope: !668, file: !3, line: 182, type: !17)
!678 = !DILocation(line: 179, column: 28, scope: !668)
!679 = !DILocation(line: 179, column: 40, scope: !668)
!680 = !DILocation(line: 179, column: 58, scope: !668)
!681 = !DILocation(line: 179, column: 72, scope: !668)
!682 = !DILocation(line: 181, column: 3, scope: !668)
!683 = !DILocation(line: 181, column: 11, scope: !668)
!684 = !DILocation(line: 182, column: 3, scope: !668)
!685 = !DILocation(line: 182, column: 9, scope: !668)
!686 = !DILocation(line: 183, column: 3, scope: !668)
!687 = !DILocation(line: 183, column: 3, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 183, column: 3)
!689 = distinct !DILexicalBlock(scope: !668, file: !3, line: 183, column: 3)
!690 = !DILocation(line: 183, column: 3, scope: !689)
!691 = !DILocation(line: 183, column: 3, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !3, line: 183, column: 3)
!693 = !DILocation(line: 184, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !668, file: !3, line: 184, column: 7)
!695 = !DILocation(line: 184, column: 11, scope: !694)
!696 = !DILocation(line: 184, column: 7, scope: !668)
!697 = !DILocation(line: 185, column: 5, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !3, line: 184, column: 24)
!699 = !DILocation(line: 186, column: 5, scope: !698)
!700 = !DILocation(line: 186, column: 9, scope: !698)
!701 = !DILocation(line: 186, column: 21, scope: !698)
!702 = !DILocation(line: 187, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !3, line: 187, column: 9)
!704 = !DILocation(line: 187, column: 9, scope: !698)
!705 = !DILocation(line: 188, column: 31, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 187, column: 14)
!707 = !DILocation(line: 188, column: 35, scope: !706)
!708 = !DILocation(line: 188, column: 54, scope: !706)
!709 = !DILocation(line: 188, column: 16, scope: !706)
!710 = !DILocation(line: 188, column: 14, scope: !706)
!711 = !DILocation(line: 189, column: 7, scope: !706)
!712 = !DILocation(line: 189, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 189, column: 7)
!714 = distinct !DILexicalBlock(scope: !706, file: !3, line: 189, column: 7)
!715 = !DILocation(line: 189, column: 7, scope: !714)
!716 = !DILocation(line: 189, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !3, line: 189, column: 7)
!718 = !DILocation(line: 190, column: 21, scope: !706)
!719 = !DILocation(line: 190, column: 25, scope: !706)
!720 = !DILocation(line: 190, column: 33, scope: !706)
!721 = !DILocation(line: 190, column: 7, scope: !706)
!722 = !DILocation(line: 191, column: 25, scope: !706)
!723 = !DILocation(line: 191, column: 29, scope: !706)
!724 = !DILocation(line: 191, column: 48, scope: !706)
!725 = !DILocation(line: 191, column: 7, scope: !706)
!726 = !DILocation(line: 192, column: 5, scope: !706)
!727 = !DILocation(line: 193, column: 38, scope: !698)
!728 = !DILocation(line: 193, column: 42, scope: !698)
!729 = !DILocation(line: 193, column: 56, scope: !698)
!730 = !DILocation(line: 193, column: 66, scope: !698)
!731 = !DILocation(line: 193, column: 14, scope: !698)
!732 = !DILocation(line: 193, column: 12, scope: !698)
!733 = !DILocation(line: 194, column: 20, scope: !698)
!734 = !DILocation(line: 194, column: 5, scope: !698)
!735 = !DILocation(line: 194, column: 13, scope: !698)
!736 = !DILocation(line: 194, column: 18, scope: !698)
!737 = !DILocation(line: 195, column: 24, scope: !698)
!738 = !DILocation(line: 195, column: 5, scope: !698)
!739 = !DILocation(line: 195, column: 13, scope: !698)
!740 = !DILocation(line: 195, column: 22, scope: !698)
!741 = !DILocation(line: 196, column: 24, scope: !698)
!742 = !DILocation(line: 196, column: 5, scope: !698)
!743 = !DILocation(line: 196, column: 13, scope: !698)
!744 = !DILocation(line: 196, column: 22, scope: !698)
!745 = !DILocation(line: 197, column: 20, scope: !698)
!746 = !DILocation(line: 197, column: 25, scope: !698)
!747 = !DILocation(line: 197, column: 31, scope: !698)
!748 = !DILocation(line: 197, column: 35, scope: !698)
!749 = !DILocation(line: 197, column: 49, scope: !698)
!750 = !DILocation(line: 197, column: 59, scope: !698)
!751 = !DILocation(line: 197, column: 11, scope: !698)
!752 = !DILocation(line: 197, column: 9, scope: !698)
!753 = !DILocation(line: 198, column: 20, scope: !698)
!754 = !DILocation(line: 198, column: 24, scope: !698)
!755 = !DILocation(line: 198, column: 43, scope: !698)
!756 = !DILocation(line: 198, column: 48, scope: !698)
!757 = !DILocation(line: 198, column: 5, scope: !698)
!758 = !DILocation(line: 199, column: 14, scope: !698)
!759 = !DILocation(line: 199, column: 18, scope: !698)
!760 = !DILocation(line: 199, column: 5, scope: !698)
!761 = !DILocation(line: 200, column: 5, scope: !698)
!762 = !DILocation(line: 201, column: 12, scope: !698)
!763 = !DILocation(line: 201, column: 5, scope: !698)
!764 = !DILocation(line: 203, column: 19, scope: !668)
!765 = !DILocation(line: 203, column: 24, scope: !668)
!766 = !DILocation(line: 203, column: 30, scope: !668)
!767 = !DILocation(line: 203, column: 34, scope: !668)
!768 = !DILocation(line: 203, column: 48, scope: !668)
!769 = !DILocation(line: 203, column: 58, scope: !668)
!770 = !DILocation(line: 203, column: 10, scope: !668)
!771 = !DILocation(line: 203, column: 3, scope: !668)
!772 = !DILocation(line: 204, column: 1, scope: !668)
!773 = !DISubprogram(name: "gt_hashmap_get", scope: !6, file: !6, line: 59, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!774 = !DISubroutineType(types: !775)
!775 = !{!17, !277, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!778 = distinct !DISubprogram(name: "subtract_size", scope: !3, file: !3, line: 127, type: !545, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !779)
!779 = !{!780, !781}
!780 = !DILocalVariable(name: "ma", arg: 1, scope: !778, file: !3, line: 127, type: !272)
!781 = !DILocalVariable(name: "size", arg: 2, scope: !778, file: !3, line: 127, type: !287)
!782 = !DILocation(line: 127, column: 31, scope: !778)
!783 = !DILocation(line: 127, column: 43, scope: !778)
!784 = !DILocation(line: 129, column: 3, scope: !778)
!785 = !DILocation(line: 129, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 129, column: 3)
!787 = distinct !DILexicalBlock(scope: !778, file: !3, line: 129, column: 3)
!788 = !DILocation(line: 129, column: 3, scope: !787)
!789 = !DILocation(line: 129, column: 3, scope: !790)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 129, column: 3)
!791 = !DILocation(line: 130, column: 3, scope: !778)
!792 = !DILocation(line: 130, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 130, column: 3)
!794 = distinct !DILexicalBlock(scope: !778, file: !3, line: 130, column: 3)
!795 = !DILocation(line: 130, column: 3, scope: !794)
!796 = !DILocation(line: 130, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !3, line: 130, column: 3)
!798 = !DILocation(line: 131, column: 23, scope: !778)
!799 = !DILocation(line: 131, column: 3, scope: !778)
!800 = !DILocation(line: 131, column: 7, scope: !778)
!801 = !DILocation(line: 131, column: 20, scope: !778)
!802 = !DILocation(line: 132, column: 7, scope: !803)
!803 = distinct !DILexicalBlock(scope: !778, file: !3, line: 132, column: 7)
!804 = !DILocation(line: 132, column: 11, scope: !803)
!805 = !DILocation(line: 132, column: 7, scope: !778)
!806 = !DILocation(line: 133, column: 23, scope: !803)
!807 = !DILocation(line: 133, column: 5, scope: !803)
!808 = !DILocation(line: 134, column: 1, scope: !778)
!809 = !DISubprogram(name: "gt_hashmap_remove", scope: !6, file: !6, line: 66, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !277, !776}
!812 = distinct !DISubprogram(name: "xrealloc", scope: !3, file: !3, line: 84, type: !813, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!17, !17, !30, !287, !34, !38}
!815 = !{!816, !817, !818, !819, !820, !821}
!816 = !DILocalVariable(name: "ptr", arg: 1, scope: !812, file: !3, line: 84, type: !17)
!817 = !DILocalVariable(name: "size", arg: 2, scope: !812, file: !3, line: 84, type: !30)
!818 = !DILocalVariable(name: "current_size", arg: 3, scope: !812, file: !3, line: 84, type: !287)
!819 = !DILocalVariable(name: "src_file", arg: 4, scope: !812, file: !3, line: 85, type: !34)
!820 = !DILocalVariable(name: "src_line", arg: 5, scope: !812, file: !3, line: 85, type: !38)
!821 = !DILocalVariable(name: "p", scope: !812, file: !3, line: 87, type: !17)
!822 = !DILocation(line: 84, column: 29, scope: !812)
!823 = !DILocation(line: 84, column: 41, scope: !812)
!824 = !DILocation(line: 84, column: 55, scope: !812)
!825 = !DILocation(line: 85, column: 35, scope: !812)
!826 = !DILocation(line: 85, column: 49, scope: !812)
!827 = !DILocation(line: 87, column: 3, scope: !812)
!828 = !DILocation(line: 87, column: 9, scope: !812)
!829 = !DILocation(line: 88, column: 20, scope: !830)
!830 = distinct !DILexicalBlock(scope: !812, file: !3, line: 88, column: 7)
!831 = !DILocation(line: 88, column: 25, scope: !830)
!832 = !DILocation(line: 88, column: 12, scope: !830)
!833 = !DILocation(line: 88, column: 10, scope: !830)
!834 = !DILocation(line: 88, column: 32, scope: !830)
!835 = !DILocation(line: 88, column: 7, scope: !812)
!836 = !DILocation(line: 89, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !3, line: 88, column: 41)
!838 = !DILocation(line: 89, column: 57, scope: !837)
!839 = !DILocation(line: 89, column: 5, scope: !837)
!840 = !DILocation(line: 90, column: 13, scope: !837)
!841 = !DILocation(line: 90, column: 62, scope: !837)
!842 = !DILocation(line: 91, column: 13, scope: !837)
!843 = !DILocation(line: 90, column: 5, scope: !837)
!844 = !DILocation(line: 92, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !837, file: !3, line: 92, column: 9)
!846 = !DILocation(line: 92, column: 9, scope: !837)
!847 = !DILocation(line: 93, column: 15, scope: !845)
!848 = !DILocation(line: 93, column: 67, scope: !845)
!849 = !DILocation(line: 93, column: 7, scope: !845)
!850 = !DILocation(line: 94, column: 5, scope: !837)
!851 = !DILocation(line: 96, column: 10, scope: !812)
!852 = !DILocation(line: 97, column: 1, scope: !812)
!853 = !DILocation(line: 96, column: 3, scope: !812)
!854 = distinct !DISubprogram(name: "gt_free_mem", scope: !3, file: !3, line: 206, type: !855, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !17, !34, !38}
!857 = !{!858, !859, !860, !861}
!858 = !DILocalVariable(name: "ptr", arg: 1, scope: !854, file: !3, line: 206, type: !17)
!859 = !DILocalVariable(name: "src_file", arg: 2, scope: !854, file: !3, line: 206, type: !34)
!860 = !DILocalVariable(name: "src_line", arg: 3, scope: !854, file: !3, line: 207, type: !38)
!861 = !DILocalVariable(name: "mainfo", scope: !854, file: !3, line: 209, type: !25)
!862 = !DILocation(line: 206, column: 24, scope: !854)
!863 = !DILocation(line: 206, column: 51, scope: !854)
!864 = !DILocation(line: 207, column: 32, scope: !854)
!865 = !DILocation(line: 209, column: 3, scope: !854)
!866 = !DILocation(line: 209, column: 11, scope: !854)
!867 = !DILocation(line: 210, column: 3, scope: !854)
!868 = !DILocation(line: 210, column: 3, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 210, column: 3)
!870 = distinct !DILexicalBlock(scope: !854, file: !3, line: 210, column: 3)
!871 = !DILocation(line: 210, column: 3, scope: !870)
!872 = !DILocation(line: 210, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !3, line: 210, column: 3)
!874 = !DILocation(line: 211, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !854, file: !3, line: 211, column: 7)
!876 = !DILocation(line: 211, column: 11, scope: !875)
!877 = !DILocation(line: 211, column: 7, scope: !854)
!878 = !DILocation(line: 211, column: 20, scope: !875)
!879 = !DILocation(line: 212, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !854, file: !3, line: 212, column: 7)
!881 = !DILocation(line: 212, column: 11, scope: !880)
!882 = !DILocation(line: 212, column: 7, scope: !854)
!883 = !DILocation(line: 213, column: 5, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !3, line: 212, column: 24)
!885 = !DILocation(line: 215, column: 25, scope: !886)
!886 = distinct !DILexicalBlock(scope: !884, file: !3, line: 215, column: 9)
!887 = !DILocation(line: 215, column: 29, scope: !886)
!888 = !DILocation(line: 215, column: 48, scope: !886)
!889 = !DILocation(line: 215, column: 10, scope: !886)
!890 = !DILocation(line: 215, column: 9, scope: !884)
!891 = !DILocation(line: 216, column: 15, scope: !892)
!892 = distinct !DILexicalBlock(scope: !886, file: !3, line: 215, column: 54)
!893 = !DILocation(line: 217, column: 27, scope: !892)
!894 = !DILocation(line: 217, column: 37, scope: !892)
!895 = !DILocation(line: 216, column: 7, scope: !892)
!896 = !DILocation(line: 218, column: 7, scope: !892)
!897 = !DILocation(line: 221, column: 29, scope: !884)
!898 = !DILocation(line: 221, column: 33, scope: !884)
!899 = !DILocation(line: 221, column: 52, scope: !884)
!900 = !DILocation(line: 221, column: 14, scope: !884)
!901 = !DILocation(line: 221, column: 12, scope: !884)
!902 = !DILocation(line: 222, column: 5, scope: !884)
!903 = !DILocation(line: 222, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 222, column: 5)
!905 = distinct !DILexicalBlock(scope: !884, file: !3, line: 222, column: 5)
!906 = !DILocation(line: 222, column: 5, scope: !905)
!907 = !DILocation(line: 222, column: 5, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 222, column: 5)
!909 = !DILocation(line: 223, column: 19, scope: !884)
!910 = !DILocation(line: 223, column: 23, scope: !884)
!911 = !DILocation(line: 223, column: 31, scope: !884)
!912 = !DILocation(line: 223, column: 5, scope: !884)
!913 = !DILocation(line: 224, column: 23, scope: !884)
!914 = !DILocation(line: 224, column: 27, scope: !884)
!915 = !DILocation(line: 224, column: 46, scope: !884)
!916 = !DILocation(line: 224, column: 5, scope: !884)
!917 = !DILocation(line: 225, column: 10, scope: !884)
!918 = !DILocation(line: 225, column: 5, scope: !884)
!919 = !DILocation(line: 226, column: 5, scope: !884)
!920 = !DILocation(line: 227, column: 3, scope: !884)
!921 = !DILocation(line: 229, column: 10, scope: !922)
!922 = distinct !DILexicalBlock(scope: !880, file: !3, line: 228, column: 8)
!923 = !DILocation(line: 229, column: 5, scope: !922)
!924 = !DILocation(line: 231, column: 1, scope: !854)
!925 = !DISubprogram(name: "exit", scope: !352, file: !352, line: 624, type: !926, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !38}
!928 = !DISubprogram(name: "free", scope: !352, file: !352, line: 555, type: !15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = distinct !DISubprogram(name: "gt_free_func", scope: !3, file: !3, line: 233, type: !15, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !930)
!930 = !{!931}
!931 = !DILocalVariable(name: "ptr", arg: 1, scope: !929, file: !3, line: 233, type: !17)
!932 = !DILocation(line: 233, column: 25, scope: !929)
!933 = !DILocation(line: 235, column: 8, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !3, line: 235, column: 7)
!935 = !DILocation(line: 235, column: 7, scope: !929)
!936 = !DILocation(line: 235, column: 13, scope: !934)
!937 = !DILocation(line: 236, column: 3, scope: !929)
!938 = !DILocation(line: 237, column: 1, scope: !929)
!939 = distinct !DISubprogram(name: "gt_ma_enable_global_spacepeak", scope: !3, file: !3, line: 255, type: !353, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!940 = !DILocation(line: 257, column: 3, scope: !939)
!941 = !DILocation(line: 257, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 257, column: 3)
!943 = distinct !DILexicalBlock(scope: !939, file: !3, line: 257, column: 3)
!944 = !DILocation(line: 257, column: 3, scope: !943)
!945 = !DILocation(line: 257, column: 3, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !3, line: 257, column: 3)
!947 = !DILocation(line: 258, column: 3, scope: !939)
!948 = !DILocation(line: 258, column: 7, scope: !939)
!949 = !DILocation(line: 258, column: 25, scope: !939)
!950 = !DILocation(line: 259, column: 1, scope: !939)
!951 = distinct !DISubprogram(name: "gt_ma_disable_global_spacepeak", scope: !3, file: !3, line: 261, type: !353, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!952 = !DILocation(line: 263, column: 3, scope: !951)
!953 = !DILocation(line: 263, column: 3, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 263, column: 3)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 263, column: 3)
!956 = !DILocation(line: 263, column: 3, scope: !955)
!957 = !DILocation(line: 263, column: 3, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !3, line: 263, column: 3)
!959 = !DILocation(line: 264, column: 3, scope: !951)
!960 = !DILocation(line: 264, column: 7, scope: !951)
!961 = !DILocation(line: 264, column: 25, scope: !951)
!962 = !DILocation(line: 265, column: 1, scope: !951)
!963 = distinct !DISubprogram(name: "gt_ma_get_space_peak", scope: !3, file: !3, line: 267, type: !964, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!964 = !DISubroutineType(types: !965)
!965 = !{!287}
!966 = !DILocation(line: 269, column: 3, scope: !963)
!967 = !DILocation(line: 269, column: 3, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 269, column: 3)
!969 = distinct !DILexicalBlock(scope: !963, file: !3, line: 269, column: 3)
!970 = !DILocation(line: 269, column: 3, scope: !969)
!971 = !DILocation(line: 269, column: 3, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !3, line: 269, column: 3)
!973 = !DILocation(line: 270, column: 10, scope: !963)
!974 = !DILocation(line: 270, column: 14, scope: !963)
!975 = !DILocation(line: 270, column: 3, scope: !963)
!976 = distinct !DISubprogram(name: "gt_ma_get_space_current", scope: !3, file: !3, line: 273, type: !964, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!977 = !DILocation(line: 275, column: 3, scope: !976)
!978 = !DILocation(line: 275, column: 3, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 275, column: 3)
!980 = distinct !DILexicalBlock(scope: !976, file: !3, line: 275, column: 3)
!981 = !DILocation(line: 275, column: 3, scope: !980)
!982 = !DILocation(line: 275, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !3, line: 275, column: 3)
!984 = !DILocation(line: 276, column: 10, scope: !976)
!985 = !DILocation(line: 276, column: 14, scope: !976)
!986 = !DILocation(line: 276, column: 3, scope: !976)
!987 = distinct !DISubprogram(name: "gt_ma_show_space_peak", scope: !3, file: !3, line: 279, type: !988, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !39}
!990 = !{!991}
!991 = !DILocalVariable(name: "fp", arg: 1, scope: !987, file: !3, line: 279, type: !39)
!992 = !DILocation(line: 279, column: 34, scope: !987)
!993 = !DILocation(line: 281, column: 3, scope: !987)
!994 = !DILocation(line: 281, column: 3, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 281, column: 3)
!996 = distinct !DILexicalBlock(scope: !987, file: !3, line: 281, column: 3)
!997 = !DILocation(line: 281, column: 3, scope: !996)
!998 = !DILocation(line: 281, column: 3, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !3, line: 281, column: 3)
!1000 = !DILocation(line: 282, column: 11, scope: !987)
!1001 = !DILocation(line: 283, column: 11, scope: !987)
!1002 = !DILocation(line: 284, column: 11, scope: !987)
!1003 = !DILocation(line: 284, column: 15, scope: !987)
!1004 = !DILocation(line: 282, column: 3, scope: !987)
!1005 = !DILocation(line: 285, column: 1, scope: !987)
!1006 = distinct !DISubprogram(name: "gt_ma_check_space_leak", scope: !3, file: !3, line: 287, type: !1007, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!38}
!1009 = !{!1010, !1011}
!1010 = !DILocalVariable(name: "info", scope: !1006, file: !3, line: 289, type: !20)
!1011 = !DILocalVariable(name: "had_err", scope: !1006, file: !3, line: 290, type: !38)
!1012 = !DILocation(line: 289, column: 3, scope: !1006)
!1013 = !DILocation(line: 289, column: 22, scope: !1006)
!1014 = !DILocation(line: 290, column: 3, scope: !1006)
!1015 = !DILocation(line: 290, column: 17, scope: !1006)
!1016 = !DILocation(line: 291, column: 3, scope: !1006)
!1017 = !DILocation(line: 291, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 291, column: 3)
!1019 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 291, column: 3)
!1020 = !DILocation(line: 291, column: 3, scope: !1019)
!1021 = !DILocation(line: 291, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 291, column: 3)
!1023 = !DILocation(line: 292, column: 3, scope: !1006)
!1024 = !DILocation(line: 293, column: 8, scope: !1006)
!1025 = !DILocation(line: 293, column: 17, scope: !1006)
!1026 = !{!1027, !301, i64 0}
!1027 = !{!"", !301, i64 0}
!1028 = !DILocation(line: 294, column: 32, scope: !1006)
!1029 = !DILocation(line: 294, column: 36, scope: !1006)
!1030 = !DILocation(line: 294, column: 13, scope: !1006)
!1031 = !DILocation(line: 294, column: 11, scope: !1006)
!1032 = !DILocation(line: 296, column: 3, scope: !1006)
!1033 = !DILocation(line: 296, column: 3, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 296, column: 3)
!1035 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 296, column: 3)
!1036 = !DILocation(line: 296, column: 3, scope: !1035)
!1037 = !DILocation(line: 296, column: 3, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 296, column: 3)
!1039 = !DILocation(line: 297, column: 3, scope: !1006)
!1040 = !DILocation(line: 298, column: 12, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 298, column: 7)
!1042 = !DILocation(line: 298, column: 7, scope: !1006)
!1043 = !DILocation(line: 299, column: 5, scope: !1041)
!1044 = !DILocation(line: 300, column: 3, scope: !1006)
!1045 = !DILocation(line: 301, column: 1, scope: !1006)
!1046 = !DISubprogram(name: "gt_hashmap_foreach", scope: !6, file: !6, line: 74, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!38, !277, !1049, !17, !1053}
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHashmapVisitFunc", file: !6, line: 38, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!38, !17, !17, !17, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !1055, line: 44, baseType: !1056)
!1055 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !1055, line: 44, flags: DIFlagFwdDecl)
!1057 = distinct !DISubprogram(name: "check_space_leak", scope: !3, file: !3, line: 239, type: !1051, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064}
!1059 = !DILocalVariable(name: "key", arg: 1, scope: !1057, file: !3, line: 239, type: !17)
!1060 = !DILocalVariable(name: "value", arg: 2, scope: !1057, file: !3, line: 239, type: !17)
!1061 = !DILocalVariable(name: "data", arg: 3, scope: !1057, file: !3, line: 239, type: !17)
!1062 = !DILocalVariable(name: "err", arg: 4, scope: !1057, file: !3, line: 240, type: !1053)
!1063 = !DILocalVariable(name: "info", scope: !1057, file: !3, line: 242, type: !19)
!1064 = !DILocalVariable(name: "mainfo", scope: !1057, file: !3, line: 243, type: !25)
!1065 = !DILocation(line: 239, column: 45, scope: !1057)
!1066 = !DILocation(line: 239, column: 56, scope: !1057)
!1067 = !DILocation(line: 239, column: 69, scope: !1057)
!1068 = !DILocation(line: 240, column: 48, scope: !1057)
!1069 = !DILocation(line: 242, column: 3, scope: !1057)
!1070 = !DILocation(line: 242, column: 23, scope: !1057)
!1071 = !DILocation(line: 242, column: 52, scope: !1057)
!1072 = !DILocation(line: 243, column: 3, scope: !1057)
!1073 = !DILocation(line: 243, column: 11, scope: !1057)
!1074 = !DILocation(line: 243, column: 30, scope: !1057)
!1075 = !DILocation(line: 244, column: 3, scope: !1057)
!1076 = !DILocation(line: 244, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 244, column: 3)
!1078 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 244, column: 3)
!1079 = !DILocation(line: 244, column: 3, scope: !1078)
!1080 = !DILocation(line: 244, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 244, column: 3)
!1082 = !DILocation(line: 245, column: 3, scope: !1057)
!1083 = !DILocation(line: 245, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 245, column: 3)
!1085 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 245, column: 3)
!1086 = !DILocation(line: 245, column: 3, scope: !1085)
!1087 = !DILocation(line: 245, column: 3, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 245, column: 3)
!1089 = !DILocation(line: 247, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 247, column: 7)
!1091 = !DILocation(line: 247, column: 14, scope: !1090)
!1092 = !DILocation(line: 247, column: 7, scope: !1057)
!1093 = !DILocation(line: 248, column: 13, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 247, column: 24)
!1095 = !DILocation(line: 249, column: 31, scope: !1094)
!1096 = !DILocation(line: 249, column: 39, scope: !1094)
!1097 = !DILocation(line: 249, column: 45, scope: !1094)
!1098 = !DILocation(line: 249, column: 53, scope: !1094)
!1099 = !DILocation(line: 249, column: 63, scope: !1094)
!1100 = !DILocation(line: 249, column: 71, scope: !1094)
!1101 = !DILocation(line: 248, column: 5, scope: !1094)
!1102 = !DILocation(line: 250, column: 5, scope: !1094)
!1103 = !DILocation(line: 250, column: 11, scope: !1094)
!1104 = !DILocation(line: 250, column: 20, scope: !1094)
!1105 = !DILocation(line: 251, column: 3, scope: !1094)
!1106 = !DILocation(line: 253, column: 1, scope: !1057)
!1107 = !DILocation(line: 252, column: 3, scope: !1057)
!1108 = distinct !DISubprogram(name: "gt_ma_bookkeeping_enabled", scope: !3, file: !3, line: 303, type: !1109, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!24}
!1111 = !DILocation(line: 305, column: 3, scope: !1108)
!1112 = !DILocation(line: 305, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 305, column: 3)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 305, column: 3)
!1115 = !DILocation(line: 305, column: 3, scope: !1114)
!1116 = !DILocation(line: 305, column: 3, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 305, column: 3)
!1118 = !DILocation(line: 306, column: 10, scope: !1108)
!1119 = !DILocation(line: 306, column: 14, scope: !1108)
!1120 = !DILocation(line: 306, column: 3, scope: !1108)
!1121 = distinct !DISubprogram(name: "gt_ma_show_allocations", scope: !3, file: !3, line: 321, type: !988, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1122 = !{!1123, !1124}
!1123 = !DILocalVariable(name: "outfp", arg: 1, scope: !1121, file: !3, line: 321, type: !39)
!1124 = !DILocalVariable(name: "had_err", scope: !1121, file: !3, line: 323, type: !38)
!1125 = !DILocation(line: 321, column: 35, scope: !1121)
!1126 = !DILocation(line: 323, column: 3, scope: !1121)
!1127 = !DILocation(line: 323, column: 17, scope: !1121)
!1128 = !DILocation(line: 324, column: 3, scope: !1121)
!1129 = !DILocation(line: 324, column: 3, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 324, column: 3)
!1131 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 324, column: 3)
!1132 = !DILocation(line: 324, column: 3, scope: !1131)
!1133 = !DILocation(line: 324, column: 3, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 324, column: 3)
!1135 = !DILocation(line: 325, column: 3, scope: !1121)
!1136 = !DILocation(line: 326, column: 32, scope: !1121)
!1137 = !DILocation(line: 326, column: 36, scope: !1121)
!1138 = !DILocation(line: 327, column: 32, scope: !1121)
!1139 = !DILocation(line: 326, column: 13, scope: !1121)
!1140 = !DILocation(line: 326, column: 11, scope: !1121)
!1141 = !DILocation(line: 328, column: 3, scope: !1121)
!1142 = !DILocation(line: 329, column: 3, scope: !1121)
!1143 = !DILocation(line: 329, column: 3, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 329, column: 3)
!1145 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 329, column: 3)
!1146 = !DILocation(line: 329, column: 3, scope: !1145)
!1147 = !DILocation(line: 329, column: 3, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 329, column: 3)
!1149 = !DILocation(line: 330, column: 1, scope: !1121)
!1150 = distinct !DISubprogram(name: "print_allocation", scope: !3, file: !3, line: 309, type: !1051, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1157}
!1152 = !DILocalVariable(name: "key", arg: 1, scope: !1150, file: !3, line: 309, type: !17)
!1153 = !DILocalVariable(name: "value", arg: 2, scope: !1150, file: !3, line: 309, type: !17)
!1154 = !DILocalVariable(name: "data", arg: 3, scope: !1150, file: !3, line: 310, type: !17)
!1155 = !DILocalVariable(name: "err", arg: 4, scope: !1150, file: !3, line: 310, type: !1053)
!1156 = !DILocalVariable(name: "mainfo", scope: !1150, file: !3, line: 312, type: !25)
!1157 = !DILocalVariable(name: "outfp", scope: !1150, file: !3, line: 313, type: !39)
!1158 = !DILocation(line: 309, column: 45, scope: !1150)
!1159 = !DILocation(line: 309, column: 56, scope: !1150)
!1160 = !DILocation(line: 310, column: 35, scope: !1150)
!1161 = !DILocation(line: 310, column: 60, scope: !1150)
!1162 = !DILocation(line: 312, column: 3, scope: !1150)
!1163 = !DILocation(line: 312, column: 11, scope: !1150)
!1164 = !DILocation(line: 312, column: 30, scope: !1150)
!1165 = !DILocation(line: 313, column: 3, scope: !1150)
!1166 = !DILocation(line: 313, column: 9, scope: !1150)
!1167 = !DILocation(line: 313, column: 25, scope: !1150)
!1168 = !DILocation(line: 314, column: 3, scope: !1150)
!1169 = !DILocation(line: 314, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 314, column: 3)
!1171 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 314, column: 3)
!1172 = !DILocation(line: 314, column: 3, scope: !1171)
!1173 = !DILocation(line: 314, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 314, column: 3)
!1175 = !DILocation(line: 315, column: 3, scope: !1150)
!1176 = !DILocation(line: 315, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 315, column: 3)
!1178 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 315, column: 3)
!1179 = !DILocation(line: 315, column: 3, scope: !1178)
!1180 = !DILocation(line: 315, column: 3, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 315, column: 3)
!1182 = !DILocation(line: 316, column: 11, scope: !1150)
!1183 = !DILocation(line: 317, column: 11, scope: !1150)
!1184 = !DILocation(line: 317, column: 19, scope: !1150)
!1185 = !DILocation(line: 317, column: 25, scope: !1150)
!1186 = !DILocation(line: 317, column: 33, scope: !1150)
!1187 = !DILocation(line: 317, column: 43, scope: !1150)
!1188 = !DILocation(line: 317, column: 51, scope: !1150)
!1189 = !DILocation(line: 316, column: 3, scope: !1150)
!1190 = !DILocation(line: 319, column: 1, scope: !1150)
!1191 = !DILocation(line: 318, column: 3, scope: !1150)
!1192 = distinct !DISubprogram(name: "gt_ma_clean", scope: !3, file: !3, line: 332, type: !353, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1193 = !DILocation(line: 334, column: 3, scope: !1192)
!1194 = !DILocation(line: 334, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 334, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 334, column: 3)
!1197 = !DILocation(line: 334, column: 3, scope: !1196)
!1198 = !DILocation(line: 334, column: 3, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 334, column: 3)
!1200 = !DILocation(line: 335, column: 3, scope: !1192)
!1201 = !DILocation(line: 336, column: 3, scope: !1192)
!1202 = !DILocation(line: 336, column: 7, scope: !1192)
!1203 = !DILocation(line: 336, column: 19, scope: !1192)
!1204 = !DILocation(line: 337, column: 21, scope: !1192)
!1205 = !DILocation(line: 337, column: 25, scope: !1192)
!1206 = !DILocation(line: 337, column: 3, scope: !1192)
!1207 = !DILocation(line: 338, column: 3, scope: !1192)
!1208 = !DILocation(line: 339, column: 19, scope: !1192)
!1209 = !DILocation(line: 339, column: 3, scope: !1192)
!1210 = !DILocation(line: 340, column: 8, scope: !1192)
!1211 = !DILocation(line: 340, column: 3, scope: !1192)
!1212 = !DILocation(line: 341, column: 6, scope: !1192)
!1213 = !DILocation(line: 342, column: 1, scope: !1192)
!1214 = !DISubprogram(name: "gt_hashmap_delete", scope: !6, file: !6, line: 86, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !277}
!1217 = !DISubprogram(name: "gt_mutex_delete", scope: !229, file: !229, line: 89, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = distinct !DISubprogram(name: "gt_ma_unit_test", scope: !3, file: !3, line: 402, type: !1219, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!38, !1053}
!1221 = !{!1222, !1223}
!1222 = !DILocalVariable(name: "err", arg: 1, scope: !1218, file: !3, line: 402, type: !1053)
!1223 = !DILocalVariable(name: "had_err", scope: !1218, file: !3, line: 404, type: !38)
!1224 = !DILocation(line: 402, column: 30, scope: !1218)
!1225 = !DILocation(line: 404, column: 3, scope: !1218)
!1226 = !DILocation(line: 404, column: 7, scope: !1218)
!1227 = !DILocation(line: 405, column: 3, scope: !1218)
!1228 = !DILocation(line: 405, column: 3, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 405, column: 3)
!1230 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 405, column: 3)
!1231 = !DILocation(line: 405, column: 3, scope: !1230)
!1232 = !DILocation(line: 405, column: 3, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 405, column: 3)
!1234 = !DILocation(line: 406, column: 47, scope: !1218)
!1235 = !DILocation(line: 406, column: 13, scope: !1218)
!1236 = !DILocation(line: 406, column: 11, scope: !1218)
!1237 = !DILocation(line: 407, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 407, column: 7)
!1239 = !DILocation(line: 407, column: 7, scope: !1218)
!1240 = !DILocation(line: 408, column: 49, scope: !1238)
!1241 = !DILocation(line: 408, column: 15, scope: !1238)
!1242 = !DILocation(line: 408, column: 13, scope: !1238)
!1243 = !DILocation(line: 408, column: 5, scope: !1238)
!1244 = !DILocation(line: 409, column: 8, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 409, column: 7)
!1246 = !DILocation(line: 409, column: 7, scope: !1218)
!1247 = !DILocation(line: 410, column: 50, scope: !1245)
!1248 = !DILocation(line: 410, column: 15, scope: !1245)
!1249 = !DILocation(line: 410, column: 13, scope: !1245)
!1250 = !DILocation(line: 410, column: 5, scope: !1245)
!1251 = !DILocation(line: 411, column: 10, scope: !1218)
!1252 = !DILocation(line: 412, column: 1, scope: !1218)
!1253 = !DILocation(line: 411, column: 3, scope: !1218)
!1254 = !DISubprogram(name: "gt_error_is_set", scope: !1055, file: !1055, line: 64, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!24, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
!1259 = !DISubprogram(name: "gt_multithread", scope: !1260, file: !1260, line: 28, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1260 = !DIFile(filename: "src/core/multithread_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "b8c453eab26d73d85251ffb939c4a7f2")
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!38, !1263, !17, !1053}
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtThreadFunc", file: !229, line: 35, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!17, !17}
!1267 = distinct !DISubprogram(name: "test_malloc", scope: !3, file: !3, line: 347, type: !1265, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1268)
!1268 = !{!1269, !1270, !1275, !1276}
!1269 = !DILocalVariable(name: "data", arg: 1, scope: !1267, file: !3, line: 347, type: !17)
!1270 = !DILocalVariable(name: "chunks", scope: !1267, file: !3, line: 349, type: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtArray", file: !1273, line: 27, baseType: !1274)
!1273 = !DIFile(filename: "src/core/array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4614c0e64ebb94278b4837ce435832ba")
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtArray", file: !1273, line: 27, flags: DIFlagFwdDecl)
!1275 = !DILocalVariable(name: "i", scope: !1267, file: !3, line: 350, type: !7)
!1276 = !DILocalVariable(name: "mem", scope: !1267, file: !3, line: 351, type: !17)
!1277 = !DILocation(line: 347, column: 42, scope: !1267)
!1278 = !DILocation(line: 349, column: 3, scope: !1267)
!1279 = !DILocation(line: 349, column: 12, scope: !1267)
!1280 = !DILocation(line: 350, column: 3, scope: !1267)
!1281 = !DILocation(line: 350, column: 16, scope: !1267)
!1282 = !DILocation(line: 351, column: 3, scope: !1267)
!1283 = !DILocation(line: 351, column: 9, scope: !1267)
!1284 = !DILocation(line: 352, column: 12, scope: !1267)
!1285 = !DILocation(line: 352, column: 10, scope: !1267)
!1286 = !DILocation(line: 353, column: 10, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 353, column: 3)
!1288 = !DILocation(line: 353, column: 8, scope: !1287)
!1289 = !DILocation(line: 353, column: 15, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 353, column: 3)
!1291 = !DILocation(line: 353, column: 17, scope: !1290)
!1292 = !DILocation(line: 353, column: 3, scope: !1287)
!1293 = !DILocation(line: 354, column: 11, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 353, column: 42)
!1295 = !DILocation(line: 354, column: 9, scope: !1294)
!1296 = !DILocation(line: 355, column: 5, scope: !1294)
!1297 = !DILocation(line: 356, column: 3, scope: !1294)
!1298 = !DILocation(line: 353, column: 38, scope: !1290)
!1299 = !DILocation(line: 353, column: 3, scope: !1290)
!1300 = distinct !{!1300, !1292, !1301, !1302}
!1301 = !DILocation(line: 356, column: 3, scope: !1287)
!1302 = !{!"llvm.loop.mustprogress"}
!1303 = !DILocation(line: 357, column: 10, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 357, column: 3)
!1305 = !DILocation(line: 357, column: 8, scope: !1304)
!1306 = !DILocation(line: 357, column: 15, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 357, column: 3)
!1308 = !DILocation(line: 357, column: 17, scope: !1307)
!1309 = !DILocation(line: 357, column: 3, scope: !1304)
!1310 = !DILocation(line: 358, column: 34, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 357, column: 42)
!1312 = !DILocation(line: 358, column: 42, scope: !1311)
!1313 = !DILocation(line: 358, column: 21, scope: !1311)
!1314 = !DILocation(line: 358, column: 11, scope: !1311)
!1315 = !DILocation(line: 358, column: 9, scope: !1311)
!1316 = !DILocation(line: 359, column: 5, scope: !1311)
!1317 = !DILocation(line: 360, column: 3, scope: !1311)
!1318 = !DILocation(line: 357, column: 38, scope: !1307)
!1319 = !DILocation(line: 357, column: 3, scope: !1307)
!1320 = distinct !{!1320, !1309, !1321, !1302}
!1321 = !DILocation(line: 360, column: 3, scope: !1304)
!1322 = !DILocation(line: 361, column: 19, scope: !1267)
!1323 = !DILocation(line: 361, column: 3, scope: !1267)
!1324 = !DILocation(line: 363, column: 1, scope: !1267)
!1325 = !DILocation(line: 362, column: 3, scope: !1267)
!1326 = distinct !DISubprogram(name: "test_calloc", scope: !3, file: !3, line: 365, type: !1265, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1327 = !{!1328, !1329, !1330, !1331}
!1328 = !DILocalVariable(name: "data", arg: 1, scope: !1326, file: !3, line: 365, type: !17)
!1329 = !DILocalVariable(name: "chunks", scope: !1326, file: !3, line: 367, type: !1271)
!1330 = !DILocalVariable(name: "i", scope: !1326, file: !3, line: 368, type: !7)
!1331 = !DILocalVariable(name: "mem", scope: !1326, file: !3, line: 369, type: !17)
!1332 = !DILocation(line: 365, column: 42, scope: !1326)
!1333 = !DILocation(line: 367, column: 3, scope: !1326)
!1334 = !DILocation(line: 367, column: 12, scope: !1326)
!1335 = !DILocation(line: 368, column: 3, scope: !1326)
!1336 = !DILocation(line: 368, column: 16, scope: !1326)
!1337 = !DILocation(line: 369, column: 3, scope: !1326)
!1338 = !DILocation(line: 369, column: 9, scope: !1326)
!1339 = !DILocation(line: 370, column: 12, scope: !1326)
!1340 = !DILocation(line: 370, column: 10, scope: !1326)
!1341 = !DILocation(line: 371, column: 10, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 371, column: 3)
!1343 = !DILocation(line: 371, column: 8, scope: !1342)
!1344 = !DILocation(line: 371, column: 15, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 371, column: 3)
!1346 = !DILocation(line: 371, column: 17, scope: !1345)
!1347 = !DILocation(line: 371, column: 3, scope: !1342)
!1348 = !DILocation(line: 372, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 371, column: 42)
!1350 = !DILocation(line: 372, column: 9, scope: !1349)
!1351 = !DILocation(line: 373, column: 5, scope: !1349)
!1352 = !DILocation(line: 374, column: 3, scope: !1349)
!1353 = !DILocation(line: 371, column: 38, scope: !1345)
!1354 = !DILocation(line: 371, column: 3, scope: !1345)
!1355 = distinct !{!1355, !1347, !1356, !1302}
!1356 = !DILocation(line: 374, column: 3, scope: !1342)
!1357 = !DILocation(line: 375, column: 10, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 375, column: 3)
!1359 = !DILocation(line: 375, column: 8, scope: !1358)
!1360 = !DILocation(line: 375, column: 15, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 375, column: 3)
!1362 = !DILocation(line: 375, column: 17, scope: !1361)
!1363 = !DILocation(line: 375, column: 3, scope: !1358)
!1364 = !DILocation(line: 376, column: 34, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 375, column: 42)
!1366 = !DILocation(line: 376, column: 42, scope: !1365)
!1367 = !DILocation(line: 376, column: 21, scope: !1365)
!1368 = !DILocation(line: 376, column: 11, scope: !1365)
!1369 = !DILocation(line: 376, column: 9, scope: !1365)
!1370 = !DILocation(line: 377, column: 5, scope: !1365)
!1371 = !DILocation(line: 378, column: 3, scope: !1365)
!1372 = !DILocation(line: 375, column: 38, scope: !1361)
!1373 = !DILocation(line: 375, column: 3, scope: !1361)
!1374 = distinct !{!1374, !1363, !1375, !1302}
!1375 = !DILocation(line: 378, column: 3, scope: !1358)
!1376 = !DILocation(line: 379, column: 19, scope: !1326)
!1377 = !DILocation(line: 379, column: 3, scope: !1326)
!1378 = !DILocation(line: 381, column: 1, scope: !1326)
!1379 = !DILocation(line: 380, column: 3, scope: !1326)
!1380 = distinct !DISubprogram(name: "test_realloc", scope: !3, file: !3, line: 383, type: !1265, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1381)
!1381 = !{!1382, !1383, !1384, !1385}
!1382 = !DILocalVariable(name: "data", arg: 1, scope: !1380, file: !3, line: 383, type: !17)
!1383 = !DILocalVariable(name: "chunks", scope: !1380, file: !3, line: 385, type: !1271)
!1384 = !DILocalVariable(name: "i", scope: !1380, file: !3, line: 386, type: !7)
!1385 = !DILocalVariable(name: "mem", scope: !1380, file: !3, line: 387, type: !17)
!1386 = !DILocation(line: 383, column: 43, scope: !1380)
!1387 = !DILocation(line: 385, column: 3, scope: !1380)
!1388 = !DILocation(line: 385, column: 12, scope: !1380)
!1389 = !DILocation(line: 386, column: 3, scope: !1380)
!1390 = !DILocation(line: 386, column: 16, scope: !1380)
!1391 = !DILocation(line: 387, column: 3, scope: !1380)
!1392 = !DILocation(line: 387, column: 9, scope: !1380)
!1393 = !DILocation(line: 388, column: 12, scope: !1380)
!1394 = !DILocation(line: 388, column: 10, scope: !1380)
!1395 = !DILocation(line: 389, column: 10, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 389, column: 3)
!1397 = !DILocation(line: 389, column: 8, scope: !1396)
!1398 = !DILocation(line: 389, column: 15, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 389, column: 3)
!1400 = !DILocation(line: 389, column: 17, scope: !1399)
!1401 = !DILocation(line: 389, column: 3, scope: !1396)
!1402 = !DILocation(line: 390, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 389, column: 42)
!1404 = !DILocation(line: 390, column: 9, scope: !1403)
!1405 = !DILocation(line: 391, column: 11, scope: !1403)
!1406 = !DILocation(line: 391, column: 9, scope: !1403)
!1407 = !DILocation(line: 392, column: 5, scope: !1403)
!1408 = !DILocation(line: 393, column: 3, scope: !1403)
!1409 = !DILocation(line: 389, column: 38, scope: !1399)
!1410 = !DILocation(line: 389, column: 3, scope: !1399)
!1411 = distinct !{!1411, !1401, !1412, !1302}
!1412 = !DILocation(line: 393, column: 3, scope: !1396)
!1413 = !DILocation(line: 394, column: 10, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 394, column: 3)
!1415 = !DILocation(line: 394, column: 8, scope: !1414)
!1416 = !DILocation(line: 394, column: 15, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 394, column: 3)
!1418 = !DILocation(line: 394, column: 17, scope: !1417)
!1419 = !DILocation(line: 394, column: 3, scope: !1414)
!1420 = !DILocation(line: 395, column: 34, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 394, column: 42)
!1422 = !DILocation(line: 395, column: 42, scope: !1421)
!1423 = !DILocation(line: 395, column: 21, scope: !1421)
!1424 = !DILocation(line: 395, column: 11, scope: !1421)
!1425 = !DILocation(line: 395, column: 9, scope: !1421)
!1426 = !DILocation(line: 396, column: 5, scope: !1421)
!1427 = !DILocation(line: 397, column: 3, scope: !1421)
!1428 = !DILocation(line: 394, column: 38, scope: !1417)
!1429 = !DILocation(line: 394, column: 3, scope: !1417)
!1430 = distinct !{!1430, !1419, !1431, !1302}
!1431 = !DILocation(line: 397, column: 3, scope: !1414)
!1432 = !DILocation(line: 398, column: 19, scope: !1380)
!1433 = !DILocation(line: 398, column: 3, scope: !1380)
!1434 = !DILocation(line: 400, column: 1, scope: !1380)
!1435 = !DILocation(line: 399, column: 3, scope: !1380)
!1436 = !DISubprogram(name: "calloc", scope: !352, file: !352, line: 543, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!17, !30, !30}
!1439 = !DISubprogram(name: "malloc", scope: !352, file: !352, line: 540, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!17, !30}
!1442 = !DISubprogram(name: "gt_spacepeak_add", scope: !1443, file: !1443, line: 27, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1443 = !DIFile(filename: "src/core/spacepeak.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "38d456df99cf7bb5852217fd3bb06687")
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !287}
!1446 = !DISubprogram(name: "gt_spacepeak_free", scope: !1443, file: !1443, line: 28, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1447 = !DISubprogram(name: "realloc", scope: !352, file: !352, line: 551, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!17, !17, !30}
!1450 = !DISubprogram(name: "gt_array_new", scope: !1273, file: !1273, line: 30, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1271, !30}
!1453 = !DISubprogram(name: "gt_array_add_elem", scope: !1273, file: !1273, line: 57, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !1271, !17, !30}
!1456 = !DISubprogram(name: "gt_array_get", scope: !1273, file: !1273, line: 38, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!17, !1459, !287}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1461 = !DISubprogram(name: "gt_array_delete", scope: !1273, file: !1273, line: 102, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1271}

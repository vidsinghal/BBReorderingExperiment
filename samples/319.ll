; ModuleID = 'samples/319.bc'
source_filename = "zip_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_cdir = type { ptr, i64, i64, i64, i64, ptr, i8 }
%struct.zip_entry = type { ptr, ptr, ptr, i8 }
%struct.zip = type { ptr, i32, %struct.zip_error, i32, i32, ptr, ptr, ptr, i8, i64, i64, ptr, i32, i32, ptr, ptr, ptr }
%struct.zip_error = type { i32, i32, ptr }
%struct.zip_filelist = type { i64 }
%struct.zip_string = type { ptr, i16, i32, ptr, i32 }
%struct.zip_dirent = type { i32, i8, i8, i8, i16, i16, i16, i32, i64, i32, i64, i64, ptr, ptr, ptr, i32, i16, i32, i64, i16, i16, ptr }
%struct.zip_extra_field = type { ptr, i32, i16, i16, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [5 x i8] c"PK\06\06\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"PK\06\07\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [5 x i8] c"PK\05\06\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1, !dbg !11
@.str.4 = private unnamed_addr constant [5 x i8] c"PK\01\02\00", align 1, !dbg !13
@.str.5 = private unnamed_addr constant [3 x i8] c"AE\00", align 1, !dbg !15

; Function Attrs: nounwind uwtable
define hidden void @_zip_cdir_free(ptr noundef %cd) #0 !dbg !229 {
entry:
  %cd.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cd, ptr %cd.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !233, metadata !DIExpression()), !dbg !239
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !240
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !234, metadata !DIExpression()), !dbg !241
  %0 = load ptr, ptr %cd.addr, align 8, !dbg !242, !tbaa !235
  %tobool = icmp ne ptr %0, null, !dbg !242
  br i1 %tobool, label %if.end, label %if.then, !dbg !244

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !245

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !246, !tbaa !248
  br label %for.cond, !dbg !250

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, ptr %i, align 8, !dbg !251, !tbaa !248
  %2 = load ptr, ptr %cd.addr, align 8, !dbg !253, !tbaa !235
  %nentry = getelementptr inbounds %struct.zip_cdir, ptr %2, i32 0, i32 1, !dbg !254
  %3 = load i64, ptr %nentry, align 8, !dbg !254, !tbaa !255
  %cmp = icmp ult i64 %1, %3, !dbg !258
  br i1 %cmp, label %for.body, label %for.end, !dbg !259

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cd.addr, align 8, !dbg !260, !tbaa !235
  %entry1 = getelementptr inbounds %struct.zip_cdir, ptr %4, i32 0, i32 0, !dbg !261
  %5 = load ptr, ptr %entry1, align 8, !dbg !261, !tbaa !262
  %6 = load i64, ptr %i, align 8, !dbg !263, !tbaa !248
  %add.ptr = getelementptr inbounds %struct.zip_entry, ptr %5, i64 %6, !dbg !264
  call void @_zip_entry_finalize(ptr noundef %add.ptr), !dbg !265
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8, !dbg !266, !tbaa !248
  %inc = add i64 %7, 1, !dbg !266
  store i64 %inc, ptr %i, align 8, !dbg !266, !tbaa !248
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %cd.addr, align 8, !dbg !271, !tbaa !235
  %entry2 = getelementptr inbounds %struct.zip_cdir, ptr %8, i32 0, i32 0, !dbg !272
  %9 = load ptr, ptr %entry2, align 8, !dbg !272, !tbaa !262
  call void @free(ptr noundef %9) #10, !dbg !273
  %10 = load ptr, ptr %cd.addr, align 8, !dbg !274, !tbaa !235
  %comment = getelementptr inbounds %struct.zip_cdir, ptr %10, i32 0, i32 5, !dbg !275
  %11 = load ptr, ptr %comment, align 8, !dbg !275, !tbaa !276
  call void @_zip_string_free(ptr noundef %11), !dbg !277
  %12 = load ptr, ptr %cd.addr, align 8, !dbg !278, !tbaa !235
  call void @free(ptr noundef %12) #10, !dbg !279
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !280
  br label %cleanup, !dbg !280

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !280
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !280

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !281 void @_zip_entry_finalize(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !284 void @free(ptr noundef) #3

declare !dbg !288 void @_zip_string_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden ptr @_zip_cdir_new(i64 noundef %nentry, ptr noundef %error) #0 !dbg !291 {
entry:
  %retval = alloca ptr, align 8
  %nentry.addr = alloca i64, align 8
  %error.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nentry, ptr %nentry.addr, align 8, !tbaa !248
  tail call void @llvm.dbg.declare(metadata ptr %nentry.addr, metadata !296, metadata !DIExpression()), !dbg !299
  store ptr %error, ptr %error.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !297, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #10, !dbg !301
  tail call void @llvm.dbg.declare(metadata ptr %cd, metadata !298, metadata !DIExpression()), !dbg !302
  %call = call noalias ptr @malloc(i64 noundef 56) #11, !dbg !303
  store ptr %call, ptr %cd, align 8, !dbg !305, !tbaa !235
  %cmp = icmp eq ptr %call, null, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %error.addr, align 8, !dbg !308, !tbaa !235
  call void @zip_error_set(ptr noundef %0, i32 noundef 14, i32 noundef 0), !dbg !310
  store ptr null, ptr %retval, align 8, !dbg !311
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !311

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cd, align 8, !dbg !312, !tbaa !235
  %entry1 = getelementptr inbounds %struct.zip_cdir, ptr %1, i32 0, i32 0, !dbg !313
  store ptr null, ptr %entry1, align 8, !dbg !314, !tbaa !262
  %2 = load ptr, ptr %cd, align 8, !dbg !315, !tbaa !235
  %nentry_alloc = getelementptr inbounds %struct.zip_cdir, ptr %2, i32 0, i32 2, !dbg !316
  store i64 0, ptr %nentry_alloc, align 8, !dbg !317, !tbaa !318
  %3 = load ptr, ptr %cd, align 8, !dbg !319, !tbaa !235
  %nentry2 = getelementptr inbounds %struct.zip_cdir, ptr %3, i32 0, i32 1, !dbg !320
  store i64 0, ptr %nentry2, align 8, !dbg !321, !tbaa !255
  %4 = load ptr, ptr %cd, align 8, !dbg !322, !tbaa !235
  %offset = getelementptr inbounds %struct.zip_cdir, ptr %4, i32 0, i32 4, !dbg !323
  store i64 0, ptr %offset, align 8, !dbg !324, !tbaa !325
  %5 = load ptr, ptr %cd, align 8, !dbg !326, !tbaa !235
  %size = getelementptr inbounds %struct.zip_cdir, ptr %5, i32 0, i32 3, !dbg !327
  store i64 0, ptr %size, align 8, !dbg !328, !tbaa !329
  %6 = load ptr, ptr %cd, align 8, !dbg !330, !tbaa !235
  %comment = getelementptr inbounds %struct.zip_cdir, ptr %6, i32 0, i32 5, !dbg !331
  store ptr null, ptr %comment, align 8, !dbg !332, !tbaa !276
  %7 = load ptr, ptr %cd, align 8, !dbg !333, !tbaa !235
  %is_zip64 = getelementptr inbounds %struct.zip_cdir, ptr %7, i32 0, i32 6, !dbg !334
  store i8 0, ptr %is_zip64, align 8, !dbg !335, !tbaa !336
  %8 = load ptr, ptr %cd, align 8, !dbg !337, !tbaa !235
  %9 = load i64, ptr %nentry.addr, align 8, !dbg !339, !tbaa !248
  %10 = load ptr, ptr %error.addr, align 8, !dbg !340, !tbaa !235
  %call3 = call zeroext i1 @_zip_cdir_grow(ptr noundef %8, i64 noundef %9, ptr noundef %10), !dbg !341
  br i1 %call3, label %if.end5, label %if.then4, !dbg !342

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %cd, align 8, !dbg !343, !tbaa !235
  call void @_zip_cdir_free(ptr noundef %11), !dbg !345
  store ptr null, ptr %retval, align 8, !dbg !346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !346

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %cd, align 8, !dbg !347, !tbaa !235
  store ptr %12, ptr %retval, align 8, !dbg !348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !348

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #10, !dbg !349
  %13 = load ptr, ptr %retval, align 8, !dbg !349
  ret ptr %13, !dbg !349
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !350 noalias ptr @malloc(i64 noundef) #4

declare !dbg !353 void @zip_error_set(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_zip_cdir_grow(ptr noundef %cd, i64 noundef %additional_entries, ptr noundef %error) #0 !dbg !356 {
entry:
  %retval = alloca i1, align 1
  %cd.addr = alloca ptr, align 8
  %additional_entries.addr = alloca i64, align 8
  %error.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %new_alloc = alloca i64, align 8
  %new_entry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cd, ptr %cd.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !360, metadata !DIExpression()), !dbg !366
  store i64 %additional_entries, ptr %additional_entries.addr, align 8, !tbaa !248
  tail call void @llvm.dbg.declare(metadata ptr %additional_entries.addr, metadata !361, metadata !DIExpression()), !dbg !367
  store ptr %error, ptr %error.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !362, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !369
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !363, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_alloc) #10, !dbg !369
  tail call void @llvm.dbg.declare(metadata ptr %new_alloc, metadata !364, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_entry) #10, !dbg !372
  tail call void @llvm.dbg.declare(metadata ptr %new_entry, metadata !365, metadata !DIExpression()), !dbg !373
  %0 = load i64, ptr %additional_entries.addr, align 8, !dbg !374, !tbaa !248
  %cmp = icmp eq i64 %0, 0, !dbg !376
  br i1 %cmp, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !378

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cd.addr, align 8, !dbg !380, !tbaa !235
  %nentry_alloc = getelementptr inbounds %struct.zip_cdir, ptr %1, i32 0, i32 2, !dbg !381
  %2 = load i64, ptr %nentry_alloc, align 8, !dbg !381, !tbaa !318
  %3 = load i64, ptr %additional_entries.addr, align 8, !dbg !382, !tbaa !248
  %add = add i64 %2, %3, !dbg !383
  store i64 %add, ptr %new_alloc, align 8, !dbg !384, !tbaa !248
  %4 = load i64, ptr %new_alloc, align 8, !dbg !385, !tbaa !248
  %5 = load i64, ptr %additional_entries.addr, align 8, !dbg !387, !tbaa !248
  %cmp1 = icmp ult i64 %4, %5, !dbg !388
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !389

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, ptr %new_alloc, align 8, !dbg !390, !tbaa !248
  %cmp2 = icmp ugt i64 %6, 576460752303423487, !dbg !391
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !392

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %error.addr, align 8, !dbg !393, !tbaa !235
  call void @zip_error_set(ptr noundef %7, i32 noundef 14, i32 noundef 0), !dbg !395
  store i1 false, ptr %retval, align 1, !dbg !396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !396

if.end4:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %cd.addr, align 8, !dbg !397, !tbaa !235
  %entry5 = getelementptr inbounds %struct.zip_cdir, ptr %8, i32 0, i32 0, !dbg !399
  %9 = load ptr, ptr %entry5, align 8, !dbg !399, !tbaa !262
  %10 = load i64, ptr %new_alloc, align 8, !dbg !400, !tbaa !248
  %mul = mul i64 32, %10, !dbg !401
  %call = call ptr @realloc(ptr noundef %9, i64 noundef %mul) #12, !dbg !402
  store ptr %call, ptr %new_entry, align 8, !dbg !403, !tbaa !235
  %cmp6 = icmp eq ptr %call, null, !dbg !404
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !405

if.then7:                                         ; preds = %if.end4
  %11 = load ptr, ptr %error.addr, align 8, !dbg !406, !tbaa !235
  call void @zip_error_set(ptr noundef %11, i32 noundef 14, i32 noundef 0), !dbg !408
  store i1 false, ptr %retval, align 1, !dbg !409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !409

if.end8:                                          ; preds = %if.end4
  %12 = load ptr, ptr %new_entry, align 8, !dbg !410, !tbaa !235
  %13 = load ptr, ptr %cd.addr, align 8, !dbg !411, !tbaa !235
  %entry9 = getelementptr inbounds %struct.zip_cdir, ptr %13, i32 0, i32 0, !dbg !412
  store ptr %12, ptr %entry9, align 8, !dbg !413, !tbaa !262
  %14 = load ptr, ptr %cd.addr, align 8, !dbg !414, !tbaa !235
  %nentry = getelementptr inbounds %struct.zip_cdir, ptr %14, i32 0, i32 1, !dbg !416
  %15 = load i64, ptr %nentry, align 8, !dbg !416, !tbaa !255
  store i64 %15, ptr %i, align 8, !dbg !417, !tbaa !248
  br label %for.cond, !dbg !418

for.cond:                                         ; preds = %for.inc, %if.end8
  %16 = load i64, ptr %i, align 8, !dbg !419, !tbaa !248
  %17 = load i64, ptr %new_alloc, align 8, !dbg !421, !tbaa !248
  %cmp10 = icmp ult i64 %16, %17, !dbg !422
  br i1 %cmp10, label %for.body, label %for.end, !dbg !423

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %cd.addr, align 8, !dbg !424, !tbaa !235
  %entry11 = getelementptr inbounds %struct.zip_cdir, ptr %18, i32 0, i32 0, !dbg !426
  %19 = load ptr, ptr %entry11, align 8, !dbg !426, !tbaa !262
  %20 = load i64, ptr %i, align 8, !dbg !427, !tbaa !248
  %add.ptr = getelementptr inbounds %struct.zip_entry, ptr %19, i64 %20, !dbg !428
  call void @_zip_entry_init(ptr noundef %add.ptr), !dbg !429
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %for.body
  %21 = load i64, ptr %i, align 8, !dbg !431, !tbaa !248
  %inc = add i64 %21, 1, !dbg !431
  store i64 %inc, ptr %i, align 8, !dbg !431, !tbaa !248
  br label %for.cond, !dbg !432, !llvm.loop !433

for.end:                                          ; preds = %for.cond
  %22 = load i64, ptr %new_alloc, align 8, !dbg !435, !tbaa !248
  %23 = load ptr, ptr %cd.addr, align 8, !dbg !436, !tbaa !235
  %nentry_alloc12 = getelementptr inbounds %struct.zip_cdir, ptr %23, i32 0, i32 2, !dbg !437
  store i64 %22, ptr %nentry_alloc12, align 8, !dbg !438, !tbaa !318
  %24 = load ptr, ptr %cd.addr, align 8, !dbg !439, !tbaa !235
  %nentry13 = getelementptr inbounds %struct.zip_cdir, ptr %24, i32 0, i32 1, !dbg !440
  store i64 %22, ptr %nentry13, align 8, !dbg !441, !tbaa !255
  store i1 true, ptr %retval, align 1, !dbg !442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !442

cleanup:                                          ; preds = %for.end, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_entry) #10, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_alloc) #10, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !443
  %25 = load i1, ptr %retval, align 1, !dbg !443
  ret i1 %25, !dbg !443
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !444 ptr @realloc(ptr noundef, i64 noundef) #5

declare !dbg !447 void @_zip_entry_init(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i64 @_zip_cdir_write(ptr noundef %za, ptr noundef %filelist, i64 noundef %survivors) #0 !dbg !448 {
entry:
  %retval = alloca i64, align 8
  %za.addr = alloca ptr, align 8
  %filelist.addr = alloca ptr, align 8
  %survivors.addr = alloca i64, align 8
  %offset = alloca i64, align 8
  %size = alloca i64, align 8
  %comment = alloca ptr, align 8
  %buf = alloca [98 x i8], align 16
  %buffer = alloca ptr, align 8
  %off = alloca i64, align 8
  %i = alloca i64, align 8
  %is_zip64 = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %entry3 = alloca ptr, align 8
  store ptr %za, ptr %za.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %za.addr, metadata !458, metadata !DIExpression()), !dbg !486
  store ptr %filelist, ptr %filelist.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %filelist.addr, metadata !459, metadata !DIExpression()), !dbg !487
  store i64 %survivors, ptr %survivors.addr, align 8, !tbaa !248
  tail call void @llvm.dbg.declare(metadata ptr %survivors.addr, metadata !460, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #10, !dbg !489
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !461, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !489
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !462, metadata !DIExpression()), !dbg !491
  call void @llvm.lifetime.start.p0(i64 8, ptr %comment) #10, !dbg !492
  tail call void @llvm.dbg.declare(metadata ptr %comment, metadata !463, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 98, ptr %buf) #10, !dbg !494
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !464, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #10, !dbg !496
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !468, metadata !DIExpression()), !dbg !497
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #10, !dbg !498
  tail call void @llvm.dbg.declare(metadata ptr %off, metadata !478, metadata !DIExpression()), !dbg !499
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10, !dbg !500
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !479, metadata !DIExpression()), !dbg !501
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_zip64) #10, !dbg !502
  tail call void @llvm.dbg.declare(metadata ptr %is_zip64, metadata !480, metadata !DIExpression()), !dbg !503
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !481, metadata !DIExpression()), !dbg !505
  %0 = load ptr, ptr %za.addr, align 8, !dbg !506, !tbaa !235
  %src = getelementptr inbounds %struct.zip, ptr %0, i32 0, i32 0, !dbg !508
  %1 = load ptr, ptr %src, align 8, !dbg !508, !tbaa !509
  %call = call i64 @zip_source_tell_write(ptr noundef %1), !dbg !513
  store i64 %call, ptr %off, align 8, !dbg !514, !tbaa !248
  %cmp = icmp slt i64 %call, 0, !dbg !515
  br i1 %cmp, label %if.then, label %if.end, !dbg !516

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %za.addr, align 8, !dbg !517, !tbaa !235
  %error = getelementptr inbounds %struct.zip, ptr %2, i32 0, i32 2, !dbg !519
  %3 = load ptr, ptr %za.addr, align 8, !dbg !520, !tbaa !235
  %src1 = getelementptr inbounds %struct.zip, ptr %3, i32 0, i32 0, !dbg !521
  %4 = load ptr, ptr %src1, align 8, !dbg !521, !tbaa !509
  call void @_zip_error_set_from_source(ptr noundef %error, ptr noundef %4), !dbg !522
  store i64 -1, ptr %retval, align 8, !dbg !523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !523

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %off, align 8, !dbg !524, !tbaa !248
  store i64 %5, ptr %offset, align 8, !dbg !525, !tbaa !248
  store i8 0, ptr %is_zip64, align 1, !dbg !526, !tbaa !527
  store i64 0, ptr %i, align 8, !dbg !528, !tbaa !248
  br label %for.cond, !dbg !529

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, ptr %i, align 8, !dbg !530, !tbaa !248
  %7 = load i64, ptr %survivors.addr, align 8, !dbg !531, !tbaa !248
  %cmp2 = icmp ult i64 %6, %7, !dbg !532
  br i1 %cmp2, label %for.body, label %for.end, !dbg !533

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry3) #10, !dbg !534
  tail call void @llvm.dbg.declare(metadata ptr %entry3, metadata !482, metadata !DIExpression()), !dbg !535
  %8 = load ptr, ptr %za.addr, align 8, !dbg !536, !tbaa !235
  %entry4 = getelementptr inbounds %struct.zip, ptr %8, i32 0, i32 11, !dbg !537
  %9 = load ptr, ptr %entry4, align 8, !dbg !537, !tbaa !538
  %10 = load ptr, ptr %filelist.addr, align 8, !dbg !539, !tbaa !235
  %11 = load i64, ptr %i, align 8, !dbg !540, !tbaa !248
  %arrayidx = getelementptr inbounds %struct.zip_filelist, ptr %10, i64 %11, !dbg !539
  %idx = getelementptr inbounds %struct.zip_filelist, ptr %arrayidx, i32 0, i32 0, !dbg !541
  %12 = load i64, ptr %idx, align 8, !dbg !541, !tbaa !542
  %add.ptr = getelementptr inbounds %struct.zip_entry, ptr %9, i64 %12, !dbg !544
  store ptr %add.ptr, ptr %entry3, align 8, !dbg !535, !tbaa !235
  %13 = load ptr, ptr %za.addr, align 8, !dbg !545, !tbaa !235
  %14 = load ptr, ptr %entry3, align 8, !dbg !547, !tbaa !235
  %changes = getelementptr inbounds %struct.zip_entry, ptr %14, i32 0, i32 1, !dbg !548
  %15 = load ptr, ptr %changes, align 8, !dbg !548, !tbaa !549
  %tobool = icmp ne ptr %15, null, !dbg !547
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !547

cond.true:                                        ; preds = %for.body
  %16 = load ptr, ptr %entry3, align 8, !dbg !551, !tbaa !235
  %changes5 = getelementptr inbounds %struct.zip_entry, ptr %16, i32 0, i32 1, !dbg !552
  %17 = load ptr, ptr %changes5, align 8, !dbg !552, !tbaa !549
  br label %cond.end, !dbg !547

cond.false:                                       ; preds = %for.body
  %18 = load ptr, ptr %entry3, align 8, !dbg !553, !tbaa !235
  %orig = getelementptr inbounds %struct.zip_entry, ptr %18, i32 0, i32 0, !dbg !554
  %19 = load ptr, ptr %orig, align 8, !dbg !554, !tbaa !555
  br label %cond.end, !dbg !547

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %17, %cond.true ], [ %19, %cond.false ], !dbg !547
  %call6 = call i32 @_zip_dirent_write(ptr noundef %13, ptr noundef %cond, i32 noundef 512), !dbg !556
  store i32 %call6, ptr %ret, align 4, !dbg !557, !tbaa !558
  %cmp7 = icmp slt i32 %call6, 0, !dbg !559
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !560

if.then8:                                         ; preds = %cond.end
  store i64 -1, ptr %retval, align 8, !dbg !561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !561

if.end9:                                          ; preds = %cond.end
  %20 = load i32, ptr %ret, align 4, !dbg !562, !tbaa !558
  %tobool10 = icmp ne i32 %20, 0, !dbg !562
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !564

if.then11:                                        ; preds = %if.end9
  store i8 1, ptr %is_zip64, align 1, !dbg !565, !tbaa !527
  br label %if.end12, !dbg !566

if.end12:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !567
  br label %cleanup, !dbg !567

cleanup:                                          ; preds = %if.end12, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry3) #10, !dbg !567
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup113 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !568

for.inc:                                          ; preds = %cleanup.cont
  %21 = load i64, ptr %i, align 8, !dbg !569, !tbaa !248
  %inc = add i64 %21, 1, !dbg !569
  store i64 %inc, ptr %i, align 8, !dbg !569, !tbaa !248
  br label %for.cond, !dbg !570, !llvm.loop !571

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %za.addr, align 8, !dbg !573, !tbaa !235
  %src13 = getelementptr inbounds %struct.zip, ptr %22, i32 0, i32 0, !dbg !575
  %23 = load ptr, ptr %src13, align 8, !dbg !575, !tbaa !509
  %call14 = call i64 @zip_source_tell_write(ptr noundef %23), !dbg !576
  store i64 %call14, ptr %off, align 8, !dbg !577, !tbaa !248
  %cmp15 = icmp slt i64 %call14, 0, !dbg !578
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !579

if.then16:                                        ; preds = %for.end
  %24 = load ptr, ptr %za.addr, align 8, !dbg !580, !tbaa !235
  %error17 = getelementptr inbounds %struct.zip, ptr %24, i32 0, i32 2, !dbg !582
  %25 = load ptr, ptr %za.addr, align 8, !dbg !583, !tbaa !235
  %src18 = getelementptr inbounds %struct.zip, ptr %25, i32 0, i32 0, !dbg !584
  %26 = load ptr, ptr %src18, align 8, !dbg !584, !tbaa !509
  call void @_zip_error_set_from_source(ptr noundef %error17, ptr noundef %26), !dbg !585
  store i64 -1, ptr %retval, align 8, !dbg !586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !586

if.end19:                                         ; preds = %for.end
  %27 = load i64, ptr %off, align 8, !dbg !587, !tbaa !248
  %28 = load i64, ptr %offset, align 8, !dbg !588, !tbaa !248
  %sub = sub i64 %27, %28, !dbg !589
  store i64 %sub, ptr %size, align 8, !dbg !590, !tbaa !248
  %29 = load i64, ptr %offset, align 8, !dbg !591, !tbaa !248
  %cmp20 = icmp ugt i64 %29, 4294967295, !dbg !593
  br i1 %cmp20, label %if.then22, label %lor.lhs.false, !dbg !594

lor.lhs.false:                                    ; preds = %if.end19
  %30 = load i64, ptr %survivors.addr, align 8, !dbg !595, !tbaa !248
  %cmp21 = icmp ugt i64 %30, 65535, !dbg !596
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !597

if.then22:                                        ; preds = %lor.lhs.false, %if.end19
  store i8 1, ptr %is_zip64, align 1, !dbg !598, !tbaa !527
  br label %if.end23, !dbg !599

if.end23:                                         ; preds = %if.then22, %lor.lhs.false
  %arraydecay = getelementptr inbounds [98 x i8], ptr %buf, i64 0, i64 0, !dbg !600
  %call24 = call ptr @_zip_buffer_new(ptr noundef %arraydecay, i64 noundef 98), !dbg !602
  store ptr %call24, ptr %buffer, align 8, !dbg !603, !tbaa !235
  %cmp25 = icmp eq ptr %call24, null, !dbg !604
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !605

if.then26:                                        ; preds = %if.end23
  %31 = load ptr, ptr %za.addr, align 8, !dbg !606, !tbaa !235
  %error27 = getelementptr inbounds %struct.zip, ptr %31, i32 0, i32 2, !dbg !608
  call void @zip_error_set(ptr noundef %error27, i32 noundef 14, i32 noundef 0), !dbg !609
  store i64 -1, ptr %retval, align 8, !dbg !610
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !610

if.end28:                                         ; preds = %if.end23
  %32 = load i8, ptr %is_zip64, align 1, !dbg !611, !tbaa !527, !range !613, !noundef !614
  %tobool29 = trunc i8 %32 to i1, !dbg !611
  br i1 %tobool29, label %if.then30, label %if.end45, !dbg !615

if.then30:                                        ; preds = %if.end28
  %33 = load ptr, ptr %buffer, align 8, !dbg !616, !tbaa !235
  %call31 = call i32 @_zip_buffer_put(ptr noundef %33, ptr noundef @.str, i64 noundef 4), !dbg !618
  %34 = load ptr, ptr %buffer, align 8, !dbg !619, !tbaa !235
  %call32 = call i32 @_zip_buffer_put_64(ptr noundef %34, i64 noundef 44), !dbg !620
  %35 = load ptr, ptr %buffer, align 8, !dbg !621, !tbaa !235
  %call33 = call i32 @_zip_buffer_put_16(ptr noundef %35, i16 noundef zeroext 45), !dbg !622
  %36 = load ptr, ptr %buffer, align 8, !dbg !623, !tbaa !235
  %call34 = call i32 @_zip_buffer_put_16(ptr noundef %36, i16 noundef zeroext 45), !dbg !624
  %37 = load ptr, ptr %buffer, align 8, !dbg !625, !tbaa !235
  %call35 = call i32 @_zip_buffer_put_32(ptr noundef %37, i32 noundef 0), !dbg !626
  %38 = load ptr, ptr %buffer, align 8, !dbg !627, !tbaa !235
  %call36 = call i32 @_zip_buffer_put_32(ptr noundef %38, i32 noundef 0), !dbg !628
  %39 = load ptr, ptr %buffer, align 8, !dbg !629, !tbaa !235
  %40 = load i64, ptr %survivors.addr, align 8, !dbg !630, !tbaa !248
  %call37 = call i32 @_zip_buffer_put_64(ptr noundef %39, i64 noundef %40), !dbg !631
  %41 = load ptr, ptr %buffer, align 8, !dbg !632, !tbaa !235
  %42 = load i64, ptr %survivors.addr, align 8, !dbg !633, !tbaa !248
  %call38 = call i32 @_zip_buffer_put_64(ptr noundef %41, i64 noundef %42), !dbg !634
  %43 = load ptr, ptr %buffer, align 8, !dbg !635, !tbaa !235
  %44 = load i64, ptr %size, align 8, !dbg !636, !tbaa !248
  %call39 = call i32 @_zip_buffer_put_64(ptr noundef %43, i64 noundef %44), !dbg !637
  %45 = load ptr, ptr %buffer, align 8, !dbg !638, !tbaa !235
  %46 = load i64, ptr %offset, align 8, !dbg !639, !tbaa !248
  %call40 = call i32 @_zip_buffer_put_64(ptr noundef %45, i64 noundef %46), !dbg !640
  %47 = load ptr, ptr %buffer, align 8, !dbg !641, !tbaa !235
  %call41 = call i32 @_zip_buffer_put(ptr noundef %47, ptr noundef @.str.1, i64 noundef 4), !dbg !642
  %48 = load ptr, ptr %buffer, align 8, !dbg !643, !tbaa !235
  %call42 = call i32 @_zip_buffer_put_32(ptr noundef %48, i32 noundef 0), !dbg !644
  %49 = load ptr, ptr %buffer, align 8, !dbg !645, !tbaa !235
  %50 = load i64, ptr %offset, align 8, !dbg !646, !tbaa !248
  %51 = load i64, ptr %size, align 8, !dbg !647, !tbaa !248
  %add = add i64 %50, %51, !dbg !648
  %call43 = call i32 @_zip_buffer_put_64(ptr noundef %49, i64 noundef %add), !dbg !649
  %52 = load ptr, ptr %buffer, align 8, !dbg !650, !tbaa !235
  %call44 = call i32 @_zip_buffer_put_32(ptr noundef %52, i32 noundef 1), !dbg !651
  br label %if.end45, !dbg !652

if.end45:                                         ; preds = %if.then30, %if.end28
  %53 = load ptr, ptr %buffer, align 8, !dbg !653, !tbaa !235
  %call46 = call i32 @_zip_buffer_put(ptr noundef %53, ptr noundef @.str.2, i64 noundef 4), !dbg !654
  %54 = load ptr, ptr %buffer, align 8, !dbg !655, !tbaa !235
  %call47 = call i32 @_zip_buffer_put_32(ptr noundef %54, i32 noundef 0), !dbg !656
  %55 = load ptr, ptr %buffer, align 8, !dbg !657, !tbaa !235
  %56 = load i64, ptr %survivors.addr, align 8, !dbg !658, !tbaa !248
  %cmp48 = icmp uge i64 %56, 65535, !dbg !659
  br i1 %cmp48, label %cond.true49, label %cond.false50, !dbg !658

cond.true49:                                      ; preds = %if.end45
  br label %cond.end51, !dbg !658

cond.false50:                                     ; preds = %if.end45
  %57 = load i64, ptr %survivors.addr, align 8, !dbg !660, !tbaa !248
  br label %cond.end51, !dbg !658

cond.end51:                                       ; preds = %cond.false50, %cond.true49
  %cond52 = phi i64 [ 65535, %cond.true49 ], [ %57, %cond.false50 ], !dbg !658
  %conv = trunc i64 %cond52 to i16, !dbg !661
  %call53 = call i32 @_zip_buffer_put_16(ptr noundef %55, i16 noundef zeroext %conv), !dbg !662
  %58 = load ptr, ptr %buffer, align 8, !dbg !663, !tbaa !235
  %59 = load i64, ptr %survivors.addr, align 8, !dbg !664, !tbaa !248
  %cmp54 = icmp uge i64 %59, 65535, !dbg !665
  br i1 %cmp54, label %cond.true56, label %cond.false57, !dbg !664

cond.true56:                                      ; preds = %cond.end51
  br label %cond.end58, !dbg !664

cond.false57:                                     ; preds = %cond.end51
  %60 = load i64, ptr %survivors.addr, align 8, !dbg !666, !tbaa !248
  br label %cond.end58, !dbg !664

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi i64 [ 65535, %cond.true56 ], [ %60, %cond.false57 ], !dbg !664
  %conv60 = trunc i64 %cond59 to i16, !dbg !667
  %call61 = call i32 @_zip_buffer_put_16(ptr noundef %58, i16 noundef zeroext %conv60), !dbg !668
  %61 = load ptr, ptr %buffer, align 8, !dbg !669, !tbaa !235
  %62 = load i64, ptr %size, align 8, !dbg !670, !tbaa !248
  %cmp62 = icmp uge i64 %62, 4294967295, !dbg !671
  br i1 %cmp62, label %cond.true64, label %cond.false65, !dbg !670

cond.true64:                                      ; preds = %cond.end58
  br label %cond.end67, !dbg !670

cond.false65:                                     ; preds = %cond.end58
  %63 = load i64, ptr %size, align 8, !dbg !672, !tbaa !248
  %conv66 = trunc i64 %63 to i32, !dbg !673
  br label %cond.end67, !dbg !670

cond.end67:                                       ; preds = %cond.false65, %cond.true64
  %cond68 = phi i32 [ -1, %cond.true64 ], [ %conv66, %cond.false65 ], !dbg !670
  %call69 = call i32 @_zip_buffer_put_32(ptr noundef %61, i32 noundef %cond68), !dbg !674
  %64 = load ptr, ptr %buffer, align 8, !dbg !675, !tbaa !235
  %65 = load i64, ptr %offset, align 8, !dbg !676, !tbaa !248
  %cmp70 = icmp uge i64 %65, 4294967295, !dbg !677
  br i1 %cmp70, label %cond.true72, label %cond.false73, !dbg !676

cond.true72:                                      ; preds = %cond.end67
  br label %cond.end75, !dbg !676

cond.false73:                                     ; preds = %cond.end67
  %66 = load i64, ptr %offset, align 8, !dbg !678, !tbaa !248
  %conv74 = trunc i64 %66 to i32, !dbg !679
  br label %cond.end75, !dbg !676

cond.end75:                                       ; preds = %cond.false73, %cond.true72
  %cond76 = phi i32 [ -1, %cond.true72 ], [ %conv74, %cond.false73 ], !dbg !676
  %call77 = call i32 @_zip_buffer_put_32(ptr noundef %64, i32 noundef %cond76), !dbg !680
  %67 = load ptr, ptr %za.addr, align 8, !dbg !681, !tbaa !235
  %comment_changed = getelementptr inbounds %struct.zip, ptr %67, i32 0, i32 8, !dbg !682
  %68 = load i8, ptr %comment_changed, align 8, !dbg !682, !tbaa !683, !range !613, !noundef !614
  %tobool78 = trunc i8 %68 to i1, !dbg !682
  br i1 %tobool78, label %cond.true80, label %cond.false81, !dbg !681

cond.true80:                                      ; preds = %cond.end75
  %69 = load ptr, ptr %za.addr, align 8, !dbg !684, !tbaa !235
  %comment_changes = getelementptr inbounds %struct.zip, ptr %69, i32 0, i32 7, !dbg !685
  %70 = load ptr, ptr %comment_changes, align 8, !dbg !685, !tbaa !686
  br label %cond.end82, !dbg !681

cond.false81:                                     ; preds = %cond.end75
  %71 = load ptr, ptr %za.addr, align 8, !dbg !687, !tbaa !235
  %comment_orig = getelementptr inbounds %struct.zip, ptr %71, i32 0, i32 6, !dbg !688
  %72 = load ptr, ptr %comment_orig, align 8, !dbg !688, !tbaa !689
  br label %cond.end82, !dbg !681

cond.end82:                                       ; preds = %cond.false81, %cond.true80
  %cond83 = phi ptr [ %70, %cond.true80 ], [ %72, %cond.false81 ], !dbg !681
  store ptr %cond83, ptr %comment, align 8, !dbg !690, !tbaa !235
  %73 = load ptr, ptr %buffer, align 8, !dbg !691, !tbaa !235
  %74 = load ptr, ptr %comment, align 8, !dbg !692, !tbaa !235
  %tobool84 = icmp ne ptr %74, null, !dbg !692
  br i1 %tobool84, label %cond.true85, label %cond.false87, !dbg !692

cond.true85:                                      ; preds = %cond.end82
  %75 = load ptr, ptr %comment, align 8, !dbg !693, !tbaa !235
  %length = getelementptr inbounds %struct.zip_string, ptr %75, i32 0, i32 1, !dbg !694
  %76 = load i16, ptr %length, align 8, !dbg !694, !tbaa !695
  %conv86 = zext i16 %76 to i32, !dbg !693
  br label %cond.end88, !dbg !692

cond.false87:                                     ; preds = %cond.end82
  br label %cond.end88, !dbg !692

cond.end88:                                       ; preds = %cond.false87, %cond.true85
  %cond89 = phi i32 [ %conv86, %cond.true85 ], [ 0, %cond.false87 ], !dbg !692
  %conv90 = trunc i32 %cond89 to i16, !dbg !698
  %call91 = call i32 @_zip_buffer_put_16(ptr noundef %73, i16 noundef zeroext %conv90), !dbg !699
  %77 = load ptr, ptr %buffer, align 8, !dbg !700, !tbaa !235
  %call92 = call zeroext i1 @_zip_buffer_ok(ptr noundef %77), !dbg !702
  br i1 %call92, label %if.end95, label %if.then93, !dbg !703

if.then93:                                        ; preds = %cond.end88
  %78 = load ptr, ptr %za.addr, align 8, !dbg !704, !tbaa !235
  %error94 = getelementptr inbounds %struct.zip, ptr %78, i32 0, i32 2, !dbg !706
  call void @zip_error_set(ptr noundef %error94, i32 noundef 20, i32 noundef 0), !dbg !707
  %79 = load ptr, ptr %buffer, align 8, !dbg !708, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %79), !dbg !709
  store i64 -1, ptr %retval, align 8, !dbg !710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !710

if.end95:                                         ; preds = %cond.end88
  %80 = load ptr, ptr %za.addr, align 8, !dbg !711, !tbaa !235
  %81 = load ptr, ptr %buffer, align 8, !dbg !713, !tbaa !235
  %call96 = call ptr @_zip_buffer_data(ptr noundef %81), !dbg !714
  %82 = load ptr, ptr %buffer, align 8, !dbg !715, !tbaa !235
  %call97 = call i64 @_zip_buffer_offset(ptr noundef %82), !dbg !716
  %call98 = call i32 @_zip_write(ptr noundef %80, ptr noundef %call96, i64 noundef %call97), !dbg !717
  %cmp99 = icmp slt i32 %call98, 0, !dbg !718
  br i1 %cmp99, label %if.then101, label %if.end102, !dbg !719

if.then101:                                       ; preds = %if.end95
  %83 = load ptr, ptr %buffer, align 8, !dbg !720, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %83), !dbg !722
  store i64 -1, ptr %retval, align 8, !dbg !723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !723

if.end102:                                        ; preds = %if.end95
  %84 = load ptr, ptr %buffer, align 8, !dbg !724, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %84), !dbg !725
  %85 = load ptr, ptr %comment, align 8, !dbg !726, !tbaa !235
  %tobool103 = icmp ne ptr %85, null, !dbg !726
  br i1 %tobool103, label %if.then104, label %if.end112, !dbg !728

if.then104:                                       ; preds = %if.end102
  %86 = load ptr, ptr %za.addr, align 8, !dbg !729, !tbaa !235
  %87 = load ptr, ptr %comment, align 8, !dbg !732, !tbaa !235
  %raw = getelementptr inbounds %struct.zip_string, ptr %87, i32 0, i32 0, !dbg !733
  %88 = load ptr, ptr %raw, align 8, !dbg !733, !tbaa !734
  %89 = load ptr, ptr %comment, align 8, !dbg !735, !tbaa !235
  %length105 = getelementptr inbounds %struct.zip_string, ptr %89, i32 0, i32 1, !dbg !736
  %90 = load i16, ptr %length105, align 8, !dbg !736, !tbaa !695
  %conv106 = zext i16 %90 to i64, !dbg !735
  %call107 = call i32 @_zip_write(ptr noundef %86, ptr noundef %88, i64 noundef %conv106), !dbg !737
  %cmp108 = icmp slt i32 %call107, 0, !dbg !738
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !739

if.then110:                                       ; preds = %if.then104
  store i64 -1, ptr %retval, align 8, !dbg !740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !740

if.end111:                                        ; preds = %if.then104
  br label %if.end112, !dbg !742

if.end112:                                        ; preds = %if.end111, %if.end102
  %91 = load i64, ptr %size, align 8, !dbg !743, !tbaa !248
  store i64 %91, ptr %retval, align 8, !dbg !744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup113, !dbg !744

cleanup113:                                       ; preds = %if.end112, %if.then110, %if.then101, %if.then93, %if.then26, %if.then16, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_zip64) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 98, ptr %buf) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %comment) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #10, !dbg !745
  %92 = load i64, ptr %retval, align 8, !dbg !745
  ret i64 %92, !dbg !745
}

declare !dbg !746 i64 @zip_source_tell_write(ptr noundef) #2

declare !dbg !749 void @_zip_error_set_from_source(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @_zip_dirent_write(ptr noundef %za, ptr noundef %de, i32 noundef %flags) #0 !dbg !752 {
entry:
  %retval = alloca i32, align 4
  %za.addr = alloca ptr, align 8
  %de.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dostime = alloca i16, align 2
  %dosdate = alloca i16, align 2
  %com_enc = alloca i32, align 4
  %name_enc = alloca i32, align 4
  %ef = alloca ptr, align 8
  %ef64 = alloca ptr, align 8
  %ef_total_size = alloca i32, align 4
  %is_zip64 = alloca i8, align 1
  %is_really_zip64 = alloca i8, align 1
  %is_winzip_aes = alloca i8, align 1
  %buf = alloca [46 x i8], align 16
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ef2 = alloca ptr, align 8
  %ef_zip64 = alloca [28 x i8], align 16
  %ef_buffer = alloca ptr, align 8
  %data = alloca [7 x i8], align 1
  %ef_buffer154 = alloca ptr, align 8
  %ef_winzip = alloca ptr, align 8
  store ptr %za, ptr %za.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %za.addr, metadata !756, metadata !DIExpression()), !dbg !795
  store ptr %de, ptr %de.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !757, metadata !DIExpression()), !dbg !796
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !558
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !758, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 2, ptr %dostime) #10, !dbg !798
  tail call void @llvm.dbg.declare(metadata ptr %dostime, metadata !759, metadata !DIExpression()), !dbg !799
  call void @llvm.lifetime.start.p0(i64 2, ptr %dosdate) #10, !dbg !798
  tail call void @llvm.dbg.declare(metadata ptr %dosdate, metadata !760, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 4, ptr %com_enc) #10, !dbg !801
  tail call void @llvm.dbg.declare(metadata ptr %com_enc, metadata !761, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_enc) #10, !dbg !801
  tail call void @llvm.dbg.declare(metadata ptr %name_enc, metadata !763, metadata !DIExpression()), !dbg !803
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef) #10, !dbg !804
  tail call void @llvm.dbg.declare(metadata ptr %ef, metadata !764, metadata !DIExpression()), !dbg !805
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef64) #10, !dbg !806
  tail call void @llvm.dbg.declare(metadata ptr %ef64, metadata !765, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 4, ptr %ef_total_size) #10, !dbg !808
  tail call void @llvm.dbg.declare(metadata ptr %ef_total_size, metadata !766, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_zip64) #10, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %is_zip64, metadata !767, metadata !DIExpression()), !dbg !811
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_really_zip64) #10, !dbg !812
  tail call void @llvm.dbg.declare(metadata ptr %is_really_zip64, metadata !768, metadata !DIExpression()), !dbg !813
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_winzip_aes) #10, !dbg !814
  tail call void @llvm.dbg.declare(metadata ptr %is_winzip_aes, metadata !769, metadata !DIExpression()), !dbg !815
  call void @llvm.lifetime.start.p0(i64 46, ptr %buf) #10, !dbg !816
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !770, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #10, !dbg !818
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !774, metadata !DIExpression()), !dbg !819
  store ptr null, ptr %ef, align 8, !dbg !820, !tbaa !235
  %0 = load ptr, ptr %de.addr, align 8, !dbg !821, !tbaa !235
  %filename = getelementptr inbounds %struct.zip_dirent, ptr %0, i32 0, i32 12, !dbg !822
  %1 = load ptr, ptr %filename, align 8, !dbg !822, !tbaa !823
  %call = call i32 @_zip_guess_encoding(ptr noundef %1, i32 noundef 0), !dbg !825
  store i32 %call, ptr %name_enc, align 4, !dbg !826, !tbaa !827
  %2 = load ptr, ptr %de.addr, align 8, !dbg !828, !tbaa !235
  %comment = getelementptr inbounds %struct.zip_dirent, ptr %2, i32 0, i32 14, !dbg !829
  %3 = load ptr, ptr %comment, align 8, !dbg !829, !tbaa !830
  %call1 = call i32 @_zip_guess_encoding(ptr noundef %3, i32 noundef 0), !dbg !831
  store i32 %call1, ptr %com_enc, align 4, !dbg !832, !tbaa !827
  %4 = load i32, ptr %name_enc, align 4, !dbg !833, !tbaa !827
  %cmp = icmp eq i32 %4, 2, !dbg !834
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !835

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %com_enc, align 4, !dbg !836, !tbaa !827
  %cmp2 = icmp eq i32 %5, 1, !dbg !837
  br i1 %cmp2, label %if.then, label %lor.lhs.false, !dbg !838

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load i32, ptr %name_enc, align 4, !dbg !839, !tbaa !827
  %cmp3 = icmp eq i32 %6, 1, !dbg !840
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false6, !dbg !841

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %7 = load i32, ptr %com_enc, align 4, !dbg !842, !tbaa !827
  %cmp5 = icmp eq i32 %7, 2, !dbg !843
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !844

lor.lhs.false6:                                   ; preds = %land.lhs.true4, %lor.lhs.false
  %8 = load i32, ptr %name_enc, align 4, !dbg !845, !tbaa !827
  %cmp7 = icmp eq i32 %8, 2, !dbg !846
  br i1 %cmp7, label %land.lhs.true8, label %if.else, !dbg !847

land.lhs.true8:                                   ; preds = %lor.lhs.false6
  %9 = load i32, ptr %com_enc, align 4, !dbg !848, !tbaa !827
  %cmp9 = icmp eq i32 %9, 2, !dbg !849
  br i1 %cmp9, label %if.then, label %if.else, !dbg !850

if.then:                                          ; preds = %land.lhs.true8, %land.lhs.true4, %land.lhs.true
  %10 = load ptr, ptr %de.addr, align 8, !dbg !851, !tbaa !235
  %bitflags = getelementptr inbounds %struct.zip_dirent, ptr %10, i32 0, i32 6, !dbg !852
  %11 = load i16, ptr %bitflags, align 4, !dbg !853, !tbaa !854
  %conv = zext i16 %11 to i32, !dbg !853
  %or = or i32 %conv, 2048, !dbg !853
  %conv10 = trunc i32 %or to i16, !dbg !853
  store i16 %conv10, ptr %bitflags, align 4, !dbg !853, !tbaa !854
  br label %if.end38, !dbg !851

if.else:                                          ; preds = %land.lhs.true8, %lor.lhs.false6
  %12 = load ptr, ptr %de.addr, align 8, !dbg !855, !tbaa !235
  %bitflags11 = getelementptr inbounds %struct.zip_dirent, ptr %12, i32 0, i32 6, !dbg !856
  %13 = load i16, ptr %bitflags11, align 4, !dbg !857, !tbaa !854
  %conv12 = zext i16 %13 to i32, !dbg !857
  %and = and i32 %conv12, 63487, !dbg !857
  %conv13 = trunc i32 %and to i16, !dbg !857
  store i16 %conv13, ptr %bitflags11, align 4, !dbg !857, !tbaa !854
  %14 = load i32, ptr %name_enc, align 4, !dbg !858, !tbaa !827
  %cmp14 = icmp eq i32 %14, 2, !dbg !860
  br i1 %cmp14, label %if.then16, label %if.end22, !dbg !861

if.then16:                                        ; preds = %if.else
  %15 = load ptr, ptr %de.addr, align 8, !dbg !862, !tbaa !235
  %filename17 = getelementptr inbounds %struct.zip_dirent, ptr %15, i32 0, i32 12, !dbg !864
  %16 = load ptr, ptr %filename17, align 8, !dbg !864, !tbaa !823
  %17 = load ptr, ptr %za.addr, align 8, !dbg !865, !tbaa !235
  %error = getelementptr inbounds %struct.zip, ptr %17, i32 0, i32 2, !dbg !866
  %call18 = call ptr @_zip_ef_utf8(i16 noundef zeroext 28789, ptr noundef %16, ptr noundef %error), !dbg !867
  store ptr %call18, ptr %ef, align 8, !dbg !868, !tbaa !235
  %18 = load ptr, ptr %ef, align 8, !dbg !869, !tbaa !235
  %cmp19 = icmp eq ptr %18, null, !dbg !871
  br i1 %cmp19, label %if.then21, label %if.end, !dbg !872

if.then21:                                        ; preds = %if.then16
  store i32 -1, ptr %retval, align 4, !dbg !873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !873

if.end:                                           ; preds = %if.then16
  br label %if.end22, !dbg !874

if.end22:                                         ; preds = %if.end, %if.else
  %19 = load i32, ptr %flags.addr, align 4, !dbg !875, !tbaa !558
  %and23 = and i32 %19, 256, !dbg !876
  %cmp24 = icmp eq i32 %and23, 0, !dbg !877
  br i1 %cmp24, label %land.lhs.true26, label %if.end37, !dbg !878

land.lhs.true26:                                  ; preds = %if.end22
  %20 = load i32, ptr %com_enc, align 4, !dbg !879, !tbaa !827
  %cmp27 = icmp eq i32 %20, 2, !dbg !880
  br i1 %cmp27, label %if.then29, label %if.end37, !dbg !881

if.then29:                                        ; preds = %land.lhs.true26
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef2) #10, !dbg !882
  tail call void @llvm.dbg.declare(metadata ptr %ef2, metadata !775, metadata !DIExpression()), !dbg !883
  %21 = load ptr, ptr %de.addr, align 8, !dbg !884, !tbaa !235
  %comment30 = getelementptr inbounds %struct.zip_dirent, ptr %21, i32 0, i32 14, !dbg !885
  %22 = load ptr, ptr %comment30, align 8, !dbg !885, !tbaa !830
  %23 = load ptr, ptr %za.addr, align 8, !dbg !886, !tbaa !235
  %error31 = getelementptr inbounds %struct.zip, ptr %23, i32 0, i32 2, !dbg !887
  %call32 = call ptr @_zip_ef_utf8(i16 noundef zeroext 25461, ptr noundef %22, ptr noundef %error31), !dbg !888
  store ptr %call32, ptr %ef2, align 8, !dbg !883, !tbaa !235
  %24 = load ptr, ptr %ef2, align 8, !dbg !889, !tbaa !235
  %cmp33 = icmp eq ptr %24, null, !dbg !891
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !892

if.then35:                                        ; preds = %if.then29
  %25 = load ptr, ptr %ef, align 8, !dbg !893, !tbaa !235
  call void @_zip_ef_free(ptr noundef %25), !dbg !895
  store i32 -1, ptr %retval, align 4, !dbg !896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !896

if.end36:                                         ; preds = %if.then29
  %26 = load ptr, ptr %ef, align 8, !dbg !897, !tbaa !235
  %27 = load ptr, ptr %ef2, align 8, !dbg !898, !tbaa !235
  %next = getelementptr inbounds %struct.zip_extra_field, ptr %27, i32 0, i32 0, !dbg !899
  store ptr %26, ptr %next, align 8, !dbg !900, !tbaa !901
  %28 = load ptr, ptr %ef2, align 8, !dbg !903, !tbaa !235
  store ptr %28, ptr %ef, align 8, !dbg !904, !tbaa !235
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !905
  br label %cleanup, !dbg !905

cleanup:                                          ; preds = %if.end36, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef2) #10, !dbg !905
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup360 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end37, !dbg !906

if.end37:                                         ; preds = %cleanup.cont, %land.lhs.true26, %if.end22
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  %29 = load ptr, ptr %de.addr, align 8, !dbg !907, !tbaa !235
  %encryption_method = getelementptr inbounds %struct.zip_dirent, ptr %29, i32 0, i32 20, !dbg !909
  %30 = load i16, ptr %encryption_method, align 2, !dbg !909, !tbaa !910
  %conv39 = zext i16 %30 to i32, !dbg !907
  %cmp40 = icmp eq i32 %conv39, 0, !dbg !911
  br i1 %cmp40, label %if.then42, label %if.else47, !dbg !912

if.then42:                                        ; preds = %if.end38
  %31 = load ptr, ptr %de.addr, align 8, !dbg !913, !tbaa !235
  %bitflags43 = getelementptr inbounds %struct.zip_dirent, ptr %31, i32 0, i32 6, !dbg !915
  %32 = load i16, ptr %bitflags43, align 4, !dbg !916, !tbaa !854
  %conv44 = zext i16 %32 to i32, !dbg !916
  %and45 = and i32 %conv44, 65534, !dbg !916
  %conv46 = trunc i32 %and45 to i16, !dbg !916
  store i16 %conv46, ptr %bitflags43, align 4, !dbg !916, !tbaa !854
  br label %if.end52, !dbg !917

if.else47:                                        ; preds = %if.end38
  %33 = load ptr, ptr %de.addr, align 8, !dbg !918, !tbaa !235
  %bitflags48 = getelementptr inbounds %struct.zip_dirent, ptr %33, i32 0, i32 6, !dbg !920
  %34 = load i16, ptr %bitflags48, align 4, !dbg !921, !tbaa !854
  %conv49 = zext i16 %34 to i32, !dbg !921
  %or50 = or i32 %conv49, 1, !dbg !921
  %conv51 = trunc i32 %or50 to i16, !dbg !921
  store i16 %conv51, ptr %bitflags48, align 4, !dbg !921, !tbaa !854
  br label %if.end52

if.end52:                                         ; preds = %if.else47, %if.then42
  %35 = load ptr, ptr %de.addr, align 8, !dbg !922, !tbaa !235
  %36 = load i32, ptr %flags.addr, align 4, !dbg !923, !tbaa !558
  %call53 = call zeroext i1 @_zip_dirent_needs_zip64(ptr noundef %35, i32 noundef %36), !dbg !924
  %frombool = zext i1 %call53 to i8, !dbg !925
  store i8 %frombool, ptr %is_really_zip64, align 1, !dbg !925, !tbaa !527
  %37 = load i32, ptr %flags.addr, align 4, !dbg !926, !tbaa !558
  %and54 = and i32 %37, 1280, !dbg !927
  %cmp55 = icmp eq i32 %and54, 1280, !dbg !928
  br i1 %cmp55, label %lor.end, label %lor.rhs, !dbg !929

lor.rhs:                                          ; preds = %if.end52
  %38 = load i8, ptr %is_really_zip64, align 1, !dbg !930, !tbaa !527, !range !613, !noundef !614
  %tobool = trunc i8 %38 to i1, !dbg !930
  br label %lor.end, !dbg !929

lor.end:                                          ; preds = %lor.rhs, %if.end52
  %39 = phi i1 [ true, %if.end52 ], [ %tobool, %lor.rhs ]
  %frombool58 = zext i1 %39 to i8, !dbg !931
  store i8 %frombool58, ptr %is_zip64, align 1, !dbg !931, !tbaa !527
  %40 = load ptr, ptr %de.addr, align 8, !dbg !932, !tbaa !235
  %encryption_method59 = getelementptr inbounds %struct.zip_dirent, ptr %40, i32 0, i32 20, !dbg !933
  %41 = load i16, ptr %encryption_method59, align 2, !dbg !933, !tbaa !910
  %conv60 = zext i16 %41 to i32, !dbg !932
  %cmp61 = icmp eq i32 %conv60, 257, !dbg !934
  br i1 %cmp61, label %lor.end73, label %lor.lhs.false63, !dbg !935

lor.lhs.false63:                                  ; preds = %lor.end
  %42 = load ptr, ptr %de.addr, align 8, !dbg !936, !tbaa !235
  %encryption_method64 = getelementptr inbounds %struct.zip_dirent, ptr %42, i32 0, i32 20, !dbg !937
  %43 = load i16, ptr %encryption_method64, align 2, !dbg !937, !tbaa !910
  %conv65 = zext i16 %43 to i32, !dbg !936
  %cmp66 = icmp eq i32 %conv65, 258, !dbg !938
  br i1 %cmp66, label %lor.end73, label %lor.rhs68, !dbg !939

lor.rhs68:                                        ; preds = %lor.lhs.false63
  %44 = load ptr, ptr %de.addr, align 8, !dbg !940, !tbaa !235
  %encryption_method69 = getelementptr inbounds %struct.zip_dirent, ptr %44, i32 0, i32 20, !dbg !941
  %45 = load i16, ptr %encryption_method69, align 2, !dbg !941, !tbaa !910
  %conv70 = zext i16 %45 to i32, !dbg !940
  %cmp71 = icmp eq i32 %conv70, 259, !dbg !942
  br label %lor.end73, !dbg !939

lor.end73:                                        ; preds = %lor.rhs68, %lor.lhs.false63, %lor.end
  %46 = phi i1 [ true, %lor.lhs.false63 ], [ true, %lor.end ], [ %cmp71, %lor.rhs68 ]
  %frombool74 = zext i1 %46 to i8, !dbg !943
  store i8 %frombool74, ptr %is_winzip_aes, align 1, !dbg !943, !tbaa !527
  %47 = load i8, ptr %is_zip64, align 1, !dbg !944, !tbaa !527, !range !613, !noundef !614
  %tobool75 = trunc i8 %47 to i1, !dbg !944
  br i1 %tobool75, label %if.then76, label %if.end151, !dbg !945

if.then76:                                        ; preds = %lor.end73
  call void @llvm.lifetime.start.p0(i64 28, ptr %ef_zip64) #10, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %ef_zip64, metadata !780, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef_buffer) #10, !dbg !948
  tail call void @llvm.dbg.declare(metadata ptr %ef_buffer, metadata !786, metadata !DIExpression()), !dbg !949
  %arraydecay = getelementptr inbounds [28 x i8], ptr %ef_zip64, i64 0, i64 0, !dbg !950
  %call77 = call ptr @_zip_buffer_new(ptr noundef %arraydecay, i64 noundef 28), !dbg !951
  store ptr %call77, ptr %ef_buffer, align 8, !dbg !949, !tbaa !235
  %48 = load ptr, ptr %ef_buffer, align 8, !dbg !952, !tbaa !235
  %cmp78 = icmp eq ptr %48, null, !dbg !954
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !955

if.then80:                                        ; preds = %if.then76
  %49 = load ptr, ptr %za.addr, align 8, !dbg !956, !tbaa !235
  %error81 = getelementptr inbounds %struct.zip, ptr %49, i32 0, i32 2, !dbg !958
  call void @zip_error_set(ptr noundef %error81, i32 noundef 14, i32 noundef 0), !dbg !959
  %50 = load ptr, ptr %ef, align 8, !dbg !960, !tbaa !235
  call void @_zip_ef_free(ptr noundef %50), !dbg !961
  store i32 -1, ptr %retval, align 4, !dbg !962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup147, !dbg !962

if.end82:                                         ; preds = %if.then76
  %51 = load i32, ptr %flags.addr, align 4, !dbg !963, !tbaa !558
  %and83 = and i32 %51, 256, !dbg !965
  %tobool84 = icmp ne i32 %and83, 0, !dbg !965
  br i1 %tobool84, label %if.then85, label %if.else100, !dbg !966

if.then85:                                        ; preds = %if.end82
  %52 = load i32, ptr %flags.addr, align 4, !dbg !967, !tbaa !558
  %and86 = and i32 %52, 1024, !dbg !970
  %tobool87 = icmp ne i32 %and86, 0, !dbg !970
  br i1 %tobool87, label %if.then94, label %lor.lhs.false88, !dbg !971

lor.lhs.false88:                                  ; preds = %if.then85
  %53 = load ptr, ptr %de.addr, align 8, !dbg !972, !tbaa !235
  %comp_size = getelementptr inbounds %struct.zip_dirent, ptr %53, i32 0, i32 10, !dbg !973
  %54 = load i64, ptr %comp_size, align 8, !dbg !973, !tbaa !974
  %cmp89 = icmp ugt i64 %54, 4294967295, !dbg !975
  br i1 %cmp89, label %if.then94, label %lor.lhs.false91, !dbg !976

lor.lhs.false91:                                  ; preds = %lor.lhs.false88
  %55 = load ptr, ptr %de.addr, align 8, !dbg !977, !tbaa !235
  %uncomp_size = getelementptr inbounds %struct.zip_dirent, ptr %55, i32 0, i32 11, !dbg !978
  %56 = load i64, ptr %uncomp_size, align 8, !dbg !978, !tbaa !979
  %cmp92 = icmp ugt i64 %56, 4294967295, !dbg !980
  br i1 %cmp92, label %if.then94, label %if.end99, !dbg !981

if.then94:                                        ; preds = %lor.lhs.false91, %lor.lhs.false88, %if.then85
  %57 = load ptr, ptr %ef_buffer, align 8, !dbg !982, !tbaa !235
  %58 = load ptr, ptr %de.addr, align 8, !dbg !984, !tbaa !235
  %uncomp_size95 = getelementptr inbounds %struct.zip_dirent, ptr %58, i32 0, i32 11, !dbg !985
  %59 = load i64, ptr %uncomp_size95, align 8, !dbg !985, !tbaa !979
  %call96 = call i32 @_zip_buffer_put_64(ptr noundef %57, i64 noundef %59), !dbg !986
  %60 = load ptr, ptr %ef_buffer, align 8, !dbg !987, !tbaa !235
  %61 = load ptr, ptr %de.addr, align 8, !dbg !988, !tbaa !235
  %comp_size97 = getelementptr inbounds %struct.zip_dirent, ptr %61, i32 0, i32 10, !dbg !989
  %62 = load i64, ptr %comp_size97, align 8, !dbg !989, !tbaa !974
  %call98 = call i32 @_zip_buffer_put_64(ptr noundef %60, i64 noundef %62), !dbg !990
  br label %if.end99, !dbg !991

if.end99:                                         ; preds = %if.then94, %lor.lhs.false91
  br label %if.end137, !dbg !992

if.else100:                                       ; preds = %if.end82
  %63 = load i32, ptr %flags.addr, align 4, !dbg !993, !tbaa !558
  %and101 = and i32 %63, 1024, !dbg !996
  %tobool102 = icmp ne i32 %and101, 0, !dbg !996
  br i1 %tobool102, label %if.then114, label %lor.lhs.false103, !dbg !997

lor.lhs.false103:                                 ; preds = %if.else100
  %64 = load ptr, ptr %de.addr, align 8, !dbg !998, !tbaa !235
  %comp_size104 = getelementptr inbounds %struct.zip_dirent, ptr %64, i32 0, i32 10, !dbg !999
  %65 = load i64, ptr %comp_size104, align 8, !dbg !999, !tbaa !974
  %cmp105 = icmp ugt i64 %65, 4294967295, !dbg !1000
  br i1 %cmp105, label %if.then114, label %lor.lhs.false107, !dbg !1001

lor.lhs.false107:                                 ; preds = %lor.lhs.false103
  %66 = load ptr, ptr %de.addr, align 8, !dbg !1002, !tbaa !235
  %uncomp_size108 = getelementptr inbounds %struct.zip_dirent, ptr %66, i32 0, i32 11, !dbg !1003
  %67 = load i64, ptr %uncomp_size108, align 8, !dbg !1003, !tbaa !979
  %cmp109 = icmp ugt i64 %67, 4294967295, !dbg !1004
  br i1 %cmp109, label %if.then114, label %lor.lhs.false111, !dbg !1005

lor.lhs.false111:                                 ; preds = %lor.lhs.false107
  %68 = load ptr, ptr %de.addr, align 8, !dbg !1006, !tbaa !235
  %offset = getelementptr inbounds %struct.zip_dirent, ptr %68, i32 0, i32 18, !dbg !1007
  %69 = load i64, ptr %offset, align 8, !dbg !1007, !tbaa !1008
  %cmp112 = icmp ugt i64 %69, 4294967295, !dbg !1009
  br i1 %cmp112, label %if.then114, label %if.end136, !dbg !1010

if.then114:                                       ; preds = %lor.lhs.false111, %lor.lhs.false107, %lor.lhs.false103, %if.else100
  %70 = load ptr, ptr %de.addr, align 8, !dbg !1011, !tbaa !235
  %uncomp_size115 = getelementptr inbounds %struct.zip_dirent, ptr %70, i32 0, i32 11, !dbg !1014
  %71 = load i64, ptr %uncomp_size115, align 8, !dbg !1014, !tbaa !979
  %cmp116 = icmp uge i64 %71, 4294967295, !dbg !1015
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !1016

if.then118:                                       ; preds = %if.then114
  %72 = load ptr, ptr %ef_buffer, align 8, !dbg !1017, !tbaa !235
  %73 = load ptr, ptr %de.addr, align 8, !dbg !1019, !tbaa !235
  %uncomp_size119 = getelementptr inbounds %struct.zip_dirent, ptr %73, i32 0, i32 11, !dbg !1020
  %74 = load i64, ptr %uncomp_size119, align 8, !dbg !1020, !tbaa !979
  %call120 = call i32 @_zip_buffer_put_64(ptr noundef %72, i64 noundef %74), !dbg !1021
  br label %if.end121, !dbg !1022

if.end121:                                        ; preds = %if.then118, %if.then114
  %75 = load ptr, ptr %de.addr, align 8, !dbg !1023, !tbaa !235
  %comp_size122 = getelementptr inbounds %struct.zip_dirent, ptr %75, i32 0, i32 10, !dbg !1025
  %76 = load i64, ptr %comp_size122, align 8, !dbg !1025, !tbaa !974
  %cmp123 = icmp uge i64 %76, 4294967295, !dbg !1026
  br i1 %cmp123, label %if.then125, label %if.end128, !dbg !1027

if.then125:                                       ; preds = %if.end121
  %77 = load ptr, ptr %ef_buffer, align 8, !dbg !1028, !tbaa !235
  %78 = load ptr, ptr %de.addr, align 8, !dbg !1030, !tbaa !235
  %comp_size126 = getelementptr inbounds %struct.zip_dirent, ptr %78, i32 0, i32 10, !dbg !1031
  %79 = load i64, ptr %comp_size126, align 8, !dbg !1031, !tbaa !974
  %call127 = call i32 @_zip_buffer_put_64(ptr noundef %77, i64 noundef %79), !dbg !1032
  br label %if.end128, !dbg !1033

if.end128:                                        ; preds = %if.then125, %if.end121
  %80 = load ptr, ptr %de.addr, align 8, !dbg !1034, !tbaa !235
  %offset129 = getelementptr inbounds %struct.zip_dirent, ptr %80, i32 0, i32 18, !dbg !1036
  %81 = load i64, ptr %offset129, align 8, !dbg !1036, !tbaa !1008
  %cmp130 = icmp uge i64 %81, 4294967295, !dbg !1037
  br i1 %cmp130, label %if.then132, label %if.end135, !dbg !1038

if.then132:                                       ; preds = %if.end128
  %82 = load ptr, ptr %ef_buffer, align 8, !dbg !1039, !tbaa !235
  %83 = load ptr, ptr %de.addr, align 8, !dbg !1041, !tbaa !235
  %offset133 = getelementptr inbounds %struct.zip_dirent, ptr %83, i32 0, i32 18, !dbg !1042
  %84 = load i64, ptr %offset133, align 8, !dbg !1042, !tbaa !1008
  %call134 = call i32 @_zip_buffer_put_64(ptr noundef %82, i64 noundef %84), !dbg !1043
  br label %if.end135, !dbg !1044

if.end135:                                        ; preds = %if.then132, %if.end128
  br label %if.end136, !dbg !1045

if.end136:                                        ; preds = %if.end135, %lor.lhs.false111
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end99
  %85 = load ptr, ptr %ef_buffer, align 8, !dbg !1046, !tbaa !235
  %call138 = call zeroext i1 @_zip_buffer_ok(ptr noundef %85), !dbg !1048
  br i1 %call138, label %if.end141, label %if.then139, !dbg !1049

if.then139:                                       ; preds = %if.end137
  %86 = load ptr, ptr %za.addr, align 8, !dbg !1050, !tbaa !235
  %error140 = getelementptr inbounds %struct.zip, ptr %86, i32 0, i32 2, !dbg !1052
  call void @zip_error_set(ptr noundef %error140, i32 noundef 20, i32 noundef 0), !dbg !1053
  %87 = load ptr, ptr %ef_buffer, align 8, !dbg !1054, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %87), !dbg !1055
  %88 = load ptr, ptr %ef, align 8, !dbg !1056, !tbaa !235
  call void @_zip_ef_free(ptr noundef %88), !dbg !1057
  store i32 -1, ptr %retval, align 4, !dbg !1058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup147, !dbg !1058

if.end141:                                        ; preds = %if.end137
  %89 = load ptr, ptr %ef_buffer, align 8, !dbg !1059, !tbaa !235
  %call142 = call i64 @_zip_buffer_offset(ptr noundef %89), !dbg !1060
  %conv143 = trunc i64 %call142 to i16, !dbg !1061
  %arraydecay144 = getelementptr inbounds [28 x i8], ptr %ef_zip64, i64 0, i64 0, !dbg !1062
  %call145 = call ptr @_zip_ef_new(i16 noundef zeroext 1, i16 noundef zeroext %conv143, ptr noundef %arraydecay144, i32 noundef 768), !dbg !1063
  store ptr %call145, ptr %ef64, align 8, !dbg !1064, !tbaa !235
  %90 = load ptr, ptr %ef_buffer, align 8, !dbg !1065, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %90), !dbg !1066
  %91 = load ptr, ptr %ef, align 8, !dbg !1067, !tbaa !235
  %92 = load ptr, ptr %ef64, align 8, !dbg !1068, !tbaa !235
  %next146 = getelementptr inbounds %struct.zip_extra_field, ptr %92, i32 0, i32 0, !dbg !1069
  store ptr %91, ptr %next146, align 8, !dbg !1070, !tbaa !901
  %93 = load ptr, ptr %ef64, align 8, !dbg !1071, !tbaa !235
  store ptr %93, ptr %ef, align 8, !dbg !1072, !tbaa !235
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1073
  br label %cleanup147, !dbg !1073

cleanup147:                                       ; preds = %if.end141, %if.then139, %if.then80
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef_buffer) #10, !dbg !1073
  call void @llvm.lifetime.end.p0(i64 28, ptr %ef_zip64) #10, !dbg !1073
  %cleanup.dest149 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest149, label %cleanup360 [
    i32 0, label %cleanup.cont150
  ]

cleanup.cont150:                                  ; preds = %cleanup147
  br label %if.end151, !dbg !1074

if.end151:                                        ; preds = %cleanup.cont150, %lor.end73
  %94 = load i8, ptr %is_winzip_aes, align 1, !dbg !1075, !tbaa !527, !range !613, !noundef !614
  %tobool152 = trunc i8 %94 to i1, !dbg !1075
  br i1 %tobool152, label %if.then153, label %if.end183, !dbg !1076

if.then153:                                       ; preds = %if.end151
  call void @llvm.lifetime.start.p0(i64 7, ptr %data) #10, !dbg !1077
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !787, metadata !DIExpression()), !dbg !1078
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef_buffer154) #10, !dbg !1079
  tail call void @llvm.dbg.declare(metadata ptr %ef_buffer154, metadata !793, metadata !DIExpression()), !dbg !1080
  %arraydecay155 = getelementptr inbounds [7 x i8], ptr %data, i64 0, i64 0, !dbg !1081
  %call156 = call ptr @_zip_buffer_new(ptr noundef %arraydecay155, i64 noundef 7), !dbg !1082
  store ptr %call156, ptr %ef_buffer154, align 8, !dbg !1080, !tbaa !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef_winzip) #10, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %ef_winzip, metadata !794, metadata !DIExpression()), !dbg !1084
  %95 = load ptr, ptr %ef_buffer154, align 8, !dbg !1085, !tbaa !235
  %cmp157 = icmp eq ptr %95, null, !dbg !1087
  br i1 %cmp157, label %if.then159, label %if.end161, !dbg !1088

if.then159:                                       ; preds = %if.then153
  %96 = load ptr, ptr %za.addr, align 8, !dbg !1089, !tbaa !235
  %error160 = getelementptr inbounds %struct.zip, ptr %96, i32 0, i32 2, !dbg !1091
  call void @zip_error_set(ptr noundef %error160, i32 noundef 14, i32 noundef 0), !dbg !1092
  %97 = load ptr, ptr %ef, align 8, !dbg !1093, !tbaa !235
  call void @_zip_ef_free(ptr noundef %97), !dbg !1094
  store i32 -1, ptr %retval, align 4, !dbg !1095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup178, !dbg !1095

if.end161:                                        ; preds = %if.then153
  %98 = load ptr, ptr %ef_buffer154, align 8, !dbg !1096, !tbaa !235
  %call162 = call i32 @_zip_buffer_put_16(ptr noundef %98, i16 noundef zeroext 2), !dbg !1097
  %99 = load ptr, ptr %ef_buffer154, align 8, !dbg !1098, !tbaa !235
  %call163 = call i32 @_zip_buffer_put(ptr noundef %99, ptr noundef @.str.5, i64 noundef 2), !dbg !1099
  %100 = load ptr, ptr %ef_buffer154, align 8, !dbg !1100, !tbaa !235
  %101 = load ptr, ptr %de.addr, align 8, !dbg !1101, !tbaa !235
  %encryption_method164 = getelementptr inbounds %struct.zip_dirent, ptr %101, i32 0, i32 20, !dbg !1102
  %102 = load i16, ptr %encryption_method164, align 2, !dbg !1102, !tbaa !910
  %conv165 = zext i16 %102 to i32, !dbg !1101
  %and166 = and i32 %conv165, 255, !dbg !1103
  %conv167 = trunc i32 %and166 to i8, !dbg !1104
  %call168 = call i32 @_zip_buffer_put_8(ptr noundef %100, i8 noundef zeroext %conv167), !dbg !1105
  %103 = load ptr, ptr %ef_buffer154, align 8, !dbg !1106, !tbaa !235
  %104 = load ptr, ptr %de.addr, align 8, !dbg !1107, !tbaa !235
  %comp_method = getelementptr inbounds %struct.zip_dirent, ptr %104, i32 0, i32 7, !dbg !1108
  %105 = load i32, ptr %comp_method, align 8, !dbg !1108, !tbaa !1109
  %conv169 = trunc i32 %105 to i16, !dbg !1110
  %call170 = call i32 @_zip_buffer_put_16(ptr noundef %103, i16 noundef zeroext %conv169), !dbg !1111
  %106 = load ptr, ptr %ef_buffer154, align 8, !dbg !1112, !tbaa !235
  %call171 = call zeroext i1 @_zip_buffer_ok(ptr noundef %106), !dbg !1114
  br i1 %call171, label %if.end174, label %if.then172, !dbg !1115

if.then172:                                       ; preds = %if.end161
  %107 = load ptr, ptr %za.addr, align 8, !dbg !1116, !tbaa !235
  %error173 = getelementptr inbounds %struct.zip, ptr %107, i32 0, i32 2, !dbg !1118
  call void @zip_error_set(ptr noundef %error173, i32 noundef 20, i32 noundef 0), !dbg !1119
  %108 = load ptr, ptr %ef_buffer154, align 8, !dbg !1120, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %108), !dbg !1121
  %109 = load ptr, ptr %ef, align 8, !dbg !1122, !tbaa !235
  call void @_zip_ef_free(ptr noundef %109), !dbg !1123
  store i32 -1, ptr %retval, align 4, !dbg !1124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup178, !dbg !1124

if.end174:                                        ; preds = %if.end161
  %arraydecay175 = getelementptr inbounds [7 x i8], ptr %data, i64 0, i64 0, !dbg !1125
  %call176 = call ptr @_zip_ef_new(i16 noundef zeroext -26367, i16 noundef zeroext 7, ptr noundef %arraydecay175, i32 noundef 768), !dbg !1126
  store ptr %call176, ptr %ef_winzip, align 8, !dbg !1127, !tbaa !235
  %110 = load ptr, ptr %ef_buffer154, align 8, !dbg !1128, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %110), !dbg !1129
  %111 = load ptr, ptr %ef, align 8, !dbg !1130, !tbaa !235
  %112 = load ptr, ptr %ef_winzip, align 8, !dbg !1131, !tbaa !235
  %next177 = getelementptr inbounds %struct.zip_extra_field, ptr %112, i32 0, i32 0, !dbg !1132
  store ptr %111, ptr %next177, align 8, !dbg !1133, !tbaa !901
  %113 = load ptr, ptr %ef_winzip, align 8, !dbg !1134, !tbaa !235
  store ptr %113, ptr %ef, align 8, !dbg !1135, !tbaa !235
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1136
  br label %cleanup178, !dbg !1136

cleanup178:                                       ; preds = %if.end174, %if.then172, %if.then159
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef_winzip) #10, !dbg !1136
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef_buffer154) #10, !dbg !1136
  call void @llvm.lifetime.end.p0(i64 7, ptr %data) #10, !dbg !1136
  %cleanup.dest181 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest181, label %cleanup360 [
    i32 0, label %cleanup.cont182
  ]

cleanup.cont182:                                  ; preds = %cleanup178
  br label %if.end183, !dbg !1137

if.end183:                                        ; preds = %cleanup.cont182, %if.end151
  %arraydecay184 = getelementptr inbounds [46 x i8], ptr %buf, i64 0, i64 0, !dbg !1138
  %call185 = call ptr @_zip_buffer_new(ptr noundef %arraydecay184, i64 noundef 46), !dbg !1140
  store ptr %call185, ptr %buffer, align 8, !dbg !1141, !tbaa !235
  %cmp186 = icmp eq ptr %call185, null, !dbg !1142
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !1143

if.then188:                                       ; preds = %if.end183
  %114 = load ptr, ptr %za.addr, align 8, !dbg !1144, !tbaa !235
  %error189 = getelementptr inbounds %struct.zip, ptr %114, i32 0, i32 2, !dbg !1146
  call void @zip_error_set(ptr noundef %error189, i32 noundef 14, i32 noundef 0), !dbg !1147
  %115 = load ptr, ptr %ef, align 8, !dbg !1148, !tbaa !235
  call void @_zip_ef_free(ptr noundef %115), !dbg !1149
  store i32 -1, ptr %retval, align 4, !dbg !1150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1150

if.end190:                                        ; preds = %if.end183
  %116 = load ptr, ptr %buffer, align 8, !dbg !1151, !tbaa !235
  %117 = load i32, ptr %flags.addr, align 4, !dbg !1152, !tbaa !558
  %and191 = and i32 %117, 256, !dbg !1153
  %tobool192 = icmp ne i32 %and191, 0, !dbg !1154
  %118 = zext i1 %tobool192 to i64, !dbg !1154
  %cond = select i1 %tobool192, ptr @.str.3, ptr @.str.4, !dbg !1154
  %call193 = call i32 @_zip_buffer_put(ptr noundef %116, ptr noundef %cond, i64 noundef 4), !dbg !1155
  %119 = load i32, ptr %flags.addr, align 4, !dbg !1156, !tbaa !558
  %and194 = and i32 %119, 256, !dbg !1158
  %cmp195 = icmp eq i32 %and194, 0, !dbg !1159
  br i1 %cmp195, label %if.then197, label %if.end204, !dbg !1160

if.then197:                                       ; preds = %if.end190
  %120 = load ptr, ptr %buffer, align 8, !dbg !1161, !tbaa !235
  %121 = load i8, ptr %is_really_zip64, align 1, !dbg !1163, !tbaa !527, !range !613, !noundef !614
  %tobool198 = trunc i8 %121 to i1, !dbg !1163
  br i1 %tobool198, label %cond.true, label %cond.false, !dbg !1163

cond.true:                                        ; preds = %if.then197
  br label %cond.end, !dbg !1163

cond.false:                                       ; preds = %if.then197
  %122 = load ptr, ptr %de.addr, align 8, !dbg !1164, !tbaa !235
  %version_madeby = getelementptr inbounds %struct.zip_dirent, ptr %122, i32 0, i32 4, !dbg !1165
  %123 = load i16, ptr %version_madeby, align 8, !dbg !1165, !tbaa !1166
  %conv200 = zext i16 %123 to i32, !dbg !1164
  br label %cond.end, !dbg !1163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond201 = phi i32 [ 45, %cond.true ], [ %conv200, %cond.false ], !dbg !1163
  %conv202 = trunc i32 %cond201 to i16, !dbg !1167
  %call203 = call i32 @_zip_buffer_put_16(ptr noundef %120, i16 noundef zeroext %conv202), !dbg !1168
  br label %if.end204, !dbg !1169

if.end204:                                        ; preds = %cond.end, %if.end190
  %124 = load ptr, ptr %buffer, align 8, !dbg !1170, !tbaa !235
  %125 = load i8, ptr %is_really_zip64, align 1, !dbg !1171, !tbaa !527, !range !613, !noundef !614
  %tobool205 = trunc i8 %125 to i1, !dbg !1171
  br i1 %tobool205, label %cond.true207, label %cond.false208, !dbg !1171

cond.true207:                                     ; preds = %if.end204
  br label %cond.end210, !dbg !1171

cond.false208:                                    ; preds = %if.end204
  %126 = load ptr, ptr %de.addr, align 8, !dbg !1172, !tbaa !235
  %version_needed = getelementptr inbounds %struct.zip_dirent, ptr %126, i32 0, i32 5, !dbg !1173
  %127 = load i16, ptr %version_needed, align 2, !dbg !1173, !tbaa !1174
  %conv209 = zext i16 %127 to i32, !dbg !1172
  br label %cond.end210, !dbg !1171

cond.end210:                                      ; preds = %cond.false208, %cond.true207
  %cond211 = phi i32 [ 45, %cond.true207 ], [ %conv209, %cond.false208 ], !dbg !1171
  %conv212 = trunc i32 %cond211 to i16, !dbg !1175
  %call213 = call i32 @_zip_buffer_put_16(ptr noundef %124, i16 noundef zeroext %conv212), !dbg !1176
  %128 = load ptr, ptr %buffer, align 8, !dbg !1177, !tbaa !235
  %129 = load ptr, ptr %de.addr, align 8, !dbg !1178, !tbaa !235
  %bitflags214 = getelementptr inbounds %struct.zip_dirent, ptr %129, i32 0, i32 6, !dbg !1179
  %130 = load i16, ptr %bitflags214, align 4, !dbg !1179, !tbaa !854
  %call215 = call i32 @_zip_buffer_put_16(ptr noundef %128, i16 noundef zeroext %130), !dbg !1180
  %131 = load i8, ptr %is_winzip_aes, align 1, !dbg !1181, !tbaa !527, !range !613, !noundef !614
  %tobool216 = trunc i8 %131 to i1, !dbg !1181
  br i1 %tobool216, label %if.then217, label %if.else219, !dbg !1183

if.then217:                                       ; preds = %cond.end210
  %132 = load ptr, ptr %buffer, align 8, !dbg !1184, !tbaa !235
  %call218 = call i32 @_zip_buffer_put_16(ptr noundef %132, i16 noundef zeroext 99), !dbg !1186
  br label %if.end223, !dbg !1187

if.else219:                                       ; preds = %cond.end210
  %133 = load ptr, ptr %buffer, align 8, !dbg !1188, !tbaa !235
  %134 = load ptr, ptr %de.addr, align 8, !dbg !1190, !tbaa !235
  %comp_method220 = getelementptr inbounds %struct.zip_dirent, ptr %134, i32 0, i32 7, !dbg !1191
  %135 = load i32, ptr %comp_method220, align 8, !dbg !1191, !tbaa !1109
  %conv221 = trunc i32 %135 to i16, !dbg !1192
  %call222 = call i32 @_zip_buffer_put_16(ptr noundef %133, i16 noundef zeroext %conv221), !dbg !1193
  br label %if.end223

if.end223:                                        ; preds = %if.else219, %if.then217
  %136 = load ptr, ptr %de.addr, align 8, !dbg !1194, !tbaa !235
  %last_mod = getelementptr inbounds %struct.zip_dirent, ptr %136, i32 0, i32 8, !dbg !1195
  %137 = load i64, ptr %last_mod, align 8, !dbg !1195, !tbaa !1196
  call void @_zip_u2d_time(i64 noundef %137, ptr noundef %dostime, ptr noundef %dosdate), !dbg !1197
  %138 = load ptr, ptr %buffer, align 8, !dbg !1198, !tbaa !235
  %139 = load i16, ptr %dostime, align 2, !dbg !1199, !tbaa !1200
  %call224 = call i32 @_zip_buffer_put_16(ptr noundef %138, i16 noundef zeroext %139), !dbg !1201
  %140 = load ptr, ptr %buffer, align 8, !dbg !1202, !tbaa !235
  %141 = load i16, ptr %dosdate, align 2, !dbg !1203, !tbaa !1200
  %call225 = call i32 @_zip_buffer_put_16(ptr noundef %140, i16 noundef zeroext %141), !dbg !1204
  %142 = load i8, ptr %is_winzip_aes, align 1, !dbg !1205, !tbaa !527, !range !613, !noundef !614
  %tobool226 = trunc i8 %142 to i1, !dbg !1205
  br i1 %tobool226, label %land.lhs.true228, label %if.else234, !dbg !1207

land.lhs.true228:                                 ; preds = %if.end223
  %143 = load ptr, ptr %de.addr, align 8, !dbg !1208, !tbaa !235
  %uncomp_size229 = getelementptr inbounds %struct.zip_dirent, ptr %143, i32 0, i32 11, !dbg !1209
  %144 = load i64, ptr %uncomp_size229, align 8, !dbg !1209, !tbaa !979
  %cmp230 = icmp ult i64 %144, 20, !dbg !1210
  br i1 %cmp230, label %if.then232, label %if.else234, !dbg !1211

if.then232:                                       ; preds = %land.lhs.true228
  %145 = load ptr, ptr %buffer, align 8, !dbg !1212, !tbaa !235
  %call233 = call i32 @_zip_buffer_put_32(ptr noundef %145, i32 noundef 0), !dbg !1214
  br label %if.end236, !dbg !1215

if.else234:                                       ; preds = %land.lhs.true228, %if.end223
  %146 = load ptr, ptr %buffer, align 8, !dbg !1216, !tbaa !235
  %147 = load ptr, ptr %de.addr, align 8, !dbg !1218, !tbaa !235
  %crc = getelementptr inbounds %struct.zip_dirent, ptr %147, i32 0, i32 9, !dbg !1219
  %148 = load i32, ptr %crc, align 8, !dbg !1219, !tbaa !1220
  %call235 = call i32 @_zip_buffer_put_32(ptr noundef %146, i32 noundef %148), !dbg !1221
  br label %if.end236

if.end236:                                        ; preds = %if.else234, %if.then232
  %149 = load i32, ptr %flags.addr, align 4, !dbg !1222, !tbaa !558
  %and237 = and i32 %149, 256, !dbg !1224
  %cmp238 = icmp eq i32 %and237, 256, !dbg !1225
  br i1 %cmp238, label %land.lhs.true240, label %if.else251, !dbg !1226

land.lhs.true240:                                 ; preds = %if.end236
  %150 = load ptr, ptr %de.addr, align 8, !dbg !1227, !tbaa !235
  %comp_size241 = getelementptr inbounds %struct.zip_dirent, ptr %150, i32 0, i32 10, !dbg !1228
  %151 = load i64, ptr %comp_size241, align 8, !dbg !1228, !tbaa !974
  %cmp242 = icmp uge i64 %151, 4294967295, !dbg !1229
  br i1 %cmp242, label %if.then248, label %lor.lhs.false244, !dbg !1230

lor.lhs.false244:                                 ; preds = %land.lhs.true240
  %152 = load ptr, ptr %de.addr, align 8, !dbg !1231, !tbaa !235
  %uncomp_size245 = getelementptr inbounds %struct.zip_dirent, ptr %152, i32 0, i32 11, !dbg !1232
  %153 = load i64, ptr %uncomp_size245, align 8, !dbg !1232, !tbaa !979
  %cmp246 = icmp uge i64 %153, 4294967295, !dbg !1233
  br i1 %cmp246, label %if.then248, label %if.else251, !dbg !1234

if.then248:                                       ; preds = %lor.lhs.false244, %land.lhs.true240
  %154 = load ptr, ptr %buffer, align 8, !dbg !1235, !tbaa !235
  %call249 = call i32 @_zip_buffer_put_32(ptr noundef %154, i32 noundef -1), !dbg !1237
  %155 = load ptr, ptr %buffer, align 8, !dbg !1238, !tbaa !235
  %call250 = call i32 @_zip_buffer_put_32(ptr noundef %155, i32 noundef -1), !dbg !1239
  br label %if.end272, !dbg !1240

if.else251:                                       ; preds = %lor.lhs.false244, %if.end236
  %156 = load ptr, ptr %de.addr, align 8, !dbg !1241, !tbaa !235
  %comp_size252 = getelementptr inbounds %struct.zip_dirent, ptr %156, i32 0, i32 10, !dbg !1244
  %157 = load i64, ptr %comp_size252, align 8, !dbg !1244, !tbaa !974
  %cmp253 = icmp ult i64 %157, 4294967295, !dbg !1245
  br i1 %cmp253, label %if.then255, label %if.else259, !dbg !1246

if.then255:                                       ; preds = %if.else251
  %158 = load ptr, ptr %buffer, align 8, !dbg !1247, !tbaa !235
  %159 = load ptr, ptr %de.addr, align 8, !dbg !1249, !tbaa !235
  %comp_size256 = getelementptr inbounds %struct.zip_dirent, ptr %159, i32 0, i32 10, !dbg !1250
  %160 = load i64, ptr %comp_size256, align 8, !dbg !1250, !tbaa !974
  %conv257 = trunc i64 %160 to i32, !dbg !1251
  %call258 = call i32 @_zip_buffer_put_32(ptr noundef %158, i32 noundef %conv257), !dbg !1252
  br label %if.end261, !dbg !1253

if.else259:                                       ; preds = %if.else251
  %161 = load ptr, ptr %buffer, align 8, !dbg !1254, !tbaa !235
  %call260 = call i32 @_zip_buffer_put_32(ptr noundef %161, i32 noundef -1), !dbg !1256
  br label %if.end261

if.end261:                                        ; preds = %if.else259, %if.then255
  %162 = load ptr, ptr %de.addr, align 8, !dbg !1257, !tbaa !235
  %uncomp_size262 = getelementptr inbounds %struct.zip_dirent, ptr %162, i32 0, i32 11, !dbg !1259
  %163 = load i64, ptr %uncomp_size262, align 8, !dbg !1259, !tbaa !979
  %cmp263 = icmp ult i64 %163, 4294967295, !dbg !1260
  br i1 %cmp263, label %if.then265, label %if.else269, !dbg !1261

if.then265:                                       ; preds = %if.end261
  %164 = load ptr, ptr %buffer, align 8, !dbg !1262, !tbaa !235
  %165 = load ptr, ptr %de.addr, align 8, !dbg !1264, !tbaa !235
  %uncomp_size266 = getelementptr inbounds %struct.zip_dirent, ptr %165, i32 0, i32 11, !dbg !1265
  %166 = load i64, ptr %uncomp_size266, align 8, !dbg !1265, !tbaa !979
  %conv267 = trunc i64 %166 to i32, !dbg !1266
  %call268 = call i32 @_zip_buffer_put_32(ptr noundef %164, i32 noundef %conv267), !dbg !1267
  br label %if.end271, !dbg !1268

if.else269:                                       ; preds = %if.end261
  %167 = load ptr, ptr %buffer, align 8, !dbg !1269, !tbaa !235
  %call270 = call i32 @_zip_buffer_put_32(ptr noundef %167, i32 noundef -1), !dbg !1271
  br label %if.end271

if.end271:                                        ; preds = %if.else269, %if.then265
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.then248
  %168 = load ptr, ptr %buffer, align 8, !dbg !1272, !tbaa !235
  %169 = load ptr, ptr %de.addr, align 8, !dbg !1273, !tbaa !235
  %filename273 = getelementptr inbounds %struct.zip_dirent, ptr %169, i32 0, i32 12, !dbg !1274
  %170 = load ptr, ptr %filename273, align 8, !dbg !1274, !tbaa !823
  %call274 = call zeroext i16 @_zip_string_length(ptr noundef %170), !dbg !1275
  %call275 = call i32 @_zip_buffer_put_16(ptr noundef %168, i16 noundef zeroext %call274), !dbg !1276
  %171 = load ptr, ptr %de.addr, align 8, !dbg !1277, !tbaa !235
  %extra_fields = getelementptr inbounds %struct.zip_dirent, ptr %171, i32 0, i32 13, !dbg !1278
  %172 = load ptr, ptr %extra_fields, align 8, !dbg !1278, !tbaa !1279
  %173 = load i32, ptr %flags.addr, align 4, !dbg !1280, !tbaa !558
  %call276 = call zeroext i16 @_zip_ef_size(ptr noundef %172, i32 noundef %173), !dbg !1281
  %conv277 = zext i16 %call276 to i32, !dbg !1282
  %174 = load ptr, ptr %ef, align 8, !dbg !1283, !tbaa !235
  %call278 = call zeroext i16 @_zip_ef_size(ptr noundef %174, i32 noundef 768), !dbg !1284
  %conv279 = zext i16 %call278 to i32, !dbg !1285
  %add = add i32 %conv277, %conv279, !dbg !1286
  store i32 %add, ptr %ef_total_size, align 4, !dbg !1287, !tbaa !558
  %175 = load ptr, ptr %buffer, align 8, !dbg !1288, !tbaa !235
  %176 = load i32, ptr %ef_total_size, align 4, !dbg !1289, !tbaa !558
  %conv280 = trunc i32 %176 to i16, !dbg !1290
  %call281 = call i32 @_zip_buffer_put_16(ptr noundef %175, i16 noundef zeroext %conv280), !dbg !1291
  %177 = load i32, ptr %flags.addr, align 4, !dbg !1292, !tbaa !558
  %and282 = and i32 %177, 256, !dbg !1294
  %cmp283 = icmp eq i32 %and282, 0, !dbg !1295
  br i1 %cmp283, label %if.then285, label %if.end303, !dbg !1296

if.then285:                                       ; preds = %if.end272
  %178 = load ptr, ptr %buffer, align 8, !dbg !1297, !tbaa !235
  %179 = load ptr, ptr %de.addr, align 8, !dbg !1299, !tbaa !235
  %comment286 = getelementptr inbounds %struct.zip_dirent, ptr %179, i32 0, i32 14, !dbg !1300
  %180 = load ptr, ptr %comment286, align 8, !dbg !1300, !tbaa !830
  %call287 = call zeroext i16 @_zip_string_length(ptr noundef %180), !dbg !1301
  %call288 = call i32 @_zip_buffer_put_16(ptr noundef %178, i16 noundef zeroext %call287), !dbg !1302
  %181 = load ptr, ptr %buffer, align 8, !dbg !1303, !tbaa !235
  %182 = load ptr, ptr %de.addr, align 8, !dbg !1304, !tbaa !235
  %disk_number = getelementptr inbounds %struct.zip_dirent, ptr %182, i32 0, i32 15, !dbg !1305
  %183 = load i32, ptr %disk_number, align 8, !dbg !1305, !tbaa !1306
  %conv289 = trunc i32 %183 to i16, !dbg !1307
  %call290 = call i32 @_zip_buffer_put_16(ptr noundef %181, i16 noundef zeroext %conv289), !dbg !1308
  %184 = load ptr, ptr %buffer, align 8, !dbg !1309, !tbaa !235
  %185 = load ptr, ptr %de.addr, align 8, !dbg !1310, !tbaa !235
  %int_attrib = getelementptr inbounds %struct.zip_dirent, ptr %185, i32 0, i32 16, !dbg !1311
  %186 = load i16, ptr %int_attrib, align 4, !dbg !1311, !tbaa !1312
  %call291 = call i32 @_zip_buffer_put_16(ptr noundef %184, i16 noundef zeroext %186), !dbg !1313
  %187 = load ptr, ptr %buffer, align 8, !dbg !1314, !tbaa !235
  %188 = load ptr, ptr %de.addr, align 8, !dbg !1315, !tbaa !235
  %ext_attrib = getelementptr inbounds %struct.zip_dirent, ptr %188, i32 0, i32 17, !dbg !1316
  %189 = load i32, ptr %ext_attrib, align 8, !dbg !1316, !tbaa !1317
  %call292 = call i32 @_zip_buffer_put_32(ptr noundef %187, i32 noundef %189), !dbg !1318
  %190 = load ptr, ptr %de.addr, align 8, !dbg !1319, !tbaa !235
  %offset293 = getelementptr inbounds %struct.zip_dirent, ptr %190, i32 0, i32 18, !dbg !1321
  %191 = load i64, ptr %offset293, align 8, !dbg !1321, !tbaa !1008
  %cmp294 = icmp ult i64 %191, 4294967295, !dbg !1322
  br i1 %cmp294, label %if.then296, label %if.else300, !dbg !1323

if.then296:                                       ; preds = %if.then285
  %192 = load ptr, ptr %buffer, align 8, !dbg !1324, !tbaa !235
  %193 = load ptr, ptr %de.addr, align 8, !dbg !1325, !tbaa !235
  %offset297 = getelementptr inbounds %struct.zip_dirent, ptr %193, i32 0, i32 18, !dbg !1326
  %194 = load i64, ptr %offset297, align 8, !dbg !1326, !tbaa !1008
  %conv298 = trunc i64 %194 to i32, !dbg !1327
  %call299 = call i32 @_zip_buffer_put_32(ptr noundef %192, i32 noundef %conv298), !dbg !1328
  br label %if.end302, !dbg !1328

if.else300:                                       ; preds = %if.then285
  %195 = load ptr, ptr %buffer, align 8, !dbg !1329, !tbaa !235
  %call301 = call i32 @_zip_buffer_put_32(ptr noundef %195, i32 noundef -1), !dbg !1330
  br label %if.end302

if.end302:                                        ; preds = %if.else300, %if.then296
  br label %if.end303, !dbg !1331

if.end303:                                        ; preds = %if.end302, %if.end272
  %196 = load ptr, ptr %buffer, align 8, !dbg !1332, !tbaa !235
  %call304 = call zeroext i1 @_zip_buffer_ok(ptr noundef %196), !dbg !1334
  br i1 %call304, label %if.end307, label %if.then305, !dbg !1335

if.then305:                                       ; preds = %if.end303
  %197 = load ptr, ptr %za.addr, align 8, !dbg !1336, !tbaa !235
  %error306 = getelementptr inbounds %struct.zip, ptr %197, i32 0, i32 2, !dbg !1338
  call void @zip_error_set(ptr noundef %error306, i32 noundef 20, i32 noundef 0), !dbg !1339
  %198 = load ptr, ptr %buffer, align 8, !dbg !1340, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %198), !dbg !1341
  %199 = load ptr, ptr %ef, align 8, !dbg !1342, !tbaa !235
  call void @_zip_ef_free(ptr noundef %199), !dbg !1343
  store i32 -1, ptr %retval, align 4, !dbg !1344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1344

if.end307:                                        ; preds = %if.end303
  %200 = load ptr, ptr %za.addr, align 8, !dbg !1345, !tbaa !235
  %arraydecay308 = getelementptr inbounds [46 x i8], ptr %buf, i64 0, i64 0, !dbg !1347
  %201 = load ptr, ptr %buffer, align 8, !dbg !1348, !tbaa !235
  %call309 = call i64 @_zip_buffer_offset(ptr noundef %201), !dbg !1349
  %call310 = call i32 @_zip_write(ptr noundef %200, ptr noundef %arraydecay308, i64 noundef %call309), !dbg !1350
  %cmp311 = icmp slt i32 %call310, 0, !dbg !1351
  br i1 %cmp311, label %if.then313, label %if.end314, !dbg !1352

if.then313:                                       ; preds = %if.end307
  %202 = load ptr, ptr %buffer, align 8, !dbg !1353, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %202), !dbg !1355
  %203 = load ptr, ptr %ef, align 8, !dbg !1356, !tbaa !235
  call void @_zip_ef_free(ptr noundef %203), !dbg !1357
  store i32 -1, ptr %retval, align 4, !dbg !1358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1358

if.end314:                                        ; preds = %if.end307
  %204 = load ptr, ptr %buffer, align 8, !dbg !1359, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %204), !dbg !1360
  %205 = load ptr, ptr %de.addr, align 8, !dbg !1361, !tbaa !235
  %filename315 = getelementptr inbounds %struct.zip_dirent, ptr %205, i32 0, i32 12, !dbg !1363
  %206 = load ptr, ptr %filename315, align 8, !dbg !1363, !tbaa !823
  %tobool316 = icmp ne ptr %206, null, !dbg !1361
  br i1 %tobool316, label %if.then317, label %if.end324, !dbg !1364

if.then317:                                       ; preds = %if.end314
  %207 = load ptr, ptr %za.addr, align 8, !dbg !1365, !tbaa !235
  %208 = load ptr, ptr %de.addr, align 8, !dbg !1368, !tbaa !235
  %filename318 = getelementptr inbounds %struct.zip_dirent, ptr %208, i32 0, i32 12, !dbg !1369
  %209 = load ptr, ptr %filename318, align 8, !dbg !1369, !tbaa !823
  %call319 = call i32 @_zip_string_write(ptr noundef %207, ptr noundef %209), !dbg !1370
  %cmp320 = icmp slt i32 %call319, 0, !dbg !1371
  br i1 %cmp320, label %if.then322, label %if.end323, !dbg !1372

if.then322:                                       ; preds = %if.then317
  %210 = load ptr, ptr %ef, align 8, !dbg !1373, !tbaa !235
  call void @_zip_ef_free(ptr noundef %210), !dbg !1375
  store i32 -1, ptr %retval, align 4, !dbg !1376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1376

if.end323:                                        ; preds = %if.then317
  br label %if.end324, !dbg !1377

if.end324:                                        ; preds = %if.end323, %if.end314
  %211 = load ptr, ptr %ef, align 8, !dbg !1378, !tbaa !235
  %tobool325 = icmp ne ptr %211, null, !dbg !1378
  br i1 %tobool325, label %if.then326, label %if.end332, !dbg !1380

if.then326:                                       ; preds = %if.end324
  %212 = load ptr, ptr %za.addr, align 8, !dbg !1381, !tbaa !235
  %213 = load ptr, ptr %ef, align 8, !dbg !1384, !tbaa !235
  %call327 = call i32 @_zip_ef_write(ptr noundef %212, ptr noundef %213, i32 noundef 768), !dbg !1385
  %cmp328 = icmp slt i32 %call327, 0, !dbg !1386
  br i1 %cmp328, label %if.then330, label %if.end331, !dbg !1387

if.then330:                                       ; preds = %if.then326
  %214 = load ptr, ptr %ef, align 8, !dbg !1388, !tbaa !235
  call void @_zip_ef_free(ptr noundef %214), !dbg !1390
  store i32 -1, ptr %retval, align 4, !dbg !1391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1391

if.end331:                                        ; preds = %if.then326
  br label %if.end332, !dbg !1392

if.end332:                                        ; preds = %if.end331, %if.end324
  %215 = load ptr, ptr %ef, align 8, !dbg !1393, !tbaa !235
  call void @_zip_ef_free(ptr noundef %215), !dbg !1394
  %216 = load ptr, ptr %de.addr, align 8, !dbg !1395, !tbaa !235
  %extra_fields333 = getelementptr inbounds %struct.zip_dirent, ptr %216, i32 0, i32 13, !dbg !1397
  %217 = load ptr, ptr %extra_fields333, align 8, !dbg !1397, !tbaa !1279
  %tobool334 = icmp ne ptr %217, null, !dbg !1395
  br i1 %tobool334, label %if.then335, label %if.end342, !dbg !1398

if.then335:                                       ; preds = %if.end332
  %218 = load ptr, ptr %za.addr, align 8, !dbg !1399, !tbaa !235
  %219 = load ptr, ptr %de.addr, align 8, !dbg !1402, !tbaa !235
  %extra_fields336 = getelementptr inbounds %struct.zip_dirent, ptr %219, i32 0, i32 13, !dbg !1403
  %220 = load ptr, ptr %extra_fields336, align 8, !dbg !1403, !tbaa !1279
  %221 = load i32, ptr %flags.addr, align 4, !dbg !1404, !tbaa !558
  %call337 = call i32 @_zip_ef_write(ptr noundef %218, ptr noundef %220, i32 noundef %221), !dbg !1405
  %cmp338 = icmp slt i32 %call337, 0, !dbg !1406
  br i1 %cmp338, label %if.then340, label %if.end341, !dbg !1407

if.then340:                                       ; preds = %if.then335
  store i32 -1, ptr %retval, align 4, !dbg !1408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1408

if.end341:                                        ; preds = %if.then335
  br label %if.end342, !dbg !1410

if.end342:                                        ; preds = %if.end341, %if.end332
  %222 = load i32, ptr %flags.addr, align 4, !dbg !1411, !tbaa !558
  %and343 = and i32 %222, 256, !dbg !1413
  %cmp344 = icmp eq i32 %and343, 0, !dbg !1414
  br i1 %cmp344, label %if.then346, label %if.end357, !dbg !1415

if.then346:                                       ; preds = %if.end342
  %223 = load ptr, ptr %de.addr, align 8, !dbg !1416, !tbaa !235
  %comment347 = getelementptr inbounds %struct.zip_dirent, ptr %223, i32 0, i32 14, !dbg !1419
  %224 = load ptr, ptr %comment347, align 8, !dbg !1419, !tbaa !830
  %tobool348 = icmp ne ptr %224, null, !dbg !1416
  br i1 %tobool348, label %if.then349, label %if.end356, !dbg !1420

if.then349:                                       ; preds = %if.then346
  %225 = load ptr, ptr %za.addr, align 8, !dbg !1421, !tbaa !235
  %226 = load ptr, ptr %de.addr, align 8, !dbg !1424, !tbaa !235
  %comment350 = getelementptr inbounds %struct.zip_dirent, ptr %226, i32 0, i32 14, !dbg !1425
  %227 = load ptr, ptr %comment350, align 8, !dbg !1425, !tbaa !830
  %call351 = call i32 @_zip_string_write(ptr noundef %225, ptr noundef %227), !dbg !1426
  %cmp352 = icmp slt i32 %call351, 0, !dbg !1427
  br i1 %cmp352, label %if.then354, label %if.end355, !dbg !1428

if.then354:                                       ; preds = %if.then349
  store i32 -1, ptr %retval, align 4, !dbg !1429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1429

if.end355:                                        ; preds = %if.then349
  br label %if.end356, !dbg !1431

if.end356:                                        ; preds = %if.end355, %if.then346
  br label %if.end357, !dbg !1432

if.end357:                                        ; preds = %if.end356, %if.end342
  %228 = load i8, ptr %is_zip64, align 1, !dbg !1433, !tbaa !527, !range !613, !noundef !614
  %tobool358 = trunc i8 %228 to i1, !dbg !1433
  %conv359 = zext i1 %tobool358 to i32, !dbg !1433
  store i32 %conv359, ptr %retval, align 4, !dbg !1434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup360, !dbg !1434

cleanup360:                                       ; preds = %if.end357, %if.then354, %if.then340, %if.then330, %if.then322, %if.then313, %if.then305, %if.then188, %cleanup178, %cleanup147, %cleanup, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 46, ptr %buf) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_winzip_aes) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_really_zip64) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_zip64) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 4, ptr %ef_total_size) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef64) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_enc) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 4, ptr %com_enc) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 2, ptr %dosdate) #10, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 2, ptr %dostime) #10, !dbg !1435
  %229 = load i32, ptr %retval, align 4, !dbg !1435
  ret i32 %229, !dbg !1435
}

declare !dbg !1436 ptr @_zip_buffer_new(ptr noundef, i64 noundef) #2

declare !dbg !1439 i32 @_zip_buffer_put(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1444 i32 @_zip_buffer_put_64(ptr noundef, i64 noundef) #2

declare !dbg !1447 i32 @_zip_buffer_put_16(ptr noundef, i16 noundef zeroext) #2

declare !dbg !1450 i32 @_zip_buffer_put_32(ptr noundef, i32 noundef) #2

declare !dbg !1453 zeroext i1 @_zip_buffer_ok(ptr noundef) #2

declare !dbg !1456 void @_zip_buffer_free(ptr noundef) #2

declare !dbg !1459 i32 @_zip_write(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1462 ptr @_zip_buffer_data(ptr noundef) #2

declare !dbg !1465 i64 @_zip_buffer_offset(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden ptr @_zip_dirent_clone(ptr noundef %sde) #0 !dbg !1468 {
entry:
  %retval = alloca ptr, align 8
  %sde.addr = alloca ptr, align 8
  %tde = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sde, ptr %sde.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %sde.addr, metadata !1474, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 8, ptr %tde) #10, !dbg !1477
  tail call void @llvm.dbg.declare(metadata ptr %tde, metadata !1475, metadata !DIExpression()), !dbg !1478
  %call = call noalias ptr @malloc(i64 noundef 120) #11, !dbg !1479
  store ptr %call, ptr %tde, align 8, !dbg !1481, !tbaa !235
  %cmp = icmp eq ptr %call, null, !dbg !1482
  br i1 %cmp, label %if.then, label %if.end, !dbg !1483

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1484

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %sde.addr, align 8, !dbg !1485, !tbaa !235
  %tobool = icmp ne ptr %0, null, !dbg !1485
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1487

if.then1:                                         ; preds = %if.end
  %1 = load ptr, ptr %tde, align 8, !dbg !1488, !tbaa !235
  %2 = load ptr, ptr %sde.addr, align 8, !dbg !1489, !tbaa !235
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 120, i1 false), !dbg !1490
  br label %if.end2, !dbg !1490

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %tde, align 8, !dbg !1491, !tbaa !235
  call void @_zip_dirent_init(ptr noundef %3), !dbg !1492
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %4 = load ptr, ptr %tde, align 8, !dbg !1493, !tbaa !235
  %changed = getelementptr inbounds %struct.zip_dirent, ptr %4, i32 0, i32 0, !dbg !1494
  store i32 0, ptr %changed, align 8, !dbg !1495, !tbaa !1496
  %5 = load ptr, ptr %tde, align 8, !dbg !1497, !tbaa !235
  %cloned = getelementptr inbounds %struct.zip_dirent, ptr %5, i32 0, i32 2, !dbg !1498
  store i8 1, ptr %cloned, align 1, !dbg !1499, !tbaa !1500
  %6 = load ptr, ptr %tde, align 8, !dbg !1501, !tbaa !235
  store ptr %6, ptr %retval, align 8, !dbg !1502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1502

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tde) #10, !dbg !1503
  %7 = load ptr, ptr %retval, align 8, !dbg !1503
  ret ptr %7, !dbg !1503
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define hidden void @_zip_dirent_init(ptr noundef %de) #0 !dbg !1504 {
entry:
  %de.addr = alloca ptr, align 8
  store ptr %de, ptr %de.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !1508, metadata !DIExpression()), !dbg !1509
  %0 = load ptr, ptr %de.addr, align 8, !dbg !1510, !tbaa !235
  %changed = getelementptr inbounds %struct.zip_dirent, ptr %0, i32 0, i32 0, !dbg !1511
  store i32 0, ptr %changed, align 8, !dbg !1512, !tbaa !1496
  %1 = load ptr, ptr %de.addr, align 8, !dbg !1513, !tbaa !235
  %local_extra_fields_read = getelementptr inbounds %struct.zip_dirent, ptr %1, i32 0, i32 1, !dbg !1514
  store i8 0, ptr %local_extra_fields_read, align 4, !dbg !1515, !tbaa !1516
  %2 = load ptr, ptr %de.addr, align 8, !dbg !1517, !tbaa !235
  %cloned = getelementptr inbounds %struct.zip_dirent, ptr %2, i32 0, i32 2, !dbg !1518
  store i8 0, ptr %cloned, align 1, !dbg !1519, !tbaa !1500
  %3 = load ptr, ptr %de.addr, align 8, !dbg !1520, !tbaa !235
  %crc_valid = getelementptr inbounds %struct.zip_dirent, ptr %3, i32 0, i32 3, !dbg !1521
  store i8 1, ptr %crc_valid, align 2, !dbg !1522, !tbaa !1523
  %4 = load ptr, ptr %de.addr, align 8, !dbg !1524, !tbaa !235
  %version_madeby = getelementptr inbounds %struct.zip_dirent, ptr %4, i32 0, i32 4, !dbg !1525
  store i16 831, ptr %version_madeby, align 8, !dbg !1526, !tbaa !1166
  %5 = load ptr, ptr %de.addr, align 8, !dbg !1527, !tbaa !235
  %version_needed = getelementptr inbounds %struct.zip_dirent, ptr %5, i32 0, i32 5, !dbg !1528
  store i16 10, ptr %version_needed, align 2, !dbg !1529, !tbaa !1174
  %6 = load ptr, ptr %de.addr, align 8, !dbg !1530, !tbaa !235
  %bitflags = getelementptr inbounds %struct.zip_dirent, ptr %6, i32 0, i32 6, !dbg !1531
  store i16 0, ptr %bitflags, align 4, !dbg !1532, !tbaa !854
  %7 = load ptr, ptr %de.addr, align 8, !dbg !1533, !tbaa !235
  %comp_method = getelementptr inbounds %struct.zip_dirent, ptr %7, i32 0, i32 7, !dbg !1534
  store i32 -1, ptr %comp_method, align 8, !dbg !1535, !tbaa !1109
  %8 = load ptr, ptr %de.addr, align 8, !dbg !1536, !tbaa !235
  %last_mod = getelementptr inbounds %struct.zip_dirent, ptr %8, i32 0, i32 8, !dbg !1537
  store i64 0, ptr %last_mod, align 8, !dbg !1538, !tbaa !1196
  %9 = load ptr, ptr %de.addr, align 8, !dbg !1539, !tbaa !235
  %crc = getelementptr inbounds %struct.zip_dirent, ptr %9, i32 0, i32 9, !dbg !1540
  store i32 0, ptr %crc, align 8, !dbg !1541, !tbaa !1220
  %10 = load ptr, ptr %de.addr, align 8, !dbg !1542, !tbaa !235
  %comp_size = getelementptr inbounds %struct.zip_dirent, ptr %10, i32 0, i32 10, !dbg !1543
  store i64 0, ptr %comp_size, align 8, !dbg !1544, !tbaa !974
  %11 = load ptr, ptr %de.addr, align 8, !dbg !1545, !tbaa !235
  %uncomp_size = getelementptr inbounds %struct.zip_dirent, ptr %11, i32 0, i32 11, !dbg !1546
  store i64 0, ptr %uncomp_size, align 8, !dbg !1547, !tbaa !979
  %12 = load ptr, ptr %de.addr, align 8, !dbg !1548, !tbaa !235
  %filename = getelementptr inbounds %struct.zip_dirent, ptr %12, i32 0, i32 12, !dbg !1549
  store ptr null, ptr %filename, align 8, !dbg !1550, !tbaa !823
  %13 = load ptr, ptr %de.addr, align 8, !dbg !1551, !tbaa !235
  %extra_fields = getelementptr inbounds %struct.zip_dirent, ptr %13, i32 0, i32 13, !dbg !1552
  store ptr null, ptr %extra_fields, align 8, !dbg !1553, !tbaa !1279
  %14 = load ptr, ptr %de.addr, align 8, !dbg !1554, !tbaa !235
  %comment = getelementptr inbounds %struct.zip_dirent, ptr %14, i32 0, i32 14, !dbg !1555
  store ptr null, ptr %comment, align 8, !dbg !1556, !tbaa !830
  %15 = load ptr, ptr %de.addr, align 8, !dbg !1557, !tbaa !235
  %disk_number = getelementptr inbounds %struct.zip_dirent, ptr %15, i32 0, i32 15, !dbg !1558
  store i32 0, ptr %disk_number, align 8, !dbg !1559, !tbaa !1306
  %16 = load ptr, ptr %de.addr, align 8, !dbg !1560, !tbaa !235
  %int_attrib = getelementptr inbounds %struct.zip_dirent, ptr %16, i32 0, i32 16, !dbg !1561
  store i16 0, ptr %int_attrib, align 4, !dbg !1562, !tbaa !1312
  %17 = load ptr, ptr %de.addr, align 8, !dbg !1563, !tbaa !235
  %ext_attrib = getelementptr inbounds %struct.zip_dirent, ptr %17, i32 0, i32 17, !dbg !1564
  store i32 -2118778880, ptr %ext_attrib, align 8, !dbg !1565, !tbaa !1317
  %18 = load ptr, ptr %de.addr, align 8, !dbg !1566, !tbaa !235
  %offset = getelementptr inbounds %struct.zip_dirent, ptr %18, i32 0, i32 18, !dbg !1567
  store i64 0, ptr %offset, align 8, !dbg !1568, !tbaa !1008
  %19 = load ptr, ptr %de.addr, align 8, !dbg !1569, !tbaa !235
  %compression_level = getelementptr inbounds %struct.zip_dirent, ptr %19, i32 0, i32 19, !dbg !1570
  store i16 0, ptr %compression_level, align 8, !dbg !1571, !tbaa !1572
  %20 = load ptr, ptr %de.addr, align 8, !dbg !1573, !tbaa !235
  %encryption_method = getelementptr inbounds %struct.zip_dirent, ptr %20, i32 0, i32 20, !dbg !1574
  store i16 0, ptr %encryption_method, align 2, !dbg !1575, !tbaa !910
  %21 = load ptr, ptr %de.addr, align 8, !dbg !1576, !tbaa !235
  %password = getelementptr inbounds %struct.zip_dirent, ptr %21, i32 0, i32 21, !dbg !1577
  store ptr null, ptr %password, align 8, !dbg !1578, !tbaa !1579
  ret void, !dbg !1580
}

; Function Attrs: nounwind uwtable
define hidden void @_zip_dirent_finalize(ptr noundef %zde) #0 !dbg !1581 {
entry:
  %zde.addr = alloca ptr, align 8
  store ptr %zde, ptr %zde.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %zde.addr, metadata !1583, metadata !DIExpression()), !dbg !1584
  %0 = load ptr, ptr %zde.addr, align 8, !dbg !1585, !tbaa !235
  %cloned = getelementptr inbounds %struct.zip_dirent, ptr %0, i32 0, i32 2, !dbg !1587
  %1 = load i8, ptr %cloned, align 1, !dbg !1587, !tbaa !1500, !range !613, !noundef !614
  %tobool = trunc i8 %1 to i1, !dbg !1587
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1588

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %zde.addr, align 8, !dbg !1589, !tbaa !235
  %changed = getelementptr inbounds %struct.zip_dirent, ptr %2, i32 0, i32 0, !dbg !1590
  %3 = load i32, ptr %changed, align 8, !dbg !1590, !tbaa !1496
  %and = and i32 %3, 2, !dbg !1591
  %tobool1 = icmp ne i32 %and, 0, !dbg !1591
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1592

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %zde.addr, align 8, !dbg !1593, !tbaa !235
  %filename = getelementptr inbounds %struct.zip_dirent, ptr %4, i32 0, i32 12, !dbg !1595
  %5 = load ptr, ptr %filename, align 8, !dbg !1595, !tbaa !823
  call void @_zip_string_free(ptr noundef %5), !dbg !1596
  %6 = load ptr, ptr %zde.addr, align 8, !dbg !1597, !tbaa !235
  %filename2 = getelementptr inbounds %struct.zip_dirent, ptr %6, i32 0, i32 12, !dbg !1598
  store ptr null, ptr %filename2, align 8, !dbg !1599, !tbaa !823
  br label %if.end, !dbg !1600

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load ptr, ptr %zde.addr, align 8, !dbg !1601, !tbaa !235
  %cloned3 = getelementptr inbounds %struct.zip_dirent, ptr %7, i32 0, i32 2, !dbg !1603
  %8 = load i8, ptr %cloned3, align 1, !dbg !1603, !tbaa !1500, !range !613, !noundef !614
  %tobool4 = trunc i8 %8 to i1, !dbg !1603
  br i1 %tobool4, label %lor.lhs.false5, label %if.then9, !dbg !1604

lor.lhs.false5:                                   ; preds = %if.end
  %9 = load ptr, ptr %zde.addr, align 8, !dbg !1605, !tbaa !235
  %changed6 = getelementptr inbounds %struct.zip_dirent, ptr %9, i32 0, i32 0, !dbg !1606
  %10 = load i32, ptr %changed6, align 8, !dbg !1606, !tbaa !1496
  %and7 = and i32 %10, 8, !dbg !1607
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1607
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !1608

if.then9:                                         ; preds = %lor.lhs.false5, %if.end
  %11 = load ptr, ptr %zde.addr, align 8, !dbg !1609, !tbaa !235
  %extra_fields = getelementptr inbounds %struct.zip_dirent, ptr %11, i32 0, i32 13, !dbg !1611
  %12 = load ptr, ptr %extra_fields, align 8, !dbg !1611, !tbaa !1279
  call void @_zip_ef_free(ptr noundef %12), !dbg !1612
  %13 = load ptr, ptr %zde.addr, align 8, !dbg !1613, !tbaa !235
  %extra_fields10 = getelementptr inbounds %struct.zip_dirent, ptr %13, i32 0, i32 13, !dbg !1614
  store ptr null, ptr %extra_fields10, align 8, !dbg !1615, !tbaa !1279
  br label %if.end11, !dbg !1616

if.end11:                                         ; preds = %if.then9, %lor.lhs.false5
  %14 = load ptr, ptr %zde.addr, align 8, !dbg !1617, !tbaa !235
  %cloned12 = getelementptr inbounds %struct.zip_dirent, ptr %14, i32 0, i32 2, !dbg !1619
  %15 = load i8, ptr %cloned12, align 1, !dbg !1619, !tbaa !1500, !range !613, !noundef !614
  %tobool13 = trunc i8 %15 to i1, !dbg !1619
  br i1 %tobool13, label %lor.lhs.false14, label %if.then18, !dbg !1620

lor.lhs.false14:                                  ; preds = %if.end11
  %16 = load ptr, ptr %zde.addr, align 8, !dbg !1621, !tbaa !235
  %changed15 = getelementptr inbounds %struct.zip_dirent, ptr %16, i32 0, i32 0, !dbg !1622
  %17 = load i32, ptr %changed15, align 8, !dbg !1622, !tbaa !1496
  %and16 = and i32 %17, 4, !dbg !1623
  %tobool17 = icmp ne i32 %and16, 0, !dbg !1623
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !1624

if.then18:                                        ; preds = %lor.lhs.false14, %if.end11
  %18 = load ptr, ptr %zde.addr, align 8, !dbg !1625, !tbaa !235
  %comment = getelementptr inbounds %struct.zip_dirent, ptr %18, i32 0, i32 14, !dbg !1627
  %19 = load ptr, ptr %comment, align 8, !dbg !1627, !tbaa !830
  call void @_zip_string_free(ptr noundef %19), !dbg !1628
  %20 = load ptr, ptr %zde.addr, align 8, !dbg !1629, !tbaa !235
  %comment19 = getelementptr inbounds %struct.zip_dirent, ptr %20, i32 0, i32 14, !dbg !1630
  store ptr null, ptr %comment19, align 8, !dbg !1631, !tbaa !830
  br label %if.end20, !dbg !1632

if.end20:                                         ; preds = %if.then18, %lor.lhs.false14
  %21 = load ptr, ptr %zde.addr, align 8, !dbg !1633, !tbaa !235
  %cloned21 = getelementptr inbounds %struct.zip_dirent, ptr %21, i32 0, i32 2, !dbg !1635
  %22 = load i8, ptr %cloned21, align 1, !dbg !1635, !tbaa !1500, !range !613, !noundef !614
  %tobool22 = trunc i8 %22 to i1, !dbg !1635
  br i1 %tobool22, label %lor.lhs.false23, label %if.then27, !dbg !1636

lor.lhs.false23:                                  ; preds = %if.end20
  %23 = load ptr, ptr %zde.addr, align 8, !dbg !1637, !tbaa !235
  %changed24 = getelementptr inbounds %struct.zip_dirent, ptr %23, i32 0, i32 0, !dbg !1638
  %24 = load i32, ptr %changed24, align 8, !dbg !1638, !tbaa !1496
  %and25 = and i32 %24, 128, !dbg !1639
  %tobool26 = icmp ne i32 %and25, 0, !dbg !1639
  br i1 %tobool26, label %if.then27, label %if.end35, !dbg !1640

if.then27:                                        ; preds = %lor.lhs.false23, %if.end20
  %25 = load ptr, ptr %zde.addr, align 8, !dbg !1641, !tbaa !235
  %password = getelementptr inbounds %struct.zip_dirent, ptr %25, i32 0, i32 21, !dbg !1644
  %26 = load ptr, ptr %password, align 8, !dbg !1644, !tbaa !1579
  %tobool28 = icmp ne ptr %26, null, !dbg !1641
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !1645

if.then29:                                        ; preds = %if.then27
  %27 = load ptr, ptr %zde.addr, align 8, !dbg !1646, !tbaa !235
  %password30 = getelementptr inbounds %struct.zip_dirent, ptr %27, i32 0, i32 21, !dbg !1646
  %28 = load ptr, ptr %password30, align 8, !dbg !1646, !tbaa !1579
  %29 = load ptr, ptr %zde.addr, align 8, !dbg !1646, !tbaa !235
  %password31 = getelementptr inbounds %struct.zip_dirent, ptr %29, i32 0, i32 21, !dbg !1646
  %30 = load ptr, ptr %password31, align 8, !dbg !1646, !tbaa !1579
  %call = call i64 @strlen(ptr noundef %30) #13, !dbg !1646
  call void @explicit_bzero(ptr noundef %28, i64 noundef %call) #10, !dbg !1646
  br label %if.end32, !dbg !1648

if.end32:                                         ; preds = %if.then29, %if.then27
  %31 = load ptr, ptr %zde.addr, align 8, !dbg !1649, !tbaa !235
  %password33 = getelementptr inbounds %struct.zip_dirent, ptr %31, i32 0, i32 21, !dbg !1650
  %32 = load ptr, ptr %password33, align 8, !dbg !1650, !tbaa !1579
  call void @free(ptr noundef %32) #10, !dbg !1651
  %33 = load ptr, ptr %zde.addr, align 8, !dbg !1652, !tbaa !235
  %password34 = getelementptr inbounds %struct.zip_dirent, ptr %33, i32 0, i32 21, !dbg !1653
  store ptr null, ptr %password34, align 8, !dbg !1654, !tbaa !1579
  br label %if.end35, !dbg !1655

if.end35:                                         ; preds = %if.end32, %lor.lhs.false23
  ret void, !dbg !1656
}

declare !dbg !1657 void @_zip_ef_free(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !1660 void @explicit_bzero(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1664 i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind uwtable
define hidden void @_zip_dirent_free(ptr noundef %zde) #0 !dbg !1669 {
entry:
  %zde.addr = alloca ptr, align 8
  store ptr %zde, ptr %zde.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %zde.addr, metadata !1671, metadata !DIExpression()), !dbg !1672
  %0 = load ptr, ptr %zde.addr, align 8, !dbg !1673, !tbaa !235
  %cmp = icmp eq ptr %0, null, !dbg !1675
  br i1 %cmp, label %if.then, label %if.end, !dbg !1676

if.then:                                          ; preds = %entry
  br label %return, !dbg !1677

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zde.addr, align 8, !dbg !1678, !tbaa !235
  call void @_zip_dirent_finalize(ptr noundef %1), !dbg !1679
  %2 = load ptr, ptr %zde.addr, align 8, !dbg !1680, !tbaa !235
  call void @free(ptr noundef %2) #10, !dbg !1681
  br label %return, !dbg !1682

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1682
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_zip_dirent_needs_zip64(ptr noundef %de, i32 noundef %flags) #0 !dbg !1683 {
entry:
  %retval = alloca i1, align 1
  %de.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !1687, metadata !DIExpression()), !dbg !1689
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !558
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1688, metadata !DIExpression()), !dbg !1690
  %0 = load ptr, ptr %de.addr, align 8, !dbg !1691, !tbaa !235
  %uncomp_size = getelementptr inbounds %struct.zip_dirent, ptr %0, i32 0, i32 11, !dbg !1693
  %1 = load i64, ptr %uncomp_size, align 8, !dbg !1693, !tbaa !979
  %cmp = icmp uge i64 %1, 4294967295, !dbg !1694
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1695

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %de.addr, align 8, !dbg !1696, !tbaa !235
  %comp_size = getelementptr inbounds %struct.zip_dirent, ptr %2, i32 0, i32 10, !dbg !1697
  %3 = load i64, ptr %comp_size, align 8, !dbg !1697, !tbaa !974
  %cmp1 = icmp uge i64 %3, 4294967295, !dbg !1698
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !1699

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %flags.addr, align 4, !dbg !1700, !tbaa !558
  %and = and i32 %4, 512, !dbg !1701
  %tobool = icmp ne i32 %and, 0, !dbg !1701
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1702

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %5 = load ptr, ptr %de.addr, align 8, !dbg !1703, !tbaa !235
  %offset = getelementptr inbounds %struct.zip_dirent, ptr %5, i32 0, i32 18, !dbg !1704
  %6 = load i64, ptr %offset, align 8, !dbg !1704, !tbaa !1008
  %cmp3 = icmp uge i64 %6, 4294967295, !dbg !1705
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1706

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i1 true, ptr %retval, align 1, !dbg !1707
  br label %return, !dbg !1707

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  store i1 false, ptr %retval, align 1, !dbg !1708
  br label %return, !dbg !1708

return:                                           ; preds = %if.end, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !1709
  ret i1 %7, !dbg !1709
}

; Function Attrs: nounwind uwtable
define hidden ptr @_zip_dirent_new() #0 !dbg !1710 {
entry:
  %retval = alloca ptr, align 8
  %de = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %de) #10, !dbg !1715
  tail call void @llvm.dbg.declare(metadata ptr %de, metadata !1714, metadata !DIExpression()), !dbg !1716
  %call = call noalias ptr @malloc(i64 noundef 120) #11, !dbg !1717
  store ptr %call, ptr %de, align 8, !dbg !1719, !tbaa !235
  %cmp = icmp eq ptr %call, null, !dbg !1720
  br i1 %cmp, label %if.then, label %if.end, !dbg !1721

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1722

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %de, align 8, !dbg !1723, !tbaa !235
  call void @_zip_dirent_init(ptr noundef %0), !dbg !1724
  %1 = load ptr, ptr %de, align 8, !dbg !1725, !tbaa !235
  store ptr %1, ptr %retval, align 8, !dbg !1726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1726

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %de) #10, !dbg !1727
  %2 = load ptr, ptr %retval, align 8, !dbg !1727
  ret ptr %2, !dbg !1727
}

; Function Attrs: nounwind uwtable
define hidden i64 @_zip_dirent_read(ptr noundef %zde, ptr noundef %src, ptr noundef %buffer, i1 noundef zeroext %local, ptr noundef %error) #0 !dbg !1728 {
entry:
  %retval = alloca i64, align 8
  %zde.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %local.addr = alloca i8, align 1
  %error.addr = alloca ptr, align 8
  %buf = alloca [46 x i8], align 16
  %dostime = alloca i16, align 2
  %dosdate = alloca i16, align 2
  %size = alloca i32, align 4
  %variable_size = alloca i32, align 4
  %filename_len = alloca i16, align 2
  %comment_len = alloca i16, align 2
  %ef_len = alloca i16, align 2
  %from_buffer = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %ef = alloca ptr, align 8
  %got_len = alloca i16, align 2
  %ef_buffer = alloca ptr, align 8
  %ef202 = alloca ptr, align 8
  store ptr %zde, ptr %zde.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %zde.addr, metadata !1732, metadata !DIExpression()), !dbg !1756
  store ptr %src, ptr %src.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1733, metadata !DIExpression()), !dbg !1757
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1734, metadata !DIExpression()), !dbg !1758
  %frombool = zext i1 %local to i8
  store i8 %frombool, ptr %local.addr, align 1, !tbaa !527
  tail call void @llvm.dbg.declare(metadata ptr %local.addr, metadata !1735, metadata !DIExpression()), !dbg !1759
  store ptr %error, ptr %error.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !1736, metadata !DIExpression()), !dbg !1760
  call void @llvm.lifetime.start.p0(i64 46, ptr %buf) #10, !dbg !1761
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1737, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 2, ptr %dostime) #10, !dbg !1763
  tail call void @llvm.dbg.declare(metadata ptr %dostime, metadata !1738, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 2, ptr %dosdate) #10, !dbg !1763
  tail call void @llvm.dbg.declare(metadata ptr %dosdate, metadata !1739, metadata !DIExpression()), !dbg !1765
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #10, !dbg !1766
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1740, metadata !DIExpression()), !dbg !1767
  call void @llvm.lifetime.start.p0(i64 4, ptr %variable_size) #10, !dbg !1766
  tail call void @llvm.dbg.declare(metadata ptr %variable_size, metadata !1741, metadata !DIExpression()), !dbg !1768
  call void @llvm.lifetime.start.p0(i64 2, ptr %filename_len) #10, !dbg !1769
  tail call void @llvm.dbg.declare(metadata ptr %filename_len, metadata !1742, metadata !DIExpression()), !dbg !1770
  call void @llvm.lifetime.start.p0(i64 2, ptr %comment_len) #10, !dbg !1769
  tail call void @llvm.dbg.declare(metadata ptr %comment_len, metadata !1743, metadata !DIExpression()), !dbg !1771
  call void @llvm.lifetime.start.p0(i64 2, ptr %ef_len) #10, !dbg !1769
  tail call void @llvm.dbg.declare(metadata ptr %ef_len, metadata !1744, metadata !DIExpression()), !dbg !1772
  call void @llvm.lifetime.start.p0(i64 1, ptr %from_buffer) #10, !dbg !1773
  tail call void @llvm.dbg.declare(metadata ptr %from_buffer, metadata !1745, metadata !DIExpression()), !dbg !1774
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !1775, !tbaa !235
  %cmp = icmp ne ptr %0, null, !dbg !1776
  %frombool1 = zext i1 %cmp to i8, !dbg !1774
  store i8 %frombool1, ptr %from_buffer, align 1, !dbg !1774, !tbaa !527
  %1 = load i8, ptr %local.addr, align 1, !dbg !1777, !tbaa !527, !range !613, !noundef !614
  %tobool = trunc i8 %1 to i1, !dbg !1777
  %2 = zext i1 %tobool to i64, !dbg !1777
  %cond = select i1 %tobool, i32 30, i32 46, !dbg !1777
  store i32 %cond, ptr %size, align 4, !dbg !1778, !tbaa !558
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !1779, !tbaa !235
  %tobool2 = icmp ne ptr %3, null, !dbg !1779
  br i1 %tobool2, label %if.then, label %if.else, !dbg !1781

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !1782, !tbaa !235
  %call = call i64 @_zip_buffer_left(ptr noundef %4), !dbg !1785
  %5 = load i32, ptr %size, align 4, !dbg !1786, !tbaa !558
  %conv = zext i32 %5 to i64, !dbg !1786
  %cmp3 = icmp ult i64 %call, %conv, !dbg !1787
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !1788

if.then5:                                         ; preds = %if.then
  %6 = load ptr, ptr %error.addr, align 8, !dbg !1789, !tbaa !235
  call void @zip_error_set(ptr noundef %6, i32 noundef 19, i32 noundef 0), !dbg !1791
  store i64 -1, ptr %retval, align 8, !dbg !1792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !1792

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !1793

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1794, !tbaa !235
  %8 = load i32, ptr %size, align 4, !dbg !1797, !tbaa !558
  %conv6 = zext i32 %8 to i64, !dbg !1797
  %arraydecay = getelementptr inbounds [46 x i8], ptr %buf, i64 0, i64 0, !dbg !1798
  %9 = load ptr, ptr %error.addr, align 8, !dbg !1799, !tbaa !235
  %call7 = call ptr @_zip_buffer_new_from_source(ptr noundef %7, i64 noundef %conv6, ptr noundef %arraydecay, ptr noundef %9), !dbg !1800
  store ptr %call7, ptr %buffer.addr, align 8, !dbg !1801, !tbaa !235
  %cmp8 = icmp eq ptr %call7, null, !dbg !1802
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !1803

if.then10:                                        ; preds = %if.else
  store i64 -1, ptr %retval, align 8, !dbg !1804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !1804

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !1806, !tbaa !235
  %call13 = call ptr @_zip_buffer_get(ptr noundef %10, i64 noundef 4), !dbg !1808
  %11 = load i8, ptr %local.addr, align 1, !dbg !1809, !tbaa !527, !range !613, !noundef !614
  %tobool14 = trunc i8 %11 to i1, !dbg !1809
  %12 = zext i1 %tobool14 to i64, !dbg !1809
  %cond16 = select i1 %tobool14, ptr @.str.3, ptr @.str.4, !dbg !1809
  %call17 = call i32 @memcmp(ptr noundef %call13, ptr noundef %cond16, i64 noundef 4) #13, !dbg !1810
  %cmp18 = icmp ne i32 %call17, 0, !dbg !1811
  br i1 %cmp18, label %if.then20, label %if.end24, !dbg !1812

if.then20:                                        ; preds = %if.end12
  %13 = load ptr, ptr %error.addr, align 8, !dbg !1813, !tbaa !235
  call void @zip_error_set(ptr noundef %13, i32 noundef 19, i32 noundef 0), !dbg !1815
  %14 = load i8, ptr %from_buffer, align 1, !dbg !1816, !tbaa !527, !range !613, !noundef !614
  %tobool21 = trunc i8 %14 to i1, !dbg !1816
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1818

if.then22:                                        ; preds = %if.then20
  %15 = load ptr, ptr %buffer.addr, align 8, !dbg !1819, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %15), !dbg !1821
  br label %if.end23, !dbg !1822

if.end23:                                         ; preds = %if.then22, %if.then20
  store i64 -1, ptr %retval, align 8, !dbg !1823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !1823

if.end24:                                         ; preds = %if.end12
  %16 = load ptr, ptr %zde.addr, align 8, !dbg !1824, !tbaa !235
  call void @_zip_dirent_init(ptr noundef %16), !dbg !1825
  %17 = load i8, ptr %local.addr, align 1, !dbg !1826, !tbaa !527, !range !613, !noundef !614
  %tobool25 = trunc i8 %17 to i1, !dbg !1826
  br i1 %tobool25, label %if.else28, label %if.then26, !dbg !1828

if.then26:                                        ; preds = %if.end24
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !1829, !tbaa !235
  %call27 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %18), !dbg !1830
  %19 = load ptr, ptr %zde.addr, align 8, !dbg !1831, !tbaa !235
  %version_madeby = getelementptr inbounds %struct.zip_dirent, ptr %19, i32 0, i32 4, !dbg !1832
  store i16 %call27, ptr %version_madeby, align 8, !dbg !1833, !tbaa !1166
  br label %if.end30, !dbg !1831

if.else28:                                        ; preds = %if.end24
  %20 = load ptr, ptr %zde.addr, align 8, !dbg !1834, !tbaa !235
  %version_madeby29 = getelementptr inbounds %struct.zip_dirent, ptr %20, i32 0, i32 4, !dbg !1835
  store i16 0, ptr %version_madeby29, align 8, !dbg !1836, !tbaa !1166
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %21 = load ptr, ptr %buffer.addr, align 8, !dbg !1837, !tbaa !235
  %call31 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %21), !dbg !1838
  %22 = load ptr, ptr %zde.addr, align 8, !dbg !1839, !tbaa !235
  %version_needed = getelementptr inbounds %struct.zip_dirent, ptr %22, i32 0, i32 5, !dbg !1840
  store i16 %call31, ptr %version_needed, align 2, !dbg !1841, !tbaa !1174
  %23 = load ptr, ptr %buffer.addr, align 8, !dbg !1842, !tbaa !235
  %call32 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %23), !dbg !1843
  %24 = load ptr, ptr %zde.addr, align 8, !dbg !1844, !tbaa !235
  %bitflags = getelementptr inbounds %struct.zip_dirent, ptr %24, i32 0, i32 6, !dbg !1845
  store i16 %call32, ptr %bitflags, align 4, !dbg !1846, !tbaa !854
  %25 = load ptr, ptr %buffer.addr, align 8, !dbg !1847, !tbaa !235
  %call33 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %25), !dbg !1848
  %conv34 = zext i16 %call33 to i32, !dbg !1848
  %26 = load ptr, ptr %zde.addr, align 8, !dbg !1849, !tbaa !235
  %comp_method = getelementptr inbounds %struct.zip_dirent, ptr %26, i32 0, i32 7, !dbg !1850
  store i32 %conv34, ptr %comp_method, align 8, !dbg !1851, !tbaa !1109
  %27 = load ptr, ptr %buffer.addr, align 8, !dbg !1852, !tbaa !235
  %call35 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %27), !dbg !1853
  store i16 %call35, ptr %dostime, align 2, !dbg !1854, !tbaa !1200
  %28 = load ptr, ptr %buffer.addr, align 8, !dbg !1855, !tbaa !235
  %call36 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %28), !dbg !1856
  store i16 %call36, ptr %dosdate, align 2, !dbg !1857, !tbaa !1200
  %29 = load i16, ptr %dostime, align 2, !dbg !1858, !tbaa !1200
  %30 = load i16, ptr %dosdate, align 2, !dbg !1859, !tbaa !1200
  %call37 = call i64 @_zip_d2u_time(i16 noundef zeroext %29, i16 noundef zeroext %30), !dbg !1860
  %31 = load ptr, ptr %zde.addr, align 8, !dbg !1861, !tbaa !235
  %last_mod = getelementptr inbounds %struct.zip_dirent, ptr %31, i32 0, i32 8, !dbg !1862
  store i64 %call37, ptr %last_mod, align 8, !dbg !1863, !tbaa !1196
  %32 = load ptr, ptr %buffer.addr, align 8, !dbg !1864, !tbaa !235
  %call38 = call i32 @_zip_buffer_get_32(ptr noundef %32), !dbg !1865
  %33 = load ptr, ptr %zde.addr, align 8, !dbg !1866, !tbaa !235
  %crc = getelementptr inbounds %struct.zip_dirent, ptr %33, i32 0, i32 9, !dbg !1867
  store i32 %call38, ptr %crc, align 8, !dbg !1868, !tbaa !1220
  %34 = load ptr, ptr %buffer.addr, align 8, !dbg !1869, !tbaa !235
  %call39 = call i32 @_zip_buffer_get_32(ptr noundef %34), !dbg !1870
  %conv40 = zext i32 %call39 to i64, !dbg !1870
  %35 = load ptr, ptr %zde.addr, align 8, !dbg !1871, !tbaa !235
  %comp_size = getelementptr inbounds %struct.zip_dirent, ptr %35, i32 0, i32 10, !dbg !1872
  store i64 %conv40, ptr %comp_size, align 8, !dbg !1873, !tbaa !974
  %36 = load ptr, ptr %buffer.addr, align 8, !dbg !1874, !tbaa !235
  %call41 = call i32 @_zip_buffer_get_32(ptr noundef %36), !dbg !1875
  %conv42 = zext i32 %call41 to i64, !dbg !1875
  %37 = load ptr, ptr %zde.addr, align 8, !dbg !1876, !tbaa !235
  %uncomp_size = getelementptr inbounds %struct.zip_dirent, ptr %37, i32 0, i32 11, !dbg !1877
  store i64 %conv42, ptr %uncomp_size, align 8, !dbg !1878, !tbaa !979
  %38 = load ptr, ptr %buffer.addr, align 8, !dbg !1879, !tbaa !235
  %call43 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %38), !dbg !1880
  store i16 %call43, ptr %filename_len, align 2, !dbg !1881, !tbaa !1200
  %39 = load ptr, ptr %buffer.addr, align 8, !dbg !1882, !tbaa !235
  %call44 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %39), !dbg !1883
  store i16 %call44, ptr %ef_len, align 2, !dbg !1884, !tbaa !1200
  %40 = load i8, ptr %local.addr, align 1, !dbg !1885, !tbaa !527, !range !613, !noundef !614
  %tobool45 = trunc i8 %40 to i1, !dbg !1885
  br i1 %tobool45, label %if.then46, label %if.else47, !dbg !1887

if.then46:                                        ; preds = %if.end30
  store i16 0, ptr %comment_len, align 2, !dbg !1888, !tbaa !1200
  %41 = load ptr, ptr %zde.addr, align 8, !dbg !1890, !tbaa !235
  %disk_number = getelementptr inbounds %struct.zip_dirent, ptr %41, i32 0, i32 15, !dbg !1891
  store i32 0, ptr %disk_number, align 8, !dbg !1892, !tbaa !1306
  %42 = load ptr, ptr %zde.addr, align 8, !dbg !1893, !tbaa !235
  %int_attrib = getelementptr inbounds %struct.zip_dirent, ptr %42, i32 0, i32 16, !dbg !1894
  store i16 0, ptr %int_attrib, align 4, !dbg !1895, !tbaa !1312
  %43 = load ptr, ptr %zde.addr, align 8, !dbg !1896, !tbaa !235
  %ext_attrib = getelementptr inbounds %struct.zip_dirent, ptr %43, i32 0, i32 17, !dbg !1897
  store i32 0, ptr %ext_attrib, align 8, !dbg !1898, !tbaa !1317
  %44 = load ptr, ptr %zde.addr, align 8, !dbg !1899, !tbaa !235
  %offset = getelementptr inbounds %struct.zip_dirent, ptr %44, i32 0, i32 18, !dbg !1900
  store i64 0, ptr %offset, align 8, !dbg !1901, !tbaa !1008
  br label %if.end59, !dbg !1902

if.else47:                                        ; preds = %if.end30
  %45 = load ptr, ptr %buffer.addr, align 8, !dbg !1903, !tbaa !235
  %call48 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %45), !dbg !1905
  store i16 %call48, ptr %comment_len, align 2, !dbg !1906, !tbaa !1200
  %46 = load ptr, ptr %buffer.addr, align 8, !dbg !1907, !tbaa !235
  %call49 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %46), !dbg !1908
  %conv50 = zext i16 %call49 to i32, !dbg !1908
  %47 = load ptr, ptr %zde.addr, align 8, !dbg !1909, !tbaa !235
  %disk_number51 = getelementptr inbounds %struct.zip_dirent, ptr %47, i32 0, i32 15, !dbg !1910
  store i32 %conv50, ptr %disk_number51, align 8, !dbg !1911, !tbaa !1306
  %48 = load ptr, ptr %buffer.addr, align 8, !dbg !1912, !tbaa !235
  %call52 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %48), !dbg !1913
  %49 = load ptr, ptr %zde.addr, align 8, !dbg !1914, !tbaa !235
  %int_attrib53 = getelementptr inbounds %struct.zip_dirent, ptr %49, i32 0, i32 16, !dbg !1915
  store i16 %call52, ptr %int_attrib53, align 4, !dbg !1916, !tbaa !1312
  %50 = load ptr, ptr %buffer.addr, align 8, !dbg !1917, !tbaa !235
  %call54 = call i32 @_zip_buffer_get_32(ptr noundef %50), !dbg !1918
  %51 = load ptr, ptr %zde.addr, align 8, !dbg !1919, !tbaa !235
  %ext_attrib55 = getelementptr inbounds %struct.zip_dirent, ptr %51, i32 0, i32 17, !dbg !1920
  store i32 %call54, ptr %ext_attrib55, align 8, !dbg !1921, !tbaa !1317
  %52 = load ptr, ptr %buffer.addr, align 8, !dbg !1922, !tbaa !235
  %call56 = call i32 @_zip_buffer_get_32(ptr noundef %52), !dbg !1923
  %conv57 = zext i32 %call56 to i64, !dbg !1923
  %53 = load ptr, ptr %zde.addr, align 8, !dbg !1924, !tbaa !235
  %offset58 = getelementptr inbounds %struct.zip_dirent, ptr %53, i32 0, i32 18, !dbg !1925
  store i64 %conv57, ptr %offset58, align 8, !dbg !1926, !tbaa !1008
  br label %if.end59

if.end59:                                         ; preds = %if.else47, %if.then46
  %54 = load ptr, ptr %buffer.addr, align 8, !dbg !1927, !tbaa !235
  %call60 = call zeroext i1 @_zip_buffer_ok(ptr noundef %54), !dbg !1929
  br i1 %call60, label %if.end65, label %if.then61, !dbg !1930

if.then61:                                        ; preds = %if.end59
  %55 = load ptr, ptr %error.addr, align 8, !dbg !1931, !tbaa !235
  call void @zip_error_set(ptr noundef %55, i32 noundef 20, i32 noundef 0), !dbg !1933
  %56 = load i8, ptr %from_buffer, align 1, !dbg !1934, !tbaa !527, !range !613, !noundef !614
  %tobool62 = trunc i8 %56 to i1, !dbg !1934
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !1936

if.then63:                                        ; preds = %if.then61
  %57 = load ptr, ptr %buffer.addr, align 8, !dbg !1937, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %57), !dbg !1939
  br label %if.end64, !dbg !1940

if.end64:                                         ; preds = %if.then63, %if.then61
  store i64 -1, ptr %retval, align 8, !dbg !1941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !1941

if.end65:                                         ; preds = %if.end59
  %58 = load ptr, ptr %zde.addr, align 8, !dbg !1942, !tbaa !235
  %bitflags66 = getelementptr inbounds %struct.zip_dirent, ptr %58, i32 0, i32 6, !dbg !1944
  %59 = load i16, ptr %bitflags66, align 4, !dbg !1944, !tbaa !854
  %conv67 = zext i16 %59 to i32, !dbg !1942
  %and = and i32 %conv67, 1, !dbg !1945
  %tobool68 = icmp ne i32 %and, 0, !dbg !1945
  br i1 %tobool68, label %if.then69, label %if.else78, !dbg !1946

if.then69:                                        ; preds = %if.end65
  %60 = load ptr, ptr %zde.addr, align 8, !dbg !1947, !tbaa !235
  %bitflags70 = getelementptr inbounds %struct.zip_dirent, ptr %60, i32 0, i32 6, !dbg !1950
  %61 = load i16, ptr %bitflags70, align 4, !dbg !1950, !tbaa !854
  %conv71 = zext i16 %61 to i32, !dbg !1947
  %and72 = and i32 %conv71, 64, !dbg !1951
  %tobool73 = icmp ne i32 %and72, 0, !dbg !1951
  br i1 %tobool73, label %if.then74, label %if.else75, !dbg !1952

if.then74:                                        ; preds = %if.then69
  %62 = load ptr, ptr %zde.addr, align 8, !dbg !1953, !tbaa !235
  %encryption_method = getelementptr inbounds %struct.zip_dirent, ptr %62, i32 0, i32 20, !dbg !1955
  store i16 -1, ptr %encryption_method, align 2, !dbg !1956, !tbaa !910
  br label %if.end77, !dbg !1957

if.else75:                                        ; preds = %if.then69
  %63 = load ptr, ptr %zde.addr, align 8, !dbg !1958, !tbaa !235
  %encryption_method76 = getelementptr inbounds %struct.zip_dirent, ptr %63, i32 0, i32 20, !dbg !1960
  store i16 1, ptr %encryption_method76, align 2, !dbg !1961, !tbaa !910
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then74
  br label %if.end80, !dbg !1962

if.else78:                                        ; preds = %if.end65
  %64 = load ptr, ptr %zde.addr, align 8, !dbg !1963, !tbaa !235
  %encryption_method79 = getelementptr inbounds %struct.zip_dirent, ptr %64, i32 0, i32 20, !dbg !1965
  store i16 0, ptr %encryption_method79, align 2, !dbg !1966, !tbaa !910
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.end77
  %65 = load ptr, ptr %zde.addr, align 8, !dbg !1967, !tbaa !235
  %filename = getelementptr inbounds %struct.zip_dirent, ptr %65, i32 0, i32 12, !dbg !1968
  store ptr null, ptr %filename, align 8, !dbg !1969, !tbaa !823
  %66 = load ptr, ptr %zde.addr, align 8, !dbg !1970, !tbaa !235
  %extra_fields = getelementptr inbounds %struct.zip_dirent, ptr %66, i32 0, i32 13, !dbg !1971
  store ptr null, ptr %extra_fields, align 8, !dbg !1972, !tbaa !1279
  %67 = load ptr, ptr %zde.addr, align 8, !dbg !1973, !tbaa !235
  %comment = getelementptr inbounds %struct.zip_dirent, ptr %67, i32 0, i32 14, !dbg !1974
  store ptr null, ptr %comment, align 8, !dbg !1975, !tbaa !830
  %68 = load i16, ptr %filename_len, align 2, !dbg !1976, !tbaa !1200
  %conv81 = zext i16 %68 to i32, !dbg !1977
  %69 = load i16, ptr %ef_len, align 2, !dbg !1978, !tbaa !1200
  %conv82 = zext i16 %69 to i32, !dbg !1979
  %add = add i32 %conv81, %conv82, !dbg !1980
  %70 = load i16, ptr %comment_len, align 2, !dbg !1981, !tbaa !1200
  %conv83 = zext i16 %70 to i32, !dbg !1982
  %add84 = add i32 %add, %conv83, !dbg !1983
  store i32 %add84, ptr %variable_size, align 4, !dbg !1984, !tbaa !558
  %71 = load i8, ptr %from_buffer, align 1, !dbg !1985, !tbaa !527, !range !613, !noundef !614
  %tobool85 = trunc i8 %71 to i1, !dbg !1985
  br i1 %tobool85, label %if.then86, label %if.else93, !dbg !1987

if.then86:                                        ; preds = %if.end80
  %72 = load ptr, ptr %buffer.addr, align 8, !dbg !1988, !tbaa !235
  %call87 = call i64 @_zip_buffer_left(ptr noundef %72), !dbg !1991
  %73 = load i32, ptr %variable_size, align 4, !dbg !1992, !tbaa !558
  %conv88 = zext i32 %73 to i64, !dbg !1992
  %cmp89 = icmp ult i64 %call87, %conv88, !dbg !1993
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !1994

if.then91:                                        ; preds = %if.then86
  %74 = load ptr, ptr %error.addr, align 8, !dbg !1995, !tbaa !235
  call void @zip_error_set(ptr noundef %74, i32 noundef 21, i32 noundef 0), !dbg !1997
  store i64 -1, ptr %retval, align 8, !dbg !1998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !1998

if.end92:                                         ; preds = %if.then86
  br label %if.end100, !dbg !1999

if.else93:                                        ; preds = %if.end80
  %75 = load ptr, ptr %buffer.addr, align 8, !dbg !2000, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %75), !dbg !2002
  %76 = load ptr, ptr %src.addr, align 8, !dbg !2003, !tbaa !235
  %77 = load i32, ptr %variable_size, align 4, !dbg !2005, !tbaa !558
  %conv94 = zext i32 %77 to i64, !dbg !2005
  %78 = load ptr, ptr %error.addr, align 8, !dbg !2006, !tbaa !235
  %call95 = call ptr @_zip_buffer_new_from_source(ptr noundef %76, i64 noundef %conv94, ptr noundef null, ptr noundef %78), !dbg !2007
  store ptr %call95, ptr %buffer.addr, align 8, !dbg !2008, !tbaa !235
  %cmp96 = icmp eq ptr %call95, null, !dbg !2009
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !2010

if.then98:                                        ; preds = %if.else93
  store i64 -1, ptr %retval, align 8, !dbg !2011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2011

if.end99:                                         ; preds = %if.else93
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end92
  %79 = load i16, ptr %filename_len, align 2, !dbg !2013, !tbaa !1200
  %tobool101 = icmp ne i16 %79, 0, !dbg !2013
  br i1 %tobool101, label %if.then102, label %if.end132, !dbg !2015

if.then102:                                       ; preds = %if.end100
  %80 = load ptr, ptr %buffer.addr, align 8, !dbg !2016, !tbaa !235
  %81 = load ptr, ptr %src.addr, align 8, !dbg !2018, !tbaa !235
  %82 = load i16, ptr %filename_len, align 2, !dbg !2019, !tbaa !1200
  %83 = load ptr, ptr %error.addr, align 8, !dbg !2020, !tbaa !235
  %call103 = call ptr @_zip_read_string(ptr noundef %80, ptr noundef %81, i16 noundef zeroext %82, i1 noundef zeroext true, ptr noundef %83), !dbg !2021
  %84 = load ptr, ptr %zde.addr, align 8, !dbg !2022, !tbaa !235
  %filename104 = getelementptr inbounds %struct.zip_dirent, ptr %84, i32 0, i32 12, !dbg !2023
  store ptr %call103, ptr %filename104, align 8, !dbg !2024, !tbaa !823
  %85 = load ptr, ptr %zde.addr, align 8, !dbg !2025, !tbaa !235
  %filename105 = getelementptr inbounds %struct.zip_dirent, ptr %85, i32 0, i32 12, !dbg !2027
  %86 = load ptr, ptr %filename105, align 8, !dbg !2027, !tbaa !823
  %tobool106 = icmp ne ptr %86, null, !dbg !2025
  br i1 %tobool106, label %if.end116, label %if.then107, !dbg !2028

if.then107:                                       ; preds = %if.then102
  %87 = load ptr, ptr %error.addr, align 8, !dbg !2029, !tbaa !235
  %call108 = call i32 @zip_error_code_zip(ptr noundef %87), !dbg !2032
  %cmp109 = icmp eq i32 %call108, 17, !dbg !2033
  br i1 %cmp109, label %if.then111, label %if.end112, !dbg !2034

if.then111:                                       ; preds = %if.then107
  %88 = load ptr, ptr %error.addr, align 8, !dbg !2035, !tbaa !235
  call void @zip_error_set(ptr noundef %88, i32 noundef 21, i32 noundef 0), !dbg !2037
  br label %if.end112, !dbg !2038

if.end112:                                        ; preds = %if.then111, %if.then107
  %89 = load i8, ptr %from_buffer, align 1, !dbg !2039, !tbaa !527, !range !613, !noundef !614
  %tobool113 = trunc i8 %89 to i1, !dbg !2039
  br i1 %tobool113, label %if.end115, label %if.then114, !dbg !2041

if.then114:                                       ; preds = %if.end112
  %90 = load ptr, ptr %buffer.addr, align 8, !dbg !2042, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %90), !dbg !2044
  br label %if.end115, !dbg !2045

if.end115:                                        ; preds = %if.then114, %if.end112
  store i64 -1, ptr %retval, align 8, !dbg !2046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2046

if.end116:                                        ; preds = %if.then102
  %91 = load ptr, ptr %zde.addr, align 8, !dbg !2047, !tbaa !235
  %bitflags117 = getelementptr inbounds %struct.zip_dirent, ptr %91, i32 0, i32 6, !dbg !2049
  %92 = load i16, ptr %bitflags117, align 4, !dbg !2049, !tbaa !854
  %conv118 = zext i16 %92 to i32, !dbg !2047
  %and119 = and i32 %conv118, 2048, !dbg !2050
  %tobool120 = icmp ne i32 %and119, 0, !dbg !2050
  br i1 %tobool120, label %if.then121, label %if.end131, !dbg !2051

if.then121:                                       ; preds = %if.end116
  %93 = load ptr, ptr %zde.addr, align 8, !dbg !2052, !tbaa !235
  %filename122 = getelementptr inbounds %struct.zip_dirent, ptr %93, i32 0, i32 12, !dbg !2055
  %94 = load ptr, ptr %filename122, align 8, !dbg !2055, !tbaa !823
  %call123 = call i32 @_zip_guess_encoding(ptr noundef %94, i32 noundef 2), !dbg !2056
  %cmp124 = icmp eq i32 %call123, 5, !dbg !2057
  br i1 %cmp124, label %if.then126, label %if.end130, !dbg !2058

if.then126:                                       ; preds = %if.then121
  %95 = load ptr, ptr %error.addr, align 8, !dbg !2059, !tbaa !235
  call void @zip_error_set(ptr noundef %95, i32 noundef 21, i32 noundef 0), !dbg !2061
  %96 = load i8, ptr %from_buffer, align 1, !dbg !2062, !tbaa !527, !range !613, !noundef !614
  %tobool127 = trunc i8 %96 to i1, !dbg !2062
  br i1 %tobool127, label %if.end129, label %if.then128, !dbg !2064

if.then128:                                       ; preds = %if.then126
  %97 = load ptr, ptr %buffer.addr, align 8, !dbg !2065, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %97), !dbg !2067
  br label %if.end129, !dbg !2068

if.end129:                                        ; preds = %if.then128, %if.then126
  store i64 -1, ptr %retval, align 8, !dbg !2069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2069

if.end130:                                        ; preds = %if.then121
  br label %if.end131, !dbg !2070

if.end131:                                        ; preds = %if.end130, %if.end116
  br label %if.end132, !dbg !2071

if.end132:                                        ; preds = %if.end131, %if.end100
  %98 = load i16, ptr %ef_len, align 2, !dbg !2072, !tbaa !1200
  %tobool133 = icmp ne i16 %98, 0, !dbg !2072
  br i1 %tobool133, label %if.then134, label %if.end157, !dbg !2073

if.then134:                                       ; preds = %if.end132
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef) #10, !dbg !2074
  tail call void @llvm.dbg.declare(metadata ptr %ef, metadata !1746, metadata !DIExpression()), !dbg !2075
  %99 = load ptr, ptr %buffer.addr, align 8, !dbg !2076, !tbaa !235
  %100 = load ptr, ptr %src.addr, align 8, !dbg !2077, !tbaa !235
  %101 = load i16, ptr %ef_len, align 2, !dbg !2078, !tbaa !1200
  %conv135 = zext i16 %101 to i64, !dbg !2078
  %102 = load ptr, ptr %error.addr, align 8, !dbg !2079, !tbaa !235
  %call136 = call ptr @_zip_read_data(ptr noundef %99, ptr noundef %100, i64 noundef %conv135, i1 noundef zeroext false, ptr noundef %102), !dbg !2080
  store ptr %call136, ptr %ef, align 8, !dbg !2075, !tbaa !235
  %103 = load ptr, ptr %ef, align 8, !dbg !2081, !tbaa !235
  %cmp137 = icmp eq ptr %103, null, !dbg !2083
  br i1 %cmp137, label %if.then139, label %if.end143, !dbg !2084

if.then139:                                       ; preds = %if.then134
  %104 = load i8, ptr %from_buffer, align 1, !dbg !2085, !tbaa !527, !range !613, !noundef !614
  %tobool140 = trunc i8 %104 to i1, !dbg !2085
  br i1 %tobool140, label %if.end142, label %if.then141, !dbg !2088

if.then141:                                       ; preds = %if.then139
  %105 = load ptr, ptr %buffer.addr, align 8, !dbg !2089, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %105), !dbg !2091
  br label %if.end142, !dbg !2092

if.end142:                                        ; preds = %if.then141, %if.then139
  store i64 -1, ptr %retval, align 8, !dbg !2093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2093

if.end143:                                        ; preds = %if.then134
  %106 = load ptr, ptr %ef, align 8, !dbg !2094, !tbaa !235
  %107 = load i16, ptr %ef_len, align 2, !dbg !2096, !tbaa !1200
  %108 = load i8, ptr %local.addr, align 1, !dbg !2097, !tbaa !527, !range !613, !noundef !614
  %tobool144 = trunc i8 %108 to i1, !dbg !2097
  %109 = zext i1 %tobool144 to i64, !dbg !2097
  %cond146 = select i1 %tobool144, i32 256, i32 512, !dbg !2097
  %110 = load ptr, ptr %zde.addr, align 8, !dbg !2098, !tbaa !235
  %extra_fields147 = getelementptr inbounds %struct.zip_dirent, ptr %110, i32 0, i32 13, !dbg !2099
  %111 = load ptr, ptr %error.addr, align 8, !dbg !2100, !tbaa !235
  %call148 = call zeroext i1 @_zip_ef_parse(ptr noundef %106, i16 noundef zeroext %107, i32 noundef %cond146, ptr noundef %extra_fields147, ptr noundef %111), !dbg !2101
  br i1 %call148, label %if.end153, label %if.then149, !dbg !2102

if.then149:                                       ; preds = %if.end143
  %112 = load ptr, ptr %ef, align 8, !dbg !2103, !tbaa !235
  call void @free(ptr noundef %112) #10, !dbg !2105
  %113 = load i8, ptr %from_buffer, align 1, !dbg !2106, !tbaa !527, !range !613, !noundef !614
  %tobool150 = trunc i8 %113 to i1, !dbg !2106
  br i1 %tobool150, label %if.end152, label %if.then151, !dbg !2108

if.then151:                                       ; preds = %if.then149
  %114 = load ptr, ptr %buffer.addr, align 8, !dbg !2109, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %114), !dbg !2111
  br label %if.end152, !dbg !2112

if.end152:                                        ; preds = %if.then151, %if.then149
  store i64 -1, ptr %retval, align 8, !dbg !2113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2113

if.end153:                                        ; preds = %if.end143
  %115 = load ptr, ptr %ef, align 8, !dbg !2114, !tbaa !235
  call void @free(ptr noundef %115) #10, !dbg !2115
  %116 = load i8, ptr %local.addr, align 1, !dbg !2116, !tbaa !527, !range !613, !noundef !614
  %tobool154 = trunc i8 %116 to i1, !dbg !2116
  br i1 %tobool154, label %if.then155, label %if.end156, !dbg !2118

if.then155:                                       ; preds = %if.end153
  %117 = load ptr, ptr %zde.addr, align 8, !dbg !2119, !tbaa !235
  %local_extra_fields_read = getelementptr inbounds %struct.zip_dirent, ptr %117, i32 0, i32 1, !dbg !2120
  store i8 1, ptr %local_extra_fields_read, align 4, !dbg !2121, !tbaa !1516
  br label %if.end156, !dbg !2119

if.end156:                                        ; preds = %if.then155, %if.end153
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2122
  br label %cleanup, !dbg !2122

cleanup:                                          ; preds = %if.end156, %if.end152, %if.end142
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef) #10, !dbg !2122
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup294 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end157, !dbg !2123

if.end157:                                        ; preds = %cleanup.cont, %if.end132
  %118 = load i16, ptr %comment_len, align 2, !dbg !2124, !tbaa !1200
  %tobool158 = icmp ne i16 %118, 0, !dbg !2124
  br i1 %tobool158, label %if.then159, label %if.end184, !dbg !2126

if.then159:                                       ; preds = %if.end157
  %119 = load ptr, ptr %buffer.addr, align 8, !dbg !2127, !tbaa !235
  %120 = load ptr, ptr %src.addr, align 8, !dbg !2129, !tbaa !235
  %121 = load i16, ptr %comment_len, align 2, !dbg !2130, !tbaa !1200
  %122 = load ptr, ptr %error.addr, align 8, !dbg !2131, !tbaa !235
  %call160 = call ptr @_zip_read_string(ptr noundef %119, ptr noundef %120, i16 noundef zeroext %121, i1 noundef zeroext false, ptr noundef %122), !dbg !2132
  %123 = load ptr, ptr %zde.addr, align 8, !dbg !2133, !tbaa !235
  %comment161 = getelementptr inbounds %struct.zip_dirent, ptr %123, i32 0, i32 14, !dbg !2134
  store ptr %call160, ptr %comment161, align 8, !dbg !2135, !tbaa !830
  %124 = load ptr, ptr %zde.addr, align 8, !dbg !2136, !tbaa !235
  %comment162 = getelementptr inbounds %struct.zip_dirent, ptr %124, i32 0, i32 14, !dbg !2138
  %125 = load ptr, ptr %comment162, align 8, !dbg !2138, !tbaa !830
  %tobool163 = icmp ne ptr %125, null, !dbg !2136
  br i1 %tobool163, label %if.end168, label %if.then164, !dbg !2139

if.then164:                                       ; preds = %if.then159
  %126 = load i8, ptr %from_buffer, align 1, !dbg !2140, !tbaa !527, !range !613, !noundef !614
  %tobool165 = trunc i8 %126 to i1, !dbg !2140
  br i1 %tobool165, label %if.end167, label %if.then166, !dbg !2143

if.then166:                                       ; preds = %if.then164
  %127 = load ptr, ptr %buffer.addr, align 8, !dbg !2144, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %127), !dbg !2146
  br label %if.end167, !dbg !2147

if.end167:                                        ; preds = %if.then166, %if.then164
  store i64 -1, ptr %retval, align 8, !dbg !2148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2148

if.end168:                                        ; preds = %if.then159
  %128 = load ptr, ptr %zde.addr, align 8, !dbg !2149, !tbaa !235
  %bitflags169 = getelementptr inbounds %struct.zip_dirent, ptr %128, i32 0, i32 6, !dbg !2151
  %129 = load i16, ptr %bitflags169, align 4, !dbg !2151, !tbaa !854
  %conv170 = zext i16 %129 to i32, !dbg !2149
  %and171 = and i32 %conv170, 2048, !dbg !2152
  %tobool172 = icmp ne i32 %and171, 0, !dbg !2152
  br i1 %tobool172, label %if.then173, label %if.end183, !dbg !2153

if.then173:                                       ; preds = %if.end168
  %130 = load ptr, ptr %zde.addr, align 8, !dbg !2154, !tbaa !235
  %comment174 = getelementptr inbounds %struct.zip_dirent, ptr %130, i32 0, i32 14, !dbg !2157
  %131 = load ptr, ptr %comment174, align 8, !dbg !2157, !tbaa !830
  %call175 = call i32 @_zip_guess_encoding(ptr noundef %131, i32 noundef 2), !dbg !2158
  %cmp176 = icmp eq i32 %call175, 5, !dbg !2159
  br i1 %cmp176, label %if.then178, label %if.end182, !dbg !2160

if.then178:                                       ; preds = %if.then173
  %132 = load ptr, ptr %error.addr, align 8, !dbg !2161, !tbaa !235
  call void @zip_error_set(ptr noundef %132, i32 noundef 21, i32 noundef 0), !dbg !2163
  %133 = load i8, ptr %from_buffer, align 1, !dbg !2164, !tbaa !527, !range !613, !noundef !614
  %tobool179 = trunc i8 %133 to i1, !dbg !2164
  br i1 %tobool179, label %if.end181, label %if.then180, !dbg !2166

if.then180:                                       ; preds = %if.then178
  %134 = load ptr, ptr %buffer.addr, align 8, !dbg !2167, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %134), !dbg !2169
  br label %if.end181, !dbg !2170

if.end181:                                        ; preds = %if.then180, %if.then178
  store i64 -1, ptr %retval, align 8, !dbg !2171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2171

if.end182:                                        ; preds = %if.then173
  br label %if.end183, !dbg !2172

if.end183:                                        ; preds = %if.end182, %if.end168
  br label %if.end184, !dbg !2173

if.end184:                                        ; preds = %if.end183, %if.end157
  %135 = load ptr, ptr %zde.addr, align 8, !dbg !2174, !tbaa !235
  %136 = load ptr, ptr %zde.addr, align 8, !dbg !2175, !tbaa !235
  %filename185 = getelementptr inbounds %struct.zip_dirent, ptr %136, i32 0, i32 12, !dbg !2176
  %137 = load ptr, ptr %filename185, align 8, !dbg !2176, !tbaa !823
  %call186 = call ptr @_zip_dirent_process_ef_utf_8(ptr noundef %135, i16 noundef zeroext 28789, ptr noundef %137), !dbg !2177
  %138 = load ptr, ptr %zde.addr, align 8, !dbg !2178, !tbaa !235
  %filename187 = getelementptr inbounds %struct.zip_dirent, ptr %138, i32 0, i32 12, !dbg !2179
  store ptr %call186, ptr %filename187, align 8, !dbg !2180, !tbaa !823
  %139 = load ptr, ptr %zde.addr, align 8, !dbg !2181, !tbaa !235
  %140 = load ptr, ptr %zde.addr, align 8, !dbg !2182, !tbaa !235
  %comment188 = getelementptr inbounds %struct.zip_dirent, ptr %140, i32 0, i32 14, !dbg !2183
  %141 = load ptr, ptr %comment188, align 8, !dbg !2183, !tbaa !830
  %call189 = call ptr @_zip_dirent_process_ef_utf_8(ptr noundef %139, i16 noundef zeroext 25461, ptr noundef %141), !dbg !2184
  %142 = load ptr, ptr %zde.addr, align 8, !dbg !2185, !tbaa !235
  %comment190 = getelementptr inbounds %struct.zip_dirent, ptr %142, i32 0, i32 14, !dbg !2186
  store ptr %call189, ptr %comment190, align 8, !dbg !2187, !tbaa !830
  %143 = load ptr, ptr %zde.addr, align 8, !dbg !2188, !tbaa !235
  %uncomp_size191 = getelementptr inbounds %struct.zip_dirent, ptr %143, i32 0, i32 11, !dbg !2189
  %144 = load i64, ptr %uncomp_size191, align 8, !dbg !2189, !tbaa !979
  %cmp192 = icmp eq i64 %144, 4294967295, !dbg !2190
  br i1 %cmp192, label %if.then201, label %lor.lhs.false, !dbg !2191

lor.lhs.false:                                    ; preds = %if.end184
  %145 = load ptr, ptr %zde.addr, align 8, !dbg !2192, !tbaa !235
  %comp_size194 = getelementptr inbounds %struct.zip_dirent, ptr %145, i32 0, i32 10, !dbg !2193
  %146 = load i64, ptr %comp_size194, align 8, !dbg !2193, !tbaa !974
  %cmp195 = icmp eq i64 %146, 4294967295, !dbg !2194
  br i1 %cmp195, label %if.then201, label %lor.lhs.false197, !dbg !2195

lor.lhs.false197:                                 ; preds = %lor.lhs.false
  %147 = load ptr, ptr %zde.addr, align 8, !dbg !2196, !tbaa !235
  %offset198 = getelementptr inbounds %struct.zip_dirent, ptr %147, i32 0, i32 18, !dbg !2197
  %148 = load i64, ptr %offset198, align 8, !dbg !2197, !tbaa !1008
  %cmp199 = icmp eq i64 %148, 4294967295, !dbg !2198
  br i1 %cmp199, label %if.then201, label %if.end271, !dbg !2199

if.then201:                                       ; preds = %lor.lhs.false197, %lor.lhs.false, %if.end184
  call void @llvm.lifetime.start.p0(i64 2, ptr %got_len) #10, !dbg !2200
  tail call void @llvm.dbg.declare(metadata ptr %got_len, metadata !1749, metadata !DIExpression()), !dbg !2201
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef_buffer) #10, !dbg !2202
  tail call void @llvm.dbg.declare(metadata ptr %ef_buffer, metadata !1752, metadata !DIExpression()), !dbg !2203
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef202) #10, !dbg !2204
  tail call void @llvm.dbg.declare(metadata ptr %ef202, metadata !1753, metadata !DIExpression()), !dbg !2205
  %149 = load ptr, ptr %zde.addr, align 8, !dbg !2206, !tbaa !235
  %extra_fields203 = getelementptr inbounds %struct.zip_dirent, ptr %149, i32 0, i32 13, !dbg !2207
  %150 = load ptr, ptr %extra_fields203, align 8, !dbg !2207, !tbaa !1279
  %151 = load i8, ptr %local.addr, align 1, !dbg !2208, !tbaa !527, !range !613, !noundef !614
  %tobool204 = trunc i8 %151 to i1, !dbg !2208
  %152 = zext i1 %tobool204 to i64, !dbg !2208
  %cond206 = select i1 %tobool204, i32 256, i32 512, !dbg !2208
  %153 = load ptr, ptr %error.addr, align 8, !dbg !2209, !tbaa !235
  %call207 = call ptr @_zip_ef_get_by_id(ptr noundef %150, ptr noundef %got_len, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef %cond206, ptr noundef %153), !dbg !2210
  store ptr %call207, ptr %ef202, align 8, !dbg !2205, !tbaa !235
  %154 = load ptr, ptr %ef202, align 8, !dbg !2211, !tbaa !235
  %cmp208 = icmp eq ptr %154, null, !dbg !2213
  br i1 %cmp208, label %if.then210, label %if.end214, !dbg !2214

if.then210:                                       ; preds = %if.then201
  %155 = load i8, ptr %from_buffer, align 1, !dbg !2215, !tbaa !527, !range !613, !noundef !614
  %tobool211 = trunc i8 %155 to i1, !dbg !2215
  br i1 %tobool211, label %if.end213, label %if.then212, !dbg !2218

if.then212:                                       ; preds = %if.then210
  %156 = load ptr, ptr %buffer.addr, align 8, !dbg !2219, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %156), !dbg !2221
  br label %if.end213, !dbg !2222

if.end213:                                        ; preds = %if.then212, %if.then210
  store i64 -1, ptr %retval, align 8, !dbg !2223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup266, !dbg !2223

if.end214:                                        ; preds = %if.then201
  %157 = load ptr, ptr %ef202, align 8, !dbg !2224, !tbaa !235
  %158 = load i16, ptr %got_len, align 2, !dbg !2226, !tbaa !1200
  %conv215 = zext i16 %158 to i64, !dbg !2226
  %call216 = call ptr @_zip_buffer_new(ptr noundef %157, i64 noundef %conv215), !dbg !2227
  store ptr %call216, ptr %ef_buffer, align 8, !dbg !2228, !tbaa !235
  %cmp217 = icmp eq ptr %call216, null, !dbg !2229
  br i1 %cmp217, label %if.then219, label %if.end223, !dbg !2230

if.then219:                                       ; preds = %if.end214
  %159 = load ptr, ptr %error.addr, align 8, !dbg !2231, !tbaa !235
  call void @zip_error_set(ptr noundef %159, i32 noundef 14, i32 noundef 0), !dbg !2233
  %160 = load i8, ptr %from_buffer, align 1, !dbg !2234, !tbaa !527, !range !613, !noundef !614
  %tobool220 = trunc i8 %160 to i1, !dbg !2234
  br i1 %tobool220, label %if.end222, label %if.then221, !dbg !2236

if.then221:                                       ; preds = %if.then219
  %161 = load ptr, ptr %buffer.addr, align 8, !dbg !2237, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %161), !dbg !2239
  br label %if.end222, !dbg !2240

if.end222:                                        ; preds = %if.then221, %if.then219
  store i64 -1, ptr %retval, align 8, !dbg !2241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup266, !dbg !2241

if.end223:                                        ; preds = %if.end214
  %162 = load ptr, ptr %zde.addr, align 8, !dbg !2242, !tbaa !235
  %uncomp_size224 = getelementptr inbounds %struct.zip_dirent, ptr %162, i32 0, i32 11, !dbg !2244
  %163 = load i64, ptr %uncomp_size224, align 8, !dbg !2244, !tbaa !979
  %cmp225 = icmp eq i64 %163, 4294967295, !dbg !2245
  br i1 %cmp225, label %if.then227, label %if.else230, !dbg !2246

if.then227:                                       ; preds = %if.end223
  %164 = load ptr, ptr %ef_buffer, align 8, !dbg !2247, !tbaa !235
  %call228 = call i64 @_zip_buffer_get_64(ptr noundef %164), !dbg !2248
  %165 = load ptr, ptr %zde.addr, align 8, !dbg !2249, !tbaa !235
  %uncomp_size229 = getelementptr inbounds %struct.zip_dirent, ptr %165, i32 0, i32 11, !dbg !2250
  store i64 %call228, ptr %uncomp_size229, align 8, !dbg !2251, !tbaa !979
  br label %if.end235, !dbg !2249

if.else230:                                       ; preds = %if.end223
  %166 = load i8, ptr %local.addr, align 1, !dbg !2252, !tbaa !527, !range !613, !noundef !614
  %tobool231 = trunc i8 %166 to i1, !dbg !2252
  br i1 %tobool231, label %if.then232, label %if.end234, !dbg !2254

if.then232:                                       ; preds = %if.else230
  %167 = load ptr, ptr %ef_buffer, align 8, !dbg !2255, !tbaa !235
  %call233 = call i32 @_zip_buffer_skip(ptr noundef %167, i64 noundef 8), !dbg !2257
  br label %if.end234, !dbg !2258

if.end234:                                        ; preds = %if.then232, %if.else230
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %if.then227
  %168 = load ptr, ptr %zde.addr, align 8, !dbg !2259, !tbaa !235
  %comp_size236 = getelementptr inbounds %struct.zip_dirent, ptr %168, i32 0, i32 10, !dbg !2261
  %169 = load i64, ptr %comp_size236, align 8, !dbg !2261, !tbaa !974
  %cmp237 = icmp eq i64 %169, 4294967295, !dbg !2262
  br i1 %cmp237, label %if.then239, label %if.end242, !dbg !2263

if.then239:                                       ; preds = %if.end235
  %170 = load ptr, ptr %ef_buffer, align 8, !dbg !2264, !tbaa !235
  %call240 = call i64 @_zip_buffer_get_64(ptr noundef %170), !dbg !2265
  %171 = load ptr, ptr %zde.addr, align 8, !dbg !2266, !tbaa !235
  %comp_size241 = getelementptr inbounds %struct.zip_dirent, ptr %171, i32 0, i32 10, !dbg !2267
  store i64 %call240, ptr %comp_size241, align 8, !dbg !2268, !tbaa !974
  br label %if.end242, !dbg !2266

if.end242:                                        ; preds = %if.then239, %if.end235
  %172 = load i8, ptr %local.addr, align 1, !dbg !2269, !tbaa !527, !range !613, !noundef !614
  %tobool243 = trunc i8 %172 to i1, !dbg !2269
  br i1 %tobool243, label %if.end259, label %if.then244, !dbg !2271

if.then244:                                       ; preds = %if.end242
  %173 = load ptr, ptr %zde.addr, align 8, !dbg !2272, !tbaa !235
  %offset245 = getelementptr inbounds %struct.zip_dirent, ptr %173, i32 0, i32 18, !dbg !2275
  %174 = load i64, ptr %offset245, align 8, !dbg !2275, !tbaa !1008
  %cmp246 = icmp eq i64 %174, 4294967295, !dbg !2276
  br i1 %cmp246, label %if.then248, label %if.end251, !dbg !2277

if.then248:                                       ; preds = %if.then244
  %175 = load ptr, ptr %ef_buffer, align 8, !dbg !2278, !tbaa !235
  %call249 = call i64 @_zip_buffer_get_64(ptr noundef %175), !dbg !2279
  %176 = load ptr, ptr %zde.addr, align 8, !dbg !2280, !tbaa !235
  %offset250 = getelementptr inbounds %struct.zip_dirent, ptr %176, i32 0, i32 18, !dbg !2281
  store i64 %call249, ptr %offset250, align 8, !dbg !2282, !tbaa !1008
  br label %if.end251, !dbg !2280

if.end251:                                        ; preds = %if.then248, %if.then244
  %177 = load ptr, ptr %zde.addr, align 8, !dbg !2283, !tbaa !235
  %disk_number252 = getelementptr inbounds %struct.zip_dirent, ptr %177, i32 0, i32 15, !dbg !2285
  %178 = load i32, ptr %disk_number252, align 8, !dbg !2285, !tbaa !1306
  %cmp253 = icmp eq i32 %178, 65535, !dbg !2286
  br i1 %cmp253, label %if.then255, label %if.end258, !dbg !2287

if.then255:                                       ; preds = %if.end251
  %179 = load ptr, ptr %buffer.addr, align 8, !dbg !2288, !tbaa !235
  %call256 = call i32 @_zip_buffer_get_32(ptr noundef %179), !dbg !2289
  %180 = load ptr, ptr %zde.addr, align 8, !dbg !2290, !tbaa !235
  %disk_number257 = getelementptr inbounds %struct.zip_dirent, ptr %180, i32 0, i32 15, !dbg !2291
  store i32 %call256, ptr %disk_number257, align 8, !dbg !2292, !tbaa !1306
  br label %if.end258, !dbg !2290

if.end258:                                        ; preds = %if.then255, %if.end251
  br label %if.end259, !dbg !2293

if.end259:                                        ; preds = %if.end258, %if.end242
  %181 = load ptr, ptr %ef_buffer, align 8, !dbg !2294, !tbaa !235
  %call260 = call zeroext i1 @_zip_buffer_eof(ptr noundef %181), !dbg !2296
  br i1 %call260, label %if.end265, label %if.then261, !dbg !2297

if.then261:                                       ; preds = %if.end259
  %182 = load ptr, ptr %error.addr, align 8, !dbg !2298, !tbaa !235
  call void @zip_error_set(ptr noundef %182, i32 noundef 21, i32 noundef 0), !dbg !2300
  %183 = load ptr, ptr %ef_buffer, align 8, !dbg !2301, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %183), !dbg !2302
  %184 = load i8, ptr %from_buffer, align 1, !dbg !2303, !tbaa !527, !range !613, !noundef !614
  %tobool262 = trunc i8 %184 to i1, !dbg !2303
  br i1 %tobool262, label %if.end264, label %if.then263, !dbg !2305

if.then263:                                       ; preds = %if.then261
  %185 = load ptr, ptr %buffer.addr, align 8, !dbg !2306, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %185), !dbg !2308
  br label %if.end264, !dbg !2309

if.end264:                                        ; preds = %if.then263, %if.then261
  store i64 -1, ptr %retval, align 8, !dbg !2310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup266, !dbg !2310

if.end265:                                        ; preds = %if.end259
  %186 = load ptr, ptr %ef_buffer, align 8, !dbg !2311, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %186), !dbg !2312
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2313
  br label %cleanup266, !dbg !2313

cleanup266:                                       ; preds = %if.end265, %if.end264, %if.end222, %if.end213
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef202) #10, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef_buffer) #10, !dbg !2313
  call void @llvm.lifetime.end.p0(i64 2, ptr %got_len) #10, !dbg !2313
  %cleanup.dest269 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest269, label %cleanup294 [
    i32 0, label %cleanup.cont270
  ]

cleanup.cont270:                                  ; preds = %cleanup266
  br label %if.end271, !dbg !2314

if.end271:                                        ; preds = %cleanup.cont270, %lor.lhs.false197
  %187 = load ptr, ptr %buffer.addr, align 8, !dbg !2315, !tbaa !235
  %call272 = call zeroext i1 @_zip_buffer_ok(ptr noundef %187), !dbg !2317
  br i1 %call272, label %if.end277, label %if.then273, !dbg !2318

if.then273:                                       ; preds = %if.end271
  %188 = load ptr, ptr %error.addr, align 8, !dbg !2319, !tbaa !235
  call void @zip_error_set(ptr noundef %188, i32 noundef 20, i32 noundef 0), !dbg !2321
  %189 = load i8, ptr %from_buffer, align 1, !dbg !2322, !tbaa !527, !range !613, !noundef !614
  %tobool274 = trunc i8 %189 to i1, !dbg !2322
  br i1 %tobool274, label %if.end276, label %if.then275, !dbg !2324

if.then275:                                       ; preds = %if.then273
  %190 = load ptr, ptr %buffer.addr, align 8, !dbg !2325, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %190), !dbg !2327
  br label %if.end276, !dbg !2328

if.end276:                                        ; preds = %if.then275, %if.then273
  store i64 -1, ptr %retval, align 8, !dbg !2329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2329

if.end277:                                        ; preds = %if.end271
  %191 = load i8, ptr %from_buffer, align 1, !dbg !2330, !tbaa !527, !range !613, !noundef !614
  %tobool278 = trunc i8 %191 to i1, !dbg !2330
  br i1 %tobool278, label %if.end280, label %if.then279, !dbg !2332

if.then279:                                       ; preds = %if.end277
  %192 = load ptr, ptr %buffer.addr, align 8, !dbg !2333, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %192), !dbg !2335
  br label %if.end280, !dbg !2336

if.end280:                                        ; preds = %if.then279, %if.end277
  %193 = load ptr, ptr %zde.addr, align 8, !dbg !2337, !tbaa !235
  %offset281 = getelementptr inbounds %struct.zip_dirent, ptr %193, i32 0, i32 18, !dbg !2339
  %194 = load i64, ptr %offset281, align 8, !dbg !2339, !tbaa !1008
  %cmp282 = icmp ugt i64 %194, 9223372036854775807, !dbg !2340
  br i1 %cmp282, label %if.then284, label %if.end285, !dbg !2341

if.then284:                                       ; preds = %if.end280
  %195 = load ptr, ptr %error.addr, align 8, !dbg !2342, !tbaa !235
  call void @zip_error_set(ptr noundef %195, i32 noundef 4, i32 noundef 27), !dbg !2344
  store i64 -1, ptr %retval, align 8, !dbg !2345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2345

if.end285:                                        ; preds = %if.end280
  %196 = load ptr, ptr %zde.addr, align 8, !dbg !2346, !tbaa !235
  %197 = load ptr, ptr %error.addr, align 8, !dbg !2348, !tbaa !235
  %call286 = call zeroext i1 @_zip_dirent_process_winzip_aes(ptr noundef %196, ptr noundef %197), !dbg !2349
  br i1 %call286, label %if.end288, label %if.then287, !dbg !2350

if.then287:                                       ; preds = %if.end285
  store i64 -1, ptr %retval, align 8, !dbg !2351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2351

if.end288:                                        ; preds = %if.end285
  %198 = load ptr, ptr %zde.addr, align 8, !dbg !2353, !tbaa !235
  %extra_fields289 = getelementptr inbounds %struct.zip_dirent, ptr %198, i32 0, i32 13, !dbg !2354
  %199 = load ptr, ptr %extra_fields289, align 8, !dbg !2354, !tbaa !1279
  %call290 = call ptr @_zip_ef_remove_internal(ptr noundef %199), !dbg !2355
  %200 = load ptr, ptr %zde.addr, align 8, !dbg !2356, !tbaa !235
  %extra_fields291 = getelementptr inbounds %struct.zip_dirent, ptr %200, i32 0, i32 13, !dbg !2357
  store ptr %call290, ptr %extra_fields291, align 8, !dbg !2358, !tbaa !1279
  %201 = load i32, ptr %size, align 4, !dbg !2359, !tbaa !558
  %202 = load i32, ptr %variable_size, align 4, !dbg !2360, !tbaa !558
  %add292 = add i32 %201, %202, !dbg !2361
  %conv293 = zext i32 %add292 to i64, !dbg !2362
  store i64 %conv293, ptr %retval, align 8, !dbg !2363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup294, !dbg !2363

cleanup294:                                       ; preds = %if.end288, %if.then287, %if.then284, %if.end276, %cleanup266, %if.end181, %if.end167, %cleanup, %if.end129, %if.end115, %if.then98, %if.then91, %if.end64, %if.end23, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 1, ptr %from_buffer) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 2, ptr %ef_len) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 2, ptr %comment_len) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 2, ptr %filename_len) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4, ptr %variable_size) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 2, ptr %dosdate) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 2, ptr %dostime) #10, !dbg !2364
  call void @llvm.lifetime.end.p0(i64 46, ptr %buf) #10, !dbg !2364
  %203 = load i64, ptr %retval, align 8, !dbg !2364
  ret i64 %203, !dbg !2364
}

declare !dbg !2365 i64 @_zip_buffer_left(ptr noundef) #2

declare !dbg !2366 ptr @_zip_buffer_new_from_source(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !2369 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

declare !dbg !2372 ptr @_zip_buffer_get(ptr noundef, i64 noundef) #2

declare !dbg !2375 zeroext i16 @_zip_buffer_get_16(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @_zip_d2u_time(i16 noundef zeroext %dtime, i16 noundef zeroext %ddate) #0 !dbg !2378 {
entry:
  %dtime.addr = alloca i16, align 2
  %ddate.addr = alloca i16, align 2
  %tm = alloca %struct.tm, align 8
  store i16 %dtime, ptr %dtime.addr, align 2, !tbaa !1200
  tail call void @llvm.dbg.declare(metadata ptr %dtime.addr, metadata !2382, metadata !DIExpression()), !dbg !2399
  store i16 %ddate, ptr %ddate.addr, align 2, !tbaa !1200
  tail call void @llvm.dbg.declare(metadata ptr %ddate.addr, metadata !2383, metadata !DIExpression()), !dbg !2400
  call void @llvm.lifetime.start.p0(i64 56, ptr %tm) #10, !dbg !2401
  tail call void @llvm.dbg.declare(metadata ptr %tm, metadata !2384, metadata !DIExpression()), !dbg !2402
  call void @llvm.memset.p0.i64(ptr align 8 %tm, i8 0, i64 56, i1 false), !dbg !2403
  %tm_isdst = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 8, !dbg !2404
  store i32 -1, ptr %tm_isdst, align 8, !dbg !2405, !tbaa !2406
  %0 = load i16, ptr %ddate.addr, align 2, !dbg !2408, !tbaa !1200
  %conv = zext i16 %0 to i32, !dbg !2408
  %shr = ashr i32 %conv, 9, !dbg !2409
  %and = and i32 %shr, 127, !dbg !2410
  %add = add nsw i32 %and, 1980, !dbg !2411
  %sub = sub nsw i32 %add, 1900, !dbg !2412
  %tm_year = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5, !dbg !2413
  store i32 %sub, ptr %tm_year, align 4, !dbg !2414, !tbaa !2415
  %1 = load i16, ptr %ddate.addr, align 2, !dbg !2416, !tbaa !1200
  %conv1 = zext i16 %1 to i32, !dbg !2416
  %shr2 = ashr i32 %conv1, 5, !dbg !2417
  %and3 = and i32 %shr2, 15, !dbg !2418
  %sub4 = sub nsw i32 %and3, 1, !dbg !2419
  %tm_mon = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4, !dbg !2420
  store i32 %sub4, ptr %tm_mon, align 8, !dbg !2421, !tbaa !2422
  %2 = load i16, ptr %ddate.addr, align 2, !dbg !2423, !tbaa !1200
  %conv5 = zext i16 %2 to i32, !dbg !2423
  %and6 = and i32 %conv5, 31, !dbg !2424
  %tm_mday = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 3, !dbg !2425
  store i32 %and6, ptr %tm_mday, align 4, !dbg !2426, !tbaa !2427
  %3 = load i16, ptr %dtime.addr, align 2, !dbg !2428, !tbaa !1200
  %conv7 = zext i16 %3 to i32, !dbg !2428
  %shr8 = ashr i32 %conv7, 11, !dbg !2429
  %and9 = and i32 %shr8, 31, !dbg !2430
  %tm_hour = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 2, !dbg !2431
  store i32 %and9, ptr %tm_hour, align 8, !dbg !2432, !tbaa !2433
  %4 = load i16, ptr %dtime.addr, align 2, !dbg !2434, !tbaa !1200
  %conv10 = zext i16 %4 to i32, !dbg !2434
  %shr11 = ashr i32 %conv10, 5, !dbg !2435
  %and12 = and i32 %shr11, 63, !dbg !2436
  %tm_min = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 1, !dbg !2437
  store i32 %and12, ptr %tm_min, align 4, !dbg !2438, !tbaa !2439
  %5 = load i16, ptr %dtime.addr, align 2, !dbg !2440, !tbaa !1200
  %conv13 = zext i16 %5 to i32, !dbg !2440
  %shl = shl i32 %conv13, 1, !dbg !2441
  %and14 = and i32 %shl, 62, !dbg !2442
  %tm_sec = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 0, !dbg !2443
  store i32 %and14, ptr %tm_sec, align 8, !dbg !2444, !tbaa !2445
  %call = call i64 @mktime(ptr noundef %tm) #10, !dbg !2446
  call void @llvm.lifetime.end.p0(i64 56, ptr %tm) #10, !dbg !2447
  ret i64 %call, !dbg !2448
}

declare !dbg !2449 i32 @_zip_buffer_get_32(ptr noundef) #2

declare !dbg !2452 ptr @_zip_read_string(ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) #2

declare !dbg !2455 i32 @zip_error_code_zip(ptr noundef) #2

declare !dbg !2460 i32 @_zip_guess_encoding(ptr noundef, i32 noundef) #2

declare !dbg !2463 ptr @_zip_read_data(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) #2

declare !dbg !2466 zeroext i1 @_zip_ef_parse(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @_zip_dirent_process_ef_utf_8(ptr noundef %de, i16 noundef zeroext %id, ptr noundef %str) #0 !dbg !2470 {
entry:
  %retval = alloca ptr, align 8
  %de.addr = alloca ptr, align 8
  %id.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %ef_len = alloca i16, align 2
  %ef_crc = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %ef = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i16, align 2
  %ef_str = alloca ptr, align 8
  store ptr %de, ptr %de.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !2474, metadata !DIExpression()), !dbg !2485
  store i16 %id, ptr %id.addr, align 2, !tbaa !1200
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2475, metadata !DIExpression()), !dbg !2486
  store ptr %str, ptr %str.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2476, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.start.p0(i64 2, ptr %ef_len) #10, !dbg !2488
  tail call void @llvm.dbg.declare(metadata ptr %ef_len, metadata !2477, metadata !DIExpression()), !dbg !2489
  call void @llvm.lifetime.start.p0(i64 4, ptr %ef_crc) #10, !dbg !2490
  tail call void @llvm.dbg.declare(metadata ptr %ef_crc, metadata !2478, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #10, !dbg !2492
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2479, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef) #10, !dbg !2494
  tail call void @llvm.dbg.declare(metadata ptr %ef, metadata !2480, metadata !DIExpression()), !dbg !2495
  %0 = load ptr, ptr %de.addr, align 8, !dbg !2496, !tbaa !235
  %extra_fields = getelementptr inbounds %struct.zip_dirent, ptr %0, i32 0, i32 13, !dbg !2497
  %1 = load ptr, ptr %extra_fields, align 8, !dbg !2497, !tbaa !1279
  %2 = load i16, ptr %id.addr, align 2, !dbg !2498, !tbaa !1200
  %call = call ptr @_zip_ef_get_by_id(ptr noundef %1, ptr noundef %ef_len, i16 noundef zeroext %2, i16 noundef zeroext 0, i32 noundef 768, ptr noundef null), !dbg !2499
  store ptr %call, ptr %ef, align 8, !dbg !2495, !tbaa !235
  %3 = load ptr, ptr %ef, align 8, !dbg !2500, !tbaa !235
  %cmp = icmp eq ptr %3, null, !dbg !2502
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2503

lor.lhs.false:                                    ; preds = %entry
  %4 = load i16, ptr %ef_len, align 2, !dbg !2504, !tbaa !1200
  %conv = zext i16 %4 to i32, !dbg !2504
  %cmp1 = icmp slt i32 %conv, 5, !dbg !2505
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !2506

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %ef, align 8, !dbg !2507, !tbaa !235
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !2507
  %6 = load i8, ptr %arrayidx, align 1, !dbg !2507, !tbaa !827
  %conv4 = zext i8 %6 to i32, !dbg !2507
  %cmp5 = icmp ne i32 %conv4, 1, !dbg !2508
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2509

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %7 = load ptr, ptr %str.addr, align 8, !dbg !2510, !tbaa !235
  store ptr %7, ptr %retval, align 8, !dbg !2512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2512

if.end:                                           ; preds = %lor.lhs.false3
  %8 = load ptr, ptr %ef, align 8, !dbg !2513, !tbaa !235
  %9 = load i16, ptr %ef_len, align 2, !dbg !2515, !tbaa !1200
  %conv7 = zext i16 %9 to i64, !dbg !2515
  %call8 = call ptr @_zip_buffer_new(ptr noundef %8, i64 noundef %conv7), !dbg !2516
  store ptr %call8, ptr %buffer, align 8, !dbg !2517, !tbaa !235
  %cmp9 = icmp eq ptr %call8, null, !dbg !2518
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !2519

if.then11:                                        ; preds = %if.end
  %10 = load ptr, ptr %str.addr, align 8, !dbg !2520, !tbaa !235
  store ptr %10, ptr %retval, align 8, !dbg !2522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2522

if.end12:                                         ; preds = %if.end
  %11 = load ptr, ptr %buffer, align 8, !dbg !2523, !tbaa !235
  %call13 = call zeroext i8 @_zip_buffer_get_8(ptr noundef %11), !dbg !2524
  %12 = load ptr, ptr %buffer, align 8, !dbg !2525, !tbaa !235
  %call14 = call i32 @_zip_buffer_get_32(ptr noundef %12), !dbg !2526
  store i32 %call14, ptr %ef_crc, align 4, !dbg !2527, !tbaa !558
  %13 = load ptr, ptr %str.addr, align 8, !dbg !2528, !tbaa !235
  %call15 = call i32 @_zip_string_crc32(ptr noundef %13), !dbg !2529
  %14 = load i32, ptr %ef_crc, align 4, !dbg !2530, !tbaa !558
  %cmp16 = icmp eq i32 %call15, %14, !dbg !2531
  br i1 %cmp16, label %if.then18, label %if.end28, !dbg !2532

if.then18:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 2, ptr %len) #10, !dbg !2533
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2481, metadata !DIExpression()), !dbg !2534
  %15 = load ptr, ptr %buffer, align 8, !dbg !2535, !tbaa !235
  %call19 = call i64 @_zip_buffer_left(ptr noundef %15), !dbg !2536
  %conv20 = trunc i64 %call19 to i16, !dbg !2537
  store i16 %conv20, ptr %len, align 2, !dbg !2534, !tbaa !1200
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef_str) #10, !dbg !2538
  tail call void @llvm.dbg.declare(metadata ptr %ef_str, metadata !2484, metadata !DIExpression()), !dbg !2539
  %16 = load ptr, ptr %buffer, align 8, !dbg !2540, !tbaa !235
  %17 = load i16, ptr %len, align 2, !dbg !2541, !tbaa !1200
  %conv21 = zext i16 %17 to i64, !dbg !2541
  %call22 = call ptr @_zip_buffer_get(ptr noundef %16, i64 noundef %conv21), !dbg !2542
  %18 = load i16, ptr %len, align 2, !dbg !2543, !tbaa !1200
  %call23 = call ptr @_zip_string_new(ptr noundef %call22, i16 noundef zeroext %18, i32 noundef 2048, ptr noundef null), !dbg !2544
  store ptr %call23, ptr %ef_str, align 8, !dbg !2539, !tbaa !235
  %19 = load ptr, ptr %ef_str, align 8, !dbg !2545, !tbaa !235
  %cmp24 = icmp ne ptr %19, null, !dbg !2547
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2548

if.then26:                                        ; preds = %if.then18
  %20 = load ptr, ptr %str.addr, align 8, !dbg !2549, !tbaa !235
  call void @_zip_string_free(ptr noundef %20), !dbg !2551
  %21 = load ptr, ptr %ef_str, align 8, !dbg !2552, !tbaa !235
  store ptr %21, ptr %str.addr, align 8, !dbg !2553, !tbaa !235
  br label %if.end27, !dbg !2554

if.end27:                                         ; preds = %if.then26, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef_str) #10, !dbg !2555
  call void @llvm.lifetime.end.p0(i64 2, ptr %len) #10, !dbg !2555
  br label %if.end28, !dbg !2556

if.end28:                                         ; preds = %if.end27, %if.end12
  %22 = load ptr, ptr %buffer, align 8, !dbg !2557, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %22), !dbg !2558
  %23 = load ptr, ptr %str.addr, align 8, !dbg !2559, !tbaa !235
  store ptr %23, ptr %retval, align 8, !dbg !2560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2560

cleanup:                                          ; preds = %if.end28, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef) #10, !dbg !2561
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #10, !dbg !2561
  call void @llvm.lifetime.end.p0(i64 4, ptr %ef_crc) #10, !dbg !2561
  call void @llvm.lifetime.end.p0(i64 2, ptr %ef_len) #10, !dbg !2561
  %24 = load ptr, ptr %retval, align 8, !dbg !2561
  ret ptr %24, !dbg !2561
}

declare !dbg !2562 ptr @_zip_ef_get_by_id(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) #2

declare !dbg !2568 i64 @_zip_buffer_get_64(ptr noundef) #2

declare !dbg !2569 i32 @_zip_buffer_skip(ptr noundef, i64 noundef) #2

declare !dbg !2570 zeroext i1 @_zip_buffer_eof(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @_zip_dirent_process_winzip_aes(ptr noundef %de, ptr noundef %error) #0 !dbg !2571 {
entry:
  %retval = alloca i1, align 1
  %de.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %ef_len = alloca i16, align 2
  %buffer = alloca ptr, align 8
  %ef = alloca ptr, align 8
  %crc_valid = alloca i8, align 1
  %enc_method = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !2575, metadata !DIExpression()), !dbg !2582
  store ptr %error, ptr %error.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2576, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 2, ptr %ef_len) #10, !dbg !2584
  tail call void @llvm.dbg.declare(metadata ptr %ef_len, metadata !2577, metadata !DIExpression()), !dbg !2585
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #10, !dbg !2586
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2578, metadata !DIExpression()), !dbg !2587
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef) #10, !dbg !2588
  tail call void @llvm.dbg.declare(metadata ptr %ef, metadata !2579, metadata !DIExpression()), !dbg !2589
  call void @llvm.lifetime.start.p0(i64 1, ptr %crc_valid) #10, !dbg !2590
  tail call void @llvm.dbg.declare(metadata ptr %crc_valid, metadata !2580, metadata !DIExpression()), !dbg !2591
  call void @llvm.lifetime.start.p0(i64 2, ptr %enc_method) #10, !dbg !2592
  tail call void @llvm.dbg.declare(metadata ptr %enc_method, metadata !2581, metadata !DIExpression()), !dbg !2593
  %0 = load ptr, ptr %de.addr, align 8, !dbg !2594, !tbaa !235
  %comp_method = getelementptr inbounds %struct.zip_dirent, ptr %0, i32 0, i32 7, !dbg !2596
  %1 = load i32, ptr %comp_method, align 8, !dbg !2596, !tbaa !1109
  %cmp = icmp ne i32 %1, 99, !dbg !2597
  br i1 %cmp, label %if.then, label %if.end, !dbg !2598

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !2599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2599

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %de.addr, align 8, !dbg !2601, !tbaa !235
  %extra_fields = getelementptr inbounds %struct.zip_dirent, ptr %2, i32 0, i32 13, !dbg !2602
  %3 = load ptr, ptr %extra_fields, align 8, !dbg !2602, !tbaa !1279
  %call = call ptr @_zip_ef_get_by_id(ptr noundef %3, ptr noundef %ef_len, i16 noundef zeroext -26367, i16 noundef zeroext 0, i32 noundef 768, ptr noundef null), !dbg !2603
  store ptr %call, ptr %ef, align 8, !dbg !2604, !tbaa !235
  %4 = load ptr, ptr %ef, align 8, !dbg !2605, !tbaa !235
  %cmp1 = icmp eq ptr %4, null, !dbg !2607
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !2608

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i16, ptr %ef_len, align 2, !dbg !2609, !tbaa !1200
  %conv = zext i16 %5 to i32, !dbg !2609
  %cmp2 = icmp slt i32 %conv, 7, !dbg !2610
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2611

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %error.addr, align 8, !dbg !2612, !tbaa !235
  call void @zip_error_set(ptr noundef %6, i32 noundef 21, i32 noundef 0), !dbg !2614
  store i1 false, ptr %retval, align 1, !dbg !2615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2615

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %ef, align 8, !dbg !2616, !tbaa !235
  %8 = load i16, ptr %ef_len, align 2, !dbg !2618, !tbaa !1200
  %conv6 = zext i16 %8 to i64, !dbg !2618
  %call7 = call ptr @_zip_buffer_new(ptr noundef %7, i64 noundef %conv6), !dbg !2619
  store ptr %call7, ptr %buffer, align 8, !dbg !2620, !tbaa !235
  %cmp8 = icmp eq ptr %call7, null, !dbg !2621
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !2622

if.then10:                                        ; preds = %if.end5
  %9 = load ptr, ptr %error.addr, align 8, !dbg !2623, !tbaa !235
  call void @zip_error_set(ptr noundef %9, i32 noundef 20, i32 noundef 0), !dbg !2625
  store i1 false, ptr %retval, align 1, !dbg !2626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2626

if.end11:                                         ; preds = %if.end5
  store i8 1, ptr %crc_valid, align 1, !dbg !2627, !tbaa !527
  %10 = load ptr, ptr %buffer, align 8, !dbg !2628, !tbaa !235
  %call12 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %10), !dbg !2629
  %conv13 = zext i16 %call12 to i32, !dbg !2629
  switch i32 %conv13, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb
  ], !dbg !2630

sw.bb:                                            ; preds = %if.end11
  %11 = load ptr, ptr %de.addr, align 8, !dbg !2631, !tbaa !235
  %uncomp_size = getelementptr inbounds %struct.zip_dirent, ptr %11, i32 0, i32 11, !dbg !2634
  %12 = load i64, ptr %uncomp_size, align 8, !dbg !2634, !tbaa !979
  %cmp14 = icmp ult i64 %12, 20, !dbg !2635
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2636

if.then16:                                        ; preds = %sw.bb
  store i8 0, ptr %crc_valid, align 1, !dbg !2637, !tbaa !527
  br label %if.end17, !dbg !2639

if.end17:                                         ; preds = %if.then16, %sw.bb
  br label %sw.epilog, !dbg !2640

sw.default:                                       ; preds = %if.end11
  %13 = load ptr, ptr %error.addr, align 8, !dbg !2641, !tbaa !235
  call void @zip_error_set(ptr noundef %13, i32 noundef 24, i32 noundef 0), !dbg !2642
  %14 = load ptr, ptr %buffer, align 8, !dbg !2643, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %14), !dbg !2644
  store i1 false, ptr %retval, align 1, !dbg !2645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2645

sw.epilog:                                        ; preds = %if.end17, %if.end11
  %15 = load ptr, ptr %buffer, align 8, !dbg !2646, !tbaa !235
  %call18 = call ptr @_zip_buffer_get(ptr noundef %15, i64 noundef 2), !dbg !2648
  %call19 = call i32 @memcmp(ptr noundef %call18, ptr noundef @.str.5, i64 noundef 2) #13, !dbg !2649
  %cmp20 = icmp ne i32 %call19, 0, !dbg !2650
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !2651

if.then22:                                        ; preds = %sw.epilog
  %16 = load ptr, ptr %error.addr, align 8, !dbg !2652, !tbaa !235
  call void @zip_error_set(ptr noundef %16, i32 noundef 24, i32 noundef 0), !dbg !2654
  %17 = load ptr, ptr %buffer, align 8, !dbg !2655, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %17), !dbg !2656
  store i1 false, ptr %retval, align 1, !dbg !2657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2657

if.end23:                                         ; preds = %sw.epilog
  %18 = load ptr, ptr %buffer, align 8, !dbg !2658, !tbaa !235
  %call24 = call zeroext i8 @_zip_buffer_get_8(ptr noundef %18), !dbg !2659
  %conv25 = zext i8 %call24 to i32, !dbg !2659
  switch i32 %conv25, label %sw.default29 [
    i32 1, label %sw.bb26
    i32 2, label %sw.bb27
    i32 3, label %sw.bb28
  ], !dbg !2660

sw.bb26:                                          ; preds = %if.end23
  store i16 257, ptr %enc_method, align 2, !dbg !2661, !tbaa !1200
  br label %sw.epilog30, !dbg !2663

sw.bb27:                                          ; preds = %if.end23
  store i16 258, ptr %enc_method, align 2, !dbg !2664, !tbaa !1200
  br label %sw.epilog30, !dbg !2665

sw.bb28:                                          ; preds = %if.end23
  store i16 259, ptr %enc_method, align 2, !dbg !2666, !tbaa !1200
  br label %sw.epilog30, !dbg !2667

sw.default29:                                     ; preds = %if.end23
  %19 = load ptr, ptr %error.addr, align 8, !dbg !2668, !tbaa !235
  call void @zip_error_set(ptr noundef %19, i32 noundef 24, i32 noundef 0), !dbg !2669
  %20 = load ptr, ptr %buffer, align 8, !dbg !2670, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %20), !dbg !2671
  store i1 false, ptr %retval, align 1, !dbg !2672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2672

sw.epilog30:                                      ; preds = %sw.bb28, %sw.bb27, %sw.bb26
  %21 = load i16, ptr %ef_len, align 2, !dbg !2673, !tbaa !1200
  %conv31 = zext i16 %21 to i32, !dbg !2673
  %cmp32 = icmp ne i32 %conv31, 7, !dbg !2675
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !2676

if.then34:                                        ; preds = %sw.epilog30
  %22 = load ptr, ptr %error.addr, align 8, !dbg !2677, !tbaa !235
  call void @zip_error_set(ptr noundef %22, i32 noundef 21, i32 noundef 0), !dbg !2679
  %23 = load ptr, ptr %buffer, align 8, !dbg !2680, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %23), !dbg !2681
  store i1 false, ptr %retval, align 1, !dbg !2682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2682

if.end35:                                         ; preds = %sw.epilog30
  %24 = load i8, ptr %crc_valid, align 1, !dbg !2683, !tbaa !527, !range !613, !noundef !614
  %tobool = trunc i8 %24 to i1, !dbg !2683
  %25 = load ptr, ptr %de.addr, align 8, !dbg !2684, !tbaa !235
  %crc_valid36 = getelementptr inbounds %struct.zip_dirent, ptr %25, i32 0, i32 3, !dbg !2685
  %frombool = zext i1 %tobool to i8, !dbg !2686
  store i8 %frombool, ptr %crc_valid36, align 2, !dbg !2686, !tbaa !1523
  %26 = load i16, ptr %enc_method, align 2, !dbg !2687, !tbaa !1200
  %27 = load ptr, ptr %de.addr, align 8, !dbg !2688, !tbaa !235
  %encryption_method = getelementptr inbounds %struct.zip_dirent, ptr %27, i32 0, i32 20, !dbg !2689
  store i16 %26, ptr %encryption_method, align 2, !dbg !2690, !tbaa !910
  %28 = load ptr, ptr %buffer, align 8, !dbg !2691, !tbaa !235
  %call37 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %28), !dbg !2692
  %conv38 = zext i16 %call37 to i32, !dbg !2692
  %29 = load ptr, ptr %de.addr, align 8, !dbg !2693, !tbaa !235
  %comp_method39 = getelementptr inbounds %struct.zip_dirent, ptr %29, i32 0, i32 7, !dbg !2694
  store i32 %conv38, ptr %comp_method39, align 8, !dbg !2695, !tbaa !1109
  %30 = load ptr, ptr %buffer, align 8, !dbg !2696, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %30), !dbg !2697
  store i1 true, ptr %retval, align 1, !dbg !2698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2698

cleanup:                                          ; preds = %if.end35, %if.then34, %sw.default29, %if.then22, %sw.default, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %enc_method) #10, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 1, ptr %crc_valid) #10, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef) #10, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #10, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 2, ptr %ef_len) #10, !dbg !2699
  %31 = load i1, ptr %retval, align 1, !dbg !2699
  ret i1 %31, !dbg !2699
}

declare !dbg !2700 ptr @_zip_ef_remove_internal(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @_zip_dirent_size(ptr noundef %src, i16 noundef zeroext %flags, ptr noundef %error) #0 !dbg !2703 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %flags.addr = alloca i16, align 2
  %error.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %local = alloca i8, align 1
  %i = alloca i32, align 4
  %b = alloca [6 x i8], align 1
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2707, metadata !DIExpression()), !dbg !2718
  store i16 %flags, ptr %flags.addr, align 2, !tbaa !1200
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2708, metadata !DIExpression()), !dbg !2719
  store ptr %error, ptr %error.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2709, metadata !DIExpression()), !dbg !2720
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #10, !dbg !2721
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !2710, metadata !DIExpression()), !dbg !2722
  call void @llvm.lifetime.start.p0(i64 1, ptr %local) #10, !dbg !2723
  tail call void @llvm.dbg.declare(metadata ptr %local, metadata !2711, metadata !DIExpression()), !dbg !2724
  %0 = load i16, ptr %flags.addr, align 2, !dbg !2725, !tbaa !1200
  %conv = zext i16 %0 to i32, !dbg !2725
  %and = and i32 %conv, 256, !dbg !2726
  %cmp = icmp ne i32 %and, 0, !dbg !2727
  %frombool = zext i1 %cmp to i8, !dbg !2724
  store i8 %frombool, ptr %local, align 1, !dbg !2724, !tbaa !527
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2728
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2712, metadata !DIExpression()), !dbg !2729
  call void @llvm.lifetime.start.p0(i64 6, ptr %b) #10, !dbg !2730
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !2713, metadata !DIExpression()), !dbg !2731
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #10, !dbg !2732
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2717, metadata !DIExpression()), !dbg !2733
  %1 = load i8, ptr %local, align 1, !dbg !2734, !tbaa !527, !range !613, !noundef !614
  %tobool = trunc i8 %1 to i1, !dbg !2734
  %2 = zext i1 %tobool to i64, !dbg !2734
  %cond = select i1 %tobool, i32 30, i32 46, !dbg !2734
  store i32 %cond, ptr %size, align 4, !dbg !2735, !tbaa !558
  %3 = load ptr, ptr %src.addr, align 8, !dbg !2736, !tbaa !235
  %4 = load i8, ptr %local, align 1, !dbg !2738, !tbaa !527, !range !613, !noundef !614
  %tobool3 = trunc i8 %4 to i1, !dbg !2738
  %5 = zext i1 %tobool3 to i64, !dbg !2738
  %cond5 = select i1 %tobool3, i32 26, i32 28, !dbg !2738
  %conv6 = sext i32 %cond5 to i64, !dbg !2738
  %call = call i32 @zip_source_seek(ptr noundef %3, i64 noundef %conv6, i32 noundef 1), !dbg !2739
  %cmp7 = icmp slt i32 %call, 0, !dbg !2740
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2741

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %error.addr, align 8, !dbg !2742, !tbaa !235
  %7 = load ptr, ptr %src.addr, align 8, !dbg !2744, !tbaa !235
  call void @_zip_error_set_from_source(ptr noundef %6, ptr noundef %7), !dbg !2745
  store i32 -1, ptr %retval, align 4, !dbg !2746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2746

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %src.addr, align 8, !dbg !2747, !tbaa !235
  %9 = load i8, ptr %local, align 1, !dbg !2749, !tbaa !527, !range !613, !noundef !614
  %tobool9 = trunc i8 %9 to i1, !dbg !2749
  %10 = zext i1 %tobool9 to i64, !dbg !2749
  %cond11 = select i1 %tobool9, i32 4, i32 6, !dbg !2749
  %conv12 = sext i32 %cond11 to i64, !dbg !2749
  %arraydecay = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 0, !dbg !2750
  %11 = load ptr, ptr %error.addr, align 8, !dbg !2751, !tbaa !235
  %call13 = call ptr @_zip_buffer_new_from_source(ptr noundef %8, i64 noundef %conv12, ptr noundef %arraydecay, ptr noundef %11), !dbg !2752
  store ptr %call13, ptr %buffer, align 8, !dbg !2753, !tbaa !235
  %cmp14 = icmp eq ptr %call13, null, !dbg !2754
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2755

if.then16:                                        ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !2756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2756

if.end17:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !2758, !tbaa !558
  br label %for.cond, !dbg !2760

for.cond:                                         ; preds = %for.inc, %if.end17
  %12 = load i32, ptr %i, align 4, !dbg !2761, !tbaa !558
  %13 = load i8, ptr %local, align 1, !dbg !2763, !tbaa !527, !range !613, !noundef !614
  %tobool18 = trunc i8 %13 to i1, !dbg !2763
  %14 = zext i1 %tobool18 to i64, !dbg !2763
  %cond20 = select i1 %tobool18, i32 2, i32 3, !dbg !2763
  %cmp21 = icmp slt i32 %12, %cond20, !dbg !2764
  br i1 %cmp21, label %for.body, label %for.end, !dbg !2765

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %buffer, align 8, !dbg !2766, !tbaa !235
  %call23 = call zeroext i16 @_zip_buffer_get_16(ptr noundef %15), !dbg !2768
  %conv24 = zext i16 %call23 to i32, !dbg !2768
  %16 = load i32, ptr %size, align 4, !dbg !2769, !tbaa !558
  %add = add nsw i32 %16, %conv24, !dbg !2769
  store i32 %add, ptr %size, align 4, !dbg !2769, !tbaa !558
  br label %for.inc, !dbg !2770

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !dbg !2771, !tbaa !558
  %inc = add nsw i32 %17, 1, !dbg !2771
  store i32 %inc, ptr %i, align 4, !dbg !2771, !tbaa !558
  br label %for.cond, !dbg !2772, !llvm.loop !2773

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %buffer, align 8, !dbg !2775, !tbaa !235
  %call25 = call zeroext i1 @_zip_buffer_eof(ptr noundef %18), !dbg !2777
  br i1 %call25, label %if.end27, label %if.then26, !dbg !2778

if.then26:                                        ; preds = %for.end
  %19 = load ptr, ptr %error.addr, align 8, !dbg !2779, !tbaa !235
  call void @zip_error_set(ptr noundef %19, i32 noundef 20, i32 noundef 0), !dbg !2781
  %20 = load ptr, ptr %buffer, align 8, !dbg !2782, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %20), !dbg !2783
  store i32 -1, ptr %retval, align 4, !dbg !2784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2784

if.end27:                                         ; preds = %for.end
  %21 = load ptr, ptr %buffer, align 8, !dbg !2785, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %21), !dbg !2786
  %22 = load i32, ptr %size, align 4, !dbg !2787, !tbaa !558
  store i32 %22, ptr %retval, align 4, !dbg !2788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2788

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #10, !dbg !2789
  call void @llvm.lifetime.end.p0(i64 6, ptr %b) #10, !dbg !2789
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2789
  call void @llvm.lifetime.end.p0(i64 1, ptr %local) #10, !dbg !2789
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #10, !dbg !2789
  %23 = load i32, ptr %retval, align 4, !dbg !2789
  ret i32 %23, !dbg !2789
}

declare !dbg !2790 i32 @zip_source_seek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @_zip_ef_utf8(i16 noundef zeroext %id, ptr noundef %str, ptr noundef %error) #0 !dbg !2793 {
entry:
  %retval = alloca ptr, align 8
  %id.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %raw = alloca ptr, align 8
  %len = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %ef = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %id, ptr %id.addr, align 2, !tbaa !1200
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2797, metadata !DIExpression()), !dbg !2804
  store ptr %str, ptr %str.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2798, metadata !DIExpression()), !dbg !2805
  store ptr %error, ptr %error.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2799, metadata !DIExpression()), !dbg !2806
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw) #10, !dbg !2807
  tail call void @llvm.dbg.declare(metadata ptr %raw, metadata !2800, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !2809
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2801, metadata !DIExpression()), !dbg !2810
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #10, !dbg !2811
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2802, metadata !DIExpression()), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 8, ptr %ef) #10, !dbg !2813
  tail call void @llvm.dbg.declare(metadata ptr %ef, metadata !2803, metadata !DIExpression()), !dbg !2814
  %0 = load ptr, ptr %str.addr, align 8, !dbg !2815, !tbaa !235
  %call = call ptr @_zip_string_get(ptr noundef %0, ptr noundef %len, i32 noundef 64, ptr noundef null), !dbg !2817
  store ptr %call, ptr %raw, align 8, !dbg !2818, !tbaa !235
  %cmp = icmp eq ptr %call, null, !dbg !2819
  br i1 %cmp, label %if.then, label %if.end, !dbg !2820

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2821

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %len, align 4, !dbg !2823, !tbaa !558
  %add = add i32 %1, 5, !dbg !2825
  %cmp1 = icmp ugt i32 %add, 65535, !dbg !2826
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2827

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %error.addr, align 8, !dbg !2828, !tbaa !235
  call void @zip_error_set(ptr noundef %2, i32 noundef 18, i32 noundef 0), !dbg !2830
  store ptr null, ptr %retval, align 8, !dbg !2831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2831

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %len, align 4, !dbg !2832, !tbaa !558
  %add4 = add i32 %3, 5, !dbg !2834
  %conv = zext i32 %add4 to i64, !dbg !2832
  %call5 = call ptr @_zip_buffer_new(ptr noundef null, i64 noundef %conv), !dbg !2835
  store ptr %call5, ptr %buffer, align 8, !dbg !2836, !tbaa !235
  %cmp6 = icmp eq ptr %call5, null, !dbg !2837
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2838

if.then8:                                         ; preds = %if.end3
  %4 = load ptr, ptr %error.addr, align 8, !dbg !2839, !tbaa !235
  call void @zip_error_set(ptr noundef %4, i32 noundef 14, i32 noundef 0), !dbg !2841
  store ptr null, ptr %retval, align 8, !dbg !2842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2842

if.end9:                                          ; preds = %if.end3
  %5 = load ptr, ptr %buffer, align 8, !dbg !2843, !tbaa !235
  %call10 = call i32 @_zip_buffer_put_8(ptr noundef %5, i8 noundef zeroext 1), !dbg !2844
  %6 = load ptr, ptr %buffer, align 8, !dbg !2845, !tbaa !235
  %7 = load ptr, ptr %str.addr, align 8, !dbg !2846, !tbaa !235
  %call11 = call i32 @_zip_string_crc32(ptr noundef %7), !dbg !2847
  %call12 = call i32 @_zip_buffer_put_32(ptr noundef %6, i32 noundef %call11), !dbg !2848
  %8 = load ptr, ptr %buffer, align 8, !dbg !2849, !tbaa !235
  %9 = load ptr, ptr %raw, align 8, !dbg !2850, !tbaa !235
  %10 = load i32, ptr %len, align 4, !dbg !2851, !tbaa !558
  %conv13 = zext i32 %10 to i64, !dbg !2851
  %call14 = call i32 @_zip_buffer_put(ptr noundef %8, ptr noundef %9, i64 noundef %conv13), !dbg !2852
  %11 = load ptr, ptr %buffer, align 8, !dbg !2853, !tbaa !235
  %call15 = call zeroext i1 @_zip_buffer_ok(ptr noundef %11), !dbg !2855
  br i1 %call15, label %if.end17, label %if.then16, !dbg !2856

if.then16:                                        ; preds = %if.end9
  %12 = load ptr, ptr %error.addr, align 8, !dbg !2857, !tbaa !235
  call void @zip_error_set(ptr noundef %12, i32 noundef 20, i32 noundef 0), !dbg !2859
  %13 = load ptr, ptr %buffer, align 8, !dbg !2860, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %13), !dbg !2861
  store ptr null, ptr %retval, align 8, !dbg !2862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2862

if.end17:                                         ; preds = %if.end9
  %14 = load i16, ptr %id.addr, align 2, !dbg !2863, !tbaa !1200
  %15 = load ptr, ptr %buffer, align 8, !dbg !2864, !tbaa !235
  %call18 = call i64 @_zip_buffer_offset(ptr noundef %15), !dbg !2865
  %conv19 = trunc i64 %call18 to i16, !dbg !2866
  %16 = load ptr, ptr %buffer, align 8, !dbg !2867, !tbaa !235
  %call20 = call ptr @_zip_buffer_data(ptr noundef %16), !dbg !2868
  %call21 = call ptr @_zip_ef_new(i16 noundef zeroext %14, i16 noundef zeroext %conv19, ptr noundef %call20, i32 noundef 768), !dbg !2869
  store ptr %call21, ptr %ef, align 8, !dbg !2870, !tbaa !235
  %17 = load ptr, ptr %buffer, align 8, !dbg !2871, !tbaa !235
  call void @_zip_buffer_free(ptr noundef %17), !dbg !2872
  %18 = load ptr, ptr %ef, align 8, !dbg !2873, !tbaa !235
  store ptr %18, ptr %retval, align 8, !dbg !2874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2874

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ef) #10, !dbg !2875
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #10, !dbg !2875
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !2875
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw) #10, !dbg !2875
  %19 = load ptr, ptr %retval, align 8, !dbg !2875
  ret ptr %19, !dbg !2875
}

declare !dbg !2876 ptr @_zip_ef_new(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) #2

declare !dbg !2879 i32 @_zip_buffer_put_8(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define hidden void @_zip_u2d_time(i64 noundef %intime, ptr noundef %dtime, ptr noundef %ddate) #0 !dbg !2882 {
entry:
  %intime.addr = alloca i64, align 8
  %dtime.addr = alloca ptr, align 8
  %ddate.addr = alloca ptr, align 8
  %tm = alloca ptr, align 8
  store i64 %intime, ptr %intime.addr, align 8, !tbaa !248
  tail call void @llvm.dbg.declare(metadata ptr %intime.addr, metadata !2886, metadata !DIExpression()), !dbg !2891
  store ptr %dtime, ptr %dtime.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %dtime.addr, metadata !2887, metadata !DIExpression()), !dbg !2892
  store ptr %ddate, ptr %ddate.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %ddate.addr, metadata !2888, metadata !DIExpression()), !dbg !2893
  call void @llvm.lifetime.start.p0(i64 8, ptr %tm) #10, !dbg !2894
  tail call void @llvm.dbg.declare(metadata ptr %tm, metadata !2889, metadata !DIExpression()), !dbg !2895
  %call = call ptr @localtime(ptr noundef %intime.addr) #10, !dbg !2896
  store ptr %call, ptr %tm, align 8, !dbg !2897, !tbaa !235
  %0 = load ptr, ptr %tm, align 8, !dbg !2898, !tbaa !235
  %tm_year = getelementptr inbounds %struct.tm, ptr %0, i32 0, i32 5, !dbg !2900
  %1 = load i32, ptr %tm_year, align 4, !dbg !2900, !tbaa !2415
  %cmp = icmp slt i32 %1, 80, !dbg !2901
  br i1 %cmp, label %if.then, label %if.end, !dbg !2902

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tm, align 8, !dbg !2903, !tbaa !235
  %tm_year1 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 5, !dbg !2905
  store i32 80, ptr %tm_year1, align 4, !dbg !2906, !tbaa !2415
  br label %if.end, !dbg !2907

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %tm, align 8, !dbg !2908, !tbaa !235
  %tm_year2 = getelementptr inbounds %struct.tm, ptr %3, i32 0, i32 5, !dbg !2909
  %4 = load i32, ptr %tm_year2, align 4, !dbg !2909, !tbaa !2415
  %add = add nsw i32 %4, 1900, !dbg !2910
  %sub = sub nsw i32 %add, 1980, !dbg !2911
  %shl = shl i32 %sub, 9, !dbg !2912
  %5 = load ptr, ptr %tm, align 8, !dbg !2913, !tbaa !235
  %tm_mon = getelementptr inbounds %struct.tm, ptr %5, i32 0, i32 4, !dbg !2914
  %6 = load i32, ptr %tm_mon, align 8, !dbg !2914, !tbaa !2422
  %add3 = add nsw i32 %6, 1, !dbg !2915
  %shl4 = shl i32 %add3, 5, !dbg !2916
  %add5 = add nsw i32 %shl, %shl4, !dbg !2917
  %7 = load ptr, ptr %tm, align 8, !dbg !2918, !tbaa !235
  %tm_mday = getelementptr inbounds %struct.tm, ptr %7, i32 0, i32 3, !dbg !2919
  %8 = load i32, ptr %tm_mday, align 4, !dbg !2919, !tbaa !2427
  %add6 = add nsw i32 %add5, %8, !dbg !2920
  %conv = trunc i32 %add6 to i16, !dbg !2921
  %9 = load ptr, ptr %ddate.addr, align 8, !dbg !2922, !tbaa !235
  store i16 %conv, ptr %9, align 2, !dbg !2923, !tbaa !1200
  %10 = load ptr, ptr %tm, align 8, !dbg !2924, !tbaa !235
  %tm_hour = getelementptr inbounds %struct.tm, ptr %10, i32 0, i32 2, !dbg !2925
  %11 = load i32, ptr %tm_hour, align 8, !dbg !2925, !tbaa !2433
  %shl7 = shl i32 %11, 11, !dbg !2926
  %12 = load ptr, ptr %tm, align 8, !dbg !2927, !tbaa !235
  %tm_min = getelementptr inbounds %struct.tm, ptr %12, i32 0, i32 1, !dbg !2928
  %13 = load i32, ptr %tm_min, align 4, !dbg !2928, !tbaa !2439
  %shl8 = shl i32 %13, 5, !dbg !2929
  %add9 = add nsw i32 %shl7, %shl8, !dbg !2930
  %14 = load ptr, ptr %tm, align 8, !dbg !2931, !tbaa !235
  %tm_sec = getelementptr inbounds %struct.tm, ptr %14, i32 0, i32 0, !dbg !2932
  %15 = load i32, ptr %tm_sec, align 8, !dbg !2932, !tbaa !2445
  %shr = ashr i32 %15, 1, !dbg !2933
  %add10 = add nsw i32 %add9, %shr, !dbg !2934
  %conv11 = trunc i32 %add10 to i16, !dbg !2935
  %16 = load ptr, ptr %dtime.addr, align 8, !dbg !2936, !tbaa !235
  store i16 %conv11, ptr %16, align 2, !dbg !2937, !tbaa !1200
  call void @llvm.lifetime.end.p0(i64 8, ptr %tm) #10, !dbg !2938
  ret void, !dbg !2938
}

declare !dbg !2939 zeroext i16 @_zip_string_length(ptr noundef) #2

declare !dbg !2944 zeroext i16 @_zip_ef_size(ptr noundef, i32 noundef) #2

declare !dbg !2947 i32 @_zip_string_write(ptr noundef, ptr noundef) #2

declare !dbg !2950 i32 @_zip_ef_write(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden ptr @_zip_get_dirent(ptr noundef %za, i64 noundef %idx, i32 noundef %flags, ptr noundef %error) #0 !dbg !2953 {
entry:
  %retval = alloca ptr, align 8
  %za.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %error.addr = alloca ptr, align 8
  store ptr %za, ptr %za.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %za.addr, metadata !2957, metadata !DIExpression()), !dbg !2961
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !248
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !2958, metadata !DIExpression()), !dbg !2962
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !558
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2959, metadata !DIExpression()), !dbg !2963
  store ptr %error, ptr %error.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2960, metadata !DIExpression()), !dbg !2964
  %0 = load ptr, ptr %error.addr, align 8, !dbg !2965, !tbaa !235
  %cmp = icmp eq ptr %0, null, !dbg !2967
  br i1 %cmp, label %if.then, label %if.end, !dbg !2968

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %za.addr, align 8, !dbg !2969, !tbaa !235
  %error1 = getelementptr inbounds %struct.zip, ptr %1, i32 0, i32 2, !dbg !2970
  store ptr %error1, ptr %error.addr, align 8, !dbg !2971, !tbaa !235
  br label %if.end, !dbg !2972

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %idx.addr, align 8, !dbg !2973, !tbaa !248
  %3 = load ptr, ptr %za.addr, align 8, !dbg !2975, !tbaa !235
  %nentry = getelementptr inbounds %struct.zip, ptr %3, i32 0, i32 9, !dbg !2976
  %4 = load i64, ptr %nentry, align 8, !dbg !2976, !tbaa !2977
  %cmp2 = icmp uge i64 %2, %4, !dbg !2978
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2979

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %error.addr, align 8, !dbg !2980, !tbaa !235
  call void @zip_error_set(ptr noundef %5, i32 noundef 18, i32 noundef 0), !dbg !2982
  store ptr null, ptr %retval, align 8, !dbg !2983
  br label %return, !dbg !2983

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %flags.addr, align 4, !dbg !2984, !tbaa !558
  %and = and i32 %6, 8, !dbg !2986
  %tobool = icmp ne i32 %and, 0, !dbg !2986
  br i1 %tobool, label %if.then7, label %lor.lhs.false, !dbg !2987

lor.lhs.false:                                    ; preds = %if.end4
  %7 = load ptr, ptr %za.addr, align 8, !dbg !2988, !tbaa !235
  %entry5 = getelementptr inbounds %struct.zip, ptr %7, i32 0, i32 11, !dbg !2989
  %8 = load ptr, ptr %entry5, align 8, !dbg !2989, !tbaa !538
  %9 = load i64, ptr %idx.addr, align 8, !dbg !2990, !tbaa !248
  %arrayidx = getelementptr inbounds %struct.zip_entry, ptr %8, i64 %9, !dbg !2988
  %changes = getelementptr inbounds %struct.zip_entry, ptr %arrayidx, i32 0, i32 1, !dbg !2991
  %10 = load ptr, ptr %changes, align 8, !dbg !2991, !tbaa !549
  %cmp6 = icmp eq ptr %10, null, !dbg !2992
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !2993

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %11 = load ptr, ptr %za.addr, align 8, !dbg !2994, !tbaa !235
  %entry8 = getelementptr inbounds %struct.zip, ptr %11, i32 0, i32 11, !dbg !2997
  %12 = load ptr, ptr %entry8, align 8, !dbg !2997, !tbaa !538
  %13 = load i64, ptr %idx.addr, align 8, !dbg !2998, !tbaa !248
  %arrayidx9 = getelementptr inbounds %struct.zip_entry, ptr %12, i64 %13, !dbg !2994
  %orig = getelementptr inbounds %struct.zip_entry, ptr %arrayidx9, i32 0, i32 0, !dbg !2999
  %14 = load ptr, ptr %orig, align 8, !dbg !2999, !tbaa !555
  %cmp10 = icmp eq ptr %14, null, !dbg !3000
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3001

if.then11:                                        ; preds = %if.then7
  %15 = load ptr, ptr %error.addr, align 8, !dbg !3002, !tbaa !235
  call void @zip_error_set(ptr noundef %15, i32 noundef 18, i32 noundef 0), !dbg !3004
  store ptr null, ptr %retval, align 8, !dbg !3005
  br label %return, !dbg !3005

if.end12:                                         ; preds = %if.then7
  %16 = load ptr, ptr %za.addr, align 8, !dbg !3006, !tbaa !235
  %entry13 = getelementptr inbounds %struct.zip, ptr %16, i32 0, i32 11, !dbg !3008
  %17 = load ptr, ptr %entry13, align 8, !dbg !3008, !tbaa !538
  %18 = load i64, ptr %idx.addr, align 8, !dbg !3009, !tbaa !248
  %arrayidx14 = getelementptr inbounds %struct.zip_entry, ptr %17, i64 %18, !dbg !3006
  %deleted = getelementptr inbounds %struct.zip_entry, ptr %arrayidx14, i32 0, i32 3, !dbg !3010
  %19 = load i8, ptr %deleted, align 8, !dbg !3010, !tbaa !3011, !range !613, !noundef !614
  %tobool15 = trunc i8 %19 to i1, !dbg !3010
  br i1 %tobool15, label %land.lhs.true, label %if.end19, !dbg !3012

land.lhs.true:                                    ; preds = %if.end12
  %20 = load i32, ptr %flags.addr, align 4, !dbg !3013, !tbaa !558
  %and16 = and i32 %20, 8, !dbg !3014
  %cmp17 = icmp eq i32 %and16, 0, !dbg !3015
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3016

if.then18:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %error.addr, align 8, !dbg !3017, !tbaa !235
  call void @zip_error_set(ptr noundef %21, i32 noundef 23, i32 noundef 0), !dbg !3019
  store ptr null, ptr %retval, align 8, !dbg !3020
  br label %return, !dbg !3020

if.end19:                                         ; preds = %land.lhs.true, %if.end12
  %22 = load ptr, ptr %za.addr, align 8, !dbg !3021, !tbaa !235
  %entry20 = getelementptr inbounds %struct.zip, ptr %22, i32 0, i32 11, !dbg !3022
  %23 = load ptr, ptr %entry20, align 8, !dbg !3022, !tbaa !538
  %24 = load i64, ptr %idx.addr, align 8, !dbg !3023, !tbaa !248
  %arrayidx21 = getelementptr inbounds %struct.zip_entry, ptr %23, i64 %24, !dbg !3021
  %orig22 = getelementptr inbounds %struct.zip_entry, ptr %arrayidx21, i32 0, i32 0, !dbg !3024
  %25 = load ptr, ptr %orig22, align 8, !dbg !3024, !tbaa !555
  store ptr %25, ptr %retval, align 8, !dbg !3025
  br label %return, !dbg !3025

if.else:                                          ; preds = %lor.lhs.false
  %26 = load ptr, ptr %za.addr, align 8, !dbg !3026, !tbaa !235
  %entry23 = getelementptr inbounds %struct.zip, ptr %26, i32 0, i32 11, !dbg !3027
  %27 = load ptr, ptr %entry23, align 8, !dbg !3027, !tbaa !538
  %28 = load i64, ptr %idx.addr, align 8, !dbg !3028, !tbaa !248
  %arrayidx24 = getelementptr inbounds %struct.zip_entry, ptr %27, i64 %28, !dbg !3026
  %changes25 = getelementptr inbounds %struct.zip_entry, ptr %arrayidx24, i32 0, i32 1, !dbg !3029
  %29 = load ptr, ptr %changes25, align 8, !dbg !3029, !tbaa !549
  store ptr %29, ptr %retval, align 8, !dbg !3030
  br label %return, !dbg !3030

return:                                           ; preds = %if.else, %if.end19, %if.then18, %if.then11, %if.then3
  %30 = load ptr, ptr %retval, align 8, !dbg !3031
  ret ptr %30, !dbg !3031
}

; Function Attrs: nounwind
declare !dbg !3032 ptr @localtime(ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @_zip_dirent_set_version_needed(ptr noundef %de, i1 noundef zeroext %force_zip64) #0 !dbg !3038 {
entry:
  %de.addr = alloca ptr, align 8
  %force_zip64.addr = alloca i8, align 1
  %length = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %de, ptr %de.addr, align 8, !tbaa !235
  tail call void @llvm.dbg.declare(metadata ptr %de.addr, metadata !3042, metadata !DIExpression()), !dbg !3045
  %frombool = zext i1 %force_zip64 to i8
  store i8 %frombool, ptr %force_zip64.addr, align 1, !tbaa !527
  tail call void @llvm.dbg.declare(metadata ptr %force_zip64.addr, metadata !3043, metadata !DIExpression()), !dbg !3046
  call void @llvm.lifetime.start.p0(i64 2, ptr %length) #10, !dbg !3047
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !3044, metadata !DIExpression()), !dbg !3048
  %0 = load ptr, ptr %de.addr, align 8, !dbg !3049, !tbaa !235
  %comp_method = getelementptr inbounds %struct.zip_dirent, ptr %0, i32 0, i32 7, !dbg !3051
  %1 = load i32, ptr %comp_method, align 8, !dbg !3051, !tbaa !1109
  %cmp = icmp eq i32 %1, 14, !dbg !3052
  br i1 %cmp, label %if.then, label %if.end, !dbg !3053

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %de.addr, align 8, !dbg !3054, !tbaa !235
  %version_needed = getelementptr inbounds %struct.zip_dirent, ptr %2, i32 0, i32 5, !dbg !3056
  store i16 63, ptr %version_needed, align 2, !dbg !3057, !tbaa !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3058

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %de.addr, align 8, !dbg !3059, !tbaa !235
  %comp_method1 = getelementptr inbounds %struct.zip_dirent, ptr %3, i32 0, i32 7, !dbg !3061
  %4 = load i32, ptr %comp_method1, align 8, !dbg !3061, !tbaa !1109
  %cmp2 = icmp eq i32 %4, 12, !dbg !3062
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !3063

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %de.addr, align 8, !dbg !3064, !tbaa !235
  %version_needed4 = getelementptr inbounds %struct.zip_dirent, ptr %5, i32 0, i32 5, !dbg !3066
  store i16 46, ptr %version_needed4, align 2, !dbg !3067, !tbaa !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3068

if.end5:                                          ; preds = %if.end
  %6 = load i8, ptr %force_zip64.addr, align 1, !dbg !3069, !tbaa !527, !range !613, !noundef !614
  %tobool = trunc i8 %6 to i1, !dbg !3069
  br i1 %tobool, label %if.then6, label %lor.lhs.false, !dbg !3071

lor.lhs.false:                                    ; preds = %if.end5
  %7 = load ptr, ptr %de.addr, align 8, !dbg !3072, !tbaa !235
  %call = call zeroext i1 @_zip_dirent_needs_zip64(ptr noundef %7, i32 noundef 0), !dbg !3073
  br i1 %call, label %if.then6, label %if.end8, !dbg !3074

if.then6:                                         ; preds = %lor.lhs.false, %if.end5
  %8 = load ptr, ptr %de.addr, align 8, !dbg !3075, !tbaa !235
  %version_needed7 = getelementptr inbounds %struct.zip_dirent, ptr %8, i32 0, i32 5, !dbg !3077
  store i16 45, ptr %version_needed7, align 2, !dbg !3078, !tbaa !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3079

if.end8:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %de.addr, align 8, !dbg !3080, !tbaa !235
  %comp_method9 = getelementptr inbounds %struct.zip_dirent, ptr %9, i32 0, i32 7, !dbg !3082
  %10 = load i32, ptr %comp_method9, align 8, !dbg !3082, !tbaa !1109
  %cmp10 = icmp eq i32 %10, 8, !dbg !3083
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11, !dbg !3084

lor.lhs.false11:                                  ; preds = %if.end8
  %11 = load ptr, ptr %de.addr, align 8, !dbg !3085, !tbaa !235
  %encryption_method = getelementptr inbounds %struct.zip_dirent, ptr %11, i32 0, i32 20, !dbg !3086
  %12 = load i16, ptr %encryption_method, align 2, !dbg !3086, !tbaa !910
  %conv = zext i16 %12 to i32, !dbg !3085
  %cmp12 = icmp eq i32 %conv, 1, !dbg !3087
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !3088

if.then14:                                        ; preds = %lor.lhs.false11, %if.end8
  %13 = load ptr, ptr %de.addr, align 8, !dbg !3089, !tbaa !235
  %version_needed15 = getelementptr inbounds %struct.zip_dirent, ptr %13, i32 0, i32 5, !dbg !3091
  store i16 20, ptr %version_needed15, align 2, !dbg !3092, !tbaa !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3093

if.end16:                                         ; preds = %lor.lhs.false11
  %14 = load ptr, ptr %de.addr, align 8, !dbg !3094, !tbaa !235
  %filename = getelementptr inbounds %struct.zip_dirent, ptr %14, i32 0, i32 12, !dbg !3096
  %15 = load ptr, ptr %filename, align 8, !dbg !3096, !tbaa !823
  %call17 = call zeroext i16 @_zip_string_length(ptr noundef %15), !dbg !3097
  store i16 %call17, ptr %length, align 2, !dbg !3098, !tbaa !1200
  %conv18 = zext i16 %call17 to i32, !dbg !3099
  %cmp19 = icmp sgt i32 %conv18, 0, !dbg !3100
  br i1 %cmp19, label %if.then21, label %if.end30, !dbg !3101

if.then21:                                        ; preds = %if.end16
  %16 = load ptr, ptr %de.addr, align 8, !dbg !3102, !tbaa !235
  %filename22 = getelementptr inbounds %struct.zip_dirent, ptr %16, i32 0, i32 12, !dbg !3105
  %17 = load ptr, ptr %filename22, align 8, !dbg !3105, !tbaa !823
  %raw = getelementptr inbounds %struct.zip_string, ptr %17, i32 0, i32 0, !dbg !3106
  %18 = load ptr, ptr %raw, align 8, !dbg !3106, !tbaa !734
  %19 = load i16, ptr %length, align 2, !dbg !3107, !tbaa !1200
  %conv23 = zext i16 %19 to i32, !dbg !3107
  %sub = sub nsw i32 %conv23, 1, !dbg !3108
  %idxprom = sext i32 %sub to i64, !dbg !3102
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %idxprom, !dbg !3102
  %20 = load i8, ptr %arrayidx, align 1, !dbg !3102, !tbaa !827
  %conv24 = zext i8 %20 to i32, !dbg !3102
  %cmp25 = icmp eq i32 %conv24, 47, !dbg !3109
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !3110

if.then27:                                        ; preds = %if.then21
  %21 = load ptr, ptr %de.addr, align 8, !dbg !3111, !tbaa !235
  %version_needed28 = getelementptr inbounds %struct.zip_dirent, ptr %21, i32 0, i32 5, !dbg !3113
  store i16 20, ptr %version_needed28, align 2, !dbg !3114, !tbaa !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3115

if.end29:                                         ; preds = %if.then21
  br label %if.end30, !dbg !3116

if.end30:                                         ; preds = %if.end29, %if.end16
  %22 = load ptr, ptr %de.addr, align 8, !dbg !3117, !tbaa !235
  %version_needed31 = getelementptr inbounds %struct.zip_dirent, ptr %22, i32 0, i32 5, !dbg !3118
  store i16 10, ptr %version_needed31, align 2, !dbg !3119, !tbaa !1174
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3120
  br label %cleanup, !dbg !3120

cleanup:                                          ; preds = %if.end30, %if.then27, %if.then14, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %length) #10, !dbg !3120
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3120

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !3121 zeroext i8 @_zip_buffer_get_8(ptr noundef) #2

declare !dbg !3124 i32 @_zip_string_crc32(ptr noundef) #2

declare !dbg !3127 ptr @_zip_string_new(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare !dbg !3130 i64 @mktime(ptr noundef) #3

declare !dbg !3133 ptr @_zip_string_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!20}
!llvm.module.flags = !{!223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "zip_dirent.c", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "64e1376104e381e177b8c14334bceb98")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !3, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !3, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !2, line: 862, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 3)
!20 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !58, globals: !222, splitDebugInlining: false, nameTableKind: None)
!21 = !{!22, !32, !52}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_encoding_type", file: !23, line: 188, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "./zipint.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "9cf4a3b80decb4346dbb92f349ffcae6")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "ZIP_ENCODING_UNKNOWN", value: 0)
!27 = !DIEnumerator(name: "ZIP_ENCODING_ASCII", value: 1)
!28 = !DIEnumerator(name: "ZIP_ENCODING_UTF8_KNOWN", value: 2)
!29 = !DIEnumerator(name: "ZIP_ENCODING_UTF8_GUESSED", value: 3)
!30 = !DIEnumerator(name: "ZIP_ENCODING_CP437", value: 4)
!31 = !DIEnumerator(name: "ZIP_ENCODING_ERROR", value: 5)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_source_cmd", file: !33, line: 214, baseType: !24, size: 32, elements: !34)
!33 = !DIFile(filename: "./zip.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "6758aaa3e0d08949c1a3d4b0a3aed88b")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !DIEnumerator(name: "ZIP_SOURCE_OPEN", value: 0)
!36 = !DIEnumerator(name: "ZIP_SOURCE_READ", value: 1)
!37 = !DIEnumerator(name: "ZIP_SOURCE_CLOSE", value: 2)
!38 = !DIEnumerator(name: "ZIP_SOURCE_STAT", value: 3)
!39 = !DIEnumerator(name: "ZIP_SOURCE_ERROR", value: 4)
!40 = !DIEnumerator(name: "ZIP_SOURCE_FREE", value: 5)
!41 = !DIEnumerator(name: "ZIP_SOURCE_SEEK", value: 6)
!42 = !DIEnumerator(name: "ZIP_SOURCE_TELL", value: 7)
!43 = !DIEnumerator(name: "ZIP_SOURCE_BEGIN_WRITE", value: 8)
!44 = !DIEnumerator(name: "ZIP_SOURCE_COMMIT_WRITE", value: 9)
!45 = !DIEnumerator(name: "ZIP_SOURCE_ROLLBACK_WRITE", value: 10)
!46 = !DIEnumerator(name: "ZIP_SOURCE_WRITE", value: 11)
!47 = !DIEnumerator(name: "ZIP_SOURCE_SEEK_WRITE", value: 12)
!48 = !DIEnumerator(name: "ZIP_SOURCE_TELL_WRITE", value: 13)
!49 = !DIEnumerator(name: "ZIP_SOURCE_SUPPORTS", value: 14)
!50 = !DIEnumerator(name: "ZIP_SOURCE_REMOVE", value: 15)
!51 = !DIEnumerator(name: "ZIP_SOURCE_GET_COMPRESSION_FLAGS", value: 16)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_source_write_state", file: !23, line: 310, baseType: !24, size: 32, elements: !53)
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_CLOSED", value: 0)
!55 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_OPEN", value: 1)
!56 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_FAILED", value: 2)
!57 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_REMOVED", value: 3)
!58 = !{!59, !162, !64, !220, !104, !85, !74, !159, !69, !115, !116}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_cdir_t", file: !23, line: 202, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_cdir", file: !23, line: 291, size: 448, elements: !62)
!62 = !{!63, !214, !215, !216, !217, !218, !219}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !61, file: !23, line: 292, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_entry_t", file: !23, line: 204, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_entry", file: !23, line: 341, size: 256, elements: !67)
!67 = !{!68, !144, !145, !213}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !66, file: !23, line: 342, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_dirent_t", file: !23, line: 203, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_dirent", file: !23, line: 261, size: 960, elements: !72)
!72 = !{!73, !80, !82, !83, !84, !89, !90, !91, !97, !102, !103, !108, !109, !124, !135, !136, !137, !138, !139, !140, !141, !142}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !71, file: !23, line: 262, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint32_t", file: !75, line: 36, baseType: !76)
!75 = !DIFile(filename: "./zipconf.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "7cb5f99232d7b54e05c9f9d3c2375652")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 26, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !79, line: 42, baseType: !24)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "local_extra_fields_read", scope: !71, file: !23, line: 263, baseType: !81, size: 8, offset: 32)
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !71, file: !23, line: 264, baseType: !81, size: 8, offset: 40)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "crc_valid", scope: !71, file: !23, line: 266, baseType: !81, size: 8, offset: 48)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "version_madeby", scope: !71, file: !23, line: 268, baseType: !85, size: 16, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint16_t", file: !75, line: 29, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !77, line: 25, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !79, line: 40, baseType: !88)
!88 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "version_needed", scope: !71, file: !23, line: 269, baseType: !85, size: 16, offset: 80)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "bitflags", scope: !71, file: !23, line: 270, baseType: !85, size: 16, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "comp_method", scope: !71, file: !23, line: 271, baseType: !92, size: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int32_t", file: !75, line: 32, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !94, line: 26, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !79, line: 41, baseType: !96)
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "last_mod", scope: !71, file: !23, line: 272, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !99, line: 10, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !79, line: 160, baseType: !101)
!101 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !71, file: !23, line: 273, baseType: !74, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "comp_size", scope: !71, file: !23, line: 274, baseType: !104, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint64_t", file: !75, line: 43, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !77, line: 27, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !79, line: 45, baseType: !107)
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "uncomp_size", scope: !71, file: !23, line: 275, baseType: !104, size: 64, offset: 384)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !71, file: !23, line: 276, baseType: !110, size: 64, offset: 448)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_string_t", file: !23, line: 206, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_string", file: !23, line: 351, size: 256, elements: !113)
!113 = !{!114, !120, !121, !122, !123}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !112, file: !23, line: 352, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint8_t", file: !75, line: 22, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !77, line: 24, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !79, line: 38, baseType: !119)
!119 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !112, file: !23, line: 353, baseType: !85, size: 16, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !112, file: !23, line: 354, baseType: !22, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "converted", scope: !112, file: !23, line: 355, baseType: !115, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "converted_length", scope: !112, file: !23, line: 356, baseType: !74, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "extra_fields", scope: !71, file: !23, line: 277, baseType: !125, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_extra_field_t", file: !23, line: 205, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_extra_field", file: !23, line: 302, size: 192, elements: !128)
!128 = !{!129, !130, !132, !133, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !23, line: 303, baseType: !125, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !23, line: 304, baseType: !131, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_flags_t", file: !33, line: 309, baseType: !74)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !127, file: !23, line: 305, baseType: !85, size: 16, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !23, line: 306, baseType: !85, size: 16, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !127, file: !23, line: 307, baseType: !115, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !71, file: !23, line: 278, baseType: !110, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "disk_number", scope: !71, file: !23, line: 279, baseType: !74, size: 32, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "int_attrib", scope: !71, file: !23, line: 280, baseType: !85, size: 16, offset: 672)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ext_attrib", scope: !71, file: !23, line: 281, baseType: !74, size: 32, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !71, file: !23, line: 282, baseType: !104, size: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "compression_level", scope: !71, file: !23, line: 284, baseType: !85, size: 16, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_method", scope: !71, file: !23, line: 285, baseType: !85, size: 16, offset: 848)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !71, file: !23, line: 286, baseType: !143, size: 64, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !66, file: !23, line: 343, baseType: !69, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !66, file: !23, line: 344, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_t", file: !33, line: 306, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_source", file: !23, line: 318, size: 640, elements: !149)
!149 = !{!150, !151, !169, !170, !177, !178, !179, !181, !182, !211, !212}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !148, file: !23, line: 319, baseType: !146, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !148, file: !23, line: 323, baseType: !152, size: 64, offset: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !23, line: 320, size: 64, elements: !153)
!153 = !{!154, !164}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !152, file: !23, line: 321, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_callback", file: !33, line: 311, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !162, !162, !104, !163}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int64_t", file: !75, line: 39, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !94, line: 27, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !79, line: 44, baseType: !101)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_cmd_t", file: !33, line: 233, baseType: !32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !152, file: !23, line: 322, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_layered_callback", file: !23, line: 151, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!159, !146, !162, !162, !104, !32}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !148, file: !23, line: 324, baseType: !162, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !148, file: !23, line: 325, baseType: !171, size: 128, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_error_t", file: !33, line: 304, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_error", file: !33, line: 270, size: 128, elements: !173)
!173 = !{!174, !175, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "zip_err", scope: !172, file: !33, line: 271, baseType: !96, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sys_err", scope: !172, file: !33, line: 272, baseType: !96, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !172, file: !33, line: 273, baseType: !143, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "supports", scope: !148, file: !23, line: 326, baseType: !159, size: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !148, file: !23, line: 327, baseType: !24, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "write_state", scope: !148, file: !23, line: 328, baseType: !180, size: 32, offset: 416)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_write_state_t", file: !23, line: 316, baseType: !52)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "source_closed", scope: !148, file: !23, line: 329, baseType: !81, size: 8, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "source_archive", scope: !148, file: !23, line: 330, baseType: !183, size: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_t", file: !33, line: 303, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip", file: !23, line: 213, size: 1024, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !203, !207}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !185, file: !23, line: 214, baseType: !146, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "open_flags", scope: !185, file: !23, line: 215, baseType: !24, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !185, file: !23, line: 216, baseType: !171, size: 128, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !23, line: 218, baseType: !24, size: 32, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ch_flags", scope: !185, file: !23, line: 219, baseType: !24, size: 32, offset: 288)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "default_password", scope: !185, file: !23, line: 221, baseType: !143, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "comment_orig", scope: !185, file: !23, line: 223, baseType: !110, size: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "comment_changes", scope: !185, file: !23, line: 224, baseType: !110, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "comment_changed", scope: !185, file: !23, line: 225, baseType: !81, size: 8, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nentry", scope: !185, file: !23, line: 227, baseType: !104, size: 64, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nentry_alloc", scope: !185, file: !23, line: 228, baseType: !104, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !185, file: !23, line: 229, baseType: !64, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "nopen_source", scope: !185, file: !23, line: 231, baseType: !24, size: 32, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nopen_source_alloc", scope: !185, file: !23, line: 232, baseType: !24, size: 32, offset: 800)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "open_source", scope: !185, file: !23, line: 233, baseType: !202, size: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !185, file: !23, line: 235, baseType: !204, size: 64, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_hash_t", file: !23, line: 208, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip_hash", file: !23, line: 199, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !185, file: !23, line: 237, baseType: !208, size: 64, offset: 960)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_progress_t", file: !23, line: 209, baseType: !210)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip_progress", file: !23, line: 200, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !148, file: !23, line: 331, baseType: !24, size: 32, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !148, file: !23, line: 332, baseType: !81, size: 8, offset: 608)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !66, file: !23, line: 345, baseType: !81, size: 8, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nentry", scope: !61, file: !23, line: 293, baseType: !104, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "nentry_alloc", scope: !61, file: !23, line: 294, baseType: !104, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !61, file: !23, line: 296, baseType: !104, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !61, file: !23, line: 297, baseType: !104, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !61, file: !23, line: 298, baseType: !110, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "is_zip64", scope: !61, file: !23, line: 299, baseType: !81, size: 8, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 70, baseType: !107)
!221 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!222 = !{!0, !7, !9, !11, !13, !15}
!223 = !{i32 7, !"Dwarf Version", i32 5}
!224 = !{i32 2, !"Debug Info Version", i32 3}
!225 = !{i32 1, !"wchar_size", i32 4}
!226 = !{i32 8, !"PIC Level", i32 2}
!227 = !{i32 7, !"uwtable", i32 2}
!228 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!229 = distinct !DISubprogram(name: "_zip_cdir_free", scope: !2, file: !2, line: 51, type: !230, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !59}
!232 = !{!233, !234}
!233 = !DILocalVariable(name: "cd", arg: 1, scope: !229, file: !2, line: 51, type: !59)
!234 = !DILocalVariable(name: "i", scope: !229, file: !2, line: 53, type: !104)
!235 = !{!236, !236, i64 0}
!236 = !{!"any pointer", !237, i64 0}
!237 = !{!"omnipotent char", !238, i64 0}
!238 = !{!"Simple C/C++ TBAA"}
!239 = !DILocation(line: 51, column: 28, scope: !229)
!240 = !DILocation(line: 53, column: 5, scope: !229)
!241 = !DILocation(line: 53, column: 18, scope: !229)
!242 = !DILocation(line: 55, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !229, file: !2, line: 55, column: 9)
!244 = !DILocation(line: 55, column: 9, scope: !229)
!245 = !DILocation(line: 56, column: 2, scope: !243)
!246 = !DILocation(line: 58, column: 11, scope: !247)
!247 = distinct !DILexicalBlock(scope: !229, file: !2, line: 58, column: 5)
!248 = !{!249, !249, i64 0}
!249 = !{!"long", !237, i64 0}
!250 = !DILocation(line: 58, column: 10, scope: !247)
!251 = !DILocation(line: 58, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !2, line: 58, column: 5)
!253 = !DILocation(line: 58, column: 17, scope: !252)
!254 = !DILocation(line: 58, column: 21, scope: !252)
!255 = !{!256, !249, i64 8}
!256 = !{!"zip_cdir", !236, i64 0, !249, i64 8, !249, i64 16, !249, i64 24, !249, i64 32, !236, i64 40, !257, i64 48}
!257 = !{!"_Bool", !237, i64 0}
!258 = !DILocation(line: 58, column: 16, scope: !252)
!259 = !DILocation(line: 58, column: 5, scope: !247)
!260 = !DILocation(line: 59, column: 22, scope: !252)
!261 = !DILocation(line: 59, column: 26, scope: !252)
!262 = !{!256, !236, i64 0}
!263 = !DILocation(line: 59, column: 32, scope: !252)
!264 = !DILocation(line: 59, column: 31, scope: !252)
!265 = !DILocation(line: 59, column: 2, scope: !252)
!266 = !DILocation(line: 58, column: 30, scope: !252)
!267 = !DILocation(line: 58, column: 5, scope: !252)
!268 = distinct !{!268, !259, !269, !270}
!269 = !DILocation(line: 59, column: 33, scope: !247)
!270 = !{!"llvm.loop.mustprogress"}
!271 = !DILocation(line: 60, column: 10, scope: !229)
!272 = !DILocation(line: 60, column: 14, scope: !229)
!273 = !DILocation(line: 60, column: 5, scope: !229)
!274 = !DILocation(line: 61, column: 22, scope: !229)
!275 = !DILocation(line: 61, column: 26, scope: !229)
!276 = !{!256, !236, i64 40}
!277 = !DILocation(line: 61, column: 5, scope: !229)
!278 = !DILocation(line: 62, column: 10, scope: !229)
!279 = !DILocation(line: 62, column: 5, scope: !229)
!280 = !DILocation(line: 63, column: 1, scope: !229)
!281 = !DISubprogram(name: "_zip_entry_finalize", scope: !23, file: !23, line: 461, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !64}
!284 = !DISubprogram(name: "free", scope: !285, file: !285, line: 555, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!286 = !DISubroutineType(types: !287)
!287 = !{null, !162}
!288 = !DISubprogram(name: "_zip_string_free", scope: !23, file: !23, line: 524, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !110}
!291 = distinct !DISubprogram(name: "_zip_cdir_new", scope: !2, file: !2, line: 67, type: !292, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !295)
!292 = !DISubroutineType(types: !293)
!293 = !{!59, !104, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!295 = !{!296, !297, !298}
!296 = !DILocalVariable(name: "nentry", arg: 1, scope: !291, file: !2, line: 67, type: !104)
!297 = !DILocalVariable(name: "error", arg: 2, scope: !291, file: !2, line: 67, type: !294)
!298 = !DILocalVariable(name: "cd", scope: !291, file: !2, line: 69, type: !59)
!299 = !DILocation(line: 67, column: 28, scope: !291)
!300 = !DILocation(line: 67, column: 49, scope: !291)
!301 = !DILocation(line: 69, column: 5, scope: !291)
!302 = !DILocation(line: 69, column: 17, scope: !291)
!303 = !DILocation(line: 71, column: 27, scope: !304)
!304 = distinct !DILexicalBlock(scope: !291, file: !2, line: 71, column: 9)
!305 = !DILocation(line: 71, column: 12, scope: !304)
!306 = !DILocation(line: 71, column: 48, scope: !304)
!307 = !DILocation(line: 71, column: 9, scope: !291)
!308 = !DILocation(line: 72, column: 16, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !2, line: 71, column: 57)
!310 = !DILocation(line: 72, column: 2, scope: !309)
!311 = !DILocation(line: 73, column: 2, scope: !309)
!312 = !DILocation(line: 76, column: 5, scope: !291)
!313 = !DILocation(line: 76, column: 9, scope: !291)
!314 = !DILocation(line: 76, column: 15, scope: !291)
!315 = !DILocation(line: 77, column: 18, scope: !291)
!316 = !DILocation(line: 77, column: 22, scope: !291)
!317 = !DILocation(line: 77, column: 35, scope: !291)
!318 = !{!256, !249, i64 16}
!319 = !DILocation(line: 77, column: 5, scope: !291)
!320 = !DILocation(line: 77, column: 9, scope: !291)
!321 = !DILocation(line: 77, column: 16, scope: !291)
!322 = !DILocation(line: 78, column: 16, scope: !291)
!323 = !DILocation(line: 78, column: 20, scope: !291)
!324 = !DILocation(line: 78, column: 27, scope: !291)
!325 = !{!256, !249, i64 32}
!326 = !DILocation(line: 78, column: 5, scope: !291)
!327 = !DILocation(line: 78, column: 9, scope: !291)
!328 = !DILocation(line: 78, column: 14, scope: !291)
!329 = !{!256, !249, i64 24}
!330 = !DILocation(line: 79, column: 5, scope: !291)
!331 = !DILocation(line: 79, column: 9, scope: !291)
!332 = !DILocation(line: 79, column: 17, scope: !291)
!333 = !DILocation(line: 80, column: 5, scope: !291)
!334 = !DILocation(line: 80, column: 9, scope: !291)
!335 = !DILocation(line: 80, column: 18, scope: !291)
!336 = !{!256, !257, i64 48}
!337 = !DILocation(line: 82, column: 25, scope: !338)
!338 = distinct !DILexicalBlock(scope: !291, file: !2, line: 82, column: 9)
!339 = !DILocation(line: 82, column: 29, scope: !338)
!340 = !DILocation(line: 82, column: 37, scope: !338)
!341 = !DILocation(line: 82, column: 10, scope: !338)
!342 = !DILocation(line: 82, column: 9, scope: !291)
!343 = !DILocation(line: 83, column: 17, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !2, line: 82, column: 45)
!345 = !DILocation(line: 83, column: 2, scope: !344)
!346 = !DILocation(line: 84, column: 2, scope: !344)
!347 = !DILocation(line: 87, column: 12, scope: !291)
!348 = !DILocation(line: 87, column: 5, scope: !291)
!349 = !DILocation(line: 88, column: 1, scope: !291)
!350 = !DISubprogram(name: "malloc", scope: !285, file: !285, line: 540, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{!162, !220}
!353 = !DISubprogram(name: "zip_error_set", scope: !33, file: !33, line: 343, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !294, !96, !96}
!356 = distinct !DISubprogram(name: "_zip_cdir_grow", scope: !2, file: !2, line: 92, type: !357, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{!81, !59, !104, !294}
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DILocalVariable(name: "cd", arg: 1, scope: !356, file: !2, line: 92, type: !59)
!361 = !DILocalVariable(name: "additional_entries", arg: 2, scope: !356, file: !2, line: 92, type: !104)
!362 = !DILocalVariable(name: "error", arg: 3, scope: !356, file: !2, line: 92, type: !294)
!363 = !DILocalVariable(name: "i", scope: !356, file: !2, line: 94, type: !104)
!364 = !DILocalVariable(name: "new_alloc", scope: !356, file: !2, line: 94, type: !104)
!365 = !DILocalVariable(name: "new_entry", scope: !356, file: !2, line: 95, type: !64)
!366 = !DILocation(line: 92, column: 28, scope: !356)
!367 = !DILocation(line: 92, column: 45, scope: !356)
!368 = !DILocation(line: 92, column: 78, scope: !356)
!369 = !DILocation(line: 94, column: 5, scope: !356)
!370 = !DILocation(line: 94, column: 18, scope: !356)
!371 = !DILocation(line: 94, column: 21, scope: !356)
!372 = !DILocation(line: 95, column: 5, scope: !356)
!373 = !DILocation(line: 95, column: 18, scope: !356)
!374 = !DILocation(line: 97, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !356, file: !2, line: 97, column: 9)
!376 = !DILocation(line: 97, column: 28, scope: !375)
!377 = !DILocation(line: 97, column: 9, scope: !356)
!378 = !DILocation(line: 98, column: 2, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !2, line: 97, column: 34)
!380 = !DILocation(line: 101, column: 17, scope: !356)
!381 = !DILocation(line: 101, column: 21, scope: !356)
!382 = !DILocation(line: 101, column: 36, scope: !356)
!383 = !DILocation(line: 101, column: 34, scope: !356)
!384 = !DILocation(line: 101, column: 15, scope: !356)
!385 = !DILocation(line: 103, column: 9, scope: !386)
!386 = distinct !DILexicalBlock(scope: !356, file: !2, line: 103, column: 9)
!387 = !DILocation(line: 103, column: 21, scope: !386)
!388 = !DILocation(line: 103, column: 19, scope: !386)
!389 = !DILocation(line: 103, column: 40, scope: !386)
!390 = !DILocation(line: 103, column: 43, scope: !386)
!391 = !DILocation(line: 103, column: 53, scope: !386)
!392 = !DILocation(line: 103, column: 9, scope: !356)
!393 = !DILocation(line: 104, column: 16, scope: !394)
!394 = distinct !DILexicalBlock(scope: !386, file: !2, line: 103, column: 86)
!395 = !DILocation(line: 104, column: 2, scope: !394)
!396 = !DILocation(line: 105, column: 2, scope: !394)
!397 = !DILocation(line: 108, column: 45, scope: !398)
!398 = distinct !DILexicalBlock(scope: !356, file: !2, line: 108, column: 9)
!399 = !DILocation(line: 108, column: 49, scope: !398)
!400 = !DILocation(line: 108, column: 85, scope: !398)
!401 = !DILocation(line: 108, column: 76, scope: !398)
!402 = !DILocation(line: 108, column: 37, scope: !398)
!403 = !DILocation(line: 108, column: 20, scope: !398)
!404 = !DILocation(line: 108, column: 97, scope: !398)
!405 = !DILocation(line: 108, column: 9, scope: !356)
!406 = !DILocation(line: 109, column: 16, scope: !407)
!407 = distinct !DILexicalBlock(scope: !398, file: !2, line: 108, column: 106)
!408 = !DILocation(line: 109, column: 2, scope: !407)
!409 = !DILocation(line: 110, column: 2, scope: !407)
!410 = !DILocation(line: 113, column: 17, scope: !356)
!411 = !DILocation(line: 113, column: 5, scope: !356)
!412 = !DILocation(line: 113, column: 9, scope: !356)
!413 = !DILocation(line: 113, column: 15, scope: !356)
!414 = !DILocation(line: 115, column: 14, scope: !415)
!415 = distinct !DILexicalBlock(scope: !356, file: !2, line: 115, column: 5)
!416 = !DILocation(line: 115, column: 18, scope: !415)
!417 = !DILocation(line: 115, column: 12, scope: !415)
!418 = !DILocation(line: 115, column: 10, scope: !415)
!419 = !DILocation(line: 115, column: 26, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !2, line: 115, column: 5)
!421 = !DILocation(line: 115, column: 30, scope: !420)
!422 = !DILocation(line: 115, column: 28, scope: !420)
!423 = !DILocation(line: 115, column: 5, scope: !415)
!424 = !DILocation(line: 116, column: 18, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !2, line: 115, column: 46)
!426 = !DILocation(line: 116, column: 22, scope: !425)
!427 = !DILocation(line: 116, column: 28, scope: !425)
!428 = !DILocation(line: 116, column: 27, scope: !425)
!429 = !DILocation(line: 116, column: 2, scope: !425)
!430 = !DILocation(line: 117, column: 5, scope: !425)
!431 = !DILocation(line: 115, column: 42, scope: !420)
!432 = !DILocation(line: 115, column: 5, scope: !420)
!433 = distinct !{!433, !423, !434, !270}
!434 = !DILocation(line: 117, column: 5, scope: !415)
!435 = !DILocation(line: 119, column: 37, scope: !356)
!436 = !DILocation(line: 119, column: 18, scope: !356)
!437 = !DILocation(line: 119, column: 22, scope: !356)
!438 = !DILocation(line: 119, column: 35, scope: !356)
!439 = !DILocation(line: 119, column: 5, scope: !356)
!440 = !DILocation(line: 119, column: 9, scope: !356)
!441 = !DILocation(line: 119, column: 16, scope: !356)
!442 = !DILocation(line: 121, column: 5, scope: !356)
!443 = !DILocation(line: 122, column: 1, scope: !356)
!444 = !DISubprogram(name: "realloc", scope: !285, file: !285, line: 551, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!162, !162, !220}
!447 = !DISubprogram(name: "_zip_entry_init", scope: !23, file: !23, line: 462, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = distinct !DISubprogram(name: "_zip_cdir_write", scope: !2, file: !2, line: 126, type: !449, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !457)
!449 = !DISubroutineType(types: !450)
!450 = !{!159, !183, !451, !104}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_filelist_t", file: !23, line: 378, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_filelist", file: !23, line: 373, size: 64, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !454, file: !23, line: 374, baseType: !104, size: 64)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !468, !478, !479, !480, !481, !482}
!458 = !DILocalVariable(name: "za", arg: 1, scope: !448, file: !2, line: 126, type: !183)
!459 = !DILocalVariable(name: "filelist", arg: 2, scope: !448, file: !2, line: 126, type: !451)
!460 = !DILocalVariable(name: "survivors", arg: 3, scope: !448, file: !2, line: 126, type: !104)
!461 = !DILocalVariable(name: "offset", scope: !448, file: !2, line: 128, type: !104)
!462 = !DILocalVariable(name: "size", scope: !448, file: !2, line: 128, type: !104)
!463 = !DILocalVariable(name: "comment", scope: !448, file: !2, line: 129, type: !110)
!464 = !DILocalVariable(name: "buf", scope: !448, file: !2, line: 130, type: !465)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 784, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 98)
!468 = !DILocalVariable(name: "buffer", scope: !448, file: !2, line: 131, type: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_buffer_t", file: !23, line: 207, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_buffer", file: !23, line: 362, size: 256, elements: !472)
!472 = !{!473, !474, !475, !476, !477}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ok", scope: !471, file: !23, line: 363, baseType: !81, size: 8)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "free_data", scope: !471, file: !23, line: 364, baseType: !81, size: 8, offset: 8)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !471, file: !23, line: 366, baseType: !115, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !471, file: !23, line: 367, baseType: !104, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !471, file: !23, line: 368, baseType: !104, size: 64, offset: 192)
!478 = !DILocalVariable(name: "off", scope: !448, file: !2, line: 132, type: !159)
!479 = !DILocalVariable(name: "i", scope: !448, file: !2, line: 133, type: !104)
!480 = !DILocalVariable(name: "is_zip64", scope: !448, file: !2, line: 134, type: !81)
!481 = !DILocalVariable(name: "ret", scope: !448, file: !2, line: 135, type: !96)
!482 = !DILocalVariable(name: "entry", scope: !483, file: !2, line: 146, type: !64)
!483 = distinct !DILexicalBlock(scope: !484, file: !2, line: 145, column: 33)
!484 = distinct !DILexicalBlock(scope: !485, file: !2, line: 145, column: 5)
!485 = distinct !DILexicalBlock(scope: !448, file: !2, line: 145, column: 5)
!486 = !DILocation(line: 126, column: 24, scope: !448)
!487 = !DILocation(line: 126, column: 50, scope: !448)
!488 = !DILocation(line: 126, column: 73, scope: !448)
!489 = !DILocation(line: 128, column: 5, scope: !448)
!490 = !DILocation(line: 128, column: 18, scope: !448)
!491 = !DILocation(line: 128, column: 26, scope: !448)
!492 = !DILocation(line: 129, column: 5, scope: !448)
!493 = !DILocation(line: 129, column: 19, scope: !448)
!494 = !DILocation(line: 130, column: 5, scope: !448)
!495 = !DILocation(line: 130, column: 17, scope: !448)
!496 = !DILocation(line: 131, column: 5, scope: !448)
!497 = !DILocation(line: 131, column: 19, scope: !448)
!498 = !DILocation(line: 132, column: 5, scope: !448)
!499 = !DILocation(line: 132, column: 17, scope: !448)
!500 = !DILocation(line: 133, column: 5, scope: !448)
!501 = !DILocation(line: 133, column: 18, scope: !448)
!502 = !DILocation(line: 134, column: 5, scope: !448)
!503 = !DILocation(line: 134, column: 10, scope: !448)
!504 = !DILocation(line: 135, column: 5, scope: !448)
!505 = !DILocation(line: 135, column: 9, scope: !448)
!506 = !DILocation(line: 137, column: 38, scope: !507)
!507 = distinct !DILexicalBlock(scope: !448, file: !2, line: 137, column: 9)
!508 = !DILocation(line: 137, column: 42, scope: !507)
!509 = !{!510, !236, i64 0}
!510 = !{!"zip", !236, i64 0, !511, i64 8, !512, i64 16, !511, i64 32, !511, i64 36, !236, i64 40, !236, i64 48, !236, i64 56, !257, i64 64, !249, i64 72, !249, i64 80, !236, i64 88, !511, i64 96, !511, i64 100, !236, i64 104, !236, i64 112, !236, i64 120}
!511 = !{!"int", !237, i64 0}
!512 = !{!"zip_error", !511, i64 0, !511, i64 4, !236, i64 8}
!513 = !DILocation(line: 137, column: 16, scope: !507)
!514 = !DILocation(line: 137, column: 14, scope: !507)
!515 = !DILocation(line: 137, column: 48, scope: !507)
!516 = !DILocation(line: 137, column: 9, scope: !448)
!517 = !DILocation(line: 138, column: 37, scope: !518)
!518 = distinct !DILexicalBlock(scope: !507, file: !2, line: 137, column: 53)
!519 = !DILocation(line: 138, column: 41, scope: !518)
!520 = !DILocation(line: 138, column: 48, scope: !518)
!521 = !DILocation(line: 138, column: 52, scope: !518)
!522 = !DILocation(line: 138, column: 9, scope: !518)
!523 = !DILocation(line: 139, column: 9, scope: !518)
!524 = !DILocation(line: 141, column: 28, scope: !448)
!525 = !DILocation(line: 141, column: 12, scope: !448)
!526 = !DILocation(line: 143, column: 14, scope: !448)
!527 = !{!257, !257, i64 0}
!528 = !DILocation(line: 145, column: 11, scope: !485)
!529 = !DILocation(line: 145, column: 10, scope: !485)
!530 = !DILocation(line: 145, column: 15, scope: !484)
!531 = !DILocation(line: 145, column: 17, scope: !484)
!532 = !DILocation(line: 145, column: 16, scope: !484)
!533 = !DILocation(line: 145, column: 5, scope: !485)
!534 = !DILocation(line: 146, column: 2, scope: !483)
!535 = !DILocation(line: 146, column: 15, scope: !483)
!536 = !DILocation(line: 146, column: 23, scope: !483)
!537 = !DILocation(line: 146, column: 27, scope: !483)
!538 = !{!510, !236, i64 88}
!539 = !DILocation(line: 146, column: 33, scope: !483)
!540 = !DILocation(line: 146, column: 42, scope: !483)
!541 = !DILocation(line: 146, column: 45, scope: !483)
!542 = !{!543, !249, i64 0}
!543 = !{!"zip_filelist", !249, i64 0}
!544 = !DILocation(line: 146, column: 32, scope: !483)
!545 = !DILocation(line: 148, column: 29, scope: !546)
!546 = distinct !DILexicalBlock(scope: !483, file: !2, line: 148, column: 6)
!547 = !DILocation(line: 148, column: 33, scope: !546)
!548 = !DILocation(line: 148, column: 40, scope: !546)
!549 = !{!550, !236, i64 8}
!550 = !{!"zip_entry", !236, i64 0, !236, i64 8, !236, i64 16, !257, i64 24}
!551 = !DILocation(line: 148, column: 50, scope: !546)
!552 = !DILocation(line: 148, column: 57, scope: !546)
!553 = !DILocation(line: 148, column: 67, scope: !546)
!554 = !DILocation(line: 148, column: 74, scope: !546)
!555 = !{!550, !236, i64 0}
!556 = !DILocation(line: 148, column: 11, scope: !546)
!557 = !DILocation(line: 148, column: 10, scope: !546)
!558 = !{!511, !511, i64 0}
!559 = !DILocation(line: 148, column: 97, scope: !546)
!560 = !DILocation(line: 148, column: 6, scope: !483)
!561 = !DILocation(line: 149, column: 6, scope: !546)
!562 = !DILocation(line: 150, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !483, file: !2, line: 150, column: 6)
!564 = !DILocation(line: 150, column: 6, scope: !483)
!565 = !DILocation(line: 151, column: 15, scope: !563)
!566 = !DILocation(line: 151, column: 6, scope: !563)
!567 = !DILocation(line: 152, column: 5, scope: !484)
!568 = !DILocation(line: 152, column: 5, scope: !483)
!569 = !DILocation(line: 145, column: 29, scope: !484)
!570 = !DILocation(line: 145, column: 5, scope: !484)
!571 = distinct !{!571, !533, !572, !270}
!572 = !DILocation(line: 152, column: 5, scope: !485)
!573 = !DILocation(line: 154, column: 38, scope: !574)
!574 = distinct !DILexicalBlock(scope: !448, file: !2, line: 154, column: 9)
!575 = !DILocation(line: 154, column: 42, scope: !574)
!576 = !DILocation(line: 154, column: 16, scope: !574)
!577 = !DILocation(line: 154, column: 14, scope: !574)
!578 = !DILocation(line: 154, column: 48, scope: !574)
!579 = !DILocation(line: 154, column: 9, scope: !448)
!580 = !DILocation(line: 155, column: 37, scope: !581)
!581 = distinct !DILexicalBlock(scope: !574, file: !2, line: 154, column: 53)
!582 = !DILocation(line: 155, column: 41, scope: !581)
!583 = !DILocation(line: 155, column: 48, scope: !581)
!584 = !DILocation(line: 155, column: 52, scope: !581)
!585 = !DILocation(line: 155, column: 9, scope: !581)
!586 = !DILocation(line: 156, column: 9, scope: !581)
!587 = !DILocation(line: 158, column: 26, scope: !448)
!588 = !DILocation(line: 158, column: 32, scope: !448)
!589 = !DILocation(line: 158, column: 30, scope: !448)
!590 = !DILocation(line: 158, column: 10, scope: !448)
!591 = !DILocation(line: 160, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !448, file: !2, line: 160, column: 9)
!593 = !DILocation(line: 160, column: 16, scope: !592)
!594 = !DILocation(line: 160, column: 33, scope: !592)
!595 = !DILocation(line: 160, column: 36, scope: !592)
!596 = !DILocation(line: 160, column: 46, scope: !592)
!597 = !DILocation(line: 160, column: 9, scope: !448)
!598 = !DILocation(line: 161, column: 11, scope: !592)
!599 = !DILocation(line: 161, column: 2, scope: !592)
!600 = !DILocation(line: 164, column: 35, scope: !601)
!601 = distinct !DILexicalBlock(scope: !448, file: !2, line: 164, column: 9)
!602 = !DILocation(line: 164, column: 19, scope: !601)
!603 = !DILocation(line: 164, column: 17, scope: !601)
!604 = !DILocation(line: 164, column: 54, scope: !601)
!605 = !DILocation(line: 164, column: 9, scope: !448)
!606 = !DILocation(line: 165, column: 24, scope: !607)
!607 = distinct !DILexicalBlock(scope: !601, file: !2, line: 164, column: 63)
!608 = !DILocation(line: 165, column: 28, scope: !607)
!609 = !DILocation(line: 165, column: 9, scope: !607)
!610 = !DILocation(line: 166, column: 9, scope: !607)
!611 = !DILocation(line: 169, column: 9, scope: !612)
!612 = distinct !DILexicalBlock(scope: !448, file: !2, line: 169, column: 9)
!613 = !{i8 0, i8 2}
!614 = !{}
!615 = !DILocation(line: 169, column: 9, scope: !448)
!616 = !DILocation(line: 170, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !2, line: 169, column: 19)
!618 = !DILocation(line: 170, column: 2, scope: !617)
!619 = !DILocation(line: 171, column: 28, scope: !617)
!620 = !DILocation(line: 171, column: 9, scope: !617)
!621 = !DILocation(line: 172, column: 21, scope: !617)
!622 = !DILocation(line: 172, column: 2, scope: !617)
!623 = !DILocation(line: 173, column: 21, scope: !617)
!624 = !DILocation(line: 173, column: 2, scope: !617)
!625 = !DILocation(line: 174, column: 21, scope: !617)
!626 = !DILocation(line: 174, column: 2, scope: !617)
!627 = !DILocation(line: 175, column: 21, scope: !617)
!628 = !DILocation(line: 175, column: 2, scope: !617)
!629 = !DILocation(line: 176, column: 21, scope: !617)
!630 = !DILocation(line: 176, column: 29, scope: !617)
!631 = !DILocation(line: 176, column: 2, scope: !617)
!632 = !DILocation(line: 177, column: 21, scope: !617)
!633 = !DILocation(line: 177, column: 29, scope: !617)
!634 = !DILocation(line: 177, column: 2, scope: !617)
!635 = !DILocation(line: 178, column: 21, scope: !617)
!636 = !DILocation(line: 178, column: 29, scope: !617)
!637 = !DILocation(line: 178, column: 2, scope: !617)
!638 = !DILocation(line: 179, column: 21, scope: !617)
!639 = !DILocation(line: 179, column: 29, scope: !617)
!640 = !DILocation(line: 179, column: 2, scope: !617)
!641 = !DILocation(line: 180, column: 18, scope: !617)
!642 = !DILocation(line: 180, column: 2, scope: !617)
!643 = !DILocation(line: 181, column: 21, scope: !617)
!644 = !DILocation(line: 181, column: 2, scope: !617)
!645 = !DILocation(line: 182, column: 21, scope: !617)
!646 = !DILocation(line: 182, column: 29, scope: !617)
!647 = !DILocation(line: 182, column: 36, scope: !617)
!648 = !DILocation(line: 182, column: 35, scope: !617)
!649 = !DILocation(line: 182, column: 2, scope: !617)
!650 = !DILocation(line: 183, column: 21, scope: !617)
!651 = !DILocation(line: 183, column: 2, scope: !617)
!652 = !DILocation(line: 184, column: 5, scope: !617)
!653 = !DILocation(line: 186, column: 21, scope: !448)
!654 = !DILocation(line: 186, column: 5, scope: !448)
!655 = !DILocation(line: 187, column: 24, scope: !448)
!656 = !DILocation(line: 187, column: 5, scope: !448)
!657 = !DILocation(line: 188, column: 24, scope: !448)
!658 = !DILocation(line: 188, column: 47, scope: !448)
!659 = !DILocation(line: 188, column: 57, scope: !448)
!660 = !DILocation(line: 188, column: 94, scope: !448)
!661 = !DILocation(line: 188, column: 32, scope: !448)
!662 = !DILocation(line: 188, column: 5, scope: !448)
!663 = !DILocation(line: 189, column: 24, scope: !448)
!664 = !DILocation(line: 189, column: 47, scope: !448)
!665 = !DILocation(line: 189, column: 57, scope: !448)
!666 = !DILocation(line: 189, column: 94, scope: !448)
!667 = !DILocation(line: 189, column: 32, scope: !448)
!668 = !DILocation(line: 189, column: 5, scope: !448)
!669 = !DILocation(line: 190, column: 24, scope: !448)
!670 = !DILocation(line: 190, column: 32, scope: !448)
!671 = !DILocation(line: 190, column: 37, scope: !448)
!672 = !DILocation(line: 190, column: 88, scope: !448)
!673 = !DILocation(line: 190, column: 74, scope: !448)
!674 = !DILocation(line: 190, column: 5, scope: !448)
!675 = !DILocation(line: 191, column: 24, scope: !448)
!676 = !DILocation(line: 191, column: 32, scope: !448)
!677 = !DILocation(line: 191, column: 39, scope: !448)
!678 = !DILocation(line: 191, column: 90, scope: !448)
!679 = !DILocation(line: 191, column: 76, scope: !448)
!680 = !DILocation(line: 191, column: 5, scope: !448)
!681 = !DILocation(line: 193, column: 15, scope: !448)
!682 = !DILocation(line: 193, column: 19, scope: !448)
!683 = !{!510, !257, i64 64}
!684 = !DILocation(line: 193, column: 37, scope: !448)
!685 = !DILocation(line: 193, column: 41, scope: !448)
!686 = !{!510, !236, i64 56}
!687 = !DILocation(line: 193, column: 59, scope: !448)
!688 = !DILocation(line: 193, column: 63, scope: !448)
!689 = !{!510, !236, i64 48}
!690 = !DILocation(line: 193, column: 13, scope: !448)
!691 = !DILocation(line: 195, column: 24, scope: !448)
!692 = !DILocation(line: 195, column: 47, scope: !448)
!693 = !DILocation(line: 195, column: 57, scope: !448)
!694 = !DILocation(line: 195, column: 66, scope: !448)
!695 = !{!696, !697, i64 8}
!696 = !{!"zip_string", !236, i64 0, !697, i64 8, !237, i64 12, !236, i64 16, !511, i64 24}
!697 = !{!"short", !237, i64 0}
!698 = !DILocation(line: 195, column: 32, scope: !448)
!699 = !DILocation(line: 195, column: 5, scope: !448)
!700 = !DILocation(line: 197, column: 25, scope: !701)
!701 = distinct !DILexicalBlock(scope: !448, file: !2, line: 197, column: 9)
!702 = !DILocation(line: 197, column: 10, scope: !701)
!703 = !DILocation(line: 197, column: 9, scope: !448)
!704 = !DILocation(line: 198, column: 24, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !2, line: 197, column: 34)
!706 = !DILocation(line: 198, column: 28, scope: !705)
!707 = !DILocation(line: 198, column: 9, scope: !705)
!708 = !DILocation(line: 199, column: 26, scope: !705)
!709 = !DILocation(line: 199, column: 9, scope: !705)
!710 = !DILocation(line: 200, column: 9, scope: !705)
!711 = !DILocation(line: 203, column: 20, scope: !712)
!712 = distinct !DILexicalBlock(scope: !448, file: !2, line: 203, column: 9)
!713 = !DILocation(line: 203, column: 41, scope: !712)
!714 = !DILocation(line: 203, column: 24, scope: !712)
!715 = !DILocation(line: 203, column: 69, scope: !712)
!716 = !DILocation(line: 203, column: 50, scope: !712)
!717 = !DILocation(line: 203, column: 9, scope: !712)
!718 = !DILocation(line: 203, column: 78, scope: !712)
!719 = !DILocation(line: 203, column: 9, scope: !448)
!720 = !DILocation(line: 204, column: 26, scope: !721)
!721 = distinct !DILexicalBlock(scope: !712, file: !2, line: 203, column: 83)
!722 = !DILocation(line: 204, column: 9, scope: !721)
!723 = !DILocation(line: 205, column: 2, scope: !721)
!724 = !DILocation(line: 208, column: 22, scope: !448)
!725 = !DILocation(line: 208, column: 5, scope: !448)
!726 = !DILocation(line: 210, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !448, file: !2, line: 210, column: 9)
!728 = !DILocation(line: 210, column: 9, scope: !448)
!729 = !DILocation(line: 211, column: 17, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 211, column: 6)
!731 = distinct !DILexicalBlock(scope: !727, file: !2, line: 210, column: 18)
!732 = !DILocation(line: 211, column: 21, scope: !730)
!733 = !DILocation(line: 211, column: 30, scope: !730)
!734 = !{!696, !236, i64 0}
!735 = !DILocation(line: 211, column: 35, scope: !730)
!736 = !DILocation(line: 211, column: 44, scope: !730)
!737 = !DILocation(line: 211, column: 6, scope: !730)
!738 = !DILocation(line: 211, column: 52, scope: !730)
!739 = !DILocation(line: 211, column: 6, scope: !731)
!740 = !DILocation(line: 212, column: 6, scope: !741)
!741 = distinct !DILexicalBlock(scope: !730, file: !2, line: 211, column: 57)
!742 = !DILocation(line: 214, column: 5, scope: !731)
!743 = !DILocation(line: 216, column: 25, scope: !448)
!744 = !DILocation(line: 216, column: 5, scope: !448)
!745 = !DILocation(line: 217, column: 1, scope: !448)
!746 = !DISubprogram(name: "zip_source_tell_write", scope: !33, file: !33, line: 413, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DISubroutineType(types: !748)
!748 = !{!159, !146}
!749 = !DISubprogram(name: "_zip_error_set_from_source", scope: !23, file: !23, line: 468, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !294, !146}
!752 = distinct !DISubprogram(name: "_zip_dirent_write", scope: !2, file: !2, line: 757, type: !753, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{!96, !183, !69, !131}
!755 = !{!756, !757, !758, !759, !760, !761, !763, !764, !765, !766, !767, !768, !769, !770, !774, !775, !780, !786, !787, !793, !794}
!756 = !DILocalVariable(name: "za", arg: 1, scope: !752, file: !2, line: 757, type: !183)
!757 = !DILocalVariable(name: "de", arg: 2, scope: !752, file: !2, line: 757, type: !69)
!758 = !DILocalVariable(name: "flags", arg: 3, scope: !752, file: !2, line: 757, type: !131)
!759 = !DILocalVariable(name: "dostime", scope: !752, file: !2, line: 759, type: !85)
!760 = !DILocalVariable(name: "dosdate", scope: !752, file: !2, line: 759, type: !85)
!761 = !DILocalVariable(name: "com_enc", scope: !752, file: !2, line: 760, type: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_encoding_type_t", file: !23, line: 197, baseType: !22)
!763 = !DILocalVariable(name: "name_enc", scope: !752, file: !2, line: 760, type: !762)
!764 = !DILocalVariable(name: "ef", scope: !752, file: !2, line: 761, type: !125)
!765 = !DILocalVariable(name: "ef64", scope: !752, file: !2, line: 762, type: !125)
!766 = !DILocalVariable(name: "ef_total_size", scope: !752, file: !2, line: 763, type: !74)
!767 = !DILocalVariable(name: "is_zip64", scope: !752, file: !2, line: 764, type: !81)
!768 = !DILocalVariable(name: "is_really_zip64", scope: !752, file: !2, line: 765, type: !81)
!769 = !DILocalVariable(name: "is_winzip_aes", scope: !752, file: !2, line: 766, type: !81)
!770 = !DILocalVariable(name: "buf", scope: !752, file: !2, line: 767, type: !771)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 368, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 46)
!774 = !DILocalVariable(name: "buffer", scope: !752, file: !2, line: 768, type: !469)
!775 = !DILocalVariable(name: "ef2", scope: !776, file: !2, line: 787, type: !125)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 786, column: 72)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 786, column: 6)
!778 = distinct !DILexicalBlock(scope: !779, file: !2, line: 779, column: 10)
!779 = distinct !DILexicalBlock(scope: !752, file: !2, line: 775, column: 9)
!780 = !DILocalVariable(name: "ef_zip64", scope: !781, file: !2, line: 809, type: !783)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 808, column: 19)
!782 = distinct !DILexicalBlock(scope: !752, file: !2, line: 808, column: 9)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 224, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 28)
!786 = !DILocalVariable(name: "ef_buffer", scope: !781, file: !2, line: 810, type: !469)
!787 = !DILocalVariable(name: "data", scope: !788, file: !2, line: 851, type: !790)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 850, column: 24)
!789 = distinct !DILexicalBlock(scope: !752, file: !2, line: 850, column: 9)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 56, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 7)
!793 = !DILocalVariable(name: "ef_buffer", scope: !788, file: !2, line: 852, type: !469)
!794 = !DILocalVariable(name: "ef_winzip", scope: !788, file: !2, line: 853, type: !125)
!795 = !DILocation(line: 757, column: 26, scope: !752)
!796 = !DILocation(line: 757, column: 44, scope: !752)
!797 = !DILocation(line: 757, column: 60, scope: !752)
!798 = !DILocation(line: 759, column: 5, scope: !752)
!799 = !DILocation(line: 759, column: 18, scope: !752)
!800 = !DILocation(line: 759, column: 27, scope: !752)
!801 = !DILocation(line: 760, column: 5, scope: !752)
!802 = !DILocation(line: 760, column: 25, scope: !752)
!803 = !DILocation(line: 760, column: 34, scope: !752)
!804 = !DILocation(line: 761, column: 5, scope: !752)
!805 = !DILocation(line: 761, column: 24, scope: !752)
!806 = !DILocation(line: 762, column: 5, scope: !752)
!807 = !DILocation(line: 762, column: 24, scope: !752)
!808 = !DILocation(line: 763, column: 5, scope: !752)
!809 = !DILocation(line: 763, column: 18, scope: !752)
!810 = !DILocation(line: 764, column: 5, scope: !752)
!811 = !DILocation(line: 764, column: 10, scope: !752)
!812 = !DILocation(line: 765, column: 5, scope: !752)
!813 = !DILocation(line: 765, column: 10, scope: !752)
!814 = !DILocation(line: 766, column: 5, scope: !752)
!815 = !DILocation(line: 766, column: 10, scope: !752)
!816 = !DILocation(line: 767, column: 5, scope: !752)
!817 = !DILocation(line: 767, column: 17, scope: !752)
!818 = !DILocation(line: 768, column: 5, scope: !752)
!819 = !DILocation(line: 768, column: 19, scope: !752)
!820 = !DILocation(line: 770, column: 8, scope: !752)
!821 = !DILocation(line: 772, column: 36, scope: !752)
!822 = !DILocation(line: 772, column: 40, scope: !752)
!823 = !{!824, !236, i64 56}
!824 = !{!"zip_dirent", !511, i64 0, !257, i64 4, !257, i64 5, !257, i64 6, !697, i64 8, !697, i64 10, !697, i64 12, !511, i64 16, !249, i64 24, !511, i64 32, !249, i64 40, !249, i64 48, !236, i64 56, !236, i64 64, !236, i64 72, !511, i64 80, !697, i64 84, !511, i64 88, !249, i64 96, !697, i64 104, !697, i64 106, !236, i64 112}
!825 = !DILocation(line: 772, column: 16, scope: !752)
!826 = !DILocation(line: 772, column: 14, scope: !752)
!827 = !{!237, !237, i64 0}
!828 = !DILocation(line: 773, column: 35, scope: !752)
!829 = !DILocation(line: 773, column: 39, scope: !752)
!830 = !{!824, !236, i64 72}
!831 = !DILocation(line: 773, column: 15, scope: !752)
!832 = !DILocation(line: 773, column: 13, scope: !752)
!833 = !DILocation(line: 775, column: 10, scope: !779)
!834 = !DILocation(line: 775, column: 19, scope: !779)
!835 = !DILocation(line: 775, column: 47, scope: !779)
!836 = !DILocation(line: 775, column: 50, scope: !779)
!837 = !DILocation(line: 775, column: 58, scope: !779)
!838 = !DILocation(line: 775, column: 81, scope: !779)
!839 = !DILocation(line: 776, column: 3, scope: !779)
!840 = !DILocation(line: 776, column: 12, scope: !779)
!841 = !DILocation(line: 776, column: 34, scope: !779)
!842 = !DILocation(line: 776, column: 37, scope: !779)
!843 = !DILocation(line: 776, column: 45, scope: !779)
!844 = !DILocation(line: 776, column: 73, scope: !779)
!845 = !DILocation(line: 777, column: 3, scope: !779)
!846 = !DILocation(line: 777, column: 12, scope: !779)
!847 = !DILocation(line: 777, column: 40, scope: !779)
!848 = !DILocation(line: 777, column: 43, scope: !779)
!849 = !DILocation(line: 777, column: 51, scope: !779)
!850 = !DILocation(line: 775, column: 9, scope: !752)
!851 = !DILocation(line: 778, column: 2, scope: !779)
!852 = !DILocation(line: 778, column: 6, scope: !779)
!853 = !DILocation(line: 778, column: 15, scope: !779)
!854 = !{!824, !697, i64 12}
!855 = !DILocation(line: 780, column: 2, scope: !778)
!856 = !DILocation(line: 780, column: 6, scope: !778)
!857 = !DILocation(line: 780, column: 15, scope: !778)
!858 = !DILocation(line: 781, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !778, file: !2, line: 781, column: 6)
!860 = !DILocation(line: 781, column: 15, scope: !859)
!861 = !DILocation(line: 781, column: 6, scope: !778)
!862 = !DILocation(line: 782, column: 43, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !2, line: 781, column: 43)
!864 = !DILocation(line: 782, column: 47, scope: !863)
!865 = !DILocation(line: 782, column: 58, scope: !863)
!866 = !DILocation(line: 782, column: 62, scope: !863)
!867 = !DILocation(line: 782, column: 11, scope: !863)
!868 = !DILocation(line: 782, column: 9, scope: !863)
!869 = !DILocation(line: 783, column: 10, scope: !870)
!870 = distinct !DILexicalBlock(scope: !863, file: !2, line: 783, column: 10)
!871 = !DILocation(line: 783, column: 13, scope: !870)
!872 = !DILocation(line: 783, column: 10, scope: !863)
!873 = !DILocation(line: 784, column: 3, scope: !870)
!874 = !DILocation(line: 785, column: 2, scope: !863)
!875 = !DILocation(line: 786, column: 7, scope: !777)
!876 = !DILocation(line: 786, column: 13, scope: !777)
!877 = !DILocation(line: 786, column: 29, scope: !777)
!878 = !DILocation(line: 786, column: 34, scope: !777)
!879 = !DILocation(line: 786, column: 37, scope: !777)
!880 = !DILocation(line: 786, column: 45, scope: !777)
!881 = !DILocation(line: 786, column: 6, scope: !778)
!882 = !DILocation(line: 787, column: 6, scope: !776)
!883 = !DILocation(line: 787, column: 25, scope: !776)
!884 = !DILocation(line: 787, column: 66, scope: !776)
!885 = !DILocation(line: 787, column: 70, scope: !776)
!886 = !DILocation(line: 787, column: 80, scope: !776)
!887 = !DILocation(line: 787, column: 84, scope: !776)
!888 = !DILocation(line: 787, column: 31, scope: !776)
!889 = !DILocation(line: 788, column: 10, scope: !890)
!890 = distinct !DILexicalBlock(scope: !776, file: !2, line: 788, column: 10)
!891 = !DILocation(line: 788, column: 14, scope: !890)
!892 = !DILocation(line: 788, column: 10, scope: !776)
!893 = !DILocation(line: 789, column: 16, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !2, line: 788, column: 23)
!895 = !DILocation(line: 789, column: 3, scope: !894)
!896 = !DILocation(line: 790, column: 3, scope: !894)
!897 = !DILocation(line: 792, column: 18, scope: !776)
!898 = !DILocation(line: 792, column: 6, scope: !776)
!899 = !DILocation(line: 792, column: 11, scope: !776)
!900 = !DILocation(line: 792, column: 16, scope: !776)
!901 = !{!902, !236, i64 0}
!902 = !{!"zip_extra_field", !236, i64 0, !511, i64 8, !697, i64 12, !697, i64 14, !236, i64 16}
!903 = !DILocation(line: 793, column: 11, scope: !776)
!904 = !DILocation(line: 793, column: 9, scope: !776)
!905 = !DILocation(line: 794, column: 2, scope: !777)
!906 = !DILocation(line: 794, column: 2, scope: !776)
!907 = !DILocation(line: 797, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !752, file: !2, line: 797, column: 9)
!909 = !DILocation(line: 797, column: 13, scope: !908)
!910 = !{!824, !697, i64 106}
!911 = !DILocation(line: 797, column: 31, scope: !908)
!912 = !DILocation(line: 797, column: 9, scope: !752)
!913 = !DILocation(line: 798, column: 2, scope: !914)
!914 = distinct !DILexicalBlock(scope: !908, file: !2, line: 797, column: 47)
!915 = !DILocation(line: 798, column: 6, scope: !914)
!916 = !DILocation(line: 798, column: 15, scope: !914)
!917 = !DILocation(line: 799, column: 5, scope: !914)
!918 = !DILocation(line: 801, column: 2, scope: !919)
!919 = distinct !DILexicalBlock(scope: !908, file: !2, line: 800, column: 10)
!920 = !DILocation(line: 801, column: 6, scope: !919)
!921 = !DILocation(line: 801, column: 15, scope: !919)
!922 = !DILocation(line: 804, column: 47, scope: !752)
!923 = !DILocation(line: 804, column: 51, scope: !752)
!924 = !DILocation(line: 804, column: 23, scope: !752)
!925 = !DILocation(line: 804, column: 21, scope: !752)
!926 = !DILocation(line: 805, column: 17, scope: !752)
!927 = !DILocation(line: 805, column: 23, scope: !752)
!928 = !DILocation(line: 805, column: 60, scope: !752)
!929 = !DILocation(line: 805, column: 97, scope: !752)
!930 = !DILocation(line: 805, column: 100, scope: !752)
!931 = !DILocation(line: 805, column: 14, scope: !752)
!932 = !DILocation(line: 806, column: 21, scope: !752)
!933 = !DILocation(line: 806, column: 25, scope: !752)
!934 = !DILocation(line: 806, column: 43, scope: !752)
!935 = !DILocation(line: 806, column: 61, scope: !752)
!936 = !DILocation(line: 806, column: 64, scope: !752)
!937 = !DILocation(line: 806, column: 68, scope: !752)
!938 = !DILocation(line: 806, column: 86, scope: !752)
!939 = !DILocation(line: 806, column: 104, scope: !752)
!940 = !DILocation(line: 806, column: 107, scope: !752)
!941 = !DILocation(line: 806, column: 111, scope: !752)
!942 = !DILocation(line: 806, column: 129, scope: !752)
!943 = !DILocation(line: 806, column: 19, scope: !752)
!944 = !DILocation(line: 808, column: 9, scope: !782)
!945 = !DILocation(line: 808, column: 9, scope: !752)
!946 = !DILocation(line: 809, column: 9, scope: !781)
!947 = !DILocation(line: 809, column: 21, scope: !781)
!948 = !DILocation(line: 810, column: 9, scope: !781)
!949 = !DILocation(line: 810, column: 23, scope: !781)
!950 = !DILocation(line: 810, column: 51, scope: !781)
!951 = !DILocation(line: 810, column: 35, scope: !781)
!952 = !DILocation(line: 811, column: 13, scope: !953)
!953 = distinct !DILexicalBlock(scope: !781, file: !2, line: 811, column: 13)
!954 = !DILocation(line: 811, column: 23, scope: !953)
!955 = !DILocation(line: 811, column: 13, scope: !781)
!956 = !DILocation(line: 812, column: 28, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !2, line: 811, column: 32)
!958 = !DILocation(line: 812, column: 32, scope: !957)
!959 = !DILocation(line: 812, column: 13, scope: !957)
!960 = !DILocation(line: 813, column: 19, scope: !957)
!961 = !DILocation(line: 813, column: 6, scope: !957)
!962 = !DILocation(line: 814, column: 13, scope: !957)
!963 = !DILocation(line: 817, column: 13, scope: !964)
!964 = distinct !DILexicalBlock(scope: !781, file: !2, line: 817, column: 13)
!965 = !DILocation(line: 817, column: 19, scope: !964)
!966 = !DILocation(line: 817, column: 13, scope: !781)
!967 = !DILocation(line: 818, column: 18, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !2, line: 818, column: 17)
!969 = distinct !DILexicalBlock(scope: !964, file: !2, line: 817, column: 35)
!970 = !DILocation(line: 818, column: 24, scope: !968)
!971 = !DILocation(line: 818, column: 46, scope: !968)
!972 = !DILocation(line: 818, column: 49, scope: !968)
!973 = !DILocation(line: 818, column: 53, scope: !968)
!974 = !{!824, !249, i64 40}
!975 = !DILocation(line: 818, column: 63, scope: !968)
!976 = !DILocation(line: 818, column: 80, scope: !968)
!977 = !DILocation(line: 818, column: 83, scope: !968)
!978 = !DILocation(line: 818, column: 87, scope: !968)
!979 = !{!824, !249, i64 48}
!980 = !DILocation(line: 818, column: 99, scope: !968)
!981 = !DILocation(line: 818, column: 17, scope: !969)
!982 = !DILocation(line: 819, column: 36, scope: !983)
!983 = distinct !DILexicalBlock(scope: !968, file: !2, line: 818, column: 117)
!984 = !DILocation(line: 819, column: 47, scope: !983)
!985 = !DILocation(line: 819, column: 51, scope: !983)
!986 = !DILocation(line: 819, column: 17, scope: !983)
!987 = !DILocation(line: 820, column: 36, scope: !983)
!988 = !DILocation(line: 820, column: 47, scope: !983)
!989 = !DILocation(line: 820, column: 51, scope: !983)
!990 = !DILocation(line: 820, column: 17, scope: !983)
!991 = !DILocation(line: 821, column: 13, scope: !983)
!992 = !DILocation(line: 822, column: 9, scope: !969)
!993 = !DILocation(line: 824, column: 18, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 824, column: 17)
!995 = distinct !DILexicalBlock(scope: !964, file: !2, line: 823, column: 14)
!996 = !DILocation(line: 824, column: 24, scope: !994)
!997 = !DILocation(line: 824, column: 46, scope: !994)
!998 = !DILocation(line: 824, column: 49, scope: !994)
!999 = !DILocation(line: 824, column: 53, scope: !994)
!1000 = !DILocation(line: 824, column: 63, scope: !994)
!1001 = !DILocation(line: 824, column: 80, scope: !994)
!1002 = !DILocation(line: 824, column: 83, scope: !994)
!1003 = !DILocation(line: 824, column: 87, scope: !994)
!1004 = !DILocation(line: 824, column: 99, scope: !994)
!1005 = !DILocation(line: 824, column: 116, scope: !994)
!1006 = !DILocation(line: 824, column: 119, scope: !994)
!1007 = !DILocation(line: 824, column: 123, scope: !994)
!1008 = !{!824, !249, i64 96}
!1009 = !DILocation(line: 824, column: 130, scope: !994)
!1010 = !DILocation(line: 824, column: 17, scope: !995)
!1011 = !DILocation(line: 825, column: 21, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 825, column: 21)
!1013 = distinct !DILexicalBlock(scope: !994, file: !2, line: 824, column: 148)
!1014 = !DILocation(line: 825, column: 25, scope: !1012)
!1015 = !DILocation(line: 825, column: 37, scope: !1012)
!1016 = !DILocation(line: 825, column: 21, scope: !1013)
!1017 = !DILocation(line: 826, column: 40, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 825, column: 56)
!1019 = !DILocation(line: 826, column: 51, scope: !1018)
!1020 = !DILocation(line: 826, column: 55, scope: !1018)
!1021 = !DILocation(line: 826, column: 21, scope: !1018)
!1022 = !DILocation(line: 827, column: 17, scope: !1018)
!1023 = !DILocation(line: 828, column: 21, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 828, column: 21)
!1025 = !DILocation(line: 828, column: 25, scope: !1024)
!1026 = !DILocation(line: 828, column: 35, scope: !1024)
!1027 = !DILocation(line: 828, column: 21, scope: !1013)
!1028 = !DILocation(line: 829, column: 40, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 828, column: 54)
!1030 = !DILocation(line: 829, column: 51, scope: !1029)
!1031 = !DILocation(line: 829, column: 55, scope: !1029)
!1032 = !DILocation(line: 829, column: 21, scope: !1029)
!1033 = !DILocation(line: 830, column: 17, scope: !1029)
!1034 = !DILocation(line: 831, column: 21, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 831, column: 21)
!1036 = !DILocation(line: 831, column: 25, scope: !1035)
!1037 = !DILocation(line: 831, column: 32, scope: !1035)
!1038 = !DILocation(line: 831, column: 21, scope: !1013)
!1039 = !DILocation(line: 832, column: 40, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 831, column: 51)
!1041 = !DILocation(line: 832, column: 51, scope: !1040)
!1042 = !DILocation(line: 832, column: 55, scope: !1040)
!1043 = !DILocation(line: 832, column: 21, scope: !1040)
!1044 = !DILocation(line: 833, column: 17, scope: !1040)
!1045 = !DILocation(line: 834, column: 13, scope: !1013)
!1046 = !DILocation(line: 837, column: 29, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !781, file: !2, line: 837, column: 13)
!1048 = !DILocation(line: 837, column: 14, scope: !1047)
!1049 = !DILocation(line: 837, column: 13, scope: !781)
!1050 = !DILocation(line: 838, column: 28, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 837, column: 41)
!1052 = !DILocation(line: 838, column: 32, scope: !1051)
!1053 = !DILocation(line: 838, column: 13, scope: !1051)
!1054 = !DILocation(line: 839, column: 30, scope: !1051)
!1055 = !DILocation(line: 839, column: 13, scope: !1051)
!1056 = !DILocation(line: 840, column: 19, scope: !1051)
!1057 = !DILocation(line: 840, column: 6, scope: !1051)
!1058 = !DILocation(line: 841, column: 13, scope: !1051)
!1059 = !DILocation(line: 844, column: 76, scope: !781)
!1060 = !DILocation(line: 844, column: 57, scope: !781)
!1061 = !DILocation(line: 844, column: 42, scope: !781)
!1062 = !DILocation(line: 844, column: 89, scope: !781)
!1063 = !DILocation(line: 844, column: 16, scope: !781)
!1064 = !DILocation(line: 844, column: 14, scope: !781)
!1065 = !DILocation(line: 845, column: 26, scope: !781)
!1066 = !DILocation(line: 845, column: 9, scope: !781)
!1067 = !DILocation(line: 846, column: 22, scope: !781)
!1068 = !DILocation(line: 846, column: 9, scope: !781)
!1069 = !DILocation(line: 846, column: 15, scope: !781)
!1070 = !DILocation(line: 846, column: 20, scope: !781)
!1071 = !DILocation(line: 847, column: 14, scope: !781)
!1072 = !DILocation(line: 847, column: 12, scope: !781)
!1073 = !DILocation(line: 848, column: 5, scope: !782)
!1074 = !DILocation(line: 848, column: 5, scope: !781)
!1075 = !DILocation(line: 850, column: 9, scope: !789)
!1076 = !DILocation(line: 850, column: 9, scope: !752)
!1077 = !DILocation(line: 851, column: 2, scope: !788)
!1078 = !DILocation(line: 851, column: 14, scope: !788)
!1079 = !DILocation(line: 852, column: 9, scope: !788)
!1080 = !DILocation(line: 852, column: 23, scope: !788)
!1081 = !DILocation(line: 852, column: 51, scope: !788)
!1082 = !DILocation(line: 852, column: 35, scope: !788)
!1083 = !DILocation(line: 853, column: 2, scope: !788)
!1084 = !DILocation(line: 853, column: 21, scope: !788)
!1085 = !DILocation(line: 855, column: 13, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !788, file: !2, line: 855, column: 13)
!1087 = !DILocation(line: 855, column: 23, scope: !1086)
!1088 = !DILocation(line: 855, column: 13, scope: !788)
!1089 = !DILocation(line: 856, column: 28, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 855, column: 32)
!1091 = !DILocation(line: 856, column: 32, scope: !1090)
!1092 = !DILocation(line: 856, column: 13, scope: !1090)
!1093 = !DILocation(line: 857, column: 19, scope: !1090)
!1094 = !DILocation(line: 857, column: 6, scope: !1090)
!1095 = !DILocation(line: 858, column: 13, scope: !1090)
!1096 = !DILocation(line: 861, column: 21, scope: !788)
!1097 = !DILocation(line: 861, column: 2, scope: !788)
!1098 = !DILocation(line: 862, column: 18, scope: !788)
!1099 = !DILocation(line: 862, column: 2, scope: !788)
!1100 = !DILocation(line: 863, column: 20, scope: !788)
!1101 = !DILocation(line: 863, column: 45, scope: !788)
!1102 = !DILocation(line: 863, column: 49, scope: !788)
!1103 = !DILocation(line: 863, column: 67, scope: !788)
!1104 = !DILocation(line: 863, column: 31, scope: !788)
!1105 = !DILocation(line: 863, column: 2, scope: !788)
!1106 = !DILocation(line: 864, column: 21, scope: !788)
!1107 = !DILocation(line: 864, column: 46, scope: !788)
!1108 = !DILocation(line: 864, column: 50, scope: !788)
!1109 = !{!824, !511, i64 16}
!1110 = !DILocation(line: 864, column: 32, scope: !788)
!1111 = !DILocation(line: 864, column: 2, scope: !788)
!1112 = !DILocation(line: 866, column: 29, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !788, file: !2, line: 866, column: 13)
!1114 = !DILocation(line: 866, column: 14, scope: !1113)
!1115 = !DILocation(line: 866, column: 13, scope: !788)
!1116 = !DILocation(line: 867, column: 28, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 866, column: 41)
!1118 = !DILocation(line: 867, column: 32, scope: !1117)
!1119 = !DILocation(line: 867, column: 13, scope: !1117)
!1120 = !DILocation(line: 868, column: 30, scope: !1117)
!1121 = !DILocation(line: 868, column: 13, scope: !1117)
!1122 = !DILocation(line: 869, column: 19, scope: !1117)
!1123 = !DILocation(line: 869, column: 6, scope: !1117)
!1124 = !DILocation(line: 870, column: 13, scope: !1117)
!1125 = !DILocation(line: 873, column: 72, scope: !788)
!1126 = !DILocation(line: 873, column: 21, scope: !788)
!1127 = !DILocation(line: 873, column: 19, scope: !788)
!1128 = !DILocation(line: 874, column: 26, scope: !788)
!1129 = !DILocation(line: 874, column: 9, scope: !788)
!1130 = !DILocation(line: 875, column: 27, scope: !788)
!1131 = !DILocation(line: 875, column: 9, scope: !788)
!1132 = !DILocation(line: 875, column: 20, scope: !788)
!1133 = !DILocation(line: 875, column: 25, scope: !788)
!1134 = !DILocation(line: 876, column: 14, scope: !788)
!1135 = !DILocation(line: 876, column: 12, scope: !788)
!1136 = !DILocation(line: 877, column: 5, scope: !789)
!1137 = !DILocation(line: 877, column: 5, scope: !788)
!1138 = !DILocation(line: 879, column: 35, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !752, file: !2, line: 879, column: 9)
!1140 = !DILocation(line: 879, column: 19, scope: !1139)
!1141 = !DILocation(line: 879, column: 17, scope: !1139)
!1142 = !DILocation(line: 879, column: 54, scope: !1139)
!1143 = !DILocation(line: 879, column: 9, scope: !752)
!1144 = !DILocation(line: 880, column: 24, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 879, column: 63)
!1146 = !DILocation(line: 880, column: 28, scope: !1145)
!1147 = !DILocation(line: 880, column: 9, scope: !1145)
!1148 = !DILocation(line: 881, column: 22, scope: !1145)
!1149 = !DILocation(line: 881, column: 9, scope: !1145)
!1150 = !DILocation(line: 882, column: 9, scope: !1145)
!1151 = !DILocation(line: 885, column: 21, scope: !752)
!1152 = !DILocation(line: 885, column: 30, scope: !752)
!1153 = !DILocation(line: 885, column: 36, scope: !752)
!1154 = !DILocation(line: 885, column: 29, scope: !752)
!1155 = !DILocation(line: 885, column: 5, scope: !752)
!1156 = !DILocation(line: 887, column: 10, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !752, file: !2, line: 887, column: 9)
!1158 = !DILocation(line: 887, column: 16, scope: !1157)
!1159 = !DILocation(line: 887, column: 32, scope: !1157)
!1160 = !DILocation(line: 887, column: 9, scope: !752)
!1161 = !DILocation(line: 888, column: 28, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 887, column: 38)
!1163 = !DILocation(line: 888, column: 51, scope: !1162)
!1164 = !DILocation(line: 888, column: 74, scope: !1162)
!1165 = !DILocation(line: 888, column: 78, scope: !1162)
!1166 = !{!824, !697, i64 8}
!1167 = !DILocation(line: 888, column: 36, scope: !1162)
!1168 = !DILocation(line: 888, column: 9, scope: !1162)
!1169 = !DILocation(line: 889, column: 5, scope: !1162)
!1170 = !DILocation(line: 890, column: 24, scope: !752)
!1171 = !DILocation(line: 890, column: 47, scope: !752)
!1172 = !DILocation(line: 890, column: 70, scope: !752)
!1173 = !DILocation(line: 890, column: 74, scope: !752)
!1174 = !{!824, !697, i64 10}
!1175 = !DILocation(line: 890, column: 32, scope: !752)
!1176 = !DILocation(line: 890, column: 5, scope: !752)
!1177 = !DILocation(line: 891, column: 24, scope: !752)
!1178 = !DILocation(line: 891, column: 32, scope: !752)
!1179 = !DILocation(line: 891, column: 36, scope: !752)
!1180 = !DILocation(line: 891, column: 5, scope: !752)
!1181 = !DILocation(line: 892, column: 9, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !752, file: !2, line: 892, column: 9)
!1183 = !DILocation(line: 892, column: 9, scope: !752)
!1184 = !DILocation(line: 893, column: 21, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 892, column: 24)
!1186 = !DILocation(line: 893, column: 2, scope: !1185)
!1187 = !DILocation(line: 894, column: 5, scope: !1185)
!1188 = !DILocation(line: 896, column: 21, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 895, column: 10)
!1190 = !DILocation(line: 896, column: 43, scope: !1189)
!1191 = !DILocation(line: 896, column: 47, scope: !1189)
!1192 = !DILocation(line: 896, column: 29, scope: !1189)
!1193 = !DILocation(line: 896, column: 2, scope: !1189)
!1194 = !DILocation(line: 899, column: 19, scope: !752)
!1195 = !DILocation(line: 899, column: 23, scope: !752)
!1196 = !{!824, !249, i64 24}
!1197 = !DILocation(line: 899, column: 5, scope: !752)
!1198 = !DILocation(line: 900, column: 24, scope: !752)
!1199 = !DILocation(line: 900, column: 32, scope: !752)
!1200 = !{!697, !697, i64 0}
!1201 = !DILocation(line: 900, column: 5, scope: !752)
!1202 = !DILocation(line: 901, column: 24, scope: !752)
!1203 = !DILocation(line: 901, column: 32, scope: !752)
!1204 = !DILocation(line: 901, column: 5, scope: !752)
!1205 = !DILocation(line: 903, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !752, file: !2, line: 903, column: 9)
!1207 = !DILocation(line: 903, column: 23, scope: !1206)
!1208 = !DILocation(line: 903, column: 26, scope: !1206)
!1209 = !DILocation(line: 903, column: 30, scope: !1206)
!1210 = !DILocation(line: 903, column: 42, scope: !1206)
!1211 = !DILocation(line: 903, column: 9, scope: !752)
!1212 = !DILocation(line: 904, column: 21, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 903, column: 49)
!1214 = !DILocation(line: 904, column: 2, scope: !1213)
!1215 = !DILocation(line: 905, column: 5, scope: !1213)
!1216 = !DILocation(line: 907, column: 21, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 906, column: 10)
!1218 = !DILocation(line: 907, column: 29, scope: !1217)
!1219 = !DILocation(line: 907, column: 33, scope: !1217)
!1220 = !{!824, !511, i64 32}
!1221 = !DILocation(line: 907, column: 2, scope: !1217)
!1222 = !DILocation(line: 910, column: 11, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !752, file: !2, line: 910, column: 9)
!1224 = !DILocation(line: 910, column: 17, scope: !1223)
!1225 = !DILocation(line: 910, column: 33, scope: !1223)
!1226 = !DILocation(line: 910, column: 50, scope: !1223)
!1227 = !DILocation(line: 910, column: 55, scope: !1223)
!1228 = !DILocation(line: 910, column: 59, scope: !1223)
!1229 = !DILocation(line: 910, column: 69, scope: !1223)
!1230 = !DILocation(line: 910, column: 88, scope: !1223)
!1231 = !DILocation(line: 910, column: 92, scope: !1223)
!1232 = !DILocation(line: 910, column: 96, scope: !1223)
!1233 = !DILocation(line: 910, column: 108, scope: !1223)
!1234 = !DILocation(line: 910, column: 9, scope: !752)
!1235 = !DILocation(line: 916, column: 21, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 910, column: 129)
!1237 = !DILocation(line: 916, column: 2, scope: !1236)
!1238 = !DILocation(line: 917, column: 21, scope: !1236)
!1239 = !DILocation(line: 917, column: 2, scope: !1236)
!1240 = !DILocation(line: 918, column: 5, scope: !1236)
!1241 = !DILocation(line: 920, column: 13, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 920, column: 13)
!1243 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 919, column: 10)
!1244 = !DILocation(line: 920, column: 17, scope: !1242)
!1245 = !DILocation(line: 920, column: 27, scope: !1242)
!1246 = !DILocation(line: 920, column: 13, scope: !1243)
!1247 = !DILocation(line: 921, column: 25, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 920, column: 45)
!1249 = !DILocation(line: 921, column: 47, scope: !1248)
!1250 = !DILocation(line: 921, column: 51, scope: !1248)
!1251 = !DILocation(line: 921, column: 33, scope: !1248)
!1252 = !DILocation(line: 921, column: 6, scope: !1248)
!1253 = !DILocation(line: 922, column: 9, scope: !1248)
!1254 = !DILocation(line: 924, column: 25, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 923, column: 14)
!1256 = !DILocation(line: 924, column: 6, scope: !1255)
!1257 = !DILocation(line: 926, column: 13, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 926, column: 13)
!1259 = !DILocation(line: 926, column: 17, scope: !1258)
!1260 = !DILocation(line: 926, column: 29, scope: !1258)
!1261 = !DILocation(line: 926, column: 13, scope: !1243)
!1262 = !DILocation(line: 927, column: 25, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 926, column: 47)
!1264 = !DILocation(line: 927, column: 47, scope: !1263)
!1265 = !DILocation(line: 927, column: 51, scope: !1263)
!1266 = !DILocation(line: 927, column: 33, scope: !1263)
!1267 = !DILocation(line: 927, column: 6, scope: !1263)
!1268 = !DILocation(line: 928, column: 9, scope: !1263)
!1269 = !DILocation(line: 930, column: 25, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 929, column: 14)
!1271 = !DILocation(line: 930, column: 6, scope: !1270)
!1272 = !DILocation(line: 934, column: 24, scope: !752)
!1273 = !DILocation(line: 934, column: 51, scope: !752)
!1274 = !DILocation(line: 934, column: 55, scope: !752)
!1275 = !DILocation(line: 934, column: 32, scope: !752)
!1276 = !DILocation(line: 934, column: 5, scope: !752)
!1277 = !DILocation(line: 936, column: 48, scope: !752)
!1278 = !DILocation(line: 936, column: 52, scope: !752)
!1279 = !{!824, !236, i64 64}
!1280 = !DILocation(line: 936, column: 66, scope: !752)
!1281 = !DILocation(line: 936, column: 35, scope: !752)
!1282 = !DILocation(line: 936, column: 21, scope: !752)
!1283 = !DILocation(line: 936, column: 102, scope: !752)
!1284 = !DILocation(line: 936, column: 89, scope: !752)
!1285 = !DILocation(line: 936, column: 75, scope: !752)
!1286 = !DILocation(line: 936, column: 73, scope: !752)
!1287 = !DILocation(line: 936, column: 19, scope: !752)
!1288 = !DILocation(line: 937, column: 24, scope: !752)
!1289 = !DILocation(line: 937, column: 46, scope: !752)
!1290 = !DILocation(line: 937, column: 32, scope: !752)
!1291 = !DILocation(line: 937, column: 5, scope: !752)
!1292 = !DILocation(line: 939, column: 10, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !752, file: !2, line: 939, column: 9)
!1294 = !DILocation(line: 939, column: 16, scope: !1293)
!1295 = !DILocation(line: 939, column: 32, scope: !1293)
!1296 = !DILocation(line: 939, column: 9, scope: !752)
!1297 = !DILocation(line: 940, column: 21, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 939, column: 38)
!1299 = !DILocation(line: 940, column: 48, scope: !1298)
!1300 = !DILocation(line: 940, column: 52, scope: !1298)
!1301 = !DILocation(line: 940, column: 29, scope: !1298)
!1302 = !DILocation(line: 940, column: 2, scope: !1298)
!1303 = !DILocation(line: 941, column: 21, scope: !1298)
!1304 = !DILocation(line: 941, column: 43, scope: !1298)
!1305 = !DILocation(line: 941, column: 47, scope: !1298)
!1306 = !{!824, !511, i64 80}
!1307 = !DILocation(line: 941, column: 29, scope: !1298)
!1308 = !DILocation(line: 941, column: 2, scope: !1298)
!1309 = !DILocation(line: 942, column: 21, scope: !1298)
!1310 = !DILocation(line: 942, column: 29, scope: !1298)
!1311 = !DILocation(line: 942, column: 33, scope: !1298)
!1312 = !{!824, !697, i64 84}
!1313 = !DILocation(line: 942, column: 2, scope: !1298)
!1314 = !DILocation(line: 943, column: 21, scope: !1298)
!1315 = !DILocation(line: 943, column: 29, scope: !1298)
!1316 = !DILocation(line: 943, column: 33, scope: !1298)
!1317 = !{!824, !511, i64 88}
!1318 = !DILocation(line: 943, column: 2, scope: !1298)
!1319 = !DILocation(line: 944, column: 6, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 944, column: 6)
!1321 = !DILocation(line: 944, column: 10, scope: !1320)
!1322 = !DILocation(line: 944, column: 17, scope: !1320)
!1323 = !DILocation(line: 944, column: 6, scope: !1298)
!1324 = !DILocation(line: 945, column: 25, scope: !1320)
!1325 = !DILocation(line: 945, column: 47, scope: !1320)
!1326 = !DILocation(line: 945, column: 51, scope: !1320)
!1327 = !DILocation(line: 945, column: 33, scope: !1320)
!1328 = !DILocation(line: 945, column: 6, scope: !1320)
!1329 = !DILocation(line: 947, column: 25, scope: !1320)
!1330 = !DILocation(line: 947, column: 6, scope: !1320)
!1331 = !DILocation(line: 948, column: 5, scope: !1298)
!1332 = !DILocation(line: 950, column: 25, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !752, file: !2, line: 950, column: 9)
!1334 = !DILocation(line: 950, column: 10, scope: !1333)
!1335 = !DILocation(line: 950, column: 9, scope: !752)
!1336 = !DILocation(line: 951, column: 24, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 950, column: 34)
!1338 = !DILocation(line: 951, column: 28, scope: !1337)
!1339 = !DILocation(line: 951, column: 9, scope: !1337)
!1340 = !DILocation(line: 952, column: 26, scope: !1337)
!1341 = !DILocation(line: 952, column: 9, scope: !1337)
!1342 = !DILocation(line: 953, column: 22, scope: !1337)
!1343 = !DILocation(line: 953, column: 9, scope: !1337)
!1344 = !DILocation(line: 954, column: 9, scope: !1337)
!1345 = !DILocation(line: 957, column: 20, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !752, file: !2, line: 957, column: 9)
!1347 = !DILocation(line: 957, column: 24, scope: !1346)
!1348 = !DILocation(line: 957, column: 48, scope: !1346)
!1349 = !DILocation(line: 957, column: 29, scope: !1346)
!1350 = !DILocation(line: 957, column: 9, scope: !1346)
!1351 = !DILocation(line: 957, column: 57, scope: !1346)
!1352 = !DILocation(line: 957, column: 9, scope: !752)
!1353 = !DILocation(line: 958, column: 26, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1346, file: !2, line: 957, column: 62)
!1355 = !DILocation(line: 958, column: 9, scope: !1354)
!1356 = !DILocation(line: 959, column: 22, scope: !1354)
!1357 = !DILocation(line: 959, column: 9, scope: !1354)
!1358 = !DILocation(line: 960, column: 9, scope: !1354)
!1359 = !DILocation(line: 963, column: 22, scope: !752)
!1360 = !DILocation(line: 963, column: 5, scope: !752)
!1361 = !DILocation(line: 965, column: 9, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !752, file: !2, line: 965, column: 9)
!1363 = !DILocation(line: 965, column: 13, scope: !1362)
!1364 = !DILocation(line: 965, column: 9, scope: !752)
!1365 = !DILocation(line: 966, column: 24, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 966, column: 6)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 965, column: 23)
!1368 = !DILocation(line: 966, column: 28, scope: !1366)
!1369 = !DILocation(line: 966, column: 32, scope: !1366)
!1370 = !DILocation(line: 966, column: 6, scope: !1366)
!1371 = !DILocation(line: 966, column: 42, scope: !1366)
!1372 = !DILocation(line: 966, column: 6, scope: !1367)
!1373 = !DILocation(line: 967, column: 26, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 966, column: 47)
!1375 = !DILocation(line: 967, column: 13, scope: !1374)
!1376 = !DILocation(line: 968, column: 6, scope: !1374)
!1377 = !DILocation(line: 970, column: 5, scope: !1367)
!1378 = !DILocation(line: 972, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !752, file: !2, line: 972, column: 9)
!1380 = !DILocation(line: 972, column: 9, scope: !752)
!1381 = !DILocation(line: 973, column: 20, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 973, column: 6)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 972, column: 13)
!1384 = !DILocation(line: 973, column: 24, scope: !1382)
!1385 = !DILocation(line: 973, column: 6, scope: !1382)
!1386 = !DILocation(line: 973, column: 41, scope: !1382)
!1387 = !DILocation(line: 973, column: 6, scope: !1383)
!1388 = !DILocation(line: 974, column: 26, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 973, column: 46)
!1390 = !DILocation(line: 974, column: 13, scope: !1389)
!1391 = !DILocation(line: 975, column: 6, scope: !1389)
!1392 = !DILocation(line: 977, column: 5, scope: !1383)
!1393 = !DILocation(line: 978, column: 18, scope: !752)
!1394 = !DILocation(line: 978, column: 5, scope: !752)
!1395 = !DILocation(line: 979, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !752, file: !2, line: 979, column: 9)
!1397 = !DILocation(line: 979, column: 13, scope: !1396)
!1398 = !DILocation(line: 979, column: 9, scope: !752)
!1399 = !DILocation(line: 980, column: 20, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 980, column: 6)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 979, column: 27)
!1402 = !DILocation(line: 980, column: 24, scope: !1400)
!1403 = !DILocation(line: 980, column: 28, scope: !1400)
!1404 = !DILocation(line: 980, column: 42, scope: !1400)
!1405 = !DILocation(line: 980, column: 6, scope: !1400)
!1406 = !DILocation(line: 980, column: 49, scope: !1400)
!1407 = !DILocation(line: 980, column: 6, scope: !1401)
!1408 = !DILocation(line: 981, column: 6, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 980, column: 54)
!1410 = !DILocation(line: 983, column: 5, scope: !1401)
!1411 = !DILocation(line: 985, column: 10, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !752, file: !2, line: 985, column: 9)
!1413 = !DILocation(line: 985, column: 16, scope: !1412)
!1414 = !DILocation(line: 985, column: 32, scope: !1412)
!1415 = !DILocation(line: 985, column: 9, scope: !752)
!1416 = !DILocation(line: 986, column: 6, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 986, column: 6)
!1418 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 985, column: 38)
!1419 = !DILocation(line: 986, column: 10, scope: !1417)
!1420 = !DILocation(line: 986, column: 6, scope: !1418)
!1421 = !DILocation(line: 987, column: 28, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !2, line: 987, column: 10)
!1423 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 986, column: 19)
!1424 = !DILocation(line: 987, column: 32, scope: !1422)
!1425 = !DILocation(line: 987, column: 36, scope: !1422)
!1426 = !DILocation(line: 987, column: 10, scope: !1422)
!1427 = !DILocation(line: 987, column: 45, scope: !1422)
!1428 = !DILocation(line: 987, column: 10, scope: !1423)
!1429 = !DILocation(line: 988, column: 3, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 987, column: 50)
!1431 = !DILocation(line: 990, column: 2, scope: !1423)
!1432 = !DILocation(line: 991, column: 5, scope: !1418)
!1433 = !DILocation(line: 994, column: 12, scope: !752)
!1434 = !DILocation(line: 994, column: 5, scope: !752)
!1435 = !DILocation(line: 995, column: 1, scope: !752)
!1436 = !DISubprogram(name: "_zip_buffer_new", scope: !23, file: !23, line: 417, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!469, !115, !104}
!1439 = !DISubprogram(name: "_zip_buffer_put", scope: !23, file: !23, line: 422, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!96, !469, !1442, !220}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1444 = !DISubprogram(name: "_zip_buffer_put_64", scope: !23, file: !23, line: 425, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!96, !469, !104}
!1447 = !DISubprogram(name: "_zip_buffer_put_16", scope: !23, file: !23, line: 423, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!96, !469, !85}
!1450 = !DISubprogram(name: "_zip_buffer_put_32", scope: !23, file: !23, line: 424, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!96, !469, !74}
!1453 = !DISubprogram(name: "_zip_buffer_ok", scope: !23, file: !23, line: 420, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!81, !469}
!1456 = !DISubprogram(name: "_zip_buffer_free", scope: !23, file: !23, line: 410, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !469}
!1459 = !DISubprogram(name: "_zip_write", scope: !23, file: !23, line: 543, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!96, !183, !1442, !104}
!1462 = !DISubprogram(name: "_zip_buffer_data", scope: !23, file: !23, line: 408, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!115, !469}
!1465 = !DISubprogram(name: "_zip_buffer_offset", scope: !23, file: !23, line: 419, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!104, !469}
!1468 = distinct !DISubprogram(name: "_zip_dirent_clone", scope: !2, file: !2, line: 221, type: !1469, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1473)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!69, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!1473 = !{!1474, !1475}
!1474 = !DILocalVariable(name: "sde", arg: 1, scope: !1468, file: !2, line: 221, type: !1471)
!1475 = !DILocalVariable(name: "tde", scope: !1468, file: !2, line: 223, type: !69)
!1476 = !DILocation(line: 221, column: 39, scope: !1468)
!1477 = !DILocation(line: 223, column: 5, scope: !1468)
!1478 = !DILocation(line: 223, column: 19, scope: !1468)
!1479 = !DILocation(line: 225, column: 30, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 225, column: 9)
!1481 = !DILocation(line: 225, column: 13, scope: !1480)
!1482 = !DILocation(line: 225, column: 52, scope: !1480)
!1483 = !DILocation(line: 225, column: 9, scope: !1468)
!1484 = !DILocation(line: 226, column: 2, scope: !1480)
!1485 = !DILocation(line: 228, column: 9, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 228, column: 9)
!1487 = !DILocation(line: 228, column: 9, scope: !1468)
!1488 = !DILocation(line: 229, column: 9, scope: !1486)
!1489 = !DILocation(line: 229, column: 14, scope: !1486)
!1490 = !DILocation(line: 229, column: 2, scope: !1486)
!1491 = !DILocation(line: 231, column: 19, scope: !1486)
!1492 = !DILocation(line: 231, column: 2, scope: !1486)
!1493 = !DILocation(line: 233, column: 5, scope: !1468)
!1494 = !DILocation(line: 233, column: 10, scope: !1468)
!1495 = !DILocation(line: 233, column: 18, scope: !1468)
!1496 = !{!824, !511, i64 0}
!1497 = !DILocation(line: 234, column: 5, scope: !1468)
!1498 = !DILocation(line: 234, column: 10, scope: !1468)
!1499 = !DILocation(line: 234, column: 17, scope: !1468)
!1500 = !{!824, !257, i64 5}
!1501 = !DILocation(line: 236, column: 12, scope: !1468)
!1502 = !DILocation(line: 236, column: 5, scope: !1468)
!1503 = !DILocation(line: 237, column: 1, scope: !1468)
!1504 = distinct !DISubprogram(name: "_zip_dirent_init", scope: !2, file: !2, line: 277, type: !1505, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !69}
!1507 = !{!1508}
!1508 = !DILocalVariable(name: "de", arg: 1, scope: !1504, file: !2, line: 277, type: !69)
!1509 = !DILocation(line: 277, column: 32, scope: !1504)
!1510 = !DILocation(line: 279, column: 5, scope: !1504)
!1511 = !DILocation(line: 279, column: 9, scope: !1504)
!1512 = !DILocation(line: 279, column: 17, scope: !1504)
!1513 = !DILocation(line: 280, column: 5, scope: !1504)
!1514 = !DILocation(line: 280, column: 9, scope: !1504)
!1515 = !DILocation(line: 280, column: 33, scope: !1504)
!1516 = !{!824, !257, i64 4}
!1517 = !DILocation(line: 281, column: 5, scope: !1504)
!1518 = !DILocation(line: 281, column: 9, scope: !1504)
!1519 = !DILocation(line: 281, column: 16, scope: !1504)
!1520 = !DILocation(line: 283, column: 5, scope: !1504)
!1521 = !DILocation(line: 283, column: 9, scope: !1504)
!1522 = !DILocation(line: 283, column: 19, scope: !1504)
!1523 = !{!824, !257, i64 6}
!1524 = !DILocation(line: 284, column: 5, scope: !1504)
!1525 = !DILocation(line: 284, column: 9, scope: !1504)
!1526 = !DILocation(line: 284, column: 24, scope: !1504)
!1527 = !DILocation(line: 285, column: 5, scope: !1504)
!1528 = !DILocation(line: 285, column: 9, scope: !1504)
!1529 = !DILocation(line: 285, column: 24, scope: !1504)
!1530 = !DILocation(line: 286, column: 5, scope: !1504)
!1531 = !DILocation(line: 286, column: 9, scope: !1504)
!1532 = !DILocation(line: 286, column: 18, scope: !1504)
!1533 = !DILocation(line: 287, column: 5, scope: !1504)
!1534 = !DILocation(line: 287, column: 9, scope: !1504)
!1535 = !DILocation(line: 287, column: 21, scope: !1504)
!1536 = !DILocation(line: 288, column: 5, scope: !1504)
!1537 = !DILocation(line: 288, column: 9, scope: !1504)
!1538 = !DILocation(line: 288, column: 18, scope: !1504)
!1539 = !DILocation(line: 289, column: 5, scope: !1504)
!1540 = !DILocation(line: 289, column: 9, scope: !1504)
!1541 = !DILocation(line: 289, column: 13, scope: !1504)
!1542 = !DILocation(line: 290, column: 5, scope: !1504)
!1543 = !DILocation(line: 290, column: 9, scope: !1504)
!1544 = !DILocation(line: 290, column: 19, scope: !1504)
!1545 = !DILocation(line: 291, column: 5, scope: !1504)
!1546 = !DILocation(line: 291, column: 9, scope: !1504)
!1547 = !DILocation(line: 291, column: 21, scope: !1504)
!1548 = !DILocation(line: 292, column: 5, scope: !1504)
!1549 = !DILocation(line: 292, column: 9, scope: !1504)
!1550 = !DILocation(line: 292, column: 18, scope: !1504)
!1551 = !DILocation(line: 293, column: 5, scope: !1504)
!1552 = !DILocation(line: 293, column: 9, scope: !1504)
!1553 = !DILocation(line: 293, column: 22, scope: !1504)
!1554 = !DILocation(line: 294, column: 5, scope: !1504)
!1555 = !DILocation(line: 294, column: 9, scope: !1504)
!1556 = !DILocation(line: 294, column: 17, scope: !1504)
!1557 = !DILocation(line: 295, column: 5, scope: !1504)
!1558 = !DILocation(line: 295, column: 9, scope: !1504)
!1559 = !DILocation(line: 295, column: 21, scope: !1504)
!1560 = !DILocation(line: 296, column: 5, scope: !1504)
!1561 = !DILocation(line: 296, column: 9, scope: !1504)
!1562 = !DILocation(line: 296, column: 20, scope: !1504)
!1563 = !DILocation(line: 297, column: 5, scope: !1504)
!1564 = !DILocation(line: 297, column: 9, scope: !1504)
!1565 = !DILocation(line: 297, column: 20, scope: !1504)
!1566 = !DILocation(line: 298, column: 5, scope: !1504)
!1567 = !DILocation(line: 298, column: 9, scope: !1504)
!1568 = !DILocation(line: 298, column: 16, scope: !1504)
!1569 = !DILocation(line: 299, column: 5, scope: !1504)
!1570 = !DILocation(line: 299, column: 9, scope: !1504)
!1571 = !DILocation(line: 299, column: 27, scope: !1504)
!1572 = !{!824, !697, i64 104}
!1573 = !DILocation(line: 300, column: 5, scope: !1504)
!1574 = !DILocation(line: 300, column: 9, scope: !1504)
!1575 = !DILocation(line: 300, column: 27, scope: !1504)
!1576 = !DILocation(line: 301, column: 5, scope: !1504)
!1577 = !DILocation(line: 301, column: 9, scope: !1504)
!1578 = !DILocation(line: 301, column: 18, scope: !1504)
!1579 = !{!824, !236, i64 112}
!1580 = !DILocation(line: 302, column: 1, scope: !1504)
!1581 = distinct !DISubprogram(name: "_zip_dirent_finalize", scope: !2, file: !2, line: 241, type: !1505, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1582)
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "zde", arg: 1, scope: !1581, file: !2, line: 241, type: !69)
!1584 = !DILocation(line: 241, column: 36, scope: !1581)
!1585 = !DILocation(line: 243, column: 10, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 243, column: 9)
!1587 = !DILocation(line: 243, column: 15, scope: !1586)
!1588 = !DILocation(line: 243, column: 22, scope: !1586)
!1589 = !DILocation(line: 243, column: 25, scope: !1586)
!1590 = !DILocation(line: 243, column: 30, scope: !1586)
!1591 = !DILocation(line: 243, column: 38, scope: !1586)
!1592 = !DILocation(line: 243, column: 9, scope: !1581)
!1593 = !DILocation(line: 244, column: 19, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 243, column: 61)
!1595 = !DILocation(line: 244, column: 24, scope: !1594)
!1596 = !DILocation(line: 244, column: 2, scope: !1594)
!1597 = !DILocation(line: 245, column: 2, scope: !1594)
!1598 = !DILocation(line: 245, column: 7, scope: !1594)
!1599 = !DILocation(line: 245, column: 16, scope: !1594)
!1600 = !DILocation(line: 246, column: 5, scope: !1594)
!1601 = !DILocation(line: 247, column: 10, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 247, column: 9)
!1603 = !DILocation(line: 247, column: 15, scope: !1602)
!1604 = !DILocation(line: 247, column: 22, scope: !1602)
!1605 = !DILocation(line: 247, column: 25, scope: !1602)
!1606 = !DILocation(line: 247, column: 30, scope: !1602)
!1607 = !DILocation(line: 247, column: 38, scope: !1602)
!1608 = !DILocation(line: 247, column: 9, scope: !1581)
!1609 = !DILocation(line: 248, column: 15, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 247, column: 64)
!1611 = !DILocation(line: 248, column: 20, scope: !1610)
!1612 = !DILocation(line: 248, column: 2, scope: !1610)
!1613 = !DILocation(line: 249, column: 2, scope: !1610)
!1614 = !DILocation(line: 249, column: 7, scope: !1610)
!1615 = !DILocation(line: 249, column: 20, scope: !1610)
!1616 = !DILocation(line: 250, column: 5, scope: !1610)
!1617 = !DILocation(line: 251, column: 10, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 251, column: 9)
!1619 = !DILocation(line: 251, column: 15, scope: !1618)
!1620 = !DILocation(line: 251, column: 22, scope: !1618)
!1621 = !DILocation(line: 251, column: 25, scope: !1618)
!1622 = !DILocation(line: 251, column: 30, scope: !1618)
!1623 = !DILocation(line: 251, column: 38, scope: !1618)
!1624 = !DILocation(line: 251, column: 9, scope: !1581)
!1625 = !DILocation(line: 252, column: 19, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 251, column: 60)
!1627 = !DILocation(line: 252, column: 24, scope: !1626)
!1628 = !DILocation(line: 252, column: 2, scope: !1626)
!1629 = !DILocation(line: 253, column: 2, scope: !1626)
!1630 = !DILocation(line: 253, column: 7, scope: !1626)
!1631 = !DILocation(line: 253, column: 15, scope: !1626)
!1632 = !DILocation(line: 254, column: 5, scope: !1626)
!1633 = !DILocation(line: 255, column: 10, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 255, column: 9)
!1635 = !DILocation(line: 255, column: 15, scope: !1634)
!1636 = !DILocation(line: 255, column: 22, scope: !1634)
!1637 = !DILocation(line: 255, column: 25, scope: !1634)
!1638 = !DILocation(line: 255, column: 30, scope: !1634)
!1639 = !DILocation(line: 255, column: 38, scope: !1634)
!1640 = !DILocation(line: 255, column: 9, scope: !1581)
!1641 = !DILocation(line: 256, column: 6, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 256, column: 6)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !2, line: 255, column: 61)
!1644 = !DILocation(line: 256, column: 11, scope: !1642)
!1645 = !DILocation(line: 256, column: 6, scope: !1643)
!1646 = !DILocation(line: 257, column: 6, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 256, column: 21)
!1648 = !DILocation(line: 258, column: 2, scope: !1647)
!1649 = !DILocation(line: 259, column: 7, scope: !1643)
!1650 = !DILocation(line: 259, column: 12, scope: !1643)
!1651 = !DILocation(line: 259, column: 2, scope: !1643)
!1652 = !DILocation(line: 260, column: 2, scope: !1643)
!1653 = !DILocation(line: 260, column: 7, scope: !1643)
!1654 = !DILocation(line: 260, column: 16, scope: !1643)
!1655 = !DILocation(line: 261, column: 5, scope: !1643)
!1656 = !DILocation(line: 262, column: 1, scope: !1581)
!1657 = !DISubprogram(name: "_zip_ef_free", scope: !23, file: !23, line: 452, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !125}
!1660 = !DISubprogram(name: "explicit_bzero", scope: !1661, file: !1661, line: 466, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1662 = !DISubroutineType(types: !1663)
!1663 = !{null, !162, !220}
!1664 = !DISubprogram(name: "strlen", scope: !1661, file: !1661, line: 407, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!107, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1669 = distinct !DISubprogram(name: "_zip_dirent_free", scope: !2, file: !2, line: 266, type: !1505, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1670)
!1670 = !{!1671}
!1671 = !DILocalVariable(name: "zde", arg: 1, scope: !1669, file: !2, line: 266, type: !69)
!1672 = !DILocation(line: 266, column: 32, scope: !1669)
!1673 = !DILocation(line: 268, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 268, column: 9)
!1675 = !DILocation(line: 268, column: 13, scope: !1674)
!1676 = !DILocation(line: 268, column: 9, scope: !1669)
!1677 = !DILocation(line: 269, column: 2, scope: !1674)
!1678 = !DILocation(line: 271, column: 26, scope: !1669)
!1679 = !DILocation(line: 271, column: 5, scope: !1669)
!1680 = !DILocation(line: 272, column: 10, scope: !1669)
!1681 = !DILocation(line: 272, column: 5, scope: !1669)
!1682 = !DILocation(line: 273, column: 1, scope: !1669)
!1683 = distinct !DISubprogram(name: "_zip_dirent_needs_zip64", scope: !2, file: !2, line: 306, type: !1684, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!81, !1471, !131}
!1686 = !{!1687, !1688}
!1687 = !DILocalVariable(name: "de", arg: 1, scope: !1683, file: !2, line: 306, type: !1471)
!1688 = !DILocalVariable(name: "flags", arg: 2, scope: !1683, file: !2, line: 306, type: !131)
!1689 = !DILocation(line: 306, column: 45, scope: !1683)
!1690 = !DILocation(line: 306, column: 61, scope: !1683)
!1691 = !DILocation(line: 308, column: 9, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 308, column: 9)
!1693 = !DILocation(line: 308, column: 13, scope: !1692)
!1694 = !DILocation(line: 308, column: 25, scope: !1692)
!1695 = !DILocation(line: 308, column: 43, scope: !1692)
!1696 = !DILocation(line: 308, column: 46, scope: !1692)
!1697 = !DILocation(line: 308, column: 50, scope: !1692)
!1698 = !DILocation(line: 308, column: 60, scope: !1692)
!1699 = !DILocation(line: 309, column: 2, scope: !1692)
!1700 = !DILocation(line: 309, column: 7, scope: !1692)
!1701 = !DILocation(line: 309, column: 13, scope: !1692)
!1702 = !DILocation(line: 309, column: 31, scope: !1692)
!1703 = !DILocation(line: 309, column: 34, scope: !1692)
!1704 = !DILocation(line: 309, column: 38, scope: !1692)
!1705 = !DILocation(line: 309, column: 45, scope: !1692)
!1706 = !DILocation(line: 308, column: 9, scope: !1683)
!1707 = !DILocation(line: 310, column: 2, scope: !1692)
!1708 = !DILocation(line: 312, column: 5, scope: !1683)
!1709 = !DILocation(line: 313, column: 1, scope: !1683)
!1710 = distinct !DISubprogram(name: "_zip_dirent_new", scope: !2, file: !2, line: 317, type: !1711, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!69}
!1713 = !{!1714}
!1714 = !DILocalVariable(name: "de", scope: !1710, file: !2, line: 319, type: !69)
!1715 = !DILocation(line: 319, column: 5, scope: !1710)
!1716 = !DILocation(line: 319, column: 19, scope: !1710)
!1717 = !DILocation(line: 321, column: 29, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 321, column: 9)
!1719 = !DILocation(line: 321, column: 12, scope: !1718)
!1720 = !DILocation(line: 321, column: 50, scope: !1718)
!1721 = !DILocation(line: 321, column: 9, scope: !1710)
!1722 = !DILocation(line: 322, column: 2, scope: !1718)
!1723 = !DILocation(line: 324, column: 22, scope: !1710)
!1724 = !DILocation(line: 324, column: 5, scope: !1710)
!1725 = !DILocation(line: 325, column: 12, scope: !1710)
!1726 = !DILocation(line: 325, column: 5, scope: !1710)
!1727 = !DILocation(line: 326, column: 1, scope: !1710)
!1728 = distinct !DISubprogram(name: "_zip_dirent_read", scope: !2, file: !2, line: 340, type: !1729, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!159, !69, !146, !469, !81, !294}
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1749, !1752, !1753}
!1732 = !DILocalVariable(name: "zde", arg: 1, scope: !1728, file: !2, line: 340, type: !69)
!1733 = !DILocalVariable(name: "src", arg: 2, scope: !1728, file: !2, line: 340, type: !146)
!1734 = !DILocalVariable(name: "buffer", arg: 3, scope: !1728, file: !2, line: 340, type: !469)
!1735 = !DILocalVariable(name: "local", arg: 4, scope: !1728, file: !2, line: 340, type: !81)
!1736 = !DILocalVariable(name: "error", arg: 5, scope: !1728, file: !2, line: 340, type: !294)
!1737 = !DILocalVariable(name: "buf", scope: !1728, file: !2, line: 342, type: !771)
!1738 = !DILocalVariable(name: "dostime", scope: !1728, file: !2, line: 343, type: !85)
!1739 = !DILocalVariable(name: "dosdate", scope: !1728, file: !2, line: 343, type: !85)
!1740 = !DILocalVariable(name: "size", scope: !1728, file: !2, line: 344, type: !74)
!1741 = !DILocalVariable(name: "variable_size", scope: !1728, file: !2, line: 344, type: !74)
!1742 = !DILocalVariable(name: "filename_len", scope: !1728, file: !2, line: 345, type: !85)
!1743 = !DILocalVariable(name: "comment_len", scope: !1728, file: !2, line: 345, type: !85)
!1744 = !DILocalVariable(name: "ef_len", scope: !1728, file: !2, line: 345, type: !85)
!1745 = !DILocalVariable(name: "from_buffer", scope: !1728, file: !2, line: 347, type: !81)
!1746 = !DILocalVariable(name: "ef", scope: !1747, file: !2, line: 473, type: !115)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 472, column: 17)
!1748 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 472, column: 9)
!1749 = !DILocalVariable(name: "got_len", scope: !1750, file: !2, line: 518, type: !85)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !2, line: 517, column: 114)
!1751 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 517, column: 9)
!1752 = !DILocalVariable(name: "ef_buffer", scope: !1750, file: !2, line: 519, type: !469)
!1753 = !DILocalVariable(name: "ef", scope: !1750, file: !2, line: 520, type: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1756 = !DILocation(line: 340, column: 32, scope: !1728)
!1757 = !DILocation(line: 340, column: 51, scope: !1728)
!1758 = !DILocation(line: 340, column: 70, scope: !1728)
!1759 = !DILocation(line: 340, column: 83, scope: !1728)
!1760 = !DILocation(line: 340, column: 103, scope: !1728)
!1761 = !DILocation(line: 342, column: 5, scope: !1728)
!1762 = !DILocation(line: 342, column: 17, scope: !1728)
!1763 = !DILocation(line: 343, column: 5, scope: !1728)
!1764 = !DILocation(line: 343, column: 18, scope: !1728)
!1765 = !DILocation(line: 343, column: 27, scope: !1728)
!1766 = !DILocation(line: 344, column: 5, scope: !1728)
!1767 = !DILocation(line: 344, column: 18, scope: !1728)
!1768 = !DILocation(line: 344, column: 24, scope: !1728)
!1769 = !DILocation(line: 345, column: 5, scope: !1728)
!1770 = !DILocation(line: 345, column: 18, scope: !1728)
!1771 = !DILocation(line: 345, column: 32, scope: !1728)
!1772 = !DILocation(line: 345, column: 45, scope: !1728)
!1773 = !DILocation(line: 347, column: 5, scope: !1728)
!1774 = !DILocation(line: 347, column: 10, scope: !1728)
!1775 = !DILocation(line: 347, column: 25, scope: !1728)
!1776 = !DILocation(line: 347, column: 32, scope: !1728)
!1777 = !DILocation(line: 349, column: 12, scope: !1728)
!1778 = !DILocation(line: 349, column: 10, scope: !1728)
!1779 = !DILocation(line: 351, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 351, column: 9)
!1781 = !DILocation(line: 351, column: 9, scope: !1728)
!1782 = !DILocation(line: 352, column: 30, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 352, column: 13)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 351, column: 17)
!1785 = !DILocation(line: 352, column: 13, scope: !1783)
!1786 = !DILocation(line: 352, column: 40, scope: !1783)
!1787 = !DILocation(line: 352, column: 38, scope: !1783)
!1788 = !DILocation(line: 352, column: 13, scope: !1784)
!1789 = !DILocation(line: 353, column: 27, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 352, column: 46)
!1791 = !DILocation(line: 353, column: 13, scope: !1790)
!1792 = !DILocation(line: 354, column: 13, scope: !1790)
!1793 = !DILocation(line: 356, column: 5, scope: !1784)
!1794 = !DILocation(line: 358, column: 51, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !2, line: 358, column: 13)
!1796 = distinct !DILexicalBlock(scope: !1780, file: !2, line: 357, column: 10)
!1797 = !DILocation(line: 358, column: 56, scope: !1795)
!1798 = !DILocation(line: 358, column: 62, scope: !1795)
!1799 = !DILocation(line: 358, column: 67, scope: !1795)
!1800 = !DILocation(line: 358, column: 23, scope: !1795)
!1801 = !DILocation(line: 358, column: 21, scope: !1795)
!1802 = !DILocation(line: 358, column: 75, scope: !1795)
!1803 = !DILocation(line: 358, column: 13, scope: !1796)
!1804 = !DILocation(line: 359, column: 13, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 358, column: 84)
!1806 = !DILocation(line: 363, column: 32, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 363, column: 9)
!1808 = !DILocation(line: 363, column: 16, scope: !1807)
!1809 = !DILocation(line: 363, column: 45, scope: !1807)
!1810 = !DILocation(line: 363, column: 9, scope: !1807)
!1811 = !DILocation(line: 363, column: 86, scope: !1807)
!1812 = !DILocation(line: 363, column: 9, scope: !1728)
!1813 = !DILocation(line: 364, column: 16, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 363, column: 92)
!1815 = !DILocation(line: 364, column: 2, scope: !1814)
!1816 = !DILocation(line: 365, column: 14, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 365, column: 13)
!1818 = !DILocation(line: 365, column: 13, scope: !1814)
!1819 = !DILocation(line: 366, column: 30, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 365, column: 27)
!1821 = !DILocation(line: 366, column: 13, scope: !1820)
!1822 = !DILocation(line: 367, column: 9, scope: !1820)
!1823 = !DILocation(line: 368, column: 2, scope: !1814)
!1824 = !DILocation(line: 373, column: 22, scope: !1728)
!1825 = !DILocation(line: 373, column: 5, scope: !1728)
!1826 = !DILocation(line: 374, column: 10, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 374, column: 9)
!1828 = !DILocation(line: 374, column: 9, scope: !1728)
!1829 = !DILocation(line: 375, column: 43, scope: !1827)
!1830 = !DILocation(line: 375, column: 24, scope: !1827)
!1831 = !DILocation(line: 375, column: 2, scope: !1827)
!1832 = !DILocation(line: 375, column: 7, scope: !1827)
!1833 = !DILocation(line: 375, column: 22, scope: !1827)
!1834 = !DILocation(line: 377, column: 2, scope: !1827)
!1835 = !DILocation(line: 377, column: 7, scope: !1827)
!1836 = !DILocation(line: 377, column: 22, scope: !1827)
!1837 = !DILocation(line: 378, column: 46, scope: !1728)
!1838 = !DILocation(line: 378, column: 27, scope: !1728)
!1839 = !DILocation(line: 378, column: 5, scope: !1728)
!1840 = !DILocation(line: 378, column: 10, scope: !1728)
!1841 = !DILocation(line: 378, column: 25, scope: !1728)
!1842 = !DILocation(line: 379, column: 40, scope: !1728)
!1843 = !DILocation(line: 379, column: 21, scope: !1728)
!1844 = !DILocation(line: 379, column: 5, scope: !1728)
!1845 = !DILocation(line: 379, column: 10, scope: !1728)
!1846 = !DILocation(line: 379, column: 19, scope: !1728)
!1847 = !DILocation(line: 380, column: 43, scope: !1728)
!1848 = !DILocation(line: 380, column: 24, scope: !1728)
!1849 = !DILocation(line: 380, column: 5, scope: !1728)
!1850 = !DILocation(line: 380, column: 10, scope: !1728)
!1851 = !DILocation(line: 380, column: 22, scope: !1728)
!1852 = !DILocation(line: 383, column: 34, scope: !1728)
!1853 = !DILocation(line: 383, column: 15, scope: !1728)
!1854 = !DILocation(line: 383, column: 13, scope: !1728)
!1855 = !DILocation(line: 384, column: 34, scope: !1728)
!1856 = !DILocation(line: 384, column: 15, scope: !1728)
!1857 = !DILocation(line: 384, column: 13, scope: !1728)
!1858 = !DILocation(line: 385, column: 35, scope: !1728)
!1859 = !DILocation(line: 385, column: 44, scope: !1728)
!1860 = !DILocation(line: 385, column: 21, scope: !1728)
!1861 = !DILocation(line: 385, column: 5, scope: !1728)
!1862 = !DILocation(line: 385, column: 10, scope: !1728)
!1863 = !DILocation(line: 385, column: 19, scope: !1728)
!1864 = !DILocation(line: 387, column: 35, scope: !1728)
!1865 = !DILocation(line: 387, column: 16, scope: !1728)
!1866 = !DILocation(line: 387, column: 5, scope: !1728)
!1867 = !DILocation(line: 387, column: 10, scope: !1728)
!1868 = !DILocation(line: 387, column: 14, scope: !1728)
!1869 = !DILocation(line: 388, column: 41, scope: !1728)
!1870 = !DILocation(line: 388, column: 22, scope: !1728)
!1871 = !DILocation(line: 388, column: 5, scope: !1728)
!1872 = !DILocation(line: 388, column: 10, scope: !1728)
!1873 = !DILocation(line: 388, column: 20, scope: !1728)
!1874 = !DILocation(line: 389, column: 43, scope: !1728)
!1875 = !DILocation(line: 389, column: 24, scope: !1728)
!1876 = !DILocation(line: 389, column: 5, scope: !1728)
!1877 = !DILocation(line: 389, column: 10, scope: !1728)
!1878 = !DILocation(line: 389, column: 22, scope: !1728)
!1879 = !DILocation(line: 391, column: 39, scope: !1728)
!1880 = !DILocation(line: 391, column: 20, scope: !1728)
!1881 = !DILocation(line: 391, column: 18, scope: !1728)
!1882 = !DILocation(line: 392, column: 33, scope: !1728)
!1883 = !DILocation(line: 392, column: 14, scope: !1728)
!1884 = !DILocation(line: 392, column: 12, scope: !1728)
!1885 = !DILocation(line: 394, column: 9, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 394, column: 9)
!1887 = !DILocation(line: 394, column: 9, scope: !1728)
!1888 = !DILocation(line: 395, column: 14, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 394, column: 16)
!1890 = !DILocation(line: 396, column: 2, scope: !1889)
!1891 = !DILocation(line: 396, column: 7, scope: !1889)
!1892 = !DILocation(line: 396, column: 19, scope: !1889)
!1893 = !DILocation(line: 397, column: 2, scope: !1889)
!1894 = !DILocation(line: 397, column: 7, scope: !1889)
!1895 = !DILocation(line: 397, column: 18, scope: !1889)
!1896 = !DILocation(line: 398, column: 2, scope: !1889)
!1897 = !DILocation(line: 398, column: 7, scope: !1889)
!1898 = !DILocation(line: 398, column: 18, scope: !1889)
!1899 = !DILocation(line: 399, column: 2, scope: !1889)
!1900 = !DILocation(line: 399, column: 7, scope: !1889)
!1901 = !DILocation(line: 399, column: 14, scope: !1889)
!1902 = !DILocation(line: 400, column: 5, scope: !1889)
!1903 = !DILocation(line: 401, column: 35, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 400, column: 12)
!1905 = !DILocation(line: 401, column: 16, scope: !1904)
!1906 = !DILocation(line: 401, column: 14, scope: !1904)
!1907 = !DILocation(line: 402, column: 40, scope: !1904)
!1908 = !DILocation(line: 402, column: 21, scope: !1904)
!1909 = !DILocation(line: 402, column: 2, scope: !1904)
!1910 = !DILocation(line: 402, column: 7, scope: !1904)
!1911 = !DILocation(line: 402, column: 19, scope: !1904)
!1912 = !DILocation(line: 403, column: 39, scope: !1904)
!1913 = !DILocation(line: 403, column: 20, scope: !1904)
!1914 = !DILocation(line: 403, column: 2, scope: !1904)
!1915 = !DILocation(line: 403, column: 7, scope: !1904)
!1916 = !DILocation(line: 403, column: 18, scope: !1904)
!1917 = !DILocation(line: 404, column: 39, scope: !1904)
!1918 = !DILocation(line: 404, column: 20, scope: !1904)
!1919 = !DILocation(line: 404, column: 2, scope: !1904)
!1920 = !DILocation(line: 404, column: 7, scope: !1904)
!1921 = !DILocation(line: 404, column: 18, scope: !1904)
!1922 = !DILocation(line: 405, column: 35, scope: !1904)
!1923 = !DILocation(line: 405, column: 16, scope: !1904)
!1924 = !DILocation(line: 405, column: 2, scope: !1904)
!1925 = !DILocation(line: 405, column: 7, scope: !1904)
!1926 = !DILocation(line: 405, column: 14, scope: !1904)
!1927 = !DILocation(line: 408, column: 25, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 408, column: 9)
!1929 = !DILocation(line: 408, column: 10, scope: !1928)
!1930 = !DILocation(line: 408, column: 9, scope: !1728)
!1931 = !DILocation(line: 409, column: 23, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 408, column: 34)
!1933 = !DILocation(line: 409, column: 9, scope: !1932)
!1934 = !DILocation(line: 410, column: 14, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 410, column: 13)
!1936 = !DILocation(line: 410, column: 13, scope: !1932)
!1937 = !DILocation(line: 411, column: 30, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 410, column: 27)
!1939 = !DILocation(line: 411, column: 13, scope: !1938)
!1940 = !DILocation(line: 412, column: 9, scope: !1938)
!1941 = !DILocation(line: 413, column: 9, scope: !1932)
!1942 = !DILocation(line: 416, column: 9, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 416, column: 9)
!1944 = !DILocation(line: 416, column: 14, scope: !1943)
!1945 = !DILocation(line: 416, column: 23, scope: !1943)
!1946 = !DILocation(line: 416, column: 9, scope: !1728)
!1947 = !DILocation(line: 417, column: 6, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 417, column: 6)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 416, column: 45)
!1950 = !DILocation(line: 417, column: 11, scope: !1948)
!1951 = !DILocation(line: 417, column: 20, scope: !1948)
!1952 = !DILocation(line: 417, column: 6, scope: !1949)
!1953 = !DILocation(line: 419, column: 6, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 417, column: 50)
!1955 = !DILocation(line: 419, column: 11, scope: !1954)
!1956 = !DILocation(line: 419, column: 29, scope: !1954)
!1957 = !DILocation(line: 420, column: 2, scope: !1954)
!1958 = !DILocation(line: 422, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 421, column: 7)
!1960 = !DILocation(line: 422, column: 11, scope: !1959)
!1961 = !DILocation(line: 422, column: 29, scope: !1959)
!1962 = !DILocation(line: 424, column: 5, scope: !1949)
!1963 = !DILocation(line: 426, column: 2, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 425, column: 10)
!1965 = !DILocation(line: 426, column: 7, scope: !1964)
!1966 = !DILocation(line: 426, column: 25, scope: !1964)
!1967 = !DILocation(line: 429, column: 5, scope: !1728)
!1968 = !DILocation(line: 429, column: 10, scope: !1728)
!1969 = !DILocation(line: 429, column: 19, scope: !1728)
!1970 = !DILocation(line: 430, column: 5, scope: !1728)
!1971 = !DILocation(line: 430, column: 10, scope: !1728)
!1972 = !DILocation(line: 430, column: 23, scope: !1728)
!1973 = !DILocation(line: 431, column: 5, scope: !1728)
!1974 = !DILocation(line: 431, column: 10, scope: !1728)
!1975 = !DILocation(line: 431, column: 18, scope: !1728)
!1976 = !DILocation(line: 433, column: 35, scope: !1728)
!1977 = !DILocation(line: 433, column: 21, scope: !1728)
!1978 = !DILocation(line: 433, column: 62, scope: !1728)
!1979 = !DILocation(line: 433, column: 48, scope: !1728)
!1980 = !DILocation(line: 433, column: 47, scope: !1728)
!1981 = !DILocation(line: 433, column: 83, scope: !1728)
!1982 = !DILocation(line: 433, column: 69, scope: !1728)
!1983 = !DILocation(line: 433, column: 68, scope: !1728)
!1984 = !DILocation(line: 433, column: 19, scope: !1728)
!1985 = !DILocation(line: 435, column: 9, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 435, column: 9)
!1987 = !DILocation(line: 435, column: 9, scope: !1728)
!1988 = !DILocation(line: 436, column: 30, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !2, line: 436, column: 13)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 435, column: 22)
!1991 = !DILocation(line: 436, column: 13, scope: !1989)
!1992 = !DILocation(line: 436, column: 40, scope: !1989)
!1993 = !DILocation(line: 436, column: 38, scope: !1989)
!1994 = !DILocation(line: 436, column: 13, scope: !1990)
!1995 = !DILocation(line: 437, column: 27, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !2, line: 436, column: 55)
!1997 = !DILocation(line: 437, column: 13, scope: !1996)
!1998 = !DILocation(line: 438, column: 13, scope: !1996)
!1999 = !DILocation(line: 440, column: 5, scope: !1990)
!2000 = !DILocation(line: 442, column: 26, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 441, column: 10)
!2002 = !DILocation(line: 442, column: 9, scope: !2001)
!2003 = !DILocation(line: 444, column: 51, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !2, line: 444, column: 13)
!2005 = !DILocation(line: 444, column: 56, scope: !2004)
!2006 = !DILocation(line: 444, column: 77, scope: !2004)
!2007 = !DILocation(line: 444, column: 23, scope: !2004)
!2008 = !DILocation(line: 444, column: 21, scope: !2004)
!2009 = !DILocation(line: 444, column: 85, scope: !2004)
!2010 = !DILocation(line: 444, column: 13, scope: !2001)
!2011 = !DILocation(line: 445, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 444, column: 94)
!2013 = !DILocation(line: 449, column: 9, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 449, column: 9)
!2015 = !DILocation(line: 449, column: 9, scope: !1728)
!2016 = !DILocation(line: 450, column: 35, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 449, column: 23)
!2018 = !DILocation(line: 450, column: 43, scope: !2017)
!2019 = !DILocation(line: 450, column: 48, scope: !2017)
!2020 = !DILocation(line: 450, column: 65, scope: !2017)
!2021 = !DILocation(line: 450, column: 18, scope: !2017)
!2022 = !DILocation(line: 450, column: 2, scope: !2017)
!2023 = !DILocation(line: 450, column: 7, scope: !2017)
!2024 = !DILocation(line: 450, column: 16, scope: !2017)
!2025 = !DILocation(line: 451, column: 14, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 451, column: 13)
!2027 = !DILocation(line: 451, column: 19, scope: !2026)
!2028 = !DILocation(line: 451, column: 13, scope: !2017)
!2029 = !DILocation(line: 452, column: 36, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 452, column: 17)
!2031 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 451, column: 29)
!2032 = !DILocation(line: 452, column: 17, scope: !2030)
!2033 = !DILocation(line: 452, column: 43, scope: !2030)
!2034 = !DILocation(line: 452, column: 17, scope: !2031)
!2035 = !DILocation(line: 453, column: 31, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 452, column: 58)
!2037 = !DILocation(line: 453, column: 17, scope: !2036)
!2038 = !DILocation(line: 454, column: 13, scope: !2036)
!2039 = !DILocation(line: 455, column: 18, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 455, column: 17)
!2041 = !DILocation(line: 455, column: 17, scope: !2031)
!2042 = !DILocation(line: 456, column: 34, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 455, column: 31)
!2044 = !DILocation(line: 456, column: 17, scope: !2043)
!2045 = !DILocation(line: 457, column: 13, scope: !2043)
!2046 = !DILocation(line: 458, column: 6, scope: !2031)
!2047 = !DILocation(line: 461, column: 6, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 461, column: 6)
!2049 = !DILocation(line: 461, column: 11, scope: !2048)
!2050 = !DILocation(line: 461, column: 20, scope: !2048)
!2051 = !DILocation(line: 461, column: 6, scope: !2017)
!2052 = !DILocation(line: 462, column: 30, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 462, column: 10)
!2054 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 461, column: 47)
!2055 = !DILocation(line: 462, column: 35, scope: !2053)
!2056 = !DILocation(line: 462, column: 10, scope: !2053)
!2057 = !DILocation(line: 462, column: 70, scope: !2053)
!2058 = !DILocation(line: 462, column: 10, scope: !2054)
!2059 = !DILocation(line: 463, column: 17, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 462, column: 93)
!2061 = !DILocation(line: 463, column: 3, scope: !2060)
!2062 = !DILocation(line: 464, column: 22, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !2, line: 464, column: 21)
!2064 = !DILocation(line: 464, column: 21, scope: !2060)
!2065 = !DILocation(line: 465, column: 38, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 464, column: 35)
!2067 = !DILocation(line: 465, column: 21, scope: !2066)
!2068 = !DILocation(line: 466, column: 17, scope: !2066)
!2069 = !DILocation(line: 467, column: 3, scope: !2060)
!2070 = !DILocation(line: 469, column: 2, scope: !2054)
!2071 = !DILocation(line: 470, column: 5, scope: !2017)
!2072 = !DILocation(line: 472, column: 9, scope: !1748)
!2073 = !DILocation(line: 472, column: 9, scope: !1728)
!2074 = !DILocation(line: 473, column: 2, scope: !1747)
!2075 = !DILocation(line: 473, column: 15, scope: !1747)
!2076 = !DILocation(line: 473, column: 35, scope: !1747)
!2077 = !DILocation(line: 473, column: 43, scope: !1747)
!2078 = !DILocation(line: 473, column: 48, scope: !1747)
!2079 = !DILocation(line: 473, column: 59, scope: !1747)
!2080 = !DILocation(line: 473, column: 20, scope: !1747)
!2081 = !DILocation(line: 475, column: 13, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 475, column: 13)
!2083 = !DILocation(line: 475, column: 16, scope: !2082)
!2084 = !DILocation(line: 475, column: 13, scope: !1747)
!2085 = !DILocation(line: 476, column: 18, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 476, column: 17)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !2, line: 475, column: 25)
!2088 = !DILocation(line: 476, column: 17, scope: !2087)
!2089 = !DILocation(line: 477, column: 34, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2086, file: !2, line: 476, column: 31)
!2091 = !DILocation(line: 477, column: 17, scope: !2090)
!2092 = !DILocation(line: 478, column: 13, scope: !2090)
!2093 = !DILocation(line: 479, column: 6, scope: !2087)
!2094 = !DILocation(line: 481, column: 28, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 481, column: 13)
!2096 = !DILocation(line: 481, column: 32, scope: !2095)
!2097 = !DILocation(line: 481, column: 40, scope: !2095)
!2098 = !DILocation(line: 481, column: 80, scope: !2095)
!2099 = !DILocation(line: 481, column: 85, scope: !2095)
!2100 = !DILocation(line: 481, column: 99, scope: !2095)
!2101 = !DILocation(line: 481, column: 14, scope: !2095)
!2102 = !DILocation(line: 481, column: 13, scope: !1747)
!2103 = !DILocation(line: 482, column: 11, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 481, column: 107)
!2105 = !DILocation(line: 482, column: 6, scope: !2104)
!2106 = !DILocation(line: 483, column: 18, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 483, column: 17)
!2108 = !DILocation(line: 483, column: 17, scope: !2104)
!2109 = !DILocation(line: 484, column: 34, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 483, column: 31)
!2111 = !DILocation(line: 484, column: 17, scope: !2110)
!2112 = !DILocation(line: 485, column: 13, scope: !2110)
!2113 = !DILocation(line: 486, column: 6, scope: !2104)
!2114 = !DILocation(line: 488, column: 7, scope: !1747)
!2115 = !DILocation(line: 488, column: 2, scope: !1747)
!2116 = !DILocation(line: 489, column: 6, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 489, column: 6)
!2118 = !DILocation(line: 489, column: 6, scope: !1747)
!2119 = !DILocation(line: 490, column: 6, scope: !2117)
!2120 = !DILocation(line: 490, column: 11, scope: !2117)
!2121 = !DILocation(line: 490, column: 35, scope: !2117)
!2122 = !DILocation(line: 491, column: 5, scope: !1748)
!2123 = !DILocation(line: 491, column: 5, scope: !1747)
!2124 = !DILocation(line: 493, column: 9, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 493, column: 9)
!2126 = !DILocation(line: 493, column: 9, scope: !1728)
!2127 = !DILocation(line: 494, column: 34, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !2, line: 493, column: 22)
!2129 = !DILocation(line: 494, column: 42, scope: !2128)
!2130 = !DILocation(line: 494, column: 47, scope: !2128)
!2131 = !DILocation(line: 494, column: 63, scope: !2128)
!2132 = !DILocation(line: 494, column: 17, scope: !2128)
!2133 = !DILocation(line: 494, column: 2, scope: !2128)
!2134 = !DILocation(line: 494, column: 7, scope: !2128)
!2135 = !DILocation(line: 494, column: 15, scope: !2128)
!2136 = !DILocation(line: 495, column: 14, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 495, column: 13)
!2138 = !DILocation(line: 495, column: 19, scope: !2137)
!2139 = !DILocation(line: 495, column: 13, scope: !2128)
!2140 = !DILocation(line: 496, column: 18, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !2, line: 496, column: 17)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 495, column: 28)
!2143 = !DILocation(line: 496, column: 17, scope: !2142)
!2144 = !DILocation(line: 497, column: 34, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 496, column: 31)
!2146 = !DILocation(line: 497, column: 17, scope: !2145)
!2147 = !DILocation(line: 498, column: 13, scope: !2145)
!2148 = !DILocation(line: 499, column: 6, scope: !2142)
!2149 = !DILocation(line: 501, column: 6, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 501, column: 6)
!2151 = !DILocation(line: 501, column: 11, scope: !2150)
!2152 = !DILocation(line: 501, column: 20, scope: !2150)
!2153 = !DILocation(line: 501, column: 6, scope: !2128)
!2154 = !DILocation(line: 502, column: 30, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 502, column: 10)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 501, column: 47)
!2157 = !DILocation(line: 502, column: 35, scope: !2155)
!2158 = !DILocation(line: 502, column: 10, scope: !2155)
!2159 = !DILocation(line: 502, column: 69, scope: !2155)
!2160 = !DILocation(line: 502, column: 10, scope: !2156)
!2161 = !DILocation(line: 503, column: 17, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 502, column: 92)
!2163 = !DILocation(line: 503, column: 3, scope: !2162)
!2164 = !DILocation(line: 504, column: 22, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 504, column: 21)
!2166 = !DILocation(line: 504, column: 21, scope: !2162)
!2167 = !DILocation(line: 505, column: 38, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 504, column: 35)
!2169 = !DILocation(line: 505, column: 21, scope: !2168)
!2170 = !DILocation(line: 506, column: 17, scope: !2168)
!2171 = !DILocation(line: 507, column: 3, scope: !2162)
!2172 = !DILocation(line: 509, column: 2, scope: !2156)
!2173 = !DILocation(line: 510, column: 5, scope: !2128)
!2174 = !DILocation(line: 512, column: 50, scope: !1728)
!2175 = !DILocation(line: 512, column: 74, scope: !1728)
!2176 = !DILocation(line: 512, column: 79, scope: !1728)
!2177 = !DILocation(line: 512, column: 21, scope: !1728)
!2178 = !DILocation(line: 512, column: 5, scope: !1728)
!2179 = !DILocation(line: 512, column: 10, scope: !1728)
!2180 = !DILocation(line: 512, column: 19, scope: !1728)
!2181 = !DILocation(line: 513, column: 49, scope: !1728)
!2182 = !DILocation(line: 513, column: 76, scope: !1728)
!2183 = !DILocation(line: 513, column: 81, scope: !1728)
!2184 = !DILocation(line: 513, column: 20, scope: !1728)
!2185 = !DILocation(line: 513, column: 5, scope: !1728)
!2186 = !DILocation(line: 513, column: 10, scope: !1728)
!2187 = !DILocation(line: 513, column: 18, scope: !1728)
!2188 = !DILocation(line: 517, column: 9, scope: !1751)
!2189 = !DILocation(line: 517, column: 14, scope: !1751)
!2190 = !DILocation(line: 517, column: 26, scope: !1751)
!2191 = !DILocation(line: 517, column: 44, scope: !1751)
!2192 = !DILocation(line: 517, column: 47, scope: !1751)
!2193 = !DILocation(line: 517, column: 52, scope: !1751)
!2194 = !DILocation(line: 517, column: 62, scope: !1751)
!2195 = !DILocation(line: 517, column: 80, scope: !1751)
!2196 = !DILocation(line: 517, column: 83, scope: !1751)
!2197 = !DILocation(line: 517, column: 88, scope: !1751)
!2198 = !DILocation(line: 517, column: 95, scope: !1751)
!2199 = !DILocation(line: 517, column: 9, scope: !1728)
!2200 = !DILocation(line: 518, column: 2, scope: !1750)
!2201 = !DILocation(line: 518, column: 15, scope: !1750)
!2202 = !DILocation(line: 519, column: 9, scope: !1750)
!2203 = !DILocation(line: 519, column: 23, scope: !1750)
!2204 = !DILocation(line: 520, column: 2, scope: !1750)
!2205 = !DILocation(line: 520, column: 21, scope: !1750)
!2206 = !DILocation(line: 520, column: 44, scope: !1750)
!2207 = !DILocation(line: 520, column: 49, scope: !1750)
!2208 = !DILocation(line: 520, column: 90, scope: !1750)
!2209 = !DILocation(line: 520, column: 129, scope: !1750)
!2210 = !DILocation(line: 520, column: 26, scope: !1750)
!2211 = !DILocation(line: 522, column: 13, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 522, column: 13)
!2213 = !DILocation(line: 522, column: 16, scope: !2212)
!2214 = !DILocation(line: 522, column: 13, scope: !1750)
!2215 = !DILocation(line: 523, column: 18, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 523, column: 17)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 522, column: 25)
!2218 = !DILocation(line: 523, column: 17, scope: !2217)
!2219 = !DILocation(line: 524, column: 34, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2216, file: !2, line: 523, column: 31)
!2221 = !DILocation(line: 524, column: 17, scope: !2220)
!2222 = !DILocation(line: 525, column: 13, scope: !2220)
!2223 = !DILocation(line: 526, column: 6, scope: !2217)
!2224 = !DILocation(line: 529, column: 57, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 529, column: 13)
!2226 = !DILocation(line: 529, column: 61, scope: !2225)
!2227 = !DILocation(line: 529, column: 26, scope: !2225)
!2228 = !DILocation(line: 529, column: 24, scope: !2225)
!2229 = !DILocation(line: 529, column: 71, scope: !2225)
!2230 = !DILocation(line: 529, column: 13, scope: !1750)
!2231 = !DILocation(line: 530, column: 27, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 529, column: 80)
!2233 = !DILocation(line: 530, column: 13, scope: !2232)
!2234 = !DILocation(line: 531, column: 18, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 531, column: 17)
!2236 = !DILocation(line: 531, column: 17, scope: !2232)
!2237 = !DILocation(line: 532, column: 34, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 531, column: 31)
!2239 = !DILocation(line: 532, column: 17, scope: !2238)
!2240 = !DILocation(line: 533, column: 13, scope: !2238)
!2241 = !DILocation(line: 534, column: 13, scope: !2232)
!2242 = !DILocation(line: 537, column: 6, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 537, column: 6)
!2244 = !DILocation(line: 537, column: 11, scope: !2243)
!2245 = !DILocation(line: 537, column: 23, scope: !2243)
!2246 = !DILocation(line: 537, column: 6, scope: !1750)
!2247 = !DILocation(line: 538, column: 44, scope: !2243)
!2248 = !DILocation(line: 538, column: 25, scope: !2243)
!2249 = !DILocation(line: 538, column: 6, scope: !2243)
!2250 = !DILocation(line: 538, column: 11, scope: !2243)
!2251 = !DILocation(line: 538, column: 23, scope: !2243)
!2252 = !DILocation(line: 539, column: 11, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 539, column: 11)
!2254 = !DILocation(line: 539, column: 11, scope: !2243)
!2255 = !DILocation(line: 542, column: 36, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 539, column: 18)
!2257 = !DILocation(line: 542, column: 19, scope: !2256)
!2258 = !DILocation(line: 543, column: 2, scope: !2256)
!2259 = !DILocation(line: 544, column: 6, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 544, column: 6)
!2261 = !DILocation(line: 544, column: 11, scope: !2260)
!2262 = !DILocation(line: 544, column: 21, scope: !2260)
!2263 = !DILocation(line: 544, column: 6, scope: !1750)
!2264 = !DILocation(line: 545, column: 42, scope: !2260)
!2265 = !DILocation(line: 545, column: 23, scope: !2260)
!2266 = !DILocation(line: 545, column: 6, scope: !2260)
!2267 = !DILocation(line: 545, column: 11, scope: !2260)
!2268 = !DILocation(line: 545, column: 21, scope: !2260)
!2269 = !DILocation(line: 546, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 546, column: 6)
!2271 = !DILocation(line: 546, column: 6, scope: !1750)
!2272 = !DILocation(line: 547, column: 10, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 547, column: 10)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !2, line: 546, column: 14)
!2275 = !DILocation(line: 547, column: 15, scope: !2273)
!2276 = !DILocation(line: 547, column: 22, scope: !2273)
!2277 = !DILocation(line: 547, column: 10, scope: !2274)
!2278 = !DILocation(line: 548, column: 36, scope: !2273)
!2279 = !DILocation(line: 548, column: 17, scope: !2273)
!2280 = !DILocation(line: 548, column: 3, scope: !2273)
!2281 = !DILocation(line: 548, column: 8, scope: !2273)
!2282 = !DILocation(line: 548, column: 15, scope: !2273)
!2283 = !DILocation(line: 549, column: 10, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 549, column: 10)
!2285 = !DILocation(line: 549, column: 15, scope: !2284)
!2286 = !DILocation(line: 549, column: 27, scope: !2284)
!2287 = !DILocation(line: 549, column: 10, scope: !2274)
!2288 = !DILocation(line: 550, column: 41, scope: !2284)
!2289 = !DILocation(line: 550, column: 22, scope: !2284)
!2290 = !DILocation(line: 550, column: 3, scope: !2284)
!2291 = !DILocation(line: 550, column: 8, scope: !2284)
!2292 = !DILocation(line: 550, column: 20, scope: !2284)
!2293 = !DILocation(line: 551, column: 2, scope: !2274)
!2294 = !DILocation(line: 553, column: 30, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 553, column: 13)
!2296 = !DILocation(line: 553, column: 14, scope: !2295)
!2297 = !DILocation(line: 553, column: 13, scope: !1750)
!2298 = !DILocation(line: 554, column: 27, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2295, file: !2, line: 553, column: 42)
!2300 = !DILocation(line: 554, column: 13, scope: !2299)
!2301 = !DILocation(line: 555, column: 30, scope: !2299)
!2302 = !DILocation(line: 555, column: 13, scope: !2299)
!2303 = !DILocation(line: 556, column: 18, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 556, column: 17)
!2305 = !DILocation(line: 556, column: 17, scope: !2299)
!2306 = !DILocation(line: 557, column: 34, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !2, line: 556, column: 31)
!2308 = !DILocation(line: 557, column: 17, scope: !2307)
!2309 = !DILocation(line: 558, column: 13, scope: !2307)
!2310 = !DILocation(line: 559, column: 13, scope: !2299)
!2311 = !DILocation(line: 561, column: 26, scope: !1750)
!2312 = !DILocation(line: 561, column: 9, scope: !1750)
!2313 = !DILocation(line: 562, column: 5, scope: !1751)
!2314 = !DILocation(line: 562, column: 5, scope: !1750)
!2315 = !DILocation(line: 564, column: 25, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 564, column: 9)
!2317 = !DILocation(line: 564, column: 10, scope: !2316)
!2318 = !DILocation(line: 564, column: 9, scope: !1728)
!2319 = !DILocation(line: 565, column: 23, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 564, column: 34)
!2321 = !DILocation(line: 565, column: 9, scope: !2320)
!2322 = !DILocation(line: 566, column: 14, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !2, line: 566, column: 13)
!2324 = !DILocation(line: 566, column: 13, scope: !2320)
!2325 = !DILocation(line: 567, column: 30, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 566, column: 27)
!2327 = !DILocation(line: 567, column: 13, scope: !2326)
!2328 = !DILocation(line: 568, column: 9, scope: !2326)
!2329 = !DILocation(line: 569, column: 9, scope: !2320)
!2330 = !DILocation(line: 571, column: 10, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 571, column: 9)
!2332 = !DILocation(line: 571, column: 9, scope: !1728)
!2333 = !DILocation(line: 572, column: 26, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2331, file: !2, line: 571, column: 23)
!2335 = !DILocation(line: 572, column: 9, scope: !2334)
!2336 = !DILocation(line: 573, column: 5, scope: !2334)
!2337 = !DILocation(line: 576, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 576, column: 9)
!2339 = !DILocation(line: 576, column: 14, scope: !2338)
!2340 = !DILocation(line: 576, column: 21, scope: !2338)
!2341 = !DILocation(line: 576, column: 9, scope: !1728)
!2342 = !DILocation(line: 577, column: 16, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 576, column: 38)
!2344 = !DILocation(line: 577, column: 2, scope: !2343)
!2345 = !DILocation(line: 578, column: 2, scope: !2343)
!2346 = !DILocation(line: 581, column: 41, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 581, column: 9)
!2348 = !DILocation(line: 581, column: 46, scope: !2347)
!2349 = !DILocation(line: 581, column: 10, scope: !2347)
!2350 = !DILocation(line: 581, column: 9, scope: !1728)
!2351 = !DILocation(line: 582, column: 2, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !2, line: 581, column: 54)
!2353 = !DILocation(line: 585, column: 49, scope: !1728)
!2354 = !DILocation(line: 585, column: 54, scope: !1728)
!2355 = !DILocation(line: 585, column: 25, scope: !1728)
!2356 = !DILocation(line: 585, column: 5, scope: !1728)
!2357 = !DILocation(line: 585, column: 10, scope: !1728)
!2358 = !DILocation(line: 585, column: 23, scope: !1728)
!2359 = !DILocation(line: 587, column: 26, scope: !1728)
!2360 = !DILocation(line: 587, column: 33, scope: !1728)
!2361 = !DILocation(line: 587, column: 31, scope: !1728)
!2362 = !DILocation(line: 587, column: 12, scope: !1728)
!2363 = !DILocation(line: 587, column: 5, scope: !1728)
!2364 = !DILocation(line: 588, column: 1, scope: !1728)
!2365 = !DISubprogram(name: "_zip_buffer_left", scope: !23, file: !23, line: 416, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2366 = !DISubprogram(name: "_zip_buffer_new_from_source", scope: !23, file: !23, line: 418, type: !2367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!469, !146, !104, !115, !294}
!2369 = !DISubprogram(name: "memcmp", scope: !1661, file: !1661, line: 64, type: !2370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!96, !1442, !1442, !220}
!2372 = !DISubprogram(name: "_zip_buffer_get", scope: !23, file: !23, line: 411, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!115, !469, !104}
!2375 = !DISubprogram(name: "_zip_buffer_get_16", scope: !23, file: !23, line: 412, type: !2376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!85, !469}
!2378 = distinct !DISubprogram(name: "_zip_d2u_time", scope: !2, file: !2, line: 999, type: !2379, scopeLine: 1000, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!98, !85, !85}
!2381 = !{!2382, !2383, !2384}
!2382 = !DILocalVariable(name: "dtime", arg: 1, scope: !2378, file: !2, line: 999, type: !85)
!2383 = !DILocalVariable(name: "ddate", arg: 2, scope: !2378, file: !2, line: 999, type: !85)
!2384 = !DILocalVariable(name: "tm", scope: !2378, file: !2, line: 1001, type: !2385)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !2386, line: 7, size: 448, elements: !2387)
!2386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "", checksumkind: CSK_MD5, checksum: "9e5545b565ef031c4cd0faf90b69386f")
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !2385, file: !2386, line: 9, baseType: !96, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !2385, file: !2386, line: 10, baseType: !96, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !2385, file: !2386, line: 11, baseType: !96, size: 32, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !2385, file: !2386, line: 12, baseType: !96, size: 32, offset: 96)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !2385, file: !2386, line: 13, baseType: !96, size: 32, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !2385, file: !2386, line: 14, baseType: !96, size: 32, offset: 160)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !2385, file: !2386, line: 15, baseType: !96, size: 32, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !2385, file: !2386, line: 16, baseType: !96, size: 32, offset: 224)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !2385, file: !2386, line: 17, baseType: !96, size: 32, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !2385, file: !2386, line: 20, baseType: !101, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !2385, file: !2386, line: 21, baseType: !1667, size: 64, offset: 384)
!2399 = !DILocation(line: 999, column: 28, scope: !2378)
!2400 = !DILocation(line: 999, column: 48, scope: !2378)
!2401 = !DILocation(line: 1001, column: 5, scope: !2378)
!2402 = !DILocation(line: 1001, column: 15, scope: !2378)
!2403 = !DILocation(line: 1003, column: 5, scope: !2378)
!2404 = !DILocation(line: 1006, column: 8, scope: !2378)
!2405 = !DILocation(line: 1006, column: 17, scope: !2378)
!2406 = !{!2407, !511, i64 32}
!2407 = !{!"tm", !511, i64 0, !511, i64 4, !511, i64 8, !511, i64 12, !511, i64 16, !511, i64 20, !511, i64 24, !511, i64 28, !511, i64 32, !249, i64 40, !236, i64 48}
!2408 = !DILocation(line: 1008, column: 20, scope: !2378)
!2409 = !DILocation(line: 1008, column: 25, scope: !2378)
!2410 = !DILocation(line: 1008, column: 29, scope: !2378)
!2411 = !DILocation(line: 1008, column: 35, scope: !2378)
!2412 = !DILocation(line: 1008, column: 42, scope: !2378)
!2413 = !DILocation(line: 1008, column: 8, scope: !2378)
!2414 = !DILocation(line: 1008, column: 16, scope: !2378)
!2415 = !{!2407, !511, i64 20}
!2416 = !DILocation(line: 1009, column: 19, scope: !2378)
!2417 = !DILocation(line: 1009, column: 24, scope: !2378)
!2418 = !DILocation(line: 1009, column: 28, scope: !2378)
!2419 = !DILocation(line: 1009, column: 33, scope: !2378)
!2420 = !DILocation(line: 1009, column: 8, scope: !2378)
!2421 = !DILocation(line: 1009, column: 15, scope: !2378)
!2422 = !{!2407, !511, i64 16}
!2423 = !DILocation(line: 1010, column: 18, scope: !2378)
!2424 = !DILocation(line: 1010, column: 23, scope: !2378)
!2425 = !DILocation(line: 1010, column: 8, scope: !2378)
!2426 = !DILocation(line: 1010, column: 16, scope: !2378)
!2427 = !{!2407, !511, i64 12}
!2428 = !DILocation(line: 1012, column: 19, scope: !2378)
!2429 = !DILocation(line: 1012, column: 24, scope: !2378)
!2430 = !DILocation(line: 1012, column: 29, scope: !2378)
!2431 = !DILocation(line: 1012, column: 8, scope: !2378)
!2432 = !DILocation(line: 1012, column: 16, scope: !2378)
!2433 = !{!2407, !511, i64 8}
!2434 = !DILocation(line: 1013, column: 18, scope: !2378)
!2435 = !DILocation(line: 1013, column: 23, scope: !2378)
!2436 = !DILocation(line: 1013, column: 27, scope: !2378)
!2437 = !DILocation(line: 1013, column: 8, scope: !2378)
!2438 = !DILocation(line: 1013, column: 15, scope: !2378)
!2439 = !{!2407, !511, i64 4}
!2440 = !DILocation(line: 1014, column: 18, scope: !2378)
!2441 = !DILocation(line: 1014, column: 23, scope: !2378)
!2442 = !DILocation(line: 1014, column: 27, scope: !2378)
!2443 = !DILocation(line: 1014, column: 8, scope: !2378)
!2444 = !DILocation(line: 1014, column: 15, scope: !2378)
!2445 = !{!2407, !511, i64 0}
!2446 = !DILocation(line: 1016, column: 12, scope: !2378)
!2447 = !DILocation(line: 1017, column: 1, scope: !2378)
!2448 = !DILocation(line: 1016, column: 5, scope: !2378)
!2449 = !DISubprogram(name: "_zip_buffer_get_32", scope: !23, file: !23, line: 413, type: !2450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!74, !469}
!2452 = !DISubprogram(name: "_zip_read_string", scope: !23, file: !23, line: 506, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!110, !469, !146, !85, !81, !294}
!2455 = !DISubprogram(name: "zip_error_code_zip", scope: !33, file: !33, line: 338, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!96, !2458}
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!2460 = !DISubprogram(name: "_zip_guess_encoding", scope: !23, file: !23, line: 480, type: !2461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!22, !110, !22}
!2463 = !DISubprogram(name: "_zip_read_data", scope: !23, file: !23, line: 504, type: !2464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!115, !469, !146, !220, !81, !294}
!2466 = !DISubprogram(name: "_zip_ef_parse", scope: !23, file: !23, line: 456, type: !2467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!81, !1754, !85, !131, !2469, !294}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!2470 = distinct !DISubprogram(name: "_zip_dirent_process_ef_utf_8", scope: !2, file: !2, line: 592, type: !2471, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!110, !1471, !85, !110}
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2484}
!2474 = !DILocalVariable(name: "de", arg: 1, scope: !2470, file: !2, line: 592, type: !1471)
!2475 = !DILocalVariable(name: "id", arg: 2, scope: !2470, file: !2, line: 592, type: !85)
!2476 = !DILocalVariable(name: "str", arg: 3, scope: !2470, file: !2, line: 592, type: !110)
!2477 = !DILocalVariable(name: "ef_len", scope: !2470, file: !2, line: 594, type: !85)
!2478 = !DILocalVariable(name: "ef_crc", scope: !2470, file: !2, line: 595, type: !74)
!2479 = !DILocalVariable(name: "buffer", scope: !2470, file: !2, line: 596, type: !469)
!2480 = !DILocalVariable(name: "ef", scope: !2470, file: !2, line: 598, type: !1754)
!2481 = !DILocalVariable(name: "len", scope: !2482, file: !2, line: 612, type: !85)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !2, line: 611, column: 43)
!2483 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 611, column: 9)
!2484 = !DILocalVariable(name: "ef_str", scope: !2482, file: !2, line: 613, type: !110)
!2485 = !DILocation(line: 592, column: 50, scope: !2470)
!2486 = !DILocation(line: 592, column: 67, scope: !2470)
!2487 = !DILocation(line: 592, column: 85, scope: !2470)
!2488 = !DILocation(line: 594, column: 5, scope: !2470)
!2489 = !DILocation(line: 594, column: 18, scope: !2470)
!2490 = !DILocation(line: 595, column: 5, scope: !2470)
!2491 = !DILocation(line: 595, column: 18, scope: !2470)
!2492 = !DILocation(line: 596, column: 5, scope: !2470)
!2493 = !DILocation(line: 596, column: 19, scope: !2470)
!2494 = !DILocation(line: 598, column: 5, scope: !2470)
!2495 = !DILocation(line: 598, column: 24, scope: !2470)
!2496 = !DILocation(line: 598, column: 47, scope: !2470)
!2497 = !DILocation(line: 598, column: 51, scope: !2470)
!2498 = !DILocation(line: 598, column: 74, scope: !2470)
!2499 = !DILocation(line: 598, column: 29, scope: !2470)
!2500 = !DILocation(line: 600, column: 9, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 600, column: 9)
!2502 = !DILocation(line: 600, column: 12, scope: !2501)
!2503 = !DILocation(line: 600, column: 20, scope: !2501)
!2504 = !DILocation(line: 600, column: 23, scope: !2501)
!2505 = !DILocation(line: 600, column: 30, scope: !2501)
!2506 = !DILocation(line: 600, column: 34, scope: !2501)
!2507 = !DILocation(line: 600, column: 37, scope: !2501)
!2508 = !DILocation(line: 600, column: 43, scope: !2501)
!2509 = !DILocation(line: 600, column: 9, scope: !2470)
!2510 = !DILocation(line: 601, column: 9, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 600, column: 49)
!2512 = !DILocation(line: 601, column: 2, scope: !2511)
!2513 = !DILocation(line: 604, column: 50, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 604, column: 9)
!2515 = !DILocation(line: 604, column: 54, scope: !2514)
!2516 = !DILocation(line: 604, column: 19, scope: !2514)
!2517 = !DILocation(line: 604, column: 17, scope: !2514)
!2518 = !DILocation(line: 604, column: 63, scope: !2514)
!2519 = !DILocation(line: 604, column: 9, scope: !2470)
!2520 = !DILocation(line: 605, column: 16, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2514, file: !2, line: 604, column: 72)
!2522 = !DILocation(line: 605, column: 9, scope: !2521)
!2523 = !DILocation(line: 608, column: 23, scope: !2470)
!2524 = !DILocation(line: 608, column: 5, scope: !2470)
!2525 = !DILocation(line: 609, column: 33, scope: !2470)
!2526 = !DILocation(line: 609, column: 14, scope: !2470)
!2527 = !DILocation(line: 609, column: 12, scope: !2470)
!2528 = !DILocation(line: 611, column: 27, scope: !2483)
!2529 = !DILocation(line: 611, column: 9, scope: !2483)
!2530 = !DILocation(line: 611, column: 35, scope: !2483)
!2531 = !DILocation(line: 611, column: 32, scope: !2483)
!2532 = !DILocation(line: 611, column: 9, scope: !2470)
!2533 = !DILocation(line: 612, column: 9, scope: !2482)
!2534 = !DILocation(line: 612, column: 22, scope: !2482)
!2535 = !DILocation(line: 612, column: 59, scope: !2482)
!2536 = !DILocation(line: 612, column: 42, scope: !2482)
!2537 = !DILocation(line: 612, column: 28, scope: !2482)
!2538 = !DILocation(line: 613, column: 9, scope: !2482)
!2539 = !DILocation(line: 613, column: 23, scope: !2482)
!2540 = !DILocation(line: 613, column: 64, scope: !2482)
!2541 = !DILocation(line: 613, column: 72, scope: !2482)
!2542 = !DILocation(line: 613, column: 48, scope: !2482)
!2543 = !DILocation(line: 613, column: 78, scope: !2482)
!2544 = !DILocation(line: 613, column: 32, scope: !2482)
!2545 = !DILocation(line: 615, column: 6, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 615, column: 6)
!2547 = !DILocation(line: 615, column: 13, scope: !2546)
!2548 = !DILocation(line: 615, column: 6, scope: !2482)
!2549 = !DILocation(line: 616, column: 23, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !2, line: 615, column: 22)
!2551 = !DILocation(line: 616, column: 6, scope: !2550)
!2552 = !DILocation(line: 617, column: 12, scope: !2550)
!2553 = !DILocation(line: 617, column: 10, scope: !2550)
!2554 = !DILocation(line: 618, column: 2, scope: !2550)
!2555 = !DILocation(line: 619, column: 5, scope: !2483)
!2556 = !DILocation(line: 619, column: 5, scope: !2482)
!2557 = !DILocation(line: 621, column: 22, scope: !2470)
!2558 = !DILocation(line: 621, column: 5, scope: !2470)
!2559 = !DILocation(line: 623, column: 12, scope: !2470)
!2560 = !DILocation(line: 623, column: 5, scope: !2470)
!2561 = !DILocation(line: 624, column: 1, scope: !2470)
!2562 = !DISubprogram(name: "_zip_ef_get_by_id", scope: !23, file: !23, line: 453, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!1754, !2565, !2567, !85, !85, !131, !294}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!2568 = !DISubprogram(name: "_zip_buffer_get_64", scope: !23, file: !23, line: 414, type: !1466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2569 = !DISubprogram(name: "_zip_buffer_skip", scope: !23, file: !23, line: 428, type: !1445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2570 = !DISubprogram(name: "_zip_buffer_eof", scope: !23, file: !23, line: 409, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2571 = distinct !DISubprogram(name: "_zip_dirent_process_winzip_aes", scope: !2, file: !2, line: 628, type: !2572, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2574)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!81, !69, !294}
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2575 = !DILocalVariable(name: "de", arg: 1, scope: !2571, file: !2, line: 628, type: !69)
!2576 = !DILocalVariable(name: "error", arg: 2, scope: !2571, file: !2, line: 628, type: !294)
!2577 = !DILocalVariable(name: "ef_len", scope: !2571, file: !2, line: 630, type: !85)
!2578 = !DILocalVariable(name: "buffer", scope: !2571, file: !2, line: 631, type: !469)
!2579 = !DILocalVariable(name: "ef", scope: !2571, file: !2, line: 632, type: !1754)
!2580 = !DILocalVariable(name: "crc_valid", scope: !2571, file: !2, line: 633, type: !81)
!2581 = !DILocalVariable(name: "enc_method", scope: !2571, file: !2, line: 634, type: !85)
!2582 = !DILocation(line: 628, column: 46, scope: !2571)
!2583 = !DILocation(line: 628, column: 63, scope: !2571)
!2584 = !DILocation(line: 630, column: 5, scope: !2571)
!2585 = !DILocation(line: 630, column: 18, scope: !2571)
!2586 = !DILocation(line: 631, column: 5, scope: !2571)
!2587 = !DILocation(line: 631, column: 19, scope: !2571)
!2588 = !DILocation(line: 632, column: 5, scope: !2571)
!2589 = !DILocation(line: 632, column: 24, scope: !2571)
!2590 = !DILocation(line: 633, column: 5, scope: !2571)
!2591 = !DILocation(line: 633, column: 10, scope: !2571)
!2592 = !DILocation(line: 634, column: 5, scope: !2571)
!2593 = !DILocation(line: 634, column: 18, scope: !2571)
!2594 = !DILocation(line: 637, column: 9, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 637, column: 9)
!2596 = !DILocation(line: 637, column: 13, scope: !2595)
!2597 = !DILocation(line: 637, column: 25, scope: !2595)
!2598 = !DILocation(line: 637, column: 9, scope: !2571)
!2599 = !DILocation(line: 638, column: 2, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !2, line: 637, column: 47)
!2601 = !DILocation(line: 641, column: 28, scope: !2571)
!2602 = !DILocation(line: 641, column: 32, scope: !2571)
!2603 = !DILocation(line: 641, column: 10, scope: !2571)
!2604 = !DILocation(line: 641, column: 8, scope: !2571)
!2605 = !DILocation(line: 643, column: 9, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 643, column: 9)
!2607 = !DILocation(line: 643, column: 12, scope: !2606)
!2608 = !DILocation(line: 643, column: 20, scope: !2606)
!2609 = !DILocation(line: 643, column: 23, scope: !2606)
!2610 = !DILocation(line: 643, column: 30, scope: !2606)
!2611 = !DILocation(line: 643, column: 9, scope: !2571)
!2612 = !DILocation(line: 644, column: 16, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2606, file: !2, line: 643, column: 35)
!2614 = !DILocation(line: 644, column: 2, scope: !2613)
!2615 = !DILocation(line: 645, column: 2, scope: !2613)
!2616 = !DILocation(line: 648, column: 50, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 648, column: 9)
!2618 = !DILocation(line: 648, column: 54, scope: !2617)
!2619 = !DILocation(line: 648, column: 19, scope: !2617)
!2620 = !DILocation(line: 648, column: 17, scope: !2617)
!2621 = !DILocation(line: 648, column: 63, scope: !2617)
!2622 = !DILocation(line: 648, column: 9, scope: !2571)
!2623 = !DILocation(line: 649, column: 16, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2617, file: !2, line: 648, column: 72)
!2625 = !DILocation(line: 649, column: 2, scope: !2624)
!2626 = !DILocation(line: 650, column: 9, scope: !2624)
!2627 = !DILocation(line: 655, column: 15, scope: !2571)
!2628 = !DILocation(line: 656, column: 32, scope: !2571)
!2629 = !DILocation(line: 656, column: 13, scope: !2571)
!2630 = !DILocation(line: 656, column: 5, scope: !2571)
!2631 = !DILocation(line: 661, column: 6, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 661, column: 6)
!2633 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 656, column: 41)
!2634 = !DILocation(line: 661, column: 10, scope: !2632)
!2635 = !DILocation(line: 661, column: 22, scope: !2632)
!2636 = !DILocation(line: 661, column: 6, scope: !2633)
!2637 = !DILocation(line: 662, column: 16, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2632, file: !2, line: 661, column: 49)
!2639 = !DILocation(line: 663, column: 2, scope: !2638)
!2640 = !DILocation(line: 664, column: 2, scope: !2633)
!2641 = !DILocation(line: 667, column: 16, scope: !2633)
!2642 = !DILocation(line: 667, column: 2, scope: !2633)
!2643 = !DILocation(line: 668, column: 19, scope: !2633)
!2644 = !DILocation(line: 668, column: 2, scope: !2633)
!2645 = !DILocation(line: 669, column: 2, scope: !2633)
!2646 = !DILocation(line: 673, column: 32, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 673, column: 9)
!2648 = !DILocation(line: 673, column: 16, scope: !2647)
!2649 = !DILocation(line: 673, column: 9, scope: !2647)
!2650 = !DILocation(line: 673, column: 53, scope: !2647)
!2651 = !DILocation(line: 673, column: 9, scope: !2571)
!2652 = !DILocation(line: 674, column: 16, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 673, column: 59)
!2654 = !DILocation(line: 674, column: 2, scope: !2653)
!2655 = !DILocation(line: 675, column: 19, scope: !2653)
!2656 = !DILocation(line: 675, column: 2, scope: !2653)
!2657 = !DILocation(line: 676, column: 2, scope: !2653)
!2658 = !DILocation(line: 680, column: 31, scope: !2571)
!2659 = !DILocation(line: 680, column: 13, scope: !2571)
!2660 = !DILocation(line: 680, column: 5, scope: !2571)
!2661 = !DILocation(line: 682, column: 13, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 680, column: 40)
!2663 = !DILocation(line: 683, column: 2, scope: !2662)
!2664 = !DILocation(line: 685, column: 13, scope: !2662)
!2665 = !DILocation(line: 686, column: 2, scope: !2662)
!2666 = !DILocation(line: 688, column: 13, scope: !2662)
!2667 = !DILocation(line: 689, column: 2, scope: !2662)
!2668 = !DILocation(line: 691, column: 16, scope: !2662)
!2669 = !DILocation(line: 691, column: 2, scope: !2662)
!2670 = !DILocation(line: 692, column: 19, scope: !2662)
!2671 = !DILocation(line: 692, column: 2, scope: !2662)
!2672 = !DILocation(line: 693, column: 2, scope: !2662)
!2673 = !DILocation(line: 696, column: 9, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2571, file: !2, line: 696, column: 9)
!2675 = !DILocation(line: 696, column: 16, scope: !2674)
!2676 = !DILocation(line: 696, column: 9, scope: !2571)
!2677 = !DILocation(line: 697, column: 16, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 696, column: 22)
!2679 = !DILocation(line: 697, column: 2, scope: !2678)
!2680 = !DILocation(line: 698, column: 19, scope: !2678)
!2681 = !DILocation(line: 698, column: 2, scope: !2678)
!2682 = !DILocation(line: 699, column: 2, scope: !2678)
!2683 = !DILocation(line: 702, column: 21, scope: !2571)
!2684 = !DILocation(line: 702, column: 5, scope: !2571)
!2685 = !DILocation(line: 702, column: 9, scope: !2571)
!2686 = !DILocation(line: 702, column: 19, scope: !2571)
!2687 = !DILocation(line: 703, column: 29, scope: !2571)
!2688 = !DILocation(line: 703, column: 5, scope: !2571)
!2689 = !DILocation(line: 703, column: 9, scope: !2571)
!2690 = !DILocation(line: 703, column: 27, scope: !2571)
!2691 = !DILocation(line: 704, column: 42, scope: !2571)
!2692 = !DILocation(line: 704, column: 23, scope: !2571)
!2693 = !DILocation(line: 704, column: 5, scope: !2571)
!2694 = !DILocation(line: 704, column: 9, scope: !2571)
!2695 = !DILocation(line: 704, column: 21, scope: !2571)
!2696 = !DILocation(line: 706, column: 22, scope: !2571)
!2697 = !DILocation(line: 706, column: 5, scope: !2571)
!2698 = !DILocation(line: 707, column: 5, scope: !2571)
!2699 = !DILocation(line: 708, column: 1, scope: !2571)
!2700 = !DISubprogram(name: "_zip_ef_remove_internal", scope: !23, file: !23, line: 457, type: !2701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!125, !125}
!2703 = distinct !DISubprogram(name: "_zip_dirent_size", scope: !2, file: !2, line: 712, type: !2704, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!92, !146, !85, !294}
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2717}
!2707 = !DILocalVariable(name: "src", arg: 1, scope: !2703, file: !2, line: 712, type: !146)
!2708 = !DILocalVariable(name: "flags", arg: 2, scope: !2703, file: !2, line: 712, type: !85)
!2709 = !DILocalVariable(name: "error", arg: 3, scope: !2703, file: !2, line: 712, type: !294)
!2710 = !DILocalVariable(name: "size", scope: !2703, file: !2, line: 714, type: !92)
!2711 = !DILocalVariable(name: "local", scope: !2703, file: !2, line: 715, type: !81)
!2712 = !DILocalVariable(name: "i", scope: !2703, file: !2, line: 716, type: !96)
!2713 = !DILocalVariable(name: "b", scope: !2703, file: !2, line: 717, type: !2714)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 48, elements: !2715)
!2715 = !{!2716}
!2716 = !DISubrange(count: 6)
!2717 = !DILocalVariable(name: "buffer", scope: !2703, file: !2, line: 718, type: !469)
!2718 = !DILocation(line: 712, column: 32, scope: !2703)
!2719 = !DILocation(line: 712, column: 50, scope: !2703)
!2720 = !DILocation(line: 712, column: 70, scope: !2703)
!2721 = !DILocation(line: 714, column: 5, scope: !2703)
!2722 = !DILocation(line: 714, column: 17, scope: !2703)
!2723 = !DILocation(line: 715, column: 5, scope: !2703)
!2724 = !DILocation(line: 715, column: 10, scope: !2703)
!2725 = !DILocation(line: 715, column: 19, scope: !2703)
!2726 = !DILocation(line: 715, column: 25, scope: !2703)
!2727 = !DILocation(line: 715, column: 41, scope: !2703)
!2728 = !DILocation(line: 716, column: 5, scope: !2703)
!2729 = !DILocation(line: 716, column: 9, scope: !2703)
!2730 = !DILocation(line: 717, column: 5, scope: !2703)
!2731 = !DILocation(line: 717, column: 17, scope: !2703)
!2732 = !DILocation(line: 718, column: 5, scope: !2703)
!2733 = !DILocation(line: 718, column: 19, scope: !2703)
!2734 = !DILocation(line: 720, column: 12, scope: !2703)
!2735 = !DILocation(line: 720, column: 10, scope: !2703)
!2736 = !DILocation(line: 722, column: 25, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 722, column: 9)
!2738 = !DILocation(line: 722, column: 30, scope: !2737)
!2739 = !DILocation(line: 722, column: 9, scope: !2737)
!2740 = !DILocation(line: 722, column: 57, scope: !2737)
!2741 = !DILocation(line: 722, column: 9, scope: !2703)
!2742 = !DILocation(line: 723, column: 36, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2737, file: !2, line: 722, column: 62)
!2744 = !DILocation(line: 723, column: 43, scope: !2743)
!2745 = !DILocation(line: 723, column: 9, scope: !2743)
!2746 = !DILocation(line: 724, column: 2, scope: !2743)
!2747 = !DILocation(line: 727, column: 47, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 727, column: 9)
!2749 = !DILocation(line: 727, column: 52, scope: !2748)
!2750 = !DILocation(line: 727, column: 67, scope: !2748)
!2751 = !DILocation(line: 727, column: 70, scope: !2748)
!2752 = !DILocation(line: 727, column: 19, scope: !2748)
!2753 = !DILocation(line: 727, column: 17, scope: !2748)
!2754 = !DILocation(line: 727, column: 78, scope: !2748)
!2755 = !DILocation(line: 727, column: 9, scope: !2703)
!2756 = !DILocation(line: 728, column: 2, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 727, column: 87)
!2758 = !DILocation(line: 731, column: 11, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 731, column: 5)
!2760 = !DILocation(line: 731, column: 10, scope: !2759)
!2761 = !DILocation(line: 731, column: 15, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2759, file: !2, line: 731, column: 5)
!2763 = !DILocation(line: 731, column: 18, scope: !2762)
!2764 = !DILocation(line: 731, column: 16, scope: !2762)
!2765 = !DILocation(line: 731, column: 5, scope: !2759)
!2766 = !DILocation(line: 732, column: 29, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2762, file: !2, line: 731, column: 39)
!2768 = !DILocation(line: 732, column: 10, scope: !2767)
!2769 = !DILocation(line: 732, column: 7, scope: !2767)
!2770 = !DILocation(line: 733, column: 5, scope: !2767)
!2771 = !DILocation(line: 731, column: 35, scope: !2762)
!2772 = !DILocation(line: 731, column: 5, scope: !2762)
!2773 = distinct !{!2773, !2765, !2774, !270}
!2774 = !DILocation(line: 733, column: 5, scope: !2759)
!2775 = !DILocation(line: 735, column: 26, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2703, file: !2, line: 735, column: 9)
!2777 = !DILocation(line: 735, column: 10, scope: !2776)
!2778 = !DILocation(line: 735, column: 9, scope: !2703)
!2779 = !DILocation(line: 736, column: 23, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2776, file: !2, line: 735, column: 35)
!2781 = !DILocation(line: 736, column: 9, scope: !2780)
!2782 = !DILocation(line: 737, column: 19, scope: !2780)
!2783 = !DILocation(line: 737, column: 2, scope: !2780)
!2784 = !DILocation(line: 738, column: 9, scope: !2780)
!2785 = !DILocation(line: 741, column: 22, scope: !2703)
!2786 = !DILocation(line: 741, column: 5, scope: !2703)
!2787 = !DILocation(line: 742, column: 12, scope: !2703)
!2788 = !DILocation(line: 742, column: 5, scope: !2703)
!2789 = !DILocation(line: 743, column: 1, scope: !2703)
!2790 = !DISubprogram(name: "zip_source_seek", scope: !33, file: !33, line: 408, type: !2791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!96, !146, !159, !96}
!2793 = distinct !DISubprogram(name: "_zip_ef_utf8", scope: !2, file: !2, line: 1021, type: !2794, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!125, !85, !110, !294}
!2796 = !{!2797, !2798, !2799, !2800, !2801, !2802, !2803}
!2797 = !DILocalVariable(name: "id", arg: 1, scope: !2793, file: !2, line: 1021, type: !85)
!2798 = !DILocalVariable(name: "str", arg: 2, scope: !2793, file: !2, line: 1021, type: !110)
!2799 = !DILocalVariable(name: "error", arg: 3, scope: !2793, file: !2, line: 1021, type: !294)
!2800 = !DILocalVariable(name: "raw", scope: !2793, file: !2, line: 1023, type: !1754)
!2801 = !DILocalVariable(name: "len", scope: !2793, file: !2, line: 1024, type: !74)
!2802 = !DILocalVariable(name: "buffer", scope: !2793, file: !2, line: 1025, type: !469)
!2803 = !DILocalVariable(name: "ef", scope: !2793, file: !2, line: 1026, type: !125)
!2804 = !DILocation(line: 1021, column: 27, scope: !2793)
!2805 = !DILocation(line: 1021, column: 45, scope: !2793)
!2806 = !DILocation(line: 1021, column: 63, scope: !2793)
!2807 = !DILocation(line: 1023, column: 5, scope: !2793)
!2808 = !DILocation(line: 1023, column: 24, scope: !2793)
!2809 = !DILocation(line: 1024, column: 5, scope: !2793)
!2810 = !DILocation(line: 1024, column: 18, scope: !2793)
!2811 = !DILocation(line: 1025, column: 5, scope: !2793)
!2812 = !DILocation(line: 1025, column: 19, scope: !2793)
!2813 = !DILocation(line: 1026, column: 5, scope: !2793)
!2814 = !DILocation(line: 1026, column: 24, scope: !2793)
!2815 = !DILocation(line: 1028, column: 30, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1028, column: 9)
!2817 = !DILocation(line: 1028, column: 14, scope: !2816)
!2818 = !DILocation(line: 1028, column: 13, scope: !2816)
!2819 = !DILocation(line: 1028, column: 64, scope: !2816)
!2820 = !DILocation(line: 1028, column: 9, scope: !2793)
!2821 = !DILocation(line: 1030, column: 2, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2816, file: !2, line: 1028, column: 73)
!2823 = !DILocation(line: 1033, column: 9, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1033, column: 9)
!2825 = !DILocation(line: 1033, column: 12, scope: !2824)
!2826 = !DILocation(line: 1033, column: 15, scope: !2824)
!2827 = !DILocation(line: 1033, column: 9, scope: !2793)
!2828 = !DILocation(line: 1034, column: 23, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2824, file: !2, line: 1033, column: 33)
!2830 = !DILocation(line: 1034, column: 9, scope: !2829)
!2831 = !DILocation(line: 1035, column: 9, scope: !2829)
!2832 = !DILocation(line: 1038, column: 41, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1038, column: 9)
!2834 = !DILocation(line: 1038, column: 44, scope: !2833)
!2835 = !DILocation(line: 1038, column: 19, scope: !2833)
!2836 = !DILocation(line: 1038, column: 17, scope: !2833)
!2837 = !DILocation(line: 1038, column: 49, scope: !2833)
!2838 = !DILocation(line: 1038, column: 9, scope: !2793)
!2839 = !DILocation(line: 1039, column: 16, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2833, file: !2, line: 1038, column: 58)
!2841 = !DILocation(line: 1039, column: 2, scope: !2840)
!2842 = !DILocation(line: 1040, column: 2, scope: !2840)
!2843 = !DILocation(line: 1043, column: 23, scope: !2793)
!2844 = !DILocation(line: 1043, column: 5, scope: !2793)
!2845 = !DILocation(line: 1044, column: 24, scope: !2793)
!2846 = !DILocation(line: 1044, column: 50, scope: !2793)
!2847 = !DILocation(line: 1044, column: 32, scope: !2793)
!2848 = !DILocation(line: 1044, column: 5, scope: !2793)
!2849 = !DILocation(line: 1045, column: 21, scope: !2793)
!2850 = !DILocation(line: 1045, column: 29, scope: !2793)
!2851 = !DILocation(line: 1045, column: 34, scope: !2793)
!2852 = !DILocation(line: 1045, column: 5, scope: !2793)
!2853 = !DILocation(line: 1047, column: 25, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2793, file: !2, line: 1047, column: 9)
!2855 = !DILocation(line: 1047, column: 10, scope: !2854)
!2856 = !DILocation(line: 1047, column: 9, scope: !2793)
!2857 = !DILocation(line: 1048, column: 23, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !2, line: 1047, column: 34)
!2859 = !DILocation(line: 1048, column: 9, scope: !2858)
!2860 = !DILocation(line: 1049, column: 26, scope: !2858)
!2861 = !DILocation(line: 1049, column: 9, scope: !2858)
!2862 = !DILocation(line: 1050, column: 9, scope: !2858)
!2863 = !DILocation(line: 1053, column: 22, scope: !2793)
!2864 = !DILocation(line: 1053, column: 60, scope: !2793)
!2865 = !DILocation(line: 1053, column: 41, scope: !2793)
!2866 = !DILocation(line: 1053, column: 26, scope: !2793)
!2867 = !DILocation(line: 1053, column: 87, scope: !2793)
!2868 = !DILocation(line: 1053, column: 70, scope: !2793)
!2869 = !DILocation(line: 1053, column: 10, scope: !2793)
!2870 = !DILocation(line: 1053, column: 8, scope: !2793)
!2871 = !DILocation(line: 1054, column: 22, scope: !2793)
!2872 = !DILocation(line: 1054, column: 5, scope: !2793)
!2873 = !DILocation(line: 1056, column: 12, scope: !2793)
!2874 = !DILocation(line: 1056, column: 5, scope: !2793)
!2875 = !DILocation(line: 1057, column: 1, scope: !2793)
!2876 = !DISubprogram(name: "_zip_ef_new", scope: !23, file: !23, line: 455, type: !2877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!125, !85, !85, !1754, !131}
!2879 = !DISubprogram(name: "_zip_buffer_put_8", scope: !23, file: !23, line: 426, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!96, !469, !116}
!2882 = distinct !DISubprogram(name: "_zip_u2d_time", scope: !2, file: !2, line: 1090, type: !2883, scopeLine: 1091, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{null, !98, !2567, !2567}
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DILocalVariable(name: "intime", arg: 1, scope: !2882, file: !2, line: 1090, type: !98)
!2887 = !DILocalVariable(name: "dtime", arg: 2, scope: !2882, file: !2, line: 1090, type: !2567)
!2888 = !DILocalVariable(name: "ddate", arg: 3, scope: !2882, file: !2, line: 1090, type: !2567)
!2889 = !DILocalVariable(name: "tm", scope: !2882, file: !2, line: 1092, type: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2891 = !DILocation(line: 1090, column: 22, scope: !2882)
!2892 = !DILocation(line: 1090, column: 44, scope: !2882)
!2893 = !DILocation(line: 1090, column: 65, scope: !2882)
!2894 = !DILocation(line: 1092, column: 5, scope: !2882)
!2895 = !DILocation(line: 1092, column: 16, scope: !2882)
!2896 = !DILocation(line: 1094, column: 10, scope: !2882)
!2897 = !DILocation(line: 1094, column: 8, scope: !2882)
!2898 = !DILocation(line: 1095, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2882, file: !2, line: 1095, column: 9)
!2900 = !DILocation(line: 1095, column: 13, scope: !2899)
!2901 = !DILocation(line: 1095, column: 21, scope: !2899)
!2902 = !DILocation(line: 1095, column: 9, scope: !2882)
!2903 = !DILocation(line: 1096, column: 2, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2899, file: !2, line: 1095, column: 27)
!2905 = !DILocation(line: 1096, column: 6, scope: !2904)
!2906 = !DILocation(line: 1096, column: 14, scope: !2904)
!2907 = !DILocation(line: 1097, column: 5, scope: !2904)
!2908 = !DILocation(line: 1099, column: 31, scope: !2882)
!2909 = !DILocation(line: 1099, column: 35, scope: !2882)
!2910 = !DILocation(line: 1099, column: 42, scope: !2882)
!2911 = !DILocation(line: 1099, column: 47, scope: !2882)
!2912 = !DILocation(line: 1099, column: 53, scope: !2882)
!2913 = !DILocation(line: 1099, column: 62, scope: !2882)
!2914 = !DILocation(line: 1099, column: 66, scope: !2882)
!2915 = !DILocation(line: 1099, column: 72, scope: !2882)
!2916 = !DILocation(line: 1099, column: 75, scope: !2882)
!2917 = !DILocation(line: 1099, column: 58, scope: !2882)
!2918 = !DILocation(line: 1099, column: 82, scope: !2882)
!2919 = !DILocation(line: 1099, column: 86, scope: !2882)
!2920 = !DILocation(line: 1099, column: 80, scope: !2882)
!2921 = !DILocation(line: 1099, column: 14, scope: !2882)
!2922 = !DILocation(line: 1099, column: 6, scope: !2882)
!2923 = !DILocation(line: 1099, column: 12, scope: !2882)
!2924 = !DILocation(line: 1100, column: 31, scope: !2882)
!2925 = !DILocation(line: 1100, column: 35, scope: !2882)
!2926 = !DILocation(line: 1100, column: 43, scope: !2882)
!2927 = !DILocation(line: 1100, column: 53, scope: !2882)
!2928 = !DILocation(line: 1100, column: 57, scope: !2882)
!2929 = !DILocation(line: 1100, column: 64, scope: !2882)
!2930 = !DILocation(line: 1100, column: 49, scope: !2882)
!2931 = !DILocation(line: 1100, column: 73, scope: !2882)
!2932 = !DILocation(line: 1100, column: 77, scope: !2882)
!2933 = !DILocation(line: 1100, column: 84, scope: !2882)
!2934 = !DILocation(line: 1100, column: 69, scope: !2882)
!2935 = !DILocation(line: 1100, column: 14, scope: !2882)
!2936 = !DILocation(line: 1100, column: 6, scope: !2882)
!2937 = !DILocation(line: 1100, column: 12, scope: !2882)
!2938 = !DILocation(line: 1103, column: 1, scope: !2882)
!2939 = !DISubprogram(name: "_zip_string_length", scope: !23, file: !23, line: 527, type: !2940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!85, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!2944 = !DISubprogram(name: "_zip_ef_size", scope: !23, file: !23, line: 458, type: !2945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!85, !2565, !131}
!2947 = !DISubprogram(name: "_zip_string_write", scope: !23, file: !23, line: 529, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!96, !183, !2942}
!2950 = !DISubprogram(name: "_zip_ef_write", scope: !23, file: !23, line: 459, type: !2951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!96, !183, !2565, !131}
!2953 = distinct !DISubprogram(name: "_zip_get_dirent", scope: !2, file: !2, line: 1061, type: !2954, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!69, !183, !104, !131, !294}
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DILocalVariable(name: "za", arg: 1, scope: !2953, file: !2, line: 1061, type: !183)
!2958 = !DILocalVariable(name: "idx", arg: 2, scope: !2953, file: !2, line: 1061, type: !104)
!2959 = !DILocalVariable(name: "flags", arg: 3, scope: !2953, file: !2, line: 1061, type: !131)
!2960 = !DILocalVariable(name: "error", arg: 4, scope: !2953, file: !2, line: 1061, type: !294)
!2961 = !DILocation(line: 1061, column: 24, scope: !2953)
!2962 = !DILocation(line: 1061, column: 41, scope: !2953)
!2963 = !DILocation(line: 1061, column: 58, scope: !2953)
!2964 = !DILocation(line: 1061, column: 78, scope: !2953)
!2965 = !DILocation(line: 1063, column: 9, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 1063, column: 9)
!2967 = !DILocation(line: 1063, column: 15, scope: !2966)
!2968 = !DILocation(line: 1063, column: 9, scope: !2953)
!2969 = !DILocation(line: 1064, column: 11, scope: !2966)
!2970 = !DILocation(line: 1064, column: 15, scope: !2966)
!2971 = !DILocation(line: 1064, column: 8, scope: !2966)
!2972 = !DILocation(line: 1064, column: 2, scope: !2966)
!2973 = !DILocation(line: 1066, column: 9, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 1066, column: 9)
!2975 = !DILocation(line: 1066, column: 16, scope: !2974)
!2976 = !DILocation(line: 1066, column: 20, scope: !2974)
!2977 = !{!510, !249, i64 72}
!2978 = !DILocation(line: 1066, column: 13, scope: !2974)
!2979 = !DILocation(line: 1066, column: 9, scope: !2953)
!2980 = !DILocation(line: 1067, column: 16, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2974, file: !2, line: 1066, column: 28)
!2982 = !DILocation(line: 1067, column: 2, scope: !2981)
!2983 = !DILocation(line: 1068, column: 2, scope: !2981)
!2984 = !DILocation(line: 1071, column: 10, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 1071, column: 9)
!2986 = !DILocation(line: 1071, column: 16, scope: !2985)
!2987 = !DILocation(line: 1071, column: 36, scope: !2985)
!2988 = !DILocation(line: 1071, column: 39, scope: !2985)
!2989 = !DILocation(line: 1071, column: 43, scope: !2985)
!2990 = !DILocation(line: 1071, column: 49, scope: !2985)
!2991 = !DILocation(line: 1071, column: 54, scope: !2985)
!2992 = !DILocation(line: 1071, column: 62, scope: !2985)
!2993 = !DILocation(line: 1071, column: 9, scope: !2953)
!2994 = !DILocation(line: 1072, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !2, line: 1072, column: 6)
!2996 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 1071, column: 71)
!2997 = !DILocation(line: 1072, column: 10, scope: !2995)
!2998 = !DILocation(line: 1072, column: 16, scope: !2995)
!2999 = !DILocation(line: 1072, column: 21, scope: !2995)
!3000 = !DILocation(line: 1072, column: 26, scope: !2995)
!3001 = !DILocation(line: 1072, column: 6, scope: !2996)
!3002 = !DILocation(line: 1073, column: 20, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2995, file: !2, line: 1072, column: 35)
!3004 = !DILocation(line: 1073, column: 6, scope: !3003)
!3005 = !DILocation(line: 1074, column: 6, scope: !3003)
!3006 = !DILocation(line: 1076, column: 6, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2996, file: !2, line: 1076, column: 6)
!3008 = !DILocation(line: 1076, column: 10, scope: !3007)
!3009 = !DILocation(line: 1076, column: 16, scope: !3007)
!3010 = !DILocation(line: 1076, column: 21, scope: !3007)
!3011 = !{!550, !257, i64 24}
!3012 = !DILocation(line: 1076, column: 29, scope: !3007)
!3013 = !DILocation(line: 1076, column: 33, scope: !3007)
!3014 = !DILocation(line: 1076, column: 39, scope: !3007)
!3015 = !DILocation(line: 1076, column: 59, scope: !3007)
!3016 = !DILocation(line: 1076, column: 6, scope: !2996)
!3017 = !DILocation(line: 1077, column: 20, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3007, file: !2, line: 1076, column: 65)
!3019 = !DILocation(line: 1077, column: 6, scope: !3018)
!3020 = !DILocation(line: 1078, column: 6, scope: !3018)
!3021 = !DILocation(line: 1080, column: 9, scope: !2996)
!3022 = !DILocation(line: 1080, column: 13, scope: !2996)
!3023 = !DILocation(line: 1080, column: 19, scope: !2996)
!3024 = !DILocation(line: 1080, column: 24, scope: !2996)
!3025 = !DILocation(line: 1080, column: 2, scope: !2996)
!3026 = !DILocation(line: 1083, column: 9, scope: !2985)
!3027 = !DILocation(line: 1083, column: 13, scope: !2985)
!3028 = !DILocation(line: 1083, column: 19, scope: !2985)
!3029 = !DILocation(line: 1083, column: 24, scope: !2985)
!3030 = !DILocation(line: 1083, column: 2, scope: !2985)
!3031 = !DILocation(line: 1084, column: 1, scope: !2953)
!3032 = !DISubprogram(name: "localtime", scope: !3033, file: !3033, line: 136, type: !3034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3033 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!2890, !3036}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!3038 = distinct !DISubprogram(name: "_zip_dirent_set_version_needed", scope: !2, file: !2, line: 1107, type: !3039, scopeLine: 1107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !69, !81}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "de", arg: 1, scope: !3038, file: !2, line: 1107, type: !69)
!3043 = !DILocalVariable(name: "force_zip64", arg: 2, scope: !3038, file: !2, line: 1107, type: !81)
!3044 = !DILocalVariable(name: "length", scope: !3038, file: !2, line: 1108, type: !85)
!3045 = !DILocation(line: 1107, column: 46, scope: !3038)
!3046 = !DILocation(line: 1107, column: 55, scope: !3038)
!3047 = !DILocation(line: 1108, column: 5, scope: !3038)
!3048 = !DILocation(line: 1108, column: 18, scope: !3038)
!3049 = !DILocation(line: 1110, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 1110, column: 9)
!3051 = !DILocation(line: 1110, column: 13, scope: !3050)
!3052 = !DILocation(line: 1110, column: 25, scope: !3050)
!3053 = !DILocation(line: 1110, column: 9, scope: !3038)
!3054 = !DILocation(line: 1111, column: 2, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3050, file: !2, line: 1110, column: 41)
!3056 = !DILocation(line: 1111, column: 6, scope: !3055)
!3057 = !DILocation(line: 1111, column: 21, scope: !3055)
!3058 = !DILocation(line: 1112, column: 2, scope: !3055)
!3059 = !DILocation(line: 1115, column: 9, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 1115, column: 9)
!3061 = !DILocation(line: 1115, column: 13, scope: !3060)
!3062 = !DILocation(line: 1115, column: 25, scope: !3060)
!3063 = !DILocation(line: 1115, column: 9, scope: !3038)
!3064 = !DILocation(line: 1116, column: 2, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3060, file: !2, line: 1115, column: 42)
!3066 = !DILocation(line: 1116, column: 6, scope: !3065)
!3067 = !DILocation(line: 1116, column: 21, scope: !3065)
!3068 = !DILocation(line: 1117, column: 2, scope: !3065)
!3069 = !DILocation(line: 1120, column: 9, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 1120, column: 9)
!3071 = !DILocation(line: 1120, column: 21, scope: !3070)
!3072 = !DILocation(line: 1120, column: 48, scope: !3070)
!3073 = !DILocation(line: 1120, column: 24, scope: !3070)
!3074 = !DILocation(line: 1120, column: 9, scope: !3038)
!3075 = !DILocation(line: 1121, column: 2, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !2, line: 1120, column: 56)
!3077 = !DILocation(line: 1121, column: 6, scope: !3076)
!3078 = !DILocation(line: 1121, column: 21, scope: !3076)
!3079 = !DILocation(line: 1122, column: 2, scope: !3076)
!3080 = !DILocation(line: 1125, column: 9, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 1125, column: 9)
!3082 = !DILocation(line: 1125, column: 13, scope: !3081)
!3083 = !DILocation(line: 1125, column: 25, scope: !3081)
!3084 = !DILocation(line: 1125, column: 43, scope: !3081)
!3085 = !DILocation(line: 1125, column: 46, scope: !3081)
!3086 = !DILocation(line: 1125, column: 50, scope: !3081)
!3087 = !DILocation(line: 1125, column: 68, scope: !3081)
!3088 = !DILocation(line: 1125, column: 9, scope: !3038)
!3089 = !DILocation(line: 1126, column: 2, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3081, file: !2, line: 1125, column: 91)
!3091 = !DILocation(line: 1126, column: 6, scope: !3090)
!3092 = !DILocation(line: 1126, column: 21, scope: !3090)
!3093 = !DILocation(line: 1127, column: 2, scope: !3090)
!3094 = !DILocation(line: 1131, column: 38, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 1131, column: 9)
!3096 = !DILocation(line: 1131, column: 42, scope: !3095)
!3097 = !DILocation(line: 1131, column: 19, scope: !3095)
!3098 = !DILocation(line: 1131, column: 17, scope: !3095)
!3099 = !DILocation(line: 1131, column: 9, scope: !3095)
!3100 = !DILocation(line: 1131, column: 53, scope: !3095)
!3101 = !DILocation(line: 1131, column: 9, scope: !3038)
!3102 = !DILocation(line: 1132, column: 6, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !2, line: 1132, column: 6)
!3104 = distinct !DILexicalBlock(scope: !3095, file: !2, line: 1131, column: 58)
!3105 = !DILocation(line: 1132, column: 10, scope: !3103)
!3106 = !DILocation(line: 1132, column: 20, scope: !3103)
!3107 = !DILocation(line: 1132, column: 24, scope: !3103)
!3108 = !DILocation(line: 1132, column: 30, scope: !3103)
!3109 = !DILocation(line: 1132, column: 34, scope: !3103)
!3110 = !DILocation(line: 1132, column: 6, scope: !3104)
!3111 = !DILocation(line: 1133, column: 6, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3103, file: !2, line: 1132, column: 42)
!3113 = !DILocation(line: 1133, column: 10, scope: !3112)
!3114 = !DILocation(line: 1133, column: 25, scope: !3112)
!3115 = !DILocation(line: 1134, column: 6, scope: !3112)
!3116 = !DILocation(line: 1136, column: 5, scope: !3104)
!3117 = !DILocation(line: 1138, column: 5, scope: !3038)
!3118 = !DILocation(line: 1138, column: 9, scope: !3038)
!3119 = !DILocation(line: 1138, column: 24, scope: !3038)
!3120 = !DILocation(line: 1139, column: 1, scope: !3038)
!3121 = !DISubprogram(name: "_zip_buffer_get_8", scope: !23, file: !23, line: 415, type: !3122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!116, !469}
!3124 = !DISubprogram(name: "_zip_string_crc32", scope: !23, file: !23, line: 525, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!74, !2942}
!3127 = !DISubprogram(name: "_zip_string_new", scope: !23, file: !23, line: 528, type: !3128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!110, !1754, !85, !131, !294}
!3130 = !DISubprogram(name: "mktime", scope: !3033, file: !3033, line: 83, type: !3131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!98, !2890}
!3133 = !DISubprogram(name: "_zip_string_get", scope: !23, file: !23, line: 526, type: !3134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!1754, !110, !3136, !131, !294}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)

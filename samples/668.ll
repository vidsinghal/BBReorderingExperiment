; ModuleID = 'samples/668.bc'
source_filename = "src/os/unix/ngx_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, ptr, i8 }
%struct.ngx_str_t = type { i64, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_iovec_t = type { ptr, i64, i64, i64 }
%struct.iovec = type { ptr, i64 }
%struct.ngx_chain_s = type { ptr, ptr }
%struct.ngx_buf_s = type { ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.timeval = type { i64, i64 }
%struct.ngx_time_t = type { i64, i64, i64 }
%struct.ngx_file_mapping_t = type { ptr, i64, ptr, i32, ptr }
%struct.ngx_dir_t = type { ptr, ptr, %struct.stat, i16 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.ngx_glob_t = type { i64, %struct.glob_t, ptr, ptr, i64 }
%struct.glob_t = type { i64, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@.str = private unnamed_addr constant [20 x i8] c"pread() \22%s\22 failed\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [21 x i8] c"pwrite() \22%s\22 failed\00", align 1, !dbg !7
@ngx_cached_time = external global ptr, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"open() \22%s\22 failed\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [24 x i8] c"ftruncate() \22%s\22 failed\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [22 x i8] c"mmap(%uz) \22%s\22 failed\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [20 x i8] c"close() \22%s\22 failed\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [24 x i8] c"munmap(%uz) \22%s\22 failed\00", align 1, !dbg !29
@ngx_pagesize = external global i64, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"pwritev() \22%s\22 failed\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [42 x i8] c"pwritev() \22%s\22 has written only %z of %uz\00", align 1, !dbg !33

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_read_file(ptr noundef %file, ptr noundef %buf, i64 noundef %size, i64 noundef %offset) #0 !dbg !64 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !175, metadata !DIExpression()), !dbg !184
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !176, metadata !DIExpression()), !dbg !185
  store i64 %size, ptr %size.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !177, metadata !DIExpression()), !dbg !188
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !178, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !190
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !179, metadata !DIExpression()), !dbg !191
  %0 = load ptr, ptr %file.addr, align 8, !dbg !192, !tbaa !180
  %fd = getelementptr inbounds %struct.ngx_file_s, ptr %0, i32 0, i32 0, !dbg !193
  %1 = load i32, ptr %fd, align 8, !dbg !193, !tbaa !194
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !200, !tbaa !180
  %3 = load i64, ptr %size.addr, align 8, !dbg !201, !tbaa !186
  %4 = load i64, ptr %offset.addr, align 8, !dbg !202, !tbaa !186
  %call = call i64 @pread64(i32 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4), !dbg !203
  store i64 %call, ptr %n, align 8, !dbg !204, !tbaa !186
  %5 = load i64, ptr %n, align 8, !dbg !205, !tbaa !186
  %cmp = icmp eq i64 %5, -1, !dbg !207
  br i1 %cmp, label %if.then, label %if.end5, !dbg !208

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %file.addr, align 8, !dbg !209, !tbaa !180
  %log = getelementptr inbounds %struct.ngx_file_s, ptr %6, i32 0, i32 5, !dbg !209
  %7 = load ptr, ptr %log, align 8, !dbg !209, !tbaa !212
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %7, i32 0, i32 0, !dbg !209
  %8 = load i64, ptr %log_level, align 8, !dbg !209, !tbaa !213
  %cmp1 = icmp uge i64 %8, 3, !dbg !209
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !215

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %file.addr, align 8, !dbg !209, !tbaa !180
  %log3 = getelementptr inbounds %struct.ngx_file_s, ptr %9, i32 0, i32 5, !dbg !209
  %10 = load ptr, ptr %log3, align 8, !dbg !209, !tbaa !212
  %call4 = call ptr @__errno_location() #9, !dbg !209
  %11 = load i32, ptr %call4, align 4, !dbg !209, !tbaa !216
  %12 = load ptr, ptr %file.addr, align 8, !dbg !209, !tbaa !180
  %name = getelementptr inbounds %struct.ngx_file_s, ptr %12, i32 0, i32 1, !dbg !209
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !209
  %13 = load ptr, ptr %data, align 8, !dbg !209, !tbaa !217
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %10, i32 noundef %11, ptr noundef @.str, ptr noundef %13), !dbg !209
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then2, %if.then
  store i64 -1, ptr %retval, align 8, !dbg !218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !218

if.end5:                                          ; preds = %entry
  %14 = load i64, ptr %n, align 8, !dbg !219, !tbaa !186
  %15 = load ptr, ptr %file.addr, align 8, !dbg !220, !tbaa !180
  %offset6 = getelementptr inbounds %struct.ngx_file_s, ptr %15, i32 0, i32 3, !dbg !221
  %16 = load i64, ptr %offset6, align 8, !dbg !222, !tbaa !223
  %add = add nsw i64 %16, %14, !dbg !222
  store i64 %add, ptr %offset6, align 8, !dbg !222, !tbaa !223
  %17 = load i64, ptr %n, align 8, !dbg !224, !tbaa !186
  store i64 %17, ptr %retval, align 8, !dbg !225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

cleanup:                                          ; preds = %if.end5, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !226
  %18 = load i64, ptr %retval, align 8, !dbg !226
  ret i64 %18, !dbg !226
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !227 i64 @pread64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare !dbg !233 void @ngx_log_error_core(i64 noundef, ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !238 ptr @__errno_location() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_write_file(ptr noundef %file, ptr noundef %buf, i64 noundef %size, i64 noundef %offset) #0 !dbg !243 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %written = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !245, metadata !DIExpression()), !dbg !252
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !246, metadata !DIExpression()), !dbg !253
  store i64 %size, ptr %size.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !247, metadata !DIExpression()), !dbg !254
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !248, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !256
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !249, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %written) #8, !dbg !256
  tail call void @llvm.dbg.declare(metadata ptr %written, metadata !250, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !259
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !251, metadata !DIExpression()), !dbg !260
  store i64 0, ptr %written, align 8, !dbg !261, !tbaa !186
  br label %for.cond, !dbg !262

for.cond:                                         ; preds = %if.end13, %if.then3, %entry
  %0 = load ptr, ptr %file.addr, align 8, !dbg !263, !tbaa !180
  %fd = getelementptr inbounds %struct.ngx_file_s, ptr %0, i32 0, i32 0, !dbg !267
  %1 = load i32, ptr %fd, align 8, !dbg !267, !tbaa !194
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !268, !tbaa !180
  %3 = load i64, ptr %written, align 8, !dbg !269, !tbaa !186
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3, !dbg !270
  %4 = load i64, ptr %size.addr, align 8, !dbg !271, !tbaa !186
  %5 = load i64, ptr %offset.addr, align 8, !dbg !272, !tbaa !186
  %call = call i64 @pwrite64(i32 noundef %1, ptr noundef %add.ptr, i64 noundef %4, i64 noundef %5), !dbg !273
  store i64 %call, ptr %n, align 8, !dbg !274, !tbaa !186
  %6 = load i64, ptr %n, align 8, !dbg !275, !tbaa !186
  %cmp = icmp eq i64 %6, -1, !dbg !277
  br i1 %cmp, label %if.then, label %if.end8, !dbg !278

if.then:                                          ; preds = %for.cond
  %call1 = call ptr @__errno_location() #9, !dbg !279
  %7 = load i32, ptr %call1, align 4, !dbg !279, !tbaa !216
  store i32 %7, ptr %err, align 4, !dbg !281, !tbaa !216
  %8 = load i32, ptr %err, align 4, !dbg !282, !tbaa !216
  %cmp2 = icmp eq i32 %8, 4, !dbg !284
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !285

if.then3:                                         ; preds = %if.then
  br label %for.cond, !dbg !286, !llvm.loop !288

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %file.addr, align 8, !dbg !292, !tbaa !180
  %log = getelementptr inbounds %struct.ngx_file_s, ptr %9, i32 0, i32 5, !dbg !292
  %10 = load ptr, ptr %log, align 8, !dbg !292, !tbaa !212
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %10, i32 0, i32 0, !dbg !292
  %11 = load i64, ptr %log_level, align 8, !dbg !292, !tbaa !213
  %cmp4 = icmp uge i64 %11, 3, !dbg !292
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !294

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %file.addr, align 8, !dbg !292, !tbaa !180
  %log6 = getelementptr inbounds %struct.ngx_file_s, ptr %12, i32 0, i32 5, !dbg !292
  %13 = load ptr, ptr %log6, align 8, !dbg !292, !tbaa !212
  %14 = load i32, ptr %err, align 4, !dbg !292, !tbaa !216
  %15 = load ptr, ptr %file.addr, align 8, !dbg !292, !tbaa !180
  %name = getelementptr inbounds %struct.ngx_file_s, ptr %15, i32 0, i32 1, !dbg !292
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !292
  %16 = load ptr, ptr %data, align 8, !dbg !292, !tbaa !217
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %13, i32 noundef %14, ptr noundef @.str.1, ptr noundef %16), !dbg !292
  br label %if.end7, !dbg !292

if.end7:                                          ; preds = %if.then5, %if.end
  store i64 -1, ptr %retval, align 8, !dbg !295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !295

if.end8:                                          ; preds = %for.cond
  %17 = load i64, ptr %n, align 8, !dbg !296, !tbaa !186
  %18 = load ptr, ptr %file.addr, align 8, !dbg !297, !tbaa !180
  %offset9 = getelementptr inbounds %struct.ngx_file_s, ptr %18, i32 0, i32 3, !dbg !298
  %19 = load i64, ptr %offset9, align 8, !dbg !299, !tbaa !223
  %add = add nsw i64 %19, %17, !dbg !299
  store i64 %add, ptr %offset9, align 8, !dbg !299, !tbaa !223
  %20 = load i64, ptr %n, align 8, !dbg !300, !tbaa !186
  %21 = load i64, ptr %written, align 8, !dbg !301, !tbaa !186
  %add10 = add nsw i64 %21, %20, !dbg !301
  store i64 %add10, ptr %written, align 8, !dbg !301, !tbaa !186
  %22 = load i64, ptr %n, align 8, !dbg !302, !tbaa !186
  %23 = load i64, ptr %size.addr, align 8, !dbg !304, !tbaa !186
  %cmp11 = icmp eq i64 %22, %23, !dbg !305
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !306

if.then12:                                        ; preds = %if.end8
  %24 = load i64, ptr %written, align 8, !dbg !307, !tbaa !186
  store i64 %24, ptr %retval, align 8, !dbg !309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !309

if.end13:                                         ; preds = %if.end8
  %25 = load i64, ptr %n, align 8, !dbg !310, !tbaa !186
  %26 = load i64, ptr %offset.addr, align 8, !dbg !311, !tbaa !186
  %add14 = add nsw i64 %26, %25, !dbg !311
  store i64 %add14, ptr %offset.addr, align 8, !dbg !311, !tbaa !186
  %27 = load i64, ptr %n, align 8, !dbg !312, !tbaa !186
  %28 = load i64, ptr %size.addr, align 8, !dbg !313, !tbaa !186
  %sub = sub i64 %28, %27, !dbg !313
  store i64 %sub, ptr %size.addr, align 8, !dbg !313, !tbaa !186
  br label %for.cond, !dbg !314, !llvm.loop !288

cleanup:                                          ; preds = %if.then12, %if.end7
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !315
  call void @llvm.lifetime.end.p0(i64 8, ptr %written) #8, !dbg !315
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !315
  %29 = load i64, ptr %retval, align 8, !dbg !315
  ret i64 %29, !dbg !315
}

declare !dbg !316 i64 @pwrite64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_open_tempfile(ptr noundef %name, i64 noundef %persistent, i64 noundef %access) #0 !dbg !321 {
entry:
  %name.addr = alloca ptr, align 8
  %persistent.addr = alloca i64, align 8
  %access.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !325, metadata !DIExpression()), !dbg !329
  store i64 %persistent, ptr %persistent.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %persistent.addr, metadata !326, metadata !DIExpression()), !dbg !330
  store i64 %access, ptr %access.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %access.addr, metadata !327, metadata !DIExpression()), !dbg !331
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #8, !dbg !332
  tail call void @llvm.dbg.declare(metadata ptr %fd, metadata !328, metadata !DIExpression()), !dbg !333
  %0 = load ptr, ptr %name.addr, align 8, !dbg !334, !tbaa !180
  %1 = load i64, ptr %access.addr, align 8, !dbg !335, !tbaa !186
  %tobool = icmp ne i64 %1, 0, !dbg !335
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !335

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %access.addr, align 8, !dbg !336, !tbaa !186
  br label %cond.end, !dbg !335

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !335

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ 384, %cond.false ], !dbg !335
  %call = call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef 194, i64 noundef %cond), !dbg !337
  store i32 %call, ptr %fd, align 4, !dbg !338, !tbaa !216
  %3 = load i32, ptr %fd, align 4, !dbg !339, !tbaa !216
  %cmp = icmp ne i32 %3, -1, !dbg !341
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !342

land.lhs.true:                                    ; preds = %cond.end
  %4 = load i64, ptr %persistent.addr, align 8, !dbg !343, !tbaa !186
  %tobool1 = icmp ne i64 %4, 0, !dbg !343
  br i1 %tobool1, label %if.end, label %if.then, !dbg !344

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %name.addr, align 8, !dbg !345, !tbaa !180
  %call2 = call i32 @unlink(ptr noundef %5) #8, !dbg !347
  br label %if.end, !dbg !348

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %6 = load i32, ptr %fd, align 4, !dbg !349, !tbaa !216
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #8, !dbg !350
  ret i32 %6, !dbg !351
}

declare !dbg !352 i32 @open64(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare !dbg !356 i32 @unlink(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_write_chain_to_file(ptr noundef %file, ptr noundef %cl, i64 noundef %offset, ptr noundef %pool) #0 !dbg !359 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cl.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %pool.addr = alloca ptr, align 8
  %total = alloca i64, align 8
  %n = alloca i64, align 8
  %vec = alloca %struct.ngx_iovec_t, align 8
  %iovs = alloca [64 x %struct.iovec], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !432, metadata !DIExpression()), !dbg !457
  store ptr %cl, ptr %cl.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !433, metadata !DIExpression()), !dbg !458
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !434, metadata !DIExpression()), !dbg !459
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %pool.addr, metadata !435, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #8, !dbg !461
  tail call void @llvm.dbg.declare(metadata ptr %total, metadata !436, metadata !DIExpression()), !dbg !462
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !461
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !437, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 32, ptr %vec) #8, !dbg !464
  tail call void @llvm.dbg.declare(metadata ptr %vec, metadata !438, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 1024, ptr %iovs) #8, !dbg !466
  tail call void @llvm.dbg.declare(metadata ptr %iovs, metadata !453, metadata !DIExpression()), !dbg !467
  %0 = load ptr, ptr %cl.addr, align 8, !dbg !468, !tbaa !180
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %0, i32 0, i32 1, !dbg !470
  %1 = load ptr, ptr %next, align 8, !dbg !470, !tbaa !471
  %cmp = icmp eq ptr %1, null, !dbg !473
  br i1 %cmp, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !475, !tbaa !180
  %3 = load ptr, ptr %cl.addr, align 8, !dbg !477, !tbaa !180
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %3, i32 0, i32 0, !dbg !478
  %4 = load ptr, ptr %buf, align 8, !dbg !478, !tbaa !479
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %4, i32 0, i32 0, !dbg !480
  %5 = load ptr, ptr %pos, align 8, !dbg !480, !tbaa !481
  %6 = load ptr, ptr %cl.addr, align 8, !dbg !483, !tbaa !180
  %buf1 = getelementptr inbounds %struct.ngx_chain_s, ptr %6, i32 0, i32 0, !dbg !484
  %7 = load ptr, ptr %buf1, align 8, !dbg !484, !tbaa !479
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %7, i32 0, i32 1, !dbg !485
  %8 = load ptr, ptr %last, align 8, !dbg !485, !tbaa !486
  %9 = load ptr, ptr %cl.addr, align 8, !dbg !487, !tbaa !180
  %buf2 = getelementptr inbounds %struct.ngx_chain_s, ptr %9, i32 0, i32 0, !dbg !488
  %10 = load ptr, ptr %buf2, align 8, !dbg !488, !tbaa !479
  %pos3 = getelementptr inbounds %struct.ngx_buf_s, ptr %10, i32 0, i32 0, !dbg !489
  %11 = load ptr, ptr %pos3, align 8, !dbg !489, !tbaa !481
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64, !dbg !490
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !490
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !490
  %12 = load i64, ptr %offset.addr, align 8, !dbg !491, !tbaa !186
  %call = call i64 @ngx_write_file(ptr noundef %2, ptr noundef %5, i64 noundef %sub.ptr.sub, i64 noundef %12), !dbg !492
  store i64 %call, ptr %retval, align 8, !dbg !493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !493

if.end:                                           ; preds = %entry
  store i64 0, ptr %total, align 8, !dbg !494, !tbaa !186
  %arraydecay = getelementptr inbounds [64 x %struct.iovec], ptr %iovs, i64 0, i64 0, !dbg !495
  %iovs4 = getelementptr inbounds %struct.ngx_iovec_t, ptr %vec, i32 0, i32 0, !dbg !496
  store ptr %arraydecay, ptr %iovs4, align 8, !dbg !497, !tbaa !498
  %nalloc = getelementptr inbounds %struct.ngx_iovec_t, ptr %vec, i32 0, i32 3, !dbg !500
  store i64 64, ptr %nalloc, align 8, !dbg !501, !tbaa !502
  br label %do.body, !dbg !503

do.body:                                          ; preds = %do.cond, %if.end
  %13 = load ptr, ptr %cl.addr, align 8, !dbg !504, !tbaa !180
  %call5 = call ptr @ngx_chain_to_iovec(ptr noundef %vec, ptr noundef %13), !dbg !506
  store ptr %call5, ptr %cl.addr, align 8, !dbg !507, !tbaa !180
  %count = getelementptr inbounds %struct.ngx_iovec_t, ptr %vec, i32 0, i32 1, !dbg !508
  %14 = load i64, ptr %count, align 8, !dbg !508, !tbaa !510
  %cmp6 = icmp eq i64 %14, 1, !dbg !511
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !512

if.then7:                                         ; preds = %do.body
  %15 = load ptr, ptr %file.addr, align 8, !dbg !513, !tbaa !180
  %arrayidx = getelementptr inbounds [64 x %struct.iovec], ptr %iovs, i64 0, i64 0, !dbg !515
  %iov_base = getelementptr inbounds %struct.iovec, ptr %arrayidx, i32 0, i32 0, !dbg !516
  %16 = load ptr, ptr %iov_base, align 16, !dbg !516, !tbaa !517
  %arrayidx8 = getelementptr inbounds [64 x %struct.iovec], ptr %iovs, i64 0, i64 0, !dbg !519
  %iov_len = getelementptr inbounds %struct.iovec, ptr %arrayidx8, i32 0, i32 1, !dbg !520
  %17 = load i64, ptr %iov_len, align 8, !dbg !520, !tbaa !521
  %18 = load i64, ptr %offset.addr, align 8, !dbg !522, !tbaa !186
  %call9 = call i64 @ngx_write_file(ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18), !dbg !523
  store i64 %call9, ptr %n, align 8, !dbg !524, !tbaa !186
  %19 = load i64, ptr %n, align 8, !dbg !525, !tbaa !186
  %cmp10 = icmp eq i64 %19, -1, !dbg !527
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !528

if.then11:                                        ; preds = %if.then7
  %20 = load i64, ptr %n, align 8, !dbg !529, !tbaa !186
  store i64 %20, ptr %retval, align 8, !dbg !531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !531

if.end12:                                         ; preds = %if.then7
  %21 = load i64, ptr %total, align 8, !dbg !532, !tbaa !186
  %22 = load i64, ptr %n, align 8, !dbg !533, !tbaa !186
  %add = add nsw i64 %21, %22, !dbg !534
  store i64 %add, ptr %retval, align 8, !dbg !535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !535

if.end13:                                         ; preds = %do.body
  %23 = load ptr, ptr %file.addr, align 8, !dbg !536, !tbaa !180
  %24 = load i64, ptr %offset.addr, align 8, !dbg !537, !tbaa !186
  %call14 = call i64 @ngx_writev_file(ptr noundef %23, ptr noundef %vec, i64 noundef %24), !dbg !538
  store i64 %call14, ptr %n, align 8, !dbg !539, !tbaa !186
  %25 = load i64, ptr %n, align 8, !dbg !540, !tbaa !186
  %cmp15 = icmp eq i64 %25, -1, !dbg !542
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !543

if.then16:                                        ; preds = %if.end13
  %26 = load i64, ptr %n, align 8, !dbg !544, !tbaa !186
  store i64 %26, ptr %retval, align 8, !dbg !546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !546

if.end17:                                         ; preds = %if.end13
  %27 = load i64, ptr %n, align 8, !dbg !547, !tbaa !186
  %28 = load i64, ptr %offset.addr, align 8, !dbg !548, !tbaa !186
  %add18 = add nsw i64 %28, %27, !dbg !548
  store i64 %add18, ptr %offset.addr, align 8, !dbg !548, !tbaa !186
  %29 = load i64, ptr %n, align 8, !dbg !549, !tbaa !186
  %30 = load i64, ptr %total, align 8, !dbg !550, !tbaa !186
  %add19 = add nsw i64 %30, %29, !dbg !550
  store i64 %add19, ptr %total, align 8, !dbg !550, !tbaa !186
  br label %do.cond, !dbg !551

do.cond:                                          ; preds = %if.end17
  %31 = load ptr, ptr %cl.addr, align 8, !dbg !552, !tbaa !180
  %tobool = icmp ne ptr %31, null, !dbg !551
  br i1 %tobool, label %do.body, label %do.end, !dbg !551, !llvm.loop !553

do.end:                                           ; preds = %do.cond
  %32 = load i64, ptr %total, align 8, !dbg !556, !tbaa !186
  store i64 %32, ptr %retval, align 8, !dbg !557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !557

cleanup:                                          ; preds = %do.end, %if.then16, %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 1024, ptr %iovs) #8, !dbg !558
  call void @llvm.lifetime.end.p0(i64 32, ptr %vec) #8, !dbg !558
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !558
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #8, !dbg !558
  %33 = load i64, ptr %retval, align 8, !dbg !558
  ret i64 %33, !dbg !558
}

; Function Attrs: nounwind uwtable
define internal ptr @ngx_chain_to_iovec(ptr noundef %vec, ptr noundef %cl) #0 !dbg !559 {
entry:
  %vec.addr = alloca ptr, align 8
  %cl.addr = alloca ptr, align 8
  %total = alloca i64, align 8
  %size = alloca i64, align 8
  %prev = alloca ptr, align 8
  %n = alloca i64, align 8
  %iov = alloca ptr, align 8
  store ptr %vec, ptr %vec.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %vec.addr, metadata !564, metadata !DIExpression()), !dbg !571
  store ptr %cl, ptr %cl.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %cl.addr, metadata !565, metadata !DIExpression()), !dbg !572
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #8, !dbg !573
  tail call void @llvm.dbg.declare(metadata ptr %total, metadata !566, metadata !DIExpression()), !dbg !574
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !573
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !567, metadata !DIExpression()), !dbg !575
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #8, !dbg !576
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !568, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !578
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !569, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov) #8, !dbg !580
  tail call void @llvm.dbg.declare(metadata ptr %iov, metadata !570, metadata !DIExpression()), !dbg !581
  store ptr null, ptr %iov, align 8, !dbg !582, !tbaa !180
  store ptr null, ptr %prev, align 8, !dbg !583, !tbaa !180
  store i64 0, ptr %total, align 8, !dbg !584, !tbaa !186
  store i64 0, ptr %n, align 8, !dbg !585, !tbaa !186
  br label %for.cond, !dbg !586

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %cl.addr, align 8, !dbg !587, !tbaa !180
  %tobool = icmp ne ptr %0, null, !dbg !590
  br i1 %tobool, label %for.body, label %for.end, !dbg !590

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %cl.addr, align 8, !dbg !591, !tbaa !180
  %buf = getelementptr inbounds %struct.ngx_chain_s, ptr %1, i32 0, i32 0, !dbg !591
  %2 = load ptr, ptr %buf, align 8, !dbg !591, !tbaa !479
  %flush = getelementptr inbounds %struct.ngx_buf_s, ptr %2, i32 0, i32 9, !dbg !591
  %bf.load = load i16, ptr %flush, align 8, !dbg !591
  %bf.lshr = lshr i16 %bf.load, 5, !dbg !591
  %bf.clear = and i16 %bf.lshr, 1, !dbg !591
  %bf.cast = zext i16 %bf.clear to i32, !dbg !591
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !591
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false, !dbg !591

lor.lhs.false:                                    ; preds = %for.body
  %3 = load ptr, ptr %cl.addr, align 8, !dbg !591, !tbaa !180
  %buf2 = getelementptr inbounds %struct.ngx_chain_s, ptr %3, i32 0, i32 0, !dbg !591
  %4 = load ptr, ptr %buf2, align 8, !dbg !591, !tbaa !479
  %last_buf = getelementptr inbounds %struct.ngx_buf_s, ptr %4, i32 0, i32 9, !dbg !591
  %bf.load3 = load i16, ptr %last_buf, align 8, !dbg !591
  %bf.lshr4 = lshr i16 %bf.load3, 7, !dbg !591
  %bf.clear5 = and i16 %bf.lshr4, 1, !dbg !591
  %bf.cast6 = zext i16 %bf.clear5 to i32, !dbg !591
  %tobool7 = icmp ne i32 %bf.cast6, 0, !dbg !591
  br i1 %tobool7, label %land.lhs.true, label %lor.lhs.false8, !dbg !591

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %cl.addr, align 8, !dbg !591, !tbaa !180
  %buf9 = getelementptr inbounds %struct.ngx_chain_s, ptr %5, i32 0, i32 0, !dbg !591
  %6 = load ptr, ptr %buf9, align 8, !dbg !591, !tbaa !479
  %sync = getelementptr inbounds %struct.ngx_buf_s, ptr %6, i32 0, i32 9, !dbg !591
  %bf.load10 = load i16, ptr %sync, align 8, !dbg !591
  %bf.lshr11 = lshr i16 %bf.load10, 6, !dbg !591
  %bf.clear12 = and i16 %bf.lshr11, 1, !dbg !591
  %bf.cast13 = zext i16 %bf.clear12 to i32, !dbg !591
  %tobool14 = icmp ne i32 %bf.cast13, 0, !dbg !591
  br i1 %tobool14, label %land.lhs.true, label %if.end, !dbg !591

land.lhs.true:                                    ; preds = %lor.lhs.false8, %lor.lhs.false, %for.body
  %7 = load ptr, ptr %cl.addr, align 8, !dbg !591, !tbaa !180
  %buf15 = getelementptr inbounds %struct.ngx_chain_s, ptr %7, i32 0, i32 0, !dbg !591
  %8 = load ptr, ptr %buf15, align 8, !dbg !591, !tbaa !479
  %temporary = getelementptr inbounds %struct.ngx_buf_s, ptr %8, i32 0, i32 9, !dbg !591
  %bf.load16 = load i16, ptr %temporary, align 8, !dbg !591
  %bf.clear17 = and i16 %bf.load16, 1, !dbg !591
  %bf.cast18 = zext i16 %bf.clear17 to i32, !dbg !591
  %tobool19 = icmp ne i32 %bf.cast18, 0, !dbg !591
  br i1 %tobool19, label %if.end, label %lor.lhs.false20, !dbg !591

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %cl.addr, align 8, !dbg !591, !tbaa !180
  %buf21 = getelementptr inbounds %struct.ngx_chain_s, ptr %9, i32 0, i32 0, !dbg !591
  %10 = load ptr, ptr %buf21, align 8, !dbg !591, !tbaa !479
  %memory = getelementptr inbounds %struct.ngx_buf_s, ptr %10, i32 0, i32 9, !dbg !591
  %bf.load22 = load i16, ptr %memory, align 8, !dbg !591
  %bf.lshr23 = lshr i16 %bf.load22, 1, !dbg !591
  %bf.clear24 = and i16 %bf.lshr23, 1, !dbg !591
  %bf.cast25 = zext i16 %bf.clear24 to i32, !dbg !591
  %tobool26 = icmp ne i32 %bf.cast25, 0, !dbg !591
  br i1 %tobool26, label %if.end, label %lor.lhs.false27, !dbg !591

lor.lhs.false27:                                  ; preds = %lor.lhs.false20
  %11 = load ptr, ptr %cl.addr, align 8, !dbg !591, !tbaa !180
  %buf28 = getelementptr inbounds %struct.ngx_chain_s, ptr %11, i32 0, i32 0, !dbg !591
  %12 = load ptr, ptr %buf28, align 8, !dbg !591, !tbaa !479
  %mmap = getelementptr inbounds %struct.ngx_buf_s, ptr %12, i32 0, i32 9, !dbg !591
  %bf.load29 = load i16, ptr %mmap, align 8, !dbg !591
  %bf.lshr30 = lshr i16 %bf.load29, 2, !dbg !591
  %bf.clear31 = and i16 %bf.lshr30, 1, !dbg !591
  %bf.cast32 = zext i16 %bf.clear31 to i32, !dbg !591
  %tobool33 = icmp ne i32 %bf.cast32, 0, !dbg !591
  br i1 %tobool33, label %if.end, label %land.lhs.true34, !dbg !591

land.lhs.true34:                                  ; preds = %lor.lhs.false27
  %13 = load ptr, ptr %cl.addr, align 8, !dbg !591, !tbaa !180
  %buf35 = getelementptr inbounds %struct.ngx_chain_s, ptr %13, i32 0, i32 0, !dbg !591
  %14 = load ptr, ptr %buf35, align 8, !dbg !591, !tbaa !479
  %in_file = getelementptr inbounds %struct.ngx_buf_s, ptr %14, i32 0, i32 9, !dbg !591
  %bf.load36 = load i16, ptr %in_file, align 8, !dbg !591
  %bf.lshr37 = lshr i16 %bf.load36, 4, !dbg !591
  %bf.clear38 = and i16 %bf.lshr37, 1, !dbg !591
  %bf.cast39 = zext i16 %bf.clear38 to i32, !dbg !591
  %tobool40 = icmp ne i32 %bf.cast39, 0, !dbg !591
  br i1 %tobool40, label %if.end, label %if.then, !dbg !594

if.then:                                          ; preds = %land.lhs.true34
  br label %for.inc, !dbg !595

if.end:                                           ; preds = %land.lhs.true34, %lor.lhs.false27, %lor.lhs.false20, %land.lhs.true, %lor.lhs.false8
  %15 = load ptr, ptr %cl.addr, align 8, !dbg !597, !tbaa !180
  %buf41 = getelementptr inbounds %struct.ngx_chain_s, ptr %15, i32 0, i32 0, !dbg !598
  %16 = load ptr, ptr %buf41, align 8, !dbg !598, !tbaa !479
  %last = getelementptr inbounds %struct.ngx_buf_s, ptr %16, i32 0, i32 1, !dbg !599
  %17 = load ptr, ptr %last, align 8, !dbg !599, !tbaa !486
  %18 = load ptr, ptr %cl.addr, align 8, !dbg !600, !tbaa !180
  %buf42 = getelementptr inbounds %struct.ngx_chain_s, ptr %18, i32 0, i32 0, !dbg !601
  %19 = load ptr, ptr %buf42, align 8, !dbg !601, !tbaa !479
  %pos = getelementptr inbounds %struct.ngx_buf_s, ptr %19, i32 0, i32 0, !dbg !602
  %20 = load ptr, ptr %pos, align 8, !dbg !602, !tbaa !481
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64, !dbg !603
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64, !dbg !603
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !603
  store i64 %sub.ptr.sub, ptr %size, align 8, !dbg !604, !tbaa !186
  %21 = load ptr, ptr %prev, align 8, !dbg !605, !tbaa !180
  %22 = load ptr, ptr %cl.addr, align 8, !dbg !607, !tbaa !180
  %buf43 = getelementptr inbounds %struct.ngx_chain_s, ptr %22, i32 0, i32 0, !dbg !608
  %23 = load ptr, ptr %buf43, align 8, !dbg !608, !tbaa !479
  %pos44 = getelementptr inbounds %struct.ngx_buf_s, ptr %23, i32 0, i32 0, !dbg !609
  %24 = load ptr, ptr %pos44, align 8, !dbg !609, !tbaa !481
  %cmp = icmp eq ptr %21, %24, !dbg !610
  br i1 %cmp, label %if.then45, label %if.else, !dbg !611

if.then45:                                        ; preds = %if.end
  %25 = load i64, ptr %size, align 8, !dbg !612, !tbaa !186
  %26 = load ptr, ptr %iov, align 8, !dbg !614, !tbaa !180
  %iov_len = getelementptr inbounds %struct.iovec, ptr %26, i32 0, i32 1, !dbg !615
  %27 = load i64, ptr %iov_len, align 8, !dbg !616, !tbaa !521
  %add = add i64 %27, %25, !dbg !616
  store i64 %add, ptr %iov_len, align 8, !dbg !616, !tbaa !521
  br label %if.end52, !dbg !617

if.else:                                          ; preds = %if.end
  %28 = load i64, ptr %n, align 8, !dbg !618, !tbaa !186
  %29 = load ptr, ptr %vec.addr, align 8, !dbg !621, !tbaa !180
  %nalloc = getelementptr inbounds %struct.ngx_iovec_t, ptr %29, i32 0, i32 3, !dbg !622
  %30 = load i64, ptr %nalloc, align 8, !dbg !622, !tbaa !502
  %cmp46 = icmp eq i64 %28, %30, !dbg !623
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !624

if.then47:                                        ; preds = %if.else
  br label %for.end, !dbg !625

if.end48:                                         ; preds = %if.else
  %31 = load ptr, ptr %vec.addr, align 8, !dbg !627, !tbaa !180
  %iovs = getelementptr inbounds %struct.ngx_iovec_t, ptr %31, i32 0, i32 0, !dbg !628
  %32 = load ptr, ptr %iovs, align 8, !dbg !628, !tbaa !498
  %33 = load i64, ptr %n, align 8, !dbg !629, !tbaa !186
  %inc = add i64 %33, 1, !dbg !629
  store i64 %inc, ptr %n, align 8, !dbg !629, !tbaa !186
  %arrayidx = getelementptr inbounds %struct.iovec, ptr %32, i64 %33, !dbg !627
  store ptr %arrayidx, ptr %iov, align 8, !dbg !630, !tbaa !180
  %34 = load ptr, ptr %cl.addr, align 8, !dbg !631, !tbaa !180
  %buf49 = getelementptr inbounds %struct.ngx_chain_s, ptr %34, i32 0, i32 0, !dbg !632
  %35 = load ptr, ptr %buf49, align 8, !dbg !632, !tbaa !479
  %pos50 = getelementptr inbounds %struct.ngx_buf_s, ptr %35, i32 0, i32 0, !dbg !633
  %36 = load ptr, ptr %pos50, align 8, !dbg !633, !tbaa !481
  %37 = load ptr, ptr %iov, align 8, !dbg !634, !tbaa !180
  %iov_base = getelementptr inbounds %struct.iovec, ptr %37, i32 0, i32 0, !dbg !635
  store ptr %36, ptr %iov_base, align 8, !dbg !636, !tbaa !517
  %38 = load i64, ptr %size, align 8, !dbg !637, !tbaa !186
  %39 = load ptr, ptr %iov, align 8, !dbg !638, !tbaa !180
  %iov_len51 = getelementptr inbounds %struct.iovec, ptr %39, i32 0, i32 1, !dbg !639
  store i64 %38, ptr %iov_len51, align 8, !dbg !640, !tbaa !521
  br label %if.end52

if.end52:                                         ; preds = %if.end48, %if.then45
  %40 = load ptr, ptr %cl.addr, align 8, !dbg !641, !tbaa !180
  %buf53 = getelementptr inbounds %struct.ngx_chain_s, ptr %40, i32 0, i32 0, !dbg !642
  %41 = load ptr, ptr %buf53, align 8, !dbg !642, !tbaa !479
  %pos54 = getelementptr inbounds %struct.ngx_buf_s, ptr %41, i32 0, i32 0, !dbg !643
  %42 = load ptr, ptr %pos54, align 8, !dbg !643, !tbaa !481
  %43 = load i64, ptr %size, align 8, !dbg !644, !tbaa !186
  %add.ptr = getelementptr inbounds i8, ptr %42, i64 %43, !dbg !645
  store ptr %add.ptr, ptr %prev, align 8, !dbg !646, !tbaa !180
  %44 = load i64, ptr %size, align 8, !dbg !647, !tbaa !186
  %45 = load i64, ptr %total, align 8, !dbg !648, !tbaa !186
  %add55 = add i64 %45, %44, !dbg !648
  store i64 %add55, ptr %total, align 8, !dbg !648, !tbaa !186
  br label %for.inc, !dbg !649

for.inc:                                          ; preds = %if.end52, %if.then
  %46 = load ptr, ptr %cl.addr, align 8, !dbg !650, !tbaa !180
  %next = getelementptr inbounds %struct.ngx_chain_s, ptr %46, i32 0, i32 1, !dbg !651
  %47 = load ptr, ptr %next, align 8, !dbg !651, !tbaa !471
  store ptr %47, ptr %cl.addr, align 8, !dbg !652, !tbaa !180
  br label %for.cond, !dbg !653, !llvm.loop !654

for.end:                                          ; preds = %if.then47, %for.cond
  %48 = load i64, ptr %n, align 8, !dbg !656, !tbaa !186
  %49 = load ptr, ptr %vec.addr, align 8, !dbg !657, !tbaa !180
  %count = getelementptr inbounds %struct.ngx_iovec_t, ptr %49, i32 0, i32 1, !dbg !658
  store i64 %48, ptr %count, align 8, !dbg !659, !tbaa !510
  %50 = load i64, ptr %total, align 8, !dbg !660, !tbaa !186
  %51 = load ptr, ptr %vec.addr, align 8, !dbg !661, !tbaa !180
  %size56 = getelementptr inbounds %struct.ngx_iovec_t, ptr %51, i32 0, i32 2, !dbg !662
  store i64 %50, ptr %size56, align 8, !dbg !663, !tbaa !664
  %52 = load ptr, ptr %cl.addr, align 8, !dbg !665, !tbaa !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov) #8, !dbg !666
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !666
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #8, !dbg !666
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !666
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #8, !dbg !666
  ret ptr %52, !dbg !667
}

; Function Attrs: nounwind uwtable
define internal i64 @ngx_writev_file(ptr noundef %file, ptr noundef %vec, i64 noundef %offset) #0 !dbg !668 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %vec.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !672, metadata !DIExpression()), !dbg !678
  store ptr %vec, ptr %vec.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %vec.addr, metadata !673, metadata !DIExpression()), !dbg !679
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !674, metadata !DIExpression()), !dbg !680
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !681
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !675, metadata !DIExpression()), !dbg !682
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !683
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !676, metadata !DIExpression()), !dbg !684
  br label %eintr, !dbg !683

eintr:                                            ; preds = %if.then5, %entry
  tail call void @llvm.dbg.label(metadata !677), !dbg !685
  %0 = load ptr, ptr %file.addr, align 8, !dbg !686, !tbaa !180
  %fd = getelementptr inbounds %struct.ngx_file_s, ptr %0, i32 0, i32 0, !dbg !687
  %1 = load i32, ptr %fd, align 8, !dbg !687, !tbaa !194
  %2 = load ptr, ptr %vec.addr, align 8, !dbg !688, !tbaa !180
  %iovs = getelementptr inbounds %struct.ngx_iovec_t, ptr %2, i32 0, i32 0, !dbg !689
  %3 = load ptr, ptr %iovs, align 8, !dbg !689, !tbaa !498
  %4 = load ptr, ptr %vec.addr, align 8, !dbg !690, !tbaa !180
  %count = getelementptr inbounds %struct.ngx_iovec_t, ptr %4, i32 0, i32 1, !dbg !691
  %5 = load i64, ptr %count, align 8, !dbg !691, !tbaa !510
  %conv = trunc i64 %5 to i32, !dbg !690
  %6 = load i64, ptr %offset.addr, align 8, !dbg !692, !tbaa !186
  %call = call i64 @pwritev64(i32 noundef %1, ptr noundef %3, i32 noundef %conv, i64 noundef %6), !dbg !693
  store i64 %call, ptr %n, align 8, !dbg !694, !tbaa !186
  %7 = load i64, ptr %n, align 8, !dbg !695, !tbaa !186
  %cmp = icmp eq i64 %7, -1, !dbg !697
  br i1 %cmp, label %if.then, label %if.end11, !dbg !698

if.then:                                          ; preds = %eintr
  %call2 = call ptr @__errno_location() #9, !dbg !699
  %8 = load i32, ptr %call2, align 4, !dbg !699, !tbaa !216
  store i32 %8, ptr %err, align 4, !dbg !701, !tbaa !216
  %9 = load i32, ptr %err, align 4, !dbg !702, !tbaa !216
  %cmp3 = icmp eq i32 %9, 4, !dbg !704
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !705

if.then5:                                         ; preds = %if.then
  br label %eintr, !dbg !706

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %file.addr, align 8, !dbg !708, !tbaa !180
  %log = getelementptr inbounds %struct.ngx_file_s, ptr %10, i32 0, i32 5, !dbg !708
  %11 = load ptr, ptr %log, align 8, !dbg !708, !tbaa !212
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %11, i32 0, i32 0, !dbg !708
  %12 = load i64, ptr %log_level, align 8, !dbg !708, !tbaa !213
  %cmp6 = icmp uge i64 %12, 3, !dbg !708
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !710

if.then8:                                         ; preds = %if.end
  %13 = load ptr, ptr %file.addr, align 8, !dbg !708, !tbaa !180
  %log9 = getelementptr inbounds %struct.ngx_file_s, ptr %13, i32 0, i32 5, !dbg !708
  %14 = load ptr, ptr %log9, align 8, !dbg !708, !tbaa !212
  %15 = load i32, ptr %err, align 4, !dbg !708, !tbaa !216
  %16 = load ptr, ptr %file.addr, align 8, !dbg !708, !tbaa !180
  %name = getelementptr inbounds %struct.ngx_file_s, ptr %16, i32 0, i32 1, !dbg !708
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %name, i32 0, i32 1, !dbg !708
  %17 = load ptr, ptr %data, align 8, !dbg !708, !tbaa !217
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %14, i32 noundef %15, ptr noundef @.str.7, ptr noundef %17), !dbg !708
  br label %if.end10, !dbg !708

if.end10:                                         ; preds = %if.then8, %if.end
  store i64 -1, ptr %retval, align 8, !dbg !711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !711

if.end11:                                         ; preds = %eintr
  %18 = load i64, ptr %n, align 8, !dbg !712, !tbaa !186
  %19 = load ptr, ptr %vec.addr, align 8, !dbg !714, !tbaa !180
  %size = getelementptr inbounds %struct.ngx_iovec_t, ptr %19, i32 0, i32 2, !dbg !715
  %20 = load i64, ptr %size, align 8, !dbg !715, !tbaa !664
  %cmp12 = icmp ne i64 %18, %20, !dbg !716
  br i1 %cmp12, label %if.then14, label %if.end25, !dbg !717

if.then14:                                        ; preds = %if.end11
  %21 = load ptr, ptr %file.addr, align 8, !dbg !718, !tbaa !180
  %log15 = getelementptr inbounds %struct.ngx_file_s, ptr %21, i32 0, i32 5, !dbg !718
  %22 = load ptr, ptr %log15, align 8, !dbg !718, !tbaa !212
  %log_level16 = getelementptr inbounds %struct.ngx_log_s, ptr %22, i32 0, i32 0, !dbg !718
  %23 = load i64, ptr %log_level16, align 8, !dbg !718, !tbaa !213
  %cmp17 = icmp uge i64 %23, 3, !dbg !718
  br i1 %cmp17, label %if.then19, label %if.end24, !dbg !721

if.then19:                                        ; preds = %if.then14
  %24 = load ptr, ptr %file.addr, align 8, !dbg !718, !tbaa !180
  %log20 = getelementptr inbounds %struct.ngx_file_s, ptr %24, i32 0, i32 5, !dbg !718
  %25 = load ptr, ptr %log20, align 8, !dbg !718, !tbaa !212
  %26 = load ptr, ptr %file.addr, align 8, !dbg !718, !tbaa !180
  %name21 = getelementptr inbounds %struct.ngx_file_s, ptr %26, i32 0, i32 1, !dbg !718
  %data22 = getelementptr inbounds %struct.ngx_str_t, ptr %name21, i32 0, i32 1, !dbg !718
  %27 = load ptr, ptr %data22, align 8, !dbg !718, !tbaa !217
  %28 = load i64, ptr %n, align 8, !dbg !718, !tbaa !186
  %29 = load ptr, ptr %vec.addr, align 8, !dbg !718, !tbaa !180
  %size23 = getelementptr inbounds %struct.ngx_iovec_t, ptr %29, i32 0, i32 2, !dbg !718
  %30 = load i64, ptr %size23, align 8, !dbg !718, !tbaa !664
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %25, i32 noundef 0, ptr noundef @.str.8, ptr noundef %27, i64 noundef %28, i64 noundef %30), !dbg !718
  br label %if.end24, !dbg !718

if.end24:                                         ; preds = %if.then19, %if.then14
  store i64 -1, ptr %retval, align 8, !dbg !722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !722

if.end25:                                         ; preds = %if.end11
  %31 = load i64, ptr %n, align 8, !dbg !723, !tbaa !186
  %32 = load ptr, ptr %file.addr, align 8, !dbg !724, !tbaa !180
  %offset26 = getelementptr inbounds %struct.ngx_file_s, ptr %32, i32 0, i32 3, !dbg !725
  %33 = load i64, ptr %offset26, align 8, !dbg !726, !tbaa !223
  %add = add nsw i64 %33, %31, !dbg !726
  store i64 %add, ptr %offset26, align 8, !dbg !726, !tbaa !223
  %34 = load i64, ptr %n, align 8, !dbg !727, !tbaa !186
  store i64 %34, ptr %retval, align 8, !dbg !728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !728

cleanup:                                          ; preds = %if.end25, %if.end24, %if.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !729
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !729
  %35 = load i64, ptr %retval, align 8, !dbg !729
  ret i64 %35, !dbg !729
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_set_file_time(ptr noundef %name, i32 noundef %fd, i64 noundef %s) #0 !dbg !730 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %s.addr = alloca i64, align 8
  %tv = alloca [2 x %struct.timeval], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !737, metadata !DIExpression()), !dbg !750
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !738, metadata !DIExpression()), !dbg !751
  store i64 %s, ptr %s.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !739, metadata !DIExpression()), !dbg !752
  call void @llvm.lifetime.start.p0(i64 32, ptr %tv) #8, !dbg !753
  tail call void @llvm.dbg.declare(metadata ptr %tv, metadata !740, metadata !DIExpression()), !dbg !754
  %0 = load ptr, ptr @ngx_cached_time, align 8, !dbg !755, !tbaa !180
  %sec = getelementptr inbounds %struct.ngx_time_t, ptr %0, i32 0, i32 0, !dbg !755
  %1 = load volatile i64, ptr %sec, align 8, !dbg !755, !tbaa !756
  %arrayidx = getelementptr inbounds [2 x %struct.timeval], ptr %tv, i64 0, i64 0, !dbg !758
  %tv_sec = getelementptr inbounds %struct.timeval, ptr %arrayidx, i32 0, i32 0, !dbg !759
  store i64 %1, ptr %tv_sec, align 16, !dbg !760, !tbaa !761
  %arrayidx1 = getelementptr inbounds [2 x %struct.timeval], ptr %tv, i64 0, i64 0, !dbg !763
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %arrayidx1, i32 0, i32 1, !dbg !764
  store i64 0, ptr %tv_usec, align 8, !dbg !765, !tbaa !766
  %2 = load i64, ptr %s.addr, align 8, !dbg !767, !tbaa !186
  %arrayidx2 = getelementptr inbounds [2 x %struct.timeval], ptr %tv, i64 0, i64 1, !dbg !768
  %tv_sec3 = getelementptr inbounds %struct.timeval, ptr %arrayidx2, i32 0, i32 0, !dbg !769
  store i64 %2, ptr %tv_sec3, align 16, !dbg !770, !tbaa !761
  %arrayidx4 = getelementptr inbounds [2 x %struct.timeval], ptr %tv, i64 0, i64 1, !dbg !771
  %tv_usec5 = getelementptr inbounds %struct.timeval, ptr %arrayidx4, i32 0, i32 1, !dbg !772
  store i64 0, ptr %tv_usec5, align 8, !dbg !773, !tbaa !766
  %3 = load ptr, ptr %name.addr, align 8, !dbg !774, !tbaa !180
  %arraydecay = getelementptr inbounds [2 x %struct.timeval], ptr %tv, i64 0, i64 0, !dbg !776
  %call = call i32 @utimes(ptr noundef %3, ptr noundef %arraydecay) #8, !dbg !777
  %cmp = icmp ne i32 %call, -1, !dbg !778
  br i1 %cmp, label %if.then, label %if.end, !dbg !779

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !780

if.end:                                           ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !782

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %tv) #8, !dbg !783
  %4 = load i64, ptr %retval, align 8, !dbg !783
  ret i64 %4, !dbg !783
}

; Function Attrs: nounwind
declare !dbg !784 i32 @utimes(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_create_file_mapping(ptr noundef %fm) #0 !dbg !790 {
entry:
  %retval = alloca i64, align 8
  %fm.addr = alloca ptr, align 8
  store ptr %fm, ptr %fm.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %fm.addr, metadata !803, metadata !DIExpression()), !dbg !805
  %0 = load ptr, ptr %fm.addr, align 8, !dbg !806, !tbaa !180
  %name = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %0, i32 0, i32 0, !dbg !806
  %1 = load ptr, ptr %name, align 8, !dbg !806, !tbaa !807
  %call = call i32 (ptr, i32, ...) @open64(ptr noundef %1, i32 noundef 578, i32 noundef 420), !dbg !806
  %2 = load ptr, ptr %fm.addr, align 8, !dbg !809, !tbaa !180
  %fd = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %2, i32 0, i32 3, !dbg !810
  store i32 %call, ptr %fd, align 8, !dbg !811, !tbaa !812
  %3 = load ptr, ptr %fm.addr, align 8, !dbg !813, !tbaa !180
  %fd1 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %3, i32 0, i32 3, !dbg !815
  %4 = load i32, ptr %fd1, align 8, !dbg !815, !tbaa !812
  %cmp = icmp eq i32 %4, -1, !dbg !816
  br i1 %cmp, label %if.then, label %if.end7, !dbg !817

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %fm.addr, align 8, !dbg !818, !tbaa !180
  %log = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %5, i32 0, i32 4, !dbg !818
  %6 = load ptr, ptr %log, align 8, !dbg !818, !tbaa !821
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %6, i32 0, i32 0, !dbg !818
  %7 = load i64, ptr %log_level, align 8, !dbg !818, !tbaa !213
  %cmp2 = icmp uge i64 %7, 3, !dbg !818
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !822

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %fm.addr, align 8, !dbg !818, !tbaa !180
  %log4 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %8, i32 0, i32 4, !dbg !818
  %9 = load ptr, ptr %log4, align 8, !dbg !818, !tbaa !821
  %call5 = call ptr @__errno_location() #9, !dbg !818
  %10 = load i32, ptr %call5, align 4, !dbg !818, !tbaa !216
  %11 = load ptr, ptr %fm.addr, align 8, !dbg !818, !tbaa !180
  %name6 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %11, i32 0, i32 0, !dbg !818
  %12 = load ptr, ptr %name6, align 8, !dbg !818, !tbaa !807
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %9, i32 noundef %10, ptr noundef @.str.2, ptr noundef %12), !dbg !818
  br label %if.end, !dbg !818

if.end:                                           ; preds = %if.then3, %if.then
  store i64 -1, ptr %retval, align 8, !dbg !823
  br label %return, !dbg !823

if.end7:                                          ; preds = %entry
  %13 = load ptr, ptr %fm.addr, align 8, !dbg !824, !tbaa !180
  %fd8 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %13, i32 0, i32 3, !dbg !826
  %14 = load i32, ptr %fd8, align 8, !dbg !826, !tbaa !812
  %15 = load ptr, ptr %fm.addr, align 8, !dbg !827, !tbaa !180
  %size = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %15, i32 0, i32 1, !dbg !828
  %16 = load i64, ptr %size, align 8, !dbg !828, !tbaa !829
  %call9 = call i32 @ftruncate64(i32 noundef %14, i64 noundef %16) #8, !dbg !830
  %cmp10 = icmp eq i32 %call9, -1, !dbg !831
  br i1 %cmp10, label %if.then11, label %if.end20, !dbg !832

if.then11:                                        ; preds = %if.end7
  %17 = load ptr, ptr %fm.addr, align 8, !dbg !833, !tbaa !180
  %log12 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %17, i32 0, i32 4, !dbg !833
  %18 = load ptr, ptr %log12, align 8, !dbg !833, !tbaa !821
  %log_level13 = getelementptr inbounds %struct.ngx_log_s, ptr %18, i32 0, i32 0, !dbg !833
  %19 = load i64, ptr %log_level13, align 8, !dbg !833, !tbaa !213
  %cmp14 = icmp uge i64 %19, 3, !dbg !833
  br i1 %cmp14, label %if.then15, label %if.end19, !dbg !836

if.then15:                                        ; preds = %if.then11
  %20 = load ptr, ptr %fm.addr, align 8, !dbg !833, !tbaa !180
  %log16 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %20, i32 0, i32 4, !dbg !833
  %21 = load ptr, ptr %log16, align 8, !dbg !833, !tbaa !821
  %call17 = call ptr @__errno_location() #9, !dbg !833
  %22 = load i32, ptr %call17, align 4, !dbg !833, !tbaa !216
  %23 = load ptr, ptr %fm.addr, align 8, !dbg !833, !tbaa !180
  %name18 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %23, i32 0, i32 0, !dbg !833
  %24 = load ptr, ptr %name18, align 8, !dbg !833, !tbaa !807
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %21, i32 noundef %22, ptr noundef @.str.3, ptr noundef %24), !dbg !833
  br label %if.end19, !dbg !833

if.end19:                                         ; preds = %if.then15, %if.then11
  br label %failed, !dbg !837

if.end20:                                         ; preds = %if.end7
  %25 = load ptr, ptr %fm.addr, align 8, !dbg !838, !tbaa !180
  %size21 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %25, i32 0, i32 1, !dbg !839
  %26 = load i64, ptr %size21, align 8, !dbg !839, !tbaa !829
  %27 = load ptr, ptr %fm.addr, align 8, !dbg !840, !tbaa !180
  %fd22 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %27, i32 0, i32 3, !dbg !841
  %28 = load i32, ptr %fd22, align 8, !dbg !841, !tbaa !812
  %call23 = call ptr @mmap64(ptr noundef null, i64 noundef %26, i32 noundef 3, i32 noundef 1, i32 noundef %28, i64 noundef 0) #8, !dbg !842
  %29 = load ptr, ptr %fm.addr, align 8, !dbg !843, !tbaa !180
  %addr = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %29, i32 0, i32 2, !dbg !844
  store ptr %call23, ptr %addr, align 8, !dbg !845, !tbaa !846
  %30 = load ptr, ptr %fm.addr, align 8, !dbg !847, !tbaa !180
  %addr24 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %30, i32 0, i32 2, !dbg !849
  %31 = load ptr, ptr %addr24, align 8, !dbg !849, !tbaa !846
  %cmp25 = icmp ne ptr %31, inttoptr (i64 -1 to ptr), !dbg !850
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !851

if.then26:                                        ; preds = %if.end20
  store i64 0, ptr %retval, align 8, !dbg !852
  br label %return, !dbg !852

if.end27:                                         ; preds = %if.end20
  %32 = load ptr, ptr %fm.addr, align 8, !dbg !854, !tbaa !180
  %log28 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %32, i32 0, i32 4, !dbg !854
  %33 = load ptr, ptr %log28, align 8, !dbg !854, !tbaa !821
  %log_level29 = getelementptr inbounds %struct.ngx_log_s, ptr %33, i32 0, i32 0, !dbg !854
  %34 = load i64, ptr %log_level29, align 8, !dbg !854, !tbaa !213
  %cmp30 = icmp uge i64 %34, 3, !dbg !854
  br i1 %cmp30, label %if.then31, label %if.end36, !dbg !856

if.then31:                                        ; preds = %if.end27
  %35 = load ptr, ptr %fm.addr, align 8, !dbg !854, !tbaa !180
  %log32 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %35, i32 0, i32 4, !dbg !854
  %36 = load ptr, ptr %log32, align 8, !dbg !854, !tbaa !821
  %call33 = call ptr @__errno_location() #9, !dbg !854
  %37 = load i32, ptr %call33, align 4, !dbg !854, !tbaa !216
  %38 = load ptr, ptr %fm.addr, align 8, !dbg !854, !tbaa !180
  %size34 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %38, i32 0, i32 1, !dbg !854
  %39 = load i64, ptr %size34, align 8, !dbg !854, !tbaa !829
  %40 = load ptr, ptr %fm.addr, align 8, !dbg !854, !tbaa !180
  %name35 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %40, i32 0, i32 0, !dbg !854
  %41 = load ptr, ptr %name35, align 8, !dbg !854, !tbaa !807
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %36, i32 noundef %37, ptr noundef @.str.4, i64 noundef %39, ptr noundef %41), !dbg !854
  br label %if.end36, !dbg !854

if.end36:                                         ; preds = %if.then31, %if.end27
  br label %failed, !dbg !854

failed:                                           ; preds = %if.end36, %if.end19
  tail call void @llvm.dbg.label(metadata !804), !dbg !857
  %42 = load ptr, ptr %fm.addr, align 8, !dbg !858, !tbaa !180
  %fd37 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %42, i32 0, i32 3, !dbg !860
  %43 = load i32, ptr %fd37, align 8, !dbg !860, !tbaa !812
  %call38 = call i32 @close(i32 noundef %43), !dbg !861
  %cmp39 = icmp eq i32 %call38, -1, !dbg !862
  br i1 %cmp39, label %if.then40, label %if.end49, !dbg !863

if.then40:                                        ; preds = %failed
  %44 = load ptr, ptr %fm.addr, align 8, !dbg !864, !tbaa !180
  %log41 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %44, i32 0, i32 4, !dbg !864
  %45 = load ptr, ptr %log41, align 8, !dbg !864, !tbaa !821
  %log_level42 = getelementptr inbounds %struct.ngx_log_s, ptr %45, i32 0, i32 0, !dbg !864
  %46 = load i64, ptr %log_level42, align 8, !dbg !864, !tbaa !213
  %cmp43 = icmp uge i64 %46, 2, !dbg !864
  br i1 %cmp43, label %if.then44, label %if.end48, !dbg !867

if.then44:                                        ; preds = %if.then40
  %47 = load ptr, ptr %fm.addr, align 8, !dbg !864, !tbaa !180
  %log45 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %47, i32 0, i32 4, !dbg !864
  %48 = load ptr, ptr %log45, align 8, !dbg !864, !tbaa !821
  %call46 = call ptr @__errno_location() #9, !dbg !864
  %49 = load i32, ptr %call46, align 4, !dbg !864, !tbaa !216
  %50 = load ptr, ptr %fm.addr, align 8, !dbg !864, !tbaa !180
  %name47 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %50, i32 0, i32 0, !dbg !864
  %51 = load ptr, ptr %name47, align 8, !dbg !864, !tbaa !807
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 2, ptr noundef %48, i32 noundef %49, ptr noundef @.str.5, ptr noundef %51), !dbg !864
  br label %if.end48, !dbg !864

if.end48:                                         ; preds = %if.then44, %if.then40
  br label %if.end49, !dbg !868

if.end49:                                         ; preds = %if.end48, %failed
  store i64 -1, ptr %retval, align 8, !dbg !869
  br label %return, !dbg !869

return:                                           ; preds = %if.end49, %if.then26, %if.end
  %52 = load i64, ptr %retval, align 8, !dbg !870
  ret i64 %52, !dbg !870
}

; Function Attrs: nounwind
declare !dbg !871 i32 @ftruncate64(i32 noundef, i64 noundef) #4

; Function Attrs: nounwind
declare !dbg !874 ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #4

declare !dbg !878 i32 @close(i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @ngx_close_file_mapping(ptr noundef %fm) #0 !dbg !881 {
entry:
  %fm.addr = alloca ptr, align 8
  store ptr %fm, ptr %fm.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %fm.addr, metadata !885, metadata !DIExpression()), !dbg !886
  %0 = load ptr, ptr %fm.addr, align 8, !dbg !887, !tbaa !180
  %addr = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %0, i32 0, i32 2, !dbg !889
  %1 = load ptr, ptr %addr, align 8, !dbg !889, !tbaa !846
  %2 = load ptr, ptr %fm.addr, align 8, !dbg !890, !tbaa !180
  %size = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %2, i32 0, i32 1, !dbg !891
  %3 = load i64, ptr %size, align 8, !dbg !891, !tbaa !829
  %call = call i32 @munmap(ptr noundef %1, i64 noundef %3) #8, !dbg !892
  %cmp = icmp eq i32 %call, -1, !dbg !893
  br i1 %cmp, label %if.then, label %if.end6, !dbg !894

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %fm.addr, align 8, !dbg !895, !tbaa !180
  %log = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %4, i32 0, i32 4, !dbg !895
  %5 = load ptr, ptr %log, align 8, !dbg !895, !tbaa !821
  %log_level = getelementptr inbounds %struct.ngx_log_s, ptr %5, i32 0, i32 0, !dbg !895
  %6 = load i64, ptr %log_level, align 8, !dbg !895, !tbaa !213
  %cmp1 = icmp uge i64 %6, 3, !dbg !895
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !898

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %fm.addr, align 8, !dbg !895, !tbaa !180
  %log3 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %7, i32 0, i32 4, !dbg !895
  %8 = load ptr, ptr %log3, align 8, !dbg !895, !tbaa !821
  %call4 = call ptr @__errno_location() #9, !dbg !895
  %9 = load i32, ptr %call4, align 4, !dbg !895, !tbaa !216
  %10 = load ptr, ptr %fm.addr, align 8, !dbg !895, !tbaa !180
  %size5 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %10, i32 0, i32 1, !dbg !895
  %11 = load i64, ptr %size5, align 8, !dbg !895, !tbaa !829
  %12 = load ptr, ptr %fm.addr, align 8, !dbg !895, !tbaa !180
  %name = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %12, i32 0, i32 0, !dbg !895
  %13 = load ptr, ptr %name, align 8, !dbg !895, !tbaa !807
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 3, ptr noundef %8, i32 noundef %9, ptr noundef @.str.6, i64 noundef %11, ptr noundef %13), !dbg !895
  br label %if.end, !dbg !895

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end6, !dbg !899

if.end6:                                          ; preds = %if.end, %entry
  %14 = load ptr, ptr %fm.addr, align 8, !dbg !900, !tbaa !180
  %fd = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %14, i32 0, i32 3, !dbg !902
  %15 = load i32, ptr %fd, align 8, !dbg !902, !tbaa !812
  %call7 = call i32 @close(i32 noundef %15), !dbg !903
  %cmp8 = icmp eq i32 %call7, -1, !dbg !904
  br i1 %cmp8, label %if.then9, label %if.end18, !dbg !905

if.then9:                                         ; preds = %if.end6
  %16 = load ptr, ptr %fm.addr, align 8, !dbg !906, !tbaa !180
  %log10 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %16, i32 0, i32 4, !dbg !906
  %17 = load ptr, ptr %log10, align 8, !dbg !906, !tbaa !821
  %log_level11 = getelementptr inbounds %struct.ngx_log_s, ptr %17, i32 0, i32 0, !dbg !906
  %18 = load i64, ptr %log_level11, align 8, !dbg !906, !tbaa !213
  %cmp12 = icmp uge i64 %18, 2, !dbg !906
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !909

if.then13:                                        ; preds = %if.then9
  %19 = load ptr, ptr %fm.addr, align 8, !dbg !906, !tbaa !180
  %log14 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %19, i32 0, i32 4, !dbg !906
  %20 = load ptr, ptr %log14, align 8, !dbg !906, !tbaa !821
  %call15 = call ptr @__errno_location() #9, !dbg !906
  %21 = load i32, ptr %call15, align 4, !dbg !906, !tbaa !216
  %22 = load ptr, ptr %fm.addr, align 8, !dbg !906, !tbaa !180
  %name16 = getelementptr inbounds %struct.ngx_file_mapping_t, ptr %22, i32 0, i32 0, !dbg !906
  %23 = load ptr, ptr %name16, align 8, !dbg !906, !tbaa !807
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 noundef 2, ptr noundef %20, i32 noundef %21, ptr noundef @.str.5, ptr noundef %23), !dbg !906
  br label %if.end17, !dbg !906

if.end17:                                         ; preds = %if.then13, %if.then9
  br label %if.end18, !dbg !910

if.end18:                                         ; preds = %if.end17, %if.end6
  ret void, !dbg !911
}

; Function Attrs: nounwind
declare !dbg !912 i32 @munmap(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_open_dir(ptr noundef %name, ptr noundef %dir) #0 !dbg !915 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !947, metadata !DIExpression()), !dbg !949
  store ptr %dir, ptr %dir.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !948, metadata !DIExpression()), !dbg !950
  %0 = load ptr, ptr %name.addr, align 8, !dbg !951, !tbaa !180
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %0, i32 0, i32 1, !dbg !952
  %1 = load ptr, ptr %data, align 8, !dbg !952, !tbaa !953
  %call = call ptr @opendir(ptr noundef %1), !dbg !954
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !955, !tbaa !180
  %dir1 = getelementptr inbounds %struct.ngx_dir_t, ptr %2, i32 0, i32 0, !dbg !956
  store ptr %call, ptr %dir1, align 8, !dbg !957, !tbaa !958
  %3 = load ptr, ptr %dir.addr, align 8, !dbg !960, !tbaa !180
  %dir2 = getelementptr inbounds %struct.ngx_dir_t, ptr %3, i32 0, i32 0, !dbg !962
  %4 = load ptr, ptr %dir2, align 8, !dbg !962, !tbaa !958
  %cmp = icmp eq ptr %4, null, !dbg !963
  br i1 %cmp, label %if.then, label %if.end, !dbg !964

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !965
  br label %return, !dbg !965

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !967, !tbaa !180
  %valid_info = getelementptr inbounds %struct.ngx_dir_t, ptr %5, i32 0, i32 3, !dbg !968
  %bf.load = load i16, ptr %valid_info, align 8, !dbg !969
  %bf.clear = and i16 %bf.load, -257, !dbg !969
  %bf.set = or i16 %bf.clear, 0, !dbg !969
  store i16 %bf.set, ptr %valid_info, align 8, !dbg !969
  store i64 0, ptr %retval, align 8, !dbg !970
  br label %return, !dbg !970

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8, !dbg !971
  ret i64 %6, !dbg !971
}

declare !dbg !972 ptr @opendir(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_read_dir(ptr noundef %dir) #0 !dbg !975 {
entry:
  %retval = alloca i64, align 8
  %dir.addr = alloca ptr, align 8
  store ptr %dir, ptr %dir.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !979, metadata !DIExpression()), !dbg !980
  %0 = load ptr, ptr %dir.addr, align 8, !dbg !981, !tbaa !180
  %dir1 = getelementptr inbounds %struct.ngx_dir_t, ptr %0, i32 0, i32 0, !dbg !982
  %1 = load ptr, ptr %dir1, align 8, !dbg !982, !tbaa !958
  %call = call ptr @readdir64(ptr noundef %1), !dbg !983
  %2 = load ptr, ptr %dir.addr, align 8, !dbg !984, !tbaa !180
  %de = getelementptr inbounds %struct.ngx_dir_t, ptr %2, i32 0, i32 1, !dbg !985
  store ptr %call, ptr %de, align 8, !dbg !986, !tbaa !987
  %3 = load ptr, ptr %dir.addr, align 8, !dbg !988, !tbaa !180
  %de2 = getelementptr inbounds %struct.ngx_dir_t, ptr %3, i32 0, i32 1, !dbg !990
  %4 = load ptr, ptr %de2, align 8, !dbg !990, !tbaa !987
  %tobool = icmp ne ptr %4, null, !dbg !988
  br i1 %tobool, label %if.then, label %if.end, !dbg !991

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !992, !tbaa !180
  %de3 = getelementptr inbounds %struct.ngx_dir_t, ptr %5, i32 0, i32 1, !dbg !994
  %6 = load ptr, ptr %de3, align 8, !dbg !994, !tbaa !987
  %d_type = getelementptr inbounds %struct.dirent, ptr %6, i32 0, i32 3, !dbg !995
  %7 = load i8, ptr %d_type, align 2, !dbg !995, !tbaa !996
  %conv = zext i8 %7 to i32, !dbg !992
  %8 = load ptr, ptr %dir.addr, align 8, !dbg !999, !tbaa !180
  %type = getelementptr inbounds %struct.ngx_dir_t, ptr %8, i32 0, i32 3, !dbg !1000
  %9 = trunc i32 %conv to i16, !dbg !1001
  %bf.load = load i16, ptr %type, align 8, !dbg !1001
  %bf.value = and i16 %9, 255, !dbg !1001
  %bf.clear = and i16 %bf.load, -256, !dbg !1001
  %bf.set = or i16 %bf.clear, %bf.value, !dbg !1001
  store i16 %bf.set, ptr %type, align 8, !dbg !1001
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !1001
  store i64 0, ptr %retval, align 8, !dbg !1002
  br label %return, !dbg !1002

if.end:                                           ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1003
  br label %return, !dbg !1003

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, ptr %retval, align 8, !dbg !1004
  ret i64 %10, !dbg !1004
}

declare !dbg !1005 ptr @readdir64(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_open_glob(ptr noundef %gl) #0 !dbg !1008 {
entry:
  %retval = alloca i64, align 8
  %gl.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gl, ptr %gl.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %gl.addr, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8, !dbg !1050
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1048, metadata !DIExpression()), !dbg !1051
  %0 = load ptr, ptr %gl.addr, align 8, !dbg !1052, !tbaa !180
  %pattern = getelementptr inbounds %struct.ngx_glob_t, ptr %0, i32 0, i32 2, !dbg !1053
  %1 = load ptr, ptr %pattern, align 8, !dbg !1053, !tbaa !1054
  %2 = load ptr, ptr %gl.addr, align 8, !dbg !1057, !tbaa !180
  %pglob = getelementptr inbounds %struct.ngx_glob_t, ptr %2, i32 0, i32 1, !dbg !1058
  %call = call i32 @glob64(ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef %pglob) #8, !dbg !1059
  store i32 %call, ptr %n, align 4, !dbg !1060, !tbaa !216
  %3 = load i32, ptr %n, align 4, !dbg !1061, !tbaa !216
  %cmp = icmp eq i32 %3, 0, !dbg !1063
  br i1 %cmp, label %if.then, label %if.end, !dbg !1064

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1065

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %n, align 4, !dbg !1067, !tbaa !216
  %cmp1 = icmp eq i32 %4, 3, !dbg !1069
  br i1 %cmp1, label %land.lhs.true, label %if.end3, !dbg !1070

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %gl.addr, align 8, !dbg !1071, !tbaa !180
  %test = getelementptr inbounds %struct.ngx_glob_t, ptr %5, i32 0, i32 4, !dbg !1072
  %6 = load i64, ptr %test, align 8, !dbg !1072, !tbaa !1073
  %tobool = icmp ne i64 %6, 0, !dbg !1071
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1074

if.then2:                                         ; preds = %land.lhs.true
  store i64 0, ptr %retval, align 8, !dbg !1075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1075

if.end3:                                          ; preds = %land.lhs.true, %if.end
  store i64 -1, ptr %retval, align 8, !dbg !1077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1077

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8, !dbg !1078
  %7 = load i64, ptr %retval, align 8, !dbg !1078
  ret i64 %7, !dbg !1078
}

; Function Attrs: nounwind
declare !dbg !1079 i32 @glob64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_read_glob(ptr noundef %gl, ptr noundef %name) #0 !dbg !1087 {
entry:
  %retval = alloca i64, align 8
  %gl.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gl, ptr %gl.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %gl.addr, metadata !1091, metadata !DIExpression()), !dbg !1094
  store ptr %name, ptr %name.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1092, metadata !DIExpression()), !dbg !1095
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #8, !dbg !1096
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !1093, metadata !DIExpression()), !dbg !1097
  %0 = load ptr, ptr %gl.addr, align 8, !dbg !1098, !tbaa !180
  %pglob = getelementptr inbounds %struct.ngx_glob_t, ptr %0, i32 0, i32 1, !dbg !1099
  %gl_pathc = getelementptr inbounds %struct.glob_t, ptr %pglob, i32 0, i32 0, !dbg !1100
  %1 = load i64, ptr %gl_pathc, align 8, !dbg !1100, !tbaa !1101
  store i64 %1, ptr %count, align 8, !dbg !1102, !tbaa !186
  %2 = load ptr, ptr %gl.addr, align 8, !dbg !1103, !tbaa !180
  %n = getelementptr inbounds %struct.ngx_glob_t, ptr %2, i32 0, i32 0, !dbg !1105
  %3 = load i64, ptr %n, align 8, !dbg !1105, !tbaa !1106
  %4 = load i64, ptr %count, align 8, !dbg !1107, !tbaa !186
  %cmp = icmp ult i64 %3, %4, !dbg !1108
  br i1 %cmp, label %if.then, label %if.end, !dbg !1109

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %gl.addr, align 8, !dbg !1110, !tbaa !180
  %pglob1 = getelementptr inbounds %struct.ngx_glob_t, ptr %5, i32 0, i32 1, !dbg !1110
  %gl_pathv = getelementptr inbounds %struct.glob_t, ptr %pglob1, i32 0, i32 1, !dbg !1110
  %6 = load ptr, ptr %gl_pathv, align 8, !dbg !1110, !tbaa !1112
  %7 = load ptr, ptr %gl.addr, align 8, !dbg !1110, !tbaa !180
  %n2 = getelementptr inbounds %struct.ngx_glob_t, ptr %7, i32 0, i32 0, !dbg !1110
  %8 = load i64, ptr %n2, align 8, !dbg !1110, !tbaa !1106
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %8, !dbg !1110
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !1110, !tbaa !180
  %call = call i64 @strlen(ptr noundef %9) #10, !dbg !1110
  %10 = load ptr, ptr %name.addr, align 8, !dbg !1113, !tbaa !180
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %10, i32 0, i32 0, !dbg !1114
  store i64 %call, ptr %len, align 8, !dbg !1115, !tbaa !1116
  %11 = load ptr, ptr %gl.addr, align 8, !dbg !1117, !tbaa !180
  %pglob3 = getelementptr inbounds %struct.ngx_glob_t, ptr %11, i32 0, i32 1, !dbg !1118
  %gl_pathv4 = getelementptr inbounds %struct.glob_t, ptr %pglob3, i32 0, i32 1, !dbg !1119
  %12 = load ptr, ptr %gl_pathv4, align 8, !dbg !1119, !tbaa !1112
  %13 = load ptr, ptr %gl.addr, align 8, !dbg !1120, !tbaa !180
  %n5 = getelementptr inbounds %struct.ngx_glob_t, ptr %13, i32 0, i32 0, !dbg !1121
  %14 = load i64, ptr %n5, align 8, !dbg !1121, !tbaa !1106
  %arrayidx6 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1117
  %15 = load ptr, ptr %arrayidx6, align 8, !dbg !1117, !tbaa !180
  %16 = load ptr, ptr %name.addr, align 8, !dbg !1122, !tbaa !180
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %16, i32 0, i32 1, !dbg !1123
  store ptr %15, ptr %data, align 8, !dbg !1124, !tbaa !953
  %17 = load ptr, ptr %gl.addr, align 8, !dbg !1125, !tbaa !180
  %n7 = getelementptr inbounds %struct.ngx_glob_t, ptr %17, i32 0, i32 0, !dbg !1126
  %18 = load i64, ptr %n7, align 8, !dbg !1127, !tbaa !1106
  %inc = add i64 %18, 1, !dbg !1127
  store i64 %inc, ptr %n7, align 8, !dbg !1127, !tbaa !1106
  store i64 0, ptr %retval, align 8, !dbg !1128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1128

if.end:                                           ; preds = %entry
  store i64 -4, ptr %retval, align 8, !dbg !1129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1129

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #8, !dbg !1130
  %19 = load i64, ptr %retval, align 8, !dbg !1130
  ret i64 %19, !dbg !1130
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1131 i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local void @ngx_close_glob(ptr noundef %gl) #0 !dbg !1135 {
entry:
  %gl.addr = alloca ptr, align 8
  store ptr %gl, ptr %gl.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %gl.addr, metadata !1139, metadata !DIExpression()), !dbg !1140
  %0 = load ptr, ptr %gl.addr, align 8, !dbg !1141, !tbaa !180
  %pglob = getelementptr inbounds %struct.ngx_glob_t, ptr %0, i32 0, i32 1, !dbg !1142
  call void @globfree64(ptr noundef %pglob) #8, !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: nounwind
declare !dbg !1145 void @globfree64(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_trylock_fd(i32 noundef %fd) #0 !dbg !1148 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %fl = alloca %struct.flock, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1152, metadata !DIExpression()), !dbg !1164
  call void @llvm.lifetime.start.p0(i64 32, ptr %fl) #8, !dbg !1165
  tail call void @llvm.dbg.declare(metadata ptr %fl, metadata !1153, metadata !DIExpression()), !dbg !1166
  call void @llvm.memset.p0.i64(ptr align 8 %fl, i8 0, i64 32, i1 false), !dbg !1167
  %l_type = getelementptr inbounds %struct.flock, ptr %fl, i32 0, i32 0, !dbg !1168
  store i16 1, ptr %l_type, align 8, !dbg !1169, !tbaa !1170
  %l_whence = getelementptr inbounds %struct.flock, ptr %fl, i32 0, i32 1, !dbg !1172
  store i16 0, ptr %l_whence, align 2, !dbg !1173, !tbaa !1174
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1175, !tbaa !216
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 6, ptr noundef %fl), !dbg !1177
  %cmp = icmp eq i32 %call, -1, !dbg !1178
  br i1 %cmp, label %if.then, label %if.end, !dbg !1179

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #9, !dbg !1180
  %1 = load i32, ptr %call1, align 4, !dbg !1180, !tbaa !216
  store i32 %1, ptr %retval, align 4, !dbg !1182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1182

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1183

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %fl) #8, !dbg !1184
  %2 = load i32, ptr %retval, align 4, !dbg !1184
  ret i32 %2, !dbg !1184
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare !dbg !1185 i32 @fcntl64(i32 noundef, i32 noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_lock_fd(i32 noundef %fd) #0 !dbg !1188 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %fl = alloca %struct.flock, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1190, metadata !DIExpression()), !dbg !1192
  call void @llvm.lifetime.start.p0(i64 32, ptr %fl) #8, !dbg !1193
  tail call void @llvm.dbg.declare(metadata ptr %fl, metadata !1191, metadata !DIExpression()), !dbg !1194
  call void @llvm.memset.p0.i64(ptr align 8 %fl, i8 0, i64 32, i1 false), !dbg !1195
  %l_type = getelementptr inbounds %struct.flock, ptr %fl, i32 0, i32 0, !dbg !1196
  store i16 1, ptr %l_type, align 8, !dbg !1197, !tbaa !1170
  %l_whence = getelementptr inbounds %struct.flock, ptr %fl, i32 0, i32 1, !dbg !1198
  store i16 0, ptr %l_whence, align 2, !dbg !1199, !tbaa !1174
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1200, !tbaa !216
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 7, ptr noundef %fl), !dbg !1202
  %cmp = icmp eq i32 %call, -1, !dbg !1203
  br i1 %cmp, label %if.then, label %if.end, !dbg !1204

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #9, !dbg !1205
  %1 = load i32, ptr %call1, align 4, !dbg !1205, !tbaa !216
  store i32 %1, ptr %retval, align 4, !dbg !1207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1207

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1208

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %fl) #8, !dbg !1209
  %2 = load i32, ptr %retval, align 4, !dbg !1209
  ret i32 %2, !dbg !1209
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ngx_unlock_fd(i32 noundef %fd) #0 !dbg !1210 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %fl = alloca %struct.flock, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1212, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 32, ptr %fl) #8, !dbg !1215
  tail call void @llvm.dbg.declare(metadata ptr %fl, metadata !1213, metadata !DIExpression()), !dbg !1216
  call void @llvm.memset.p0.i64(ptr align 8 %fl, i8 0, i64 32, i1 false), !dbg !1217
  %l_type = getelementptr inbounds %struct.flock, ptr %fl, i32 0, i32 0, !dbg !1218
  store i16 2, ptr %l_type, align 8, !dbg !1219, !tbaa !1170
  %l_whence = getelementptr inbounds %struct.flock, ptr %fl, i32 0, i32 1, !dbg !1220
  store i16 0, ptr %l_whence, align 2, !dbg !1221, !tbaa !1174
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1222, !tbaa !216
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 6, ptr noundef %fl), !dbg !1224
  %cmp = icmp eq i32 %call, -1, !dbg !1225
  br i1 %cmp, label %if.then, label %if.end, !dbg !1226

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #9, !dbg !1227
  %1 = load i32, ptr %call1, align 4, !dbg !1227, !tbaa !216
  store i32 %1, ptr %retval, align 4, !dbg !1229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1229

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1230

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %fl) #8, !dbg !1231
  %2 = load i32, ptr %retval, align 4, !dbg !1231
  ret i32 %2, !dbg !1231
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_read_ahead(i32 noundef %fd, i64 noundef %n) #0 !dbg !1232 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1236, metadata !DIExpression()), !dbg !1239
  store i64 %n, ptr %n.addr, align 8, !tbaa !186
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1237, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !1241
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1238, metadata !DIExpression()), !dbg !1242
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1243, !tbaa !216
  %call = call i32 @posix_fadvise64(i32 noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 2) #8, !dbg !1244
  store i32 %call, ptr %err, align 4, !dbg !1245, !tbaa !216
  %1 = load i32, ptr %err, align 4, !dbg !1246, !tbaa !216
  %cmp = icmp eq i32 %1, 0, !dbg !1248
  br i1 %cmp, label %if.then, label %if.end, !dbg !1249

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1250

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !1252, !tbaa !216
  %call1 = call ptr @__errno_location() #9, !dbg !1252
  store i32 %2, ptr %call1, align 4, !dbg !1252, !tbaa !216
  store i64 -1, ptr %retval, align 8, !dbg !1253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1253

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !1254
  %3 = load i64, ptr %retval, align 8, !dbg !1254
  ret i64 %3, !dbg !1254
}

; Function Attrs: nounwind
declare !dbg !1255 i32 @posix_fadvise64(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_directio_on(i32 noundef %fd) #0 !dbg !1258 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1262, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #8, !dbg !1265
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1263, metadata !DIExpression()), !dbg !1266
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1267, !tbaa !216
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 3), !dbg !1268
  store i32 %call, ptr %flags, align 4, !dbg !1269, !tbaa !216
  %1 = load i32, ptr %flags, align 4, !dbg !1270, !tbaa !216
  %cmp = icmp eq i32 %1, -1, !dbg !1272
  br i1 %cmp, label %if.then, label %if.end, !dbg !1273

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1274

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fd.addr, align 4, !dbg !1276, !tbaa !216
  %3 = load i32, ptr %flags, align 4, !dbg !1277, !tbaa !216
  %or = or i32 %3, 16384, !dbg !1278
  %call1 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %2, i32 noundef 4, i32 noundef %or), !dbg !1279
  %conv = sext i32 %call1 to i64, !dbg !1279
  store i64 %conv, ptr %retval, align 8, !dbg !1280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1280

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #8, !dbg !1281
  %4 = load i64, ptr %retval, align 8, !dbg !1281
  ret i64 %4, !dbg !1281
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_directio_off(i32 noundef %fd) #0 !dbg !1282 {
entry:
  %retval = alloca i64, align 8
  %fd.addr = alloca i32, align 4
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !216
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !1284, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #8, !dbg !1287
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1285, metadata !DIExpression()), !dbg !1288
  %0 = load i32, ptr %fd.addr, align 4, !dbg !1289, !tbaa !216
  %call = call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 3), !dbg !1290
  store i32 %call, ptr %flags, align 4, !dbg !1291, !tbaa !216
  %1 = load i32, ptr %flags, align 4, !dbg !1292, !tbaa !216
  %cmp = icmp eq i32 %1, -1, !dbg !1294
  br i1 %cmp, label %if.then, label %if.end, !dbg !1295

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1296

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fd.addr, align 4, !dbg !1298, !tbaa !216
  %3 = load i32, ptr %flags, align 4, !dbg !1299, !tbaa !216
  %and = and i32 %3, -16385, !dbg !1300
  %call1 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %2, i32 noundef 4, i32 noundef %and), !dbg !1301
  %conv = sext i32 %call1 to i64, !dbg !1301
  store i64 %conv, ptr %retval, align 8, !dbg !1302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1302

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #8, !dbg !1303
  %4 = load i64, ptr %retval, align 8, !dbg !1303
  ret i64 %4, !dbg !1303
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_fs_bsize(ptr noundef %name) #0 !dbg !1304 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %fs = alloca %struct.statfs, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1308, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 120, ptr %fs) #8, !dbg !1337
  tail call void @llvm.dbg.declare(metadata ptr %fs, metadata !1309, metadata !DIExpression()), !dbg !1338
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1339, !tbaa !180
  %call = call i32 @statfs64(ptr noundef %0, ptr noundef %fs) #8, !dbg !1341
  %cmp = icmp eq i32 %call, -1, !dbg !1342
  br i1 %cmp, label %if.then, label %if.end, !dbg !1343

if.then:                                          ; preds = %entry
  store i64 512, ptr %retval, align 8, !dbg !1344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1344

if.end:                                           ; preds = %entry
  %f_bsize = getelementptr inbounds %struct.statfs, ptr %fs, i32 0, i32 1, !dbg !1346
  %1 = load i64, ptr %f_bsize, align 8, !dbg !1346, !tbaa !1348
  %rem = srem i64 %1, 512, !dbg !1351
  %cmp1 = icmp ne i64 %rem, 0, !dbg !1352
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1353

if.then2:                                         ; preds = %if.end
  store i64 512, ptr %retval, align 8, !dbg !1354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1354

if.end3:                                          ; preds = %if.end
  %f_bsize4 = getelementptr inbounds %struct.statfs, ptr %fs, i32 0, i32 1, !dbg !1356
  %2 = load i64, ptr %f_bsize4, align 8, !dbg !1356, !tbaa !1348
  %3 = load i64, ptr @ngx_pagesize, align 8, !dbg !1358, !tbaa !186
  %cmp5 = icmp ugt i64 %2, %3, !dbg !1359
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1360

if.then6:                                         ; preds = %if.end3
  store i64 512, ptr %retval, align 8, !dbg !1361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1361

if.end7:                                          ; preds = %if.end3
  %f_bsize8 = getelementptr inbounds %struct.statfs, ptr %fs, i32 0, i32 1, !dbg !1363
  %4 = load i64, ptr %f_bsize8, align 8, !dbg !1363, !tbaa !1348
  store i64 %4, ptr %retval, align 8, !dbg !1364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1364

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 120, ptr %fs) #8, !dbg !1365
  %5 = load i64, ptr %retval, align 8, !dbg !1365
  ret i64 %5, !dbg !1365
}

; Function Attrs: nounwind
declare !dbg !1366 i32 @statfs64(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @ngx_fs_available(ptr noundef %name) #0 !dbg !1371 {
entry:
  %retval = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %fs = alloca %struct.statfs, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !180
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1375, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 120, ptr %fs) #8, !dbg !1378
  tail call void @llvm.dbg.declare(metadata ptr %fs, metadata !1376, metadata !DIExpression()), !dbg !1379
  %0 = load ptr, ptr %name.addr, align 8, !dbg !1380, !tbaa !180
  %call = call i32 @statfs64(ptr noundef %0, ptr noundef %fs) #8, !dbg !1382
  %cmp = icmp eq i32 %call, -1, !dbg !1383
  br i1 %cmp, label %if.then, label %if.end, !dbg !1384

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !1385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1385

if.end:                                           ; preds = %entry
  %f_bavail = getelementptr inbounds %struct.statfs, ptr %fs, i32 0, i32 4, !dbg !1387
  %1 = load i64, ptr %f_bavail, align 8, !dbg !1387, !tbaa !1388
  %f_bsize = getelementptr inbounds %struct.statfs, ptr %fs, i32 0, i32 1, !dbg !1389
  %2 = load i64, ptr %f_bsize, align 8, !dbg !1389, !tbaa !1348
  %mul = mul nsw i64 %1, %2, !dbg !1390
  store i64 %mul, ptr %retval, align 8, !dbg !1391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1391

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 120, ptr %fs) #8, !dbg !1392
  %3 = load i64, ptr %retval, align 8, !dbg !1392
  ret i64 %3, !dbg !1392
}

declare !dbg !1393 i64 @pwritev64(i32 noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/os/unix/ngx_files.c", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "7eec0f338fb5673f7c6da9b94055ca99")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 20)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 21)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 625, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 19)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 631, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 24)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 642, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 22)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 648, type: !3, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 660, type: !19, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !24, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 421, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 42)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !39, globals: !56, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40, !43, !45, !46, !52, !53}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 29, baseType: !42)
!41 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !48, line: 33, baseType: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !50, line: 31, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !48, line: 87, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !50, line: 153, baseType: !55)
!55 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!56 = !{!0, !7, !12, !17, !22, !27, !29, !31, !33}
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 8, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!64 = distinct !DISubprogram(name: "ngx_read_file", scope: !2, file: !2, line: 31, type: !65, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !174)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !69, !46, !40, !53}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !48, line: 108, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !50, line: 194, baseType: !55)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_t", file: !71, line: 23, baseType: !72)
!71 = !DIFile(filename: "src/core/ngx_core.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "20a149d22b95b5c7a0a8830d485b97ae")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_file_s", file: !73, line: 16, size: 1600, elements: !74)
!73 = !DIFile(filename: "src/core/ngx_file.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "25b6ae7999feb045abc19bb7a7bd4ab8")
!74 = !{!75, !79, !86, !126, !127, !128, !172, !173}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !72, file: !73, line: 17, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_fd_t", file: !77, line: 16, baseType: !78)
!77 = !DIFile(filename: "src/os/unix/ngx_files.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "5c6995d5f659dd97ea6d10eff0ad0f12")
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 18, baseType: !80, size: 128, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_str_t", file: !81, line: 19, baseType: !82)
!81 = !DIFile(filename: "src/core/ngx_string.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "2f3ab61eca09df707b083ffd5eafea4f")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 16, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !82, file: !81, line: 17, baseType: !40, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !82, file: !81, line: 18, baseType: !46, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !72, file: !73, line: 19, baseType: !87, size: 1152, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_info_t", file: !77, line: 17, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !89, line: 26, size: 1152, elements: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!90 = !{!91, !93, !95, !97, !100, !102, !104, !105, !106, !108, !110, !112, !120, !121, !122}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !88, file: !89, line: 31, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !50, line: 145, baseType: !42)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !88, file: !89, line: 36, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !50, line: 148, baseType: !42)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !88, file: !89, line: 44, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !50, line: 151, baseType: !42)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !88, file: !89, line: 45, baseType: !98, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !50, line: 150, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !88, file: !89, line: 47, baseType: !101, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !50, line: 146, baseType: !99)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !88, file: !89, line: 48, baseType: !103, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !50, line: 147, baseType: !99)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !88, file: !89, line: 50, baseType: !78, size: 32, offset: 288)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !88, file: !89, line: 52, baseType: !92, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !88, file: !89, line: 57, baseType: !107, size: 64, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 152, baseType: !55)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !88, file: !89, line: 61, baseType: !109, size: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !50, line: 175, baseType: !55)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !88, file: !89, line: 63, baseType: !111, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !50, line: 180, baseType: !55)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !88, file: !89, line: 74, baseType: !113, size: 128, offset: 576)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !114, line: 11, size: 128, elements: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !113, file: !114, line: 16, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !50, line: 160, baseType: !55)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !113, file: !114, line: 21, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !50, line: 197, baseType: !55)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !88, file: !89, line: 75, baseType: !113, size: 128, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !88, file: !89, line: 76, baseType: !113, size: 128, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !88, file: !89, line: 89, baseType: !123, size: 192, offset: 960)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 192, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 3)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !72, file: !73, line: 21, baseType: !53, size: 64, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sys_offset", scope: !72, file: !73, line: 22, baseType: !53, size: 64, offset: 1408)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !72, file: !73, line: 24, baseType: !129, size: 64, offset: 1472)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_t", file: !71, line: 20, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_log_s", file: !132, line: 50, size: 640, elements: !133)
!132 = !DIFile(filename: "src/core/ngx_log.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "81257099415bdc5e18cdef9b4461d934")
!133 = !{!134, !139, !152, !155, !158, !163, !164, !169, !170, !171}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !131, file: !132, line: 51, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_uint_t", file: !136, line: 79, baseType: !137)
!136 = !DIFile(filename: "src/core/ngx_config.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "1030e66de4bc6fae79f292da1593286a")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !138, line: 90, baseType: !42)
!138 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !131, file: !132, line: 52, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_open_file_t", file: !71, line: 21, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_open_file_s", file: !143, line: 89, size: 320, elements: !144)
!143 = !DIFile(filename: "src/core/ngx_conf_file.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "b737d189253ca17c55f83e424debf52b")
!144 = !{!145, !146, !147, !151}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !142, file: !143, line: 90, baseType: !76, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !143, line: 91, baseType: !80, size: 128, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !142, file: !143, line: 93, baseType: !148, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !140, !129}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !142, file: !143, line: 94, baseType: !45, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !131, file: !132, line: 54, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_atomic_uint_t", file: !154, line: 48, baseType: !42)
!154 = !DIFile(filename: "src/os/unix/ngx_atomic.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "5d14beceab1860bcc051d3b7a146b2a2")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "disk_full_time", scope: !131, file: !132, line: 56, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !157, line: 10, baseType: !117)
!157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!158 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !131, file: !132, line: 58, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_handler_pt", file: !132, line: 45, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!46, !129, !46, !40}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !131, file: !132, line: 59, baseType: !45, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !131, file: !132, line: 61, baseType: !165, size: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_log_writer_pt", file: !132, line: 46, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !129, !135, !46, !40}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "wdata", scope: !131, file: !132, line: 62, baseType: !45, size: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !131, file: !132, line: 70, baseType: !52, size: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !132, line: 72, baseType: !129, size: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !72, file: !73, line: 37, baseType: !99, size: 1, offset: 1536, flags: DIFlagBitField, extraData: i64 1536)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "directio", scope: !72, file: !73, line: 38, baseType: !99, size: 1, offset: 1537, flags: DIFlagBitField, extraData: i64 1536)
!174 = !{!175, !176, !177, !178, !179}
!175 = !DILocalVariable(name: "file", arg: 1, scope: !64, file: !2, line: 31, type: !69)
!176 = !DILocalVariable(name: "buf", arg: 2, scope: !64, file: !2, line: 31, type: !46)
!177 = !DILocalVariable(name: "size", arg: 3, scope: !64, file: !2, line: 31, type: !40)
!178 = !DILocalVariable(name: "offset", arg: 4, scope: !64, file: !2, line: 31, type: !53)
!179 = !DILocalVariable(name: "n", scope: !64, file: !2, line: 33, type: !67)
!180 = !{!181, !181, i64 0}
!181 = !{!"any pointer", !182, i64 0}
!182 = !{!"omnipotent char", !183, i64 0}
!183 = !{!"Simple C/C++ TBAA"}
!184 = !DILocation(line: 31, column: 27, scope: !64)
!185 = !DILocation(line: 31, column: 41, scope: !64)
!186 = !{!187, !187, i64 0}
!187 = !{!"long", !182, i64 0}
!188 = !DILocation(line: 31, column: 53, scope: !64)
!189 = !DILocation(line: 31, column: 65, scope: !64)
!190 = !DILocation(line: 33, column: 5, scope: !64)
!191 = !DILocation(line: 33, column: 14, scope: !64)
!192 = !DILocation(line: 40, column: 15, scope: !64)
!193 = !DILocation(line: 40, column: 21, scope: !64)
!194 = !{!195, !196, i64 0}
!195 = !{!"ngx_file_s", !196, i64 0, !197, i64 8, !198, i64 24, !187, i64 168, !187, i64 176, !181, i64 184, !196, i64 192, !196, i64 192}
!196 = !{!"int", !182, i64 0}
!197 = !{!"", !187, i64 0, !181, i64 8}
!198 = !{!"stat", !187, i64 0, !187, i64 8, !187, i64 16, !196, i64 24, !196, i64 28, !196, i64 32, !196, i64 36, !187, i64 40, !187, i64 48, !187, i64 56, !187, i64 64, !199, i64 72, !199, i64 88, !199, i64 104, !182, i64 120}
!199 = !{!"timespec", !187, i64 0, !187, i64 8}
!200 = !DILocation(line: 40, column: 25, scope: !64)
!201 = !DILocation(line: 40, column: 30, scope: !64)
!202 = !DILocation(line: 40, column: 36, scope: !64)
!203 = !DILocation(line: 40, column: 9, scope: !64)
!204 = !DILocation(line: 40, column: 7, scope: !64)
!205 = !DILocation(line: 42, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !64, file: !2, line: 42, column: 9)
!207 = !DILocation(line: 42, column: 11, scope: !206)
!208 = !DILocation(line: 42, column: 9, scope: !64)
!209 = !DILocation(line: 43, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !2, line: 43, column: 9)
!211 = distinct !DILexicalBlock(scope: !206, file: !2, line: 42, column: 18)
!212 = !{!195, !181, i64 184}
!213 = !{!214, !187, i64 0}
!214 = !{!"ngx_log_s", !187, i64 0, !181, i64 8, !187, i64 16, !187, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72}
!215 = !DILocation(line: 43, column: 9, scope: !211)
!216 = !{!196, !196, i64 0}
!217 = !{!195, !181, i64 16}
!218 = !DILocation(line: 45, column: 9, scope: !211)
!219 = !DILocation(line: 72, column: 21, scope: !64)
!220 = !DILocation(line: 72, column: 5, scope: !64)
!221 = !DILocation(line: 72, column: 11, scope: !64)
!222 = !DILocation(line: 72, column: 18, scope: !64)
!223 = !{!195, !187, i64 168}
!224 = !DILocation(line: 74, column: 12, scope: !64)
!225 = !DILocation(line: 74, column: 5, scope: !64)
!226 = !DILocation(line: 75, column: 1, scope: !64)
!227 = !DISubprogram(name: "pread", linkageName: "pread64", scope: !228, file: !228, line: 404, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!229 = !DISubroutineType(types: !230)
!230 = !{!67, !78, !45, !231, !54}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !232, line: 70, baseType: !42)
!232 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!233 = !DISubprogram(name: "ngx_log_error_core", scope: !132, file: !132, line: 88, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !135, !129, !236, !43, null}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_err_t", file: !237, line: 16, baseType: !78)
!237 = !DIFile(filename: "src/os/unix/ngx_errno.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "30ed2ad8bb523aef1235abc1478ad7cf")
!238 = !DISubprogram(name: "__errno_location", scope: !239, file: !239, line: 37, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!240 = !DISubroutineType(types: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!243 = distinct !DISubprogram(name: "ngx_write_file", scope: !2, file: !2, line: 193, type: !65, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251}
!245 = !DILocalVariable(name: "file", arg: 1, scope: !243, file: !2, line: 193, type: !69)
!246 = !DILocalVariable(name: "buf", arg: 2, scope: !243, file: !2, line: 193, type: !46)
!247 = !DILocalVariable(name: "size", arg: 3, scope: !243, file: !2, line: 193, type: !40)
!248 = !DILocalVariable(name: "offset", arg: 4, scope: !243, file: !2, line: 193, type: !53)
!249 = !DILocalVariable(name: "n", scope: !243, file: !2, line: 195, type: !67)
!250 = !DILocalVariable(name: "written", scope: !243, file: !2, line: 195, type: !67)
!251 = !DILocalVariable(name: "err", scope: !243, file: !2, line: 196, type: !236)
!252 = !DILocation(line: 193, column: 28, scope: !243)
!253 = !DILocation(line: 193, column: 42, scope: !243)
!254 = !DILocation(line: 193, column: 54, scope: !243)
!255 = !DILocation(line: 193, column: 66, scope: !243)
!256 = !DILocation(line: 195, column: 5, scope: !243)
!257 = !DILocation(line: 195, column: 16, scope: !243)
!258 = !DILocation(line: 195, column: 19, scope: !243)
!259 = !DILocation(line: 196, column: 5, scope: !243)
!260 = !DILocation(line: 196, column: 16, scope: !243)
!261 = !DILocation(line: 201, column: 13, scope: !243)
!262 = !DILocation(line: 205, column: 5, scope: !243)
!263 = !DILocation(line: 206, column: 20, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 205, column: 16)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 205, column: 5)
!266 = distinct !DILexicalBlock(scope: !243, file: !2, line: 205, column: 5)
!267 = !DILocation(line: 206, column: 26, scope: !264)
!268 = !DILocation(line: 206, column: 30, scope: !264)
!269 = !DILocation(line: 206, column: 36, scope: !264)
!270 = !DILocation(line: 206, column: 34, scope: !264)
!271 = !DILocation(line: 206, column: 45, scope: !264)
!272 = !DILocation(line: 206, column: 51, scope: !264)
!273 = !DILocation(line: 206, column: 13, scope: !264)
!274 = !DILocation(line: 206, column: 11, scope: !264)
!275 = !DILocation(line: 208, column: 13, scope: !276)
!276 = distinct !DILexicalBlock(scope: !264, file: !2, line: 208, column: 13)
!277 = !DILocation(line: 208, column: 15, scope: !276)
!278 = !DILocation(line: 208, column: 13, scope: !264)
!279 = !DILocation(line: 209, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !2, line: 208, column: 22)
!281 = !DILocation(line: 209, column: 17, scope: !280)
!282 = !DILocation(line: 211, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !2, line: 211, column: 17)
!284 = !DILocation(line: 211, column: 21, scope: !283)
!285 = !DILocation(line: 211, column: 17, scope: !280)
!286 = !DILocation(line: 214, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !2, line: 211, column: 35)
!288 = distinct !{!288, !289, !290, !291}
!289 = !DILocation(line: 205, column: 5, scope: !266)
!290 = !DILocation(line: 231, column: 5, scope: !266)
!291 = !{!"llvm.loop.unroll.disable"}
!292 = !DILocation(line: 217, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !280, file: !2, line: 217, column: 13)
!294 = !DILocation(line: 217, column: 13, scope: !280)
!295 = !DILocation(line: 219, column: 13, scope: !280)
!296 = !DILocation(line: 222, column: 25, scope: !264)
!297 = !DILocation(line: 222, column: 9, scope: !264)
!298 = !DILocation(line: 222, column: 15, scope: !264)
!299 = !DILocation(line: 222, column: 22, scope: !264)
!300 = !DILocation(line: 223, column: 20, scope: !264)
!301 = !DILocation(line: 223, column: 17, scope: !264)
!302 = !DILocation(line: 225, column: 22, scope: !303)
!303 = distinct !DILexicalBlock(scope: !264, file: !2, line: 225, column: 13)
!304 = !DILocation(line: 225, column: 27, scope: !303)
!305 = !DILocation(line: 225, column: 24, scope: !303)
!306 = !DILocation(line: 225, column: 13, scope: !264)
!307 = !DILocation(line: 226, column: 20, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !2, line: 225, column: 33)
!309 = !DILocation(line: 226, column: 13, scope: !308)
!310 = !DILocation(line: 229, column: 19, scope: !264)
!311 = !DILocation(line: 229, column: 16, scope: !264)
!312 = !DILocation(line: 230, column: 17, scope: !264)
!313 = !DILocation(line: 230, column: 14, scope: !264)
!314 = !DILocation(line: 205, column: 5, scope: !265)
!315 = !DILocation(line: 273, column: 1, scope: !243)
!316 = !DISubprogram(name: "pwrite", linkageName: "pwrite64", scope: !228, file: !228, line: 408, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{!67, !78, !319, !231, !54}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!321 = distinct !DISubprogram(name: "ngx_open_tempfile", scope: !2, file: !2, line: 277, type: !322, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{!76, !46, !135, !135}
!324 = !{!325, !326, !327, !328}
!325 = !DILocalVariable(name: "name", arg: 1, scope: !321, file: !2, line: 277, type: !46)
!326 = !DILocalVariable(name: "persistent", arg: 2, scope: !321, file: !2, line: 277, type: !135)
!327 = !DILocalVariable(name: "access", arg: 3, scope: !321, file: !2, line: 277, type: !135)
!328 = !DILocalVariable(name: "fd", scope: !321, file: !2, line: 279, type: !76)
!329 = !DILocation(line: 277, column: 27, scope: !321)
!330 = !DILocation(line: 277, column: 44, scope: !321)
!331 = !DILocation(line: 277, column: 67, scope: !321)
!332 = !DILocation(line: 279, column: 5, scope: !321)
!333 = !DILocation(line: 279, column: 15, scope: !321)
!334 = !DILocation(line: 281, column: 30, scope: !321)
!335 = !DILocation(line: 282, column: 15, scope: !321)
!336 = !DILocation(line: 282, column: 24, scope: !321)
!337 = !DILocation(line: 281, column: 10, scope: !321)
!338 = !DILocation(line: 281, column: 8, scope: !321)
!339 = !DILocation(line: 284, column: 9, scope: !340)
!340 = distinct !DILexicalBlock(scope: !321, file: !2, line: 284, column: 9)
!341 = !DILocation(line: 284, column: 12, scope: !340)
!342 = !DILocation(line: 284, column: 18, scope: !340)
!343 = !DILocation(line: 284, column: 22, scope: !340)
!344 = !DILocation(line: 284, column: 9, scope: !321)
!345 = !DILocation(line: 285, column: 38, scope: !346)
!346 = distinct !DILexicalBlock(scope: !340, file: !2, line: 284, column: 34)
!347 = !DILocation(line: 285, column: 16, scope: !346)
!348 = !DILocation(line: 286, column: 5, scope: !346)
!349 = !DILocation(line: 288, column: 12, scope: !321)
!350 = !DILocation(line: 289, column: 1, scope: !321)
!351 = !DILocation(line: 288, column: 5, scope: !321)
!352 = !DISubprogram(name: "open", linkageName: "open64", scope: !353, file: !353, line: 184, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!354 = !DISubroutineType(types: !355)
!355 = !{!78, !43, !78, null}
!356 = !DISubprogram(name: "unlink", scope: !228, file: !228, line: 858, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{!78, !43}
!359 = distinct !DISubprogram(name: "ngx_write_chain_to_file", scope: !2, file: !2, line: 293, type: !360, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !431)
!360 = !DISubroutineType(types: !361)
!361 = !{!67, !69, !362, !53, !395}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_chain_t", file: !71, line: 19, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_chain_s", file: !365, line: 59, size: 128, elements: !366)
!365 = !DIFile(filename: "src/core/ngx_buf.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6333220b53b7706731e71ee9d0416317")
!366 = !{!367, !394}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !364, file: !365, line: 60, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_t", file: !365, line: 18, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_buf_s", file: !365, line: 20, size: 640, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !370, file: !365, line: 21, baseType: !46, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !370, file: !365, line: 22, baseType: !46, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !370, file: !365, line: 23, baseType: !53, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "file_last", scope: !370, file: !365, line: 24, baseType: !53, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !370, file: !365, line: 26, baseType: !46, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !370, file: !365, line: 27, baseType: !46, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !370, file: !365, line: 28, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_buf_tag_t", file: !365, line: 16, baseType: !45)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !370, file: !365, line: 29, baseType: !69, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !370, file: !365, line: 30, baseType: !368, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !370, file: !365, line: 34, baseType: !99, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !370, file: !365, line: 40, baseType: !99, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !365, line: 43, baseType: !99, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "recycled", scope: !370, file: !365, line: 45, baseType: !99, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "in_file", scope: !370, file: !365, line: 46, baseType: !99, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !370, file: !365, line: 47, baseType: !99, size: 1, offset: 581, flags: DIFlagBitField, extraData: i64 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !370, file: !365, line: 48, baseType: !99, size: 1, offset: 582, flags: DIFlagBitField, extraData: i64 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "last_buf", scope: !370, file: !365, line: 49, baseType: !99, size: 1, offset: 583, flags: DIFlagBitField, extraData: i64 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "last_in_chain", scope: !370, file: !365, line: 50, baseType: !99, size: 1, offset: 584, flags: DIFlagBitField, extraData: i64 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "last_shadow", scope: !370, file: !365, line: 52, baseType: !99, size: 1, offset: 585, flags: DIFlagBitField, extraData: i64 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "temp_file", scope: !370, file: !365, line: 53, baseType: !99, size: 1, offset: 586, flags: DIFlagBitField, extraData: i64 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !370, file: !365, line: 55, baseType: !78, size: 32, offset: 608)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !365, line: 61, baseType: !362, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_t", file: !71, line: 18, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_s", file: !398, line: 57, size: 640, elements: !399)
!398 = !DIFile(filename: "src/core/ngx_palloc.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "6555a54b944797708293a47c3c8684b9")
!399 = !{!400, !408, !409, !410, !411, !418, !430}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !397, file: !398, line: 58, baseType: !401, size: 256)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_data_t", file: !398, line: 54, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 49, size: 256, elements: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !402, file: !398, line: 50, baseType: !46, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !402, file: !398, line: 51, baseType: !46, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !398, line: 52, baseType: !395, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !402, file: !398, line: 53, baseType: !135, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !397, file: !398, line: 59, baseType: !40, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !397, file: !398, line: 60, baseType: !395, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !397, file: !398, line: 61, baseType: !362, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !397, file: !398, line: 62, baseType: !412, size: 64, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_large_t", file: !398, line: 41, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_large_s", file: !398, line: 43, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !414, file: !398, line: 44, baseType: !412, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !414, file: !398, line: 45, baseType: !45, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !397, file: !398, line: 63, baseType: !419, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_t", file: !398, line: 32, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ngx_pool_cleanup_s", file: !398, line: 34, size: 192, elements: !422)
!422 = !{!423, !428, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !421, file: !398, line: 35, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_pool_cleanup_pt", file: !398, line: 30, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !45}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !421, file: !398, line: 36, baseType: !45, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !398, line: 37, baseType: !419, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !397, file: !398, line: 64, baseType: !129, size: 64, offset: 576)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !453}
!432 = !DILocalVariable(name: "file", arg: 1, scope: !359, file: !2, line: 293, type: !69)
!433 = !DILocalVariable(name: "cl", arg: 2, scope: !359, file: !2, line: 293, type: !362)
!434 = !DILocalVariable(name: "offset", arg: 3, scope: !359, file: !2, line: 293, type: !53)
!435 = !DILocalVariable(name: "pool", arg: 4, scope: !359, file: !2, line: 294, type: !395)
!436 = !DILocalVariable(name: "total", scope: !359, file: !2, line: 296, type: !67)
!437 = !DILocalVariable(name: "n", scope: !359, file: !2, line: 296, type: !67)
!438 = !DILocalVariable(name: "vec", scope: !359, file: !2, line: 297, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_iovec_t", file: !440, line: 69, baseType: !441)
!440 = !DIFile(filename: "src/os/unix/ngx_os.h", directory: "/local-ssd/nginx-l74zho2rdyt32j6lgmurzhbeuuhcsa7c-build/aidengro/spack-stage-nginx-1.24.0-l74zho2rdyt32j6lgmurzhbeuuhcsa7c/spack-src", checksumkind: CSK_MD5, checksum: "f9335bbb6e5d9856f7d75990ec765c0d")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 64, size: 256, elements: !442)
!442 = !{!443, !450, !451, !452}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "iovs", scope: !441, file: !440, line: 65, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !446, line: 26, size: 128, elements: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !445, file: !446, line: 28, baseType: !45, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !445, file: !446, line: 29, baseType: !40, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !440, line: 66, baseType: !135, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !441, file: !440, line: 67, baseType: !40, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !441, file: !440, line: 68, baseType: !135, size: 64, offset: 192)
!453 = !DILocalVariable(name: "iovs", scope: !359, file: !2, line: 298, type: !454)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 8192, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 64)
!457 = !DILocation(line: 293, column: 37, scope: !359)
!458 = !DILocation(line: 293, column: 56, scope: !359)
!459 = !DILocation(line: 293, column: 66, scope: !359)
!460 = !DILocation(line: 294, column: 17, scope: !359)
!461 = !DILocation(line: 296, column: 5, scope: !359)
!462 = !DILocation(line: 296, column: 20, scope: !359)
!463 = !DILocation(line: 296, column: 27, scope: !359)
!464 = !DILocation(line: 297, column: 5, scope: !359)
!465 = !DILocation(line: 297, column: 20, scope: !359)
!466 = !DILocation(line: 298, column: 5, scope: !359)
!467 = !DILocation(line: 298, column: 20, scope: !359)
!468 = !DILocation(line: 302, column: 9, scope: !469)
!469 = distinct !DILexicalBlock(scope: !359, file: !2, line: 302, column: 9)
!470 = !DILocation(line: 302, column: 13, scope: !469)
!471 = !{!472, !181, i64 8}
!472 = !{!"ngx_chain_s", !181, i64 0, !181, i64 8}
!473 = !DILocation(line: 302, column: 18, scope: !469)
!474 = !DILocation(line: 302, column: 9, scope: !359)
!475 = !DILocation(line: 303, column: 31, scope: !476)
!476 = distinct !DILexicalBlock(scope: !469, file: !2, line: 302, column: 27)
!477 = !DILocation(line: 303, column: 37, scope: !476)
!478 = !DILocation(line: 303, column: 41, scope: !476)
!479 = !{!472, !181, i64 0}
!480 = !DILocation(line: 303, column: 46, scope: !476)
!481 = !{!482, !181, i64 0}
!482 = !{!"ngx_buf_s", !181, i64 0, !181, i64 8, !187, i64 16, !187, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !196, i64 72, !196, i64 72, !196, i64 72, !196, i64 72, !196, i64 72, !196, i64 72, !196, i64 72, !196, i64 72, !196, i64 73, !196, i64 73, !196, i64 73, !196, i64 76}
!483 = !DILocation(line: 304, column: 41, scope: !476)
!484 = !DILocation(line: 304, column: 45, scope: !476)
!485 = !DILocation(line: 304, column: 50, scope: !476)
!486 = !{!482, !181, i64 8}
!487 = !DILocation(line: 304, column: 57, scope: !476)
!488 = !DILocation(line: 304, column: 61, scope: !476)
!489 = !DILocation(line: 304, column: 66, scope: !476)
!490 = !DILocation(line: 304, column: 55, scope: !476)
!491 = !DILocation(line: 305, column: 31, scope: !476)
!492 = !DILocation(line: 303, column: 16, scope: !476)
!493 = !DILocation(line: 303, column: 9, scope: !476)
!494 = !DILocation(line: 308, column: 11, scope: !359)
!495 = !DILocation(line: 310, column: 16, scope: !359)
!496 = !DILocation(line: 310, column: 9, scope: !359)
!497 = !DILocation(line: 310, column: 14, scope: !359)
!498 = !{!499, !181, i64 0}
!499 = !{!"", !181, i64 0, !187, i64 8, !187, i64 16, !187, i64 24}
!500 = !DILocation(line: 311, column: 9, scope: !359)
!501 = !DILocation(line: 311, column: 16, scope: !359)
!502 = !{!499, !187, i64 24}
!503 = !DILocation(line: 313, column: 5, scope: !359)
!504 = !DILocation(line: 315, column: 39, scope: !505)
!505 = distinct !DILexicalBlock(scope: !359, file: !2, line: 313, column: 8)
!506 = !DILocation(line: 315, column: 14, scope: !505)
!507 = !DILocation(line: 315, column: 12, scope: !505)
!508 = !DILocation(line: 319, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !2, line: 319, column: 13)
!510 = !{!499, !187, i64 8}
!511 = !DILocation(line: 319, column: 23, scope: !509)
!512 = !DILocation(line: 319, column: 13, scope: !505)
!513 = !DILocation(line: 320, column: 32, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !2, line: 319, column: 29)
!515 = !DILocation(line: 320, column: 49, scope: !514)
!516 = !DILocation(line: 320, column: 57, scope: !514)
!517 = !{!518, !181, i64 0}
!518 = !{!"iovec", !181, i64 0, !187, i64 8}
!519 = !DILocation(line: 321, column: 32, scope: !514)
!520 = !DILocation(line: 321, column: 40, scope: !514)
!521 = !{!518, !187, i64 8}
!522 = !DILocation(line: 321, column: 49, scope: !514)
!523 = !DILocation(line: 320, column: 17, scope: !514)
!524 = !DILocation(line: 320, column: 15, scope: !514)
!525 = !DILocation(line: 323, column: 17, scope: !526)
!526 = distinct !DILexicalBlock(scope: !514, file: !2, line: 323, column: 17)
!527 = !DILocation(line: 323, column: 19, scope: !526)
!528 = !DILocation(line: 323, column: 17, scope: !514)
!529 = !DILocation(line: 324, column: 24, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !2, line: 323, column: 33)
!531 = !DILocation(line: 324, column: 17, scope: !530)
!532 = !DILocation(line: 327, column: 20, scope: !514)
!533 = !DILocation(line: 327, column: 28, scope: !514)
!534 = !DILocation(line: 327, column: 26, scope: !514)
!535 = !DILocation(line: 327, column: 13, scope: !514)
!536 = !DILocation(line: 330, column: 29, scope: !505)
!537 = !DILocation(line: 330, column: 41, scope: !505)
!538 = !DILocation(line: 330, column: 13, scope: !505)
!539 = !DILocation(line: 330, column: 11, scope: !505)
!540 = !DILocation(line: 332, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !505, file: !2, line: 332, column: 13)
!542 = !DILocation(line: 332, column: 15, scope: !541)
!543 = !DILocation(line: 332, column: 13, scope: !505)
!544 = !DILocation(line: 333, column: 20, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 332, column: 29)
!546 = !DILocation(line: 333, column: 13, scope: !545)
!547 = !DILocation(line: 336, column: 19, scope: !505)
!548 = !DILocation(line: 336, column: 16, scope: !505)
!549 = !DILocation(line: 337, column: 18, scope: !505)
!550 = !DILocation(line: 337, column: 15, scope: !505)
!551 = !DILocation(line: 339, column: 5, scope: !505)
!552 = !DILocation(line: 339, column: 14, scope: !359)
!553 = distinct !{!553, !503, !554, !555, !291}
!554 = !DILocation(line: 339, column: 16, scope: !359)
!555 = !{!"llvm.loop.mustprogress"}
!556 = !DILocation(line: 341, column: 12, scope: !359)
!557 = !DILocation(line: 341, column: 5, scope: !359)
!558 = !DILocation(line: 342, column: 1, scope: !359)
!559 = distinct !DISubprogram(name: "ngx_chain_to_iovec", scope: !2, file: !2, line: 346, type: !560, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !563)
!560 = !DISubroutineType(types: !561)
!561 = !{!362, !562, !362}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!563 = !{!564, !565, !566, !567, !568, !569, !570}
!564 = !DILocalVariable(name: "vec", arg: 1, scope: !559, file: !2, line: 346, type: !562)
!565 = !DILocalVariable(name: "cl", arg: 2, scope: !559, file: !2, line: 346, type: !362)
!566 = !DILocalVariable(name: "total", scope: !559, file: !2, line: 348, type: !40)
!567 = !DILocalVariable(name: "size", scope: !559, file: !2, line: 348, type: !40)
!568 = !DILocalVariable(name: "prev", scope: !559, file: !2, line: 349, type: !46)
!569 = !DILocalVariable(name: "n", scope: !559, file: !2, line: 350, type: !135)
!570 = !DILocalVariable(name: "iov", scope: !559, file: !2, line: 351, type: !444)
!571 = !DILocation(line: 346, column: 33, scope: !559)
!572 = !DILocation(line: 346, column: 51, scope: !559)
!573 = !DILocation(line: 348, column: 5, scope: !559)
!574 = !DILocation(line: 348, column: 20, scope: !559)
!575 = !DILocation(line: 348, column: 27, scope: !559)
!576 = !DILocation(line: 349, column: 5, scope: !559)
!577 = !DILocation(line: 349, column: 20, scope: !559)
!578 = !DILocation(line: 350, column: 5, scope: !559)
!579 = !DILocation(line: 350, column: 20, scope: !559)
!580 = !DILocation(line: 351, column: 5, scope: !559)
!581 = !DILocation(line: 351, column: 20, scope: !559)
!582 = !DILocation(line: 353, column: 9, scope: !559)
!583 = !DILocation(line: 354, column: 10, scope: !559)
!584 = !DILocation(line: 355, column: 11, scope: !559)
!585 = !DILocation(line: 356, column: 7, scope: !559)
!586 = !DILocation(line: 358, column: 5, scope: !559)
!587 = !DILocation(line: 358, column: 24, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !2, line: 358, column: 5)
!589 = distinct !DILexicalBlock(scope: !559, file: !2, line: 358, column: 5)
!590 = !DILocation(line: 358, column: 5, scope: !589)
!591 = !DILocation(line: 360, column: 13, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !2, line: 360, column: 13)
!593 = distinct !DILexicalBlock(scope: !588, file: !2, line: 358, column: 43)
!594 = !DILocation(line: 360, column: 13, scope: !593)
!595 = !DILocation(line: 361, column: 13, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !2, line: 360, column: 39)
!597 = !DILocation(line: 364, column: 16, scope: !593)
!598 = !DILocation(line: 364, column: 20, scope: !593)
!599 = !DILocation(line: 364, column: 25, scope: !593)
!600 = !DILocation(line: 364, column: 32, scope: !593)
!601 = !DILocation(line: 364, column: 36, scope: !593)
!602 = !DILocation(line: 364, column: 41, scope: !593)
!603 = !DILocation(line: 364, column: 30, scope: !593)
!604 = !DILocation(line: 364, column: 14, scope: !593)
!605 = !DILocation(line: 366, column: 13, scope: !606)
!606 = distinct !DILexicalBlock(scope: !593, file: !2, line: 366, column: 13)
!607 = !DILocation(line: 366, column: 21, scope: !606)
!608 = !DILocation(line: 366, column: 25, scope: !606)
!609 = !DILocation(line: 366, column: 30, scope: !606)
!610 = !DILocation(line: 366, column: 18, scope: !606)
!611 = !DILocation(line: 366, column: 13, scope: !593)
!612 = !DILocation(line: 367, column: 29, scope: !613)
!613 = distinct !DILexicalBlock(scope: !606, file: !2, line: 366, column: 35)
!614 = !DILocation(line: 367, column: 13, scope: !613)
!615 = !DILocation(line: 367, column: 18, scope: !613)
!616 = !DILocation(line: 367, column: 26, scope: !613)
!617 = !DILocation(line: 369, column: 9, scope: !613)
!618 = !DILocation(line: 370, column: 17, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 370, column: 17)
!620 = distinct !DILexicalBlock(scope: !606, file: !2, line: 369, column: 16)
!621 = !DILocation(line: 370, column: 22, scope: !619)
!622 = !DILocation(line: 370, column: 27, scope: !619)
!623 = !DILocation(line: 370, column: 19, scope: !619)
!624 = !DILocation(line: 370, column: 17, scope: !620)
!625 = !DILocation(line: 371, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !619, file: !2, line: 370, column: 35)
!627 = !DILocation(line: 374, column: 20, scope: !620)
!628 = !DILocation(line: 374, column: 25, scope: !620)
!629 = !DILocation(line: 374, column: 31, scope: !620)
!630 = !DILocation(line: 374, column: 17, scope: !620)
!631 = !DILocation(line: 376, column: 38, scope: !620)
!632 = !DILocation(line: 376, column: 42, scope: !620)
!633 = !DILocation(line: 376, column: 47, scope: !620)
!634 = !DILocation(line: 376, column: 13, scope: !620)
!635 = !DILocation(line: 376, column: 18, scope: !620)
!636 = !DILocation(line: 376, column: 27, scope: !620)
!637 = !DILocation(line: 377, column: 28, scope: !620)
!638 = !DILocation(line: 377, column: 13, scope: !620)
!639 = !DILocation(line: 377, column: 18, scope: !620)
!640 = !DILocation(line: 377, column: 26, scope: !620)
!641 = !DILocation(line: 380, column: 16, scope: !593)
!642 = !DILocation(line: 380, column: 20, scope: !593)
!643 = !DILocation(line: 380, column: 25, scope: !593)
!644 = !DILocation(line: 380, column: 31, scope: !593)
!645 = !DILocation(line: 380, column: 29, scope: !593)
!646 = !DILocation(line: 380, column: 14, scope: !593)
!647 = !DILocation(line: 381, column: 18, scope: !593)
!648 = !DILocation(line: 381, column: 15, scope: !593)
!649 = !DILocation(line: 382, column: 5, scope: !593)
!650 = !DILocation(line: 358, column: 33, scope: !588)
!651 = !DILocation(line: 358, column: 37, scope: !588)
!652 = !DILocation(line: 358, column: 31, scope: !588)
!653 = !DILocation(line: 358, column: 5, scope: !588)
!654 = distinct !{!654, !590, !655, !555, !291}
!655 = !DILocation(line: 382, column: 5, scope: !589)
!656 = !DILocation(line: 384, column: 18, scope: !559)
!657 = !DILocation(line: 384, column: 5, scope: !559)
!658 = !DILocation(line: 384, column: 10, scope: !559)
!659 = !DILocation(line: 384, column: 16, scope: !559)
!660 = !DILocation(line: 385, column: 17, scope: !559)
!661 = !DILocation(line: 385, column: 5, scope: !559)
!662 = !DILocation(line: 385, column: 10, scope: !559)
!663 = !DILocation(line: 385, column: 15, scope: !559)
!664 = !{!499, !187, i64 16}
!665 = !DILocation(line: 387, column: 12, scope: !559)
!666 = !DILocation(line: 388, column: 1, scope: !559)
!667 = !DILocation(line: 387, column: 5, scope: !559)
!668 = distinct !DISubprogram(name: "ngx_writev_file", scope: !2, file: !2, line: 392, type: !669, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!67, !69, !562, !53}
!671 = !{!672, !673, !674, !675, !676, !677}
!672 = !DILocalVariable(name: "file", arg: 1, scope: !668, file: !2, line: 392, type: !69)
!673 = !DILocalVariable(name: "vec", arg: 2, scope: !668, file: !2, line: 392, type: !562)
!674 = !DILocalVariable(name: "offset", arg: 3, scope: !668, file: !2, line: 392, type: !53)
!675 = !DILocalVariable(name: "n", scope: !668, file: !2, line: 394, type: !67)
!676 = !DILocalVariable(name: "err", scope: !668, file: !2, line: 395, type: !236)
!677 = !DILabel(scope: !668, name: "eintr", file: !2, line: 402)
!678 = !DILocation(line: 392, column: 29, scope: !668)
!679 = !DILocation(line: 392, column: 48, scope: !668)
!680 = !DILocation(line: 392, column: 59, scope: !668)
!681 = !DILocation(line: 394, column: 5, scope: !668)
!682 = !DILocation(line: 394, column: 16, scope: !668)
!683 = !DILocation(line: 395, column: 5, scope: !668)
!684 = !DILocation(line: 395, column: 16, scope: !668)
!685 = !DILocation(line: 402, column: 1, scope: !668)
!686 = !DILocation(line: 404, column: 17, scope: !668)
!687 = !DILocation(line: 404, column: 23, scope: !668)
!688 = !DILocation(line: 404, column: 27, scope: !668)
!689 = !DILocation(line: 404, column: 32, scope: !668)
!690 = !DILocation(line: 404, column: 38, scope: !668)
!691 = !DILocation(line: 404, column: 43, scope: !668)
!692 = !DILocation(line: 404, column: 50, scope: !668)
!693 = !DILocation(line: 404, column: 9, scope: !668)
!694 = !DILocation(line: 404, column: 7, scope: !668)
!695 = !DILocation(line: 406, column: 9, scope: !696)
!696 = distinct !DILexicalBlock(scope: !668, file: !2, line: 406, column: 9)
!697 = !DILocation(line: 406, column: 11, scope: !696)
!698 = !DILocation(line: 406, column: 9, scope: !668)
!699 = !DILocation(line: 407, column: 15, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !2, line: 406, column: 18)
!701 = !DILocation(line: 407, column: 13, scope: !700)
!702 = !DILocation(line: 409, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !2, line: 409, column: 13)
!704 = !DILocation(line: 409, column: 17, scope: !703)
!705 = !DILocation(line: 409, column: 13, scope: !700)
!706 = !DILocation(line: 412, column: 13, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !2, line: 409, column: 31)
!708 = !DILocation(line: 415, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !700, file: !2, line: 415, column: 9)
!710 = !DILocation(line: 415, column: 9, scope: !700)
!711 = !DILocation(line: 417, column: 9, scope: !700)
!712 = !DILocation(line: 420, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !668, file: !2, line: 420, column: 9)
!714 = !DILocation(line: 420, column: 23, scope: !713)
!715 = !DILocation(line: 420, column: 28, scope: !713)
!716 = !DILocation(line: 420, column: 20, scope: !713)
!717 = !DILocation(line: 420, column: 9, scope: !668)
!718 = !DILocation(line: 421, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 421, column: 9)
!720 = distinct !DILexicalBlock(scope: !713, file: !2, line: 420, column: 34)
!721 = !DILocation(line: 421, column: 9, scope: !720)
!722 = !DILocation(line: 424, column: 9, scope: !720)
!723 = !DILocation(line: 468, column: 21, scope: !668)
!724 = !DILocation(line: 468, column: 5, scope: !668)
!725 = !DILocation(line: 468, column: 11, scope: !668)
!726 = !DILocation(line: 468, column: 18, scope: !668)
!727 = !DILocation(line: 470, column: 12, scope: !668)
!728 = !DILocation(line: 470, column: 5, scope: !668)
!729 = !DILocation(line: 471, column: 1, scope: !668)
!730 = distinct !DISubprogram(name: "ngx_set_file_time", scope: !2, file: !2, line: 601, type: !731, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !736)
!731 = !DISubroutineType(types: !732)
!732 = !{!733, !46, !76, !156}
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_int_t", file: !136, line: 78, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !228, line: 267, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !50, line: 207, baseType: !55)
!736 = !{!737, !738, !739, !740}
!737 = !DILocalVariable(name: "name", arg: 1, scope: !730, file: !2, line: 601, type: !46)
!738 = !DILocalVariable(name: "fd", arg: 2, scope: !730, file: !2, line: 601, type: !76)
!739 = !DILocalVariable(name: "s", arg: 3, scope: !730, file: !2, line: 601, type: !156)
!740 = !DILocalVariable(name: "tv", scope: !730, file: !2, line: 603, type: !741)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 256, elements: !748)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !743, line: 8, size: 128, elements: !744)
!743 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !742, file: !743, line: 14, baseType: !117, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !742, file: !743, line: 15, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !50, line: 162, baseType: !55)
!748 = !{!749}
!749 = !DISubrange(count: 2)
!750 = !DILocation(line: 601, column: 27, scope: !730)
!751 = !DILocation(line: 601, column: 42, scope: !730)
!752 = !DILocation(line: 601, column: 53, scope: !730)
!753 = !DILocation(line: 603, column: 5, scope: !730)
!754 = !DILocation(line: 603, column: 21, scope: !730)
!755 = !DILocation(line: 605, column: 20, scope: !730)
!756 = !{!757, !187, i64 0}
!757 = !{!"", !187, i64 0, !187, i64 8, !187, i64 16}
!758 = !DILocation(line: 605, column: 5, scope: !730)
!759 = !DILocation(line: 605, column: 11, scope: !730)
!760 = !DILocation(line: 605, column: 18, scope: !730)
!761 = !{!762, !187, i64 0}
!762 = !{!"timeval", !187, i64 0, !187, i64 8}
!763 = !DILocation(line: 606, column: 5, scope: !730)
!764 = !DILocation(line: 606, column: 11, scope: !730)
!765 = !DILocation(line: 606, column: 19, scope: !730)
!766 = !{!762, !187, i64 8}
!767 = !DILocation(line: 607, column: 20, scope: !730)
!768 = !DILocation(line: 607, column: 5, scope: !730)
!769 = !DILocation(line: 607, column: 11, scope: !730)
!770 = !DILocation(line: 607, column: 18, scope: !730)
!771 = !DILocation(line: 608, column: 5, scope: !730)
!772 = !DILocation(line: 608, column: 11, scope: !730)
!773 = !DILocation(line: 608, column: 19, scope: !730)
!774 = !DILocation(line: 610, column: 25, scope: !775)
!775 = distinct !DILexicalBlock(scope: !730, file: !2, line: 610, column: 9)
!776 = !DILocation(line: 610, column: 31, scope: !775)
!777 = !DILocation(line: 610, column: 9, scope: !775)
!778 = !DILocation(line: 610, column: 35, scope: !775)
!779 = !DILocation(line: 610, column: 9, scope: !730)
!780 = !DILocation(line: 611, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !775, file: !2, line: 610, column: 42)
!782 = !DILocation(line: 614, column: 5, scope: !730)
!783 = !DILocation(line: 615, column: 1, scope: !730)
!784 = !DISubprogram(name: "utimes", scope: !785, file: !785, line: 162, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!785 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "b36e339815f62ba7208e5294180e353c")
!786 = !DISubroutineType(types: !787)
!787 = !{!78, !43, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!790 = distinct !DISubprogram(name: "ngx_create_file_mapping", scope: !2, file: !2, line: 619, type: !791, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !802)
!791 = !DISubroutineType(types: !792)
!792 = !{!733, !793}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_file_mapping_t", file: !77, line: 27, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 21, size: 320, elements: !796)
!796 = !{!797, !798, !799, !800, !801}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !795, file: !77, line: 22, baseType: !46, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !795, file: !77, line: 23, baseType: !40, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !795, file: !77, line: 24, baseType: !45, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !795, file: !77, line: 25, baseType: !76, size: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !795, file: !77, line: 26, baseType: !129, size: 64, offset: 256)
!802 = !{!803, !804}
!803 = !DILocalVariable(name: "fm", arg: 1, scope: !790, file: !2, line: 619, type: !793)
!804 = !DILabel(scope: !790, name: "failed", file: !2, line: 645)
!805 = !DILocation(line: 619, column: 45, scope: !790)
!806 = !DILocation(line: 621, column: 14, scope: !790)
!807 = !{!808, !181, i64 0}
!808 = !{!"", !181, i64 0, !187, i64 8, !181, i64 16, !196, i64 24, !181, i64 32}
!809 = !DILocation(line: 621, column: 5, scope: !790)
!810 = !DILocation(line: 621, column: 9, scope: !790)
!811 = !DILocation(line: 621, column: 12, scope: !790)
!812 = !{!808, !196, i64 24}
!813 = !DILocation(line: 624, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !790, file: !2, line: 624, column: 9)
!815 = !DILocation(line: 624, column: 13, scope: !814)
!816 = !DILocation(line: 624, column: 16, scope: !814)
!817 = !DILocation(line: 624, column: 9, scope: !790)
!818 = !DILocation(line: 625, column: 9, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 625, column: 9)
!820 = distinct !DILexicalBlock(scope: !814, file: !2, line: 624, column: 37)
!821 = !{!808, !181, i64 32}
!822 = !DILocation(line: 625, column: 9, scope: !820)
!823 = !DILocation(line: 627, column: 9, scope: !820)
!824 = !DILocation(line: 630, column: 19, scope: !825)
!825 = distinct !DILexicalBlock(scope: !790, file: !2, line: 630, column: 9)
!826 = !DILocation(line: 630, column: 23, scope: !825)
!827 = !DILocation(line: 630, column: 27, scope: !825)
!828 = !DILocation(line: 630, column: 31, scope: !825)
!829 = !{!808, !187, i64 8}
!830 = !DILocation(line: 630, column: 9, scope: !825)
!831 = !DILocation(line: 630, column: 37, scope: !825)
!832 = !DILocation(line: 630, column: 9, scope: !790)
!833 = !DILocation(line: 631, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !2, line: 631, column: 9)
!835 = distinct !DILexicalBlock(scope: !825, file: !2, line: 630, column: 44)
!836 = !DILocation(line: 631, column: 9, scope: !835)
!837 = !DILocation(line: 633, column: 9, scope: !835)
!838 = !DILocation(line: 636, column: 27, scope: !790)
!839 = !DILocation(line: 636, column: 31, scope: !790)
!840 = !DILocation(line: 637, column: 21, scope: !790)
!841 = !DILocation(line: 637, column: 25, scope: !790)
!842 = !DILocation(line: 636, column: 16, scope: !790)
!843 = !DILocation(line: 636, column: 5, scope: !790)
!844 = !DILocation(line: 636, column: 9, scope: !790)
!845 = !DILocation(line: 636, column: 14, scope: !790)
!846 = !{!808, !181, i64 16}
!847 = !DILocation(line: 638, column: 9, scope: !848)
!848 = distinct !DILexicalBlock(scope: !790, file: !2, line: 638, column: 9)
!849 = !DILocation(line: 638, column: 13, scope: !848)
!850 = !DILocation(line: 638, column: 18, scope: !848)
!851 = !DILocation(line: 638, column: 9, scope: !790)
!852 = !DILocation(line: 639, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !848, file: !2, line: 638, column: 33)
!854 = !DILocation(line: 642, column: 5, scope: !855)
!855 = distinct !DILexicalBlock(scope: !790, file: !2, line: 642, column: 5)
!856 = !DILocation(line: 642, column: 5, scope: !790)
!857 = !DILocation(line: 645, column: 1, scope: !790)
!858 = !DILocation(line: 647, column: 24, scope: !859)
!859 = distinct !DILexicalBlock(scope: !790, file: !2, line: 647, column: 9)
!860 = !DILocation(line: 647, column: 28, scope: !859)
!861 = !DILocation(line: 647, column: 9, scope: !859)
!862 = !DILocation(line: 647, column: 32, scope: !859)
!863 = !DILocation(line: 647, column: 9, scope: !790)
!864 = !DILocation(line: 648, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !2, line: 648, column: 9)
!866 = distinct !DILexicalBlock(scope: !859, file: !2, line: 647, column: 51)
!867 = !DILocation(line: 648, column: 9, scope: !866)
!868 = !DILocation(line: 650, column: 5, scope: !866)
!869 = !DILocation(line: 652, column: 5, scope: !790)
!870 = !DILocation(line: 653, column: 1, scope: !790)
!871 = !DISubprogram(name: "ftruncate", linkageName: "ftruncate64", scope: !228, file: !228, line: 1052, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubroutineType(types: !873)
!873 = !{!78, !78, !54}
!874 = !DISubprogram(name: "mmap", linkageName: "mmap64", scope: !875, file: !875, line: 61, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mman.h", directory: "", checksumkind: CSK_MD5, checksum: "93a87cc3b0558893646eb0c257165272")
!876 = !DISubroutineType(types: !877)
!877 = !{!45, !45, !40, !78, !78, !78, !54}
!878 = !DISubprogram(name: "close", scope: !228, file: !228, line: 358, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubroutineType(types: !880)
!880 = !{!78, !78}
!881 = distinct !DISubprogram(name: "ngx_close_file_mapping", scope: !2, file: !2, line: 657, type: !882, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !793}
!884 = !{!885}
!885 = !DILocalVariable(name: "fm", arg: 1, scope: !881, file: !2, line: 657, type: !793)
!886 = !DILocation(line: 657, column: 44, scope: !881)
!887 = !DILocation(line: 659, column: 16, scope: !888)
!888 = distinct !DILexicalBlock(scope: !881, file: !2, line: 659, column: 9)
!889 = !DILocation(line: 659, column: 20, scope: !888)
!890 = !DILocation(line: 659, column: 26, scope: !888)
!891 = !DILocation(line: 659, column: 30, scope: !888)
!892 = !DILocation(line: 659, column: 9, scope: !888)
!893 = !DILocation(line: 659, column: 36, scope: !888)
!894 = !DILocation(line: 659, column: 9, scope: !881)
!895 = !DILocation(line: 660, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 660, column: 9)
!897 = distinct !DILexicalBlock(scope: !888, file: !2, line: 659, column: 43)
!898 = !DILocation(line: 660, column: 9, scope: !897)
!899 = !DILocation(line: 662, column: 5, scope: !897)
!900 = !DILocation(line: 664, column: 24, scope: !901)
!901 = distinct !DILexicalBlock(scope: !881, file: !2, line: 664, column: 9)
!902 = !DILocation(line: 664, column: 28, scope: !901)
!903 = !DILocation(line: 664, column: 9, scope: !901)
!904 = !DILocation(line: 664, column: 32, scope: !901)
!905 = !DILocation(line: 664, column: 9, scope: !881)
!906 = !DILocation(line: 665, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 665, column: 9)
!908 = distinct !DILexicalBlock(scope: !901, file: !2, line: 664, column: 51)
!909 = !DILocation(line: 665, column: 9, scope: !908)
!910 = !DILocation(line: 667, column: 5, scope: !908)
!911 = !DILocation(line: 668, column: 1, scope: !881)
!912 = !DISubprogram(name: "munmap", scope: !875, file: !875, line: 76, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DISubroutineType(types: !914)
!914 = !{!78, !45, !40}
!915 = distinct !DISubprogram(name: "ngx_open_dir", scope: !2, file: !2, line: 672, type: !916, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !946)
!916 = !DISubroutineType(types: !917)
!917 = !{!733, !918, !919}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_dir_t", file: !77, line: 37, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 30, size: 1344, elements: !922)
!922 = !{!923, !928, !943, !944, !945}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !921, file: !77, line: 31, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !926, line: 127, baseType: !927)
!926 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !926, line: 127, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !921, file: !77, line: 32, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !931, line: 22, size: 2240, elements: !932)
!931 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!932 = !{!933, !935, !936, !938, !939}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !930, file: !931, line: 28, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !50, line: 149, baseType: !42)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !930, file: !931, line: 29, baseType: !54, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !930, file: !931, line: 31, baseType: !937, size: 16, offset: 128)
!937 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !930, file: !931, line: 32, baseType: !51, size: 8, offset: 144)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !930, file: !931, line: 33, baseType: !940, size: 2048, offset: 152)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !921, file: !77, line: 33, baseType: !88, size: 1152, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !921, file: !77, line: 35, baseType: !99, size: 8, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "valid_info", scope: !921, file: !77, line: 36, baseType: !99, size: 1, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!946 = !{!947, !948}
!947 = !DILocalVariable(name: "name", arg: 1, scope: !915, file: !2, line: 672, type: !918)
!948 = !DILocalVariable(name: "dir", arg: 2, scope: !915, file: !2, line: 672, type: !919)
!949 = !DILocation(line: 672, column: 25, scope: !915)
!950 = !DILocation(line: 672, column: 42, scope: !915)
!951 = !DILocation(line: 674, column: 39, scope: !915)
!952 = !DILocation(line: 674, column: 45, scope: !915)
!953 = !{!197, !181, i64 8}
!954 = !DILocation(line: 674, column: 16, scope: !915)
!955 = !DILocation(line: 674, column: 5, scope: !915)
!956 = !DILocation(line: 674, column: 10, scope: !915)
!957 = !DILocation(line: 674, column: 14, scope: !915)
!958 = !{!959, !181, i64 0}
!959 = !{!"", !181, i64 0, !181, i64 8, !198, i64 16, !196, i64 160, !196, i64 161}
!960 = !DILocation(line: 676, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !915, file: !2, line: 676, column: 9)
!962 = !DILocation(line: 676, column: 14, scope: !961)
!963 = !DILocation(line: 676, column: 18, scope: !961)
!964 = !DILocation(line: 676, column: 9, scope: !915)
!965 = !DILocation(line: 677, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !2, line: 676, column: 27)
!967 = !DILocation(line: 680, column: 5, scope: !915)
!968 = !DILocation(line: 680, column: 10, scope: !915)
!969 = !DILocation(line: 680, column: 21, scope: !915)
!970 = !DILocation(line: 682, column: 5, scope: !915)
!971 = !DILocation(line: 683, column: 1, scope: !915)
!972 = !DISubprogram(name: "opendir", scope: !926, file: !926, line: 134, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubroutineType(types: !974)
!974 = !{!924, !43}
!975 = distinct !DISubprogram(name: "ngx_read_dir", scope: !2, file: !2, line: 687, type: !976, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{!733, !919}
!978 = !{!979}
!979 = !DILocalVariable(name: "dir", arg: 1, scope: !975, file: !2, line: 687, type: !919)
!980 = !DILocation(line: 687, column: 25, scope: !975)
!981 = !DILocation(line: 689, column: 23, scope: !975)
!982 = !DILocation(line: 689, column: 28, scope: !975)
!983 = !DILocation(line: 689, column: 15, scope: !975)
!984 = !DILocation(line: 689, column: 5, scope: !975)
!985 = !DILocation(line: 689, column: 10, scope: !975)
!986 = !DILocation(line: 689, column: 13, scope: !975)
!987 = !{!959, !181, i64 8}
!988 = !DILocation(line: 691, column: 9, scope: !989)
!989 = distinct !DILexicalBlock(scope: !975, file: !2, line: 691, column: 9)
!990 = !DILocation(line: 691, column: 14, scope: !989)
!991 = !DILocation(line: 691, column: 9, scope: !975)
!992 = !DILocation(line: 693, column: 21, scope: !993)
!993 = distinct !DILexicalBlock(scope: !989, file: !2, line: 691, column: 18)
!994 = !DILocation(line: 693, column: 26, scope: !993)
!995 = !DILocation(line: 693, column: 30, scope: !993)
!996 = !{!997, !182, i64 18}
!997 = !{!"dirent", !187, i64 0, !187, i64 8, !998, i64 16, !182, i64 18, !182, i64 19}
!998 = !{!"short", !182, i64 0}
!999 = !DILocation(line: 693, column: 9, scope: !993)
!1000 = !DILocation(line: 693, column: 14, scope: !993)
!1001 = !DILocation(line: 693, column: 19, scope: !993)
!1002 = !DILocation(line: 697, column: 9, scope: !993)
!1003 = !DILocation(line: 700, column: 5, scope: !975)
!1004 = !DILocation(line: 701, column: 1, scope: !975)
!1005 = !DISubprogram(name: "readdir", linkageName: "readdir64", scope: !926, file: !926, line: 165, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!929, !924}
!1008 = distinct !DISubprogram(name: "ngx_open_glob", scope: !2, file: !2, line: 705, type: !1009, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1046)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!733, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "ngx_glob_t", file: !77, line: 46, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 40, size: 832, elements: !1014)
!1014 = !{!1015, !1016, !1043, !1044, !1045}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1013, file: !77, line: 41, baseType: !40, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pglob", scope: !1013, file: !77, line: 42, baseType: !1017, size: 576, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "glob_t", file: !41, line: 105, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 82, size: 576, elements: !1019)
!1019 = !{!1020, !1022, !1024, !1025, !1026, !1027, !1031, !1035, !1042}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathc", scope: !1018, file: !41, line: 84, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !41, line: 27, baseType: !42)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathv", scope: !1018, file: !41, line: 85, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gl_offs", scope: !1018, file: !41, line: 86, baseType: !1021, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gl_flags", scope: !1018, file: !41, line: 87, baseType: !78, size: 32, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gl_closedir", scope: !1018, file: !41, line: 91, baseType: !425, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gl_readdir", scope: !1018, file: !41, line: 93, baseType: !1028, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!929, !45}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gl_opendir", scope: !1018, file: !41, line: 97, baseType: !1032, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!45, !43}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gl_lstat", scope: !1018, file: !41, line: 99, baseType: !1036, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!78, !1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!1040 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gl_stat", scope: !1018, file: !41, line: 100, baseType: !1036, size: 64, offset: 512)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !1013, file: !77, line: 43, baseType: !46, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1013, file: !77, line: 44, baseType: !129, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1013, file: !77, line: 45, baseType: !135, size: 64, offset: 768)
!1046 = !{!1047, !1048}
!1047 = !DILocalVariable(name: "gl", arg: 1, scope: !1008, file: !2, line: 705, type: !1011)
!1048 = !DILocalVariable(name: "n", scope: !1008, file: !2, line: 707, type: !78)
!1049 = !DILocation(line: 705, column: 27, scope: !1008)
!1050 = !DILocation(line: 707, column: 5, scope: !1008)
!1051 = !DILocation(line: 707, column: 10, scope: !1008)
!1052 = !DILocation(line: 709, column: 23, scope: !1008)
!1053 = !DILocation(line: 709, column: 27, scope: !1008)
!1054 = !{!1055, !181, i64 80}
!1055 = !{!"", !187, i64 0, !1056, i64 8, !181, i64 80, !181, i64 88, !187, i64 96}
!1056 = !{!"", !187, i64 0, !181, i64 8, !187, i64 16, !196, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64}
!1057 = !DILocation(line: 709, column: 46, scope: !1008)
!1058 = !DILocation(line: 709, column: 50, scope: !1008)
!1059 = !DILocation(line: 709, column: 9, scope: !1008)
!1060 = !DILocation(line: 709, column: 7, scope: !1008)
!1061 = !DILocation(line: 711, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 711, column: 9)
!1063 = !DILocation(line: 711, column: 11, scope: !1062)
!1064 = !DILocation(line: 711, column: 9, scope: !1008)
!1065 = !DILocation(line: 712, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 711, column: 17)
!1067 = !DILocation(line: 717, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 717, column: 9)
!1069 = !DILocation(line: 717, column: 11, scope: !1068)
!1070 = !DILocation(line: 717, column: 27, scope: !1068)
!1071 = !DILocation(line: 717, column: 30, scope: !1068)
!1072 = !DILocation(line: 717, column: 34, scope: !1068)
!1073 = !{!1055, !187, i64 96}
!1074 = !DILocation(line: 717, column: 9, scope: !1008)
!1075 = !DILocation(line: 718, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 717, column: 40)
!1077 = !DILocation(line: 723, column: 5, scope: !1008)
!1078 = !DILocation(line: 724, column: 1, scope: !1008)
!1079 = !DISubprogram(name: "glob", linkageName: "glob64", scope: !41, file: !41, line: 163, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!78, !1039, !78, !1082, !1085}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!78, !43, !78}
!1085 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1086)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1087 = distinct !DISubprogram(name: "ngx_read_glob", scope: !2, file: !2, line: 728, type: !1088, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!733, !1011, !918}
!1090 = !{!1091, !1092, !1093}
!1091 = !DILocalVariable(name: "gl", arg: 1, scope: !1087, file: !2, line: 728, type: !1011)
!1092 = !DILocalVariable(name: "name", arg: 2, scope: !1087, file: !2, line: 728, type: !918)
!1093 = !DILocalVariable(name: "count", scope: !1087, file: !2, line: 730, type: !40)
!1094 = !DILocation(line: 728, column: 27, scope: !1087)
!1095 = !DILocation(line: 728, column: 42, scope: !1087)
!1096 = !DILocation(line: 730, column: 5, scope: !1087)
!1097 = !DILocation(line: 730, column: 13, scope: !1087)
!1098 = !DILocation(line: 733, column: 22, scope: !1087)
!1099 = !DILocation(line: 733, column: 26, scope: !1087)
!1100 = !DILocation(line: 733, column: 32, scope: !1087)
!1101 = !{!1055, !187, i64 8}
!1102 = !DILocation(line: 733, column: 11, scope: !1087)
!1103 = !DILocation(line: 738, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 738, column: 9)
!1105 = !DILocation(line: 738, column: 13, scope: !1104)
!1106 = !{!1055, !187, i64 0}
!1107 = !DILocation(line: 738, column: 17, scope: !1104)
!1108 = !DILocation(line: 738, column: 15, scope: !1104)
!1109 = !DILocation(line: 738, column: 9, scope: !1087)
!1110 = !DILocation(line: 740, column: 30, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 738, column: 24)
!1112 = !{!1055, !181, i64 16}
!1113 = !DILocation(line: 740, column: 9, scope: !1111)
!1114 = !DILocation(line: 740, column: 15, scope: !1111)
!1115 = !DILocation(line: 740, column: 19, scope: !1111)
!1116 = !{!197, !187, i64 0}
!1117 = !DILocation(line: 741, column: 33, scope: !1111)
!1118 = !DILocation(line: 741, column: 37, scope: !1111)
!1119 = !DILocation(line: 741, column: 43, scope: !1111)
!1120 = !DILocation(line: 741, column: 52, scope: !1111)
!1121 = !DILocation(line: 741, column: 56, scope: !1111)
!1122 = !DILocation(line: 741, column: 9, scope: !1111)
!1123 = !DILocation(line: 741, column: 15, scope: !1111)
!1124 = !DILocation(line: 741, column: 20, scope: !1111)
!1125 = !DILocation(line: 742, column: 9, scope: !1111)
!1126 = !DILocation(line: 742, column: 13, scope: !1111)
!1127 = !DILocation(line: 742, column: 14, scope: !1111)
!1128 = !DILocation(line: 744, column: 9, scope: !1111)
!1129 = !DILocation(line: 747, column: 5, scope: !1087)
!1130 = !DILocation(line: 748, column: 1, scope: !1087)
!1131 = !DISubprogram(name: "strlen", scope: !1132, file: !1132, line: 407, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!42, !43}
!1135 = distinct !DISubprogram(name: "ngx_close_glob", scope: !2, file: !2, line: 752, type: !1136, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !1011}
!1138 = !{!1139}
!1139 = !DILocalVariable(name: "gl", arg: 1, scope: !1135, file: !2, line: 752, type: !1011)
!1140 = !DILocation(line: 752, column: 28, scope: !1135)
!1141 = !DILocation(line: 754, column: 15, scope: !1135)
!1142 = !DILocation(line: 754, column: 19, scope: !1135)
!1143 = !DILocation(line: 754, column: 5, scope: !1135)
!1144 = !DILocation(line: 755, column: 1, scope: !1135)
!1145 = !DISubprogram(name: "globfree", linkageName: "globfree64", scope: !41, file: !41, line: 168, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !1086}
!1148 = distinct !DISubprogram(name: "ngx_trylock_fd", scope: !2, file: !2, line: 759, type: !1149, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!236, !76}
!1151 = !{!1152, !1153}
!1152 = !DILocalVariable(name: "fd", arg: 1, scope: !1148, file: !2, line: 759, type: !76)
!1153 = !DILocalVariable(name: "fl", scope: !1148, file: !2, line: 761, type: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !1155, line: 35, size: 256, elements: !1156)
!1155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "3ed8466d7581e54a3f782dda83e77be7")
!1156 = !{!1157, !1159, !1160, !1161, !1162}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !1154, file: !1155, line: 37, baseType: !1158, size: 16)
!1158 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !1154, file: !1155, line: 38, baseType: !1158, size: 16, offset: 16)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !1154, file: !1155, line: 43, baseType: !54, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !1154, file: !1155, line: 44, baseType: !54, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !1154, file: !1155, line: 46, baseType: !1163, size: 32, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !50, line: 154, baseType: !78)
!1164 = !DILocation(line: 759, column: 25, scope: !1148)
!1165 = !DILocation(line: 761, column: 5, scope: !1148)
!1166 = !DILocation(line: 761, column: 19, scope: !1148)
!1167 = !DILocation(line: 763, column: 5, scope: !1148)
!1168 = !DILocation(line: 764, column: 8, scope: !1148)
!1169 = !DILocation(line: 764, column: 15, scope: !1148)
!1170 = !{!1171, !998, i64 0}
!1171 = !{!"flock", !998, i64 0, !998, i64 2, !187, i64 8, !187, i64 16, !196, i64 24}
!1172 = !DILocation(line: 765, column: 8, scope: !1148)
!1173 = !DILocation(line: 765, column: 17, scope: !1148)
!1174 = !{!1171, !998, i64 2}
!1175 = !DILocation(line: 767, column: 15, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 767, column: 9)
!1177 = !DILocation(line: 767, column: 9, scope: !1176)
!1178 = !DILocation(line: 767, column: 33, scope: !1176)
!1179 = !DILocation(line: 767, column: 9, scope: !1148)
!1180 = !DILocation(line: 768, column: 16, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 767, column: 40)
!1182 = !DILocation(line: 768, column: 9, scope: !1181)
!1183 = !DILocation(line: 771, column: 5, scope: !1148)
!1184 = !DILocation(line: 772, column: 1, scope: !1148)
!1185 = !DISubprogram(name: "fcntl", linkageName: "fcntl64", scope: !353, file: !353, line: 152, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!78, !78, !78, null}
!1188 = distinct !DISubprogram(name: "ngx_lock_fd", scope: !2, file: !2, line: 776, type: !1149, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1189)
!1189 = !{!1190, !1191}
!1190 = !DILocalVariable(name: "fd", arg: 1, scope: !1188, file: !2, line: 776, type: !76)
!1191 = !DILocalVariable(name: "fl", scope: !1188, file: !2, line: 778, type: !1154)
!1192 = !DILocation(line: 776, column: 22, scope: !1188)
!1193 = !DILocation(line: 778, column: 5, scope: !1188)
!1194 = !DILocation(line: 778, column: 19, scope: !1188)
!1195 = !DILocation(line: 780, column: 5, scope: !1188)
!1196 = !DILocation(line: 781, column: 8, scope: !1188)
!1197 = !DILocation(line: 781, column: 15, scope: !1188)
!1198 = !DILocation(line: 782, column: 8, scope: !1188)
!1199 = !DILocation(line: 782, column: 17, scope: !1188)
!1200 = !DILocation(line: 784, column: 15, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 784, column: 9)
!1202 = !DILocation(line: 784, column: 9, scope: !1201)
!1203 = !DILocation(line: 784, column: 34, scope: !1201)
!1204 = !DILocation(line: 784, column: 9, scope: !1188)
!1205 = !DILocation(line: 785, column: 16, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 784, column: 41)
!1207 = !DILocation(line: 785, column: 9, scope: !1206)
!1208 = !DILocation(line: 788, column: 5, scope: !1188)
!1209 = !DILocation(line: 789, column: 1, scope: !1188)
!1210 = distinct !DISubprogram(name: "ngx_unlock_fd", scope: !2, file: !2, line: 793, type: !1149, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1211)
!1211 = !{!1212, !1213}
!1212 = !DILocalVariable(name: "fd", arg: 1, scope: !1210, file: !2, line: 793, type: !76)
!1213 = !DILocalVariable(name: "fl", scope: !1210, file: !2, line: 795, type: !1154)
!1214 = !DILocation(line: 793, column: 24, scope: !1210)
!1215 = !DILocation(line: 795, column: 5, scope: !1210)
!1216 = !DILocation(line: 795, column: 19, scope: !1210)
!1217 = !DILocation(line: 797, column: 5, scope: !1210)
!1218 = !DILocation(line: 798, column: 8, scope: !1210)
!1219 = !DILocation(line: 798, column: 15, scope: !1210)
!1220 = !DILocation(line: 799, column: 8, scope: !1210)
!1221 = !DILocation(line: 799, column: 17, scope: !1210)
!1222 = !DILocation(line: 801, column: 15, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 801, column: 9)
!1224 = !DILocation(line: 801, column: 9, scope: !1223)
!1225 = !DILocation(line: 801, column: 33, scope: !1223)
!1226 = !DILocation(line: 801, column: 9, scope: !1210)
!1227 = !DILocation(line: 802, column: 17, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 801, column: 40)
!1229 = !DILocation(line: 802, column: 9, scope: !1228)
!1230 = !DILocation(line: 805, column: 5, scope: !1210)
!1231 = !DILocation(line: 806, column: 1, scope: !1210)
!1232 = distinct !DISubprogram(name: "ngx_read_ahead", scope: !2, file: !2, line: 812, type: !1233, scopeLine: 813, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!733, !76, !40}
!1235 = !{!1236, !1237, !1238}
!1236 = !DILocalVariable(name: "fd", arg: 1, scope: !1232, file: !2, line: 812, type: !76)
!1237 = !DILocalVariable(name: "n", arg: 2, scope: !1232, file: !2, line: 812, type: !40)
!1238 = !DILocalVariable(name: "err", scope: !1232, file: !2, line: 814, type: !78)
!1239 = !DILocation(line: 812, column: 25, scope: !1232)
!1240 = !DILocation(line: 812, column: 36, scope: !1232)
!1241 = !DILocation(line: 814, column: 5, scope: !1232)
!1242 = !DILocation(line: 814, column: 10, scope: !1232)
!1243 = !DILocation(line: 816, column: 25, scope: !1232)
!1244 = !DILocation(line: 816, column: 11, scope: !1232)
!1245 = !DILocation(line: 816, column: 9, scope: !1232)
!1246 = !DILocation(line: 818, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 818, column: 9)
!1248 = !DILocation(line: 818, column: 13, scope: !1247)
!1249 = !DILocation(line: 818, column: 9, scope: !1232)
!1250 = !DILocation(line: 819, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 818, column: 19)
!1252 = !DILocation(line: 822, column: 5, scope: !1232)
!1253 = !DILocation(line: 823, column: 5, scope: !1232)
!1254 = !DILocation(line: 824, column: 1, scope: !1232)
!1255 = !DISubprogram(name: "posix_fadvise", linkageName: "posix_fadvise64", scope: !353, file: !353, line: 277, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!78, !78, !54, !54, !78}
!1258 = distinct !DISubprogram(name: "ngx_directio_on", scope: !2, file: !2, line: 832, type: !1259, scopeLine: 833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!733, !76}
!1261 = !{!1262, !1263}
!1262 = !DILocalVariable(name: "fd", arg: 1, scope: !1258, file: !2, line: 832, type: !76)
!1263 = !DILocalVariable(name: "flags", scope: !1258, file: !2, line: 834, type: !78)
!1264 = !DILocation(line: 832, column: 26, scope: !1258)
!1265 = !DILocation(line: 834, column: 5, scope: !1258)
!1266 = !DILocation(line: 834, column: 10, scope: !1258)
!1267 = !DILocation(line: 836, column: 19, scope: !1258)
!1268 = !DILocation(line: 836, column: 13, scope: !1258)
!1269 = !DILocation(line: 836, column: 11, scope: !1258)
!1270 = !DILocation(line: 838, column: 9, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 838, column: 9)
!1272 = !DILocation(line: 838, column: 15, scope: !1271)
!1273 = !DILocation(line: 838, column: 9, scope: !1258)
!1274 = !DILocation(line: 839, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 838, column: 22)
!1276 = !DILocation(line: 842, column: 18, scope: !1258)
!1277 = !DILocation(line: 842, column: 31, scope: !1258)
!1278 = !DILocation(line: 842, column: 37, scope: !1258)
!1279 = !DILocation(line: 842, column: 12, scope: !1258)
!1280 = !DILocation(line: 842, column: 5, scope: !1258)
!1281 = !DILocation(line: 843, column: 1, scope: !1258)
!1282 = distinct !DISubprogram(name: "ngx_directio_off", scope: !2, file: !2, line: 847, type: !1259, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1283)
!1283 = !{!1284, !1285}
!1284 = !DILocalVariable(name: "fd", arg: 1, scope: !1282, file: !2, line: 847, type: !76)
!1285 = !DILocalVariable(name: "flags", scope: !1282, file: !2, line: 849, type: !78)
!1286 = !DILocation(line: 847, column: 27, scope: !1282)
!1287 = !DILocation(line: 849, column: 5, scope: !1282)
!1288 = !DILocation(line: 849, column: 10, scope: !1282)
!1289 = !DILocation(line: 851, column: 19, scope: !1282)
!1290 = !DILocation(line: 851, column: 13, scope: !1282)
!1291 = !DILocation(line: 851, column: 11, scope: !1282)
!1292 = !DILocation(line: 853, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 853, column: 9)
!1294 = !DILocation(line: 853, column: 15, scope: !1293)
!1295 = !DILocation(line: 853, column: 9, scope: !1282)
!1296 = !DILocation(line: 854, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 853, column: 22)
!1298 = !DILocation(line: 857, column: 18, scope: !1282)
!1299 = !DILocation(line: 857, column: 31, scope: !1282)
!1300 = !DILocation(line: 857, column: 37, scope: !1282)
!1301 = !DILocation(line: 857, column: 12, scope: !1282)
!1302 = !DILocation(line: 857, column: 5, scope: !1282)
!1303 = !DILocation(line: 858, column: 1, scope: !1282)
!1304 = distinct !DISubprogram(name: "ngx_fs_bsize", scope: !2, file: !2, line: 866, type: !1305, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!40, !46}
!1307 = !{!1308, !1309}
!1308 = !DILocalVariable(name: "name", arg: 1, scope: !1304, file: !2, line: 866, type: !46)
!1309 = !DILocalVariable(name: "fs", scope: !1304, file: !2, line: 868, type: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "statfs", file: !1311, line: 24, size: 960, elements: !1312)
!1311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/statfs.h", directory: "", checksumkind: CSK_MD5, checksum: "4c379ce582232e44e7b8fa7ccdecac58")
!1312 = !{!1313, !1315, !1316, !1318, !1319, !1320, !1322, !1323, !1329, !1330, !1331, !1332}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "f_type", scope: !1310, file: !1311, line: 26, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsword_t", file: !50, line: 192, baseType: !55)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "f_bsize", scope: !1310, file: !1311, line: 27, baseType: !1314, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "f_blocks", scope: !1310, file: !1311, line: 35, baseType: !1317, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsblkcnt64_t", file: !50, line: 185, baseType: !42)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "f_bfree", scope: !1310, file: !1311, line: 36, baseType: !1317, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "f_bavail", scope: !1310, file: !1311, line: 37, baseType: !1317, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "f_files", scope: !1310, file: !1311, line: 38, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsfilcnt64_t", file: !50, line: 189, baseType: !42)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "f_ffree", scope: !1310, file: !1311, line: 39, baseType: !1321, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_fsid", scope: !1310, file: !1311, line: 41, baseType: !1324, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fsid_t", file: !50, line: 155, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 155, size: 64, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !1325, file: !50, line: 155, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !748)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "f_namelen", scope: !1310, file: !1311, line: 42, baseType: !1314, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "f_frsize", scope: !1310, file: !1311, line: 43, baseType: !1314, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1310, file: !1311, line: 44, baseType: !1314, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "f_spare", scope: !1310, file: !1311, line: 45, baseType: !1333, size: 256, offset: 704)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, size: 256, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 4)
!1336 = !DILocation(line: 866, column: 22, scope: !1304)
!1337 = !DILocation(line: 868, column: 5, scope: !1304)
!1338 = !DILocation(line: 868, column: 20, scope: !1304)
!1339 = !DILocation(line: 870, column: 25, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 870, column: 9)
!1341 = !DILocation(line: 870, column: 9, scope: !1340)
!1342 = !DILocation(line: 870, column: 36, scope: !1340)
!1343 = !DILocation(line: 870, column: 9, scope: !1304)
!1344 = !DILocation(line: 871, column: 9, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 870, column: 43)
!1346 = !DILocation(line: 874, column: 13, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 874, column: 9)
!1348 = !{!1349, !187, i64 8}
!1349 = !{!"statfs", !187, i64 0, !187, i64 8, !187, i64 16, !187, i64 24, !187, i64 32, !187, i64 40, !187, i64 48, !1350, i64 56, !187, i64 64, !187, i64 72, !187, i64 80, !182, i64 88}
!1350 = !{!"", !182, i64 0}
!1351 = !DILocation(line: 874, column: 21, scope: !1347)
!1352 = !DILocation(line: 874, column: 28, scope: !1347)
!1353 = !DILocation(line: 874, column: 9, scope: !1304)
!1354 = !DILocation(line: 875, column: 9, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1347, file: !2, line: 874, column: 34)
!1356 = !DILocation(line: 879, column: 21, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 879, column: 9)
!1358 = !DILocation(line: 879, column: 31, scope: !1357)
!1359 = !DILocation(line: 879, column: 29, scope: !1357)
!1360 = !DILocation(line: 879, column: 9, scope: !1304)
!1361 = !DILocation(line: 880, column: 9, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 879, column: 45)
!1363 = !DILocation(line: 884, column: 24, scope: !1304)
!1364 = !DILocation(line: 884, column: 5, scope: !1304)
!1365 = !DILocation(line: 885, column: 1, scope: !1304)
!1366 = !DISubprogram(name: "statfs", linkageName: "statfs64", scope: !1367, file: !1367, line: 35, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/statfs.h", directory: "", checksumkind: CSK_MD5, checksum: "3ff9803e6db892207777ac92dd827caa")
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!78, !43, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1371 = distinct !DISubprogram(name: "ngx_fs_available", scope: !2, file: !2, line: 889, type: !1372, scopeLine: 890, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!53, !46}
!1374 = !{!1375, !1376}
!1375 = !DILocalVariable(name: "name", arg: 1, scope: !1371, file: !2, line: 889, type: !46)
!1376 = !DILocalVariable(name: "fs", scope: !1371, file: !2, line: 891, type: !1310)
!1377 = !DILocation(line: 889, column: 26, scope: !1371)
!1378 = !DILocation(line: 891, column: 5, scope: !1371)
!1379 = !DILocation(line: 891, column: 20, scope: !1371)
!1380 = !DILocation(line: 893, column: 25, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 893, column: 9)
!1382 = !DILocation(line: 893, column: 9, scope: !1381)
!1383 = !DILocation(line: 893, column: 36, scope: !1381)
!1384 = !DILocation(line: 893, column: 9, scope: !1371)
!1385 = !DILocation(line: 894, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 893, column: 43)
!1387 = !DILocation(line: 897, column: 23, scope: !1371)
!1388 = !{!1349, !187, i64 32}
!1389 = !DILocation(line: 897, column: 37, scope: !1371)
!1390 = !DILocation(line: 897, column: 32, scope: !1371)
!1391 = !DILocation(line: 897, column: 5, scope: !1371)
!1392 = !DILocation(line: 898, column: 1, scope: !1371)
!1393 = !DISubprogram(name: "pwritev", linkageName: "pwritev64", scope: !1394, file: !1394, line: 90, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/uio.h", directory: "", checksumkind: CSK_MD5, checksum: "9ac6554d51bae0472b3695bdcb88e9cb")
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!67, !78, !1397, !78, !54}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)

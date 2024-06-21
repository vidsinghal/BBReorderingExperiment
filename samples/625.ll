; ModuleID = 'samples/625.bc'
source_filename = "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/src/mongoc/mongoc-gridfs-file-page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._mongoc_gridfs_file_page_t = type { ptr, ptr, i32, i32, i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s:%d %s(): precondition failed: %s\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [202 x i8] c"/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/src/mongoc/mongoc-gridfs-file-page.c\00", align 1, !dbg !7
@__func__._mongoc_gridfs_file_page_new = private unnamed_addr constant [29 x i8] c"_mongoc_gridfs_file_page_new\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [18 x i8] c"len <= chunk_size\00", align 1, !dbg !23
@__func__._mongoc_gridfs_file_page_seek = private unnamed_addr constant [30 x i8] c"_mongoc_gridfs_file_page_seek\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [5 x i8] c"page\00", align 1, !dbg !33
@__func__._mongoc_gridfs_file_page_read = private unnamed_addr constant [30 x i8] c"_mongoc_gridfs_file_page_read\00", align 1, !dbg !35
@.str.5 = private unnamed_addr constant [4 x i8] c"dst\00", align 1, !dbg !37
@__func__._mongoc_gridfs_file_page_write = private unnamed_addr constant [31 x i8] c"_mongoc_gridfs_file_page_write\00", align 1, !dbg !42
@.str.6 = private unnamed_addr constant [4 x i8] c"src\00", align 1, !dbg !47
@__func__._mongoc_gridfs_file_page_memset0 = private unnamed_addr constant [33 x i8] c"_mongoc_gridfs_file_page_memset0\00", align 1, !dbg !49
@__func__._mongoc_gridfs_file_page_get_data = private unnamed_addr constant [34 x i8] c"_mongoc_gridfs_file_page_get_data\00", align 1, !dbg !54
@__func__._mongoc_gridfs_file_page_get_len = private unnamed_addr constant [33 x i8] c"_mongoc_gridfs_file_page_get_len\00", align 1, !dbg !59
@__func__._mongoc_gridfs_file_page_tell = private unnamed_addr constant [30 x i8] c"_mongoc_gridfs_file_page_tell\00", align 1, !dbg !61
@__func__._mongoc_gridfs_file_page_is_dirty = private unnamed_addr constant [34 x i8] c"_mongoc_gridfs_file_page_is_dirty\00", align 1, !dbg !63

; Function Attrs: nounwind uwtable
define ptr @_mongoc_gridfs_file_page_new(ptr noundef %data, i32 noundef %len, i32 noundef %chunk_size) #0 !dbg !97 {
entry:
  %retval = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %chunk_size.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !101, metadata !DIExpression()), !dbg !109
  store i32 %len, ptr %len.addr, align 4, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !102, metadata !DIExpression()), !dbg !112
  store i32 %chunk_size, ptr %chunk_size.addr, align 4, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %chunk_size.addr, metadata !103, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #8, !dbg !114
  tail call void @llvm.dbg.declare(metadata ptr %page, metadata !104, metadata !DIExpression()), !dbg !115
  br label %do.body, !dbg !116

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !117

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !117

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !119

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %data.addr, align 8, !dbg !120, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !120
  %lnot = xor i1 %tobool, true, !dbg !120
  %lnot2 = xor i1 %lnot, true, !dbg !120
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !120
  %conv = sext i32 %lnot.ext to i64, !dbg !120
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !120
  %tobool3 = icmp ne i64 %expval, 0, !dbg !120
  br i1 %tobool3, label %if.end, label %if.then, !dbg !123

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !124, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 40, ptr noundef @__func__._mongoc_gridfs_file_page_new, ptr noundef @.str.2), !dbg !124
  call void @abort() #9, !dbg !124
  unreachable, !dbg !124

if.end:                                           ; preds = %do.body1
  br label %do.cond4, !dbg !123

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !123

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !126

do.body6:                                         ; preds = %do.end5
  %2 = load i32, ptr %len.addr, align 4, !dbg !127, !tbaa !110
  %3 = load i32, ptr %chunk_size.addr, align 4, !dbg !127, !tbaa !110
  %cmp = icmp ule i32 %2, %3, !dbg !127
  %lnot8 = xor i1 %cmp, true, !dbg !127
  %lnot10 = xor i1 %lnot8, true, !dbg !127
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !127
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !127
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 1), !dbg !127
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !127
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !130

if.then15:                                        ; preds = %do.body6
  %4 = load ptr, ptr @stderr, align 8, !dbg !131, !tbaa !105
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 41, ptr noundef @__func__._mongoc_gridfs_file_page_new, ptr noundef @.str.3), !dbg !131
  call void @abort() #9, !dbg !131
  unreachable, !dbg !131

if.end17:                                         ; preds = %do.body6
  br label %do.cond18, !dbg !130

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !130

do.end19:                                         ; preds = %do.cond18
  %call20 = call ptr @bson_malloc0(i64 noundef 32), !dbg !133
  store ptr %call20, ptr %page, align 8, !dbg !134, !tbaa !105
  %5 = load i32, ptr %chunk_size.addr, align 4, !dbg !135, !tbaa !110
  %6 = load ptr, ptr %page, align 8, !dbg !136, !tbaa !105
  %chunk_size21 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %6, i32 0, i32 3, !dbg !137
  store i32 %5, ptr %chunk_size21, align 4, !dbg !138, !tbaa !139
  %7 = load ptr, ptr %data.addr, align 8, !dbg !141, !tbaa !105
  %8 = load ptr, ptr %page, align 8, !dbg !142, !tbaa !105
  %read_buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %8, i32 0, i32 0, !dbg !143
  store ptr %7, ptr %read_buf, align 8, !dbg !144, !tbaa !145
  %9 = load i32, ptr %len.addr, align 4, !dbg !146, !tbaa !110
  %10 = load ptr, ptr %page, align 8, !dbg !147, !tbaa !105
  %len22 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %10, i32 0, i32 2, !dbg !148
  store i32 %9, ptr %len22, align 8, !dbg !149, !tbaa !150
  br label %do.body23, !dbg !151

do.body23:                                        ; preds = %do.end19
  %11 = load ptr, ptr %page, align 8, !dbg !152, !tbaa !105
  store ptr %11, ptr %retval, align 8, !dbg !152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !152

do.cond24:                                        ; No predecessors!
  br label %do.end25, !dbg !152

do.end25:                                         ; preds = %do.cond24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !154
  br label %cleanup, !dbg !154

cleanup:                                          ; preds = %do.end25, %do.body23
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #8, !dbg !154
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %12 = load ptr, ptr %retval, align 8, !dbg !154
  ret ptr %12, !dbg !154

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #2

declare !dbg !155 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare !dbg !223 void @abort() #4

declare !dbg !227 ptr @bson_malloc0(i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @_mongoc_gridfs_file_page_seek(ptr noundef %page, i32 noundef %offset) #0 !dbg !231 {
entry:
  %page.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !236, metadata !DIExpression()), !dbg !238
  store i32 %offset, ptr %offset.addr, align 4, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !237, metadata !DIExpression()), !dbg !239
  br label %do.body, !dbg !240

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !241

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !243

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !244, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !244
  %lnot = xor i1 %tobool, true, !dbg !244
  %lnot2 = xor i1 %lnot, true, !dbg !244
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !244
  %conv = sext i32 %lnot.ext to i64, !dbg !244
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !244
  %tobool3 = icmp ne i64 %expval, 0, !dbg !244
  br i1 %tobool3, label %if.end, label %if.then, !dbg !247

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !248, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 58, ptr noundef @__func__._mongoc_gridfs_file_page_seek, ptr noundef @.str.4), !dbg !248
  call void @abort() #9, !dbg !248
  unreachable, !dbg !248

if.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !247

do.end4:                                          ; preds = %if.end
  %2 = load i32, ptr %offset.addr, align 4, !dbg !250, !tbaa !110
  %3 = load ptr, ptr %page.addr, align 8, !dbg !251, !tbaa !105
  %offset5 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %3, i32 0, i32 4, !dbg !252
  store i32 %2, ptr %offset5, align 8, !dbg !253, !tbaa !254
  br label %do.body6, !dbg !255

do.body6:                                         ; preds = %do.end4
  br label %do.end7, !dbg !256

do.end7:                                          ; preds = %do.body6
  ret i1 true, !dbg !256
}

; Function Attrs: nounwind uwtable
define i32 @_mongoc_gridfs_file_page_read(ptr noundef %page, ptr noundef %dst, i32 noundef %len) #0 !dbg !258 {
entry:
  %retval = alloca i32, align 4
  %page.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  %src = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !265, metadata !DIExpression()), !dbg !270
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !266, metadata !DIExpression()), !dbg !271
  store i32 %len, ptr %len.addr, align 4, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !267, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_read) #8, !dbg !273
  tail call void @llvm.dbg.declare(metadata ptr %bytes_read, metadata !268, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #8, !dbg !275
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !269, metadata !DIExpression()), !dbg !276
  br label %do.body, !dbg !277

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !278

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !278

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !280

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !281, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !281
  %lnot = xor i1 %tobool, true, !dbg !281
  %lnot2 = xor i1 %lnot, true, !dbg !281
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !281
  %conv = sext i32 %lnot.ext to i64, !dbg !281
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !281
  %tobool3 = icmp ne i64 %expval, 0, !dbg !281
  br i1 %tobool3, label %if.end, label %if.then, !dbg !284

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !285, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 76, ptr noundef @__func__._mongoc_gridfs_file_page_read, ptr noundef @.str.4), !dbg !285
  call void @abort() #9, !dbg !285
  unreachable, !dbg !285

if.end:                                           ; preds = %do.body1
  br label %do.cond4, !dbg !284

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !284

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !287

do.body6:                                         ; preds = %do.end5
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !288, !tbaa !105
  %tobool7 = icmp ne ptr %2, null, !dbg !288
  %lnot8 = xor i1 %tobool7, true, !dbg !288
  %lnot10 = xor i1 %lnot8, true, !dbg !288
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !288
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !288
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 1), !dbg !288
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !288
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !291

if.then15:                                        ; preds = %do.body6
  %3 = load ptr, ptr @stderr, align 8, !dbg !292, !tbaa !105
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 77, ptr noundef @__func__._mongoc_gridfs_file_page_read, ptr noundef @.str.5), !dbg !292
  call void @abort() #9, !dbg !292
  unreachable, !dbg !292

if.end17:                                         ; preds = %do.body6
  br label %do.cond18, !dbg !291

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !291

do.end19:                                         ; preds = %do.cond18
  %4 = load i32, ptr %len.addr, align 4, !dbg !294, !tbaa !110
  %5 = load ptr, ptr %page.addr, align 8, !dbg !294, !tbaa !105
  %len20 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %5, i32 0, i32 2, !dbg !294
  %6 = load i32, ptr %len20, align 8, !dbg !294, !tbaa !150
  %7 = load ptr, ptr %page.addr, align 8, !dbg !294, !tbaa !105
  %offset = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %7, i32 0, i32 4, !dbg !294
  %8 = load i32, ptr %offset, align 8, !dbg !294, !tbaa !254
  %sub = sub i32 %6, %8, !dbg !294
  %cmp = icmp ult i32 %4, %sub, !dbg !294
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !294

cond.true:                                        ; preds = %do.end19
  %9 = load i32, ptr %len.addr, align 4, !dbg !294, !tbaa !110
  br label %cond.end, !dbg !294

cond.false:                                       ; preds = %do.end19
  %10 = load ptr, ptr %page.addr, align 8, !dbg !294, !tbaa !105
  %len22 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %10, i32 0, i32 2, !dbg !294
  %11 = load i32, ptr %len22, align 8, !dbg !294, !tbaa !150
  %12 = load ptr, ptr %page.addr, align 8, !dbg !294, !tbaa !105
  %offset23 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %12, i32 0, i32 4, !dbg !294
  %13 = load i32, ptr %offset23, align 8, !dbg !294, !tbaa !254
  %sub24 = sub i32 %11, %13, !dbg !294
  br label %cond.end, !dbg !294

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %sub24, %cond.false ], !dbg !294
  store i32 %cond, ptr %bytes_read, align 4, !dbg !295, !tbaa !110
  %14 = load ptr, ptr %page.addr, align 8, !dbg !296, !tbaa !105
  %read_buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %14, i32 0, i32 0, !dbg !297
  %15 = load ptr, ptr %read_buf, align 8, !dbg !297, !tbaa !145
  %tobool25 = icmp ne ptr %15, null, !dbg !296
  br i1 %tobool25, label %cond.true26, label %cond.false28, !dbg !296

cond.true26:                                      ; preds = %cond.end
  %16 = load ptr, ptr %page.addr, align 8, !dbg !298, !tbaa !105
  %read_buf27 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %16, i32 0, i32 0, !dbg !299
  %17 = load ptr, ptr %read_buf27, align 8, !dbg !299, !tbaa !145
  br label %cond.end29, !dbg !296

cond.false28:                                     ; preds = %cond.end
  %18 = load ptr, ptr %page.addr, align 8, !dbg !300, !tbaa !105
  %buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %18, i32 0, i32 1, !dbg !301
  %19 = load ptr, ptr %buf, align 8, !dbg !301, !tbaa !302
  br label %cond.end29, !dbg !296

cond.end29:                                       ; preds = %cond.false28, %cond.true26
  %cond30 = phi ptr [ %17, %cond.true26 ], [ %19, %cond.false28 ], !dbg !296
  store ptr %cond30, ptr %src, align 8, !dbg !303, !tbaa !105
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !304, !tbaa !105
  %21 = load ptr, ptr %src, align 8, !dbg !305, !tbaa !105
  %22 = load ptr, ptr %page.addr, align 8, !dbg !306, !tbaa !105
  %offset31 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %22, i32 0, i32 4, !dbg !307
  %23 = load i32, ptr %offset31, align 8, !dbg !307, !tbaa !254
  %idx.ext = zext i32 %23 to i64, !dbg !308
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %idx.ext, !dbg !308
  %24 = load i32, ptr %bytes_read, align 4, !dbg !309, !tbaa !110
  %conv32 = sext i32 %24 to i64, !dbg !309
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %add.ptr, i64 %conv32, i1 false), !dbg !310
  %25 = load i32, ptr %bytes_read, align 4, !dbg !311, !tbaa !110
  %26 = load ptr, ptr %page.addr, align 8, !dbg !312, !tbaa !105
  %offset33 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %26, i32 0, i32 4, !dbg !313
  %27 = load i32, ptr %offset33, align 8, !dbg !314, !tbaa !254
  %add = add i32 %27, %25, !dbg !314
  store i32 %add, ptr %offset33, align 8, !dbg !314, !tbaa !254
  br label %do.body34, !dbg !315

do.body34:                                        ; preds = %cond.end29
  %28 = load i32, ptr %bytes_read, align 4, !dbg !316, !tbaa !110
  store i32 %28, ptr %retval, align 4, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

do.cond35:                                        ; No predecessors!
  br label %do.end36, !dbg !316

do.end36:                                         ; preds = %do.cond35
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !318
  br label %cleanup, !dbg !318

cleanup:                                          ; preds = %do.end36, %do.body34
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #8, !dbg !318
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_read) #8, !dbg !318
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %29 = load i32, ptr %retval, align 4, !dbg !318
  ret i32 %29, !dbg !318

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define i32 @_mongoc_gridfs_file_page_write(ptr noundef %page, ptr noundef %src, i32 noundef %len) #0 !dbg !319 {
entry:
  %retval = alloca i32, align 4
  %page.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %bytes_written = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !325, metadata !DIExpression()), !dbg !329
  store ptr %src, ptr %src.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !326, metadata !DIExpression()), !dbg !330
  store i32 %len, ptr %len.addr, align 4, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !327, metadata !DIExpression()), !dbg !331
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_written) #8, !dbg !332
  tail call void @llvm.dbg.declare(metadata ptr %bytes_written, metadata !328, metadata !DIExpression()), !dbg !333
  br label %do.body, !dbg !334

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !335

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !335

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !337

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !338, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !338
  %lnot = xor i1 %tobool, true, !dbg !338
  %lnot2 = xor i1 %lnot, true, !dbg !338
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !338
  %conv = sext i32 %lnot.ext to i64, !dbg !338
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !338
  %tobool3 = icmp ne i64 %expval, 0, !dbg !338
  br i1 %tobool3, label %if.end, label %if.then, !dbg !341

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !342, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 112, ptr noundef @__func__._mongoc_gridfs_file_page_write, ptr noundef @.str.4), !dbg !342
  call void @abort() #9, !dbg !342
  unreachable, !dbg !342

if.end:                                           ; preds = %do.body1
  br label %do.cond4, !dbg !341

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !341

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !344

do.body6:                                         ; preds = %do.end5
  %2 = load ptr, ptr %src.addr, align 8, !dbg !345, !tbaa !105
  %tobool7 = icmp ne ptr %2, null, !dbg !345
  %lnot8 = xor i1 %tobool7, true, !dbg !345
  %lnot10 = xor i1 %lnot8, true, !dbg !345
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !345
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !345
  %expval13 = call i64 @llvm.expect.i64(i64 %conv12, i64 1), !dbg !345
  %tobool14 = icmp ne i64 %expval13, 0, !dbg !345
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !348

if.then15:                                        ; preds = %do.body6
  %3 = load ptr, ptr @stderr, align 8, !dbg !349, !tbaa !105
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 113, ptr noundef @__func__._mongoc_gridfs_file_page_write, ptr noundef @.str.6), !dbg !349
  call void @abort() #9, !dbg !349
  unreachable, !dbg !349

if.end17:                                         ; preds = %do.body6
  br label %do.cond18, !dbg !348

do.cond18:                                        ; preds = %if.end17
  br label %do.end19, !dbg !348

do.end19:                                         ; preds = %do.cond18
  %4 = load i32, ptr %len.addr, align 4, !dbg !351, !tbaa !110
  %5 = load ptr, ptr %page.addr, align 8, !dbg !351, !tbaa !105
  %chunk_size = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %5, i32 0, i32 3, !dbg !351
  %6 = load i32, ptr %chunk_size, align 4, !dbg !351, !tbaa !139
  %7 = load ptr, ptr %page.addr, align 8, !dbg !351, !tbaa !105
  %offset = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %7, i32 0, i32 4, !dbg !351
  %8 = load i32, ptr %offset, align 8, !dbg !351, !tbaa !254
  %sub = sub i32 %6, %8, !dbg !351
  %cmp = icmp ult i32 %4, %sub, !dbg !351
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !351

cond.true:                                        ; preds = %do.end19
  %9 = load i32, ptr %len.addr, align 4, !dbg !351, !tbaa !110
  br label %cond.end, !dbg !351

cond.false:                                       ; preds = %do.end19
  %10 = load ptr, ptr %page.addr, align 8, !dbg !351, !tbaa !105
  %chunk_size21 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %10, i32 0, i32 3, !dbg !351
  %11 = load i32, ptr %chunk_size21, align 4, !dbg !351, !tbaa !139
  %12 = load ptr, ptr %page.addr, align 8, !dbg !351, !tbaa !105
  %offset22 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %12, i32 0, i32 4, !dbg !351
  %13 = load i32, ptr %offset22, align 8, !dbg !351, !tbaa !254
  %sub23 = sub i32 %11, %13, !dbg !351
  br label %cond.end, !dbg !351

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %sub23, %cond.false ], !dbg !351
  store i32 %cond, ptr %bytes_written, align 4, !dbg !352, !tbaa !110
  %14 = load ptr, ptr %page.addr, align 8, !dbg !353, !tbaa !105
  %buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %14, i32 0, i32 1, !dbg !355
  %15 = load ptr, ptr %buf, align 8, !dbg !355, !tbaa !302
  %tobool24 = icmp ne ptr %15, null, !dbg !353
  br i1 %tobool24, label %if.end42, label %if.then25, !dbg !356

if.then25:                                        ; preds = %cond.end
  %16 = load ptr, ptr %page.addr, align 8, !dbg !357, !tbaa !105
  %chunk_size26 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %16, i32 0, i32 3, !dbg !359
  %17 = load i32, ptr %chunk_size26, align 4, !dbg !359, !tbaa !139
  %conv27 = zext i32 %17 to i64, !dbg !357
  %call28 = call ptr @bson_malloc(i64 noundef %conv27), !dbg !360
  %18 = load ptr, ptr %page.addr, align 8, !dbg !361, !tbaa !105
  %buf29 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %18, i32 0, i32 1, !dbg !362
  store ptr %call28, ptr %buf29, align 8, !dbg !363, !tbaa !302
  %19 = load ptr, ptr %page.addr, align 8, !dbg !364, !tbaa !105
  %buf30 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %19, i32 0, i32 1, !dbg !365
  %20 = load ptr, ptr %buf30, align 8, !dbg !365, !tbaa !302
  %21 = load ptr, ptr %page.addr, align 8, !dbg !366, !tbaa !105
  %read_buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %21, i32 0, i32 0, !dbg !367
  %22 = load ptr, ptr %read_buf, align 8, !dbg !367, !tbaa !145
  %23 = load ptr, ptr %page.addr, align 8, !dbg !368, !tbaa !105
  %chunk_size31 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %23, i32 0, i32 3, !dbg !368
  %24 = load i32, ptr %chunk_size31, align 4, !dbg !368, !tbaa !139
  %25 = load ptr, ptr %page.addr, align 8, !dbg !368, !tbaa !105
  %len32 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %25, i32 0, i32 2, !dbg !368
  %26 = load i32, ptr %len32, align 8, !dbg !368, !tbaa !150
  %cmp33 = icmp ult i32 %24, %26, !dbg !368
  br i1 %cmp33, label %cond.true35, label %cond.false37, !dbg !368

cond.true35:                                      ; preds = %if.then25
  %27 = load ptr, ptr %page.addr, align 8, !dbg !368, !tbaa !105
  %chunk_size36 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %27, i32 0, i32 3, !dbg !368
  %28 = load i32, ptr %chunk_size36, align 4, !dbg !368, !tbaa !139
  br label %cond.end39, !dbg !368

cond.false37:                                     ; preds = %if.then25
  %29 = load ptr, ptr %page.addr, align 8, !dbg !368, !tbaa !105
  %len38 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %29, i32 0, i32 2, !dbg !368
  %30 = load i32, ptr %len38, align 8, !dbg !368, !tbaa !150
  br label %cond.end39, !dbg !368

cond.end39:                                       ; preds = %cond.false37, %cond.true35
  %cond40 = phi i32 [ %28, %cond.true35 ], [ %30, %cond.false37 ], !dbg !368
  %conv41 = zext i32 %cond40 to i64, !dbg !368
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %22, i64 %conv41, i1 false), !dbg !369
  br label %if.end42, !dbg !370

if.end42:                                         ; preds = %cond.end39, %cond.end
  %31 = load ptr, ptr %page.addr, align 8, !dbg !371, !tbaa !105
  %buf43 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %31, i32 0, i32 1, !dbg !372
  %32 = load ptr, ptr %buf43, align 8, !dbg !372, !tbaa !302
  %33 = load ptr, ptr %page.addr, align 8, !dbg !373, !tbaa !105
  %offset44 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %33, i32 0, i32 4, !dbg !374
  %34 = load i32, ptr %offset44, align 8, !dbg !374, !tbaa !254
  %idx.ext = zext i32 %34 to i64, !dbg !375
  %add.ptr = getelementptr inbounds i8, ptr %32, i64 %idx.ext, !dbg !375
  %35 = load ptr, ptr %src.addr, align 8, !dbg !376, !tbaa !105
  %36 = load i32, ptr %bytes_written, align 4, !dbg !377, !tbaa !110
  %conv45 = sext i32 %36 to i64, !dbg !377
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %35, i64 %conv45, i1 false), !dbg !378
  %37 = load i32, ptr %bytes_written, align 4, !dbg !379, !tbaa !110
  %38 = load ptr, ptr %page.addr, align 8, !dbg !380, !tbaa !105
  %offset46 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %38, i32 0, i32 4, !dbg !381
  %39 = load i32, ptr %offset46, align 8, !dbg !382, !tbaa !254
  %add = add i32 %39, %37, !dbg !382
  store i32 %add, ptr %offset46, align 8, !dbg !382, !tbaa !254
  %40 = load ptr, ptr %page.addr, align 8, !dbg !383, !tbaa !105
  %offset47 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %40, i32 0, i32 4, !dbg !383
  %41 = load i32, ptr %offset47, align 8, !dbg !383, !tbaa !254
  %42 = load ptr, ptr %page.addr, align 8, !dbg !383, !tbaa !105
  %len48 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %42, i32 0, i32 2, !dbg !383
  %43 = load i32, ptr %len48, align 8, !dbg !383, !tbaa !150
  %cmp49 = icmp ugt i32 %41, %43, !dbg !383
  br i1 %cmp49, label %cond.true51, label %cond.false53, !dbg !383

cond.true51:                                      ; preds = %if.end42
  %44 = load ptr, ptr %page.addr, align 8, !dbg !383, !tbaa !105
  %offset52 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %44, i32 0, i32 4, !dbg !383
  %45 = load i32, ptr %offset52, align 8, !dbg !383, !tbaa !254
  br label %cond.end55, !dbg !383

cond.false53:                                     ; preds = %if.end42
  %46 = load ptr, ptr %page.addr, align 8, !dbg !383, !tbaa !105
  %len54 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %46, i32 0, i32 2, !dbg !383
  %47 = load i32, ptr %len54, align 8, !dbg !383, !tbaa !150
  br label %cond.end55, !dbg !383

cond.end55:                                       ; preds = %cond.false53, %cond.true51
  %cond56 = phi i32 [ %45, %cond.true51 ], [ %47, %cond.false53 ], !dbg !383
  %48 = load ptr, ptr %page.addr, align 8, !dbg !384, !tbaa !105
  %len57 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %48, i32 0, i32 2, !dbg !385
  store i32 %cond56, ptr %len57, align 8, !dbg !386, !tbaa !150
  %49 = load ptr, ptr %page.addr, align 8, !dbg !387, !tbaa !105
  %buf58 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %49, i32 0, i32 1, !dbg !388
  %50 = load ptr, ptr %buf58, align 8, !dbg !388, !tbaa !302
  %51 = load ptr, ptr %page.addr, align 8, !dbg !389, !tbaa !105
  %read_buf59 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %51, i32 0, i32 0, !dbg !390
  store ptr %50, ptr %read_buf59, align 8, !dbg !391, !tbaa !145
  br label %do.body60, !dbg !392

do.body60:                                        ; preds = %cond.end55
  %52 = load i32, ptr %bytes_written, align 4, !dbg !393, !tbaa !110
  store i32 %52, ptr %retval, align 4, !dbg !393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !393

do.cond61:                                        ; No predecessors!
  br label %do.end62, !dbg !393

do.end62:                                         ; preds = %do.cond61
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !395
  br label %cleanup, !dbg !395

cleanup:                                          ; preds = %do.end62, %do.body60
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_written) #8, !dbg !395
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %53 = load i32, ptr %retval, align 4, !dbg !395
  ret i32 %53, !dbg !395

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !396 ptr @bson_malloc(i64 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @_mongoc_gridfs_file_page_memset0(ptr noundef %page, i32 noundef %len) #0 !dbg !397 {
entry:
  %retval = alloca i32, align 4
  %page.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %bytes_set = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !401, metadata !DIExpression()), !dbg !404
  store i32 %len, ptr %len.addr, align 4, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_set) #8, !dbg !406
  tail call void @llvm.dbg.declare(metadata ptr %bytes_set, metadata !403, metadata !DIExpression()), !dbg !407
  br label %do.body, !dbg !408

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !409

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !409

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !411

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !412, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !412
  %lnot = xor i1 %tobool, true, !dbg !412
  %lnot2 = xor i1 %lnot, true, !dbg !412
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !412
  %conv = sext i32 %lnot.ext to i64, !dbg !412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !412
  %tobool3 = icmp ne i64 %expval, 0, !dbg !412
  br i1 %tobool3, label %if.end, label %if.then, !dbg !415

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !416, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 155, ptr noundef @__func__._mongoc_gridfs_file_page_memset0, ptr noundef @.str.4), !dbg !416
  call void @abort() #9, !dbg !416
  unreachable, !dbg !416

if.end:                                           ; preds = %do.body1
  br label %do.cond4, !dbg !415

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !415

do.end5:                                          ; preds = %do.cond4
  %2 = load ptr, ptr %page.addr, align 8, !dbg !418, !tbaa !105
  %chunk_size = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %2, i32 0, i32 3, !dbg !418
  %3 = load i32, ptr %chunk_size, align 4, !dbg !418, !tbaa !139
  %4 = load ptr, ptr %page.addr, align 8, !dbg !418, !tbaa !105
  %offset = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %4, i32 0, i32 4, !dbg !418
  %5 = load i32, ptr %offset, align 8, !dbg !418, !tbaa !254
  %sub = sub i32 %3, %5, !dbg !418
  %6 = load i32, ptr %len.addr, align 4, !dbg !418, !tbaa !110
  %cmp = icmp ult i32 %sub, %6, !dbg !418
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !418

cond.true:                                        ; preds = %do.end5
  %7 = load ptr, ptr %page.addr, align 8, !dbg !418, !tbaa !105
  %chunk_size7 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %7, i32 0, i32 3, !dbg !418
  %8 = load i32, ptr %chunk_size7, align 4, !dbg !418, !tbaa !139
  %9 = load ptr, ptr %page.addr, align 8, !dbg !418, !tbaa !105
  %offset8 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %9, i32 0, i32 4, !dbg !418
  %10 = load i32, ptr %offset8, align 8, !dbg !418, !tbaa !254
  %sub9 = sub i32 %8, %10, !dbg !418
  br label %cond.end, !dbg !418

cond.false:                                       ; preds = %do.end5
  %11 = load i32, ptr %len.addr, align 4, !dbg !418, !tbaa !110
  br label %cond.end, !dbg !418

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub9, %cond.true ], [ %11, %cond.false ], !dbg !418
  store i32 %cond, ptr %bytes_set, align 4, !dbg !419, !tbaa !110
  %12 = load ptr, ptr %page.addr, align 8, !dbg !420, !tbaa !105
  %buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %12, i32 0, i32 1, !dbg !422
  %13 = load ptr, ptr %buf, align 8, !dbg !422, !tbaa !302
  %tobool10 = icmp ne ptr %13, null, !dbg !420
  br i1 %tobool10, label %if.end28, label %if.then11, !dbg !423

if.then11:                                        ; preds = %cond.end
  %14 = load ptr, ptr %page.addr, align 8, !dbg !424, !tbaa !105
  %chunk_size12 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %14, i32 0, i32 3, !dbg !426
  %15 = load i32, ptr %chunk_size12, align 4, !dbg !426, !tbaa !139
  %conv13 = zext i32 %15 to i64, !dbg !424
  %call14 = call ptr @bson_malloc0(i64 noundef %conv13), !dbg !427
  %16 = load ptr, ptr %page.addr, align 8, !dbg !428, !tbaa !105
  %buf15 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %16, i32 0, i32 1, !dbg !429
  store ptr %call14, ptr %buf15, align 8, !dbg !430, !tbaa !302
  %17 = load ptr, ptr %page.addr, align 8, !dbg !431, !tbaa !105
  %buf16 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %17, i32 0, i32 1, !dbg !432
  %18 = load ptr, ptr %buf16, align 8, !dbg !432, !tbaa !302
  %19 = load ptr, ptr %page.addr, align 8, !dbg !433, !tbaa !105
  %read_buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %19, i32 0, i32 0, !dbg !434
  %20 = load ptr, ptr %read_buf, align 8, !dbg !434, !tbaa !145
  %21 = load ptr, ptr %page.addr, align 8, !dbg !435, !tbaa !105
  %chunk_size17 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %21, i32 0, i32 3, !dbg !435
  %22 = load i32, ptr %chunk_size17, align 4, !dbg !435, !tbaa !139
  %23 = load ptr, ptr %page.addr, align 8, !dbg !435, !tbaa !105
  %len18 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %23, i32 0, i32 2, !dbg !435
  %24 = load i32, ptr %len18, align 8, !dbg !435, !tbaa !150
  %cmp19 = icmp ult i32 %22, %24, !dbg !435
  br i1 %cmp19, label %cond.true21, label %cond.false23, !dbg !435

cond.true21:                                      ; preds = %if.then11
  %25 = load ptr, ptr %page.addr, align 8, !dbg !435, !tbaa !105
  %chunk_size22 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %25, i32 0, i32 3, !dbg !435
  %26 = load i32, ptr %chunk_size22, align 4, !dbg !435, !tbaa !139
  br label %cond.end25, !dbg !435

cond.false23:                                     ; preds = %if.then11
  %27 = load ptr, ptr %page.addr, align 8, !dbg !435, !tbaa !105
  %len24 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %27, i32 0, i32 2, !dbg !435
  %28 = load i32, ptr %len24, align 8, !dbg !435, !tbaa !150
  br label %cond.end25, !dbg !435

cond.end25:                                       ; preds = %cond.false23, %cond.true21
  %cond26 = phi i32 [ %26, %cond.true21 ], [ %28, %cond.false23 ], !dbg !435
  %conv27 = zext i32 %cond26 to i64, !dbg !435
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %20, i64 %conv27, i1 false), !dbg !436
  br label %if.end28, !dbg !437

if.end28:                                         ; preds = %cond.end25, %cond.end
  %29 = load ptr, ptr %page.addr, align 8, !dbg !438, !tbaa !105
  %buf29 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %29, i32 0, i32 1, !dbg !439
  %30 = load ptr, ptr %buf29, align 8, !dbg !439, !tbaa !302
  %31 = load ptr, ptr %page.addr, align 8, !dbg !440, !tbaa !105
  %offset30 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %31, i32 0, i32 4, !dbg !441
  %32 = load i32, ptr %offset30, align 8, !dbg !441, !tbaa !254
  %idx.ext = zext i32 %32 to i64, !dbg !442
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 %idx.ext, !dbg !442
  %33 = load i32, ptr %bytes_set, align 4, !dbg !443, !tbaa !110
  %conv31 = zext i32 %33 to i64, !dbg !443
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv31, i1 false), !dbg !444
  %34 = load i32, ptr %bytes_set, align 4, !dbg !445, !tbaa !110
  %35 = load ptr, ptr %page.addr, align 8, !dbg !446, !tbaa !105
  %offset32 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %35, i32 0, i32 4, !dbg !447
  %36 = load i32, ptr %offset32, align 8, !dbg !448, !tbaa !254
  %add = add i32 %36, %34, !dbg !448
  store i32 %add, ptr %offset32, align 8, !dbg !448, !tbaa !254
  %37 = load ptr, ptr %page.addr, align 8, !dbg !449, !tbaa !105
  %offset33 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %37, i32 0, i32 4, !dbg !449
  %38 = load i32, ptr %offset33, align 8, !dbg !449, !tbaa !254
  %39 = load ptr, ptr %page.addr, align 8, !dbg !449, !tbaa !105
  %len34 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %39, i32 0, i32 2, !dbg !449
  %40 = load i32, ptr %len34, align 8, !dbg !449, !tbaa !150
  %cmp35 = icmp ugt i32 %38, %40, !dbg !449
  br i1 %cmp35, label %cond.true37, label %cond.false39, !dbg !449

cond.true37:                                      ; preds = %if.end28
  %41 = load ptr, ptr %page.addr, align 8, !dbg !449, !tbaa !105
  %offset38 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %41, i32 0, i32 4, !dbg !449
  %42 = load i32, ptr %offset38, align 8, !dbg !449, !tbaa !254
  br label %cond.end41, !dbg !449

cond.false39:                                     ; preds = %if.end28
  %43 = load ptr, ptr %page.addr, align 8, !dbg !449, !tbaa !105
  %len40 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %43, i32 0, i32 2, !dbg !449
  %44 = load i32, ptr %len40, align 8, !dbg !449, !tbaa !150
  br label %cond.end41, !dbg !449

cond.end41:                                       ; preds = %cond.false39, %cond.true37
  %cond42 = phi i32 [ %42, %cond.true37 ], [ %44, %cond.false39 ], !dbg !449
  %45 = load ptr, ptr %page.addr, align 8, !dbg !450, !tbaa !105
  %len43 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %45, i32 0, i32 2, !dbg !451
  store i32 %cond42, ptr %len43, align 8, !dbg !452, !tbaa !150
  %46 = load ptr, ptr %page.addr, align 8, !dbg !453, !tbaa !105
  %buf44 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %46, i32 0, i32 1, !dbg !454
  %47 = load ptr, ptr %buf44, align 8, !dbg !454, !tbaa !302
  %48 = load ptr, ptr %page.addr, align 8, !dbg !455, !tbaa !105
  %read_buf45 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %48, i32 0, i32 0, !dbg !456
  store ptr %47, ptr %read_buf45, align 8, !dbg !457, !tbaa !145
  br label %do.body46, !dbg !458

do.body46:                                        ; preds = %cond.end41
  %49 = load i32, ptr %bytes_set, align 4, !dbg !459, !tbaa !110
  store i32 %49, ptr %retval, align 4, !dbg !459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !459

do.cond47:                                        ; No predecessors!
  br label %do.end48, !dbg !459

do.end48:                                         ; preds = %do.cond47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !461
  br label %cleanup, !dbg !461

cleanup:                                          ; preds = %do.end48, %do.body46
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_set) #8, !dbg !461
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %50 = load i32, ptr %retval, align 4, !dbg !461
  ret i32 %50, !dbg !461

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define ptr @_mongoc_gridfs_file_page_get_data(ptr noundef %page) #0 !dbg !462 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !466, metadata !DIExpression()), !dbg !467
  br label %do.body, !dbg !468

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !469

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !471

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !472, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !472
  %lnot = xor i1 %tobool, true, !dbg !472
  %lnot2 = xor i1 %lnot, true, !dbg !472
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !472
  %conv = sext i32 %lnot.ext to i64, !dbg !472
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !472
  %tobool3 = icmp ne i64 %expval, 0, !dbg !472
  br i1 %tobool3, label %if.end, label %if.then, !dbg !475

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !476, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 182, ptr noundef @__func__._mongoc_gridfs_file_page_get_data, ptr noundef @.str.4), !dbg !476
  call void @abort() #9, !dbg !476
  unreachable, !dbg !476

if.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !475

do.end4:                                          ; preds = %if.end
  br label %do.body5, !dbg !478

do.body5:                                         ; preds = %do.end4
  %2 = load ptr, ptr %page.addr, align 8, !dbg !479, !tbaa !105
  %buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %2, i32 0, i32 1, !dbg !479
  %3 = load ptr, ptr %buf, align 8, !dbg !479, !tbaa !302
  %tobool6 = icmp ne ptr %3, null, !dbg !479
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !479

cond.true:                                        ; preds = %do.body5
  %4 = load ptr, ptr %page.addr, align 8, !dbg !479, !tbaa !105
  %buf7 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %4, i32 0, i32 1, !dbg !479
  %5 = load ptr, ptr %buf7, align 8, !dbg !479, !tbaa !302
  br label %cond.end, !dbg !479

cond.false:                                       ; preds = %do.body5
  %6 = load ptr, ptr %page.addr, align 8, !dbg !479, !tbaa !105
  %read_buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %6, i32 0, i32 0, !dbg !479
  %7 = load ptr, ptr %read_buf, align 8, !dbg !479, !tbaa !145
  br label %cond.end, !dbg !479

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ %7, %cond.false ], !dbg !479
  br label %do.end8, !dbg !479

do.end8:                                          ; preds = %cond.end
  ret ptr %cond, !dbg !479
}

; Function Attrs: nounwind uwtable
define i32 @_mongoc_gridfs_file_page_get_len(ptr noundef %page) #0 !dbg !481 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !485, metadata !DIExpression()), !dbg !486
  br label %do.body, !dbg !487

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !488

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !490

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !491, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !491
  %lnot = xor i1 %tobool, true, !dbg !491
  %lnot2 = xor i1 %lnot, true, !dbg !491
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !491
  %conv = sext i32 %lnot.ext to i64, !dbg !491
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !491
  %tobool3 = icmp ne i64 %expval, 0, !dbg !491
  br i1 %tobool3, label %if.end, label %if.then, !dbg !494

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !495, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 193, ptr noundef @__func__._mongoc_gridfs_file_page_get_len, ptr noundef @.str.4), !dbg !495
  call void @abort() #9, !dbg !495
  unreachable, !dbg !495

if.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !494

do.end4:                                          ; preds = %if.end
  br label %do.body5, !dbg !497

do.body5:                                         ; preds = %do.end4
  %2 = load ptr, ptr %page.addr, align 8, !dbg !498, !tbaa !105
  %len = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %2, i32 0, i32 2, !dbg !498
  %3 = load i32, ptr %len, align 8, !dbg !498, !tbaa !150
  br label %do.end6, !dbg !498

do.end6:                                          ; preds = %do.body5
  ret i32 %3, !dbg !498
}

; Function Attrs: nounwind uwtable
define i32 @_mongoc_gridfs_file_page_tell(ptr noundef %page) #0 !dbg !500 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !502, metadata !DIExpression()), !dbg !503
  br label %do.body, !dbg !504

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !505

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !507

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !508, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !508
  %lnot = xor i1 %tobool, true, !dbg !508
  %lnot2 = xor i1 %lnot, true, !dbg !508
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !508
  %conv = sext i32 %lnot.ext to i64, !dbg !508
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !508
  %tobool3 = icmp ne i64 %expval, 0, !dbg !508
  br i1 %tobool3, label %if.end, label %if.then, !dbg !511

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !512, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 204, ptr noundef @__func__._mongoc_gridfs_file_page_tell, ptr noundef @.str.4), !dbg !512
  call void @abort() #9, !dbg !512
  unreachable, !dbg !512

if.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !511

do.end4:                                          ; preds = %if.end
  br label %do.body5, !dbg !514

do.body5:                                         ; preds = %do.end4
  %2 = load ptr, ptr %page.addr, align 8, !dbg !515, !tbaa !105
  %offset = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %2, i32 0, i32 4, !dbg !515
  %3 = load i32, ptr %offset, align 8, !dbg !515, !tbaa !254
  br label %do.end6, !dbg !515

do.end6:                                          ; preds = %do.body5
  ret i32 %3, !dbg !515
}

; Function Attrs: nounwind uwtable
define zeroext i1 @_mongoc_gridfs_file_page_is_dirty(ptr noundef %page) #0 !dbg !517 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !521, metadata !DIExpression()), !dbg !522
  br label %do.body, !dbg !523

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !524

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !526

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %page.addr, align 8, !dbg !527, !tbaa !105
  %tobool = icmp ne ptr %0, null, !dbg !527
  %lnot = xor i1 %tobool, true, !dbg !527
  %lnot2 = xor i1 %lnot, true, !dbg !527
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !527
  %conv = sext i32 %lnot.ext to i64, !dbg !527
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !527
  %tobool3 = icmp ne i64 %expval, 0, !dbg !527
  br i1 %tobool3, label %if.end, label %if.then, !dbg !530

if.then:                                          ; preds = %do.body1
  %1 = load ptr, ptr @stderr, align 8, !dbg !531, !tbaa !105
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 215, ptr noundef @__func__._mongoc_gridfs_file_page_is_dirty, ptr noundef @.str.4), !dbg !531
  call void @abort() #9, !dbg !531
  unreachable, !dbg !531

if.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !530

do.end4:                                          ; preds = %if.end
  br label %do.body5, !dbg !533

do.body5:                                         ; preds = %do.end4
  %2 = load ptr, ptr %page.addr, align 8, !dbg !534, !tbaa !105
  %buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %2, i32 0, i32 1, !dbg !534
  %3 = load ptr, ptr %buf, align 8, !dbg !534, !tbaa !302
  %tobool6 = icmp ne ptr %3, null, !dbg !534
  %4 = zext i1 %tobool6 to i64, !dbg !534
  %cond = select i1 %tobool6, i32 1, i32 0, !dbg !534
  %tobool7 = icmp ne i32 %cond, 0, !dbg !534
  br label %do.end8, !dbg !534

do.end8:                                          ; preds = %do.body5
  ret i1 %tobool7, !dbg !534
}

; Function Attrs: nounwind uwtable
define void @_mongoc_gridfs_file_page_destroy(ptr noundef %page) #0 !dbg !536 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !540, metadata !DIExpression()), !dbg !541
  br label %do.body, !dbg !542

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !543

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %page.addr, align 8, !dbg !545, !tbaa !105
  %buf = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %0, i32 0, i32 1, !dbg !547
  %1 = load ptr, ptr %buf, align 8, !dbg !547, !tbaa !302
  %tobool = icmp ne ptr %1, null, !dbg !545
  br i1 %tobool, label %if.then, label %if.end, !dbg !548

if.then:                                          ; preds = %do.end
  %2 = load ptr, ptr %page.addr, align 8, !dbg !549, !tbaa !105
  %buf1 = getelementptr inbounds %struct._mongoc_gridfs_file_page_t, ptr %2, i32 0, i32 1, !dbg !551
  %3 = load ptr, ptr %buf1, align 8, !dbg !551, !tbaa !302
  call void @bson_free(ptr noundef %3), !dbg !552
  br label %if.end, !dbg !553

if.end:                                           ; preds = %if.then, %do.end
  %4 = load ptr, ptr %page.addr, align 8, !dbg !554, !tbaa !105
  call void @bson_free(ptr noundef %4), !dbg !555
  br label %do.body2, !dbg !556

do.body2:                                         ; preds = %if.end
  br label %do.end3, !dbg !557

do.end3:                                          ; preds = %do.body2
  ret void, !dbg !559
}

declare !dbg !560 void @bson_free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!65}
!llvm.module.flags = !{!91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-gridfs-file-page.c", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "6f0ed4d860816a02bfd98c9b50340227")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 37)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1616, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 202)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 232, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 29)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 5)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 18)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 30)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !20, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !30, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 4)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 248, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 31)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !39, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 264, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 33)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 272, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 34)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !51, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !30, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !56, isLocal: true, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !67, globals: !90, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/src/mongoc/mongoc-gridfs-file-page.c", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/spack-build/src/libmongoc", checksumkind: CSK_MD5, checksum: "6f0ed4d860816a02bfd98c9b50340227")
!67 = !{!68, !83}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_gridfs_file_page_t", file: !70, line: 32, baseType: !71)
!70 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-gridfs-file-page.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "3b932d73546d72dae9fcb918c41de57d")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_gridfs_file_page_t", file: !72, line: 30, size: 256, elements: !73)
!72 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-gridfs-file-page-private.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "282f5e691bb325deb6b8891eb13149f2")
!73 = !{!74, !82, !84, !88, !89}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !71, file: !72, line: 31, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !78, line: 24, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !80, line: 38, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !71, file: !72, line: 32, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !71, file: !72, line: 33, baseType: !85, size: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !78, line: 26, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !80, line: 42, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !71, file: !72, line: 34, baseType: !85, size: 32, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !71, file: !72, line: 35, baseType: !85, size: 32, offset: 192)
!90 = !{!0, !7, !12, !18, !23, !28, !33, !35, !37, !42, !47, !49, !54, !59, !61, !63}
!91 = !{i32 7, !"Dwarf Version", i32 5}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 8, !"PIC Level", i32 2}
!95 = !{i32 7, !"uwtable", i32 2}
!96 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!97 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_new", scope: !2, file: !2, line: 32, type: !98, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{!68, !75, !85, !85}
!100 = !{!101, !102, !103, !104}
!101 = !DILocalVariable(name: "data", arg: 1, scope: !97, file: !2, line: 32, type: !75)
!102 = !DILocalVariable(name: "len", arg: 2, scope: !97, file: !2, line: 33, type: !85)
!103 = !DILocalVariable(name: "chunk_size", arg: 3, scope: !97, file: !2, line: 34, type: !85)
!104 = !DILocalVariable(name: "page", scope: !97, file: !2, line: 36, type: !68)
!105 = !{!106, !106, i64 0}
!106 = !{!"any pointer", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !DILocation(line: 32, column: 46, scope: !97)
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !107, i64 0}
!112 = !DILocation(line: 33, column: 40, scope: !97)
!113 = !DILocation(line: 34, column: 40, scope: !97)
!114 = !DILocation(line: 36, column: 4, scope: !97)
!115 = !DILocation(line: 36, column: 31, scope: !97)
!116 = !DILocation(line: 38, column: 4, scope: !97)
!117 = !DILocation(line: 38, column: 4, scope: !118)
!118 = distinct !DILexicalBlock(scope: !97, file: !2, line: 38, column: 4)
!119 = !DILocation(line: 40, column: 4, scope: !97)
!120 = !DILocation(line: 40, column: 4, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 40, column: 4)
!122 = distinct !DILexicalBlock(scope: !97, file: !2, line: 40, column: 4)
!123 = !DILocation(line: 40, column: 4, scope: !122)
!124 = !DILocation(line: 40, column: 4, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !2, line: 40, column: 4)
!126 = !DILocation(line: 41, column: 4, scope: !97)
!127 = !DILocation(line: 41, column: 4, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 41, column: 4)
!129 = distinct !DILexicalBlock(scope: !97, file: !2, line: 41, column: 4)
!130 = !DILocation(line: 41, column: 4, scope: !129)
!131 = !DILocation(line: 41, column: 4, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !2, line: 41, column: 4)
!133 = !DILocation(line: 43, column: 41, scope: !97)
!134 = !DILocation(line: 43, column: 9, scope: !97)
!135 = !DILocation(line: 45, column: 23, scope: !97)
!136 = !DILocation(line: 45, column: 4, scope: !97)
!137 = !DILocation(line: 45, column: 10, scope: !97)
!138 = !DILocation(line: 45, column: 21, scope: !97)
!139 = !{!140, !111, i64 20}
!140 = !{!"_mongoc_gridfs_file_page_t", !106, i64 0, !106, i64 8, !111, i64 16, !111, i64 20, !111, i64 24}
!141 = !DILocation(line: 46, column: 21, scope: !97)
!142 = !DILocation(line: 46, column: 4, scope: !97)
!143 = !DILocation(line: 46, column: 10, scope: !97)
!144 = !DILocation(line: 46, column: 19, scope: !97)
!145 = !{!140, !106, i64 0}
!146 = !DILocation(line: 47, column: 16, scope: !97)
!147 = !DILocation(line: 47, column: 4, scope: !97)
!148 = !DILocation(line: 47, column: 10, scope: !97)
!149 = !DILocation(line: 47, column: 14, scope: !97)
!150 = !{!140, !111, i64 16}
!151 = !DILocation(line: 49, column: 4, scope: !97)
!152 = !DILocation(line: 49, column: 4, scope: !153)
!153 = distinct !DILexicalBlock(scope: !97, file: !2, line: 49, column: 4)
!154 = !DILocation(line: 50, column: 1, scope: !97)
!155 = !DISubprogram(name: "fprintf", scope: !156, file: !156, line: 350, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !160, !221, null}
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !164)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!166 = !{!167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !183, !185, !186, !187, !190, !192, !194, !198, !201, !203, !206, !209, !210, !212, !216, !217}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !164, file: !165, line: 51, baseType: !159, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !164, file: !165, line: 54, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !164, file: !165, line: 55, baseType: !169, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !164, file: !165, line: 56, baseType: !169, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !164, file: !165, line: 57, baseType: !169, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !164, file: !165, line: 58, baseType: !169, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !164, file: !165, line: 59, baseType: !169, size: 64, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !164, file: !165, line: 60, baseType: !169, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !164, file: !165, line: 61, baseType: !169, size: 64, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !164, file: !165, line: 64, baseType: !169, size: 64, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !164, file: !165, line: 65, baseType: !169, size: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !164, file: !165, line: 66, baseType: !169, size: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !164, file: !165, line: 68, baseType: !181, size: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !165, line: 36, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !164, file: !165, line: 70, baseType: !184, size: 64, offset: 832)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !164, file: !165, line: 72, baseType: !159, size: 32, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !164, file: !165, line: 73, baseType: !159, size: 32, offset: 928)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !164, file: !165, line: 74, baseType: !188, size: 64, offset: 960)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !80, line: 152, baseType: !189)
!189 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !164, file: !165, line: 77, baseType: !191, size: 16, offset: 1024)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !164, file: !165, line: 78, baseType: !193, size: 8, offset: 1040)
!193 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !164, file: !165, line: 79, baseType: !195, size: 8, offset: 1048)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 1)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !164, file: !165, line: 81, baseType: !199, size: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !165, line: 43, baseType: null)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !164, file: !165, line: 89, baseType: !202, size: 64, offset: 1152)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !80, line: 153, baseType: !189)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !164, file: !165, line: 91, baseType: !204, size: 64, offset: 1216)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !165, line: 37, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !164, file: !165, line: 92, baseType: !207, size: 64, offset: 1280)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !165, line: 38, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !164, file: !165, line: 93, baseType: !184, size: 64, offset: 1344)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !164, file: !165, line: 94, baseType: !211, size: 64, offset: 1408)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !164, file: !165, line: 95, baseType: !213, size: 64, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 70, baseType: !215)
!214 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !164, file: !165, line: 96, baseType: !159, size: 32, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !164, file: !165, line: 98, baseType: !218, size: 160, offset: 1568)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 20)
!221 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!223 = !DISubprogram(name: "abort", scope: !224, file: !224, line: 598, type: !225, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!224 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!225 = !DISubroutineType(types: !226)
!226 = !{null}
!227 = !DISubprogram(name: "bson_malloc0", scope: !228, file: !228, line: 51, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson-memory.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "bd1060bd64476ebf607005ba6da351c4")
!229 = !DISubroutineType(types: !230)
!230 = !{!211, !213}
!231 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_seek", scope: !2, file: !2, line: 54, type: !232, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !235)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !68, !85}
!234 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!235 = !{!236, !237}
!236 = !DILocalVariable(name: "page", arg: 1, scope: !231, file: !2, line: 54, type: !68)
!237 = !DILocalVariable(name: "offset", arg: 2, scope: !231, file: !2, line: 54, type: !85)
!238 = !DILocation(line: 54, column: 59, scope: !231)
!239 = !DILocation(line: 54, column: 74, scope: !231)
!240 = !DILocation(line: 56, column: 4, scope: !231)
!241 = !DILocation(line: 56, column: 4, scope: !242)
!242 = distinct !DILexicalBlock(scope: !231, file: !2, line: 56, column: 4)
!243 = !DILocation(line: 58, column: 4, scope: !231)
!244 = !DILocation(line: 58, column: 4, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !2, line: 58, column: 4)
!246 = distinct !DILexicalBlock(scope: !231, file: !2, line: 58, column: 4)
!247 = !DILocation(line: 58, column: 4, scope: !246)
!248 = !DILocation(line: 58, column: 4, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !2, line: 58, column: 4)
!250 = !DILocation(line: 60, column: 19, scope: !231)
!251 = !DILocation(line: 60, column: 4, scope: !231)
!252 = !DILocation(line: 60, column: 10, scope: !231)
!253 = !DILocation(line: 60, column: 17, scope: !231)
!254 = !{!140, !111, i64 24}
!255 = !DILocation(line: 62, column: 4, scope: !231)
!256 = !DILocation(line: 62, column: 4, scope: !257)
!257 = distinct !DILexicalBlock(scope: !231, file: !2, line: 62, column: 4)
!258 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_read", scope: !2, file: !2, line: 67, type: !259, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !264)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !68, !211, !85}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !262, line: 26, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !80, line: 41, baseType: !159)
!264 = !{!265, !266, !267, !268, !269}
!265 = !DILocalVariable(name: "page", arg: 1, scope: !258, file: !2, line: 67, type: !68)
!266 = !DILocalVariable(name: "dst", arg: 2, scope: !258, file: !2, line: 68, type: !211)
!267 = !DILocalVariable(name: "len", arg: 3, scope: !258, file: !2, line: 69, type: !85)
!268 = !DILocalVariable(name: "bytes_read", scope: !258, file: !2, line: 71, type: !159)
!269 = !DILocalVariable(name: "src", scope: !258, file: !2, line: 72, type: !75)
!270 = !DILocation(line: 67, column: 59, scope: !258)
!271 = !DILocation(line: 68, column: 38, scope: !258)
!272 = !DILocation(line: 69, column: 41, scope: !258)
!273 = !DILocation(line: 71, column: 4, scope: !258)
!274 = !DILocation(line: 71, column: 8, scope: !258)
!275 = !DILocation(line: 72, column: 4, scope: !258)
!276 = !DILocation(line: 72, column: 19, scope: !258)
!277 = !DILocation(line: 74, column: 4, scope: !258)
!278 = !DILocation(line: 74, column: 4, scope: !279)
!279 = distinct !DILexicalBlock(scope: !258, file: !2, line: 74, column: 4)
!280 = !DILocation(line: 76, column: 4, scope: !258)
!281 = !DILocation(line: 76, column: 4, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !2, line: 76, column: 4)
!283 = distinct !DILexicalBlock(scope: !258, file: !2, line: 76, column: 4)
!284 = !DILocation(line: 76, column: 4, scope: !283)
!285 = !DILocation(line: 76, column: 4, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !2, line: 76, column: 4)
!287 = !DILocation(line: 77, column: 4, scope: !258)
!288 = !DILocation(line: 77, column: 4, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !2, line: 77, column: 4)
!290 = distinct !DILexicalBlock(scope: !258, file: !2, line: 77, column: 4)
!291 = !DILocation(line: 77, column: 4, scope: !290)
!292 = !DILocation(line: 77, column: 4, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !2, line: 77, column: 4)
!294 = !DILocation(line: 79, column: 17, scope: !258)
!295 = !DILocation(line: 79, column: 15, scope: !258)
!296 = !DILocation(line: 81, column: 10, scope: !258)
!297 = !DILocation(line: 81, column: 16, scope: !258)
!298 = !DILocation(line: 81, column: 27, scope: !258)
!299 = !DILocation(line: 81, column: 33, scope: !258)
!300 = !DILocation(line: 81, column: 44, scope: !258)
!301 = !DILocation(line: 81, column: 50, scope: !258)
!302 = !{!140, !106, i64 8}
!303 = !DILocation(line: 81, column: 8, scope: !258)
!304 = !DILocation(line: 83, column: 12, scope: !258)
!305 = !DILocation(line: 83, column: 17, scope: !258)
!306 = !DILocation(line: 83, column: 23, scope: !258)
!307 = !DILocation(line: 83, column: 29, scope: !258)
!308 = !DILocation(line: 83, column: 21, scope: !258)
!309 = !DILocation(line: 83, column: 37, scope: !258)
!310 = !DILocation(line: 83, column: 4, scope: !258)
!311 = !DILocation(line: 85, column: 20, scope: !258)
!312 = !DILocation(line: 85, column: 4, scope: !258)
!313 = !DILocation(line: 85, column: 10, scope: !258)
!314 = !DILocation(line: 85, column: 17, scope: !258)
!315 = !DILocation(line: 87, column: 4, scope: !258)
!316 = !DILocation(line: 87, column: 4, scope: !317)
!317 = distinct !DILexicalBlock(scope: !258, file: !2, line: 87, column: 4)
!318 = !DILocation(line: 88, column: 1, scope: !258)
!319 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_write", scope: !2, file: !2, line: 104, type: !320, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !324)
!320 = !DISubroutineType(types: !321)
!321 = !{!261, !68, !322, !85}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!324 = !{!325, !326, !327, !328}
!325 = !DILocalVariable(name: "page", arg: 1, scope: !319, file: !2, line: 104, type: !68)
!326 = !DILocalVariable(name: "src", arg: 2, scope: !319, file: !2, line: 105, type: !322)
!327 = !DILocalVariable(name: "len", arg: 3, scope: !319, file: !2, line: 106, type: !85)
!328 = !DILocalVariable(name: "bytes_written", scope: !319, file: !2, line: 108, type: !159)
!329 = !DILocation(line: 104, column: 60, scope: !319)
!330 = !DILocation(line: 105, column: 45, scope: !319)
!331 = !DILocation(line: 106, column: 42, scope: !319)
!332 = !DILocation(line: 108, column: 4, scope: !319)
!333 = !DILocation(line: 108, column: 8, scope: !319)
!334 = !DILocation(line: 110, column: 4, scope: !319)
!335 = !DILocation(line: 110, column: 4, scope: !336)
!336 = distinct !DILexicalBlock(scope: !319, file: !2, line: 110, column: 4)
!337 = !DILocation(line: 112, column: 4, scope: !319)
!338 = !DILocation(line: 112, column: 4, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 112, column: 4)
!340 = distinct !DILexicalBlock(scope: !319, file: !2, line: 112, column: 4)
!341 = !DILocation(line: 112, column: 4, scope: !340)
!342 = !DILocation(line: 112, column: 4, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !2, line: 112, column: 4)
!344 = !DILocation(line: 113, column: 4, scope: !319)
!345 = !DILocation(line: 113, column: 4, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 113, column: 4)
!347 = distinct !DILexicalBlock(scope: !319, file: !2, line: 113, column: 4)
!348 = !DILocation(line: 113, column: 4, scope: !347)
!349 = !DILocation(line: 113, column: 4, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !2, line: 113, column: 4)
!351 = !DILocation(line: 115, column: 20, scope: !319)
!352 = !DILocation(line: 115, column: 18, scope: !319)
!353 = !DILocation(line: 117, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !319, file: !2, line: 117, column: 8)
!355 = !DILocation(line: 117, column: 15, scope: !354)
!356 = !DILocation(line: 117, column: 8, scope: !319)
!357 = !DILocation(line: 118, column: 44, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !2, line: 117, column: 20)
!359 = !DILocation(line: 118, column: 50, scope: !358)
!360 = !DILocation(line: 118, column: 31, scope: !358)
!361 = !DILocation(line: 118, column: 7, scope: !358)
!362 = !DILocation(line: 118, column: 13, scope: !358)
!363 = !DILocation(line: 118, column: 17, scope: !358)
!364 = !DILocation(line: 120, column: 10, scope: !358)
!365 = !DILocation(line: 120, column: 16, scope: !358)
!366 = !DILocation(line: 120, column: 21, scope: !358)
!367 = !DILocation(line: 120, column: 27, scope: !358)
!368 = !DILocation(line: 120, column: 37, scope: !358)
!369 = !DILocation(line: 119, column: 7, scope: !358)
!370 = !DILocation(line: 121, column: 4, scope: !358)
!371 = !DILocation(line: 124, column: 12, scope: !319)
!372 = !DILocation(line: 124, column: 18, scope: !319)
!373 = !DILocation(line: 124, column: 24, scope: !319)
!374 = !DILocation(line: 124, column: 30, scope: !319)
!375 = !DILocation(line: 124, column: 22, scope: !319)
!376 = !DILocation(line: 124, column: 38, scope: !319)
!377 = !DILocation(line: 124, column: 43, scope: !319)
!378 = !DILocation(line: 124, column: 4, scope: !319)
!379 = !DILocation(line: 125, column: 20, scope: !319)
!380 = !DILocation(line: 125, column: 4, scope: !319)
!381 = !DILocation(line: 125, column: 10, scope: !319)
!382 = !DILocation(line: 125, column: 17, scope: !319)
!383 = !DILocation(line: 126, column: 16, scope: !319)
!384 = !DILocation(line: 126, column: 4, scope: !319)
!385 = !DILocation(line: 126, column: 10, scope: !319)
!386 = !DILocation(line: 126, column: 14, scope: !319)
!387 = !DILocation(line: 129, column: 21, scope: !319)
!388 = !DILocation(line: 129, column: 27, scope: !319)
!389 = !DILocation(line: 129, column: 4, scope: !319)
!390 = !DILocation(line: 129, column: 10, scope: !319)
!391 = !DILocation(line: 129, column: 19, scope: !319)
!392 = !DILocation(line: 131, column: 4, scope: !319)
!393 = !DILocation(line: 131, column: 4, scope: !394)
!394 = distinct !DILexicalBlock(scope: !319, file: !2, line: 131, column: 4)
!395 = !DILocation(line: 132, column: 1, scope: !319)
!396 = !DISubprogram(name: "bson_malloc", scope: !228, file: !228, line: 49, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_memset0", scope: !2, file: !2, line: 149, type: !398, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!85, !68, !85}
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(name: "page", arg: 1, scope: !397, file: !2, line: 149, type: !68)
!402 = !DILocalVariable(name: "len", arg: 2, scope: !397, file: !2, line: 149, type: !85)
!403 = !DILocalVariable(name: "bytes_set", scope: !397, file: !2, line: 151, type: !85)
!404 = !DILocation(line: 149, column: 62, scope: !397)
!405 = !DILocation(line: 149, column: 77, scope: !397)
!406 = !DILocation(line: 151, column: 4, scope: !397)
!407 = !DILocation(line: 151, column: 13, scope: !397)
!408 = !DILocation(line: 153, column: 4, scope: !397)
!409 = !DILocation(line: 153, column: 4, scope: !410)
!410 = distinct !DILexicalBlock(scope: !397, file: !2, line: 153, column: 4)
!411 = !DILocation(line: 155, column: 4, scope: !397)
!412 = !DILocation(line: 155, column: 4, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 155, column: 4)
!414 = distinct !DILexicalBlock(scope: !397, file: !2, line: 155, column: 4)
!415 = !DILocation(line: 155, column: 4, scope: !414)
!416 = !DILocation(line: 155, column: 4, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !2, line: 155, column: 4)
!418 = !DILocation(line: 157, column: 16, scope: !397)
!419 = !DILocation(line: 157, column: 14, scope: !397)
!420 = !DILocation(line: 159, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !397, file: !2, line: 159, column: 8)
!422 = !DILocation(line: 159, column: 15, scope: !421)
!423 = !DILocation(line: 159, column: 8, scope: !397)
!424 = !DILocation(line: 160, column: 45, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !2, line: 159, column: 20)
!426 = !DILocation(line: 160, column: 51, scope: !425)
!427 = !DILocation(line: 160, column: 31, scope: !425)
!428 = !DILocation(line: 160, column: 7, scope: !425)
!429 = !DILocation(line: 160, column: 13, scope: !425)
!430 = !DILocation(line: 160, column: 17, scope: !425)
!431 = !DILocation(line: 162, column: 10, scope: !425)
!432 = !DILocation(line: 162, column: 16, scope: !425)
!433 = !DILocation(line: 162, column: 21, scope: !425)
!434 = !DILocation(line: 162, column: 27, scope: !425)
!435 = !DILocation(line: 162, column: 37, scope: !425)
!436 = !DILocation(line: 161, column: 7, scope: !425)
!437 = !DILocation(line: 163, column: 4, scope: !425)
!438 = !DILocation(line: 166, column: 12, scope: !397)
!439 = !DILocation(line: 166, column: 18, scope: !397)
!440 = !DILocation(line: 166, column: 24, scope: !397)
!441 = !DILocation(line: 166, column: 30, scope: !397)
!442 = !DILocation(line: 166, column: 22, scope: !397)
!443 = !DILocation(line: 166, column: 44, scope: !397)
!444 = !DILocation(line: 166, column: 4, scope: !397)
!445 = !DILocation(line: 167, column: 20, scope: !397)
!446 = !DILocation(line: 167, column: 4, scope: !397)
!447 = !DILocation(line: 167, column: 10, scope: !397)
!448 = !DILocation(line: 167, column: 17, scope: !397)
!449 = !DILocation(line: 168, column: 16, scope: !397)
!450 = !DILocation(line: 168, column: 4, scope: !397)
!451 = !DILocation(line: 168, column: 10, scope: !397)
!452 = !DILocation(line: 168, column: 14, scope: !397)
!453 = !DILocation(line: 171, column: 21, scope: !397)
!454 = !DILocation(line: 171, column: 27, scope: !397)
!455 = !DILocation(line: 171, column: 4, scope: !397)
!456 = !DILocation(line: 171, column: 10, scope: !397)
!457 = !DILocation(line: 171, column: 19, scope: !397)
!458 = !DILocation(line: 173, column: 4, scope: !397)
!459 = !DILocation(line: 173, column: 4, scope: !460)
!460 = distinct !DILexicalBlock(scope: !397, file: !2, line: 173, column: 4)
!461 = !DILocation(line: 174, column: 1, scope: !397)
!462 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_get_data", scope: !2, file: !2, line: 178, type: !463, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!75, !68}
!465 = !{!466}
!466 = !DILocalVariable(name: "page", arg: 1, scope: !462, file: !2, line: 178, type: !68)
!467 = !DILocation(line: 178, column: 63, scope: !462)
!468 = !DILocation(line: 180, column: 4, scope: !462)
!469 = !DILocation(line: 180, column: 4, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !2, line: 180, column: 4)
!471 = !DILocation(line: 182, column: 4, scope: !462)
!472 = !DILocation(line: 182, column: 4, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !2, line: 182, column: 4)
!474 = distinct !DILexicalBlock(scope: !462, file: !2, line: 182, column: 4)
!475 = !DILocation(line: 182, column: 4, scope: !474)
!476 = !DILocation(line: 182, column: 4, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !2, line: 182, column: 4)
!478 = !DILocation(line: 184, column: 4, scope: !462)
!479 = !DILocation(line: 184, column: 4, scope: !480)
!480 = distinct !DILexicalBlock(scope: !462, file: !2, line: 184, column: 4)
!481 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_get_len", scope: !2, file: !2, line: 189, type: !482, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!85, !68}
!484 = !{!485}
!485 = !DILocalVariable(name: "page", arg: 1, scope: !481, file: !2, line: 189, type: !68)
!486 = !DILocation(line: 189, column: 62, scope: !481)
!487 = !DILocation(line: 191, column: 4, scope: !481)
!488 = !DILocation(line: 191, column: 4, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !2, line: 191, column: 4)
!490 = !DILocation(line: 193, column: 4, scope: !481)
!491 = !DILocation(line: 193, column: 4, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !2, line: 193, column: 4)
!493 = distinct !DILexicalBlock(scope: !481, file: !2, line: 193, column: 4)
!494 = !DILocation(line: 193, column: 4, scope: !493)
!495 = !DILocation(line: 193, column: 4, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !2, line: 193, column: 4)
!497 = !DILocation(line: 195, column: 4, scope: !481)
!498 = !DILocation(line: 195, column: 4, scope: !499)
!499 = distinct !DILexicalBlock(scope: !481, file: !2, line: 195, column: 4)
!500 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_tell", scope: !2, file: !2, line: 200, type: !482, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !501)
!501 = !{!502}
!502 = !DILocalVariable(name: "page", arg: 1, scope: !500, file: !2, line: 200, type: !68)
!503 = !DILocation(line: 200, column: 59, scope: !500)
!504 = !DILocation(line: 202, column: 4, scope: !500)
!505 = !DILocation(line: 202, column: 4, scope: !506)
!506 = distinct !DILexicalBlock(scope: !500, file: !2, line: 202, column: 4)
!507 = !DILocation(line: 204, column: 4, scope: !500)
!508 = !DILocation(line: 204, column: 4, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 204, column: 4)
!510 = distinct !DILexicalBlock(scope: !500, file: !2, line: 204, column: 4)
!511 = !DILocation(line: 204, column: 4, scope: !510)
!512 = !DILocation(line: 204, column: 4, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !2, line: 204, column: 4)
!514 = !DILocation(line: 206, column: 4, scope: !500)
!515 = !DILocation(line: 206, column: 4, scope: !516)
!516 = distinct !DILexicalBlock(scope: !500, file: !2, line: 206, column: 4)
!517 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_is_dirty", scope: !2, file: !2, line: 211, type: !518, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!234, !68}
!520 = !{!521}
!521 = !DILocalVariable(name: "page", arg: 1, scope: !517, file: !2, line: 211, type: !68)
!522 = !DILocation(line: 211, column: 63, scope: !517)
!523 = !DILocation(line: 213, column: 4, scope: !517)
!524 = !DILocation(line: 213, column: 4, scope: !525)
!525 = distinct !DILexicalBlock(scope: !517, file: !2, line: 213, column: 4)
!526 = !DILocation(line: 215, column: 4, scope: !517)
!527 = !DILocation(line: 215, column: 4, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 215, column: 4)
!529 = distinct !DILexicalBlock(scope: !517, file: !2, line: 215, column: 4)
!530 = !DILocation(line: 215, column: 4, scope: !529)
!531 = !DILocation(line: 215, column: 4, scope: !532)
!532 = distinct !DILexicalBlock(scope: !528, file: !2, line: 215, column: 4)
!533 = !DILocation(line: 217, column: 4, scope: !517)
!534 = !DILocation(line: 217, column: 4, scope: !535)
!535 = distinct !DILexicalBlock(scope: !517, file: !2, line: 217, column: 4)
!536 = distinct !DISubprogram(name: "_mongoc_gridfs_file_page_destroy", scope: !2, file: !2, line: 222, type: !537, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !65, retainedNodes: !539)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !68}
!539 = !{!540}
!540 = !DILocalVariable(name: "page", arg: 1, scope: !536, file: !2, line: 222, type: !68)
!541 = !DILocation(line: 222, column: 62, scope: !536)
!542 = !DILocation(line: 224, column: 4, scope: !536)
!543 = !DILocation(line: 224, column: 4, scope: !544)
!544 = distinct !DILexicalBlock(scope: !536, file: !2, line: 224, column: 4)
!545 = !DILocation(line: 226, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !536, file: !2, line: 226, column: 8)
!547 = !DILocation(line: 226, column: 14, scope: !546)
!548 = !DILocation(line: 226, column: 8, scope: !536)
!549 = !DILocation(line: 227, column: 18, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !2, line: 226, column: 19)
!551 = !DILocation(line: 227, column: 24, scope: !550)
!552 = !DILocation(line: 227, column: 7, scope: !550)
!553 = !DILocation(line: 228, column: 4, scope: !550)
!554 = !DILocation(line: 230, column: 15, scope: !536)
!555 = !DILocation(line: 230, column: 4, scope: !536)
!556 = !DILocation(line: 232, column: 4, scope: !536)
!557 = !DILocation(line: 232, column: 4, scope: !558)
!558 = distinct !DILexicalBlock(scope: !536, file: !2, line: 232, column: 4)
!559 = !DILocation(line: 233, column: 1, scope: !536)
!560 = !DISubprogram(name: "bson_free", scope: !228, file: !228, line: 61, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !211}

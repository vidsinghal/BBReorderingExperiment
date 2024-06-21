; ModuleID = 'samples/533.bc'
source_filename = "/local-ssd/pflask-sngep3v5y5lhffkqvvz3xxguxq6xajiv-build/aidengro/spack-stage-pflask-0.2-sngep3v5y5lhffkqvvz3xxguxq6xajiv/spack-src/src/dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"%s/dev/ptmx\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"OOM\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [14 x i8] c"/dev/pts/ptmx\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [10 x i8] c"symlink()\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [8 x i8] c"chmod()\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [8 x i8] c"chown()\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [7 x i8] c"stat()\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [15 x i8] c"%s/dev/console\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [8 x i8] c"mknod()\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [8 x i8] c"mount()\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [12 x i8] c"/proc/kcore\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [14 x i8] c"/proc/self/fd\00", align 1, !dbg !45
@.str.12 = private unnamed_addr constant [16 x i8] c"/proc/self/fd/0\00", align 1, !dbg !47
@.str.13 = private unnamed_addr constant [16 x i8] c"/proc/self/fd/1\00", align 1, !dbg !52
@.str.14 = private unnamed_addr constant [16 x i8] c"/proc/self/fd/2\00", align 1, !dbg !54
@__const.make_symlinks.src = private unnamed_addr constant [5 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 16
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/core\00", align 1, !dbg !56
@.str.16 = private unnamed_addr constant [8 x i8] c"/dev/fd\00", align 1, !dbg !58
@.str.17 = private unnamed_addr constant [11 x i8] c"/dev/stdin\00", align 1, !dbg !60
@.str.18 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1, !dbg !65
@.str.19 = private unnamed_addr constant [12 x i8] c"/dev/stderr\00", align 1, !dbg !67
@__const.make_symlinks.dst = private unnamed_addr constant [5 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 16
@.str.20 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1, !dbg !69
@.str.21 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1, !dbg !74
@.str.22 = private unnamed_addr constant [10 x i8] c"/dev/full\00", align 1, !dbg !79
@.str.23 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1, !dbg !81
@.str.24 = private unnamed_addr constant [10 x i8] c"/dev/zero\00", align 1, !dbg !83
@.str.25 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1, !dbg !85
@.str.26 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1, !dbg !87
@__const.copy_nodes.nodes = private unnamed_addr constant [6 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !92

; Function Attrs: nounwind uwtable
define dso_local void @make_ptmx(ptr noundef %dest) #0 !dbg !142 {
entry:
  %dest.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %target = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !147, metadata !DIExpression()), !dbg !154
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !155
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !148, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #7, !dbg !157
  tail call void @llvm.dbg.declare(metadata ptr %target, metadata !149, metadata !DIExpression()), !dbg !158
  store ptr null, ptr %target, align 8, !dbg !158, !tbaa !150
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !159, !tbaa !150
  %call = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %target, ptr noundef @.str, ptr noundef %0) #7, !dbg !160
  store i32 %call, ptr %rc, align 4, !dbg !161, !tbaa !162
  %1 = load i32, ptr %rc, align 4, !dbg !164, !tbaa !162
  %cmp = icmp slt i32 %1, 0, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  call void (ptr, ...) @fail_printf(ptr noundef @.str.1), !dbg !168
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %target, align 8, !dbg !169, !tbaa !150
  %call1 = call i32 @symlink(ptr noundef @.str.2, ptr noundef %2) #7, !dbg !170
  store i32 %call1, ptr %rc, align 4, !dbg !171, !tbaa !162
  %3 = load i32, ptr %rc, align 4, !dbg !172, !tbaa !162
  %cmp2 = icmp slt i32 %3, 0, !dbg !174
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !175

if.then3:                                         ; preds = %if.end
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.3), !dbg !176
  br label %if.end4, !dbg !176

if.end4:                                          ; preds = %if.then3, %if.end
  call void @freep(ptr noundef %target), !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #7, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @freep(ptr noundef %p) #2 !dbg !178 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = load ptr, ptr %p.addr, align 8, !dbg !185, !tbaa !150
  %cmp = icmp eq ptr %0, null, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  br label %return, !dbg !189

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !190, !tbaa !150
  %2 = load ptr, ptr %1, align 8, !dbg !191, !tbaa !150
  call void @free(ptr noundef %2) #7, !dbg !192
  %3 = load ptr, ptr %p.addr, align 8, !dbg !193, !tbaa !150
  store ptr null, ptr %3, align 8, !dbg !194, !tbaa !150
  br label %return, !dbg !195

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !195
}

; Function Attrs: nounwind
declare !dbg !196 i32 @asprintf(ptr noundef, ptr noundef, ...) #3

declare !dbg !205 void @fail_printf(ptr noundef, ...) #4

; Function Attrs: nounwind
declare !dbg !209 i32 @symlink(ptr noundef, ptr noundef) #3

declare !dbg !213 void @sysf_printf(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @make_console(ptr noundef %dest, ptr noundef %console) #0 !dbg !214 {
entry:
  %dest.addr = alloca ptr, align 8
  %console.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %target = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !218, metadata !DIExpression()), !dbg !264
  store ptr %console, ptr %console.addr, align 8, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %console.addr, metadata !219, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !266
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !220, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 144, ptr %sb) #7, !dbg !268
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !221, metadata !DIExpression()), !dbg !269
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #7, !dbg !270
  tail call void @llvm.dbg.declare(metadata ptr %target, metadata !263, metadata !DIExpression()), !dbg !271
  store ptr null, ptr %target, align 8, !dbg !271, !tbaa !150
  %0 = load ptr, ptr %console.addr, align 8, !dbg !272, !tbaa !150
  %call = call i32 @chmod(ptr noundef %0, i32 noundef 384) #7, !dbg !273
  store i32 %call, ptr %rc, align 4, !dbg !274, !tbaa !162
  %1 = load i32, ptr %rc, align 4, !dbg !275, !tbaa !162
  %cmp = icmp slt i32 %1, 0, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.4), !dbg !279
  br label %if.end, !dbg !279

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %console.addr, align 8, !dbg !280, !tbaa !150
  %call1 = call i32 @chown(ptr noundef %2, i32 noundef 0, i32 noundef 0) #7, !dbg !281
  store i32 %call1, ptr %rc, align 4, !dbg !282, !tbaa !162
  %3 = load i32, ptr %rc, align 4, !dbg !283, !tbaa !162
  %cmp2 = icmp slt i32 %3, 0, !dbg !285
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !286

if.then3:                                         ; preds = %if.end
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.5), !dbg !287
  br label %if.end4, !dbg !287

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load ptr, ptr %console.addr, align 8, !dbg !288, !tbaa !150
  %call5 = call i32 @stat(ptr noundef %4, ptr noundef %sb) #7, !dbg !289
  store i32 %call5, ptr %rc, align 4, !dbg !290, !tbaa !162
  %5 = load i32, ptr %rc, align 4, !dbg !291, !tbaa !162
  %cmp6 = icmp slt i32 %5, 0, !dbg !293
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !294

if.then7:                                         ; preds = %if.end4
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.6), !dbg !295
  br label %if.end8, !dbg !295

if.end8:                                          ; preds = %if.then7, %if.end4
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !296, !tbaa !150
  %call9 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %target, ptr noundef @.str.7, ptr noundef %6) #7, !dbg !297
  store i32 %call9, ptr %rc, align 4, !dbg !298, !tbaa !162
  %7 = load i32, ptr %rc, align 4, !dbg !299, !tbaa !162
  %cmp10 = icmp slt i32 %7, 0, !dbg !301
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !302

if.then11:                                        ; preds = %if.end8
  call void (ptr, ...) @fail_printf(ptr noundef @.str.1), !dbg !303
  br label %if.end12, !dbg !303

if.end12:                                         ; preds = %if.then11, %if.end8
  %8 = load ptr, ptr %target, align 8, !dbg !304, !tbaa !150
  %st_mode = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3, !dbg !305
  %9 = load i32, ptr %st_mode, align 8, !dbg !305, !tbaa !306
  %st_rdev = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 7, !dbg !310
  %10 = load i64, ptr %st_rdev, align 8, !dbg !310, !tbaa !311
  %call13 = call i32 @mknod(ptr noundef %8, i32 noundef %9, i64 noundef %10) #7, !dbg !312
  store i32 %call13, ptr %rc, align 4, !dbg !313, !tbaa !162
  %11 = load i32, ptr %rc, align 4, !dbg !314, !tbaa !162
  %cmp14 = icmp slt i32 %11, 0, !dbg !316
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !317

if.then15:                                        ; preds = %if.end12
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.8), !dbg !318
  br label %if.end16, !dbg !318

if.end16:                                         ; preds = %if.then15, %if.end12
  %12 = load ptr, ptr %console.addr, align 8, !dbg !319, !tbaa !150
  %13 = load ptr, ptr %target, align 8, !dbg !320, !tbaa !150
  %call17 = call i32 @mount(ptr noundef %12, ptr noundef %13, ptr noundef null, i64 noundef 4096, ptr noundef null) #7, !dbg !321
  store i32 %call17, ptr %rc, align 4, !dbg !322, !tbaa !162
  %14 = load i32, ptr %rc, align 4, !dbg !323, !tbaa !162
  %cmp18 = icmp slt i32 %14, 0, !dbg !325
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !326

if.then19:                                        ; preds = %if.end16
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.9), !dbg !327
  br label %if.end20, !dbg !327

if.end20:                                         ; preds = %if.then19, %if.end16
  call void @freep(ptr noundef %target), !dbg !328
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #7, !dbg !328
  call void @llvm.lifetime.end.p0(i64 144, ptr %sb) #7, !dbg !328
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !328
  ret void, !dbg !328
}

; Function Attrs: nounwind
declare !dbg !329 i32 @chmod(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare !dbg !333 i32 @chown(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare !dbg !336 i32 @stat(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !341 i32 @mknod(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare !dbg !344 i32 @mount(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @make_symlinks(ptr noundef %dest) #0 !dbg !349 {
entry:
  %dest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %src = alloca [5 x ptr], align 16
  %dst = alloca [5 x ptr], align 16
  %link = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !351, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !362
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !352, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !362
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !353, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 40, ptr %src) #7, !dbg !365
  tail call void @llvm.dbg.declare(metadata ptr %src, metadata !354, metadata !DIExpression()), !dbg !366
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %src, ptr align 16 @__const.make_symlinks.src, i64 40, i1 false), !dbg !366
  call void @llvm.lifetime.start.p0(i64 40, ptr %dst) #7, !dbg !367
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !356, metadata !DIExpression()), !dbg !368
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %dst, ptr align 16 @__const.make_symlinks.dst, i64 40, i1 false), !dbg !368
  store i32 0, ptr %i, align 4, !dbg !369, !tbaa !162
  br label %for.cond, !dbg !370

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !371, !tbaa !162
  %conv = sext i32 %0 to i64, !dbg !371
  %cmp = icmp ult i64 %conv, 5, !dbg !372
  br i1 %cmp, label %for.body, label %for.end, !dbg !373

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #7, !dbg !374
  tail call void @llvm.dbg.declare(metadata ptr %link, metadata !357, metadata !DIExpression()), !dbg !375
  store ptr null, ptr %link, align 8, !dbg !375, !tbaa !150
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !376, !tbaa !150
  %2 = load i32, ptr %i, align 4, !dbg !377, !tbaa !162
  %idxprom = sext i32 %2 to i64, !dbg !378
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %dst, i64 0, i64 %idxprom, !dbg !378
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !378, !tbaa !150
  %call = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %link, ptr noundef @.str.20, ptr noundef %1, ptr noundef %3) #7, !dbg !379
  store i32 %call, ptr %rc, align 4, !dbg !380, !tbaa !162
  %4 = load i32, ptr %rc, align 4, !dbg !381, !tbaa !162
  %cmp2 = icmp slt i32 %4, 0, !dbg !383
  br i1 %cmp2, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %for.body
  call void (ptr, ...) @fail_printf(ptr noundef @.str.1), !dbg !385
  br label %if.end, !dbg !385

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i32, ptr %i, align 4, !dbg !386, !tbaa !162
  %idxprom4 = sext i32 %5 to i64, !dbg !387
  %arrayidx5 = getelementptr inbounds [5 x ptr], ptr %src, i64 0, i64 %idxprom4, !dbg !387
  %6 = load ptr, ptr %arrayidx5, align 8, !dbg !387, !tbaa !150
  %7 = load ptr, ptr %link, align 8, !dbg !388, !tbaa !150
  %call6 = call i32 @symlink(ptr noundef %6, ptr noundef %7) #7, !dbg !389
  store i32 %call6, ptr %rc, align 4, !dbg !390, !tbaa !162
  %8 = load i32, ptr %rc, align 4, !dbg !391, !tbaa !162
  %cmp7 = icmp slt i32 %8, 0, !dbg !393
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !394

if.then9:                                         ; preds = %if.end
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.3), !dbg !395
  br label %if.end10, !dbg !395

if.end10:                                         ; preds = %if.then9, %if.end
  call void @freep(ptr noundef %link), !dbg !396
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #7, !dbg !396
  br label %for.inc, !dbg !397

for.inc:                                          ; preds = %if.end10
  %9 = load i32, ptr %i, align 4, !dbg !398, !tbaa !162
  %inc = add nsw i32 %9, 1, !dbg !398
  store i32 %inc, ptr %i, align 4, !dbg !398, !tbaa !162
  br label %for.cond, !dbg !399, !llvm.loop !400

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40, ptr %dst) #7, !dbg !402
  call void @llvm.lifetime.end.p0(i64 40, ptr %src) #7, !dbg !402
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !402
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !402
  ret void, !dbg !402
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @copy_nodes(ptr noundef %dest) #0 !dbg !403 {
entry:
  %dest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %nodes = alloca [6 x ptr], align 16
  %sb = alloca %struct.stat, align 8
  %target = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !150
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !405, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !416
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !406, metadata !DIExpression()), !dbg !417
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !416
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !407, metadata !DIExpression()), !dbg !418
  call void @llvm.lifetime.start.p0(i64 48, ptr %nodes) #7, !dbg !419
  tail call void @llvm.dbg.declare(metadata ptr %nodes, metadata !408, metadata !DIExpression()), !dbg !420
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %nodes, ptr align 16 @__const.copy_nodes.nodes, i64 48, i1 false), !dbg !420
  store i32 0, ptr %i, align 4, !dbg !421, !tbaa !162
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !423, !tbaa !162
  %conv = sext i32 %0 to i64, !dbg !423
  %cmp = icmp ult i64 %conv, 6, !dbg !424
  br i1 %cmp, label %for.body, label %for.end, !dbg !425

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 144, ptr %sb) #7, !dbg !426
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !410, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #7, !dbg !428
  tail call void @llvm.dbg.declare(metadata ptr %target, metadata !414, metadata !DIExpression()), !dbg !429
  store ptr null, ptr %target, align 8, !dbg !429, !tbaa !150
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !430, !tbaa !150
  %2 = load i32, ptr %i, align 4, !dbg !431, !tbaa !162
  %idxprom = sext i32 %2 to i64, !dbg !432
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %nodes, i64 0, i64 %idxprom, !dbg !432
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !432, !tbaa !150
  %call = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %target, ptr noundef @.str.27, ptr noundef %1, ptr noundef %3) #7, !dbg !433
  store i32 %call, ptr %rc, align 4, !dbg !434, !tbaa !162
  %4 = load i32, ptr %rc, align 4, !dbg !435, !tbaa !162
  %cmp2 = icmp slt i32 %4, 0, !dbg !437
  br i1 %cmp2, label %if.then, label %if.end, !dbg !438

if.then:                                          ; preds = %for.body
  call void (ptr, ...) @fail_printf(ptr noundef @.str.1), !dbg !439
  br label %if.end, !dbg !439

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i32, ptr %i, align 4, !dbg !440, !tbaa !162
  %idxprom4 = sext i32 %5 to i64, !dbg !441
  %arrayidx5 = getelementptr inbounds [6 x ptr], ptr %nodes, i64 0, i64 %idxprom4, !dbg !441
  %6 = load ptr, ptr %arrayidx5, align 8, !dbg !441, !tbaa !150
  %call6 = call i32 @stat(ptr noundef %6, ptr noundef %sb) #7, !dbg !442
  store i32 %call6, ptr %rc, align 4, !dbg !443, !tbaa !162
  %7 = load i32, ptr %rc, align 4, !dbg !444, !tbaa !162
  %cmp7 = icmp slt i32 %7, 0, !dbg !446
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !447

if.then9:                                         ; preds = %if.end
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.6), !dbg !448
  br label %if.end10, !dbg !448

if.end10:                                         ; preds = %if.then9, %if.end
  %8 = load ptr, ptr %target, align 8, !dbg !449, !tbaa !150
  %st_mode = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 3, !dbg !450
  %9 = load i32, ptr %st_mode, align 8, !dbg !450, !tbaa !306
  %st_rdev = getelementptr inbounds %struct.stat, ptr %sb, i32 0, i32 7, !dbg !451
  %10 = load i64, ptr %st_rdev, align 8, !dbg !451, !tbaa !311
  %call11 = call i32 @mknod(ptr noundef %8, i32 noundef %9, i64 noundef %10) #7, !dbg !452
  store i32 %call11, ptr %rc, align 4, !dbg !453, !tbaa !162
  %11 = load i32, ptr %rc, align 4, !dbg !454, !tbaa !162
  %cmp12 = icmp slt i32 %11, 0, !dbg !456
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !457

if.then14:                                        ; preds = %if.end10
  call void (ptr, ...) @sysf_printf(ptr noundef @.str.8), !dbg !458
  br label %if.end15, !dbg !458

if.end15:                                         ; preds = %if.then14, %if.end10
  call void @freep(ptr noundef %target), !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 144, ptr %sb) #7, !dbg !459
  br label %for.inc, !dbg !460

for.inc:                                          ; preds = %if.end15
  %12 = load i32, ptr %i, align 4, !dbg !461, !tbaa !162
  %inc = add nsw i32 %12, 1, !dbg !461
  store i32 %inc, ptr %i, align 4, !dbg !461, !tbaa !162
  br label %for.cond, !dbg !462, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 48, ptr %nodes) #7, !dbg !465
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !465
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !465
  ret void, !dbg !465
}

; Function Attrs: nounwind
declare !dbg !466 void @free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!97}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "spack-src/src/dev.c", directory: "/local-ssd/pflask-sngep3v5y5lhffkqvvz3xxguxq6xajiv-build/aidengro/spack-stage-pflask-0.2-sngep3v5y5lhffkqvvz3xxguxq6xajiv", checksumkind: CSK_MD5, checksum: "9e50abeb3b7cae559162f01a75fa4493")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 14)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 8)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 7)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 15)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !24, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !24, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !3, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !14, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 16)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !49, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !49, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !19, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !24, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 11)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !3, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 6)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 9)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !19, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !19, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !19, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !3, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 13)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 5)
!97 = distinct !DICompileUnit(language: DW_LANG_C99, file: !98, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !99, retainedTypes: !131, globals: !134, splitDebugInlining: false, nameTableKind: None)
!98 = !DIFile(filename: "/local-ssd/pflask-sngep3v5y5lhffkqvvz3xxguxq6xajiv-build/aidengro/spack-stage-pflask-0.2-sngep3v5y5lhffkqvvz3xxguxq6xajiv/spack-src/src/dev.c", directory: "/local-ssd/pflask-sngep3v5y5lhffkqvvz3xxguxq6xajiv-build/aidengro/spack-stage-pflask-0.2-sngep3v5y5lhffkqvvz3xxguxq6xajiv/spack-build-sngep3v", checksumkind: CSK_MD5, checksum: "9e50abeb3b7cae559162f01a75fa4493")
!99 = !{!100}
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 33, baseType: !102, size: 32, elements: !103)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mount.h", directory: "", checksumkind: CSK_MD5, checksum: "c86e55d1b3ffa3f4d9d3b7efb9450899")
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!104 = !DIEnumerator(name: "MS_RDONLY", value: 1)
!105 = !DIEnumerator(name: "MS_NOSUID", value: 2)
!106 = !DIEnumerator(name: "MS_NODEV", value: 4)
!107 = !DIEnumerator(name: "MS_NOEXEC", value: 8)
!108 = !DIEnumerator(name: "MS_SYNCHRONOUS", value: 16)
!109 = !DIEnumerator(name: "MS_REMOUNT", value: 32)
!110 = !DIEnumerator(name: "MS_MANDLOCK", value: 64)
!111 = !DIEnumerator(name: "MS_DIRSYNC", value: 128)
!112 = !DIEnumerator(name: "MS_NOSYMFOLLOW", value: 256)
!113 = !DIEnumerator(name: "MS_NOATIME", value: 1024)
!114 = !DIEnumerator(name: "MS_NODIRATIME", value: 2048)
!115 = !DIEnumerator(name: "MS_BIND", value: 4096)
!116 = !DIEnumerator(name: "MS_MOVE", value: 8192)
!117 = !DIEnumerator(name: "MS_REC", value: 16384)
!118 = !DIEnumerator(name: "MS_SILENT", value: 32768)
!119 = !DIEnumerator(name: "MS_POSIXACL", value: 65536)
!120 = !DIEnumerator(name: "MS_UNBINDABLE", value: 131072)
!121 = !DIEnumerator(name: "MS_PRIVATE", value: 262144)
!122 = !DIEnumerator(name: "MS_SLAVE", value: 524288)
!123 = !DIEnumerator(name: "MS_SHARED", value: 1048576)
!124 = !DIEnumerator(name: "MS_RELATIME", value: 2097152)
!125 = !DIEnumerator(name: "MS_KERNMOUNT", value: 4194304)
!126 = !DIEnumerator(name: "MS_I_VERSION", value: 8388608)
!127 = !DIEnumerator(name: "MS_STRICTATIME", value: 16777216)
!128 = !DIEnumerator(name: "MS_LAZYTIME", value: 33554432)
!129 = !DIEnumerator(name: "MS_ACTIVE", value: 1073741824)
!130 = !DIEnumerator(name: "MS_NOUSER", value: -2147483648)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!134 = !{!0, !7, !12, !17, !22, !27, !29, !34, !39, !41, !43, !45, !47, !52, !54, !56, !58, !60, !65, !67, !69, !74, !79, !81, !83, !85, !87, !92}
!135 = !{i32 7, !"Dwarf Version", i32 5}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = !{i32 8, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!142 = distinct !DISubprogram(name: "make_ptmx", scope: !2, file: !2, line: 41, type: !143, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !146)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!146 = !{!147, !148, !149}
!147 = !DILocalVariable(name: "dest", arg: 1, scope: !142, file: !2, line: 41, type: !145)
!148 = !DILocalVariable(name: "rc", scope: !142, file: !2, line: 42, type: !102)
!149 = !DILocalVariable(name: "target", scope: !142, file: !2, line: 44, type: !145)
!150 = !{!151, !151, i64 0}
!151 = !{!"any pointer", !152, i64 0}
!152 = !{!"omnipotent char", !153, i64 0}
!153 = !{!"Simple C/C++ TBAA"}
!154 = !DILocation(line: 41, column: 22, scope: !142)
!155 = !DILocation(line: 42, column: 2, scope: !142)
!156 = !DILocation(line: 42, column: 6, scope: !142)
!157 = !DILocation(line: 44, column: 2, scope: !142)
!158 = !DILocation(line: 44, column: 15, scope: !142)
!159 = !DILocation(line: 46, column: 40, scope: !142)
!160 = !DILocation(line: 46, column: 7, scope: !142)
!161 = !DILocation(line: 46, column: 5, scope: !142)
!162 = !{!163, !163, i64 0}
!163 = !{!"int", !152, i64 0}
!164 = !DILocation(line: 47, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !142, file: !2, line: 47, column: 6)
!166 = !DILocation(line: 47, column: 9, scope: !165)
!167 = !DILocation(line: 47, column: 6, scope: !142)
!168 = !DILocation(line: 47, column: 14, scope: !165)
!169 = !DILocation(line: 49, column: 32, scope: !142)
!170 = !DILocation(line: 49, column: 7, scope: !142)
!171 = !DILocation(line: 49, column: 5, scope: !142)
!172 = !DILocation(line: 50, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !142, file: !2, line: 50, column: 6)
!174 = !DILocation(line: 50, column: 9, scope: !173)
!175 = !DILocation(line: 50, column: 6, scope: !142)
!176 = !DILocation(line: 50, column: 14, scope: !173)
!177 = !DILocation(line: 51, column: 1, scope: !142)
!178 = distinct !DISubprogram(name: "freep", scope: !179, file: !179, line: 37, type: !180, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !182)
!179 = !DIFile(filename: "spack-src/src/util.h", directory: "/local-ssd/pflask-sngep3v5y5lhffkqvvz3xxguxq6xajiv-build/aidengro/spack-stage-pflask-0.2-sngep3v5y5lhffkqvvz3xxguxq6xajiv", checksumkind: CSK_MD5, checksum: "082e393ece9f1958a2b3eb0d89933bd4")
!180 = !DISubroutineType(types: !181)
!181 = !{null, !132}
!182 = !{!183}
!183 = !DILocalVariable(name: "p", arg: 1, scope: !178, file: !179, line: 37, type: !132)
!184 = !DILocation(line: 37, column: 32, scope: !178)
!185 = !DILocation(line: 38, column: 6, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !179, line: 38, column: 6)
!187 = !DILocation(line: 38, column: 8, scope: !186)
!188 = !DILocation(line: 38, column: 6, scope: !178)
!189 = !DILocation(line: 39, column: 3, scope: !186)
!190 = !DILocation(line: 41, column: 18, scope: !178)
!191 = !DILocation(line: 41, column: 7, scope: !178)
!192 = !DILocation(line: 41, column: 2, scope: !178)
!193 = !DILocation(line: 43, column: 12, scope: !178)
!194 = !DILocation(line: 43, column: 14, scope: !178)
!195 = !DILocation(line: 44, column: 1, scope: !178)
!196 = !DISubprogram(name: "asprintf", scope: !197, file: !197, line: 396, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!198 = !DISubroutineType(types: !199)
!199 = !{!102, !200, !202, null}
!200 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!205 = !DISubprogram(name: "fail_printf", scope: !206, file: !206, line: 42, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DIFile(filename: "spack-src/src/printf.h", directory: "/local-ssd/pflask-sngep3v5y5lhffkqvvz3xxguxq6xajiv-build/aidengro/spack-stage-pflask-0.2-sngep3v5y5lhffkqvvz3xxguxq6xajiv", checksumkind: CSK_MD5, checksum: "643369c196f5f87f2891f02b48b58e51")
!207 = !DISubroutineType(types: !208)
!208 = !{null, !203, null}
!209 = !DISubprogram(name: "symlink", scope: !210, file: !210, line: 832, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!211 = !DISubroutineType(types: !212)
!212 = !{!102, !203, !203}
!213 = !DISubprogram(name: "sysf_printf", scope: !206, file: !206, line: 43, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = distinct !DISubprogram(name: "make_console", scope: !2, file: !2, line: 53, type: !215, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{null, !145, !145}
!217 = !{!218, !219, !220, !221, !263}
!218 = !DILocalVariable(name: "dest", arg: 1, scope: !214, file: !2, line: 53, type: !145)
!219 = !DILocalVariable(name: "console", arg: 2, scope: !214, file: !2, line: 53, type: !145)
!220 = !DILocalVariable(name: "rc", scope: !214, file: !2, line: 54, type: !102)
!221 = !DILocalVariable(name: "sb", scope: !214, file: !2, line: 56, type: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !223, line: 26, size: 1152, elements: !224)
!223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!224 = !{!225, !229, !231, !233, !236, !238, !240, !241, !242, !245, !247, !249, !257, !258, !259}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !222, file: !223, line: 31, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !227, line: 145, baseType: !228)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!228 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !222, file: !223, line: 36, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !227, line: 148, baseType: !228)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !222, file: !223, line: 44, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !227, line: 151, baseType: !228)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !222, file: !223, line: 45, baseType: !234, size: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !227, line: 150, baseType: !235)
!235 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !222, file: !223, line: 47, baseType: !237, size: 32, offset: 224)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !227, line: 146, baseType: !235)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !222, file: !223, line: 48, baseType: !239, size: 32, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !227, line: 147, baseType: !235)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !222, file: !223, line: 50, baseType: !102, size: 32, offset: 288)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !222, file: !223, line: 52, baseType: !226, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !222, file: !223, line: 57, baseType: !243, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !227, line: 152, baseType: !244)
!244 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !222, file: !223, line: 61, baseType: !246, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !227, line: 175, baseType: !244)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !222, file: !223, line: 63, baseType: !248, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !227, line: 180, baseType: !244)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !222, file: !223, line: 74, baseType: !250, size: 128, offset: 576)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !251, line: 11, size: 128, elements: !252)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !250, file: !251, line: 16, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !227, line: 160, baseType: !244)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !250, file: !251, line: 21, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !227, line: 197, baseType: !244)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !222, file: !223, line: 75, baseType: !250, size: 128, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !222, file: !223, line: 76, baseType: !250, size: 128, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !222, file: !223, line: 89, baseType: !260, size: 192, offset: 960)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 192, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 3)
!263 = !DILocalVariable(name: "target", scope: !214, file: !2, line: 57, type: !145)
!264 = !DILocation(line: 53, column: 25, scope: !214)
!265 = !DILocation(line: 53, column: 37, scope: !214)
!266 = !DILocation(line: 54, column: 2, scope: !214)
!267 = !DILocation(line: 54, column: 6, scope: !214)
!268 = !DILocation(line: 56, column: 2, scope: !214)
!269 = !DILocation(line: 56, column: 14, scope: !214)
!270 = !DILocation(line: 57, column: 2, scope: !214)
!271 = !DILocation(line: 57, column: 15, scope: !214)
!272 = !DILocation(line: 59, column: 13, scope: !214)
!273 = !DILocation(line: 59, column: 7, scope: !214)
!274 = !DILocation(line: 59, column: 5, scope: !214)
!275 = !DILocation(line: 60, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !214, file: !2, line: 60, column: 6)
!277 = !DILocation(line: 60, column: 9, scope: !276)
!278 = !DILocation(line: 60, column: 6, scope: !214)
!279 = !DILocation(line: 60, column: 14, scope: !276)
!280 = !DILocation(line: 62, column: 13, scope: !214)
!281 = !DILocation(line: 62, column: 7, scope: !214)
!282 = !DILocation(line: 62, column: 5, scope: !214)
!283 = !DILocation(line: 63, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !214, file: !2, line: 63, column: 6)
!285 = !DILocation(line: 63, column: 9, scope: !284)
!286 = !DILocation(line: 63, column: 6, scope: !214)
!287 = !DILocation(line: 63, column: 14, scope: !284)
!288 = !DILocation(line: 65, column: 12, scope: !214)
!289 = !DILocation(line: 65, column: 7, scope: !214)
!290 = !DILocation(line: 65, column: 5, scope: !214)
!291 = !DILocation(line: 66, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !214, file: !2, line: 66, column: 6)
!293 = !DILocation(line: 66, column: 9, scope: !292)
!294 = !DILocation(line: 66, column: 6, scope: !214)
!295 = !DILocation(line: 66, column: 14, scope: !292)
!296 = !DILocation(line: 68, column: 43, scope: !214)
!297 = !DILocation(line: 68, column: 7, scope: !214)
!298 = !DILocation(line: 68, column: 5, scope: !214)
!299 = !DILocation(line: 69, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !214, file: !2, line: 69, column: 6)
!301 = !DILocation(line: 69, column: 9, scope: !300)
!302 = !DILocation(line: 69, column: 6, scope: !214)
!303 = !DILocation(line: 69, column: 14, scope: !300)
!304 = !DILocation(line: 71, column: 13, scope: !214)
!305 = !DILocation(line: 71, column: 24, scope: !214)
!306 = !{!307, !163, i64 24}
!307 = !{!"stat", !308, i64 0, !308, i64 8, !308, i64 16, !163, i64 24, !163, i64 28, !163, i64 32, !163, i64 36, !308, i64 40, !308, i64 48, !308, i64 56, !308, i64 64, !309, i64 72, !309, i64 88, !309, i64 104, !152, i64 120}
!308 = !{!"long", !152, i64 0}
!309 = !{!"timespec", !308, i64 0, !308, i64 8}
!310 = !DILocation(line: 71, column: 36, scope: !214)
!311 = !{!307, !308, i64 40}
!312 = !DILocation(line: 71, column: 7, scope: !214)
!313 = !DILocation(line: 71, column: 5, scope: !214)
!314 = !DILocation(line: 72, column: 6, scope: !315)
!315 = distinct !DILexicalBlock(scope: !214, file: !2, line: 72, column: 6)
!316 = !DILocation(line: 72, column: 9, scope: !315)
!317 = !DILocation(line: 72, column: 6, scope: !214)
!318 = !DILocation(line: 72, column: 14, scope: !315)
!319 = !DILocation(line: 74, column: 13, scope: !214)
!320 = !DILocation(line: 74, column: 22, scope: !214)
!321 = !DILocation(line: 74, column: 7, scope: !214)
!322 = !DILocation(line: 74, column: 5, scope: !214)
!323 = !DILocation(line: 75, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !214, file: !2, line: 75, column: 6)
!325 = !DILocation(line: 75, column: 9, scope: !324)
!326 = !DILocation(line: 75, column: 6, scope: !214)
!327 = !DILocation(line: 75, column: 14, scope: !324)
!328 = !DILocation(line: 76, column: 1, scope: !214)
!329 = !DISubprogram(name: "chmod", scope: !330, file: !330, line: 352, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!331 = !DISubroutineType(types: !332)
!332 = !{!102, !203, !234}
!333 = !DISubprogram(name: "chown", scope: !210, file: !210, line: 493, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{!102, !203, !237, !239}
!336 = !DISubprogram(name: "stat", scope: !330, file: !330, line: 205, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{!102, !202, !339}
!339 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!341 = !DISubprogram(name: "mknod", scope: !330, file: !330, line: 404, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DISubroutineType(types: !343)
!343 = !{!102, !203, !234, !226}
!344 = !DISubprogram(name: "mount", scope: !101, file: !101, line: 140, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{!102, !203, !203, !203, !228, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!349 = distinct !DISubprogram(name: "make_symlinks", scope: !2, file: !2, line: 78, type: !143, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !350)
!350 = !{!351, !352, !353, !354, !356, !357}
!351 = !DILocalVariable(name: "dest", arg: 1, scope: !349, file: !2, line: 78, type: !145)
!352 = !DILocalVariable(name: "i", scope: !349, file: !2, line: 79, type: !102)
!353 = !DILocalVariable(name: "rc", scope: !349, file: !2, line: 79, type: !102)
!354 = !DILocalVariable(name: "src", scope: !349, file: !2, line: 81, type: !355)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 320, elements: !95)
!356 = !DILocalVariable(name: "dst", scope: !349, file: !2, line: 89, type: !355)
!357 = !DILocalVariable(name: "link", scope: !358, file: !2, line: 98, type: !145)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 97, column: 52)
!359 = distinct !DILexicalBlock(scope: !360, file: !2, line: 97, column: 2)
!360 = distinct !DILexicalBlock(scope: !349, file: !2, line: 97, column: 2)
!361 = !DILocation(line: 78, column: 26, scope: !349)
!362 = !DILocation(line: 79, column: 2, scope: !349)
!363 = !DILocation(line: 79, column: 6, scope: !349)
!364 = !DILocation(line: 79, column: 9, scope: !349)
!365 = !DILocation(line: 81, column: 2, scope: !349)
!366 = !DILocation(line: 81, column: 14, scope: !349)
!367 = !DILocation(line: 89, column: 2, scope: !349)
!368 = !DILocation(line: 89, column: 14, scope: !349)
!369 = !DILocation(line: 97, column: 9, scope: !360)
!370 = !DILocation(line: 97, column: 7, scope: !360)
!371 = !DILocation(line: 97, column: 14, scope: !359)
!372 = !DILocation(line: 97, column: 16, scope: !359)
!373 = !DILocation(line: 97, column: 2, scope: !360)
!374 = !DILocation(line: 98, column: 3, scope: !358)
!375 = !DILocation(line: 98, column: 16, scope: !358)
!376 = !DILocation(line: 100, column: 33, scope: !358)
!377 = !DILocation(line: 100, column: 43, scope: !358)
!378 = !DILocation(line: 100, column: 39, scope: !358)
!379 = !DILocation(line: 100, column: 8, scope: !358)
!380 = !DILocation(line: 100, column: 6, scope: !358)
!381 = !DILocation(line: 101, column: 7, scope: !382)
!382 = distinct !DILexicalBlock(scope: !358, file: !2, line: 101, column: 7)
!383 = !DILocation(line: 101, column: 10, scope: !382)
!384 = !DILocation(line: 101, column: 7, scope: !358)
!385 = !DILocation(line: 101, column: 15, scope: !382)
!386 = !DILocation(line: 103, column: 20, scope: !358)
!387 = !DILocation(line: 103, column: 16, scope: !358)
!388 = !DILocation(line: 103, column: 24, scope: !358)
!389 = !DILocation(line: 103, column: 8, scope: !358)
!390 = !DILocation(line: 103, column: 6, scope: !358)
!391 = !DILocation(line: 104, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !358, file: !2, line: 104, column: 7)
!393 = !DILocation(line: 104, column: 10, scope: !392)
!394 = !DILocation(line: 104, column: 7, scope: !358)
!395 = !DILocation(line: 104, column: 15, scope: !392)
!396 = !DILocation(line: 105, column: 2, scope: !359)
!397 = !DILocation(line: 105, column: 2, scope: !358)
!398 = !DILocation(line: 97, column: 48, scope: !359)
!399 = !DILocation(line: 97, column: 2, scope: !359)
!400 = distinct !{!400, !373, !401}
!401 = !DILocation(line: 105, column: 2, scope: !360)
!402 = !DILocation(line: 106, column: 1, scope: !349)
!403 = distinct !DISubprogram(name: "copy_nodes", scope: !2, file: !2, line: 108, type: !143, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !404)
!404 = !{!405, !406, !407, !408, !410, !414}
!405 = !DILocalVariable(name: "dest", arg: 1, scope: !403, file: !2, line: 108, type: !145)
!406 = !DILocalVariable(name: "i", scope: !403, file: !2, line: 109, type: !102)
!407 = !DILocalVariable(name: "rc", scope: !403, file: !2, line: 109, type: !102)
!408 = !DILocalVariable(name: "nodes", scope: !403, file: !2, line: 111, type: !409)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 384, elements: !72)
!410 = !DILocalVariable(name: "sb", scope: !411, file: !2, line: 121, type: !222)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 120, column: 56)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 120, column: 2)
!413 = distinct !DILexicalBlock(scope: !403, file: !2, line: 120, column: 2)
!414 = !DILocalVariable(name: "target", scope: !411, file: !2, line: 122, type: !145)
!415 = !DILocation(line: 108, column: 23, scope: !403)
!416 = !DILocation(line: 109, column: 2, scope: !403)
!417 = !DILocation(line: 109, column: 6, scope: !403)
!418 = !DILocation(line: 109, column: 9, scope: !403)
!419 = !DILocation(line: 111, column: 2, scope: !403)
!420 = !DILocation(line: 111, column: 14, scope: !403)
!421 = !DILocation(line: 120, column: 9, scope: !413)
!422 = !DILocation(line: 120, column: 7, scope: !413)
!423 = !DILocation(line: 120, column: 14, scope: !412)
!424 = !DILocation(line: 120, column: 16, scope: !412)
!425 = !DILocation(line: 120, column: 2, scope: !413)
!426 = !DILocation(line: 121, column: 3, scope: !411)
!427 = !DILocation(line: 121, column: 15, scope: !411)
!428 = !DILocation(line: 122, column: 3, scope: !411)
!429 = !DILocation(line: 122, column: 16, scope: !411)
!430 = !DILocation(line: 124, column: 34, scope: !411)
!431 = !DILocation(line: 124, column: 46, scope: !411)
!432 = !DILocation(line: 124, column: 40, scope: !411)
!433 = !DILocation(line: 124, column: 8, scope: !411)
!434 = !DILocation(line: 124, column: 6, scope: !411)
!435 = !DILocation(line: 125, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !411, file: !2, line: 125, column: 7)
!437 = !DILocation(line: 125, column: 10, scope: !436)
!438 = !DILocation(line: 125, column: 7, scope: !411)
!439 = !DILocation(line: 125, column: 15, scope: !436)
!440 = !DILocation(line: 127, column: 19, scope: !411)
!441 = !DILocation(line: 127, column: 13, scope: !411)
!442 = !DILocation(line: 127, column: 8, scope: !411)
!443 = !DILocation(line: 127, column: 6, scope: !411)
!444 = !DILocation(line: 128, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !411, file: !2, line: 128, column: 7)
!446 = !DILocation(line: 128, column: 10, scope: !445)
!447 = !DILocation(line: 128, column: 7, scope: !411)
!448 = !DILocation(line: 128, column: 15, scope: !445)
!449 = !DILocation(line: 130, column: 14, scope: !411)
!450 = !DILocation(line: 130, column: 25, scope: !411)
!451 = !DILocation(line: 130, column: 37, scope: !411)
!452 = !DILocation(line: 130, column: 8, scope: !411)
!453 = !DILocation(line: 130, column: 6, scope: !411)
!454 = !DILocation(line: 131, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !411, file: !2, line: 131, column: 7)
!456 = !DILocation(line: 131, column: 10, scope: !455)
!457 = !DILocation(line: 131, column: 7, scope: !411)
!458 = !DILocation(line: 131, column: 15, scope: !455)
!459 = !DILocation(line: 132, column: 2, scope: !412)
!460 = !DILocation(line: 132, column: 2, scope: !411)
!461 = !DILocation(line: 120, column: 52, scope: !412)
!462 = !DILocation(line: 120, column: 2, scope: !412)
!463 = distinct !{!463, !425, !464}
!464 = !DILocation(line: 132, column: 2, scope: !413)
!465 = !DILocation(line: 133, column: 1, scope: !403)
!466 = !DISubprogram(name: "free", scope: !467, file: !467, line: 555, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")

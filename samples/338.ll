; ModuleID = 'samples/338.bc'
source_filename = "cram/open_trace_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"RAWDATA\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [4 x i8] c".gz\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [4 x i8] c".sz\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [3 x i8] c".Z\00", align 1, !dbg !24
@__const.open_path_mfile.suffix = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.3], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !33

; Function Attrs: nounwind uwtable
define dso_local ptr @tokenise_search_path(ptr noundef %searchpath) #0 !dbg !47 {
entry:
  %retval = alloca ptr, align 8
  %searchpath.addr = alloca ptr, align 8
  %newsearch = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i64, align 8
  %path_sep = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %searchpath, ptr %searchpath.addr, align 8, !tbaa !61
  tail call void @llvm.dbg.declare(metadata ptr %searchpath.addr, metadata !51, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %newsearch) #8, !dbg !66
  tail call void @llvm.dbg.declare(metadata ptr %newsearch, metadata !52, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !68
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !53, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8, !dbg !68
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !55, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !71
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !56, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 1, ptr %path_sep) #8, !dbg !73
  tail call void @llvm.dbg.declare(metadata ptr %path_sep, metadata !60, metadata !DIExpression()), !dbg !74
  store i8 58, ptr %path_sep, align 1, !dbg !74, !tbaa !75
  %0 = load ptr, ptr %searchpath.addr, align 8, !dbg !76, !tbaa !61
  %tobool = icmp ne ptr %0, null, !dbg !76
  br i1 %tobool, label %if.end, label %if.then, !dbg !78

if.then:                                          ; preds = %entry
  store ptr @.str, ptr %searchpath.addr, align 8, !dbg !79, !tbaa !61
  br label %if.end, !dbg !80

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %searchpath.addr, align 8, !dbg !81, !tbaa !61
  %call = call i64 @strlen(ptr noundef %1) #9, !dbg !82
  store i64 %call, ptr %len, align 8, !dbg !83, !tbaa !84
  %add = add i64 %call, 5, !dbg !86
  %call1 = call noalias ptr @malloc(i64 noundef %add) #10, !dbg !87
  store ptr %call1, ptr %newsearch, align 8, !dbg !88, !tbaa !61
  %2 = load ptr, ptr %newsearch, align 8, !dbg !89, !tbaa !61
  %tobool2 = icmp ne ptr %2, null, !dbg !89
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !91

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !92
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !92

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !93, !tbaa !95
  store i32 0, ptr %j, align 4, !dbg !97, !tbaa !95
  br label %for.cond, !dbg !98

for.cond:                                         ; preds = %for.inc, %if.end4
  %3 = load i32, ptr %i, align 4, !dbg !99, !tbaa !95
  %conv = zext i32 %3 to i64, !dbg !99
  %4 = load i64, ptr %len, align 8, !dbg !101, !tbaa !84
  %cmp = icmp ult i64 %conv, %4, !dbg !102
  br i1 %cmp, label %for.body, label %for.end, !dbg !103

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !dbg !104, !tbaa !95
  %conv6 = zext i32 %5 to i64, !dbg !104
  %6 = load i64, ptr %len, align 8, !dbg !107, !tbaa !84
  %sub = sub i64 %6, 1, !dbg !108
  %cmp7 = icmp ult i64 %conv6, %sub, !dbg !109
  br i1 %cmp7, label %land.lhs.true, label %if.end23, !dbg !110

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %searchpath.addr, align 8, !dbg !111, !tbaa !61
  %8 = load i32, ptr %i, align 4, !dbg !112, !tbaa !95
  %idxprom = zext i32 %8 to i64, !dbg !111
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom, !dbg !111
  %9 = load i8, ptr %arrayidx, align 1, !dbg !111, !tbaa !75
  %conv9 = sext i8 %9 to i32, !dbg !111
  %cmp10 = icmp eq i32 %conv9, 58, !dbg !113
  br i1 %cmp10, label %land.lhs.true12, label %if.end23, !dbg !114

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = load ptr, ptr %searchpath.addr, align 8, !dbg !115, !tbaa !61
  %11 = load i32, ptr %i, align 4, !dbg !116, !tbaa !95
  %add13 = add i32 %11, 1, !dbg !117
  %idxprom14 = zext i32 %add13 to i64, !dbg !115
  %arrayidx15 = getelementptr inbounds i8, ptr %10, i64 %idxprom14, !dbg !115
  %12 = load i8, ptr %arrayidx15, align 1, !dbg !115, !tbaa !75
  %conv16 = sext i8 %12 to i32, !dbg !115
  %cmp17 = icmp eq i32 %conv16, 58, !dbg !118
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !119

if.then19:                                        ; preds = %land.lhs.true12
  %13 = load ptr, ptr %newsearch, align 8, !dbg !120, !tbaa !61
  %14 = load i32, ptr %j, align 4, !dbg !122, !tbaa !95
  %inc = add i32 %14, 1, !dbg !122
  store i32 %inc, ptr %j, align 4, !dbg !122, !tbaa !95
  %idxprom20 = zext i32 %14 to i64, !dbg !120
  %arrayidx21 = getelementptr inbounds i8, ptr %13, i64 %idxprom20, !dbg !120
  store i8 58, ptr %arrayidx21, align 1, !dbg !123, !tbaa !75
  %15 = load i32, ptr %i, align 4, !dbg !124, !tbaa !95
  %inc22 = add i32 %15, 1, !dbg !124
  store i32 %inc22, ptr %i, align 4, !dbg !124, !tbaa !95
  br label %for.inc, !dbg !125

if.end23:                                         ; preds = %land.lhs.true12, %land.lhs.true, %for.body
  %16 = load ptr, ptr %searchpath.addr, align 8, !dbg !126, !tbaa !61
  %17 = load i32, ptr %i, align 4, !dbg !128, !tbaa !95
  %idxprom24 = zext i32 %17 to i64, !dbg !126
  %arrayidx25 = getelementptr inbounds i8, ptr %16, i64 %idxprom24, !dbg !126
  %18 = load i8, ptr %arrayidx25, align 1, !dbg !126, !tbaa !75
  %conv26 = sext i8 %18 to i32, !dbg !126
  %19 = load i8, ptr %path_sep, align 1, !dbg !129, !tbaa !75
  %conv27 = sext i8 %19 to i32, !dbg !129
  %cmp28 = icmp eq i32 %conv26, %conv27, !dbg !130
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !131

if.then30:                                        ; preds = %if.end23
  %20 = load i32, ptr %j, align 4, !dbg !132, !tbaa !95
  %tobool31 = icmp ne i32 %20, 0, !dbg !132
  br i1 %tobool31, label %land.lhs.true32, label %if.end43, !dbg !135

land.lhs.true32:                                  ; preds = %if.then30
  %21 = load ptr, ptr %newsearch, align 8, !dbg !136, !tbaa !61
  %22 = load i32, ptr %j, align 4, !dbg !137, !tbaa !95
  %sub33 = sub i32 %22, 1, !dbg !138
  %idxprom34 = zext i32 %sub33 to i64, !dbg !136
  %arrayidx35 = getelementptr inbounds i8, ptr %21, i64 %idxprom34, !dbg !136
  %23 = load i8, ptr %arrayidx35, align 1, !dbg !136, !tbaa !75
  %conv36 = sext i8 %23 to i32, !dbg !136
  %cmp37 = icmp ne i32 %conv36, 0, !dbg !139
  br i1 %cmp37, label %if.then39, label %if.end43, !dbg !140

if.then39:                                        ; preds = %land.lhs.true32
  %24 = load ptr, ptr %newsearch, align 8, !dbg !141, !tbaa !61
  %25 = load i32, ptr %j, align 4, !dbg !142, !tbaa !95
  %inc40 = add i32 %25, 1, !dbg !142
  store i32 %inc40, ptr %j, align 4, !dbg !142, !tbaa !95
  %idxprom41 = zext i32 %25 to i64, !dbg !141
  %arrayidx42 = getelementptr inbounds i8, ptr %24, i64 %idxprom41, !dbg !141
  store i8 0, ptr %arrayidx42, align 1, !dbg !143, !tbaa !75
  br label %if.end43, !dbg !141

if.end43:                                         ; preds = %if.then39, %land.lhs.true32, %if.then30
  br label %if.end49, !dbg !144

if.else:                                          ; preds = %if.end23
  %26 = load ptr, ptr %searchpath.addr, align 8, !dbg !145, !tbaa !61
  %27 = load i32, ptr %i, align 4, !dbg !147, !tbaa !95
  %idxprom44 = zext i32 %27 to i64, !dbg !145
  %arrayidx45 = getelementptr inbounds i8, ptr %26, i64 %idxprom44, !dbg !145
  %28 = load i8, ptr %arrayidx45, align 1, !dbg !145, !tbaa !75
  %29 = load ptr, ptr %newsearch, align 8, !dbg !148, !tbaa !61
  %30 = load i32, ptr %j, align 4, !dbg !149, !tbaa !95
  %inc46 = add i32 %30, 1, !dbg !149
  store i32 %inc46, ptr %j, align 4, !dbg !149, !tbaa !95
  %idxprom47 = zext i32 %30 to i64, !dbg !148
  %arrayidx48 = getelementptr inbounds i8, ptr %29, i64 %idxprom47, !dbg !148
  store i8 %28, ptr %arrayidx48, align 1, !dbg !150, !tbaa !75
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.end43
  br label %for.inc, !dbg !151

for.inc:                                          ; preds = %if.end49, %if.then19
  %31 = load i32, ptr %i, align 4, !dbg !152, !tbaa !95
  %inc50 = add i32 %31, 1, !dbg !152
  store i32 %inc50, ptr %i, align 4, !dbg !152, !tbaa !95
  br label %for.cond, !dbg !153, !llvm.loop !154

for.end:                                          ; preds = %for.cond
  %32 = load i32, ptr %j, align 4, !dbg !157, !tbaa !95
  %tobool51 = icmp ne i32 %32, 0, !dbg !157
  br i1 %tobool51, label %if.then52, label %if.end56, !dbg !159

if.then52:                                        ; preds = %for.end
  %33 = load ptr, ptr %newsearch, align 8, !dbg !160, !tbaa !61
  %34 = load i32, ptr %j, align 4, !dbg !161, !tbaa !95
  %inc53 = add i32 %34, 1, !dbg !161
  store i32 %inc53, ptr %j, align 4, !dbg !161, !tbaa !95
  %idxprom54 = zext i32 %34 to i64, !dbg !160
  %arrayidx55 = getelementptr inbounds i8, ptr %33, i64 %idxprom54, !dbg !160
  store i8 0, ptr %arrayidx55, align 1, !dbg !162, !tbaa !75
  br label %if.end56, !dbg !160

if.end56:                                         ; preds = %if.then52, %for.end
  %35 = load ptr, ptr %newsearch, align 8, !dbg !163, !tbaa !61
  %36 = load i32, ptr %j, align 4, !dbg !164, !tbaa !95
  %inc57 = add i32 %36, 1, !dbg !164
  store i32 %inc57, ptr %j, align 4, !dbg !164, !tbaa !95
  %idxprom58 = zext i32 %36 to i64, !dbg !163
  %arrayidx59 = getelementptr inbounds i8, ptr %35, i64 %idxprom58, !dbg !163
  store i8 46, ptr %arrayidx59, align 1, !dbg !165, !tbaa !75
  %37 = load ptr, ptr %newsearch, align 8, !dbg !166, !tbaa !61
  %38 = load i32, ptr %j, align 4, !dbg !167, !tbaa !95
  %inc60 = add i32 %38, 1, !dbg !167
  store i32 %inc60, ptr %j, align 4, !dbg !167, !tbaa !95
  %idxprom61 = zext i32 %38 to i64, !dbg !166
  %arrayidx62 = getelementptr inbounds i8, ptr %37, i64 %idxprom61, !dbg !166
  store i8 47, ptr %arrayidx62, align 1, !dbg !168, !tbaa !75
  %39 = load ptr, ptr %newsearch, align 8, !dbg !169, !tbaa !61
  %40 = load i32, ptr %j, align 4, !dbg !170, !tbaa !95
  %inc63 = add i32 %40, 1, !dbg !170
  store i32 %inc63, ptr %j, align 4, !dbg !170, !tbaa !95
  %idxprom64 = zext i32 %40 to i64, !dbg !169
  %arrayidx65 = getelementptr inbounds i8, ptr %39, i64 %idxprom64, !dbg !169
  store i8 0, ptr %arrayidx65, align 1, !dbg !171, !tbaa !75
  %41 = load ptr, ptr %newsearch, align 8, !dbg !172, !tbaa !61
  %42 = load i32, ptr %j, align 4, !dbg !173, !tbaa !95
  %inc66 = add i32 %42, 1, !dbg !173
  store i32 %inc66, ptr %j, align 4, !dbg !173, !tbaa !95
  %idxprom67 = zext i32 %42 to i64, !dbg !172
  %arrayidx68 = getelementptr inbounds i8, ptr %41, i64 %idxprom67, !dbg !172
  store i8 0, ptr %arrayidx68, align 1, !dbg !174, !tbaa !75
  %43 = load ptr, ptr %newsearch, align 8, !dbg !175, !tbaa !61
  store ptr %43, ptr %retval, align 8, !dbg !176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %if.end56, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr %path_sep) #8, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8, !dbg !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !177
  call void @llvm.lifetime.end.p0(i64 8, ptr %newsearch) #8, !dbg !177
  %44 = load ptr, ptr %retval, align 8, !dbg !177
  ret ptr %44, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare !dbg !178 noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !182 i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @open_path_mfile(ptr noundef %file, ptr noundef %path, ptr noundef %relative_to) #0 !dbg !188 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %relative_to.addr = alloca ptr, align 8
  %newsearch = alloca ptr, align 8
  %ele = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %suffix = alloca [6 x ptr], align 16
  %file2 = alloca [1024 x i8], align 16
  %ele2 = alloca ptr, align 8
  %valid = alloca i32, align 4
  %cp = alloca ptr, align 8
  %relative_path = alloca [4097 x i8], align 16
  store ptr %file, ptr %file.addr, align 8, !tbaa !61
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !259, metadata !DIExpression()), !dbg !289
  store ptr %path, ptr %path.addr, align 8, !tbaa !61
  tail call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !260, metadata !DIExpression()), !dbg !290
  store ptr %relative_to, ptr %relative_to.addr, align 8, !tbaa !61
  tail call void @llvm.dbg.declare(metadata ptr %relative_to.addr, metadata !261, metadata !DIExpression()), !dbg !291
  call void @llvm.lifetime.start.p0(i64 8, ptr %newsearch) #8, !dbg !292
  tail call void @llvm.dbg.declare(metadata ptr %newsearch, metadata !262, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 8, ptr %ele) #8, !dbg !294
  tail call void @llvm.dbg.declare(metadata ptr %ele, metadata !263, metadata !DIExpression()), !dbg !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #8, !dbg !296
  tail call void @llvm.dbg.declare(metadata ptr %fp, metadata !264, metadata !DIExpression()), !dbg !297
  %0 = load ptr, ptr %path.addr, align 8, !dbg !298, !tbaa !61
  %tobool = icmp ne ptr %0, null, !dbg !298
  br i1 %tobool, label %if.end, label %if.then, !dbg !300

if.then:                                          ; preds = %entry
  %call = call ptr @getenv(ptr noundef @.str.1) #8, !dbg !301
  store ptr %call, ptr %path.addr, align 8, !dbg !302, !tbaa !61
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %path.addr, align 8, !dbg !304, !tbaa !61
  %call1 = call ptr @tokenise_search_path(ptr noundef %1), !dbg !306
  store ptr %call1, ptr %newsearch, align 8, !dbg !307, !tbaa !61
  %cmp = icmp eq ptr null, %call1, !dbg !308
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !309

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !310

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %newsearch, align 8, !dbg !311, !tbaa !61
  store ptr %2, ptr %ele, align 8, !dbg !312, !tbaa !61
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc27, %if.end3
  %3 = load ptr, ptr %ele, align 8, !dbg !314, !tbaa !61
  %4 = load i8, ptr %3, align 1, !dbg !315, !tbaa !75
  %tobool4 = icmp ne i8 %4, 0, !dbg !316
  br i1 %tobool4, label %for.body, label %for.end30, !dbg !316

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !317
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !265, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 48, ptr %suffix) #8, !dbg !319
  tail call void @llvm.dbg.declare(metadata ptr %suffix, metadata !269, metadata !DIExpression()), !dbg !320
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %suffix, ptr align 16 @__const.open_path_mfile.suffix, i64 48, i1 false), !dbg !320
  store i32 0, ptr %i, align 4, !dbg !321, !tbaa !95
  br label %for.cond5, !dbg !322

for.cond5:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %i, align 4, !dbg !323, !tbaa !95
  %cmp6 = icmp slt i32 %5, 6, !dbg !324
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !325

for.body7:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 1024, ptr %file2) #8, !dbg !326
  tail call void @llvm.dbg.declare(metadata ptr %file2, metadata !273, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 8, ptr %ele2) #8, !dbg !328
  tail call void @llvm.dbg.declare(metadata ptr %ele2, metadata !280, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 4, ptr %valid) #8, !dbg !330
  tail call void @llvm.dbg.declare(metadata ptr %valid, metadata !281, metadata !DIExpression()), !dbg !331
  store i32 1, ptr %valid, align 4, !dbg !331, !tbaa !95
  %6 = load ptr, ptr %ele, align 8, !dbg !332, !tbaa !61
  %7 = load i8, ptr %6, align 1, !dbg !334, !tbaa !75
  %conv = sext i8 %7 to i32, !dbg !334
  %cmp8 = icmp eq i32 %conv, 124, !dbg !335
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !336

if.then10:                                        ; preds = %for.body7
  %8 = load ptr, ptr %ele, align 8, !dbg !337, !tbaa !61
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 1, !dbg !339
  store ptr %add.ptr, ptr %ele2, align 8, !dbg !340, !tbaa !61
  %9 = load i32, ptr %i, align 4, !dbg !341, !tbaa !95
  %cmp11 = icmp eq i32 %9, 0, !dbg !342
  %conv12 = zext i1 %cmp11 to i32, !dbg !342
  store i32 %conv12, ptr %valid, align 4, !dbg !343, !tbaa !95
  br label %if.end13, !dbg !344

if.else:                                          ; preds = %for.body7
  %10 = load ptr, ptr %ele, align 8, !dbg !345, !tbaa !61
  store ptr %10, ptr %ele2, align 8, !dbg !347, !tbaa !61
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %file2, i64 0, i64 0, !dbg !348
  %11 = load ptr, ptr %file.addr, align 8, !dbg !349, !tbaa !61
  %12 = load i32, ptr %i, align 4, !dbg !350, !tbaa !95
  %idxprom = sext i32 %12 to i64, !dbg !351
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %suffix, i64 0, i64 %idxprom, !dbg !351
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !351, !tbaa !61
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.6, ptr noundef %11, ptr noundef %13) #8, !dbg !352
  %14 = load i32, ptr %valid, align 4, !dbg !353, !tbaa !95
  %tobool15 = icmp ne i32 %14, 0, !dbg !353
  br i1 %tobool15, label %land.lhs.true, label %if.end20, !dbg !355

land.lhs.true:                                    ; preds = %if.end13
  %arraydecay16 = getelementptr inbounds [1024 x i8], ptr %file2, i64 0, i64 0, !dbg !356
  %15 = load ptr, ptr %ele2, align 8, !dbg !357, !tbaa !61
  %call17 = call ptr @find_file_dir(ptr noundef %arraydecay16, ptr noundef %15), !dbg !358
  store ptr %call17, ptr %fp, align 8, !dbg !359, !tbaa !61
  %tobool18 = icmp ne ptr %call17, null, !dbg !359
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !360

if.then19:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %newsearch, align 8, !dbg !361, !tbaa !61
  call void @free(ptr noundef %16) #8, !dbg !363
  %17 = load ptr, ptr %fp, align 8, !dbg !364, !tbaa !61
  store ptr %17, ptr %retval, align 8, !dbg !365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !365

if.end20:                                         ; preds = %land.lhs.true, %if.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !366
  br label %cleanup, !dbg !366

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %valid) #8, !dbg !366
  call void @llvm.lifetime.end.p0(i64 8, ptr %ele2) #8, !dbg !366
  call void @llvm.lifetime.end.p0(i64 1024, ptr %file2) #8, !dbg !366
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i32, ptr %i, align 4, !dbg !368, !tbaa !95
  %inc = add nsw i32 %18, 1, !dbg !368
  store i32 %inc, ptr %i, align 4, !dbg !368, !tbaa !95
  br label %for.cond5, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond5
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !372
  br label %cleanup23, !dbg !372

cleanup23:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr %suffix) #8, !dbg !372
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !372
  %cleanup.dest25 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest25, label %cleanup50 [
    i32 0, label %cleanup.cont26
  ]

cleanup.cont26:                                   ; preds = %cleanup23
  br label %for.inc27, !dbg !373

for.inc27:                                        ; preds = %cleanup.cont26
  %19 = load ptr, ptr %ele, align 8, !dbg !374, !tbaa !61
  %call28 = call i64 @strlen(ptr noundef %19) #9, !dbg !375
  %add = add i64 %call28, 1, !dbg !376
  %20 = load ptr, ptr %ele, align 8, !dbg !377, !tbaa !61
  %add.ptr29 = getelementptr inbounds i8, ptr %20, i64 %add, !dbg !377
  store ptr %add.ptr29, ptr %ele, align 8, !dbg !377, !tbaa !61
  br label %for.cond, !dbg !378, !llvm.loop !379

for.end30:                                        ; preds = %for.cond
  %21 = load ptr, ptr %newsearch, align 8, !dbg !381, !tbaa !61
  call void @free(ptr noundef %21) #8, !dbg !382
  %22 = load ptr, ptr %relative_to.addr, align 8, !dbg !383, !tbaa !61
  %tobool31 = icmp ne ptr %22, null, !dbg !383
  br i1 %tobool31, label %if.then32, label %if.end49, !dbg !384

if.then32:                                        ; preds = %for.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #8, !dbg !385
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !282, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 4097, ptr %relative_path) #8, !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %relative_path, metadata !285, metadata !DIExpression()), !dbg !388
  %arraydecay33 = getelementptr inbounds [4097 x i8], ptr %relative_path, i64 0, i64 0, !dbg !389
  %23 = load ptr, ptr %relative_to.addr, align 8, !dbg !390, !tbaa !61
  %call34 = call ptr @strcpy(ptr noundef %arraydecay33, ptr noundef %23) #8, !dbg !391
  %arraydecay35 = getelementptr inbounds [4097 x i8], ptr %relative_path, i64 0, i64 0, !dbg !392
  %call36 = call ptr @strrchr(ptr noundef %arraydecay35, i32 noundef 47) #9, !dbg !394
  store ptr %call36, ptr %cp, align 8, !dbg !395, !tbaa !61
  %tobool37 = icmp ne ptr %call36, null, !dbg !395
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !396

if.then38:                                        ; preds = %if.then32
  %24 = load ptr, ptr %cp, align 8, !dbg !397, !tbaa !61
  store i8 0, ptr %24, align 1, !dbg !398, !tbaa !75
  br label %if.end39, !dbg !399

if.end39:                                         ; preds = %if.then38, %if.then32
  %25 = load ptr, ptr %file.addr, align 8, !dbg !400, !tbaa !61
  %arraydecay40 = getelementptr inbounds [4097 x i8], ptr %relative_path, i64 0, i64 0, !dbg !402
  %call41 = call ptr @find_file_dir(ptr noundef %25, ptr noundef %arraydecay40), !dbg !403
  store ptr %call41, ptr %fp, align 8, !dbg !404, !tbaa !61
  %tobool42 = icmp ne ptr %call41, null, !dbg !404
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !405

if.then43:                                        ; preds = %if.end39
  %26 = load ptr, ptr %fp, align 8, !dbg !406, !tbaa !61
  store ptr %26, ptr %retval, align 8, !dbg !407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !407

if.end44:                                         ; preds = %if.end39
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !408
  br label %cleanup45, !dbg !408

cleanup45:                                        ; preds = %if.end44, %if.then43
  call void @llvm.lifetime.end.p0(i64 4097, ptr %relative_path) #8, !dbg !408
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #8, !dbg !408
  %cleanup.dest47 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest47, label %cleanup50 [
    i32 0, label %cleanup.cont48
  ]

cleanup.cont48:                                   ; preds = %cleanup45
  br label %if.end49, !dbg !409

if.end49:                                         ; preds = %cleanup.cont48, %for.end30
  store ptr null, ptr %retval, align 8, !dbg !410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !410

cleanup50:                                        ; preds = %if.end49, %cleanup45, %cleanup23, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %ele) #8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %newsearch) #8, !dbg !411
  %27 = load ptr, ptr %retval, align 8, !dbg !411
  ret ptr %27, !dbg !411
}

; Function Attrs: nounwind
declare !dbg !412 ptr @getenv(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !415 i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind uwtable
define internal ptr @find_file_dir(ptr noundef %file, ptr noundef %dirname) #0 !dbg !421 {
entry:
  %retval = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %dirname.addr = alloca ptr, align 8
  %path = alloca [4097 x i8], align 16
  %len = alloca i64, align 8
  %cp = alloca ptr, align 8
  %path_end = alloca ptr, align 8
  %endp = alloca ptr, align 8
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !61
  tail call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !425, metadata !DIExpression()), !dbg !436
  store ptr %dirname, ptr %dirname.addr, align 8, !tbaa !61
  tail call void @llvm.dbg.declare(metadata ptr %dirname.addr, metadata !426, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 4097, ptr %path) #8, !dbg !438
  tail call void @llvm.dbg.declare(metadata ptr %path, metadata !427, metadata !DIExpression()), !dbg !439
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !440
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !428, metadata !DIExpression()), !dbg !441
  %0 = load ptr, ptr %dirname.addr, align 8, !dbg !442, !tbaa !61
  %call = call i64 @strlen(ptr noundef %0) #9, !dbg !443
  store i64 %call, ptr %len, align 8, !dbg !441, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #8, !dbg !444
  tail call void @llvm.dbg.declare(metadata ptr %cp, metadata !429, metadata !DIExpression()), !dbg !445
  %1 = load ptr, ptr %dirname.addr, align 8, !dbg !446, !tbaa !61
  %2 = load i64, ptr %len, align 8, !dbg !448, !tbaa !84
  %sub = sub i64 %2, 1, !dbg !449
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %sub, !dbg !446
  %3 = load i8, ptr %arrayidx, align 1, !dbg !446, !tbaa !75
  %conv = sext i8 %3 to i32, !dbg !446
  %cmp = icmp eq i32 %conv, 47, !dbg !450
  br i1 %cmp, label %if.then, label %if.end, !dbg !451

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %len, align 8, !dbg !452, !tbaa !84
  %dec = add i64 %4, -1, !dbg !452
  store i64 %dec, ptr %len, align 8, !dbg !452, !tbaa !84
  br label %if.end, !dbg !453

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %file.addr, align 8, !dbg !454, !tbaa !61
  %6 = load i8, ptr %5, align 1, !dbg !455, !tbaa !75
  %conv2 = sext i8 %6 to i32, !dbg !455
  %cmp3 = icmp eq i32 %conv2, 47, !dbg !456
  br i1 %cmp3, label %if.then10, label %lor.lhs.false, !dbg !457

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, ptr %len, align 8, !dbg !458, !tbaa !84
  %cmp5 = icmp eq i64 %7, 1, !dbg !459
  br i1 %cmp5, label %land.lhs.true, label %if.else, !dbg !460

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load ptr, ptr %dirname.addr, align 8, !dbg !461, !tbaa !61
  %9 = load i8, ptr %8, align 1, !dbg !462, !tbaa !75
  %conv7 = sext i8 %9 to i32, !dbg !462
  %cmp8 = icmp eq i32 %conv7, 46, !dbg !463
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !464

if.then10:                                        ; preds = %land.lhs.true, %if.end
  %arraydecay = getelementptr inbounds [4097 x i8], ptr %path, i64 0, i64 0, !dbg !465
  %10 = load ptr, ptr %file.addr, align 8, !dbg !467, !tbaa !61
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.7, ptr noundef %10) #8, !dbg !468
  br label %if.end82, !dbg !469

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %path_end) #8, !dbg !470
  tail call void @llvm.dbg.declare(metadata ptr %path_end, metadata !430, metadata !DIExpression()), !dbg !471
  %arraydecay12 = getelementptr inbounds [4097 x i8], ptr %path, i64 0, i64 0, !dbg !472
  store ptr %arraydecay12, ptr %path_end, align 8, !dbg !471, !tbaa !61
  %arraydecay13 = getelementptr inbounds [4097 x i8], ptr %path, i64 0, i64 0, !dbg !473
  store i8 0, ptr %arraydecay13, align 16, !dbg !474, !tbaa !75
  br label %while.cond, !dbg !475

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.else
  %11 = load ptr, ptr %dirname.addr, align 8, !dbg !476, !tbaa !61
  %call14 = call ptr @strchr(ptr noundef %11, i32 noundef 37) #9, !dbg !477
  store ptr %call14, ptr %cp, align 8, !dbg !478, !tbaa !61
  %tobool = icmp ne ptr %call14, null, !dbg !475
  br i1 %tobool, label %while.body, label %while.end, !dbg !475

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %endp) #8, !dbg !479
  tail call void @llvm.dbg.declare(metadata ptr %endp, metadata !433, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #8, !dbg !481
  tail call void @llvm.dbg.declare(metadata ptr %l, metadata !435, metadata !DIExpression()), !dbg !482
  %12 = load ptr, ptr %cp, align 8, !dbg !483, !tbaa !61
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 1, !dbg !484
  %call15 = call i64 @strtol(ptr noundef %add.ptr, ptr noundef %endp, i32 noundef 10) #8, !dbg !485
  store i64 %call15, ptr %l, align 8, !dbg !482, !tbaa !84
  %13 = load ptr, ptr %endp, align 8, !dbg !486, !tbaa !61
  %14 = load i8, ptr %13, align 1, !dbg !488, !tbaa !75
  %conv16 = sext i8 %14 to i32, !dbg !488
  %cmp17 = icmp ne i32 %conv16, 115, !dbg !489
  br i1 %cmp17, label %if.then19, label %if.end28, !dbg !490

if.then19:                                        ; preds = %while.body
  %15 = load ptr, ptr %path_end, align 8, !dbg !491, !tbaa !61
  %16 = load ptr, ptr %dirname.addr, align 8, !dbg !493, !tbaa !61
  %17 = load ptr, ptr %endp, align 8, !dbg !494, !tbaa !61
  %add.ptr20 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !495
  %18 = load ptr, ptr %dirname.addr, align 8, !dbg !496, !tbaa !61
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr20 to i64, !dbg !497
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64, !dbg !497
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !497
  %call21 = call ptr @strncpy(ptr noundef %15, ptr noundef %16, i64 noundef %sub.ptr.sub) #8, !dbg !498
  %19 = load ptr, ptr %endp, align 8, !dbg !499, !tbaa !61
  %add.ptr22 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !500
  %20 = load ptr, ptr %dirname.addr, align 8, !dbg !501, !tbaa !61
  %sub.ptr.lhs.cast23 = ptrtoint ptr %add.ptr22 to i64, !dbg !502
  %sub.ptr.rhs.cast24 = ptrtoint ptr %20 to i64, !dbg !502
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24, !dbg !502
  %21 = load ptr, ptr %path_end, align 8, !dbg !503, !tbaa !61
  %add.ptr26 = getelementptr inbounds i8, ptr %21, i64 %sub.ptr.sub25, !dbg !503
  store ptr %add.ptr26, ptr %path_end, align 8, !dbg !503, !tbaa !61
  %22 = load ptr, ptr %endp, align 8, !dbg !504, !tbaa !61
  %add.ptr27 = getelementptr inbounds i8, ptr %22, i64 1, !dbg !505
  store ptr %add.ptr27, ptr %dirname.addr, align 8, !dbg !506, !tbaa !61
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !507, !llvm.loop !508

if.end28:                                         ; preds = %while.body
  %23 = load ptr, ptr %path_end, align 8, !dbg !510, !tbaa !61
  %24 = load ptr, ptr %dirname.addr, align 8, !dbg !511, !tbaa !61
  %25 = load ptr, ptr %cp, align 8, !dbg !512, !tbaa !61
  %26 = load ptr, ptr %dirname.addr, align 8, !dbg !513, !tbaa !61
  %sub.ptr.lhs.cast29 = ptrtoint ptr %25 to i64, !dbg !514
  %sub.ptr.rhs.cast30 = ptrtoint ptr %26 to i64, !dbg !514
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30, !dbg !514
  %call32 = call ptr @strncpy(ptr noundef %23, ptr noundef %24, i64 noundef %sub.ptr.sub31) #8, !dbg !515
  %27 = load ptr, ptr %cp, align 8, !dbg !516, !tbaa !61
  %28 = load ptr, ptr %dirname.addr, align 8, !dbg !517, !tbaa !61
  %sub.ptr.lhs.cast33 = ptrtoint ptr %27 to i64, !dbg !518
  %sub.ptr.rhs.cast34 = ptrtoint ptr %28 to i64, !dbg !518
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34, !dbg !518
  %29 = load ptr, ptr %path_end, align 8, !dbg !519, !tbaa !61
  %add.ptr36 = getelementptr inbounds i8, ptr %29, i64 %sub.ptr.sub35, !dbg !519
  store ptr %add.ptr36, ptr %path_end, align 8, !dbg !519, !tbaa !61
  %30 = load i64, ptr %l, align 8, !dbg !520, !tbaa !84
  %tobool37 = icmp ne i64 %30, 0, !dbg !520
  br i1 %tobool37, label %if.then38, label %if.else54, !dbg !522

if.then38:                                        ; preds = %if.end28
  %31 = load ptr, ptr %path_end, align 8, !dbg !523, !tbaa !61
  %32 = load ptr, ptr %file.addr, align 8, !dbg !525, !tbaa !61
  %33 = load i64, ptr %l, align 8, !dbg !526, !tbaa !84
  %call39 = call ptr @strncpy(ptr noundef %31, ptr noundef %32, i64 noundef %33) #8, !dbg !527
  %34 = load ptr, ptr %file.addr, align 8, !dbg !528, !tbaa !61
  %call40 = call i64 @strlen(ptr noundef %34) #9, !dbg !528
  %35 = load i64, ptr %l, align 8, !dbg !528, !tbaa !84
  %cmp41 = icmp ult i64 %call40, %35, !dbg !528
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !528

cond.true:                                        ; preds = %if.then38
  %36 = load ptr, ptr %file.addr, align 8, !dbg !528, !tbaa !61
  %call43 = call i64 @strlen(ptr noundef %36) #9, !dbg !528
  br label %cond.end, !dbg !528

cond.false:                                       ; preds = %if.then38
  %37 = load i64, ptr %l, align 8, !dbg !528, !tbaa !84
  br label %cond.end, !dbg !528

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call43, %cond.true ], [ %37, %cond.false ], !dbg !528
  %38 = load ptr, ptr %path_end, align 8, !dbg !529, !tbaa !61
  %add.ptr44 = getelementptr inbounds i8, ptr %38, i64 %cond, !dbg !529
  store ptr %add.ptr44, ptr %path_end, align 8, !dbg !529, !tbaa !61
  %39 = load ptr, ptr %file.addr, align 8, !dbg !530, !tbaa !61
  %call45 = call i64 @strlen(ptr noundef %39) #9, !dbg !530
  %40 = load i64, ptr %l, align 8, !dbg !530, !tbaa !84
  %cmp46 = icmp ult i64 %call45, %40, !dbg !530
  br i1 %cmp46, label %cond.true48, label %cond.false50, !dbg !530

cond.true48:                                      ; preds = %cond.end
  %41 = load ptr, ptr %file.addr, align 8, !dbg !530, !tbaa !61
  %call49 = call i64 @strlen(ptr noundef %41) #9, !dbg !530
  br label %cond.end51, !dbg !530

cond.false50:                                     ; preds = %cond.end
  %42 = load i64, ptr %l, align 8, !dbg !530, !tbaa !84
  br label %cond.end51, !dbg !530

cond.end51:                                       ; preds = %cond.false50, %cond.true48
  %cond52 = phi i64 [ %call49, %cond.true48 ], [ %42, %cond.false50 ], !dbg !530
  %43 = load ptr, ptr %file.addr, align 8, !dbg !531, !tbaa !61
  %add.ptr53 = getelementptr inbounds i8, ptr %43, i64 %cond52, !dbg !531
  store ptr %add.ptr53, ptr %file.addr, align 8, !dbg !531, !tbaa !61
  br label %if.end60, !dbg !532

if.else54:                                        ; preds = %if.end28
  %44 = load ptr, ptr %path_end, align 8, !dbg !533, !tbaa !61
  %45 = load ptr, ptr %file.addr, align 8, !dbg !535, !tbaa !61
  %call55 = call ptr @strcpy(ptr noundef %44, ptr noundef %45) #8, !dbg !536
  %46 = load ptr, ptr %file.addr, align 8, !dbg !537, !tbaa !61
  %call56 = call i64 @strlen(ptr noundef %46) #9, !dbg !538
  %47 = load ptr, ptr %path_end, align 8, !dbg !539, !tbaa !61
  %add.ptr57 = getelementptr inbounds i8, ptr %47, i64 %call56, !dbg !539
  store ptr %add.ptr57, ptr %path_end, align 8, !dbg !539, !tbaa !61
  %48 = load ptr, ptr %file.addr, align 8, !dbg !540, !tbaa !61
  %call58 = call i64 @strlen(ptr noundef %48) #9, !dbg !541
  %49 = load ptr, ptr %file.addr, align 8, !dbg !542, !tbaa !61
  %add.ptr59 = getelementptr inbounds i8, ptr %49, i64 %call58, !dbg !542
  store ptr %add.ptr59, ptr %file.addr, align 8, !dbg !542, !tbaa !61
  br label %if.end60

if.end60:                                         ; preds = %if.else54, %cond.end51
  %50 = load ptr, ptr %endp, align 8, !dbg !543, !tbaa !61
  %add.ptr61 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !544
  %51 = load ptr, ptr %dirname.addr, align 8, !dbg !545, !tbaa !61
  %sub.ptr.lhs.cast62 = ptrtoint ptr %add.ptr61 to i64, !dbg !546
  %sub.ptr.rhs.cast63 = ptrtoint ptr %51 to i64, !dbg !546
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63, !dbg !546
  %52 = load i64, ptr %len, align 8, !dbg !547, !tbaa !84
  %sub65 = sub i64 %52, %sub.ptr.sub64, !dbg !547
  store i64 %sub65, ptr %len, align 8, !dbg !547, !tbaa !84
  %53 = load ptr, ptr %endp, align 8, !dbg !548, !tbaa !61
  %add.ptr66 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !549
  store ptr %add.ptr66, ptr %dirname.addr, align 8, !dbg !550, !tbaa !61
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !509
  br label %cleanup, !dbg !509

cleanup:                                          ; preds = %if.end60, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #8, !dbg !509
  call void @llvm.lifetime.end.p0(i64 8, ptr %endp) #8, !dbg !509
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !475, !llvm.loop !508

while.end:                                        ; preds = %while.cond
  %54 = load ptr, ptr %path_end, align 8, !dbg !551, !tbaa !61
  %55 = load ptr, ptr %dirname.addr, align 8, !dbg !552, !tbaa !61
  %56 = load i64, ptr %len, align 8, !dbg !553, !tbaa !84
  %call68 = call ptr @strncpy(ptr noundef %54, ptr noundef %55, i64 noundef %56) #8, !dbg !554
  %57 = load ptr, ptr %dirname.addr, align 8, !dbg !555, !tbaa !61
  %call69 = call i64 @strlen(ptr noundef %57) #9, !dbg !555
  %58 = load i64, ptr %len, align 8, !dbg !555, !tbaa !84
  %cmp70 = icmp ult i64 %call69, %58, !dbg !555
  br i1 %cmp70, label %cond.true72, label %cond.false74, !dbg !555

cond.true72:                                      ; preds = %while.end
  %59 = load ptr, ptr %dirname.addr, align 8, !dbg !555, !tbaa !61
  %call73 = call i64 @strlen(ptr noundef %59) #9, !dbg !555
  br label %cond.end75, !dbg !555

cond.false74:                                     ; preds = %while.end
  %60 = load i64, ptr %len, align 8, !dbg !555, !tbaa !84
  br label %cond.end75, !dbg !555

cond.end75:                                       ; preds = %cond.false74, %cond.true72
  %cond76 = phi i64 [ %call73, %cond.true72 ], [ %60, %cond.false74 ], !dbg !555
  %61 = load ptr, ptr %path_end, align 8, !dbg !556, !tbaa !61
  %add.ptr77 = getelementptr inbounds i8, ptr %61, i64 %cond76, !dbg !556
  store ptr %add.ptr77, ptr %path_end, align 8, !dbg !556, !tbaa !61
  %62 = load ptr, ptr %path_end, align 8, !dbg !557, !tbaa !61
  store i8 0, ptr %62, align 1, !dbg !558, !tbaa !75
  %63 = load ptr, ptr %file.addr, align 8, !dbg !559, !tbaa !61
  %64 = load i8, ptr %63, align 1, !dbg !561, !tbaa !75
  %tobool78 = icmp ne i8 %64, 0, !dbg !561
  br i1 %tobool78, label %if.then79, label %if.end81, !dbg !562

if.then79:                                        ; preds = %cond.end75
  %65 = load ptr, ptr %path_end, align 8, !dbg !563, !tbaa !61
  %incdec.ptr = getelementptr inbounds i8, ptr %65, i32 1, !dbg !563
  store ptr %incdec.ptr, ptr %path_end, align 8, !dbg !563, !tbaa !61
  store i8 47, ptr %65, align 1, !dbg !565, !tbaa !75
  %66 = load ptr, ptr %path_end, align 8, !dbg !566, !tbaa !61
  %67 = load ptr, ptr %file.addr, align 8, !dbg !567, !tbaa !61
  %call80 = call ptr @strcpy(ptr noundef %66, ptr noundef %67) #8, !dbg !568
  br label %if.end81, !dbg !569

if.end81:                                         ; preds = %if.then79, %cond.end75
  call void @llvm.lifetime.end.p0(i64 8, ptr %path_end) #8, !dbg !570
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then10
  %arraydecay83 = getelementptr inbounds [4097 x i8], ptr %path, i64 0, i64 0, !dbg !571
  %call84 = call i32 @is_file(ptr noundef %arraydecay83), !dbg !573
  %tobool85 = icmp ne i32 %call84, 0, !dbg !573
  br i1 %tobool85, label %if.then86, label %if.end89, !dbg !574

if.then86:                                        ; preds = %if.end82
  %arraydecay87 = getelementptr inbounds [4097 x i8], ptr %path, i64 0, i64 0, !dbg !575
  %call88 = call ptr @mfopen(ptr noundef %arraydecay87, ptr noundef @.str.8), !dbg !577
  store ptr %call88, ptr %retval, align 8, !dbg !578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !578

if.end89:                                         ; preds = %if.end82
  store ptr null, ptr %retval, align 8, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !579

cleanup90:                                        ; preds = %if.end89, %if.then86
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #8, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !580
  call void @llvm.lifetime.end.p0(i64 4097, ptr %path) #8, !dbg !580
  %68 = load ptr, ptr %retval, align 8, !dbg !580
  ret ptr %68, !dbg !580

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare !dbg !581 void @free(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !584 ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !587 ptr @strrchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !590 ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare !dbg !591 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare !dbg !596 ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !599 i32 @is_file(ptr noundef) #6

declare !dbg !603 ptr @mfopen(ptr noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!35}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cram/open_trace_file.c", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "9978a848727b83756ebca46a67912f45")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 1)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !14, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 3)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 355, type: !19, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !26, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 293, type: !26, isLocal: true, isDefinition: true)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !{!0, !7, !12, !17, !22, !24, !29, !31, !33}
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!47 = distinct !DISubprogram(name: "tokenise_search_path", scope: !2, file: !2, line: 95, type: !48, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !35, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!37, !37}
!50 = !{!51, !52, !53, !55, !56, !60}
!51 = !DILocalVariable(name: "searchpath", arg: 1, scope: !47, file: !2, line: 95, type: !37)
!52 = !DILocalVariable(name: "newsearch", scope: !47, file: !2, line: 96, type: !37)
!53 = !DILocalVariable(name: "i", scope: !47, file: !2, line: 97, type: !54)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DILocalVariable(name: "j", scope: !47, file: !2, line: 97, type: !54)
!56 = !DILocalVariable(name: "len", scope: !47, file: !2, line: 98, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 70, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: "path_sep", scope: !47, file: !2, line: 102, type: !4)
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !DILocation(line: 95, column: 34, scope: !47)
!66 = !DILocation(line: 96, column: 5, scope: !47)
!67 = !DILocation(line: 96, column: 11, scope: !47)
!68 = !DILocation(line: 97, column: 5, scope: !47)
!69 = !DILocation(line: 97, column: 18, scope: !47)
!70 = !DILocation(line: 97, column: 21, scope: !47)
!71 = !DILocation(line: 98, column: 5, scope: !47)
!72 = !DILocation(line: 98, column: 12, scope: !47)
!73 = !DILocation(line: 102, column: 5, scope: !47)
!74 = !DILocation(line: 102, column: 10, scope: !47)
!75 = !{!63, !63, i64 0}
!76 = !DILocation(line: 105, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !47, file: !2, line: 105, column: 9)
!78 = !DILocation(line: 105, column: 9, scope: !47)
!79 = !DILocation(line: 106, column: 12, scope: !77)
!80 = !DILocation(line: 106, column: 2, scope: !77)
!81 = !DILocation(line: 108, column: 46, scope: !47)
!82 = !DILocation(line: 108, column: 39, scope: !47)
!83 = !DILocation(line: 108, column: 37, scope: !47)
!84 = !{!85, !85, i64 0}
!85 = !{!"long", !63, i64 0}
!86 = !DILocation(line: 108, column: 58, scope: !47)
!87 = !DILocation(line: 108, column: 25, scope: !47)
!88 = !DILocation(line: 108, column: 15, scope: !47)
!89 = !DILocation(line: 109, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !47, file: !2, line: 109, column: 9)
!91 = !DILocation(line: 109, column: 9, scope: !47)
!92 = !DILocation(line: 110, column: 2, scope: !90)
!93 = !DILocation(line: 112, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !47, file: !2, line: 112, column: 5)
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !63, i64 0}
!97 = !DILocation(line: 112, column: 19, scope: !94)
!98 = !DILocation(line: 112, column: 10, scope: !94)
!99 = !DILocation(line: 112, column: 24, scope: !100)
!100 = distinct !DILexicalBlock(scope: !94, file: !2, line: 112, column: 5)
!101 = !DILocation(line: 112, column: 28, scope: !100)
!102 = !DILocation(line: 112, column: 26, scope: !100)
!103 = !DILocation(line: 112, column: 5, scope: !94)
!104 = !DILocation(line: 114, column: 6, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 114, column: 6)
!106 = distinct !DILexicalBlock(scope: !100, file: !2, line: 112, column: 38)
!107 = !DILocation(line: 114, column: 10, scope: !105)
!108 = !DILocation(line: 114, column: 13, scope: !105)
!109 = !DILocation(line: 114, column: 8, scope: !105)
!110 = !DILocation(line: 114, column: 16, scope: !105)
!111 = !DILocation(line: 114, column: 19, scope: !105)
!112 = !DILocation(line: 114, column: 30, scope: !105)
!113 = !DILocation(line: 114, column: 33, scope: !105)
!114 = !DILocation(line: 114, column: 40, scope: !105)
!115 = !DILocation(line: 114, column: 43, scope: !105)
!116 = !DILocation(line: 114, column: 54, scope: !105)
!117 = !DILocation(line: 114, column: 55, scope: !105)
!118 = !DILocation(line: 114, column: 59, scope: !105)
!119 = !DILocation(line: 114, column: 6, scope: !106)
!120 = !DILocation(line: 115, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !105, file: !2, line: 114, column: 67)
!122 = !DILocation(line: 115, column: 17, scope: !121)
!123 = !DILocation(line: 115, column: 21, scope: !121)
!124 = !DILocation(line: 116, column: 7, scope: !121)
!125 = !DILocation(line: 117, column: 6, scope: !121)
!126 = !DILocation(line: 120, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !106, file: !2, line: 120, column: 6)
!128 = !DILocation(line: 120, column: 17, scope: !127)
!129 = !DILocation(line: 120, column: 23, scope: !127)
!130 = !DILocation(line: 120, column: 20, scope: !127)
!131 = !DILocation(line: 120, column: 6, scope: !106)
!132 = !DILocation(line: 122, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 122, column: 10)
!134 = distinct !DILexicalBlock(scope: !127, file: !2, line: 120, column: 33)
!135 = !DILocation(line: 122, column: 12, scope: !133)
!136 = !DILocation(line: 122, column: 15, scope: !133)
!137 = !DILocation(line: 122, column: 25, scope: !133)
!138 = !DILocation(line: 122, column: 26, scope: !133)
!139 = !DILocation(line: 122, column: 30, scope: !133)
!140 = !DILocation(line: 122, column: 10, scope: !134)
!141 = !DILocation(line: 123, column: 3, scope: !133)
!142 = !DILocation(line: 123, column: 14, scope: !133)
!143 = !DILocation(line: 123, column: 18, scope: !133)
!144 = !DILocation(line: 124, column: 2, scope: !134)
!145 = !DILocation(line: 125, column: 23, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !2, line: 124, column: 9)
!147 = !DILocation(line: 125, column: 34, scope: !146)
!148 = !DILocation(line: 125, column: 6, scope: !146)
!149 = !DILocation(line: 125, column: 17, scope: !146)
!150 = !DILocation(line: 125, column: 21, scope: !146)
!151 = !DILocation(line: 127, column: 5, scope: !106)
!152 = !DILocation(line: 112, column: 34, scope: !100)
!153 = !DILocation(line: 112, column: 5, scope: !100)
!154 = distinct !{!154, !103, !155, !156}
!155 = !DILocation(line: 127, column: 5, scope: !94)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 129, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !47, file: !2, line: 129, column: 9)
!159 = !DILocation(line: 129, column: 9, scope: !47)
!160 = !DILocation(line: 130, column: 2, scope: !158)
!161 = !DILocation(line: 130, column: 13, scope: !158)
!162 = !DILocation(line: 130, column: 17, scope: !158)
!163 = !DILocation(line: 131, column: 5, scope: !47)
!164 = !DILocation(line: 131, column: 16, scope: !47)
!165 = !DILocation(line: 131, column: 20, scope: !47)
!166 = !DILocation(line: 132, column: 5, scope: !47)
!167 = !DILocation(line: 132, column: 16, scope: !47)
!168 = !DILocation(line: 132, column: 20, scope: !47)
!169 = !DILocation(line: 133, column: 5, scope: !47)
!170 = !DILocation(line: 133, column: 16, scope: !47)
!171 = !DILocation(line: 133, column: 20, scope: !47)
!172 = !DILocation(line: 134, column: 5, scope: !47)
!173 = !DILocation(line: 134, column: 16, scope: !47)
!174 = !DILocation(line: 134, column: 20, scope: !47)
!175 = !DILocation(line: 136, column: 12, scope: !47)
!176 = !DILocation(line: 136, column: 5, scope: !47)
!177 = !DILocation(line: 137, column: 1, scope: !47)
!178 = !DISubprogram(name: "malloc", scope: !179, file: !179, line: 540, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!180 = !DISubroutineType(types: !181)
!181 = !{!38, !57}
!182 = !DISubprogram(name: "strlen", scope: !183, file: !183, line: 407, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!184 = !DISubroutineType(types: !185)
!185 = !{!59, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!188 = distinct !DISubprogram(name: "open_path_mfile", scope: !2, file: !2, line: 319, type: !189, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !35, retainedNodes: !258)
!189 = !DISubroutineType(types: !190)
!190 = !{!191, !37, !37, !37}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "mFILE", file: !193, line: 49, baseType: !194)
!193 = !DIFile(filename: "./cram/mFILE.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "34bb4c2e7e35942a2f2bfc641b53e02c")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 40, size: 448, elements: !195)
!195 = !{!196, !251, !252, !253, !254, !255, !256, !257}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !194, file: !193, line: 41, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !199, line: 7, baseType: !200)
!199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !201, line: 49, size: 1728, elements: !202)
!201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!202 = !{!203, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !219, !221, !222, !223, !227, !229, !231, !232, !235, !237, !240, !243, !244, !245, !246, !247}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !200, file: !201, line: 51, baseType: !204, size: 32)
!204 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !200, file: !201, line: 54, baseType: !37, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !200, file: !201, line: 55, baseType: !37, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !200, file: !201, line: 56, baseType: !37, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !200, file: !201, line: 57, baseType: !37, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !200, file: !201, line: 58, baseType: !37, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !200, file: !201, line: 59, baseType: !37, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !200, file: !201, line: 60, baseType: !37, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !200, file: !201, line: 61, baseType: !37, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !200, file: !201, line: 64, baseType: !37, size: 64, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !200, file: !201, line: 65, baseType: !37, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !200, file: !201, line: 66, baseType: !37, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !200, file: !201, line: 68, baseType: !217, size: 64, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !201, line: 36, flags: DIFlagFwdDecl)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !200, file: !201, line: 70, baseType: !220, size: 64, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !200, file: !201, line: 72, baseType: !204, size: 32, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !200, file: !201, line: 73, baseType: !204, size: 32, offset: 928)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !200, file: !201, line: 74, baseType: !224, size: 64, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !225, line: 152, baseType: !226)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!226 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !200, file: !201, line: 77, baseType: !228, size: 16, offset: 1024)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !200, file: !201, line: 78, baseType: !230, size: 8, offset: 1040)
!230 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !200, file: !201, line: 79, baseType: !3, size: 8, offset: 1048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !200, file: !201, line: 81, baseType: !233, size: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !201, line: 43, baseType: null)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !200, file: !201, line: 89, baseType: !236, size: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !225, line: 153, baseType: !226)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !200, file: !201, line: 91, baseType: !238, size: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !201, line: 37, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !200, file: !201, line: 92, baseType: !241, size: 64, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !201, line: 38, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !200, file: !201, line: 93, baseType: !220, size: 64, offset: 1344)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !200, file: !201, line: 94, baseType: !38, size: 64, offset: 1408)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !200, file: !201, line: 95, baseType: !57, size: 64, offset: 1472)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !200, file: !201, line: 96, baseType: !204, size: 32, offset: 1536)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !200, file: !201, line: 98, baseType: !248, size: 160, offset: 1568)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 20)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !194, file: !193, line: 42, baseType: !37, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !194, file: !193, line: 43, baseType: !57, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !194, file: !193, line: 44, baseType: !204, size: 32, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !194, file: !193, line: 45, baseType: !204, size: 32, offset: 224)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !194, file: !193, line: 46, baseType: !57, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !194, file: !193, line: 47, baseType: !57, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pos", scope: !194, file: !193, line: 48, baseType: !57, size: 64, offset: 384)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !269, !273, !280, !281, !282, !285}
!259 = !DILocalVariable(name: "file", arg: 1, scope: !188, file: !2, line: 319, type: !37)
!260 = !DILocalVariable(name: "path", arg: 2, scope: !188, file: !2, line: 319, type: !37)
!261 = !DILocalVariable(name: "relative_to", arg: 3, scope: !188, file: !2, line: 319, type: !37)
!262 = !DILocalVariable(name: "newsearch", scope: !188, file: !2, line: 320, type: !37)
!263 = !DILocalVariable(name: "ele", scope: !188, file: !2, line: 321, type: !37)
!264 = !DILocalVariable(name: "fp", scope: !188, file: !2, line: 322, type: !191)
!265 = !DILocalVariable(name: "i", scope: !266, file: !2, line: 336, type: !204)
!266 = distinct !DILexicalBlock(scope: !267, file: !2, line: 335, column: 55)
!267 = distinct !DILexicalBlock(scope: !268, file: !2, line: 335, column: 5)
!268 = distinct !DILexicalBlock(scope: !188, file: !2, line: 335, column: 5)
!269 = !DILocalVariable(name: "suffix", scope: !266, file: !2, line: 337, type: !270)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 384, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 6)
!273 = !DILocalVariable(name: "file2", scope: !274, file: !2, line: 339, type: !277)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 338, column: 26)
!275 = distinct !DILexicalBlock(scope: !276, file: !2, line: 338, column: 2)
!276 = distinct !DILexicalBlock(scope: !266, file: !2, line: 338, column: 2)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 1024)
!280 = !DILocalVariable(name: "ele2", scope: !274, file: !2, line: 340, type: !37)
!281 = !DILocalVariable(name: "valid", scope: !274, file: !2, line: 341, type: !204)
!282 = !DILocalVariable(name: "cp", scope: !283, file: !2, line: 376, type: !37)
!283 = distinct !DILexicalBlock(scope: !284, file: !2, line: 375, column: 22)
!284 = distinct !DILexicalBlock(scope: !188, file: !2, line: 375, column: 9)
!285 = !DILocalVariable(name: "relative_path", scope: !283, file: !2, line: 377, type: !286)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32776, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 4097)
!289 = !DILocation(line: 319, column: 30, scope: !188)
!290 = !DILocation(line: 319, column: 42, scope: !188)
!291 = !DILocation(line: 319, column: 54, scope: !188)
!292 = !DILocation(line: 320, column: 5, scope: !188)
!293 = !DILocation(line: 320, column: 11, scope: !188)
!294 = !DILocation(line: 321, column: 5, scope: !188)
!295 = !DILocation(line: 321, column: 11, scope: !188)
!296 = !DILocation(line: 322, column: 5, scope: !188)
!297 = !DILocation(line: 322, column: 12, scope: !188)
!298 = !DILocation(line: 325, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !188, file: !2, line: 325, column: 9)
!300 = !DILocation(line: 325, column: 9, scope: !188)
!301 = !DILocation(line: 326, column: 9, scope: !299)
!302 = !DILocation(line: 326, column: 7, scope: !299)
!303 = !DILocation(line: 326, column: 2, scope: !299)
!304 = !DILocation(line: 327, column: 51, scope: !305)
!305 = distinct !DILexicalBlock(scope: !188, file: !2, line: 327, column: 9)
!306 = !DILocation(line: 327, column: 30, scope: !305)
!307 = !DILocation(line: 327, column: 28, scope: !305)
!308 = !DILocation(line: 327, column: 14, scope: !305)
!309 = !DILocation(line: 327, column: 9, scope: !188)
!310 = !DILocation(line: 328, column: 2, scope: !305)
!311 = !DILocation(line: 335, column: 16, scope: !268)
!312 = !DILocation(line: 335, column: 14, scope: !268)
!313 = !DILocation(line: 335, column: 10, scope: !268)
!314 = !DILocation(line: 335, column: 28, scope: !267)
!315 = !DILocation(line: 335, column: 27, scope: !267)
!316 = !DILocation(line: 335, column: 5, scope: !268)
!317 = !DILocation(line: 336, column: 2, scope: !266)
!318 = !DILocation(line: 336, column: 6, scope: !266)
!319 = !DILocation(line: 337, column: 2, scope: !266)
!320 = !DILocation(line: 337, column: 8, scope: !266)
!321 = !DILocation(line: 338, column: 9, scope: !276)
!322 = !DILocation(line: 338, column: 7, scope: !276)
!323 = !DILocation(line: 338, column: 14, scope: !275)
!324 = !DILocation(line: 338, column: 16, scope: !275)
!325 = !DILocation(line: 338, column: 2, scope: !276)
!326 = !DILocation(line: 339, column: 6, scope: !274)
!327 = !DILocation(line: 339, column: 11, scope: !274)
!328 = !DILocation(line: 340, column: 6, scope: !274)
!329 = !DILocation(line: 340, column: 12, scope: !274)
!330 = !DILocation(line: 341, column: 6, scope: !274)
!331 = !DILocation(line: 341, column: 10, scope: !274)
!332 = !DILocation(line: 348, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !274, file: !2, line: 348, column: 10)
!334 = !DILocation(line: 348, column: 10, scope: !333)
!335 = !DILocation(line: 348, column: 15, scope: !333)
!336 = !DILocation(line: 348, column: 10, scope: !274)
!337 = !DILocation(line: 349, column: 10, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !2, line: 348, column: 23)
!339 = !DILocation(line: 349, column: 13, scope: !338)
!340 = !DILocation(line: 349, column: 8, scope: !338)
!341 = !DILocation(line: 350, column: 12, scope: !338)
!342 = !DILocation(line: 350, column: 14, scope: !338)
!343 = !DILocation(line: 350, column: 9, scope: !338)
!344 = !DILocation(line: 351, column: 6, scope: !338)
!345 = !DILocation(line: 352, column: 10, scope: !346)
!346 = distinct !DILexicalBlock(scope: !333, file: !2, line: 351, column: 13)
!347 = !DILocation(line: 352, column: 8, scope: !346)
!348 = !DILocation(line: 355, column: 14, scope: !274)
!349 = !DILocation(line: 355, column: 29, scope: !274)
!350 = !DILocation(line: 355, column: 42, scope: !274)
!351 = !DILocation(line: 355, column: 35, scope: !274)
!352 = !DILocation(line: 355, column: 6, scope: !274)
!353 = !DILocation(line: 365, column: 10, scope: !354)
!354 = distinct !DILexicalBlock(scope: !274, file: !2, line: 365, column: 10)
!355 = !DILocation(line: 365, column: 16, scope: !354)
!356 = !DILocation(line: 365, column: 39, scope: !354)
!357 = !DILocation(line: 365, column: 46, scope: !354)
!358 = !DILocation(line: 365, column: 25, scope: !354)
!359 = !DILocation(line: 365, column: 23, scope: !354)
!360 = !DILocation(line: 365, column: 10, scope: !274)
!361 = !DILocation(line: 366, column: 8, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !2, line: 365, column: 54)
!363 = !DILocation(line: 366, column: 3, scope: !362)
!364 = !DILocation(line: 367, column: 10, scope: !362)
!365 = !DILocation(line: 367, column: 3, scope: !362)
!366 = !DILocation(line: 369, column: 2, scope: !275)
!367 = !DILocation(line: 369, column: 2, scope: !274)
!368 = !DILocation(line: 338, column: 22, scope: !275)
!369 = !DILocation(line: 338, column: 2, scope: !275)
!370 = distinct !{!370, !325, !371, !156}
!371 = !DILocation(line: 369, column: 2, scope: !276)
!372 = !DILocation(line: 370, column: 5, scope: !267)
!373 = !DILocation(line: 370, column: 5, scope: !266)
!374 = !DILocation(line: 335, column: 47, scope: !267)
!375 = !DILocation(line: 335, column: 40, scope: !267)
!376 = !DILocation(line: 335, column: 51, scope: !267)
!377 = !DILocation(line: 335, column: 37, scope: !267)
!378 = !DILocation(line: 335, column: 5, scope: !267)
!379 = distinct !{!379, !316, !380, !156}
!380 = !DILocation(line: 370, column: 5, scope: !268)
!381 = !DILocation(line: 372, column: 10, scope: !188)
!382 = !DILocation(line: 372, column: 5, scope: !188)
!383 = !DILocation(line: 375, column: 9, scope: !284)
!384 = !DILocation(line: 375, column: 9, scope: !188)
!385 = !DILocation(line: 376, column: 2, scope: !283)
!386 = !DILocation(line: 376, column: 8, scope: !283)
!387 = !DILocation(line: 377, column: 2, scope: !283)
!388 = !DILocation(line: 377, column: 7, scope: !283)
!389 = !DILocation(line: 378, column: 9, scope: !283)
!390 = !DILocation(line: 378, column: 24, scope: !283)
!391 = !DILocation(line: 378, column: 2, scope: !283)
!392 = !DILocation(line: 379, column: 20, scope: !393)
!393 = distinct !DILexicalBlock(scope: !283, file: !2, line: 379, column: 6)
!394 = !DILocation(line: 379, column: 12, scope: !393)
!395 = !DILocation(line: 379, column: 10, scope: !393)
!396 = !DILocation(line: 379, column: 6, scope: !283)
!397 = !DILocation(line: 380, column: 7, scope: !393)
!398 = !DILocation(line: 380, column: 10, scope: !393)
!399 = !DILocation(line: 380, column: 6, scope: !393)
!400 = !DILocation(line: 381, column: 26, scope: !401)
!401 = distinct !DILexicalBlock(scope: !283, file: !2, line: 381, column: 6)
!402 = !DILocation(line: 381, column: 32, scope: !401)
!403 = !DILocation(line: 381, column: 12, scope: !401)
!404 = !DILocation(line: 381, column: 10, scope: !401)
!405 = !DILocation(line: 381, column: 6, scope: !283)
!406 = !DILocation(line: 382, column: 13, scope: !401)
!407 = !DILocation(line: 382, column: 6, scope: !401)
!408 = !DILocation(line: 383, column: 5, scope: !284)
!409 = !DILocation(line: 383, column: 5, scope: !283)
!410 = !DILocation(line: 385, column: 5, scope: !188)
!411 = !DILocation(line: 386, column: 1, scope: !188)
!412 = !DISubprogram(name: "getenv", scope: !179, file: !179, line: 641, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{!37, !186}
!415 = !DISubprogram(name: "sprintf", scope: !416, file: !416, line: 358, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!417 = !DISubroutineType(types: !418)
!418 = !{!204, !419, !420, null}
!419 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !186)
!421 = distinct !DISubprogram(name: "find_file_dir", scope: !2, file: !2, line: 242, type: !422, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !35, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!191, !37, !37}
!424 = !{!425, !426, !427, !428, !429, !430, !433, !435}
!425 = !DILocalVariable(name: "file", arg: 1, scope: !421, file: !2, line: 242, type: !37)
!426 = !DILocalVariable(name: "dirname", arg: 2, scope: !421, file: !2, line: 242, type: !37)
!427 = !DILocalVariable(name: "path", scope: !421, file: !2, line: 243, type: !286)
!428 = !DILocalVariable(name: "len", scope: !421, file: !2, line: 244, type: !57)
!429 = !DILocalVariable(name: "cp", scope: !421, file: !2, line: 245, type: !37)
!430 = !DILocalVariable(name: "path_end", scope: !431, file: !2, line: 255, type: !37)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 253, column: 12)
!432 = distinct !DILexicalBlock(scope: !421, file: !2, line: 251, column: 9)
!433 = !DILocalVariable(name: "endp", scope: !434, file: !2, line: 258, type: !37)
!434 = distinct !DILexicalBlock(scope: !431, file: !2, line: 257, column: 38)
!435 = !DILocalVariable(name: "l", scope: !434, file: !2, line: 259, type: !226)
!436 = !DILocation(line: 242, column: 35, scope: !421)
!437 = !DILocation(line: 242, column: 47, scope: !421)
!438 = !DILocation(line: 243, column: 5, scope: !421)
!439 = !DILocation(line: 243, column: 10, scope: !421)
!440 = !DILocation(line: 244, column: 5, scope: !421)
!441 = !DILocation(line: 244, column: 12, scope: !421)
!442 = !DILocation(line: 244, column: 25, scope: !421)
!443 = !DILocation(line: 244, column: 18, scope: !421)
!444 = !DILocation(line: 245, column: 5, scope: !421)
!445 = !DILocation(line: 245, column: 11, scope: !421)
!446 = !DILocation(line: 247, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !421, file: !2, line: 247, column: 9)
!448 = !DILocation(line: 247, column: 17, scope: !447)
!449 = !DILocation(line: 247, column: 20, scope: !447)
!450 = !DILocation(line: 247, column: 24, scope: !447)
!451 = !DILocation(line: 247, column: 9, scope: !421)
!452 = !DILocation(line: 248, column: 5, scope: !447)
!453 = !DILocation(line: 248, column: 2, scope: !447)
!454 = !DILocation(line: 251, column: 10, scope: !432)
!455 = !DILocation(line: 251, column: 9, scope: !432)
!456 = !DILocation(line: 251, column: 15, scope: !432)
!457 = !DILocation(line: 251, column: 22, scope: !432)
!458 = !DILocation(line: 251, column: 26, scope: !432)
!459 = !DILocation(line: 251, column: 29, scope: !432)
!460 = !DILocation(line: 251, column: 33, scope: !432)
!461 = !DILocation(line: 251, column: 37, scope: !432)
!462 = !DILocation(line: 251, column: 36, scope: !432)
!463 = !DILocation(line: 251, column: 45, scope: !432)
!464 = !DILocation(line: 251, column: 9, scope: !421)
!465 = !DILocation(line: 252, column: 10, scope: !466)
!466 = distinct !DILexicalBlock(scope: !432, file: !2, line: 251, column: 54)
!467 = !DILocation(line: 252, column: 22, scope: !466)
!468 = !DILocation(line: 252, column: 2, scope: !466)
!469 = !DILocation(line: 253, column: 5, scope: !466)
!470 = !DILocation(line: 255, column: 2, scope: !431)
!471 = !DILocation(line: 255, column: 8, scope: !431)
!472 = !DILocation(line: 255, column: 19, scope: !431)
!473 = !DILocation(line: 256, column: 2, scope: !431)
!474 = !DILocation(line: 256, column: 8, scope: !431)
!475 = !DILocation(line: 257, column: 2, scope: !431)
!476 = !DILocation(line: 257, column: 22, scope: !431)
!477 = !DILocation(line: 257, column: 15, scope: !431)
!478 = !DILocation(line: 257, column: 13, scope: !431)
!479 = !DILocation(line: 258, column: 6, scope: !434)
!480 = !DILocation(line: 258, column: 12, scope: !434)
!481 = !DILocation(line: 259, column: 6, scope: !434)
!482 = !DILocation(line: 259, column: 11, scope: !434)
!483 = !DILocation(line: 259, column: 22, scope: !434)
!484 = !DILocation(line: 259, column: 24, scope: !434)
!485 = !DILocation(line: 259, column: 15, scope: !434)
!486 = !DILocation(line: 260, column: 11, scope: !487)
!487 = distinct !DILexicalBlock(scope: !434, file: !2, line: 260, column: 10)
!488 = !DILocation(line: 260, column: 10, scope: !487)
!489 = !DILocation(line: 260, column: 16, scope: !487)
!490 = !DILocation(line: 260, column: 10, scope: !434)
!491 = !DILocation(line: 261, column: 11, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !2, line: 260, column: 24)
!493 = !DILocation(line: 261, column: 21, scope: !492)
!494 = !DILocation(line: 261, column: 31, scope: !492)
!495 = !DILocation(line: 261, column: 35, scope: !492)
!496 = !DILocation(line: 261, column: 39, scope: !492)
!497 = !DILocation(line: 261, column: 38, scope: !492)
!498 = !DILocation(line: 261, column: 3, scope: !492)
!499 = !DILocation(line: 262, column: 16, scope: !492)
!500 = !DILocation(line: 262, column: 20, scope: !492)
!501 = !DILocation(line: 262, column: 24, scope: !492)
!502 = !DILocation(line: 262, column: 23, scope: !492)
!503 = !DILocation(line: 262, column: 12, scope: !492)
!504 = !DILocation(line: 263, column: 13, scope: !492)
!505 = !DILocation(line: 263, column: 17, scope: !492)
!506 = !DILocation(line: 263, column: 11, scope: !492)
!507 = !DILocation(line: 264, column: 3, scope: !492)
!508 = distinct !{!508, !475, !509, !156}
!509 = !DILocation(line: 280, column: 2, scope: !431)
!510 = !DILocation(line: 267, column: 14, scope: !434)
!511 = !DILocation(line: 267, column: 24, scope: !434)
!512 = !DILocation(line: 267, column: 33, scope: !434)
!513 = !DILocation(line: 267, column: 36, scope: !434)
!514 = !DILocation(line: 267, column: 35, scope: !434)
!515 = !DILocation(line: 267, column: 6, scope: !434)
!516 = !DILocation(line: 268, column: 18, scope: !434)
!517 = !DILocation(line: 268, column: 21, scope: !434)
!518 = !DILocation(line: 268, column: 20, scope: !434)
!519 = !DILocation(line: 268, column: 15, scope: !434)
!520 = !DILocation(line: 269, column: 10, scope: !521)
!521 = distinct !DILexicalBlock(scope: !434, file: !2, line: 269, column: 10)
!522 = !DILocation(line: 269, column: 10, scope: !434)
!523 = !DILocation(line: 270, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !521, file: !2, line: 269, column: 13)
!525 = !DILocation(line: 270, column: 21, scope: !524)
!526 = !DILocation(line: 270, column: 27, scope: !524)
!527 = !DILocation(line: 270, column: 3, scope: !524)
!528 = !DILocation(line: 271, column: 15, scope: !524)
!529 = !DILocation(line: 271, column: 12, scope: !524)
!530 = !DILocation(line: 272, column: 15, scope: !524)
!531 = !DILocation(line: 272, column: 12, scope: !524)
!532 = !DILocation(line: 273, column: 6, scope: !524)
!533 = !DILocation(line: 274, column: 10, scope: !534)
!534 = distinct !DILexicalBlock(scope: !521, file: !2, line: 273, column: 13)
!535 = !DILocation(line: 274, column: 20, scope: !534)
!536 = !DILocation(line: 274, column: 3, scope: !534)
!537 = !DILocation(line: 275, column: 22, scope: !534)
!538 = !DILocation(line: 275, column: 15, scope: !534)
!539 = !DILocation(line: 275, column: 12, scope: !534)
!540 = !DILocation(line: 276, column: 22, scope: !534)
!541 = !DILocation(line: 276, column: 15, scope: !534)
!542 = !DILocation(line: 276, column: 12, scope: !534)
!543 = !DILocation(line: 278, column: 14, scope: !434)
!544 = !DILocation(line: 278, column: 18, scope: !434)
!545 = !DILocation(line: 278, column: 24, scope: !434)
!546 = !DILocation(line: 278, column: 22, scope: !434)
!547 = !DILocation(line: 278, column: 10, scope: !434)
!548 = !DILocation(line: 279, column: 16, scope: !434)
!549 = !DILocation(line: 279, column: 20, scope: !434)
!550 = !DILocation(line: 279, column: 14, scope: !434)
!551 = !DILocation(line: 281, column: 10, scope: !431)
!552 = !DILocation(line: 281, column: 20, scope: !431)
!553 = !DILocation(line: 281, column: 29, scope: !431)
!554 = !DILocation(line: 281, column: 2, scope: !431)
!555 = !DILocation(line: 282, column: 14, scope: !431)
!556 = !DILocation(line: 282, column: 11, scope: !431)
!557 = !DILocation(line: 283, column: 3, scope: !431)
!558 = !DILocation(line: 283, column: 12, scope: !431)
!559 = !DILocation(line: 284, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !431, file: !2, line: 284, column: 6)
!561 = !DILocation(line: 284, column: 6, scope: !560)
!562 = !DILocation(line: 284, column: 6, scope: !431)
!563 = !DILocation(line: 285, column: 15, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !2, line: 284, column: 13)
!565 = !DILocation(line: 285, column: 18, scope: !564)
!566 = !DILocation(line: 286, column: 13, scope: !564)
!567 = !DILocation(line: 286, column: 23, scope: !564)
!568 = !DILocation(line: 286, column: 6, scope: !564)
!569 = !DILocation(line: 287, column: 2, scope: !564)
!570 = !DILocation(line: 290, column: 5, scope: !432)
!571 = !DILocation(line: 292, column: 17, scope: !572)
!572 = distinct !DILexicalBlock(scope: !421, file: !2, line: 292, column: 9)
!573 = !DILocation(line: 292, column: 9, scope: !572)
!574 = !DILocation(line: 292, column: 9, scope: !421)
!575 = !DILocation(line: 293, column: 16, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !2, line: 292, column: 24)
!577 = !DILocation(line: 293, column: 9, scope: !576)
!578 = !DILocation(line: 293, column: 2, scope: !576)
!579 = !DILocation(line: 296, column: 5, scope: !421)
!580 = !DILocation(line: 297, column: 1, scope: !421)
!581 = !DISubprogram(name: "free", scope: !179, file: !179, line: 555, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !38}
!584 = !DISubprogram(name: "strcpy", scope: !183, file: !183, line: 141, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubroutineType(types: !586)
!586 = !{!37, !419, !420}
!587 = !DISubprogram(name: "strrchr", scope: !183, file: !183, line: 273, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DISubroutineType(types: !589)
!589 = !{!37, !186, !204}
!590 = !DISubprogram(name: "strchr", scope: !183, file: !183, line: 246, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DISubprogram(name: "strtol", scope: !179, file: !179, line: 177, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DISubroutineType(types: !593)
!593 = !{!226, !420, !594, !204}
!594 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!596 = !DISubprogram(name: "strncpy", scope: !183, file: !183, line: 144, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DISubroutineType(types: !598)
!598 = !{!37, !419, !420, !57}
!599 = !DISubprogram(name: "is_file", scope: !600, file: !600, line: 100, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DIFile(filename: "./cram/misc.h", directory: "/local-ssd/star-s7gfyo2prvaki7w6cr7mtqgyaudishwq-build/aidengro/spack-stage-star-2.7.10b-s7gfyo2prvaki7w6cr7mtqgyaudishwq/spack-src/source/htslib", checksumkind: CSK_MD5, checksum: "6b2dbdedd79eb598cc6ad76ca55860c5")
!601 = !DISubroutineType(types: !602)
!602 = !{!204, !37}
!603 = !DISubprogram(name: "mfopen", scope: !193, file: !193, line: 59, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!191, !186, !186}

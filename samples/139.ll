; ModuleID = 'samples/139.bc'
source_filename = "src/core/grep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regex_t = type { i64, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"dest && str\00", align 1, !dbg !7
@__func__.gt_grep_escape_extended = private unnamed_addr constant [24 x i8] c"gt_grep_escape_extended\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [16 x i8] c"src/core/grep.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [2 x i8] c"\\\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !28
@__func__.gt_grep_nt = private unnamed_addr constant [11 x i8] c"gt_grep_nt\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [16 x i8] c"pattern && line\00", align 1, !dbg !38
@__func__.gt_grep_unit_test = private unnamed_addr constant [18 x i8] c"gt_grep_unit_test\00", align 1, !dbg !40
@.str.6 = private unnamed_addr constant [2 x i8] c"a\00", align 1, !dbg !45
@.str.7 = private unnamed_addr constant [145 x i8] c"gt_ensure(%s) failed: function %s, file %s, line %d.\0AThis is probably a bug, please report at https://github.com/genometools/genometools/issues.\00", align 1, !dbg !47
@.str.8 = private unnamed_addr constant [10 x i8] c"!grep_err\00", align 1, !dbg !52
@.str.9 = private unnamed_addr constant [6 x i8] c"match\00", align 1, !dbg !57
@.str.10 = private unnamed_addr constant [4 x i8] c"abb\00", align 1, !dbg !62
@.str.11 = private unnamed_addr constant [2 x i8] c"b\00", align 1, !dbg !67
@.str.12 = private unnamed_addr constant [7 x i8] c"!match\00", align 1, !dbg !69
@.str.13 = private unnamed_addr constant [3 x i8] c"ab\00", align 1, !dbg !74
@.str.14 = private unnamed_addr constant [6 x i8] c"^foo \00", align 1, !dbg !79
@.str.15 = private unnamed_addr constant [8 x i8] c"foo bar\00", align 1, !dbg !81
@.str.16 = private unnamed_addr constant [12 x i8] c"baz foo bar\00", align 1, !dbg !86
@.str.17 = private unnamed_addr constant [4 x i8] c"aba\00", align 1, !dbg !88
@.str.18 = private unnamed_addr constant [34 x i8] c"wenbapzbpqSayhzzabaZZqyghaAAahhaA\00", align 1, !dbg !90
@.str.19 = private unnamed_addr constant [34 x i8] c"wenbapzbpqSayhzzaBaZZqyghaAAahhaA\00", align 1, !dbg !95
@.str.20 = private unnamed_addr constant [5 x i8] c"^aba\00", align 1, !dbg !97
@.str.21 = private unnamed_addr constant [34 x i8] c"abawenbapzbpqSayhzzZZqyghaAAahhaA\00", align 1, !dbg !102
@.str.22 = private unnamed_addr constant [5 x i8] c"aba.\00", align 1, !dbg !104
@.str.23 = private unnamed_addr constant [35 x i8] c"wenbapzbpqSayhzzaba.ZZqyghaAAahhaA\00", align 1, !dbg !106
@__func__.grep_error = private unnamed_addr constant [11 x i8] c"grep_error\00", align 1, !dbg !111
@.str.24 = private unnamed_addr constant [11 x i8] c"grep(): %s\00", align 1, !dbg !113

; Function Attrs: nounwind uwtable
define void @gt_grep_escape_extended(ptr noundef %dest, ptr noundef %str, i64 noundef %len) #0 !dbg !143 {
entry:
  %dest.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !155, metadata !DIExpression()), !dbg !163
  store ptr %str, ptr %str.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !156, metadata !DIExpression()), !dbg !164
  store i64 %len, ptr %len.addr, align 8, !tbaa !165
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !157, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !168
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !158, metadata !DIExpression()), !dbg !169
  br label %do.body, !dbg !170

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !171, !tbaa !159
  %tobool = icmp ne ptr %0, null, !dbg !171
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !171

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %str.addr, align 8, !dbg !171, !tbaa !159
  %tobool1 = icmp ne ptr %1, null, !dbg !171
  br i1 %tobool1, label %if.end, label %if.then, !dbg !174

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !175, !tbaa !159
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_grep_escape_extended, ptr noundef @.str.2, i32 noundef 44), !dbg !175
  call void @abort() #7, !dbg !175
  unreachable, !dbg !175

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !174

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !174

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %dest.addr, align 8, !dbg !177, !tbaa !159
  call void @gt_str_reset(ptr noundef %3), !dbg !178
  store i64 0, ptr %i, align 8, !dbg !179, !tbaa !165
  br label %for.cond, !dbg !181

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i64, ptr %i, align 8, !dbg !182, !tbaa !165
  %5 = load i64, ptr %len.addr, align 8, !dbg !184, !tbaa !165
  %cmp = icmp ult i64 %4, %5, !dbg !185
  br i1 %cmp, label %for.body, label %for.end, !dbg !186

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %str.addr, align 8, !dbg !187, !tbaa !159
  %7 = load i64, ptr %i, align 8, !dbg !189, !tbaa !165
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !187
  %8 = load i8, ptr %arrayidx, align 1, !dbg !187, !tbaa !190
  %conv = sext i8 %8 to i32, !dbg !187
  switch i32 %conv, label %sw.default [
    i32 46, label %sw.bb
    i32 42, label %sw.bb
    i32 94, label %sw.bb
    i32 36, label %sw.bb
    i32 43, label %sw.bb
    i32 63, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 91, label %sw.bb
    i32 123, label %sw.bb
    i32 92, label %sw.bb
    i32 124, label %sw.bb
  ], !dbg !191

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %9 = load ptr, ptr %dest.addr, align 8, !dbg !192, !tbaa !159
  call void @gt_str_append_cstr(ptr noundef %9, ptr noundef @.str.3), !dbg !194
  br label %sw.epilog, !dbg !195

sw.default:                                       ; preds = %for.body
  br label %sw.epilog, !dbg !196

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %10 = load ptr, ptr %dest.addr, align 8, !dbg !197, !tbaa !159
  %11 = load ptr, ptr %str.addr, align 8, !dbg !198, !tbaa !159
  %12 = load i64, ptr %i, align 8, !dbg !199, !tbaa !165
  %arrayidx2 = getelementptr inbounds i8, ptr %11, i64 %12, !dbg !198
  %13 = load i8, ptr %arrayidx2, align 1, !dbg !198, !tbaa !190
  call void @gt_str_append_char(ptr noundef %10, i8 noundef signext %13), !dbg !200
  br label %for.inc, !dbg !201

for.inc:                                          ; preds = %sw.epilog
  %14 = load i64, ptr %i, align 8, !dbg !202, !tbaa !165
  %inc = add i64 %14, 1, !dbg !202
  store i64 %inc, ptr %i, align 8, !dbg !202, !tbaa !165
  br label %for.cond, !dbg !203, !llvm.loop !204

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !207
  ret void, !dbg !207
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !208 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !273 void @abort() #3

declare !dbg !277 void @gt_str_reset(ptr noundef) #2

declare !dbg !280 void @gt_str_append_cstr(ptr noundef, ptr noundef) #2

declare !dbg !283 void @gt_str_append_char(ptr noundef, i8 noundef signext) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gt_grep_nt(ptr noundef %match, ptr noundef %pattern, ptr noundef %line, i64 noundef %len, ptr noundef %err) #0 !dbg !286 {
entry:
  %match.addr = alloca ptr, align 8
  %pattern.addr = alloca ptr, align 8
  %line.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %err.addr = alloca ptr, align 8
  %matcher = alloca %struct.regex_t, align 8
  %rval = alloca i32, align 4
  %had_err = alloca i32, align 4
  store ptr %match, ptr %match.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !296, metadata !DIExpression()), !dbg !309
  store ptr %pattern, ptr %pattern.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %pattern.addr, metadata !297, metadata !DIExpression()), !dbg !310
  store ptr %line, ptr %line.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !298, metadata !DIExpression()), !dbg !311
  store i64 %len, ptr %len.addr, align 8, !tbaa !165
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !299, metadata !DIExpression()), !dbg !312
  store ptr %err, ptr %err.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !300, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 16, ptr %matcher) #6, !dbg !314
  tail call void @llvm.dbg.declare(metadata ptr %matcher, metadata !301, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 4, ptr %rval) #6, !dbg !316
  tail call void @llvm.dbg.declare(metadata ptr %rval, metadata !307, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #6, !dbg !316
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !308, metadata !DIExpression()), !dbg !318
  store i32 0, ptr %had_err, align 4, !dbg !318, !tbaa !319
  br label %do.body, !dbg !321

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !322, !tbaa !159
  %tobool = icmp ne ptr %0, null, !dbg !322
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !322

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !322, !tbaa !159
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !322
  br i1 %call, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !326, !tbaa !159
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_grep_nt, ptr noundef @.str.2, i32 noundef 74), !dbg !326
  call void @abort() #7, !dbg !326
  unreachable, !dbg !326

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !325

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !325

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !328

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %pattern.addr, align 8, !dbg !329, !tbaa !159
  %tobool3 = icmp ne ptr %3, null, !dbg !329
  br i1 %tobool3, label %land.lhs.true, label %if.then5, !dbg !329

land.lhs.true:                                    ; preds = %do.body2
  %4 = load ptr, ptr %line.addr, align 8, !dbg !329, !tbaa !159
  %tobool4 = icmp ne ptr %4, null, !dbg !329
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !332

if.then5:                                         ; preds = %land.lhs.true, %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !333, !tbaa !159
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_grep_nt, ptr noundef @.str.2, i32 noundef 75), !dbg !333
  call void @abort() #7, !dbg !333
  unreachable, !dbg !333

if.end7:                                          ; preds = %land.lhs.true
  br label %do.cond8, !dbg !332

do.cond8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !332

do.end9:                                          ; preds = %do.cond8
  %6 = load ptr, ptr %pattern.addr, align 8, !dbg !335, !tbaa !159
  %call10 = call i32 @tre_regcomp(ptr noundef %matcher, ptr noundef %6, i32 noundef 9), !dbg !337
  store i32 %call10, ptr %rval, align 4, !dbg !338, !tbaa !319
  %tobool11 = icmp ne i32 %call10, 0, !dbg !338
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !339

if.then12:                                        ; preds = %do.end9
  %7 = load i32, ptr %rval, align 4, !dbg !340, !tbaa !319
  %8 = load ptr, ptr %err.addr, align 8, !dbg !342, !tbaa !159
  call void @grep_error(i32 noundef %7, ptr noundef %matcher, ptr noundef %8), !dbg !343
  store i32 -1, ptr %had_err, align 4, !dbg !344, !tbaa !319
  br label %if.end13, !dbg !345

if.end13:                                         ; preds = %if.then12, %do.end9
  %9 = load i32, ptr %had_err, align 4, !dbg !346, !tbaa !319
  %tobool14 = icmp ne i32 %9, 0, !dbg !346
  br i1 %tobool14, label %if.end21, label %if.then15, !dbg !348

if.then15:                                        ; preds = %if.end13
  %10 = load ptr, ptr %line.addr, align 8, !dbg !349, !tbaa !159
  %11 = load i64, ptr %len.addr, align 8, !dbg !351, !tbaa !165
  %call16 = call i32 @tre_regnexec(ptr noundef %matcher, ptr noundef %10, i64 noundef %11, i64 noundef 0, ptr noundef null, i32 noundef 0), !dbg !352
  store i32 %call16, ptr %rval, align 4, !dbg !353, !tbaa !319
  %12 = load i32, ptr %rval, align 4, !dbg !354, !tbaa !319
  %tobool17 = icmp ne i32 %12, 0, !dbg !354
  br i1 %tobool17, label %land.lhs.true18, label %if.end20, !dbg !356

land.lhs.true18:                                  ; preds = %if.then15
  %13 = load i32, ptr %rval, align 4, !dbg !357, !tbaa !319
  %cmp = icmp ne i32 %13, 1, !dbg !358
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !359

if.then19:                                        ; preds = %land.lhs.true18
  %14 = load i32, ptr %rval, align 4, !dbg !360, !tbaa !319
  %15 = load ptr, ptr %err.addr, align 8, !dbg !362, !tbaa !159
  call void @grep_error(i32 noundef %14, ptr noundef %matcher, ptr noundef %15), !dbg !363
  store i32 -1, ptr %had_err, align 4, !dbg !364, !tbaa !319
  br label %if.end20, !dbg !365

if.end20:                                         ; preds = %if.then19, %land.lhs.true18, %if.then15
  br label %if.end21, !dbg !366

if.end21:                                         ; preds = %if.end20, %if.end13
  call void @tre_regfree(ptr noundef %matcher), !dbg !367
  %16 = load i32, ptr %had_err, align 4, !dbg !368, !tbaa !319
  %tobool22 = icmp ne i32 %16, 0, !dbg !368
  br i1 %tobool22, label %if.end27, label %if.then23, !dbg !370

if.then23:                                        ; preds = %if.end21
  %17 = load i32, ptr %rval, align 4, !dbg !371, !tbaa !319
  %tobool24 = icmp ne i32 %17, 0, !dbg !371
  br i1 %tobool24, label %if.then25, label %if.else, !dbg !374

if.then25:                                        ; preds = %if.then23
  %18 = load ptr, ptr %match.addr, align 8, !dbg !375, !tbaa !159
  store i8 0, ptr %18, align 1, !dbg !376, !tbaa !377
  br label %if.end26, !dbg !379

if.else:                                          ; preds = %if.then23
  %19 = load ptr, ptr %match.addr, align 8, !dbg !380, !tbaa !159
  store i8 1, ptr %19, align 1, !dbg !381, !tbaa !377
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  br label %if.end27, !dbg !382

if.end27:                                         ; preds = %if.end26, %if.end21
  %20 = load i32, ptr %had_err, align 4, !dbg !383, !tbaa !319
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #6, !dbg !384
  call void @llvm.lifetime.end.p0(i64 4, ptr %rval) #6, !dbg !384
  call void @llvm.lifetime.end.p0(i64 16, ptr %matcher) #6, !dbg !384
  ret i32 %20, !dbg !385
}

declare !dbg !386 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !391 i32 @tre_regcomp(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @grep_error(i32 noundef %errcode, ptr noundef %matcher, ptr noundef %err) #0 !dbg !395 {
entry:
  %errcode.addr = alloca i32, align 4
  %matcher.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %sbuf = alloca [8192 x i8], align 16
  %buf = alloca ptr, align 8
  %bufsize = alloca i64, align 8
  store i32 %errcode, ptr %errcode.addr, align 4, !tbaa !319
  tail call void @llvm.dbg.declare(metadata ptr %errcode.addr, metadata !399, metadata !DIExpression()), !dbg !408
  store ptr %matcher, ptr %matcher.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %matcher.addr, metadata !400, metadata !DIExpression()), !dbg !409
  store ptr %err, ptr %err.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !401, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 8192, ptr %sbuf) #6, !dbg !411
  tail call void @llvm.dbg.declare(metadata ptr %sbuf, metadata !402, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6, !dbg !411
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !406, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufsize) #6, !dbg !414
  tail call void @llvm.dbg.declare(metadata ptr %bufsize, metadata !407, metadata !DIExpression()), !dbg !415
  br label %do.body, !dbg !416

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !417, !tbaa !159
  %tobool = icmp ne ptr %0, null, !dbg !417
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !417

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !417, !tbaa !159
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !417
  br i1 %call, label %if.then, label %if.end, !dbg !420

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !421, !tbaa !159
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.grep_error, ptr noundef @.str.2, i32 noundef 32), !dbg !421
  call void @abort() #7, !dbg !421
  unreachable, !dbg !421

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !420

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !420

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %errcode.addr, align 4, !dbg !423, !tbaa !319
  %4 = load ptr, ptr %matcher.addr, align 8, !dbg !424, !tbaa !159
  %call2 = call i64 @tre_regerror(i32 noundef %3, ptr noundef %4, ptr noundef null, i64 noundef 0), !dbg !425
  store i64 %call2, ptr %bufsize, align 8, !dbg !426, !tbaa !165
  %5 = load i64, ptr %bufsize, align 8, !dbg !427, !tbaa !165
  %call3 = call ptr @gt_malloc_mem(i64 noundef %5, ptr noundef @.str.2, i32 noundef 34), !dbg !427
  store ptr %call3, ptr %buf, align 8, !dbg !428, !tbaa !159
  %6 = load i32, ptr %errcode.addr, align 4, !dbg !429, !tbaa !319
  %7 = load ptr, ptr %matcher.addr, align 8, !dbg !430, !tbaa !159
  %8 = load ptr, ptr %buf, align 8, !dbg !431, !tbaa !159
  %tobool4 = icmp ne ptr %8, null, !dbg !431
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !431

cond.true:                                        ; preds = %do.end
  %9 = load ptr, ptr %buf, align 8, !dbg !432, !tbaa !159
  br label %cond.end, !dbg !431

cond.false:                                       ; preds = %do.end
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %sbuf, i64 0, i64 0, !dbg !433
  br label %cond.end, !dbg !431

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ %arraydecay, %cond.false ], !dbg !431
  %10 = load ptr, ptr %buf, align 8, !dbg !434, !tbaa !159
  %tobool5 = icmp ne ptr %10, null, !dbg !434
  br i1 %tobool5, label %cond.true6, label %cond.false7, !dbg !434

cond.true6:                                       ; preds = %cond.end
  %11 = load i64, ptr %bufsize, align 8, !dbg !435, !tbaa !165
  br label %cond.end8, !dbg !434

cond.false7:                                      ; preds = %cond.end
  br label %cond.end8, !dbg !434

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i64 [ %11, %cond.true6 ], [ 8192, %cond.false7 ], !dbg !434
  %call10 = call i64 @tre_regerror(i32 noundef %6, ptr noundef %7, ptr noundef %cond, i64 noundef %cond9), !dbg !436
  %12 = load ptr, ptr %err.addr, align 8, !dbg !437, !tbaa !159
  %13 = load ptr, ptr %buf, align 8, !dbg !438, !tbaa !159
  %tobool11 = icmp ne ptr %13, null, !dbg !438
  br i1 %tobool11, label %cond.true12, label %cond.false13, !dbg !438

cond.true12:                                      ; preds = %cond.end8
  %14 = load ptr, ptr %buf, align 8, !dbg !439, !tbaa !159
  br label %cond.end15, !dbg !438

cond.false13:                                     ; preds = %cond.end8
  %arraydecay14 = getelementptr inbounds [8192 x i8], ptr %sbuf, i64 0, i64 0, !dbg !440
  br label %cond.end15, !dbg !438

cond.end15:                                       ; preds = %cond.false13, %cond.true12
  %cond16 = phi ptr [ %14, %cond.true12 ], [ %arraydecay14, %cond.false13 ], !dbg !438
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %12, ptr noundef @.str.24, ptr noundef %cond16), !dbg !441
  %15 = load ptr, ptr %buf, align 8, !dbg !442, !tbaa !159
  call void @gt_free_mem(ptr noundef %15, ptr noundef @.str.2, i32 noundef 38), !dbg !442
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufsize) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8192, ptr %sbuf) #6, !dbg !443
  ret void, !dbg !443
}

declare !dbg !444 i32 @tre_regnexec(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !456 void @tre_regfree(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @gt_grep(ptr noundef %match, ptr noundef %pattern, ptr noundef %line, ptr noundef %err) #0 !dbg !459 {
entry:
  %match.addr = alloca ptr, align 8
  %pattern.addr = alloca ptr, align 8
  %line.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %match, ptr %match.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !463, metadata !DIExpression()), !dbg !467
  store ptr %pattern, ptr %pattern.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %pattern.addr, metadata !464, metadata !DIExpression()), !dbg !468
  store ptr %line, ptr %line.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !465, metadata !DIExpression()), !dbg !469
  store ptr %err, ptr %err.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !466, metadata !DIExpression()), !dbg !470
  %0 = load ptr, ptr %match.addr, align 8, !dbg !471, !tbaa !159
  %1 = load ptr, ptr %pattern.addr, align 8, !dbg !472, !tbaa !159
  %2 = load ptr, ptr %line.addr, align 8, !dbg !473, !tbaa !159
  %3 = load ptr, ptr %line.addr, align 8, !dbg !474, !tbaa !159
  %call = call i64 @strlen(ptr noundef %3) #8, !dbg !475
  %4 = load ptr, ptr %err.addr, align 8, !dbg !476, !tbaa !159
  %call1 = call i32 @gt_grep_nt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %call, ptr noundef %4), !dbg !477
  ret i32 %call1, !dbg !478
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !479 i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @gt_grep_unit_test(ptr noundef %err) #0 !dbg !483 {
entry:
  %err.addr = alloca ptr, align 8
  %match = alloca i8, align 1
  %escbuf = alloca ptr, align 8
  %grep_err = alloca i32, align 4
  %had_err = alloca i32, align 4
  store ptr %err, ptr %err.addr, align 8, !tbaa !159
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !487, metadata !DIExpression()), !dbg !492
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #6, !dbg !493
  tail call void @llvm.dbg.declare(metadata ptr %match, metadata !488, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 8, ptr %escbuf) #6, !dbg !495
  tail call void @llvm.dbg.declare(metadata ptr %escbuf, metadata !489, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 4, ptr %grep_err) #6, !dbg !497
  tail call void @llvm.dbg.declare(metadata ptr %grep_err, metadata !490, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #6, !dbg !497
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !491, metadata !DIExpression()), !dbg !499
  store i32 0, ptr %had_err, align 4, !dbg !499, !tbaa !319
  br label %do.body, !dbg !500

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !501, !tbaa !159
  %tobool = icmp ne ptr %0, null, !dbg !501
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !501

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !501, !tbaa !159
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !501
  br i1 %call, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !505, !tbaa !159
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 108), !dbg !505
  call void @abort() #7, !dbg !505
  unreachable, !dbg !505

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !504

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !504

do.end:                                           ; preds = %do.cond
  %call2 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.6, ptr noundef @.str.6, ptr noundef null), !dbg !507
  store i32 %call2, ptr %grep_err, align 4, !dbg !508, !tbaa !319
  br label %do.body3, !dbg !509

do.body3:                                         ; preds = %do.end
  %3 = load i32, ptr %had_err, align 4, !dbg !510, !tbaa !319
  %tobool4 = icmp ne i32 %3, 0, !dbg !510
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !513

if.then5:                                         ; preds = %do.body3
  %4 = load i32, ptr %grep_err, align 4, !dbg !514, !tbaa !319
  %tobool6 = icmp ne i32 %4, 0, !dbg !514
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !517

if.then7:                                         ; preds = %if.then5
  %5 = load ptr, ptr %err.addr, align 8, !dbg !518, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %5, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 111), !dbg !518
  store i32 -1, ptr %had_err, align 4, !dbg !518, !tbaa !319
  br label %if.end8, !dbg !518

if.end8:                                          ; preds = %if.then7, %if.then5
  br label %if.end9, !dbg !517

if.end9:                                          ; preds = %if.end8, %do.body3
  br label %do.cond10, !dbg !513

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !513

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !520

do.body12:                                        ; preds = %do.end11
  %6 = load i32, ptr %had_err, align 4, !dbg !521, !tbaa !319
  %tobool13 = icmp ne i32 %6, 0, !dbg !521
  br i1 %tobool13, label %if.end18, label %if.then14, !dbg !524

if.then14:                                        ; preds = %do.body12
  %7 = load i8, ptr %match, align 1, !dbg !525, !tbaa !377, !range !528, !noundef !529
  %tobool15 = trunc i8 %7 to i1, !dbg !525
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !530

if.then16:                                        ; preds = %if.then14
  %8 = load ptr, ptr %err.addr, align 8, !dbg !531, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %8, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 112), !dbg !531
  store i32 -1, ptr %had_err, align 4, !dbg !531, !tbaa !319
  br label %if.end17, !dbg !531

if.end17:                                         ; preds = %if.then16, %if.then14
  br label %if.end18, !dbg !530

if.end18:                                         ; preds = %if.end17, %do.body12
  br label %do.cond19, !dbg !524

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !524

do.end20:                                         ; preds = %do.cond19
  %call21 = call i32 @gt_grep_nt(ptr noundef %match, ptr noundef @.str.6, ptr noundef @.str.10, i64 noundef 1, ptr noundef null), !dbg !533
  store i32 %call21, ptr %grep_err, align 4, !dbg !534, !tbaa !319
  br label %do.body22, !dbg !535

do.body22:                                        ; preds = %do.end20
  %9 = load i32, ptr %had_err, align 4, !dbg !536, !tbaa !319
  %tobool23 = icmp ne i32 %9, 0, !dbg !536
  br i1 %tobool23, label %if.end28, label %if.then24, !dbg !539

if.then24:                                        ; preds = %do.body22
  %10 = load i32, ptr %grep_err, align 4, !dbg !540, !tbaa !319
  %tobool25 = icmp ne i32 %10, 0, !dbg !540
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !543

if.then26:                                        ; preds = %if.then24
  %11 = load ptr, ptr %err.addr, align 8, !dbg !544, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %11, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 114), !dbg !544
  store i32 -1, ptr %had_err, align 4, !dbg !544, !tbaa !319
  br label %if.end27, !dbg !544

if.end27:                                         ; preds = %if.then26, %if.then24
  br label %if.end28, !dbg !543

if.end28:                                         ; preds = %if.end27, %do.body22
  br label %do.cond29, !dbg !539

do.cond29:                                        ; preds = %if.end28
  br label %do.end30, !dbg !539

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !546

do.body31:                                        ; preds = %do.end30
  %12 = load i32, ptr %had_err, align 4, !dbg !547, !tbaa !319
  %tobool32 = icmp ne i32 %12, 0, !dbg !547
  br i1 %tobool32, label %if.end37, label %if.then33, !dbg !550

if.then33:                                        ; preds = %do.body31
  %13 = load i8, ptr %match, align 1, !dbg !551, !tbaa !377, !range !528, !noundef !529
  %tobool34 = trunc i8 %13 to i1, !dbg !551
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !554

if.then35:                                        ; preds = %if.then33
  %14 = load ptr, ptr %err.addr, align 8, !dbg !555, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %14, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 115), !dbg !555
  store i32 -1, ptr %had_err, align 4, !dbg !555, !tbaa !319
  br label %if.end36, !dbg !555

if.end36:                                         ; preds = %if.then35, %if.then33
  br label %if.end37, !dbg !554

if.end37:                                         ; preds = %if.end36, %do.body31
  br label %do.cond38, !dbg !550

do.cond38:                                        ; preds = %if.end37
  br label %do.end39, !dbg !550

do.end39:                                         ; preds = %do.cond38
  %call40 = call i32 @gt_grep_nt(ptr noundef %match, ptr noundef @.str.11, ptr noundef @.str.10, i64 noundef 2, ptr noundef null), !dbg !557
  store i32 %call40, ptr %grep_err, align 4, !dbg !558, !tbaa !319
  br label %do.body41, !dbg !559

do.body41:                                        ; preds = %do.end39
  %15 = load i32, ptr %had_err, align 4, !dbg !560, !tbaa !319
  %tobool42 = icmp ne i32 %15, 0, !dbg !560
  br i1 %tobool42, label %if.end47, label %if.then43, !dbg !563

if.then43:                                        ; preds = %do.body41
  %16 = load i32, ptr %grep_err, align 4, !dbg !564, !tbaa !319
  %tobool44 = icmp ne i32 %16, 0, !dbg !564
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !567

if.then45:                                        ; preds = %if.then43
  %17 = load ptr, ptr %err.addr, align 8, !dbg !568, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %17, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 117), !dbg !568
  store i32 -1, ptr %had_err, align 4, !dbg !568, !tbaa !319
  br label %if.end46, !dbg !568

if.end46:                                         ; preds = %if.then45, %if.then43
  br label %if.end47, !dbg !567

if.end47:                                         ; preds = %if.end46, %do.body41
  br label %do.cond48, !dbg !563

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !563

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !570

do.body50:                                        ; preds = %do.end49
  %18 = load i32, ptr %had_err, align 4, !dbg !571, !tbaa !319
  %tobool51 = icmp ne i32 %18, 0, !dbg !571
  br i1 %tobool51, label %if.end56, label %if.then52, !dbg !574

if.then52:                                        ; preds = %do.body50
  %19 = load i8, ptr %match, align 1, !dbg !575, !tbaa !377, !range !528, !noundef !529
  %tobool53 = trunc i8 %19 to i1, !dbg !575
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !578

if.then54:                                        ; preds = %if.then52
  %20 = load ptr, ptr %err.addr, align 8, !dbg !579, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %20, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 118), !dbg !579
  store i32 -1, ptr %had_err, align 4, !dbg !579, !tbaa !319
  br label %if.end55, !dbg !579

if.end55:                                         ; preds = %if.then54, %if.then52
  br label %if.end56, !dbg !578

if.end56:                                         ; preds = %if.end55, %do.body50
  br label %do.cond57, !dbg !574

do.cond57:                                        ; preds = %if.end56
  br label %do.end58, !dbg !574

do.end58:                                         ; preds = %do.cond57
  %call59 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.11, ptr noundef @.str.6, ptr noundef null), !dbg !581
  store i32 %call59, ptr %grep_err, align 4, !dbg !582, !tbaa !319
  br label %do.body60, !dbg !583

do.body60:                                        ; preds = %do.end58
  %21 = load i32, ptr %had_err, align 4, !dbg !584, !tbaa !319
  %tobool61 = icmp ne i32 %21, 0, !dbg !584
  br i1 %tobool61, label %if.end66, label %if.then62, !dbg !587

if.then62:                                        ; preds = %do.body60
  %22 = load i32, ptr %grep_err, align 4, !dbg !588, !tbaa !319
  %tobool63 = icmp ne i32 %22, 0, !dbg !588
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !591

if.then64:                                        ; preds = %if.then62
  %23 = load ptr, ptr %err.addr, align 8, !dbg !592, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %23, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 121), !dbg !592
  store i32 -1, ptr %had_err, align 4, !dbg !592, !tbaa !319
  br label %if.end65, !dbg !592

if.end65:                                         ; preds = %if.then64, %if.then62
  br label %if.end66, !dbg !591

if.end66:                                         ; preds = %if.end65, %do.body60
  br label %do.cond67, !dbg !587

do.cond67:                                        ; preds = %if.end66
  br label %do.end68, !dbg !587

do.end68:                                         ; preds = %do.cond67
  br label %do.body69, !dbg !594

do.body69:                                        ; preds = %do.end68
  %24 = load i32, ptr %had_err, align 4, !dbg !595, !tbaa !319
  %tobool70 = icmp ne i32 %24, 0, !dbg !595
  br i1 %tobool70, label %if.end75, label %if.then71, !dbg !598

if.then71:                                        ; preds = %do.body69
  %25 = load i8, ptr %match, align 1, !dbg !599, !tbaa !377, !range !528, !noundef !529
  %tobool72 = trunc i8 %25 to i1, !dbg !599
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !602

if.then73:                                        ; preds = %if.then71
  %26 = load ptr, ptr %err.addr, align 8, !dbg !603, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %26, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 122), !dbg !603
  store i32 -1, ptr %had_err, align 4, !dbg !603, !tbaa !319
  br label %if.end74, !dbg !603

if.end74:                                         ; preds = %if.then73, %if.then71
  br label %if.end75, !dbg !602

if.end75:                                         ; preds = %if.end74, %do.body69
  br label %do.cond76, !dbg !598

do.cond76:                                        ; preds = %if.end75
  br label %do.end77, !dbg !598

do.end77:                                         ; preds = %do.cond76
  %call78 = call i32 @gt_grep_nt(ptr noundef %match, ptr noundef @.str.11, ptr noundef @.str.13, i64 noundef 1, ptr noundef null), !dbg !605
  store i32 %call78, ptr %grep_err, align 4, !dbg !606, !tbaa !319
  br label %do.body79, !dbg !607

do.body79:                                        ; preds = %do.end77
  %27 = load i32, ptr %had_err, align 4, !dbg !608, !tbaa !319
  %tobool80 = icmp ne i32 %27, 0, !dbg !608
  br i1 %tobool80, label %if.end85, label %if.then81, !dbg !611

if.then81:                                        ; preds = %do.body79
  %28 = load i32, ptr %grep_err, align 4, !dbg !612, !tbaa !319
  %tobool82 = icmp ne i32 %28, 0, !dbg !612
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !615

if.then83:                                        ; preds = %if.then81
  %29 = load ptr, ptr %err.addr, align 8, !dbg !616, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %29, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 124), !dbg !616
  store i32 -1, ptr %had_err, align 4, !dbg !616, !tbaa !319
  br label %if.end84, !dbg !616

if.end84:                                         ; preds = %if.then83, %if.then81
  br label %if.end85, !dbg !615

if.end85:                                         ; preds = %if.end84, %do.body79
  br label %do.cond86, !dbg !611

do.cond86:                                        ; preds = %if.end85
  br label %do.end87, !dbg !611

do.end87:                                         ; preds = %do.cond86
  br label %do.body88, !dbg !618

do.body88:                                        ; preds = %do.end87
  %30 = load i32, ptr %had_err, align 4, !dbg !619, !tbaa !319
  %tobool89 = icmp ne i32 %30, 0, !dbg !619
  br i1 %tobool89, label %if.end94, label %if.then90, !dbg !622

if.then90:                                        ; preds = %do.body88
  %31 = load i8, ptr %match, align 1, !dbg !623, !tbaa !377, !range !528, !noundef !529
  %tobool91 = trunc i8 %31 to i1, !dbg !623
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !626

if.then92:                                        ; preds = %if.then90
  %32 = load ptr, ptr %err.addr, align 8, !dbg !627, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %32, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 125), !dbg !627
  store i32 -1, ptr %had_err, align 4, !dbg !627, !tbaa !319
  br label %if.end93, !dbg !627

if.end93:                                         ; preds = %if.then92, %if.then90
  br label %if.end94, !dbg !626

if.end94:                                         ; preds = %if.end93, %do.body88
  br label %do.cond95, !dbg !622

do.cond95:                                        ; preds = %if.end94
  br label %do.end96, !dbg !622

do.end96:                                         ; preds = %do.cond95
  %call97 = call i32 @gt_grep_nt(ptr noundef %match, ptr noundef @.str.11, ptr noundef @.str.11, i64 noundef 0, ptr noundef null), !dbg !629
  store i32 %call97, ptr %grep_err, align 4, !dbg !630, !tbaa !319
  br label %do.body98, !dbg !631

do.body98:                                        ; preds = %do.end96
  %33 = load i32, ptr %had_err, align 4, !dbg !632, !tbaa !319
  %tobool99 = icmp ne i32 %33, 0, !dbg !632
  br i1 %tobool99, label %if.end104, label %if.then100, !dbg !635

if.then100:                                       ; preds = %do.body98
  %34 = load i32, ptr %grep_err, align 4, !dbg !636, !tbaa !319
  %tobool101 = icmp ne i32 %34, 0, !dbg !636
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !639

if.then102:                                       ; preds = %if.then100
  %35 = load ptr, ptr %err.addr, align 8, !dbg !640, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %35, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 127), !dbg !640
  store i32 -1, ptr %had_err, align 4, !dbg !640, !tbaa !319
  br label %if.end103, !dbg !640

if.end103:                                        ; preds = %if.then102, %if.then100
  br label %if.end104, !dbg !639

if.end104:                                        ; preds = %if.end103, %do.body98
  br label %do.cond105, !dbg !635

do.cond105:                                       ; preds = %if.end104
  br label %do.end106, !dbg !635

do.end106:                                        ; preds = %do.cond105
  br label %do.body107, !dbg !642

do.body107:                                       ; preds = %do.end106
  %36 = load i32, ptr %had_err, align 4, !dbg !643, !tbaa !319
  %tobool108 = icmp ne i32 %36, 0, !dbg !643
  br i1 %tobool108, label %if.end113, label %if.then109, !dbg !646

if.then109:                                       ; preds = %do.body107
  %37 = load i8, ptr %match, align 1, !dbg !647, !tbaa !377, !range !528, !noundef !529
  %tobool110 = trunc i8 %37 to i1, !dbg !647
  br i1 %tobool110, label %if.then111, label %if.end112, !dbg !650

if.then111:                                       ; preds = %if.then109
  %38 = load ptr, ptr %err.addr, align 8, !dbg !651, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %38, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 128), !dbg !651
  store i32 -1, ptr %had_err, align 4, !dbg !651, !tbaa !319
  br label %if.end112, !dbg !651

if.end112:                                        ; preds = %if.then111, %if.then109
  br label %if.end113, !dbg !650

if.end113:                                        ; preds = %if.end112, %do.body107
  br label %do.cond114, !dbg !646

do.cond114:                                       ; preds = %if.end113
  br label %do.end115, !dbg !646

do.end115:                                        ; preds = %do.cond114
  %call116 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.14, ptr noundef @.str.15, ptr noundef null), !dbg !653
  store i32 %call116, ptr %grep_err, align 4, !dbg !654, !tbaa !319
  br label %do.body117, !dbg !655

do.body117:                                       ; preds = %do.end115
  %39 = load i32, ptr %had_err, align 4, !dbg !656, !tbaa !319
  %tobool118 = icmp ne i32 %39, 0, !dbg !656
  br i1 %tobool118, label %if.end123, label %if.then119, !dbg !659

if.then119:                                       ; preds = %do.body117
  %40 = load i32, ptr %grep_err, align 4, !dbg !660, !tbaa !319
  %tobool120 = icmp ne i32 %40, 0, !dbg !660
  br i1 %tobool120, label %if.then121, label %if.end122, !dbg !663

if.then121:                                       ; preds = %if.then119
  %41 = load ptr, ptr %err.addr, align 8, !dbg !664, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %41, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 131), !dbg !664
  store i32 -1, ptr %had_err, align 4, !dbg !664, !tbaa !319
  br label %if.end122, !dbg !664

if.end122:                                        ; preds = %if.then121, %if.then119
  br label %if.end123, !dbg !663

if.end123:                                        ; preds = %if.end122, %do.body117
  br label %do.cond124, !dbg !659

do.cond124:                                       ; preds = %if.end123
  br label %do.end125, !dbg !659

do.end125:                                        ; preds = %do.cond124
  br label %do.body126, !dbg !666

do.body126:                                       ; preds = %do.end125
  %42 = load i32, ptr %had_err, align 4, !dbg !667, !tbaa !319
  %tobool127 = icmp ne i32 %42, 0, !dbg !667
  br i1 %tobool127, label %if.end132, label %if.then128, !dbg !670

if.then128:                                       ; preds = %do.body126
  %43 = load i8, ptr %match, align 1, !dbg !671, !tbaa !377, !range !528, !noundef !529
  %tobool129 = trunc i8 %43 to i1, !dbg !671
  br i1 %tobool129, label %if.end131, label %if.then130, !dbg !674

if.then130:                                       ; preds = %if.then128
  %44 = load ptr, ptr %err.addr, align 8, !dbg !675, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %44, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 132), !dbg !675
  store i32 -1, ptr %had_err, align 4, !dbg !675, !tbaa !319
  br label %if.end131, !dbg !675

if.end131:                                        ; preds = %if.then130, %if.then128
  br label %if.end132, !dbg !674

if.end132:                                        ; preds = %if.end131, %do.body126
  br label %do.cond133, !dbg !670

do.cond133:                                       ; preds = %if.end132
  br label %do.end134, !dbg !670

do.end134:                                        ; preds = %do.cond133
  %call135 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.14, ptr noundef @.str.16, ptr noundef null), !dbg !677
  store i32 %call135, ptr %grep_err, align 4, !dbg !678, !tbaa !319
  br label %do.body136, !dbg !679

do.body136:                                       ; preds = %do.end134
  %45 = load i32, ptr %had_err, align 4, !dbg !680, !tbaa !319
  %tobool137 = icmp ne i32 %45, 0, !dbg !680
  br i1 %tobool137, label %if.end142, label %if.then138, !dbg !683

if.then138:                                       ; preds = %do.body136
  %46 = load i32, ptr %grep_err, align 4, !dbg !684, !tbaa !319
  %tobool139 = icmp ne i32 %46, 0, !dbg !684
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !687

if.then140:                                       ; preds = %if.then138
  %47 = load ptr, ptr %err.addr, align 8, !dbg !688, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %47, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 134), !dbg !688
  store i32 -1, ptr %had_err, align 4, !dbg !688, !tbaa !319
  br label %if.end141, !dbg !688

if.end141:                                        ; preds = %if.then140, %if.then138
  br label %if.end142, !dbg !687

if.end142:                                        ; preds = %if.end141, %do.body136
  br label %do.cond143, !dbg !683

do.cond143:                                       ; preds = %if.end142
  br label %do.end144, !dbg !683

do.end144:                                        ; preds = %do.cond143
  br label %do.body145, !dbg !690

do.body145:                                       ; preds = %do.end144
  %48 = load i32, ptr %had_err, align 4, !dbg !691, !tbaa !319
  %tobool146 = icmp ne i32 %48, 0, !dbg !691
  br i1 %tobool146, label %if.end151, label %if.then147, !dbg !694

if.then147:                                       ; preds = %do.body145
  %49 = load i8, ptr %match, align 1, !dbg !695, !tbaa !377, !range !528, !noundef !529
  %tobool148 = trunc i8 %49 to i1, !dbg !695
  br i1 %tobool148, label %if.then149, label %if.end150, !dbg !698

if.then149:                                       ; preds = %if.then147
  %50 = load ptr, ptr %err.addr, align 8, !dbg !699, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %50, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 135), !dbg !699
  store i32 -1, ptr %had_err, align 4, !dbg !699, !tbaa !319
  br label %if.end150, !dbg !699

if.end150:                                        ; preds = %if.then149, %if.then147
  br label %if.end151, !dbg !698

if.end151:                                        ; preds = %if.end150, %do.body145
  br label %do.cond152, !dbg !694

do.cond152:                                       ; preds = %if.end151
  br label %do.end153, !dbg !694

do.end153:                                        ; preds = %do.cond152
  %call154 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef null), !dbg !701
  store i32 %call154, ptr %grep_err, align 4, !dbg !702, !tbaa !319
  br label %do.body155, !dbg !703

do.body155:                                       ; preds = %do.end153
  %51 = load i32, ptr %had_err, align 4, !dbg !704, !tbaa !319
  %tobool156 = icmp ne i32 %51, 0, !dbg !704
  br i1 %tobool156, label %if.end161, label %if.then157, !dbg !707

if.then157:                                       ; preds = %do.body155
  %52 = load i32, ptr %grep_err, align 4, !dbg !708, !tbaa !319
  %tobool158 = icmp ne i32 %52, 0, !dbg !708
  br i1 %tobool158, label %if.then159, label %if.end160, !dbg !711

if.then159:                                       ; preds = %if.then157
  %53 = load ptr, ptr %err.addr, align 8, !dbg !712, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %53, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 138), !dbg !712
  store i32 -1, ptr %had_err, align 4, !dbg !712, !tbaa !319
  br label %if.end160, !dbg !712

if.end160:                                        ; preds = %if.then159, %if.then157
  br label %if.end161, !dbg !711

if.end161:                                        ; preds = %if.end160, %do.body155
  br label %do.cond162, !dbg !707

do.cond162:                                       ; preds = %if.end161
  br label %do.end163, !dbg !707

do.end163:                                        ; preds = %do.cond162
  br label %do.body164, !dbg !714

do.body164:                                       ; preds = %do.end163
  %54 = load i32, ptr %had_err, align 4, !dbg !715, !tbaa !319
  %tobool165 = icmp ne i32 %54, 0, !dbg !715
  br i1 %tobool165, label %if.end170, label %if.then166, !dbg !718

if.then166:                                       ; preds = %do.body164
  %55 = load i8, ptr %match, align 1, !dbg !719, !tbaa !377, !range !528, !noundef !529
  %tobool167 = trunc i8 %55 to i1, !dbg !719
  br i1 %tobool167, label %if.end169, label %if.then168, !dbg !722

if.then168:                                       ; preds = %if.then166
  %56 = load ptr, ptr %err.addr, align 8, !dbg !723, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %56, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 139), !dbg !723
  store i32 -1, ptr %had_err, align 4, !dbg !723, !tbaa !319
  br label %if.end169, !dbg !723

if.end169:                                        ; preds = %if.then168, %if.then166
  br label %if.end170, !dbg !722

if.end170:                                        ; preds = %if.end169, %do.body164
  br label %do.cond171, !dbg !718

do.cond171:                                       ; preds = %if.end170
  br label %do.end172, !dbg !718

do.end172:                                        ; preds = %do.cond171
  %call173 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.17, ptr noundef @.str.19, ptr noundef null), !dbg !725
  store i32 %call173, ptr %grep_err, align 4, !dbg !726, !tbaa !319
  br label %do.body174, !dbg !727

do.body174:                                       ; preds = %do.end172
  %57 = load i32, ptr %had_err, align 4, !dbg !728, !tbaa !319
  %tobool175 = icmp ne i32 %57, 0, !dbg !728
  br i1 %tobool175, label %if.end180, label %if.then176, !dbg !731

if.then176:                                       ; preds = %do.body174
  %58 = load i32, ptr %grep_err, align 4, !dbg !732, !tbaa !319
  %tobool177 = icmp ne i32 %58, 0, !dbg !732
  br i1 %tobool177, label %if.then178, label %if.end179, !dbg !735

if.then178:                                       ; preds = %if.then176
  %59 = load ptr, ptr %err.addr, align 8, !dbg !736, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %59, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 142), !dbg !736
  store i32 -1, ptr %had_err, align 4, !dbg !736, !tbaa !319
  br label %if.end179, !dbg !736

if.end179:                                        ; preds = %if.then178, %if.then176
  br label %if.end180, !dbg !735

if.end180:                                        ; preds = %if.end179, %do.body174
  br label %do.cond181, !dbg !731

do.cond181:                                       ; preds = %if.end180
  br label %do.end182, !dbg !731

do.end182:                                        ; preds = %do.cond181
  br label %do.body183, !dbg !738

do.body183:                                       ; preds = %do.end182
  %60 = load i32, ptr %had_err, align 4, !dbg !739, !tbaa !319
  %tobool184 = icmp ne i32 %60, 0, !dbg !739
  br i1 %tobool184, label %if.end189, label %if.then185, !dbg !742

if.then185:                                       ; preds = %do.body183
  %61 = load i8, ptr %match, align 1, !dbg !743, !tbaa !377, !range !528, !noundef !529
  %tobool186 = trunc i8 %61 to i1, !dbg !743
  br i1 %tobool186, label %if.then187, label %if.end188, !dbg !746

if.then187:                                       ; preds = %if.then185
  %62 = load ptr, ptr %err.addr, align 8, !dbg !747, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %62, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 143), !dbg !747
  store i32 -1, ptr %had_err, align 4, !dbg !747, !tbaa !319
  br label %if.end188, !dbg !747

if.end188:                                        ; preds = %if.then187, %if.then185
  br label %if.end189, !dbg !746

if.end189:                                        ; preds = %if.end188, %do.body183
  br label %do.cond190, !dbg !742

do.cond190:                                       ; preds = %if.end189
  br label %do.end191, !dbg !742

do.end191:                                        ; preds = %do.cond190
  %call192 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.20, ptr noundef @.str.21, ptr noundef null), !dbg !749
  store i32 %call192, ptr %grep_err, align 4, !dbg !750, !tbaa !319
  br label %do.body193, !dbg !751

do.body193:                                       ; preds = %do.end191
  %63 = load i32, ptr %had_err, align 4, !dbg !752, !tbaa !319
  %tobool194 = icmp ne i32 %63, 0, !dbg !752
  br i1 %tobool194, label %if.end199, label %if.then195, !dbg !755

if.then195:                                       ; preds = %do.body193
  %64 = load i32, ptr %grep_err, align 4, !dbg !756, !tbaa !319
  %tobool196 = icmp ne i32 %64, 0, !dbg !756
  br i1 %tobool196, label %if.then197, label %if.end198, !dbg !759

if.then197:                                       ; preds = %if.then195
  %65 = load ptr, ptr %err.addr, align 8, !dbg !760, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %65, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 146), !dbg !760
  store i32 -1, ptr %had_err, align 4, !dbg !760, !tbaa !319
  br label %if.end198, !dbg !760

if.end198:                                        ; preds = %if.then197, %if.then195
  br label %if.end199, !dbg !759

if.end199:                                        ; preds = %if.end198, %do.body193
  br label %do.cond200, !dbg !755

do.cond200:                                       ; preds = %if.end199
  br label %do.end201, !dbg !755

do.end201:                                        ; preds = %do.cond200
  br label %do.body202, !dbg !762

do.body202:                                       ; preds = %do.end201
  %66 = load i32, ptr %had_err, align 4, !dbg !763, !tbaa !319
  %tobool203 = icmp ne i32 %66, 0, !dbg !763
  br i1 %tobool203, label %if.end208, label %if.then204, !dbg !766

if.then204:                                       ; preds = %do.body202
  %67 = load i8, ptr %match, align 1, !dbg !767, !tbaa !377, !range !528, !noundef !529
  %tobool205 = trunc i8 %67 to i1, !dbg !767
  br i1 %tobool205, label %if.end207, label %if.then206, !dbg !770

if.then206:                                       ; preds = %if.then204
  %68 = load ptr, ptr %err.addr, align 8, !dbg !771, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %68, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 147), !dbg !771
  store i32 -1, ptr %had_err, align 4, !dbg !771, !tbaa !319
  br label %if.end207, !dbg !771

if.end207:                                        ; preds = %if.then206, %if.then204
  br label %if.end208, !dbg !770

if.end208:                                        ; preds = %if.end207, %do.body202
  br label %do.cond209, !dbg !766

do.cond209:                                       ; preds = %if.end208
  br label %do.end210, !dbg !766

do.end210:                                        ; preds = %do.cond209
  %call211 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.20, ptr noundef @.str.18, ptr noundef null), !dbg !773
  store i32 %call211, ptr %grep_err, align 4, !dbg !774, !tbaa !319
  br label %do.body212, !dbg !775

do.body212:                                       ; preds = %do.end210
  %69 = load i32, ptr %had_err, align 4, !dbg !776, !tbaa !319
  %tobool213 = icmp ne i32 %69, 0, !dbg !776
  br i1 %tobool213, label %if.end218, label %if.then214, !dbg !779

if.then214:                                       ; preds = %do.body212
  %70 = load i32, ptr %grep_err, align 4, !dbg !780, !tbaa !319
  %tobool215 = icmp ne i32 %70, 0, !dbg !780
  br i1 %tobool215, label %if.then216, label %if.end217, !dbg !783

if.then216:                                       ; preds = %if.then214
  %71 = load ptr, ptr %err.addr, align 8, !dbg !784, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %71, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 150), !dbg !784
  store i32 -1, ptr %had_err, align 4, !dbg !784, !tbaa !319
  br label %if.end217, !dbg !784

if.end217:                                        ; preds = %if.then216, %if.then214
  br label %if.end218, !dbg !783

if.end218:                                        ; preds = %if.end217, %do.body212
  br label %do.cond219, !dbg !779

do.cond219:                                       ; preds = %if.end218
  br label %do.end220, !dbg !779

do.end220:                                        ; preds = %do.cond219
  br label %do.body221, !dbg !786

do.body221:                                       ; preds = %do.end220
  %72 = load i32, ptr %had_err, align 4, !dbg !787, !tbaa !319
  %tobool222 = icmp ne i32 %72, 0, !dbg !787
  br i1 %tobool222, label %if.end227, label %if.then223, !dbg !790

if.then223:                                       ; preds = %do.body221
  %73 = load i8, ptr %match, align 1, !dbg !791, !tbaa !377, !range !528, !noundef !529
  %tobool224 = trunc i8 %73 to i1, !dbg !791
  br i1 %tobool224, label %if.then225, label %if.end226, !dbg !794

if.then225:                                       ; preds = %if.then223
  %74 = load ptr, ptr %err.addr, align 8, !dbg !795, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %74, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 151), !dbg !795
  store i32 -1, ptr %had_err, align 4, !dbg !795, !tbaa !319
  br label %if.end226, !dbg !795

if.end226:                                        ; preds = %if.then225, %if.then223
  br label %if.end227, !dbg !794

if.end227:                                        ; preds = %if.end226, %do.body221
  br label %do.cond228, !dbg !790

do.cond228:                                       ; preds = %if.end227
  br label %do.end229, !dbg !790

do.end229:                                        ; preds = %do.cond228
  %call230 = call ptr @gt_str_new(), !dbg !797
  store ptr %call230, ptr %escbuf, align 8, !dbg !798, !tbaa !159
  %call231 = call i32 @gt_grep(ptr noundef %match, ptr noundef @.str.22, ptr noundef @.str.18, ptr noundef null), !dbg !799
  store i32 %call231, ptr %grep_err, align 4, !dbg !800, !tbaa !319
  br label %do.body232, !dbg !801

do.body232:                                       ; preds = %do.end229
  %75 = load i32, ptr %had_err, align 4, !dbg !802, !tbaa !319
  %tobool233 = icmp ne i32 %75, 0, !dbg !802
  br i1 %tobool233, label %if.end238, label %if.then234, !dbg !805

if.then234:                                       ; preds = %do.body232
  %76 = load i32, ptr %grep_err, align 4, !dbg !806, !tbaa !319
  %tobool235 = icmp ne i32 %76, 0, !dbg !806
  br i1 %tobool235, label %if.then236, label %if.end237, !dbg !809

if.then236:                                       ; preds = %if.then234
  %77 = load ptr, ptr %err.addr, align 8, !dbg !810, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %77, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 156), !dbg !810
  store i32 -1, ptr %had_err, align 4, !dbg !810, !tbaa !319
  br label %if.end237, !dbg !810

if.end237:                                        ; preds = %if.then236, %if.then234
  br label %if.end238, !dbg !809

if.end238:                                        ; preds = %if.end237, %do.body232
  br label %do.cond239, !dbg !805

do.cond239:                                       ; preds = %if.end238
  br label %do.end240, !dbg !805

do.end240:                                        ; preds = %do.cond239
  br label %do.body241, !dbg !812

do.body241:                                       ; preds = %do.end240
  %78 = load i32, ptr %had_err, align 4, !dbg !813, !tbaa !319
  %tobool242 = icmp ne i32 %78, 0, !dbg !813
  br i1 %tobool242, label %if.end247, label %if.then243, !dbg !816

if.then243:                                       ; preds = %do.body241
  %79 = load i8, ptr %match, align 1, !dbg !817, !tbaa !377, !range !528, !noundef !529
  %tobool244 = trunc i8 %79 to i1, !dbg !817
  br i1 %tobool244, label %if.end246, label %if.then245, !dbg !820

if.then245:                                       ; preds = %if.then243
  %80 = load ptr, ptr %err.addr, align 8, !dbg !821, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %80, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 157), !dbg !821
  store i32 -1, ptr %had_err, align 4, !dbg !821, !tbaa !319
  br label %if.end246, !dbg !821

if.end246:                                        ; preds = %if.then245, %if.then243
  br label %if.end247, !dbg !820

if.end247:                                        ; preds = %if.end246, %do.body241
  br label %do.cond248, !dbg !816

do.cond248:                                       ; preds = %if.end247
  br label %do.end249, !dbg !816

do.end249:                                        ; preds = %do.cond248
  %81 = load ptr, ptr %escbuf, align 8, !dbg !823, !tbaa !159
  call void @gt_grep_escape_extended(ptr noundef %81, ptr noundef @.str.22, i64 noundef 4), !dbg !824
  %82 = load ptr, ptr %escbuf, align 8, !dbg !825, !tbaa !159
  %call250 = call ptr @gt_str_get(ptr noundef %82), !dbg !826
  %call251 = call i32 @gt_grep(ptr noundef %match, ptr noundef %call250, ptr noundef @.str.18, ptr noundef null), !dbg !827
  store i32 %call251, ptr %grep_err, align 4, !dbg !828, !tbaa !319
  br label %do.body252, !dbg !829

do.body252:                                       ; preds = %do.end249
  %83 = load i32, ptr %had_err, align 4, !dbg !830, !tbaa !319
  %tobool253 = icmp ne i32 %83, 0, !dbg !830
  br i1 %tobool253, label %if.end258, label %if.then254, !dbg !833

if.then254:                                       ; preds = %do.body252
  %84 = load i32, ptr %grep_err, align 4, !dbg !834, !tbaa !319
  %tobool255 = icmp ne i32 %84, 0, !dbg !834
  br i1 %tobool255, label %if.then256, label %if.end257, !dbg !837

if.then256:                                       ; preds = %if.then254
  %85 = load ptr, ptr %err.addr, align 8, !dbg !838, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %85, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 162), !dbg !838
  store i32 -1, ptr %had_err, align 4, !dbg !838, !tbaa !319
  br label %if.end257, !dbg !838

if.end257:                                        ; preds = %if.then256, %if.then254
  br label %if.end258, !dbg !837

if.end258:                                        ; preds = %if.end257, %do.body252
  br label %do.cond259, !dbg !833

do.cond259:                                       ; preds = %if.end258
  br label %do.end260, !dbg !833

do.end260:                                        ; preds = %do.cond259
  br label %do.body261, !dbg !840

do.body261:                                       ; preds = %do.end260
  %86 = load i32, ptr %had_err, align 4, !dbg !841, !tbaa !319
  %tobool262 = icmp ne i32 %86, 0, !dbg !841
  br i1 %tobool262, label %if.end267, label %if.then263, !dbg !844

if.then263:                                       ; preds = %do.body261
  %87 = load i8, ptr %match, align 1, !dbg !845, !tbaa !377, !range !528, !noundef !529
  %tobool264 = trunc i8 %87 to i1, !dbg !845
  br i1 %tobool264, label %if.then265, label %if.end266, !dbg !848

if.then265:                                       ; preds = %if.then263
  %88 = load ptr, ptr %err.addr, align 8, !dbg !849, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %88, ptr noundef @.str.7, ptr noundef @.str.12, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 163), !dbg !849
  store i32 -1, ptr %had_err, align 4, !dbg !849, !tbaa !319
  br label %if.end266, !dbg !849

if.end266:                                        ; preds = %if.then265, %if.then263
  br label %if.end267, !dbg !848

if.end267:                                        ; preds = %if.end266, %do.body261
  br label %do.cond268, !dbg !844

do.cond268:                                       ; preds = %if.end267
  br label %do.end269, !dbg !844

do.end269:                                        ; preds = %do.cond268
  %89 = load ptr, ptr %escbuf, align 8, !dbg !851, !tbaa !159
  call void @gt_grep_escape_extended(ptr noundef %89, ptr noundef @.str.22, i64 noundef 4), !dbg !852
  %90 = load ptr, ptr %escbuf, align 8, !dbg !853, !tbaa !159
  %call270 = call ptr @gt_str_get(ptr noundef %90), !dbg !854
  %call271 = call i32 @gt_grep(ptr noundef %match, ptr noundef %call270, ptr noundef @.str.23, ptr noundef null), !dbg !855
  store i32 %call271, ptr %grep_err, align 4, !dbg !856, !tbaa !319
  br label %do.body272, !dbg !857

do.body272:                                       ; preds = %do.end269
  %91 = load i32, ptr %had_err, align 4, !dbg !858, !tbaa !319
  %tobool273 = icmp ne i32 %91, 0, !dbg !858
  br i1 %tobool273, label %if.end278, label %if.then274, !dbg !861

if.then274:                                       ; preds = %do.body272
  %92 = load i32, ptr %grep_err, align 4, !dbg !862, !tbaa !319
  %tobool275 = icmp ne i32 %92, 0, !dbg !862
  br i1 %tobool275, label %if.then276, label %if.end277, !dbg !865

if.then276:                                       ; preds = %if.then274
  %93 = load ptr, ptr %err.addr, align 8, !dbg !866, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %93, ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 168), !dbg !866
  store i32 -1, ptr %had_err, align 4, !dbg !866, !tbaa !319
  br label %if.end277, !dbg !866

if.end277:                                        ; preds = %if.then276, %if.then274
  br label %if.end278, !dbg !865

if.end278:                                        ; preds = %if.end277, %do.body272
  br label %do.cond279, !dbg !861

do.cond279:                                       ; preds = %if.end278
  br label %do.end280, !dbg !861

do.end280:                                        ; preds = %do.cond279
  br label %do.body281, !dbg !868

do.body281:                                       ; preds = %do.end280
  %94 = load i32, ptr %had_err, align 4, !dbg !869, !tbaa !319
  %tobool282 = icmp ne i32 %94, 0, !dbg !869
  br i1 %tobool282, label %if.end287, label %if.then283, !dbg !872

if.then283:                                       ; preds = %do.body281
  %95 = load i8, ptr %match, align 1, !dbg !873, !tbaa !377, !range !528, !noundef !529
  %tobool284 = trunc i8 %95 to i1, !dbg !873
  br i1 %tobool284, label %if.end286, label %if.then285, !dbg !876

if.then285:                                       ; preds = %if.then283
  %96 = load ptr, ptr %err.addr, align 8, !dbg !877, !tbaa !159
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %96, ptr noundef @.str.7, ptr noundef @.str.9, ptr noundef @__func__.gt_grep_unit_test, ptr noundef @.str.2, i32 noundef 169), !dbg !877
  store i32 -1, ptr %had_err, align 4, !dbg !877, !tbaa !319
  br label %if.end286, !dbg !877

if.end286:                                        ; preds = %if.then285, %if.then283
  br label %if.end287, !dbg !876

if.end287:                                        ; preds = %if.end286, %do.body281
  br label %do.cond288, !dbg !872

do.cond288:                                       ; preds = %if.end287
  br label %do.end289, !dbg !872

do.end289:                                        ; preds = %do.cond288
  %97 = load ptr, ptr %escbuf, align 8, !dbg !879, !tbaa !159
  call void @gt_str_delete(ptr noundef %97), !dbg !880
  %98 = load i32, ptr %had_err, align 4, !dbg !881, !tbaa !319
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %grep_err) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 8, ptr %escbuf) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #6, !dbg !882
  ret i32 %98, !dbg !883
}

declare !dbg !884 void @gt_error_set(ptr noundef, ptr noundef, ...) #2

declare !dbg !887 ptr @gt_str_new() #2

declare !dbg !890 ptr @gt_str_get(ptr noundef) #2

declare !dbg !895 void @gt_str_delete(ptr noundef) #2

declare !dbg !896 i64 @tre_regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !899 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !903 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!116}
!llvm.module.flags = !{!137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/core/grep.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "6e2e43a48187bb8723956d64dd81a5f4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 24)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 16)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 2)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 30)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 88, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 11)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !20, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 18)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !25, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1160, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 145)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 6)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 4)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !25, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 7)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !59, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 8)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !9, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !64, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 34)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !92, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 5)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !92, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !99, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 35)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !35, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !36)
!116 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !117, globals: !136, splitDebugInlining: false, nameTableKind: None)
!117 = !{!118}
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 78, baseType: !120, size: 32, elements: !121)
!119 = !DIFile(filename: "src/external/tre/include/tre/tre.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "cebe218ae535d7a0e7f4e5752dd0e465")
!120 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!122 = !DIEnumerator(name: "REG_OK", value: 0)
!123 = !DIEnumerator(name: "REG_NOMATCH", value: 1)
!124 = !DIEnumerator(name: "REG_BADPAT", value: 2)
!125 = !DIEnumerator(name: "REG_ECOLLATE", value: 3)
!126 = !DIEnumerator(name: "REG_ECTYPE", value: 4)
!127 = !DIEnumerator(name: "REG_EESCAPE", value: 5)
!128 = !DIEnumerator(name: "REG_ESUBREG", value: 6)
!129 = !DIEnumerator(name: "REG_EBRACK", value: 7)
!130 = !DIEnumerator(name: "REG_EPAREN", value: 8)
!131 = !DIEnumerator(name: "REG_EBRACE", value: 9)
!132 = !DIEnumerator(name: "REG_BADBR", value: 10)
!133 = !DIEnumerator(name: "REG_ERANGE", value: 11)
!134 = !DIEnumerator(name: "REG_ESPACE", value: 12)
!135 = !DIEnumerator(name: "REG_BADRPT", value: 13)
!136 = !{!0, !7, !12, !18, !23, !28, !33, !38, !40, !45, !47, !52, !57, !62, !67, !69, !74, !79, !81, !86, !88, !90, !95, !97, !102, !104, !106, !111, !113}
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 8, !"PIC Level", i32 2}
!141 = !{i32 7, !"uwtable", i32 2}
!142 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!143 = distinct !DISubprogram(name: "gt_grep_escape_extended", scope: !2, file: !2, line: 41, type: !144, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !154)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146, !150, !151}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !148, line: 27, baseType: !149)
!148 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !148, line: 27, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 70, baseType: !153)
!152 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!153 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!154 = !{!155, !156, !157, !158}
!155 = !DILocalVariable(name: "dest", arg: 1, scope: !143, file: !2, line: 41, type: !146)
!156 = !DILocalVariable(name: "str", arg: 2, scope: !143, file: !2, line: 41, type: !150)
!157 = !DILocalVariable(name: "len", arg: 3, scope: !143, file: !2, line: 41, type: !151)
!158 = !DILocalVariable(name: "i", scope: !143, file: !2, line: 43, type: !151)
!159 = !{!160, !160, i64 0}
!160 = !{!"any pointer", !161, i64 0}
!161 = !{!"omnipotent char", !162, i64 0}
!162 = !{!"Simple C/C++ TBAA"}
!163 = !DILocation(line: 41, column: 37, scope: !143)
!164 = !DILocation(line: 41, column: 55, scope: !143)
!165 = !{!166, !166, i64 0}
!166 = !{!"long", !161, i64 0}
!167 = !DILocation(line: 41, column: 67, scope: !143)
!168 = !DILocation(line: 43, column: 3, scope: !143)
!169 = !DILocation(line: 43, column: 10, scope: !143)
!170 = !DILocation(line: 44, column: 3, scope: !143)
!171 = !DILocation(line: 44, column: 3, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 44, column: 3)
!173 = distinct !DILexicalBlock(scope: !143, file: !2, line: 44, column: 3)
!174 = !DILocation(line: 44, column: 3, scope: !173)
!175 = !DILocation(line: 44, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !2, line: 44, column: 3)
!177 = !DILocation(line: 45, column: 16, scope: !143)
!178 = !DILocation(line: 45, column: 3, scope: !143)
!179 = !DILocation(line: 46, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !143, file: !2, line: 46, column: 3)
!181 = !DILocation(line: 46, column: 8, scope: !180)
!182 = !DILocation(line: 46, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !2, line: 46, column: 3)
!184 = !DILocation(line: 46, column: 18, scope: !183)
!185 = !DILocation(line: 46, column: 16, scope: !183)
!186 = !DILocation(line: 46, column: 3, scope: !180)
!187 = !DILocation(line: 47, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !2, line: 46, column: 28)
!189 = !DILocation(line: 47, column: 17, scope: !188)
!190 = !{!161, !161, i64 0}
!191 = !DILocation(line: 47, column: 5, scope: !188)
!192 = !DILocation(line: 60, column: 28, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !2, line: 47, column: 21)
!194 = !DILocation(line: 60, column: 9, scope: !193)
!195 = !DILocation(line: 61, column: 9, scope: !193)
!196 = !DILocation(line: 63, column: 9, scope: !193)
!197 = !DILocation(line: 65, column: 24, scope: !188)
!198 = !DILocation(line: 65, column: 30, scope: !188)
!199 = !DILocation(line: 65, column: 34, scope: !188)
!200 = !DILocation(line: 65, column: 5, scope: !188)
!201 = !DILocation(line: 66, column: 3, scope: !188)
!202 = !DILocation(line: 46, column: 24, scope: !183)
!203 = !DILocation(line: 46, column: 3, scope: !183)
!204 = distinct !{!204, !186, !205, !206}
!205 = !DILocation(line: 66, column: 3, scope: !180)
!206 = !{!"llvm.loop.mustprogress"}
!207 = !DILocation(line: 67, column: 1, scope: !143)
!208 = !DISubprogram(name: "fprintf", scope: !209, file: !209, line: 350, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !213, !272, null}
!212 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !216, line: 7, baseType: !217)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !218, line: 49, size: 1728, elements: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!219 = !{!220, !221, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !236, !238, !239, !240, !244, !246, !248, !252, !255, !257, !260, !263, !264, !266, !267, !268}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !217, file: !218, line: 51, baseType: !212, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !217, file: !218, line: 54, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !217, file: !218, line: 55, baseType: !222, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !217, file: !218, line: 56, baseType: !222, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !217, file: !218, line: 57, baseType: !222, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !217, file: !218, line: 58, baseType: !222, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !217, file: !218, line: 59, baseType: !222, size: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !217, file: !218, line: 60, baseType: !222, size: 64, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !217, file: !218, line: 61, baseType: !222, size: 64, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !217, file: !218, line: 64, baseType: !222, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !217, file: !218, line: 65, baseType: !222, size: 64, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !217, file: !218, line: 66, baseType: !222, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !217, file: !218, line: 68, baseType: !234, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !218, line: 36, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !217, file: !218, line: 70, baseType: !237, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !217, file: !218, line: 72, baseType: !212, size: 32, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !217, file: !218, line: 73, baseType: !212, size: 32, offset: 928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !217, file: !218, line: 74, baseType: !241, size: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !242, line: 152, baseType: !243)
!242 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!243 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !217, file: !218, line: 77, baseType: !245, size: 16, offset: 1024)
!245 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !217, file: !218, line: 78, baseType: !247, size: 8, offset: 1040)
!247 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !217, file: !218, line: 79, baseType: !249, size: 8, offset: 1048)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 1)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !217, file: !218, line: 81, baseType: !253, size: 64, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !218, line: 43, baseType: null)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !217, file: !218, line: 89, baseType: !256, size: 64, offset: 1152)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !242, line: 153, baseType: !243)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !217, file: !218, line: 91, baseType: !258, size: 64, offset: 1216)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !218, line: 37, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !217, file: !218, line: 92, baseType: !261, size: 64, offset: 1280)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !218, line: 38, flags: DIFlagFwdDecl)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !217, file: !218, line: 93, baseType: !237, size: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !217, file: !218, line: 94, baseType: !265, size: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !217, file: !218, line: 95, baseType: !151, size: 64, offset: 1472)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !217, file: !218, line: 96, baseType: !212, size: 32, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !217, file: !218, line: 98, baseType: !269, size: 160, offset: 1568)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 20)
!272 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!273 = !DISubprogram(name: "abort", scope: !274, file: !274, line: 598, type: !275, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!274 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!275 = !DISubroutineType(types: !276)
!276 = !{null}
!277 = !DISubprogram(name: "gt_str_reset", scope: !148, file: !148, line: 70, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !146}
!280 = !DISubprogram(name: "gt_str_append_cstr", scope: !148, file: !148, line: 46, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !146, !150}
!283 = !DISubprogram(name: "gt_str_append_char", scope: !148, file: !148, line: 51, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !146, !4}
!286 = distinct !DISubprogram(name: "gt_grep_nt", scope: !2, file: !2, line: 69, type: !287, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !295)
!287 = !DISubroutineType(types: !288)
!288 = !{!212, !289, !150, !150, !151, !291}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !293, line: 44, baseType: !294)
!293 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !293, line: 44, flags: DIFlagFwdDecl)
!295 = !{!296, !297, !298, !299, !300, !301, !307, !308}
!296 = !DILocalVariable(name: "match", arg: 1, scope: !286, file: !2, line: 69, type: !289)
!297 = !DILocalVariable(name: "pattern", arg: 2, scope: !286, file: !2, line: 69, type: !150)
!298 = !DILocalVariable(name: "line", arg: 3, scope: !286, file: !2, line: 70, type: !150)
!299 = !DILocalVariable(name: "len", arg: 4, scope: !286, file: !2, line: 70, type: !151)
!300 = !DILocalVariable(name: "err", arg: 5, scope: !286, file: !2, line: 70, type: !291)
!301 = !DILocalVariable(name: "matcher", scope: !286, file: !2, line: 72, type: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !119, line: 70, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 67, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !303, file: !119, line: 68, baseType: !151, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !119, line: 69, baseType: !265, size: 64, offset: 64)
!307 = !DILocalVariable(name: "rval", scope: !286, file: !2, line: 73, type: !212)
!308 = !DILocalVariable(name: "had_err", scope: !286, file: !2, line: 73, type: !212)
!309 = !DILocation(line: 69, column: 32, scope: !286)
!310 = !DILocation(line: 69, column: 61, scope: !286)
!311 = !DILocation(line: 70, column: 38, scope: !286)
!312 = !DILocation(line: 70, column: 51, scope: !286)
!313 = !DILocation(line: 70, column: 65, scope: !286)
!314 = !DILocation(line: 72, column: 3, scope: !286)
!315 = !DILocation(line: 72, column: 11, scope: !286)
!316 = !DILocation(line: 73, column: 3, scope: !286)
!317 = !DILocation(line: 73, column: 7, scope: !286)
!318 = !DILocation(line: 73, column: 13, scope: !286)
!319 = !{!320, !320, i64 0}
!320 = !{!"int", !161, i64 0}
!321 = !DILocation(line: 74, column: 3, scope: !286)
!322 = !DILocation(line: 74, column: 3, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 74, column: 3)
!324 = distinct !DILexicalBlock(scope: !286, file: !2, line: 74, column: 3)
!325 = !DILocation(line: 74, column: 3, scope: !324)
!326 = !DILocation(line: 74, column: 3, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !2, line: 74, column: 3)
!328 = !DILocation(line: 75, column: 3, scope: !286)
!329 = !DILocation(line: 75, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 75, column: 3)
!331 = distinct !DILexicalBlock(scope: !286, file: !2, line: 75, column: 3)
!332 = !DILocation(line: 75, column: 3, scope: !331)
!333 = !DILocation(line: 75, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !2, line: 75, column: 3)
!335 = !DILocation(line: 76, column: 37, scope: !336)
!336 = distinct !DILexicalBlock(scope: !286, file: !2, line: 76, column: 7)
!337 = !DILocation(line: 76, column: 15, scope: !336)
!338 = !DILocation(line: 76, column: 13, scope: !336)
!339 = !DILocation(line: 76, column: 7, scope: !286)
!340 = !DILocation(line: 77, column: 16, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !2, line: 76, column: 74)
!342 = !DILocation(line: 77, column: 32, scope: !341)
!343 = !DILocation(line: 77, column: 5, scope: !341)
!344 = !DILocation(line: 78, column: 13, scope: !341)
!345 = !DILocation(line: 79, column: 3, scope: !341)
!346 = !DILocation(line: 80, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !286, file: !2, line: 80, column: 7)
!348 = !DILocation(line: 80, column: 7, scope: !286)
!349 = !DILocation(line: 81, column: 35, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 80, column: 17)
!351 = !DILocation(line: 81, column: 41, scope: !350)
!352 = !DILocation(line: 81, column: 12, scope: !350)
!353 = !DILocation(line: 81, column: 10, scope: !350)
!354 = !DILocation(line: 82, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !350, file: !2, line: 82, column: 9)
!356 = !DILocation(line: 82, column: 14, scope: !355)
!357 = !DILocation(line: 82, column: 17, scope: !355)
!358 = !DILocation(line: 82, column: 22, scope: !355)
!359 = !DILocation(line: 82, column: 9, scope: !350)
!360 = !DILocation(line: 83, column: 18, scope: !361)
!361 = distinct !DILexicalBlock(scope: !355, file: !2, line: 82, column: 38)
!362 = !DILocation(line: 83, column: 34, scope: !361)
!363 = !DILocation(line: 83, column: 7, scope: !361)
!364 = !DILocation(line: 84, column: 15, scope: !361)
!365 = !DILocation(line: 85, column: 5, scope: !361)
!366 = !DILocation(line: 86, column: 3, scope: !350)
!367 = !DILocation(line: 87, column: 3, scope: !286)
!368 = !DILocation(line: 88, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !286, file: !2, line: 88, column: 7)
!370 = !DILocation(line: 88, column: 7, scope: !286)
!371 = !DILocation(line: 89, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 89, column: 9)
!373 = distinct !DILexicalBlock(scope: !369, file: !2, line: 88, column: 17)
!374 = !DILocation(line: 89, column: 9, scope: !373)
!375 = !DILocation(line: 90, column: 8, scope: !372)
!376 = !DILocation(line: 90, column: 14, scope: !372)
!377 = !{!378, !378, i64 0}
!378 = !{!"_Bool", !161, i64 0}
!379 = !DILocation(line: 90, column: 7, scope: !372)
!380 = !DILocation(line: 92, column: 8, scope: !372)
!381 = !DILocation(line: 92, column: 14, scope: !372)
!382 = !DILocation(line: 93, column: 3, scope: !373)
!383 = !DILocation(line: 94, column: 10, scope: !286)
!384 = !DILocation(line: 95, column: 1, scope: !286)
!385 = !DILocation(line: 94, column: 3, scope: !286)
!386 = !DISubprogram(name: "gt_error_is_set", scope: !293, file: !293, line: 64, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{!290, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!391 = !DISubprogram(name: "tre_regcomp", scope: !119, file: !119, line: 132, type: !392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DISubroutineType(types: !393)
!393 = !{!212, !394, !150, !212}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!395 = distinct !DISubprogram(name: "grep_error", scope: !2, file: !2, line: 28, type: !396, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !212, !394, !291}
!398 = !{!399, !400, !401, !402, !406, !407}
!399 = !DILocalVariable(name: "errcode", arg: 1, scope: !395, file: !2, line: 28, type: !212)
!400 = !DILocalVariable(name: "matcher", arg: 2, scope: !395, file: !2, line: 28, type: !394)
!401 = !DILocalVariable(name: "err", arg: 3, scope: !395, file: !2, line: 28, type: !291)
!402 = !DILocalVariable(name: "sbuf", scope: !395, file: !2, line: 30, type: !403)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 8192)
!406 = !DILocalVariable(name: "buf", scope: !395, file: !2, line: 30, type: !222)
!407 = !DILocalVariable(name: "bufsize", scope: !395, file: !2, line: 31, type: !151)
!408 = !DILocation(line: 28, column: 28, scope: !395)
!409 = !DILocation(line: 28, column: 46, scope: !395)
!410 = !DILocation(line: 28, column: 64, scope: !395)
!411 = !DILocation(line: 30, column: 3, scope: !395)
!412 = !DILocation(line: 30, column: 8, scope: !395)
!413 = !DILocation(line: 30, column: 23, scope: !395)
!414 = !DILocation(line: 31, column: 3, scope: !395)
!415 = !DILocation(line: 31, column: 10, scope: !395)
!416 = !DILocation(line: 32, column: 3, scope: !395)
!417 = !DILocation(line: 32, column: 3, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !2, line: 32, column: 3)
!419 = distinct !DILexicalBlock(scope: !395, file: !2, line: 32, column: 3)
!420 = !DILocation(line: 32, column: 3, scope: !419)
!421 = !DILocation(line: 32, column: 3, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !2, line: 32, column: 3)
!423 = !DILocation(line: 33, column: 26, scope: !395)
!424 = !DILocation(line: 33, column: 35, scope: !395)
!425 = !DILocation(line: 33, column: 13, scope: !395)
!426 = !DILocation(line: 33, column: 11, scope: !395)
!427 = !DILocation(line: 34, column: 9, scope: !395)
!428 = !DILocation(line: 34, column: 7, scope: !395)
!429 = !DILocation(line: 35, column: 23, scope: !395)
!430 = !DILocation(line: 35, column: 32, scope: !395)
!431 = !DILocation(line: 35, column: 41, scope: !395)
!432 = !DILocation(line: 35, column: 47, scope: !395)
!433 = !DILocation(line: 35, column: 53, scope: !395)
!434 = !DILocation(line: 36, column: 23, scope: !395)
!435 = !DILocation(line: 36, column: 29, scope: !395)
!436 = !DILocation(line: 35, column: 10, scope: !395)
!437 = !DILocation(line: 37, column: 16, scope: !395)
!438 = !DILocation(line: 37, column: 35, scope: !395)
!439 = !DILocation(line: 37, column: 41, scope: !395)
!440 = !DILocation(line: 37, column: 47, scope: !395)
!441 = !DILocation(line: 37, column: 3, scope: !395)
!442 = !DILocation(line: 38, column: 3, scope: !395)
!443 = !DILocation(line: 39, column: 1, scope: !395)
!444 = !DISubprogram(name: "tre_regnexec", scope: !119, file: !119, line: 165, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!212, !447, !150, !151, !151, !449, !212}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmatch_t", file: !119, line: 75, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 72, size: 64, elements: !452)
!452 = !{!453, !455}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rm_so", scope: !451, file: !119, line: 73, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "regoff_t", file: !119, line: 66, baseType: !212)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rm_eo", scope: !451, file: !119, line: 74, baseType: !454, size: 32, offset: 32)
!456 = !DISubprogram(name: "tre_regfree", scope: !119, file: !119, line: 143, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !394}
!459 = distinct !DISubprogram(name: "gt_grep", scope: !2, file: !2, line: 97, type: !460, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!212, !289, !150, !150, !291}
!462 = !{!463, !464, !465, !466}
!463 = !DILocalVariable(name: "match", arg: 1, scope: !459, file: !2, line: 97, type: !289)
!464 = !DILocalVariable(name: "pattern", arg: 2, scope: !459, file: !2, line: 97, type: !150)
!465 = !DILocalVariable(name: "line", arg: 3, scope: !459, file: !2, line: 98, type: !150)
!466 = !DILocalVariable(name: "err", arg: 4, scope: !459, file: !2, line: 98, type: !291)
!467 = !DILocation(line: 97, column: 29, scope: !459)
!468 = !DILocation(line: 97, column: 58, scope: !459)
!469 = !DILocation(line: 98, column: 35, scope: !459)
!470 = !DILocation(line: 98, column: 50, scope: !459)
!471 = !DILocation(line: 100, column: 21, scope: !459)
!472 = !DILocation(line: 100, column: 28, scope: !459)
!473 = !DILocation(line: 100, column: 37, scope: !459)
!474 = !DILocation(line: 100, column: 50, scope: !459)
!475 = !DILocation(line: 100, column: 43, scope: !459)
!476 = !DILocation(line: 100, column: 57, scope: !459)
!477 = !DILocation(line: 100, column: 10, scope: !459)
!478 = !DILocation(line: 100, column: 3, scope: !459)
!479 = !DISubprogram(name: "strlen", scope: !480, file: !480, line: 407, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!480 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!481 = !DISubroutineType(types: !482)
!482 = !{!153, !150}
!483 = distinct !DISubprogram(name: "gt_grep_unit_test", scope: !2, file: !2, line: 103, type: !484, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !116, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!212, !291}
!486 = !{!487, !488, !489, !490, !491}
!487 = !DILocalVariable(name: "err", arg: 1, scope: !483, file: !2, line: 103, type: !291)
!488 = !DILocalVariable(name: "match", scope: !483, file: !2, line: 105, type: !290)
!489 = !DILocalVariable(name: "escbuf", scope: !483, file: !2, line: 106, type: !146)
!490 = !DILocalVariable(name: "grep_err", scope: !483, file: !2, line: 107, type: !212)
!491 = !DILocalVariable(name: "had_err", scope: !483, file: !2, line: 107, type: !212)
!492 = !DILocation(line: 103, column: 32, scope: !483)
!493 = !DILocation(line: 105, column: 3, scope: !483)
!494 = !DILocation(line: 105, column: 8, scope: !483)
!495 = !DILocation(line: 106, column: 3, scope: !483)
!496 = !DILocation(line: 106, column: 10, scope: !483)
!497 = !DILocation(line: 107, column: 3, scope: !483)
!498 = !DILocation(line: 107, column: 7, scope: !483)
!499 = !DILocation(line: 107, column: 17, scope: !483)
!500 = !DILocation(line: 108, column: 3, scope: !483)
!501 = !DILocation(line: 108, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !2, line: 108, column: 3)
!503 = distinct !DILexicalBlock(scope: !483, file: !2, line: 108, column: 3)
!504 = !DILocation(line: 108, column: 3, scope: !503)
!505 = !DILocation(line: 108, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !2, line: 108, column: 3)
!507 = !DILocation(line: 110, column: 14, scope: !483)
!508 = !DILocation(line: 110, column: 12, scope: !483)
!509 = !DILocation(line: 111, column: 3, scope: !483)
!510 = !DILocation(line: 111, column: 3, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 111, column: 3)
!512 = distinct !DILexicalBlock(scope: !483, file: !2, line: 111, column: 3)
!513 = !DILocation(line: 111, column: 3, scope: !512)
!514 = !DILocation(line: 111, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !2, line: 111, column: 3)
!516 = distinct !DILexicalBlock(scope: !511, file: !2, line: 111, column: 3)
!517 = !DILocation(line: 111, column: 3, scope: !516)
!518 = !DILocation(line: 111, column: 3, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !2, line: 111, column: 3)
!520 = !DILocation(line: 112, column: 3, scope: !483)
!521 = !DILocation(line: 112, column: 3, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 112, column: 3)
!523 = distinct !DILexicalBlock(scope: !483, file: !2, line: 112, column: 3)
!524 = !DILocation(line: 112, column: 3, scope: !523)
!525 = !DILocation(line: 112, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !2, line: 112, column: 3)
!527 = distinct !DILexicalBlock(scope: !522, file: !2, line: 112, column: 3)
!528 = !{i8 0, i8 2}
!529 = !{}
!530 = !DILocation(line: 112, column: 3, scope: !527)
!531 = !DILocation(line: 112, column: 3, scope: !532)
!532 = distinct !DILexicalBlock(scope: !526, file: !2, line: 112, column: 3)
!533 = !DILocation(line: 113, column: 14, scope: !483)
!534 = !DILocation(line: 113, column: 12, scope: !483)
!535 = !DILocation(line: 114, column: 3, scope: !483)
!536 = !DILocation(line: 114, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 114, column: 3)
!538 = distinct !DILexicalBlock(scope: !483, file: !2, line: 114, column: 3)
!539 = !DILocation(line: 114, column: 3, scope: !538)
!540 = !DILocation(line: 114, column: 3, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 114, column: 3)
!542 = distinct !DILexicalBlock(scope: !537, file: !2, line: 114, column: 3)
!543 = !DILocation(line: 114, column: 3, scope: !542)
!544 = !DILocation(line: 114, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 114, column: 3)
!546 = !DILocation(line: 115, column: 3, scope: !483)
!547 = !DILocation(line: 115, column: 3, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 115, column: 3)
!549 = distinct !DILexicalBlock(scope: !483, file: !2, line: 115, column: 3)
!550 = !DILocation(line: 115, column: 3, scope: !549)
!551 = !DILocation(line: 115, column: 3, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !2, line: 115, column: 3)
!553 = distinct !DILexicalBlock(scope: !548, file: !2, line: 115, column: 3)
!554 = !DILocation(line: 115, column: 3, scope: !553)
!555 = !DILocation(line: 115, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !2, line: 115, column: 3)
!557 = !DILocation(line: 116, column: 14, scope: !483)
!558 = !DILocation(line: 116, column: 12, scope: !483)
!559 = !DILocation(line: 117, column: 3, scope: !483)
!560 = !DILocation(line: 117, column: 3, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 117, column: 3)
!562 = distinct !DILexicalBlock(scope: !483, file: !2, line: 117, column: 3)
!563 = !DILocation(line: 117, column: 3, scope: !562)
!564 = !DILocation(line: 117, column: 3, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !2, line: 117, column: 3)
!566 = distinct !DILexicalBlock(scope: !561, file: !2, line: 117, column: 3)
!567 = !DILocation(line: 117, column: 3, scope: !566)
!568 = !DILocation(line: 117, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !2, line: 117, column: 3)
!570 = !DILocation(line: 118, column: 3, scope: !483)
!571 = !DILocation(line: 118, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 118, column: 3)
!573 = distinct !DILexicalBlock(scope: !483, file: !2, line: 118, column: 3)
!574 = !DILocation(line: 118, column: 3, scope: !573)
!575 = !DILocation(line: 118, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 118, column: 3)
!577 = distinct !DILexicalBlock(scope: !572, file: !2, line: 118, column: 3)
!578 = !DILocation(line: 118, column: 3, scope: !577)
!579 = !DILocation(line: 118, column: 3, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !2, line: 118, column: 3)
!581 = !DILocation(line: 120, column: 14, scope: !483)
!582 = !DILocation(line: 120, column: 12, scope: !483)
!583 = !DILocation(line: 121, column: 3, scope: !483)
!584 = !DILocation(line: 121, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !2, line: 121, column: 3)
!586 = distinct !DILexicalBlock(scope: !483, file: !2, line: 121, column: 3)
!587 = !DILocation(line: 121, column: 3, scope: !586)
!588 = !DILocation(line: 121, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 121, column: 3)
!590 = distinct !DILexicalBlock(scope: !585, file: !2, line: 121, column: 3)
!591 = !DILocation(line: 121, column: 3, scope: !590)
!592 = !DILocation(line: 121, column: 3, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !2, line: 121, column: 3)
!594 = !DILocation(line: 122, column: 3, scope: !483)
!595 = !DILocation(line: 122, column: 3, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !2, line: 122, column: 3)
!597 = distinct !DILexicalBlock(scope: !483, file: !2, line: 122, column: 3)
!598 = !DILocation(line: 122, column: 3, scope: !597)
!599 = !DILocation(line: 122, column: 3, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !2, line: 122, column: 3)
!601 = distinct !DILexicalBlock(scope: !596, file: !2, line: 122, column: 3)
!602 = !DILocation(line: 122, column: 3, scope: !601)
!603 = !DILocation(line: 122, column: 3, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !2, line: 122, column: 3)
!605 = !DILocation(line: 123, column: 14, scope: !483)
!606 = !DILocation(line: 123, column: 12, scope: !483)
!607 = !DILocation(line: 124, column: 3, scope: !483)
!608 = !DILocation(line: 124, column: 3, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 124, column: 3)
!610 = distinct !DILexicalBlock(scope: !483, file: !2, line: 124, column: 3)
!611 = !DILocation(line: 124, column: 3, scope: !610)
!612 = !DILocation(line: 124, column: 3, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !2, line: 124, column: 3)
!614 = distinct !DILexicalBlock(scope: !609, file: !2, line: 124, column: 3)
!615 = !DILocation(line: 124, column: 3, scope: !614)
!616 = !DILocation(line: 124, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !2, line: 124, column: 3)
!618 = !DILocation(line: 125, column: 3, scope: !483)
!619 = !DILocation(line: 125, column: 3, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !2, line: 125, column: 3)
!621 = distinct !DILexicalBlock(scope: !483, file: !2, line: 125, column: 3)
!622 = !DILocation(line: 125, column: 3, scope: !621)
!623 = !DILocation(line: 125, column: 3, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !2, line: 125, column: 3)
!625 = distinct !DILexicalBlock(scope: !620, file: !2, line: 125, column: 3)
!626 = !DILocation(line: 125, column: 3, scope: !625)
!627 = !DILocation(line: 125, column: 3, scope: !628)
!628 = distinct !DILexicalBlock(scope: !624, file: !2, line: 125, column: 3)
!629 = !DILocation(line: 126, column: 14, scope: !483)
!630 = !DILocation(line: 126, column: 12, scope: !483)
!631 = !DILocation(line: 127, column: 3, scope: !483)
!632 = !DILocation(line: 127, column: 3, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !2, line: 127, column: 3)
!634 = distinct !DILexicalBlock(scope: !483, file: !2, line: 127, column: 3)
!635 = !DILocation(line: 127, column: 3, scope: !634)
!636 = !DILocation(line: 127, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !2, line: 127, column: 3)
!638 = distinct !DILexicalBlock(scope: !633, file: !2, line: 127, column: 3)
!639 = !DILocation(line: 127, column: 3, scope: !638)
!640 = !DILocation(line: 127, column: 3, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !2, line: 127, column: 3)
!642 = !DILocation(line: 128, column: 3, scope: !483)
!643 = !DILocation(line: 128, column: 3, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !2, line: 128, column: 3)
!645 = distinct !DILexicalBlock(scope: !483, file: !2, line: 128, column: 3)
!646 = !DILocation(line: 128, column: 3, scope: !645)
!647 = !DILocation(line: 128, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !2, line: 128, column: 3)
!649 = distinct !DILexicalBlock(scope: !644, file: !2, line: 128, column: 3)
!650 = !DILocation(line: 128, column: 3, scope: !649)
!651 = !DILocation(line: 128, column: 3, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !2, line: 128, column: 3)
!653 = !DILocation(line: 130, column: 15, scope: !483)
!654 = !DILocation(line: 130, column: 12, scope: !483)
!655 = !DILocation(line: 131, column: 3, scope: !483)
!656 = !DILocation(line: 131, column: 3, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !2, line: 131, column: 3)
!658 = distinct !DILexicalBlock(scope: !483, file: !2, line: 131, column: 3)
!659 = !DILocation(line: 131, column: 3, scope: !658)
!660 = !DILocation(line: 131, column: 3, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !2, line: 131, column: 3)
!662 = distinct !DILexicalBlock(scope: !657, file: !2, line: 131, column: 3)
!663 = !DILocation(line: 131, column: 3, scope: !662)
!664 = !DILocation(line: 131, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !661, file: !2, line: 131, column: 3)
!666 = !DILocation(line: 132, column: 3, scope: !483)
!667 = !DILocation(line: 132, column: 3, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !2, line: 132, column: 3)
!669 = distinct !DILexicalBlock(scope: !483, file: !2, line: 132, column: 3)
!670 = !DILocation(line: 132, column: 3, scope: !669)
!671 = !DILocation(line: 132, column: 3, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !2, line: 132, column: 3)
!673 = distinct !DILexicalBlock(scope: !668, file: !2, line: 132, column: 3)
!674 = !DILocation(line: 132, column: 3, scope: !673)
!675 = !DILocation(line: 132, column: 3, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !2, line: 132, column: 3)
!677 = !DILocation(line: 133, column: 15, scope: !483)
!678 = !DILocation(line: 133, column: 12, scope: !483)
!679 = !DILocation(line: 134, column: 3, scope: !483)
!680 = !DILocation(line: 134, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !2, line: 134, column: 3)
!682 = distinct !DILexicalBlock(scope: !483, file: !2, line: 134, column: 3)
!683 = !DILocation(line: 134, column: 3, scope: !682)
!684 = !DILocation(line: 134, column: 3, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !2, line: 134, column: 3)
!686 = distinct !DILexicalBlock(scope: !681, file: !2, line: 134, column: 3)
!687 = !DILocation(line: 134, column: 3, scope: !686)
!688 = !DILocation(line: 134, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !2, line: 134, column: 3)
!690 = !DILocation(line: 135, column: 3, scope: !483)
!691 = !DILocation(line: 135, column: 3, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 135, column: 3)
!693 = distinct !DILexicalBlock(scope: !483, file: !2, line: 135, column: 3)
!694 = !DILocation(line: 135, column: 3, scope: !693)
!695 = !DILocation(line: 135, column: 3, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !2, line: 135, column: 3)
!697 = distinct !DILexicalBlock(scope: !692, file: !2, line: 135, column: 3)
!698 = !DILocation(line: 135, column: 3, scope: !697)
!699 = !DILocation(line: 135, column: 3, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !2, line: 135, column: 3)
!701 = !DILocation(line: 137, column: 15, scope: !483)
!702 = !DILocation(line: 137, column: 12, scope: !483)
!703 = !DILocation(line: 138, column: 3, scope: !483)
!704 = !DILocation(line: 138, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !2, line: 138, column: 3)
!706 = distinct !DILexicalBlock(scope: !483, file: !2, line: 138, column: 3)
!707 = !DILocation(line: 138, column: 3, scope: !706)
!708 = !DILocation(line: 138, column: 3, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !2, line: 138, column: 3)
!710 = distinct !DILexicalBlock(scope: !705, file: !2, line: 138, column: 3)
!711 = !DILocation(line: 138, column: 3, scope: !710)
!712 = !DILocation(line: 138, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !2, line: 138, column: 3)
!714 = !DILocation(line: 139, column: 3, scope: !483)
!715 = !DILocation(line: 139, column: 3, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 139, column: 3)
!717 = distinct !DILexicalBlock(scope: !483, file: !2, line: 139, column: 3)
!718 = !DILocation(line: 139, column: 3, scope: !717)
!719 = !DILocation(line: 139, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 139, column: 3)
!721 = distinct !DILexicalBlock(scope: !716, file: !2, line: 139, column: 3)
!722 = !DILocation(line: 139, column: 3, scope: !721)
!723 = !DILocation(line: 139, column: 3, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !2, line: 139, column: 3)
!725 = !DILocation(line: 141, column: 14, scope: !483)
!726 = !DILocation(line: 141, column: 12, scope: !483)
!727 = !DILocation(line: 142, column: 3, scope: !483)
!728 = !DILocation(line: 142, column: 3, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 142, column: 3)
!730 = distinct !DILexicalBlock(scope: !483, file: !2, line: 142, column: 3)
!731 = !DILocation(line: 142, column: 3, scope: !730)
!732 = !DILocation(line: 142, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 142, column: 3)
!734 = distinct !DILexicalBlock(scope: !729, file: !2, line: 142, column: 3)
!735 = !DILocation(line: 142, column: 3, scope: !734)
!736 = !DILocation(line: 142, column: 3, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !2, line: 142, column: 3)
!738 = !DILocation(line: 143, column: 3, scope: !483)
!739 = !DILocation(line: 143, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 143, column: 3)
!741 = distinct !DILexicalBlock(scope: !483, file: !2, line: 143, column: 3)
!742 = !DILocation(line: 143, column: 3, scope: !741)
!743 = !DILocation(line: 143, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !2, line: 143, column: 3)
!745 = distinct !DILexicalBlock(scope: !740, file: !2, line: 143, column: 3)
!746 = !DILocation(line: 143, column: 3, scope: !745)
!747 = !DILocation(line: 143, column: 3, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !2, line: 143, column: 3)
!749 = !DILocation(line: 145, column: 14, scope: !483)
!750 = !DILocation(line: 145, column: 12, scope: !483)
!751 = !DILocation(line: 146, column: 3, scope: !483)
!752 = !DILocation(line: 146, column: 3, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !2, line: 146, column: 3)
!754 = distinct !DILexicalBlock(scope: !483, file: !2, line: 146, column: 3)
!755 = !DILocation(line: 146, column: 3, scope: !754)
!756 = !DILocation(line: 146, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 146, column: 3)
!758 = distinct !DILexicalBlock(scope: !753, file: !2, line: 146, column: 3)
!759 = !DILocation(line: 146, column: 3, scope: !758)
!760 = !DILocation(line: 146, column: 3, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !2, line: 146, column: 3)
!762 = !DILocation(line: 147, column: 3, scope: !483)
!763 = !DILocation(line: 147, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !2, line: 147, column: 3)
!765 = distinct !DILexicalBlock(scope: !483, file: !2, line: 147, column: 3)
!766 = !DILocation(line: 147, column: 3, scope: !765)
!767 = !DILocation(line: 147, column: 3, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !2, line: 147, column: 3)
!769 = distinct !DILexicalBlock(scope: !764, file: !2, line: 147, column: 3)
!770 = !DILocation(line: 147, column: 3, scope: !769)
!771 = !DILocation(line: 147, column: 3, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !2, line: 147, column: 3)
!773 = !DILocation(line: 149, column: 14, scope: !483)
!774 = !DILocation(line: 149, column: 12, scope: !483)
!775 = !DILocation(line: 150, column: 3, scope: !483)
!776 = !DILocation(line: 150, column: 3, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 150, column: 3)
!778 = distinct !DILexicalBlock(scope: !483, file: !2, line: 150, column: 3)
!779 = !DILocation(line: 150, column: 3, scope: !778)
!780 = !DILocation(line: 150, column: 3, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 150, column: 3)
!782 = distinct !DILexicalBlock(scope: !777, file: !2, line: 150, column: 3)
!783 = !DILocation(line: 150, column: 3, scope: !782)
!784 = !DILocation(line: 150, column: 3, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !2, line: 150, column: 3)
!786 = !DILocation(line: 151, column: 3, scope: !483)
!787 = !DILocation(line: 151, column: 3, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 151, column: 3)
!789 = distinct !DILexicalBlock(scope: !483, file: !2, line: 151, column: 3)
!790 = !DILocation(line: 151, column: 3, scope: !789)
!791 = !DILocation(line: 151, column: 3, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !2, line: 151, column: 3)
!793 = distinct !DILexicalBlock(scope: !788, file: !2, line: 151, column: 3)
!794 = !DILocation(line: 151, column: 3, scope: !793)
!795 = !DILocation(line: 151, column: 3, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !2, line: 151, column: 3)
!797 = !DILocation(line: 153, column: 12, scope: !483)
!798 = !DILocation(line: 153, column: 10, scope: !483)
!799 = !DILocation(line: 155, column: 14, scope: !483)
!800 = !DILocation(line: 155, column: 12, scope: !483)
!801 = !DILocation(line: 156, column: 3, scope: !483)
!802 = !DILocation(line: 156, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !2, line: 156, column: 3)
!804 = distinct !DILexicalBlock(scope: !483, file: !2, line: 156, column: 3)
!805 = !DILocation(line: 156, column: 3, scope: !804)
!806 = !DILocation(line: 156, column: 3, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !2, line: 156, column: 3)
!808 = distinct !DILexicalBlock(scope: !803, file: !2, line: 156, column: 3)
!809 = !DILocation(line: 156, column: 3, scope: !808)
!810 = !DILocation(line: 156, column: 3, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !2, line: 156, column: 3)
!812 = !DILocation(line: 157, column: 3, scope: !483)
!813 = !DILocation(line: 157, column: 3, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !2, line: 157, column: 3)
!815 = distinct !DILexicalBlock(scope: !483, file: !2, line: 157, column: 3)
!816 = !DILocation(line: 157, column: 3, scope: !815)
!817 = !DILocation(line: 157, column: 3, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !2, line: 157, column: 3)
!819 = distinct !DILexicalBlock(scope: !814, file: !2, line: 157, column: 3)
!820 = !DILocation(line: 157, column: 3, scope: !819)
!821 = !DILocation(line: 157, column: 3, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !2, line: 157, column: 3)
!823 = !DILocation(line: 159, column: 27, scope: !483)
!824 = !DILocation(line: 159, column: 3, scope: !483)
!825 = !DILocation(line: 160, column: 41, scope: !483)
!826 = !DILocation(line: 160, column: 30, scope: !483)
!827 = !DILocation(line: 160, column: 14, scope: !483)
!828 = !DILocation(line: 160, column: 12, scope: !483)
!829 = !DILocation(line: 162, column: 3, scope: !483)
!830 = !DILocation(line: 162, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !2, line: 162, column: 3)
!832 = distinct !DILexicalBlock(scope: !483, file: !2, line: 162, column: 3)
!833 = !DILocation(line: 162, column: 3, scope: !832)
!834 = !DILocation(line: 162, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !2, line: 162, column: 3)
!836 = distinct !DILexicalBlock(scope: !831, file: !2, line: 162, column: 3)
!837 = !DILocation(line: 162, column: 3, scope: !836)
!838 = !DILocation(line: 162, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !2, line: 162, column: 3)
!840 = !DILocation(line: 163, column: 3, scope: !483)
!841 = !DILocation(line: 163, column: 3, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !2, line: 163, column: 3)
!843 = distinct !DILexicalBlock(scope: !483, file: !2, line: 163, column: 3)
!844 = !DILocation(line: 163, column: 3, scope: !843)
!845 = !DILocation(line: 163, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !2, line: 163, column: 3)
!847 = distinct !DILexicalBlock(scope: !842, file: !2, line: 163, column: 3)
!848 = !DILocation(line: 163, column: 3, scope: !847)
!849 = !DILocation(line: 163, column: 3, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !2, line: 163, column: 3)
!851 = !DILocation(line: 165, column: 27, scope: !483)
!852 = !DILocation(line: 165, column: 3, scope: !483)
!853 = !DILocation(line: 166, column: 41, scope: !483)
!854 = !DILocation(line: 166, column: 30, scope: !483)
!855 = !DILocation(line: 166, column: 14, scope: !483)
!856 = !DILocation(line: 166, column: 12, scope: !483)
!857 = !DILocation(line: 168, column: 3, scope: !483)
!858 = !DILocation(line: 168, column: 3, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 168, column: 3)
!860 = distinct !DILexicalBlock(scope: !483, file: !2, line: 168, column: 3)
!861 = !DILocation(line: 168, column: 3, scope: !860)
!862 = !DILocation(line: 168, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !2, line: 168, column: 3)
!864 = distinct !DILexicalBlock(scope: !859, file: !2, line: 168, column: 3)
!865 = !DILocation(line: 168, column: 3, scope: !864)
!866 = !DILocation(line: 168, column: 3, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !2, line: 168, column: 3)
!868 = !DILocation(line: 169, column: 3, scope: !483)
!869 = !DILocation(line: 169, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 169, column: 3)
!871 = distinct !DILexicalBlock(scope: !483, file: !2, line: 169, column: 3)
!872 = !DILocation(line: 169, column: 3, scope: !871)
!873 = !DILocation(line: 169, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 169, column: 3)
!875 = distinct !DILexicalBlock(scope: !870, file: !2, line: 169, column: 3)
!876 = !DILocation(line: 169, column: 3, scope: !875)
!877 = !DILocation(line: 169, column: 3, scope: !878)
!878 = distinct !DILexicalBlock(scope: !874, file: !2, line: 169, column: 3)
!879 = !DILocation(line: 171, column: 17, scope: !483)
!880 = !DILocation(line: 171, column: 3, scope: !483)
!881 = !DILocation(line: 173, column: 10, scope: !483)
!882 = !DILocation(line: 174, column: 1, scope: !483)
!883 = !DILocation(line: 173, column: 3, scope: !483)
!884 = !DISubprogram(name: "gt_error_set", scope: !293, file: !293, line: 56, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !291, !150, null}
!887 = !DISubprogram(name: "gt_str_new", scope: !148, file: !148, line: 30, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!888 = !DISubroutineType(types: !889)
!889 = !{!146}
!890 = !DISubprogram(name: "gt_str_get", scope: !148, file: !148, line: 40, type: !891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DISubroutineType(types: !892)
!892 = !{!222, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!895 = !DISubprogram(name: "gt_str_delete", scope: !148, file: !148, line: 90, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!896 = !DISubprogram(name: "tre_regerror", scope: !119, file: !119, line: 139, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubroutineType(types: !898)
!898 = !{!151, !212, !447, !222, !151}
!899 = !DISubprogram(name: "gt_malloc_mem", scope: !900, file: !900, line: 56, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!901 = !DISubroutineType(types: !902)
!902 = !{!265, !151, !150, !212}
!903 = !DISubprogram(name: "gt_free_mem", scope: !900, file: !900, line: 75, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !265, !150, !212}

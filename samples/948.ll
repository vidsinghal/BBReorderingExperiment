; ModuleID = 'samples/948.bc'
source_filename = "src/match/dist-short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Definedunsignedlong = type { i8, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"(*vptr) != (GtUchar) GT_SEPARATOR\00", align 1, !dbg !7
@__func__.gt_distanceofshortstringsbytearray = private unnamed_addr constant [35 x i8] c"gt_distanceofshortstringsbytearray\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [23 x i8] c"src/match/dist-short.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [31 x i8] c"(cc) != (GtUchar) GT_SEPARATOR\00", align 1, !dbg !23
@__func__.gt_distanceofshortstringsencseq = private unnamed_addr constant [32 x i8] c"gt_distanceofshortstringsencseq\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [16 x i8] c"maxdistance > 0\00", align 1, !dbg !33
@__func__.gt_reversesuffixmatch = private unnamed_addr constant [22 x i8] c"gt_reversesuffixmatch\00", align 1, !dbg !38
@__func__.gt_forwardprefixmatch = private unnamed_addr constant [22 x i8] c"gt_forwardprefixmatch\00", align 1, !dbg !43
@.str.5 = private unnamed_addr constant [49 x i8] c"pos - startpos <= (GtUword) (ulen + maxdistance)\00", align 1, !dbg !45

; Function Attrs: nounwind uwtable
define i64 @gt_distanceofshortstringsbytearray(ptr noundef %eqsvector, i32 noundef %alphasize, ptr noundef %useq, i64 noundef %ulen, ptr noundef %vseq, i64 noundef %vlen) #0 !dbg !73 {
entry:
  %eqsvector.addr = alloca ptr, align 8
  %alphasize.addr = alloca i32, align 4
  %useq.addr = alloca ptr, align 8
  %ulen.addr = alloca i64, align 8
  %vseq.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %Pv = alloca i64, align 8
  %Mv = alloca i64, align 8
  %Eq = alloca i64, align 8
  %Xv = alloca i64, align 8
  %Xh = alloca i64, align 8
  %Ph = alloca i64, align 8
  %Mh = alloca i64, align 8
  %Ebit = alloca i64, align 8
  %distval = alloca i64, align 8
  %vptr = alloca ptr, align 8
  store ptr %eqsvector, ptr %eqsvector.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %eqsvector.addr, metadata !80, metadata !DIExpression()), !dbg !100
  store i32 %alphasize, ptr %alphasize.addr, align 4, !tbaa !101
  tail call void @llvm.dbg.declare(metadata ptr %alphasize.addr, metadata !81, metadata !DIExpression()), !dbg !103
  store ptr %useq, ptr %useq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %useq.addr, metadata !82, metadata !DIExpression()), !dbg !104
  store i64 %ulen, ptr %ulen.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %ulen.addr, metadata !83, metadata !DIExpression()), !dbg !107
  store ptr %vseq, ptr %vseq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %vseq.addr, metadata !84, metadata !DIExpression()), !dbg !108
  store i64 %vlen, ptr %vlen.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !85, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 8, ptr %Pv) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Pv, metadata !86, metadata !DIExpression()), !dbg !110
  store i64 -1, ptr %Pv, align 8, !dbg !110, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mv) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Mv, metadata !87, metadata !DIExpression()), !dbg !110
  store i64 0, ptr %Mv, align 8, !dbg !110, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eq) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Eq, metadata !88, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xv) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Xv, metadata !89, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xh) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Xh, metadata !90, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ph) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Ph, metadata !91, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mh) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Mh, metadata !92, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebit) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %Ebit, metadata !93, metadata !DIExpression()), !dbg !110
  %0 = load i64, ptr %ulen.addr, align 8, !dbg !110, !tbaa !105
  %sub = sub i64 %0, 1, !dbg !110
  %shl = shl i64 1, %sub, !dbg !110
  store i64 %shl, ptr %Ebit, align 8, !dbg !110, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %distval) #5, !dbg !110
  tail call void @llvm.dbg.declare(metadata ptr %distval, metadata !94, metadata !DIExpression()), !dbg !110
  %1 = load i64, ptr %ulen.addr, align 8, !dbg !110, !tbaa !105
  store i64 %1, ptr %distval, align 8, !dbg !110, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %vptr) #5, !dbg !111
  tail call void @llvm.dbg.declare(metadata ptr %vptr, metadata !95, metadata !DIExpression()), !dbg !112
  %2 = load ptr, ptr %eqsvector.addr, align 8, !dbg !113, !tbaa !96
  %3 = load i32, ptr %alphasize.addr, align 4, !dbg !114, !tbaa !101
  %conv = zext i32 %3 to i64, !dbg !115
  %4 = load ptr, ptr %useq.addr, align 8, !dbg !116, !tbaa !96
  %5 = load i64, ptr %ulen.addr, align 8, !dbg !117, !tbaa !105
  call void @gt_initeqsvector(ptr noundef %2, i64 noundef %conv, ptr noundef %4, i64 noundef %5), !dbg !118
  %6 = load ptr, ptr %vseq.addr, align 8, !dbg !119, !tbaa !96
  store ptr %6, ptr %vptr, align 8, !dbg !121, !tbaa !96
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %vptr, align 8, !dbg !123, !tbaa !96
  %8 = load ptr, ptr %vseq.addr, align 8, !dbg !125, !tbaa !96
  %9 = load i64, ptr %vlen.addr, align 8, !dbg !126, !tbaa !105
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !127
  %cmp = icmp ult ptr %7, %add.ptr, !dbg !128
  br i1 %cmp, label %for.body, label %for.end, !dbg !129

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !130

do.body:                                          ; preds = %for.body
  %10 = load ptr, ptr %vptr, align 8, !dbg !132, !tbaa !96
  %11 = load i8, ptr %10, align 1, !dbg !132, !tbaa !135
  %conv2 = zext i8 %11 to i32, !dbg !132
  %cmp3 = icmp ne i32 %conv2, 255, !dbg !132
  br i1 %cmp3, label %if.end, label %if.then, !dbg !136

if.then:                                          ; preds = %do.body
  %12 = load ptr, ptr @stderr, align 8, !dbg !137, !tbaa !96
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_distanceofshortstringsbytearray, ptr noundef @.str.2, i32 noundef 84), !dbg !137
  call void @abort() #6, !dbg !137
  unreachable, !dbg !137

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !136

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !136

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %vptr, align 8, !dbg !139, !tbaa !96
  %14 = load i8, ptr %13, align 1, !dbg !139, !tbaa !135
  %conv5 = zext i8 %14 to i32, !dbg !139
  %cmp6 = icmp ne i32 %conv5, 254, !dbg !139
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !130

if.then8:                                         ; preds = %do.end
  %15 = load ptr, ptr %eqsvector.addr, align 8, !dbg !141, !tbaa !96
  %16 = load ptr, ptr %vptr, align 8, !dbg !141, !tbaa !96
  %17 = load i8, ptr %16, align 1, !dbg !141, !tbaa !135
  %conv9 = zext i8 %17 to i64, !dbg !141
  %arrayidx = getelementptr inbounds i64, ptr %15, i64 %conv9, !dbg !141
  %18 = load i64, ptr %arrayidx, align 8, !dbg !141, !tbaa !105
  store i64 %18, ptr %Eq, align 8, !dbg !141, !tbaa !105
  br label %if.end10, !dbg !141

if.else:                                          ; preds = %do.end
  store i64 0, ptr %Eq, align 8, !dbg !143, !tbaa !105
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %19 = load i64, ptr %Eq, align 8, !dbg !130, !tbaa !105
  %20 = load i64, ptr %Mv, align 8, !dbg !130, !tbaa !105
  %or = or i64 %19, %20, !dbg !130
  store i64 %or, ptr %Xv, align 8, !dbg !130, !tbaa !105
  %21 = load i64, ptr %Eq, align 8, !dbg !130, !tbaa !105
  %22 = load i64, ptr %Pv, align 8, !dbg !130, !tbaa !105
  %and = and i64 %21, %22, !dbg !130
  %23 = load i64, ptr %Pv, align 8, !dbg !130, !tbaa !105
  %add = add i64 %and, %23, !dbg !130
  %24 = load i64, ptr %Pv, align 8, !dbg !130, !tbaa !105
  %xor = xor i64 %add, %24, !dbg !130
  %25 = load i64, ptr %Eq, align 8, !dbg !130, !tbaa !105
  %or11 = or i64 %xor, %25, !dbg !130
  store i64 %or11, ptr %Xh, align 8, !dbg !130, !tbaa !105
  %26 = load i64, ptr %Mv, align 8, !dbg !130, !tbaa !105
  %27 = load i64, ptr %Xh, align 8, !dbg !130, !tbaa !105
  %28 = load i64, ptr %Pv, align 8, !dbg !130, !tbaa !105
  %or12 = or i64 %27, %28, !dbg !130
  %not = xor i64 %or12, -1, !dbg !130
  %or13 = or i64 %26, %not, !dbg !130
  store i64 %or13, ptr %Ph, align 8, !dbg !130, !tbaa !105
  %29 = load i64, ptr %Pv, align 8, !dbg !130, !tbaa !105
  %30 = load i64, ptr %Xh, align 8, !dbg !130, !tbaa !105
  %and14 = and i64 %29, %30, !dbg !130
  store i64 %and14, ptr %Mh, align 8, !dbg !130, !tbaa !105
  %31 = load i64, ptr %Ph, align 8, !dbg !145, !tbaa !105
  %32 = load i64, ptr %Ebit, align 8, !dbg !145, !tbaa !105
  %and15 = and i64 %31, %32, !dbg !145
  %tobool = icmp ne i64 %and15, 0, !dbg !145
  br i1 %tobool, label %if.then16, label %if.else17, !dbg !130

if.then16:                                        ; preds = %if.end10
  %33 = load i64, ptr %distval, align 8, !dbg !147, !tbaa !105
  %inc = add i64 %33, 1, !dbg !147
  store i64 %inc, ptr %distval, align 8, !dbg !147, !tbaa !105
  br label %if.end22, !dbg !147

if.else17:                                        ; preds = %if.end10
  %34 = load i64, ptr %Mh, align 8, !dbg !149, !tbaa !105
  %35 = load i64, ptr %Ebit, align 8, !dbg !149, !tbaa !105
  %and18 = and i64 %34, %35, !dbg !149
  %tobool19 = icmp ne i64 %and18, 0, !dbg !149
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !152

if.then20:                                        ; preds = %if.else17
  %36 = load i64, ptr %distval, align 8, !dbg !153, !tbaa !105
  %dec = add i64 %36, -1, !dbg !153
  store i64 %dec, ptr %distval, align 8, !dbg !153, !tbaa !105
  br label %if.end21, !dbg !153

if.end21:                                         ; preds = %if.then20, %if.else17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then16
  %37 = load i64, ptr %Ph, align 8, !dbg !130, !tbaa !105
  %shl23 = shl i64 %37, 1, !dbg !130
  %or24 = or i64 %shl23, 1, !dbg !130
  store i64 %or24, ptr %Ph, align 8, !dbg !130, !tbaa !105
  %38 = load i64, ptr %Mh, align 8, !dbg !130, !tbaa !105
  %shl25 = shl i64 %38, 1, !dbg !130
  %39 = load i64, ptr %Xv, align 8, !dbg !130, !tbaa !105
  %40 = load i64, ptr %Ph, align 8, !dbg !130, !tbaa !105
  %or26 = or i64 %39, %40, !dbg !130
  %not27 = xor i64 %or26, -1, !dbg !130
  %or28 = or i64 %shl25, %not27, !dbg !130
  store i64 %or28, ptr %Pv, align 8, !dbg !130, !tbaa !105
  %41 = load i64, ptr %Ph, align 8, !dbg !130, !tbaa !105
  %42 = load i64, ptr %Xv, align 8, !dbg !130, !tbaa !105
  %and29 = and i64 %41, %42, !dbg !130
  store i64 %and29, ptr %Mv, align 8, !dbg !130, !tbaa !105
  br label %for.inc, !dbg !155

for.inc:                                          ; preds = %if.end22
  %43 = load ptr, ptr %vptr, align 8, !dbg !156, !tbaa !96
  %incdec.ptr = getelementptr inbounds i8, ptr %43, i32 1, !dbg !156
  store ptr %incdec.ptr, ptr %vptr, align 8, !dbg !156, !tbaa !96
  br label %for.cond, !dbg !157, !llvm.loop !158

for.end:                                          ; preds = %for.cond
  %44 = load i64, ptr %distval, align 8, !dbg !161, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 8, ptr %vptr) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %distval) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebit) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mh) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ph) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xh) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xv) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eq) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mv) #5, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %Pv) #5, !dbg !162
  ret i64 %44, !dbg !163
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !164 void @gt_initeqsvector(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare !dbg !168 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !236 void @abort() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @gt_distanceofshortstringsencseq(ptr noundef %eqsvector, i32 noundef %alphasize, ptr noundef %useq, i64 noundef %ulen, ptr noundef %encseq, i64 noundef %vstartpos, i64 noundef %vlen) #0 !dbg !240 {
entry:
  %eqsvector.addr = alloca ptr, align 8
  %alphasize.addr = alloca i32, align 4
  %useq.addr = alloca ptr, align 8
  %ulen.addr = alloca i64, align 8
  %encseq.addr = alloca ptr, align 8
  %vstartpos.addr = alloca i64, align 8
  %vlen.addr = alloca i64, align 8
  %Pv = alloca i64, align 8
  %Mv = alloca i64, align 8
  %Eq = alloca i64, align 8
  %Xv = alloca i64, align 8
  %Xh = alloca i64, align 8
  %Ph = alloca i64, align 8
  %Mh = alloca i64, align 8
  %Ebit = alloca i64, align 8
  %distval = alloca i64, align 8
  %cc = alloca i8, align 1
  %pos = alloca i64, align 8
  store ptr %eqsvector, ptr %eqsvector.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %eqsvector.addr, metadata !249, metadata !DIExpression()), !dbg !267
  store i32 %alphasize, ptr %alphasize.addr, align 4, !tbaa !101
  tail call void @llvm.dbg.declare(metadata ptr %alphasize.addr, metadata !250, metadata !DIExpression()), !dbg !268
  store ptr %useq, ptr %useq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %useq.addr, metadata !251, metadata !DIExpression()), !dbg !269
  store i64 %ulen, ptr %ulen.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %ulen.addr, metadata !252, metadata !DIExpression()), !dbg !270
  store ptr %encseq, ptr %encseq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %encseq.addr, metadata !253, metadata !DIExpression()), !dbg !271
  store i64 %vstartpos, ptr %vstartpos.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %vstartpos.addr, metadata !254, metadata !DIExpression()), !dbg !272
  store i64 %vlen, ptr %vlen.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !255, metadata !DIExpression()), !dbg !273
  call void @llvm.lifetime.start.p0(i64 8, ptr %Pv) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Pv, metadata !256, metadata !DIExpression()), !dbg !274
  store i64 -1, ptr %Pv, align 8, !dbg !274, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mv) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Mv, metadata !257, metadata !DIExpression()), !dbg !274
  store i64 0, ptr %Mv, align 8, !dbg !274, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eq) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Eq, metadata !258, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xv) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Xv, metadata !259, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xh) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Xh, metadata !260, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ph) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Ph, metadata !261, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mh) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Mh, metadata !262, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebit) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %Ebit, metadata !263, metadata !DIExpression()), !dbg !274
  %0 = load i64, ptr %ulen.addr, align 8, !dbg !274, !tbaa !105
  %sub = sub i64 %0, 1, !dbg !274
  %shl = shl i64 1, %sub, !dbg !274
  store i64 %shl, ptr %Ebit, align 8, !dbg !274, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %distval) #5, !dbg !274
  tail call void @llvm.dbg.declare(metadata ptr %distval, metadata !264, metadata !DIExpression()), !dbg !274
  %1 = load i64, ptr %ulen.addr, align 8, !dbg !274, !tbaa !105
  store i64 %1, ptr %distval, align 8, !dbg !274, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 1, ptr %cc) #5, !dbg !275
  tail call void @llvm.dbg.declare(metadata ptr %cc, metadata !265, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #5, !dbg !277
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !266, metadata !DIExpression()), !dbg !278
  %2 = load ptr, ptr %eqsvector.addr, align 8, !dbg !279, !tbaa !96
  %3 = load i32, ptr %alphasize.addr, align 4, !dbg !280, !tbaa !101
  %conv = zext i32 %3 to i64, !dbg !281
  %4 = load ptr, ptr %useq.addr, align 8, !dbg !282, !tbaa !96
  %5 = load i64, ptr %ulen.addr, align 8, !dbg !283, !tbaa !105
  call void @gt_initeqsvector(ptr noundef %2, i64 noundef %conv, ptr noundef %4, i64 noundef %5), !dbg !284
  %6 = load i64, ptr %vstartpos.addr, align 8, !dbg !285, !tbaa !105
  store i64 %6, ptr %pos, align 8, !dbg !287, !tbaa !105
  br label %for.cond, !dbg !288

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %pos, align 8, !dbg !289, !tbaa !105
  %8 = load i64, ptr %vstartpos.addr, align 8, !dbg !291, !tbaa !105
  %9 = load i64, ptr %vlen.addr, align 8, !dbg !292, !tbaa !105
  %add = add i64 %8, %9, !dbg !293
  %cmp = icmp ult i64 %7, %add, !dbg !294
  br i1 %cmp, label %for.body, label %for.end, !dbg !295

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %encseq.addr, align 8, !dbg !296, !tbaa !96
  %11 = load i64, ptr %pos, align 8, !dbg !298, !tbaa !105
  %call = call zeroext i8 @gt_encseq_get_encoded_char(ptr noundef %10, i64 noundef %11, i32 noundef 0), !dbg !299
  store i8 %call, ptr %cc, align 1, !dbg !300, !tbaa !135
  br label %do.body, !dbg !301

do.body:                                          ; preds = %for.body
  %12 = load i8, ptr %cc, align 1, !dbg !302, !tbaa !135
  %conv2 = zext i8 %12 to i32, !dbg !302
  %cmp3 = icmp ne i32 %conv2, 255, !dbg !302
  br i1 %cmp3, label %if.end, label %if.then, !dbg !305

if.then:                                          ; preds = %do.body
  %13 = load ptr, ptr @stderr, align 8, !dbg !306, !tbaa !96
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_distanceofshortstringsencseq, ptr noundef @.str.2, i32 noundef 105), !dbg !306
  call void @abort() #6, !dbg !306
  unreachable, !dbg !306

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !305

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !305

do.end:                                           ; preds = %do.cond
  %14 = load i8, ptr %cc, align 1, !dbg !308, !tbaa !135
  %conv6 = zext i8 %14 to i32, !dbg !308
  %cmp7 = icmp ne i32 %conv6, 254, !dbg !308
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !301

if.then9:                                         ; preds = %do.end
  %15 = load ptr, ptr %eqsvector.addr, align 8, !dbg !310, !tbaa !96
  %16 = load i8, ptr %cc, align 1, !dbg !310, !tbaa !135
  %conv10 = zext i8 %16 to i64, !dbg !310
  %arrayidx = getelementptr inbounds i64, ptr %15, i64 %conv10, !dbg !310
  %17 = load i64, ptr %arrayidx, align 8, !dbg !310, !tbaa !105
  store i64 %17, ptr %Eq, align 8, !dbg !310, !tbaa !105
  br label %if.end11, !dbg !310

if.else:                                          ; preds = %do.end
  store i64 0, ptr %Eq, align 8, !dbg !312, !tbaa !105
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  %18 = load i64, ptr %Eq, align 8, !dbg !301, !tbaa !105
  %19 = load i64, ptr %Mv, align 8, !dbg !301, !tbaa !105
  %or = or i64 %18, %19, !dbg !301
  store i64 %or, ptr %Xv, align 8, !dbg !301, !tbaa !105
  %20 = load i64, ptr %Eq, align 8, !dbg !301, !tbaa !105
  %21 = load i64, ptr %Pv, align 8, !dbg !301, !tbaa !105
  %and = and i64 %20, %21, !dbg !301
  %22 = load i64, ptr %Pv, align 8, !dbg !301, !tbaa !105
  %add12 = add i64 %and, %22, !dbg !301
  %23 = load i64, ptr %Pv, align 8, !dbg !301, !tbaa !105
  %xor = xor i64 %add12, %23, !dbg !301
  %24 = load i64, ptr %Eq, align 8, !dbg !301, !tbaa !105
  %or13 = or i64 %xor, %24, !dbg !301
  store i64 %or13, ptr %Xh, align 8, !dbg !301, !tbaa !105
  %25 = load i64, ptr %Mv, align 8, !dbg !301, !tbaa !105
  %26 = load i64, ptr %Xh, align 8, !dbg !301, !tbaa !105
  %27 = load i64, ptr %Pv, align 8, !dbg !301, !tbaa !105
  %or14 = or i64 %26, %27, !dbg !301
  %not = xor i64 %or14, -1, !dbg !301
  %or15 = or i64 %25, %not, !dbg !301
  store i64 %or15, ptr %Ph, align 8, !dbg !301, !tbaa !105
  %28 = load i64, ptr %Pv, align 8, !dbg !301, !tbaa !105
  %29 = load i64, ptr %Xh, align 8, !dbg !301, !tbaa !105
  %and16 = and i64 %28, %29, !dbg !301
  store i64 %and16, ptr %Mh, align 8, !dbg !301, !tbaa !105
  %30 = load i64, ptr %Ph, align 8, !dbg !314, !tbaa !105
  %31 = load i64, ptr %Ebit, align 8, !dbg !314, !tbaa !105
  %and17 = and i64 %30, %31, !dbg !314
  %tobool = icmp ne i64 %and17, 0, !dbg !314
  br i1 %tobool, label %if.then18, label %if.else19, !dbg !301

if.then18:                                        ; preds = %if.end11
  %32 = load i64, ptr %distval, align 8, !dbg !316, !tbaa !105
  %inc = add i64 %32, 1, !dbg !316
  store i64 %inc, ptr %distval, align 8, !dbg !316, !tbaa !105
  br label %if.end24, !dbg !316

if.else19:                                        ; preds = %if.end11
  %33 = load i64, ptr %Mh, align 8, !dbg !318, !tbaa !105
  %34 = load i64, ptr %Ebit, align 8, !dbg !318, !tbaa !105
  %and20 = and i64 %33, %34, !dbg !318
  %tobool21 = icmp ne i64 %and20, 0, !dbg !318
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !321

if.then22:                                        ; preds = %if.else19
  %35 = load i64, ptr %distval, align 8, !dbg !322, !tbaa !105
  %dec = add i64 %35, -1, !dbg !322
  store i64 %dec, ptr %distval, align 8, !dbg !322, !tbaa !105
  br label %if.end23, !dbg !322

if.end23:                                         ; preds = %if.then22, %if.else19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then18
  %36 = load i64, ptr %Ph, align 8, !dbg !301, !tbaa !105
  %shl25 = shl i64 %36, 1, !dbg !301
  %or26 = or i64 %shl25, 1, !dbg !301
  store i64 %or26, ptr %Ph, align 8, !dbg !301, !tbaa !105
  %37 = load i64, ptr %Mh, align 8, !dbg !301, !tbaa !105
  %shl27 = shl i64 %37, 1, !dbg !301
  %38 = load i64, ptr %Xv, align 8, !dbg !301, !tbaa !105
  %39 = load i64, ptr %Ph, align 8, !dbg !301, !tbaa !105
  %or28 = or i64 %38, %39, !dbg !301
  %not29 = xor i64 %or28, -1, !dbg !301
  %or30 = or i64 %shl27, %not29, !dbg !301
  store i64 %or30, ptr %Pv, align 8, !dbg !301, !tbaa !105
  %40 = load i64, ptr %Ph, align 8, !dbg !301, !tbaa !105
  %41 = load i64, ptr %Xv, align 8, !dbg !301, !tbaa !105
  %and31 = and i64 %40, %41, !dbg !301
  store i64 %and31, ptr %Mv, align 8, !dbg !301, !tbaa !105
  br label %for.inc, !dbg !324

for.inc:                                          ; preds = %if.end24
  %42 = load i64, ptr %pos, align 8, !dbg !325, !tbaa !105
  %inc32 = add i64 %42, 1, !dbg !325
  store i64 %inc32, ptr %pos, align 8, !dbg !325, !tbaa !105
  br label %for.cond, !dbg !326, !llvm.loop !327

for.end:                                          ; preds = %for.cond
  %43 = load i64, ptr %distval, align 8, !dbg !329, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 1, ptr %cc) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %distval) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebit) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mh) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ph) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xh) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xv) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eq) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mv) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %Pv) #5, !dbg !330
  ret i64 %43, !dbg !331
}

declare !dbg !332 zeroext i8 @gt_encseq_get_encoded_char(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i64 @gt_reversesuffixmatch(ptr noundef %eqsvector, i32 noundef %alphasize, ptr noundef %useq, i64 noundef %ulen, ptr noundef %vseq, i64 noundef %vlen, i64 noundef %maxdistance) #0 !dbg !336 {
entry:
  %eqsvector.addr = alloca ptr, align 8
  %alphasize.addr = alloca i32, align 4
  %useq.addr = alloca ptr, align 8
  %ulen.addr = alloca i64, align 8
  %vseq.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %maxdistance.addr = alloca i64, align 8
  %Pv = alloca i64, align 8
  %Mv = alloca i64, align 8
  %Eq = alloca i64, align 8
  %Xv = alloca i64, align 8
  %Xh = alloca i64, align 8
  %Ph = alloca i64, align 8
  %Mh = alloca i64, align 8
  %Ebit = alloca i64, align 8
  %distval = alloca i64, align 8
  %vptr = alloca ptr, align 8
  store ptr %eqsvector, ptr %eqsvector.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %eqsvector.addr, metadata !340, metadata !DIExpression()), !dbg !357
  store i32 %alphasize, ptr %alphasize.addr, align 4, !tbaa !101
  tail call void @llvm.dbg.declare(metadata ptr %alphasize.addr, metadata !341, metadata !DIExpression()), !dbg !358
  store ptr %useq, ptr %useq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %useq.addr, metadata !342, metadata !DIExpression()), !dbg !359
  store i64 %ulen, ptr %ulen.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %ulen.addr, metadata !343, metadata !DIExpression()), !dbg !360
  store ptr %vseq, ptr %vseq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %vseq.addr, metadata !344, metadata !DIExpression()), !dbg !361
  store i64 %vlen, ptr %vlen.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !345, metadata !DIExpression()), !dbg !362
  store i64 %maxdistance, ptr %maxdistance.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %maxdistance.addr, metadata !346, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 8, ptr %Pv) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Pv, metadata !347, metadata !DIExpression()), !dbg !364
  store i64 -1, ptr %Pv, align 8, !dbg !364, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mv) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Mv, metadata !348, metadata !DIExpression()), !dbg !364
  store i64 0, ptr %Mv, align 8, !dbg !364, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eq) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Eq, metadata !349, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xv) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Xv, metadata !350, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xh) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Xh, metadata !351, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ph) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Ph, metadata !352, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mh) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Mh, metadata !353, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebit) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %Ebit, metadata !354, metadata !DIExpression()), !dbg !364
  %0 = load i64, ptr %ulen.addr, align 8, !dbg !364, !tbaa !105
  %sub = sub i64 %0, 1, !dbg !364
  %shl = shl i64 1, %sub, !dbg !364
  store i64 %shl, ptr %Ebit, align 8, !dbg !364, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %distval) #5, !dbg !364
  tail call void @llvm.dbg.declare(metadata ptr %distval, metadata !355, metadata !DIExpression()), !dbg !364
  %1 = load i64, ptr %ulen.addr, align 8, !dbg !364, !tbaa !105
  store i64 %1, ptr %distval, align 8, !dbg !364, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %vptr) #5, !dbg !365
  tail call void @llvm.dbg.declare(metadata ptr %vptr, metadata !356, metadata !DIExpression()), !dbg !366
  %2 = load ptr, ptr %eqsvector.addr, align 8, !dbg !367, !tbaa !96
  %3 = load i32, ptr %alphasize.addr, align 4, !dbg !368, !tbaa !101
  %conv = zext i32 %3 to i64, !dbg !369
  %4 = load ptr, ptr %useq.addr, align 8, !dbg !370, !tbaa !96
  %5 = load i64, ptr %ulen.addr, align 8, !dbg !371, !tbaa !105
  call void @gt_initeqsvectorrev(ptr noundef %2, i64 noundef %conv, ptr noundef %4, i64 noundef %5), !dbg !372
  br label %do.body, !dbg !373

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %maxdistance.addr, align 8, !dbg !374, !tbaa !105
  %cmp = icmp ugt i64 %6, 0, !dbg !374
  br i1 %cmp, label %if.end, label %if.then, !dbg !377

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr @stderr, align 8, !dbg !378, !tbaa !96
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_reversesuffixmatch, ptr noundef @.str.2, i32 noundef 122), !dbg !378
  call void @abort() #6, !dbg !378
  unreachable, !dbg !378

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !377

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !377

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %vseq.addr, align 8, !dbg !380, !tbaa !96
  %9 = load i64, ptr %vlen.addr, align 8, !dbg !382, !tbaa !105
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9, !dbg !383
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !384
  store ptr %add.ptr2, ptr %vptr, align 8, !dbg !385, !tbaa !96
  br label %for.cond, !dbg !386

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = load ptr, ptr %vptr, align 8, !dbg !387, !tbaa !96
  %11 = load ptr, ptr %vseq.addr, align 8, !dbg !389, !tbaa !96
  %cmp3 = icmp uge ptr %10, %11, !dbg !390
  br i1 %cmp3, label %for.body, label %for.end, !dbg !391

for.body:                                         ; preds = %for.cond
  br label %do.body5, !dbg !392

do.body5:                                         ; preds = %for.body
  %12 = load ptr, ptr %vptr, align 8, !dbg !394, !tbaa !96
  %13 = load i8, ptr %12, align 1, !dbg !394, !tbaa !135
  %conv6 = zext i8 %13 to i32, !dbg !394
  %cmp7 = icmp ne i32 %conv6, 255, !dbg !394
  br i1 %cmp7, label %if.end11, label %if.then9, !dbg !397

if.then9:                                         ; preds = %do.body5
  %14 = load ptr, ptr @stderr, align 8, !dbg !398, !tbaa !96
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_reversesuffixmatch, ptr noundef @.str.2, i32 noundef 125), !dbg !398
  call void @abort() #6, !dbg !398
  unreachable, !dbg !398

if.end11:                                         ; preds = %do.body5
  br label %do.cond12, !dbg !397

do.cond12:                                        ; preds = %if.end11
  br label %do.end13, !dbg !397

do.end13:                                         ; preds = %do.cond12
  %15 = load ptr, ptr %vptr, align 8, !dbg !400, !tbaa !96
  %16 = load i8, ptr %15, align 1, !dbg !400, !tbaa !135
  %conv14 = zext i8 %16 to i32, !dbg !400
  %cmp15 = icmp ne i32 %conv14, 254, !dbg !400
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !392

if.then17:                                        ; preds = %do.end13
  %17 = load ptr, ptr %eqsvector.addr, align 8, !dbg !402, !tbaa !96
  %18 = load ptr, ptr %vptr, align 8, !dbg !402, !tbaa !96
  %19 = load i8, ptr %18, align 1, !dbg !402, !tbaa !135
  %conv18 = zext i8 %19 to i64, !dbg !402
  %arrayidx = getelementptr inbounds i64, ptr %17, i64 %conv18, !dbg !402
  %20 = load i64, ptr %arrayidx, align 8, !dbg !402, !tbaa !105
  store i64 %20, ptr %Eq, align 8, !dbg !402, !tbaa !105
  br label %if.end19, !dbg !402

if.else:                                          ; preds = %do.end13
  store i64 0, ptr %Eq, align 8, !dbg !404, !tbaa !105
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  %21 = load i64, ptr %Eq, align 8, !dbg !392, !tbaa !105
  %22 = load i64, ptr %Mv, align 8, !dbg !392, !tbaa !105
  %or = or i64 %21, %22, !dbg !392
  store i64 %or, ptr %Xv, align 8, !dbg !392, !tbaa !105
  %23 = load i64, ptr %Eq, align 8, !dbg !392, !tbaa !105
  %24 = load i64, ptr %Pv, align 8, !dbg !392, !tbaa !105
  %and = and i64 %23, %24, !dbg !392
  %25 = load i64, ptr %Pv, align 8, !dbg !392, !tbaa !105
  %add = add i64 %and, %25, !dbg !392
  %26 = load i64, ptr %Pv, align 8, !dbg !392, !tbaa !105
  %xor = xor i64 %add, %26, !dbg !392
  %27 = load i64, ptr %Eq, align 8, !dbg !392, !tbaa !105
  %or20 = or i64 %xor, %27, !dbg !392
  store i64 %or20, ptr %Xh, align 8, !dbg !392, !tbaa !105
  %28 = load i64, ptr %Mv, align 8, !dbg !392, !tbaa !105
  %29 = load i64, ptr %Xh, align 8, !dbg !392, !tbaa !105
  %30 = load i64, ptr %Pv, align 8, !dbg !392, !tbaa !105
  %or21 = or i64 %29, %30, !dbg !392
  %not = xor i64 %or21, -1, !dbg !392
  %or22 = or i64 %28, %not, !dbg !392
  store i64 %or22, ptr %Ph, align 8, !dbg !392, !tbaa !105
  %31 = load i64, ptr %Pv, align 8, !dbg !392, !tbaa !105
  %32 = load i64, ptr %Xh, align 8, !dbg !392, !tbaa !105
  %and23 = and i64 %31, %32, !dbg !392
  store i64 %and23, ptr %Mh, align 8, !dbg !392, !tbaa !105
  %33 = load i64, ptr %Ph, align 8, !dbg !406, !tbaa !105
  %34 = load i64, ptr %Ebit, align 8, !dbg !406, !tbaa !105
  %and24 = and i64 %33, %34, !dbg !406
  %tobool = icmp ne i64 %and24, 0, !dbg !406
  br i1 %tobool, label %if.then25, label %if.else26, !dbg !392

if.then25:                                        ; preds = %if.end19
  %35 = load i64, ptr %distval, align 8, !dbg !408, !tbaa !105
  %inc = add i64 %35, 1, !dbg !408
  store i64 %inc, ptr %distval, align 8, !dbg !408, !tbaa !105
  br label %if.end31, !dbg !408

if.else26:                                        ; preds = %if.end19
  %36 = load i64, ptr %Mh, align 8, !dbg !410, !tbaa !105
  %37 = load i64, ptr %Ebit, align 8, !dbg !410, !tbaa !105
  %and27 = and i64 %36, %37, !dbg !410
  %tobool28 = icmp ne i64 %and27, 0, !dbg !410
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !413

if.then29:                                        ; preds = %if.else26
  %38 = load i64, ptr %distval, align 8, !dbg !414, !tbaa !105
  %dec = add i64 %38, -1, !dbg !414
  store i64 %dec, ptr %distval, align 8, !dbg !414, !tbaa !105
  br label %if.end30, !dbg !414

if.end30:                                         ; preds = %if.then29, %if.else26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then25
  %39 = load i64, ptr %Ph, align 8, !dbg !392, !tbaa !105
  %shl32 = shl i64 %39, 1, !dbg !392
  %or33 = or i64 %shl32, 1, !dbg !392
  store i64 %or33, ptr %Ph, align 8, !dbg !392, !tbaa !105
  %40 = load i64, ptr %Mh, align 8, !dbg !392, !tbaa !105
  %shl34 = shl i64 %40, 1, !dbg !392
  %41 = load i64, ptr %Xv, align 8, !dbg !392, !tbaa !105
  %42 = load i64, ptr %Ph, align 8, !dbg !392, !tbaa !105
  %or35 = or i64 %41, %42, !dbg !392
  %not36 = xor i64 %or35, -1, !dbg !392
  %or37 = or i64 %shl34, %not36, !dbg !392
  store i64 %or37, ptr %Pv, align 8, !dbg !392, !tbaa !105
  %43 = load i64, ptr %Ph, align 8, !dbg !392, !tbaa !105
  %44 = load i64, ptr %Xv, align 8, !dbg !392, !tbaa !105
  %and38 = and i64 %43, %44, !dbg !392
  store i64 %and38, ptr %Mv, align 8, !dbg !392, !tbaa !105
  %45 = load i64, ptr %distval, align 8, !dbg !416, !tbaa !105
  %46 = load i64, ptr %maxdistance.addr, align 8, !dbg !418, !tbaa !105
  %cmp39 = icmp ule i64 %45, %46, !dbg !419
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !420

if.then41:                                        ; preds = %if.end31
  br label %for.end, !dbg !421

if.end42:                                         ; preds = %if.end31
  br label %for.inc, !dbg !423

for.inc:                                          ; preds = %if.end42
  %47 = load ptr, ptr %vptr, align 8, !dbg !424, !tbaa !96
  %incdec.ptr = getelementptr inbounds i8, ptr %47, i32 -1, !dbg !424
  store ptr %incdec.ptr, ptr %vptr, align 8, !dbg !424, !tbaa !96
  br label %for.cond, !dbg !425, !llvm.loop !426

for.end:                                          ; preds = %if.then41, %for.cond
  %48 = load ptr, ptr %vseq.addr, align 8, !dbg !428, !tbaa !96
  %49 = load i64, ptr %vlen.addr, align 8, !dbg !429, !tbaa !105
  %add.ptr43 = getelementptr inbounds i8, ptr %48, i64 %49, !dbg !430
  %50 = load ptr, ptr %vptr, align 8, !dbg !431, !tbaa !96
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr43 to i64, !dbg !432
  %sub.ptr.rhs.cast = ptrtoint ptr %50 to i64, !dbg !432
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !432
  call void @llvm.lifetime.end.p0(i64 8, ptr %vptr) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %distval) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebit) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mh) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ph) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xh) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xv) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eq) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mv) #5, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %Pv) #5, !dbg !433
  ret i64 %sub.ptr.sub, !dbg !434
}

declare !dbg !435 void @gt_initeqsvectorrev(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define { i8, i64 } @gt_forwardprefixmatch(ptr noundef %encseq, i32 noundef %alphasize, i64 noundef %startpos, i1 noundef zeroext %nowildcards, ptr noundef %eqsvector, ptr noundef %useq, i64 noundef %ulen, i64 noundef %maxdistance) #0 !dbg !436 {
entry:
  %retval = alloca %struct.Definedunsignedlong, align 8
  %encseq.addr = alloca ptr, align 8
  %alphasize.addr = alloca i32, align 4
  %startpos.addr = alloca i64, align 8
  %nowildcards.addr = alloca i8, align 1
  %eqsvector.addr = alloca ptr, align 8
  %useq.addr = alloca ptr, align 8
  %ulen.addr = alloca i64, align 8
  %maxdistance.addr = alloca i64, align 8
  %Pv = alloca i64, align 8
  %Mv = alloca i64, align 8
  %Eq = alloca i64, align 8
  %Xv = alloca i64, align 8
  %Xh = alloca i64, align 8
  %Ph = alloca i64, align 8
  %Mh = alloca i64, align 8
  %Ebit = alloca i64, align 8
  %distval = alloca i64, align 8
  %pos = alloca i64, align 8
  %totallength = alloca i64, align 8
  %cc = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encseq, ptr %encseq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %encseq.addr, metadata !447, metadata !DIExpression()), !dbg !468
  store i32 %alphasize, ptr %alphasize.addr, align 4, !tbaa !101
  tail call void @llvm.dbg.declare(metadata ptr %alphasize.addr, metadata !448, metadata !DIExpression()), !dbg !469
  store i64 %startpos, ptr %startpos.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %startpos.addr, metadata !449, metadata !DIExpression()), !dbg !470
  %frombool = zext i1 %nowildcards to i8
  store i8 %frombool, ptr %nowildcards.addr, align 1, !tbaa !471
  tail call void @llvm.dbg.declare(metadata ptr %nowildcards.addr, metadata !450, metadata !DIExpression()), !dbg !473
  store ptr %eqsvector, ptr %eqsvector.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %eqsvector.addr, metadata !451, metadata !DIExpression()), !dbg !474
  store ptr %useq, ptr %useq.addr, align 8, !tbaa !96
  tail call void @llvm.dbg.declare(metadata ptr %useq.addr, metadata !452, metadata !DIExpression()), !dbg !475
  store i64 %ulen, ptr %ulen.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %ulen.addr, metadata !453, metadata !DIExpression()), !dbg !476
  store i64 %maxdistance, ptr %maxdistance.addr, align 8, !tbaa !105
  tail call void @llvm.dbg.declare(metadata ptr %maxdistance.addr, metadata !454, metadata !DIExpression()), !dbg !477
  call void @llvm.lifetime.start.p0(i64 8, ptr %Pv) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Pv, metadata !455, metadata !DIExpression()), !dbg !478
  store i64 -1, ptr %Pv, align 8, !dbg !478, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mv) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Mv, metadata !456, metadata !DIExpression()), !dbg !478
  store i64 0, ptr %Mv, align 8, !dbg !478, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eq) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Eq, metadata !457, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xv) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Xv, metadata !458, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xh) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Xh, metadata !459, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ph) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Ph, metadata !460, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mh) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Mh, metadata !461, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebit) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %Ebit, metadata !462, metadata !DIExpression()), !dbg !478
  %0 = load i64, ptr %ulen.addr, align 8, !dbg !478, !tbaa !105
  %sub = sub i64 %0, 1, !dbg !478
  %shl = shl i64 1, %sub, !dbg !478
  store i64 %shl, ptr %Ebit, align 8, !dbg !478, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %distval) #5, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %distval, metadata !463, metadata !DIExpression()), !dbg !478
  %1 = load i64, ptr %ulen.addr, align 8, !dbg !478, !tbaa !105
  store i64 %1, ptr %distval, align 8, !dbg !478, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #5, !dbg !479
  tail call void @llvm.dbg.declare(metadata ptr %pos, metadata !464, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %totallength) #5, !dbg !479
  tail call void @llvm.dbg.declare(metadata ptr %totallength, metadata !465, metadata !DIExpression()), !dbg !481
  %2 = load ptr, ptr %encseq.addr, align 8, !dbg !482, !tbaa !96
  %call = call i64 @gt_encseq_total_length(ptr noundef %2), !dbg !483
  store i64 %call, ptr %totallength, align 8, !dbg !481, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 1, ptr %cc) #5, !dbg !484
  tail call void @llvm.dbg.declare(metadata ptr %cc, metadata !466, metadata !DIExpression()), !dbg !485
  tail call void @llvm.dbg.declare(metadata ptr %retval, metadata !467, metadata !DIExpression()), !dbg !486
  %3 = load ptr, ptr %eqsvector.addr, align 8, !dbg !487, !tbaa !96
  %4 = load i32, ptr %alphasize.addr, align 4, !dbg !488, !tbaa !101
  %conv = zext i32 %4 to i64, !dbg !489
  %5 = load ptr, ptr %useq.addr, align 8, !dbg !490, !tbaa !96
  %6 = load i64, ptr %ulen.addr, align 8, !dbg !491, !tbaa !105
  call void @gt_initeqsvector(ptr noundef %3, i64 noundef %conv, ptr noundef %5, i64 noundef %6), !dbg !492
  br label %do.body, !dbg !493

do.body:                                          ; preds = %entry
  %7 = load i64, ptr %maxdistance.addr, align 8, !dbg !494, !tbaa !105
  %cmp = icmp ugt i64 %7, 0, !dbg !494
  br i1 %cmp, label %if.end, label %if.then, !dbg !497

if.then:                                          ; preds = %do.body
  %8 = load ptr, ptr @stderr, align 8, !dbg !498, !tbaa !96
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_forwardprefixmatch, ptr noundef @.str.2, i32 noundef 150), !dbg !498
  call void @abort() #6, !dbg !498
  unreachable, !dbg !498

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !497

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !497

do.end:                                           ; preds = %do.cond
  %9 = load i64, ptr %startpos.addr, align 8, !dbg !500, !tbaa !105
  store i64 %9, ptr %pos, align 8, !dbg !502, !tbaa !105
  br label %for.cond, !dbg !503

for.cond:                                         ; preds = %for.inc, %do.end
  br label %do.body3, !dbg !504

do.body3:                                         ; preds = %for.cond
  %10 = load i64, ptr %pos, align 8, !dbg !507, !tbaa !105
  %11 = load i64, ptr %startpos.addr, align 8, !dbg !507, !tbaa !105
  %sub4 = sub i64 %10, %11, !dbg !507
  %12 = load i64, ptr %ulen.addr, align 8, !dbg !507, !tbaa !105
  %13 = load i64, ptr %maxdistance.addr, align 8, !dbg !507, !tbaa !105
  %add = add i64 %12, %13, !dbg !507
  %cmp5 = icmp ule i64 %sub4, %add, !dbg !507
  br i1 %cmp5, label %if.end9, label %if.then7, !dbg !510

if.then7:                                         ; preds = %do.body3
  %14 = load ptr, ptr @stderr, align 8, !dbg !511, !tbaa !96
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_forwardprefixmatch, ptr noundef @.str.2, i32 noundef 153), !dbg !511
  call void @abort() #6, !dbg !511
  unreachable, !dbg !511

if.end9:                                          ; preds = %do.body3
  br label %do.cond10, !dbg !510

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !510

do.end11:                                         ; preds = %do.cond10
  %15 = load ptr, ptr %encseq.addr, align 8, !dbg !513, !tbaa !96
  %16 = load i64, ptr %pos, align 8, !dbg !514, !tbaa !105
  %call12 = call zeroext i8 @gt_encseq_get_encoded_char(ptr noundef %15, i64 noundef %16, i32 noundef 0), !dbg !515
  store i8 %call12, ptr %cc, align 1, !dbg !516, !tbaa !135
  %17 = load i8, ptr %nowildcards.addr, align 1, !dbg !517, !tbaa !471, !range !519, !noundef !520
  %tobool = trunc i8 %17 to i1, !dbg !517
  br i1 %tobool, label %land.lhs.true, label %if.end18, !dbg !521

land.lhs.true:                                    ; preds = %do.end11
  %18 = load i8, ptr %cc, align 1, !dbg !522, !tbaa !135
  %conv14 = zext i8 %18 to i32, !dbg !522
  %cmp15 = icmp eq i32 %conv14, 254, !dbg !523
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !524

if.then17:                                        ; preds = %land.lhs.true
  %defined = getelementptr inbounds %struct.Definedunsignedlong, ptr %retval, i32 0, i32 0, !dbg !525
  store i8 0, ptr %defined, align 8, !dbg !527, !tbaa !528
  %valueunsignedlong = getelementptr inbounds %struct.Definedunsignedlong, ptr %retval, i32 0, i32 1, !dbg !530
  store i64 0, ptr %valueunsignedlong, align 8, !dbg !531, !tbaa !532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !533

if.end18:                                         ; preds = %land.lhs.true, %do.end11
  br label %do.body19, !dbg !534

do.body19:                                        ; preds = %if.end18
  %19 = load i8, ptr %cc, align 1, !dbg !535, !tbaa !135
  %conv20 = zext i8 %19 to i32, !dbg !535
  %cmp21 = icmp ne i32 %conv20, 255, !dbg !535
  br i1 %cmp21, label %if.end25, label %if.then23, !dbg !538

if.then23:                                        ; preds = %do.body19
  %20 = load ptr, ptr @stderr, align 8, !dbg !539, !tbaa !96
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_forwardprefixmatch, ptr noundef @.str.2, i32 noundef 161), !dbg !539
  call void @abort() #6, !dbg !539
  unreachable, !dbg !539

if.end25:                                         ; preds = %do.body19
  br label %do.cond26, !dbg !538

do.cond26:                                        ; preds = %if.end25
  br label %do.end27, !dbg !538

do.end27:                                         ; preds = %do.cond26
  %21 = load i8, ptr %cc, align 1, !dbg !541, !tbaa !135
  %conv28 = zext i8 %21 to i32, !dbg !541
  %cmp29 = icmp ne i32 %conv28, 254, !dbg !541
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !534

if.then31:                                        ; preds = %do.end27
  %22 = load ptr, ptr %eqsvector.addr, align 8, !dbg !543, !tbaa !96
  %23 = load i8, ptr %cc, align 1, !dbg !543, !tbaa !135
  %conv32 = zext i8 %23 to i64, !dbg !543
  %arrayidx = getelementptr inbounds i64, ptr %22, i64 %conv32, !dbg !543
  %24 = load i64, ptr %arrayidx, align 8, !dbg !543, !tbaa !105
  store i64 %24, ptr %Eq, align 8, !dbg !543, !tbaa !105
  br label %if.end33, !dbg !543

if.else:                                          ; preds = %do.end27
  store i64 0, ptr %Eq, align 8, !dbg !545, !tbaa !105
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %25 = load i64, ptr %Eq, align 8, !dbg !534, !tbaa !105
  %26 = load i64, ptr %Mv, align 8, !dbg !534, !tbaa !105
  %or = or i64 %25, %26, !dbg !534
  store i64 %or, ptr %Xv, align 8, !dbg !534, !tbaa !105
  %27 = load i64, ptr %Eq, align 8, !dbg !534, !tbaa !105
  %28 = load i64, ptr %Pv, align 8, !dbg !534, !tbaa !105
  %and = and i64 %27, %28, !dbg !534
  %29 = load i64, ptr %Pv, align 8, !dbg !534, !tbaa !105
  %add34 = add i64 %and, %29, !dbg !534
  %30 = load i64, ptr %Pv, align 8, !dbg !534, !tbaa !105
  %xor = xor i64 %add34, %30, !dbg !534
  %31 = load i64, ptr %Eq, align 8, !dbg !534, !tbaa !105
  %or35 = or i64 %xor, %31, !dbg !534
  store i64 %or35, ptr %Xh, align 8, !dbg !534, !tbaa !105
  %32 = load i64, ptr %Mv, align 8, !dbg !534, !tbaa !105
  %33 = load i64, ptr %Xh, align 8, !dbg !534, !tbaa !105
  %34 = load i64, ptr %Pv, align 8, !dbg !534, !tbaa !105
  %or36 = or i64 %33, %34, !dbg !534
  %not = xor i64 %or36, -1, !dbg !534
  %or37 = or i64 %32, %not, !dbg !534
  store i64 %or37, ptr %Ph, align 8, !dbg !534, !tbaa !105
  %35 = load i64, ptr %Pv, align 8, !dbg !534, !tbaa !105
  %36 = load i64, ptr %Xh, align 8, !dbg !534, !tbaa !105
  %and38 = and i64 %35, %36, !dbg !534
  store i64 %and38, ptr %Mh, align 8, !dbg !534, !tbaa !105
  %37 = load i64, ptr %Ph, align 8, !dbg !547, !tbaa !105
  %38 = load i64, ptr %Ebit, align 8, !dbg !547, !tbaa !105
  %and39 = and i64 %37, %38, !dbg !547
  %tobool40 = icmp ne i64 %and39, 0, !dbg !547
  br i1 %tobool40, label %if.then41, label %if.else42, !dbg !534

if.then41:                                        ; preds = %if.end33
  %39 = load i64, ptr %distval, align 8, !dbg !549, !tbaa !105
  %inc = add i64 %39, 1, !dbg !549
  store i64 %inc, ptr %distval, align 8, !dbg !549, !tbaa !105
  br label %if.end47, !dbg !549

if.else42:                                        ; preds = %if.end33
  %40 = load i64, ptr %Mh, align 8, !dbg !551, !tbaa !105
  %41 = load i64, ptr %Ebit, align 8, !dbg !551, !tbaa !105
  %and43 = and i64 %40, %41, !dbg !551
  %tobool44 = icmp ne i64 %and43, 0, !dbg !551
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !554

if.then45:                                        ; preds = %if.else42
  %42 = load i64, ptr %distval, align 8, !dbg !555, !tbaa !105
  %dec = add i64 %42, -1, !dbg !555
  store i64 %dec, ptr %distval, align 8, !dbg !555, !tbaa !105
  br label %if.end46, !dbg !555

if.end46:                                         ; preds = %if.then45, %if.else42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then41
  %43 = load i64, ptr %Ph, align 8, !dbg !534, !tbaa !105
  %shl48 = shl i64 %43, 1, !dbg !534
  %or49 = or i64 %shl48, 1, !dbg !534
  store i64 %or49, ptr %Ph, align 8, !dbg !534, !tbaa !105
  %44 = load i64, ptr %Mh, align 8, !dbg !534, !tbaa !105
  %shl50 = shl i64 %44, 1, !dbg !534
  %45 = load i64, ptr %Xv, align 8, !dbg !534, !tbaa !105
  %46 = load i64, ptr %Ph, align 8, !dbg !534, !tbaa !105
  %or51 = or i64 %45, %46, !dbg !534
  %not52 = xor i64 %or51, -1, !dbg !534
  %or53 = or i64 %shl50, %not52, !dbg !534
  store i64 %or53, ptr %Pv, align 8, !dbg !534, !tbaa !105
  %47 = load i64, ptr %Ph, align 8, !dbg !534, !tbaa !105
  %48 = load i64, ptr %Xv, align 8, !dbg !534, !tbaa !105
  %and54 = and i64 %47, %48, !dbg !534
  store i64 %and54, ptr %Mv, align 8, !dbg !534, !tbaa !105
  %49 = load i64, ptr %distval, align 8, !dbg !557, !tbaa !105
  %50 = load i64, ptr %maxdistance.addr, align 8, !dbg !559, !tbaa !105
  %cmp55 = icmp ule i64 %49, %50, !dbg !560
  br i1 %cmp55, label %if.then60, label %lor.lhs.false, !dbg !561

lor.lhs.false:                                    ; preds = %if.end47
  %51 = load i64, ptr %pos, align 8, !dbg !562, !tbaa !105
  %52 = load i64, ptr %totallength, align 8, !dbg !563, !tbaa !105
  %sub57 = sub i64 %52, 1, !dbg !564
  %cmp58 = icmp eq i64 %51, %sub57, !dbg !565
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !566

if.then60:                                        ; preds = %lor.lhs.false, %if.end47
  br label %for.end, !dbg !567

if.end61:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !569

for.inc:                                          ; preds = %if.end61
  %53 = load i64, ptr %pos, align 8, !dbg !570, !tbaa !105
  %inc62 = add i64 %53, 1, !dbg !570
  store i64 %inc62, ptr %pos, align 8, !dbg !570, !tbaa !105
  br label %for.cond, !dbg !571, !llvm.loop !572

for.end:                                          ; preds = %if.then60
  %defined63 = getelementptr inbounds %struct.Definedunsignedlong, ptr %retval, i32 0, i32 0, !dbg !575
  store i8 1, ptr %defined63, align 8, !dbg !576, !tbaa !528
  %54 = load i64, ptr %pos, align 8, !dbg !577, !tbaa !105
  %55 = load i64, ptr %startpos.addr, align 8, !dbg !578, !tbaa !105
  %sub64 = sub i64 %54, %55, !dbg !579
  %add65 = add i64 %sub64, 1, !dbg !580
  %valueunsignedlong66 = getelementptr inbounds %struct.Definedunsignedlong, ptr %retval, i32 0, i32 1, !dbg !581
  store i64 %add65, ptr %valueunsignedlong66, align 8, !dbg !582, !tbaa !532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !583

cleanup:                                          ; preds = %for.end, %if.then17
  call void @llvm.lifetime.end.p0(i64 1, ptr %cc) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %totallength) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %distval) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebit) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mh) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ph) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xh) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xv) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eq) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mv) #5, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %Pv) #5, !dbg !584
  %56 = load { i8, i64 }, ptr %retval, align 8, !dbg !584
  ret { i8, i64 } %56, !dbg !584
}

declare !dbg !585 i64 @gt_encseq_total_length(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!50}
!llvm.module.flags = !{!67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/match/dist-short.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "30758d525ea10ece82564a6b615d0aeb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 280, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 35)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 23)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 31)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 32)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 16)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 22)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !40, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 49)
!50 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !60, globals: !66, splitDebugInlining: false, nameTableKind: None)
!51 = !{!52}
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtReadmode", file: !53, line: 23, baseType: !54, size: 32, elements: !55)
!53 = !DIFile(filename: "src/core/readmode_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1b062e226e296972a431b9bfcad13aa9")
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "GT_READMODE_FORWARD", value: 0)
!57 = !DIEnumerator(name: "GT_READMODE_REVERSE", value: 1)
!58 = !DIEnumerator(name: "GT_READMODE_COMPL", value: 2)
!59 = !DIEnumerator(name: "GT_READMODE_REVCOMPL", value: 3)
!60 = !{!61, !64}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !62, line: 83, baseType: !63)
!62 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUchar", file: !62, line: 102, baseType: !65)
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !45}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!73 = distinct !DISubprogram(name: "gt_distanceofshortstringsbytearray", scope: !2, file: !2, line: 71, type: !74, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !79)
!74 = !DISubroutineType(types: !75)
!75 = !{!61, !76, !54, !77, !61, !77, !61}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!80 = !DILocalVariable(name: "eqsvector", arg: 1, scope: !73, file: !2, line: 71, type: !76)
!81 = !DILocalVariable(name: "alphasize", arg: 2, scope: !73, file: !2, line: 72, type: !54)
!82 = !DILocalVariable(name: "useq", arg: 3, scope: !73, file: !2, line: 73, type: !77)
!83 = !DILocalVariable(name: "ulen", arg: 4, scope: !73, file: !2, line: 74, type: !61)
!84 = !DILocalVariable(name: "vseq", arg: 5, scope: !73, file: !2, line: 75, type: !77)
!85 = !DILocalVariable(name: "vlen", arg: 6, scope: !73, file: !2, line: 76, type: !61)
!86 = !DILocalVariable(name: "Pv", scope: !73, file: !2, line: 78, type: !61)
!87 = !DILocalVariable(name: "Mv", scope: !73, file: !2, line: 78, type: !61)
!88 = !DILocalVariable(name: "Eq", scope: !73, file: !2, line: 78, type: !61)
!89 = !DILocalVariable(name: "Xv", scope: !73, file: !2, line: 78, type: !61)
!90 = !DILocalVariable(name: "Xh", scope: !73, file: !2, line: 78, type: !61)
!91 = !DILocalVariable(name: "Ph", scope: !73, file: !2, line: 78, type: !61)
!92 = !DILocalVariable(name: "Mh", scope: !73, file: !2, line: 78, type: !61)
!93 = !DILocalVariable(name: "Ebit", scope: !73, file: !2, line: 78, type: !61)
!94 = !DILocalVariable(name: "distval", scope: !73, file: !2, line: 78, type: !61)
!95 = !DILocalVariable(name: "vptr", scope: !73, file: !2, line: 79, type: !77)
!96 = !{!97, !97, i64 0}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 71, column: 53, scope: !73)
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !98, i64 0}
!103 = !DILocation(line: 72, column: 60, scope: !73)
!104 = !DILocation(line: 73, column: 62, scope: !73)
!105 = !{!106, !106, i64 0}
!106 = !{!"long", !98, i64 0}
!107 = !DILocation(line: 74, column: 55, scope: !73)
!108 = !DILocation(line: 75, column: 62, scope: !73)
!109 = !DILocation(line: 76, column: 55, scope: !73)
!110 = !DILocation(line: 78, column: 3, scope: !73)
!111 = !DILocation(line: 79, column: 3, scope: !73)
!112 = !DILocation(line: 79, column: 18, scope: !73)
!113 = !DILocation(line: 81, column: 20, scope: !73)
!114 = !DILocation(line: 81, column: 40, scope: !73)
!115 = !DILocation(line: 81, column: 30, scope: !73)
!116 = !DILocation(line: 81, column: 50, scope: !73)
!117 = !DILocation(line: 81, column: 55, scope: !73)
!118 = !DILocation(line: 81, column: 3, scope: !73)
!119 = !DILocation(line: 82, column: 15, scope: !120)
!120 = distinct !DILexicalBlock(scope: !73, file: !2, line: 82, column: 3)
!121 = !DILocation(line: 82, column: 13, scope: !120)
!122 = !DILocation(line: 82, column: 8, scope: !120)
!123 = !DILocation(line: 82, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !2, line: 82, column: 3)
!125 = !DILocation(line: 82, column: 28, scope: !124)
!126 = !DILocation(line: 82, column: 35, scope: !124)
!127 = !DILocation(line: 82, column: 33, scope: !124)
!128 = !DILocation(line: 82, column: 26, scope: !124)
!129 = !DILocation(line: 82, column: 3, scope: !120)
!130 = !DILocation(line: 84, column: 5, scope: !131)
!131 = distinct !DILexicalBlock(scope: !124, file: !2, line: 83, column: 3)
!132 = !DILocation(line: 84, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !2, line: 84, column: 5)
!134 = distinct !DILexicalBlock(scope: !131, file: !2, line: 84, column: 5)
!135 = !{!98, !98, i64 0}
!136 = !DILocation(line: 84, column: 5, scope: !134)
!137 = !DILocation(line: 84, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !2, line: 84, column: 5)
!139 = !DILocation(line: 84, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !131, file: !2, line: 84, column: 5)
!141 = !DILocation(line: 84, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !2, line: 84, column: 5)
!143 = !DILocation(line: 84, column: 5, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !2, line: 84, column: 5)
!145 = !DILocation(line: 84, column: 5, scope: !146)
!146 = distinct !DILexicalBlock(scope: !131, file: !2, line: 84, column: 5)
!147 = !DILocation(line: 84, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !2, line: 84, column: 5)
!149 = !DILocation(line: 84, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 84, column: 5)
!151 = distinct !DILexicalBlock(scope: !146, file: !2, line: 84, column: 5)
!152 = !DILocation(line: 84, column: 5, scope: !151)
!153 = !DILocation(line: 84, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !2, line: 84, column: 5)
!155 = !DILocation(line: 85, column: 3, scope: !131)
!156 = !DILocation(line: 82, column: 45, scope: !124)
!157 = !DILocation(line: 82, column: 3, scope: !124)
!158 = distinct !{!158, !129, !159, !160}
!159 = !DILocation(line: 85, column: 3, scope: !120)
!160 = !{!"llvm.loop.mustprogress"}
!161 = !DILocation(line: 86, column: 10, scope: !73)
!162 = !DILocation(line: 87, column: 1, scope: !73)
!163 = !DILocation(line: 86, column: 3, scope: !73)
!164 = !DISubprogram(name: "gt_initeqsvector", scope: !165, file: !165, line: 23, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DIFile(filename: "src/match/initeqsvec.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "388b8f66e6c5345148668ff38080cccf")
!166 = !DISubroutineType(types: !167)
!167 = !{null, !76, !61, !77, !61}
!168 = !DISubprogram(name: "fprintf", scope: !169, file: !169, line: 350, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !173, !234, null}
!172 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !176, line: 7, baseType: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !178, line: 49, size: 1728, elements: !179)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!179 = !{!180, !181, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !196, !198, !199, !200, !204, !206, !208, !212, !215, !217, !220, !223, !224, !226, !229, !230}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !177, file: !178, line: 51, baseType: !172, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !177, file: !178, line: 54, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !177, file: !178, line: 55, baseType: !182, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !177, file: !178, line: 56, baseType: !182, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !177, file: !178, line: 57, baseType: !182, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !177, file: !178, line: 58, baseType: !182, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !177, file: !178, line: 59, baseType: !182, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !177, file: !178, line: 60, baseType: !182, size: 64, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !177, file: !178, line: 61, baseType: !182, size: 64, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !177, file: !178, line: 64, baseType: !182, size: 64, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !177, file: !178, line: 65, baseType: !182, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !177, file: !178, line: 66, baseType: !182, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !177, file: !178, line: 68, baseType: !194, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !178, line: 36, flags: DIFlagFwdDecl)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !177, file: !178, line: 70, baseType: !197, size: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !177, file: !178, line: 72, baseType: !172, size: 32, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !177, file: !178, line: 73, baseType: !172, size: 32, offset: 928)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !177, file: !178, line: 74, baseType: !201, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !202, line: 152, baseType: !203)
!202 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!203 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !177, file: !178, line: 77, baseType: !205, size: 16, offset: 1024)
!205 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !177, file: !178, line: 78, baseType: !207, size: 8, offset: 1040)
!207 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !177, file: !178, line: 79, baseType: !209, size: 8, offset: 1048)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 1)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !177, file: !178, line: 81, baseType: !213, size: 64, offset: 1088)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !178, line: 43, baseType: null)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !177, file: !178, line: 89, baseType: !216, size: 64, offset: 1152)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !202, line: 153, baseType: !203)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !177, file: !178, line: 91, baseType: !218, size: 64, offset: 1216)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !178, line: 37, flags: DIFlagFwdDecl)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !177, file: !178, line: 92, baseType: !221, size: 64, offset: 1280)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !178, line: 38, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !177, file: !178, line: 93, baseType: !197, size: 64, offset: 1344)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !177, file: !178, line: 94, baseType: !225, size: 64, offset: 1408)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !177, file: !178, line: 95, baseType: !227, size: 64, offset: 1472)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !228, line: 70, baseType: !63)
!228 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !177, file: !178, line: 96, baseType: !172, size: 32, offset: 1536)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !177, file: !178, line: 98, baseType: !231, size: 160, offset: 1568)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 20)
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!236 = !DISubprogram(name: "abort", scope: !237, file: !237, line: 598, type: !238, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!237 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!238 = !DISubroutineType(types: !239)
!239 = !{null}
!240 = distinct !DISubprogram(name: "gt_distanceofshortstringsencseq", scope: !2, file: !2, line: 89, type: !241, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !248)
!241 = !DISubroutineType(types: !242)
!242 = !{!61, !76, !54, !77, !61, !243, !61, !61}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseq", file: !246, line: 48, baseType: !247)
!246 = !DIFile(filename: "src/core/encseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "bab4512cadee996edd2995020539d931")
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseq", file: !246, line: 48, flags: DIFlagFwdDecl)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!249 = !DILocalVariable(name: "eqsvector", arg: 1, scope: !240, file: !2, line: 89, type: !76)
!250 = !DILocalVariable(name: "alphasize", arg: 2, scope: !240, file: !2, line: 90, type: !54)
!251 = !DILocalVariable(name: "useq", arg: 3, scope: !240, file: !2, line: 91, type: !77)
!252 = !DILocalVariable(name: "ulen", arg: 4, scope: !240, file: !2, line: 92, type: !61)
!253 = !DILocalVariable(name: "encseq", arg: 5, scope: !240, file: !2, line: 93, type: !243)
!254 = !DILocalVariable(name: "vstartpos", arg: 6, scope: !240, file: !2, line: 94, type: !61)
!255 = !DILocalVariable(name: "vlen", arg: 7, scope: !240, file: !2, line: 95, type: !61)
!256 = !DILocalVariable(name: "Pv", scope: !240, file: !2, line: 97, type: !61)
!257 = !DILocalVariable(name: "Mv", scope: !240, file: !2, line: 97, type: !61)
!258 = !DILocalVariable(name: "Eq", scope: !240, file: !2, line: 97, type: !61)
!259 = !DILocalVariable(name: "Xv", scope: !240, file: !2, line: 97, type: !61)
!260 = !DILocalVariable(name: "Xh", scope: !240, file: !2, line: 97, type: !61)
!261 = !DILocalVariable(name: "Ph", scope: !240, file: !2, line: 97, type: !61)
!262 = !DILocalVariable(name: "Mh", scope: !240, file: !2, line: 97, type: !61)
!263 = !DILocalVariable(name: "Ebit", scope: !240, file: !2, line: 97, type: !61)
!264 = !DILocalVariable(name: "distval", scope: !240, file: !2, line: 97, type: !61)
!265 = !DILocalVariable(name: "cc", scope: !240, file: !2, line: 98, type: !64)
!266 = !DILocalVariable(name: "pos", scope: !240, file: !2, line: 99, type: !61)
!267 = !DILocation(line: 89, column: 50, scope: !240)
!268 = !DILocation(line: 90, column: 57, scope: !240)
!269 = !DILocation(line: 91, column: 59, scope: !240)
!270 = !DILocation(line: 92, column: 52, scope: !240)
!271 = !DILocation(line: 93, column: 60, scope: !240)
!272 = !DILocation(line: 94, column: 52, scope: !240)
!273 = !DILocation(line: 95, column: 52, scope: !240)
!274 = !DILocation(line: 97, column: 3, scope: !240)
!275 = !DILocation(line: 98, column: 3, scope: !240)
!276 = !DILocation(line: 98, column: 11, scope: !240)
!277 = !DILocation(line: 99, column: 3, scope: !240)
!278 = !DILocation(line: 99, column: 11, scope: !240)
!279 = !DILocation(line: 101, column: 20, scope: !240)
!280 = !DILocation(line: 101, column: 40, scope: !240)
!281 = !DILocation(line: 101, column: 30, scope: !240)
!282 = !DILocation(line: 101, column: 50, scope: !240)
!283 = !DILocation(line: 101, column: 55, scope: !240)
!284 = !DILocation(line: 101, column: 3, scope: !240)
!285 = !DILocation(line: 102, column: 14, scope: !286)
!286 = distinct !DILexicalBlock(scope: !240, file: !2, line: 102, column: 3)
!287 = !DILocation(line: 102, column: 12, scope: !286)
!288 = !DILocation(line: 102, column: 8, scope: !286)
!289 = !DILocation(line: 102, column: 25, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !2, line: 102, column: 3)
!291 = !DILocation(line: 102, column: 31, scope: !290)
!292 = !DILocation(line: 102, column: 43, scope: !290)
!293 = !DILocation(line: 102, column: 41, scope: !290)
!294 = !DILocation(line: 102, column: 29, scope: !290)
!295 = !DILocation(line: 102, column: 3, scope: !286)
!296 = !DILocation(line: 104, column: 37, scope: !297)
!297 = distinct !DILexicalBlock(scope: !290, file: !2, line: 103, column: 3)
!298 = !DILocation(line: 104, column: 44, scope: !297)
!299 = !DILocation(line: 104, column: 10, scope: !297)
!300 = !DILocation(line: 104, column: 8, scope: !297)
!301 = !DILocation(line: 105, column: 5, scope: !297)
!302 = !DILocation(line: 105, column: 5, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 105, column: 5)
!304 = distinct !DILexicalBlock(scope: !297, file: !2, line: 105, column: 5)
!305 = !DILocation(line: 105, column: 5, scope: !304)
!306 = !DILocation(line: 105, column: 5, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !2, line: 105, column: 5)
!308 = !DILocation(line: 105, column: 5, scope: !309)
!309 = distinct !DILexicalBlock(scope: !297, file: !2, line: 105, column: 5)
!310 = !DILocation(line: 105, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !2, line: 105, column: 5)
!312 = !DILocation(line: 105, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !2, line: 105, column: 5)
!314 = !DILocation(line: 105, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !297, file: !2, line: 105, column: 5)
!316 = !DILocation(line: 105, column: 5, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !2, line: 105, column: 5)
!318 = !DILocation(line: 105, column: 5, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 105, column: 5)
!320 = distinct !DILexicalBlock(scope: !315, file: !2, line: 105, column: 5)
!321 = !DILocation(line: 105, column: 5, scope: !320)
!322 = !DILocation(line: 105, column: 5, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !2, line: 105, column: 5)
!324 = !DILocation(line: 106, column: 3, scope: !297)
!325 = !DILocation(line: 102, column: 52, scope: !290)
!326 = !DILocation(line: 102, column: 3, scope: !290)
!327 = distinct !{!327, !295, !328, !160}
!328 = !DILocation(line: 106, column: 3, scope: !286)
!329 = !DILocation(line: 107, column: 10, scope: !240)
!330 = !DILocation(line: 108, column: 1, scope: !240)
!331 = !DILocation(line: 107, column: 3, scope: !240)
!332 = !DISubprogram(name: "gt_encseq_get_encoded_char", scope: !246, file: !246, line: 90, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{!64, !243, !61, !335}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtReadmode", file: !53, line: 32, baseType: !52)
!336 = distinct !DISubprogram(name: "gt_reversesuffixmatch", scope: !2, file: !2, line: 110, type: !337, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!61, !76, !54, !77, !61, !77, !61, !61}
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356}
!340 = !DILocalVariable(name: "eqsvector", arg: 1, scope: !336, file: !2, line: 110, type: !76)
!341 = !DILocalVariable(name: "alphasize", arg: 2, scope: !336, file: !2, line: 111, type: !54)
!342 = !DILocalVariable(name: "useq", arg: 3, scope: !336, file: !2, line: 112, type: !77)
!343 = !DILocalVariable(name: "ulen", arg: 4, scope: !336, file: !2, line: 113, type: !61)
!344 = !DILocalVariable(name: "vseq", arg: 5, scope: !336, file: !2, line: 114, type: !77)
!345 = !DILocalVariable(name: "vlen", arg: 6, scope: !336, file: !2, line: 115, type: !61)
!346 = !DILocalVariable(name: "maxdistance", arg: 7, scope: !336, file: !2, line: 116, type: !61)
!347 = !DILocalVariable(name: "Pv", scope: !336, file: !2, line: 118, type: !61)
!348 = !DILocalVariable(name: "Mv", scope: !336, file: !2, line: 118, type: !61)
!349 = !DILocalVariable(name: "Eq", scope: !336, file: !2, line: 118, type: !61)
!350 = !DILocalVariable(name: "Xv", scope: !336, file: !2, line: 118, type: !61)
!351 = !DILocalVariable(name: "Xh", scope: !336, file: !2, line: 118, type: !61)
!352 = !DILocalVariable(name: "Ph", scope: !336, file: !2, line: 118, type: !61)
!353 = !DILocalVariable(name: "Mh", scope: !336, file: !2, line: 118, type: !61)
!354 = !DILocalVariable(name: "Ebit", scope: !336, file: !2, line: 118, type: !61)
!355 = !DILocalVariable(name: "distval", scope: !336, file: !2, line: 118, type: !61)
!356 = !DILocalVariable(name: "vptr", scope: !336, file: !2, line: 119, type: !77)
!357 = !DILocation(line: 110, column: 40, scope: !336)
!358 = !DILocation(line: 111, column: 47, scope: !336)
!359 = !DILocation(line: 112, column: 49, scope: !336)
!360 = !DILocation(line: 113, column: 42, scope: !336)
!361 = !DILocation(line: 114, column: 49, scope: !336)
!362 = !DILocation(line: 115, column: 42, scope: !336)
!363 = !DILocation(line: 116, column: 42, scope: !336)
!364 = !DILocation(line: 118, column: 3, scope: !336)
!365 = !DILocation(line: 119, column: 3, scope: !336)
!366 = !DILocation(line: 119, column: 18, scope: !336)
!367 = !DILocation(line: 121, column: 23, scope: !336)
!368 = !DILocation(line: 121, column: 43, scope: !336)
!369 = !DILocation(line: 121, column: 33, scope: !336)
!370 = !DILocation(line: 121, column: 53, scope: !336)
!371 = !DILocation(line: 121, column: 58, scope: !336)
!372 = !DILocation(line: 121, column: 3, scope: !336)
!373 = !DILocation(line: 122, column: 3, scope: !336)
!374 = !DILocation(line: 122, column: 3, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 122, column: 3)
!376 = distinct !DILexicalBlock(scope: !336, file: !2, line: 122, column: 3)
!377 = !DILocation(line: 122, column: 3, scope: !376)
!378 = !DILocation(line: 122, column: 3, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !2, line: 122, column: 3)
!380 = !DILocation(line: 123, column: 15, scope: !381)
!381 = distinct !DILexicalBlock(scope: !336, file: !2, line: 123, column: 3)
!382 = !DILocation(line: 123, column: 22, scope: !381)
!383 = !DILocation(line: 123, column: 20, scope: !381)
!384 = !DILocation(line: 123, column: 27, scope: !381)
!385 = !DILocation(line: 123, column: 13, scope: !381)
!386 = !DILocation(line: 123, column: 8, scope: !381)
!387 = !DILocation(line: 123, column: 32, scope: !388)
!388 = distinct !DILexicalBlock(scope: !381, file: !2, line: 123, column: 3)
!389 = !DILocation(line: 123, column: 40, scope: !388)
!390 = !DILocation(line: 123, column: 37, scope: !388)
!391 = !DILocation(line: 123, column: 3, scope: !381)
!392 = !DILocation(line: 125, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !2, line: 124, column: 3)
!394 = !DILocation(line: 125, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !2, line: 125, column: 5)
!396 = distinct !DILexicalBlock(scope: !393, file: !2, line: 125, column: 5)
!397 = !DILocation(line: 125, column: 5, scope: !396)
!398 = !DILocation(line: 125, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !2, line: 125, column: 5)
!400 = !DILocation(line: 125, column: 5, scope: !401)
!401 = distinct !DILexicalBlock(scope: !393, file: !2, line: 125, column: 5)
!402 = !DILocation(line: 125, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !2, line: 125, column: 5)
!404 = !DILocation(line: 125, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !2, line: 125, column: 5)
!406 = !DILocation(line: 125, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !393, file: !2, line: 125, column: 5)
!408 = !DILocation(line: 125, column: 5, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !2, line: 125, column: 5)
!410 = !DILocation(line: 125, column: 5, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 125, column: 5)
!412 = distinct !DILexicalBlock(scope: !407, file: !2, line: 125, column: 5)
!413 = !DILocation(line: 125, column: 5, scope: !412)
!414 = !DILocation(line: 125, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !2, line: 125, column: 5)
!416 = !DILocation(line: 126, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !393, file: !2, line: 126, column: 9)
!418 = !DILocation(line: 126, column: 20, scope: !417)
!419 = !DILocation(line: 126, column: 17, scope: !417)
!420 = !DILocation(line: 126, column: 9, scope: !393)
!421 = !DILocation(line: 128, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !2, line: 127, column: 5)
!423 = !DILocation(line: 130, column: 3, scope: !393)
!424 = !DILocation(line: 123, column: 50, scope: !388)
!425 = !DILocation(line: 123, column: 3, scope: !388)
!426 = distinct !{!426, !391, !427, !160}
!427 = !DILocation(line: 130, column: 3, scope: !381)
!428 = !DILocation(line: 132, column: 21, scope: !336)
!429 = !DILocation(line: 132, column: 28, scope: !336)
!430 = !DILocation(line: 132, column: 26, scope: !336)
!431 = !DILocation(line: 132, column: 35, scope: !336)
!432 = !DILocation(line: 132, column: 33, scope: !336)
!433 = !DILocation(line: 133, column: 1, scope: !336)
!434 = !DILocation(line: 132, column: 3, scope: !336)
!435 = !DISubprogram(name: "gt_initeqsvectorrev", scope: !165, file: !165, line: 28, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = distinct !DISubprogram(name: "gt_forwardprefixmatch", scope: !2, file: !2, line: 135, type: !437, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !50, retainedNodes: !446)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !243, !54, !61, !444, !76, !77, !61, !61}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "Definedunsignedlong", file: !440, line: 28, baseType: !441)
!440 = !DIFile(filename: "src/core/defined-types.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e7a1f5519c7b299f300cac0dd118ae65")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 24, size: 128, elements: !442)
!442 = !{!443, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !441, file: !440, line: 26, baseType: !444, size: 8)
!444 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "valueunsignedlong", scope: !441, file: !440, line: 27, baseType: !61, size: 64, offset: 64)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!447 = !DILocalVariable(name: "encseq", arg: 1, scope: !436, file: !2, line: 135, type: !243)
!448 = !DILocalVariable(name: "alphasize", arg: 2, scope: !436, file: !2, line: 136, type: !54)
!449 = !DILocalVariable(name: "startpos", arg: 3, scope: !436, file: !2, line: 137, type: !61)
!450 = !DILocalVariable(name: "nowildcards", arg: 4, scope: !436, file: !2, line: 138, type: !444)
!451 = !DILocalVariable(name: "eqsvector", arg: 5, scope: !436, file: !2, line: 139, type: !76)
!452 = !DILocalVariable(name: "useq", arg: 6, scope: !436, file: !2, line: 140, type: !77)
!453 = !DILocalVariable(name: "ulen", arg: 7, scope: !436, file: !2, line: 141, type: !61)
!454 = !DILocalVariable(name: "maxdistance", arg: 8, scope: !436, file: !2, line: 142, type: !61)
!455 = !DILocalVariable(name: "Pv", scope: !436, file: !2, line: 144, type: !61)
!456 = !DILocalVariable(name: "Mv", scope: !436, file: !2, line: 144, type: !61)
!457 = !DILocalVariable(name: "Eq", scope: !436, file: !2, line: 144, type: !61)
!458 = !DILocalVariable(name: "Xv", scope: !436, file: !2, line: 144, type: !61)
!459 = !DILocalVariable(name: "Xh", scope: !436, file: !2, line: 144, type: !61)
!460 = !DILocalVariable(name: "Ph", scope: !436, file: !2, line: 144, type: !61)
!461 = !DILocalVariable(name: "Mh", scope: !436, file: !2, line: 144, type: !61)
!462 = !DILocalVariable(name: "Ebit", scope: !436, file: !2, line: 144, type: !61)
!463 = !DILocalVariable(name: "distval", scope: !436, file: !2, line: 144, type: !61)
!464 = !DILocalVariable(name: "pos", scope: !436, file: !2, line: 145, type: !61)
!465 = !DILocalVariable(name: "totallength", scope: !436, file: !2, line: 145, type: !61)
!466 = !DILocalVariable(name: "cc", scope: !436, file: !2, line: 146, type: !64)
!467 = !DILocalVariable(name: "result", scope: !436, file: !2, line: 147, type: !439)
!468 = !DILocation(line: 135, column: 59, scope: !436)
!469 = !DILocation(line: 136, column: 53, scope: !436)
!470 = !DILocation(line: 137, column: 48, scope: !436)
!471 = !{!472, !472, i64 0}
!472 = !{!"_Bool", !98, i64 0}
!473 = !DILocation(line: 138, column: 45, scope: !436)
!474 = !DILocation(line: 139, column: 49, scope: !436)
!475 = !DILocation(line: 140, column: 55, scope: !436)
!476 = !DILocation(line: 141, column: 48, scope: !436)
!477 = !DILocation(line: 142, column: 48, scope: !436)
!478 = !DILocation(line: 144, column: 3, scope: !436)
!479 = !DILocation(line: 145, column: 3, scope: !436)
!480 = !DILocation(line: 145, column: 11, scope: !436)
!481 = !DILocation(line: 145, column: 16, scope: !436)
!482 = !DILocation(line: 145, column: 53, scope: !436)
!483 = !DILocation(line: 145, column: 30, scope: !436)
!484 = !DILocation(line: 146, column: 3, scope: !436)
!485 = !DILocation(line: 146, column: 11, scope: !436)
!486 = !DILocation(line: 147, column: 23, scope: !436)
!487 = !DILocation(line: 149, column: 20, scope: !436)
!488 = !DILocation(line: 149, column: 40, scope: !436)
!489 = !DILocation(line: 149, column: 30, scope: !436)
!490 = !DILocation(line: 149, column: 50, scope: !436)
!491 = !DILocation(line: 149, column: 55, scope: !436)
!492 = !DILocation(line: 149, column: 3, scope: !436)
!493 = !DILocation(line: 150, column: 3, scope: !436)
!494 = !DILocation(line: 150, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !2, line: 150, column: 3)
!496 = distinct !DILexicalBlock(scope: !436, file: !2, line: 150, column: 3)
!497 = !DILocation(line: 150, column: 3, scope: !496)
!498 = !DILocation(line: 150, column: 3, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !2, line: 150, column: 3)
!500 = !DILocation(line: 151, column: 14, scope: !501)
!501 = distinct !DILexicalBlock(scope: !436, file: !2, line: 151, column: 3)
!502 = !DILocation(line: 151, column: 12, scope: !501)
!503 = !DILocation(line: 151, column: 8, scope: !501)
!504 = !DILocation(line: 153, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 152, column: 3)
!506 = distinct !DILexicalBlock(scope: !501, file: !2, line: 151, column: 3)
!507 = !DILocation(line: 153, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !2, line: 153, column: 5)
!509 = distinct !DILexicalBlock(scope: !505, file: !2, line: 153, column: 5)
!510 = !DILocation(line: 153, column: 5, scope: !509)
!511 = !DILocation(line: 153, column: 5, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !2, line: 153, column: 5)
!513 = !DILocation(line: 154, column: 37, scope: !505)
!514 = !DILocation(line: 154, column: 44, scope: !505)
!515 = !DILocation(line: 154, column: 10, scope: !505)
!516 = !DILocation(line: 154, column: 8, scope: !505)
!517 = !DILocation(line: 155, column: 9, scope: !518)
!518 = distinct !DILexicalBlock(scope: !505, file: !2, line: 155, column: 9)
!519 = !{i8 0, i8 2}
!520 = !{}
!521 = !DILocation(line: 155, column: 21, scope: !518)
!522 = !DILocation(line: 155, column: 24, scope: !518)
!523 = !DILocation(line: 155, column: 27, scope: !518)
!524 = !DILocation(line: 155, column: 9, scope: !505)
!525 = !DILocation(line: 157, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !2, line: 156, column: 5)
!527 = !DILocation(line: 157, column: 22, scope: !526)
!528 = !{!529, !472, i64 0}
!529 = !{!"", !472, i64 0, !106, i64 8}
!530 = !DILocation(line: 158, column: 14, scope: !526)
!531 = !DILocation(line: 158, column: 32, scope: !526)
!532 = !{!529, !106, i64 8}
!533 = !DILocation(line: 159, column: 7, scope: !526)
!534 = !DILocation(line: 161, column: 5, scope: !505)
!535 = !DILocation(line: 161, column: 5, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 161, column: 5)
!537 = distinct !DILexicalBlock(scope: !505, file: !2, line: 161, column: 5)
!538 = !DILocation(line: 161, column: 5, scope: !537)
!539 = !DILocation(line: 161, column: 5, scope: !540)
!540 = distinct !DILexicalBlock(scope: !536, file: !2, line: 161, column: 5)
!541 = !DILocation(line: 161, column: 5, scope: !542)
!542 = distinct !DILexicalBlock(scope: !505, file: !2, line: 161, column: 5)
!543 = !DILocation(line: 161, column: 5, scope: !544)
!544 = distinct !DILexicalBlock(scope: !542, file: !2, line: 161, column: 5)
!545 = !DILocation(line: 161, column: 5, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !2, line: 161, column: 5)
!547 = !DILocation(line: 161, column: 5, scope: !548)
!548 = distinct !DILexicalBlock(scope: !505, file: !2, line: 161, column: 5)
!549 = !DILocation(line: 161, column: 5, scope: !550)
!550 = distinct !DILexicalBlock(scope: !548, file: !2, line: 161, column: 5)
!551 = !DILocation(line: 161, column: 5, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !2, line: 161, column: 5)
!553 = distinct !DILexicalBlock(scope: !548, file: !2, line: 161, column: 5)
!554 = !DILocation(line: 161, column: 5, scope: !553)
!555 = !DILocation(line: 161, column: 5, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !2, line: 161, column: 5)
!557 = !DILocation(line: 162, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !505, file: !2, line: 162, column: 9)
!559 = !DILocation(line: 162, column: 20, scope: !558)
!560 = !DILocation(line: 162, column: 17, scope: !558)
!561 = !DILocation(line: 162, column: 32, scope: !558)
!562 = !DILocation(line: 162, column: 35, scope: !558)
!563 = !DILocation(line: 162, column: 42, scope: !558)
!564 = !DILocation(line: 162, column: 53, scope: !558)
!565 = !DILocation(line: 162, column: 39, scope: !558)
!566 = !DILocation(line: 162, column: 9, scope: !505)
!567 = !DILocation(line: 164, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !558, file: !2, line: 163, column: 5)
!569 = !DILocation(line: 166, column: 3, scope: !505)
!570 = !DILocation(line: 151, column: 42, scope: !506)
!571 = !DILocation(line: 151, column: 3, scope: !506)
!572 = distinct !{!572, !573, !574}
!573 = !DILocation(line: 151, column: 3, scope: !501)
!574 = !DILocation(line: 166, column: 3, scope: !501)
!575 = !DILocation(line: 167, column: 10, scope: !436)
!576 = !DILocation(line: 167, column: 18, scope: !436)
!577 = !DILocation(line: 168, column: 41, scope: !436)
!578 = !DILocation(line: 168, column: 47, scope: !436)
!579 = !DILocation(line: 168, column: 45, scope: !436)
!580 = !DILocation(line: 168, column: 56, scope: !436)
!581 = !DILocation(line: 168, column: 10, scope: !436)
!582 = !DILocation(line: 168, column: 28, scope: !436)
!583 = !DILocation(line: 169, column: 3, scope: !436)
!584 = !DILocation(line: 170, column: 1, scope: !436)
!585 = !DISubprogram(name: "gt_encseq_total_length", scope: !246, file: !246, line: 85, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!586 = !DISubroutineType(types: !587)
!587 = !{!61, !243}

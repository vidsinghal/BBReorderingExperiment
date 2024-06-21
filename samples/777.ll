; ModuleID = 'samples/777.bc'
source_filename = "libyasm/hamt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HAMT = type { %struct.HAMTEntryHead, ptr, ptr, ptr, ptr, ptr }
%struct.HAMTEntryHead = type { ptr, ptr }
%struct.HAMTNode = type { i64, i64 }
%struct.HAMTEntry = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }

@yasm_xmalloc = external global ptr, align 8
@yasm_xfree = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"libyasm/hamt.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [39 x i8] c"Value is seen as subtrie (misaligned?)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"Data is seen as subtrie (misaligned?)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [60 x i8] c"Subtrie is seen as subtrie before flag is set (misaligned?)\00", align 1, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local ptr @HAMT_create(i32 noundef %nocase, ptr noundef %error_func) #0 !dbg !57 {
entry:
  %nocase.addr = alloca i32, align 4
  %error_func.addr = alloca ptr, align 8
  %hamt = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %nocase, ptr %nocase.addr, align 4, !tbaa !93
  tail call void @llvm.dbg.declare(metadata ptr %nocase.addr, metadata !89, metadata !DIExpression()), !dbg !97
  store ptr %error_func, ptr %error_func.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %error_func.addr, metadata !90, metadata !DIExpression()), !dbg !100
  call void @llvm.lifetime.start.p0(i64 8, ptr %hamt) #7, !dbg !101
  tail call void @llvm.dbg.declare(metadata ptr %hamt, metadata !91, metadata !DIExpression()), !dbg !102
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !103, !tbaa !98
  %call = call ptr %0(i64 noundef 56), !dbg !103
  store ptr %call, ptr %hamt, align 8, !dbg !102, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !104
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !92, metadata !DIExpression()), !dbg !105
  br label %do.body, !dbg !106

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %hamt, align 8, !dbg !107, !tbaa !98
  %entries = getelementptr inbounds %struct.HAMT, ptr %1, i32 0, i32 0, !dbg !107
  %stqh_first = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries, i32 0, i32 0, !dbg !107
  store ptr null, ptr %stqh_first, align 8, !dbg !107, !tbaa !109
  %2 = load ptr, ptr %hamt, align 8, !dbg !107, !tbaa !98
  %entries1 = getelementptr inbounds %struct.HAMT, ptr %2, i32 0, i32 0, !dbg !107
  %stqh_first2 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries1, i32 0, i32 0, !dbg !107
  %3 = load ptr, ptr %hamt, align 8, !dbg !107, !tbaa !98
  %entries3 = getelementptr inbounds %struct.HAMT, ptr %3, i32 0, i32 0, !dbg !107
  %stqh_last = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries3, i32 0, i32 1, !dbg !107
  store ptr %stqh_first2, ptr %stqh_last, align 8, !dbg !107, !tbaa !112
  br label %do.cond, !dbg !107

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !107

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !113, !tbaa !98
  %call4 = call ptr %4(i64 noundef 512), !dbg !113
  %5 = load ptr, ptr %hamt, align 8, !dbg !114, !tbaa !98
  %root = getelementptr inbounds %struct.HAMT, ptr %5, i32 0, i32 1, !dbg !115
  store ptr %call4, ptr %root, align 8, !dbg !116, !tbaa !117
  store i32 0, ptr %i, align 4, !dbg !118, !tbaa !93
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, ptr %i, align 4, !dbg !121, !tbaa !93
  %cmp = icmp slt i32 %6, 32, !dbg !123
  br i1 %cmp, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %hamt, align 8, !dbg !125, !tbaa !98
  %root5 = getelementptr inbounds %struct.HAMT, ptr %7, i32 0, i32 1, !dbg !127
  %8 = load ptr, ptr %root5, align 8, !dbg !127, !tbaa !117
  %9 = load i32, ptr %i, align 4, !dbg !128, !tbaa !93
  %idxprom = sext i32 %9 to i64, !dbg !125
  %arrayidx = getelementptr inbounds %struct.HAMTNode, ptr %8, i64 %idxprom, !dbg !125
  %BitMapKey = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx, i32 0, i32 0, !dbg !129
  store i64 0, ptr %BitMapKey, align 8, !dbg !130, !tbaa !131
  %10 = load ptr, ptr %hamt, align 8, !dbg !134, !tbaa !98
  %root6 = getelementptr inbounds %struct.HAMT, ptr %10, i32 0, i32 1, !dbg !135
  %11 = load ptr, ptr %root6, align 8, !dbg !135, !tbaa !117
  %12 = load i32, ptr %i, align 4, !dbg !136, !tbaa !93
  %idxprom7 = sext i32 %12 to i64, !dbg !134
  %arrayidx8 = getelementptr inbounds %struct.HAMTNode, ptr %11, i64 %idxprom7, !dbg !134
  %BaseValue = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx8, i32 0, i32 1, !dbg !137
  store i64 0, ptr %BaseValue, align 8, !dbg !138, !tbaa !139
  br label %for.inc, !dbg !140

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !141, !tbaa !93
  %inc = add nsw i32 %13, 1, !dbg !141
  store i32 %inc, ptr %i, align 4, !dbg !141, !tbaa !93
  br label %for.cond, !dbg !142, !llvm.loop !143

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %error_func.addr, align 8, !dbg !146, !tbaa !98
  %15 = load ptr, ptr %hamt, align 8, !dbg !147, !tbaa !98
  %error_func9 = getelementptr inbounds %struct.HAMT, ptr %15, i32 0, i32 2, !dbg !148
  store ptr %14, ptr %error_func9, align 8, !dbg !149, !tbaa !150
  %16 = load i32, ptr %nocase.addr, align 4, !dbg !151, !tbaa !93
  %tobool = icmp ne i32 %16, 0, !dbg !151
  br i1 %tobool, label %if.then, label %if.else, !dbg !153

if.then:                                          ; preds = %for.end
  %17 = load ptr, ptr %hamt, align 8, !dbg !154, !tbaa !98
  %HashKey = getelementptr inbounds %struct.HAMT, ptr %17, i32 0, i32 3, !dbg !156
  store ptr @HashKey_nocase, ptr %HashKey, align 8, !dbg !157, !tbaa !158
  %18 = load ptr, ptr %hamt, align 8, !dbg !159, !tbaa !98
  %ReHashKey = getelementptr inbounds %struct.HAMT, ptr %18, i32 0, i32 4, !dbg !160
  store ptr @ReHashKey_nocase, ptr %ReHashKey, align 8, !dbg !161, !tbaa !162
  %19 = load ptr, ptr %hamt, align 8, !dbg !163, !tbaa !98
  %CmpKey = getelementptr inbounds %struct.HAMT, ptr %19, i32 0, i32 5, !dbg !164
  store ptr @yasm__strcasecmp, ptr %CmpKey, align 8, !dbg !165, !tbaa !166
  br label %if.end, !dbg !167

if.else:                                          ; preds = %for.end
  %20 = load ptr, ptr %hamt, align 8, !dbg !168, !tbaa !98
  %HashKey10 = getelementptr inbounds %struct.HAMT, ptr %20, i32 0, i32 3, !dbg !170
  store ptr @HashKey, ptr %HashKey10, align 8, !dbg !171, !tbaa !158
  %21 = load ptr, ptr %hamt, align 8, !dbg !172, !tbaa !98
  %ReHashKey11 = getelementptr inbounds %struct.HAMT, ptr %21, i32 0, i32 4, !dbg !173
  store ptr @ReHashKey, ptr %ReHashKey11, align 8, !dbg !174, !tbaa !162
  %22 = load ptr, ptr %hamt, align 8, !dbg !175, !tbaa !98
  %CmpKey12 = getelementptr inbounds %struct.HAMT, ptr %22, i32 0, i32 5, !dbg !176
  store ptr @strcmp, ptr %CmpKey12, align 8, !dbg !177, !tbaa !166
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load ptr, ptr %hamt, align 8, !dbg !178, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !179
  call void @llvm.lifetime.end.p0(i64 8, ptr %hamt) #7, !dbg !179
  ret ptr %23, !dbg !180
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i64 @HashKey_nocase(ptr noundef %key) #0 !dbg !181 {
entry:
  %key.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %vHash = alloca i64, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !183, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7, !dbg !192
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !184, metadata !DIExpression()), !dbg !193
  store i64 31415, ptr %a, align 8, !dbg !193, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !192
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !185, metadata !DIExpression()), !dbg !195
  store i64 27183, ptr %b, align 8, !dbg !195, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %vHash) #7, !dbg !192
  tail call void @llvm.dbg.declare(metadata ptr %vHash, metadata !186, metadata !DIExpression()), !dbg !196
  store i64 0, ptr %vHash, align 8, !dbg !197, !tbaa !194
  br label %for.cond, !dbg !198

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %key.addr, align 8, !dbg !199, !tbaa !98
  %1 = load i8, ptr %0, align 1, !dbg !200, !tbaa !201
  %tobool = icmp ne i8 %1, 0, !dbg !202
  br i1 %tobool, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %a, align 8, !dbg !203, !tbaa !194
  %3 = load i64, ptr %vHash, align 8, !dbg !204, !tbaa !194
  %mul = mul i64 %2, %3, !dbg !205
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #7, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !187, metadata !DIExpression()), !dbg !206
  %call = call ptr @__ctype_tolower_loc() #8, !dbg !207
  %4 = load ptr, ptr %call, align 8, !dbg !207, !tbaa !98
  %5 = load ptr, ptr %key.addr, align 8, !dbg !207, !tbaa !98
  %6 = load i8, ptr %5, align 1, !dbg !207, !tbaa !201
  %conv = sext i8 %6 to i32, !dbg !207
  %idxprom = sext i32 %conv to i64, !dbg !207
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom, !dbg !207
  %7 = load i32, ptr %arrayidx, align 4, !dbg !207, !tbaa !93
  store i32 %7, ptr %__res, align 4, !dbg !207, !tbaa !93
  %8 = load i32, ptr %__res, align 4, !dbg !206, !tbaa !93
  store i32 %8, ptr %tmp, align 4, !dbg !207, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #7, !dbg !209
  %9 = load i32, ptr %tmp, align 4, !dbg !206, !tbaa !93
  %conv1 = sext i32 %9 to i64, !dbg !209
  %add = add i64 %mul, %conv1, !dbg !210
  store i64 %add, ptr %vHash, align 8, !dbg !211, !tbaa !194
  br label %for.inc, !dbg !212

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %key.addr, align 8, !dbg !213, !tbaa !98
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1, !dbg !213
  store ptr %incdec.ptr, ptr %key.addr, align 8, !dbg !213, !tbaa !98
  %11 = load i64, ptr %b, align 8, !dbg !214, !tbaa !194
  %12 = load i64, ptr %a, align 8, !dbg !215, !tbaa !194
  %mul2 = mul i64 %12, %11, !dbg !215
  store i64 %mul2, ptr %a, align 8, !dbg !215, !tbaa !194
  br label %for.cond, !dbg !216, !llvm.loop !217

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %vHash, align 8, !dbg !219, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %vHash) #7, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !220
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7, !dbg !220
  ret i64 %13, !dbg !221
}

; Function Attrs: nounwind uwtable
define internal i64 @ReHashKey_nocase(ptr noundef %key, i32 noundef %Level) #0 !dbg !222 {
entry:
  %key.addr = alloca ptr, align 8
  %Level.addr = alloca i32, align 4
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %vHash = alloca i64, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !224, metadata !DIExpression()), !dbg !233
  store i32 %Level, ptr %Level.addr, align 4, !tbaa !93
  tail call void @llvm.dbg.declare(metadata ptr %Level.addr, metadata !225, metadata !DIExpression()), !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7, !dbg !235
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !226, metadata !DIExpression()), !dbg !236
  store i64 31415, ptr %a, align 8, !dbg !236, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !235
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !227, metadata !DIExpression()), !dbg !237
  store i64 27183, ptr %b, align 8, !dbg !237, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %vHash) #7, !dbg !235
  tail call void @llvm.dbg.declare(metadata ptr %vHash, metadata !228, metadata !DIExpression()), !dbg !238
  store i64 0, ptr %vHash, align 8, !dbg !239, !tbaa !194
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %key.addr, align 8, !dbg !241, !tbaa !98
  %1 = load i8, ptr %0, align 1, !dbg !242, !tbaa !201
  %tobool = icmp ne i8 %1, 0, !dbg !243
  br i1 %tobool, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %a, align 8, !dbg !244, !tbaa !194
  %3 = load i64, ptr %vHash, align 8, !dbg !245, !tbaa !194
  %mul = mul i64 %2, %3, !dbg !246
  %4 = load i32, ptr %Level.addr, align 4, !dbg !247, !tbaa !93
  %conv = sext i32 %4 to i64, !dbg !248
  %mul1 = mul i64 %mul, %conv, !dbg !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #7, !dbg !250
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !229, metadata !DIExpression()), !dbg !250
  %call = call ptr @__ctype_tolower_loc() #8, !dbg !251
  %5 = load ptr, ptr %call, align 8, !dbg !251, !tbaa !98
  %6 = load ptr, ptr %key.addr, align 8, !dbg !251, !tbaa !98
  %7 = load i8, ptr %6, align 1, !dbg !251, !tbaa !201
  %conv2 = sext i8 %7 to i32, !dbg !251
  %idxprom = sext i32 %conv2 to i64, !dbg !251
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom, !dbg !251
  %8 = load i32, ptr %arrayidx, align 4, !dbg !251, !tbaa !93
  store i32 %8, ptr %__res, align 4, !dbg !251, !tbaa !93
  %9 = load i32, ptr %__res, align 4, !dbg !250, !tbaa !93
  store i32 %9, ptr %tmp, align 4, !dbg !251, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #7, !dbg !253
  %10 = load i32, ptr %tmp, align 4, !dbg !250, !tbaa !93
  %conv3 = sext i32 %10 to i64, !dbg !253
  %add = add i64 %mul1, %conv3, !dbg !254
  store i64 %add, ptr %vHash, align 8, !dbg !255, !tbaa !194
  br label %for.inc, !dbg !256

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %key.addr, align 8, !dbg !257, !tbaa !98
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1, !dbg !257
  store ptr %incdec.ptr, ptr %key.addr, align 8, !dbg !257, !tbaa !98
  %12 = load i64, ptr %b, align 8, !dbg !258, !tbaa !194
  %13 = load i64, ptr %a, align 8, !dbg !259, !tbaa !194
  %mul4 = mul i64 %13, %12, !dbg !259
  store i64 %mul4, ptr %a, align 8, !dbg !259, !tbaa !194
  br label %for.cond, !dbg !260, !llvm.loop !261

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %vHash, align 8, !dbg !263, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %vHash) #7, !dbg !264
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !264
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7, !dbg !264
  ret i64 %14, !dbg !265
}

declare i32 @yasm__strcasecmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @HashKey(ptr noundef %key) #0 !dbg !266 {
entry:
  %key.addr = alloca ptr, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %vHash = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !268, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7, !dbg !273
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !269, metadata !DIExpression()), !dbg !274
  store i64 31415, ptr %a, align 8, !dbg !274, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !273
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !270, metadata !DIExpression()), !dbg !275
  store i64 27183, ptr %b, align 8, !dbg !275, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %vHash) #7, !dbg !273
  tail call void @llvm.dbg.declare(metadata ptr %vHash, metadata !271, metadata !DIExpression()), !dbg !276
  store i64 0, ptr %vHash, align 8, !dbg !277, !tbaa !194
  br label %for.cond, !dbg !279

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %key.addr, align 8, !dbg !280, !tbaa !98
  %1 = load i8, ptr %0, align 1, !dbg !282, !tbaa !201
  %tobool = icmp ne i8 %1, 0, !dbg !283
  br i1 %tobool, label %for.body, label %for.end, !dbg !283

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %a, align 8, !dbg !284, !tbaa !194
  %3 = load i64, ptr %vHash, align 8, !dbg !285, !tbaa !194
  %mul = mul i64 %2, %3, !dbg !286
  %4 = load ptr, ptr %key.addr, align 8, !dbg !287, !tbaa !98
  %5 = load i8, ptr %4, align 1, !dbg !288, !tbaa !201
  %conv = sext i8 %5 to i64, !dbg !288
  %add = add i64 %mul, %conv, !dbg !289
  store i64 %add, ptr %vHash, align 8, !dbg !290, !tbaa !194
  br label %for.inc, !dbg !291

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %key.addr, align 8, !dbg !292, !tbaa !98
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1, !dbg !292
  store ptr %incdec.ptr, ptr %key.addr, align 8, !dbg !292, !tbaa !98
  %7 = load i64, ptr %b, align 8, !dbg !293, !tbaa !194
  %8 = load i64, ptr %a, align 8, !dbg !294, !tbaa !194
  %mul1 = mul i64 %8, %7, !dbg !294
  store i64 %mul1, ptr %a, align 8, !dbg !294, !tbaa !194
  br label %for.cond, !dbg !295, !llvm.loop !296

for.end:                                          ; preds = %for.cond
  %9 = load i64, ptr %vHash, align 8, !dbg !298, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %vHash) #7, !dbg !299
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !299
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7, !dbg !299
  ret i64 %9, !dbg !300
}

; Function Attrs: nounwind uwtable
define internal i64 @ReHashKey(ptr noundef %key, i32 noundef %Level) #0 !dbg !301 {
entry:
  %key.addr = alloca ptr, align 8
  %Level.addr = alloca i32, align 4
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %vHash = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !303, metadata !DIExpression()), !dbg !308
  store i32 %Level, ptr %Level.addr, align 4, !tbaa !93
  tail call void @llvm.dbg.declare(metadata ptr %Level.addr, metadata !304, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7, !dbg !310
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !305, metadata !DIExpression()), !dbg !311
  store i64 31415, ptr %a, align 8, !dbg !311, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7, !dbg !310
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !306, metadata !DIExpression()), !dbg !312
  store i64 27183, ptr %b, align 8, !dbg !312, !tbaa !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %vHash) #7, !dbg !310
  tail call void @llvm.dbg.declare(metadata ptr %vHash, metadata !307, metadata !DIExpression()), !dbg !313
  store i64 0, ptr %vHash, align 8, !dbg !314, !tbaa !194
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %key.addr, align 8, !dbg !317, !tbaa !98
  %1 = load i8, ptr %0, align 1, !dbg !319, !tbaa !201
  %tobool = icmp ne i8 %1, 0, !dbg !320
  br i1 %tobool, label %for.body, label %for.end, !dbg !320

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %a, align 8, !dbg !321, !tbaa !194
  %3 = load i64, ptr %vHash, align 8, !dbg !322, !tbaa !194
  %mul = mul i64 %2, %3, !dbg !323
  %4 = load i32, ptr %Level.addr, align 4, !dbg !324, !tbaa !93
  %conv = sext i32 %4 to i64, !dbg !325
  %mul1 = mul i64 %mul, %conv, !dbg !326
  %5 = load ptr, ptr %key.addr, align 8, !dbg !327, !tbaa !98
  %6 = load i8, ptr %5, align 1, !dbg !328, !tbaa !201
  %conv2 = sext i8 %6 to i64, !dbg !328
  %add = add i64 %mul1, %conv2, !dbg !329
  store i64 %add, ptr %vHash, align 8, !dbg !330, !tbaa !194
  br label %for.inc, !dbg !331

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %key.addr, align 8, !dbg !332, !tbaa !98
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !332
  store ptr %incdec.ptr, ptr %key.addr, align 8, !dbg !332, !tbaa !98
  %8 = load i64, ptr %b, align 8, !dbg !333, !tbaa !194
  %9 = load i64, ptr %a, align 8, !dbg !334, !tbaa !194
  %mul3 = mul i64 %9, %8, !dbg !334
  store i64 %mul3, ptr %a, align 8, !dbg !334, !tbaa !194
  br label %for.cond, !dbg !335, !llvm.loop !336

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %vHash, align 8, !dbg !338, !tbaa !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %vHash) #7, !dbg !339
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7, !dbg !339
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7, !dbg !339
  ret i64 %10, !dbg !340
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @HAMT_destroy(ptr noundef %hamt, ptr noundef %deletefunc) #0 !dbg !341 {
entry:
  %hamt.addr = alloca ptr, align 8
  %deletefunc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  store ptr %hamt, ptr %hamt.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %hamt.addr, metadata !348, metadata !DIExpression()), !dbg !353
  store ptr %deletefunc, ptr %deletefunc.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %deletefunc.addr, metadata !349, metadata !DIExpression()), !dbg !354
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !355
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !350, metadata !DIExpression()), !dbg !356
  br label %while.cond, !dbg !357

while.cond:                                       ; preds = %do.end, %entry
  %0 = load ptr, ptr %hamt.addr, align 8, !dbg !358, !tbaa !98
  %entries = getelementptr inbounds %struct.HAMT, ptr %0, i32 0, i32 0, !dbg !358
  %stqh_first = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries, i32 0, i32 0, !dbg !358
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !358, !tbaa !109
  %cmp = icmp eq ptr %1, null, !dbg !358
  %lnot = xor i1 %cmp, true, !dbg !359
  br i1 %lnot, label %while.body, label %while.end, !dbg !357

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !360
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !351, metadata !DIExpression()), !dbg !361
  %2 = load ptr, ptr %hamt.addr, align 8, !dbg !362, !tbaa !98
  %entries2 = getelementptr inbounds %struct.HAMT, ptr %2, i32 0, i32 0, !dbg !362
  %stqh_first3 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries2, i32 0, i32 0, !dbg !362
  %3 = load ptr, ptr %stqh_first3, align 8, !dbg !362, !tbaa !109
  store ptr %3, ptr %entry1, align 8, !dbg !363, !tbaa !98
  br label %do.body, !dbg !364

do.body:                                          ; preds = %while.body
  %4 = load ptr, ptr %hamt.addr, align 8, !dbg !365, !tbaa !98
  %entries4 = getelementptr inbounds %struct.HAMT, ptr %4, i32 0, i32 0, !dbg !365
  %stqh_first5 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries4, i32 0, i32 0, !dbg !365
  %5 = load ptr, ptr %stqh_first5, align 8, !dbg !365, !tbaa !109
  %next = getelementptr inbounds %struct.HAMTEntry, ptr %5, i32 0, i32 0, !dbg !365
  %stqe_next = getelementptr inbounds %struct.anon, ptr %next, i32 0, i32 0, !dbg !365
  %6 = load ptr, ptr %stqe_next, align 8, !dbg !365, !tbaa !368
  %7 = load ptr, ptr %hamt.addr, align 8, !dbg !365, !tbaa !98
  %entries6 = getelementptr inbounds %struct.HAMT, ptr %7, i32 0, i32 0, !dbg !365
  %stqh_first7 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries6, i32 0, i32 0, !dbg !365
  store ptr %6, ptr %stqh_first7, align 8, !dbg !365, !tbaa !109
  %cmp8 = icmp eq ptr %6, null, !dbg !365
  br i1 %cmp8, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %do.body
  %8 = load ptr, ptr %hamt.addr, align 8, !dbg !365, !tbaa !98
  %entries9 = getelementptr inbounds %struct.HAMT, ptr %8, i32 0, i32 0, !dbg !365
  %stqh_first10 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries9, i32 0, i32 0, !dbg !365
  %9 = load ptr, ptr %hamt.addr, align 8, !dbg !365, !tbaa !98
  %entries11 = getelementptr inbounds %struct.HAMT, ptr %9, i32 0, i32 0, !dbg !365
  %stqh_last = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries11, i32 0, i32 1, !dbg !365
  store ptr %stqh_first10, ptr %stqh_last, align 8, !dbg !365, !tbaa !112
  br label %if.end, !dbg !365

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !371

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !371

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %deletefunc.addr, align 8, !dbg !372, !tbaa !98
  %11 = load ptr, ptr %entry1, align 8, !dbg !373, !tbaa !98
  %data = getelementptr inbounds %struct.HAMTEntry, ptr %11, i32 0, i32 2, !dbg !374
  %12 = load ptr, ptr %data, align 8, !dbg !374, !tbaa !375
  call void %10(ptr noundef %12), !dbg !372
  %13 = load ptr, ptr @yasm_xfree, align 8, !dbg !376, !tbaa !98
  %14 = load ptr, ptr %entry1, align 8, !dbg !377, !tbaa !98
  call void %13(ptr noundef %14), !dbg !376
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !378
  br label %while.cond, !dbg !357, !llvm.loop !379

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4, !dbg !380, !tbaa !93
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %while.end
  %15 = load i32, ptr %i, align 4, !dbg !383, !tbaa !93
  %cmp12 = icmp slt i32 %15, 32, !dbg !385
  br i1 %cmp12, label %for.body, label %for.end, !dbg !386

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %hamt.addr, align 8, !dbg !387, !tbaa !98
  %root = getelementptr inbounds %struct.HAMT, ptr %16, i32 0, i32 1, !dbg !388
  %17 = load ptr, ptr %root, align 8, !dbg !388, !tbaa !117
  %18 = load i32, ptr %i, align 4, !dbg !389, !tbaa !93
  %idxprom = sext i32 %18 to i64, !dbg !387
  %arrayidx = getelementptr inbounds %struct.HAMTNode, ptr %17, i64 %idxprom, !dbg !387
  call void @HAMT_delete_trie(ptr noundef %arrayidx), !dbg !390
  br label %for.inc, !dbg !390

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !dbg !391, !tbaa !93
  %inc = add nsw i32 %19, 1, !dbg !391
  store i32 %inc, ptr %i, align 4, !dbg !391, !tbaa !93
  br label %for.cond, !dbg !392, !llvm.loop !393

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr @yasm_xfree, align 8, !dbg !395, !tbaa !98
  %21 = load ptr, ptr %hamt.addr, align 8, !dbg !396, !tbaa !98
  %root13 = getelementptr inbounds %struct.HAMT, ptr %21, i32 0, i32 1, !dbg !397
  %22 = load ptr, ptr %root13, align 8, !dbg !397, !tbaa !117
  call void %20(ptr noundef %22), !dbg !395
  %23 = load ptr, ptr @yasm_xfree, align 8, !dbg !398, !tbaa !98
  %24 = load ptr, ptr %hamt.addr, align 8, !dbg !399, !tbaa !98
  call void %23(ptr noundef %24), !dbg !398
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !400
  ret void, !dbg !400
}

; Function Attrs: nounwind uwtable
define internal void @HAMT_delete_trie(ptr noundef %node) #0 !dbg !401 {
entry:
  %node.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %Size = alloca i64, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !405, metadata !DIExpression()), !dbg !410
  %0 = load ptr, ptr %node.addr, align 8, !dbg !411, !tbaa !98
  %BaseValue = getelementptr inbounds %struct.HAMTNode, ptr %0, i32 0, i32 1, !dbg !411
  %1 = load i64, ptr %BaseValue, align 8, !dbg !411, !tbaa !139
  %and = and i64 %1, 1, !dbg !411
  %tobool = icmp ne i64 %and, 0, !dbg !411
  br i1 %tobool, label %if.then, label %if.end27, !dbg !412

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !413
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !406, metadata !DIExpression()), !dbg !414
  call void @llvm.lifetime.start.p0(i64 8, ptr %Size) #7, !dbg !413
  tail call void @llvm.dbg.declare(metadata ptr %Size, metadata !409, metadata !DIExpression()), !dbg !415
  br label %do.body, !dbg !416

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %node.addr, align 8, !dbg !417, !tbaa !98
  %BitMapKey = getelementptr inbounds %struct.HAMTNode, ptr %2, i32 0, i32 0, !dbg !417
  %3 = load i64, ptr %BitMapKey, align 8, !dbg !417, !tbaa !131
  %and1 = and i64 %3, 6148914691236517205, !dbg !417
  %4 = load ptr, ptr %node.addr, align 8, !dbg !417, !tbaa !98
  %BitMapKey2 = getelementptr inbounds %struct.HAMTNode, ptr %4, i32 0, i32 0, !dbg !417
  %5 = load i64, ptr %BitMapKey2, align 8, !dbg !417, !tbaa !131
  %shr = lshr i64 %5, 1, !dbg !417
  %and3 = and i64 %shr, 6148914691236517205, !dbg !417
  %add = add i64 %and1, %and3, !dbg !417
  store i64 %add, ptr %Size, align 8, !dbg !417, !tbaa !194
  %6 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %and4 = and i64 %6, 3689348814741910323, !dbg !417
  %7 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %shr5 = lshr i64 %7, 2, !dbg !417
  %and6 = and i64 %shr5, 3689348814741910323, !dbg !417
  %add7 = add i64 %and4, %and6, !dbg !417
  store i64 %add7, ptr %Size, align 8, !dbg !417, !tbaa !194
  %8 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %and8 = and i64 %8, 1085102592571150095, !dbg !417
  %9 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %shr9 = lshr i64 %9, 4, !dbg !417
  %and10 = and i64 %shr9, 1085102592571150095, !dbg !417
  %add11 = add i64 %and8, %and10, !dbg !417
  store i64 %add11, ptr %Size, align 8, !dbg !417, !tbaa !194
  %10 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %and12 = and i64 %10, 71777214294589695, !dbg !417
  %11 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %shr13 = lshr i64 %11, 8, !dbg !417
  %and14 = and i64 %shr13, 71777214294589695, !dbg !417
  %add15 = add i64 %and12, %and14, !dbg !417
  store i64 %add15, ptr %Size, align 8, !dbg !417, !tbaa !194
  %12 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %and16 = and i64 %12, 281470681808895, !dbg !417
  %13 = load i64, ptr %Size, align 8, !dbg !417, !tbaa !194
  %shr17 = lshr i64 %13, 16, !dbg !417
  %and18 = and i64 %shr17, 281470681808895, !dbg !417
  %add19 = add i64 %and16, %and18, !dbg !417
  store i64 %add19, ptr %Size, align 8, !dbg !417, !tbaa !194
  br label %do.cond, !dbg !417

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !417

do.end:                                           ; preds = %do.cond
  %14 = load i64, ptr %Size, align 8, !dbg !419, !tbaa !194
  %and20 = and i64 %14, 31, !dbg !419
  store i64 %and20, ptr %Size, align 8, !dbg !419, !tbaa !194
  %15 = load i64, ptr %Size, align 8, !dbg !420, !tbaa !194
  %cmp = icmp eq i64 %15, 0, !dbg !422
  br i1 %cmp, label %if.then21, label %if.end, !dbg !423

if.then21:                                        ; preds = %do.end
  store i64 32, ptr %Size, align 8, !dbg !424, !tbaa !194
  br label %if.end, !dbg !425

if.end:                                           ; preds = %if.then21, %do.end
  store i64 0, ptr %i, align 8, !dbg !426, !tbaa !194
  br label %for.cond, !dbg !428

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i64, ptr %i, align 8, !dbg !429, !tbaa !194
  %17 = load i64, ptr %Size, align 8, !dbg !431, !tbaa !194
  %cmp22 = icmp ult i64 %16, %17, !dbg !432
  br i1 %cmp22, label %for.body, label %for.end, !dbg !433

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %node.addr, align 8, !dbg !434, !tbaa !98
  %BaseValue23 = getelementptr inbounds %struct.HAMTNode, ptr %18, i32 0, i32 1, !dbg !434
  %19 = load i64, ptr %BaseValue23, align 8, !dbg !434, !tbaa !139
  %or = or i64 %19, 1, !dbg !434
  %xor = xor i64 %or, 1, !dbg !434
  %20 = inttoptr i64 %xor to ptr, !dbg !434
  %21 = load i64, ptr %i, align 8, !dbg !435, !tbaa !194
  %arrayidx = getelementptr inbounds %struct.HAMTNode, ptr %20, i64 %21, !dbg !436
  call void @HAMT_delete_trie(ptr noundef %arrayidx), !dbg !437
  br label %for.inc, !dbg !437

for.inc:                                          ; preds = %for.body
  %22 = load i64, ptr %i, align 8, !dbg !438, !tbaa !194
  %inc = add i64 %22, 1, !dbg !438
  store i64 %inc, ptr %i, align 8, !dbg !438, !tbaa !194
  br label %for.cond, !dbg !439, !llvm.loop !440

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr @yasm_xfree, align 8, !dbg !442, !tbaa !98
  %24 = load ptr, ptr %node.addr, align 8, !dbg !443, !tbaa !98
  %BaseValue24 = getelementptr inbounds %struct.HAMTNode, ptr %24, i32 0, i32 1, !dbg !443
  %25 = load i64, ptr %BaseValue24, align 8, !dbg !443, !tbaa !139
  %or25 = or i64 %25, 1, !dbg !443
  %xor26 = xor i64 %or25, 1, !dbg !443
  %26 = inttoptr i64 %xor26 to ptr, !dbg !443
  call void %23(ptr noundef %26), !dbg !442
  call void @llvm.lifetime.end.p0(i64 8, ptr %Size) #7, !dbg !444
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !444
  br label %if.end27, !dbg !445

if.end27:                                         ; preds = %for.end, %entry
  ret void, !dbg !446
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HAMT_traverse(ptr noundef %hamt, ptr noundef %d, ptr noundef %func) #0 !dbg !447 {
entry:
  %retval = alloca i32, align 4
  %hamt.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hamt, ptr %hamt.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %hamt.addr, metadata !454, metadata !DIExpression()), !dbg !462
  store ptr %d, ptr %d.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !455, metadata !DIExpression()), !dbg !463
  store ptr %func, ptr %func.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !456, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !465
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !457, metadata !DIExpression()), !dbg !466
  %0 = load ptr, ptr %hamt.addr, align 8, !dbg !467, !tbaa !98
  %entries = getelementptr inbounds %struct.HAMT, ptr %0, i32 0, i32 0, !dbg !467
  %stqh_first = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries, i32 0, i32 0, !dbg !467
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !467, !tbaa !109
  store ptr %1, ptr %entry1, align 8, !dbg !467, !tbaa !98
  br label %for.cond, !dbg !467

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %entry1, align 8, !dbg !468, !tbaa !98
  %tobool = icmp ne ptr %2, null, !dbg !467
  br i1 %tobool, label %for.body, label %for.end, !dbg !467

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #7, !dbg !469
  tail call void @llvm.dbg.declare(metadata ptr %retval2, metadata !458, metadata !DIExpression()), !dbg !470
  %3 = load ptr, ptr %func.addr, align 8, !dbg !471, !tbaa !98
  %4 = load ptr, ptr %entry1, align 8, !dbg !472, !tbaa !98
  %data = getelementptr inbounds %struct.HAMTEntry, ptr %4, i32 0, i32 2, !dbg !473
  %5 = load ptr, ptr %data, align 8, !dbg !473, !tbaa !375
  %6 = load ptr, ptr %d.addr, align 8, !dbg !474, !tbaa !98
  %call = call i32 %3(ptr noundef %5, ptr noundef %6), !dbg !471
  store i32 %call, ptr %retval2, align 4, !dbg !470, !tbaa !93
  %7 = load i32, ptr %retval2, align 4, !dbg !475, !tbaa !93
  %cmp = icmp ne i32 %7, 0, !dbg !477
  br i1 %cmp, label %if.then, label %if.end, !dbg !478

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %retval2, align 4, !dbg !479, !tbaa !93
  store i32 %8, ptr %retval, align 4, !dbg !480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !480

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !481
  br label %cleanup, !dbg !481

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #7, !dbg !481
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup3 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !482

for.inc:                                          ; preds = %cleanup.cont
  %9 = load ptr, ptr %entry1, align 8, !dbg !468, !tbaa !98
  %next = getelementptr inbounds %struct.HAMTEntry, ptr %9, i32 0, i32 0, !dbg !468
  %stqe_next = getelementptr inbounds %struct.anon, ptr %next, i32 0, i32 0, !dbg !468
  %10 = load ptr, ptr %stqe_next, align 8, !dbg !468, !tbaa !368
  store ptr %10, ptr %entry1, align 8, !dbg !468, !tbaa !98
  br label %for.cond, !dbg !468, !llvm.loop !483

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup3, !dbg !485

cleanup3:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !486
  %11 = load i32, ptr %retval, align 4, !dbg !486
  ret i32 %11, !dbg !486
}

; Function Attrs: nounwind uwtable
define dso_local ptr @HAMT_first(ptr noundef %hamt) #0 !dbg !487 {
entry:
  %hamt.addr = alloca ptr, align 8
  store ptr %hamt, ptr %hamt.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %hamt.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load ptr, ptr %hamt.addr, align 8, !dbg !497, !tbaa !98
  %entries = getelementptr inbounds %struct.HAMT, ptr %0, i32 0, i32 0, !dbg !497
  %stqh_first = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries, i32 0, i32 0, !dbg !497
  %1 = load ptr, ptr %stqh_first, align 8, !dbg !497, !tbaa !109
  ret ptr %1, !dbg !498
}

; Function Attrs: nounwind uwtable
define dso_local ptr @HAMT_next(ptr noundef %prev) #0 !dbg !499 {
entry:
  %prev.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !505, !tbaa !98
  %next = getelementptr inbounds %struct.HAMTEntry, ptr %0, i32 0, i32 0, !dbg !505
  %stqe_next = getelementptr inbounds %struct.anon, ptr %next, i32 0, i32 0, !dbg !505
  %1 = load ptr, ptr %stqe_next, align 8, !dbg !505, !tbaa !368
  ret ptr %1, !dbg !506
}

; Function Attrs: nounwind uwtable
define dso_local ptr @HAMTEntry_get_data(ptr noundef %entry1) #0 !dbg !507 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !513, !tbaa !98
  %data = getelementptr inbounds %struct.HAMTEntry, ptr %0, i32 0, i32 2, !dbg !514
  %1 = load ptr, ptr %data, align 8, !dbg !514, !tbaa !375
  ret ptr %1, !dbg !515
}

; Function Attrs: nounwind uwtable
define dso_local ptr @HAMT_insert(ptr noundef %hamt, ptr noundef %str, ptr noundef %data, ptr noundef %replace, ptr noundef %deletefunc) #0 !dbg !516 {
entry:
  %retval = alloca ptr, align 8
  %hamt.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %replace.addr = alloca ptr, align 8
  %deletefunc.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %newnodes = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %key = alloca i64, align 8
  %keypart = alloca i64, align 8
  %Map = alloca i64, align 8
  %keypartbits = alloca i32, align 4
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %key2 = alloca i64, align 8
  %keypart2 = alloca i64, align 8
  %Size = alloca i64, align 8
  store ptr %hamt, ptr %hamt.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %hamt.addr, metadata !521, metadata !DIExpression()), !dbg !549
  store ptr %str, ptr %str.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !522, metadata !DIExpression()), !dbg !550
  store ptr %data, ptr %data.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !523, metadata !DIExpression()), !dbg !551
  store ptr %replace, ptr %replace.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %replace.addr, metadata !524, metadata !DIExpression()), !dbg !552
  store ptr %deletefunc, ptr %deletefunc.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %deletefunc.addr, metadata !525, metadata !DIExpression()), !dbg !553
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #7, !dbg !554
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !526, metadata !DIExpression()), !dbg !555
  call void @llvm.lifetime.start.p0(i64 8, ptr %newnodes) #7, !dbg !554
  tail call void @llvm.dbg.declare(metadata ptr %newnodes, metadata !527, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !557
  tail call void @llvm.dbg.declare(metadata ptr %entry1, metadata !528, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #7, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !529, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 8, ptr %keypart) #7, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %keypart, metadata !530, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 8, ptr %Map) #7, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %Map, metadata !531, metadata !DIExpression()), !dbg !562
  call void @llvm.lifetime.start.p0(i64 4, ptr %keypartbits) #7, !dbg !563
  tail call void @llvm.dbg.declare(metadata ptr %keypartbits, metadata !532, metadata !DIExpression()), !dbg !564
  store i32 0, ptr %keypartbits, align 4, !dbg !564, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #7, !dbg !565
  tail call void @llvm.dbg.declare(metadata ptr %level, metadata !533, metadata !DIExpression()), !dbg !566
  store i32 0, ptr %level, align 4, !dbg !566, !tbaa !93
  %0 = load ptr, ptr %hamt.addr, align 8, !dbg !567, !tbaa !98
  %HashKey = getelementptr inbounds %struct.HAMT, ptr %0, i32 0, i32 3, !dbg !568
  %1 = load ptr, ptr %HashKey, align 8, !dbg !568, !tbaa !158
  %2 = load ptr, ptr %str.addr, align 8, !dbg !569, !tbaa !98
  %call = call i64 %1(ptr noundef %2), !dbg !567
  store i64 %call, ptr %key, align 8, !dbg !570, !tbaa !194
  %3 = load i64, ptr %key, align 8, !dbg !571, !tbaa !194
  %and = and i64 %3, 31, !dbg !572
  store i64 %and, ptr %keypart, align 8, !dbg !573, !tbaa !194
  %4 = load ptr, ptr %hamt.addr, align 8, !dbg !574, !tbaa !98
  %root = getelementptr inbounds %struct.HAMT, ptr %4, i32 0, i32 1, !dbg !575
  %5 = load ptr, ptr %root, align 8, !dbg !575, !tbaa !117
  %6 = load i64, ptr %keypart, align 8, !dbg !576, !tbaa !194
  %arrayidx = getelementptr inbounds %struct.HAMTNode, ptr %5, i64 %6, !dbg !574
  store ptr %arrayidx, ptr %node, align 8, !dbg !577, !tbaa !98
  %7 = load ptr, ptr %node, align 8, !dbg !578, !tbaa !98
  %BaseValue = getelementptr inbounds %struct.HAMTNode, ptr %7, i32 0, i32 1, !dbg !580
  %8 = load i64, ptr %BaseValue, align 8, !dbg !580, !tbaa !139
  %tobool = icmp ne i64 %8, 0, !dbg !578
  br i1 %tobool, label %if.end22, label %if.then, !dbg !581

if.then:                                          ; preds = %entry
  %9 = load i64, ptr %key, align 8, !dbg !582, !tbaa !194
  %10 = load ptr, ptr %node, align 8, !dbg !584, !tbaa !98
  %BitMapKey = getelementptr inbounds %struct.HAMTNode, ptr %10, i32 0, i32 0, !dbg !585
  store i64 %9, ptr %BitMapKey, align 8, !dbg !586, !tbaa !131
  %11 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !587, !tbaa !98
  %call2 = call ptr %11(i64 noundef 24), !dbg !587
  store ptr %call2, ptr %entry1, align 8, !dbg !588, !tbaa !98
  %12 = load ptr, ptr %str.addr, align 8, !dbg !589, !tbaa !98
  %13 = load ptr, ptr %entry1, align 8, !dbg !590, !tbaa !98
  %str3 = getelementptr inbounds %struct.HAMTEntry, ptr %13, i32 0, i32 1, !dbg !591
  store ptr %12, ptr %str3, align 8, !dbg !592, !tbaa !593
  %14 = load ptr, ptr %data.addr, align 8, !dbg !594, !tbaa !98
  %15 = load ptr, ptr %entry1, align 8, !dbg !595, !tbaa !98
  %data4 = getelementptr inbounds %struct.HAMTEntry, ptr %15, i32 0, i32 2, !dbg !596
  store ptr %14, ptr %data4, align 8, !dbg !597, !tbaa !375
  br label %do.body, !dbg !598

do.body:                                          ; preds = %if.then
  %16 = load ptr, ptr %entry1, align 8, !dbg !599, !tbaa !98
  %next = getelementptr inbounds %struct.HAMTEntry, ptr %16, i32 0, i32 0, !dbg !599
  %stqe_next = getelementptr inbounds %struct.anon, ptr %next, i32 0, i32 0, !dbg !599
  store ptr null, ptr %stqe_next, align 8, !dbg !599, !tbaa !368
  %17 = load ptr, ptr %entry1, align 8, !dbg !599, !tbaa !98
  %18 = load ptr, ptr %hamt.addr, align 8, !dbg !599, !tbaa !98
  %entries = getelementptr inbounds %struct.HAMT, ptr %18, i32 0, i32 0, !dbg !599
  %stqh_last = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries, i32 0, i32 1, !dbg !599
  %19 = load ptr, ptr %stqh_last, align 8, !dbg !599, !tbaa !112
  store ptr %17, ptr %19, align 8, !dbg !599, !tbaa !98
  %20 = load ptr, ptr %entry1, align 8, !dbg !599, !tbaa !98
  %next5 = getelementptr inbounds %struct.HAMTEntry, ptr %20, i32 0, i32 0, !dbg !599
  %stqe_next6 = getelementptr inbounds %struct.anon, ptr %next5, i32 0, i32 0, !dbg !599
  %21 = load ptr, ptr %hamt.addr, align 8, !dbg !599, !tbaa !98
  %entries7 = getelementptr inbounds %struct.HAMT, ptr %21, i32 0, i32 0, !dbg !599
  %stqh_last8 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries7, i32 0, i32 1, !dbg !599
  store ptr %stqe_next6, ptr %stqh_last8, align 8, !dbg !599, !tbaa !112
  br label %do.cond, !dbg !599

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !599

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !601

do.body9:                                         ; preds = %do.end
  %22 = load ptr, ptr %entry1, align 8, !dbg !602, !tbaa !98
  %23 = ptrtoint ptr %22 to i64, !dbg !602
  %and10 = and i64 %23, 1, !dbg !602
  %tobool11 = icmp ne i64 %and10, 0, !dbg !602
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !605

if.then12:                                        ; preds = %do.body9
  %24 = load ptr, ptr %hamt.addr, align 8, !dbg !602, !tbaa !98
  %error_func = getelementptr inbounds %struct.HAMT, ptr %24, i32 0, i32 2, !dbg !602
  %25 = load ptr, ptr %error_func, align 8, !dbg !602, !tbaa !150
  call void %25(ptr noundef @.str, i32 noundef 238, ptr noundef @.str.1), !dbg !602
  br label %if.end, !dbg !602

if.end:                                           ; preds = %if.then12, %do.body9
  %26 = load ptr, ptr %entry1, align 8, !dbg !605, !tbaa !98
  %27 = ptrtoint ptr %26 to i64, !dbg !605
  %28 = load ptr, ptr %node, align 8, !dbg !605, !tbaa !98
  %BaseValue13 = getelementptr inbounds %struct.HAMTNode, ptr %28, i32 0, i32 1, !dbg !605
  store i64 %27, ptr %BaseValue13, align 8, !dbg !605, !tbaa !139
  br label %do.cond14, !dbg !605

do.cond14:                                        ; preds = %if.end
  br label %do.end15, !dbg !605

do.end15:                                         ; preds = %do.cond14
  %29 = load ptr, ptr %node, align 8, !dbg !606, !tbaa !98
  %BaseValue16 = getelementptr inbounds %struct.HAMTNode, ptr %29, i32 0, i32 1, !dbg !606
  %30 = load i64, ptr %BaseValue16, align 8, !dbg !606, !tbaa !139
  %and17 = and i64 %30, 1, !dbg !606
  %tobool18 = icmp ne i64 %and17, 0, !dbg !606
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !608

if.then19:                                        ; preds = %do.end15
  %31 = load ptr, ptr %hamt.addr, align 8, !dbg !609, !tbaa !98
  %error_func20 = getelementptr inbounds %struct.HAMT, ptr %31, i32 0, i32 2, !dbg !610
  %32 = load ptr, ptr %error_func20, align 8, !dbg !610, !tbaa !150
  call void %32(ptr noundef @.str, i32 noundef 240, ptr noundef @.str.2), !dbg !609
  br label %if.end21, !dbg !609

if.end21:                                         ; preds = %if.then19, %do.end15
  %33 = load ptr, ptr %replace.addr, align 8, !dbg !611, !tbaa !98
  store i32 1, ptr %33, align 4, !dbg !612, !tbaa !93
  %34 = load ptr, ptr %data.addr, align 8, !dbg !613, !tbaa !98
  store ptr %34, ptr %retval, align 8, !dbg !614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup324, !dbg !614

if.end22:                                         ; preds = %entry
  br label %for.cond, !dbg !615

for.cond:                                         ; preds = %do.end317, %if.end22
  %35 = load ptr, ptr %node, align 8, !dbg !616, !tbaa !98
  %BaseValue23 = getelementptr inbounds %struct.HAMTNode, ptr %35, i32 0, i32 1, !dbg !616
  %36 = load i64, ptr %BaseValue23, align 8, !dbg !616, !tbaa !139
  %and24 = and i64 %36, 1, !dbg !616
  %tobool25 = icmp ne i64 %and24, 0, !dbg !616
  br i1 %tobool25, label %if.end150, label %if.then26, !dbg !617

if.then26:                                        ; preds = %for.cond
  %37 = load ptr, ptr %node, align 8, !dbg !618, !tbaa !98
  %BitMapKey27 = getelementptr inbounds %struct.HAMTNode, ptr %37, i32 0, i32 0, !dbg !619
  %38 = load i64, ptr %BitMapKey27, align 8, !dbg !619, !tbaa !131
  %39 = load i64, ptr %key, align 8, !dbg !620, !tbaa !194
  %cmp = icmp eq i64 %38, %39, !dbg !621
  br i1 %cmp, label %land.lhs.true, label %if.else44, !dbg !622

land.lhs.true:                                    ; preds = %if.then26
  %40 = load ptr, ptr %hamt.addr, align 8, !dbg !623, !tbaa !98
  %CmpKey = getelementptr inbounds %struct.HAMT, ptr %40, i32 0, i32 5, !dbg !624
  %41 = load ptr, ptr %CmpKey, align 8, !dbg !624, !tbaa !166
  %42 = load ptr, ptr %node, align 8, !dbg !625, !tbaa !98
  %BaseValue28 = getelementptr inbounds %struct.HAMTNode, ptr %42, i32 0, i32 1, !dbg !626
  %43 = load i64, ptr %BaseValue28, align 8, !dbg !626, !tbaa !139
  %44 = inttoptr i64 %43 to ptr, !dbg !627
  %str29 = getelementptr inbounds %struct.HAMTEntry, ptr %44, i32 0, i32 1, !dbg !628
  %45 = load ptr, ptr %str29, align 8, !dbg !628, !tbaa !593
  %46 = load ptr, ptr %str.addr, align 8, !dbg !629, !tbaa !98
  %call30 = call i32 %41(ptr noundef %45, ptr noundef %46), !dbg !623
  %cmp31 = icmp eq i32 %call30, 0, !dbg !630
  br i1 %cmp31, label %if.then32, label %if.else44, !dbg !631

if.then32:                                        ; preds = %land.lhs.true
  %47 = load ptr, ptr %replace.addr, align 8, !dbg !632, !tbaa !98
  %48 = load i32, ptr %47, align 4, !dbg !635, !tbaa !93
  %tobool33 = icmp ne i32 %48, 0, !dbg !635
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !636

if.then34:                                        ; preds = %if.then32
  %49 = load ptr, ptr %deletefunc.addr, align 8, !dbg !637, !tbaa !98
  %50 = load ptr, ptr %node, align 8, !dbg !639, !tbaa !98
  %BaseValue35 = getelementptr inbounds %struct.HAMTNode, ptr %50, i32 0, i32 1, !dbg !640
  %51 = load i64, ptr %BaseValue35, align 8, !dbg !640, !tbaa !139
  %52 = inttoptr i64 %51 to ptr, !dbg !641
  %data36 = getelementptr inbounds %struct.HAMTEntry, ptr %52, i32 0, i32 2, !dbg !642
  %53 = load ptr, ptr %data36, align 8, !dbg !642, !tbaa !375
  call void %49(ptr noundef %53), !dbg !637
  %54 = load ptr, ptr %str.addr, align 8, !dbg !643, !tbaa !98
  %55 = load ptr, ptr %node, align 8, !dbg !644, !tbaa !98
  %BaseValue37 = getelementptr inbounds %struct.HAMTNode, ptr %55, i32 0, i32 1, !dbg !645
  %56 = load i64, ptr %BaseValue37, align 8, !dbg !645, !tbaa !139
  %57 = inttoptr i64 %56 to ptr, !dbg !646
  %str38 = getelementptr inbounds %struct.HAMTEntry, ptr %57, i32 0, i32 1, !dbg !647
  store ptr %54, ptr %str38, align 8, !dbg !648, !tbaa !593
  %58 = load ptr, ptr %data.addr, align 8, !dbg !649, !tbaa !98
  %59 = load ptr, ptr %node, align 8, !dbg !650, !tbaa !98
  %BaseValue39 = getelementptr inbounds %struct.HAMTNode, ptr %59, i32 0, i32 1, !dbg !651
  %60 = load i64, ptr %BaseValue39, align 8, !dbg !651, !tbaa !139
  %61 = inttoptr i64 %60 to ptr, !dbg !652
  %data40 = getelementptr inbounds %struct.HAMTEntry, ptr %61, i32 0, i32 2, !dbg !653
  store ptr %58, ptr %data40, align 8, !dbg !654, !tbaa !375
  br label %if.end41, !dbg !655

if.else:                                          ; preds = %if.then32
  %62 = load ptr, ptr %deletefunc.addr, align 8, !dbg !656, !tbaa !98
  %63 = load ptr, ptr %data.addr, align 8, !dbg !657, !tbaa !98
  call void %62(ptr noundef %63), !dbg !656
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then34
  %64 = load ptr, ptr %node, align 8, !dbg !658, !tbaa !98
  %BaseValue42 = getelementptr inbounds %struct.HAMTNode, ptr %64, i32 0, i32 1, !dbg !659
  %65 = load i64, ptr %BaseValue42, align 8, !dbg !659, !tbaa !139
  %66 = inttoptr i64 %65 to ptr, !dbg !660
  %data43 = getelementptr inbounds %struct.HAMTEntry, ptr %66, i32 0, i32 2, !dbg !661
  %67 = load ptr, ptr %data43, align 8, !dbg !661, !tbaa !375
  store ptr %67, ptr %retval, align 8, !dbg !662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup324, !dbg !662

if.else44:                                        ; preds = %land.lhs.true, %if.then26
  call void @llvm.lifetime.start.p0(i64 8, ptr %key2) #7, !dbg !663
  tail call void @llvm.dbg.declare(metadata ptr %key2, metadata !534, metadata !DIExpression()), !dbg !664
  %68 = load ptr, ptr %node, align 8, !dbg !665, !tbaa !98
  %BitMapKey45 = getelementptr inbounds %struct.HAMTNode, ptr %68, i32 0, i32 0, !dbg !666
  %69 = load i64, ptr %BitMapKey45, align 8, !dbg !666, !tbaa !131
  store i64 %69, ptr %key2, align 8, !dbg !664, !tbaa !194
  br label %for.cond46, !dbg !667

for.cond46:                                       ; preds = %cleanup.cont, %if.else44
  call void @llvm.lifetime.start.p0(i64 8, ptr %keypart2) #7, !dbg !668
  tail call void @llvm.dbg.declare(metadata ptr %keypart2, metadata !542, metadata !DIExpression()), !dbg !669
  %70 = load i32, ptr %keypartbits, align 4, !dbg !670, !tbaa !93
  %add = add nsw i32 %70, 5, !dbg !670
  store i32 %add, ptr %keypartbits, align 4, !dbg !670, !tbaa !93
  %71 = load i32, ptr %keypartbits, align 4, !dbg !671, !tbaa !93
  %cmp47 = icmp sgt i32 %71, 30, !dbg !673
  br i1 %cmp47, label %if.then48, label %if.end54, !dbg !674

if.then48:                                        ; preds = %for.cond46
  %72 = load ptr, ptr %hamt.addr, align 8, !dbg !675, !tbaa !98
  %ReHashKey = getelementptr inbounds %struct.HAMT, ptr %72, i32 0, i32 4, !dbg !677
  %73 = load ptr, ptr %ReHashKey, align 8, !dbg !677, !tbaa !162
  %74 = load ptr, ptr %str.addr, align 8, !dbg !678, !tbaa !98
  %75 = load i32, ptr %level, align 4, !dbg !679, !tbaa !93
  %call49 = call i64 %73(ptr noundef %74, i32 noundef %75), !dbg !675
  store i64 %call49, ptr %key, align 8, !dbg !680, !tbaa !194
  %76 = load ptr, ptr %hamt.addr, align 8, !dbg !681, !tbaa !98
  %ReHashKey50 = getelementptr inbounds %struct.HAMT, ptr %76, i32 0, i32 4, !dbg !682
  %77 = load ptr, ptr %ReHashKey50, align 8, !dbg !682, !tbaa !162
  %78 = load ptr, ptr %node, align 8, !dbg !683, !tbaa !98
  %BaseValue51 = getelementptr inbounds %struct.HAMTNode, ptr %78, i32 0, i32 1, !dbg !684
  %79 = load i64, ptr %BaseValue51, align 8, !dbg !684, !tbaa !139
  %80 = inttoptr i64 %79 to ptr, !dbg !685
  %str52 = getelementptr inbounds %struct.HAMTEntry, ptr %80, i32 0, i32 1, !dbg !686
  %81 = load ptr, ptr %str52, align 8, !dbg !686, !tbaa !593
  %82 = load i32, ptr %level, align 4, !dbg !687, !tbaa !93
  %call53 = call i64 %77(ptr noundef %81, i32 noundef %82), !dbg !681
  store i64 %call53, ptr %key2, align 8, !dbg !688, !tbaa !194
  store i32 0, ptr %keypartbits, align 4, !dbg !689, !tbaa !93
  br label %if.end54, !dbg !690

if.end54:                                         ; preds = %if.then48, %for.cond46
  %83 = load i64, ptr %key, align 8, !dbg !691, !tbaa !194
  %84 = load i32, ptr %keypartbits, align 4, !dbg !692, !tbaa !93
  %sh_prom = zext i32 %84 to i64, !dbg !693
  %shr = lshr i64 %83, %sh_prom, !dbg !693
  %and55 = and i64 %shr, 31, !dbg !694
  store i64 %and55, ptr %keypart, align 8, !dbg !695, !tbaa !194
  %85 = load i64, ptr %key2, align 8, !dbg !696, !tbaa !194
  %86 = load i32, ptr %keypartbits, align 4, !dbg !697, !tbaa !93
  %sh_prom56 = zext i32 %86 to i64, !dbg !698
  %shr57 = lshr i64 %85, %sh_prom56, !dbg !698
  %and58 = and i64 %shr57, 31, !dbg !699
  store i64 %and58, ptr %keypart2, align 8, !dbg !700, !tbaa !194
  %87 = load i64, ptr %keypart, align 8, !dbg !701, !tbaa !194
  %88 = load i64, ptr %keypart2, align 8, !dbg !703, !tbaa !194
  %cmp59 = icmp eq i64 %87, %88, !dbg !704
  br i1 %cmp59, label %if.then60, label %if.else79, !dbg !705

if.then60:                                        ; preds = %if.end54
  %89 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !706, !tbaa !98
  %call61 = call ptr %89(i64 noundef 16), !dbg !706
  store ptr %call61, ptr %newnodes, align 8, !dbg !708, !tbaa !98
  %90 = load i64, ptr %key2, align 8, !dbg !709, !tbaa !194
  %91 = load ptr, ptr %newnodes, align 8, !dbg !710, !tbaa !98
  %arrayidx62 = getelementptr inbounds %struct.HAMTNode, ptr %91, i64 0, !dbg !710
  %BitMapKey63 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx62, i32 0, i32 0, !dbg !711
  store i64 %90, ptr %BitMapKey63, align 8, !dbg !712, !tbaa !131
  %92 = load ptr, ptr %node, align 8, !dbg !713, !tbaa !98
  %BaseValue64 = getelementptr inbounds %struct.HAMTNode, ptr %92, i32 0, i32 1, !dbg !714
  %93 = load i64, ptr %BaseValue64, align 8, !dbg !714, !tbaa !139
  %94 = load ptr, ptr %newnodes, align 8, !dbg !715, !tbaa !98
  %arrayidx65 = getelementptr inbounds %struct.HAMTNode, ptr %94, i64 0, !dbg !715
  %BaseValue66 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx65, i32 0, i32 1, !dbg !716
  store i64 %93, ptr %BaseValue66, align 8, !dbg !717, !tbaa !139
  %95 = load i64, ptr %keypart, align 8, !dbg !718, !tbaa !194
  %sh_prom67 = trunc i64 %95 to i32, !dbg !719
  %shl = shl i32 1, %sh_prom67, !dbg !719
  %conv = sext i32 %shl to i64, !dbg !720
  %96 = load ptr, ptr %node, align 8, !dbg !721, !tbaa !98
  %BitMapKey68 = getelementptr inbounds %struct.HAMTNode, ptr %96, i32 0, i32 0, !dbg !722
  store i64 %conv, ptr %BitMapKey68, align 8, !dbg !723, !tbaa !131
  br label %do.body69, !dbg !724

do.body69:                                        ; preds = %if.then60
  %97 = load ptr, ptr %newnodes, align 8, !dbg !725, !tbaa !98
  %98 = ptrtoint ptr %97 to i64, !dbg !725
  %and70 = and i64 %98, 1, !dbg !725
  %tobool71 = icmp ne i64 %and70, 0, !dbg !725
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !728

if.then72:                                        ; preds = %do.body69
  %99 = load ptr, ptr %hamt.addr, align 8, !dbg !725, !tbaa !98
  %error_func73 = getelementptr inbounds %struct.HAMT, ptr %99, i32 0, i32 2, !dbg !725
  %100 = load ptr, ptr %error_func73, align 8, !dbg !725, !tbaa !150
  call void %100(ptr noundef @.str, i32 noundef 286, ptr noundef @.str.3), !dbg !725
  br label %if.end74, !dbg !725

if.end74:                                         ; preds = %if.then72, %do.body69
  %101 = load ptr, ptr %newnodes, align 8, !dbg !728, !tbaa !98
  %102 = ptrtoint ptr %101 to i64, !dbg !728
  %or = or i64 %102, 1, !dbg !728
  %103 = load ptr, ptr %node, align 8, !dbg !728, !tbaa !98
  %BaseValue75 = getelementptr inbounds %struct.HAMTNode, ptr %103, i32 0, i32 1, !dbg !728
  store i64 %or, ptr %BaseValue75, align 8, !dbg !728, !tbaa !139
  br label %do.cond76, !dbg !728

do.cond76:                                        ; preds = %if.end74
  br label %do.end77, !dbg !728

do.end77:                                         ; preds = %do.cond76
  %104 = load ptr, ptr %newnodes, align 8, !dbg !729, !tbaa !98
  %arrayidx78 = getelementptr inbounds %struct.HAMTNode, ptr %104, i64 0, !dbg !729
  store ptr %arrayidx78, ptr %node, align 8, !dbg !730, !tbaa !98
  %105 = load i32, ptr %level, align 4, !dbg !731, !tbaa !93
  %inc = add nsw i32 %105, 1, !dbg !731
  store i32 %inc, ptr %level, align 4, !dbg !731, !tbaa !93
  br label %if.end148, !dbg !732

if.else79:                                        ; preds = %if.end54
  %106 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !733, !tbaa !98
  %call80 = call ptr %106(i64 noundef 32), !dbg !733
  store ptr %call80, ptr %newnodes, align 8, !dbg !735, !tbaa !98
  %107 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !736, !tbaa !98
  %call81 = call ptr %107(i64 noundef 24), !dbg !736
  store ptr %call81, ptr %entry1, align 8, !dbg !737, !tbaa !98
  %108 = load ptr, ptr %str.addr, align 8, !dbg !738, !tbaa !98
  %109 = load ptr, ptr %entry1, align 8, !dbg !739, !tbaa !98
  %str82 = getelementptr inbounds %struct.HAMTEntry, ptr %109, i32 0, i32 1, !dbg !740
  store ptr %108, ptr %str82, align 8, !dbg !741, !tbaa !593
  %110 = load ptr, ptr %data.addr, align 8, !dbg !742, !tbaa !98
  %111 = load ptr, ptr %entry1, align 8, !dbg !743, !tbaa !98
  %data83 = getelementptr inbounds %struct.HAMTEntry, ptr %111, i32 0, i32 2, !dbg !744
  store ptr %110, ptr %data83, align 8, !dbg !745, !tbaa !375
  br label %do.body84, !dbg !746

do.body84:                                        ; preds = %if.else79
  %112 = load ptr, ptr %entry1, align 8, !dbg !747, !tbaa !98
  %next85 = getelementptr inbounds %struct.HAMTEntry, ptr %112, i32 0, i32 0, !dbg !747
  %stqe_next86 = getelementptr inbounds %struct.anon, ptr %next85, i32 0, i32 0, !dbg !747
  store ptr null, ptr %stqe_next86, align 8, !dbg !747, !tbaa !368
  %113 = load ptr, ptr %entry1, align 8, !dbg !747, !tbaa !98
  %114 = load ptr, ptr %hamt.addr, align 8, !dbg !747, !tbaa !98
  %entries87 = getelementptr inbounds %struct.HAMT, ptr %114, i32 0, i32 0, !dbg !747
  %stqh_last88 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries87, i32 0, i32 1, !dbg !747
  %115 = load ptr, ptr %stqh_last88, align 8, !dbg !747, !tbaa !112
  store ptr %113, ptr %115, align 8, !dbg !747, !tbaa !98
  %116 = load ptr, ptr %entry1, align 8, !dbg !747, !tbaa !98
  %next89 = getelementptr inbounds %struct.HAMTEntry, ptr %116, i32 0, i32 0, !dbg !747
  %stqe_next90 = getelementptr inbounds %struct.anon, ptr %next89, i32 0, i32 0, !dbg !747
  %117 = load ptr, ptr %hamt.addr, align 8, !dbg !747, !tbaa !98
  %entries91 = getelementptr inbounds %struct.HAMT, ptr %117, i32 0, i32 0, !dbg !747
  %stqh_last92 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries91, i32 0, i32 1, !dbg !747
  store ptr %stqe_next90, ptr %stqh_last92, align 8, !dbg !747, !tbaa !112
  br label %do.cond93, !dbg !747

do.cond93:                                        ; preds = %do.body84
  br label %do.end94, !dbg !747

do.end94:                                         ; preds = %do.cond93
  %118 = load i64, ptr %keypart2, align 8, !dbg !749, !tbaa !194
  %119 = load i64, ptr %keypart, align 8, !dbg !751, !tbaa !194
  %cmp95 = icmp ult i64 %118, %119, !dbg !752
  br i1 %cmp95, label %if.then97, label %if.else115, !dbg !753

if.then97:                                        ; preds = %do.end94
  %120 = load i64, ptr %key2, align 8, !dbg !754, !tbaa !194
  %121 = load ptr, ptr %newnodes, align 8, !dbg !756, !tbaa !98
  %arrayidx98 = getelementptr inbounds %struct.HAMTNode, ptr %121, i64 0, !dbg !756
  %BitMapKey99 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx98, i32 0, i32 0, !dbg !757
  store i64 %120, ptr %BitMapKey99, align 8, !dbg !758, !tbaa !131
  %122 = load ptr, ptr %node, align 8, !dbg !759, !tbaa !98
  %BaseValue100 = getelementptr inbounds %struct.HAMTNode, ptr %122, i32 0, i32 1, !dbg !760
  %123 = load i64, ptr %BaseValue100, align 8, !dbg !760, !tbaa !139
  %124 = load ptr, ptr %newnodes, align 8, !dbg !761, !tbaa !98
  %arrayidx101 = getelementptr inbounds %struct.HAMTNode, ptr %124, i64 0, !dbg !761
  %BaseValue102 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx101, i32 0, i32 1, !dbg !762
  store i64 %123, ptr %BaseValue102, align 8, !dbg !763, !tbaa !139
  %125 = load i64, ptr %key, align 8, !dbg !764, !tbaa !194
  %126 = load ptr, ptr %newnodes, align 8, !dbg !765, !tbaa !98
  %arrayidx103 = getelementptr inbounds %struct.HAMTNode, ptr %126, i64 1, !dbg !765
  %BitMapKey104 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx103, i32 0, i32 0, !dbg !766
  store i64 %125, ptr %BitMapKey104, align 8, !dbg !767, !tbaa !131
  br label %do.body105, !dbg !768

do.body105:                                       ; preds = %if.then97
  %127 = load ptr, ptr %entry1, align 8, !dbg !769, !tbaa !98
  %128 = ptrtoint ptr %127 to i64, !dbg !769
  %and106 = and i64 %128, 1, !dbg !769
  %tobool107 = icmp ne i64 %and106, 0, !dbg !769
  br i1 %tobool107, label %if.then108, label %if.end110, !dbg !772

if.then108:                                       ; preds = %do.body105
  %129 = load ptr, ptr %hamt.addr, align 8, !dbg !769, !tbaa !98
  %error_func109 = getelementptr inbounds %struct.HAMT, ptr %129, i32 0, i32 2, !dbg !769
  %130 = load ptr, ptr %error_func109, align 8, !dbg !769, !tbaa !150
  call void %130(ptr noundef @.str, i32 noundef 303, ptr noundef @.str.1), !dbg !769
  br label %if.end110, !dbg !769

if.end110:                                        ; preds = %if.then108, %do.body105
  %131 = load ptr, ptr %entry1, align 8, !dbg !772, !tbaa !98
  %132 = ptrtoint ptr %131 to i64, !dbg !772
  %133 = load ptr, ptr %newnodes, align 8, !dbg !772, !tbaa !98
  %arrayidx111 = getelementptr inbounds %struct.HAMTNode, ptr %133, i64 1, !dbg !772
  %BaseValue112 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx111, i32 0, i32 1, !dbg !772
  store i64 %132, ptr %BaseValue112, align 8, !dbg !772, !tbaa !139
  br label %do.cond113, !dbg !772

do.cond113:                                       ; preds = %if.end110
  br label %do.end114, !dbg !772

do.end114:                                        ; preds = %do.cond113
  br label %if.end133, !dbg !773

if.else115:                                       ; preds = %do.end94
  %134 = load i64, ptr %key, align 8, !dbg !774, !tbaa !194
  %135 = load ptr, ptr %newnodes, align 8, !dbg !776, !tbaa !98
  %arrayidx116 = getelementptr inbounds %struct.HAMTNode, ptr %135, i64 0, !dbg !776
  %BitMapKey117 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx116, i32 0, i32 0, !dbg !777
  store i64 %134, ptr %BitMapKey117, align 8, !dbg !778, !tbaa !131
  br label %do.body118, !dbg !779

do.body118:                                       ; preds = %if.else115
  %136 = load ptr, ptr %entry1, align 8, !dbg !780, !tbaa !98
  %137 = ptrtoint ptr %136 to i64, !dbg !780
  %and119 = and i64 %137, 1, !dbg !780
  %tobool120 = icmp ne i64 %and119, 0, !dbg !780
  br i1 %tobool120, label %if.then121, label %if.end123, !dbg !783

if.then121:                                       ; preds = %do.body118
  %138 = load ptr, ptr %hamt.addr, align 8, !dbg !780, !tbaa !98
  %error_func122 = getelementptr inbounds %struct.HAMT, ptr %138, i32 0, i32 2, !dbg !780
  %139 = load ptr, ptr %error_func122, align 8, !dbg !780, !tbaa !150
  call void %139(ptr noundef @.str, i32 noundef 306, ptr noundef @.str.1), !dbg !780
  br label %if.end123, !dbg !780

if.end123:                                        ; preds = %if.then121, %do.body118
  %140 = load ptr, ptr %entry1, align 8, !dbg !783, !tbaa !98
  %141 = ptrtoint ptr %140 to i64, !dbg !783
  %142 = load ptr, ptr %newnodes, align 8, !dbg !783, !tbaa !98
  %arrayidx124 = getelementptr inbounds %struct.HAMTNode, ptr %142, i64 0, !dbg !783
  %BaseValue125 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx124, i32 0, i32 1, !dbg !783
  store i64 %141, ptr %BaseValue125, align 8, !dbg !783, !tbaa !139
  br label %do.cond126, !dbg !783

do.cond126:                                       ; preds = %if.end123
  br label %do.end127, !dbg !783

do.end127:                                        ; preds = %do.cond126
  %143 = load i64, ptr %key2, align 8, !dbg !784, !tbaa !194
  %144 = load ptr, ptr %newnodes, align 8, !dbg !785, !tbaa !98
  %arrayidx128 = getelementptr inbounds %struct.HAMTNode, ptr %144, i64 1, !dbg !785
  %BitMapKey129 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx128, i32 0, i32 0, !dbg !786
  store i64 %143, ptr %BitMapKey129, align 8, !dbg !787, !tbaa !131
  %145 = load ptr, ptr %node, align 8, !dbg !788, !tbaa !98
  %BaseValue130 = getelementptr inbounds %struct.HAMTNode, ptr %145, i32 0, i32 1, !dbg !789
  %146 = load i64, ptr %BaseValue130, align 8, !dbg !789, !tbaa !139
  %147 = load ptr, ptr %newnodes, align 8, !dbg !790, !tbaa !98
  %arrayidx131 = getelementptr inbounds %struct.HAMTNode, ptr %147, i64 1, !dbg !790
  %BaseValue132 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx131, i32 0, i32 1, !dbg !791
  store i64 %146, ptr %BaseValue132, align 8, !dbg !792, !tbaa !139
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %do.end114
  %148 = load i64, ptr %keypart, align 8, !dbg !793, !tbaa !194
  %shl134 = shl i64 1, %148, !dbg !794
  %149 = load i64, ptr %keypart2, align 8, !dbg !795, !tbaa !194
  %shl135 = shl i64 1, %149, !dbg !796
  %or136 = or i64 %shl134, %shl135, !dbg !797
  %150 = load ptr, ptr %node, align 8, !dbg !798, !tbaa !98
  %BitMapKey137 = getelementptr inbounds %struct.HAMTNode, ptr %150, i32 0, i32 0, !dbg !799
  store i64 %or136, ptr %BitMapKey137, align 8, !dbg !800, !tbaa !131
  br label %do.body138, !dbg !801

do.body138:                                       ; preds = %if.end133
  %151 = load ptr, ptr %newnodes, align 8, !dbg !802, !tbaa !98
  %152 = ptrtoint ptr %151 to i64, !dbg !802
  %and139 = and i64 %152, 1, !dbg !802
  %tobool140 = icmp ne i64 %and139, 0, !dbg !802
  br i1 %tobool140, label %if.then141, label %if.end143, !dbg !805

if.then141:                                       ; preds = %do.body138
  %153 = load ptr, ptr %hamt.addr, align 8, !dbg !802, !tbaa !98
  %error_func142 = getelementptr inbounds %struct.HAMT, ptr %153, i32 0, i32 2, !dbg !802
  %154 = load ptr, ptr %error_func142, align 8, !dbg !802, !tbaa !150
  call void %154(ptr noundef @.str, i32 noundef 313, ptr noundef @.str.3), !dbg !802
  br label %if.end143, !dbg !802

if.end143:                                        ; preds = %if.then141, %do.body138
  %155 = load ptr, ptr %newnodes, align 8, !dbg !805, !tbaa !98
  %156 = ptrtoint ptr %155 to i64, !dbg !805
  %or144 = or i64 %156, 1, !dbg !805
  %157 = load ptr, ptr %node, align 8, !dbg !805, !tbaa !98
  %BaseValue145 = getelementptr inbounds %struct.HAMTNode, ptr %157, i32 0, i32 1, !dbg !805
  store i64 %or144, ptr %BaseValue145, align 8, !dbg !805, !tbaa !139
  br label %do.cond146, !dbg !805

do.cond146:                                       ; preds = %if.end143
  br label %do.end147, !dbg !805

do.end147:                                        ; preds = %do.cond146
  %158 = load ptr, ptr %replace.addr, align 8, !dbg !806, !tbaa !98
  store i32 1, ptr %158, align 4, !dbg !807, !tbaa !93
  %159 = load ptr, ptr %data.addr, align 8, !dbg !808, !tbaa !98
  store ptr %159, ptr %retval, align 8, !dbg !809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !809

if.end148:                                        ; preds = %do.end77
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !810
  br label %cleanup, !dbg !810

cleanup:                                          ; preds = %if.end148, %do.end147
  call void @llvm.lifetime.end.p0(i64 8, ptr %keypart2) #7, !dbg !810
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup149 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond46, !dbg !811, !llvm.loop !812

cleanup149:                                       ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %key2) #7, !dbg !815
  br label %cleanup324

if.end150:                                        ; preds = %for.cond
  %160 = load i32, ptr %keypartbits, align 4, !dbg !816, !tbaa !93
  %add151 = add nsw i32 %160, 5, !dbg !816
  store i32 %add151, ptr %keypartbits, align 4, !dbg !816, !tbaa !93
  %161 = load i32, ptr %keypartbits, align 4, !dbg !817, !tbaa !93
  %cmp152 = icmp sgt i32 %161, 30, !dbg !819
  br i1 %cmp152, label %if.then154, label %if.end157, !dbg !820

if.then154:                                       ; preds = %if.end150
  %162 = load ptr, ptr %hamt.addr, align 8, !dbg !821, !tbaa !98
  %ReHashKey155 = getelementptr inbounds %struct.HAMT, ptr %162, i32 0, i32 4, !dbg !823
  %163 = load ptr, ptr %ReHashKey155, align 8, !dbg !823, !tbaa !162
  %164 = load ptr, ptr %str.addr, align 8, !dbg !824, !tbaa !98
  %165 = load i32, ptr %level, align 4, !dbg !825, !tbaa !93
  %call156 = call i64 %163(ptr noundef %164, i32 noundef %165), !dbg !821
  store i64 %call156, ptr %key, align 8, !dbg !826, !tbaa !194
  store i32 0, ptr %keypartbits, align 4, !dbg !827, !tbaa !93
  br label %if.end157, !dbg !828

if.end157:                                        ; preds = %if.then154, %if.end150
  %166 = load i64, ptr %key, align 8, !dbg !829, !tbaa !194
  %167 = load i32, ptr %keypartbits, align 4, !dbg !830, !tbaa !93
  %sh_prom158 = zext i32 %167 to i64, !dbg !831
  %shr159 = lshr i64 %166, %sh_prom158, !dbg !831
  %and160 = and i64 %shr159, 31, !dbg !832
  store i64 %and160, ptr %keypart, align 8, !dbg !833, !tbaa !194
  %168 = load ptr, ptr %node, align 8, !dbg !834, !tbaa !98
  %BitMapKey161 = getelementptr inbounds %struct.HAMTNode, ptr %168, i32 0, i32 0, !dbg !835
  %169 = load i64, ptr %BitMapKey161, align 8, !dbg !835, !tbaa !131
  %170 = load i64, ptr %keypart, align 8, !dbg !836, !tbaa !194
  %sh_prom162 = trunc i64 %170 to i32, !dbg !837
  %shl163 = shl i32 1, %sh_prom162, !dbg !837
  %conv164 = sext i32 %shl163 to i64, !dbg !838
  %and165 = and i64 %169, %conv164, !dbg !839
  %tobool166 = icmp ne i64 %and165, 0, !dbg !839
  br i1 %tobool166, label %if.end286, label %if.then167, !dbg !840

if.then167:                                       ; preds = %if.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr %Size) #7, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %Size, metadata !546, metadata !DIExpression()), !dbg !842
  %171 = load i64, ptr %keypart, align 8, !dbg !843, !tbaa !194
  %sh_prom168 = trunc i64 %171 to i32, !dbg !844
  %shl169 = shl i32 1, %sh_prom168, !dbg !844
  %conv170 = sext i32 %shl169 to i64, !dbg !845
  %172 = load ptr, ptr %node, align 8, !dbg !846, !tbaa !98
  %BitMapKey171 = getelementptr inbounds %struct.HAMTNode, ptr %172, i32 0, i32 0, !dbg !847
  %173 = load i64, ptr %BitMapKey171, align 8, !dbg !848, !tbaa !131
  %or172 = or i64 %173, %conv170, !dbg !848
  store i64 %or172, ptr %BitMapKey171, align 8, !dbg !848, !tbaa !131
  br label %do.body173, !dbg !849

do.body173:                                       ; preds = %if.then167
  %174 = load ptr, ptr %node, align 8, !dbg !850, !tbaa !98
  %BitMapKey174 = getelementptr inbounds %struct.HAMTNode, ptr %174, i32 0, i32 0, !dbg !850
  %175 = load i64, ptr %BitMapKey174, align 8, !dbg !850, !tbaa !131
  %and175 = and i64 %175, 6148914691236517205, !dbg !850
  %176 = load ptr, ptr %node, align 8, !dbg !850, !tbaa !98
  %BitMapKey176 = getelementptr inbounds %struct.HAMTNode, ptr %176, i32 0, i32 0, !dbg !850
  %177 = load i64, ptr %BitMapKey176, align 8, !dbg !850, !tbaa !131
  %shr177 = lshr i64 %177, 1, !dbg !850
  %and178 = and i64 %shr177, 6148914691236517205, !dbg !850
  %add179 = add i64 %and175, %and178, !dbg !850
  store i64 %add179, ptr %Size, align 8, !dbg !850, !tbaa !194
  %178 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %and180 = and i64 %178, 3689348814741910323, !dbg !850
  %179 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %shr181 = lshr i64 %179, 2, !dbg !850
  %and182 = and i64 %shr181, 3689348814741910323, !dbg !850
  %add183 = add i64 %and180, %and182, !dbg !850
  store i64 %add183, ptr %Size, align 8, !dbg !850, !tbaa !194
  %180 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %and184 = and i64 %180, 1085102592571150095, !dbg !850
  %181 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %shr185 = lshr i64 %181, 4, !dbg !850
  %and186 = and i64 %shr185, 1085102592571150095, !dbg !850
  %add187 = add i64 %and184, %and186, !dbg !850
  store i64 %add187, ptr %Size, align 8, !dbg !850, !tbaa !194
  %182 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %and188 = and i64 %182, 71777214294589695, !dbg !850
  %183 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %shr189 = lshr i64 %183, 8, !dbg !850
  %and190 = and i64 %shr189, 71777214294589695, !dbg !850
  %add191 = add i64 %and188, %and190, !dbg !850
  store i64 %add191, ptr %Size, align 8, !dbg !850, !tbaa !194
  %184 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %and192 = and i64 %184, 281470681808895, !dbg !850
  %185 = load i64, ptr %Size, align 8, !dbg !850, !tbaa !194
  %shr193 = lshr i64 %185, 16, !dbg !850
  %and194 = and i64 %shr193, 281470681808895, !dbg !850
  %add195 = add i64 %and192, %and194, !dbg !850
  store i64 %add195, ptr %Size, align 8, !dbg !850, !tbaa !194
  br label %do.cond196, !dbg !850

do.cond196:                                       ; preds = %do.body173
  br label %do.end197, !dbg !850

do.end197:                                        ; preds = %do.cond196
  %186 = load i64, ptr %Size, align 8, !dbg !852, !tbaa !194
  %and198 = and i64 %186, 31, !dbg !852
  store i64 %and198, ptr %Size, align 8, !dbg !852, !tbaa !194
  %187 = load i64, ptr %Size, align 8, !dbg !853, !tbaa !194
  %cmp199 = icmp eq i64 %187, 0, !dbg !855
  br i1 %cmp199, label %if.then201, label %if.end202, !dbg !856

if.then201:                                       ; preds = %do.end197
  store i64 32, ptr %Size, align 8, !dbg !857, !tbaa !194
  br label %if.end202, !dbg !858

if.end202:                                        ; preds = %if.then201, %do.end197
  %188 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !859, !tbaa !98
  %189 = load i64, ptr %Size, align 8, !dbg !860, !tbaa !194
  %mul = mul i64 %189, 16, !dbg !861
  %call203 = call ptr %188(i64 noundef %mul), !dbg !859
  store ptr %call203, ptr %newnodes, align 8, !dbg !862, !tbaa !98
  br label %do.body204, !dbg !863

do.body204:                                       ; preds = %if.end202
  %190 = load ptr, ptr %node, align 8, !dbg !864, !tbaa !98
  %BitMapKey205 = getelementptr inbounds %struct.HAMTNode, ptr %190, i32 0, i32 0, !dbg !864
  %191 = load i64, ptr %BitMapKey205, align 8, !dbg !864, !tbaa !131
  %192 = load i64, ptr %keypart, align 8, !dbg !864, !tbaa !194
  %shl206 = shl i64 -1, %192, !dbg !864
  %not = xor i64 %shl206, -1, !dbg !864
  %and207 = and i64 %191, %not, !dbg !864
  %and208 = and i64 %and207, 6148914691236517205, !dbg !864
  %193 = load ptr, ptr %node, align 8, !dbg !864, !tbaa !98
  %BitMapKey209 = getelementptr inbounds %struct.HAMTNode, ptr %193, i32 0, i32 0, !dbg !864
  %194 = load i64, ptr %BitMapKey209, align 8, !dbg !864, !tbaa !131
  %195 = load i64, ptr %keypart, align 8, !dbg !864, !tbaa !194
  %shl210 = shl i64 -1, %195, !dbg !864
  %not211 = xor i64 %shl210, -1, !dbg !864
  %and212 = and i64 %194, %not211, !dbg !864
  %shr213 = lshr i64 %and212, 1, !dbg !864
  %and214 = and i64 %shr213, 6148914691236517205, !dbg !864
  %add215 = add i64 %and208, %and214, !dbg !864
  store i64 %add215, ptr %Map, align 8, !dbg !864, !tbaa !194
  %196 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %and216 = and i64 %196, 3689348814741910323, !dbg !864
  %197 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %shr217 = lshr i64 %197, 2, !dbg !864
  %and218 = and i64 %shr217, 3689348814741910323, !dbg !864
  %add219 = add i64 %and216, %and218, !dbg !864
  store i64 %add219, ptr %Map, align 8, !dbg !864, !tbaa !194
  %198 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %and220 = and i64 %198, 1085102592571150095, !dbg !864
  %199 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %shr221 = lshr i64 %199, 4, !dbg !864
  %and222 = and i64 %shr221, 1085102592571150095, !dbg !864
  %add223 = add i64 %and220, %and222, !dbg !864
  store i64 %add223, ptr %Map, align 8, !dbg !864, !tbaa !194
  %200 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %and224 = and i64 %200, 71777214294589695, !dbg !864
  %201 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %shr225 = lshr i64 %201, 8, !dbg !864
  %and226 = and i64 %shr225, 71777214294589695, !dbg !864
  %add227 = add i64 %and224, %and226, !dbg !864
  store i64 %add227, ptr %Map, align 8, !dbg !864, !tbaa !194
  %202 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %and228 = and i64 %202, 281470681808895, !dbg !864
  %203 = load i64, ptr %Map, align 8, !dbg !864, !tbaa !194
  %shr229 = lshr i64 %203, 16, !dbg !864
  %and230 = and i64 %shr229, 281470681808895, !dbg !864
  %add231 = add i64 %and228, %and230, !dbg !864
  store i64 %add231, ptr %Map, align 8, !dbg !864, !tbaa !194
  br label %do.cond232, !dbg !864

do.cond232:                                       ; preds = %do.body204
  br label %do.end233, !dbg !864

do.end233:                                        ; preds = %do.cond232
  %204 = load i64, ptr %Map, align 8, !dbg !866, !tbaa !194
  %and234 = and i64 %204, 31, !dbg !866
  store i64 %and234, ptr %Map, align 8, !dbg !866, !tbaa !194
  %205 = load ptr, ptr %newnodes, align 8, !dbg !867, !tbaa !98
  %206 = load ptr, ptr %node, align 8, !dbg !868, !tbaa !98
  %BaseValue235 = getelementptr inbounds %struct.HAMTNode, ptr %206, i32 0, i32 1, !dbg !868
  %207 = load i64, ptr %BaseValue235, align 8, !dbg !868, !tbaa !139
  %or236 = or i64 %207, 1, !dbg !868
  %xor = xor i64 %or236, 1, !dbg !868
  %208 = inttoptr i64 %xor to ptr, !dbg !868
  %209 = load i64, ptr %Map, align 8, !dbg !869, !tbaa !194
  %mul237 = mul i64 %209, 16, !dbg !870
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %205, ptr align 8 %208, i64 %mul237, i1 false), !dbg !871
  %210 = load ptr, ptr %newnodes, align 8, !dbg !872, !tbaa !98
  %211 = load i64, ptr %Map, align 8, !dbg !873, !tbaa !194
  %add238 = add i64 %211, 1, !dbg !874
  %arrayidx239 = getelementptr inbounds %struct.HAMTNode, ptr %210, i64 %add238, !dbg !872
  %212 = load ptr, ptr %node, align 8, !dbg !875, !tbaa !98
  %BaseValue240 = getelementptr inbounds %struct.HAMTNode, ptr %212, i32 0, i32 1, !dbg !875
  %213 = load i64, ptr %BaseValue240, align 8, !dbg !875, !tbaa !139
  %or241 = or i64 %213, 1, !dbg !875
  %xor242 = xor i64 %or241, 1, !dbg !875
  %214 = inttoptr i64 %xor242 to ptr, !dbg !875
  %215 = load i64, ptr %Map, align 8, !dbg !876, !tbaa !194
  %arrayidx243 = getelementptr inbounds %struct.HAMTNode, ptr %214, i64 %215, !dbg !877
  %216 = load i64, ptr %Size, align 8, !dbg !878, !tbaa !194
  %217 = load i64, ptr %Map, align 8, !dbg !879, !tbaa !194
  %sub = sub i64 %216, %217, !dbg !880
  %sub244 = sub i64 %sub, 1, !dbg !881
  %mul245 = mul i64 %sub244, 16, !dbg !882
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx239, ptr align 8 %arrayidx243, i64 %mul245, i1 false), !dbg !883
  %218 = load ptr, ptr @yasm_xfree, align 8, !dbg !884, !tbaa !98
  %219 = load ptr, ptr %node, align 8, !dbg !885, !tbaa !98
  %BaseValue246 = getelementptr inbounds %struct.HAMTNode, ptr %219, i32 0, i32 1, !dbg !885
  %220 = load i64, ptr %BaseValue246, align 8, !dbg !885, !tbaa !139
  %or247 = or i64 %220, 1, !dbg !885
  %xor248 = xor i64 %or247, 1, !dbg !885
  %221 = inttoptr i64 %xor248 to ptr, !dbg !885
  call void %218(ptr noundef %221), !dbg !884
  %222 = load i64, ptr %key, align 8, !dbg !886, !tbaa !194
  %223 = load ptr, ptr %newnodes, align 8, !dbg !887, !tbaa !98
  %224 = load i64, ptr %Map, align 8, !dbg !888, !tbaa !194
  %arrayidx249 = getelementptr inbounds %struct.HAMTNode, ptr %223, i64 %224, !dbg !887
  %BitMapKey250 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx249, i32 0, i32 0, !dbg !889
  store i64 %222, ptr %BitMapKey250, align 8, !dbg !890, !tbaa !131
  %225 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !891, !tbaa !98
  %call251 = call ptr %225(i64 noundef 24), !dbg !891
  store ptr %call251, ptr %entry1, align 8, !dbg !892, !tbaa !98
  %226 = load ptr, ptr %str.addr, align 8, !dbg !893, !tbaa !98
  %227 = load ptr, ptr %entry1, align 8, !dbg !894, !tbaa !98
  %str252 = getelementptr inbounds %struct.HAMTEntry, ptr %227, i32 0, i32 1, !dbg !895
  store ptr %226, ptr %str252, align 8, !dbg !896, !tbaa !593
  %228 = load ptr, ptr %data.addr, align 8, !dbg !897, !tbaa !98
  %229 = load ptr, ptr %entry1, align 8, !dbg !898, !tbaa !98
  %data253 = getelementptr inbounds %struct.HAMTEntry, ptr %229, i32 0, i32 2, !dbg !899
  store ptr %228, ptr %data253, align 8, !dbg !900, !tbaa !375
  br label %do.body254, !dbg !901

do.body254:                                       ; preds = %do.end233
  %230 = load ptr, ptr %entry1, align 8, !dbg !902, !tbaa !98
  %next255 = getelementptr inbounds %struct.HAMTEntry, ptr %230, i32 0, i32 0, !dbg !902
  %stqe_next256 = getelementptr inbounds %struct.anon, ptr %next255, i32 0, i32 0, !dbg !902
  store ptr null, ptr %stqe_next256, align 8, !dbg !902, !tbaa !368
  %231 = load ptr, ptr %entry1, align 8, !dbg !902, !tbaa !98
  %232 = load ptr, ptr %hamt.addr, align 8, !dbg !902, !tbaa !98
  %entries257 = getelementptr inbounds %struct.HAMT, ptr %232, i32 0, i32 0, !dbg !902
  %stqh_last258 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries257, i32 0, i32 1, !dbg !902
  %233 = load ptr, ptr %stqh_last258, align 8, !dbg !902, !tbaa !112
  store ptr %231, ptr %233, align 8, !dbg !902, !tbaa !98
  %234 = load ptr, ptr %entry1, align 8, !dbg !902, !tbaa !98
  %next259 = getelementptr inbounds %struct.HAMTEntry, ptr %234, i32 0, i32 0, !dbg !902
  %stqe_next260 = getelementptr inbounds %struct.anon, ptr %next259, i32 0, i32 0, !dbg !902
  %235 = load ptr, ptr %hamt.addr, align 8, !dbg !902, !tbaa !98
  %entries261 = getelementptr inbounds %struct.HAMT, ptr %235, i32 0, i32 0, !dbg !902
  %stqh_last262 = getelementptr inbounds %struct.HAMTEntryHead, ptr %entries261, i32 0, i32 1, !dbg !902
  store ptr %stqe_next260, ptr %stqh_last262, align 8, !dbg !902, !tbaa !112
  br label %do.cond263, !dbg !902

do.cond263:                                       ; preds = %do.body254
  br label %do.end264, !dbg !902

do.end264:                                        ; preds = %do.cond263
  br label %do.body265, !dbg !904

do.body265:                                       ; preds = %do.end264
  %236 = load ptr, ptr %entry1, align 8, !dbg !905, !tbaa !98
  %237 = ptrtoint ptr %236 to i64, !dbg !905
  %and266 = and i64 %237, 1, !dbg !905
  %tobool267 = icmp ne i64 %and266, 0, !dbg !905
  br i1 %tobool267, label %if.then268, label %if.end270, !dbg !908

if.then268:                                       ; preds = %do.body265
  %238 = load ptr, ptr %hamt.addr, align 8, !dbg !905, !tbaa !98
  %error_func269 = getelementptr inbounds %struct.HAMT, ptr %238, i32 0, i32 2, !dbg !905
  %239 = load ptr, ptr %error_func269, align 8, !dbg !905, !tbaa !150
  call void %239(ptr noundef @.str, i32 noundef 358, ptr noundef @.str.1), !dbg !905
  br label %if.end270, !dbg !905

if.end270:                                        ; preds = %if.then268, %do.body265
  %240 = load ptr, ptr %entry1, align 8, !dbg !908, !tbaa !98
  %241 = ptrtoint ptr %240 to i64, !dbg !908
  %242 = load ptr, ptr %newnodes, align 8, !dbg !908, !tbaa !98
  %243 = load i64, ptr %Map, align 8, !dbg !908, !tbaa !194
  %arrayidx271 = getelementptr inbounds %struct.HAMTNode, ptr %242, i64 %243, !dbg !908
  %BaseValue272 = getelementptr inbounds %struct.HAMTNode, ptr %arrayidx271, i32 0, i32 1, !dbg !908
  store i64 %241, ptr %BaseValue272, align 8, !dbg !908, !tbaa !139
  br label %do.cond273, !dbg !908

do.cond273:                                       ; preds = %if.end270
  br label %do.end274, !dbg !908

do.end274:                                        ; preds = %do.cond273
  br label %do.body275, !dbg !909

do.body275:                                       ; preds = %do.end274
  %244 = load ptr, ptr %newnodes, align 8, !dbg !910, !tbaa !98
  %245 = ptrtoint ptr %244 to i64, !dbg !910
  %and276 = and i64 %245, 1, !dbg !910
  %tobool277 = icmp ne i64 %and276, 0, !dbg !910
  br i1 %tobool277, label %if.then278, label %if.end280, !dbg !913

if.then278:                                       ; preds = %do.body275
  %246 = load ptr, ptr %hamt.addr, align 8, !dbg !910, !tbaa !98
  %error_func279 = getelementptr inbounds %struct.HAMT, ptr %246, i32 0, i32 2, !dbg !910
  %247 = load ptr, ptr %error_func279, align 8, !dbg !910, !tbaa !150
  call void %247(ptr noundef @.str, i32 noundef 359, ptr noundef @.str.3), !dbg !910
  br label %if.end280, !dbg !910

if.end280:                                        ; preds = %if.then278, %do.body275
  %248 = load ptr, ptr %newnodes, align 8, !dbg !913, !tbaa !98
  %249 = ptrtoint ptr %248 to i64, !dbg !913
  %or281 = or i64 %249, 1, !dbg !913
  %250 = load ptr, ptr %node, align 8, !dbg !913, !tbaa !98
  %BaseValue282 = getelementptr inbounds %struct.HAMTNode, ptr %250, i32 0, i32 1, !dbg !913
  store i64 %or281, ptr %BaseValue282, align 8, !dbg !913, !tbaa !139
  br label %do.cond283, !dbg !913

do.cond283:                                       ; preds = %if.end280
  br label %do.end284, !dbg !913

do.end284:                                        ; preds = %do.cond283
  %251 = load ptr, ptr %replace.addr, align 8, !dbg !914, !tbaa !98
  store i32 1, ptr %251, align 4, !dbg !915, !tbaa !93
  %252 = load ptr, ptr %data.addr, align 8, !dbg !916, !tbaa !98
  store ptr %252, ptr %retval, align 8, !dbg !917
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Size) #7, !dbg !918
  br label %cleanup324

if.end286:                                        ; preds = %if.end157
  br label %do.body287, !dbg !919

do.body287:                                       ; preds = %if.end286
  %253 = load ptr, ptr %node, align 8, !dbg !920, !tbaa !98
  %BitMapKey288 = getelementptr inbounds %struct.HAMTNode, ptr %253, i32 0, i32 0, !dbg !920
  %254 = load i64, ptr %BitMapKey288, align 8, !dbg !920, !tbaa !131
  %255 = load i64, ptr %keypart, align 8, !dbg !920, !tbaa !194
  %shl289 = shl i64 -1, %255, !dbg !920
  %not290 = xor i64 %shl289, -1, !dbg !920
  %and291 = and i64 %254, %not290, !dbg !920
  %and292 = and i64 %and291, 6148914691236517205, !dbg !920
  %256 = load ptr, ptr %node, align 8, !dbg !920, !tbaa !98
  %BitMapKey293 = getelementptr inbounds %struct.HAMTNode, ptr %256, i32 0, i32 0, !dbg !920
  %257 = load i64, ptr %BitMapKey293, align 8, !dbg !920, !tbaa !131
  %258 = load i64, ptr %keypart, align 8, !dbg !920, !tbaa !194
  %shl294 = shl i64 -1, %258, !dbg !920
  %not295 = xor i64 %shl294, -1, !dbg !920
  %and296 = and i64 %257, %not295, !dbg !920
  %shr297 = lshr i64 %and296, 1, !dbg !920
  %and298 = and i64 %shr297, 6148914691236517205, !dbg !920
  %add299 = add i64 %and292, %and298, !dbg !920
  store i64 %add299, ptr %Map, align 8, !dbg !920, !tbaa !194
  %259 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %and300 = and i64 %259, 3689348814741910323, !dbg !920
  %260 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %shr301 = lshr i64 %260, 2, !dbg !920
  %and302 = and i64 %shr301, 3689348814741910323, !dbg !920
  %add303 = add i64 %and300, %and302, !dbg !920
  store i64 %add303, ptr %Map, align 8, !dbg !920, !tbaa !194
  %261 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %and304 = and i64 %261, 1085102592571150095, !dbg !920
  %262 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %shr305 = lshr i64 %262, 4, !dbg !920
  %and306 = and i64 %shr305, 1085102592571150095, !dbg !920
  %add307 = add i64 %and304, %and306, !dbg !920
  store i64 %add307, ptr %Map, align 8, !dbg !920, !tbaa !194
  %263 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %and308 = and i64 %263, 71777214294589695, !dbg !920
  %264 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %shr309 = lshr i64 %264, 8, !dbg !920
  %and310 = and i64 %shr309, 71777214294589695, !dbg !920
  %add311 = add i64 %and308, %and310, !dbg !920
  store i64 %add311, ptr %Map, align 8, !dbg !920, !tbaa !194
  %265 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %and312 = and i64 %265, 281470681808895, !dbg !920
  %266 = load i64, ptr %Map, align 8, !dbg !920, !tbaa !194
  %shr313 = lshr i64 %266, 16, !dbg !920
  %and314 = and i64 %shr313, 281470681808895, !dbg !920
  %add315 = add i64 %and312, %and314, !dbg !920
  store i64 %add315, ptr %Map, align 8, !dbg !920, !tbaa !194
  br label %do.cond316, !dbg !920

do.cond316:                                       ; preds = %do.body287
  br label %do.end317, !dbg !920

do.end317:                                        ; preds = %do.cond316
  %267 = load i64, ptr %Map, align 8, !dbg !922, !tbaa !194
  %and318 = and i64 %267, 31, !dbg !922
  store i64 %and318, ptr %Map, align 8, !dbg !922, !tbaa !194
  %268 = load i32, ptr %level, align 4, !dbg !923, !tbaa !93
  %inc319 = add nsw i32 %268, 1, !dbg !923
  store i32 %inc319, ptr %level, align 4, !dbg !923, !tbaa !93
  %269 = load ptr, ptr %node, align 8, !dbg !924, !tbaa !98
  %BaseValue320 = getelementptr inbounds %struct.HAMTNode, ptr %269, i32 0, i32 1, !dbg !924
  %270 = load i64, ptr %BaseValue320, align 8, !dbg !924, !tbaa !139
  %or321 = or i64 %270, 1, !dbg !924
  %xor322 = xor i64 %or321, 1, !dbg !924
  %271 = inttoptr i64 %xor322 to ptr, !dbg !924
  %272 = load i64, ptr %Map, align 8, !dbg !925, !tbaa !194
  %arrayidx323 = getelementptr inbounds %struct.HAMTNode, ptr %271, i64 %272, !dbg !926
  store ptr %arrayidx323, ptr %node, align 8, !dbg !927, !tbaa !98
  br label %for.cond, !dbg !928, !llvm.loop !929

cleanup324:                                       ; preds = %do.end284, %cleanup149, %if.end41, %if.end21
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 4, ptr %keypartbits) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 8, ptr %Map) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 8, ptr %keypart) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 8, ptr %newnodes) #7, !dbg !932
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #7, !dbg !932
  %273 = load ptr, ptr %retval, align 8, !dbg !932
  ret ptr %273, !dbg !932
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @HAMT_search(ptr noundef %hamt, ptr noundef %str) #0 !dbg !933 {
entry:
  %retval = alloca ptr, align 8
  %hamt.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %key = alloca i64, align 8
  %keypart = alloca i64, align 8
  %Map = alloca i64, align 8
  %keypartbits = alloca i32, align 4
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hamt, ptr %hamt.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %hamt.addr, metadata !937, metadata !DIExpression()), !dbg !945
  store ptr %str, ptr %str.addr, align 8, !tbaa !98
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !938, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #7, !dbg !947
  tail call void @llvm.dbg.declare(metadata ptr %node, metadata !939, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #7, !dbg !949
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !940, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 8, ptr %keypart) #7, !dbg !949
  tail call void @llvm.dbg.declare(metadata ptr %keypart, metadata !941, metadata !DIExpression()), !dbg !951
  call void @llvm.lifetime.start.p0(i64 8, ptr %Map) #7, !dbg !949
  tail call void @llvm.dbg.declare(metadata ptr %Map, metadata !942, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 4, ptr %keypartbits) #7, !dbg !953
  tail call void @llvm.dbg.declare(metadata ptr %keypartbits, metadata !943, metadata !DIExpression()), !dbg !954
  store i32 0, ptr %keypartbits, align 4, !dbg !954, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #7, !dbg !955
  tail call void @llvm.dbg.declare(metadata ptr %level, metadata !944, metadata !DIExpression()), !dbg !956
  store i32 0, ptr %level, align 4, !dbg !956, !tbaa !93
  %0 = load ptr, ptr %hamt.addr, align 8, !dbg !957, !tbaa !98
  %HashKey = getelementptr inbounds %struct.HAMT, ptr %0, i32 0, i32 3, !dbg !958
  %1 = load ptr, ptr %HashKey, align 8, !dbg !958, !tbaa !158
  %2 = load ptr, ptr %str.addr, align 8, !dbg !959, !tbaa !98
  %call = call i64 %1(ptr noundef %2), !dbg !957
  store i64 %call, ptr %key, align 8, !dbg !960, !tbaa !194
  %3 = load i64, ptr %key, align 8, !dbg !961, !tbaa !194
  %and = and i64 %3, 31, !dbg !962
  store i64 %and, ptr %keypart, align 8, !dbg !963, !tbaa !194
  %4 = load ptr, ptr %hamt.addr, align 8, !dbg !964, !tbaa !98
  %root = getelementptr inbounds %struct.HAMT, ptr %4, i32 0, i32 1, !dbg !965
  %5 = load ptr, ptr %root, align 8, !dbg !965, !tbaa !117
  %6 = load i64, ptr %keypart, align 8, !dbg !966, !tbaa !194
  %arrayidx = getelementptr inbounds %struct.HAMTNode, ptr %5, i64 %6, !dbg !964
  store ptr %arrayidx, ptr %node, align 8, !dbg !967, !tbaa !98
  %7 = load ptr, ptr %node, align 8, !dbg !968, !tbaa !98
  %BaseValue = getelementptr inbounds %struct.HAMTNode, ptr %7, i32 0, i32 1, !dbg !970
  %8 = load i64, ptr %BaseValue, align 8, !dbg !970, !tbaa !139
  %tobool = icmp ne i64 %8, 0, !dbg !968
  br i1 %tobool, label %if.end, label %if.then, !dbg !971

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !973

for.cond:                                         ; preds = %do.end, %if.end
  %9 = load ptr, ptr %node, align 8, !dbg !974, !tbaa !98
  %BaseValue1 = getelementptr inbounds %struct.HAMTNode, ptr %9, i32 0, i32 1, !dbg !974
  %10 = load i64, ptr %BaseValue1, align 8, !dbg !974, !tbaa !139
  %and2 = and i64 %10, 1, !dbg !974
  %tobool3 = icmp ne i64 %and2, 0, !dbg !974
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !979

if.then4:                                         ; preds = %for.cond
  %11 = load ptr, ptr %node, align 8, !dbg !980, !tbaa !98
  %BitMapKey = getelementptr inbounds %struct.HAMTNode, ptr %11, i32 0, i32 0, !dbg !983
  %12 = load i64, ptr %BitMapKey, align 8, !dbg !983, !tbaa !131
  %13 = load i64, ptr %key, align 8, !dbg !984, !tbaa !194
  %cmp = icmp eq i64 %12, %13, !dbg !985
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !986

land.lhs.true:                                    ; preds = %if.then4
  %14 = load ptr, ptr %hamt.addr, align 8, !dbg !987, !tbaa !98
  %CmpKey = getelementptr inbounds %struct.HAMT, ptr %14, i32 0, i32 5, !dbg !988
  %15 = load ptr, ptr %CmpKey, align 8, !dbg !988, !tbaa !166
  %16 = load ptr, ptr %node, align 8, !dbg !989, !tbaa !98
  %BaseValue5 = getelementptr inbounds %struct.HAMTNode, ptr %16, i32 0, i32 1, !dbg !990
  %17 = load i64, ptr %BaseValue5, align 8, !dbg !990, !tbaa !139
  %18 = inttoptr i64 %17 to ptr, !dbg !991
  %str6 = getelementptr inbounds %struct.HAMTEntry, ptr %18, i32 0, i32 1, !dbg !992
  %19 = load ptr, ptr %str6, align 8, !dbg !992, !tbaa !593
  %20 = load ptr, ptr %str.addr, align 8, !dbg !993, !tbaa !98
  %call7 = call i32 %15(ptr noundef %19, ptr noundef %20), !dbg !987
  %cmp8 = icmp eq i32 %call7, 0, !dbg !994
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !995

if.then9:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %node, align 8, !dbg !996, !tbaa !98
  %BaseValue10 = getelementptr inbounds %struct.HAMTNode, ptr %21, i32 0, i32 1, !dbg !997
  %22 = load i64, ptr %BaseValue10, align 8, !dbg !997, !tbaa !139
  %23 = inttoptr i64 %22 to ptr, !dbg !998
  %data = getelementptr inbounds %struct.HAMTEntry, ptr %23, i32 0, i32 2, !dbg !999
  %24 = load ptr, ptr %data, align 8, !dbg !999, !tbaa !375
  store ptr %24, ptr %retval, align 8, !dbg !1000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1000

if.else:                                          ; preds = %land.lhs.true, %if.then4
  store ptr null, ptr %retval, align 8, !dbg !1001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1001

if.end11:                                         ; preds = %for.cond
  %25 = load i32, ptr %keypartbits, align 4, !dbg !1002, !tbaa !93
  %add = add nsw i32 %25, 5, !dbg !1002
  store i32 %add, ptr %keypartbits, align 4, !dbg !1002, !tbaa !93
  %26 = load i32, ptr %keypartbits, align 4, !dbg !1003, !tbaa !93
  %cmp12 = icmp sgt i32 %26, 30, !dbg !1005
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !1006

if.then13:                                        ; preds = %if.end11
  %27 = load ptr, ptr %hamt.addr, align 8, !dbg !1007, !tbaa !98
  %ReHashKey = getelementptr inbounds %struct.HAMT, ptr %27, i32 0, i32 4, !dbg !1009
  %28 = load ptr, ptr %ReHashKey, align 8, !dbg !1009, !tbaa !162
  %29 = load ptr, ptr %str.addr, align 8, !dbg !1010, !tbaa !98
  %30 = load i32, ptr %level, align 4, !dbg !1011, !tbaa !93
  %call14 = call i64 %28(ptr noundef %29, i32 noundef %30), !dbg !1007
  store i64 %call14, ptr %key, align 8, !dbg !1012, !tbaa !194
  store i32 0, ptr %keypartbits, align 4, !dbg !1013, !tbaa !93
  br label %if.end15, !dbg !1014

if.end15:                                         ; preds = %if.then13, %if.end11
  %31 = load i64, ptr %key, align 8, !dbg !1015, !tbaa !194
  %32 = load i32, ptr %keypartbits, align 4, !dbg !1016, !tbaa !93
  %sh_prom = zext i32 %32 to i64, !dbg !1017
  %shr = lshr i64 %31, %sh_prom, !dbg !1017
  %and16 = and i64 %shr, 31, !dbg !1018
  store i64 %and16, ptr %keypart, align 8, !dbg !1019, !tbaa !194
  %33 = load ptr, ptr %node, align 8, !dbg !1020, !tbaa !98
  %BitMapKey17 = getelementptr inbounds %struct.HAMTNode, ptr %33, i32 0, i32 0, !dbg !1022
  %34 = load i64, ptr %BitMapKey17, align 8, !dbg !1022, !tbaa !131
  %35 = load i64, ptr %keypart, align 8, !dbg !1023, !tbaa !194
  %sh_prom18 = trunc i64 %35 to i32, !dbg !1024
  %shl = shl i32 1, %sh_prom18, !dbg !1024
  %conv = sext i32 %shl to i64, !dbg !1025
  %and19 = and i64 %34, %conv, !dbg !1026
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1026
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !1027

if.then21:                                        ; preds = %if.end15
  store ptr null, ptr %retval, align 8, !dbg !1028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1028

if.end22:                                         ; preds = %if.end15
  br label %do.body, !dbg !1029

do.body:                                          ; preds = %if.end22
  %36 = load ptr, ptr %node, align 8, !dbg !1030, !tbaa !98
  %BitMapKey23 = getelementptr inbounds %struct.HAMTNode, ptr %36, i32 0, i32 0, !dbg !1030
  %37 = load i64, ptr %BitMapKey23, align 8, !dbg !1030, !tbaa !131
  %38 = load i64, ptr %keypart, align 8, !dbg !1030, !tbaa !194
  %shl24 = shl i64 -1, %38, !dbg !1030
  %not = xor i64 %shl24, -1, !dbg !1030
  %and25 = and i64 %37, %not, !dbg !1030
  %and26 = and i64 %and25, 6148914691236517205, !dbg !1030
  %39 = load ptr, ptr %node, align 8, !dbg !1030, !tbaa !98
  %BitMapKey27 = getelementptr inbounds %struct.HAMTNode, ptr %39, i32 0, i32 0, !dbg !1030
  %40 = load i64, ptr %BitMapKey27, align 8, !dbg !1030, !tbaa !131
  %41 = load i64, ptr %keypart, align 8, !dbg !1030, !tbaa !194
  %shl28 = shl i64 -1, %41, !dbg !1030
  %not29 = xor i64 %shl28, -1, !dbg !1030
  %and30 = and i64 %40, %not29, !dbg !1030
  %shr31 = lshr i64 %and30, 1, !dbg !1030
  %and32 = and i64 %shr31, 6148914691236517205, !dbg !1030
  %add33 = add i64 %and26, %and32, !dbg !1030
  store i64 %add33, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %42 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %and34 = and i64 %42, 3689348814741910323, !dbg !1030
  %43 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %shr35 = lshr i64 %43, 2, !dbg !1030
  %and36 = and i64 %shr35, 3689348814741910323, !dbg !1030
  %add37 = add i64 %and34, %and36, !dbg !1030
  store i64 %add37, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %44 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %and38 = and i64 %44, 1085102592571150095, !dbg !1030
  %45 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %shr39 = lshr i64 %45, 4, !dbg !1030
  %and40 = and i64 %shr39, 1085102592571150095, !dbg !1030
  %add41 = add i64 %and38, %and40, !dbg !1030
  store i64 %add41, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %46 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %and42 = and i64 %46, 71777214294589695, !dbg !1030
  %47 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %shr43 = lshr i64 %47, 8, !dbg !1030
  %and44 = and i64 %shr43, 71777214294589695, !dbg !1030
  %add45 = add i64 %and42, %and44, !dbg !1030
  store i64 %add45, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %48 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %and46 = and i64 %48, 281470681808895, !dbg !1030
  %49 = load i64, ptr %Map, align 8, !dbg !1030, !tbaa !194
  %shr47 = lshr i64 %49, 16, !dbg !1030
  %and48 = and i64 %shr47, 281470681808895, !dbg !1030
  %add49 = add i64 %and46, %and48, !dbg !1030
  store i64 %add49, ptr %Map, align 8, !dbg !1030, !tbaa !194
  br label %do.cond, !dbg !1030

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1030

do.end:                                           ; preds = %do.cond
  %50 = load i64, ptr %Map, align 8, !dbg !1032, !tbaa !194
  %and50 = and i64 %50, 31, !dbg !1032
  store i64 %and50, ptr %Map, align 8, !dbg !1032, !tbaa !194
  %51 = load i32, ptr %level, align 4, !dbg !1033, !tbaa !93
  %inc = add nsw i32 %51, 1, !dbg !1033
  store i32 %inc, ptr %level, align 4, !dbg !1033, !tbaa !93
  %52 = load ptr, ptr %node, align 8, !dbg !1034, !tbaa !98
  %BaseValue51 = getelementptr inbounds %struct.HAMTNode, ptr %52, i32 0, i32 1, !dbg !1034
  %53 = load i64, ptr %BaseValue51, align 8, !dbg !1034, !tbaa !139
  %or = or i64 %53, 1, !dbg !1034
  %xor = xor i64 %or, 1, !dbg !1034
  %54 = inttoptr i64 %xor to ptr, !dbg !1034
  %55 = load i64, ptr %Map, align 8, !dbg !1035, !tbaa !194
  %arrayidx52 = getelementptr inbounds %struct.HAMTNode, ptr %54, i64 %55, !dbg !1036
  store ptr %arrayidx52, ptr %node, align 8, !dbg !1037, !tbaa !98
  br label %for.cond, !dbg !1038, !llvm.loop !1039

cleanup:                                          ; preds = %if.then21, %if.else, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #7, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 4, ptr %keypartbits) #7, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %Map) #7, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %keypart) #7, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #7, !dbg !1042
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #7, !dbg !1042
  %56 = load ptr, ptr %retval, align 8, !dbg !1042
  ret ptr %56, !dbg !1042
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1043 ptr @__ctype_tolower_loc() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "libyasm/hamt.c", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "05cf2fe165661a55abc1330ff3d79bf0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 39)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 60)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !23, globals: !49, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24, !25, !28, !27, !42, !48}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !26, line: 90, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAMTEntry", file: !30, line: 40, baseType: !31)
!30 = !DIFile(filename: "libyasm/hamt.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "ee0aefbcc035f779a3961203e3690615")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HAMTEntry", file: !2, line: 40, size: 192, elements: !32)
!32 = !{!33, !38, !41}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !2, line: 41, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !2, line: 41, size: 64, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !34, file: !2, line: 41, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !31, file: !2, line: 42, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !2, line: 43, baseType: !24, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAMTNode", file: !2, line: 49, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HAMTNode", file: !2, line: 46, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "BitMapKey", scope: !44, file: !2, line: 47, baseType: !27, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "BaseValue", scope: !44, file: !2, line: 48, baseType: !25, size: 64, offset: 64)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !{!0, !7, !12, !17}
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 8, !"PIC Level", i32 2}
!54 = !{i32 7, !"PIE Level", i32 2}
!55 = !{i32 7, !"uwtable", i32 2}
!56 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!57 = distinct !DISubprogram(name: "HAMT_create", scope: !2, file: !2, line: 117, type: !58, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !88)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !48, !72}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAMT", file: !30, line: 38, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HAMT", file: !2, line: 51, size: 448, elements: !63)
!63 = !{!64, !70, !71, !76, !80, !84}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !62, file: !2, line: 52, baseType: !65, size: 128)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HAMTEntryHead", file: !2, line: 52, size: 128, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !65, file: !2, line: 52, baseType: !37, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !65, file: !2, line: 52, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !62, file: !2, line: 53, baseType: !42, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "error_func", scope: !62, file: !2, line: 54, baseType: !72, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !39, !75, !39}
!75 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "HashKey", scope: !62, file: !2, line: 56, baseType: !77, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!27, !39}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ReHashKey", scope: !62, file: !2, line: 57, baseType: !81, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!27, !39, !48}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "CmpKey", scope: !62, file: !2, line: 58, baseType: !85, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!48, !39, !39}
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(name: "nocase", arg: 1, scope: !57, file: !2, line: 117, type: !48)
!90 = !DILocalVariable(name: "error_func", arg: 2, scope: !57, file: !2, line: 117, type: !72)
!91 = !DILocalVariable(name: "hamt", scope: !57, file: !2, line: 120, type: !60)
!92 = !DILocalVariable(name: "i", scope: !57, file: !2, line: 121, type: !48)
!93 = !{!94, !94, i64 0}
!94 = !{!"int", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !DILocation(line: 117, column: 17, scope: !57)
!98 = !{!99, !99, i64 0}
!99 = !{!"any pointer", !95, i64 0}
!100 = !DILocation(line: 117, column: 44, scope: !57)
!101 = !DILocation(line: 120, column: 15, scope: !57)
!102 = !DILocation(line: 120, column: 21, scope: !57)
!103 = !DILocation(line: 120, column: 28, scope: !57)
!104 = !DILocation(line: 121, column: 5, scope: !57)
!105 = !DILocation(line: 121, column: 9, scope: !57)
!106 = !DILocation(line: 123, column: 5, scope: !57)
!107 = !DILocation(line: 123, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !57, file: !2, line: 123, column: 5)
!109 = !{!110, !99, i64 0}
!110 = !{!"HAMT", !111, i64 0, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48}
!111 = !{!"HAMTEntryHead", !99, i64 0, !99, i64 8}
!112 = !{!110, !99, i64 8}
!113 = !DILocation(line: 124, column: 18, scope: !57)
!114 = !DILocation(line: 124, column: 5, scope: !57)
!115 = !DILocation(line: 124, column: 11, scope: !57)
!116 = !DILocation(line: 124, column: 16, scope: !57)
!117 = !{!110, !99, i64 16}
!118 = !DILocation(line: 126, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !57, file: !2, line: 126, column: 5)
!120 = !DILocation(line: 126, column: 10, scope: !119)
!121 = !DILocation(line: 126, column: 15, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !2, line: 126, column: 5)
!123 = !DILocation(line: 126, column: 16, scope: !122)
!124 = !DILocation(line: 126, column: 5, scope: !119)
!125 = !DILocation(line: 127, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !2, line: 126, column: 26)
!127 = !DILocation(line: 127, column: 15, scope: !126)
!128 = !DILocation(line: 127, column: 20, scope: !126)
!129 = !DILocation(line: 127, column: 23, scope: !126)
!130 = !DILocation(line: 127, column: 33, scope: !126)
!131 = !{!132, !133, i64 0}
!132 = !{!"HAMTNode", !133, i64 0, !133, i64 8}
!133 = !{!"long", !95, i64 0}
!134 = !DILocation(line: 128, column: 9, scope: !126)
!135 = !DILocation(line: 128, column: 15, scope: !126)
!136 = !DILocation(line: 128, column: 20, scope: !126)
!137 = !DILocation(line: 128, column: 23, scope: !126)
!138 = !DILocation(line: 128, column: 33, scope: !126)
!139 = !{!132, !133, i64 8}
!140 = !DILocation(line: 129, column: 5, scope: !126)
!141 = !DILocation(line: 126, column: 22, scope: !122)
!142 = !DILocation(line: 126, column: 5, scope: !122)
!143 = distinct !{!143, !124, !144, !145}
!144 = !DILocation(line: 129, column: 5, scope: !119)
!145 = !{!"llvm.loop.mustprogress"}
!146 = !DILocation(line: 131, column: 24, scope: !57)
!147 = !DILocation(line: 131, column: 5, scope: !57)
!148 = !DILocation(line: 131, column: 11, scope: !57)
!149 = !DILocation(line: 131, column: 22, scope: !57)
!150 = !{!110, !99, i64 24}
!151 = !DILocation(line: 132, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !57, file: !2, line: 132, column: 9)
!153 = !DILocation(line: 132, column: 9, scope: !57)
!154 = !DILocation(line: 133, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !2, line: 132, column: 17)
!156 = !DILocation(line: 133, column: 15, scope: !155)
!157 = !DILocation(line: 133, column: 23, scope: !155)
!158 = !{!110, !99, i64 32}
!159 = !DILocation(line: 134, column: 9, scope: !155)
!160 = !DILocation(line: 134, column: 15, scope: !155)
!161 = !DILocation(line: 134, column: 25, scope: !155)
!162 = !{!110, !99, i64 40}
!163 = !DILocation(line: 135, column: 9, scope: !155)
!164 = !DILocation(line: 135, column: 15, scope: !155)
!165 = !DILocation(line: 135, column: 22, scope: !155)
!166 = !{!110, !99, i64 48}
!167 = !DILocation(line: 136, column: 5, scope: !155)
!168 = !DILocation(line: 137, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !152, file: !2, line: 136, column: 12)
!170 = !DILocation(line: 137, column: 15, scope: !169)
!171 = !DILocation(line: 137, column: 23, scope: !169)
!172 = !DILocation(line: 138, column: 9, scope: !169)
!173 = !DILocation(line: 138, column: 15, scope: !169)
!174 = !DILocation(line: 138, column: 25, scope: !169)
!175 = !DILocation(line: 139, column: 9, scope: !169)
!176 = !DILocation(line: 139, column: 15, scope: !169)
!177 = !DILocation(line: 139, column: 22, scope: !169)
!178 = !DILocation(line: 142, column: 12, scope: !57)
!179 = !DILocation(line: 143, column: 1, scope: !57)
!180 = !DILocation(line: 142, column: 5, scope: !57)
!181 = distinct !DISubprogram(name: "HashKey_nocase", scope: !2, file: !2, line: 99, type: !78, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DILocalVariable(name: "key", arg: 1, scope: !181, file: !2, line: 99, type: !39)
!184 = !DILocalVariable(name: "a", scope: !181, file: !2, line: 101, type: !27)
!185 = !DILocalVariable(name: "b", scope: !181, file: !2, line: 101, type: !27)
!186 = !DILocalVariable(name: "vHash", scope: !181, file: !2, line: 101, type: !27)
!187 = !DILocalVariable(name: "__res", scope: !188, file: !2, line: 103, type: !48)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 103, column: 27)
!189 = distinct !DILexicalBlock(scope: !190, file: !2, line: 102, column: 5)
!190 = distinct !DILexicalBlock(scope: !181, file: !2, line: 102, column: 5)
!191 = !DILocation(line: 99, column: 28, scope: !181)
!192 = !DILocation(line: 101, column: 5, scope: !181)
!193 = !DILocation(line: 101, column: 19, scope: !181)
!194 = !{!133, !133, i64 0}
!195 = !DILocation(line: 101, column: 28, scope: !181)
!196 = !DILocation(line: 101, column: 37, scope: !181)
!197 = !DILocation(line: 102, column: 15, scope: !190)
!198 = !DILocation(line: 102, column: 10, scope: !190)
!199 = !DILocation(line: 102, column: 20, scope: !189)
!200 = !DILocation(line: 102, column: 19, scope: !189)
!201 = !{!95, !95, i64 0}
!202 = !DILocation(line: 102, column: 5, scope: !190)
!203 = !DILocation(line: 103, column: 17, scope: !189)
!204 = !DILocation(line: 103, column: 19, scope: !189)
!205 = !DILocation(line: 103, column: 18, scope: !189)
!206 = !DILocation(line: 103, column: 27, scope: !188)
!207 = !DILocation(line: 103, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !188, file: !2, line: 103, column: 27)
!209 = !DILocation(line: 103, column: 27, scope: !189)
!210 = !DILocation(line: 103, column: 25, scope: !189)
!211 = !DILocation(line: 103, column: 15, scope: !189)
!212 = !DILocation(line: 103, column: 9, scope: !189)
!213 = !DILocation(line: 102, column: 28, scope: !189)
!214 = !DILocation(line: 102, column: 35, scope: !189)
!215 = !DILocation(line: 102, column: 33, scope: !189)
!216 = !DILocation(line: 102, column: 5, scope: !189)
!217 = distinct !{!217, !202, !218, !145}
!218 = !DILocation(line: 103, column: 27, scope: !190)
!219 = !DILocation(line: 104, column: 12, scope: !181)
!220 = !DILocation(line: 105, column: 1, scope: !181)
!221 = !DILocation(line: 104, column: 5, scope: !181)
!222 = distinct !DISubprogram(name: "ReHashKey_nocase", scope: !2, file: !2, line: 108, type: !82, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !223)
!223 = !{!224, !225, !226, !227, !228, !229}
!224 = !DILocalVariable(name: "key", arg: 1, scope: !222, file: !2, line: 108, type: !39)
!225 = !DILocalVariable(name: "Level", arg: 2, scope: !222, file: !2, line: 108, type: !48)
!226 = !DILocalVariable(name: "a", scope: !222, file: !2, line: 110, type: !27)
!227 = !DILocalVariable(name: "b", scope: !222, file: !2, line: 110, type: !27)
!228 = !DILocalVariable(name: "vHash", scope: !222, file: !2, line: 110, type: !27)
!229 = !DILocalVariable(name: "__res", scope: !230, file: !2, line: 112, type: !48)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 112, column: 48)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 111, column: 5)
!232 = distinct !DILexicalBlock(scope: !222, file: !2, line: 111, column: 5)
!233 = !DILocation(line: 108, column: 30, scope: !222)
!234 = !DILocation(line: 108, column: 39, scope: !222)
!235 = !DILocation(line: 110, column: 5, scope: !222)
!236 = !DILocation(line: 110, column: 19, scope: !222)
!237 = !DILocation(line: 110, column: 28, scope: !222)
!238 = !DILocation(line: 110, column: 37, scope: !222)
!239 = !DILocation(line: 111, column: 15, scope: !232)
!240 = !DILocation(line: 111, column: 10, scope: !232)
!241 = !DILocation(line: 111, column: 20, scope: !231)
!242 = !DILocation(line: 111, column: 19, scope: !231)
!243 = !DILocation(line: 111, column: 5, scope: !232)
!244 = !DILocation(line: 112, column: 17, scope: !231)
!245 = !DILocation(line: 112, column: 19, scope: !231)
!246 = !DILocation(line: 112, column: 18, scope: !231)
!247 = !DILocation(line: 112, column: 40, scope: !231)
!248 = !DILocation(line: 112, column: 25, scope: !231)
!249 = !DILocation(line: 112, column: 24, scope: !231)
!250 = !DILocation(line: 112, column: 48, scope: !230)
!251 = !DILocation(line: 112, column: 48, scope: !252)
!252 = distinct !DILexicalBlock(scope: !230, file: !2, line: 112, column: 48)
!253 = !DILocation(line: 112, column: 48, scope: !231)
!254 = !DILocation(line: 112, column: 46, scope: !231)
!255 = !DILocation(line: 112, column: 15, scope: !231)
!256 = !DILocation(line: 112, column: 9, scope: !231)
!257 = !DILocation(line: 111, column: 28, scope: !231)
!258 = !DILocation(line: 111, column: 35, scope: !231)
!259 = !DILocation(line: 111, column: 33, scope: !231)
!260 = !DILocation(line: 111, column: 5, scope: !231)
!261 = distinct !{!261, !243, !262, !145}
!262 = !DILocation(line: 112, column: 48, scope: !232)
!263 = !DILocation(line: 113, column: 12, scope: !222)
!264 = !DILocation(line: 114, column: 1, scope: !222)
!265 = !DILocation(line: 113, column: 5, scope: !222)
!266 = distinct !DISubprogram(name: "HashKey", scope: !2, file: !2, line: 81, type: !78, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DILocalVariable(name: "key", arg: 1, scope: !266, file: !2, line: 81, type: !39)
!269 = !DILocalVariable(name: "a", scope: !266, file: !2, line: 83, type: !27)
!270 = !DILocalVariable(name: "b", scope: !266, file: !2, line: 83, type: !27)
!271 = !DILocalVariable(name: "vHash", scope: !266, file: !2, line: 83, type: !27)
!272 = !DILocation(line: 81, column: 21, scope: !266)
!273 = !DILocation(line: 83, column: 5, scope: !266)
!274 = !DILocation(line: 83, column: 19, scope: !266)
!275 = !DILocation(line: 83, column: 28, scope: !266)
!276 = !DILocation(line: 83, column: 37, scope: !266)
!277 = !DILocation(line: 84, column: 15, scope: !278)
!278 = distinct !DILexicalBlock(scope: !266, file: !2, line: 84, column: 5)
!279 = !DILocation(line: 84, column: 10, scope: !278)
!280 = !DILocation(line: 84, column: 20, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !2, line: 84, column: 5)
!282 = !DILocation(line: 84, column: 19, scope: !281)
!283 = !DILocation(line: 84, column: 5, scope: !278)
!284 = !DILocation(line: 85, column: 17, scope: !281)
!285 = !DILocation(line: 85, column: 19, scope: !281)
!286 = !DILocation(line: 85, column: 18, scope: !281)
!287 = !DILocation(line: 85, column: 28, scope: !281)
!288 = !DILocation(line: 85, column: 27, scope: !281)
!289 = !DILocation(line: 85, column: 25, scope: !281)
!290 = !DILocation(line: 85, column: 15, scope: !281)
!291 = !DILocation(line: 85, column: 9, scope: !281)
!292 = !DILocation(line: 84, column: 28, scope: !281)
!293 = !DILocation(line: 84, column: 35, scope: !281)
!294 = !DILocation(line: 84, column: 33, scope: !281)
!295 = !DILocation(line: 84, column: 5, scope: !281)
!296 = distinct !{!296, !283, !297, !145}
!297 = !DILocation(line: 85, column: 28, scope: !278)
!298 = !DILocation(line: 86, column: 12, scope: !266)
!299 = !DILocation(line: 87, column: 1, scope: !266)
!300 = !DILocation(line: 86, column: 5, scope: !266)
!301 = distinct !DISubprogram(name: "ReHashKey", scope: !2, file: !2, line: 90, type: !82, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !302)
!302 = !{!303, !304, !305, !306, !307}
!303 = !DILocalVariable(name: "key", arg: 1, scope: !301, file: !2, line: 90, type: !39)
!304 = !DILocalVariable(name: "Level", arg: 2, scope: !301, file: !2, line: 90, type: !48)
!305 = !DILocalVariable(name: "a", scope: !301, file: !2, line: 92, type: !27)
!306 = !DILocalVariable(name: "b", scope: !301, file: !2, line: 92, type: !27)
!307 = !DILocalVariable(name: "vHash", scope: !301, file: !2, line: 92, type: !27)
!308 = !DILocation(line: 90, column: 23, scope: !301)
!309 = !DILocation(line: 90, column: 32, scope: !301)
!310 = !DILocation(line: 92, column: 5, scope: !301)
!311 = !DILocation(line: 92, column: 19, scope: !301)
!312 = !DILocation(line: 92, column: 28, scope: !301)
!313 = !DILocation(line: 92, column: 37, scope: !301)
!314 = !DILocation(line: 93, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !301, file: !2, line: 93, column: 5)
!316 = !DILocation(line: 93, column: 10, scope: !315)
!317 = !DILocation(line: 93, column: 20, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !2, line: 93, column: 5)
!319 = !DILocation(line: 93, column: 19, scope: !318)
!320 = !DILocation(line: 93, column: 5, scope: !315)
!321 = !DILocation(line: 94, column: 17, scope: !318)
!322 = !DILocation(line: 94, column: 19, scope: !318)
!323 = !DILocation(line: 94, column: 18, scope: !318)
!324 = !DILocation(line: 94, column: 40, scope: !318)
!325 = !DILocation(line: 94, column: 25, scope: !318)
!326 = !DILocation(line: 94, column: 24, scope: !318)
!327 = !DILocation(line: 94, column: 49, scope: !318)
!328 = !DILocation(line: 94, column: 48, scope: !318)
!329 = !DILocation(line: 94, column: 46, scope: !318)
!330 = !DILocation(line: 94, column: 15, scope: !318)
!331 = !DILocation(line: 94, column: 9, scope: !318)
!332 = !DILocation(line: 93, column: 28, scope: !318)
!333 = !DILocation(line: 93, column: 35, scope: !318)
!334 = !DILocation(line: 93, column: 33, scope: !318)
!335 = !DILocation(line: 93, column: 5, scope: !318)
!336 = distinct !{!336, !320, !337, !145}
!337 = !DILocation(line: 94, column: 49, scope: !315)
!338 = !DILocation(line: 95, column: 12, scope: !301)
!339 = !DILocation(line: 96, column: 1, scope: !301)
!340 = !DILocation(line: 95, column: 5, scope: !301)
!341 = distinct !DISubprogram(name: "HAMT_destroy", scope: !2, file: !2, line: 164, type: !342, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !347)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !60, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !24}
!347 = !{!348, !349, !350, !351}
!348 = !DILocalVariable(name: "hamt", arg: 1, scope: !341, file: !2, line: 164, type: !60)
!349 = !DILocalVariable(name: "deletefunc", arg: 2, scope: !341, file: !2, line: 164, type: !344)
!350 = !DILocalVariable(name: "i", scope: !341, file: !2, line: 166, type: !48)
!351 = !DILocalVariable(name: "entry", scope: !352, file: !2, line: 170, type: !28)
!352 = distinct !DILexicalBlock(scope: !341, file: !2, line: 169, column: 43)
!353 = !DILocation(line: 164, column: 20, scope: !341)
!354 = !DILocation(line: 164, column: 33, scope: !341)
!355 = !DILocation(line: 166, column: 5, scope: !341)
!356 = !DILocation(line: 166, column: 9, scope: !341)
!357 = !DILocation(line: 169, column: 5, scope: !341)
!358 = !DILocation(line: 169, column: 13, scope: !341)
!359 = !DILocation(line: 169, column: 12, scope: !341)
!360 = !DILocation(line: 170, column: 9, scope: !352)
!361 = !DILocation(line: 170, column: 20, scope: !352)
!362 = !DILocation(line: 171, column: 17, scope: !352)
!363 = !DILocation(line: 171, column: 15, scope: !352)
!364 = !DILocation(line: 172, column: 9, scope: !352)
!365 = !DILocation(line: 172, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 172, column: 9)
!367 = distinct !DILexicalBlock(scope: !352, file: !2, line: 172, column: 9)
!368 = !{!369, !99, i64 0}
!369 = !{!"HAMTEntry", !370, i64 0, !99, i64 8, !99, i64 16}
!370 = !{!"", !99, i64 0}
!371 = !DILocation(line: 172, column: 9, scope: !367)
!372 = !DILocation(line: 173, column: 9, scope: !352)
!373 = !DILocation(line: 173, column: 20, scope: !352)
!374 = !DILocation(line: 173, column: 27, scope: !352)
!375 = !{!369, !99, i64 16}
!376 = !DILocation(line: 174, column: 9, scope: !352)
!377 = !DILocation(line: 174, column: 20, scope: !352)
!378 = !DILocation(line: 175, column: 5, scope: !341)
!379 = distinct !{!379, !357, !378, !145}
!380 = !DILocation(line: 178, column: 11, scope: !381)
!381 = distinct !DILexicalBlock(scope: !341, file: !2, line: 178, column: 5)
!382 = !DILocation(line: 178, column: 10, scope: !381)
!383 = !DILocation(line: 178, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !2, line: 178, column: 5)
!385 = !DILocation(line: 178, column: 16, scope: !384)
!386 = !DILocation(line: 178, column: 5, scope: !381)
!387 = !DILocation(line: 179, column: 27, scope: !384)
!388 = !DILocation(line: 179, column: 33, scope: !384)
!389 = !DILocation(line: 179, column: 38, scope: !384)
!390 = !DILocation(line: 179, column: 9, scope: !384)
!391 = !DILocation(line: 178, column: 22, scope: !384)
!392 = !DILocation(line: 178, column: 5, scope: !384)
!393 = distinct !{!393, !386, !394, !145}
!394 = !DILocation(line: 179, column: 40, scope: !381)
!395 = !DILocation(line: 181, column: 5, scope: !341)
!396 = !DILocation(line: 181, column: 16, scope: !341)
!397 = !DILocation(line: 181, column: 22, scope: !341)
!398 = !DILocation(line: 182, column: 5, scope: !341)
!399 = !DILocation(line: 182, column: 16, scope: !341)
!400 = !DILocation(line: 183, column: 1, scope: !341)
!401 = distinct !DISubprogram(name: "HAMT_delete_trie", scope: !2, file: !2, line: 146, type: !402, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !42}
!404 = !{!405, !406, !409}
!405 = !DILocalVariable(name: "node", arg: 1, scope: !401, file: !2, line: 146, type: !42)
!406 = !DILocalVariable(name: "i", scope: !407, file: !2, line: 149, type: !27)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 148, column: 26)
!408 = distinct !DILexicalBlock(scope: !401, file: !2, line: 148, column: 9)
!409 = !DILocalVariable(name: "Size", scope: !407, file: !2, line: 149, type: !27)
!410 = !DILocation(line: 146, column: 28, scope: !401)
!411 = !DILocation(line: 148, column: 9, scope: !408)
!412 = !DILocation(line: 148, column: 9, scope: !401)
!413 = !DILocation(line: 149, column: 9, scope: !407)
!414 = !DILocation(line: 149, column: 23, scope: !407)
!415 = !DILocation(line: 149, column: 26, scope: !407)
!416 = !DILocation(line: 152, column: 9, scope: !407)
!417 = !DILocation(line: 152, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !407, file: !2, line: 152, column: 9)
!419 = !DILocation(line: 153, column: 14, scope: !407)
!420 = !DILocation(line: 154, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !407, file: !2, line: 154, column: 13)
!422 = !DILocation(line: 154, column: 18, scope: !421)
!423 = !DILocation(line: 154, column: 13, scope: !407)
!424 = !DILocation(line: 155, column: 18, scope: !421)
!425 = !DILocation(line: 155, column: 13, scope: !421)
!426 = !DILocation(line: 157, column: 15, scope: !427)
!427 = distinct !DILexicalBlock(scope: !407, file: !2, line: 157, column: 9)
!428 = !DILocation(line: 157, column: 14, scope: !427)
!429 = !DILocation(line: 157, column: 19, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !2, line: 157, column: 9)
!431 = !DILocation(line: 157, column: 21, scope: !430)
!432 = !DILocation(line: 157, column: 20, scope: !430)
!433 = !DILocation(line: 157, column: 9, scope: !427)
!434 = !DILocation(line: 158, column: 32, scope: !430)
!435 = !DILocation(line: 158, column: 50, scope: !430)
!436 = !DILocation(line: 158, column: 31, scope: !430)
!437 = !DILocation(line: 158, column: 13, scope: !430)
!438 = !DILocation(line: 157, column: 28, scope: !430)
!439 = !DILocation(line: 157, column: 9, scope: !430)
!440 = distinct !{!440, !433, !441, !145}
!441 = !DILocation(line: 158, column: 52, scope: !427)
!442 = !DILocation(line: 159, column: 9, scope: !407)
!443 = !DILocation(line: 159, column: 20, scope: !407)
!444 = !DILocation(line: 160, column: 5, scope: !408)
!445 = !DILocation(line: 160, column: 5, scope: !407)
!446 = !DILocation(line: 161, column: 1, scope: !401)
!447 = distinct !DISubprogram(name: "HAMT_traverse", scope: !2, file: !2, line: 186, type: !448, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !453)
!448 = !DISubroutineType(types: !449)
!449 = !{!48, !60, !24, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!48, !24, !24}
!453 = !{!454, !455, !456, !457, !458}
!454 = !DILocalVariable(name: "hamt", arg: 1, scope: !447, file: !2, line: 186, type: !60)
!455 = !DILocalVariable(name: "d", arg: 2, scope: !447, file: !2, line: 186, type: !24)
!456 = !DILocalVariable(name: "func", arg: 3, scope: !447, file: !2, line: 187, type: !450)
!457 = !DILocalVariable(name: "entry", scope: !447, file: !2, line: 190, type: !28)
!458 = !DILocalVariable(name: "retval", scope: !459, file: !2, line: 192, type: !48)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 191, column: 49)
!460 = distinct !DILexicalBlock(scope: !461, file: !2, line: 191, column: 5)
!461 = distinct !DILexicalBlock(scope: !447, file: !2, line: 191, column: 5)
!462 = !DILocation(line: 186, column: 21, scope: !447)
!463 = !DILocation(line: 186, column: 33, scope: !447)
!464 = !DILocation(line: 187, column: 21, scope: !447)
!465 = !DILocation(line: 190, column: 5, scope: !447)
!466 = !DILocation(line: 190, column: 16, scope: !447)
!467 = !DILocation(line: 191, column: 5, scope: !461)
!468 = !DILocation(line: 191, column: 5, scope: !460)
!469 = !DILocation(line: 192, column: 9, scope: !459)
!470 = !DILocation(line: 192, column: 13, scope: !459)
!471 = !DILocation(line: 192, column: 22, scope: !459)
!472 = !DILocation(line: 192, column: 27, scope: !459)
!473 = !DILocation(line: 192, column: 34, scope: !459)
!474 = !DILocation(line: 192, column: 40, scope: !459)
!475 = !DILocation(line: 193, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !459, file: !2, line: 193, column: 13)
!477 = !DILocation(line: 193, column: 20, scope: !476)
!478 = !DILocation(line: 193, column: 13, scope: !459)
!479 = !DILocation(line: 194, column: 20, scope: !476)
!480 = !DILocation(line: 194, column: 13, scope: !476)
!481 = !DILocation(line: 195, column: 5, scope: !460)
!482 = !DILocation(line: 195, column: 5, scope: !459)
!483 = distinct !{!483, !467, !484, !145}
!484 = !DILocation(line: 195, column: 5, scope: !461)
!485 = !DILocation(line: 196, column: 5, scope: !447)
!486 = !DILocation(line: 197, column: 1, scope: !447)
!487 = distinct !DISubprogram(name: "HAMT_first", scope: !2, file: !2, line: 200, type: !488, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !494)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !492}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!494 = !{!495}
!495 = !DILocalVariable(name: "hamt", arg: 1, scope: !487, file: !2, line: 200, type: !492)
!496 = !DILocation(line: 200, column: 24, scope: !487)
!497 = !DILocation(line: 202, column: 12, scope: !487)
!498 = !DILocation(line: 202, column: 5, scope: !487)
!499 = distinct !DISubprogram(name: "HAMT_next", scope: !2, file: !2, line: 206, type: !500, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !502)
!500 = !DISubroutineType(types: !501)
!501 = !{!490, !490}
!502 = !{!503}
!503 = !DILocalVariable(name: "prev", arg: 1, scope: !499, file: !2, line: 206, type: !490)
!504 = !DILocation(line: 206, column: 28, scope: !499)
!505 = !DILocation(line: 208, column: 12, scope: !499)
!506 = !DILocation(line: 208, column: 5, scope: !499)
!507 = distinct !DISubprogram(name: "HAMTEntry_get_data", scope: !2, file: !2, line: 212, type: !508, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!24, !490}
!510 = !{!511}
!511 = !DILocalVariable(name: "entry", arg: 1, scope: !507, file: !2, line: 212, type: !490)
!512 = !DILocation(line: 212, column: 37, scope: !507)
!513 = !DILocation(line: 214, column: 12, scope: !507)
!514 = !DILocation(line: 214, column: 19, scope: !507)
!515 = !DILocation(line: 214, column: 5, scope: !507)
!516 = distinct !DISubprogram(name: "HAMT_insert", scope: !2, file: !2, line: 219, type: !517, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !520)
!517 = !DISubroutineType(types: !518)
!518 = !{!24, !60, !39, !24, !519, !344}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !542, !546}
!521 = !DILocalVariable(name: "hamt", arg: 1, scope: !516, file: !2, line: 219, type: !60)
!522 = !DILocalVariable(name: "str", arg: 2, scope: !516, file: !2, line: 219, type: !39)
!523 = !DILocalVariable(name: "data", arg: 3, scope: !516, file: !2, line: 219, type: !24)
!524 = !DILocalVariable(name: "replace", arg: 4, scope: !516, file: !2, line: 219, type: !519)
!525 = !DILocalVariable(name: "deletefunc", arg: 5, scope: !516, file: !2, line: 220, type: !344)
!526 = !DILocalVariable(name: "node", scope: !516, file: !2, line: 222, type: !42)
!527 = !DILocalVariable(name: "newnodes", scope: !516, file: !2, line: 222, type: !42)
!528 = !DILocalVariable(name: "entry", scope: !516, file: !2, line: 223, type: !28)
!529 = !DILocalVariable(name: "key", scope: !516, file: !2, line: 224, type: !27)
!530 = !DILocalVariable(name: "keypart", scope: !516, file: !2, line: 224, type: !27)
!531 = !DILocalVariable(name: "Map", scope: !516, file: !2, line: 224, type: !27)
!532 = !DILocalVariable(name: "keypartbits", scope: !516, file: !2, line: 225, type: !48)
!533 = !DILocalVariable(name: "level", scope: !516, file: !2, line: 226, type: !48)
!534 = !DILocalVariable(name: "key2", scope: !535, file: !2, line: 261, type: !27)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 260, column: 20)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 248, column: 17)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 247, column: 33)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 247, column: 13)
!539 = distinct !DILexicalBlock(scope: !540, file: !2, line: 246, column: 14)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 246, column: 5)
!541 = distinct !DILexicalBlock(scope: !516, file: !2, line: 246, column: 5)
!542 = !DILocalVariable(name: "keypart2", scope: !543, file: !2, line: 264, type: !27)
!543 = distinct !DILexicalBlock(scope: !544, file: !2, line: 263, column: 26)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 263, column: 17)
!545 = distinct !DILexicalBlock(scope: !535, file: !2, line: 263, column: 17)
!546 = !DILocalVariable(name: "Size", scope: !547, file: !2, line: 331, type: !27)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 329, column: 48)
!548 = distinct !DILexicalBlock(scope: !539, file: !2, line: 329, column: 13)
!549 = !DILocation(line: 219, column: 19, scope: !516)
!550 = !DILocation(line: 219, column: 37, scope: !516)
!551 = !DILocation(line: 219, column: 48, scope: !516)
!552 = !DILocation(line: 219, column: 59, scope: !516)
!553 = !DILocation(line: 220, column: 20, scope: !516)
!554 = !DILocation(line: 222, column: 5, scope: !516)
!555 = !DILocation(line: 222, column: 15, scope: !516)
!556 = !DILocation(line: 222, column: 22, scope: !516)
!557 = !DILocation(line: 223, column: 5, scope: !516)
!558 = !DILocation(line: 223, column: 16, scope: !516)
!559 = !DILocation(line: 224, column: 5, scope: !516)
!560 = !DILocation(line: 224, column: 19, scope: !516)
!561 = !DILocation(line: 224, column: 24, scope: !516)
!562 = !DILocation(line: 224, column: 33, scope: !516)
!563 = !DILocation(line: 225, column: 5, scope: !516)
!564 = !DILocation(line: 225, column: 9, scope: !516)
!565 = !DILocation(line: 226, column: 5, scope: !516)
!566 = !DILocation(line: 226, column: 9, scope: !516)
!567 = !DILocation(line: 228, column: 11, scope: !516)
!568 = !DILocation(line: 228, column: 17, scope: !516)
!569 = !DILocation(line: 228, column: 25, scope: !516)
!570 = !DILocation(line: 228, column: 9, scope: !516)
!571 = !DILocation(line: 229, column: 15, scope: !516)
!572 = !DILocation(line: 229, column: 19, scope: !516)
!573 = !DILocation(line: 229, column: 13, scope: !516)
!574 = !DILocation(line: 230, column: 13, scope: !516)
!575 = !DILocation(line: 230, column: 19, scope: !516)
!576 = !DILocation(line: 230, column: 24, scope: !516)
!577 = !DILocation(line: 230, column: 10, scope: !516)
!578 = !DILocation(line: 232, column: 10, scope: !579)
!579 = distinct !DILexicalBlock(scope: !516, file: !2, line: 232, column: 9)
!580 = !DILocation(line: 232, column: 16, scope: !579)
!581 = !DILocation(line: 232, column: 9, scope: !516)
!582 = !DILocation(line: 233, column: 27, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !2, line: 232, column: 27)
!584 = !DILocation(line: 233, column: 9, scope: !583)
!585 = !DILocation(line: 233, column: 15, scope: !583)
!586 = !DILocation(line: 233, column: 25, scope: !583)
!587 = !DILocation(line: 234, column: 17, scope: !583)
!588 = !DILocation(line: 234, column: 15, scope: !583)
!589 = !DILocation(line: 235, column: 22, scope: !583)
!590 = !DILocation(line: 235, column: 9, scope: !583)
!591 = !DILocation(line: 235, column: 16, scope: !583)
!592 = !DILocation(line: 235, column: 20, scope: !583)
!593 = !{!369, !99, i64 8}
!594 = !DILocation(line: 236, column: 23, scope: !583)
!595 = !DILocation(line: 236, column: 9, scope: !583)
!596 = !DILocation(line: 236, column: 16, scope: !583)
!597 = !DILocation(line: 236, column: 21, scope: !583)
!598 = !DILocation(line: 237, column: 9, scope: !583)
!599 = !DILocation(line: 237, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !583, file: !2, line: 237, column: 9)
!601 = !DILocation(line: 238, column: 9, scope: !583)
!602 = !DILocation(line: 238, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 238, column: 9)
!604 = distinct !DILexicalBlock(scope: !583, file: !2, line: 238, column: 9)
!605 = !DILocation(line: 238, column: 9, scope: !604)
!606 = !DILocation(line: 239, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !583, file: !2, line: 239, column: 13)
!608 = !DILocation(line: 239, column: 13, scope: !583)
!609 = !DILocation(line: 240, column: 13, scope: !607)
!610 = !DILocation(line: 240, column: 19, scope: !607)
!611 = !DILocation(line: 242, column: 10, scope: !583)
!612 = !DILocation(line: 242, column: 18, scope: !583)
!613 = !DILocation(line: 243, column: 16, scope: !583)
!614 = !DILocation(line: 243, column: 9, scope: !583)
!615 = !DILocation(line: 246, column: 5, scope: !516)
!616 = !DILocation(line: 247, column: 15, scope: !538)
!617 = !DILocation(line: 247, column: 13, scope: !539)
!618 = !DILocation(line: 248, column: 17, scope: !536)
!619 = !DILocation(line: 248, column: 23, scope: !536)
!620 = !DILocation(line: 248, column: 36, scope: !536)
!621 = !DILocation(line: 248, column: 33, scope: !536)
!622 = !DILocation(line: 249, column: 17, scope: !536)
!623 = !DILocation(line: 249, column: 20, scope: !536)
!624 = !DILocation(line: 249, column: 26, scope: !536)
!625 = !DILocation(line: 249, column: 48, scope: !536)
!626 = !DILocation(line: 249, column: 54, scope: !536)
!627 = !DILocation(line: 249, column: 34, scope: !536)
!628 = !DILocation(line: 249, column: 67, scope: !536)
!629 = !DILocation(line: 250, column: 33, scope: !536)
!630 = !DILocation(line: 250, column: 38, scope: !536)
!631 = !DILocation(line: 248, column: 17, scope: !537)
!632 = !DILocation(line: 252, column: 22, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !2, line: 252, column: 21)
!634 = distinct !DILexicalBlock(scope: !536, file: !2, line: 250, column: 44)
!635 = !DILocation(line: 252, column: 21, scope: !633)
!636 = !DILocation(line: 252, column: 21, scope: !634)
!637 = !DILocation(line: 253, column: 21, scope: !638)
!638 = distinct !DILexicalBlock(scope: !633, file: !2, line: 252, column: 31)
!639 = !DILocation(line: 253, column: 47, scope: !638)
!640 = !DILocation(line: 253, column: 53, scope: !638)
!641 = !DILocation(line: 253, column: 33, scope: !638)
!642 = !DILocation(line: 253, column: 66, scope: !638)
!643 = !DILocation(line: 254, column: 61, scope: !638)
!644 = !DILocation(line: 254, column: 36, scope: !638)
!645 = !DILocation(line: 254, column: 42, scope: !638)
!646 = !DILocation(line: 254, column: 22, scope: !638)
!647 = !DILocation(line: 254, column: 55, scope: !638)
!648 = !DILocation(line: 254, column: 59, scope: !638)
!649 = !DILocation(line: 255, column: 62, scope: !638)
!650 = !DILocation(line: 255, column: 36, scope: !638)
!651 = !DILocation(line: 255, column: 42, scope: !638)
!652 = !DILocation(line: 255, column: 22, scope: !638)
!653 = !DILocation(line: 255, column: 55, scope: !638)
!654 = !DILocation(line: 255, column: 60, scope: !638)
!655 = !DILocation(line: 256, column: 17, scope: !638)
!656 = !DILocation(line: 257, column: 21, scope: !633)
!657 = !DILocation(line: 257, column: 32, scope: !633)
!658 = !DILocation(line: 259, column: 39, scope: !634)
!659 = !DILocation(line: 259, column: 45, scope: !634)
!660 = !DILocation(line: 259, column: 25, scope: !634)
!661 = !DILocation(line: 259, column: 58, scope: !634)
!662 = !DILocation(line: 259, column: 17, scope: !634)
!663 = !DILocation(line: 261, column: 17, scope: !535)
!664 = !DILocation(line: 261, column: 31, scope: !535)
!665 = !DILocation(line: 261, column: 38, scope: !535)
!666 = !DILocation(line: 261, column: 44, scope: !535)
!667 = !DILocation(line: 263, column: 17, scope: !535)
!668 = !DILocation(line: 264, column: 21, scope: !543)
!669 = !DILocation(line: 264, column: 35, scope: !543)
!670 = !DILocation(line: 267, column: 33, scope: !543)
!671 = !DILocation(line: 268, column: 25, scope: !672)
!672 = distinct !DILexicalBlock(scope: !543, file: !2, line: 268, column: 25)
!673 = !DILocation(line: 268, column: 37, scope: !672)
!674 = !DILocation(line: 268, column: 25, scope: !543)
!675 = !DILocation(line: 270, column: 31, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !2, line: 268, column: 43)
!677 = !DILocation(line: 270, column: 37, scope: !676)
!678 = !DILocation(line: 270, column: 47, scope: !676)
!679 = !DILocation(line: 270, column: 52, scope: !676)
!680 = !DILocation(line: 270, column: 29, scope: !676)
!681 = !DILocation(line: 271, column: 32, scope: !676)
!682 = !DILocation(line: 271, column: 38, scope: !676)
!683 = !DILocation(line: 272, column: 44, scope: !676)
!684 = !DILocation(line: 272, column: 50, scope: !676)
!685 = !DILocation(line: 272, column: 30, scope: !676)
!686 = !DILocation(line: 272, column: 63, scope: !676)
!687 = !DILocation(line: 272, column: 68, scope: !676)
!688 = !DILocation(line: 271, column: 30, scope: !676)
!689 = !DILocation(line: 273, column: 37, scope: !676)
!690 = !DILocation(line: 274, column: 21, scope: !676)
!691 = !DILocation(line: 275, column: 32, scope: !543)
!692 = !DILocation(line: 275, column: 39, scope: !543)
!693 = !DILocation(line: 275, column: 36, scope: !543)
!694 = !DILocation(line: 275, column: 52, scope: !543)
!695 = !DILocation(line: 275, column: 29, scope: !543)
!696 = !DILocation(line: 276, column: 33, scope: !543)
!697 = !DILocation(line: 276, column: 41, scope: !543)
!698 = !DILocation(line: 276, column: 38, scope: !543)
!699 = !DILocation(line: 276, column: 54, scope: !543)
!700 = !DILocation(line: 276, column: 30, scope: !543)
!701 = !DILocation(line: 278, column: 25, scope: !702)
!702 = distinct !DILexicalBlock(scope: !543, file: !2, line: 278, column: 25)
!703 = !DILocation(line: 278, column: 36, scope: !702)
!704 = !DILocation(line: 278, column: 33, scope: !702)
!705 = !DILocation(line: 278, column: 25, scope: !543)
!706 = !DILocation(line: 282, column: 36, scope: !707)
!707 = distinct !DILexicalBlock(scope: !702, file: !2, line: 278, column: 46)
!708 = !DILocation(line: 282, column: 34, scope: !707)
!709 = !DILocation(line: 283, column: 49, scope: !707)
!710 = !DILocation(line: 283, column: 25, scope: !707)
!711 = !DILocation(line: 283, column: 37, scope: !707)
!712 = !DILocation(line: 283, column: 47, scope: !707)
!713 = !DILocation(line: 284, column: 49, scope: !707)
!714 = !DILocation(line: 284, column: 55, scope: !707)
!715 = !DILocation(line: 284, column: 25, scope: !707)
!716 = !DILocation(line: 284, column: 37, scope: !707)
!717 = !DILocation(line: 284, column: 47, scope: !707)
!718 = !DILocation(line: 285, column: 46, scope: !707)
!719 = !DILocation(line: 285, column: 44, scope: !707)
!720 = !DILocation(line: 285, column: 43, scope: !707)
!721 = !DILocation(line: 285, column: 25, scope: !707)
!722 = !DILocation(line: 285, column: 31, scope: !707)
!723 = !DILocation(line: 285, column: 41, scope: !707)
!724 = !DILocation(line: 286, column: 25, scope: !707)
!725 = !DILocation(line: 286, column: 25, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 286, column: 25)
!727 = distinct !DILexicalBlock(scope: !707, file: !2, line: 286, column: 25)
!728 = !DILocation(line: 286, column: 25, scope: !727)
!729 = !DILocation(line: 287, column: 33, scope: !707)
!730 = !DILocation(line: 287, column: 30, scope: !707)
!731 = !DILocation(line: 288, column: 30, scope: !707)
!732 = !DILocation(line: 289, column: 21, scope: !707)
!733 = !DILocation(line: 291, column: 36, scope: !734)
!734 = distinct !DILexicalBlock(scope: !702, file: !2, line: 289, column: 28)
!735 = !DILocation(line: 291, column: 34, scope: !734)
!736 = !DILocation(line: 293, column: 33, scope: !734)
!737 = !DILocation(line: 293, column: 31, scope: !734)
!738 = !DILocation(line: 294, column: 38, scope: !734)
!739 = !DILocation(line: 294, column: 25, scope: !734)
!740 = !DILocation(line: 294, column: 32, scope: !734)
!741 = !DILocation(line: 294, column: 36, scope: !734)
!742 = !DILocation(line: 295, column: 39, scope: !734)
!743 = !DILocation(line: 295, column: 25, scope: !734)
!744 = !DILocation(line: 295, column: 32, scope: !734)
!745 = !DILocation(line: 295, column: 37, scope: !734)
!746 = !DILocation(line: 296, column: 25, scope: !734)
!747 = !DILocation(line: 296, column: 25, scope: !748)
!748 = distinct !DILexicalBlock(scope: !734, file: !2, line: 296, column: 25)
!749 = !DILocation(line: 299, column: 29, scope: !750)
!750 = distinct !DILexicalBlock(scope: !734, file: !2, line: 299, column: 29)
!751 = !DILocation(line: 299, column: 40, scope: !750)
!752 = !DILocation(line: 299, column: 38, scope: !750)
!753 = !DILocation(line: 299, column: 29, scope: !734)
!754 = !DILocation(line: 300, column: 53, scope: !755)
!755 = distinct !DILexicalBlock(scope: !750, file: !2, line: 299, column: 49)
!756 = !DILocation(line: 300, column: 29, scope: !755)
!757 = !DILocation(line: 300, column: 41, scope: !755)
!758 = !DILocation(line: 300, column: 51, scope: !755)
!759 = !DILocation(line: 301, column: 53, scope: !755)
!760 = !DILocation(line: 301, column: 59, scope: !755)
!761 = !DILocation(line: 301, column: 29, scope: !755)
!762 = !DILocation(line: 301, column: 41, scope: !755)
!763 = !DILocation(line: 301, column: 51, scope: !755)
!764 = !DILocation(line: 302, column: 53, scope: !755)
!765 = !DILocation(line: 302, column: 29, scope: !755)
!766 = !DILocation(line: 302, column: 41, scope: !755)
!767 = !DILocation(line: 302, column: 51, scope: !755)
!768 = !DILocation(line: 303, column: 29, scope: !755)
!769 = !DILocation(line: 303, column: 29, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !2, line: 303, column: 29)
!771 = distinct !DILexicalBlock(scope: !755, file: !2, line: 303, column: 29)
!772 = !DILocation(line: 303, column: 29, scope: !771)
!773 = !DILocation(line: 304, column: 25, scope: !755)
!774 = !DILocation(line: 305, column: 53, scope: !775)
!775 = distinct !DILexicalBlock(scope: !750, file: !2, line: 304, column: 32)
!776 = !DILocation(line: 305, column: 29, scope: !775)
!777 = !DILocation(line: 305, column: 41, scope: !775)
!778 = !DILocation(line: 305, column: 51, scope: !775)
!779 = !DILocation(line: 306, column: 29, scope: !775)
!780 = !DILocation(line: 306, column: 29, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 306, column: 29)
!782 = distinct !DILexicalBlock(scope: !775, file: !2, line: 306, column: 29)
!783 = !DILocation(line: 306, column: 29, scope: !782)
!784 = !DILocation(line: 307, column: 53, scope: !775)
!785 = !DILocation(line: 307, column: 29, scope: !775)
!786 = !DILocation(line: 307, column: 41, scope: !775)
!787 = !DILocation(line: 307, column: 51, scope: !775)
!788 = !DILocation(line: 308, column: 53, scope: !775)
!789 = !DILocation(line: 308, column: 59, scope: !775)
!790 = !DILocation(line: 308, column: 29, scope: !775)
!791 = !DILocation(line: 308, column: 41, scope: !775)
!792 = !DILocation(line: 308, column: 51, scope: !775)
!793 = !DILocation(line: 312, column: 49, scope: !734)
!794 = !DILocation(line: 312, column: 47, scope: !734)
!795 = !DILocation(line: 312, column: 66, scope: !734)
!796 = !DILocation(line: 312, column: 64, scope: !734)
!797 = !DILocation(line: 312, column: 58, scope: !734)
!798 = !DILocation(line: 312, column: 25, scope: !734)
!799 = !DILocation(line: 312, column: 31, scope: !734)
!800 = !DILocation(line: 312, column: 41, scope: !734)
!801 = !DILocation(line: 313, column: 25, scope: !734)
!802 = !DILocation(line: 313, column: 25, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !2, line: 313, column: 25)
!804 = distinct !DILexicalBlock(scope: !734, file: !2, line: 313, column: 25)
!805 = !DILocation(line: 313, column: 25, scope: !804)
!806 = !DILocation(line: 314, column: 26, scope: !734)
!807 = !DILocation(line: 314, column: 34, scope: !734)
!808 = !DILocation(line: 315, column: 32, scope: !734)
!809 = !DILocation(line: 315, column: 25, scope: !734)
!810 = !DILocation(line: 317, column: 17, scope: !544)
!811 = !DILocation(line: 263, column: 17, scope: !544)
!812 = distinct !{!812, !813, !814}
!813 = !DILocation(line: 263, column: 17, scope: !545)
!814 = !DILocation(line: 317, column: 17, scope: !545)
!815 = !DILocation(line: 318, column: 13, scope: !536)
!816 = !DILocation(line: 322, column: 21, scope: !539)
!817 = !DILocation(line: 323, column: 13, scope: !818)
!818 = distinct !DILexicalBlock(scope: !539, file: !2, line: 323, column: 13)
!819 = !DILocation(line: 323, column: 25, scope: !818)
!820 = !DILocation(line: 323, column: 13, scope: !539)
!821 = !DILocation(line: 325, column: 19, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !2, line: 323, column: 31)
!823 = !DILocation(line: 325, column: 25, scope: !822)
!824 = !DILocation(line: 325, column: 35, scope: !822)
!825 = !DILocation(line: 325, column: 40, scope: !822)
!826 = !DILocation(line: 325, column: 17, scope: !822)
!827 = !DILocation(line: 326, column: 25, scope: !822)
!828 = !DILocation(line: 327, column: 9, scope: !822)
!829 = !DILocation(line: 328, column: 20, scope: !539)
!830 = !DILocation(line: 328, column: 27, scope: !539)
!831 = !DILocation(line: 328, column: 24, scope: !539)
!832 = !DILocation(line: 328, column: 40, scope: !539)
!833 = !DILocation(line: 328, column: 17, scope: !539)
!834 = !DILocation(line: 329, column: 15, scope: !548)
!835 = !DILocation(line: 329, column: 21, scope: !548)
!836 = !DILocation(line: 329, column: 37, scope: !548)
!837 = !DILocation(line: 329, column: 35, scope: !548)
!838 = !DILocation(line: 329, column: 33, scope: !548)
!839 = !DILocation(line: 329, column: 31, scope: !548)
!840 = !DILocation(line: 329, column: 13, scope: !539)
!841 = !DILocation(line: 331, column: 13, scope: !547)
!842 = !DILocation(line: 331, column: 27, scope: !547)
!843 = !DILocation(line: 334, column: 35, scope: !547)
!844 = !DILocation(line: 334, column: 33, scope: !547)
!845 = !DILocation(line: 334, column: 32, scope: !547)
!846 = !DILocation(line: 334, column: 13, scope: !547)
!847 = !DILocation(line: 334, column: 19, scope: !547)
!848 = !DILocation(line: 334, column: 29, scope: !547)
!849 = !DILocation(line: 337, column: 13, scope: !547)
!850 = !DILocation(line: 337, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !547, file: !2, line: 337, column: 13)
!852 = !DILocation(line: 338, column: 18, scope: !547)
!853 = !DILocation(line: 339, column: 17, scope: !854)
!854 = distinct !DILexicalBlock(scope: !547, file: !2, line: 339, column: 17)
!855 = !DILocation(line: 339, column: 22, scope: !854)
!856 = !DILocation(line: 339, column: 17, scope: !547)
!857 = !DILocation(line: 340, column: 22, scope: !854)
!858 = !DILocation(line: 340, column: 17, scope: !854)
!859 = !DILocation(line: 341, column: 24, scope: !547)
!860 = !DILocation(line: 341, column: 37, scope: !547)
!861 = !DILocation(line: 341, column: 41, scope: !547)
!862 = !DILocation(line: 341, column: 22, scope: !547)
!863 = !DILocation(line: 344, column: 13, scope: !547)
!864 = !DILocation(line: 344, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !547, file: !2, line: 344, column: 13)
!866 = !DILocation(line: 345, column: 17, scope: !547)
!867 = !DILocation(line: 347, column: 20, scope: !547)
!868 = !DILocation(line: 347, column: 30, scope: !547)
!869 = !DILocation(line: 347, column: 48, scope: !547)
!870 = !DILocation(line: 347, column: 51, scope: !547)
!871 = !DILocation(line: 347, column: 13, scope: !547)
!872 = !DILocation(line: 348, column: 21, scope: !547)
!873 = !DILocation(line: 348, column: 30, scope: !547)
!874 = !DILocation(line: 348, column: 33, scope: !547)
!875 = !DILocation(line: 348, column: 40, scope: !547)
!876 = !DILocation(line: 348, column: 58, scope: !547)
!877 = !DILocation(line: 348, column: 39, scope: !547)
!878 = !DILocation(line: 349, column: 21, scope: !547)
!879 = !DILocation(line: 349, column: 26, scope: !547)
!880 = !DILocation(line: 349, column: 25, scope: !547)
!881 = !DILocation(line: 349, column: 29, scope: !547)
!882 = !DILocation(line: 349, column: 32, scope: !547)
!883 = !DILocation(line: 348, column: 13, scope: !547)
!884 = !DILocation(line: 351, column: 13, scope: !547)
!885 = !DILocation(line: 351, column: 24, scope: !547)
!886 = !DILocation(line: 353, column: 39, scope: !547)
!887 = !DILocation(line: 353, column: 13, scope: !547)
!888 = !DILocation(line: 353, column: 22, scope: !547)
!889 = !DILocation(line: 353, column: 27, scope: !547)
!890 = !DILocation(line: 353, column: 37, scope: !547)
!891 = !DILocation(line: 354, column: 21, scope: !547)
!892 = !DILocation(line: 354, column: 19, scope: !547)
!893 = !DILocation(line: 355, column: 26, scope: !547)
!894 = !DILocation(line: 355, column: 13, scope: !547)
!895 = !DILocation(line: 355, column: 20, scope: !547)
!896 = !DILocation(line: 355, column: 24, scope: !547)
!897 = !DILocation(line: 356, column: 27, scope: !547)
!898 = !DILocation(line: 356, column: 13, scope: !547)
!899 = !DILocation(line: 356, column: 20, scope: !547)
!900 = !DILocation(line: 356, column: 25, scope: !547)
!901 = !DILocation(line: 357, column: 13, scope: !547)
!902 = !DILocation(line: 357, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !547, file: !2, line: 357, column: 13)
!904 = !DILocation(line: 358, column: 13, scope: !547)
!905 = !DILocation(line: 358, column: 13, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !2, line: 358, column: 13)
!907 = distinct !DILexicalBlock(scope: !547, file: !2, line: 358, column: 13)
!908 = !DILocation(line: 358, column: 13, scope: !907)
!909 = !DILocation(line: 359, column: 13, scope: !547)
!910 = !DILocation(line: 359, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !2, line: 359, column: 13)
!912 = distinct !DILexicalBlock(scope: !547, file: !2, line: 359, column: 13)
!913 = !DILocation(line: 359, column: 13, scope: !912)
!914 = !DILocation(line: 361, column: 14, scope: !547)
!915 = !DILocation(line: 361, column: 22, scope: !547)
!916 = !DILocation(line: 362, column: 20, scope: !547)
!917 = !DILocation(line: 362, column: 13, scope: !547)
!918 = !DILocation(line: 363, column: 9, scope: !548)
!919 = !DILocation(line: 366, column: 9, scope: !539)
!920 = !DILocation(line: 366, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !539, file: !2, line: 366, column: 9)
!922 = !DILocation(line: 367, column: 13, scope: !539)
!923 = !DILocation(line: 370, column: 14, scope: !539)
!924 = !DILocation(line: 371, column: 18, scope: !539)
!925 = !DILocation(line: 371, column: 36, scope: !539)
!926 = !DILocation(line: 371, column: 17, scope: !539)
!927 = !DILocation(line: 371, column: 14, scope: !539)
!928 = !DILocation(line: 246, column: 5, scope: !540)
!929 = distinct !{!929, !930, !931}
!930 = !DILocation(line: 246, column: 5, scope: !541)
!931 = !DILocation(line: 372, column: 5, scope: !541)
!932 = !DILocation(line: 373, column: 1, scope: !516)
!933 = distinct !DISubprogram(name: "HAMT_search", scope: !2, file: !2, line: 377, type: !934, scopeLine: 378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!24, !60, !39}
!936 = !{!937, !938, !939, !940, !941, !942, !943, !944}
!937 = !DILocalVariable(name: "hamt", arg: 1, scope: !933, file: !2, line: 377, type: !60)
!938 = !DILocalVariable(name: "str", arg: 2, scope: !933, file: !2, line: 377, type: !39)
!939 = !DILocalVariable(name: "node", scope: !933, file: !2, line: 379, type: !42)
!940 = !DILocalVariable(name: "key", scope: !933, file: !2, line: 380, type: !27)
!941 = !DILocalVariable(name: "keypart", scope: !933, file: !2, line: 380, type: !27)
!942 = !DILocalVariable(name: "Map", scope: !933, file: !2, line: 380, type: !27)
!943 = !DILocalVariable(name: "keypartbits", scope: !933, file: !2, line: 381, type: !48)
!944 = !DILocalVariable(name: "level", scope: !933, file: !2, line: 382, type: !48)
!945 = !DILocation(line: 377, column: 19, scope: !933)
!946 = !DILocation(line: 377, column: 37, scope: !933)
!947 = !DILocation(line: 379, column: 5, scope: !933)
!948 = !DILocation(line: 379, column: 15, scope: !933)
!949 = !DILocation(line: 380, column: 5, scope: !933)
!950 = !DILocation(line: 380, column: 19, scope: !933)
!951 = !DILocation(line: 380, column: 24, scope: !933)
!952 = !DILocation(line: 380, column: 33, scope: !933)
!953 = !DILocation(line: 381, column: 5, scope: !933)
!954 = !DILocation(line: 381, column: 9, scope: !933)
!955 = !DILocation(line: 382, column: 5, scope: !933)
!956 = !DILocation(line: 382, column: 9, scope: !933)
!957 = !DILocation(line: 384, column: 11, scope: !933)
!958 = !DILocation(line: 384, column: 17, scope: !933)
!959 = !DILocation(line: 384, column: 25, scope: !933)
!960 = !DILocation(line: 384, column: 9, scope: !933)
!961 = !DILocation(line: 385, column: 15, scope: !933)
!962 = !DILocation(line: 385, column: 19, scope: !933)
!963 = !DILocation(line: 385, column: 13, scope: !933)
!964 = !DILocation(line: 386, column: 13, scope: !933)
!965 = !DILocation(line: 386, column: 19, scope: !933)
!966 = !DILocation(line: 386, column: 24, scope: !933)
!967 = !DILocation(line: 386, column: 10, scope: !933)
!968 = !DILocation(line: 388, column: 10, scope: !969)
!969 = distinct !DILexicalBlock(scope: !933, file: !2, line: 388, column: 9)
!970 = !DILocation(line: 388, column: 16, scope: !969)
!971 = !DILocation(line: 388, column: 9, scope: !933)
!972 = !DILocation(line: 389, column: 9, scope: !969)
!973 = !DILocation(line: 391, column: 5, scope: !933)
!974 = !DILocation(line: 392, column: 15, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !2, line: 392, column: 13)
!976 = distinct !DILexicalBlock(scope: !977, file: !2, line: 391, column: 14)
!977 = distinct !DILexicalBlock(scope: !978, file: !2, line: 391, column: 5)
!978 = distinct !DILexicalBlock(scope: !933, file: !2, line: 391, column: 5)
!979 = !DILocation(line: 392, column: 13, scope: !976)
!980 = !DILocation(line: 393, column: 17, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !2, line: 393, column: 17)
!982 = distinct !DILexicalBlock(scope: !975, file: !2, line: 392, column: 33)
!983 = !DILocation(line: 393, column: 23, scope: !981)
!984 = !DILocation(line: 393, column: 36, scope: !981)
!985 = !DILocation(line: 393, column: 33, scope: !981)
!986 = !DILocation(line: 394, column: 17, scope: !981)
!987 = !DILocation(line: 394, column: 20, scope: !981)
!988 = !DILocation(line: 394, column: 26, scope: !981)
!989 = !DILocation(line: 394, column: 48, scope: !981)
!990 = !DILocation(line: 394, column: 54, scope: !981)
!991 = !DILocation(line: 394, column: 34, scope: !981)
!992 = !DILocation(line: 394, column: 67, scope: !981)
!993 = !DILocation(line: 395, column: 33, scope: !981)
!994 = !DILocation(line: 395, column: 38, scope: !981)
!995 = !DILocation(line: 393, column: 17, scope: !982)
!996 = !DILocation(line: 396, column: 39, scope: !981)
!997 = !DILocation(line: 396, column: 45, scope: !981)
!998 = !DILocation(line: 396, column: 25, scope: !981)
!999 = !DILocation(line: 396, column: 58, scope: !981)
!1000 = !DILocation(line: 396, column: 17, scope: !981)
!1001 = !DILocation(line: 398, column: 17, scope: !981)
!1002 = !DILocation(line: 402, column: 21, scope: !976)
!1003 = !DILocation(line: 403, column: 13, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !976, file: !2, line: 403, column: 13)
!1005 = !DILocation(line: 403, column: 25, scope: !1004)
!1006 = !DILocation(line: 403, column: 13, scope: !976)
!1007 = !DILocation(line: 405, column: 19, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 403, column: 31)
!1009 = !DILocation(line: 405, column: 25, scope: !1008)
!1010 = !DILocation(line: 405, column: 35, scope: !1008)
!1011 = !DILocation(line: 405, column: 40, scope: !1008)
!1012 = !DILocation(line: 405, column: 17, scope: !1008)
!1013 = !DILocation(line: 406, column: 25, scope: !1008)
!1014 = !DILocation(line: 407, column: 9, scope: !1008)
!1015 = !DILocation(line: 408, column: 20, scope: !976)
!1016 = !DILocation(line: 408, column: 27, scope: !976)
!1017 = !DILocation(line: 408, column: 24, scope: !976)
!1018 = !DILocation(line: 408, column: 40, scope: !976)
!1019 = !DILocation(line: 408, column: 17, scope: !976)
!1020 = !DILocation(line: 409, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !976, file: !2, line: 409, column: 13)
!1022 = !DILocation(line: 409, column: 21, scope: !1021)
!1023 = !DILocation(line: 409, column: 37, scope: !1021)
!1024 = !DILocation(line: 409, column: 35, scope: !1021)
!1025 = !DILocation(line: 409, column: 33, scope: !1021)
!1026 = !DILocation(line: 409, column: 31, scope: !1021)
!1027 = !DILocation(line: 409, column: 13, scope: !976)
!1028 = !DILocation(line: 410, column: 13, scope: !1021)
!1029 = !DILocation(line: 413, column: 9, scope: !976)
!1030 = !DILocation(line: 413, column: 9, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !976, file: !2, line: 413, column: 9)
!1032 = !DILocation(line: 414, column: 13, scope: !976)
!1033 = !DILocation(line: 417, column: 14, scope: !976)
!1034 = !DILocation(line: 418, column: 18, scope: !976)
!1035 = !DILocation(line: 418, column: 36, scope: !976)
!1036 = !DILocation(line: 418, column: 17, scope: !976)
!1037 = !DILocation(line: 418, column: 14, scope: !976)
!1038 = !DILocation(line: 391, column: 5, scope: !977)
!1039 = distinct !{!1039, !1040, !1041}
!1040 = !DILocation(line: 391, column: 5, scope: !978)
!1041 = !DILocation(line: 419, column: 5, scope: !978)
!1042 = !DILocation(line: 420, column: 1, scope: !933)
!1043 = !DISubprogram(name: "__ctype_tolower_loc", scope: !1044, file: !1044, line: 81, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !1051, line: 41, baseType: !48)
!1051 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")

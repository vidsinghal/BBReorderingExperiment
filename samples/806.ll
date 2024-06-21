; ModuleID = 'samples/806.bc'
source_filename = "trie_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kh_str_uint32_t = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.string_array = type { i64, i64, ptr }
%struct.ks_isort_stack_t = type { ptr, ptr, i32 }
%struct.cstring_array = type { ptr, ptr }
%struct.uint32_array = type { i64, i64, ptr }
%struct.char_array = type { i64, i64, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"\1B[32mINFO\1B[39m  hash_size=%zu\0A  \1B[90m at %s (%s:%d) \1B[39m\0A\00", align 1, !dbg !0
@__func__.trie_new_from_hash = private unnamed_addr constant [19 x i8] c"trie_new_from_hash\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [13 x i8] c"trie_utils.c\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [73 x i8] c"\1B[31mERR\1B[39m   Key not found\0A  \1B[90m at %s (%s:%d) \1B[94merrno: %s\1B[39m\0A\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [5 x i8] c"None\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [80 x i8] c"\1B[31mERR\1B[39m   Error adding to trie\0A  \1B[90m at %s (%s:%d) \1B[94merrno: %s\1B[39m\0A\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [67 x i8] c"\1B[32mINFO\1B[39m  added %d keys to trie\0A  \1B[90m at %s (%s:%d) \1B[39m\0A\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [41 x i8] c"realloc failed during string_array_push\0A\00", align 1, !dbg !38

; Function Attrs: nounwind uwtable
define ptr @trie_new_from_hash(ptr noundef %hash) #0 !dbg !98 {
entry:
  %retval = alloca ptr, align 8
  %hash.addr = alloca ptr, align 8
  %trie = alloca ptr, align 8
  %key = alloca ptr, align 8
  %value = alloca i32, align 4
  %hash_size = alloca i64, align 8
  %hash_keys = alloca ptr, align 8
  %__i = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %str = alloca ptr, align 8
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !158, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %trie) #13, !dbg !186
  tail call void @llvm.dbg.declare(metadata ptr %trie, metadata !159, metadata !DIExpression()), !dbg !187
  %call = call ptr @trie_new(), !dbg !188
  store ptr %call, ptr %trie, align 8, !dbg !187, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #13, !dbg !189
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !160, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !191
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !161, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_size) #13, !dbg !193
  tail call void @llvm.dbg.declare(metadata ptr %hash_size, metadata !162, metadata !DIExpression()), !dbg !194
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !195, !tbaa !181
  %size = getelementptr inbounds %struct.kh_str_uint32_t, ptr %0, i32 0, i32 1, !dbg !195
  %1 = load i32, ptr %size, align 4, !dbg !195, !tbaa !196
  %conv = zext i32 %1 to i64, !dbg !195
  store i64 %conv, ptr %hash_size, align 8, !dbg !194, !tbaa !199
  %2 = load ptr, ptr @stderr, align 8, !dbg !201, !tbaa !181
  %3 = load i64, ptr %hash_size, align 8, !dbg !201, !tbaa !199
  %call1 = call ptr @strrchr(ptr noundef @.str.1, i32 noundef 47) #14, !dbg !201
  %tobool = icmp ne ptr %call1, null, !dbg !201
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !201

cond.true:                                        ; preds = %entry
  %call2 = call ptr @strrchr(ptr noundef @.str.1, i32 noundef 47) #14, !dbg !201
  %add.ptr = getelementptr inbounds i8, ptr %call2, i64 1, !dbg !201
  br label %cond.end, !dbg !201

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !201

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ @.str.1, %cond.false ], !dbg !201
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, i64 noundef %3, ptr noundef @__func__.trie_new_from_hash, ptr noundef %cond, i32 noundef 14), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_keys) #13, !dbg !202
  tail call void @llvm.dbg.declare(metadata ptr %hash_keys, metadata !163, metadata !DIExpression()), !dbg !203
  %4 = load i64, ptr %hash_size, align 8, !dbg !204, !tbaa !199
  %call4 = call ptr @string_array_new_size(i64 noundef %4), !dbg !205
  store ptr %call4, ptr %hash_keys, align 8, !dbg !203, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %__i) #13, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %__i, metadata !172, metadata !DIExpression()), !dbg !206
  store i32 0, ptr %__i, align 4, !dbg !207, !tbaa !209
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i32, ptr %__i, align 4, !dbg !210, !tbaa !209
  %6 = load ptr, ptr %hash.addr, align 8, !dbg !210, !tbaa !181
  %n_buckets = getelementptr inbounds %struct.kh_str_uint32_t, ptr %6, i32 0, i32 0, !dbg !210
  %7 = load i32, ptr %n_buckets, align 8, !dbg !210, !tbaa !212
  %cmp = icmp ne i32 %5, %7, !dbg !210
  br i1 %cmp, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %hash.addr, align 8, !dbg !213, !tbaa !181
  %flags = getelementptr inbounds %struct.kh_str_uint32_t, ptr %8, i32 0, i32 4, !dbg !213
  %9 = load ptr, ptr %flags, align 8, !dbg !213, !tbaa !216
  %10 = load i32, ptr %__i, align 4, !dbg !213, !tbaa !209
  %shr = lshr i32 %10, 4, !dbg !213
  %idxprom = zext i32 %shr to i64, !dbg !213
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom, !dbg !213
  %11 = load i32, ptr %arrayidx, align 4, !dbg !213, !tbaa !209
  %12 = load i32, ptr %__i, align 4, !dbg !213, !tbaa !209
  %and = and i32 %12, 15, !dbg !213
  %shl = shl i32 %and, 1, !dbg !213
  %shr6 = lshr i32 %11, %shl, !dbg !213
  %and7 = and i32 %shr6, 3, !dbg !213
  %tobool8 = icmp ne i32 %and7, 0, !dbg !213
  br i1 %tobool8, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !213

if.end:                                           ; preds = %for.body
  %13 = load ptr, ptr %hash.addr, align 8, !dbg !217, !tbaa !181
  %keys = getelementptr inbounds %struct.kh_str_uint32_t, ptr %13, i32 0, i32 5, !dbg !217
  %14 = load ptr, ptr %keys, align 8, !dbg !217, !tbaa !218
  %15 = load i32, ptr %__i, align 4, !dbg !217, !tbaa !209
  %idxprom9 = zext i32 %15 to i64, !dbg !217
  %arrayidx10 = getelementptr inbounds ptr, ptr %14, i64 %idxprom9, !dbg !217
  %16 = load ptr, ptr %arrayidx10, align 8, !dbg !217, !tbaa !181
  store ptr %16, ptr %key, align 8, !dbg !217, !tbaa !181
  %17 = load ptr, ptr %hash.addr, align 8, !dbg !217, !tbaa !181
  %vals = getelementptr inbounds %struct.kh_str_uint32_t, ptr %17, i32 0, i32 6, !dbg !217
  %18 = load ptr, ptr %vals, align 8, !dbg !217, !tbaa !219
  %19 = load i32, ptr %__i, align 4, !dbg !217, !tbaa !209
  %idxprom11 = zext i32 %19 to i64, !dbg !217
  %arrayidx12 = getelementptr inbounds i32, ptr %18, i64 %idxprom11, !dbg !217
  %20 = load i32, ptr %arrayidx12, align 4, !dbg !217, !tbaa !209
  store i32 %20, ptr %value, align 4, !dbg !217, !tbaa !209
  %21 = load ptr, ptr %key, align 8, !dbg !220, !tbaa !181
  %call13 = call i64 @strlen(ptr noundef %21) #14, !dbg !220
  %cmp14 = icmp eq i64 %call13, 0, !dbg !220
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !223

if.then16:                                        ; preds = %if.end
  br label %for.inc, !dbg !220

if.end17:                                         ; preds = %if.end
  %22 = load ptr, ptr %hash_keys, align 8, !dbg !223, !tbaa !181
  %23 = load ptr, ptr %key, align 8, !dbg !223, !tbaa !181
  call void @string_array_push(ptr noundef %22, ptr noundef %23), !dbg !223
  br label %for.inc, !dbg !217

for.inc:                                          ; preds = %if.end17, %if.then16, %if.then
  %24 = load i32, ptr %__i, align 4, !dbg !210, !tbaa !209
  %inc = add i32 %24, 1, !dbg !210
  store i32 %inc, ptr %__i, align 4, !dbg !210, !tbaa !209
  br label %for.cond, !dbg !210, !llvm.loop !224

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %__i) #13, !dbg !226
  %25 = load ptr, ptr %hash_keys, align 8, !dbg !227, !tbaa !181
  %n = getelementptr inbounds %struct.string_array, ptr %25, i32 0, i32 0, !dbg !227
  %26 = load i64, ptr %n, align 8, !dbg !227, !tbaa !228
  %27 = load ptr, ptr %hash_keys, align 8, !dbg !227, !tbaa !181
  %a = getelementptr inbounds %struct.string_array, ptr %27, i32 0, i32 2, !dbg !227
  %28 = load ptr, ptr %a, align 8, !dbg !227, !tbaa !230
  call void @ks_introsort_str(i64 noundef %26, ptr noundef %28), !dbg !227
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13, !dbg !231
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !174, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !233
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !176, metadata !DIExpression()), !dbg !234
  store i32 0, ptr %i, align 4, !dbg !234, !tbaa !209
  br label %for.cond18, !dbg !233

for.cond18:                                       ; preds = %for.inc74, %for.end
  %29 = load i32, ptr %i, align 4, !dbg !235, !tbaa !209
  %conv19 = sext i32 %29 to i64, !dbg !235
  %30 = load ptr, ptr %hash_keys, align 8, !dbg !236, !tbaa !181
  %n20 = getelementptr inbounds %struct.string_array, ptr %30, i32 0, i32 0, !dbg !237
  %31 = load i64, ptr %n20, align 8, !dbg !237, !tbaa !228
  %cmp21 = icmp ult i64 %conv19, %31, !dbg !238
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup, !dbg !239

for.cond.cleanup:                                 ; preds = %for.cond18
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !239

for.body23:                                       ; preds = %for.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #13, !dbg !240
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !178, metadata !DIExpression()), !dbg !241
  %32 = load ptr, ptr %hash_keys, align 8, !dbg !242, !tbaa !181
  %a24 = getelementptr inbounds %struct.string_array, ptr %32, i32 0, i32 2, !dbg !243
  %33 = load ptr, ptr %a24, align 8, !dbg !243, !tbaa !230
  %34 = load i32, ptr %i, align 4, !dbg !244, !tbaa !209
  %idxprom25 = sext i32 %34 to i64, !dbg !242
  %arrayidx26 = getelementptr inbounds ptr, ptr %33, i64 %idxprom25, !dbg !242
  %35 = load ptr, ptr %arrayidx26, align 8, !dbg !242, !tbaa !181
  store ptr %35, ptr %str, align 8, !dbg !241, !tbaa !181
  %36 = load ptr, ptr %hash.addr, align 8, !dbg !245, !tbaa !181
  %37 = load ptr, ptr %str, align 8, !dbg !245, !tbaa !181
  %call27 = call i32 @kh_get_str_uint32(ptr noundef %36, ptr noundef %37), !dbg !245
  store i32 %call27, ptr %k, align 4, !dbg !246, !tbaa !209
  %38 = load i32, ptr %k, align 4, !dbg !247, !tbaa !209
  %39 = load ptr, ptr %hash.addr, align 8, !dbg !249, !tbaa !181
  %n_buckets28 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %39, i32 0, i32 0, !dbg !249
  %40 = load i32, ptr %n_buckets28, align 8, !dbg !249, !tbaa !212
  %cmp29 = icmp eq i32 %38, %40, !dbg !250
  br i1 %cmp29, label %if.then31, label %if.end42, !dbg !251

if.then31:                                        ; preds = %for.body23
  %41 = load ptr, ptr @stderr, align 8, !dbg !252, !tbaa !181
  %call32 = call ptr @__errno_location() #15, !dbg !252
  %42 = load i32, ptr %call32, align 4, !dbg !252, !tbaa !209
  %cmp33 = icmp eq i32 %42, 0, !dbg !252
  br i1 %cmp33, label %cond.true35, label %cond.false36, !dbg !252

cond.true35:                                      ; preds = %if.then31
  br label %cond.end39, !dbg !252

cond.false36:                                     ; preds = %if.then31
  %call37 = call ptr @__errno_location() #15, !dbg !252
  %43 = load i32, ptr %call37, align 4, !dbg !252, !tbaa !209
  %call38 = call ptr @strerror(i32 noundef %43) #13, !dbg !252
  br label %cond.end39, !dbg !252

cond.end39:                                       ; preds = %cond.false36, %cond.true35
  %cond40 = phi ptr [ @.str.3, %cond.true35 ], [ %call38, %cond.false36 ], !dbg !252
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.2, ptr noundef @__func__.trie_new_from_hash, ptr noundef @.str.1, i32 noundef 29, ptr noundef %cond40), !dbg !252
  %44 = load ptr, ptr %hash_keys, align 8, !dbg !254, !tbaa !181
  call void @string_array_destroy(ptr noundef %44), !dbg !255
  %45 = load ptr, ptr %trie, align 8, !dbg !256, !tbaa !181
  call void @trie_destroy(ptr noundef %45), !dbg !257
  store ptr null, ptr %retval, align 8, !dbg !258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !258

if.end42:                                         ; preds = %for.body23
  %46 = load ptr, ptr %hash.addr, align 8, !dbg !259, !tbaa !181
  %vals43 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %46, i32 0, i32 6, !dbg !259
  %47 = load ptr, ptr %vals43, align 8, !dbg !259, !tbaa !219
  %48 = load i32, ptr %k, align 4, !dbg !259, !tbaa !209
  %idxprom44 = zext i32 %48 to i64, !dbg !259
  %arrayidx45 = getelementptr inbounds i32, ptr %47, i64 %idxprom44, !dbg !259
  %49 = load i32, ptr %arrayidx45, align 4, !dbg !259, !tbaa !209
  store i32 %49, ptr %value, align 4, !dbg !260, !tbaa !209
  %50 = load ptr, ptr %trie, align 8, !dbg !261, !tbaa !181
  %51 = load ptr, ptr %str, align 8, !dbg !263, !tbaa !181
  %52 = load i32, ptr %value, align 4, !dbg !264, !tbaa !209
  %call46 = call zeroext i1 @trie_add(ptr noundef %50, ptr noundef %51, i32 noundef %52), !dbg !265
  br i1 %call46, label %if.end58, label %if.then47, !dbg !266

if.then47:                                        ; preds = %if.end42
  %53 = load ptr, ptr @stderr, align 8, !dbg !267, !tbaa !181
  %call48 = call ptr @__errno_location() #15, !dbg !267
  %54 = load i32, ptr %call48, align 4, !dbg !267, !tbaa !209
  %cmp49 = icmp eq i32 %54, 0, !dbg !267
  br i1 %cmp49, label %cond.true51, label %cond.false52, !dbg !267

cond.true51:                                      ; preds = %if.then47
  br label %cond.end55, !dbg !267

cond.false52:                                     ; preds = %if.then47
  %call53 = call ptr @__errno_location() #15, !dbg !267
  %55 = load i32, ptr %call53, align 4, !dbg !267, !tbaa !209
  %call54 = call ptr @strerror(i32 noundef %55) #13, !dbg !267
  br label %cond.end55, !dbg !267

cond.end55:                                       ; preds = %cond.false52, %cond.true51
  %cond56 = phi ptr [ @.str.3, %cond.true51 ], [ %call54, %cond.false52 ], !dbg !267
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.4, ptr noundef @__func__.trie_new_from_hash, ptr noundef @.str.1, i32 noundef 38, ptr noundef %cond56), !dbg !267
  %56 = load ptr, ptr %hash_keys, align 8, !dbg !269, !tbaa !181
  call void @string_array_destroy(ptr noundef %56), !dbg !270
  %57 = load ptr, ptr %trie, align 8, !dbg !271, !tbaa !181
  call void @trie_destroy(ptr noundef %57), !dbg !272
  store ptr null, ptr %retval, align 8, !dbg !273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !273

if.end58:                                         ; preds = %if.end42
  %58 = load i32, ptr %i, align 4, !dbg !274, !tbaa !209
  %rem = srem i32 %58, 100000, !dbg !276
  %cmp59 = icmp eq i32 %rem, 0, !dbg !277
  br i1 %cmp59, label %land.lhs.true, label %if.end73, !dbg !278

land.lhs.true:                                    ; preds = %if.end58
  %59 = load i32, ptr %i, align 4, !dbg !279, !tbaa !209
  %cmp61 = icmp sgt i32 %59, 0, !dbg !280
  br i1 %cmp61, label %if.then63, label %if.end73, !dbg !281

if.then63:                                        ; preds = %land.lhs.true
  %60 = load ptr, ptr @stderr, align 8, !dbg !282, !tbaa !181
  %61 = load i32, ptr %i, align 4, !dbg !282, !tbaa !209
  %call64 = call ptr @strrchr(ptr noundef @.str.1, i32 noundef 47) #14, !dbg !282
  %tobool65 = icmp ne ptr %call64, null, !dbg !282
  br i1 %tobool65, label %cond.true66, label %cond.false69, !dbg !282

cond.true66:                                      ; preds = %if.then63
  %call67 = call ptr @strrchr(ptr noundef @.str.1, i32 noundef 47) #14, !dbg !282
  %add.ptr68 = getelementptr inbounds i8, ptr %call67, i64 1, !dbg !282
  br label %cond.end70, !dbg !282

cond.false69:                                     ; preds = %if.then63
  br label %cond.end70, !dbg !282

cond.end70:                                       ; preds = %cond.false69, %cond.true66
  %cond71 = phi ptr [ %add.ptr68, %cond.true66 ], [ @.str.1, %cond.false69 ], !dbg !282
  %call72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.5, i32 noundef %61, ptr noundef @__func__.trie_new_from_hash, ptr noundef %cond71, i32 noundef 44), !dbg !282
  br label %if.end73, !dbg !284

if.end73:                                         ; preds = %cond.end70, %land.lhs.true, %if.end58
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !285
  br label %cleanup, !dbg !285

cleanup:                                          ; preds = %if.end73, %cond.end55, %cond.end39
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #13, !dbg !285
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup76 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc74, !dbg !286

for.inc74:                                        ; preds = %cleanup.cont
  %62 = load i32, ptr %i, align 4, !dbg !287, !tbaa !209
  %inc75 = add nsw i32 %62, 1, !dbg !287
  store i32 %inc75, ptr %i, align 4, !dbg !287, !tbaa !209
  br label %for.cond18, !dbg !288, !llvm.loop !289

cleanup76:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !288
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %cleanup79 [
    i32 5, label %for.end78
  ]

for.end78:                                        ; preds = %cleanup76
  %63 = load ptr, ptr %hash_keys, align 8, !dbg !291, !tbaa !181
  call void @string_array_destroy(ptr noundef %63), !dbg !292
  %64 = load ptr, ptr %trie, align 8, !dbg !293, !tbaa !181
  store ptr %64, ptr %retval, align 8, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79, !dbg !294

cleanup79:                                        ; preds = %for.end78, %cleanup76
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_keys) #13, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_size) #13, !dbg !295
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #13, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %trie) #13, !dbg !295
  %65 = load ptr, ptr %retval, align 8, !dbg !295
  ret ptr %65, !dbg !295
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !296 ptr @trie_new() #2

declare !dbg !299 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !360 ptr @strrchr(ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @string_array_new_size(i64 noundef %size) #4 !dbg !364 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !199
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !368, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #13, !dbg !370
  tail call void @llvm.dbg.declare(metadata ptr %array, metadata !369, metadata !DIExpression()), !dbg !370
  %call = call noalias ptr @malloc(i64 noundef 24) #16, !dbg !370
  store ptr %call, ptr %array, align 8, !dbg !370, !tbaa !181
  %0 = load ptr, ptr %array, align 8, !dbg !371, !tbaa !181
  %cmp = icmp eq ptr %0, null, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !370

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !371

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array, align 8, !dbg !370, !tbaa !181
  %m = getelementptr inbounds %struct.string_array, ptr %1, i32 0, i32 1, !dbg !370
  store i64 0, ptr %m, align 8, !dbg !370, !tbaa !373
  %2 = load ptr, ptr %array, align 8, !dbg !370, !tbaa !181
  %n = getelementptr inbounds %struct.string_array, ptr %2, i32 0, i32 0, !dbg !370
  store i64 0, ptr %n, align 8, !dbg !370, !tbaa !228
  %3 = load i64, ptr %size.addr, align 8, !dbg !370, !tbaa !199
  %cmp1 = icmp ugt i64 %3, 0, !dbg !370
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !370

cond.true:                                        ; preds = %if.end
  %4 = load i64, ptr %size.addr, align 8, !dbg !370, !tbaa !199
  br label %cond.end, !dbg !370

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !370

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 1, %cond.false ], !dbg !370
  %mul = mul i64 %cond, 8, !dbg !370
  %call2 = call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !370
  %5 = load ptr, ptr %array, align 8, !dbg !370, !tbaa !181
  %a = getelementptr inbounds %struct.string_array, ptr %5, i32 0, i32 2, !dbg !370
  store ptr %call2, ptr %a, align 8, !dbg !370, !tbaa !230
  %6 = load ptr, ptr %array, align 8, !dbg !374, !tbaa !181
  %a3 = getelementptr inbounds %struct.string_array, ptr %6, i32 0, i32 2, !dbg !374
  %7 = load ptr, ptr %a3, align 8, !dbg !374, !tbaa !230
  %cmp4 = icmp eq ptr %7, null, !dbg !374
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !370

if.then5:                                         ; preds = %cond.end
  store ptr null, ptr %retval, align 8, !dbg !374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !374

if.end6:                                          ; preds = %cond.end
  %8 = load i64, ptr %size.addr, align 8, !dbg !370, !tbaa !199
  %9 = load ptr, ptr %array, align 8, !dbg !370, !tbaa !181
  %m7 = getelementptr inbounds %struct.string_array, ptr %9, i32 0, i32 1, !dbg !370
  store i64 %8, ptr %m7, align 8, !dbg !370, !tbaa !373
  %10 = load ptr, ptr %array, align 8, !dbg !370, !tbaa !181
  store ptr %10, ptr %retval, align 8, !dbg !370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !370

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #13, !dbg !370
  %11 = load ptr, ptr %retval, align 8, !dbg !370
  ret ptr %11, !dbg !370
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !376 i64 @strlen(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @string_array_push(ptr noundef %array, ptr noundef %value) #4 !dbg !379 {
entry:
  %array.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %ptr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !383, metadata !DIExpression()), !dbg !389
  store ptr %value, ptr %value.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !384, metadata !DIExpression()), !dbg !389
  %0 = load ptr, ptr %array.addr, align 8, !dbg !390, !tbaa !181
  %n = getelementptr inbounds %struct.string_array, ptr %0, i32 0, i32 0, !dbg !390
  %1 = load i64, ptr %n, align 8, !dbg !390, !tbaa !228
  %2 = load ptr, ptr %array.addr, align 8, !dbg !390, !tbaa !181
  %m = getelementptr inbounds %struct.string_array, ptr %2, i32 0, i32 1, !dbg !390
  %3 = load i64, ptr %m, align 8, !dbg !390, !tbaa !373
  %cmp = icmp eq i64 %1, %3, !dbg !390
  br i1 %cmp, label %if.then, label %if.end8, !dbg !389

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !391
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !385, metadata !DIExpression()), !dbg !391
  %4 = load ptr, ptr %array.addr, align 8, !dbg !391, !tbaa !181
  %m1 = getelementptr inbounds %struct.string_array, ptr %4, i32 0, i32 1, !dbg !391
  %5 = load i64, ptr %m1, align 8, !dbg !391, !tbaa !373
  %tobool = icmp ne i64 %5, 0, !dbg !391
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !391

cond.true:                                        ; preds = %if.then
  %6 = load ptr, ptr %array.addr, align 8, !dbg !391, !tbaa !181
  %m2 = getelementptr inbounds %struct.string_array, ptr %6, i32 0, i32 1, !dbg !391
  %7 = load i64, ptr %m2, align 8, !dbg !391, !tbaa !373
  %shl = shl i64 %7, 1, !dbg !391
  br label %cond.end, !dbg !391

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !391

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ 2, %cond.false ], !dbg !391
  store i64 %cond, ptr %size, align 8, !dbg !391, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #13, !dbg !391
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !388, metadata !DIExpression()), !dbg !391
  %8 = load ptr, ptr %array.addr, align 8, !dbg !391, !tbaa !181
  %a = getelementptr inbounds %struct.string_array, ptr %8, i32 0, i32 2, !dbg !391
  %9 = load ptr, ptr %a, align 8, !dbg !391, !tbaa !230
  %10 = load i64, ptr %size, align 8, !dbg !391, !tbaa !199
  %mul = mul i64 8, %10, !dbg !391
  %call = call ptr @realloc(ptr noundef %9, i64 noundef %mul) #17, !dbg !391
  store ptr %call, ptr %ptr, align 8, !dbg !391, !tbaa !181
  %11 = load ptr, ptr %ptr, align 8, !dbg !392, !tbaa !181
  %cmp3 = icmp eq ptr %11, null, !dbg !392
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !391

if.then4:                                         ; preds = %cond.end
  %12 = load ptr, ptr @stderr, align 8, !dbg !394, !tbaa !181
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.6), !dbg !394
  call void @exit(i32 noundef 1) #18, !dbg !394
  unreachable, !dbg !394

if.end:                                           ; preds = %cond.end
  %13 = load ptr, ptr %ptr, align 8, !dbg !391, !tbaa !181
  %14 = load ptr, ptr %array.addr, align 8, !dbg !391, !tbaa !181
  %a6 = getelementptr inbounds %struct.string_array, ptr %14, i32 0, i32 2, !dbg !391
  store ptr %13, ptr %a6, align 8, !dbg !391, !tbaa !230
  %15 = load i64, ptr %size, align 8, !dbg !391, !tbaa !199
  %16 = load ptr, ptr %array.addr, align 8, !dbg !391, !tbaa !181
  %m7 = getelementptr inbounds %struct.string_array, ptr %16, i32 0, i32 1, !dbg !391
  store i64 %15, ptr %m7, align 8, !dbg !391, !tbaa !373
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #13, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !390
  br label %if.end8, !dbg !391

if.end8:                                          ; preds = %if.end, %entry
  %17 = load ptr, ptr %value.addr, align 8, !dbg !389, !tbaa !181
  %18 = load ptr, ptr %array.addr, align 8, !dbg !389, !tbaa !181
  %a9 = getelementptr inbounds %struct.string_array, ptr %18, i32 0, i32 2, !dbg !389
  %19 = load ptr, ptr %a9, align 8, !dbg !389, !tbaa !230
  %20 = load ptr, ptr %array.addr, align 8, !dbg !389, !tbaa !181
  %n10 = getelementptr inbounds %struct.string_array, ptr %20, i32 0, i32 0, !dbg !389
  %21 = load i64, ptr %n10, align 8, !dbg !389, !tbaa !228
  %inc = add i64 %21, 1, !dbg !389
  store i64 %inc, ptr %n10, align 8, !dbg !389, !tbaa !228
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %21, !dbg !389
  store ptr %17, ptr %arrayidx, align 8, !dbg !389, !tbaa !181
  ret void, !dbg !389
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @ks_introsort_str(i64 noundef %n, ptr noundef %a) #0 !dbg !396 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %d = alloca i32, align 4
  %top = alloca ptr, align 8
  %stack = alloca ptr, align 8
  %rp = alloca ptr, align 8
  %swap_tmp = alloca ptr, align 8
  %s = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  %k = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !199
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !400, metadata !DIExpression()), !dbg !412
  store ptr %a, ptr %a.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !401, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %d, metadata !402, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %top, metadata !403, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %stack, metadata !404, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %rp, metadata !405, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap_tmp) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %swap_tmp, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !407, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !408, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !409, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !410, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #13, !dbg !412
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i64, ptr %n.addr, align 8, !dbg !413, !tbaa !199
  %cmp = icmp ult i64 %0, 1, !dbg !413
  br i1 %cmp, label %if.then, label %if.else, !dbg !412

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !415, !tbaa !199
  %cmp1 = icmp eq i64 %1, 2, !dbg !415
  br i1 %cmp1, label %if.then2, label %if.end10, !dbg !413

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %a.addr, align 8, !dbg !417, !tbaa !181
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1, !dbg !417
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !417, !tbaa !181
  %4 = load ptr, ptr %a.addr, align 8, !dbg !417, !tbaa !181
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 0, !dbg !417
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !417, !tbaa !181
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %5) #14, !dbg !417
  %cmp4 = icmp slt i32 %call, 0, !dbg !417
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !420

if.then5:                                         ; preds = %if.then2
  %6 = load ptr, ptr %a.addr, align 8, !dbg !421, !tbaa !181
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 0, !dbg !421
  %7 = load ptr, ptr %arrayidx6, align 8, !dbg !421, !tbaa !181
  store ptr %7, ptr %swap_tmp, align 8, !dbg !421, !tbaa !181
  %8 = load ptr, ptr %a.addr, align 8, !dbg !421, !tbaa !181
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 1, !dbg !421
  %9 = load ptr, ptr %arrayidx7, align 8, !dbg !421, !tbaa !181
  %10 = load ptr, ptr %a.addr, align 8, !dbg !421, !tbaa !181
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 0, !dbg !421
  store ptr %9, ptr %arrayidx8, align 8, !dbg !421, !tbaa !181
  %11 = load ptr, ptr %swap_tmp, align 8, !dbg !421, !tbaa !181
  %12 = load ptr, ptr %a.addr, align 8, !dbg !421, !tbaa !181
  %arrayidx9 = getelementptr inbounds ptr, ptr %12, i64 1, !dbg !421
  store ptr %11, ptr %arrayidx9, align 8, !dbg !421, !tbaa !181
  br label %if.end, !dbg !421

if.end:                                           ; preds = %if.then5, %if.then2
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !420

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  store i32 2, ptr %d, align 4, !dbg !423, !tbaa !209
  br label %for.cond, !dbg !423

for.cond:                                         ; preds = %for.inc, %if.end11
  %13 = load i32, ptr %d, align 4, !dbg !425, !tbaa !209
  %sh_prom = zext i32 %13 to i64, !dbg !425
  %shl = shl i64 1, %sh_prom, !dbg !425
  %14 = load i64, ptr %n.addr, align 8, !dbg !425, !tbaa !199
  %cmp12 = icmp ult i64 %shl, %14, !dbg !425
  br i1 %cmp12, label %for.body, label %for.end, !dbg !423

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !423

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %d, align 4, !dbg !425, !tbaa !209
  %inc = add nsw i32 %15, 1, !dbg !425
  store i32 %inc, ptr %d, align 4, !dbg !425, !tbaa !209
  br label %for.cond, !dbg !425, !llvm.loop !427

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %d, align 4, !dbg !412, !tbaa !209
  %conv = sext i32 %16 to i64, !dbg !412
  %mul = mul i64 8, %conv, !dbg !412
  %add = add i64 %mul, 2, !dbg !412
  %mul13 = mul i64 24, %add, !dbg !412
  %call14 = call noalias ptr @malloc(i64 noundef %mul13) #16, !dbg !412
  store ptr %call14, ptr %stack, align 8, !dbg !412, !tbaa !181
  %17 = load ptr, ptr %stack, align 8, !dbg !412, !tbaa !181
  store ptr %17, ptr %top, align 8, !dbg !412, !tbaa !181
  %18 = load ptr, ptr %a.addr, align 8, !dbg !412, !tbaa !181
  store ptr %18, ptr %s, align 8, !dbg !412, !tbaa !181
  %19 = load ptr, ptr %a.addr, align 8, !dbg !412, !tbaa !181
  %20 = load i64, ptr %n.addr, align 8, !dbg !412, !tbaa !199
  %sub = sub i64 %20, 1, !dbg !412
  %add.ptr = getelementptr inbounds ptr, ptr %19, i64 %sub, !dbg !412
  store ptr %add.ptr, ptr %t, align 8, !dbg !412, !tbaa !181
  %21 = load i32, ptr %d, align 4, !dbg !412, !tbaa !209
  %shl15 = shl i32 %21, 1, !dbg !412
  store i32 %shl15, ptr %d, align 4, !dbg !412, !tbaa !209
  br label %while.cond, !dbg !412

while.cond:                                       ; preds = %if.end135, %if.then21, %for.end
  br label %while.body, !dbg !412

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %s, align 8, !dbg !428, !tbaa !181
  %23 = load ptr, ptr %t, align 8, !dbg !428, !tbaa !181
  %cmp16 = icmp ult ptr %22, %23, !dbg !428
  br i1 %cmp16, label %if.then18, label %if.else124, !dbg !431

if.then18:                                        ; preds = %while.body
  %24 = load i32, ptr %d, align 4, !dbg !432, !tbaa !209
  %dec = add nsw i32 %24, -1, !dbg !432
  store i32 %dec, ptr %d, align 4, !dbg !432, !tbaa !209
  %cmp19 = icmp eq i32 %dec, 0, !dbg !432
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !435

if.then21:                                        ; preds = %if.then18
  %25 = load ptr, ptr %t, align 8, !dbg !436, !tbaa !181
  %26 = load ptr, ptr %s, align 8, !dbg !436, !tbaa !181
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64, !dbg !436
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64, !dbg !436
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !436
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !436
  %add22 = add nsw i64 %sub.ptr.div, 1, !dbg !436
  %27 = load ptr, ptr %s, align 8, !dbg !436, !tbaa !181
  call void @ks_combsort_str(i64 noundef %add22, ptr noundef %27), !dbg !436
  %28 = load ptr, ptr %s, align 8, !dbg !436, !tbaa !181
  store ptr %28, ptr %t, align 8, !dbg !436, !tbaa !181
  br label %while.cond, !dbg !436, !llvm.loop !438

if.end23:                                         ; preds = %if.then18
  %29 = load ptr, ptr %s, align 8, !dbg !435, !tbaa !181
  store ptr %29, ptr %i, align 8, !dbg !435, !tbaa !181
  %30 = load ptr, ptr %t, align 8, !dbg !435, !tbaa !181
  store ptr %30, ptr %j, align 8, !dbg !435, !tbaa !181
  %31 = load ptr, ptr %i, align 8, !dbg !435, !tbaa !181
  %32 = load ptr, ptr %j, align 8, !dbg !435, !tbaa !181
  %33 = load ptr, ptr %i, align 8, !dbg !435, !tbaa !181
  %sub.ptr.lhs.cast24 = ptrtoint ptr %32 to i64, !dbg !435
  %sub.ptr.rhs.cast25 = ptrtoint ptr %33 to i64, !dbg !435
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25, !dbg !435
  %sub.ptr.div27 = sdiv exact i64 %sub.ptr.sub26, 8, !dbg !435
  %shr = ashr i64 %sub.ptr.div27, 1, !dbg !435
  %add.ptr28 = getelementptr inbounds ptr, ptr %31, i64 %shr, !dbg !435
  %add.ptr29 = getelementptr inbounds ptr, ptr %add.ptr28, i64 1, !dbg !435
  store ptr %add.ptr29, ptr %k, align 8, !dbg !435, !tbaa !181
  %34 = load ptr, ptr %k, align 8, !dbg !439, !tbaa !181
  %35 = load ptr, ptr %34, align 8, !dbg !439, !tbaa !181
  %36 = load ptr, ptr %i, align 8, !dbg !439, !tbaa !181
  %37 = load ptr, ptr %36, align 8, !dbg !439, !tbaa !181
  %call30 = call i32 @strcmp(ptr noundef %35, ptr noundef %37) #14, !dbg !439
  %cmp31 = icmp slt i32 %call30, 0, !dbg !439
  br i1 %cmp31, label %if.then33, label %if.else39, !dbg !435

if.then33:                                        ; preds = %if.end23
  %38 = load ptr, ptr %k, align 8, !dbg !441, !tbaa !181
  %39 = load ptr, ptr %38, align 8, !dbg !441, !tbaa !181
  %40 = load ptr, ptr %j, align 8, !dbg !441, !tbaa !181
  %41 = load ptr, ptr %40, align 8, !dbg !441, !tbaa !181
  %call34 = call i32 @strcmp(ptr noundef %39, ptr noundef %41) #14, !dbg !441
  %cmp35 = icmp slt i32 %call34, 0, !dbg !441
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !444

if.then37:                                        ; preds = %if.then33
  %42 = load ptr, ptr %j, align 8, !dbg !441, !tbaa !181
  store ptr %42, ptr %k, align 8, !dbg !441, !tbaa !181
  br label %if.end38, !dbg !441

if.end38:                                         ; preds = %if.then37, %if.then33
  br label %if.end43, !dbg !444

if.else39:                                        ; preds = %if.end23
  %43 = load ptr, ptr %j, align 8, !dbg !439, !tbaa !181
  %44 = load ptr, ptr %43, align 8, !dbg !439, !tbaa !181
  %45 = load ptr, ptr %i, align 8, !dbg !439, !tbaa !181
  %46 = load ptr, ptr %45, align 8, !dbg !439, !tbaa !181
  %call40 = call i32 @strcmp(ptr noundef %44, ptr noundef %46) #14, !dbg !439
  %cmp41 = icmp slt i32 %call40, 0, !dbg !439
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !439

cond.true:                                        ; preds = %if.else39
  %47 = load ptr, ptr %i, align 8, !dbg !439, !tbaa !181
  br label %cond.end, !dbg !439

cond.false:                                       ; preds = %if.else39
  %48 = load ptr, ptr %j, align 8, !dbg !439, !tbaa !181
  br label %cond.end, !dbg !439

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %47, %cond.true ], [ %48, %cond.false ], !dbg !439
  store ptr %cond, ptr %k, align 8, !dbg !439, !tbaa !181
  br label %if.end43

if.end43:                                         ; preds = %cond.end, %if.end38
  %49 = load ptr, ptr %k, align 8, !dbg !435, !tbaa !181
  %50 = load ptr, ptr %49, align 8, !dbg !435, !tbaa !181
  store ptr %50, ptr %rp, align 8, !dbg !435, !tbaa !181
  %51 = load ptr, ptr %k, align 8, !dbg !445, !tbaa !181
  %52 = load ptr, ptr %t, align 8, !dbg !445, !tbaa !181
  %cmp44 = icmp ne ptr %51, %52, !dbg !445
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !435

if.then46:                                        ; preds = %if.end43
  %53 = load ptr, ptr %k, align 8, !dbg !447, !tbaa !181
  %54 = load ptr, ptr %53, align 8, !dbg !447, !tbaa !181
  store ptr %54, ptr %swap_tmp, align 8, !dbg !447, !tbaa !181
  %55 = load ptr, ptr %t, align 8, !dbg !447, !tbaa !181
  %56 = load ptr, ptr %55, align 8, !dbg !447, !tbaa !181
  %57 = load ptr, ptr %k, align 8, !dbg !447, !tbaa !181
  store ptr %56, ptr %57, align 8, !dbg !447, !tbaa !181
  %58 = load ptr, ptr %swap_tmp, align 8, !dbg !447, !tbaa !181
  %59 = load ptr, ptr %t, align 8, !dbg !447, !tbaa !181
  store ptr %58, ptr %59, align 8, !dbg !447, !tbaa !181
  br label %if.end47, !dbg !447

if.end47:                                         ; preds = %if.then46, %if.end43
  br label %for.cond48, !dbg !435

for.cond48:                                       ; preds = %if.end64, %if.end47
  br label %do.body, !dbg !449

do.body:                                          ; preds = %do.cond, %for.cond48
  %60 = load ptr, ptr %i, align 8, !dbg !449, !tbaa !181
  %incdec.ptr = getelementptr inbounds ptr, ptr %60, i32 1, !dbg !449
  store ptr %incdec.ptr, ptr %i, align 8, !dbg !449, !tbaa !181
  br label %do.cond, !dbg !449

do.cond:                                          ; preds = %do.body
  %61 = load ptr, ptr %i, align 8, !dbg !449, !tbaa !181
  %62 = load ptr, ptr %61, align 8, !dbg !449, !tbaa !181
  %63 = load ptr, ptr %rp, align 8, !dbg !449, !tbaa !181
  %call49 = call i32 @strcmp(ptr noundef %62, ptr noundef %63) #14, !dbg !449
  %cmp50 = icmp slt i32 %call49, 0, !dbg !449
  br i1 %cmp50, label %do.body, label %do.end, !dbg !449, !llvm.loop !453

do.end:                                           ; preds = %do.cond
  br label %do.body52, !dbg !449

do.body52:                                        ; preds = %land.end, %do.end
  %64 = load ptr, ptr %j, align 8, !dbg !449, !tbaa !181
  %incdec.ptr53 = getelementptr inbounds ptr, ptr %64, i32 -1, !dbg !449
  store ptr %incdec.ptr53, ptr %j, align 8, !dbg !449, !tbaa !181
  br label %do.cond54, !dbg !449

do.cond54:                                        ; preds = %do.body52
  %65 = load ptr, ptr %i, align 8, !dbg !449, !tbaa !181
  %66 = load ptr, ptr %j, align 8, !dbg !449, !tbaa !181
  %cmp55 = icmp ule ptr %65, %66, !dbg !449
  br i1 %cmp55, label %land.rhs, label %land.end, !dbg !449

land.rhs:                                         ; preds = %do.cond54
  %67 = load ptr, ptr %rp, align 8, !dbg !449, !tbaa !181
  %68 = load ptr, ptr %j, align 8, !dbg !449, !tbaa !181
  %69 = load ptr, ptr %68, align 8, !dbg !449, !tbaa !181
  %call57 = call i32 @strcmp(ptr noundef %67, ptr noundef %69) #14, !dbg !449
  %cmp58 = icmp slt i32 %call57, 0, !dbg !449
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond54
  %70 = phi i1 [ false, %do.cond54 ], [ %cmp58, %land.rhs ], !dbg !454
  br i1 %70, label %do.body52, label %do.end60, !dbg !449, !llvm.loop !455

do.end60:                                         ; preds = %land.end
  %71 = load ptr, ptr %j, align 8, !dbg !456, !tbaa !181
  %72 = load ptr, ptr %i, align 8, !dbg !456, !tbaa !181
  %cmp61 = icmp ule ptr %71, %72, !dbg !456
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !449

if.then63:                                        ; preds = %do.end60
  br label %for.end65, !dbg !456

if.end64:                                         ; preds = %do.end60
  %73 = load ptr, ptr %i, align 8, !dbg !449, !tbaa !181
  %74 = load ptr, ptr %73, align 8, !dbg !449, !tbaa !181
  store ptr %74, ptr %swap_tmp, align 8, !dbg !449, !tbaa !181
  %75 = load ptr, ptr %j, align 8, !dbg !449, !tbaa !181
  %76 = load ptr, ptr %75, align 8, !dbg !449, !tbaa !181
  %77 = load ptr, ptr %i, align 8, !dbg !449, !tbaa !181
  store ptr %76, ptr %77, align 8, !dbg !449, !tbaa !181
  %78 = load ptr, ptr %swap_tmp, align 8, !dbg !449, !tbaa !181
  %79 = load ptr, ptr %j, align 8, !dbg !449, !tbaa !181
  store ptr %78, ptr %79, align 8, !dbg !449, !tbaa !181
  br label %for.cond48, !dbg !458, !llvm.loop !459

for.end65:                                        ; preds = %if.then63
  %80 = load ptr, ptr %i, align 8, !dbg !435, !tbaa !181
  %81 = load ptr, ptr %80, align 8, !dbg !435, !tbaa !181
  store ptr %81, ptr %swap_tmp, align 8, !dbg !435, !tbaa !181
  %82 = load ptr, ptr %t, align 8, !dbg !435, !tbaa !181
  %83 = load ptr, ptr %82, align 8, !dbg !435, !tbaa !181
  %84 = load ptr, ptr %i, align 8, !dbg !435, !tbaa !181
  store ptr %83, ptr %84, align 8, !dbg !435, !tbaa !181
  %85 = load ptr, ptr %swap_tmp, align 8, !dbg !435, !tbaa !181
  %86 = load ptr, ptr %t, align 8, !dbg !435, !tbaa !181
  store ptr %85, ptr %86, align 8, !dbg !435, !tbaa !181
  %87 = load ptr, ptr %i, align 8, !dbg !461, !tbaa !181
  %88 = load ptr, ptr %s, align 8, !dbg !461, !tbaa !181
  %sub.ptr.lhs.cast66 = ptrtoint ptr %87 to i64, !dbg !461
  %sub.ptr.rhs.cast67 = ptrtoint ptr %88 to i64, !dbg !461
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67, !dbg !461
  %sub.ptr.div69 = sdiv exact i64 %sub.ptr.sub68, 8, !dbg !461
  %89 = load ptr, ptr %t, align 8, !dbg !461, !tbaa !181
  %90 = load ptr, ptr %i, align 8, !dbg !461, !tbaa !181
  %sub.ptr.lhs.cast70 = ptrtoint ptr %89 to i64, !dbg !461
  %sub.ptr.rhs.cast71 = ptrtoint ptr %90 to i64, !dbg !461
  %sub.ptr.sub72 = sub i64 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71, !dbg !461
  %sub.ptr.div73 = sdiv exact i64 %sub.ptr.sub72, 8, !dbg !461
  %cmp74 = icmp sgt i64 %sub.ptr.div69, %sub.ptr.div73, !dbg !461
  br i1 %cmp74, label %if.then76, label %if.else98, !dbg !435

if.then76:                                        ; preds = %for.end65
  %91 = load ptr, ptr %i, align 8, !dbg !463, !tbaa !181
  %92 = load ptr, ptr %s, align 8, !dbg !463, !tbaa !181
  %sub.ptr.lhs.cast77 = ptrtoint ptr %91 to i64, !dbg !463
  %sub.ptr.rhs.cast78 = ptrtoint ptr %92 to i64, !dbg !463
  %sub.ptr.sub79 = sub i64 %sub.ptr.lhs.cast77, %sub.ptr.rhs.cast78, !dbg !463
  %sub.ptr.div80 = sdiv exact i64 %sub.ptr.sub79, 8, !dbg !463
  %cmp81 = icmp sgt i64 %sub.ptr.div80, 16, !dbg !463
  br i1 %cmp81, label %if.then83, label %if.end86, !dbg !466

if.then83:                                        ; preds = %if.then76
  %93 = load ptr, ptr %s, align 8, !dbg !467, !tbaa !181
  %94 = load ptr, ptr %top, align 8, !dbg !467, !tbaa !181
  %left = getelementptr inbounds %struct.ks_isort_stack_t, ptr %94, i32 0, i32 0, !dbg !467
  store ptr %93, ptr %left, align 8, !dbg !467, !tbaa !469
  %95 = load ptr, ptr %i, align 8, !dbg !467, !tbaa !181
  %add.ptr84 = getelementptr inbounds ptr, ptr %95, i64 -1, !dbg !467
  %96 = load ptr, ptr %top, align 8, !dbg !467, !tbaa !181
  %right = getelementptr inbounds %struct.ks_isort_stack_t, ptr %96, i32 0, i32 1, !dbg !467
  store ptr %add.ptr84, ptr %right, align 8, !dbg !467, !tbaa !471
  %97 = load i32, ptr %d, align 4, !dbg !467, !tbaa !209
  %98 = load ptr, ptr %top, align 8, !dbg !467, !tbaa !181
  %depth = getelementptr inbounds %struct.ks_isort_stack_t, ptr %98, i32 0, i32 2, !dbg !467
  store i32 %97, ptr %depth, align 8, !dbg !467, !tbaa !472
  %99 = load ptr, ptr %top, align 8, !dbg !467, !tbaa !181
  %incdec.ptr85 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %99, i32 1, !dbg !467
  store ptr %incdec.ptr85, ptr %top, align 8, !dbg !467, !tbaa !181
  br label %if.end86, !dbg !467

if.end86:                                         ; preds = %if.then83, %if.then76
  %100 = load ptr, ptr %t, align 8, !dbg !466, !tbaa !181
  %101 = load ptr, ptr %i, align 8, !dbg !466, !tbaa !181
  %sub.ptr.lhs.cast87 = ptrtoint ptr %100 to i64, !dbg !466
  %sub.ptr.rhs.cast88 = ptrtoint ptr %101 to i64, !dbg !466
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88, !dbg !466
  %sub.ptr.div90 = sdiv exact i64 %sub.ptr.sub89, 8, !dbg !466
  %cmp91 = icmp sgt i64 %sub.ptr.div90, 16, !dbg !466
  br i1 %cmp91, label %cond.true93, label %cond.false95, !dbg !466

cond.true93:                                      ; preds = %if.end86
  %102 = load ptr, ptr %i, align 8, !dbg !466, !tbaa !181
  %add.ptr94 = getelementptr inbounds ptr, ptr %102, i64 1, !dbg !466
  br label %cond.end96, !dbg !466

cond.false95:                                     ; preds = %if.end86
  %103 = load ptr, ptr %t, align 8, !dbg !466, !tbaa !181
  br label %cond.end96, !dbg !466

cond.end96:                                       ; preds = %cond.false95, %cond.true93
  %cond97 = phi ptr [ %add.ptr94, %cond.true93 ], [ %103, %cond.false95 ], !dbg !466
  store ptr %cond97, ptr %s, align 8, !dbg !466, !tbaa !181
  br label %if.end123, !dbg !466

if.else98:                                        ; preds = %for.end65
  %104 = load ptr, ptr %t, align 8, !dbg !473, !tbaa !181
  %105 = load ptr, ptr %i, align 8, !dbg !473, !tbaa !181
  %sub.ptr.lhs.cast99 = ptrtoint ptr %104 to i64, !dbg !473
  %sub.ptr.rhs.cast100 = ptrtoint ptr %105 to i64, !dbg !473
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100, !dbg !473
  %sub.ptr.div102 = sdiv exact i64 %sub.ptr.sub101, 8, !dbg !473
  %cmp103 = icmp sgt i64 %sub.ptr.div102, 16, !dbg !473
  br i1 %cmp103, label %if.then105, label %if.end111, !dbg !476

if.then105:                                       ; preds = %if.else98
  %106 = load ptr, ptr %i, align 8, !dbg !477, !tbaa !181
  %add.ptr106 = getelementptr inbounds ptr, ptr %106, i64 1, !dbg !477
  %107 = load ptr, ptr %top, align 8, !dbg !477, !tbaa !181
  %left107 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %107, i32 0, i32 0, !dbg !477
  store ptr %add.ptr106, ptr %left107, align 8, !dbg !477, !tbaa !469
  %108 = load ptr, ptr %t, align 8, !dbg !477, !tbaa !181
  %109 = load ptr, ptr %top, align 8, !dbg !477, !tbaa !181
  %right108 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %109, i32 0, i32 1, !dbg !477
  store ptr %108, ptr %right108, align 8, !dbg !477, !tbaa !471
  %110 = load i32, ptr %d, align 4, !dbg !477, !tbaa !209
  %111 = load ptr, ptr %top, align 8, !dbg !477, !tbaa !181
  %depth109 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %111, i32 0, i32 2, !dbg !477
  store i32 %110, ptr %depth109, align 8, !dbg !477, !tbaa !472
  %112 = load ptr, ptr %top, align 8, !dbg !477, !tbaa !181
  %incdec.ptr110 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %112, i32 1, !dbg !477
  store ptr %incdec.ptr110, ptr %top, align 8, !dbg !477, !tbaa !181
  br label %if.end111, !dbg !477

if.end111:                                        ; preds = %if.then105, %if.else98
  %113 = load ptr, ptr %i, align 8, !dbg !476, !tbaa !181
  %114 = load ptr, ptr %s, align 8, !dbg !476, !tbaa !181
  %sub.ptr.lhs.cast112 = ptrtoint ptr %113 to i64, !dbg !476
  %sub.ptr.rhs.cast113 = ptrtoint ptr %114 to i64, !dbg !476
  %sub.ptr.sub114 = sub i64 %sub.ptr.lhs.cast112, %sub.ptr.rhs.cast113, !dbg !476
  %sub.ptr.div115 = sdiv exact i64 %sub.ptr.sub114, 8, !dbg !476
  %cmp116 = icmp sgt i64 %sub.ptr.div115, 16, !dbg !476
  br i1 %cmp116, label %cond.true118, label %cond.false120, !dbg !476

cond.true118:                                     ; preds = %if.end111
  %115 = load ptr, ptr %i, align 8, !dbg !476, !tbaa !181
  %add.ptr119 = getelementptr inbounds ptr, ptr %115, i64 -1, !dbg !476
  br label %cond.end121, !dbg !476

cond.false120:                                    ; preds = %if.end111
  %116 = load ptr, ptr %s, align 8, !dbg !476, !tbaa !181
  br label %cond.end121, !dbg !476

cond.end121:                                      ; preds = %cond.false120, %cond.true118
  %cond122 = phi ptr [ %add.ptr119, %cond.true118 ], [ %116, %cond.false120 ], !dbg !476
  store ptr %cond122, ptr %t, align 8, !dbg !476, !tbaa !181
  br label %if.end123

if.end123:                                        ; preds = %cond.end121, %cond.end96
  br label %if.end135, !dbg !435

if.else124:                                       ; preds = %while.body
  %117 = load ptr, ptr %top, align 8, !dbg !479, !tbaa !181
  %118 = load ptr, ptr %stack, align 8, !dbg !479, !tbaa !181
  %cmp125 = icmp eq ptr %117, %118, !dbg !479
  br i1 %cmp125, label %if.then127, label %if.else129, !dbg !482

if.then127:                                       ; preds = %if.else124
  %119 = load ptr, ptr %stack, align 8, !dbg !483, !tbaa !181
  call void @free(ptr noundef %119) #13, !dbg !483
  %120 = load ptr, ptr %a.addr, align 8, !dbg !483, !tbaa !181
  %121 = load ptr, ptr %a.addr, align 8, !dbg !483, !tbaa !181
  %122 = load i64, ptr %n.addr, align 8, !dbg !483, !tbaa !199
  %add.ptr128 = getelementptr inbounds ptr, ptr %121, i64 %122, !dbg !483
  call void @__ks_insertsort_str(ptr noundef %120, ptr noundef %add.ptr128), !dbg !483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !483

if.else129:                                       ; preds = %if.else124
  %123 = load ptr, ptr %top, align 8, !dbg !485, !tbaa !181
  %incdec.ptr130 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %123, i32 -1, !dbg !485
  store ptr %incdec.ptr130, ptr %top, align 8, !dbg !485, !tbaa !181
  %124 = load ptr, ptr %top, align 8, !dbg !485, !tbaa !181
  %left131 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %124, i32 0, i32 0, !dbg !485
  %125 = load ptr, ptr %left131, align 8, !dbg !485, !tbaa !469
  store ptr %125, ptr %s, align 8, !dbg !485, !tbaa !181
  %126 = load ptr, ptr %top, align 8, !dbg !485, !tbaa !181
  %right132 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %126, i32 0, i32 1, !dbg !485
  %127 = load ptr, ptr %right132, align 8, !dbg !485, !tbaa !471
  store ptr %127, ptr %t, align 8, !dbg !485, !tbaa !181
  %128 = load ptr, ptr %top, align 8, !dbg !485, !tbaa !181
  %depth133 = getelementptr inbounds %struct.ks_isort_stack_t, ptr %128, i32 0, i32 2, !dbg !485
  %129 = load i32, ptr %depth133, align 8, !dbg !485, !tbaa !472
  store i32 %129, ptr %d, align 4, !dbg !485, !tbaa !209
  br label %if.end134

if.end134:                                        ; preds = %if.else129
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end123
  br label %while.cond, !dbg !412, !llvm.loop !438

cleanup:                                          ; preds = %if.then127, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap_tmp) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #13, !dbg !412
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #13, !dbg !412
  ret void, !dbg !412
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_str_uint32(ptr noundef %h, ptr noundef %key) #4 !dbg !487 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !493, metadata !DIExpression()), !dbg !502
  store ptr %key, ptr %key.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !494, metadata !DIExpression()), !dbg !502
  %0 = load ptr, ptr %h.addr, align 8, !dbg !503, !tbaa !181
  %n_buckets = getelementptr inbounds %struct.kh_str_uint32_t, ptr %0, i32 0, i32 0, !dbg !503
  %1 = load i32, ptr %n_buckets, align 8, !dbg !503, !tbaa !212
  %tobool = icmp ne i32 %1, 0, !dbg !503
  br i1 %tobool, label %if.then, label %if.else, !dbg !502

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !495, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !498, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #13, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !499, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #13, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !500, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #13, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !501, metadata !DIExpression()), !dbg !504
  store i32 0, ptr %step, align 4, !dbg !504, !tbaa !209
  %2 = load ptr, ptr %h.addr, align 8, !dbg !504, !tbaa !181
  %n_buckets1 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %2, i32 0, i32 0, !dbg !504
  %3 = load i32, ptr %n_buckets1, align 8, !dbg !504, !tbaa !212
  %sub = sub i32 %3, 1, !dbg !504
  store i32 %sub, ptr %mask, align 4, !dbg !504, !tbaa !209
  %4 = load ptr, ptr %key.addr, align 8, !dbg !504, !tbaa !181
  %call = call i32 @__ac_X31_hash_string(ptr noundef %4), !dbg !504
  store i32 %call, ptr %k, align 4, !dbg !504, !tbaa !209
  %5 = load i32, ptr %k, align 4, !dbg !504, !tbaa !209
  %6 = load i32, ptr %mask, align 4, !dbg !504, !tbaa !209
  %and = and i32 %5, %6, !dbg !504
  store i32 %and, ptr %i, align 4, !dbg !504, !tbaa !209
  %7 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  store i32 %7, ptr %last, align 4, !dbg !504, !tbaa !209
  br label %while.cond, !dbg !504

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !504, !tbaa !181
  %flags = getelementptr inbounds %struct.kh_str_uint32_t, ptr %8, i32 0, i32 4, !dbg !504
  %9 = load ptr, ptr %flags, align 8, !dbg !504, !tbaa !216
  %10 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  %shr = lshr i32 %10, 4, !dbg !504
  %idxprom = zext i32 %shr to i64, !dbg !504
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom, !dbg !504
  %11 = load i32, ptr %arrayidx, align 4, !dbg !504, !tbaa !209
  %12 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  %and2 = and i32 %12, 15, !dbg !504
  %shl = shl i32 %and2, 1, !dbg !504
  %shr3 = lshr i32 %11, %shl, !dbg !504
  %and4 = and i32 %shr3, 2, !dbg !504
  %tobool5 = icmp ne i32 %and4, 0, !dbg !504
  br i1 %tobool5, label %land.end, label %land.rhs, !dbg !504

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %h.addr, align 8, !dbg !504, !tbaa !181
  %flags6 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %13, i32 0, i32 4, !dbg !504
  %14 = load ptr, ptr %flags6, align 8, !dbg !504, !tbaa !216
  %15 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  %shr7 = lshr i32 %15, 4, !dbg !504
  %idxprom8 = zext i32 %shr7 to i64, !dbg !504
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8, !dbg !504
  %16 = load i32, ptr %arrayidx9, align 4, !dbg !504, !tbaa !209
  %17 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  %and10 = and i32 %17, 15, !dbg !504
  %shl11 = shl i32 %and10, 1, !dbg !504
  %shr12 = lshr i32 %16, %shl11, !dbg !504
  %and13 = and i32 %shr12, 1, !dbg !504
  %tobool14 = icmp ne i32 %and13, 0, !dbg !504
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !504

lor.rhs:                                          ; preds = %land.rhs
  %18 = load ptr, ptr %h.addr, align 8, !dbg !504, !tbaa !181
  %keys = getelementptr inbounds %struct.kh_str_uint32_t, ptr %18, i32 0, i32 5, !dbg !504
  %19 = load ptr, ptr %keys, align 8, !dbg !504, !tbaa !218
  %20 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  %idxprom15 = zext i32 %20 to i64, !dbg !504
  %arrayidx16 = getelementptr inbounds ptr, ptr %19, i64 %idxprom15, !dbg !504
  %21 = load ptr, ptr %arrayidx16, align 8, !dbg !504, !tbaa !181
  %22 = load ptr, ptr %key.addr, align 8, !dbg !504, !tbaa !181
  %call17 = call i32 @strcmp(ptr noundef %21, ptr noundef %22) #14, !dbg !504
  %cmp = icmp eq i32 %call17, 0, !dbg !504
  %lnot = xor i1 %cmp, true, !dbg !504
  br label %lor.end, !dbg !504

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %23, %lor.end ], !dbg !505
  br i1 %24, label %while.body, label %while.end, !dbg !504

while.body:                                       ; preds = %land.end
  %25 = load i32, ptr %i, align 4, !dbg !506, !tbaa !209
  %26 = load i32, ptr %step, align 4, !dbg !506, !tbaa !209
  %inc = add i32 %26, 1, !dbg !506
  store i32 %inc, ptr %step, align 4, !dbg !506, !tbaa !209
  %add = add i32 %25, %inc, !dbg !506
  %27 = load i32, ptr %mask, align 4, !dbg !506, !tbaa !209
  %and18 = and i32 %add, %27, !dbg !506
  store i32 %and18, ptr %i, align 4, !dbg !506, !tbaa !209
  %28 = load i32, ptr %i, align 4, !dbg !508, !tbaa !209
  %29 = load i32, ptr %last, align 4, !dbg !508, !tbaa !209
  %cmp19 = icmp eq i32 %28, %29, !dbg !508
  br i1 %cmp19, label %if.then20, label %if.end, !dbg !506

if.then20:                                        ; preds = %while.body
  %30 = load ptr, ptr %h.addr, align 8, !dbg !508, !tbaa !181
  %n_buckets21 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %30, i32 0, i32 0, !dbg !508
  %31 = load i32, ptr %n_buckets21, align 8, !dbg !508, !tbaa !212
  store i32 %31, ptr %retval, align 4, !dbg !508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !508

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !504, !llvm.loop !510

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %h.addr, align 8, !dbg !504, !tbaa !181
  %flags22 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %32, i32 0, i32 4, !dbg !504
  %33 = load ptr, ptr %flags22, align 8, !dbg !504, !tbaa !216
  %34 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  %shr23 = lshr i32 %34, 4, !dbg !504
  %idxprom24 = zext i32 %shr23 to i64, !dbg !504
  %arrayidx25 = getelementptr inbounds i32, ptr %33, i64 %idxprom24, !dbg !504
  %35 = load i32, ptr %arrayidx25, align 4, !dbg !504, !tbaa !209
  %36 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  %and26 = and i32 %36, 15, !dbg !504
  %shl27 = shl i32 %and26, 1, !dbg !504
  %shr28 = lshr i32 %35, %shl27, !dbg !504
  %and29 = and i32 %shr28, 3, !dbg !504
  %tobool30 = icmp ne i32 %and29, 0, !dbg !504
  br i1 %tobool30, label %cond.true, label %cond.false, !dbg !504

cond.true:                                        ; preds = %while.end
  %37 = load ptr, ptr %h.addr, align 8, !dbg !504, !tbaa !181
  %n_buckets31 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %37, i32 0, i32 0, !dbg !504
  %38 = load i32, ptr %n_buckets31, align 8, !dbg !504, !tbaa !212
  br label %cond.end, !dbg !504

cond.false:                                       ; preds = %while.end
  %39 = load i32, ptr %i, align 4, !dbg !504, !tbaa !209
  br label %cond.end, !dbg !504

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !504
  store i32 %cond, ptr %retval, align 4, !dbg !504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !504

cleanup:                                          ; preds = %cond.end, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #13, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #13, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #13, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13, !dbg !503
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !503
  br label %return, !dbg !503

return:                                           ; preds = %if.else, %cleanup
  %40 = load i32, ptr %retval, align 4, !dbg !502
  ret i32 %40, !dbg !502
}

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !511 ptr @__errno_location() #5

; Function Attrs: nounwind
declare !dbg !516 ptr @strerror(i32 noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @string_array_destroy(ptr noundef %array) #4 !dbg !519 {
entry:
  %array.addr = alloca ptr, align 8
  store ptr %array, ptr %array.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load ptr, ptr %array.addr, align 8, !dbg !525, !tbaa !181
  %cmp = icmp eq ptr %0, null, !dbg !525
  br i1 %cmp, label %if.then, label %if.end, !dbg !524

if.then:                                          ; preds = %entry
  br label %return, !dbg !525

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %array.addr, align 8, !dbg !527, !tbaa !181
  %a = getelementptr inbounds %struct.string_array, ptr %1, i32 0, i32 2, !dbg !527
  %2 = load ptr, ptr %a, align 8, !dbg !527, !tbaa !230
  %cmp1 = icmp ne ptr %2, null, !dbg !527
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !524

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %array.addr, align 8, !dbg !527, !tbaa !181
  %a3 = getelementptr inbounds %struct.string_array, ptr %3, i32 0, i32 2, !dbg !527
  %4 = load ptr, ptr %a3, align 8, !dbg !527, !tbaa !230
  call void @free(ptr noundef %4) #13, !dbg !527
  br label %if.end4, !dbg !527

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %array.addr, align 8, !dbg !524, !tbaa !181
  call void @free(ptr noundef %5) #13, !dbg !524
  br label %return, !dbg !524

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !524
}

declare !dbg !529 void @trie_destroy(ptr noundef) #2

declare !dbg !532 zeroext i1 @trie_add(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @trie_new_from_cstring_array_sorted(ptr noundef %strings) #0 !dbg !536 {
entry:
  %retval = alloca ptr, align 8
  %strings.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %next_id = alloca i32, align 4
  %n = alloca i64, align 8
  %hash = alloca ptr, align 8
  %__si = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %trie = alloca ptr, align 8
  store ptr %strings, ptr %strings.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %strings.addr, metadata !561, metadata !DIExpression()), !dbg !576
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #13, !dbg !577
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !562, metadata !DIExpression()), !dbg !578
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !579
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !563, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !581
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !564, metadata !DIExpression()), !dbg !582
  store i32 0, ptr %ret, align 4, !dbg !582, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_id) #13, !dbg !583
  tail call void @llvm.dbg.declare(metadata ptr %next_id, metadata !565, metadata !DIExpression()), !dbg !584
  store i32 0, ptr %next_id, align 4, !dbg !584, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #13, !dbg !585
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !566, metadata !DIExpression()), !dbg !586
  %0 = load ptr, ptr %strings.addr, align 8, !dbg !587, !tbaa !181
  %call = call i64 @cstring_array_num_strings(ptr noundef %0), !dbg !588
  store i64 %call, ptr %n, align 8, !dbg !586, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #13, !dbg !589
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !567, metadata !DIExpression()), !dbg !590
  %call1 = call ptr @kh_init_str_uint32(), !dbg !591
  store ptr %call1, ptr %hash, align 8, !dbg !590, !tbaa !181
  %1 = load ptr, ptr %hash, align 8, !dbg !592, !tbaa !181
  %2 = load i64, ptr %n, align 8, !dbg !592, !tbaa !199
  %conv = trunc i64 %2 to i32, !dbg !592
  %call2 = call i32 @kh_resize_str_uint32(ptr noundef %1, i32 noundef %conv), !dbg !592
  call void @llvm.lifetime.start.p0(i64 4, ptr %__si) #13, !dbg !593
  tail call void @llvm.dbg.declare(metadata ptr %__si, metadata !568, metadata !DIExpression()), !dbg !593
  store i32 0, ptr %__si, align 4, !dbg !593, !tbaa !209
  br label %for.cond, !dbg !593

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %__si, align 4, !dbg !594, !tbaa !209
  %conv3 = sext i32 %3 to i64, !dbg !594
  %4 = load ptr, ptr %strings.addr, align 8, !dbg !594, !tbaa !181
  %indices = getelementptr inbounds %struct.cstring_array, ptr %4, i32 0, i32 0, !dbg !594
  %5 = load ptr, ptr %indices, align 8, !dbg !594, !tbaa !595
  %n4 = getelementptr inbounds %struct.uint32_array, ptr %5, i32 0, i32 0, !dbg !594
  %6 = load i64, ptr %n4, align 8, !dbg !594, !tbaa !228
  %cmp = icmp ult i64 %conv3, %6, !dbg !594
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !593

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !593

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %__si, align 4, !dbg !597, !tbaa !209
  store i32 %7, ptr %i, align 4, !dbg !597, !tbaa !209
  %8 = load ptr, ptr %strings.addr, align 8, !dbg !597, !tbaa !181
  %str = getelementptr inbounds %struct.cstring_array, ptr %8, i32 0, i32 1, !dbg !597
  %9 = load ptr, ptr %str, align 8, !dbg !597, !tbaa !598
  %a = getelementptr inbounds %struct.char_array, ptr %9, i32 0, i32 2, !dbg !597
  %10 = load ptr, ptr %a, align 8, !dbg !597, !tbaa !230
  %11 = load ptr, ptr %strings.addr, align 8, !dbg !597, !tbaa !181
  %indices6 = getelementptr inbounds %struct.cstring_array, ptr %11, i32 0, i32 0, !dbg !597
  %12 = load ptr, ptr %indices6, align 8, !dbg !597, !tbaa !595
  %a7 = getelementptr inbounds %struct.uint32_array, ptr %12, i32 0, i32 2, !dbg !597
  %13 = load ptr, ptr %a7, align 8, !dbg !597, !tbaa !230
  %14 = load i32, ptr %__si, align 4, !dbg !597, !tbaa !209
  %idxprom = sext i32 %14 to i64, !dbg !597
  %arrayidx = getelementptr inbounds i32, ptr %13, i64 %idxprom, !dbg !597
  %15 = load i32, ptr %arrayidx, align 4, !dbg !597, !tbaa !209
  %idx.ext = zext i32 %15 to i64, !dbg !597
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext, !dbg !597
  store ptr %add.ptr, ptr %key, align 8, !dbg !597, !tbaa !181
  %16 = load ptr, ptr %key, align 8, !dbg !599, !tbaa !181
  %call8 = call i64 @strlen(ptr noundef %16) #14, !dbg !599
  %cmp9 = icmp eq i64 %call8, 0, !dbg !599
  br i1 %cmp9, label %if.then, label %if.end, !dbg !601

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !599

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13, !dbg !601
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !571, metadata !DIExpression()), !dbg !601
  %17 = load ptr, ptr %hash, align 8, !dbg !601, !tbaa !181
  %18 = load ptr, ptr %key, align 8, !dbg !601, !tbaa !181
  %call11 = call i32 @kh_put_str_uint32(ptr noundef %17, ptr noundef %18, ptr noundef %ret), !dbg !601
  store i32 %call11, ptr %k, align 4, !dbg !601, !tbaa !209
  %19 = load i32, ptr %ret, align 4, !dbg !602, !tbaa !209
  %cmp12 = icmp slt i32 %19, 0, !dbg !602
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !601

if.then14:                                        ; preds = %if.end
  %20 = load ptr, ptr %hash, align 8, !dbg !604, !tbaa !181
  call void @kh_destroy_str_uint32(ptr noundef %20), !dbg !604
  store ptr null, ptr %retval, align 8, !dbg !604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !604

if.end15:                                         ; preds = %if.end
  %21 = load i32, ptr %next_id, align 4, !dbg !601, !tbaa !209
  %inc = add i32 %21, 1, !dbg !601
  store i32 %inc, ptr %next_id, align 4, !dbg !601, !tbaa !209
  %22 = load ptr, ptr %hash, align 8, !dbg !601, !tbaa !181
  %vals = getelementptr inbounds %struct.kh_str_uint32_t, ptr %22, i32 0, i32 6, !dbg !601
  %23 = load ptr, ptr %vals, align 8, !dbg !601, !tbaa !219
  %24 = load i32, ptr %k, align 4, !dbg !601, !tbaa !209
  %idxprom16 = zext i32 %24 to i64, !dbg !601
  %arrayidx17 = getelementptr inbounds i32, ptr %23, i64 %idxprom16, !dbg !601
  store i32 %21, ptr %arrayidx17, align 4, !dbg !601, !tbaa !209
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !597
  br label %cleanup, !dbg !597

cleanup:                                          ; preds = %if.end15, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13, !dbg !597
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !597

for.inc:                                          ; preds = %cleanup.cont, %if.then
  %25 = load i32, ptr %__si, align 4, !dbg !594, !tbaa !209
  %inc18 = add nsw i32 %25, 1, !dbg !594
  store i32 %inc18, ptr %__si, align 4, !dbg !594, !tbaa !209
  br label %for.cond, !dbg !594, !llvm.loop !606

cleanup19:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__si) #13, !dbg !594
  %cleanup.dest20 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest20, label %cleanup23 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup19
  call void @llvm.lifetime.start.p0(i64 8, ptr %trie) #13, !dbg !607
  tail call void @llvm.dbg.declare(metadata ptr %trie, metadata !575, metadata !DIExpression()), !dbg !608
  %26 = load ptr, ptr %hash, align 8, !dbg !609, !tbaa !181
  %call21 = call ptr @trie_new_from_hash(ptr noundef %26), !dbg !610
  store ptr %call21, ptr %trie, align 8, !dbg !608, !tbaa !181
  %27 = load ptr, ptr %hash, align 8, !dbg !611, !tbaa !181
  call void @kh_destroy_str_uint32(ptr noundef %27), !dbg !611
  %28 = load ptr, ptr %trie, align 8, !dbg !612, !tbaa !181
  store ptr %28, ptr %retval, align 8, !dbg !613
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trie) #13, !dbg !614
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup19
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #13, !dbg !614
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #13, !dbg !614
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_id) #13, !dbg !614
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !614
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !614
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #13, !dbg !614
  %29 = load ptr, ptr %retval, align 8, !dbg !614
  ret ptr %29, !dbg !614
}

declare !dbg !615 i64 @cstring_array_num_strings(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @kh_init_str_uint32() #4 !dbg !618 {
entry:
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #19, !dbg !621
  ret ptr %call, !dbg !621
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_resize_str_uint32(ptr noundef %h, i32 noundef %new_n_buckets) #4 !dbg !622 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %new_n_buckets.addr = alloca i32, align 4
  %new_flags = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %new_keys = alloca ptr, align 8
  %new_vals = alloca ptr, align 8
  %key = alloca ptr, align 8
  %val = alloca i32, align 4
  %new_mask = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp121 = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !626, metadata !DIExpression()), !dbg !660
  store i32 %new_n_buckets, ptr %new_n_buckets.addr, align 4, !tbaa !209
  tail call void @llvm.dbg.declare(metadata ptr %new_n_buckets.addr, metadata !627, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_flags) #13, !dbg !660
  tail call void @llvm.dbg.declare(metadata ptr %new_flags, metadata !628, metadata !DIExpression()), !dbg !660
  store ptr null, ptr %new_flags, align 8, !dbg !660, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !660
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !629, metadata !DIExpression()), !dbg !660
  store i32 1, ptr %j, align 4, !dbg !660, !tbaa !209
  %0 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %dec = add i32 %0, -1, !dbg !661
  store i32 %dec, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %1 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %shr = lshr i32 %1, 1, !dbg !661
  %2 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %or = or i32 %2, %shr, !dbg !661
  store i32 %or, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %3 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %shr1 = lshr i32 %3, 2, !dbg !661
  %4 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %or2 = or i32 %4, %shr1, !dbg !661
  store i32 %or2, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %5 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %shr3 = lshr i32 %5, 4, !dbg !661
  %6 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %or4 = or i32 %6, %shr3, !dbg !661
  store i32 %or4, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %7 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %shr5 = lshr i32 %7, 8, !dbg !661
  %8 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %or6 = or i32 %8, %shr5, !dbg !661
  store i32 %or6, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %9 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %shr7 = lshr i32 %9, 16, !dbg !661
  %10 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %or8 = or i32 %10, %shr7, !dbg !661
  store i32 %or8, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %11 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %inc = add i32 %11, 1, !dbg !661
  store i32 %inc, ptr %new_n_buckets.addr, align 4, !dbg !661, !tbaa !209
  %12 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !662, !tbaa !209
  %cmp = icmp ult i32 %12, 4, !dbg !662
  br i1 %cmp, label %if.then, label %if.end, !dbg !661

if.then:                                          ; preds = %entry
  store i32 4, ptr %new_n_buckets.addr, align 4, !dbg !662, !tbaa !209
  br label %if.end, !dbg !662

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %h.addr, align 8, !dbg !664, !tbaa !181
  %size = getelementptr inbounds %struct.kh_str_uint32_t, ptr %13, i32 0, i32 1, !dbg !664
  %14 = load i32, ptr %size, align 4, !dbg !664, !tbaa !196
  %15 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !664, !tbaa !209
  %conv = uitofp i32 %15 to double, !dbg !664
  %16 = call double @llvm.fmuladd.f64(double %conv, double 7.700000e-01, double 5.000000e-01), !dbg !664
  %conv9 = fptoui double %16 to i32, !dbg !664
  %cmp10 = icmp uge i32 %14, %conv9, !dbg !664
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !661

if.then12:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4, !dbg !664, !tbaa !209
  br label %if.end49, !dbg !664

if.else:                                          ; preds = %if.end
  %17 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !665, !tbaa !209
  %cmp13 = icmp ult i32 %17, 16, !dbg !665
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !665

cond.true:                                        ; preds = %if.else
  br label %cond.end, !dbg !665

cond.false:                                       ; preds = %if.else
  %18 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !665, !tbaa !209
  %shr15 = lshr i32 %18, 4, !dbg !665
  br label %cond.end, !dbg !665

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %shr15, %cond.false ], !dbg !665
  %conv16 = zext i32 %cond to i64, !dbg !665
  %mul = mul i64 %conv16, 4, !dbg !665
  %call = call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !665
  store ptr %call, ptr %new_flags, align 8, !dbg !665, !tbaa !181
  %19 = load ptr, ptr %new_flags, align 8, !dbg !666, !tbaa !181
  %tobool = icmp ne ptr %19, null, !dbg !666
  br i1 %tobool, label %if.end18, label %if.then17, !dbg !665

if.then17:                                        ; preds = %cond.end
  store i32 -1, ptr %retval, align 4, !dbg !666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup179, !dbg !666

if.end18:                                         ; preds = %cond.end
  %20 = load ptr, ptr %new_flags, align 8, !dbg !665, !tbaa !181
  %21 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !665, !tbaa !209
  %cmp19 = icmp ult i32 %21, 16, !dbg !665
  br i1 %cmp19, label %cond.true21, label %cond.false22, !dbg !665

cond.true21:                                      ; preds = %if.end18
  br label %cond.end24, !dbg !665

cond.false22:                                     ; preds = %if.end18
  %22 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !665, !tbaa !209
  %shr23 = lshr i32 %22, 4, !dbg !665
  br label %cond.end24, !dbg !665

cond.end24:                                       ; preds = %cond.false22, %cond.true21
  %cond25 = phi i32 [ 1, %cond.true21 ], [ %shr23, %cond.false22 ], !dbg !665
  %conv26 = zext i32 %cond25 to i64, !dbg !665
  %mul27 = mul i64 %conv26, 4, !dbg !665
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 -86, i64 %mul27, i1 false), !dbg !665
  %23 = load ptr, ptr %h.addr, align 8, !dbg !668, !tbaa !181
  %n_buckets = getelementptr inbounds %struct.kh_str_uint32_t, ptr %23, i32 0, i32 0, !dbg !668
  %24 = load i32, ptr %n_buckets, align 8, !dbg !668, !tbaa !212
  %25 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !668, !tbaa !209
  %cmp28 = icmp ult i32 %24, %25, !dbg !668
  br i1 %cmp28, label %if.then30, label %if.end48, !dbg !665

if.then30:                                        ; preds = %cond.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_keys) #13, !dbg !669
  tail call void @llvm.dbg.declare(metadata ptr %new_keys, metadata !630, metadata !DIExpression()), !dbg !669
  %26 = load ptr, ptr %h.addr, align 8, !dbg !669, !tbaa !181
  %keys = getelementptr inbounds %struct.kh_str_uint32_t, ptr %26, i32 0, i32 5, !dbg !669
  %27 = load ptr, ptr %keys, align 8, !dbg !669, !tbaa !218
  %28 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !669, !tbaa !209
  %conv31 = zext i32 %28 to i64, !dbg !669
  %mul32 = mul i64 %conv31, 8, !dbg !669
  %call33 = call ptr @realloc(ptr noundef %27, i64 noundef %mul32) #17, !dbg !669
  store ptr %call33, ptr %new_keys, align 8, !dbg !669, !tbaa !181
  %29 = load ptr, ptr %new_keys, align 8, !dbg !670, !tbaa !181
  %tobool34 = icmp ne ptr %29, null, !dbg !670
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !669

if.then35:                                        ; preds = %if.then30
  %30 = load ptr, ptr %new_flags, align 8, !dbg !672, !tbaa !181
  call void @free(ptr noundef %30) #13, !dbg !672
  store i32 -1, ptr %retval, align 4, !dbg !672
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !672

if.end36:                                         ; preds = %if.then30
  %31 = load ptr, ptr %new_keys, align 8, !dbg !669, !tbaa !181
  %32 = load ptr, ptr %h.addr, align 8, !dbg !669, !tbaa !181
  %keys37 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %32, i32 0, i32 5, !dbg !669
  store ptr %31, ptr %keys37, align 8, !dbg !669, !tbaa !218
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_vals) #13, !dbg !674
  tail call void @llvm.dbg.declare(metadata ptr %new_vals, metadata !636, metadata !DIExpression()), !dbg !674
  %33 = load ptr, ptr %h.addr, align 8, !dbg !674, !tbaa !181
  %vals = getelementptr inbounds %struct.kh_str_uint32_t, ptr %33, i32 0, i32 6, !dbg !674
  %34 = load ptr, ptr %vals, align 8, !dbg !674, !tbaa !219
  %35 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !674, !tbaa !209
  %conv38 = zext i32 %35 to i64, !dbg !674
  %mul39 = mul i64 %conv38, 4, !dbg !674
  %call40 = call ptr @realloc(ptr noundef %34, i64 noundef %mul39) #17, !dbg !674
  store ptr %call40, ptr %new_vals, align 8, !dbg !674, !tbaa !181
  %36 = load ptr, ptr %new_vals, align 8, !dbg !675, !tbaa !181
  %tobool41 = icmp ne ptr %36, null, !dbg !675
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !674

if.then42:                                        ; preds = %if.end36
  %37 = load ptr, ptr %new_flags, align 8, !dbg !677, !tbaa !181
  call void @free(ptr noundef %37) #13, !dbg !677
  store i32 -1, ptr %retval, align 4, !dbg !677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !677

if.end43:                                         ; preds = %if.end36
  %38 = load ptr, ptr %new_vals, align 8, !dbg !674, !tbaa !181
  %39 = load ptr, ptr %h.addr, align 8, !dbg !674, !tbaa !181
  %vals44 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %39, i32 0, i32 6, !dbg !674
  store ptr %38, ptr %vals44, align 8, !dbg !674, !tbaa !219
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !679
  br label %cleanup, !dbg !679

cleanup:                                          ; preds = %if.end43, %if.then42
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_vals) #13, !dbg !679
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !668
  br label %cleanup45, !dbg !668

cleanup45:                                        ; preds = %cleanup.cont, %cleanup, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_keys) #13, !dbg !668
  %cleanup.dest46 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest46, label %cleanup179 [
    i32 0, label %cleanup.cont47
  ]

cleanup.cont47:                                   ; preds = %cleanup45
  br label %if.end48, !dbg !669

if.end48:                                         ; preds = %cleanup.cont47, %cond.end24
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then12
  %40 = load i32, ptr %j, align 4, !dbg !680, !tbaa !209
  %tobool50 = icmp ne i32 %40, 0, !dbg !680
  br i1 %tobool50, label %if.then51, label %if.end178, !dbg !660

if.then51:                                        ; preds = %if.end49
  store i32 0, ptr %j, align 4, !dbg !681, !tbaa !209
  br label %for.cond, !dbg !681

for.cond:                                         ; preds = %for.inc, %if.then51
  %41 = load i32, ptr %j, align 4, !dbg !682, !tbaa !209
  %42 = load ptr, ptr %h.addr, align 8, !dbg !682, !tbaa !181
  %n_buckets52 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %42, i32 0, i32 0, !dbg !682
  %43 = load i32, ptr %n_buckets52, align 8, !dbg !682, !tbaa !212
  %cmp53 = icmp ne i32 %41, %43, !dbg !682
  br i1 %cmp53, label %for.body, label %for.end, !dbg !681

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %h.addr, align 8, !dbg !683, !tbaa !181
  %flags = getelementptr inbounds %struct.kh_str_uint32_t, ptr %44, i32 0, i32 4, !dbg !683
  %45 = load ptr, ptr %flags, align 8, !dbg !683, !tbaa !216
  %46 = load i32, ptr %j, align 4, !dbg !683, !tbaa !209
  %shr55 = lshr i32 %46, 4, !dbg !683
  %idxprom = zext i32 %shr55 to i64, !dbg !683
  %arrayidx = getelementptr inbounds i32, ptr %45, i64 %idxprom, !dbg !683
  %47 = load i32, ptr %arrayidx, align 4, !dbg !683, !tbaa !209
  %48 = load i32, ptr %j, align 4, !dbg !683, !tbaa !209
  %and = and i32 %48, 15, !dbg !683
  %shl = shl i32 %and, 1, !dbg !683
  %shr56 = lshr i32 %47, %shl, !dbg !683
  %and57 = and i32 %shr56, 3, !dbg !683
  %cmp58 = icmp eq i32 %and57, 0, !dbg !683
  br i1 %cmp58, label %if.then60, label %if.end153, !dbg !684

if.then60:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #13, !dbg !685
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !639, metadata !DIExpression()), !dbg !685
  %49 = load ptr, ptr %h.addr, align 8, !dbg !685, !tbaa !181
  %keys61 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %49, i32 0, i32 5, !dbg !685
  %50 = load ptr, ptr %keys61, align 8, !dbg !685, !tbaa !218
  %51 = load i32, ptr %j, align 4, !dbg !685, !tbaa !209
  %idxprom62 = zext i32 %51 to i64, !dbg !685
  %arrayidx63 = getelementptr inbounds ptr, ptr %50, i64 %idxprom62, !dbg !685
  %52 = load ptr, ptr %arrayidx63, align 8, !dbg !685, !tbaa !181
  store ptr %52, ptr %key, align 8, !dbg !685, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #13, !dbg !685
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !647, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_mask) #13, !dbg !685
  tail call void @llvm.dbg.declare(metadata ptr %new_mask, metadata !648, metadata !DIExpression()), !dbg !685
  %53 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !685, !tbaa !209
  %sub = sub i32 %53, 1, !dbg !685
  store i32 %sub, ptr %new_mask, align 4, !dbg !685, !tbaa !209
  %54 = load ptr, ptr %h.addr, align 8, !dbg !686, !tbaa !181
  %vals64 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %54, i32 0, i32 6, !dbg !686
  %55 = load ptr, ptr %vals64, align 8, !dbg !686, !tbaa !219
  %56 = load i32, ptr %j, align 4, !dbg !686, !tbaa !209
  %idxprom65 = zext i32 %56 to i64, !dbg !686
  %arrayidx66 = getelementptr inbounds i32, ptr %55, i64 %idxprom65, !dbg !686
  %57 = load i32, ptr %arrayidx66, align 4, !dbg !686, !tbaa !209
  store i32 %57, ptr %val, align 4, !dbg !686, !tbaa !209
  %58 = load i32, ptr %j, align 4, !dbg !685, !tbaa !209
  %and67 = and i32 %58, 15, !dbg !685
  %shl68 = shl i32 %and67, 1, !dbg !685
  %sh_prom = zext i32 %shl68 to i64, !dbg !685
  %shl69 = shl i64 1, %sh_prom, !dbg !685
  %59 = load ptr, ptr %h.addr, align 8, !dbg !685, !tbaa !181
  %flags70 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %59, i32 0, i32 4, !dbg !685
  %60 = load ptr, ptr %flags70, align 8, !dbg !685, !tbaa !216
  %61 = load i32, ptr %j, align 4, !dbg !685, !tbaa !209
  %shr71 = lshr i32 %61, 4, !dbg !685
  %idxprom72 = zext i32 %shr71 to i64, !dbg !685
  %arrayidx73 = getelementptr inbounds i32, ptr %60, i64 %idxprom72, !dbg !685
  %62 = load i32, ptr %arrayidx73, align 4, !dbg !685, !tbaa !209
  %conv74 = zext i32 %62 to i64, !dbg !685
  %or75 = or i64 %conv74, %shl69, !dbg !685
  %conv76 = trunc i64 %or75 to i32, !dbg !685
  store i32 %conv76, ptr %arrayidx73, align 4, !dbg !685, !tbaa !209
  br label %while.cond, !dbg !685

while.cond:                                       ; preds = %cleanup.cont151, %if.then60
  br label %while.body, !dbg !685

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13, !dbg !688
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !649, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !688
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !651, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #13, !dbg !688
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !652, metadata !DIExpression()), !dbg !688
  store i32 0, ptr %step, align 4, !dbg !688, !tbaa !209
  %63 = load ptr, ptr %key, align 8, !dbg !688, !tbaa !181
  %call77 = call i32 @__ac_X31_hash_string(ptr noundef %63), !dbg !688
  store i32 %call77, ptr %k, align 4, !dbg !688, !tbaa !209
  %64 = load i32, ptr %k, align 4, !dbg !688, !tbaa !209
  %65 = load i32, ptr %new_mask, align 4, !dbg !688, !tbaa !209
  %and78 = and i32 %64, %65, !dbg !688
  store i32 %and78, ptr %i, align 4, !dbg !688, !tbaa !209
  br label %while.cond79, !dbg !688

while.cond79:                                     ; preds = %while.body88, %while.body
  %66 = load ptr, ptr %new_flags, align 8, !dbg !688, !tbaa !181
  %67 = load i32, ptr %i, align 4, !dbg !688, !tbaa !209
  %shr80 = lshr i32 %67, 4, !dbg !688
  %idxprom81 = zext i32 %shr80 to i64, !dbg !688
  %arrayidx82 = getelementptr inbounds i32, ptr %66, i64 %idxprom81, !dbg !688
  %68 = load i32, ptr %arrayidx82, align 4, !dbg !688, !tbaa !209
  %69 = load i32, ptr %i, align 4, !dbg !688, !tbaa !209
  %and83 = and i32 %69, 15, !dbg !688
  %shl84 = shl i32 %and83, 1, !dbg !688
  %shr85 = lshr i32 %68, %shl84, !dbg !688
  %and86 = and i32 %shr85, 2, !dbg !688
  %tobool87 = icmp ne i32 %and86, 0, !dbg !688
  %lnot = xor i1 %tobool87, true, !dbg !688
  br i1 %lnot, label %while.body88, label %while.end, !dbg !688

while.body88:                                     ; preds = %while.cond79
  %70 = load i32, ptr %i, align 4, !dbg !688, !tbaa !209
  %71 = load i32, ptr %step, align 4, !dbg !688, !tbaa !209
  %inc89 = add i32 %71, 1, !dbg !688
  store i32 %inc89, ptr %step, align 4, !dbg !688, !tbaa !209
  %add = add i32 %70, %inc89, !dbg !688
  %72 = load i32, ptr %new_mask, align 4, !dbg !688, !tbaa !209
  %and90 = and i32 %add, %72, !dbg !688
  store i32 %and90, ptr %i, align 4, !dbg !688, !tbaa !209
  br label %while.cond79, !dbg !688, !llvm.loop !689

while.end:                                        ; preds = %while.cond79
  %73 = load i32, ptr %i, align 4, !dbg !688, !tbaa !209
  %and91 = and i32 %73, 15, !dbg !688
  %shl92 = shl i32 %and91, 1, !dbg !688
  %sh_prom93 = zext i32 %shl92 to i64, !dbg !688
  %shl94 = shl i64 2, %sh_prom93, !dbg !688
  %not = xor i64 %shl94, -1, !dbg !688
  %74 = load ptr, ptr %new_flags, align 8, !dbg !688, !tbaa !181
  %75 = load i32, ptr %i, align 4, !dbg !688, !tbaa !209
  %shr95 = lshr i32 %75, 4, !dbg !688
  %idxprom96 = zext i32 %shr95 to i64, !dbg !688
  %arrayidx97 = getelementptr inbounds i32, ptr %74, i64 %idxprom96, !dbg !688
  %76 = load i32, ptr %arrayidx97, align 4, !dbg !688, !tbaa !209
  %conv98 = zext i32 %76 to i64, !dbg !688
  %and99 = and i64 %conv98, %not, !dbg !688
  %conv100 = trunc i64 %and99 to i32, !dbg !688
  store i32 %conv100, ptr %arrayidx97, align 4, !dbg !688, !tbaa !209
  %77 = load i32, ptr %i, align 4, !dbg !690, !tbaa !209
  %78 = load ptr, ptr %h.addr, align 8, !dbg !690, !tbaa !181
  %n_buckets101 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %78, i32 0, i32 0, !dbg !690
  %79 = load i32, ptr %n_buckets101, align 8, !dbg !690, !tbaa !212
  %cmp102 = icmp ult i32 %77, %79, !dbg !690
  br i1 %cmp102, label %land.lhs.true, label %if.else139, !dbg !690

land.lhs.true:                                    ; preds = %while.end
  %80 = load ptr, ptr %h.addr, align 8, !dbg !690, !tbaa !181
  %flags104 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %80, i32 0, i32 4, !dbg !690
  %81 = load ptr, ptr %flags104, align 8, !dbg !690, !tbaa !216
  %82 = load i32, ptr %i, align 4, !dbg !690, !tbaa !209
  %shr105 = lshr i32 %82, 4, !dbg !690
  %idxprom106 = zext i32 %shr105 to i64, !dbg !690
  %arrayidx107 = getelementptr inbounds i32, ptr %81, i64 %idxprom106, !dbg !690
  %83 = load i32, ptr %arrayidx107, align 4, !dbg !690, !tbaa !209
  %84 = load i32, ptr %i, align 4, !dbg !690, !tbaa !209
  %and108 = and i32 %84, 15, !dbg !690
  %shl109 = shl i32 %and108, 1, !dbg !690
  %shr110 = lshr i32 %83, %shl109, !dbg !690
  %and111 = and i32 %shr110, 3, !dbg !690
  %cmp112 = icmp eq i32 %and111, 0, !dbg !690
  br i1 %cmp112, label %if.then114, label %if.else139, !dbg !688

if.then114:                                       ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !691
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !653, metadata !DIExpression()), !dbg !691
  %85 = load ptr, ptr %h.addr, align 8, !dbg !691, !tbaa !181
  %keys115 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %85, i32 0, i32 5, !dbg !691
  %86 = load ptr, ptr %keys115, align 8, !dbg !691, !tbaa !218
  %87 = load i32, ptr %i, align 4, !dbg !691, !tbaa !209
  %idxprom116 = zext i32 %87 to i64, !dbg !691
  %arrayidx117 = getelementptr inbounds ptr, ptr %86, i64 %idxprom116, !dbg !691
  %88 = load ptr, ptr %arrayidx117, align 8, !dbg !691, !tbaa !181
  store ptr %88, ptr %tmp, align 8, !dbg !691, !tbaa !181
  %89 = load ptr, ptr %key, align 8, !dbg !691, !tbaa !181
  %90 = load ptr, ptr %h.addr, align 8, !dbg !691, !tbaa !181
  %keys118 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %90, i32 0, i32 5, !dbg !691
  %91 = load ptr, ptr %keys118, align 8, !dbg !691, !tbaa !218
  %92 = load i32, ptr %i, align 4, !dbg !691, !tbaa !209
  %idxprom119 = zext i32 %92 to i64, !dbg !691
  %arrayidx120 = getelementptr inbounds ptr, ptr %91, i64 %idxprom119, !dbg !691
  store ptr %89, ptr %arrayidx120, align 8, !dbg !691, !tbaa !181
  %93 = load ptr, ptr %tmp, align 8, !dbg !691, !tbaa !181
  store ptr %93, ptr %key, align 8, !dbg !691, !tbaa !181
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !692
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp121) #13, !dbg !693
  tail call void @llvm.dbg.declare(metadata ptr %tmp121, metadata !657, metadata !DIExpression()), !dbg !693
  %94 = load ptr, ptr %h.addr, align 8, !dbg !693, !tbaa !181
  %vals122 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %94, i32 0, i32 6, !dbg !693
  %95 = load ptr, ptr %vals122, align 8, !dbg !693, !tbaa !219
  %96 = load i32, ptr %i, align 4, !dbg !693, !tbaa !209
  %idxprom123 = zext i32 %96 to i64, !dbg !693
  %arrayidx124 = getelementptr inbounds i32, ptr %95, i64 %idxprom123, !dbg !693
  %97 = load i32, ptr %arrayidx124, align 4, !dbg !693, !tbaa !209
  store i32 %97, ptr %tmp121, align 4, !dbg !693, !tbaa !209
  %98 = load i32, ptr %val, align 4, !dbg !693, !tbaa !209
  %99 = load ptr, ptr %h.addr, align 8, !dbg !693, !tbaa !181
  %vals125 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %99, i32 0, i32 6, !dbg !693
  %100 = load ptr, ptr %vals125, align 8, !dbg !693, !tbaa !219
  %101 = load i32, ptr %i, align 4, !dbg !693, !tbaa !209
  %idxprom126 = zext i32 %101 to i64, !dbg !693
  %arrayidx127 = getelementptr inbounds i32, ptr %100, i64 %idxprom126, !dbg !693
  store i32 %98, ptr %arrayidx127, align 4, !dbg !693, !tbaa !209
  %102 = load i32, ptr %tmp121, align 4, !dbg !693, !tbaa !209
  store i32 %102, ptr %val, align 4, !dbg !693, !tbaa !209
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp121) #13, !dbg !694
  %103 = load i32, ptr %i, align 4, !dbg !692, !tbaa !209
  %and128 = and i32 %103, 15, !dbg !692
  %shl129 = shl i32 %and128, 1, !dbg !692
  %sh_prom130 = zext i32 %shl129 to i64, !dbg !692
  %shl131 = shl i64 1, %sh_prom130, !dbg !692
  %104 = load ptr, ptr %h.addr, align 8, !dbg !692, !tbaa !181
  %flags132 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %104, i32 0, i32 4, !dbg !692
  %105 = load ptr, ptr %flags132, align 8, !dbg !692, !tbaa !216
  %106 = load i32, ptr %i, align 4, !dbg !692, !tbaa !209
  %shr133 = lshr i32 %106, 4, !dbg !692
  %idxprom134 = zext i32 %shr133 to i64, !dbg !692
  %arrayidx135 = getelementptr inbounds i32, ptr %105, i64 %idxprom134, !dbg !692
  %107 = load i32, ptr %arrayidx135, align 4, !dbg !692, !tbaa !209
  %conv136 = zext i32 %107 to i64, !dbg !692
  %or137 = or i64 %conv136, %shl131, !dbg !692
  %conv138 = trunc i64 %or137 to i32, !dbg !692
  store i32 %conv138, ptr %arrayidx135, align 4, !dbg !692, !tbaa !209
  br label %if.end146, !dbg !692

if.else139:                                       ; preds = %land.lhs.true, %while.end
  %108 = load ptr, ptr %key, align 8, !dbg !695, !tbaa !181
  %109 = load ptr, ptr %h.addr, align 8, !dbg !695, !tbaa !181
  %keys140 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %109, i32 0, i32 5, !dbg !695
  %110 = load ptr, ptr %keys140, align 8, !dbg !695, !tbaa !218
  %111 = load i32, ptr %i, align 4, !dbg !695, !tbaa !209
  %idxprom141 = zext i32 %111 to i64, !dbg !695
  %arrayidx142 = getelementptr inbounds ptr, ptr %110, i64 %idxprom141, !dbg !695
  store ptr %108, ptr %arrayidx142, align 8, !dbg !695, !tbaa !181
  %112 = load i32, ptr %val, align 4, !dbg !697, !tbaa !209
  %113 = load ptr, ptr %h.addr, align 8, !dbg !697, !tbaa !181
  %vals143 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %113, i32 0, i32 6, !dbg !697
  %114 = load ptr, ptr %vals143, align 8, !dbg !697, !tbaa !219
  %115 = load i32, ptr %i, align 4, !dbg !697, !tbaa !209
  %idxprom144 = zext i32 %115 to i64, !dbg !697
  %arrayidx145 = getelementptr inbounds i32, ptr %114, i64 %idxprom144, !dbg !697
  store i32 %112, ptr %arrayidx145, align 4, !dbg !697, !tbaa !209
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup147, !dbg !695

if.end146:                                        ; preds = %if.then114
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !685
  br label %cleanup147, !dbg !685

cleanup147:                                       ; preds = %if.end146, %if.else139
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #13, !dbg !685
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !685
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13, !dbg !685
  %cleanup.dest150 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest150, label %unreachable [
    i32 0, label %cleanup.cont151
    i32 6, label %while.end152
  ]

cleanup.cont151:                                  ; preds = %cleanup147
  br label %while.cond, !dbg !685, !llvm.loop !699

while.end152:                                     ; preds = %cleanup147
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_mask) #13, !dbg !683
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #13, !dbg !683
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #13, !dbg !683
  br label %if.end153, !dbg !685

if.end153:                                        ; preds = %while.end152, %for.body
  br label %for.inc, !dbg !684

for.inc:                                          ; preds = %if.end153
  %116 = load i32, ptr %j, align 4, !dbg !682, !tbaa !209
  %inc154 = add i32 %116, 1, !dbg !682
  store i32 %inc154, ptr %j, align 4, !dbg !682, !tbaa !209
  br label %for.cond, !dbg !682, !llvm.loop !700

for.end:                                          ; preds = %for.cond
  %117 = load ptr, ptr %h.addr, align 8, !dbg !701, !tbaa !181
  %n_buckets155 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %117, i32 0, i32 0, !dbg !701
  %118 = load i32, ptr %n_buckets155, align 8, !dbg !701, !tbaa !212
  %119 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !701, !tbaa !209
  %cmp156 = icmp ugt i32 %118, %119, !dbg !701
  br i1 %cmp156, label %if.then158, label %if.end169, !dbg !703

if.then158:                                       ; preds = %for.end
  %120 = load ptr, ptr %h.addr, align 8, !dbg !704, !tbaa !181
  %keys159 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %120, i32 0, i32 5, !dbg !704
  %121 = load ptr, ptr %keys159, align 8, !dbg !704, !tbaa !218
  %122 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !704, !tbaa !209
  %conv160 = zext i32 %122 to i64, !dbg !704
  %mul161 = mul i64 %conv160, 8, !dbg !704
  %call162 = call ptr @realloc(ptr noundef %121, i64 noundef %mul161) #17, !dbg !704
  %123 = load ptr, ptr %h.addr, align 8, !dbg !704, !tbaa !181
  %keys163 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %123, i32 0, i32 5, !dbg !704
  store ptr %call162, ptr %keys163, align 8, !dbg !704, !tbaa !218
  %124 = load ptr, ptr %h.addr, align 8, !dbg !706, !tbaa !181
  %vals164 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %124, i32 0, i32 6, !dbg !706
  %125 = load ptr, ptr %vals164, align 8, !dbg !706, !tbaa !219
  %126 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !706, !tbaa !209
  %conv165 = zext i32 %126 to i64, !dbg !706
  %mul166 = mul i64 %conv165, 4, !dbg !706
  %call167 = call ptr @realloc(ptr noundef %125, i64 noundef %mul166) #17, !dbg !706
  %127 = load ptr, ptr %h.addr, align 8, !dbg !706, !tbaa !181
  %vals168 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %127, i32 0, i32 6, !dbg !706
  store ptr %call167, ptr %vals168, align 8, !dbg !706, !tbaa !219
  br label %if.end169, !dbg !704

if.end169:                                        ; preds = %if.then158, %for.end
  %128 = load ptr, ptr %h.addr, align 8, !dbg !703, !tbaa !181
  %flags170 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %128, i32 0, i32 4, !dbg !703
  %129 = load ptr, ptr %flags170, align 8, !dbg !703, !tbaa !216
  call void @free(ptr noundef %129) #13, !dbg !703
  %130 = load ptr, ptr %new_flags, align 8, !dbg !703, !tbaa !181
  %131 = load ptr, ptr %h.addr, align 8, !dbg !703, !tbaa !181
  %flags171 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %131, i32 0, i32 4, !dbg !703
  store ptr %130, ptr %flags171, align 8, !dbg !703, !tbaa !216
  %132 = load i32, ptr %new_n_buckets.addr, align 4, !dbg !703, !tbaa !209
  %133 = load ptr, ptr %h.addr, align 8, !dbg !703, !tbaa !181
  %n_buckets172 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %133, i32 0, i32 0, !dbg !703
  store i32 %132, ptr %n_buckets172, align 8, !dbg !703, !tbaa !212
  %134 = load ptr, ptr %h.addr, align 8, !dbg !703, !tbaa !181
  %size173 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %134, i32 0, i32 1, !dbg !703
  %135 = load i32, ptr %size173, align 4, !dbg !703, !tbaa !196
  %136 = load ptr, ptr %h.addr, align 8, !dbg !703, !tbaa !181
  %n_occupied = getelementptr inbounds %struct.kh_str_uint32_t, ptr %136, i32 0, i32 2, !dbg !703
  store i32 %135, ptr %n_occupied, align 8, !dbg !703, !tbaa !708
  %137 = load ptr, ptr %h.addr, align 8, !dbg !703, !tbaa !181
  %n_buckets174 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %137, i32 0, i32 0, !dbg !703
  %138 = load i32, ptr %n_buckets174, align 8, !dbg !703, !tbaa !212
  %conv175 = uitofp i32 %138 to double, !dbg !703
  %139 = call double @llvm.fmuladd.f64(double %conv175, double 7.700000e-01, double 5.000000e-01), !dbg !703
  %conv177 = fptoui double %139 to i32, !dbg !703
  %140 = load ptr, ptr %h.addr, align 8, !dbg !703, !tbaa !181
  %upper_bound = getelementptr inbounds %struct.kh_str_uint32_t, ptr %140, i32 0, i32 3, !dbg !703
  store i32 %conv177, ptr %upper_bound, align 4, !dbg !703, !tbaa !709
  br label %if.end178, !dbg !703

if.end178:                                        ; preds = %if.end169, %if.end49
  store i32 0, ptr %retval, align 4, !dbg !660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup179, !dbg !660

cleanup179:                                       ; preds = %if.end178, %cleanup45, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !660
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_flags) #13, !dbg !660
  %141 = load i32, ptr %retval, align 4, !dbg !660
  ret i32 %141, !dbg !660

unreachable:                                      ; preds = %cleanup147
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_put_str_uint32(ptr noundef %h, ptr noundef %key, ptr noundef %ret) #4 !dbg !710 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %site = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !714, metadata !DIExpression()), !dbg !725
  store ptr %key, ptr %key.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !715, metadata !DIExpression()), !dbg !725
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !716, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #13, !dbg !725
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !717, metadata !DIExpression()), !dbg !725
  %0 = load ptr, ptr %h.addr, align 8, !dbg !726, !tbaa !181
  %n_occupied = getelementptr inbounds %struct.kh_str_uint32_t, ptr %0, i32 0, i32 2, !dbg !726
  %1 = load i32, ptr %n_occupied, align 8, !dbg !726, !tbaa !708
  %2 = load ptr, ptr %h.addr, align 8, !dbg !726, !tbaa !181
  %upper_bound = getelementptr inbounds %struct.kh_str_uint32_t, ptr %2, i32 0, i32 3, !dbg !726
  %3 = load i32, ptr %upper_bound, align 4, !dbg !726, !tbaa !709
  %cmp = icmp uge i32 %1, %3, !dbg !726
  br i1 %cmp, label %if.then, label %if.end14, !dbg !725

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %h.addr, align 8, !dbg !728, !tbaa !181
  %n_buckets = getelementptr inbounds %struct.kh_str_uint32_t, ptr %4, i32 0, i32 0, !dbg !728
  %5 = load i32, ptr %n_buckets, align 8, !dbg !728, !tbaa !212
  %6 = load ptr, ptr %h.addr, align 8, !dbg !728, !tbaa !181
  %size = getelementptr inbounds %struct.kh_str_uint32_t, ptr %6, i32 0, i32 1, !dbg !728
  %7 = load i32, ptr %size, align 4, !dbg !728, !tbaa !196
  %shl = shl i32 %7, 1, !dbg !728
  %cmp1 = icmp ugt i32 %5, %shl, !dbg !728
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !731

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %h.addr, align 8, !dbg !732, !tbaa !181
  %9 = load ptr, ptr %h.addr, align 8, !dbg !732, !tbaa !181
  %n_buckets3 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %9, i32 0, i32 0, !dbg !732
  %10 = load i32, ptr %n_buckets3, align 8, !dbg !732, !tbaa !212
  %sub = sub i32 %10, 1, !dbg !732
  %call = call i32 @kh_resize_str_uint32(ptr noundef %8, i32 noundef %sub), !dbg !732
  %cmp4 = icmp slt i32 %call, 0, !dbg !732
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !735

if.then5:                                         ; preds = %if.then2
  %11 = load ptr, ptr %ret.addr, align 8, !dbg !736, !tbaa !181
  store i32 -1, ptr %11, align 4, !dbg !736, !tbaa !209
  %12 = load ptr, ptr %h.addr, align 8, !dbg !736, !tbaa !181
  %n_buckets6 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %12, i32 0, i32 0, !dbg !736
  %13 = load i32, ptr %n_buckets6, align 8, !dbg !736, !tbaa !212
  store i32 %13, ptr %retval, align 4, !dbg !736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !736

if.end:                                           ; preds = %if.then2
  br label %if.end13, !dbg !735

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %h.addr, align 8, !dbg !738, !tbaa !181
  %15 = load ptr, ptr %h.addr, align 8, !dbg !738, !tbaa !181
  %n_buckets7 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %15, i32 0, i32 0, !dbg !738
  %16 = load i32, ptr %n_buckets7, align 8, !dbg !738, !tbaa !212
  %add = add i32 %16, 1, !dbg !738
  %call8 = call i32 @kh_resize_str_uint32(ptr noundef %14, i32 noundef %add), !dbg !738
  %cmp9 = icmp slt i32 %call8, 0, !dbg !738
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !728

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %ret.addr, align 8, !dbg !740, !tbaa !181
  store i32 -1, ptr %17, align 4, !dbg !740, !tbaa !209
  %18 = load ptr, ptr %h.addr, align 8, !dbg !740, !tbaa !181
  %n_buckets11 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %18, i32 0, i32 0, !dbg !740
  %19 = load i32, ptr %n_buckets11, align 8, !dbg !740, !tbaa !212
  store i32 %19, ptr %retval, align 4, !dbg !740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !740

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  br label %if.end14, !dbg !731

if.end14:                                         ; preds = %if.end13, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13, !dbg !742
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !718, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !742
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !720, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %site) #13, !dbg !742
  tail call void @llvm.dbg.declare(metadata ptr %site, metadata !721, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #13, !dbg !742
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !722, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #13, !dbg !742
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !723, metadata !DIExpression()), !dbg !742
  %20 = load ptr, ptr %h.addr, align 8, !dbg !742, !tbaa !181
  %n_buckets15 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %20, i32 0, i32 0, !dbg !742
  %21 = load i32, ptr %n_buckets15, align 8, !dbg !742, !tbaa !212
  %sub16 = sub i32 %21, 1, !dbg !742
  store i32 %sub16, ptr %mask, align 4, !dbg !742, !tbaa !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #13, !dbg !742
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !724, metadata !DIExpression()), !dbg !742
  store i32 0, ptr %step, align 4, !dbg !742, !tbaa !209
  %22 = load ptr, ptr %h.addr, align 8, !dbg !742, !tbaa !181
  %n_buckets17 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %22, i32 0, i32 0, !dbg !742
  %23 = load i32, ptr %n_buckets17, align 8, !dbg !742, !tbaa !212
  store i32 %23, ptr %site, align 4, !dbg !742, !tbaa !209
  store i32 %23, ptr %x, align 4, !dbg !742, !tbaa !209
  %24 = load ptr, ptr %key.addr, align 8, !dbg !742, !tbaa !181
  %call18 = call i32 @__ac_X31_hash_string(ptr noundef %24), !dbg !742
  store i32 %call18, ptr %k, align 4, !dbg !742, !tbaa !209
  %25 = load i32, ptr %k, align 4, !dbg !742, !tbaa !209
  %26 = load i32, ptr %mask, align 4, !dbg !742, !tbaa !209
  %and = and i32 %25, %26, !dbg !742
  store i32 %and, ptr %i, align 4, !dbg !742, !tbaa !209
  %27 = load ptr, ptr %h.addr, align 8, !dbg !743, !tbaa !181
  %flags = getelementptr inbounds %struct.kh_str_uint32_t, ptr %27, i32 0, i32 4, !dbg !743
  %28 = load ptr, ptr %flags, align 8, !dbg !743, !tbaa !216
  %29 = load i32, ptr %i, align 4, !dbg !743, !tbaa !209
  %shr = lshr i32 %29, 4, !dbg !743
  %idxprom = zext i32 %shr to i64, !dbg !743
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom, !dbg !743
  %30 = load i32, ptr %arrayidx, align 4, !dbg !743, !tbaa !209
  %31 = load i32, ptr %i, align 4, !dbg !743, !tbaa !209
  %and19 = and i32 %31, 15, !dbg !743
  %shl20 = shl i32 %and19, 1, !dbg !743
  %shr21 = lshr i32 %30, %shl20, !dbg !743
  %and22 = and i32 %shr21, 2, !dbg !743
  %tobool = icmp ne i32 %and22, 0, !dbg !743
  br i1 %tobool, label %if.then23, label %if.else24, !dbg !742

if.then23:                                        ; preds = %if.end14
  %32 = load i32, ptr %i, align 4, !dbg !743, !tbaa !209
  store i32 %32, ptr %x, align 4, !dbg !743, !tbaa !209
  br label %if.end81, !dbg !743

if.else24:                                        ; preds = %if.end14
  %33 = load i32, ptr %i, align 4, !dbg !745, !tbaa !209
  store i32 %33, ptr %last, align 4, !dbg !745, !tbaa !209
  br label %while.cond, !dbg !745

while.cond:                                       ; preds = %if.end62, %if.else24
  %34 = load ptr, ptr %h.addr, align 8, !dbg !745, !tbaa !181
  %flags25 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %34, i32 0, i32 4, !dbg !745
  %35 = load ptr, ptr %flags25, align 8, !dbg !745, !tbaa !216
  %36 = load i32, ptr %i, align 4, !dbg !745, !tbaa !209
  %shr26 = lshr i32 %36, 4, !dbg !745
  %idxprom27 = zext i32 %shr26 to i64, !dbg !745
  %arrayidx28 = getelementptr inbounds i32, ptr %35, i64 %idxprom27, !dbg !745
  %37 = load i32, ptr %arrayidx28, align 4, !dbg !745, !tbaa !209
  %38 = load i32, ptr %i, align 4, !dbg !745, !tbaa !209
  %and29 = and i32 %38, 15, !dbg !745
  %shl30 = shl i32 %and29, 1, !dbg !745
  %shr31 = lshr i32 %37, %shl30, !dbg !745
  %and32 = and i32 %shr31, 2, !dbg !745
  %tobool33 = icmp ne i32 %and32, 0, !dbg !745
  br i1 %tobool33, label %land.end, label %land.rhs, !dbg !745

land.rhs:                                         ; preds = %while.cond
  %39 = load ptr, ptr %h.addr, align 8, !dbg !745, !tbaa !181
  %flags34 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %39, i32 0, i32 4, !dbg !745
  %40 = load ptr, ptr %flags34, align 8, !dbg !745, !tbaa !216
  %41 = load i32, ptr %i, align 4, !dbg !745, !tbaa !209
  %shr35 = lshr i32 %41, 4, !dbg !745
  %idxprom36 = zext i32 %shr35 to i64, !dbg !745
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36, !dbg !745
  %42 = load i32, ptr %arrayidx37, align 4, !dbg !745, !tbaa !209
  %43 = load i32, ptr %i, align 4, !dbg !745, !tbaa !209
  %and38 = and i32 %43, 15, !dbg !745
  %shl39 = shl i32 %and38, 1, !dbg !745
  %shr40 = lshr i32 %42, %shl39, !dbg !745
  %and41 = and i32 %shr40, 1, !dbg !745
  %tobool42 = icmp ne i32 %and41, 0, !dbg !745
  br i1 %tobool42, label %lor.end, label %lor.rhs, !dbg !745

lor.rhs:                                          ; preds = %land.rhs
  %44 = load ptr, ptr %h.addr, align 8, !dbg !745, !tbaa !181
  %keys = getelementptr inbounds %struct.kh_str_uint32_t, ptr %44, i32 0, i32 5, !dbg !745
  %45 = load ptr, ptr %keys, align 8, !dbg !745, !tbaa !218
  %46 = load i32, ptr %i, align 4, !dbg !745, !tbaa !209
  %idxprom43 = zext i32 %46 to i64, !dbg !745
  %arrayidx44 = getelementptr inbounds ptr, ptr %45, i64 %idxprom43, !dbg !745
  %47 = load ptr, ptr %arrayidx44, align 8, !dbg !745, !tbaa !181
  %48 = load ptr, ptr %key.addr, align 8, !dbg !745, !tbaa !181
  %call45 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #14, !dbg !745
  %cmp46 = icmp eq i32 %call45, 0, !dbg !745
  %lnot = xor i1 %cmp46, true, !dbg !745
  br label %lor.end, !dbg !745

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %49 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %50 = phi i1 [ false, %while.cond ], [ %49, %lor.end ], !dbg !747
  br i1 %50, label %while.body, label %while.end, !dbg !745

while.body:                                       ; preds = %land.end
  %51 = load ptr, ptr %h.addr, align 8, !dbg !748, !tbaa !181
  %flags47 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %51, i32 0, i32 4, !dbg !748
  %52 = load ptr, ptr %flags47, align 8, !dbg !748, !tbaa !216
  %53 = load i32, ptr %i, align 4, !dbg !748, !tbaa !209
  %shr48 = lshr i32 %53, 4, !dbg !748
  %idxprom49 = zext i32 %shr48 to i64, !dbg !748
  %arrayidx50 = getelementptr inbounds i32, ptr %52, i64 %idxprom49, !dbg !748
  %54 = load i32, ptr %arrayidx50, align 4, !dbg !748, !tbaa !209
  %55 = load i32, ptr %i, align 4, !dbg !748, !tbaa !209
  %and51 = and i32 %55, 15, !dbg !748
  %shl52 = shl i32 %and51, 1, !dbg !748
  %shr53 = lshr i32 %54, %shl52, !dbg !748
  %and54 = and i32 %shr53, 1, !dbg !748
  %tobool55 = icmp ne i32 %and54, 0, !dbg !748
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !751

if.then56:                                        ; preds = %while.body
  %56 = load i32, ptr %i, align 4, !dbg !748, !tbaa !209
  store i32 %56, ptr %site, align 4, !dbg !748, !tbaa !209
  br label %if.end57, !dbg !748

if.end57:                                         ; preds = %if.then56, %while.body
  %57 = load i32, ptr %i, align 4, !dbg !751, !tbaa !209
  %58 = load i32, ptr %step, align 4, !dbg !751, !tbaa !209
  %inc = add i32 %58, 1, !dbg !751
  store i32 %inc, ptr %step, align 4, !dbg !751, !tbaa !209
  %add58 = add i32 %57, %inc, !dbg !751
  %59 = load i32, ptr %mask, align 4, !dbg !751, !tbaa !209
  %and59 = and i32 %add58, %59, !dbg !751
  store i32 %and59, ptr %i, align 4, !dbg !751, !tbaa !209
  %60 = load i32, ptr %i, align 4, !dbg !752, !tbaa !209
  %61 = load i32, ptr %last, align 4, !dbg !752, !tbaa !209
  %cmp60 = icmp eq i32 %60, %61, !dbg !752
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !751

if.then61:                                        ; preds = %if.end57
  %62 = load i32, ptr %site, align 4, !dbg !754, !tbaa !209
  store i32 %62, ptr %x, align 4, !dbg !754, !tbaa !209
  br label %while.end, !dbg !754

if.end62:                                         ; preds = %if.end57
  br label %while.cond, !dbg !745, !llvm.loop !756

while.end:                                        ; preds = %if.then61, %land.end
  %63 = load i32, ptr %x, align 4, !dbg !757, !tbaa !209
  %64 = load ptr, ptr %h.addr, align 8, !dbg !757, !tbaa !181
  %n_buckets63 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %64, i32 0, i32 0, !dbg !757
  %65 = load i32, ptr %n_buckets63, align 8, !dbg !757, !tbaa !212
  %cmp64 = icmp eq i32 %63, %65, !dbg !757
  br i1 %cmp64, label %if.then65, label %if.end80, !dbg !745

if.then65:                                        ; preds = %while.end
  %66 = load ptr, ptr %h.addr, align 8, !dbg !759, !tbaa !181
  %flags66 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %66, i32 0, i32 4, !dbg !759
  %67 = load ptr, ptr %flags66, align 8, !dbg !759, !tbaa !216
  %68 = load i32, ptr %i, align 4, !dbg !759, !tbaa !209
  %shr67 = lshr i32 %68, 4, !dbg !759
  %idxprom68 = zext i32 %shr67 to i64, !dbg !759
  %arrayidx69 = getelementptr inbounds i32, ptr %67, i64 %idxprom68, !dbg !759
  %69 = load i32, ptr %arrayidx69, align 4, !dbg !759, !tbaa !209
  %70 = load i32, ptr %i, align 4, !dbg !759, !tbaa !209
  %and70 = and i32 %70, 15, !dbg !759
  %shl71 = shl i32 %and70, 1, !dbg !759
  %shr72 = lshr i32 %69, %shl71, !dbg !759
  %and73 = and i32 %shr72, 2, !dbg !759
  %tobool74 = icmp ne i32 %and73, 0, !dbg !759
  br i1 %tobool74, label %land.lhs.true, label %if.else78, !dbg !759

land.lhs.true:                                    ; preds = %if.then65
  %71 = load i32, ptr %site, align 4, !dbg !759, !tbaa !209
  %72 = load ptr, ptr %h.addr, align 8, !dbg !759, !tbaa !181
  %n_buckets75 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %72, i32 0, i32 0, !dbg !759
  %73 = load i32, ptr %n_buckets75, align 8, !dbg !759, !tbaa !212
  %cmp76 = icmp ne i32 %71, %73, !dbg !759
  br i1 %cmp76, label %if.then77, label %if.else78, !dbg !762

if.then77:                                        ; preds = %land.lhs.true
  %74 = load i32, ptr %site, align 4, !dbg !759, !tbaa !209
  store i32 %74, ptr %x, align 4, !dbg !759, !tbaa !209
  br label %if.end79, !dbg !759

if.else78:                                        ; preds = %land.lhs.true, %if.then65
  %75 = load i32, ptr %i, align 4, !dbg !759, !tbaa !209
  store i32 %75, ptr %x, align 4, !dbg !759, !tbaa !209
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  br label %if.end80, !dbg !762

if.end80:                                         ; preds = %if.end79, %while.end
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #13, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #13, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #13, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %site) #13, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13, !dbg !725
  %76 = load ptr, ptr %h.addr, align 8, !dbg !763, !tbaa !181
  %flags82 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %76, i32 0, i32 4, !dbg !763
  %77 = load ptr, ptr %flags82, align 8, !dbg !763, !tbaa !216
  %78 = load i32, ptr %x, align 4, !dbg !763, !tbaa !209
  %shr83 = lshr i32 %78, 4, !dbg !763
  %idxprom84 = zext i32 %shr83 to i64, !dbg !763
  %arrayidx85 = getelementptr inbounds i32, ptr %77, i64 %idxprom84, !dbg !763
  %79 = load i32, ptr %arrayidx85, align 4, !dbg !763, !tbaa !209
  %80 = load i32, ptr %x, align 4, !dbg !763, !tbaa !209
  %and86 = and i32 %80, 15, !dbg !763
  %shl87 = shl i32 %and86, 1, !dbg !763
  %shr88 = lshr i32 %79, %shl87, !dbg !763
  %and89 = and i32 %shr88, 2, !dbg !763
  %tobool90 = icmp ne i32 %and89, 0, !dbg !763
  br i1 %tobool90, label %if.then91, label %if.else108, !dbg !725

if.then91:                                        ; preds = %if.end81
  %81 = load ptr, ptr %key.addr, align 8, !dbg !765, !tbaa !181
  %82 = load ptr, ptr %h.addr, align 8, !dbg !765, !tbaa !181
  %keys92 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %82, i32 0, i32 5, !dbg !765
  %83 = load ptr, ptr %keys92, align 8, !dbg !765, !tbaa !218
  %84 = load i32, ptr %x, align 4, !dbg !765, !tbaa !209
  %idxprom93 = zext i32 %84 to i64, !dbg !765
  %arrayidx94 = getelementptr inbounds ptr, ptr %83, i64 %idxprom93, !dbg !765
  store ptr %81, ptr %arrayidx94, align 8, !dbg !765, !tbaa !181
  %85 = load i32, ptr %x, align 4, !dbg !765, !tbaa !209
  %and95 = and i32 %85, 15, !dbg !765
  %shl96 = shl i32 %and95, 1, !dbg !765
  %sh_prom = zext i32 %shl96 to i64, !dbg !765
  %shl97 = shl i64 3, %sh_prom, !dbg !765
  %not = xor i64 %shl97, -1, !dbg !765
  %86 = load ptr, ptr %h.addr, align 8, !dbg !765, !tbaa !181
  %flags98 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %86, i32 0, i32 4, !dbg !765
  %87 = load ptr, ptr %flags98, align 8, !dbg !765, !tbaa !216
  %88 = load i32, ptr %x, align 4, !dbg !765, !tbaa !209
  %shr99 = lshr i32 %88, 4, !dbg !765
  %idxprom100 = zext i32 %shr99 to i64, !dbg !765
  %arrayidx101 = getelementptr inbounds i32, ptr %87, i64 %idxprom100, !dbg !765
  %89 = load i32, ptr %arrayidx101, align 4, !dbg !765, !tbaa !209
  %conv = zext i32 %89 to i64, !dbg !765
  %and102 = and i64 %conv, %not, !dbg !765
  %conv103 = trunc i64 %and102 to i32, !dbg !765
  store i32 %conv103, ptr %arrayidx101, align 4, !dbg !765, !tbaa !209
  %90 = load ptr, ptr %h.addr, align 8, !dbg !765, !tbaa !181
  %size104 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %90, i32 0, i32 1, !dbg !765
  %91 = load i32, ptr %size104, align 4, !dbg !765, !tbaa !196
  %inc105 = add i32 %91, 1, !dbg !765
  store i32 %inc105, ptr %size104, align 4, !dbg !765, !tbaa !196
  %92 = load ptr, ptr %h.addr, align 8, !dbg !765, !tbaa !181
  %n_occupied106 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %92, i32 0, i32 2, !dbg !765
  %93 = load i32, ptr %n_occupied106, align 8, !dbg !765, !tbaa !708
  %inc107 = add i32 %93, 1, !dbg !765
  store i32 %inc107, ptr %n_occupied106, align 8, !dbg !765, !tbaa !708
  %94 = load ptr, ptr %ret.addr, align 8, !dbg !765, !tbaa !181
  store i32 1, ptr %94, align 4, !dbg !765, !tbaa !209
  br label %if.end138, !dbg !765

if.else108:                                       ; preds = %if.end81
  %95 = load ptr, ptr %h.addr, align 8, !dbg !767, !tbaa !181
  %flags109 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %95, i32 0, i32 4, !dbg !767
  %96 = load ptr, ptr %flags109, align 8, !dbg !767, !tbaa !216
  %97 = load i32, ptr %x, align 4, !dbg !767, !tbaa !209
  %shr110 = lshr i32 %97, 4, !dbg !767
  %idxprom111 = zext i32 %shr110 to i64, !dbg !767
  %arrayidx112 = getelementptr inbounds i32, ptr %96, i64 %idxprom111, !dbg !767
  %98 = load i32, ptr %arrayidx112, align 4, !dbg !767, !tbaa !209
  %99 = load i32, ptr %x, align 4, !dbg !767, !tbaa !209
  %and113 = and i32 %99, 15, !dbg !767
  %shl114 = shl i32 %and113, 1, !dbg !767
  %shr115 = lshr i32 %98, %shl114, !dbg !767
  %and116 = and i32 %shr115, 1, !dbg !767
  %tobool117 = icmp ne i32 %and116, 0, !dbg !767
  br i1 %tobool117, label %if.then118, label %if.else136, !dbg !763

if.then118:                                       ; preds = %if.else108
  %100 = load ptr, ptr %key.addr, align 8, !dbg !769, !tbaa !181
  %101 = load ptr, ptr %h.addr, align 8, !dbg !769, !tbaa !181
  %keys119 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %101, i32 0, i32 5, !dbg !769
  %102 = load ptr, ptr %keys119, align 8, !dbg !769, !tbaa !218
  %103 = load i32, ptr %x, align 4, !dbg !769, !tbaa !209
  %idxprom120 = zext i32 %103 to i64, !dbg !769
  %arrayidx121 = getelementptr inbounds ptr, ptr %102, i64 %idxprom120, !dbg !769
  store ptr %100, ptr %arrayidx121, align 8, !dbg !769, !tbaa !181
  %104 = load i32, ptr %x, align 4, !dbg !769, !tbaa !209
  %and122 = and i32 %104, 15, !dbg !769
  %shl123 = shl i32 %and122, 1, !dbg !769
  %sh_prom124 = zext i32 %shl123 to i64, !dbg !769
  %shl125 = shl i64 3, %sh_prom124, !dbg !769
  %not126 = xor i64 %shl125, -1, !dbg !769
  %105 = load ptr, ptr %h.addr, align 8, !dbg !769, !tbaa !181
  %flags127 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %105, i32 0, i32 4, !dbg !769
  %106 = load ptr, ptr %flags127, align 8, !dbg !769, !tbaa !216
  %107 = load i32, ptr %x, align 4, !dbg !769, !tbaa !209
  %shr128 = lshr i32 %107, 4, !dbg !769
  %idxprom129 = zext i32 %shr128 to i64, !dbg !769
  %arrayidx130 = getelementptr inbounds i32, ptr %106, i64 %idxprom129, !dbg !769
  %108 = load i32, ptr %arrayidx130, align 4, !dbg !769, !tbaa !209
  %conv131 = zext i32 %108 to i64, !dbg !769
  %and132 = and i64 %conv131, %not126, !dbg !769
  %conv133 = trunc i64 %and132 to i32, !dbg !769
  store i32 %conv133, ptr %arrayidx130, align 4, !dbg !769, !tbaa !209
  %109 = load ptr, ptr %h.addr, align 8, !dbg !769, !tbaa !181
  %size134 = getelementptr inbounds %struct.kh_str_uint32_t, ptr %109, i32 0, i32 1, !dbg !769
  %110 = load i32, ptr %size134, align 4, !dbg !769, !tbaa !196
  %inc135 = add i32 %110, 1, !dbg !769
  store i32 %inc135, ptr %size134, align 4, !dbg !769, !tbaa !196
  %111 = load ptr, ptr %ret.addr, align 8, !dbg !769, !tbaa !181
  store i32 2, ptr %111, align 4, !dbg !769, !tbaa !209
  br label %if.end137, !dbg !769

if.else136:                                       ; preds = %if.else108
  %112 = load ptr, ptr %ret.addr, align 8, !dbg !767, !tbaa !181
  store i32 0, ptr %112, align 4, !dbg !767, !tbaa !209
  br label %if.end137

if.end137:                                        ; preds = %if.else136, %if.then118
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then91
  %113 = load i32, ptr %x, align 4, !dbg !725, !tbaa !209
  store i32 %113, ptr %retval, align 4, !dbg !725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !725

cleanup:                                          ; preds = %if.end138, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #13, !dbg !725
  %114 = load i32, ptr %retval, align 4, !dbg !725
  ret i32 %114, !dbg !725
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_destroy_str_uint32(ptr noundef %h) #4 !dbg !771 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !775, metadata !DIExpression()), !dbg !776
  %0 = load ptr, ptr %h.addr, align 8, !dbg !777, !tbaa !181
  %tobool = icmp ne ptr %0, null, !dbg !777
  br i1 %tobool, label %if.then, label %if.end, !dbg !776

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8, !dbg !779, !tbaa !181
  %keys = getelementptr inbounds %struct.kh_str_uint32_t, ptr %1, i32 0, i32 5, !dbg !779
  %2 = load ptr, ptr %keys, align 8, !dbg !779, !tbaa !218
  call void @free(ptr noundef %2) #13, !dbg !779
  %3 = load ptr, ptr %h.addr, align 8, !dbg !779, !tbaa !181
  %flags = getelementptr inbounds %struct.kh_str_uint32_t, ptr %3, i32 0, i32 4, !dbg !779
  %4 = load ptr, ptr %flags, align 8, !dbg !779, !tbaa !216
  call void @free(ptr noundef %4) #13, !dbg !779
  %5 = load ptr, ptr %h.addr, align 8, !dbg !779, !tbaa !181
  %vals = getelementptr inbounds %struct.kh_str_uint32_t, ptr %5, i32 0, i32 6, !dbg !779
  %6 = load ptr, ptr %vals, align 8, !dbg !779, !tbaa !219
  call void @free(ptr noundef %6) #13, !dbg !779
  %7 = load ptr, ptr %h.addr, align 8, !dbg !779, !tbaa !181
  call void @free(ptr noundef %7) #13, !dbg !779
  br label %if.end, !dbg !779

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !776
}

; Function Attrs: nounwind uwtable
define ptr @trie_new_from_cstring_array(ptr noundef %strings) #0 !dbg !781 {
entry:
  %retval = alloca ptr, align 8
  %strings.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %i = alloca i32, align 4
  %next_id = alloca i32, align 4
  %trie = alloca ptr, align 8
  %__si = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strings, ptr %strings.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %strings.addr, metadata !783, metadata !DIExpression()), !dbg !791
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #13, !dbg !792
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !784, metadata !DIExpression()), !dbg !793
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !794
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !785, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_id) #13, !dbg !796
  tail call void @llvm.dbg.declare(metadata ptr %next_id, metadata !786, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 8, ptr %trie) #13, !dbg !798
  tail call void @llvm.dbg.declare(metadata ptr %trie, metadata !787, metadata !DIExpression()), !dbg !799
  %call = call ptr @trie_new(), !dbg !800
  store ptr %call, ptr %trie, align 8, !dbg !799, !tbaa !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %__si) #13, !dbg !801
  tail call void @llvm.dbg.declare(metadata ptr %__si, metadata !788, metadata !DIExpression()), !dbg !801
  store i32 0, ptr %__si, align 4, !dbg !801, !tbaa !209
  br label %for.cond, !dbg !801

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %__si, align 4, !dbg !802, !tbaa !209
  %conv = sext i32 %0 to i64, !dbg !802
  %1 = load ptr, ptr %strings.addr, align 8, !dbg !802, !tbaa !181
  %indices = getelementptr inbounds %struct.cstring_array, ptr %1, i32 0, i32 0, !dbg !802
  %2 = load ptr, ptr %indices, align 8, !dbg !802, !tbaa !595
  %n = getelementptr inbounds %struct.uint32_array, ptr %2, i32 0, i32 0, !dbg !802
  %3 = load i64, ptr %n, align 8, !dbg !802, !tbaa !228
  %cmp = icmp ult i64 %conv, %3, !dbg !802
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !801

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !801

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %__si, align 4, !dbg !804, !tbaa !209
  store i32 %4, ptr %i, align 4, !dbg !804, !tbaa !209
  %5 = load ptr, ptr %strings.addr, align 8, !dbg !804, !tbaa !181
  %str = getelementptr inbounds %struct.cstring_array, ptr %5, i32 0, i32 1, !dbg !804
  %6 = load ptr, ptr %str, align 8, !dbg !804, !tbaa !598
  %a = getelementptr inbounds %struct.char_array, ptr %6, i32 0, i32 2, !dbg !804
  %7 = load ptr, ptr %a, align 8, !dbg !804, !tbaa !230
  %8 = load ptr, ptr %strings.addr, align 8, !dbg !804, !tbaa !181
  %indices2 = getelementptr inbounds %struct.cstring_array, ptr %8, i32 0, i32 0, !dbg !804
  %9 = load ptr, ptr %indices2, align 8, !dbg !804, !tbaa !595
  %a3 = getelementptr inbounds %struct.uint32_array, ptr %9, i32 0, i32 2, !dbg !804
  %10 = load ptr, ptr %a3, align 8, !dbg !804, !tbaa !230
  %11 = load i32, ptr %__si, align 4, !dbg !804, !tbaa !209
  %idxprom = sext i32 %11 to i64, !dbg !804
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom, !dbg !804
  %12 = load i32, ptr %arrayidx, align 4, !dbg !804, !tbaa !209
  %idx.ext = zext i32 %12 to i64, !dbg !804
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext, !dbg !804
  store ptr %add.ptr, ptr %key, align 8, !dbg !804, !tbaa !181
  %13 = load ptr, ptr %key, align 8, !dbg !806, !tbaa !181
  %call4 = call i64 @strlen(ptr noundef %13) #14, !dbg !806
  %cmp5 = icmp eq i64 %call4, 0, !dbg !806
  br i1 %cmp5, label %if.then, label %if.end, !dbg !809

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !806

if.end:                                           ; preds = %for.body
  %14 = load ptr, ptr %trie, align 8, !dbg !810, !tbaa !181
  %15 = load ptr, ptr %key, align 8, !dbg !810, !tbaa !181
  %16 = load i32, ptr %next_id, align 4, !dbg !810, !tbaa !209
  %inc = add i32 %16, 1, !dbg !810
  store i32 %inc, ptr %next_id, align 4, !dbg !810, !tbaa !209
  %call7 = call zeroext i1 @trie_add(ptr noundef %14, ptr noundef %15, i32 noundef %16), !dbg !810
  br i1 %call7, label %if.end9, label %if.then8, !dbg !809

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %trie, align 8, !dbg !812, !tbaa !181
  call void @trie_destroy(ptr noundef %17), !dbg !812
  store ptr null, ptr %retval, align 8, !dbg !812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !812

if.end9:                                          ; preds = %if.end
  br label %for.inc, !dbg !804

for.inc:                                          ; preds = %if.end9, %if.then
  %18 = load i32, ptr %__si, align 4, !dbg !802, !tbaa !209
  %inc10 = add nsw i32 %18, 1, !dbg !802
  store i32 %inc10, ptr %__si, align 4, !dbg !802, !tbaa !209
  br label %for.cond, !dbg !802, !llvm.loop !814

cleanup:                                          ; preds = %if.then8, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__si) #13, !dbg !802
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup11 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %19 = load ptr, ptr %trie, align 8, !dbg !815, !tbaa !181
  store ptr %19, ptr %retval, align 8, !dbg !816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !816

cleanup11:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %trie) #13, !dbg !817
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_id) #13, !dbg !817
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !817
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #13, !dbg !817
  %20 = load ptr, ptr %retval, align 8, !dbg !817
  ret ptr %20, !dbg !817
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !818 noalias ptr @malloc(i64 noundef) #7

; Function Attrs: nounwind allocsize(1)
declare !dbg !822 ptr @realloc(ptr noundef, i64 noundef) #8

; Function Attrs: noreturn nounwind
declare !dbg !825 void @exit(i32 noundef) #9

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !828 i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @ks_combsort_str(i64 noundef %n, ptr noundef %a) #0 !dbg !831 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %shrink_factor = alloca double, align 8
  %do_swap = alloca i32, align 4
  %gap = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !199
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !833, metadata !DIExpression()), !dbg !841
  store ptr %a, ptr %a.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !834, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 8, ptr %shrink_factor) #13, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %shrink_factor, metadata !835, metadata !DIExpression()), !dbg !841
  store double 0x3FF3F5114C5FC35D, ptr %shrink_factor, align 8, !dbg !841, !tbaa !842
  call void @llvm.lifetime.start.p0(i64 4, ptr %do_swap) #13, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %do_swap, metadata !836, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 8, ptr %gap) #13, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %gap, metadata !837, metadata !DIExpression()), !dbg !841
  %0 = load i64, ptr %n.addr, align 8, !dbg !841, !tbaa !199
  store i64 %0, ptr %gap, align 8, !dbg !841, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !838, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !839, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #13, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !840, metadata !DIExpression()), !dbg !841
  br label %do.body, !dbg !841

do.body:                                          ; preds = %lor.end, %entry
  %1 = load i64, ptr %gap, align 8, !dbg !844, !tbaa !199
  %cmp = icmp ugt i64 %1, 2, !dbg !844
  br i1 %cmp, label %if.then, label %if.end7, !dbg !847

if.then:                                          ; preds = %do.body
  %2 = load i64, ptr %gap, align 8, !dbg !848, !tbaa !199
  %conv = uitofp i64 %2 to double, !dbg !848
  %div = fdiv double %conv, 0x3FF3F5114C5FC35D, !dbg !848
  %conv1 = fptoui double %div to i64, !dbg !848
  store i64 %conv1, ptr %gap, align 8, !dbg !848, !tbaa !199
  %3 = load i64, ptr %gap, align 8, !dbg !850, !tbaa !199
  %cmp2 = icmp eq i64 %3, 9, !dbg !850
  br i1 %cmp2, label %if.then6, label %lor.lhs.false, !dbg !850

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i64, ptr %gap, align 8, !dbg !850, !tbaa !199
  %cmp4 = icmp eq i64 %4, 10, !dbg !850
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !848

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i64 11, ptr %gap, align 8, !dbg !850, !tbaa !199
  br label %if.end, !dbg !850

if.end:                                           ; preds = %if.then6, %lor.lhs.false
  br label %if.end7, !dbg !848

if.end7:                                          ; preds = %if.end, %do.body
  store i32 0, ptr %do_swap, align 4, !dbg !847, !tbaa !209
  %5 = load ptr, ptr %a.addr, align 8, !dbg !852, !tbaa !181
  store ptr %5, ptr %i, align 8, !dbg !852, !tbaa !181
  br label %for.cond, !dbg !852

for.cond:                                         ; preds = %for.inc, %if.end7
  %6 = load ptr, ptr %i, align 8, !dbg !854, !tbaa !181
  %7 = load ptr, ptr %a.addr, align 8, !dbg !854, !tbaa !181
  %8 = load i64, ptr %n.addr, align 8, !dbg !854, !tbaa !199
  %add.ptr = getelementptr inbounds ptr, ptr %7, i64 %8, !dbg !854
  %9 = load i64, ptr %gap, align 8, !dbg !854, !tbaa !199
  %idx.neg = sub i64 0, %9, !dbg !854
  %add.ptr8 = getelementptr inbounds ptr, ptr %add.ptr, i64 %idx.neg, !dbg !854
  %cmp9 = icmp ult ptr %6, %add.ptr8, !dbg !854
  br i1 %cmp9, label %for.body, label %for.end, !dbg !852

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %i, align 8, !dbg !856, !tbaa !181
  %11 = load i64, ptr %gap, align 8, !dbg !856, !tbaa !199
  %add.ptr11 = getelementptr inbounds ptr, ptr %10, i64 %11, !dbg !856
  store ptr %add.ptr11, ptr %j, align 8, !dbg !856, !tbaa !181
  %12 = load ptr, ptr %j, align 8, !dbg !858, !tbaa !181
  %13 = load ptr, ptr %12, align 8, !dbg !858, !tbaa !181
  %14 = load ptr, ptr %i, align 8, !dbg !858, !tbaa !181
  %15 = load ptr, ptr %14, align 8, !dbg !858, !tbaa !181
  %call = call i32 @strcmp(ptr noundef %13, ptr noundef %15) #14, !dbg !858
  %cmp12 = icmp slt i32 %call, 0, !dbg !858
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !856

if.then14:                                        ; preds = %for.body
  %16 = load ptr, ptr %i, align 8, !dbg !860, !tbaa !181
  %17 = load ptr, ptr %16, align 8, !dbg !860, !tbaa !181
  store ptr %17, ptr %tmp, align 8, !dbg !860, !tbaa !181
  %18 = load ptr, ptr %j, align 8, !dbg !860, !tbaa !181
  %19 = load ptr, ptr %18, align 8, !dbg !860, !tbaa !181
  %20 = load ptr, ptr %i, align 8, !dbg !860, !tbaa !181
  store ptr %19, ptr %20, align 8, !dbg !860, !tbaa !181
  %21 = load ptr, ptr %tmp, align 8, !dbg !860, !tbaa !181
  %22 = load ptr, ptr %j, align 8, !dbg !860, !tbaa !181
  store ptr %21, ptr %22, align 8, !dbg !860, !tbaa !181
  store i32 1, ptr %do_swap, align 4, !dbg !860, !tbaa !209
  br label %if.end15, !dbg !860

if.end15:                                         ; preds = %if.then14, %for.body
  br label %for.inc, !dbg !856

for.inc:                                          ; preds = %if.end15
  %23 = load ptr, ptr %i, align 8, !dbg !854, !tbaa !181
  %incdec.ptr = getelementptr inbounds ptr, ptr %23, i32 1, !dbg !854
  store ptr %incdec.ptr, ptr %i, align 8, !dbg !854, !tbaa !181
  br label %for.cond, !dbg !854, !llvm.loop !862

for.end:                                          ; preds = %for.cond
  br label %do.cond, !dbg !847

do.cond:                                          ; preds = %for.end
  %24 = load i32, ptr %do_swap, align 4, !dbg !841, !tbaa !209
  %tobool = icmp ne i32 %24, 0, !dbg !841
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !841

lor.rhs:                                          ; preds = %do.cond
  %25 = load i64, ptr %gap, align 8, !dbg !841, !tbaa !199
  %cmp16 = icmp ugt i64 %25, 2, !dbg !841
  br label %lor.end, !dbg !841

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %26 = phi i1 [ true, %do.cond ], [ %cmp16, %lor.rhs ]
  br i1 %26, label %do.body, label %do.end, !dbg !847, !llvm.loop !863

do.end:                                           ; preds = %lor.end
  %27 = load i64, ptr %gap, align 8, !dbg !864, !tbaa !199
  %cmp18 = icmp ne i64 %27, 1, !dbg !864
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !841

if.then20:                                        ; preds = %do.end
  %28 = load ptr, ptr %a.addr, align 8, !dbg !864, !tbaa !181
  %29 = load ptr, ptr %a.addr, align 8, !dbg !864, !tbaa !181
  %30 = load i64, ptr %n.addr, align 8, !dbg !864, !tbaa !199
  %add.ptr21 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !864
  call void @__ks_insertsort_str(ptr noundef %28, ptr noundef %add.ptr21), !dbg !864
  br label %if.end22, !dbg !864

if.end22:                                         ; preds = %if.then20, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #13, !dbg !841
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !841
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !841
  call void @llvm.lifetime.end.p0(i64 8, ptr %gap) #13, !dbg !841
  call void @llvm.lifetime.end.p0(i64 4, ptr %do_swap) #13, !dbg !841
  call void @llvm.lifetime.end.p0(i64 8, ptr %shrink_factor) #13, !dbg !841
  ret void, !dbg !841
}

; Function Attrs: nounwind
declare !dbg !866 void @free(ptr noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @__ks_insertsort_str(ptr noundef %s, ptr noundef %t) #4 !dbg !869 {
entry:
  %s.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  %swap_tmp = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !873, metadata !DIExpression()), !dbg !878
  store ptr %t, ptr %t.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !874, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !878
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !875, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #13, !dbg !878
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !876, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %swap_tmp) #13, !dbg !878
  tail call void @llvm.dbg.declare(metadata ptr %swap_tmp, metadata !877, metadata !DIExpression()), !dbg !878
  %0 = load ptr, ptr %s.addr, align 8, !dbg !879, !tbaa !181
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 1, !dbg !879
  store ptr %add.ptr, ptr %i, align 8, !dbg !879, !tbaa !181
  br label %for.cond, !dbg !879

for.cond:                                         ; preds = %for.inc8, %entry
  %1 = load ptr, ptr %i, align 8, !dbg !881, !tbaa !181
  %2 = load ptr, ptr %t.addr, align 8, !dbg !881, !tbaa !181
  %cmp = icmp ult ptr %1, %2, !dbg !881
  br i1 %cmp, label %for.body, label %for.end10, !dbg !879

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %i, align 8, !dbg !883, !tbaa !181
  store ptr %3, ptr %j, align 8, !dbg !883, !tbaa !181
  br label %for.cond1, !dbg !883

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load ptr, ptr %j, align 8, !dbg !885, !tbaa !181
  %5 = load ptr, ptr %s.addr, align 8, !dbg !885, !tbaa !181
  %cmp2 = icmp ugt ptr %4, %5, !dbg !885
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !885

land.rhs:                                         ; preds = %for.cond1
  %6 = load ptr, ptr %j, align 8, !dbg !885, !tbaa !181
  %7 = load ptr, ptr %6, align 8, !dbg !885, !tbaa !181
  %8 = load ptr, ptr %j, align 8, !dbg !885, !tbaa !181
  %add.ptr3 = getelementptr inbounds ptr, ptr %8, i64 -1, !dbg !885
  %9 = load ptr, ptr %add.ptr3, align 8, !dbg !885, !tbaa !181
  %call = call i32 @strcmp(ptr noundef %7, ptr noundef %9) #14, !dbg !885
  %cmp4 = icmp slt i32 %call, 0, !dbg !885
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond1
  %10 = phi i1 [ false, %for.cond1 ], [ %cmp4, %land.rhs ], !dbg !887
  br i1 %10, label %for.body5, label %for.end, !dbg !883

for.body5:                                        ; preds = %land.end
  %11 = load ptr, ptr %j, align 8, !dbg !888, !tbaa !181
  %12 = load ptr, ptr %11, align 8, !dbg !888, !tbaa !181
  store ptr %12, ptr %swap_tmp, align 8, !dbg !888, !tbaa !181
  %13 = load ptr, ptr %j, align 8, !dbg !888, !tbaa !181
  %add.ptr6 = getelementptr inbounds ptr, ptr %13, i64 -1, !dbg !888
  %14 = load ptr, ptr %add.ptr6, align 8, !dbg !888, !tbaa !181
  %15 = load ptr, ptr %j, align 8, !dbg !888, !tbaa !181
  store ptr %14, ptr %15, align 8, !dbg !888, !tbaa !181
  %16 = load ptr, ptr %swap_tmp, align 8, !dbg !888, !tbaa !181
  %17 = load ptr, ptr %j, align 8, !dbg !888, !tbaa !181
  %add.ptr7 = getelementptr inbounds ptr, ptr %17, i64 -1, !dbg !888
  store ptr %16, ptr %add.ptr7, align 8, !dbg !888, !tbaa !181
  br label %for.inc, !dbg !888

for.inc:                                          ; preds = %for.body5
  %18 = load ptr, ptr %j, align 8, !dbg !885, !tbaa !181
  %incdec.ptr = getelementptr inbounds ptr, ptr %18, i32 -1, !dbg !885
  store ptr %incdec.ptr, ptr %j, align 8, !dbg !885, !tbaa !181
  br label %for.cond1, !dbg !885, !llvm.loop !890

for.end:                                          ; preds = %land.end
  br label %for.inc8, !dbg !883

for.inc8:                                         ; preds = %for.end
  %19 = load ptr, ptr %i, align 8, !dbg !881, !tbaa !181
  %incdec.ptr9 = getelementptr inbounds ptr, ptr %19, i32 1, !dbg !881
  store ptr %incdec.ptr9, ptr %i, align 8, !dbg !881, !tbaa !181
  br label %for.cond, !dbg !881, !llvm.loop !891

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %swap_tmp) #13, !dbg !878
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #13, !dbg !878
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !878
  ret void, !dbg !878
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ac_X31_hash_string(ptr noundef %s) #4 !dbg !892 {
entry:
  %s.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !896, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #13, !dbg !899
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !897, metadata !DIExpression()), !dbg !900
  %0 = load ptr, ptr %s.addr, align 8, !dbg !901, !tbaa !181
  %1 = load i8, ptr %0, align 1, !dbg !902, !tbaa !903
  %conv = sext i8 %1 to i32, !dbg !904
  store i32 %conv, ptr %h, align 4, !dbg !900, !tbaa !209
  %2 = load i32, ptr %h, align 4, !dbg !905, !tbaa !209
  %tobool = icmp ne i32 %2, 0, !dbg !905
  br i1 %tobool, label %if.then, label %if.end, !dbg !907

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !908, !tbaa !181
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !908
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !908, !tbaa !181
  br label %for.cond, !dbg !908

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !910, !tbaa !181
  %5 = load i8, ptr %4, align 1, !dbg !912, !tbaa !903
  %tobool1 = icmp ne i8 %5, 0, !dbg !913
  br i1 %tobool1, label %for.body, label %for.end, !dbg !913

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %h, align 4, !dbg !914, !tbaa !209
  %shl = shl i32 %6, 5, !dbg !915
  %7 = load i32, ptr %h, align 4, !dbg !916, !tbaa !209
  %sub = sub i32 %shl, %7, !dbg !917
  %8 = load ptr, ptr %s.addr, align 8, !dbg !918, !tbaa !181
  %9 = load i8, ptr %8, align 1, !dbg !919, !tbaa !903
  %conv2 = sext i8 %9 to i32, !dbg !920
  %add = add i32 %sub, %conv2, !dbg !921
  store i32 %add, ptr %h, align 4, !dbg !922, !tbaa !209
  br label %for.inc, !dbg !923

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %s.addr, align 8, !dbg !924, !tbaa !181
  %incdec.ptr3 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !924
  store ptr %incdec.ptr3, ptr %s.addr, align 8, !dbg !924, !tbaa !181
  br label %for.cond, !dbg !925, !llvm.loop !926

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !927

if.end:                                           ; preds = %for.end, %entry
  %11 = load i32, ptr %h, align 4, !dbg !928, !tbaa !209
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #13, !dbg !929
  ret i32 %11, !dbg !930
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !931 noalias ptr @calloc(i64 noundef, i64 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!44}
!llvm.module.flags = !{!92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "trie_utils.c", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "19d7a40093d21b9ecdc0b2ffc65310f5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 59)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 152, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 19)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 14, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 13)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 73)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 5)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 80)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 67)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !40, line: 52, type: !41, isLocal: true, isDefinition: true)
!40 = !DIFile(filename: "./collections.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "be7bcb6b300ff5896c58c67efa7d2993")
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 41)
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !45, globals: !87, splitDebugInlining: false, nameTableKind: None)
!45 = !{!46, !50, !51, !53, !54, !63, !65, !68, !77, !79, !82}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !47, line: 126, baseType: !48)
!47 = !DIFile(filename: "./klib/khash.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "a08c5bfc047e663a6c069980bdbb6dd8")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !47, line: 103, baseType: !49)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "ks_isort_stack_t", file: !56, line: 53, baseType: !57)
!56 = !DIFile(filename: "./klib/ksort.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "d3167453f33aa4e83436fc09661f4b29")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 50, size: 192, elements: !58)
!58 = !{!59, !60, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !57, file: !56, line: 51, baseType: !53, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !57, file: !56, line: 51, baseType: !53, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !57, file: !56, line: 52, baseType: !62, size: 32, offset: 128)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "ksstr_t", file: !56, line: 274, baseType: !52)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 70, baseType: !67)
!66 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_str_uint32_t", file: !40, line: 30, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 30, size: 320, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !78, !81}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !70, file: !40, line: 30, baseType: !46, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !70, file: !40, line: 30, baseType: !46, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !70, file: !40, line: 30, baseType: !46, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !70, file: !40, line: 30, baseType: !46, size: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !40, line: 30, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !70, file: !40, line: 30, baseType: !79, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_cstr_t", file: !47, line: 589, baseType: !52)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !70, file: !40, line: 30, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 26, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !86, line: 42, baseType: !49)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!87 = !{!0, !7, !13, !18, !23, !28, !33, !38, !88}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression(DW_OP_constu, 4605110762971426980, DW_OP_stack_value))
!89 = distinct !DIGlobalVariable(name: "__ac_HASH_UPPER", scope: !44, file: !47, line: 156, type: !90, isLocal: true, isDefinition: true)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!92 = !{i32 7, !"Dwarf Version", i32 5}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{i32 8, !"PIC Level", i32 2}
!96 = !{i32 7, !"uwtable", i32 2}
!97 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!98 = distinct !DISubprogram(name: "trie_new_from_hash", scope: !2, file: !2, line: 8, type: !99, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !157)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !68}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "trie_t", file: !103, line: 79, baseType: !104)
!103 = !DIFile(filename: "./trie.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "417e56141699d6a527f00819923c3871")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trie", file: !103, line: 70, size: 2432, elements: !105)
!105 = !{!106, !115, !124, !138, !148, !149, !155, !156}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "null_node", scope: !104, file: !103, line: 71, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "trie_node_t", file: !103, line: 56, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trie_node", file: !103, line: 53, size: 64, elements: !109)
!109 = !{!110, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !108, file: !103, line: 54, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !112, line: 26, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !86, line: 41, baseType: !62)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !108, file: !103, line: 55, baseType: !111, size: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !104, file: !103, line: 72, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "trie_node_array", file: !103, line: 67, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 67, size: 192, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !118, file: !103, line: 67, baseType: !65, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !118, file: !103, line: 67, baseType: !65, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !118, file: !103, line: 67, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !103, line: 73, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "trie_data_array", file: !103, line: 68, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 68, size: 192, elements: !128)
!128 = !{!129, !130, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !127, file: !103, line: 68, baseType: !65, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !127, file: !103, line: 68, baseType: !65, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !127, file: !103, line: 68, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "trie_data_node_t", file: !103, line: 63, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trie_data_node", file: !103, line: 60, size: 64, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !134, file: !103, line: 61, baseType: !83, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !134, file: !103, line: 62, baseType: !83, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !104, file: !103, line: 74, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar_array", file: !40, line: 51, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 51, size: 192, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !141, file: !40, line: 51, baseType: !65, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !141, file: !40, line: 51, baseType: !65, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !141, file: !40, line: 51, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "alphabet", scope: !104, file: !103, line: 75, baseType: !50, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_map", scope: !104, file: !103, line: 76, baseType: !150, size: 2048, offset: 320)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 2048, elements: !153)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !84, line: 24, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !86, line: 38, baseType: !147)
!153 = !{!154}
!154 = !DISubrange(count: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "alphabet_size", scope: !104, file: !103, line: 77, baseType: !83, size: 32, offset: 2368)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "num_keys", scope: !104, file: !103, line: 78, baseType: !83, size: 32, offset: 2400)
!157 = !{!158, !159, !160, !161, !162, !163, !172, !174, !176, !178}
!158 = !DILocalVariable(name: "hash", arg: 1, scope: !98, file: !2, line: 8, type: !68)
!159 = !DILocalVariable(name: "trie", scope: !98, file: !2, line: 9, type: !101)
!160 = !DILocalVariable(name: "key", scope: !98, file: !2, line: 10, type: !52)
!161 = !DILocalVariable(name: "value", scope: !98, file: !2, line: 11, type: !83)
!162 = !DILocalVariable(name: "hash_size", scope: !98, file: !2, line: 13, type: !65)
!163 = !DILocalVariable(name: "hash_keys", scope: !98, file: !2, line: 15, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_array", file: !40, line: 52, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 52, size: 192, elements: !167)
!167 = !{!168, !169, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !166, file: !40, line: 52, baseType: !65, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !166, file: !40, line: 52, baseType: !65, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !166, file: !40, line: 52, baseType: !171, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!172 = !DILocalVariable(name: "__i", scope: !173, file: !2, line: 16, type: !46)
!173 = distinct !DILexicalBlock(scope: !98, file: !2, line: 16, column: 5)
!174 = !DILocalVariable(name: "k", scope: !98, file: !2, line: 23, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !47, line: 127, baseType: !46)
!176 = !DILocalVariable(name: "i", scope: !177, file: !2, line: 25, type: !62)
!177 = distinct !DILexicalBlock(scope: !98, file: !2, line: 25, column: 5)
!178 = !DILocalVariable(name: "str", scope: !179, file: !2, line: 26, type: !50)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 25, column: 44)
!180 = distinct !DILexicalBlock(scope: !177, file: !2, line: 25, column: 5)
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C/C++ TBAA"}
!185 = !DILocation(line: 8, column: 49, scope: !98)
!186 = !DILocation(line: 9, column: 5, scope: !98)
!187 = !DILocation(line: 9, column: 13, scope: !98)
!188 = !DILocation(line: 9, column: 20, scope: !98)
!189 = !DILocation(line: 10, column: 5, scope: !98)
!190 = !DILocation(line: 10, column: 17, scope: !98)
!191 = !DILocation(line: 11, column: 5, scope: !98)
!192 = !DILocation(line: 11, column: 14, scope: !98)
!193 = !DILocation(line: 13, column: 5, scope: !98)
!194 = !DILocation(line: 13, column: 12, scope: !98)
!195 = !DILocation(line: 13, column: 24, scope: !98)
!196 = !{!197, !198, i64 4}
!197 = !{!"", !198, i64 0, !198, i64 4, !198, i64 8, !198, i64 12, !182, i64 16, !182, i64 24, !182, i64 32}
!198 = !{!"int", !183, i64 0}
!199 = !{!200, !200, i64 0}
!200 = !{!"long", !183, i64 0}
!201 = !DILocation(line: 14, column: 5, scope: !98)
!202 = !DILocation(line: 15, column: 5, scope: !98)
!203 = !DILocation(line: 15, column: 19, scope: !98)
!204 = !DILocation(line: 15, column: 53, scope: !98)
!205 = !DILocation(line: 15, column: 31, scope: !98)
!206 = !DILocation(line: 16, column: 5, scope: !173)
!207 = !DILocation(line: 16, column: 5, scope: !208)
!208 = distinct !DILexicalBlock(scope: !173, file: !2, line: 16, column: 5)
!209 = !{!198, !198, i64 0}
!210 = !DILocation(line: 16, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !208, file: !2, line: 16, column: 5)
!212 = !{!197, !198, i64 0}
!213 = !DILocation(line: 16, column: 5, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 16, column: 5)
!215 = distinct !DILexicalBlock(scope: !211, file: !2, line: 16, column: 5)
!216 = !{!197, !182, i64 16}
!217 = !DILocation(line: 16, column: 5, scope: !215)
!218 = !{!197, !182, i64 24}
!219 = !{!197, !182, i64 32}
!220 = !DILocation(line: 16, column: 5, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !2, line: 16, column: 5)
!222 = distinct !DILexicalBlock(scope: !215, file: !2, line: 16, column: 5)
!223 = !DILocation(line: 16, column: 5, scope: !222)
!224 = distinct !{!224, !207, !207, !225}
!225 = !{!"llvm.loop.mustprogress"}
!226 = !DILocation(line: 16, column: 5, scope: !98)
!227 = !DILocation(line: 21, column: 5, scope: !98)
!228 = !{!229, !200, i64 0}
!229 = !{!"", !200, i64 0, !200, i64 8, !182, i64 16}
!230 = !{!229, !182, i64 16}
!231 = !DILocation(line: 23, column: 5, scope: !98)
!232 = !DILocation(line: 23, column: 14, scope: !98)
!233 = !DILocation(line: 25, column: 10, scope: !177)
!234 = !DILocation(line: 25, column: 14, scope: !177)
!235 = !DILocation(line: 25, column: 21, scope: !180)
!236 = !DILocation(line: 25, column: 25, scope: !180)
!237 = !DILocation(line: 25, column: 36, scope: !180)
!238 = !DILocation(line: 25, column: 23, scope: !180)
!239 = !DILocation(line: 25, column: 5, scope: !177)
!240 = !DILocation(line: 26, column: 9, scope: !179)
!241 = !DILocation(line: 26, column: 15, scope: !179)
!242 = !DILocation(line: 26, column: 21, scope: !179)
!243 = !DILocation(line: 26, column: 32, scope: !179)
!244 = !DILocation(line: 26, column: 34, scope: !179)
!245 = !DILocation(line: 27, column: 13, scope: !179)
!246 = !DILocation(line: 27, column: 11, scope: !179)
!247 = !DILocation(line: 28, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !179, file: !2, line: 28, column: 13)
!249 = !DILocation(line: 28, column: 18, scope: !248)
!250 = !DILocation(line: 28, column: 15, scope: !248)
!251 = !DILocation(line: 28, column: 13, scope: !179)
!252 = !DILocation(line: 29, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !2, line: 28, column: 32)
!254 = !DILocation(line: 30, column: 34, scope: !253)
!255 = !DILocation(line: 30, column: 13, scope: !253)
!256 = !DILocation(line: 31, column: 26, scope: !253)
!257 = !DILocation(line: 31, column: 13, scope: !253)
!258 = !DILocation(line: 32, column: 13, scope: !253)
!259 = !DILocation(line: 35, column: 17, scope: !179)
!260 = !DILocation(line: 35, column: 15, scope: !179)
!261 = !DILocation(line: 37, column: 23, scope: !262)
!262 = distinct !DILexicalBlock(scope: !179, file: !2, line: 37, column: 13)
!263 = !DILocation(line: 37, column: 29, scope: !262)
!264 = !DILocation(line: 37, column: 34, scope: !262)
!265 = !DILocation(line: 37, column: 14, scope: !262)
!266 = !DILocation(line: 37, column: 13, scope: !179)
!267 = !DILocation(line: 38, column: 13, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !2, line: 37, column: 42)
!269 = !DILocation(line: 39, column: 34, scope: !268)
!270 = !DILocation(line: 39, column: 13, scope: !268)
!271 = !DILocation(line: 40, column: 26, scope: !268)
!272 = !DILocation(line: 40, column: 13, scope: !268)
!273 = !DILocation(line: 41, column: 13, scope: !268)
!274 = !DILocation(line: 43, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !179, file: !2, line: 43, column: 13)
!276 = !DILocation(line: 43, column: 15, scope: !275)
!277 = !DILocation(line: 43, column: 24, scope: !275)
!278 = !DILocation(line: 43, column: 29, scope: !275)
!279 = !DILocation(line: 43, column: 32, scope: !275)
!280 = !DILocation(line: 43, column: 34, scope: !275)
!281 = !DILocation(line: 43, column: 13, scope: !179)
!282 = !DILocation(line: 44, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !2, line: 43, column: 39)
!284 = !DILocation(line: 45, column: 9, scope: !283)
!285 = !DILocation(line: 46, column: 5, scope: !180)
!286 = !DILocation(line: 46, column: 5, scope: !179)
!287 = !DILocation(line: 25, column: 40, scope: !180)
!288 = !DILocation(line: 25, column: 5, scope: !180)
!289 = distinct !{!289, !239, !290, !225}
!290 = !DILocation(line: 46, column: 5, scope: !177)
!291 = !DILocation(line: 48, column: 26, scope: !98)
!292 = !DILocation(line: 48, column: 5, scope: !98)
!293 = !DILocation(line: 50, column: 12, scope: !98)
!294 = !DILocation(line: 50, column: 5, scope: !98)
!295 = !DILocation(line: 51, column: 1, scope: !98)
!296 = !DISubprogram(name: "trie_new", scope: !103, file: !103, line: 82, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{!101}
!299 = !DISubprogram(name: "fprintf", scope: !300, file: !300, line: 350, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!301 = !DISubroutineType(types: !302)
!302 = !{!62, !303, !359, null}
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !306, line: 7, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !308, line: 49, size: 1728, elements: !309)
!308 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !325, !327, !328, !329, !332, !334, !336, !340, !343, !345, !348, !351, !352, !353, !354, !355}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !307, file: !308, line: 51, baseType: !62, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !307, file: !308, line: 54, baseType: !50, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !307, file: !308, line: 55, baseType: !50, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !307, file: !308, line: 56, baseType: !50, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !307, file: !308, line: 57, baseType: !50, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !307, file: !308, line: 58, baseType: !50, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !307, file: !308, line: 59, baseType: !50, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !307, file: !308, line: 60, baseType: !50, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !307, file: !308, line: 61, baseType: !50, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !307, file: !308, line: 64, baseType: !50, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !307, file: !308, line: 65, baseType: !50, size: 64, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !307, file: !308, line: 66, baseType: !50, size: 64, offset: 704)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !307, file: !308, line: 68, baseType: !323, size: 64, offset: 768)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !308, line: 36, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !307, file: !308, line: 70, baseType: !326, size: 64, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !307, file: !308, line: 72, baseType: !62, size: 32, offset: 896)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !307, file: !308, line: 73, baseType: !62, size: 32, offset: 928)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !307, file: !308, line: 74, baseType: !330, size: 64, offset: 960)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !86, line: 152, baseType: !331)
!331 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !307, file: !308, line: 77, baseType: !333, size: 16, offset: 1024)
!333 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !307, file: !308, line: 78, baseType: !335, size: 8, offset: 1040)
!335 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !307, file: !308, line: 79, baseType: !337, size: 8, offset: 1048)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 1)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !307, file: !308, line: 81, baseType: !341, size: 64, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !308, line: 43, baseType: null)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !307, file: !308, line: 89, baseType: !344, size: 64, offset: 1152)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !86, line: 153, baseType: !331)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !307, file: !308, line: 91, baseType: !346, size: 64, offset: 1216)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !308, line: 37, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !307, file: !308, line: 92, baseType: !349, size: 64, offset: 1280)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !308, line: 38, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !307, file: !308, line: 93, baseType: !326, size: 64, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !307, file: !308, line: 94, baseType: !53, size: 64, offset: 1408)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !307, file: !308, line: 95, baseType: !65, size: 64, offset: 1472)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !307, file: !308, line: 96, baseType: !62, size: 32, offset: 1536)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !307, file: !308, line: 98, baseType: !356, size: 160, offset: 1568)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 20)
!359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!360 = !DISubprogram(name: "strrchr", scope: !361, file: !361, line: 273, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!362 = !DISubroutineType(types: !363)
!363 = !{!50, !52, !62}
!364 = distinct !DISubprogram(name: "string_array_new_size", scope: !40, file: !40, line: 52, type: !365, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!164, !65}
!367 = !{!368, !369}
!368 = !DILocalVariable(name: "size", arg: 1, scope: !364, file: !40, line: 52, type: !65)
!369 = !DILocalVariable(name: "array", scope: !364, file: !40, line: 52, type: !164)
!370 = !DILocation(line: 52, column: 1, scope: !364)
!371 = !DILocation(line: 52, column: 1, scope: !372)
!372 = distinct !DILexicalBlock(scope: !364, file: !40, line: 52, column: 1)
!373 = !{!229, !200, i64 8}
!374 = !DILocation(line: 52, column: 1, scope: !375)
!375 = distinct !DILexicalBlock(scope: !364, file: !40, line: 52, column: 1)
!376 = !DISubprogram(name: "strlen", scope: !361, file: !361, line: 407, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!67, !52}
!379 = distinct !DISubprogram(name: "string_array_push", scope: !40, file: !40, line: 52, type: !380, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !164, !50}
!382 = !{!383, !384, !385, !388}
!383 = !DILocalVariable(name: "array", arg: 1, scope: !379, file: !40, line: 52, type: !164)
!384 = !DILocalVariable(name: "value", arg: 2, scope: !379, file: !40, line: 52, type: !50)
!385 = !DILocalVariable(name: "size", scope: !386, file: !40, line: 52, type: !65)
!386 = distinct !DILexicalBlock(scope: !387, file: !40, line: 52, column: 1)
!387 = distinct !DILexicalBlock(scope: !379, file: !40, line: 52, column: 1)
!388 = !DILocalVariable(name: "ptr", scope: !386, file: !40, line: 52, type: !171)
!389 = !DILocation(line: 52, column: 1, scope: !379)
!390 = !DILocation(line: 52, column: 1, scope: !387)
!391 = !DILocation(line: 52, column: 1, scope: !386)
!392 = !DILocation(line: 52, column: 1, scope: !393)
!393 = distinct !DILexicalBlock(scope: !386, file: !40, line: 52, column: 1)
!394 = !DILocation(line: 52, column: 1, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !40, line: 52, column: 1)
!396 = distinct !DISubprogram(name: "ks_introsort_str", scope: !40, file: !40, line: 56, type: !397, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !65, !63}
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!400 = !DILocalVariable(name: "n", arg: 1, scope: !396, file: !40, line: 56, type: !65)
!401 = !DILocalVariable(name: "a", arg: 2, scope: !396, file: !40, line: 56, type: !63)
!402 = !DILocalVariable(name: "d", scope: !396, file: !40, line: 56, type: !62)
!403 = !DILocalVariable(name: "top", scope: !396, file: !40, line: 56, type: !54)
!404 = !DILocalVariable(name: "stack", scope: !396, file: !40, line: 56, type: !54)
!405 = !DILocalVariable(name: "rp", scope: !396, file: !40, line: 56, type: !64)
!406 = !DILocalVariable(name: "swap_tmp", scope: !396, file: !40, line: 56, type: !64)
!407 = !DILocalVariable(name: "s", scope: !396, file: !40, line: 56, type: !63)
!408 = !DILocalVariable(name: "t", scope: !396, file: !40, line: 56, type: !63)
!409 = !DILocalVariable(name: "i", scope: !396, file: !40, line: 56, type: !63)
!410 = !DILocalVariable(name: "j", scope: !396, file: !40, line: 56, type: !63)
!411 = !DILocalVariable(name: "k", scope: !396, file: !40, line: 56, type: !63)
!412 = !DILocation(line: 56, column: 1, scope: !396)
!413 = !DILocation(line: 56, column: 1, scope: !414)
!414 = distinct !DILexicalBlock(scope: !396, file: !40, line: 56, column: 1)
!415 = !DILocation(line: 56, column: 1, scope: !416)
!416 = distinct !DILexicalBlock(scope: !414, file: !40, line: 56, column: 1)
!417 = !DILocation(line: 56, column: 1, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !40, line: 56, column: 1)
!419 = distinct !DILexicalBlock(scope: !416, file: !40, line: 56, column: 1)
!420 = !DILocation(line: 56, column: 1, scope: !419)
!421 = !DILocation(line: 56, column: 1, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !40, line: 56, column: 1)
!423 = !DILocation(line: 56, column: 1, scope: !424)
!424 = distinct !DILexicalBlock(scope: !396, file: !40, line: 56, column: 1)
!425 = !DILocation(line: 56, column: 1, scope: !426)
!426 = distinct !DILexicalBlock(scope: !424, file: !40, line: 56, column: 1)
!427 = distinct !{!427, !423, !423, !225}
!428 = !DILocation(line: 56, column: 1, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !40, line: 56, column: 1)
!430 = distinct !DILexicalBlock(scope: !396, file: !40, line: 56, column: 1)
!431 = !DILocation(line: 56, column: 1, scope: !430)
!432 = !DILocation(line: 56, column: 1, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !40, line: 56, column: 1)
!434 = distinct !DILexicalBlock(scope: !429, file: !40, line: 56, column: 1)
!435 = !DILocation(line: 56, column: 1, scope: !434)
!436 = !DILocation(line: 56, column: 1, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !40, line: 56, column: 1)
!438 = distinct !{!438, !412, !412}
!439 = !DILocation(line: 56, column: 1, scope: !440)
!440 = distinct !DILexicalBlock(scope: !434, file: !40, line: 56, column: 1)
!441 = !DILocation(line: 56, column: 1, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !40, line: 56, column: 1)
!443 = distinct !DILexicalBlock(scope: !440, file: !40, line: 56, column: 1)
!444 = !DILocation(line: 56, column: 1, scope: !443)
!445 = !DILocation(line: 56, column: 1, scope: !446)
!446 = distinct !DILexicalBlock(scope: !434, file: !40, line: 56, column: 1)
!447 = !DILocation(line: 56, column: 1, scope: !448)
!448 = distinct !DILexicalBlock(scope: !446, file: !40, line: 56, column: 1)
!449 = !DILocation(line: 56, column: 1, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !40, line: 56, column: 1)
!451 = distinct !DILexicalBlock(scope: !452, file: !40, line: 56, column: 1)
!452 = distinct !DILexicalBlock(scope: !434, file: !40, line: 56, column: 1)
!453 = distinct !{!453, !449, !449, !225}
!454 = !DILocation(line: 0, scope: !450)
!455 = distinct !{!455, !449, !449, !225}
!456 = !DILocation(line: 56, column: 1, scope: !457)
!457 = distinct !DILexicalBlock(scope: !450, file: !40, line: 56, column: 1)
!458 = !DILocation(line: 56, column: 1, scope: !451)
!459 = distinct !{!459, !460, !460}
!460 = !DILocation(line: 56, column: 1, scope: !452)
!461 = !DILocation(line: 56, column: 1, scope: !462)
!462 = distinct !DILexicalBlock(scope: !434, file: !40, line: 56, column: 1)
!463 = !DILocation(line: 56, column: 1, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !40, line: 56, column: 1)
!465 = distinct !DILexicalBlock(scope: !462, file: !40, line: 56, column: 1)
!466 = !DILocation(line: 56, column: 1, scope: !465)
!467 = !DILocation(line: 56, column: 1, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !40, line: 56, column: 1)
!469 = !{!470, !182, i64 0}
!470 = !{!"", !182, i64 0, !182, i64 8, !198, i64 16}
!471 = !{!470, !182, i64 8}
!472 = !{!470, !198, i64 16}
!473 = !DILocation(line: 56, column: 1, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !40, line: 56, column: 1)
!475 = distinct !DILexicalBlock(scope: !462, file: !40, line: 56, column: 1)
!476 = !DILocation(line: 56, column: 1, scope: !475)
!477 = !DILocation(line: 56, column: 1, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !40, line: 56, column: 1)
!479 = !DILocation(line: 56, column: 1, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !40, line: 56, column: 1)
!481 = distinct !DILexicalBlock(scope: !429, file: !40, line: 56, column: 1)
!482 = !DILocation(line: 56, column: 1, scope: !481)
!483 = !DILocation(line: 56, column: 1, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !40, line: 56, column: 1)
!485 = !DILocation(line: 56, column: 1, scope: !486)
!486 = distinct !DILexicalBlock(scope: !480, file: !40, line: 56, column: 1)
!487 = distinct !DISubprogram(name: "kh_get_str_uint32", scope: !40, file: !40, line: 30, type: !488, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !492)
!488 = !DISubroutineType(types: !489)
!489 = !{!46, !490, !80}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!492 = !{!493, !494, !495, !498, !499, !500, !501}
!493 = !DILocalVariable(name: "h", arg: 1, scope: !487, file: !40, line: 30, type: !490)
!494 = !DILocalVariable(name: "key", arg: 2, scope: !487, file: !40, line: 30, type: !80)
!495 = !DILocalVariable(name: "k", scope: !496, file: !40, line: 30, type: !46)
!496 = distinct !DILexicalBlock(scope: !497, file: !40, line: 30, column: 1)
!497 = distinct !DILexicalBlock(scope: !487, file: !40, line: 30, column: 1)
!498 = !DILocalVariable(name: "i", scope: !496, file: !40, line: 30, type: !46)
!499 = !DILocalVariable(name: "last", scope: !496, file: !40, line: 30, type: !46)
!500 = !DILocalVariable(name: "mask", scope: !496, file: !40, line: 30, type: !46)
!501 = !DILocalVariable(name: "step", scope: !496, file: !40, line: 30, type: !46)
!502 = !DILocation(line: 30, column: 1, scope: !487)
!503 = !DILocation(line: 30, column: 1, scope: !497)
!504 = !DILocation(line: 30, column: 1, scope: !496)
!505 = !DILocation(line: 0, scope: !496)
!506 = !DILocation(line: 30, column: 1, scope: !507)
!507 = distinct !DILexicalBlock(scope: !496, file: !40, line: 30, column: 1)
!508 = !DILocation(line: 30, column: 1, scope: !509)
!509 = distinct !DILexicalBlock(scope: !507, file: !40, line: 30, column: 1)
!510 = distinct !{!510, !504, !504, !225}
!511 = !DISubprogram(name: "__errno_location", scope: !512, file: !512, line: 37, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!513 = !DISubroutineType(types: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!516 = !DISubprogram(name: "strerror", scope: !361, file: !361, line: 419, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DISubroutineType(types: !518)
!518 = !{!50, !62}
!519 = distinct !DISubprogram(name: "string_array_destroy", scope: !40, file: !40, line: 52, type: !520, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !164}
!522 = !{!523}
!523 = !DILocalVariable(name: "array", arg: 1, scope: !519, file: !40, line: 52, type: !164)
!524 = !DILocation(line: 52, column: 1, scope: !519)
!525 = !DILocation(line: 52, column: 1, scope: !526)
!526 = distinct !DILexicalBlock(scope: !519, file: !40, line: 52, column: 1)
!527 = !DILocation(line: 52, column: 1, scope: !528)
!528 = distinct !DILexicalBlock(scope: !519, file: !40, line: 52, column: 1)
!529 = !DISubprogram(name: "trie_destroy", scope: !103, file: !103, line: 149, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !101}
!532 = !DISubprogram(name: "trie_add", scope: !103, file: !103, line: 116, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !101, !50, !83}
!535 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!536 = distinct !DISubprogram(name: "trie_new_from_cstring_array_sorted", scope: !2, file: !2, line: 53, type: !537, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !560)
!537 = !DISubroutineType(types: !538)
!538 = !{!101, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "cstring_array", file: !541, line: 202, baseType: !542)
!541 = !DIFile(filename: "./string_utils.h", directory: "/local-ssd/libpostal-ynvflsfumrraceljqaz5ddb4gjwgve42-build/aidengro/spack-stage-libpostal-1.1-ynvflsfumrraceljqaz5ddb4gjwgve42/spack-src/src", checksumkind: CSK_MD5, checksum: "1b6558495346db6c8fc4a0b999ccf744")
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !541, line: 199, size: 128, elements: !543)
!543 = !{!544, !552}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !542, file: !541, line: 200, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_array", file: !40, line: 44, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 44, size: 192, elements: !548)
!548 = !{!549, !550, !551}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !547, file: !40, line: 44, baseType: !65, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !547, file: !40, line: 44, baseType: !65, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !547, file: !40, line: 44, baseType: !82, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !542, file: !541, line: 201, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_array", file: !40, line: 50, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 50, size: 192, elements: !556)
!556 = !{!557, !558, !559}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !555, file: !40, line: 50, baseType: !65, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !555, file: !40, line: 50, baseType: !65, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !555, file: !40, line: 50, baseType: !50, size: 64, offset: 128)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !571, !575}
!561 = !DILocalVariable(name: "strings", arg: 1, scope: !536, file: !2, line: 53, type: !539)
!562 = !DILocalVariable(name: "key", scope: !536, file: !2, line: 54, type: !50)
!563 = !DILocalVariable(name: "i", scope: !536, file: !2, line: 55, type: !83)
!564 = !DILocalVariable(name: "ret", scope: !536, file: !2, line: 57, type: !62)
!565 = !DILocalVariable(name: "next_id", scope: !536, file: !2, line: 58, type: !83)
!566 = !DILocalVariable(name: "n", scope: !536, file: !2, line: 60, type: !65)
!567 = !DILocalVariable(name: "hash", scope: !536, file: !2, line: 62, type: !68)
!568 = !DILocalVariable(name: "__si", scope: !569, file: !2, line: 65, type: !62)
!569 = distinct !DILexicalBlock(scope: !570, file: !2, line: 65, column: 5)
!570 = distinct !DILexicalBlock(scope: !536, file: !2, line: 65, column: 5)
!571 = !DILocalVariable(name: "k", scope: !572, file: !2, line: 65, type: !175)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 65, column: 5)
!573 = distinct !DILexicalBlock(scope: !574, file: !2, line: 65, column: 5)
!574 = distinct !DILexicalBlock(scope: !569, file: !2, line: 65, column: 5)
!575 = !DILocalVariable(name: "trie", scope: !536, file: !2, line: 78, type: !101)
!576 = !DILocation(line: 53, column: 59, scope: !536)
!577 = !DILocation(line: 54, column: 5, scope: !536)
!578 = !DILocation(line: 54, column: 11, scope: !536)
!579 = !DILocation(line: 55, column: 5, scope: !536)
!580 = !DILocation(line: 55, column: 14, scope: !536)
!581 = !DILocation(line: 57, column: 5, scope: !536)
!582 = !DILocation(line: 57, column: 9, scope: !536)
!583 = !DILocation(line: 58, column: 5, scope: !536)
!584 = !DILocation(line: 58, column: 14, scope: !536)
!585 = !DILocation(line: 60, column: 5, scope: !536)
!586 = !DILocation(line: 60, column: 12, scope: !536)
!587 = !DILocation(line: 60, column: 42, scope: !536)
!588 = !DILocation(line: 60, column: 16, scope: !536)
!589 = !DILocation(line: 62, column: 5, scope: !536)
!590 = !DILocation(line: 62, column: 26, scope: !536)
!591 = !DILocation(line: 62, column: 33, scope: !536)
!592 = !DILocation(line: 63, column: 5, scope: !536)
!593 = !DILocation(line: 65, column: 5, scope: !569)
!594 = !DILocation(line: 65, column: 5, scope: !574)
!595 = !{!596, !182, i64 0}
!596 = !{!"", !182, i64 0, !182, i64 8}
!597 = !DILocation(line: 65, column: 5, scope: !573)
!598 = !{!596, !182, i64 8}
!599 = !DILocation(line: 65, column: 5, scope: !600)
!600 = distinct !DILexicalBlock(scope: !572, file: !2, line: 65, column: 5)
!601 = !DILocation(line: 65, column: 5, scope: !572)
!602 = !DILocation(line: 65, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !572, file: !2, line: 65, column: 5)
!604 = !DILocation(line: 65, column: 5, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !2, line: 65, column: 5)
!606 = distinct !{!606, !593, !593, !225}
!607 = !DILocation(line: 78, column: 5, scope: !536)
!608 = !DILocation(line: 78, column: 13, scope: !536)
!609 = !DILocation(line: 78, column: 39, scope: !536)
!610 = !DILocation(line: 78, column: 20, scope: !536)
!611 = !DILocation(line: 79, column: 5, scope: !536)
!612 = !DILocation(line: 81, column: 12, scope: !536)
!613 = !DILocation(line: 81, column: 5, scope: !536)
!614 = !DILocation(line: 82, column: 1, scope: !536)
!615 = !DISubprogram(name: "cstring_array_num_strings", scope: !541, file: !541, line: 210, type: !616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubroutineType(types: !617)
!617 = !{!65, !539}
!618 = distinct !DISubprogram(name: "kh_init_str_uint32", scope: !40, file: !40, line: 30, type: !619, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44)
!619 = !DISubroutineType(types: !620)
!620 = !{!68}
!621 = !DILocation(line: 30, column: 1, scope: !618)
!622 = distinct !DISubprogram(name: "kh_resize_str_uint32", scope: !40, file: !40, line: 30, type: !623, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{!62, !68, !46}
!625 = !{!626, !627, !628, !629, !630, !636, !639, !647, !648, !649, !651, !652, !653, !657}
!626 = !DILocalVariable(name: "h", arg: 1, scope: !622, file: !40, line: 30, type: !68)
!627 = !DILocalVariable(name: "new_n_buckets", arg: 2, scope: !622, file: !40, line: 30, type: !46)
!628 = !DILocalVariable(name: "new_flags", scope: !622, file: !40, line: 30, type: !77)
!629 = !DILocalVariable(name: "j", scope: !622, file: !40, line: 30, type: !46)
!630 = !DILocalVariable(name: "new_keys", scope: !631, file: !40, line: 30, type: !79)
!631 = distinct !DILexicalBlock(scope: !632, file: !40, line: 30, column: 1)
!632 = distinct !DILexicalBlock(scope: !633, file: !40, line: 30, column: 1)
!633 = distinct !DILexicalBlock(scope: !634, file: !40, line: 30, column: 1)
!634 = distinct !DILexicalBlock(scope: !635, file: !40, line: 30, column: 1)
!635 = distinct !DILexicalBlock(scope: !622, file: !40, line: 30, column: 1)
!636 = !DILocalVariable(name: "new_vals", scope: !637, file: !40, line: 30, type: !82)
!637 = distinct !DILexicalBlock(scope: !638, file: !40, line: 30, column: 1)
!638 = distinct !DILexicalBlock(scope: !631, file: !40, line: 30, column: 1)
!639 = !DILocalVariable(name: "key", scope: !640, file: !40, line: 30, type: !80)
!640 = distinct !DILexicalBlock(scope: !641, file: !40, line: 30, column: 1)
!641 = distinct !DILexicalBlock(scope: !642, file: !40, line: 30, column: 1)
!642 = distinct !DILexicalBlock(scope: !643, file: !40, line: 30, column: 1)
!643 = distinct !DILexicalBlock(scope: !644, file: !40, line: 30, column: 1)
!644 = distinct !DILexicalBlock(scope: !645, file: !40, line: 30, column: 1)
!645 = distinct !DILexicalBlock(scope: !646, file: !40, line: 30, column: 1)
!646 = distinct !DILexicalBlock(scope: !622, file: !40, line: 30, column: 1)
!647 = !DILocalVariable(name: "val", scope: !640, file: !40, line: 30, type: !83)
!648 = !DILocalVariable(name: "new_mask", scope: !640, file: !40, line: 30, type: !46)
!649 = !DILocalVariable(name: "k", scope: !650, file: !40, line: 30, type: !46)
!650 = distinct !DILexicalBlock(scope: !640, file: !40, line: 30, column: 1)
!651 = !DILocalVariable(name: "i", scope: !650, file: !40, line: 30, type: !46)
!652 = !DILocalVariable(name: "step", scope: !650, file: !40, line: 30, type: !46)
!653 = !DILocalVariable(name: "tmp", scope: !654, file: !40, line: 30, type: !80)
!654 = distinct !DILexicalBlock(scope: !655, file: !40, line: 30, column: 1)
!655 = distinct !DILexicalBlock(scope: !656, file: !40, line: 30, column: 1)
!656 = distinct !DILexicalBlock(scope: !650, file: !40, line: 30, column: 1)
!657 = !DILocalVariable(name: "tmp", scope: !658, file: !40, line: 30, type: !83)
!658 = distinct !DILexicalBlock(scope: !659, file: !40, line: 30, column: 1)
!659 = distinct !DILexicalBlock(scope: !655, file: !40, line: 30, column: 1)
!660 = !DILocation(line: 30, column: 1, scope: !622)
!661 = !DILocation(line: 30, column: 1, scope: !635)
!662 = !DILocation(line: 30, column: 1, scope: !663)
!663 = distinct !DILexicalBlock(scope: !635, file: !40, line: 30, column: 1)
!664 = !DILocation(line: 30, column: 1, scope: !634)
!665 = !DILocation(line: 30, column: 1, scope: !633)
!666 = !DILocation(line: 30, column: 1, scope: !667)
!667 = distinct !DILexicalBlock(scope: !633, file: !40, line: 30, column: 1)
!668 = !DILocation(line: 30, column: 1, scope: !632)
!669 = !DILocation(line: 30, column: 1, scope: !631)
!670 = !DILocation(line: 30, column: 1, scope: !671)
!671 = distinct !DILexicalBlock(scope: !631, file: !40, line: 30, column: 1)
!672 = !DILocation(line: 30, column: 1, scope: !673)
!673 = distinct !DILexicalBlock(scope: !671, file: !40, line: 30, column: 1)
!674 = !DILocation(line: 30, column: 1, scope: !637)
!675 = !DILocation(line: 30, column: 1, scope: !676)
!676 = distinct !DILexicalBlock(scope: !637, file: !40, line: 30, column: 1)
!677 = !DILocation(line: 30, column: 1, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !40, line: 30, column: 1)
!679 = !DILocation(line: 30, column: 1, scope: !638)
!680 = !DILocation(line: 30, column: 1, scope: !646)
!681 = !DILocation(line: 30, column: 1, scope: !644)
!682 = !DILocation(line: 30, column: 1, scope: !643)
!683 = !DILocation(line: 30, column: 1, scope: !641)
!684 = !DILocation(line: 30, column: 1, scope: !642)
!685 = !DILocation(line: 30, column: 1, scope: !640)
!686 = !DILocation(line: 30, column: 1, scope: !687)
!687 = distinct !DILexicalBlock(scope: !640, file: !40, line: 30, column: 1)
!688 = !DILocation(line: 30, column: 1, scope: !650)
!689 = distinct !{!689, !688, !688, !225}
!690 = !DILocation(line: 30, column: 1, scope: !656)
!691 = !DILocation(line: 30, column: 1, scope: !654)
!692 = !DILocation(line: 30, column: 1, scope: !655)
!693 = !DILocation(line: 30, column: 1, scope: !658)
!694 = !DILocation(line: 30, column: 1, scope: !659)
!695 = !DILocation(line: 30, column: 1, scope: !696)
!696 = distinct !DILexicalBlock(scope: !656, file: !40, line: 30, column: 1)
!697 = !DILocation(line: 30, column: 1, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !40, line: 30, column: 1)
!699 = distinct !{!699, !685, !685}
!700 = distinct !{!700, !681, !681, !225}
!701 = !DILocation(line: 30, column: 1, scope: !702)
!702 = distinct !DILexicalBlock(scope: !645, file: !40, line: 30, column: 1)
!703 = !DILocation(line: 30, column: 1, scope: !645)
!704 = !DILocation(line: 30, column: 1, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !40, line: 30, column: 1)
!706 = !DILocation(line: 30, column: 1, scope: !707)
!707 = distinct !DILexicalBlock(scope: !705, file: !40, line: 30, column: 1)
!708 = !{!197, !198, i64 8}
!709 = !{!197, !198, i64 12}
!710 = distinct !DISubprogram(name: "kh_put_str_uint32", scope: !40, file: !40, line: 30, type: !711, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{!46, !68, !80, !515}
!713 = !{!714, !715, !716, !717, !718, !720, !721, !722, !723, !724}
!714 = !DILocalVariable(name: "h", arg: 1, scope: !710, file: !40, line: 30, type: !68)
!715 = !DILocalVariable(name: "key", arg: 2, scope: !710, file: !40, line: 30, type: !80)
!716 = !DILocalVariable(name: "ret", arg: 3, scope: !710, file: !40, line: 30, type: !515)
!717 = !DILocalVariable(name: "x", scope: !710, file: !40, line: 30, type: !46)
!718 = !DILocalVariable(name: "k", scope: !719, file: !40, line: 30, type: !46)
!719 = distinct !DILexicalBlock(scope: !710, file: !40, line: 30, column: 1)
!720 = !DILocalVariable(name: "i", scope: !719, file: !40, line: 30, type: !46)
!721 = !DILocalVariable(name: "site", scope: !719, file: !40, line: 30, type: !46)
!722 = !DILocalVariable(name: "last", scope: !719, file: !40, line: 30, type: !46)
!723 = !DILocalVariable(name: "mask", scope: !719, file: !40, line: 30, type: !46)
!724 = !DILocalVariable(name: "step", scope: !719, file: !40, line: 30, type: !46)
!725 = !DILocation(line: 30, column: 1, scope: !710)
!726 = !DILocation(line: 30, column: 1, scope: !727)
!727 = distinct !DILexicalBlock(scope: !710, file: !40, line: 30, column: 1)
!728 = !DILocation(line: 30, column: 1, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !40, line: 30, column: 1)
!730 = distinct !DILexicalBlock(scope: !727, file: !40, line: 30, column: 1)
!731 = !DILocation(line: 30, column: 1, scope: !730)
!732 = !DILocation(line: 30, column: 1, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !40, line: 30, column: 1)
!734 = distinct !DILexicalBlock(scope: !729, file: !40, line: 30, column: 1)
!735 = !DILocation(line: 30, column: 1, scope: !734)
!736 = !DILocation(line: 30, column: 1, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !40, line: 30, column: 1)
!738 = !DILocation(line: 30, column: 1, scope: !739)
!739 = distinct !DILexicalBlock(scope: !729, file: !40, line: 30, column: 1)
!740 = !DILocation(line: 30, column: 1, scope: !741)
!741 = distinct !DILexicalBlock(scope: !739, file: !40, line: 30, column: 1)
!742 = !DILocation(line: 30, column: 1, scope: !719)
!743 = !DILocation(line: 30, column: 1, scope: !744)
!744 = distinct !DILexicalBlock(scope: !719, file: !40, line: 30, column: 1)
!745 = !DILocation(line: 30, column: 1, scope: !746)
!746 = distinct !DILexicalBlock(scope: !744, file: !40, line: 30, column: 1)
!747 = !DILocation(line: 0, scope: !746)
!748 = !DILocation(line: 30, column: 1, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !40, line: 30, column: 1)
!750 = distinct !DILexicalBlock(scope: !746, file: !40, line: 30, column: 1)
!751 = !DILocation(line: 30, column: 1, scope: !750)
!752 = !DILocation(line: 30, column: 1, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !40, line: 30, column: 1)
!754 = !DILocation(line: 30, column: 1, scope: !755)
!755 = distinct !DILexicalBlock(scope: !753, file: !40, line: 30, column: 1)
!756 = distinct !{!756, !745, !745, !225}
!757 = !DILocation(line: 30, column: 1, scope: !758)
!758 = distinct !DILexicalBlock(scope: !746, file: !40, line: 30, column: 1)
!759 = !DILocation(line: 30, column: 1, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !40, line: 30, column: 1)
!761 = distinct !DILexicalBlock(scope: !758, file: !40, line: 30, column: 1)
!762 = !DILocation(line: 30, column: 1, scope: !761)
!763 = !DILocation(line: 30, column: 1, scope: !764)
!764 = distinct !DILexicalBlock(scope: !710, file: !40, line: 30, column: 1)
!765 = !DILocation(line: 30, column: 1, scope: !766)
!766 = distinct !DILexicalBlock(scope: !764, file: !40, line: 30, column: 1)
!767 = !DILocation(line: 30, column: 1, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !40, line: 30, column: 1)
!769 = !DILocation(line: 30, column: 1, scope: !770)
!770 = distinct !DILexicalBlock(scope: !768, file: !40, line: 30, column: 1)
!771 = distinct !DISubprogram(name: "kh_destroy_str_uint32", scope: !40, file: !40, line: 30, type: !772, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !68}
!774 = !{!775}
!775 = !DILocalVariable(name: "h", arg: 1, scope: !771, file: !40, line: 30, type: !68)
!776 = !DILocation(line: 30, column: 1, scope: !771)
!777 = !DILocation(line: 30, column: 1, scope: !778)
!778 = distinct !DILexicalBlock(scope: !771, file: !40, line: 30, column: 1)
!779 = !DILocation(line: 30, column: 1, scope: !780)
!780 = distinct !DILexicalBlock(scope: !778, file: !40, line: 30, column: 1)
!781 = distinct !DISubprogram(name: "trie_new_from_cstring_array", scope: !2, file: !2, line: 84, type: !537, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !782)
!782 = !{!783, !784, !785, !786, !787, !788}
!783 = !DILocalVariable(name: "strings", arg: 1, scope: !781, file: !2, line: 84, type: !539)
!784 = !DILocalVariable(name: "key", scope: !781, file: !2, line: 85, type: !50)
!785 = !DILocalVariable(name: "i", scope: !781, file: !2, line: 86, type: !83)
!786 = !DILocalVariable(name: "next_id", scope: !781, file: !2, line: 88, type: !83)
!787 = !DILocalVariable(name: "trie", scope: !781, file: !2, line: 90, type: !101)
!788 = !DILocalVariable(name: "__si", scope: !789, file: !2, line: 92, type: !62)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 92, column: 5)
!790 = distinct !DILexicalBlock(scope: !781, file: !2, line: 92, column: 5)
!791 = !DILocation(line: 84, column: 52, scope: !781)
!792 = !DILocation(line: 85, column: 5, scope: !781)
!793 = !DILocation(line: 85, column: 11, scope: !781)
!794 = !DILocation(line: 86, column: 5, scope: !781)
!795 = !DILocation(line: 86, column: 14, scope: !781)
!796 = !DILocation(line: 88, column: 5, scope: !781)
!797 = !DILocation(line: 88, column: 14, scope: !781)
!798 = !DILocation(line: 90, column: 5, scope: !781)
!799 = !DILocation(line: 90, column: 13, scope: !781)
!800 = !DILocation(line: 90, column: 20, scope: !781)
!801 = !DILocation(line: 92, column: 5, scope: !789)
!802 = !DILocation(line: 92, column: 5, scope: !803)
!803 = distinct !DILexicalBlock(scope: !789, file: !2, line: 92, column: 5)
!804 = !DILocation(line: 92, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !803, file: !2, line: 92, column: 5)
!806 = !DILocation(line: 92, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !2, line: 92, column: 5)
!808 = distinct !DILexicalBlock(scope: !805, file: !2, line: 92, column: 5)
!809 = !DILocation(line: 92, column: 5, scope: !808)
!810 = !DILocation(line: 92, column: 5, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !2, line: 92, column: 5)
!812 = !DILocation(line: 92, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !2, line: 92, column: 5)
!814 = distinct !{!814, !801, !801, !225}
!815 = !DILocation(line: 100, column: 12, scope: !781)
!816 = !DILocation(line: 100, column: 5, scope: !781)
!817 = !DILocation(line: 101, column: 1, scope: !781)
!818 = !DISubprogram(name: "malloc", scope: !819, file: !819, line: 540, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!819 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!820 = !DISubroutineType(types: !821)
!821 = !{!53, !65}
!822 = !DISubprogram(name: "realloc", scope: !819, file: !819, line: 551, type: !823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!823 = !DISubroutineType(types: !824)
!824 = !{!53, !53, !65}
!825 = !DISubprogram(name: "exit", scope: !819, file: !819, line: 624, type: !826, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !62}
!828 = !DISubprogram(name: "strcmp", scope: !361, file: !361, line: 156, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!829 = !DISubroutineType(types: !830)
!830 = !{!62, !52, !52}
!831 = distinct !DISubprogram(name: "ks_combsort_str", scope: !40, file: !40, line: 56, type: !397, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !832)
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840}
!833 = !DILocalVariable(name: "n", arg: 1, scope: !831, file: !40, line: 56, type: !65)
!834 = !DILocalVariable(name: "a", arg: 2, scope: !831, file: !40, line: 56, type: !63)
!835 = !DILocalVariable(name: "shrink_factor", scope: !831, file: !40, line: 56, type: !90)
!836 = !DILocalVariable(name: "do_swap", scope: !831, file: !40, line: 56, type: !62)
!837 = !DILocalVariable(name: "gap", scope: !831, file: !40, line: 56, type: !65)
!838 = !DILocalVariable(name: "tmp", scope: !831, file: !40, line: 56, type: !64)
!839 = !DILocalVariable(name: "i", scope: !831, file: !40, line: 56, type: !63)
!840 = !DILocalVariable(name: "j", scope: !831, file: !40, line: 56, type: !63)
!841 = !DILocation(line: 56, column: 1, scope: !831)
!842 = !{!843, !843, i64 0}
!843 = !{!"double", !183, i64 0}
!844 = !DILocation(line: 56, column: 1, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !40, line: 56, column: 1)
!846 = distinct !DILexicalBlock(scope: !831, file: !40, line: 56, column: 1)
!847 = !DILocation(line: 56, column: 1, scope: !846)
!848 = !DILocation(line: 56, column: 1, scope: !849)
!849 = distinct !DILexicalBlock(scope: !845, file: !40, line: 56, column: 1)
!850 = !DILocation(line: 56, column: 1, scope: !851)
!851 = distinct !DILexicalBlock(scope: !849, file: !40, line: 56, column: 1)
!852 = !DILocation(line: 56, column: 1, scope: !853)
!853 = distinct !DILexicalBlock(scope: !846, file: !40, line: 56, column: 1)
!854 = !DILocation(line: 56, column: 1, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !40, line: 56, column: 1)
!856 = !DILocation(line: 56, column: 1, scope: !857)
!857 = distinct !DILexicalBlock(scope: !855, file: !40, line: 56, column: 1)
!858 = !DILocation(line: 56, column: 1, scope: !859)
!859 = distinct !DILexicalBlock(scope: !857, file: !40, line: 56, column: 1)
!860 = !DILocation(line: 56, column: 1, scope: !861)
!861 = distinct !DILexicalBlock(scope: !859, file: !40, line: 56, column: 1)
!862 = distinct !{!862, !852, !852, !225}
!863 = distinct !{!863, !841, !841, !225}
!864 = !DILocation(line: 56, column: 1, scope: !865)
!865 = distinct !DILexicalBlock(scope: !831, file: !40, line: 56, column: 1)
!866 = !DISubprogram(name: "free", scope: !819, file: !819, line: 555, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !53}
!869 = distinct !DISubprogram(name: "__ks_insertsort_str", scope: !40, file: !40, line: 56, type: !870, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !63, !63}
!872 = !{!873, !874, !875, !876, !877}
!873 = !DILocalVariable(name: "s", arg: 1, scope: !869, file: !40, line: 56, type: !63)
!874 = !DILocalVariable(name: "t", arg: 2, scope: !869, file: !40, line: 56, type: !63)
!875 = !DILocalVariable(name: "i", scope: !869, file: !40, line: 56, type: !63)
!876 = !DILocalVariable(name: "j", scope: !869, file: !40, line: 56, type: !63)
!877 = !DILocalVariable(name: "swap_tmp", scope: !869, file: !40, line: 56, type: !64)
!878 = !DILocation(line: 56, column: 1, scope: !869)
!879 = !DILocation(line: 56, column: 1, scope: !880)
!880 = distinct !DILexicalBlock(scope: !869, file: !40, line: 56, column: 1)
!881 = !DILocation(line: 56, column: 1, scope: !882)
!882 = distinct !DILexicalBlock(scope: !880, file: !40, line: 56, column: 1)
!883 = !DILocation(line: 56, column: 1, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !40, line: 56, column: 1)
!885 = !DILocation(line: 56, column: 1, scope: !886)
!886 = distinct !DILexicalBlock(scope: !884, file: !40, line: 56, column: 1)
!887 = !DILocation(line: 0, scope: !886)
!888 = !DILocation(line: 56, column: 1, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !40, line: 56, column: 1)
!890 = distinct !{!890, !883, !883, !225}
!891 = distinct !{!891, !879, !879, !225}
!892 = distinct !DISubprogram(name: "__ac_X31_hash_string", scope: !47, file: !47, line: 359, type: !893, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!46, !52}
!895 = !{!896, !897}
!896 = !DILocalVariable(name: "s", arg: 1, scope: !892, file: !47, line: 359, type: !52)
!897 = !DILocalVariable(name: "h", scope: !892, file: !47, line: 361, type: !46)
!898 = !DILocation(line: 359, column: 59, scope: !892)
!899 = !DILocation(line: 361, column: 5, scope: !892)
!900 = !DILocation(line: 361, column: 13, scope: !892)
!901 = !DILocation(line: 361, column: 27, scope: !892)
!902 = !DILocation(line: 361, column: 26, scope: !892)
!903 = !{!183, !183, i64 0}
!904 = !DILocation(line: 361, column: 17, scope: !892)
!905 = !DILocation(line: 362, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !892, file: !47, line: 362, column: 9)
!907 = !DILocation(line: 362, column: 9, scope: !892)
!908 = !DILocation(line: 362, column: 17, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !47, line: 362, column: 12)
!910 = !DILocation(line: 362, column: 24, scope: !911)
!911 = distinct !DILexicalBlock(scope: !909, file: !47, line: 362, column: 12)
!912 = !DILocation(line: 362, column: 23, scope: !911)
!913 = !DILocation(line: 362, column: 12, scope: !909)
!914 = !DILocation(line: 362, column: 37, scope: !911)
!915 = !DILocation(line: 362, column: 39, scope: !911)
!916 = !DILocation(line: 362, column: 47, scope: !911)
!917 = !DILocation(line: 362, column: 45, scope: !911)
!918 = !DILocation(line: 362, column: 61, scope: !911)
!919 = !DILocation(line: 362, column: 60, scope: !911)
!920 = !DILocation(line: 362, column: 51, scope: !911)
!921 = !DILocation(line: 362, column: 49, scope: !911)
!922 = !DILocation(line: 362, column: 34, scope: !911)
!923 = !DILocation(line: 362, column: 32, scope: !911)
!924 = !DILocation(line: 362, column: 27, scope: !911)
!925 = !DILocation(line: 362, column: 12, scope: !911)
!926 = distinct !{!926, !913, !927, !225}
!927 = !DILocation(line: 362, column: 61, scope: !909)
!928 = !DILocation(line: 363, column: 12, scope: !892)
!929 = !DILocation(line: 364, column: 1, scope: !892)
!930 = !DILocation(line: 363, column: 5, scope: !892)
!931 = !DISubprogram(name: "calloc", scope: !819, file: !819, line: 543, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubroutineType(types: !933)
!933 = !{!53, !65, !65}

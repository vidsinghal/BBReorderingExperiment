; ModuleID = 'samples/175.bc'
source_filename = "string_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_alloc_t = type { i64, i64, ptr }
%struct.string_t = type { ptr, i64 }

; Function Attrs: nounwind uwtable
define ptr @string_pool_create(i64 noundef %max_length) #0 !dbg !29 {
entry:
  %retval = alloca ptr, align 8
  %max_length.addr = alloca i64, align 8
  %a_str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %max_length, ptr %max_length.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %max_length.addr, metadata !33, metadata !DIExpression()), !dbg !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_str) #7, !dbg !40
  tail call void @llvm.dbg.declare(metadata ptr %a_str, metadata !34, metadata !DIExpression()), !dbg !41
  %call = call noalias ptr @malloc(i64 noundef 24) #8, !dbg !42
  store ptr %call, ptr %a_str, align 8, !dbg !44, !tbaa !45
  %cmp = icmp eq ptr null, %call, !dbg !47
  br i1 %cmp, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !49
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !49

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %max_length.addr, align 8, !dbg !51, !tbaa !35
  %cmp1 = icmp ult i64 %0, 1024, !dbg !53
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !54

if.then2:                                         ; preds = %if.end
  store i64 1024, ptr %max_length.addr, align 8, !dbg !55, !tbaa !35
  br label %if.end3, !dbg !56

if.end3:                                          ; preds = %if.then2, %if.end
  %1 = load ptr, ptr %a_str, align 8, !dbg !57, !tbaa !45
  %nstrings = getelementptr inbounds %struct.string_alloc_t, ptr %1, i32 0, i32 1, !dbg !58
  store i64 0, ptr %nstrings, align 8, !dbg !59, !tbaa !60
  %2 = load i64, ptr %max_length.addr, align 8, !dbg !62, !tbaa !35
  %3 = load ptr, ptr %a_str, align 8, !dbg !63, !tbaa !45
  %max_length4 = getelementptr inbounds %struct.string_alloc_t, ptr %3, i32 0, i32 0, !dbg !64
  store i64 %2, ptr %max_length4, align 8, !dbg !65, !tbaa !66
  %4 = load ptr, ptr %a_str, align 8, !dbg !67, !tbaa !45
  %strings = getelementptr inbounds %struct.string_alloc_t, ptr %4, i32 0, i32 2, !dbg !68
  store ptr null, ptr %strings, align 8, !dbg !69, !tbaa !70
  %5 = load ptr, ptr %a_str, align 8, !dbg !71, !tbaa !45
  store ptr %5, ptr %retval, align 8, !dbg !72
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !72

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_str) #7, !dbg !73
  %6 = load ptr, ptr %retval, align 8, !dbg !73
  ret ptr %6, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare !dbg !74 noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @string_pool_destroy(ptr noundef %a_str) #0 !dbg !78 {
entry:
  %a_str.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %a_str, ptr %a_str.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %a_str.addr, metadata !82, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !85
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !83, metadata !DIExpression()), !dbg !86
  store i64 0, ptr %i, align 8, !dbg !87, !tbaa !35
  br label %for.cond, !dbg !89

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !90, !tbaa !35
  %1 = load ptr, ptr %a_str.addr, align 8, !dbg !92, !tbaa !45
  %nstrings = getelementptr inbounds %struct.string_alloc_t, ptr %1, i32 0, i32 1, !dbg !93
  %2 = load i64, ptr %nstrings, align 8, !dbg !93, !tbaa !60
  %cmp = icmp ult i64 %0, %2, !dbg !94
  br i1 %cmp, label %for.body, label %for.end, !dbg !95

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a_str.addr, align 8, !dbg !96, !tbaa !45
  %strings = getelementptr inbounds %struct.string_alloc_t, ptr %3, i32 0, i32 2, !dbg !98
  %4 = load ptr, ptr %strings, align 8, !dbg !98, !tbaa !70
  %5 = load i64, ptr %i, align 8, !dbg !99, !tbaa !35
  %arrayidx = getelementptr inbounds %struct.string_t, ptr %4, i64 %5, !dbg !96
  %str = getelementptr inbounds %struct.string_t, ptr %arrayidx, i32 0, i32 0, !dbg !100
  %6 = load ptr, ptr %str, align 8, !dbg !100, !tbaa !101
  call void @free(ptr noundef %6) #7, !dbg !103
  br label %for.inc, !dbg !104

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8, !dbg !105, !tbaa !35
  %inc = add i64 %7, 1, !dbg !105
  store i64 %inc, ptr %i, align 8, !dbg !105, !tbaa !35
  br label %for.cond, !dbg !106, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %a_str.addr, align 8, !dbg !110, !tbaa !45
  %strings1 = getelementptr inbounds %struct.string_alloc_t, ptr %8, i32 0, i32 2, !dbg !111
  %9 = load ptr, ptr %strings1, align 8, !dbg !111, !tbaa !70
  call void @free(ptr noundef %9) #7, !dbg !112
  %10 = load ptr, ptr %a_str.addr, align 8, !dbg !113, !tbaa !45
  call void @free(ptr noundef %10) #7, !dbg !114
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !115
  ret void, !dbg !115
}

; Function Attrs: nounwind
declare !dbg !116 void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define ptr @string_alloc(ptr noundef %a_str, i64 noundef %length) #0 !dbg !119 {
entry:
  %retval = alloca ptr, align 8
  %a_str.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %str = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a_str, ptr %a_str.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %a_str.addr, metadata !123, metadata !DIExpression()), !dbg !127
  store i64 %length, ptr %length.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !124, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #7, !dbg !129
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !125, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !131
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !126, metadata !DIExpression()), !dbg !132
  %0 = load i64, ptr %length.addr, align 8, !dbg !133, !tbaa !35
  %cmp = icmp ule i64 %0, 0, !dbg !135
  br i1 %cmp, label %if.then, label %if.end, !dbg !136

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !137

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %a_str.addr, align 8, !dbg !138, !tbaa !45
  %nstrings = getelementptr inbounds %struct.string_alloc_t, ptr %1, i32 0, i32 1, !dbg !140
  %2 = load i64, ptr %nstrings, align 8, !dbg !140, !tbaa !60
  %tobool = icmp ne i64 %2, 0, !dbg !138
  br i1 %tobool, label %if.then1, label %if.end10, !dbg !141

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %a_str.addr, align 8, !dbg !142, !tbaa !45
  %strings = getelementptr inbounds %struct.string_alloc_t, ptr %3, i32 0, i32 2, !dbg !144
  %4 = load ptr, ptr %strings, align 8, !dbg !144, !tbaa !70
  %5 = load ptr, ptr %a_str.addr, align 8, !dbg !145, !tbaa !45
  %nstrings2 = getelementptr inbounds %struct.string_alloc_t, ptr %5, i32 0, i32 1, !dbg !146
  %6 = load i64, ptr %nstrings2, align 8, !dbg !146, !tbaa !60
  %sub = sub i64 %6, 1, !dbg !147
  %arrayidx = getelementptr inbounds %struct.string_t, ptr %4, i64 %sub, !dbg !142
  store ptr %arrayidx, ptr %str, align 8, !dbg !148, !tbaa !45
  %7 = load ptr, ptr %str, align 8, !dbg !149, !tbaa !45
  %used = getelementptr inbounds %struct.string_t, ptr %7, i32 0, i32 1, !dbg !151
  %8 = load i64, ptr %used, align 8, !dbg !151, !tbaa !152
  %9 = load i64, ptr %length.addr, align 8, !dbg !153, !tbaa !35
  %add = add i64 %8, %9, !dbg !154
  %10 = load ptr, ptr %a_str.addr, align 8, !dbg !155, !tbaa !45
  %max_length = getelementptr inbounds %struct.string_alloc_t, ptr %10, i32 0, i32 0, !dbg !156
  %11 = load i64, ptr %max_length, align 8, !dbg !156, !tbaa !66
  %cmp3 = icmp ult i64 %add, %11, !dbg !157
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !158

if.then4:                                         ; preds = %if.then1
  %12 = load ptr, ptr %str, align 8, !dbg !159, !tbaa !45
  %str5 = getelementptr inbounds %struct.string_t, ptr %12, i32 0, i32 0, !dbg !161
  %13 = load ptr, ptr %str5, align 8, !dbg !161, !tbaa !101
  %14 = load ptr, ptr %str, align 8, !dbg !162, !tbaa !45
  %used6 = getelementptr inbounds %struct.string_t, ptr %14, i32 0, i32 1, !dbg !163
  %15 = load i64, ptr %used6, align 8, !dbg !163, !tbaa !152
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %15, !dbg !164
  store ptr %add.ptr, ptr %ret, align 8, !dbg !165, !tbaa !45
  %16 = load i64, ptr %length.addr, align 8, !dbg !166, !tbaa !35
  %17 = load ptr, ptr %str, align 8, !dbg !167, !tbaa !45
  %used7 = getelementptr inbounds %struct.string_t, ptr %17, i32 0, i32 1, !dbg !168
  %18 = load i64, ptr %used7, align 8, !dbg !169, !tbaa !152
  %add8 = add i64 %18, %16, !dbg !169
  store i64 %add8, ptr %used7, align 8, !dbg !169, !tbaa !152
  %19 = load ptr, ptr %ret, align 8, !dbg !170, !tbaa !45
  store ptr %19, ptr %retval, align 8, !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !171

if.end9:                                          ; preds = %if.then1
  br label %if.end10, !dbg !172

if.end10:                                         ; preds = %if.end9, %if.end
  %20 = load i64, ptr %length.addr, align 8, !dbg !173, !tbaa !35
  %21 = load ptr, ptr %a_str.addr, align 8, !dbg !175, !tbaa !45
  %max_length11 = getelementptr inbounds %struct.string_alloc_t, ptr %21, i32 0, i32 0, !dbg !176
  %22 = load i64, ptr %max_length11, align 8, !dbg !176, !tbaa !66
  %cmp12 = icmp ugt i64 %20, %22, !dbg !177
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !178

if.then13:                                        ; preds = %if.end10
  %23 = load i64, ptr %length.addr, align 8, !dbg !179, !tbaa !35
  %24 = load ptr, ptr %a_str.addr, align 8, !dbg !180, !tbaa !45
  %max_length14 = getelementptr inbounds %struct.string_alloc_t, ptr %24, i32 0, i32 0, !dbg !181
  store i64 %23, ptr %max_length14, align 8, !dbg !182, !tbaa !66
  br label %if.end15, !dbg !180

if.end15:                                         ; preds = %if.then13, %if.end10
  %25 = load ptr, ptr %a_str.addr, align 8, !dbg !183, !tbaa !45
  %call = call ptr @new_string_pool(ptr noundef %25), !dbg !184
  store ptr %call, ptr %str, align 8, !dbg !185, !tbaa !45
  %26 = load ptr, ptr %str, align 8, !dbg !186, !tbaa !45
  %cmp16 = icmp eq ptr null, %26, !dbg !188
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !189

if.then17:                                        ; preds = %if.end15
  store ptr null, ptr %retval, align 8, !dbg !190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !190

if.end18:                                         ; preds = %if.end15
  %27 = load i64, ptr %length.addr, align 8, !dbg !191, !tbaa !35
  %28 = load ptr, ptr %str, align 8, !dbg !192, !tbaa !45
  %used19 = getelementptr inbounds %struct.string_t, ptr %28, i32 0, i32 1, !dbg !193
  store i64 %27, ptr %used19, align 8, !dbg !194, !tbaa !152
  %29 = load ptr, ptr %str, align 8, !dbg !195, !tbaa !45
  %str20 = getelementptr inbounds %struct.string_t, ptr %29, i32 0, i32 0, !dbg !196
  %30 = load ptr, ptr %str20, align 8, !dbg !196, !tbaa !101
  store ptr %30, ptr %retval, align 8, !dbg !197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !197

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !198
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #7, !dbg !198
  %31 = load ptr, ptr %retval, align 8, !dbg !198
  ret ptr %31, !dbg !198
}

; Function Attrs: nounwind uwtable
define internal ptr @new_string_pool(ptr noundef %a_str) #0 !dbg !199 {
entry:
  %retval = alloca ptr, align 8
  %a_str.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a_str, ptr %a_str.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %a_str.addr, metadata !203, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #7, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !204, metadata !DIExpression()), !dbg !207
  %0 = load ptr, ptr %a_str.addr, align 8, !dbg !208, !tbaa !45
  %strings = getelementptr inbounds %struct.string_alloc_t, ptr %0, i32 0, i32 2, !dbg !209
  %1 = load ptr, ptr %strings, align 8, !dbg !209, !tbaa !70
  %2 = load ptr, ptr %a_str.addr, align 8, !dbg !210, !tbaa !45
  %nstrings = getelementptr inbounds %struct.string_alloc_t, ptr %2, i32 0, i32 1, !dbg !211
  %3 = load i64, ptr %nstrings, align 8, !dbg !211, !tbaa !60
  %add = add i64 %3, 1, !dbg !212
  %mul = mul i64 %add, 16, !dbg !213
  %call = call ptr @realloc(ptr noundef %1, i64 noundef %mul) #9, !dbg !214
  store ptr %call, ptr %str, align 8, !dbg !215, !tbaa !45
  %4 = load ptr, ptr %str, align 8, !dbg !216, !tbaa !45
  %cmp = icmp eq ptr null, %4, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %str, align 8, !dbg !221, !tbaa !45
  %6 = load ptr, ptr %a_str.addr, align 8, !dbg !222, !tbaa !45
  %strings1 = getelementptr inbounds %struct.string_alloc_t, ptr %6, i32 0, i32 2, !dbg !223
  store ptr %5, ptr %strings1, align 8, !dbg !224, !tbaa !70
  %7 = load ptr, ptr %a_str.addr, align 8, !dbg !225, !tbaa !45
  %strings2 = getelementptr inbounds %struct.string_alloc_t, ptr %7, i32 0, i32 2, !dbg !226
  %8 = load ptr, ptr %strings2, align 8, !dbg !226, !tbaa !70
  %9 = load ptr, ptr %a_str.addr, align 8, !dbg !227, !tbaa !45
  %nstrings3 = getelementptr inbounds %struct.string_alloc_t, ptr %9, i32 0, i32 1, !dbg !228
  %10 = load i64, ptr %nstrings3, align 8, !dbg !228, !tbaa !60
  %arrayidx = getelementptr inbounds %struct.string_t, ptr %8, i64 %10, !dbg !225
  store ptr %arrayidx, ptr %str, align 8, !dbg !229, !tbaa !45
  %11 = load ptr, ptr %a_str.addr, align 8, !dbg !230, !tbaa !45
  %max_length = getelementptr inbounds %struct.string_alloc_t, ptr %11, i32 0, i32 0, !dbg !231
  %12 = load i64, ptr %max_length, align 8, !dbg !231, !tbaa !66
  %call4 = call noalias ptr @malloc(i64 noundef %12) #8, !dbg !232
  %13 = load ptr, ptr %str, align 8, !dbg !233, !tbaa !45
  %str5 = getelementptr inbounds %struct.string_t, ptr %13, i32 0, i32 0, !dbg !234
  store ptr %call4, ptr %str5, align 8, !dbg !235, !tbaa !101
  %14 = load ptr, ptr %str, align 8, !dbg !236, !tbaa !45
  %str6 = getelementptr inbounds %struct.string_t, ptr %14, i32 0, i32 0, !dbg !238
  %15 = load ptr, ptr %str6, align 8, !dbg !238, !tbaa !101
  %cmp7 = icmp eq ptr null, %15, !dbg !239
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !240

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !241

if.end9:                                          ; preds = %if.end
  %16 = load ptr, ptr %str, align 8, !dbg !242, !tbaa !45
  %used = getelementptr inbounds %struct.string_t, ptr %16, i32 0, i32 1, !dbg !243
  store i64 0, ptr %used, align 8, !dbg !244, !tbaa !152
  %17 = load ptr, ptr %a_str.addr, align 8, !dbg !245, !tbaa !45
  %nstrings10 = getelementptr inbounds %struct.string_alloc_t, ptr %17, i32 0, i32 1, !dbg !246
  %18 = load i64, ptr %nstrings10, align 8, !dbg !247, !tbaa !60
  %inc = add i64 %18, 1, !dbg !247
  store i64 %inc, ptr %nstrings10, align 8, !dbg !247, !tbaa !60
  %19 = load ptr, ptr %str, align 8, !dbg !248, !tbaa !45
  store ptr %19, ptr %retval, align 8, !dbg !249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !249

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #7, !dbg !250
  %20 = load ptr, ptr %retval, align 8, !dbg !250
  ret ptr %20, !dbg !250
}

; Function Attrs: nounwind uwtable
define ptr @string_dup(ptr noundef %a_str, ptr noundef %instr) #0 !dbg !251 {
entry:
  %a_str.addr = alloca ptr, align 8
  %instr.addr = alloca ptr, align 8
  store ptr %a_str, ptr %a_str.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %a_str.addr, metadata !255, metadata !DIExpression()), !dbg !257
  store ptr %instr, ptr %instr.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %instr.addr, metadata !256, metadata !DIExpression()), !dbg !258
  %0 = load ptr, ptr %a_str.addr, align 8, !dbg !259, !tbaa !45
  %1 = load ptr, ptr %instr.addr, align 8, !dbg !260, !tbaa !45
  %2 = load ptr, ptr %instr.addr, align 8, !dbg !261, !tbaa !45
  %call = call i64 @strlen(ptr noundef %2) #10, !dbg !262
  %call1 = call ptr @string_ndup(ptr noundef %0, ptr noundef %1, i64 noundef %call), !dbg !263
  ret ptr %call1, !dbg !264
}

; Function Attrs: nounwind uwtable
define ptr @string_ndup(ptr noundef %a_str, ptr noundef %instr, i64 noundef %len) #0 !dbg !265 {
entry:
  %retval = alloca ptr, align 8
  %a_str.addr = alloca ptr, align 8
  %instr.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %str = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a_str, ptr %a_str.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %a_str.addr, metadata !269, metadata !DIExpression()), !dbg !273
  store ptr %instr, ptr %instr.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %instr.addr, metadata !270, metadata !DIExpression()), !dbg !274
  store i64 %len, ptr %len.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !271, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #7, !dbg !276
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !272, metadata !DIExpression()), !dbg !277
  %0 = load ptr, ptr %a_str.addr, align 8, !dbg !278, !tbaa !45
  %1 = load i64, ptr %len.addr, align 8, !dbg !279, !tbaa !35
  %add = add i64 %1, 1, !dbg !280
  %call = call ptr @string_alloc(ptr noundef %0, i64 noundef %add), !dbg !281
  store ptr %call, ptr %str, align 8, !dbg !277, !tbaa !45
  %2 = load ptr, ptr %str, align 8, !dbg !282, !tbaa !45
  %cmp = icmp eq ptr null, %2, !dbg !284
  br i1 %cmp, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !286

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %str, align 8, !dbg !287, !tbaa !45
  %4 = load ptr, ptr %instr.addr, align 8, !dbg !288, !tbaa !45
  %5 = load i64, ptr %len.addr, align 8, !dbg !289, !tbaa !35
  %call1 = call ptr @strncpy(ptr noundef %3, ptr noundef %4, i64 noundef %5) #7, !dbg !290
  %6 = load ptr, ptr %str, align 8, !dbg !291, !tbaa !45
  %7 = load i64, ptr %len.addr, align 8, !dbg !292, !tbaa !35
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !291
  store i8 0, ptr %arrayidx, align 1, !dbg !293, !tbaa !294
  %8 = load ptr, ptr %str, align 8, !dbg !295, !tbaa !45
  store ptr %8, ptr %retval, align 8, !dbg !296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !296

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #7, !dbg !297
  %9 = load ptr, ptr %retval, align 8, !dbg !297
  ret ptr %9, !dbg !297
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !298 i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !304 ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind allocsize(1)
declare !dbg !309 ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(1) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "string_alloc.c", directory: "/local-ssd/staden-io-lib-mdnn2qrytng6qnwyyb4azcleq5d5yuws-build/aidengro/spack-stage-staden-io-lib-1.14.8-mdnn2qrytng6qnwyyb4azcleq5d5yuws/spack-src/io_lib", checksumkind: CSK_MD5, checksum: "e7bae40ddfb26d3c4f14e060988b9b35")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_alloc_t", file: !6, line: 57, baseType: !7)
!6 = !DIFile(filename: "./string_alloc.h", directory: "/local-ssd/staden-io-lib-mdnn2qrytng6qnwyyb4azcleq5d5yuws-build/aidengro/spack-stage-staden-io-lib-1.14.8-mdnn2qrytng6qnwyyb4azcleq5d5yuws/spack-src/io_lib", checksumkind: CSK_MD5, checksum: "f1b6dd9167d24b27ab3164f80f370786")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 53, size: 192, elements: !8)
!8 = !{!9, !13, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !7, file: !6, line: 54, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 70, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nstrings", scope: !7, file: !6, line: 55, baseType: !10, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !7, file: !6, line: 56, baseType: !15, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "string_t", file: !6, line: 51, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 48, size: 128, elements: !18)
!18 = !{!19, !22}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !17, file: !6, line: 49, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !17, file: !6, line: 50, baseType: !10, size: 64, offset: 64)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!29 = distinct !DISubprogram(name: "string_pool_create", scope: !1, file: !1, line: 54, type: !30, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!4, !10}
!32 = !{!33, !34}
!33 = !DILocalVariable(name: "max_length", arg: 1, scope: !29, file: !1, line: 54, type: !10)
!34 = !DILocalVariable(name: "a_str", scope: !29, file: !1, line: 55, type: !4)
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 54, column: 43, scope: !29)
!40 = !DILocation(line: 55, column: 5, scope: !29)
!41 = !DILocation(line: 55, column: 21, scope: !29)
!42 = !DILocation(line: 57, column: 44, scope: !43)
!43 = distinct !DILexicalBlock(scope: !29, file: !1, line: 57, column: 9)
!44 = !DILocation(line: 57, column: 24, scope: !43)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !37, i64 0}
!47 = !DILocation(line: 57, column: 14, scope: !43)
!48 = !DILocation(line: 57, column: 9, scope: !29)
!49 = !DILocation(line: 58, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 57, column: 69)
!51 = !DILocation(line: 61, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !29, file: !1, line: 61, column: 9)
!53 = !DILocation(line: 61, column: 20, scope: !52)
!54 = !DILocation(line: 61, column: 9, scope: !29)
!55 = !DILocation(line: 61, column: 47, scope: !52)
!56 = !DILocation(line: 61, column: 36, scope: !52)
!57 = !DILocation(line: 63, column: 5, scope: !29)
!58 = !DILocation(line: 63, column: 12, scope: !29)
!59 = !DILocation(line: 63, column: 24, scope: !29)
!60 = !{!61, !36, i64 8}
!61 = !{!"", !36, i64 0, !36, i64 8, !46, i64 16}
!62 = !DILocation(line: 64, column: 26, scope: !29)
!63 = !DILocation(line: 64, column: 5, scope: !29)
!64 = !DILocation(line: 64, column: 12, scope: !29)
!65 = !DILocation(line: 64, column: 24, scope: !29)
!66 = !{!61, !36, i64 0}
!67 = !DILocation(line: 65, column: 5, scope: !29)
!68 = !DILocation(line: 65, column: 12, scope: !29)
!69 = !DILocation(line: 65, column: 24, scope: !29)
!70 = !{!61, !46, i64 16}
!71 = !DILocation(line: 67, column: 12, scope: !29)
!72 = !DILocation(line: 67, column: 5, scope: !29)
!73 = !DILocation(line: 68, column: 1, scope: !29)
!74 = !DISubprogram(name: "malloc", scope: !75, file: !75, line: 540, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!76 = !DISubroutineType(types: !77)
!77 = !{!3, !10}
!78 = distinct !DISubprogram(name: "string_pool_destroy", scope: !1, file: !1, line: 96, type: !79, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !4}
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "a_str", arg: 1, scope: !78, file: !1, line: 96, type: !4)
!83 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 97, type: !10)
!84 = !DILocation(line: 96, column: 42, scope: !78)
!85 = !DILocation(line: 97, column: 5, scope: !78)
!86 = !DILocation(line: 97, column: 12, scope: !78)
!87 = !DILocation(line: 99, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !78, file: !1, line: 99, column: 5)
!89 = !DILocation(line: 99, column: 10, scope: !88)
!90 = !DILocation(line: 99, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 99, column: 5)
!92 = !DILocation(line: 99, column: 21, scope: !91)
!93 = !DILocation(line: 99, column: 28, scope: !91)
!94 = !DILocation(line: 99, column: 19, scope: !91)
!95 = !DILocation(line: 99, column: 5, scope: !88)
!96 = !DILocation(line: 100, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 99, column: 43)
!98 = !DILocation(line: 100, column: 18, scope: !97)
!99 = !DILocation(line: 100, column: 26, scope: !97)
!100 = !DILocation(line: 100, column: 29, scope: !97)
!101 = !{!102, !46, i64 0}
!102 = !{!"", !46, i64 0, !36, i64 8}
!103 = !DILocation(line: 100, column: 6, scope: !97)
!104 = !DILocation(line: 101, column: 5, scope: !97)
!105 = !DILocation(line: 99, column: 39, scope: !91)
!106 = !DILocation(line: 99, column: 5, scope: !91)
!107 = distinct !{!107, !95, !108, !109}
!108 = !DILocation(line: 101, column: 5, scope: !88)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 103, column: 10, scope: !78)
!111 = !DILocation(line: 103, column: 17, scope: !78)
!112 = !DILocation(line: 103, column: 5, scope: !78)
!113 = !DILocation(line: 104, column: 10, scope: !78)
!114 = !DILocation(line: 104, column: 5, scope: !78)
!115 = !DILocation(line: 105, column: 1, scope: !78)
!116 = !DISubprogram(name: "free", scope: !75, file: !75, line: 555, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !3}
!119 = distinct !DISubprogram(name: "string_alloc", scope: !1, file: !1, line: 110, type: !120, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!20, !4, !10}
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(name: "a_str", arg: 1, scope: !119, file: !1, line: 110, type: !4)
!124 = !DILocalVariable(name: "length", arg: 2, scope: !119, file: !1, line: 110, type: !10)
!125 = !DILocalVariable(name: "str", scope: !119, file: !1, line: 111, type: !15)
!126 = !DILocalVariable(name: "ret", scope: !119, file: !1, line: 112, type: !20)
!127 = !DILocation(line: 110, column: 36, scope: !119)
!128 = !DILocation(line: 110, column: 50, scope: !119)
!129 = !DILocation(line: 111, column: 5, scope: !119)
!130 = !DILocation(line: 111, column: 15, scope: !119)
!131 = !DILocation(line: 112, column: 5, scope: !119)
!132 = !DILocation(line: 112, column: 11, scope: !119)
!133 = !DILocation(line: 114, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !119, file: !1, line: 114, column: 9)
!135 = !DILocation(line: 114, column: 16, scope: !134)
!136 = !DILocation(line: 114, column: 9, scope: !119)
!137 = !DILocation(line: 114, column: 22, scope: !134)
!138 = !DILocation(line: 117, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !119, file: !1, line: 117, column: 9)
!140 = !DILocation(line: 117, column: 16, scope: !139)
!141 = !DILocation(line: 117, column: 9, scope: !119)
!142 = !DILocation(line: 118, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 117, column: 26)
!144 = !DILocation(line: 118, column: 20, scope: !143)
!145 = !DILocation(line: 118, column: 28, scope: !143)
!146 = !DILocation(line: 118, column: 35, scope: !143)
!147 = !DILocation(line: 118, column: 44, scope: !143)
!148 = !DILocation(line: 118, column: 10, scope: !143)
!149 = !DILocation(line: 120, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 120, column: 6)
!151 = !DILocation(line: 120, column: 11, scope: !150)
!152 = !{!102, !36, i64 8}
!153 = !DILocation(line: 120, column: 18, scope: !150)
!154 = !DILocation(line: 120, column: 16, scope: !150)
!155 = !DILocation(line: 120, column: 27, scope: !150)
!156 = !DILocation(line: 120, column: 34, scope: !150)
!157 = !DILocation(line: 120, column: 25, scope: !150)
!158 = !DILocation(line: 120, column: 6, scope: !143)
!159 = !DILocation(line: 121, column: 12, scope: !160)
!160 = distinct !DILexicalBlock(scope: !150, file: !1, line: 120, column: 46)
!161 = !DILocation(line: 121, column: 17, scope: !160)
!162 = !DILocation(line: 121, column: 23, scope: !160)
!163 = !DILocation(line: 121, column: 28, scope: !160)
!164 = !DILocation(line: 121, column: 21, scope: !160)
!165 = !DILocation(line: 121, column: 10, scope: !160)
!166 = !DILocation(line: 122, column: 19, scope: !160)
!167 = !DILocation(line: 122, column: 6, scope: !160)
!168 = !DILocation(line: 122, column: 11, scope: !160)
!169 = !DILocation(line: 122, column: 16, scope: !160)
!170 = !DILocation(line: 123, column: 13, scope: !160)
!171 = !DILocation(line: 123, column: 6, scope: !160)
!172 = !DILocation(line: 125, column: 5, scope: !143)
!173 = !DILocation(line: 128, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !119, file: !1, line: 128, column: 9)
!175 = !DILocation(line: 128, column: 18, scope: !174)
!176 = !DILocation(line: 128, column: 25, scope: !174)
!177 = !DILocation(line: 128, column: 16, scope: !174)
!178 = !DILocation(line: 128, column: 9, scope: !119)
!179 = !DILocation(line: 128, column: 57, scope: !174)
!180 = !DILocation(line: 128, column: 37, scope: !174)
!181 = !DILocation(line: 128, column: 44, scope: !174)
!182 = !DILocation(line: 128, column: 55, scope: !174)
!183 = !DILocation(line: 131, column: 27, scope: !119)
!184 = !DILocation(line: 131, column: 11, scope: !119)
!185 = !DILocation(line: 131, column: 9, scope: !119)
!186 = !DILocation(line: 133, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !119, file: !1, line: 133, column: 9)
!188 = !DILocation(line: 133, column: 14, scope: !187)
!189 = !DILocation(line: 133, column: 9, scope: !119)
!190 = !DILocation(line: 133, column: 22, scope: !187)
!191 = !DILocation(line: 135, column: 17, scope: !119)
!192 = !DILocation(line: 135, column: 5, scope: !119)
!193 = !DILocation(line: 135, column: 10, scope: !119)
!194 = !DILocation(line: 135, column: 15, scope: !119)
!195 = !DILocation(line: 136, column: 12, scope: !119)
!196 = !DILocation(line: 136, column: 17, scope: !119)
!197 = !DILocation(line: 136, column: 5, scope: !119)
!198 = !DILocation(line: 137, column: 1, scope: !119)
!199 = distinct !DISubprogram(name: "new_string_pool", scope: !1, file: !1, line: 73, type: !200, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{!15, !4}
!202 = !{!203, !204}
!203 = !DILocalVariable(name: "a_str", arg: 1, scope: !199, file: !1, line: 73, type: !4)
!204 = !DILocalVariable(name: "str", scope: !199, file: !1, line: 74, type: !15)
!205 = !DILocation(line: 73, column: 50, scope: !199)
!206 = !DILocation(line: 74, column: 5, scope: !199)
!207 = !DILocation(line: 74, column: 15, scope: !199)
!208 = !DILocation(line: 76, column: 19, scope: !199)
!209 = !DILocation(line: 76, column: 26, scope: !199)
!210 = !DILocation(line: 76, column: 36, scope: !199)
!211 = !DILocation(line: 76, column: 43, scope: !199)
!212 = !DILocation(line: 76, column: 52, scope: !199)
!213 = !DILocation(line: 76, column: 57, scope: !199)
!214 = !DILocation(line: 76, column: 11, scope: !199)
!215 = !DILocation(line: 76, column: 9, scope: !199)
!216 = !DILocation(line: 78, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !199, file: !1, line: 78, column: 9)
!218 = !DILocation(line: 78, column: 14, scope: !217)
!219 = !DILocation(line: 78, column: 9, scope: !199)
!220 = !DILocation(line: 78, column: 22, scope: !217)
!221 = !DILocation(line: 80, column: 22, scope: !199)
!222 = !DILocation(line: 80, column: 5, scope: !199)
!223 = !DILocation(line: 80, column: 12, scope: !199)
!224 = !DILocation(line: 80, column: 20, scope: !199)
!225 = !DILocation(line: 81, column: 12, scope: !199)
!226 = !DILocation(line: 81, column: 19, scope: !199)
!227 = !DILocation(line: 81, column: 27, scope: !199)
!228 = !DILocation(line: 81, column: 34, scope: !199)
!229 = !DILocation(line: 81, column: 9, scope: !199)
!230 = !DILocation(line: 83, column: 23, scope: !199)
!231 = !DILocation(line: 83, column: 30, scope: !199)
!232 = !DILocation(line: 83, column: 16, scope: !199)
!233 = !DILocation(line: 83, column: 5, scope: !199)
!234 = !DILocation(line: 83, column: 10, scope: !199)
!235 = !DILocation(line: 83, column: 14, scope: !199)
!236 = !DILocation(line: 85, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !199, file: !1, line: 85, column: 9)
!238 = !DILocation(line: 85, column: 22, scope: !237)
!239 = !DILocation(line: 85, column: 14, scope: !237)
!240 = !DILocation(line: 85, column: 9, scope: !199)
!241 = !DILocation(line: 85, column: 27, scope: !237)
!242 = !DILocation(line: 87, column: 5, scope: !199)
!243 = !DILocation(line: 87, column: 10, scope: !199)
!244 = !DILocation(line: 87, column: 15, scope: !199)
!245 = !DILocation(line: 88, column: 5, scope: !199)
!246 = !DILocation(line: 88, column: 12, scope: !199)
!247 = !DILocation(line: 88, column: 20, scope: !199)
!248 = !DILocation(line: 90, column: 12, scope: !199)
!249 = !DILocation(line: 90, column: 5, scope: !199)
!250 = !DILocation(line: 91, column: 1, scope: !199)
!251 = distinct !DISubprogram(name: "string_dup", scope: !1, file: !1, line: 142, type: !252, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!20, !4, !20}
!254 = !{!255, !256}
!255 = !DILocalVariable(name: "a_str", arg: 1, scope: !251, file: !1, line: 142, type: !4)
!256 = !DILocalVariable(name: "instr", arg: 2, scope: !251, file: !1, line: 142, type: !20)
!257 = !DILocation(line: 142, column: 34, scope: !251)
!258 = !DILocation(line: 142, column: 47, scope: !251)
!259 = !DILocation(line: 143, column: 24, scope: !251)
!260 = !DILocation(line: 143, column: 31, scope: !251)
!261 = !DILocation(line: 143, column: 45, scope: !251)
!262 = !DILocation(line: 143, column: 38, scope: !251)
!263 = !DILocation(line: 143, column: 12, scope: !251)
!264 = !DILocation(line: 143, column: 5, scope: !251)
!265 = distinct !DISubprogram(name: "string_ndup", scope: !1, file: !1, line: 146, type: !266, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!20, !4, !20, !10}
!268 = !{!269, !270, !271, !272}
!269 = !DILocalVariable(name: "a_str", arg: 1, scope: !265, file: !1, line: 146, type: !4)
!270 = !DILocalVariable(name: "instr", arg: 2, scope: !265, file: !1, line: 146, type: !20)
!271 = !DILocalVariable(name: "len", arg: 3, scope: !265, file: !1, line: 146, type: !10)
!272 = !DILocalVariable(name: "str", scope: !265, file: !1, line: 147, type: !20)
!273 = !DILocation(line: 146, column: 35, scope: !265)
!274 = !DILocation(line: 146, column: 48, scope: !265)
!275 = !DILocation(line: 146, column: 62, scope: !265)
!276 = !DILocation(line: 147, column: 5, scope: !265)
!277 = !DILocation(line: 147, column: 11, scope: !265)
!278 = !DILocation(line: 147, column: 30, scope: !265)
!279 = !DILocation(line: 147, column: 37, scope: !265)
!280 = !DILocation(line: 147, column: 41, scope: !265)
!281 = !DILocation(line: 147, column: 17, scope: !265)
!282 = !DILocation(line: 149, column: 17, scope: !283)
!283 = distinct !DILexicalBlock(scope: !265, file: !1, line: 149, column: 9)
!284 = !DILocation(line: 149, column: 14, scope: !283)
!285 = !DILocation(line: 149, column: 9, scope: !265)
!286 = !DILocation(line: 149, column: 22, scope: !283)
!287 = !DILocation(line: 151, column: 13, scope: !265)
!288 = !DILocation(line: 151, column: 18, scope: !265)
!289 = !DILocation(line: 151, column: 25, scope: !265)
!290 = !DILocation(line: 151, column: 5, scope: !265)
!291 = !DILocation(line: 152, column: 5, scope: !265)
!292 = !DILocation(line: 152, column: 9, scope: !265)
!293 = !DILocation(line: 152, column: 14, scope: !265)
!294 = !{!37, !37, i64 0}
!295 = !DILocation(line: 154, column: 12, scope: !265)
!296 = !DILocation(line: 154, column: 5, scope: !265)
!297 = !DILocation(line: 155, column: 1, scope: !265)
!298 = !DISubprogram(name: "strlen", scope: !299, file: !299, line: 407, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!300 = !DISubroutineType(types: !301)
!301 = !{!12, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!304 = !DISubprogram(name: "strncpy", scope: !299, file: !299, line: 144, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubroutineType(types: !306)
!306 = !{!20, !307, !308, !10}
!307 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !20)
!308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !302)
!309 = !DISubprogram(name: "realloc", scope: !75, file: !75, line: 551, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubroutineType(types: !311)
!311 = !{!3, !3, !10}

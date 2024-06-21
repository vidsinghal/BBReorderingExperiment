; ModuleID = 'samples/218.bc'
source_filename = "bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwloc_bitmap_s = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [8 x i8] c"0xf...f\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c",0x%08lx\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%08lx\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c",0x0\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [4 x i8] c"0x0\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [10 x i8] c"count > 0\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1, !dbg !34
@__PRETTY_FUNCTION__.hwloc_bitmap_sscanf = private unnamed_addr constant [71 x i8] c"int hwloc_bitmap_sscanf(struct hwloc_bitmap_s *, const char *restrict)\00", align 1, !dbg !36
@.str.8 = private unnamed_addr constant [4 x i8] c",%d\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [5 x i8] c",%d-\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [4 x i8] c"%d-\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [7 x i8] c",%d-%d\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [7 x i8] c"%016lx\00", align 1, !dbg !63
@.str.15 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1, !dbg !65
@.str.16 = private unnamed_addr constant [3 x i8] c"0x\00", align 1, !dbg !67
@.str.17 = private unnamed_addr constant [12 x i8] c"set->ulongs\00", align 1, !dbg !69
@__PRETTY_FUNCTION__.hwloc_bitmap_enlarge_by_ulongs = private unnamed_addr constant [75 x i8] c"void hwloc_bitmap_enlarge_by_ulongs(struct hwloc_bitmap_s *, unsigned int)\00", align 1, !dbg !74

; Function Attrs: nounwind uwtable
define noalias ptr @hwloc_bitmap_alloc() #0 !dbg !93 {
entry:
  %retval = alloca ptr, align 8
  %set = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %set) #12, !dbg !108
  tail call void @llvm.dbg.declare(metadata ptr %set, metadata !107, metadata !DIExpression()), !dbg !109
  %call = call noalias ptr @malloc(i64 noundef 24) #13, !dbg !110
  store ptr %call, ptr %set, align 8, !dbg !111, !tbaa !112
  %0 = load ptr, ptr %set, align 8, !dbg !116, !tbaa !112
  %tobool = icmp ne ptr %0, null, !dbg !116
  br i1 %tobool, label %if.end, label %if.then, !dbg !118

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !119

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %set, align 8, !dbg !120, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !121
  store i32 1, ptr %ulongs_count, align 8, !dbg !122, !tbaa !123
  %2 = load ptr, ptr %set, align 8, !dbg !126, !tbaa !112
  %ulongs_allocated = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 1, !dbg !127
  store i32 8, ptr %ulongs_allocated, align 4, !dbg !128, !tbaa !129
  %call1 = call noalias ptr @malloc(i64 noundef 64) #13, !dbg !130
  %3 = load ptr, ptr %set, align 8, !dbg !131, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !132
  store ptr %call1, ptr %ulongs, align 8, !dbg !133, !tbaa !134
  %4 = load ptr, ptr %set, align 8, !dbg !135, !tbaa !112
  %ulongs2 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 2, !dbg !137
  %5 = load ptr, ptr %ulongs2, align 8, !dbg !137, !tbaa !134
  %tobool3 = icmp ne ptr %5, null, !dbg !135
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !138

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %set, align 8, !dbg !139, !tbaa !112
  call void @free(ptr noundef %6) #12, !dbg !141
  store ptr null, ptr %retval, align 8, !dbg !142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !142

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %set, align 8, !dbg !143, !tbaa !112
  %ulongs6 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %7, i32 0, i32 2, !dbg !144
  %8 = load ptr, ptr %ulongs6, align 8, !dbg !144, !tbaa !134
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 0, !dbg !143
  store i64 0, ptr %arrayidx, align 8, !dbg !145, !tbaa !146
  %9 = load ptr, ptr %set, align 8, !dbg !148, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %9, i32 0, i32 3, !dbg !149
  store i32 0, ptr %infinite, align 8, !dbg !150, !tbaa !151
  %10 = load ptr, ptr %set, align 8, !dbg !152, !tbaa !112
  store ptr %10, ptr %retval, align 8, !dbg !153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !153

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %set) #12, !dbg !154
  %11 = load ptr, ptr %retval, align 8, !dbg !154
  ret ptr %11, !dbg !154
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare !dbg !155 noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare !dbg !161 void @free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define noalias ptr @hwloc_bitmap_alloc_full() #0 !dbg !164 {
entry:
  %set = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %set) #12, !dbg !167
  tail call void @llvm.dbg.declare(metadata ptr %set, metadata !166, metadata !DIExpression()), !dbg !168
  %call = call noalias ptr @hwloc_bitmap_alloc(), !dbg !169
  store ptr %call, ptr %set, align 8, !dbg !168, !tbaa !112
  %0 = load ptr, ptr %set, align 8, !dbg !170, !tbaa !112
  %tobool = icmp ne ptr %0, null, !dbg !170
  br i1 %tobool, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %set, align 8, !dbg !173, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 3, !dbg !175
  store i32 1, ptr %infinite, align 8, !dbg !176, !tbaa !151
  %2 = load ptr, ptr %set, align 8, !dbg !177, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 2, !dbg !178
  %3 = load ptr, ptr %ulongs, align 8, !dbg !178, !tbaa !134
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 0, !dbg !177
  store i64 -1, ptr %arrayidx, align 8, !dbg !179, !tbaa !146
  br label %if.end, !dbg !180

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %set, align 8, !dbg !181, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr %set) #12, !dbg !182
  ret ptr %4, !dbg !183
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_free(ptr noundef %set) #0 !dbg !184 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !188, metadata !DIExpression()), !dbg !189
  %0 = load ptr, ptr %set.addr, align 8, !dbg !190, !tbaa !112
  %tobool = icmp ne ptr %0, null, !dbg !190
  br i1 %tobool, label %if.end, label %if.then, !dbg !192

if.then:                                          ; preds = %entry
  br label %return, !dbg !193

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %set.addr, align 8, !dbg !194, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 2, !dbg !195
  %2 = load ptr, ptr %ulongs, align 8, !dbg !195, !tbaa !134
  call void @free(ptr noundef %2) #12, !dbg !196
  %3 = load ptr, ptr %set.addr, align 8, !dbg !197, !tbaa !112
  call void @free(ptr noundef %3) #12, !dbg !198
  br label %return, !dbg !199

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !199
}

; Function Attrs: nounwind uwtable
define noalias ptr @hwloc_bitmap_dup(ptr noundef %old) #0 !dbg !200 {
entry:
  %retval = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %old, ptr %old.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #12, !dbg !209
  tail call void @llvm.dbg.declare(metadata ptr %new, metadata !207, metadata !DIExpression()), !dbg !210
  %0 = load ptr, ptr %old.addr, align 8, !dbg !211, !tbaa !112
  %tobool = icmp ne ptr %0, null, !dbg !211
  br i1 %tobool, label %if.end, label %if.then, !dbg !213

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !214

if.end:                                           ; preds = %entry
  %call = call noalias ptr @malloc(i64 noundef 24) #13, !dbg !215
  store ptr %call, ptr %new, align 8, !dbg !216, !tbaa !112
  %1 = load ptr, ptr %new, align 8, !dbg !217, !tbaa !112
  %tobool1 = icmp ne ptr %1, null, !dbg !217
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !219

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %old.addr, align 8, !dbg !221, !tbaa !112
  %ulongs_allocated = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 1, !dbg !222
  %3 = load i32, ptr %ulongs_allocated, align 4, !dbg !222, !tbaa !129
  %conv = zext i32 %3 to i64, !dbg !221
  %mul = mul i64 %conv, 8, !dbg !223
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !224
  %4 = load ptr, ptr %new, align 8, !dbg !225, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 2, !dbg !226
  store ptr %call4, ptr %ulongs, align 8, !dbg !227, !tbaa !134
  %5 = load ptr, ptr %new, align 8, !dbg !228, !tbaa !112
  %ulongs5 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !230
  %6 = load ptr, ptr %ulongs5, align 8, !dbg !230, !tbaa !134
  %tobool6 = icmp ne ptr %6, null, !dbg !228
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !231

if.then7:                                         ; preds = %if.end3
  %7 = load ptr, ptr %new, align 8, !dbg !232, !tbaa !112
  call void @free(ptr noundef %7) #12, !dbg !234
  store ptr null, ptr %retval, align 8, !dbg !235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !235

if.end8:                                          ; preds = %if.end3
  %8 = load ptr, ptr %old.addr, align 8, !dbg !236, !tbaa !112
  %ulongs_allocated9 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %8, i32 0, i32 1, !dbg !237
  %9 = load i32, ptr %ulongs_allocated9, align 4, !dbg !237, !tbaa !129
  %10 = load ptr, ptr %new, align 8, !dbg !238, !tbaa !112
  %ulongs_allocated10 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %10, i32 0, i32 1, !dbg !239
  store i32 %9, ptr %ulongs_allocated10, align 4, !dbg !240, !tbaa !129
  %11 = load ptr, ptr %old.addr, align 8, !dbg !241, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %11, i32 0, i32 0, !dbg !242
  %12 = load i32, ptr %ulongs_count, align 8, !dbg !242, !tbaa !123
  %13 = load ptr, ptr %new, align 8, !dbg !243, !tbaa !112
  %ulongs_count11 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %13, i32 0, i32 0, !dbg !244
  store i32 %12, ptr %ulongs_count11, align 8, !dbg !245, !tbaa !123
  %14 = load ptr, ptr %new, align 8, !dbg !246, !tbaa !112
  %ulongs12 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %14, i32 0, i32 2, !dbg !247
  %15 = load ptr, ptr %ulongs12, align 8, !dbg !247, !tbaa !134
  %16 = load ptr, ptr %old.addr, align 8, !dbg !248, !tbaa !112
  %ulongs13 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %16, i32 0, i32 2, !dbg !249
  %17 = load ptr, ptr %ulongs13, align 8, !dbg !249, !tbaa !134
  %18 = load ptr, ptr %new, align 8, !dbg !250, !tbaa !112
  %ulongs_count14 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %18, i32 0, i32 0, !dbg !251
  %19 = load i32, ptr %ulongs_count14, align 8, !dbg !251, !tbaa !123
  %conv15 = zext i32 %19 to i64, !dbg !250
  %mul16 = mul i64 %conv15, 8, !dbg !252
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %17, i64 %mul16, i1 false), !dbg !253
  %20 = load ptr, ptr %old.addr, align 8, !dbg !254, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %20, i32 0, i32 3, !dbg !255
  %21 = load i32, ptr %infinite, align 8, !dbg !255, !tbaa !151
  %22 = load ptr, ptr %new, align 8, !dbg !256, !tbaa !112
  %infinite17 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %22, i32 0, i32 3, !dbg !257
  store i32 %21, ptr %infinite17, align 8, !dbg !258, !tbaa !151
  %23 = load ptr, ptr %new, align 8, !dbg !259, !tbaa !112
  store ptr %23, ptr %retval, align 8, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !260

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #12, !dbg !261
  %24 = load ptr, ptr %retval, align 8, !dbg !261
  ret ptr %24, !dbg !261
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_copy(ptr noundef %dst, ptr noundef %src) #0 !dbg !262 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !266, metadata !DIExpression()), !dbg !268
  store ptr %src, ptr %src.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !267, metadata !DIExpression()), !dbg !269
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !270, !tbaa !112
  %1 = load ptr, ptr %src.addr, align 8, !dbg !271, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !272
  %2 = load i32, ptr %ulongs_count, align 8, !dbg !272, !tbaa !123
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %0, i32 noundef %2), !dbg !273
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !274, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !275
  %4 = load ptr, ptr %ulongs, align 8, !dbg !275, !tbaa !134
  %5 = load ptr, ptr %src.addr, align 8, !dbg !276, !tbaa !112
  %ulongs1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !277
  %6 = load ptr, ptr %ulongs1, align 8, !dbg !277, !tbaa !134
  %7 = load ptr, ptr %src.addr, align 8, !dbg !278, !tbaa !112
  %ulongs_count2 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %7, i32 0, i32 0, !dbg !279
  %8 = load i32, ptr %ulongs_count2, align 8, !dbg !279, !tbaa !123
  %conv = zext i32 %8 to i64, !dbg !278
  %mul = mul i64 %conv, 8, !dbg !280
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %6, i64 %mul, i1 false), !dbg !281
  %9 = load ptr, ptr %src.addr, align 8, !dbg !282, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %9, i32 0, i32 3, !dbg !283
  %10 = load i32, ptr %infinite, align 8, !dbg !283, !tbaa !151
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !284, !tbaa !112
  %infinite3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %11, i32 0, i32 3, !dbg !285
  store i32 %10, ptr %infinite3, align 8, !dbg !286, !tbaa !151
  ret void, !dbg !287
}

; Function Attrs: nounwind uwtable
define internal void @hwloc_bitmap_reset_by_ulongs(ptr noundef %set, i32 noundef %needed_count) #0 !dbg !288 {
entry:
  %set.addr = alloca ptr, align 8
  %needed_count.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !292, metadata !DIExpression()), !dbg !294
  store i32 %needed_count, ptr %needed_count.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %needed_count.addr, metadata !293, metadata !DIExpression()), !dbg !296
  %0 = load ptr, ptr %set.addr, align 8, !dbg !297, !tbaa !112
  %1 = load i32, ptr %needed_count.addr, align 4, !dbg !298, !tbaa !295
  call void @hwloc_bitmap_enlarge_by_ulongs(ptr noundef %0, i32 noundef %1), !dbg !299
  %2 = load i32, ptr %needed_count.addr, align 4, !dbg !300, !tbaa !295
  %3 = load ptr, ptr %set.addr, align 8, !dbg !301, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 0, !dbg !302
  store i32 %2, ptr %ulongs_count, align 8, !dbg !303, !tbaa !123
  ret void, !dbg !304
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_snprintf(ptr noalias noundef %buf, i64 noundef %buflen, ptr noalias noundef %set) #0 !dbg !305 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %needcomma = alloca i32, align 4
  %i = alloca i32, align 4
  %accum = alloca i64, align 8
  %accumed = alloca i32, align 4
  %accum_mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !312, metadata !DIExpression()), !dbg !330
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !313, metadata !DIExpression()), !dbg !331
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !314, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !333
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !315, metadata !DIExpression()), !dbg !334
  %0 = load i64, ptr %buflen.addr, align 8, !dbg !335, !tbaa !146
  store i64 %0, ptr %size, align 8, !dbg !334, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !336
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !321, metadata !DIExpression()), !dbg !337
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !338, !tbaa !112
  store ptr %1, ptr %tmp, align 8, !dbg !337, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #12, !dbg !339
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !322, metadata !DIExpression()), !dbg !340
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !339
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !323, metadata !DIExpression()), !dbg !341
  store i32 0, ptr %ret, align 4, !dbg !341, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %needcomma) #12, !dbg !342
  tail call void @llvm.dbg.declare(metadata ptr %needcomma, metadata !324, metadata !DIExpression()), !dbg !343
  store i32 0, ptr %needcomma, align 4, !dbg !343, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !344
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !325, metadata !DIExpression()), !dbg !345
  call void @llvm.lifetime.start.p0(i64 8, ptr %accum) #12, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %accum, metadata !326, metadata !DIExpression()), !dbg !347
  store i64 0, ptr %accum, align 8, !dbg !347, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %accumed) #12, !dbg !348
  tail call void @llvm.dbg.declare(metadata ptr %accumed, metadata !327, metadata !DIExpression()), !dbg !349
  store i32 0, ptr %accumed, align 4, !dbg !349, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %accum_mask) #12, !dbg !350
  tail call void @llvm.dbg.declare(metadata ptr %accum_mask, metadata !328, metadata !DIExpression()), !dbg !351
  store i64 -4294967296, ptr %accum_mask, align 8, !dbg !351, !tbaa !146
  %2 = load i64, ptr %buflen.addr, align 8, !dbg !352, !tbaa !146
  %cmp = icmp ugt i64 %2, 0, !dbg !354
  br i1 %cmp, label %if.then, label %if.end, !dbg !355

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tmp, align 8, !dbg !356, !tbaa !112
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !356
  store i8 0, ptr %arrayidx, align 1, !dbg !357, !tbaa !358
  br label %if.end, !dbg !356

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %set.addr, align 8, !dbg !359, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 3, !dbg !361
  %5 = load i32, ptr %infinite, align 8, !dbg !361, !tbaa !151
  %tobool = icmp ne i32 %5, 0, !dbg !359
  br i1 %tobool, label %if.then1, label %if.end14, !dbg !362

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %tmp, align 8, !dbg !363, !tbaa !112
  %7 = load i64, ptr %size, align 8, !dbg !365, !tbaa !146
  %call = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %6, i64 noundef %7, ptr noundef @.str), !dbg !366
  store i32 %call, ptr %res, align 4, !dbg !367, !tbaa !295
  store i32 1, ptr %needcomma, align 4, !dbg !368, !tbaa !295
  %8 = load i32, ptr %res, align 4, !dbg !369, !tbaa !295
  %cmp2 = icmp slt i32 %8, 0, !dbg !371
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !372

if.then3:                                         ; preds = %if.then1
  store i32 -1, ptr %retval, align 4, !dbg !373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !373

if.end4:                                          ; preds = %if.then1
  %9 = load i32, ptr %res, align 4, !dbg !374, !tbaa !295
  %10 = load i32, ptr %ret, align 4, !dbg !375, !tbaa !295
  %add = add nsw i32 %10, %9, !dbg !375
  store i32 %add, ptr %ret, align 4, !dbg !375, !tbaa !295
  %11 = load i32, ptr %res, align 4, !dbg !376, !tbaa !295
  %conv = sext i32 %11 to i64, !dbg !376
  %12 = load i64, ptr %size, align 8, !dbg !378, !tbaa !146
  %cmp5 = icmp sge i64 %conv, %12, !dbg !379
  br i1 %cmp5, label %if.then7, label %if.end11, !dbg !380

if.then7:                                         ; preds = %if.end4
  %13 = load i64, ptr %size, align 8, !dbg !381, !tbaa !146
  %cmp8 = icmp sgt i64 %13, 0, !dbg !382
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !381

cond.true:                                        ; preds = %if.then7
  %14 = load i64, ptr %size, align 8, !dbg !383, !tbaa !146
  %conv10 = trunc i64 %14 to i32, !dbg !384
  %sub = sub nsw i32 %conv10, 1, !dbg !385
  br label %cond.end, !dbg !381

cond.false:                                       ; preds = %if.then7
  br label %cond.end, !dbg !381

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !381
  store i32 %cond, ptr %res, align 4, !dbg !386, !tbaa !295
  br label %if.end11, !dbg !387

if.end11:                                         ; preds = %cond.end, %if.end4
  %15 = load i32, ptr %res, align 4, !dbg !388, !tbaa !295
  %16 = load ptr, ptr %tmp, align 8, !dbg !389, !tbaa !112
  %idx.ext = sext i32 %15 to i64, !dbg !389
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext, !dbg !389
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !389, !tbaa !112
  %17 = load i32, ptr %res, align 4, !dbg !390, !tbaa !295
  %conv12 = sext i32 %17 to i64, !dbg !390
  %18 = load i64, ptr %size, align 8, !dbg !391, !tbaa !146
  %sub13 = sub nsw i64 %18, %conv12, !dbg !391
  store i64 %sub13, ptr %size, align 8, !dbg !391, !tbaa !146
  br label %if.end14, !dbg !392

if.end14:                                         ; preds = %if.end11, %if.end
  %19 = load ptr, ptr %set.addr, align 8, !dbg !393, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 0, !dbg !394
  %20 = load i32, ptr %ulongs_count, align 8, !dbg !394, !tbaa !123
  %sub15 = sub i32 %20, 1, !dbg !395
  store i32 %sub15, ptr %i, align 4, !dbg !396, !tbaa !295
  %21 = load ptr, ptr %set.addr, align 8, !dbg !397, !tbaa !112
  %infinite16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %21, i32 0, i32 3, !dbg !399
  %22 = load i32, ptr %infinite16, align 8, !dbg !399, !tbaa !151
  %tobool17 = icmp ne i32 %22, 0, !dbg !397
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !400

if.then18:                                        ; preds = %if.end14
  br label %while.cond, !dbg !401

while.cond:                                       ; preds = %while.body, %if.then18
  %23 = load i32, ptr %i, align 4, !dbg !403, !tbaa !295
  %cmp19 = icmp sge i32 %23, 0, !dbg !404
  br i1 %cmp19, label %land.rhs, label %land.end, !dbg !405

land.rhs:                                         ; preds = %while.cond
  %24 = load ptr, ptr %set.addr, align 8, !dbg !406, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %24, i32 0, i32 2, !dbg !407
  %25 = load ptr, ptr %ulongs, align 8, !dbg !407, !tbaa !134
  %26 = load i32, ptr %i, align 4, !dbg !408, !tbaa !295
  %idxprom = sext i32 %26 to i64, !dbg !406
  %arrayidx21 = getelementptr inbounds i64, ptr %25, i64 %idxprom, !dbg !406
  %27 = load i64, ptr %arrayidx21, align 8, !dbg !406, !tbaa !146
  %cmp22 = icmp eq i64 %27, -1, !dbg !409
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ], !dbg !410
  br i1 %28, label %while.body, label %while.end, !dbg !401

while.body:                                       ; preds = %land.end
  %29 = load i32, ptr %i, align 4, !dbg !411, !tbaa !295
  %dec = add nsw i32 %29, -1, !dbg !411
  store i32 %dec, ptr %i, align 4, !dbg !411, !tbaa !295
  br label %while.cond, !dbg !401, !llvm.loop !412

while.end:                                        ; preds = %land.end
  br label %if.end37, !dbg !414

if.else:                                          ; preds = %if.end14
  br label %while.cond24, !dbg !415

while.cond24:                                     ; preds = %while.body34, %if.else
  %30 = load i32, ptr %i, align 4, !dbg !417, !tbaa !295
  %cmp25 = icmp sge i32 %30, 0, !dbg !418
  br i1 %cmp25, label %land.rhs27, label %land.end33, !dbg !419

land.rhs27:                                       ; preds = %while.cond24
  %31 = load ptr, ptr %set.addr, align 8, !dbg !420, !tbaa !112
  %ulongs28 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 2, !dbg !421
  %32 = load ptr, ptr %ulongs28, align 8, !dbg !421, !tbaa !134
  %33 = load i32, ptr %i, align 4, !dbg !422, !tbaa !295
  %idxprom29 = sext i32 %33 to i64, !dbg !420
  %arrayidx30 = getelementptr inbounds i64, ptr %32, i64 %idxprom29, !dbg !420
  %34 = load i64, ptr %arrayidx30, align 8, !dbg !420, !tbaa !146
  %cmp31 = icmp eq i64 %34, 0, !dbg !423
  br label %land.end33

land.end33:                                       ; preds = %land.rhs27, %while.cond24
  %35 = phi i1 [ false, %while.cond24 ], [ %cmp31, %land.rhs27 ], !dbg !424
  br i1 %35, label %while.body34, label %while.end36, !dbg !415

while.body34:                                     ; preds = %land.end33
  %36 = load i32, ptr %i, align 4, !dbg !425, !tbaa !295
  %dec35 = add nsw i32 %36, -1, !dbg !425
  store i32 %dec35, ptr %i, align 4, !dbg !425, !tbaa !295
  br label %while.cond24, !dbg !415, !llvm.loop !426

while.end36:                                      ; preds = %land.end33
  br label %if.end37

if.end37:                                         ; preds = %while.end36, %while.end
  br label %while.cond38, !dbg !427

while.cond38:                                     ; preds = %if.end91, %if.end37
  %37 = load i32, ptr %i, align 4, !dbg !428, !tbaa !295
  %cmp39 = icmp sge i32 %37, 0, !dbg !429
  br i1 %cmp39, label %lor.end, label %lor.rhs, !dbg !430

lor.rhs:                                          ; preds = %while.cond38
  %38 = load i32, ptr %accumed, align 4, !dbg !431, !tbaa !295
  %tobool41 = icmp ne i32 %38, 0, !dbg !430
  br label %lor.end, !dbg !430

lor.end:                                          ; preds = %lor.rhs, %while.cond38
  %39 = phi i1 [ true, %while.cond38 ], [ %tobool41, %lor.rhs ]
  br i1 %39, label %while.body42, label %while.end96, !dbg !427

while.body42:                                     ; preds = %lor.end
  %40 = load i32, ptr %accumed, align 4, !dbg !432, !tbaa !295
  %tobool43 = icmp ne i32 %40, 0, !dbg !432
  br i1 %tobool43, label %if.end49, label %if.then44, !dbg !435

if.then44:                                        ; preds = %while.body42
  %41 = load ptr, ptr %set.addr, align 8, !dbg !436, !tbaa !112
  %ulongs45 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %41, i32 0, i32 2, !dbg !438
  %42 = load ptr, ptr %ulongs45, align 8, !dbg !438, !tbaa !134
  %43 = load i32, ptr %i, align 4, !dbg !439, !tbaa !295
  %dec46 = add nsw i32 %43, -1, !dbg !439
  store i32 %dec46, ptr %i, align 4, !dbg !439, !tbaa !295
  %idxprom47 = sext i32 %43 to i64, !dbg !436
  %arrayidx48 = getelementptr inbounds i64, ptr %42, i64 %idxprom47, !dbg !436
  %44 = load i64, ptr %arrayidx48, align 8, !dbg !436, !tbaa !146
  store i64 %44, ptr %accum, align 8, !dbg !440, !tbaa !146
  store i32 64, ptr %accumed, align 4, !dbg !441, !tbaa !295
  br label %if.end49, !dbg !442

if.end49:                                         ; preds = %if.then44, %while.body42
  %45 = load i64, ptr %accum, align 8, !dbg !443, !tbaa !146
  %and = and i64 %45, -4294967296, !dbg !445
  %tobool50 = icmp ne i64 %and, 0, !dbg !445
  br i1 %tobool50, label %if.then51, label %if.else56, !dbg !446

if.then51:                                        ; preds = %if.end49
  %46 = load ptr, ptr %tmp, align 8, !dbg !447, !tbaa !112
  %47 = load i64, ptr %size, align 8, !dbg !449, !tbaa !146
  %48 = load i32, ptr %needcomma, align 4, !dbg !450, !tbaa !295
  %tobool52 = icmp ne i32 %48, 0, !dbg !450
  %49 = zext i1 %tobool52 to i64, !dbg !450
  %cond53 = select i1 %tobool52, ptr @.str.1, ptr @.str.2, !dbg !450
  %50 = load i64, ptr %accum, align 8, !dbg !451, !tbaa !146
  %and54 = and i64 %50, -4294967296, !dbg !452
  %shr = lshr i64 %and54, 32, !dbg !453
  %call55 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %46, i64 noundef %47, ptr noundef %cond53, i64 noundef %shr), !dbg !454
  store i32 %call55, ptr %res, align 4, !dbg !455, !tbaa !295
  store i32 1, ptr %needcomma, align 4, !dbg !456, !tbaa !295
  br label %if.end72, !dbg !457

if.else56:                                        ; preds = %if.end49
  %51 = load i32, ptr %i, align 4, !dbg !458, !tbaa !295
  %cmp57 = icmp eq i32 %51, -1, !dbg !460
  br i1 %cmp57, label %land.lhs.true, label %if.else65, !dbg !461

land.lhs.true:                                    ; preds = %if.else56
  %52 = load i32, ptr %accumed, align 4, !dbg !462, !tbaa !295
  %cmp59 = icmp eq i32 %52, 32, !dbg !463
  br i1 %cmp59, label %if.then61, label %if.else65, !dbg !464

if.then61:                                        ; preds = %land.lhs.true
  %53 = load ptr, ptr %tmp, align 8, !dbg !465, !tbaa !112
  %54 = load i64, ptr %size, align 8, !dbg !467, !tbaa !146
  %55 = load i32, ptr %needcomma, align 4, !dbg !468, !tbaa !295
  %tobool62 = icmp ne i32 %55, 0, !dbg !468
  %56 = zext i1 %tobool62 to i64, !dbg !468
  %cond63 = select i1 %tobool62, ptr @.str.3, ptr @.str.4, !dbg !468
  %call64 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %53, i64 noundef %54, ptr noundef %cond63), !dbg !469
  store i32 %call64, ptr %res, align 4, !dbg !470, !tbaa !295
  br label %if.end71, !dbg !471

if.else65:                                        ; preds = %land.lhs.true, %if.else56
  %57 = load i32, ptr %needcomma, align 4, !dbg !472, !tbaa !295
  %tobool66 = icmp ne i32 %57, 0, !dbg !472
  br i1 %tobool66, label %if.then67, label %if.else69, !dbg !474

if.then67:                                        ; preds = %if.else65
  %58 = load ptr, ptr %tmp, align 8, !dbg !475, !tbaa !112
  %59 = load i64, ptr %size, align 8, !dbg !477, !tbaa !146
  %call68 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %58, i64 noundef %59, ptr noundef @.str.5), !dbg !478
  store i32 %call68, ptr %res, align 4, !dbg !479, !tbaa !295
  br label %if.end70, !dbg !480

if.else69:                                        ; preds = %if.else65
  store i32 0, ptr %res, align 4, !dbg !481, !tbaa !295
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then67
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then61
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then51
  %60 = load i32, ptr %res, align 4, !dbg !483, !tbaa !295
  %cmp73 = icmp slt i32 %60, 0, !dbg !485
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !486

if.then75:                                        ; preds = %if.end72
  store i32 -1, ptr %retval, align 4, !dbg !487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !487

if.end76:                                         ; preds = %if.end72
  %61 = load i32, ptr %res, align 4, !dbg !488, !tbaa !295
  %62 = load i32, ptr %ret, align 4, !dbg !489, !tbaa !295
  %add77 = add nsw i32 %62, %61, !dbg !489
  store i32 %add77, ptr %ret, align 4, !dbg !489, !tbaa !295
  %63 = load i64, ptr %accum, align 8, !dbg !490, !tbaa !146
  %shl = shl i64 %63, 32, !dbg !490
  store i64 %shl, ptr %accum, align 8, !dbg !490, !tbaa !146
  %64 = load i32, ptr %accumed, align 4, !dbg !491, !tbaa !295
  %sub78 = sub nsw i32 %64, 32, !dbg !491
  store i32 %sub78, ptr %accumed, align 4, !dbg !491, !tbaa !295
  %65 = load i32, ptr %res, align 4, !dbg !492, !tbaa !295
  %conv79 = sext i32 %65 to i64, !dbg !492
  %66 = load i64, ptr %size, align 8, !dbg !494, !tbaa !146
  %cmp80 = icmp sge i64 %conv79, %66, !dbg !495
  br i1 %cmp80, label %if.then82, label %if.end91, !dbg !496

if.then82:                                        ; preds = %if.end76
  %67 = load i64, ptr %size, align 8, !dbg !497, !tbaa !146
  %cmp83 = icmp sgt i64 %67, 0, !dbg !498
  br i1 %cmp83, label %cond.true85, label %cond.false88, !dbg !497

cond.true85:                                      ; preds = %if.then82
  %68 = load i64, ptr %size, align 8, !dbg !499, !tbaa !146
  %conv86 = trunc i64 %68 to i32, !dbg !500
  %sub87 = sub nsw i32 %conv86, 1, !dbg !501
  br label %cond.end89, !dbg !497

cond.false88:                                     ; preds = %if.then82
  br label %cond.end89, !dbg !497

cond.end89:                                       ; preds = %cond.false88, %cond.true85
  %cond90 = phi i32 [ %sub87, %cond.true85 ], [ 0, %cond.false88 ], !dbg !497
  store i32 %cond90, ptr %res, align 4, !dbg !502, !tbaa !295
  br label %if.end91, !dbg !503

if.end91:                                         ; preds = %cond.end89, %if.end76
  %69 = load i32, ptr %res, align 4, !dbg !504, !tbaa !295
  %70 = load ptr, ptr %tmp, align 8, !dbg !505, !tbaa !112
  %idx.ext92 = sext i32 %69 to i64, !dbg !505
  %add.ptr93 = getelementptr inbounds i8, ptr %70, i64 %idx.ext92, !dbg !505
  store ptr %add.ptr93, ptr %tmp, align 8, !dbg !505, !tbaa !112
  %71 = load i32, ptr %res, align 4, !dbg !506, !tbaa !295
  %conv94 = sext i32 %71 to i64, !dbg !506
  %72 = load i64, ptr %size, align 8, !dbg !507, !tbaa !146
  %sub95 = sub nsw i64 %72, %conv94, !dbg !507
  store i64 %sub95, ptr %size, align 8, !dbg !507, !tbaa !146
  br label %while.cond38, !dbg !427, !llvm.loop !508

while.end96:                                      ; preds = %lor.end
  %73 = load i32, ptr %ret, align 4, !dbg !510, !tbaa !295
  %tobool97 = icmp ne i32 %73, 0, !dbg !510
  br i1 %tobool97, label %if.end105, label %if.then98, !dbg !512

if.then98:                                        ; preds = %while.end96
  %74 = load ptr, ptr %tmp, align 8, !dbg !513, !tbaa !112
  %75 = load i64, ptr %size, align 8, !dbg !515, !tbaa !146
  %call99 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %74, i64 noundef %75, ptr noundef @.str.4), !dbg !516
  store i32 %call99, ptr %res, align 4, !dbg !517, !tbaa !295
  %76 = load i32, ptr %res, align 4, !dbg !518, !tbaa !295
  %cmp100 = icmp slt i32 %76, 0, !dbg !520
  br i1 %cmp100, label %if.then102, label %if.end103, !dbg !521

if.then102:                                       ; preds = %if.then98
  store i32 -1, ptr %retval, align 4, !dbg !522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !522

if.end103:                                        ; preds = %if.then98
  %77 = load i32, ptr %res, align 4, !dbg !523, !tbaa !295
  %78 = load i32, ptr %ret, align 4, !dbg !524, !tbaa !295
  %add104 = add nsw i32 %78, %77, !dbg !524
  store i32 %add104, ptr %ret, align 4, !dbg !524, !tbaa !295
  br label %if.end105, !dbg !525

if.end105:                                        ; preds = %if.end103, %while.end96
  %79 = load i32, ptr %ret, align 4, !dbg !526, !tbaa !295
  store i32 %79, ptr %retval, align 4, !dbg !527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !527

cleanup:                                          ; preds = %if.end105, %if.then102, %if.then75, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %accum_mask) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 4, ptr %accumed) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %accum) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 4, ptr %needcomma) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !528
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !528
  %80 = load i32, ptr %retval, align 4, !dbg !528
  ret i32 %80, !dbg !528
}

declare !dbg !529 i32 @hwloc_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_asprintf(ptr noundef %strp, ptr noalias noundef %set) #0 !dbg !533 {
entry:
  %retval = alloca i32, align 4
  %strp.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strp, ptr %strp.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %strp.addr, metadata !538, metadata !DIExpression()), !dbg !542
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !539, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !544
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !540, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #12, !dbg !546
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !541, metadata !DIExpression()), !dbg !547
  %0 = load ptr, ptr %set.addr, align 8, !dbg !548, !tbaa !112
  %call = call i32 @hwloc_bitmap_snprintf(ptr noundef null, i64 noundef 0, ptr noundef %0), !dbg !549
  store i32 %call, ptr %len, align 4, !dbg !550, !tbaa !295
  %1 = load i32, ptr %len, align 4, !dbg !551, !tbaa !295
  %add = add nsw i32 %1, 1, !dbg !552
  %conv = sext i32 %add to i64, !dbg !551
  %call1 = call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !553
  store ptr %call1, ptr %buf, align 8, !dbg !554, !tbaa !112
  %2 = load ptr, ptr %buf, align 8, !dbg !555, !tbaa !112
  %tobool = icmp ne ptr %2, null, !dbg !555
  br i1 %tobool, label %if.end, label %if.then, !dbg !557

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !558

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf, align 8, !dbg !559, !tbaa !112
  %4 = load ptr, ptr %strp.addr, align 8, !dbg !560, !tbaa !112
  store ptr %3, ptr %4, align 8, !dbg !561, !tbaa !112
  %5 = load ptr, ptr %buf, align 8, !dbg !562, !tbaa !112
  %6 = load i32, ptr %len, align 4, !dbg !563, !tbaa !295
  %add2 = add nsw i32 %6, 1, !dbg !564
  %conv3 = sext i32 %add2 to i64, !dbg !563
  %7 = load ptr, ptr %set.addr, align 8, !dbg !565, !tbaa !112
  %call4 = call i32 @hwloc_bitmap_snprintf(ptr noundef %5, i64 noundef %conv3, ptr noundef %7), !dbg !566
  store i32 %call4, ptr %retval, align 4, !dbg !567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !567

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #12, !dbg !568
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !568
  %8 = load i32, ptr %retval, align 4, !dbg !568
  ret i32 %8, !dbg !568
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_sscanf(ptr noundef %set, ptr noalias noundef %string) #0 !dbg !569 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %current = alloca ptr, align 8
  %accum = alloca i64, align 8
  %count = alloca i32, align 4
  %infinite = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %val = alloca i64, align 8
  %next = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !574, metadata !DIExpression()), !dbg !584
  store ptr %string, ptr %string.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !575, metadata !DIExpression()), !dbg !585
  call void @llvm.lifetime.start.p0(i64 8, ptr %current) #12, !dbg !586
  tail call void @llvm.dbg.declare(metadata ptr %current, metadata !576, metadata !DIExpression()), !dbg !587
  %0 = load ptr, ptr %string.addr, align 8, !dbg !588, !tbaa !112
  store ptr %0, ptr %current, align 8, !dbg !587, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 8, ptr %accum) #12, !dbg !589
  tail call void @llvm.dbg.declare(metadata ptr %accum, metadata !577, metadata !DIExpression()), !dbg !590
  store i64 0, ptr %accum, align 8, !dbg !590, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !591
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !578, metadata !DIExpression()), !dbg !592
  store i32 0, ptr %count, align 4, !dbg !592, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %infinite) #12, !dbg !593
  tail call void @llvm.dbg.declare(metadata ptr %infinite, metadata !579, metadata !DIExpression()), !dbg !594
  store i32 0, ptr %infinite, align 4, !dbg !594, !tbaa !295
  %1 = load i32, ptr %count, align 4, !dbg !595, !tbaa !295
  %inc = add nsw i32 %1, 1, !dbg !595
  store i32 %inc, ptr %count, align 4, !dbg !595, !tbaa !295
  br label %while.cond, !dbg !596

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %current, align 8, !dbg !597, !tbaa !112
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1, !dbg !598
  %call = call ptr @strchr(ptr noundef %add.ptr, i32 noundef 44) #14, !dbg !599
  store ptr %call, ptr %current, align 8, !dbg !600, !tbaa !112
  %cmp = icmp ne ptr %call, null, !dbg !601
  br i1 %cmp, label %while.body, label %while.end, !dbg !596

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %count, align 4, !dbg !602, !tbaa !295
  %inc1 = add nsw i32 %3, 1, !dbg !602
  store i32 %inc1, ptr %count, align 4, !dbg !602, !tbaa !295
  br label %while.cond, !dbg !596, !llvm.loop !603

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %string.addr, align 8, !dbg !604, !tbaa !112
  store ptr %4, ptr %current, align 8, !dbg !605, !tbaa !112
  %5 = load ptr, ptr %current, align 8, !dbg !606, !tbaa !112
  %call2 = call i32 @strncmp(ptr noundef @.str, ptr noundef %5, i64 noundef 7) #14, !dbg !608
  %tobool = icmp ne i32 %call2, 0, !dbg !608
  br i1 %tobool, label %if.end7, label %if.then, !dbg !609

if.then:                                          ; preds = %while.end
  %6 = load ptr, ptr %current, align 8, !dbg !610, !tbaa !112
  %add.ptr3 = getelementptr inbounds i8, ptr %6, i64 7, !dbg !610
  store ptr %add.ptr3, ptr %current, align 8, !dbg !610, !tbaa !112
  %7 = load ptr, ptr %current, align 8, !dbg !612, !tbaa !112
  %8 = load i8, ptr %7, align 1, !dbg !614, !tbaa !358
  %conv = sext i8 %8 to i32, !dbg !614
  %cmp4 = icmp ne i32 %conv, 44, !dbg !615
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !616

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %set.addr, align 8, !dbg !617, !tbaa !112
  call void @hwloc_bitmap_fill(ptr noundef %9), !dbg !619
  store i32 0, ptr %retval, align 4, !dbg !620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !620

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %current, align 8, !dbg !621, !tbaa !112
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1, !dbg !621
  store ptr %incdec.ptr, ptr %current, align 8, !dbg !621, !tbaa !112
  store i32 1, ptr %infinite, align 4, !dbg !622, !tbaa !295
  %11 = load i32, ptr %count, align 4, !dbg !623, !tbaa !295
  %dec = add nsw i32 %11, -1, !dbg !623
  store i32 %dec, ptr %count, align 4, !dbg !623, !tbaa !295
  br label %if.end7, !dbg !624

if.end7:                                          ; preds = %if.end, %while.end
  %12 = load ptr, ptr %set.addr, align 8, !dbg !625, !tbaa !112
  %13 = load i32, ptr %count, align 4, !dbg !626, !tbaa !295
  %add = add nsw i32 %13, 2, !dbg !627
  %sub = sub nsw i32 %add, 1, !dbg !628
  %div = sdiv i32 %sub, 2, !dbg !629
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %12, i32 noundef %div), !dbg !630
  %14 = load ptr, ptr %set.addr, align 8, !dbg !631, !tbaa !112
  %infinite8 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %14, i32 0, i32 3, !dbg !632
  store i32 0, ptr %infinite8, align 8, !dbg !633, !tbaa !151
  br label %while.cond9, !dbg !634

while.cond9:                                      ; preds = %cleanup.cont, %if.end7
  %15 = load ptr, ptr %current, align 8, !dbg !635, !tbaa !112
  %16 = load i8, ptr %15, align 1, !dbg !636, !tbaa !358
  %conv10 = sext i8 %16 to i32, !dbg !636
  %cmp11 = icmp ne i32 %conv10, 0, !dbg !637
  br i1 %cmp11, label %while.body13, label %while.end38, !dbg !634

while.body13:                                     ; preds = %while.cond9
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !638
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !580, metadata !DIExpression()), !dbg !639
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !640
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !582, metadata !DIExpression()), !dbg !641
  %17 = load ptr, ptr %current, align 8, !dbg !642, !tbaa !112
  %call14 = call i64 @strtoul(ptr noundef %17, ptr noundef %next, i32 noundef 16) #12, !dbg !643
  store i64 %call14, ptr %val, align 8, !dbg !644, !tbaa !146
  %18 = load i32, ptr %count, align 4, !dbg !645, !tbaa !295
  %cmp15 = icmp sgt i32 %18, 0, !dbg !645
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !648

if.then17:                                        ; preds = %while.body13
  br label %if.end18, !dbg !648

if.else:                                          ; preds = %while.body13
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 359, ptr noundef @__PRETTY_FUNCTION__.hwloc_bitmap_sscanf) #15, !dbg !645
  unreachable, !dbg !645

if.end18:                                         ; preds = %if.then17
  %19 = load i32, ptr %count, align 4, !dbg !649, !tbaa !295
  %dec19 = add nsw i32 %19, -1, !dbg !649
  store i32 %dec19, ptr %count, align 4, !dbg !649, !tbaa !295
  %20 = load i64, ptr %val, align 8, !dbg !650, !tbaa !146
  %21 = load i32, ptr %count, align 4, !dbg !651, !tbaa !295
  %mul = mul nsw i32 %21, 32, !dbg !652
  %rem = srem i32 %mul, 64, !dbg !653
  %sh_prom = zext i32 %rem to i64, !dbg !654
  %shl = shl i64 %20, %sh_prom, !dbg !654
  %22 = load i64, ptr %accum, align 8, !dbg !655, !tbaa !146
  %or = or i64 %22, %shl, !dbg !655
  store i64 %or, ptr %accum, align 8, !dbg !655, !tbaa !146
  %23 = load i32, ptr %count, align 4, !dbg !656, !tbaa !295
  %rem20 = srem i32 %23, 2, !dbg !658
  %tobool21 = icmp ne i32 %rem20, 0, !dbg !658
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !659

if.then22:                                        ; preds = %if.end18
  %24 = load i64, ptr %accum, align 8, !dbg !660, !tbaa !146
  %25 = load ptr, ptr %set.addr, align 8, !dbg !662, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %25, i32 0, i32 2, !dbg !663
  %26 = load ptr, ptr %ulongs, align 8, !dbg !663, !tbaa !134
  %27 = load i32, ptr %count, align 4, !dbg !664, !tbaa !295
  %div23 = sdiv i32 %27, 2, !dbg !665
  %idxprom = sext i32 %div23 to i64, !dbg !662
  %arrayidx = getelementptr inbounds i64, ptr %26, i64 %idxprom, !dbg !662
  store i64 %24, ptr %arrayidx, align 8, !dbg !666, !tbaa !146
  store i64 0, ptr %accum, align 8, !dbg !667, !tbaa !146
  br label %if.end24, !dbg !668

if.end24:                                         ; preds = %if.then22, %if.end18
  %28 = load ptr, ptr %next, align 8, !dbg !669, !tbaa !112
  %29 = load i8, ptr %28, align 1, !dbg !671, !tbaa !358
  %conv25 = sext i8 %29 to i32, !dbg !671
  %cmp26 = icmp ne i32 %conv25, 44, !dbg !672
  br i1 %cmp26, label %if.then28, label %if.end35, !dbg !673

if.then28:                                        ; preds = %if.end24
  %30 = load ptr, ptr %next, align 8, !dbg !674, !tbaa !112
  %31 = load i8, ptr %30, align 1, !dbg !677, !tbaa !358
  %conv29 = sext i8 %31 to i32, !dbg !677
  %tobool30 = icmp ne i32 %conv29, 0, !dbg !677
  br i1 %tobool30, label %if.then33, label %lor.lhs.false, !dbg !678

lor.lhs.false:                                    ; preds = %if.then28
  %32 = load i32, ptr %count, align 4, !dbg !679, !tbaa !295
  %cmp31 = icmp sgt i32 %32, 0, !dbg !680
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !681

if.then33:                                        ; preds = %lor.lhs.false, %if.then28
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !682

if.else34:                                        ; preds = %lor.lhs.false
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !683

if.end35:                                         ; preds = %if.end24
  %33 = load ptr, ptr %next, align 8, !dbg !684, !tbaa !112
  %add.ptr36 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !685
  store ptr %add.ptr36, ptr %current, align 8, !dbg !686, !tbaa !112
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !687
  br label %cleanup, !dbg !687

cleanup:                                          ; preds = %if.then33, %if.end35, %if.else34
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !687
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !687
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup40 [
    i32 0, label %cleanup.cont
    i32 5, label %while.end38
    i32 6, label %failed
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond9, !dbg !634, !llvm.loop !688

while.end38:                                      ; preds = %cleanup, %while.cond9
  %34 = load i32, ptr %infinite, align 4, !dbg !689, !tbaa !295
  %35 = load ptr, ptr %set.addr, align 8, !dbg !690, !tbaa !112
  %infinite39 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %35, i32 0, i32 3, !dbg !691
  store i32 %34, ptr %infinite39, align 8, !dbg !692, !tbaa !151
  store i32 0, ptr %retval, align 4, !dbg !693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !693

failed:                                           ; preds = %cleanup
  tail call void @llvm.dbg.label(metadata !583), !dbg !694
  %36 = load ptr, ptr %set.addr, align 8, !dbg !695, !tbaa !112
  call void @hwloc_bitmap_zero(ptr noundef %36), !dbg !696
  store i32 -1, ptr %retval, align 4, !dbg !697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !697

cleanup40:                                        ; preds = %failed, %while.end38, %cleanup, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %infinite) #12, !dbg !698
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !698
  call void @llvm.lifetime.end.p0(i64 8, ptr %accum) #12, !dbg !698
  call void @llvm.lifetime.end.p0(i64 8, ptr %current) #12, !dbg !698
  %37 = load i32, ptr %retval, align 4, !dbg !698
  ret i32 %37, !dbg !698
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !699 ptr @strchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !703 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_fill(ptr noundef %set) #0 !dbg !706 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !708, metadata !DIExpression()), !dbg !709
  %0 = load ptr, ptr %set.addr, align 8, !dbg !710, !tbaa !112
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %0, i32 noundef 1), !dbg !711
  %1 = load ptr, ptr %set.addr, align 8, !dbg !712, !tbaa !112
  call void @hwloc_bitmap__fill(ptr noundef %1), !dbg !713
  ret void, !dbg !714
}

; Function Attrs: nounwind
declare !dbg !715 i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noreturn nounwind
declare !dbg !719 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_zero(ptr noundef %set) #0 !dbg !723 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !725, metadata !DIExpression()), !dbg !726
  %0 = load ptr, ptr %set.addr, align 8, !dbg !727, !tbaa !112
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %0, i32 noundef 1), !dbg !728
  %1 = load ptr, ptr %set.addr, align 8, !dbg !729, !tbaa !112
  call void @hwloc_bitmap__zero(ptr noundef %1), !dbg !730
  ret void, !dbg !731
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_list_snprintf(ptr noalias noundef %buf, i64 noundef %buflen, ptr noalias noundef %set) #0 !dbg !732 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %prev = alloca i32, align 4
  %reverse = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %needcomma = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !734, metadata !DIExpression()), !dbg !747
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !735, metadata !DIExpression()), !dbg !748
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !736, metadata !DIExpression()), !dbg !749
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev) #12, !dbg !750
  tail call void @llvm.dbg.declare(metadata ptr %prev, metadata !737, metadata !DIExpression()), !dbg !751
  store i32 -1, ptr %prev, align 4, !dbg !751, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %reverse) #12, !dbg !752
  tail call void @llvm.dbg.declare(metadata ptr %reverse, metadata !738, metadata !DIExpression()), !dbg !753
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !754
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !739, metadata !DIExpression()), !dbg !755
  %0 = load i64, ptr %buflen.addr, align 8, !dbg !756, !tbaa !146
  store i64 %0, ptr %size, align 8, !dbg !755, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !757
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !740, metadata !DIExpression()), !dbg !758
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !759, !tbaa !112
  store ptr %1, ptr %tmp, align 8, !dbg !758, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #12, !dbg !760
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !741, metadata !DIExpression()), !dbg !761
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !760
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !742, metadata !DIExpression()), !dbg !762
  store i32 0, ptr %ret, align 4, !dbg !762, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %needcomma) #12, !dbg !763
  tail call void @llvm.dbg.declare(metadata ptr %needcomma, metadata !743, metadata !DIExpression()), !dbg !764
  store i32 0, ptr %needcomma, align 4, !dbg !764, !tbaa !295
  %call = call noalias ptr @hwloc_bitmap_alloc(), !dbg !765
  store ptr %call, ptr %reverse, align 8, !dbg !766, !tbaa !112
  %2 = load ptr, ptr %reverse, align 8, !dbg !767, !tbaa !112
  %3 = load ptr, ptr %set.addr, align 8, !dbg !768, !tbaa !112
  call void @hwloc_bitmap_not(ptr noundef %2, ptr noundef %3), !dbg !769
  %4 = load i64, ptr %buflen.addr, align 8, !dbg !770, !tbaa !146
  %cmp = icmp ugt i64 %4, 0, !dbg !772
  br i1 %cmp, label %if.then, label %if.end, !dbg !773

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %tmp, align 8, !dbg !774, !tbaa !112
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !774
  store i8 0, ptr %arrayidx, align 1, !dbg !775, !tbaa !358
  br label %if.end, !dbg !774

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !776

while.cond:                                       ; preds = %cleanup.cont, %if.end
  br label %while.body, !dbg !776

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %begin) #12, !dbg !777
  tail call void @llvm.dbg.declare(metadata ptr %begin, metadata !744, metadata !DIExpression()), !dbg !778
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #12, !dbg !777
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !746, metadata !DIExpression()), !dbg !779
  %6 = load ptr, ptr %set.addr, align 8, !dbg !780, !tbaa !112
  %7 = load i32, ptr %prev, align 4, !dbg !781, !tbaa !295
  %call1 = call i32 @hwloc_bitmap_next(ptr noundef %6, i32 noundef %7) #14, !dbg !782
  store i32 %call1, ptr %begin, align 4, !dbg !783, !tbaa !295
  %8 = load i32, ptr %begin, align 4, !dbg !784, !tbaa !295
  %cmp2 = icmp eq i32 %8, -1, !dbg !786
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !787

if.then3:                                         ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !788

if.end4:                                          ; preds = %while.body
  %9 = load ptr, ptr %reverse, align 8, !dbg !789, !tbaa !112
  %10 = load i32, ptr %begin, align 4, !dbg !790, !tbaa !295
  %call5 = call i32 @hwloc_bitmap_next(ptr noundef %9, i32 noundef %10) #14, !dbg !791
  store i32 %call5, ptr %end, align 4, !dbg !792, !tbaa !295
  %11 = load i32, ptr %end, align 4, !dbg !793, !tbaa !295
  %12 = load i32, ptr %begin, align 4, !dbg !795, !tbaa !295
  %add = add nsw i32 %12, 1, !dbg !796
  %cmp6 = icmp eq i32 %11, %add, !dbg !797
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !798

if.then7:                                         ; preds = %if.end4
  %13 = load ptr, ptr %tmp, align 8, !dbg !799, !tbaa !112
  %14 = load i64, ptr %size, align 8, !dbg !801, !tbaa !146
  %15 = load i32, ptr %needcomma, align 4, !dbg !802, !tbaa !295
  %tobool = icmp ne i32 %15, 0, !dbg !802
  %16 = zext i1 %tobool to i64, !dbg !802
  %cond = select i1 %tobool, ptr @.str.8, ptr @.str.9, !dbg !802
  %17 = load i32, ptr %begin, align 4, !dbg !803, !tbaa !295
  %call8 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %13, i64 noundef %14, ptr noundef %cond, i32 noundef %17), !dbg !804
  store i32 %call8, ptr %res, align 4, !dbg !805, !tbaa !295
  br label %if.end19, !dbg !806

if.else:                                          ; preds = %if.end4
  %18 = load i32, ptr %end, align 4, !dbg !807, !tbaa !295
  %cmp9 = icmp eq i32 %18, -1, !dbg !809
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !810

if.then10:                                        ; preds = %if.else
  %19 = load ptr, ptr %tmp, align 8, !dbg !811, !tbaa !112
  %20 = load i64, ptr %size, align 8, !dbg !813, !tbaa !146
  %21 = load i32, ptr %needcomma, align 4, !dbg !814, !tbaa !295
  %tobool11 = icmp ne i32 %21, 0, !dbg !814
  %22 = zext i1 %tobool11 to i64, !dbg !814
  %cond12 = select i1 %tobool11, ptr @.str.10, ptr @.str.11, !dbg !814
  %23 = load i32, ptr %begin, align 4, !dbg !815, !tbaa !295
  %call13 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %19, i64 noundef %20, ptr noundef %cond12, i32 noundef %23), !dbg !816
  store i32 %call13, ptr %res, align 4, !dbg !817, !tbaa !295
  br label %if.end18, !dbg !818

if.else14:                                        ; preds = %if.else
  %24 = load ptr, ptr %tmp, align 8, !dbg !819, !tbaa !112
  %25 = load i64, ptr %size, align 8, !dbg !821, !tbaa !146
  %26 = load i32, ptr %needcomma, align 4, !dbg !822, !tbaa !295
  %tobool15 = icmp ne i32 %26, 0, !dbg !822
  %27 = zext i1 %tobool15 to i64, !dbg !822
  %cond16 = select i1 %tobool15, ptr @.str.12, ptr @.str.13, !dbg !822
  %28 = load i32, ptr %begin, align 4, !dbg !823, !tbaa !295
  %29 = load i32, ptr %end, align 4, !dbg !824, !tbaa !295
  %sub = sub nsw i32 %29, 1, !dbg !825
  %call17 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %24, i64 noundef %25, ptr noundef %cond16, i32 noundef %28, i32 noundef %sub), !dbg !826
  store i32 %call17, ptr %res, align 4, !dbg !827, !tbaa !295
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then10
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then7
  %30 = load i32, ptr %res, align 4, !dbg !828, !tbaa !295
  %cmp20 = icmp slt i32 %30, 0, !dbg !830
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !831

if.then21:                                        ; preds = %if.end19
  %31 = load ptr, ptr %reverse, align 8, !dbg !832, !tbaa !112
  call void @hwloc_bitmap_free(ptr noundef %31), !dbg !834
  store i32 -1, ptr %retval, align 4, !dbg !835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !835

if.end22:                                         ; preds = %if.end19
  %32 = load i32, ptr %res, align 4, !dbg !836, !tbaa !295
  %33 = load i32, ptr %ret, align 4, !dbg !837, !tbaa !295
  %add23 = add nsw i32 %33, %32, !dbg !837
  store i32 %add23, ptr %ret, align 4, !dbg !837, !tbaa !295
  %34 = load i32, ptr %res, align 4, !dbg !838, !tbaa !295
  %conv = sext i32 %34 to i64, !dbg !838
  %35 = load i64, ptr %size, align 8, !dbg !840, !tbaa !146
  %cmp24 = icmp sge i64 %conv, %35, !dbg !841
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !842

if.then26:                                        ; preds = %if.end22
  %36 = load i64, ptr %size, align 8, !dbg !843, !tbaa !146
  %cmp27 = icmp sgt i64 %36, 0, !dbg !844
  br i1 %cmp27, label %cond.true, label %cond.false, !dbg !843

cond.true:                                        ; preds = %if.then26
  %37 = load i64, ptr %size, align 8, !dbg !845, !tbaa !146
  %conv29 = trunc i64 %37 to i32, !dbg !846
  %sub30 = sub nsw i32 %conv29, 1, !dbg !847
  br label %cond.end, !dbg !843

cond.false:                                       ; preds = %if.then26
  br label %cond.end, !dbg !843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond31 = phi i32 [ %sub30, %cond.true ], [ 0, %cond.false ], !dbg !843
  store i32 %cond31, ptr %res, align 4, !dbg !848, !tbaa !295
  br label %if.end32, !dbg !849

if.end32:                                         ; preds = %cond.end, %if.end22
  %38 = load i32, ptr %res, align 4, !dbg !850, !tbaa !295
  %39 = load ptr, ptr %tmp, align 8, !dbg !851, !tbaa !112
  %idx.ext = sext i32 %38 to i64, !dbg !851
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 %idx.ext, !dbg !851
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !851, !tbaa !112
  %40 = load i32, ptr %res, align 4, !dbg !852, !tbaa !295
  %conv33 = sext i32 %40 to i64, !dbg !852
  %41 = load i64, ptr %size, align 8, !dbg !853, !tbaa !146
  %sub34 = sub nsw i64 %41, %conv33, !dbg !853
  store i64 %sub34, ptr %size, align 8, !dbg !853, !tbaa !146
  store i32 1, ptr %needcomma, align 4, !dbg !854, !tbaa !295
  %42 = load i32, ptr %end, align 4, !dbg !855, !tbaa !295
  %cmp35 = icmp eq i32 %42, -1, !dbg !857
  br i1 %cmp35, label %if.then37, label %if.else38, !dbg !858

if.then37:                                        ; preds = %if.end32
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

if.else38:                                        ; preds = %if.end32
  %43 = load i32, ptr %end, align 4, !dbg !860, !tbaa !295
  %sub39 = sub nsw i32 %43, 1, !dbg !861
  store i32 %sub39, ptr %prev, align 4, !dbg !862, !tbaa !295
  br label %if.end40

if.end40:                                         ; preds = %if.else38
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !863
  br label %cleanup, !dbg !863

cleanup:                                          ; preds = %if.end40, %if.then37, %if.then21, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #12, !dbg !863
  call void @llvm.lifetime.end.p0(i64 4, ptr %begin) #12, !dbg !863
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup42 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !776, !llvm.loop !864

while.end:                                        ; preds = %cleanup
  %44 = load ptr, ptr %reverse, align 8, !dbg !865, !tbaa !112
  call void @hwloc_bitmap_free(ptr noundef %44), !dbg !866
  %45 = load i32, ptr %ret, align 4, !dbg !867, !tbaa !295
  store i32 %45, ptr %retval, align 4, !dbg !868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !868

cleanup42:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %needcomma) #12, !dbg !869
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !869
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #12, !dbg !869
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !869
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !869
  call void @llvm.lifetime.end.p0(i64 8, ptr %reverse) #12, !dbg !869
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev) #12, !dbg !869
  %46 = load i32, ptr %retval, align 4, !dbg !869
  ret i32 %46, !dbg !869
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_not(ptr noundef %res, ptr noundef %set) #0 !dbg !870 {
entry:
  %res.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !872, metadata !DIExpression()), !dbg !876
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !873, metadata !DIExpression()), !dbg !877
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !878
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !874, metadata !DIExpression()), !dbg !879
  %0 = load ptr, ptr %set.addr, align 8, !dbg !880, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !881
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !881, !tbaa !123
  store i32 %1, ptr %count, align 4, !dbg !879, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !882
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !875, metadata !DIExpression()), !dbg !883
  %2 = load ptr, ptr %res.addr, align 8, !dbg !884, !tbaa !112
  %3 = load i32, ptr %count, align 4, !dbg !885, !tbaa !295
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %2, i32 noundef %3), !dbg !886
  store i32 0, ptr %i, align 4, !dbg !887, !tbaa !295
  br label %for.cond, !dbg !889

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !890, !tbaa !295
  %5 = load i32, ptr %count, align 4, !dbg !892, !tbaa !295
  %cmp = icmp ult i32 %4, %5, !dbg !893
  br i1 %cmp, label %for.body, label %for.end, !dbg !894

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %set.addr, align 8, !dbg !895, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %6, i32 0, i32 2, !dbg !896
  %7 = load ptr, ptr %ulongs, align 8, !dbg !896, !tbaa !134
  %8 = load i32, ptr %i, align 4, !dbg !897, !tbaa !295
  %idxprom = zext i32 %8 to i64, !dbg !895
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 %idxprom, !dbg !895
  %9 = load i64, ptr %arrayidx, align 8, !dbg !895, !tbaa !146
  %not = xor i64 %9, -1, !dbg !898
  %10 = load ptr, ptr %res.addr, align 8, !dbg !899, !tbaa !112
  %ulongs1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %10, i32 0, i32 2, !dbg !900
  %11 = load ptr, ptr %ulongs1, align 8, !dbg !900, !tbaa !134
  %12 = load i32, ptr %i, align 4, !dbg !901, !tbaa !295
  %idxprom2 = zext i32 %12 to i64, !dbg !899
  %arrayidx3 = getelementptr inbounds i64, ptr %11, i64 %idxprom2, !dbg !899
  store i64 %not, ptr %arrayidx3, align 8, !dbg !902, !tbaa !146
  br label %for.inc, !dbg !899

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !dbg !903, !tbaa !295
  %inc = add i32 %13, 1, !dbg !903
  store i32 %inc, ptr %i, align 4, !dbg !903, !tbaa !295
  br label %for.cond, !dbg !904, !llvm.loop !905

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %set.addr, align 8, !dbg !907, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %14, i32 0, i32 3, !dbg !908
  %15 = load i32, ptr %infinite, align 8, !dbg !908, !tbaa !151
  %tobool = icmp ne i32 %15, 0, !dbg !909
  %lnot = xor i1 %tobool, true, !dbg !909
  %lnot.ext = zext i1 %lnot to i32, !dbg !909
  %16 = load ptr, ptr %res.addr, align 8, !dbg !910, !tbaa !112
  %infinite4 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %16, i32 0, i32 3, !dbg !911
  store i32 %lnot.ext, ptr %infinite4, align 8, !dbg !912, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !913
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !913
  ret void, !dbg !913
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_next(ptr noundef %set, i32 noundef %prev_cpu) #8 !dbg !914 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %prev_cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %w = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !918, metadata !DIExpression()), !dbg !925
  store i32 %prev_cpu, ptr %prev_cpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %prev_cpu.addr, metadata !919, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !927
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !920, metadata !DIExpression()), !dbg !928
  %0 = load i32, ptr %prev_cpu.addr, align 4, !dbg !929, !tbaa !295
  %add = add nsw i32 %0, 1, !dbg !929
  %div = sdiv i32 %add, 64, !dbg !929
  store i32 %div, ptr %i, align 4, !dbg !928, !tbaa !295
  %1 = load i32, ptr %i, align 4, !dbg !930, !tbaa !295
  %2 = load ptr, ptr %set.addr, align 8, !dbg !932, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !933
  %3 = load i32, ptr %ulongs_count, align 8, !dbg !933, !tbaa !123
  %cmp = icmp uge i32 %1, %3, !dbg !934
  br i1 %cmp, label %if.then, label %if.end, !dbg !935

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %set.addr, align 8, !dbg !936, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 3, !dbg !939
  %5 = load i32, ptr %infinite, align 8, !dbg !939, !tbaa !151
  %tobool = icmp ne i32 %5, 0, !dbg !936
  br i1 %tobool, label %if.then1, label %if.else, !dbg !940

if.then1:                                         ; preds = %if.then
  %6 = load i32, ptr %prev_cpu.addr, align 4, !dbg !941, !tbaa !295
  %add2 = add nsw i32 %6, 1, !dbg !942
  store i32 %add2, ptr %retval, align 4, !dbg !943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !943

if.else:                                          ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !944

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !945

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !946, !tbaa !295
  %8 = load ptr, ptr %set.addr, align 8, !dbg !947, !tbaa !112
  %ulongs_count3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %8, i32 0, i32 0, !dbg !948
  %9 = load i32, ptr %ulongs_count3, align 8, !dbg !948, !tbaa !123
  %cmp4 = icmp ult i32 %7, %9, !dbg !949
  br i1 %cmp4, label %for.body, label %for.end, !dbg !950

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #12, !dbg !951
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !921, metadata !DIExpression()), !dbg !952
  %10 = load ptr, ptr %set.addr, align 8, !dbg !953, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %10, i32 0, i32 2, !dbg !954
  %11 = load ptr, ptr %ulongs, align 8, !dbg !954, !tbaa !134
  %12 = load i32, ptr %i, align 4, !dbg !955, !tbaa !295
  %idxprom = zext i32 %12 to i64, !dbg !953
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %idxprom, !dbg !953
  %13 = load i64, ptr %arrayidx, align 8, !dbg !953, !tbaa !146
  store i64 %13, ptr %w, align 8, !dbg !952, !tbaa !146
  %14 = load i32, ptr %prev_cpu.addr, align 4, !dbg !956, !tbaa !295
  %cmp5 = icmp sge i32 %14, 0, !dbg !958
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !959

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, ptr %prev_cpu.addr, align 4, !dbg !960, !tbaa !295
  %div6 = udiv i32 %15, 64, !dbg !960
  %16 = load i32, ptr %i, align 4, !dbg !961, !tbaa !295
  %cmp7 = icmp eq i32 %div6, %16, !dbg !962
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !963

if.then8:                                         ; preds = %land.lhs.true
  %17 = load i32, ptr %prev_cpu.addr, align 4, !dbg !964, !tbaa !295
  %rem = srem i32 %17, 64, !dbg !964
  %sub = sub nsw i32 63, %rem, !dbg !964
  %sh_prom = zext i32 %sub to i64, !dbg !964
  %shr = lshr i64 -1, %sh_prom, !dbg !964
  %not = xor i64 %shr, -1, !dbg !965
  %18 = load i64, ptr %w, align 8, !dbg !966, !tbaa !146
  %and = and i64 %18, %not, !dbg !966
  store i64 %and, ptr %w, align 8, !dbg !966, !tbaa !146
  br label %if.end9, !dbg !967

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %for.body
  %19 = load i64, ptr %w, align 8, !dbg !968, !tbaa !146
  %tobool10 = icmp ne i64 %19, 0, !dbg !968
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !970

if.then11:                                        ; preds = %if.end9
  %20 = load i64, ptr %w, align 8, !dbg !971, !tbaa !146
  %21 = call i64 @llvm.cttz.i64(i64 %20, i1 true), !dbg !971
  %22 = add i64 %21, 1, !dbg !971
  %iszero = icmp eq i64 %20, 0, !dbg !971
  %ffs = select i1 %iszero, i64 0, i64 %22, !dbg !971
  %cast = trunc i64 %ffs to i32, !dbg !971
  %sub12 = sub nsw i32 %cast, 1, !dbg !972
  %23 = load i32, ptr %i, align 4, !dbg !973, !tbaa !295
  %mul = mul i32 64, %23, !dbg !974
  %add13 = add i32 %sub12, %mul, !dbg !975
  store i32 %add13, ptr %retval, align 4, !dbg !976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

if.end14:                                         ; preds = %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !977
  br label %cleanup, !dbg !977

cleanup:                                          ; preds = %if.end14, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #12, !dbg !977
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !978

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i32, ptr %i, align 4, !dbg !979, !tbaa !295
  %inc = add i32 %24, 1, !dbg !979
  store i32 %inc, ptr %i, align 4, !dbg !979, !tbaa !295
  br label %for.cond, !dbg !980, !llvm.loop !981

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %set.addr, align 8, !dbg !983, !tbaa !112
  %infinite15 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %25, i32 0, i32 3, !dbg !985
  %26 = load i32, ptr %infinite15, align 8, !dbg !985, !tbaa !151
  %tobool16 = icmp ne i32 %26, 0, !dbg !983
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !986

if.then17:                                        ; preds = %for.end
  %27 = load ptr, ptr %set.addr, align 8, !dbg !987, !tbaa !112
  %ulongs_count18 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %27, i32 0, i32 0, !dbg !988
  %28 = load i32, ptr %ulongs_count18, align 8, !dbg !988, !tbaa !123
  %mul19 = mul i32 %28, 64, !dbg !989
  store i32 %mul19, ptr %retval, align 4, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !990

if.end20:                                         ; preds = %for.end
  store i32 -1, ptr %retval, align 4, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !991

cleanup21:                                        ; preds = %if.end20, %if.then17, %cleanup, %if.else, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !992
  %29 = load i32, ptr %retval, align 4, !dbg !992
  ret i32 %29, !dbg !992
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_list_asprintf(ptr noundef %strp, ptr noalias noundef %set) #0 !dbg !993 {
entry:
  %retval = alloca i32, align 4
  %strp.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strp, ptr %strp.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %strp.addr, metadata !995, metadata !DIExpression()), !dbg !999
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !996, metadata !DIExpression()), !dbg !1000
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !1001
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !997, metadata !DIExpression()), !dbg !1002
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #12, !dbg !1003
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !998, metadata !DIExpression()), !dbg !1004
  %0 = load ptr, ptr %set.addr, align 8, !dbg !1005, !tbaa !112
  %call = call i32 @hwloc_bitmap_list_snprintf(ptr noundef null, i64 noundef 0, ptr noundef %0), !dbg !1006
  store i32 %call, ptr %len, align 4, !dbg !1007, !tbaa !295
  %1 = load i32, ptr %len, align 4, !dbg !1008, !tbaa !295
  %add = add nsw i32 %1, 1, !dbg !1009
  %conv = sext i32 %add to i64, !dbg !1008
  %call1 = call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !1010
  store ptr %call1, ptr %buf, align 8, !dbg !1011, !tbaa !112
  %2 = load ptr, ptr %buf, align 8, !dbg !1012, !tbaa !112
  %tobool = icmp ne ptr %2, null, !dbg !1012
  br i1 %tobool, label %if.end, label %if.then, !dbg !1014

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1015

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf, align 8, !dbg !1016, !tbaa !112
  %4 = load ptr, ptr %strp.addr, align 8, !dbg !1017, !tbaa !112
  store ptr %3, ptr %4, align 8, !dbg !1018, !tbaa !112
  %5 = load ptr, ptr %buf, align 8, !dbg !1019, !tbaa !112
  %6 = load i32, ptr %len, align 4, !dbg !1020, !tbaa !295
  %add2 = add nsw i32 %6, 1, !dbg !1021
  %conv3 = sext i32 %add2 to i64, !dbg !1020
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1022, !tbaa !112
  %call4 = call i32 @hwloc_bitmap_list_snprintf(ptr noundef %5, i64 noundef %conv3, ptr noundef %7), !dbg !1023
  store i32 %call4, ptr %retval, align 4, !dbg !1024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1024

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #12, !dbg !1025
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !1025
  %8 = load i32, ptr %retval, align 4, !dbg !1025
  ret i32 %8, !dbg !1025
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_list_sscanf(ptr noundef %set, ptr noalias noundef %string) #0 !dbg !1026 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %current = alloca ptr, align 8
  %next = alloca ptr, align 8
  %begin = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1028, metadata !DIExpression()), !dbg !1035
  store ptr %string, ptr %string.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !1029, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.start.p0(i64 8, ptr %current) #12, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %current, metadata !1030, metadata !DIExpression()), !dbg !1038
  %0 = load ptr, ptr %string.addr, align 8, !dbg !1039, !tbaa !112
  store ptr %0, ptr %current, align 8, !dbg !1038, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !1040
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1031, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #12, !dbg !1042
  tail call void @llvm.dbg.declare(metadata ptr %begin, metadata !1032, metadata !DIExpression()), !dbg !1043
  store i64 -1, ptr %begin, align 8, !dbg !1043, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1042
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !1033, metadata !DIExpression()), !dbg !1044
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1045, !tbaa !112
  call void @hwloc_bitmap_zero(ptr noundef %1), !dbg !1046
  br label %while.cond, !dbg !1047

while.cond:                                       ; preds = %if.end48, %entry
  %2 = load ptr, ptr %current, align 8, !dbg !1048, !tbaa !112
  %3 = load i8, ptr %2, align 1, !dbg !1049, !tbaa !358
  %conv = sext i8 %3 to i32, !dbg !1049
  %cmp = icmp ne i32 %conv, 0, !dbg !1050
  br i1 %cmp, label %while.body, label %while.end50, !dbg !1047

while.body:                                       ; preds = %while.cond
  br label %while.cond2, !dbg !1051

while.cond2:                                      ; preds = %while.body9, %while.body
  %4 = load ptr, ptr %current, align 8, !dbg !1053, !tbaa !112
  %5 = load i8, ptr %4, align 1, !dbg !1054, !tbaa !358
  %conv3 = sext i8 %5 to i32, !dbg !1054
  %cmp4 = icmp eq i32 %conv3, 44, !dbg !1055
  br i1 %cmp4, label %lor.end, label %lor.rhs, !dbg !1056

lor.rhs:                                          ; preds = %while.cond2
  %6 = load ptr, ptr %current, align 8, !dbg !1057, !tbaa !112
  %7 = load i8, ptr %6, align 1, !dbg !1058, !tbaa !358
  %conv6 = sext i8 %7 to i32, !dbg !1058
  %cmp7 = icmp eq i32 %conv6, 32, !dbg !1059
  br label %lor.end, !dbg !1056

lor.end:                                          ; preds = %lor.rhs, %while.cond2
  %8 = phi i1 [ true, %while.cond2 ], [ %cmp7, %lor.rhs ]
  br i1 %8, label %while.body9, label %while.end, !dbg !1051

while.body9:                                      ; preds = %lor.end
  %9 = load ptr, ptr %current, align 8, !dbg !1060, !tbaa !112
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1, !dbg !1060
  store ptr %incdec.ptr, ptr %current, align 8, !dbg !1060, !tbaa !112
  br label %while.cond2, !dbg !1051, !llvm.loop !1061

while.end:                                        ; preds = %lor.end
  %10 = load ptr, ptr %current, align 8, !dbg !1062, !tbaa !112
  %call = call i64 @strtoul(ptr noundef %10, ptr noundef %next, i32 noundef 0) #12, !dbg !1063
  store i64 %call, ptr %val, align 8, !dbg !1064, !tbaa !146
  %11 = load ptr, ptr %next, align 8, !dbg !1065, !tbaa !112
  %12 = load ptr, ptr %current, align 8, !dbg !1067, !tbaa !112
  %cmp10 = icmp eq ptr %11, %12, !dbg !1068
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1069

if.then:                                          ; preds = %while.end
  br label %failed, !dbg !1070

if.end:                                           ; preds = %while.end
  %13 = load i64, ptr %begin, align 8, !dbg !1071, !tbaa !146
  %cmp12 = icmp ne i64 %13, -1, !dbg !1073
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !1074

if.then14:                                        ; preds = %if.end
  %14 = load ptr, ptr %set.addr, align 8, !dbg !1075, !tbaa !112
  %15 = load i64, ptr %begin, align 8, !dbg !1077, !tbaa !146
  %conv15 = trunc i64 %15 to i32, !dbg !1077
  %16 = load i64, ptr %val, align 8, !dbg !1078, !tbaa !146
  %conv16 = trunc i64 %16 to i32, !dbg !1078
  call void @hwloc_bitmap_set_range(ptr noundef %14, i32 noundef %conv15, i32 noundef %conv16), !dbg !1079
  store i64 -1, ptr %begin, align 8, !dbg !1080, !tbaa !146
  br label %if.end43, !dbg !1081

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %next, align 8, !dbg !1082, !tbaa !112
  %18 = load i8, ptr %17, align 1, !dbg !1084, !tbaa !358
  %conv17 = sext i8 %18 to i32, !dbg !1084
  %cmp18 = icmp eq i32 %conv17, 45, !dbg !1085
  br i1 %cmp18, label %if.then20, label %if.else28, !dbg !1086

if.then20:                                        ; preds = %if.else
  %19 = load ptr, ptr %next, align 8, !dbg !1087, !tbaa !112
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 1, !dbg !1090
  %20 = load i8, ptr %add.ptr, align 1, !dbg !1091, !tbaa !358
  %conv21 = sext i8 %20 to i32, !dbg !1091
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !1092
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !1093

if.then24:                                        ; preds = %if.then20
  %21 = load ptr, ptr %set.addr, align 8, !dbg !1094, !tbaa !112
  %22 = load i64, ptr %val, align 8, !dbg !1096, !tbaa !146
  %conv25 = trunc i64 %22 to i32, !dbg !1096
  call void @hwloc_bitmap_set_range(ptr noundef %21, i32 noundef %conv25, i32 noundef -1), !dbg !1097
  br label %while.end50, !dbg !1098

if.else26:                                        ; preds = %if.then20
  %23 = load i64, ptr %val, align 8, !dbg !1099, !tbaa !146
  store i64 %23, ptr %begin, align 8, !dbg !1101, !tbaa !146
  br label %if.end27

if.end27:                                         ; preds = %if.else26
  br label %if.end42, !dbg !1102

if.else28:                                        ; preds = %if.else
  %24 = load ptr, ptr %next, align 8, !dbg !1103, !tbaa !112
  %25 = load i8, ptr %24, align 1, !dbg !1105, !tbaa !358
  %conv29 = sext i8 %25 to i32, !dbg !1105
  %cmp30 = icmp eq i32 %conv29, 44, !dbg !1106
  br i1 %cmp30, label %if.then39, label %lor.lhs.false, !dbg !1107

lor.lhs.false:                                    ; preds = %if.else28
  %26 = load ptr, ptr %next, align 8, !dbg !1108, !tbaa !112
  %27 = load i8, ptr %26, align 1, !dbg !1109, !tbaa !358
  %conv32 = sext i8 %27 to i32, !dbg !1109
  %cmp33 = icmp eq i32 %conv32, 32, !dbg !1110
  br i1 %cmp33, label %if.then39, label %lor.lhs.false35, !dbg !1111

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %28 = load ptr, ptr %next, align 8, !dbg !1112, !tbaa !112
  %29 = load i8, ptr %28, align 1, !dbg !1113, !tbaa !358
  %conv36 = sext i8 %29 to i32, !dbg !1113
  %cmp37 = icmp eq i32 %conv36, 0, !dbg !1114
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !1115

if.then39:                                        ; preds = %lor.lhs.false35, %lor.lhs.false, %if.else28
  %30 = load ptr, ptr %set.addr, align 8, !dbg !1116, !tbaa !112
  %31 = load i64, ptr %val, align 8, !dbg !1118, !tbaa !146
  %conv40 = trunc i64 %31 to i32, !dbg !1118
  call void @hwloc_bitmap_set(ptr noundef %30, i32 noundef %conv40), !dbg !1119
  br label %if.end41, !dbg !1120

if.end41:                                         ; preds = %if.then39, %lor.lhs.false35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end27
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then14
  %32 = load ptr, ptr %next, align 8, !dbg !1121, !tbaa !112
  %33 = load i8, ptr %32, align 1, !dbg !1123, !tbaa !358
  %conv44 = sext i8 %33 to i32, !dbg !1123
  %cmp45 = icmp eq i32 %conv44, 0, !dbg !1124
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !1125

if.then47:                                        ; preds = %if.end43
  br label %while.end50, !dbg !1126

if.end48:                                         ; preds = %if.end43
  %34 = load ptr, ptr %next, align 8, !dbg !1127, !tbaa !112
  %add.ptr49 = getelementptr inbounds i8, ptr %34, i64 1, !dbg !1128
  store ptr %add.ptr49, ptr %current, align 8, !dbg !1129, !tbaa !112
  br label %while.cond, !dbg !1047, !llvm.loop !1130

while.end50:                                      ; preds = %if.then47, %if.then24, %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1132

failed:                                           ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !1034), !dbg !1133
  %35 = load ptr, ptr %set.addr, align 8, !dbg !1134, !tbaa !112
  call void @hwloc_bitmap_zero(ptr noundef %35), !dbg !1135
  store i32 -1, ptr %retval, align 4, !dbg !1136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1136

cleanup:                                          ; preds = %failed, %while.end50
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #12, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 8, ptr %current) #12, !dbg !1137
  %36 = load i32, ptr %retval, align 4, !dbg !1137
  ret i32 %36, !dbg !1137
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_set_range(ptr noundef %set, i32 noundef %begincpu, i32 noundef %_endcpu) #0 !dbg !1138 {
entry:
  %set.addr = alloca ptr, align 8
  %begincpu.addr = alloca i32, align 4
  %_endcpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %beginset = alloca i32, align 4
  %endset = alloca i32, align 4
  %endcpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1142, metadata !DIExpression()), !dbg !1149
  store i32 %begincpu, ptr %begincpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %begincpu.addr, metadata !1143, metadata !DIExpression()), !dbg !1150
  store i32 %_endcpu, ptr %_endcpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %_endcpu.addr, metadata !1144, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1152
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1145, metadata !DIExpression()), !dbg !1153
  call void @llvm.lifetime.start.p0(i64 4, ptr %beginset) #12, !dbg !1154
  tail call void @llvm.dbg.declare(metadata ptr %beginset, metadata !1146, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 4, ptr %endset) #12, !dbg !1154
  tail call void @llvm.dbg.declare(metadata ptr %endset, metadata !1147, metadata !DIExpression()), !dbg !1156
  call void @llvm.lifetime.start.p0(i64 4, ptr %endcpu) #12, !dbg !1157
  tail call void @llvm.dbg.declare(metadata ptr %endcpu, metadata !1148, metadata !DIExpression()), !dbg !1158
  %0 = load i32, ptr %_endcpu.addr, align 4, !dbg !1159, !tbaa !295
  store i32 %0, ptr %endcpu, align 4, !dbg !1158, !tbaa !295
  %1 = load i32, ptr %endcpu, align 4, !dbg !1160, !tbaa !295
  %2 = load i32, ptr %begincpu.addr, align 4, !dbg !1162, !tbaa !295
  %cmp = icmp ult i32 %1, %2, !dbg !1163
  br i1 %cmp, label %if.then, label %if.end, !dbg !1164

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1165

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1166, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 3, !dbg !1168
  %4 = load i32, ptr %infinite, align 8, !dbg !1168, !tbaa !151
  %tobool = icmp ne i32 %4, 0, !dbg !1166
  br i1 %tobool, label %land.lhs.true, label %if.end3, !dbg !1169

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %begincpu.addr, align 4, !dbg !1170, !tbaa !295
  %6 = load ptr, ptr %set.addr, align 8, !dbg !1171, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %6, i32 0, i32 0, !dbg !1172
  %7 = load i32, ptr %ulongs_count, align 8, !dbg !1172, !tbaa !123
  %mul = mul i32 %7, 64, !dbg !1173
  %cmp1 = icmp uge i32 %5, %mul, !dbg !1174
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1175

if.then2:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1176

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, ptr %_endcpu.addr, align 4, !dbg !1177, !tbaa !295
  %cmp4 = icmp eq i32 %8, -1, !dbg !1179
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !1180

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %set.addr, align 8, !dbg !1181, !tbaa !112
  %10 = load i32, ptr %begincpu.addr, align 4, !dbg !1181, !tbaa !295
  %div = udiv i32 %10, 64, !dbg !1181
  %add = add i32 %div, 1, !dbg !1181
  call void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %9, i32 noundef %add), !dbg !1181
  %11 = load i32, ptr %begincpu.addr, align 4, !dbg !1183, !tbaa !295
  %div6 = udiv i32 %11, 64, !dbg !1183
  store i32 %div6, ptr %beginset, align 4, !dbg !1184, !tbaa !295
  %12 = load i32, ptr %begincpu.addr, align 4, !dbg !1185, !tbaa !295
  %rem = urem i32 %12, 64, !dbg !1185
  %sh_prom = zext i32 %rem to i64, !dbg !1185
  %shl = shl i64 -1, %sh_prom, !dbg !1185
  %13 = load ptr, ptr %set.addr, align 8, !dbg !1186, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %13, i32 0, i32 2, !dbg !1187
  %14 = load ptr, ptr %ulongs, align 8, !dbg !1187, !tbaa !134
  %15 = load i32, ptr %beginset, align 4, !dbg !1188, !tbaa !295
  %idxprom = zext i32 %15 to i64, !dbg !1186
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %idxprom, !dbg !1186
  %16 = load i64, ptr %arrayidx, align 8, !dbg !1189, !tbaa !146
  %or = or i64 %16, %shl, !dbg !1189
  store i64 %or, ptr %arrayidx, align 8, !dbg !1189, !tbaa !146
  %17 = load i32, ptr %beginset, align 4, !dbg !1190, !tbaa !295
  %add7 = add i32 %17, 1, !dbg !1192
  store i32 %add7, ptr %i, align 4, !dbg !1193, !tbaa !295
  br label %for.cond, !dbg !1194

for.cond:                                         ; preds = %for.inc, %if.then5
  %18 = load i32, ptr %i, align 4, !dbg !1195, !tbaa !295
  %19 = load ptr, ptr %set.addr, align 8, !dbg !1197, !tbaa !112
  %ulongs_count8 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 0, !dbg !1198
  %20 = load i32, ptr %ulongs_count8, align 8, !dbg !1198, !tbaa !123
  %cmp9 = icmp ult i32 %18, %20, !dbg !1199
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1200

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %set.addr, align 8, !dbg !1201, !tbaa !112
  %ulongs10 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %21, i32 0, i32 2, !dbg !1202
  %22 = load ptr, ptr %ulongs10, align 8, !dbg !1202, !tbaa !134
  %23 = load i32, ptr %i, align 4, !dbg !1203, !tbaa !295
  %idxprom11 = zext i32 %23 to i64, !dbg !1201
  %arrayidx12 = getelementptr inbounds i64, ptr %22, i64 %idxprom11, !dbg !1201
  store i64 -1, ptr %arrayidx12, align 8, !dbg !1204, !tbaa !146
  br label %for.inc, !dbg !1201

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !dbg !1205, !tbaa !295
  %inc = add i32 %24, 1, !dbg !1205
  store i32 %inc, ptr %i, align 4, !dbg !1205, !tbaa !295
  br label %for.cond, !dbg !1206, !llvm.loop !1207

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %set.addr, align 8, !dbg !1209, !tbaa !112
  %infinite13 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %25, i32 0, i32 3, !dbg !1210
  store i32 1, ptr %infinite13, align 8, !dbg !1211, !tbaa !151
  br label %if.end67, !dbg !1212

if.else:                                          ; preds = %if.end3
  %26 = load ptr, ptr %set.addr, align 8, !dbg !1213, !tbaa !112
  %infinite14 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %26, i32 0, i32 3, !dbg !1216
  %27 = load i32, ptr %infinite14, align 8, !dbg !1216, !tbaa !151
  %tobool15 = icmp ne i32 %27, 0, !dbg !1213
  br i1 %tobool15, label %land.lhs.true16, label %if.end23, !dbg !1217

land.lhs.true16:                                  ; preds = %if.else
  %28 = load i32, ptr %endcpu, align 4, !dbg !1218, !tbaa !295
  %29 = load ptr, ptr %set.addr, align 8, !dbg !1219, !tbaa !112
  %ulongs_count17 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %29, i32 0, i32 0, !dbg !1220
  %30 = load i32, ptr %ulongs_count17, align 8, !dbg !1220, !tbaa !123
  %mul18 = mul i32 %30, 64, !dbg !1221
  %cmp19 = icmp uge i32 %28, %mul18, !dbg !1222
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !1223

if.then20:                                        ; preds = %land.lhs.true16
  %31 = load ptr, ptr %set.addr, align 8, !dbg !1224, !tbaa !112
  %ulongs_count21 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 0, !dbg !1225
  %32 = load i32, ptr %ulongs_count21, align 8, !dbg !1225, !tbaa !123
  %mul22 = mul i32 %32, 64, !dbg !1226
  %sub = sub i32 %mul22, 1, !dbg !1227
  store i32 %sub, ptr %endcpu, align 4, !dbg !1228, !tbaa !295
  br label %if.end23, !dbg !1229

if.end23:                                         ; preds = %if.then20, %land.lhs.true16, %if.else
  %33 = load ptr, ptr %set.addr, align 8, !dbg !1230, !tbaa !112
  %34 = load i32, ptr %endcpu, align 4, !dbg !1230, !tbaa !295
  %div24 = udiv i32 %34, 64, !dbg !1230
  %add25 = add i32 %div24, 1, !dbg !1230
  call void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %33, i32 noundef %add25), !dbg !1230
  %35 = load i32, ptr %begincpu.addr, align 4, !dbg !1231, !tbaa !295
  %div26 = udiv i32 %35, 64, !dbg !1231
  store i32 %div26, ptr %beginset, align 4, !dbg !1232, !tbaa !295
  %36 = load i32, ptr %endcpu, align 4, !dbg !1233, !tbaa !295
  %div27 = udiv i32 %36, 64, !dbg !1233
  store i32 %div27, ptr %endset, align 4, !dbg !1234, !tbaa !295
  %37 = load i32, ptr %beginset, align 4, !dbg !1235, !tbaa !295
  %38 = load i32, ptr %endset, align 4, !dbg !1237, !tbaa !295
  %cmp28 = icmp eq i32 %37, %38, !dbg !1238
  br i1 %cmp28, label %if.then29, label %if.else40, !dbg !1239

if.then29:                                        ; preds = %if.end23
  %39 = load i32, ptr %endcpu, align 4, !dbg !1240, !tbaa !295
  %rem30 = urem i32 %39, 64, !dbg !1240
  %sub31 = sub i32 63, %rem30, !dbg !1240
  %sh_prom32 = zext i32 %sub31 to i64, !dbg !1240
  %shr = lshr i64 -1, %sh_prom32, !dbg !1240
  %40 = load i32, ptr %begincpu.addr, align 4, !dbg !1240, !tbaa !295
  %rem33 = urem i32 %40, 64, !dbg !1240
  %sh_prom34 = zext i32 %rem33 to i64, !dbg !1240
  %shl35 = shl i64 -1, %sh_prom34, !dbg !1240
  %and = and i64 %shr, %shl35, !dbg !1240
  %41 = load ptr, ptr %set.addr, align 8, !dbg !1242, !tbaa !112
  %ulongs36 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %41, i32 0, i32 2, !dbg !1243
  %42 = load ptr, ptr %ulongs36, align 8, !dbg !1243, !tbaa !134
  %43 = load i32, ptr %beginset, align 4, !dbg !1244, !tbaa !295
  %idxprom37 = zext i32 %43 to i64, !dbg !1242
  %arrayidx38 = getelementptr inbounds i64, ptr %42, i64 %idxprom37, !dbg !1242
  %44 = load i64, ptr %arrayidx38, align 8, !dbg !1245, !tbaa !146
  %or39 = or i64 %44, %and, !dbg !1245
  store i64 %or39, ptr %arrayidx38, align 8, !dbg !1245, !tbaa !146
  br label %if.end56, !dbg !1246

if.else40:                                        ; preds = %if.end23
  %45 = load i32, ptr %begincpu.addr, align 4, !dbg !1247, !tbaa !295
  %rem41 = urem i32 %45, 64, !dbg !1247
  %sh_prom42 = zext i32 %rem41 to i64, !dbg !1247
  %shl43 = shl i64 -1, %sh_prom42, !dbg !1247
  %46 = load ptr, ptr %set.addr, align 8, !dbg !1249, !tbaa !112
  %ulongs44 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %46, i32 0, i32 2, !dbg !1250
  %47 = load ptr, ptr %ulongs44, align 8, !dbg !1250, !tbaa !134
  %48 = load i32, ptr %beginset, align 4, !dbg !1251, !tbaa !295
  %idxprom45 = zext i32 %48 to i64, !dbg !1249
  %arrayidx46 = getelementptr inbounds i64, ptr %47, i64 %idxprom45, !dbg !1249
  %49 = load i64, ptr %arrayidx46, align 8, !dbg !1252, !tbaa !146
  %or47 = or i64 %49, %shl43, !dbg !1252
  store i64 %or47, ptr %arrayidx46, align 8, !dbg !1252, !tbaa !146
  %50 = load i32, ptr %endcpu, align 4, !dbg !1253, !tbaa !295
  %rem48 = urem i32 %50, 64, !dbg !1253
  %sub49 = sub i32 63, %rem48, !dbg !1253
  %sh_prom50 = zext i32 %sub49 to i64, !dbg !1253
  %shr51 = lshr i64 -1, %sh_prom50, !dbg !1253
  %51 = load ptr, ptr %set.addr, align 8, !dbg !1254, !tbaa !112
  %ulongs52 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %51, i32 0, i32 2, !dbg !1255
  %52 = load ptr, ptr %ulongs52, align 8, !dbg !1255, !tbaa !134
  %53 = load i32, ptr %endset, align 4, !dbg !1256, !tbaa !295
  %idxprom53 = zext i32 %53 to i64, !dbg !1254
  %arrayidx54 = getelementptr inbounds i64, ptr %52, i64 %idxprom53, !dbg !1254
  %54 = load i64, ptr %arrayidx54, align 8, !dbg !1257, !tbaa !146
  %or55 = or i64 %54, %shr51, !dbg !1257
  store i64 %or55, ptr %arrayidx54, align 8, !dbg !1257, !tbaa !146
  br label %if.end56

if.end56:                                         ; preds = %if.else40, %if.then29
  %55 = load i32, ptr %beginset, align 4, !dbg !1258, !tbaa !295
  %add57 = add i32 %55, 1, !dbg !1260
  store i32 %add57, ptr %i, align 4, !dbg !1261, !tbaa !295
  br label %for.cond58, !dbg !1262

for.cond58:                                       ; preds = %for.inc64, %if.end56
  %56 = load i32, ptr %i, align 4, !dbg !1263, !tbaa !295
  %57 = load i32, ptr %endset, align 4, !dbg !1265, !tbaa !295
  %cmp59 = icmp ult i32 %56, %57, !dbg !1266
  br i1 %cmp59, label %for.body60, label %for.end66, !dbg !1267

for.body60:                                       ; preds = %for.cond58
  %58 = load ptr, ptr %set.addr, align 8, !dbg !1268, !tbaa !112
  %ulongs61 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %58, i32 0, i32 2, !dbg !1269
  %59 = load ptr, ptr %ulongs61, align 8, !dbg !1269, !tbaa !134
  %60 = load i32, ptr %i, align 4, !dbg !1270, !tbaa !295
  %idxprom62 = zext i32 %60 to i64, !dbg !1268
  %arrayidx63 = getelementptr inbounds i64, ptr %59, i64 %idxprom62, !dbg !1268
  store i64 -1, ptr %arrayidx63, align 8, !dbg !1271, !tbaa !146
  br label %for.inc64, !dbg !1268

for.inc64:                                        ; preds = %for.body60
  %61 = load i32, ptr %i, align 4, !dbg !1272, !tbaa !295
  %inc65 = add i32 %61, 1, !dbg !1272
  store i32 %inc65, ptr %i, align 4, !dbg !1272, !tbaa !295
  br label %for.cond58, !dbg !1273, !llvm.loop !1274

for.end66:                                        ; preds = %for.cond58
  br label %if.end67

if.end67:                                         ; preds = %for.end66, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1276
  br label %cleanup, !dbg !1276

cleanup:                                          ; preds = %if.end67, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %endcpu) #12, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 4, ptr %endset) #12, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 4, ptr %beginset) #12, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1276
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1276

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_set(ptr noundef %set, i32 noundef %cpu) #0 !dbg !1277 {
entry:
  %set.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %index_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1279, metadata !DIExpression()), !dbg !1282
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 4, ptr %index_) #12, !dbg !1284
  tail call void @llvm.dbg.declare(metadata ptr %index_, metadata !1281, metadata !DIExpression()), !dbg !1285
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1286, !tbaa !295
  %div = udiv i32 %0, 64, !dbg !1286
  store i32 %div, ptr %index_, align 4, !dbg !1285, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1287, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 3, !dbg !1289
  %2 = load i32, ptr %infinite, align 8, !dbg !1289, !tbaa !151
  %tobool = icmp ne i32 %2, 0, !dbg !1287
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1290

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !1291, !tbaa !295
  %4 = load ptr, ptr %set.addr, align 8, !dbg !1292, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 0, !dbg !1293
  %5 = load i32, ptr %ulongs_count, align 8, !dbg !1293, !tbaa !123
  %mul = mul i32 %5, 64, !dbg !1294
  %cmp = icmp uge i32 %3, %mul, !dbg !1295
  br i1 %cmp, label %if.then, label %if.end, !dbg !1296

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1297

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %set.addr, align 8, !dbg !1298, !tbaa !112
  %7 = load i32, ptr %cpu.addr, align 4, !dbg !1298, !tbaa !295
  %div1 = udiv i32 %7, 64, !dbg !1298
  %add = add i32 %div1, 1, !dbg !1298
  call void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %6, i32 noundef %add), !dbg !1298
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !1299, !tbaa !295
  %rem = urem i32 %8, 64, !dbg !1299
  %sh_prom = zext i32 %rem to i64, !dbg !1299
  %shl = shl i64 1, %sh_prom, !dbg !1299
  %9 = load ptr, ptr %set.addr, align 8, !dbg !1300, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %9, i32 0, i32 2, !dbg !1301
  %10 = load ptr, ptr %ulongs, align 8, !dbg !1301, !tbaa !134
  %11 = load i32, ptr %index_, align 4, !dbg !1302, !tbaa !295
  %idxprom = zext i32 %11 to i64, !dbg !1300
  %arrayidx = getelementptr inbounds i64, ptr %10, i64 %idxprom, !dbg !1300
  %12 = load i64, ptr %arrayidx, align 8, !dbg !1303, !tbaa !146
  %or = or i64 %12, %shl, !dbg !1303
  store i64 %or, ptr %arrayidx, align 8, !dbg !1303, !tbaa !146
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1304
  br label %cleanup, !dbg !1304

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index_) #12, !dbg !1304
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1304

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_taskset_snprintf(ptr noalias noundef %buf, i64 noundef %buflen, ptr noalias noundef %set) #0 !dbg !1305 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %set.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %res = alloca i32, align 4
  %ret = alloca i32, align 4
  %started = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %val = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1307, metadata !DIExpression()), !dbg !1318
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !1308, metadata !DIExpression()), !dbg !1319
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1309, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #12, !dbg !1321
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1310, metadata !DIExpression()), !dbg !1322
  %0 = load i64, ptr %buflen.addr, align 8, !dbg !1323, !tbaa !146
  store i64 %0, ptr %size, align 8, !dbg !1322, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #12, !dbg !1324
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1311, metadata !DIExpression()), !dbg !1325
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !1326, !tbaa !112
  store ptr %1, ptr %tmp, align 8, !dbg !1325, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #12, !dbg !1327
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1312, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !1327
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1313, metadata !DIExpression()), !dbg !1329
  store i32 0, ptr %ret, align 4, !dbg !1329, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %started) #12, !dbg !1330
  tail call void @llvm.dbg.declare(metadata ptr %started, metadata !1314, metadata !DIExpression()), !dbg !1331
  store i32 0, ptr %started, align 4, !dbg !1331, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1332
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1315, metadata !DIExpression()), !dbg !1333
  %2 = load i64, ptr %buflen.addr, align 8, !dbg !1334, !tbaa !146
  %cmp = icmp ugt i64 %2, 0, !dbg !1336
  br i1 %cmp, label %if.then, label %if.end, !dbg !1337

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tmp, align 8, !dbg !1338, !tbaa !112
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !1338
  store i8 0, ptr %arrayidx, align 1, !dbg !1339, !tbaa !358
  br label %if.end, !dbg !1338

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %set.addr, align 8, !dbg !1340, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 3, !dbg !1342
  %5 = load i32, ptr %infinite, align 8, !dbg !1342, !tbaa !151
  %tobool = icmp ne i32 %5, 0, !dbg !1340
  br i1 %tobool, label %if.then1, label %if.end14, !dbg !1343

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %tmp, align 8, !dbg !1344, !tbaa !112
  %7 = load i64, ptr %size, align 8, !dbg !1346, !tbaa !146
  %call = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %6, i64 noundef %7, ptr noundef @.str), !dbg !1347
  store i32 %call, ptr %res, align 4, !dbg !1348, !tbaa !295
  store i32 1, ptr %started, align 4, !dbg !1349, !tbaa !295
  %8 = load i32, ptr %res, align 4, !dbg !1350, !tbaa !295
  %cmp2 = icmp slt i32 %8, 0, !dbg !1352
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1353

if.then3:                                         ; preds = %if.then1
  store i32 -1, ptr %retval, align 4, !dbg !1354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !1354

if.end4:                                          ; preds = %if.then1
  %9 = load i32, ptr %res, align 4, !dbg !1355, !tbaa !295
  %10 = load i32, ptr %ret, align 4, !dbg !1356, !tbaa !295
  %add = add nsw i32 %10, %9, !dbg !1356
  store i32 %add, ptr %ret, align 4, !dbg !1356, !tbaa !295
  %11 = load i32, ptr %res, align 4, !dbg !1357, !tbaa !295
  %conv = sext i32 %11 to i64, !dbg !1357
  %12 = load i64, ptr %size, align 8, !dbg !1359, !tbaa !146
  %cmp5 = icmp sge i64 %conv, %12, !dbg !1360
  br i1 %cmp5, label %if.then7, label %if.end11, !dbg !1361

if.then7:                                         ; preds = %if.end4
  %13 = load i64, ptr %size, align 8, !dbg !1362, !tbaa !146
  %cmp8 = icmp sgt i64 %13, 0, !dbg !1363
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !1362

cond.true:                                        ; preds = %if.then7
  %14 = load i64, ptr %size, align 8, !dbg !1364, !tbaa !146
  %conv10 = trunc i64 %14 to i32, !dbg !1365
  %sub = sub nsw i32 %conv10, 1, !dbg !1366
  br label %cond.end, !dbg !1362

cond.false:                                       ; preds = %if.then7
  br label %cond.end, !dbg !1362

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !1362
  store i32 %cond, ptr %res, align 4, !dbg !1367, !tbaa !295
  br label %if.end11, !dbg !1368

if.end11:                                         ; preds = %cond.end, %if.end4
  %15 = load i32, ptr %res, align 4, !dbg !1369, !tbaa !295
  %16 = load ptr, ptr %tmp, align 8, !dbg !1370, !tbaa !112
  %idx.ext = sext i32 %15 to i64, !dbg !1370
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext, !dbg !1370
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1370, !tbaa !112
  %17 = load i32, ptr %res, align 4, !dbg !1371, !tbaa !295
  %conv12 = sext i32 %17 to i64, !dbg !1371
  %18 = load i64, ptr %size, align 8, !dbg !1372, !tbaa !146
  %sub13 = sub nsw i64 %18, %conv12, !dbg !1372
  store i64 %sub13, ptr %size, align 8, !dbg !1372, !tbaa !146
  br label %if.end14, !dbg !1373

if.end14:                                         ; preds = %if.end11, %if.end
  %19 = load ptr, ptr %set.addr, align 8, !dbg !1374, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 0, !dbg !1375
  %20 = load i32, ptr %ulongs_count, align 8, !dbg !1375, !tbaa !123
  %sub15 = sub i32 %20, 1, !dbg !1376
  store i32 %sub15, ptr %i, align 4, !dbg !1377, !tbaa !295
  %21 = load ptr, ptr %set.addr, align 8, !dbg !1378, !tbaa !112
  %infinite16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %21, i32 0, i32 3, !dbg !1380
  %22 = load i32, ptr %infinite16, align 8, !dbg !1380, !tbaa !151
  %tobool17 = icmp ne i32 %22, 0, !dbg !1378
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !1381

if.then18:                                        ; preds = %if.end14
  br label %while.cond, !dbg !1382

while.cond:                                       ; preds = %while.body, %if.then18
  %23 = load i32, ptr %i, align 4, !dbg !1384, !tbaa !295
  %cmp19 = icmp sge i32 %23, 0, !dbg !1385
  br i1 %cmp19, label %land.rhs, label %land.end, !dbg !1386

land.rhs:                                         ; preds = %while.cond
  %24 = load ptr, ptr %set.addr, align 8, !dbg !1387, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %24, i32 0, i32 2, !dbg !1388
  %25 = load ptr, ptr %ulongs, align 8, !dbg !1388, !tbaa !134
  %26 = load i32, ptr %i, align 4, !dbg !1389, !tbaa !295
  %idxprom = sext i32 %26 to i64, !dbg !1387
  %arrayidx21 = getelementptr inbounds i64, ptr %25, i64 %idxprom, !dbg !1387
  %27 = load i64, ptr %arrayidx21, align 8, !dbg !1387, !tbaa !146
  %cmp22 = icmp eq i64 %27, -1, !dbg !1390
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ], !dbg !1391
  br i1 %28, label %while.body, label %while.end, !dbg !1382

while.body:                                       ; preds = %land.end
  %29 = load i32, ptr %i, align 4, !dbg !1392, !tbaa !295
  %dec = add nsw i32 %29, -1, !dbg !1392
  store i32 %dec, ptr %i, align 4, !dbg !1392, !tbaa !295
  br label %while.cond, !dbg !1382, !llvm.loop !1393

while.end:                                        ; preds = %land.end
  br label %if.end37, !dbg !1394

if.else:                                          ; preds = %if.end14
  br label %while.cond24, !dbg !1395

while.cond24:                                     ; preds = %while.body34, %if.else
  %30 = load i32, ptr %i, align 4, !dbg !1397, !tbaa !295
  %cmp25 = icmp sge i32 %30, 1, !dbg !1398
  br i1 %cmp25, label %land.rhs27, label %land.end33, !dbg !1399

land.rhs27:                                       ; preds = %while.cond24
  %31 = load ptr, ptr %set.addr, align 8, !dbg !1400, !tbaa !112
  %ulongs28 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 2, !dbg !1401
  %32 = load ptr, ptr %ulongs28, align 8, !dbg !1401, !tbaa !134
  %33 = load i32, ptr %i, align 4, !dbg !1402, !tbaa !295
  %idxprom29 = sext i32 %33 to i64, !dbg !1400
  %arrayidx30 = getelementptr inbounds i64, ptr %32, i64 %idxprom29, !dbg !1400
  %34 = load i64, ptr %arrayidx30, align 8, !dbg !1400, !tbaa !146
  %cmp31 = icmp eq i64 %34, 0, !dbg !1403
  br label %land.end33

land.end33:                                       ; preds = %land.rhs27, %while.cond24
  %35 = phi i1 [ false, %while.cond24 ], [ %cmp31, %land.rhs27 ], !dbg !1404
  br i1 %35, label %while.body34, label %while.end36, !dbg !1395

while.body34:                                     ; preds = %land.end33
  %36 = load i32, ptr %i, align 4, !dbg !1405, !tbaa !295
  %dec35 = add nsw i32 %36, -1, !dbg !1405
  store i32 %dec35, ptr %i, align 4, !dbg !1405, !tbaa !295
  br label %while.cond24, !dbg !1395, !llvm.loop !1406

while.end36:                                      ; preds = %land.end33
  br label %if.end37

if.end37:                                         ; preds = %while.end36, %while.end
  br label %while.cond38, !dbg !1407

while.cond38:                                     ; preds = %cleanup.cont, %if.end37
  %37 = load i32, ptr %i, align 4, !dbg !1408, !tbaa !295
  %cmp39 = icmp sge i32 %37, 0, !dbg !1409
  br i1 %cmp39, label %while.body41, label %while.end80, !dbg !1407

while.body41:                                     ; preds = %while.cond38
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1410
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !1316, metadata !DIExpression()), !dbg !1411
  %38 = load ptr, ptr %set.addr, align 8, !dbg !1412, !tbaa !112
  %ulongs42 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %38, i32 0, i32 2, !dbg !1413
  %39 = load ptr, ptr %ulongs42, align 8, !dbg !1413, !tbaa !134
  %40 = load i32, ptr %i, align 4, !dbg !1414, !tbaa !295
  %dec43 = add nsw i32 %40, -1, !dbg !1414
  store i32 %dec43, ptr %i, align 4, !dbg !1414, !tbaa !295
  %idxprom44 = sext i32 %40 to i64, !dbg !1412
  %arrayidx45 = getelementptr inbounds i64, ptr %39, i64 %idxprom44, !dbg !1412
  %41 = load i64, ptr %arrayidx45, align 8, !dbg !1412, !tbaa !146
  store i64 %41, ptr %val, align 8, !dbg !1411, !tbaa !146
  %42 = load i32, ptr %started, align 4, !dbg !1415, !tbaa !295
  %tobool46 = icmp ne i32 %42, 0, !dbg !1415
  br i1 %tobool46, label %if.then47, label %if.else49, !dbg !1417

if.then47:                                        ; preds = %while.body41
  %43 = load ptr, ptr %tmp, align 8, !dbg !1418, !tbaa !112
  %44 = load i64, ptr %size, align 8, !dbg !1420, !tbaa !146
  %45 = load i64, ptr %val, align 8, !dbg !1421, !tbaa !146
  %call48 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %43, i64 noundef %44, ptr noundef @.str.14, i64 noundef %45), !dbg !1422
  store i32 %call48, ptr %res, align 4, !dbg !1423, !tbaa !295
  br label %if.end57, !dbg !1424

if.else49:                                        ; preds = %while.body41
  %46 = load i64, ptr %val, align 8, !dbg !1425, !tbaa !146
  %tobool50 = icmp ne i64 %46, 0, !dbg !1425
  br i1 %tobool50, label %if.then53, label %lor.lhs.false, !dbg !1427

lor.lhs.false:                                    ; preds = %if.else49
  %47 = load i32, ptr %i, align 4, !dbg !1428, !tbaa !295
  %cmp51 = icmp eq i32 %47, -1, !dbg !1429
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !1430

if.then53:                                        ; preds = %lor.lhs.false, %if.else49
  %48 = load ptr, ptr %tmp, align 8, !dbg !1431, !tbaa !112
  %49 = load i64, ptr %size, align 8, !dbg !1433, !tbaa !146
  %50 = load i64, ptr %val, align 8, !dbg !1434, !tbaa !146
  %call54 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %48, i64 noundef %49, ptr noundef @.str.15, i64 noundef %50), !dbg !1435
  store i32 %call54, ptr %res, align 4, !dbg !1436, !tbaa !295
  store i32 1, ptr %started, align 4, !dbg !1437, !tbaa !295
  br label %if.end56, !dbg !1438

if.else55:                                        ; preds = %lor.lhs.false
  store i32 0, ptr %res, align 4, !dbg !1439, !tbaa !295
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then53
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then47
  %51 = load i32, ptr %res, align 4, !dbg !1441, !tbaa !295
  %cmp58 = icmp slt i32 %51, 0, !dbg !1443
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !1444

if.then60:                                        ; preds = %if.end57
  store i32 -1, ptr %retval, align 4, !dbg !1445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1445

if.end61:                                         ; preds = %if.end57
  %52 = load i32, ptr %res, align 4, !dbg !1446, !tbaa !295
  %53 = load i32, ptr %ret, align 4, !dbg !1447, !tbaa !295
  %add62 = add nsw i32 %53, %52, !dbg !1447
  store i32 %add62, ptr %ret, align 4, !dbg !1447, !tbaa !295
  %54 = load i32, ptr %res, align 4, !dbg !1448, !tbaa !295
  %conv63 = sext i32 %54 to i64, !dbg !1448
  %55 = load i64, ptr %size, align 8, !dbg !1450, !tbaa !146
  %cmp64 = icmp sge i64 %conv63, %55, !dbg !1451
  br i1 %cmp64, label %if.then66, label %if.end75, !dbg !1452

if.then66:                                        ; preds = %if.end61
  %56 = load i64, ptr %size, align 8, !dbg !1453, !tbaa !146
  %cmp67 = icmp sgt i64 %56, 0, !dbg !1454
  br i1 %cmp67, label %cond.true69, label %cond.false72, !dbg !1453

cond.true69:                                      ; preds = %if.then66
  %57 = load i64, ptr %size, align 8, !dbg !1455, !tbaa !146
  %conv70 = trunc i64 %57 to i32, !dbg !1456
  %sub71 = sub nsw i32 %conv70, 1, !dbg !1457
  br label %cond.end73, !dbg !1453

cond.false72:                                     ; preds = %if.then66
  br label %cond.end73, !dbg !1453

cond.end73:                                       ; preds = %cond.false72, %cond.true69
  %cond74 = phi i32 [ %sub71, %cond.true69 ], [ 0, %cond.false72 ], !dbg !1453
  store i32 %cond74, ptr %res, align 4, !dbg !1458, !tbaa !295
  br label %if.end75, !dbg !1459

if.end75:                                         ; preds = %cond.end73, %if.end61
  %58 = load i32, ptr %res, align 4, !dbg !1460, !tbaa !295
  %59 = load ptr, ptr %tmp, align 8, !dbg !1461, !tbaa !112
  %idx.ext76 = sext i32 %58 to i64, !dbg !1461
  %add.ptr77 = getelementptr inbounds i8, ptr %59, i64 %idx.ext76, !dbg !1461
  store ptr %add.ptr77, ptr %tmp, align 8, !dbg !1461, !tbaa !112
  %60 = load i32, ptr %res, align 4, !dbg !1462, !tbaa !295
  %conv78 = sext i32 %60 to i64, !dbg !1462
  %61 = load i64, ptr %size, align 8, !dbg !1463, !tbaa !146
  %sub79 = sub nsw i64 %61, %conv78, !dbg !1463
  store i64 %sub79, ptr %size, align 8, !dbg !1463, !tbaa !146
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1464
  br label %cleanup, !dbg !1464

cleanup:                                          ; preds = %if.end75, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1464
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond38, !dbg !1407, !llvm.loop !1465

while.end80:                                      ; preds = %while.cond38
  %62 = load i32, ptr %ret, align 4, !dbg !1466, !tbaa !295
  %tobool81 = icmp ne i32 %62, 0, !dbg !1466
  br i1 %tobool81, label %if.end89, label %if.then82, !dbg !1468

if.then82:                                        ; preds = %while.end80
  %63 = load ptr, ptr %tmp, align 8, !dbg !1469, !tbaa !112
  %64 = load i64, ptr %size, align 8, !dbg !1471, !tbaa !146
  %call83 = call i32 (ptr, i64, ptr, ...) @hwloc_snprintf(ptr noundef %63, i64 noundef %64, ptr noundef @.str.4), !dbg !1472
  store i32 %call83, ptr %res, align 4, !dbg !1473, !tbaa !295
  %65 = load i32, ptr %res, align 4, !dbg !1474, !tbaa !295
  %cmp84 = icmp slt i32 %65, 0, !dbg !1476
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !1477

if.then86:                                        ; preds = %if.then82
  store i32 -1, ptr %retval, align 4, !dbg !1478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !1478

if.end87:                                         ; preds = %if.then82
  %66 = load i32, ptr %res, align 4, !dbg !1479, !tbaa !295
  %67 = load i32, ptr %ret, align 4, !dbg !1480, !tbaa !295
  %add88 = add nsw i32 %67, %66, !dbg !1480
  store i32 %add88, ptr %ret, align 4, !dbg !1480, !tbaa !295
  br label %if.end89, !dbg !1481

if.end89:                                         ; preds = %if.end87, %while.end80
  %68 = load i32, ptr %ret, align 4, !dbg !1482, !tbaa !295
  store i32 %68, ptr %retval, align 4, !dbg !1483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90, !dbg !1483

cleanup90:                                        ; preds = %if.end89, %if.then86, %cleanup, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 4, ptr %started) #12, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #12, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #12, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #12, !dbg !1484
  %69 = load i32, ptr %retval, align 4, !dbg !1484
  ret i32 %69, !dbg !1484
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_taskset_asprintf(ptr noundef %strp, ptr noalias noundef %set) #0 !dbg !1485 {
entry:
  %retval = alloca i32, align 4
  %strp.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strp, ptr %strp.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %strp.addr, metadata !1487, metadata !DIExpression()), !dbg !1491
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1488, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !1493
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1489, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #12, !dbg !1495
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1490, metadata !DIExpression()), !dbg !1496
  %0 = load ptr, ptr %set.addr, align 8, !dbg !1497, !tbaa !112
  %call = call i32 @hwloc_bitmap_taskset_snprintf(ptr noundef null, i64 noundef 0, ptr noundef %0), !dbg !1498
  store i32 %call, ptr %len, align 4, !dbg !1499, !tbaa !295
  %1 = load i32, ptr %len, align 4, !dbg !1500, !tbaa !295
  %add = add nsw i32 %1, 1, !dbg !1501
  %conv = sext i32 %add to i64, !dbg !1500
  %call1 = call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !1502
  store ptr %call1, ptr %buf, align 8, !dbg !1503, !tbaa !112
  %2 = load ptr, ptr %buf, align 8, !dbg !1504, !tbaa !112
  %tobool = icmp ne ptr %2, null, !dbg !1504
  br i1 %tobool, label %if.end, label %if.then, !dbg !1506

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1507

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf, align 8, !dbg !1508, !tbaa !112
  %4 = load ptr, ptr %strp.addr, align 8, !dbg !1509, !tbaa !112
  store ptr %3, ptr %4, align 8, !dbg !1510, !tbaa !112
  %5 = load ptr, ptr %buf, align 8, !dbg !1511, !tbaa !112
  %6 = load i32, ptr %len, align 4, !dbg !1512, !tbaa !295
  %add2 = add nsw i32 %6, 1, !dbg !1513
  %conv3 = sext i32 %add2 to i64, !dbg !1512
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1514, !tbaa !112
  %call4 = call i32 @hwloc_bitmap_taskset_snprintf(ptr noundef %5, i64 noundef %conv3, ptr noundef %7), !dbg !1515
  store i32 %call4, ptr %retval, align 4, !dbg !1516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1516

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #12, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !1517
  %8 = load i32, ptr %retval, align 4, !dbg !1517
  ret i32 %8, !dbg !1517
}

; Function Attrs: nounwind uwtable
define i32 @hwloc_bitmap_taskset_sscanf(ptr noundef %set, ptr noalias noundef %string) #0 !dbg !1518 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %current = alloca ptr, align 8
  %chars = alloca i32, align 4
  %count = alloca i32, align 4
  %infinite = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmpchars = alloca i32, align 4
  %ustr = alloca [17 x i8], align 16
  %val = alloca i64, align 8
  %next = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1520, metadata !DIExpression()), !dbg !1535
  store ptr %string, ptr %string.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !1521, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 8, ptr %current) #12, !dbg !1537
  tail call void @llvm.dbg.declare(metadata ptr %current, metadata !1522, metadata !DIExpression()), !dbg !1538
  %0 = load ptr, ptr %string.addr, align 8, !dbg !1539, !tbaa !112
  store ptr %0, ptr %current, align 8, !dbg !1538, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 4, ptr %chars) #12, !dbg !1540
  tail call void @llvm.dbg.declare(metadata ptr %chars, metadata !1523, metadata !DIExpression()), !dbg !1541
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #12, !dbg !1542
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !1524, metadata !DIExpression()), !dbg !1543
  call void @llvm.lifetime.start.p0(i64 4, ptr %infinite) #12, !dbg !1544
  tail call void @llvm.dbg.declare(metadata ptr %infinite, metadata !1525, metadata !DIExpression()), !dbg !1545
  store i32 0, ptr %infinite, align 4, !dbg !1545, !tbaa !295
  %1 = load ptr, ptr %current, align 8, !dbg !1546, !tbaa !112
  %call = call i32 @strncmp(ptr noundef @.str, ptr noundef %1, i64 noundef 7) #14, !dbg !1548
  %tobool = icmp ne i32 %call, 0, !dbg !1548
  br i1 %tobool, label %if.else, label %if.then, !dbg !1549

if.then:                                          ; preds = %entry
  store i32 1, ptr %infinite, align 4, !dbg !1550, !tbaa !295
  %2 = load ptr, ptr %current, align 8, !dbg !1552, !tbaa !112
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 7, !dbg !1552
  store ptr %add.ptr, ptr %current, align 8, !dbg !1552, !tbaa !112
  %3 = load ptr, ptr %current, align 8, !dbg !1553, !tbaa !112
  %4 = load i8, ptr %3, align 1, !dbg !1555, !tbaa !358
  %conv = sext i8 %4 to i32, !dbg !1555
  %cmp = icmp eq i32 %conv, 0, !dbg !1556
  br i1 %cmp, label %if.then2, label %if.end, !dbg !1557

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %set.addr, align 8, !dbg !1558, !tbaa !112
  call void @hwloc_bitmap_fill(ptr noundef %5), !dbg !1560
  store i32 0, ptr %retval, align 4, !dbg !1561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !1561

if.end:                                           ; preds = %if.then
  br label %if.end13, !dbg !1562

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %current, align 8, !dbg !1563, !tbaa !112
  %call3 = call i32 @strncmp(ptr noundef @.str.16, ptr noundef %6, i64 noundef 2) #14, !dbg !1566
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1566
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1567

if.then5:                                         ; preds = %if.else
  %7 = load ptr, ptr %current, align 8, !dbg !1568, !tbaa !112
  %add.ptr6 = getelementptr inbounds i8, ptr %7, i64 2, !dbg !1568
  store ptr %add.ptr6, ptr %current, align 8, !dbg !1568, !tbaa !112
  br label %if.end7, !dbg !1569

if.end7:                                          ; preds = %if.then5, %if.else
  %8 = load ptr, ptr %current, align 8, !dbg !1570, !tbaa !112
  %9 = load i8, ptr %8, align 1, !dbg !1572, !tbaa !358
  %conv8 = sext i8 %9 to i32, !dbg !1572
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !1573
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1574

if.then11:                                        ; preds = %if.end7
  %10 = load ptr, ptr %set.addr, align 8, !dbg !1575, !tbaa !112
  call void @hwloc_bitmap_zero(ptr noundef %10), !dbg !1577
  store i32 0, ptr %retval, align 4, !dbg !1578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !1578

if.end12:                                         ; preds = %if.end7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %11 = load ptr, ptr %current, align 8, !dbg !1579, !tbaa !112
  %call14 = call i64 @strlen(ptr noundef %11) #14, !dbg !1580
  %conv15 = trunc i64 %call14 to i32, !dbg !1581
  store i32 %conv15, ptr %chars, align 4, !dbg !1582, !tbaa !295
  %12 = load i32, ptr %chars, align 4, !dbg !1583, !tbaa !295
  %mul = mul nsw i32 %12, 4, !dbg !1584
  %add = add nsw i32 %mul, 64, !dbg !1585
  %sub = sub nsw i32 %add, 1, !dbg !1586
  %div = sdiv i32 %sub, 64, !dbg !1587
  store i32 %div, ptr %count, align 4, !dbg !1588, !tbaa !295
  %13 = load ptr, ptr %set.addr, align 8, !dbg !1589, !tbaa !112
  %14 = load i32, ptr %count, align 4, !dbg !1590, !tbaa !295
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %13, i32 noundef %14), !dbg !1591
  %15 = load ptr, ptr %set.addr, align 8, !dbg !1592, !tbaa !112
  %infinite16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %15, i32 0, i32 3, !dbg !1593
  store i32 0, ptr %infinite16, align 8, !dbg !1594, !tbaa !151
  br label %while.cond, !dbg !1595

while.cond:                                       ; preds = %cleanup.cont, %if.end13
  %16 = load ptr, ptr %current, align 8, !dbg !1596, !tbaa !112
  %17 = load i8, ptr %16, align 1, !dbg !1597, !tbaa !358
  %conv17 = sext i8 %17 to i32, !dbg !1597
  %cmp18 = icmp ne i32 %conv17, 0, !dbg !1598
  br i1 %cmp18, label %while.body, label %while.end, !dbg !1595

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmpchars) #12, !dbg !1599
  tail call void @llvm.dbg.declare(metadata ptr %tmpchars, metadata !1526, metadata !DIExpression()), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 17, ptr %ustr) #12, !dbg !1601
  tail call void @llvm.dbg.declare(metadata ptr %ustr, metadata !1528, metadata !DIExpression()), !dbg !1602
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !1603
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !1532, metadata !DIExpression()), !dbg !1604
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !1605
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !1533, metadata !DIExpression()), !dbg !1606
  %18 = load i32, ptr %chars, align 4, !dbg !1607, !tbaa !295
  %rem = srem i32 %18, 16, !dbg !1608
  store i32 %rem, ptr %tmpchars, align 4, !dbg !1609, !tbaa !295
  %19 = load i32, ptr %tmpchars, align 4, !dbg !1610, !tbaa !295
  %tobool20 = icmp ne i32 %19, 0, !dbg !1610
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !1612

if.then21:                                        ; preds = %while.body
  store i32 16, ptr %tmpchars, align 4, !dbg !1613, !tbaa !295
  br label %if.end22, !dbg !1614

if.end22:                                         ; preds = %if.then21, %while.body
  %arraydecay = getelementptr inbounds [17 x i8], ptr %ustr, i64 0, i64 0, !dbg !1615
  %20 = load ptr, ptr %current, align 8, !dbg !1616, !tbaa !112
  %21 = load i32, ptr %tmpchars, align 4, !dbg !1617, !tbaa !295
  %conv23 = sext i32 %21 to i64, !dbg !1617
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %20, i64 %conv23, i1 false), !dbg !1615
  %22 = load i32, ptr %tmpchars, align 4, !dbg !1618, !tbaa !295
  %idxprom = sext i32 %22 to i64, !dbg !1619
  %arrayidx = getelementptr inbounds [17 x i8], ptr %ustr, i64 0, i64 %idxprom, !dbg !1619
  store i8 0, ptr %arrayidx, align 1, !dbg !1620, !tbaa !358
  %arraydecay24 = getelementptr inbounds [17 x i8], ptr %ustr, i64 0, i64 0, !dbg !1621
  %call25 = call i64 @strtoul(ptr noundef %arraydecay24, ptr noundef %next, i32 noundef 16) #12, !dbg !1622
  store i64 %call25, ptr %val, align 8, !dbg !1623, !tbaa !146
  %23 = load ptr, ptr %next, align 8, !dbg !1624, !tbaa !112
  %24 = load i8, ptr %23, align 1, !dbg !1626, !tbaa !358
  %conv26 = sext i8 %24 to i32, !dbg !1626
  %cmp27 = icmp ne i32 %conv26, 0, !dbg !1627
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1628

if.then29:                                        ; preds = %if.end22
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1629

if.end30:                                         ; preds = %if.end22
  %25 = load i64, ptr %val, align 8, !dbg !1630, !tbaa !146
  %26 = load ptr, ptr %set.addr, align 8, !dbg !1631, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %26, i32 0, i32 2, !dbg !1632
  %27 = load ptr, ptr %ulongs, align 8, !dbg !1632, !tbaa !134
  %28 = load i32, ptr %count, align 4, !dbg !1633, !tbaa !295
  %sub31 = sub nsw i32 %28, 1, !dbg !1634
  %idxprom32 = sext i32 %sub31 to i64, !dbg !1631
  %arrayidx33 = getelementptr inbounds i64, ptr %27, i64 %idxprom32, !dbg !1631
  store i64 %25, ptr %arrayidx33, align 8, !dbg !1635, !tbaa !146
  %29 = load i32, ptr %tmpchars, align 4, !dbg !1636, !tbaa !295
  %30 = load ptr, ptr %current, align 8, !dbg !1637, !tbaa !112
  %idx.ext = sext i32 %29 to i64, !dbg !1637
  %add.ptr34 = getelementptr inbounds i8, ptr %30, i64 %idx.ext, !dbg !1637
  store ptr %add.ptr34, ptr %current, align 8, !dbg !1637, !tbaa !112
  %31 = load i32, ptr %tmpchars, align 4, !dbg !1638, !tbaa !295
  %32 = load i32, ptr %chars, align 4, !dbg !1639, !tbaa !295
  %sub35 = sub nsw i32 %32, %31, !dbg !1639
  store i32 %sub35, ptr %chars, align 4, !dbg !1639, !tbaa !295
  %33 = load i32, ptr %count, align 4, !dbg !1640, !tbaa !295
  %dec = add nsw i32 %33, -1, !dbg !1640
  store i32 %dec, ptr %count, align 4, !dbg !1640, !tbaa !295
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1641
  br label %cleanup, !dbg !1641

cleanup:                                          ; preds = %if.then29, %if.end30
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !1641
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !1641
  call void @llvm.lifetime.end.p0(i64 17, ptr %ustr) #12, !dbg !1641
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmpchars) #12, !dbg !1641
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup40 [
    i32 0, label %cleanup.cont
    i32 4, label %failed
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1595, !llvm.loop !1642

while.end:                                        ; preds = %while.cond
  %34 = load i32, ptr %infinite, align 4, !dbg !1643, !tbaa !295
  %35 = load ptr, ptr %set.addr, align 8, !dbg !1644, !tbaa !112
  %infinite39 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %35, i32 0, i32 3, !dbg !1645
  store i32 %34, ptr %infinite39, align 8, !dbg !1646, !tbaa !151
  store i32 0, ptr %retval, align 4, !dbg !1647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !1647

failed:                                           ; preds = %cleanup
  tail call void @llvm.dbg.label(metadata !1534), !dbg !1648
  %36 = load ptr, ptr %set.addr, align 8, !dbg !1649, !tbaa !112
  call void @hwloc_bitmap_zero(ptr noundef %36), !dbg !1650
  store i32 -1, ptr %retval, align 4, !dbg !1651
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40, !dbg !1651

cleanup40:                                        ; preds = %failed, %while.end, %cleanup, %if.then11, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %infinite) #12, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #12, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 4, ptr %chars) #12, !dbg !1652
  call void @llvm.lifetime.end.p0(i64 8, ptr %current) #12, !dbg !1652
  %37 = load i32, ptr %retval, align 4, !dbg !1652
  ret i32 %37, !dbg !1652
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1653 i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal void @hwloc_bitmap__zero(ptr noundef %set) #0 !dbg !1656 {
entry:
  %set.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1658, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1661
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1659, metadata !DIExpression()), !dbg !1662
  store i32 0, ptr %i, align 4, !dbg !1663, !tbaa !295
  br label %for.cond, !dbg !1665

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1666, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1668, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !1669
  %2 = load i32, ptr %ulongs_count, align 8, !dbg !1669, !tbaa !123
  %cmp = icmp ult i32 %0, %2, !dbg !1670
  br i1 %cmp, label %for.body, label %for.end, !dbg !1671

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1672, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !1673
  %4 = load ptr, ptr %ulongs, align 8, !dbg !1673, !tbaa !134
  %5 = load i32, ptr %i, align 4, !dbg !1674, !tbaa !295
  %idxprom = zext i32 %5 to i64, !dbg !1672
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !1672
  store i64 0, ptr %arrayidx, align 8, !dbg !1675, !tbaa !146
  br label %for.inc, !dbg !1672

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !1676, !tbaa !295
  %inc = add i32 %6, 1, !dbg !1676
  store i32 %inc, ptr %i, align 4, !dbg !1676, !tbaa !295
  br label %for.cond, !dbg !1677, !llvm.loop !1678

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1680, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %7, i32 0, i32 3, !dbg !1681
  store i32 0, ptr %infinite, align 8, !dbg !1682, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1683
  ret void, !dbg !1683
}

; Function Attrs: nounwind uwtable
define internal void @hwloc_bitmap__fill(ptr noundef %set) #0 !dbg !1684 {
entry:
  %set.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1686, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1689
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1687, metadata !DIExpression()), !dbg !1690
  store i32 0, ptr %i, align 4, !dbg !1691, !tbaa !295
  br label %for.cond, !dbg !1693

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1694, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1696, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !1697
  %2 = load i32, ptr %ulongs_count, align 8, !dbg !1697, !tbaa !123
  %cmp = icmp ult i32 %0, %2, !dbg !1698
  br i1 %cmp, label %for.body, label %for.end, !dbg !1699

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1700, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !1701
  %4 = load ptr, ptr %ulongs, align 8, !dbg !1701, !tbaa !134
  %5 = load i32, ptr %i, align 4, !dbg !1702, !tbaa !295
  %idxprom = zext i32 %5 to i64, !dbg !1700
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !1700
  store i64 -1, ptr %arrayidx, align 8, !dbg !1703, !tbaa !146
  br label %for.inc, !dbg !1700

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !1704, !tbaa !295
  %inc = add i32 %6, 1, !dbg !1704
  store i32 %inc, ptr %i, align 4, !dbg !1704, !tbaa !295
  br label %for.cond, !dbg !1705, !llvm.loop !1706

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1708, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %7, i32 0, i32 3, !dbg !1709
  store i32 1, ptr %infinite, align 8, !dbg !1710, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1711
  ret void, !dbg !1711
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_from_ulong(ptr noundef %set, i64 noundef %mask) #0 !dbg !1712 {
entry:
  %set.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1716, metadata !DIExpression()), !dbg !1718
  store i64 %mask, ptr %mask.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1717, metadata !DIExpression()), !dbg !1719
  %0 = load ptr, ptr %set.addr, align 8, !dbg !1720, !tbaa !112
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %0, i32 noundef 1), !dbg !1721
  %1 = load i64, ptr %mask.addr, align 8, !dbg !1722, !tbaa !146
  %2 = load ptr, ptr %set.addr, align 8, !dbg !1723, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 2, !dbg !1724
  %3 = load ptr, ptr %ulongs, align 8, !dbg !1724, !tbaa !134
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 0, !dbg !1723
  store i64 %1, ptr %arrayidx, align 8, !dbg !1725, !tbaa !146
  %4 = load ptr, ptr %set.addr, align 8, !dbg !1726, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 3, !dbg !1727
  store i32 0, ptr %infinite, align 8, !dbg !1728, !tbaa !151
  ret void, !dbg !1729
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_from_ith_ulong(ptr noundef %set, i32 noundef %i, i64 noundef %mask) #0 !dbg !1730 {
entry:
  %set.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %mask.addr = alloca i64, align 8
  %j = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1734, metadata !DIExpression()), !dbg !1738
  store i32 %i, ptr %i.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1735, metadata !DIExpression()), !dbg !1739
  store i64 %mask, ptr %mask.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1736, metadata !DIExpression()), !dbg !1740
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #12, !dbg !1741
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !1737, metadata !DIExpression()), !dbg !1742
  %0 = load ptr, ptr %set.addr, align 8, !dbg !1743, !tbaa !112
  %1 = load i32, ptr %i.addr, align 4, !dbg !1744, !tbaa !295
  %add = add i32 %1, 1, !dbg !1745
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %0, i32 noundef %add), !dbg !1746
  %2 = load i64, ptr %mask.addr, align 8, !dbg !1747, !tbaa !146
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1748, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !1749
  %4 = load ptr, ptr %ulongs, align 8, !dbg !1749, !tbaa !134
  %5 = load i32, ptr %i.addr, align 4, !dbg !1750, !tbaa !295
  %idxprom = zext i32 %5 to i64, !dbg !1748
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !1748
  store i64 %2, ptr %arrayidx, align 8, !dbg !1751, !tbaa !146
  store i32 0, ptr %j, align 4, !dbg !1752, !tbaa !295
  br label %for.cond, !dbg !1754

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %j, align 4, !dbg !1755, !tbaa !295
  %7 = load i32, ptr %i.addr, align 4, !dbg !1757, !tbaa !295
  %cmp = icmp ult i32 %6, %7, !dbg !1758
  br i1 %cmp, label %for.body, label %for.end, !dbg !1759

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %set.addr, align 8, !dbg !1760, !tbaa !112
  %ulongs1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %8, i32 0, i32 2, !dbg !1761
  %9 = load ptr, ptr %ulongs1, align 8, !dbg !1761, !tbaa !134
  %10 = load i32, ptr %j, align 4, !dbg !1762, !tbaa !295
  %idxprom2 = zext i32 %10 to i64, !dbg !1760
  %arrayidx3 = getelementptr inbounds i64, ptr %9, i64 %idxprom2, !dbg !1760
  store i64 0, ptr %arrayidx3, align 8, !dbg !1763, !tbaa !146
  br label %for.inc, !dbg !1760

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %j, align 4, !dbg !1764, !tbaa !295
  %inc = add i32 %11, 1, !dbg !1764
  store i32 %inc, ptr %j, align 4, !dbg !1764, !tbaa !295
  br label %for.cond, !dbg !1765, !llvm.loop !1766

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %set.addr, align 8, !dbg !1768, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %12, i32 0, i32 3, !dbg !1769
  store i32 0, ptr %infinite, align 8, !dbg !1770, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #12, !dbg !1771
  ret void, !dbg !1771
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i64 @hwloc_bitmap_to_ulong(ptr noundef %set) #8 !dbg !1772 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1776, metadata !DIExpression()), !dbg !1777
  %0 = load ptr, ptr %set.addr, align 8, !dbg !1778, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 2, !dbg !1779
  %1 = load ptr, ptr %ulongs, align 8, !dbg !1779, !tbaa !134
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 0, !dbg !1778
  %2 = load i64, ptr %arrayidx, align 8, !dbg !1778, !tbaa !146
  ret i64 %2, !dbg !1780
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i64 @hwloc_bitmap_to_ith_ulong(ptr noundef %set, i32 noundef %i) #8 !dbg !1781 {
entry:
  %set.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1785, metadata !DIExpression()), !dbg !1787
  store i32 %i, ptr %i.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1786, metadata !DIExpression()), !dbg !1788
  %0 = load i32, ptr %i.addr, align 4, !dbg !1789, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1789, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !1789
  %2 = load i32, ptr %ulongs_count, align 8, !dbg !1789, !tbaa !123
  %cmp = icmp ult i32 %0, %2, !dbg !1789
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1789

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1789, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !1789
  %4 = load ptr, ptr %ulongs, align 8, !dbg !1789, !tbaa !134
  %5 = load i32, ptr %i.addr, align 4, !dbg !1789, !tbaa !295
  %idxprom = zext i32 %5 to i64, !dbg !1789
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !1789
  %6 = load i64, ptr %arrayidx, align 8, !dbg !1789, !tbaa !146
  br label %cond.end, !dbg !1789

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %set.addr, align 8, !dbg !1789, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %7, i32 0, i32 3, !dbg !1789
  %8 = load i32, ptr %infinite, align 8, !dbg !1789, !tbaa !151
  %tobool = icmp ne i32 %8, 0, !dbg !1789
  %9 = zext i1 %tobool to i64, !dbg !1789
  %cond = select i1 %tobool, i64 -1, i64 0, !dbg !1789
  br label %cond.end, !dbg !1789

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i64 [ %6, %cond.true ], [ %cond, %cond.false ], !dbg !1789
  ret i64 %cond1, !dbg !1790
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_only(ptr noundef %set, i32 noundef %cpu) #0 !dbg !1791 {
entry:
  %set.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %index_ = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1793, metadata !DIExpression()), !dbg !1796
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1794, metadata !DIExpression()), !dbg !1797
  call void @llvm.lifetime.start.p0(i64 4, ptr %index_) #12, !dbg !1798
  tail call void @llvm.dbg.declare(metadata ptr %index_, metadata !1795, metadata !DIExpression()), !dbg !1799
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1800, !tbaa !295
  %div = udiv i32 %0, 64, !dbg !1800
  store i32 %div, ptr %index_, align 4, !dbg !1799, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1801, !tbaa !112
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1801, !tbaa !295
  %div1 = udiv i32 %2, 64, !dbg !1801
  %add = add i32 %div1, 1, !dbg !1801
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %1, i32 noundef %add), !dbg !1801
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1802, !tbaa !112
  call void @hwloc_bitmap__zero(ptr noundef %3), !dbg !1803
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !1804, !tbaa !295
  %rem = urem i32 %4, 64, !dbg !1804
  %sh_prom = zext i32 %rem to i64, !dbg !1804
  %shl = shl i64 1, %sh_prom, !dbg !1804
  %5 = load ptr, ptr %set.addr, align 8, !dbg !1805, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !1806
  %6 = load ptr, ptr %ulongs, align 8, !dbg !1806, !tbaa !134
  %7 = load i32, ptr %index_, align 4, !dbg !1807, !tbaa !295
  %idxprom = zext i32 %7 to i64, !dbg !1805
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom, !dbg !1805
  %8 = load i64, ptr %arrayidx, align 8, !dbg !1808, !tbaa !146
  %or = or i64 %8, %shl, !dbg !1808
  store i64 %or, ptr %arrayidx, align 8, !dbg !1808, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 4, ptr %index_) #12, !dbg !1809
  ret void, !dbg !1809
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_allbut(ptr noundef %set, i32 noundef %cpu) #0 !dbg !1810 {
entry:
  %set.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %index_ = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1812, metadata !DIExpression()), !dbg !1815
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1813, metadata !DIExpression()), !dbg !1816
  call void @llvm.lifetime.start.p0(i64 4, ptr %index_) #12, !dbg !1817
  tail call void @llvm.dbg.declare(metadata ptr %index_, metadata !1814, metadata !DIExpression()), !dbg !1818
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1819, !tbaa !295
  %div = udiv i32 %0, 64, !dbg !1819
  store i32 %div, ptr %index_, align 4, !dbg !1818, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1820, !tbaa !112
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !1820, !tbaa !295
  %div1 = udiv i32 %2, 64, !dbg !1820
  %add = add i32 %div1, 1, !dbg !1820
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %1, i32 noundef %add), !dbg !1820
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1821, !tbaa !112
  call void @hwloc_bitmap__fill(ptr noundef %3), !dbg !1822
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !1823, !tbaa !295
  %rem = urem i32 %4, 64, !dbg !1823
  %sh_prom = zext i32 %rem to i64, !dbg !1823
  %shl = shl i64 1, %sh_prom, !dbg !1823
  %not = xor i64 %shl, -1, !dbg !1824
  %5 = load ptr, ptr %set.addr, align 8, !dbg !1825, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !1826
  %6 = load ptr, ptr %ulongs, align 8, !dbg !1826, !tbaa !134
  %7 = load i32, ptr %index_, align 4, !dbg !1827, !tbaa !295
  %idxprom = zext i32 %7 to i64, !dbg !1825
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom, !dbg !1825
  %8 = load i64, ptr %arrayidx, align 8, !dbg !1828, !tbaa !146
  %and = and i64 %8, %not, !dbg !1828
  store i64 %and, ptr %arrayidx, align 8, !dbg !1828, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 4, ptr %index_) #12, !dbg !1829
  ret void, !dbg !1829
}

; Function Attrs: nounwind uwtable
define internal void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %set, i32 noundef %needed_count) #0 !dbg !1830 {
entry:
  %set.addr = alloca ptr, align 8
  %needed_count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1832, metadata !DIExpression()), !dbg !1835
  store i32 %needed_count, ptr %needed_count.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %needed_count.addr, metadata !1833, metadata !DIExpression()), !dbg !1836
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1837
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1834, metadata !DIExpression()), !dbg !1838
  %0 = load i32, ptr %needed_count.addr, align 4, !dbg !1839, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1841, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !1842
  %2 = load i32, ptr %ulongs_count, align 8, !dbg !1842, !tbaa !123
  %cmp = icmp ule i32 %0, %2, !dbg !1843
  br i1 %cmp, label %if.then, label %if.end, !dbg !1844

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1845

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1846, !tbaa !112
  %4 = load i32, ptr %needed_count.addr, align 4, !dbg !1847, !tbaa !295
  call void @hwloc_bitmap_enlarge_by_ulongs(ptr noundef %3, i32 noundef %4), !dbg !1848
  %5 = load ptr, ptr %set.addr, align 8, !dbg !1849, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 0, !dbg !1851
  %6 = load i32, ptr %ulongs_count1, align 8, !dbg !1851, !tbaa !123
  store i32 %6, ptr %i, align 4, !dbg !1852, !tbaa !295
  br label %for.cond, !dbg !1853

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !1854, !tbaa !295
  %8 = load i32, ptr %needed_count.addr, align 4, !dbg !1856, !tbaa !295
  %cmp2 = icmp ult i32 %7, %8, !dbg !1857
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1858

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %set.addr, align 8, !dbg !1859, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %9, i32 0, i32 3, !dbg !1860
  %10 = load i32, ptr %infinite, align 8, !dbg !1860, !tbaa !151
  %tobool = icmp ne i32 %10, 0, !dbg !1859
  %11 = zext i1 %tobool to i64, !dbg !1859
  %cond = select i1 %tobool, i64 -1, i64 0, !dbg !1859
  %12 = load ptr, ptr %set.addr, align 8, !dbg !1861, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %12, i32 0, i32 2, !dbg !1862
  %13 = load ptr, ptr %ulongs, align 8, !dbg !1862, !tbaa !134
  %14 = load i32, ptr %i, align 4, !dbg !1863, !tbaa !295
  %idxprom = zext i32 %14 to i64, !dbg !1861
  %arrayidx = getelementptr inbounds i64, ptr %13, i64 %idxprom, !dbg !1861
  store i64 %cond, ptr %arrayidx, align 8, !dbg !1864, !tbaa !146
  br label %for.inc, !dbg !1861

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !dbg !1865, !tbaa !295
  %inc = add i32 %15, 1, !dbg !1865
  store i32 %inc, ptr %i, align 4, !dbg !1865, !tbaa !295
  br label %for.cond, !dbg !1866, !llvm.loop !1867

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %needed_count.addr, align 4, !dbg !1869, !tbaa !295
  %17 = load ptr, ptr %set.addr, align 8, !dbg !1870, !tbaa !112
  %ulongs_count3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %17, i32 0, i32 0, !dbg !1871
  store i32 %16, ptr %ulongs_count3, align 8, !dbg !1872, !tbaa !123
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1873
  br label %cleanup, !dbg !1873

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1873
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1873

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_set_ith_ulong(ptr noundef %set, i32 noundef %i, i64 noundef %mask) #0 !dbg !1874 {
entry:
  %set.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %mask.addr = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1876, metadata !DIExpression()), !dbg !1879
  store i32 %i, ptr %i.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1877, metadata !DIExpression()), !dbg !1880
  store i64 %mask, ptr %mask.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1878, metadata !DIExpression()), !dbg !1881
  %0 = load ptr, ptr %set.addr, align 8, !dbg !1882, !tbaa !112
  %1 = load i32, ptr %i.addr, align 4, !dbg !1883, !tbaa !295
  %add = add i32 %1, 1, !dbg !1884
  call void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %0, i32 noundef %add), !dbg !1885
  %2 = load i64, ptr %mask.addr, align 8, !dbg !1886, !tbaa !146
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1887, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !1888
  %4 = load ptr, ptr %ulongs, align 8, !dbg !1888, !tbaa !134
  %5 = load i32, ptr %i.addr, align 4, !dbg !1889, !tbaa !295
  %idxprom = zext i32 %5 to i64, !dbg !1887
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !1887
  store i64 %2, ptr %arrayidx, align 8, !dbg !1890, !tbaa !146
  ret void, !dbg !1891
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_clr(ptr noundef %set, i32 noundef %cpu) #0 !dbg !1892 {
entry:
  %set.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %index_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1894, metadata !DIExpression()), !dbg !1897
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1895, metadata !DIExpression()), !dbg !1898
  call void @llvm.lifetime.start.p0(i64 4, ptr %index_) #12, !dbg !1899
  tail call void @llvm.dbg.declare(metadata ptr %index_, metadata !1896, metadata !DIExpression()), !dbg !1900
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1901, !tbaa !295
  %div = udiv i32 %0, 64, !dbg !1901
  store i32 %div, ptr %index_, align 4, !dbg !1900, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !1902, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 3, !dbg !1904
  %2 = load i32, ptr %infinite, align 8, !dbg !1904, !tbaa !151
  %tobool = icmp ne i32 %2, 0, !dbg !1902
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1905

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !1906, !tbaa !295
  %4 = load ptr, ptr %set.addr, align 8, !dbg !1907, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 0, !dbg !1908
  %5 = load i32, ptr %ulongs_count, align 8, !dbg !1908, !tbaa !123
  %mul = mul i32 %5, 64, !dbg !1909
  %cmp = icmp uge i32 %3, %mul, !dbg !1910
  br i1 %cmp, label %if.then, label %if.end, !dbg !1911

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1912

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %set.addr, align 8, !dbg !1913, !tbaa !112
  %7 = load i32, ptr %cpu.addr, align 4, !dbg !1913, !tbaa !295
  %div1 = udiv i32 %7, 64, !dbg !1913
  %add = add i32 %div1, 1, !dbg !1913
  call void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %6, i32 noundef %add), !dbg !1913
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !1914, !tbaa !295
  %rem = urem i32 %8, 64, !dbg !1914
  %sh_prom = zext i32 %rem to i64, !dbg !1914
  %shl = shl i64 1, %sh_prom, !dbg !1914
  %not = xor i64 %shl, -1, !dbg !1915
  %9 = load ptr, ptr %set.addr, align 8, !dbg !1916, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %9, i32 0, i32 2, !dbg !1917
  %10 = load ptr, ptr %ulongs, align 8, !dbg !1917, !tbaa !134
  %11 = load i32, ptr %index_, align 4, !dbg !1918, !tbaa !295
  %idxprom = zext i32 %11 to i64, !dbg !1916
  %arrayidx = getelementptr inbounds i64, ptr %10, i64 %idxprom, !dbg !1916
  %12 = load i64, ptr %arrayidx, align 8, !dbg !1919, !tbaa !146
  %and = and i64 %12, %not, !dbg !1919
  store i64 %and, ptr %arrayidx, align 8, !dbg !1919, !tbaa !146
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1920
  br label %cleanup, !dbg !1920

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index_) #12, !dbg !1920
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1920

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_clr_range(ptr noundef %set, i32 noundef %begincpu, i32 noundef %_endcpu) #0 !dbg !1921 {
entry:
  %set.addr = alloca ptr, align 8
  %begincpu.addr = alloca i32, align 4
  %_endcpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %beginset = alloca i32, align 4
  %endset = alloca i32, align 4
  %endcpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !1923, metadata !DIExpression()), !dbg !1930
  store i32 %begincpu, ptr %begincpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %begincpu.addr, metadata !1924, metadata !DIExpression()), !dbg !1931
  store i32 %_endcpu, ptr %_endcpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %_endcpu.addr, metadata !1925, metadata !DIExpression()), !dbg !1932
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1933
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1926, metadata !DIExpression()), !dbg !1934
  call void @llvm.lifetime.start.p0(i64 4, ptr %beginset) #12, !dbg !1935
  tail call void @llvm.dbg.declare(metadata ptr %beginset, metadata !1927, metadata !DIExpression()), !dbg !1936
  call void @llvm.lifetime.start.p0(i64 4, ptr %endset) #12, !dbg !1935
  tail call void @llvm.dbg.declare(metadata ptr %endset, metadata !1928, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.start.p0(i64 4, ptr %endcpu) #12, !dbg !1938
  tail call void @llvm.dbg.declare(metadata ptr %endcpu, metadata !1929, metadata !DIExpression()), !dbg !1939
  %0 = load i32, ptr %_endcpu.addr, align 4, !dbg !1940, !tbaa !295
  store i32 %0, ptr %endcpu, align 4, !dbg !1939, !tbaa !295
  %1 = load i32, ptr %endcpu, align 4, !dbg !1941, !tbaa !295
  %2 = load i32, ptr %begincpu.addr, align 4, !dbg !1943, !tbaa !295
  %cmp = icmp ult i32 %1, %2, !dbg !1944
  br i1 %cmp, label %if.then, label %if.end, !dbg !1945

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1946

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %set.addr, align 8, !dbg !1947, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 3, !dbg !1949
  %4 = load i32, ptr %infinite, align 8, !dbg !1949, !tbaa !151
  %tobool = icmp ne i32 %4, 0, !dbg !1947
  br i1 %tobool, label %if.end3, label %land.lhs.true, !dbg !1950

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr %begincpu.addr, align 4, !dbg !1951, !tbaa !295
  %6 = load ptr, ptr %set.addr, align 8, !dbg !1952, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %6, i32 0, i32 0, !dbg !1953
  %7 = load i32, ptr %ulongs_count, align 8, !dbg !1953, !tbaa !123
  %mul = mul i32 %7, 64, !dbg !1954
  %cmp1 = icmp uge i32 %5, %mul, !dbg !1955
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1956

if.then2:                                         ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1957

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, ptr %_endcpu.addr, align 4, !dbg !1958, !tbaa !295
  %cmp4 = icmp eq i32 %8, -1, !dbg !1960
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !1961

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %set.addr, align 8, !dbg !1962, !tbaa !112
  %10 = load i32, ptr %begincpu.addr, align 4, !dbg !1962, !tbaa !295
  %div = udiv i32 %10, 64, !dbg !1962
  %add = add i32 %div, 1, !dbg !1962
  call void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %9, i32 noundef %add), !dbg !1962
  %11 = load i32, ptr %begincpu.addr, align 4, !dbg !1964, !tbaa !295
  %div6 = udiv i32 %11, 64, !dbg !1964
  store i32 %div6, ptr %beginset, align 4, !dbg !1965, !tbaa !295
  %12 = load i32, ptr %begincpu.addr, align 4, !dbg !1966, !tbaa !295
  %rem = urem i32 %12, 64, !dbg !1966
  %sh_prom = zext i32 %rem to i64, !dbg !1966
  %shl = shl i64 -1, %sh_prom, !dbg !1966
  %not = xor i64 %shl, -1, !dbg !1967
  %13 = load ptr, ptr %set.addr, align 8, !dbg !1968, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %13, i32 0, i32 2, !dbg !1969
  %14 = load ptr, ptr %ulongs, align 8, !dbg !1969, !tbaa !134
  %15 = load i32, ptr %beginset, align 4, !dbg !1970, !tbaa !295
  %idxprom = zext i32 %15 to i64, !dbg !1968
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %idxprom, !dbg !1968
  %16 = load i64, ptr %arrayidx, align 8, !dbg !1971, !tbaa !146
  %and = and i64 %16, %not, !dbg !1971
  store i64 %and, ptr %arrayidx, align 8, !dbg !1971, !tbaa !146
  %17 = load i32, ptr %beginset, align 4, !dbg !1972, !tbaa !295
  %add7 = add i32 %17, 1, !dbg !1974
  store i32 %add7, ptr %i, align 4, !dbg !1975, !tbaa !295
  br label %for.cond, !dbg !1976

for.cond:                                         ; preds = %for.inc, %if.then5
  %18 = load i32, ptr %i, align 4, !dbg !1977, !tbaa !295
  %19 = load ptr, ptr %set.addr, align 8, !dbg !1979, !tbaa !112
  %ulongs_count8 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 0, !dbg !1980
  %20 = load i32, ptr %ulongs_count8, align 8, !dbg !1980, !tbaa !123
  %cmp9 = icmp ult i32 %18, %20, !dbg !1981
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1982

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %set.addr, align 8, !dbg !1983, !tbaa !112
  %ulongs10 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %21, i32 0, i32 2, !dbg !1984
  %22 = load ptr, ptr %ulongs10, align 8, !dbg !1984, !tbaa !134
  %23 = load i32, ptr %i, align 4, !dbg !1985, !tbaa !295
  %idxprom11 = zext i32 %23 to i64, !dbg !1983
  %arrayidx12 = getelementptr inbounds i64, ptr %22, i64 %idxprom11, !dbg !1983
  store i64 0, ptr %arrayidx12, align 8, !dbg !1986, !tbaa !146
  br label %for.inc, !dbg !1983

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !dbg !1987, !tbaa !295
  %inc = add i32 %24, 1, !dbg !1987
  store i32 %inc, ptr %i, align 4, !dbg !1987, !tbaa !295
  br label %for.cond, !dbg !1988, !llvm.loop !1989

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %set.addr, align 8, !dbg !1991, !tbaa !112
  %infinite13 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %25, i32 0, i32 3, !dbg !1992
  store i32 0, ptr %infinite13, align 8, !dbg !1993, !tbaa !151
  br label %if.end71, !dbg !1994

if.else:                                          ; preds = %if.end3
  %26 = load ptr, ptr %set.addr, align 8, !dbg !1995, !tbaa !112
  %infinite14 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %26, i32 0, i32 3, !dbg !1998
  %27 = load i32, ptr %infinite14, align 8, !dbg !1998, !tbaa !151
  %tobool15 = icmp ne i32 %27, 0, !dbg !1995
  br i1 %tobool15, label %if.end23, label %land.lhs.true16, !dbg !1999

land.lhs.true16:                                  ; preds = %if.else
  %28 = load i32, ptr %endcpu, align 4, !dbg !2000, !tbaa !295
  %29 = load ptr, ptr %set.addr, align 8, !dbg !2001, !tbaa !112
  %ulongs_count17 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %29, i32 0, i32 0, !dbg !2002
  %30 = load i32, ptr %ulongs_count17, align 8, !dbg !2002, !tbaa !123
  %mul18 = mul i32 %30, 64, !dbg !2003
  %cmp19 = icmp uge i32 %28, %mul18, !dbg !2004
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !2005

if.then20:                                        ; preds = %land.lhs.true16
  %31 = load ptr, ptr %set.addr, align 8, !dbg !2006, !tbaa !112
  %ulongs_count21 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 0, !dbg !2007
  %32 = load i32, ptr %ulongs_count21, align 8, !dbg !2007, !tbaa !123
  %mul22 = mul i32 %32, 64, !dbg !2008
  %sub = sub i32 %mul22, 1, !dbg !2009
  store i32 %sub, ptr %endcpu, align 4, !dbg !2010, !tbaa !295
  br label %if.end23, !dbg !2011

if.end23:                                         ; preds = %if.then20, %land.lhs.true16, %if.else
  %33 = load ptr, ptr %set.addr, align 8, !dbg !2012, !tbaa !112
  %34 = load i32, ptr %endcpu, align 4, !dbg !2012, !tbaa !295
  %div24 = udiv i32 %34, 64, !dbg !2012
  %add25 = add i32 %div24, 1, !dbg !2012
  call void @hwloc_bitmap_realloc_by_ulongs(ptr noundef %33, i32 noundef %add25), !dbg !2012
  %35 = load i32, ptr %begincpu.addr, align 4, !dbg !2013, !tbaa !295
  %div26 = udiv i32 %35, 64, !dbg !2013
  store i32 %div26, ptr %beginset, align 4, !dbg !2014, !tbaa !295
  %36 = load i32, ptr %endcpu, align 4, !dbg !2015, !tbaa !295
  %div27 = udiv i32 %36, 64, !dbg !2015
  store i32 %div27, ptr %endset, align 4, !dbg !2016, !tbaa !295
  %37 = load i32, ptr %beginset, align 4, !dbg !2017, !tbaa !295
  %38 = load i32, ptr %endset, align 4, !dbg !2019, !tbaa !295
  %cmp28 = icmp eq i32 %37, %38, !dbg !2020
  br i1 %cmp28, label %if.then29, label %if.else42, !dbg !2021

if.then29:                                        ; preds = %if.end23
  %39 = load i32, ptr %endcpu, align 4, !dbg !2022, !tbaa !295
  %rem30 = urem i32 %39, 64, !dbg !2022
  %sub31 = sub i32 63, %rem30, !dbg !2022
  %sh_prom32 = zext i32 %sub31 to i64, !dbg !2022
  %shr = lshr i64 -1, %sh_prom32, !dbg !2022
  %40 = load i32, ptr %begincpu.addr, align 4, !dbg !2022, !tbaa !295
  %rem33 = urem i32 %40, 64, !dbg !2022
  %sh_prom34 = zext i32 %rem33 to i64, !dbg !2022
  %shl35 = shl i64 -1, %sh_prom34, !dbg !2022
  %and36 = and i64 %shr, %shl35, !dbg !2022
  %not37 = xor i64 %and36, -1, !dbg !2024
  %41 = load ptr, ptr %set.addr, align 8, !dbg !2025, !tbaa !112
  %ulongs38 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %41, i32 0, i32 2, !dbg !2026
  %42 = load ptr, ptr %ulongs38, align 8, !dbg !2026, !tbaa !134
  %43 = load i32, ptr %beginset, align 4, !dbg !2027, !tbaa !295
  %idxprom39 = zext i32 %43 to i64, !dbg !2025
  %arrayidx40 = getelementptr inbounds i64, ptr %42, i64 %idxprom39, !dbg !2025
  %44 = load i64, ptr %arrayidx40, align 8, !dbg !2028, !tbaa !146
  %and41 = and i64 %44, %not37, !dbg !2028
  store i64 %and41, ptr %arrayidx40, align 8, !dbg !2028, !tbaa !146
  br label %if.end60, !dbg !2029

if.else42:                                        ; preds = %if.end23
  %45 = load i32, ptr %begincpu.addr, align 4, !dbg !2030, !tbaa !295
  %rem43 = urem i32 %45, 64, !dbg !2030
  %sh_prom44 = zext i32 %rem43 to i64, !dbg !2030
  %shl45 = shl i64 -1, %sh_prom44, !dbg !2030
  %not46 = xor i64 %shl45, -1, !dbg !2032
  %46 = load ptr, ptr %set.addr, align 8, !dbg !2033, !tbaa !112
  %ulongs47 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %46, i32 0, i32 2, !dbg !2034
  %47 = load ptr, ptr %ulongs47, align 8, !dbg !2034, !tbaa !134
  %48 = load i32, ptr %beginset, align 4, !dbg !2035, !tbaa !295
  %idxprom48 = zext i32 %48 to i64, !dbg !2033
  %arrayidx49 = getelementptr inbounds i64, ptr %47, i64 %idxprom48, !dbg !2033
  %49 = load i64, ptr %arrayidx49, align 8, !dbg !2036, !tbaa !146
  %and50 = and i64 %49, %not46, !dbg !2036
  store i64 %and50, ptr %arrayidx49, align 8, !dbg !2036, !tbaa !146
  %50 = load i32, ptr %endcpu, align 4, !dbg !2037, !tbaa !295
  %rem51 = urem i32 %50, 64, !dbg !2037
  %sub52 = sub i32 63, %rem51, !dbg !2037
  %sh_prom53 = zext i32 %sub52 to i64, !dbg !2037
  %shr54 = lshr i64 -1, %sh_prom53, !dbg !2037
  %not55 = xor i64 %shr54, -1, !dbg !2038
  %51 = load ptr, ptr %set.addr, align 8, !dbg !2039, !tbaa !112
  %ulongs56 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %51, i32 0, i32 2, !dbg !2040
  %52 = load ptr, ptr %ulongs56, align 8, !dbg !2040, !tbaa !134
  %53 = load i32, ptr %endset, align 4, !dbg !2041, !tbaa !295
  %idxprom57 = zext i32 %53 to i64, !dbg !2039
  %arrayidx58 = getelementptr inbounds i64, ptr %52, i64 %idxprom57, !dbg !2039
  %54 = load i64, ptr %arrayidx58, align 8, !dbg !2042, !tbaa !146
  %and59 = and i64 %54, %not55, !dbg !2042
  store i64 %and59, ptr %arrayidx58, align 8, !dbg !2042, !tbaa !146
  br label %if.end60

if.end60:                                         ; preds = %if.else42, %if.then29
  %55 = load i32, ptr %beginset, align 4, !dbg !2043, !tbaa !295
  %add61 = add i32 %55, 1, !dbg !2045
  store i32 %add61, ptr %i, align 4, !dbg !2046, !tbaa !295
  br label %for.cond62, !dbg !2047

for.cond62:                                       ; preds = %for.inc68, %if.end60
  %56 = load i32, ptr %i, align 4, !dbg !2048, !tbaa !295
  %57 = load i32, ptr %endset, align 4, !dbg !2050, !tbaa !295
  %cmp63 = icmp ult i32 %56, %57, !dbg !2051
  br i1 %cmp63, label %for.body64, label %for.end70, !dbg !2052

for.body64:                                       ; preds = %for.cond62
  %58 = load ptr, ptr %set.addr, align 8, !dbg !2053, !tbaa !112
  %ulongs65 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %58, i32 0, i32 2, !dbg !2054
  %59 = load ptr, ptr %ulongs65, align 8, !dbg !2054, !tbaa !134
  %60 = load i32, ptr %i, align 4, !dbg !2055, !tbaa !295
  %idxprom66 = zext i32 %60 to i64, !dbg !2053
  %arrayidx67 = getelementptr inbounds i64, ptr %59, i64 %idxprom66, !dbg !2053
  store i64 0, ptr %arrayidx67, align 8, !dbg !2056, !tbaa !146
  br label %for.inc68, !dbg !2053

for.inc68:                                        ; preds = %for.body64
  %61 = load i32, ptr %i, align 4, !dbg !2057, !tbaa !295
  %inc69 = add i32 %61, 1, !dbg !2057
  store i32 %inc69, ptr %i, align 4, !dbg !2057, !tbaa !295
  br label %for.cond62, !dbg !2058, !llvm.loop !2059

for.end70:                                        ; preds = %for.cond62
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2061
  br label %cleanup, !dbg !2061

cleanup:                                          ; preds = %if.end71, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %endcpu) #12, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %endset) #12, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %beginset) #12, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2061
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2061

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_isset(ptr noundef %set, i32 noundef %cpu) #8 !dbg !2062 {
entry:
  %set.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %index_ = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2066, metadata !DIExpression()), !dbg !2069
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2067, metadata !DIExpression()), !dbg !2070
  call void @llvm.lifetime.start.p0(i64 4, ptr %index_) #12, !dbg !2071
  tail call void @llvm.dbg.declare(metadata ptr %index_, metadata !2068, metadata !DIExpression()), !dbg !2072
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2073, !tbaa !295
  %div = udiv i32 %0, 64, !dbg !2073
  store i32 %div, ptr %index_, align 4, !dbg !2072, !tbaa !295
  %1 = load i32, ptr %index_, align 4, !dbg !2074, !tbaa !295
  %2 = load ptr, ptr %set.addr, align 8, !dbg !2074, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !2074
  %3 = load i32, ptr %ulongs_count, align 8, !dbg !2074, !tbaa !123
  %cmp = icmp ult i32 %1, %3, !dbg !2074
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2074

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %set.addr, align 8, !dbg !2074, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 2, !dbg !2074
  %5 = load ptr, ptr %ulongs, align 8, !dbg !2074, !tbaa !134
  %6 = load i32, ptr %index_, align 4, !dbg !2074, !tbaa !295
  %idxprom = zext i32 %6 to i64, !dbg !2074
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom, !dbg !2074
  %7 = load i64, ptr %arrayidx, align 8, !dbg !2074, !tbaa !146
  br label %cond.end, !dbg !2074

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %set.addr, align 8, !dbg !2074, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %8, i32 0, i32 3, !dbg !2074
  %9 = load i32, ptr %infinite, align 8, !dbg !2074, !tbaa !151
  %tobool = icmp ne i32 %9, 0, !dbg !2074
  %10 = zext i1 %tobool to i64, !dbg !2074
  %cond = select i1 %tobool, i64 -1, i64 0, !dbg !2074
  br label %cond.end, !dbg !2074

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i64 [ %7, %cond.true ], [ %cond, %cond.false ], !dbg !2074
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !2075, !tbaa !295
  %rem = urem i32 %11, 64, !dbg !2075
  %sh_prom = zext i32 %rem to i64, !dbg !2075
  %shl = shl i64 1, %sh_prom, !dbg !2075
  %and = and i64 %cond1, %shl, !dbg !2076
  %cmp2 = icmp ne i64 %and, 0, !dbg !2077
  %conv = zext i1 %cmp2 to i32, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 4, ptr %index_) #12, !dbg !2078
  ret i32 %conv, !dbg !2079
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_iszero(ptr noundef %set) #8 !dbg !2080 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2087
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2085, metadata !DIExpression()), !dbg !2088
  %0 = load ptr, ptr %set.addr, align 8, !dbg !2089, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 3, !dbg !2091
  %1 = load i32, ptr %infinite, align 8, !dbg !2091, !tbaa !151
  %tobool = icmp ne i32 %1, 0, !dbg !2089
  br i1 %tobool, label %if.then, label %if.end, !dbg !2092

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2093

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2094, !tbaa !295
  br label %for.cond, !dbg !2096

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !2097, !tbaa !295
  %3 = load ptr, ptr %set.addr, align 8, !dbg !2099, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 0, !dbg !2100
  %4 = load i32, ptr %ulongs_count, align 8, !dbg !2100, !tbaa !123
  %cmp = icmp ult i32 %2, %4, !dbg !2101
  br i1 %cmp, label %for.body, label %for.end, !dbg !2102

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %set.addr, align 8, !dbg !2103, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !2105
  %6 = load ptr, ptr %ulongs, align 8, !dbg !2105, !tbaa !134
  %7 = load i32, ptr %i, align 4, !dbg !2106, !tbaa !295
  %idxprom = zext i32 %7 to i64, !dbg !2103
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom, !dbg !2103
  %8 = load i64, ptr %arrayidx, align 8, !dbg !2103, !tbaa !146
  %cmp1 = icmp ne i64 %8, 0, !dbg !2107
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2108

if.then2:                                         ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !2109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2109

if.end3:                                          ; preds = %for.body
  br label %for.inc, !dbg !2110

for.inc:                                          ; preds = %if.end3
  %9 = load i32, ptr %i, align 4, !dbg !2111, !tbaa !295
  %inc = add i32 %9, 1, !dbg !2111
  store i32 %inc, ptr %i, align 4, !dbg !2111, !tbaa !295
  br label %for.cond, !dbg !2112, !llvm.loop !2113

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4, !dbg !2115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2115

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2116
  %10 = load i32, ptr %retval, align 4, !dbg !2116
  ret i32 %10, !dbg !2116
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_isfull(ptr noundef %set) #8 !dbg !2117 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2119, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2122
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2120, metadata !DIExpression()), !dbg !2123
  %0 = load ptr, ptr %set.addr, align 8, !dbg !2124, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 3, !dbg !2126
  %1 = load i32, ptr %infinite, align 8, !dbg !2126, !tbaa !151
  %tobool = icmp ne i32 %1, 0, !dbg !2124
  br i1 %tobool, label %if.end, label %if.then, !dbg !2127

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2128

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2129, !tbaa !295
  br label %for.cond, !dbg !2131

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !2132, !tbaa !295
  %3 = load ptr, ptr %set.addr, align 8, !dbg !2134, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 0, !dbg !2135
  %4 = load i32, ptr %ulongs_count, align 8, !dbg !2135, !tbaa !123
  %cmp = icmp ult i32 %2, %4, !dbg !2136
  br i1 %cmp, label %for.body, label %for.end, !dbg !2137

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %set.addr, align 8, !dbg !2138, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !2140
  %6 = load ptr, ptr %ulongs, align 8, !dbg !2140, !tbaa !134
  %7 = load i32, ptr %i, align 4, !dbg !2141, !tbaa !295
  %idxprom = zext i32 %7 to i64, !dbg !2138
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom, !dbg !2138
  %8 = load i64, ptr %arrayidx, align 8, !dbg !2138, !tbaa !146
  %cmp1 = icmp ne i64 %8, -1, !dbg !2142
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2143

if.then2:                                         ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !2144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2144

if.end3:                                          ; preds = %for.body
  br label %for.inc, !dbg !2145

for.inc:                                          ; preds = %if.end3
  %9 = load i32, ptr %i, align 4, !dbg !2146, !tbaa !295
  %inc = add i32 %9, 1, !dbg !2146
  store i32 %inc, ptr %i, align 4, !dbg !2146, !tbaa !295
  br label %for.cond, !dbg !2147, !llvm.loop !2148

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4, !dbg !2150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2150

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2151
  %10 = load i32, ptr %retval, align 4, !dbg !2151
  ret i32 %10, !dbg !2151
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_isequal(ptr noundef %set1, ptr noundef %set2) #8 !dbg !2152 {
entry:
  %retval = alloca i32, align 4
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %w1 = alloca i64, align 8
  %w2 = alloca i64, align 8
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !2156, metadata !DIExpression()), !dbg !2166
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !2157, metadata !DIExpression()), !dbg !2167
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !2168
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !2158, metadata !DIExpression()), !dbg !2169
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !2170, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !2171
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !2171, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !2169, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !2172
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !2159, metadata !DIExpression()), !dbg !2173
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !2174, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !2175
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !2175, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !2173, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !2176
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2160, metadata !DIExpression()), !dbg !2177
  %4 = load i32, ptr %count1, align 4, !dbg !2178, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !2179, !tbaa !295
  %cmp = icmp ult i32 %4, %5, !dbg !2180
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2178

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !2181, !tbaa !295
  br label %cond.end, !dbg !2178

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !2182, !tbaa !295
  br label %cond.end, !dbg !2178

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !2178
  store i32 %cond, ptr %min_count, align 4, !dbg !2177, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2183
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2161, metadata !DIExpression()), !dbg !2184
  store i32 0, ptr %i, align 4, !dbg !2185, !tbaa !295
  br label %for.cond, !dbg !2187

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, ptr %i, align 4, !dbg !2188, !tbaa !295
  %9 = load i32, ptr %min_count, align 4, !dbg !2190, !tbaa !295
  %cmp2 = icmp ult i32 %8, %9, !dbg !2191
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2192

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %set1.addr, align 8, !dbg !2193, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %10, i32 0, i32 2, !dbg !2195
  %11 = load ptr, ptr %ulongs, align 8, !dbg !2195, !tbaa !134
  %12 = load i32, ptr %i, align 4, !dbg !2196, !tbaa !295
  %idxprom = zext i32 %12 to i64, !dbg !2193
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %idxprom, !dbg !2193
  %13 = load i64, ptr %arrayidx, align 8, !dbg !2193, !tbaa !146
  %14 = load ptr, ptr %set2.addr, align 8, !dbg !2197, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %14, i32 0, i32 2, !dbg !2198
  %15 = load ptr, ptr %ulongs3, align 8, !dbg !2198, !tbaa !134
  %16 = load i32, ptr %i, align 4, !dbg !2199, !tbaa !295
  %idxprom4 = zext i32 %16 to i64, !dbg !2197
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 %idxprom4, !dbg !2197
  %17 = load i64, ptr %arrayidx5, align 8, !dbg !2197, !tbaa !146
  %cmp6 = icmp ne i64 %13, %17, !dbg !2200
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2201

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !2202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2202

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2203

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !dbg !2204, !tbaa !295
  %inc = add i32 %18, 1, !dbg !2204
  store i32 %inc, ptr %i, align 4, !dbg !2204, !tbaa !295
  br label %for.cond, !dbg !2205, !llvm.loop !2206

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %count1, align 4, !dbg !2208, !tbaa !295
  %20 = load i32, ptr %count2, align 4, !dbg !2209, !tbaa !295
  %cmp7 = icmp ne i32 %19, %20, !dbg !2210
  br i1 %cmp7, label %if.then8, label %if.end38, !dbg !2211

if.then8:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %w1) #12, !dbg !2212
  tail call void @llvm.dbg.declare(metadata ptr %w1, metadata !2162, metadata !DIExpression()), !dbg !2213
  %21 = load ptr, ptr %set1.addr, align 8, !dbg !2214, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %21, i32 0, i32 3, !dbg !2215
  %22 = load i32, ptr %infinite, align 8, !dbg !2215, !tbaa !151
  %tobool = icmp ne i32 %22, 0, !dbg !2214
  %23 = zext i1 %tobool to i64, !dbg !2214
  %cond9 = select i1 %tobool, i64 -1, i64 0, !dbg !2214
  store i64 %cond9, ptr %w1, align 8, !dbg !2213, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %w2) #12, !dbg !2216
  tail call void @llvm.dbg.declare(metadata ptr %w2, metadata !2165, metadata !DIExpression()), !dbg !2217
  %24 = load ptr, ptr %set2.addr, align 8, !dbg !2218, !tbaa !112
  %infinite10 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %24, i32 0, i32 3, !dbg !2219
  %25 = load i32, ptr %infinite10, align 8, !dbg !2219, !tbaa !151
  %tobool11 = icmp ne i32 %25, 0, !dbg !2218
  %26 = zext i1 %tobool11 to i64, !dbg !2218
  %cond12 = select i1 %tobool11, i64 -1, i64 0, !dbg !2218
  store i64 %cond12, ptr %w2, align 8, !dbg !2217, !tbaa !146
  %27 = load i32, ptr %min_count, align 4, !dbg !2220, !tbaa !295
  store i32 %27, ptr %i, align 4, !dbg !2222, !tbaa !295
  br label %for.cond13, !dbg !2223

for.cond13:                                       ; preds = %for.inc22, %if.then8
  %28 = load i32, ptr %i, align 4, !dbg !2224, !tbaa !295
  %29 = load i32, ptr %count1, align 4, !dbg !2226, !tbaa !295
  %cmp14 = icmp ult i32 %28, %29, !dbg !2227
  br i1 %cmp14, label %for.body15, label %for.end24, !dbg !2228

for.body15:                                       ; preds = %for.cond13
  %30 = load ptr, ptr %set1.addr, align 8, !dbg !2229, !tbaa !112
  %ulongs16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %30, i32 0, i32 2, !dbg !2232
  %31 = load ptr, ptr %ulongs16, align 8, !dbg !2232, !tbaa !134
  %32 = load i32, ptr %i, align 4, !dbg !2233, !tbaa !295
  %idxprom17 = zext i32 %32 to i64, !dbg !2229
  %arrayidx18 = getelementptr inbounds i64, ptr %31, i64 %idxprom17, !dbg !2229
  %33 = load i64, ptr %arrayidx18, align 8, !dbg !2229, !tbaa !146
  %34 = load i64, ptr %w2, align 8, !dbg !2234, !tbaa !146
  %cmp19 = icmp ne i64 %33, %34, !dbg !2235
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !2236

if.then20:                                        ; preds = %for.body15
  store i32 0, ptr %retval, align 4, !dbg !2237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2237

if.end21:                                         ; preds = %for.body15
  br label %for.inc22, !dbg !2238

for.inc22:                                        ; preds = %if.end21
  %35 = load i32, ptr %i, align 4, !dbg !2239, !tbaa !295
  %inc23 = add i32 %35, 1, !dbg !2239
  store i32 %inc23, ptr %i, align 4, !dbg !2239, !tbaa !295
  br label %for.cond13, !dbg !2240, !llvm.loop !2241

for.end24:                                        ; preds = %for.cond13
  %36 = load i32, ptr %min_count, align 4, !dbg !2243, !tbaa !295
  store i32 %36, ptr %i, align 4, !dbg !2245, !tbaa !295
  br label %for.cond25, !dbg !2246

for.cond25:                                       ; preds = %for.inc34, %for.end24
  %37 = load i32, ptr %i, align 4, !dbg !2247, !tbaa !295
  %38 = load i32, ptr %count2, align 4, !dbg !2249, !tbaa !295
  %cmp26 = icmp ult i32 %37, %38, !dbg !2250
  br i1 %cmp26, label %for.body27, label %for.end36, !dbg !2251

for.body27:                                       ; preds = %for.cond25
  %39 = load ptr, ptr %set2.addr, align 8, !dbg !2252, !tbaa !112
  %ulongs28 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %39, i32 0, i32 2, !dbg !2255
  %40 = load ptr, ptr %ulongs28, align 8, !dbg !2255, !tbaa !134
  %41 = load i32, ptr %i, align 4, !dbg !2256, !tbaa !295
  %idxprom29 = zext i32 %41 to i64, !dbg !2252
  %arrayidx30 = getelementptr inbounds i64, ptr %40, i64 %idxprom29, !dbg !2252
  %42 = load i64, ptr %arrayidx30, align 8, !dbg !2252, !tbaa !146
  %43 = load i64, ptr %w1, align 8, !dbg !2257, !tbaa !146
  %cmp31 = icmp ne i64 %42, %43, !dbg !2258
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !2259

if.then32:                                        ; preds = %for.body27
  store i32 0, ptr %retval, align 4, !dbg !2260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2260

if.end33:                                         ; preds = %for.body27
  br label %for.inc34, !dbg !2261

for.inc34:                                        ; preds = %if.end33
  %44 = load i32, ptr %i, align 4, !dbg !2262, !tbaa !295
  %inc35 = add i32 %44, 1, !dbg !2262
  store i32 %inc35, ptr %i, align 4, !dbg !2262, !tbaa !295
  br label %for.cond25, !dbg !2263, !llvm.loop !2264

for.end36:                                        ; preds = %for.cond25
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2266
  br label %cleanup, !dbg !2266

cleanup:                                          ; preds = %for.end36, %if.then32, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %w2) #12, !dbg !2266
  call void @llvm.lifetime.end.p0(i64 8, ptr %w1) #12, !dbg !2266
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end38, !dbg !2267

if.end38:                                         ; preds = %cleanup.cont, %for.end
  %45 = load ptr, ptr %set1.addr, align 8, !dbg !2268, !tbaa !112
  %infinite39 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %45, i32 0, i32 3, !dbg !2270
  %46 = load i32, ptr %infinite39, align 8, !dbg !2270, !tbaa !151
  %47 = load ptr, ptr %set2.addr, align 8, !dbg !2271, !tbaa !112
  %infinite40 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %47, i32 0, i32 3, !dbg !2272
  %48 = load i32, ptr %infinite40, align 8, !dbg !2272, !tbaa !151
  %cmp41 = icmp ne i32 %46, %48, !dbg !2273
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !2274

if.then42:                                        ; preds = %if.end38
  store i32 0, ptr %retval, align 4, !dbg !2275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2275

if.end43:                                         ; preds = %if.end38
  store i32 1, ptr %retval, align 4, !dbg !2276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !2276

cleanup44:                                        ; preds = %if.end43, %if.then42, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !2277
  %49 = load i32, ptr %retval, align 4, !dbg !2277
  ret i32 %49, !dbg !2277
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_intersects(ptr noundef %set1, ptr noundef %set2) #8 !dbg !2278 {
entry:
  %retval = alloca i32, align 4
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !2280, metadata !DIExpression()), !dbg !2286
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !2281, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !2288
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !2282, metadata !DIExpression()), !dbg !2289
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !2290, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !2291
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !2291, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !2289, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !2292
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !2283, metadata !DIExpression()), !dbg !2293
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !2294, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !2295
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !2295, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !2293, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !2296
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2284, metadata !DIExpression()), !dbg !2297
  %4 = load i32, ptr %count1, align 4, !dbg !2298, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !2299, !tbaa !295
  %cmp = icmp ult i32 %4, %5, !dbg !2300
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2298

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !2301, !tbaa !295
  br label %cond.end, !dbg !2298

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !2302, !tbaa !295
  br label %cond.end, !dbg !2298

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !2298
  store i32 %cond, ptr %min_count, align 4, !dbg !2297, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2303
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2285, metadata !DIExpression()), !dbg !2304
  store i32 0, ptr %i, align 4, !dbg !2305, !tbaa !295
  br label %for.cond, !dbg !2307

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, ptr %i, align 4, !dbg !2308, !tbaa !295
  %9 = load i32, ptr %min_count, align 4, !dbg !2310, !tbaa !295
  %cmp2 = icmp ult i32 %8, %9, !dbg !2311
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2312

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %set1.addr, align 8, !dbg !2313, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %10, i32 0, i32 2, !dbg !2315
  %11 = load ptr, ptr %ulongs, align 8, !dbg !2315, !tbaa !134
  %12 = load i32, ptr %i, align 4, !dbg !2316, !tbaa !295
  %idxprom = zext i32 %12 to i64, !dbg !2313
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %idxprom, !dbg !2313
  %13 = load i64, ptr %arrayidx, align 8, !dbg !2313, !tbaa !146
  %14 = load ptr, ptr %set2.addr, align 8, !dbg !2317, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %14, i32 0, i32 2, !dbg !2318
  %15 = load ptr, ptr %ulongs3, align 8, !dbg !2318, !tbaa !134
  %16 = load i32, ptr %i, align 4, !dbg !2319, !tbaa !295
  %idxprom4 = zext i32 %16 to i64, !dbg !2317
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 %idxprom4, !dbg !2317
  %17 = load i64, ptr %arrayidx5, align 8, !dbg !2317, !tbaa !146
  %and = and i64 %13, %17, !dbg !2320
  %tobool = icmp ne i64 %and, 0, !dbg !2320
  br i1 %tobool, label %if.then, label %if.end, !dbg !2321

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !2322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2322

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2323

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !dbg !2324, !tbaa !295
  %inc = add i32 %18, 1, !dbg !2324
  store i32 %inc, ptr %i, align 4, !dbg !2324, !tbaa !295
  br label %for.cond, !dbg !2325, !llvm.loop !2326

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %count1, align 4, !dbg !2328, !tbaa !295
  %20 = load i32, ptr %count2, align 4, !dbg !2330, !tbaa !295
  %cmp6 = icmp ne i32 %19, %20, !dbg !2331
  br i1 %cmp6, label %if.then7, label %if.end41, !dbg !2332

if.then7:                                         ; preds = %for.end
  %21 = load ptr, ptr %set2.addr, align 8, !dbg !2333, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %21, i32 0, i32 3, !dbg !2336
  %22 = load i32, ptr %infinite, align 8, !dbg !2336, !tbaa !151
  %tobool8 = icmp ne i32 %22, 0, !dbg !2333
  br i1 %tobool8, label %if.then9, label %if.end23, !dbg !2337

if.then9:                                         ; preds = %if.then7
  %23 = load i32, ptr %min_count, align 4, !dbg !2338, !tbaa !295
  store i32 %23, ptr %i, align 4, !dbg !2341, !tbaa !295
  br label %for.cond10, !dbg !2342

for.cond10:                                       ; preds = %for.inc20, %if.then9
  %24 = load i32, ptr %i, align 4, !dbg !2343, !tbaa !295
  %25 = load ptr, ptr %set1.addr, align 8, !dbg !2345, !tbaa !112
  %ulongs_count11 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %25, i32 0, i32 0, !dbg !2346
  %26 = load i32, ptr %ulongs_count11, align 8, !dbg !2346, !tbaa !123
  %cmp12 = icmp ult i32 %24, %26, !dbg !2347
  br i1 %cmp12, label %for.body13, label %for.end22, !dbg !2348

for.body13:                                       ; preds = %for.cond10
  %27 = load ptr, ptr %set1.addr, align 8, !dbg !2349, !tbaa !112
  %ulongs14 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %27, i32 0, i32 2, !dbg !2351
  %28 = load ptr, ptr %ulongs14, align 8, !dbg !2351, !tbaa !134
  %29 = load i32, ptr %i, align 4, !dbg !2352, !tbaa !295
  %idxprom15 = zext i32 %29 to i64, !dbg !2349
  %arrayidx16 = getelementptr inbounds i64, ptr %28, i64 %idxprom15, !dbg !2349
  %30 = load i64, ptr %arrayidx16, align 8, !dbg !2349, !tbaa !146
  %tobool17 = icmp ne i64 %30, 0, !dbg !2349
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2353

if.then18:                                        ; preds = %for.body13
  store i32 1, ptr %retval, align 4, !dbg !2354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2354

if.end19:                                         ; preds = %for.body13
  br label %for.inc20, !dbg !2355

for.inc20:                                        ; preds = %if.end19
  %31 = load i32, ptr %i, align 4, !dbg !2356, !tbaa !295
  %inc21 = add i32 %31, 1, !dbg !2356
  store i32 %inc21, ptr %i, align 4, !dbg !2356, !tbaa !295
  br label %for.cond10, !dbg !2357, !llvm.loop !2358

for.end22:                                        ; preds = %for.cond10
  br label %if.end23, !dbg !2360

if.end23:                                         ; preds = %for.end22, %if.then7
  %32 = load ptr, ptr %set1.addr, align 8, !dbg !2361, !tbaa !112
  %infinite24 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %32, i32 0, i32 3, !dbg !2363
  %33 = load i32, ptr %infinite24, align 8, !dbg !2363, !tbaa !151
  %tobool25 = icmp ne i32 %33, 0, !dbg !2361
  br i1 %tobool25, label %if.then26, label %if.end40, !dbg !2364

if.then26:                                        ; preds = %if.end23
  %34 = load i32, ptr %min_count, align 4, !dbg !2365, !tbaa !295
  store i32 %34, ptr %i, align 4, !dbg !2368, !tbaa !295
  br label %for.cond27, !dbg !2369

for.cond27:                                       ; preds = %for.inc37, %if.then26
  %35 = load i32, ptr %i, align 4, !dbg !2370, !tbaa !295
  %36 = load ptr, ptr %set2.addr, align 8, !dbg !2372, !tbaa !112
  %ulongs_count28 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %36, i32 0, i32 0, !dbg !2373
  %37 = load i32, ptr %ulongs_count28, align 8, !dbg !2373, !tbaa !123
  %cmp29 = icmp ult i32 %35, %37, !dbg !2374
  br i1 %cmp29, label %for.body30, label %for.end39, !dbg !2375

for.body30:                                       ; preds = %for.cond27
  %38 = load ptr, ptr %set2.addr, align 8, !dbg !2376, !tbaa !112
  %ulongs31 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %38, i32 0, i32 2, !dbg !2378
  %39 = load ptr, ptr %ulongs31, align 8, !dbg !2378, !tbaa !134
  %40 = load i32, ptr %i, align 4, !dbg !2379, !tbaa !295
  %idxprom32 = zext i32 %40 to i64, !dbg !2376
  %arrayidx33 = getelementptr inbounds i64, ptr %39, i64 %idxprom32, !dbg !2376
  %41 = load i64, ptr %arrayidx33, align 8, !dbg !2376, !tbaa !146
  %tobool34 = icmp ne i64 %41, 0, !dbg !2376
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !2380

if.then35:                                        ; preds = %for.body30
  store i32 1, ptr %retval, align 4, !dbg !2381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2381

if.end36:                                         ; preds = %for.body30
  br label %for.inc37, !dbg !2382

for.inc37:                                        ; preds = %if.end36
  %42 = load i32, ptr %i, align 4, !dbg !2383, !tbaa !295
  %inc38 = add i32 %42, 1, !dbg !2383
  store i32 %inc38, ptr %i, align 4, !dbg !2383, !tbaa !295
  br label %for.cond27, !dbg !2384, !llvm.loop !2385

for.end39:                                        ; preds = %for.cond27
  br label %if.end40, !dbg !2387

if.end40:                                         ; preds = %for.end39, %if.end23
  br label %if.end41, !dbg !2388

if.end41:                                         ; preds = %if.end40, %for.end
  %43 = load ptr, ptr %set1.addr, align 8, !dbg !2389, !tbaa !112
  %infinite42 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %43, i32 0, i32 3, !dbg !2391
  %44 = load i32, ptr %infinite42, align 8, !dbg !2391, !tbaa !151
  %tobool43 = icmp ne i32 %44, 0, !dbg !2389
  br i1 %tobool43, label %land.lhs.true, label %if.end47, !dbg !2392

land.lhs.true:                                    ; preds = %if.end41
  %45 = load ptr, ptr %set2.addr, align 8, !dbg !2393, !tbaa !112
  %infinite44 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %45, i32 0, i32 3, !dbg !2394
  %46 = load i32, ptr %infinite44, align 8, !dbg !2394, !tbaa !151
  %tobool45 = icmp ne i32 %46, 0, !dbg !2393
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !2395

if.then46:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2396

if.end47:                                         ; preds = %land.lhs.true, %if.end41
  store i32 0, ptr %retval, align 4, !dbg !2397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2397

cleanup:                                          ; preds = %if.end47, %if.then46, %if.then35, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2398
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !2398
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !2398
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !2398
  %47 = load i32, ptr %retval, align 4, !dbg !2398
  ret i32 %47, !dbg !2398
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_isincluded(ptr noundef %sub_set, ptr noundef %super_set) #8 !dbg !2399 {
entry:
  %retval = alloca i32, align 4
  %sub_set.addr = alloca ptr, align 8
  %super_set.addr = alloca ptr, align 8
  %super_count = alloca i32, align 4
  %sub_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sub_set, ptr %sub_set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %sub_set.addr, metadata !2401, metadata !DIExpression()), !dbg !2407
  store ptr %super_set, ptr %super_set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %super_set.addr, metadata !2402, metadata !DIExpression()), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 4, ptr %super_count) #12, !dbg !2409
  tail call void @llvm.dbg.declare(metadata ptr %super_count, metadata !2403, metadata !DIExpression()), !dbg !2410
  %0 = load ptr, ptr %super_set.addr, align 8, !dbg !2411, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !2412
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !2412, !tbaa !123
  store i32 %1, ptr %super_count, align 4, !dbg !2410, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %sub_count) #12, !dbg !2413
  tail call void @llvm.dbg.declare(metadata ptr %sub_count, metadata !2404, metadata !DIExpression()), !dbg !2414
  %2 = load ptr, ptr %sub_set.addr, align 8, !dbg !2415, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !2416
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !2416, !tbaa !123
  store i32 %3, ptr %sub_count, align 4, !dbg !2414, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !2417
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2405, metadata !DIExpression()), !dbg !2418
  %4 = load i32, ptr %super_count, align 4, !dbg !2419, !tbaa !295
  %5 = load i32, ptr %sub_count, align 4, !dbg !2420, !tbaa !295
  %cmp = icmp ult i32 %4, %5, !dbg !2421
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2419

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %super_count, align 4, !dbg !2422, !tbaa !295
  br label %cond.end, !dbg !2419

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %sub_count, align 4, !dbg !2423, !tbaa !295
  br label %cond.end, !dbg !2419

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !2419
  store i32 %cond, ptr %min_count, align 4, !dbg !2418, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2424
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2406, metadata !DIExpression()), !dbg !2425
  store i32 0, ptr %i, align 4, !dbg !2426, !tbaa !295
  br label %for.cond, !dbg !2428

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, ptr %i, align 4, !dbg !2429, !tbaa !295
  %9 = load i32, ptr %min_count, align 4, !dbg !2431, !tbaa !295
  %cmp2 = icmp ult i32 %8, %9, !dbg !2432
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2433

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %super_set.addr, align 8, !dbg !2434, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %10, i32 0, i32 2, !dbg !2436
  %11 = load ptr, ptr %ulongs, align 8, !dbg !2436, !tbaa !134
  %12 = load i32, ptr %i, align 4, !dbg !2437, !tbaa !295
  %idxprom = zext i32 %12 to i64, !dbg !2434
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %idxprom, !dbg !2434
  %13 = load i64, ptr %arrayidx, align 8, !dbg !2434, !tbaa !146
  %14 = load ptr, ptr %super_set.addr, align 8, !dbg !2438, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %14, i32 0, i32 2, !dbg !2439
  %15 = load ptr, ptr %ulongs3, align 8, !dbg !2439, !tbaa !134
  %16 = load i32, ptr %i, align 4, !dbg !2440, !tbaa !295
  %idxprom4 = zext i32 %16 to i64, !dbg !2438
  %arrayidx5 = getelementptr inbounds i64, ptr %15, i64 %idxprom4, !dbg !2438
  %17 = load i64, ptr %arrayidx5, align 8, !dbg !2438, !tbaa !146
  %18 = load ptr, ptr %sub_set.addr, align 8, !dbg !2441, !tbaa !112
  %ulongs6 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %18, i32 0, i32 2, !dbg !2442
  %19 = load ptr, ptr %ulongs6, align 8, !dbg !2442, !tbaa !134
  %20 = load i32, ptr %i, align 4, !dbg !2443, !tbaa !295
  %idxprom7 = zext i32 %20 to i64, !dbg !2441
  %arrayidx8 = getelementptr inbounds i64, ptr %19, i64 %idxprom7, !dbg !2441
  %21 = load i64, ptr %arrayidx8, align 8, !dbg !2441, !tbaa !146
  %or = or i64 %17, %21, !dbg !2444
  %cmp9 = icmp ne i64 %13, %or, !dbg !2445
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2446

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !2447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2447

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2448

for.inc:                                          ; preds = %if.end
  %22 = load i32, ptr %i, align 4, !dbg !2449, !tbaa !295
  %inc = add i32 %22, 1, !dbg !2449
  store i32 %inc, ptr %i, align 4, !dbg !2449, !tbaa !295
  br label %for.cond, !dbg !2450, !llvm.loop !2451

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %super_count, align 4, !dbg !2453, !tbaa !295
  %24 = load i32, ptr %sub_count, align 4, !dbg !2455, !tbaa !295
  %cmp10 = icmp ne i32 %23, %24, !dbg !2456
  br i1 %cmp10, label %if.then11, label %if.end42, !dbg !2457

if.then11:                                        ; preds = %for.end
  %25 = load ptr, ptr %super_set.addr, align 8, !dbg !2458, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %25, i32 0, i32 3, !dbg !2461
  %26 = load i32, ptr %infinite, align 8, !dbg !2461, !tbaa !151
  %tobool = icmp ne i32 %26, 0, !dbg !2458
  br i1 %tobool, label %if.end25, label %if.then12, !dbg !2462

if.then12:                                        ; preds = %if.then11
  %27 = load i32, ptr %min_count, align 4, !dbg !2463, !tbaa !295
  store i32 %27, ptr %i, align 4, !dbg !2465, !tbaa !295
  br label %for.cond13, !dbg !2466

for.cond13:                                       ; preds = %for.inc22, %if.then12
  %28 = load i32, ptr %i, align 4, !dbg !2467, !tbaa !295
  %29 = load i32, ptr %sub_count, align 4, !dbg !2469, !tbaa !295
  %cmp14 = icmp ult i32 %28, %29, !dbg !2470
  br i1 %cmp14, label %for.body15, label %for.end24, !dbg !2471

for.body15:                                       ; preds = %for.cond13
  %30 = load ptr, ptr %sub_set.addr, align 8, !dbg !2472, !tbaa !112
  %ulongs16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %30, i32 0, i32 2, !dbg !2474
  %31 = load ptr, ptr %ulongs16, align 8, !dbg !2474, !tbaa !134
  %32 = load i32, ptr %i, align 4, !dbg !2475, !tbaa !295
  %idxprom17 = zext i32 %32 to i64, !dbg !2472
  %arrayidx18 = getelementptr inbounds i64, ptr %31, i64 %idxprom17, !dbg !2472
  %33 = load i64, ptr %arrayidx18, align 8, !dbg !2472, !tbaa !146
  %tobool19 = icmp ne i64 %33, 0, !dbg !2472
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2476

if.then20:                                        ; preds = %for.body15
  store i32 0, ptr %retval, align 4, !dbg !2477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2477

if.end21:                                         ; preds = %for.body15
  br label %for.inc22, !dbg !2478

for.inc22:                                        ; preds = %if.end21
  %34 = load i32, ptr %i, align 4, !dbg !2479, !tbaa !295
  %inc23 = add i32 %34, 1, !dbg !2479
  store i32 %inc23, ptr %i, align 4, !dbg !2479, !tbaa !295
  br label %for.cond13, !dbg !2480, !llvm.loop !2481

for.end24:                                        ; preds = %for.cond13
  br label %if.end25, !dbg !2482

if.end25:                                         ; preds = %for.end24, %if.then11
  %35 = load ptr, ptr %sub_set.addr, align 8, !dbg !2483, !tbaa !112
  %infinite26 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %35, i32 0, i32 3, !dbg !2485
  %36 = load i32, ptr %infinite26, align 8, !dbg !2485, !tbaa !151
  %tobool27 = icmp ne i32 %36, 0, !dbg !2483
  br i1 %tobool27, label %if.then28, label %if.end41, !dbg !2486

if.then28:                                        ; preds = %if.end25
  %37 = load i32, ptr %min_count, align 4, !dbg !2487, !tbaa !295
  store i32 %37, ptr %i, align 4, !dbg !2489, !tbaa !295
  br label %for.cond29, !dbg !2490

for.cond29:                                       ; preds = %for.inc38, %if.then28
  %38 = load i32, ptr %i, align 4, !dbg !2491, !tbaa !295
  %39 = load i32, ptr %super_count, align 4, !dbg !2493, !tbaa !295
  %cmp30 = icmp ult i32 %38, %39, !dbg !2494
  br i1 %cmp30, label %for.body31, label %for.end40, !dbg !2495

for.body31:                                       ; preds = %for.cond29
  %40 = load ptr, ptr %super_set.addr, align 8, !dbg !2496, !tbaa !112
  %ulongs32 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %40, i32 0, i32 2, !dbg !2498
  %41 = load ptr, ptr %ulongs32, align 8, !dbg !2498, !tbaa !134
  %42 = load i32, ptr %i, align 4, !dbg !2499, !tbaa !295
  %idxprom33 = zext i32 %42 to i64, !dbg !2496
  %arrayidx34 = getelementptr inbounds i64, ptr %41, i64 %idxprom33, !dbg !2496
  %43 = load i64, ptr %arrayidx34, align 8, !dbg !2496, !tbaa !146
  %cmp35 = icmp ne i64 %43, -1, !dbg !2500
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !2501

if.then36:                                        ; preds = %for.body31
  store i32 0, ptr %retval, align 4, !dbg !2502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2502

if.end37:                                         ; preds = %for.body31
  br label %for.inc38, !dbg !2503

for.inc38:                                        ; preds = %if.end37
  %44 = load i32, ptr %i, align 4, !dbg !2504, !tbaa !295
  %inc39 = add i32 %44, 1, !dbg !2504
  store i32 %inc39, ptr %i, align 4, !dbg !2504, !tbaa !295
  br label %for.cond29, !dbg !2505, !llvm.loop !2506

for.end40:                                        ; preds = %for.cond29
  br label %if.end41, !dbg !2507

if.end41:                                         ; preds = %for.end40, %if.end25
  br label %if.end42, !dbg !2508

if.end42:                                         ; preds = %if.end41, %for.end
  %45 = load ptr, ptr %sub_set.addr, align 8, !dbg !2509, !tbaa !112
  %infinite43 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %45, i32 0, i32 3, !dbg !2511
  %46 = load i32, ptr %infinite43, align 8, !dbg !2511, !tbaa !151
  %tobool44 = icmp ne i32 %46, 0, !dbg !2509
  br i1 %tobool44, label %land.lhs.true, label %if.end48, !dbg !2512

land.lhs.true:                                    ; preds = %if.end42
  %47 = load ptr, ptr %super_set.addr, align 8, !dbg !2513, !tbaa !112
  %infinite45 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %47, i32 0, i32 3, !dbg !2514
  %48 = load i32, ptr %infinite45, align 8, !dbg !2514, !tbaa !151
  %tobool46 = icmp ne i32 %48, 0, !dbg !2513
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !2515

if.then47:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !2516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2516

if.end48:                                         ; preds = %land.lhs.true, %if.end42
  store i32 1, ptr %retval, align 4, !dbg !2517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2517

cleanup:                                          ; preds = %if.end48, %if.then47, %if.then36, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2518
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !2518
  call void @llvm.lifetime.end.p0(i64 4, ptr %sub_count) #12, !dbg !2518
  call void @llvm.lifetime.end.p0(i64 4, ptr %super_count) #12, !dbg !2518
  %49 = load i32, ptr %retval, align 4, !dbg !2518
  ret i32 %49, !dbg !2518
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_or(ptr noundef %res, ptr noundef %set1, ptr noundef %set2) #0 !dbg !2519 {
entry:
  %res.addr = alloca ptr, align 8
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2523, metadata !DIExpression()), !dbg !2531
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !2524, metadata !DIExpression()), !dbg !2532
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !2525, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !2534
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !2526, metadata !DIExpression()), !dbg !2535
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !2536, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !2537
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !2537, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !2535, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !2538
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !2527, metadata !DIExpression()), !dbg !2539
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !2540, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !2541
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !2541, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !2539, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #12, !dbg !2542
  tail call void @llvm.dbg.declare(metadata ptr %max_count, metadata !2528, metadata !DIExpression()), !dbg !2543
  %4 = load i32, ptr %count1, align 4, !dbg !2544, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !2545, !tbaa !295
  %cmp = icmp ugt i32 %4, %5, !dbg !2546
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2544

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !2547, !tbaa !295
  br label %cond.end, !dbg !2544

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !2548, !tbaa !295
  br label %cond.end, !dbg !2544

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !2544
  store i32 %cond, ptr %max_count, align 4, !dbg !2543, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !2549
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2529, metadata !DIExpression()), !dbg !2550
  %8 = load i32, ptr %count1, align 4, !dbg !2551, !tbaa !295
  %9 = load i32, ptr %count2, align 4, !dbg !2552, !tbaa !295
  %add = add i32 %8, %9, !dbg !2553
  %10 = load i32, ptr %max_count, align 4, !dbg !2554, !tbaa !295
  %sub = sub i32 %add, %10, !dbg !2555
  store i32 %sub, ptr %min_count, align 4, !dbg !2550, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2556
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2530, metadata !DIExpression()), !dbg !2557
  %11 = load ptr, ptr %res.addr, align 8, !dbg !2558, !tbaa !112
  %12 = load i32, ptr %max_count, align 4, !dbg !2559, !tbaa !295
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %11, i32 noundef %12), !dbg !2560
  store i32 0, ptr %i, align 4, !dbg !2561, !tbaa !295
  br label %for.cond, !dbg !2563

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, ptr %i, align 4, !dbg !2564, !tbaa !295
  %14 = load i32, ptr %min_count, align 4, !dbg !2566, !tbaa !295
  %cmp2 = icmp ult i32 %13, %14, !dbg !2567
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2568

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %set1.addr, align 8, !dbg !2569, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %15, i32 0, i32 2, !dbg !2570
  %16 = load ptr, ptr %ulongs, align 8, !dbg !2570, !tbaa !134
  %17 = load i32, ptr %i, align 4, !dbg !2571, !tbaa !295
  %idxprom = zext i32 %17 to i64, !dbg !2569
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %idxprom, !dbg !2569
  %18 = load i64, ptr %arrayidx, align 8, !dbg !2569, !tbaa !146
  %19 = load ptr, ptr %set2.addr, align 8, !dbg !2572, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 2, !dbg !2573
  %20 = load ptr, ptr %ulongs3, align 8, !dbg !2573, !tbaa !134
  %21 = load i32, ptr %i, align 4, !dbg !2574, !tbaa !295
  %idxprom4 = zext i32 %21 to i64, !dbg !2572
  %arrayidx5 = getelementptr inbounds i64, ptr %20, i64 %idxprom4, !dbg !2572
  %22 = load i64, ptr %arrayidx5, align 8, !dbg !2572, !tbaa !146
  %or = or i64 %18, %22, !dbg !2575
  %23 = load ptr, ptr %res.addr, align 8, !dbg !2576, !tbaa !112
  %ulongs6 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %23, i32 0, i32 2, !dbg !2577
  %24 = load ptr, ptr %ulongs6, align 8, !dbg !2577, !tbaa !134
  %25 = load i32, ptr %i, align 4, !dbg !2578, !tbaa !295
  %idxprom7 = zext i32 %25 to i64, !dbg !2576
  %arrayidx8 = getelementptr inbounds i64, ptr %24, i64 %idxprom7, !dbg !2576
  store i64 %or, ptr %arrayidx8, align 8, !dbg !2579, !tbaa !146
  br label %for.inc, !dbg !2576

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !2580, !tbaa !295
  %inc = add i32 %26, 1, !dbg !2580
  store i32 %inc, ptr %i, align 4, !dbg !2580, !tbaa !295
  br label %for.cond, !dbg !2581, !llvm.loop !2582

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %count1, align 4, !dbg !2584, !tbaa !295
  %28 = load i32, ptr %count2, align 4, !dbg !2586, !tbaa !295
  %cmp9 = icmp ne i32 %27, %28, !dbg !2587
  br i1 %cmp9, label %if.then, label %if.end46, !dbg !2588

if.then:                                          ; preds = %for.end
  %29 = load i32, ptr %min_count, align 4, !dbg !2589, !tbaa !295
  %30 = load i32, ptr %count1, align 4, !dbg !2592, !tbaa !295
  %cmp10 = icmp ult i32 %29, %30, !dbg !2593
  br i1 %cmp10, label %if.then11, label %if.else26, !dbg !2594

if.then11:                                        ; preds = %if.then
  %31 = load ptr, ptr %set2.addr, align 8, !dbg !2595, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 3, !dbg !2598
  %32 = load i32, ptr %infinite, align 8, !dbg !2598, !tbaa !151
  %tobool = icmp ne i32 %32, 0, !dbg !2595
  br i1 %tobool, label %if.then12, label %if.else, !dbg !2599

if.then12:                                        ; preds = %if.then11
  %33 = load i32, ptr %min_count, align 4, !dbg !2600, !tbaa !295
  %34 = load ptr, ptr %res.addr, align 8, !dbg !2602, !tbaa !112
  %ulongs_count13 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %34, i32 0, i32 0, !dbg !2603
  store i32 %33, ptr %ulongs_count13, align 8, !dbg !2604, !tbaa !123
  br label %if.end, !dbg !2605

if.else:                                          ; preds = %if.then11
  %35 = load i32, ptr %min_count, align 4, !dbg !2606, !tbaa !295
  store i32 %35, ptr %i, align 4, !dbg !2609, !tbaa !295
  br label %for.cond14, !dbg !2610

for.cond14:                                       ; preds = %for.inc23, %if.else
  %36 = load i32, ptr %i, align 4, !dbg !2611, !tbaa !295
  %37 = load i32, ptr %max_count, align 4, !dbg !2613, !tbaa !295
  %cmp15 = icmp ult i32 %36, %37, !dbg !2614
  br i1 %cmp15, label %for.body16, label %for.end25, !dbg !2615

for.body16:                                       ; preds = %for.cond14
  %38 = load ptr, ptr %set1.addr, align 8, !dbg !2616, !tbaa !112
  %ulongs17 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %38, i32 0, i32 2, !dbg !2617
  %39 = load ptr, ptr %ulongs17, align 8, !dbg !2617, !tbaa !134
  %40 = load i32, ptr %i, align 4, !dbg !2618, !tbaa !295
  %idxprom18 = zext i32 %40 to i64, !dbg !2616
  %arrayidx19 = getelementptr inbounds i64, ptr %39, i64 %idxprom18, !dbg !2616
  %41 = load i64, ptr %arrayidx19, align 8, !dbg !2616, !tbaa !146
  %42 = load ptr, ptr %res.addr, align 8, !dbg !2619, !tbaa !112
  %ulongs20 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %42, i32 0, i32 2, !dbg !2620
  %43 = load ptr, ptr %ulongs20, align 8, !dbg !2620, !tbaa !134
  %44 = load i32, ptr %i, align 4, !dbg !2621, !tbaa !295
  %idxprom21 = zext i32 %44 to i64, !dbg !2619
  %arrayidx22 = getelementptr inbounds i64, ptr %43, i64 %idxprom21, !dbg !2619
  store i64 %41, ptr %arrayidx22, align 8, !dbg !2622, !tbaa !146
  br label %for.inc23, !dbg !2619

for.inc23:                                        ; preds = %for.body16
  %45 = load i32, ptr %i, align 4, !dbg !2623, !tbaa !295
  %inc24 = add i32 %45, 1, !dbg !2623
  store i32 %inc24, ptr %i, align 4, !dbg !2623, !tbaa !295
  br label %for.cond14, !dbg !2624, !llvm.loop !2625

for.end25:                                        ; preds = %for.cond14
  br label %if.end

if.end:                                           ; preds = %for.end25, %if.then12
  br label %if.end45, !dbg !2627

if.else26:                                        ; preds = %if.then
  %46 = load ptr, ptr %set1.addr, align 8, !dbg !2628, !tbaa !112
  %infinite27 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %46, i32 0, i32 3, !dbg !2631
  %47 = load i32, ptr %infinite27, align 8, !dbg !2631, !tbaa !151
  %tobool28 = icmp ne i32 %47, 0, !dbg !2628
  br i1 %tobool28, label %if.then29, label %if.else31, !dbg !2632

if.then29:                                        ; preds = %if.else26
  %48 = load i32, ptr %min_count, align 4, !dbg !2633, !tbaa !295
  %49 = load ptr, ptr %res.addr, align 8, !dbg !2635, !tbaa !112
  %ulongs_count30 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %49, i32 0, i32 0, !dbg !2636
  store i32 %48, ptr %ulongs_count30, align 8, !dbg !2637, !tbaa !123
  br label %if.end44, !dbg !2638

if.else31:                                        ; preds = %if.else26
  %50 = load i32, ptr %min_count, align 4, !dbg !2639, !tbaa !295
  store i32 %50, ptr %i, align 4, !dbg !2642, !tbaa !295
  br label %for.cond32, !dbg !2643

for.cond32:                                       ; preds = %for.inc41, %if.else31
  %51 = load i32, ptr %i, align 4, !dbg !2644, !tbaa !295
  %52 = load i32, ptr %max_count, align 4, !dbg !2646, !tbaa !295
  %cmp33 = icmp ult i32 %51, %52, !dbg !2647
  br i1 %cmp33, label %for.body34, label %for.end43, !dbg !2648

for.body34:                                       ; preds = %for.cond32
  %53 = load ptr, ptr %set2.addr, align 8, !dbg !2649, !tbaa !112
  %ulongs35 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %53, i32 0, i32 2, !dbg !2650
  %54 = load ptr, ptr %ulongs35, align 8, !dbg !2650, !tbaa !134
  %55 = load i32, ptr %i, align 4, !dbg !2651, !tbaa !295
  %idxprom36 = zext i32 %55 to i64, !dbg !2649
  %arrayidx37 = getelementptr inbounds i64, ptr %54, i64 %idxprom36, !dbg !2649
  %56 = load i64, ptr %arrayidx37, align 8, !dbg !2649, !tbaa !146
  %57 = load ptr, ptr %res.addr, align 8, !dbg !2652, !tbaa !112
  %ulongs38 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %57, i32 0, i32 2, !dbg !2653
  %58 = load ptr, ptr %ulongs38, align 8, !dbg !2653, !tbaa !134
  %59 = load i32, ptr %i, align 4, !dbg !2654, !tbaa !295
  %idxprom39 = zext i32 %59 to i64, !dbg !2652
  %arrayidx40 = getelementptr inbounds i64, ptr %58, i64 %idxprom39, !dbg !2652
  store i64 %56, ptr %arrayidx40, align 8, !dbg !2655, !tbaa !146
  br label %for.inc41, !dbg !2652

for.inc41:                                        ; preds = %for.body34
  %60 = load i32, ptr %i, align 4, !dbg !2656, !tbaa !295
  %inc42 = add i32 %60, 1, !dbg !2656
  store i32 %inc42, ptr %i, align 4, !dbg !2656, !tbaa !295
  br label %for.cond32, !dbg !2657, !llvm.loop !2658

for.end43:                                        ; preds = %for.cond32
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.then29
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end
  br label %if.end46, !dbg !2660

if.end46:                                         ; preds = %if.end45, %for.end
  %61 = load ptr, ptr %set1.addr, align 8, !dbg !2661, !tbaa !112
  %infinite47 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %61, i32 0, i32 3, !dbg !2662
  %62 = load i32, ptr %infinite47, align 8, !dbg !2662, !tbaa !151
  %tobool48 = icmp ne i32 %62, 0, !dbg !2661
  br i1 %tobool48, label %lor.end, label %lor.rhs, !dbg !2663

lor.rhs:                                          ; preds = %if.end46
  %63 = load ptr, ptr %set2.addr, align 8, !dbg !2664, !tbaa !112
  %infinite49 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %63, i32 0, i32 3, !dbg !2665
  %64 = load i32, ptr %infinite49, align 8, !dbg !2665, !tbaa !151
  %tobool50 = icmp ne i32 %64, 0, !dbg !2663
  br label %lor.end, !dbg !2663

lor.end:                                          ; preds = %lor.rhs, %if.end46
  %65 = phi i1 [ true, %if.end46 ], [ %tobool50, %lor.rhs ]
  %lor.ext = zext i1 %65 to i32, !dbg !2663
  %66 = load ptr, ptr %res.addr, align 8, !dbg !2666, !tbaa !112
  %infinite51 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %66, i32 0, i32 3, !dbg !2667
  store i32 %lor.ext, ptr %infinite51, align 8, !dbg !2668, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2669
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !2669
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #12, !dbg !2669
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !2669
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !2669
  ret void, !dbg !2669
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_and(ptr noundef %res, ptr noundef %set1, ptr noundef %set2) #0 !dbg !2670 {
entry:
  %res.addr = alloca ptr, align 8
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2672, metadata !DIExpression()), !dbg !2680
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !2673, metadata !DIExpression()), !dbg !2681
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !2674, metadata !DIExpression()), !dbg !2682
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !2683
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !2675, metadata !DIExpression()), !dbg !2684
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !2685, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !2686
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !2686, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !2684, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !2687
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !2676, metadata !DIExpression()), !dbg !2688
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !2689, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !2690
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !2690, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !2688, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #12, !dbg !2691
  tail call void @llvm.dbg.declare(metadata ptr %max_count, metadata !2677, metadata !DIExpression()), !dbg !2692
  %4 = load i32, ptr %count1, align 4, !dbg !2693, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !2694, !tbaa !295
  %cmp = icmp ugt i32 %4, %5, !dbg !2695
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2693

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !2696, !tbaa !295
  br label %cond.end, !dbg !2693

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !2697, !tbaa !295
  br label %cond.end, !dbg !2693

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !2693
  store i32 %cond, ptr %max_count, align 4, !dbg !2692, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !2698
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2678, metadata !DIExpression()), !dbg !2699
  %8 = load i32, ptr %count1, align 4, !dbg !2700, !tbaa !295
  %9 = load i32, ptr %count2, align 4, !dbg !2701, !tbaa !295
  %add = add i32 %8, %9, !dbg !2702
  %10 = load i32, ptr %max_count, align 4, !dbg !2703, !tbaa !295
  %sub = sub i32 %add, %10, !dbg !2704
  store i32 %sub, ptr %min_count, align 4, !dbg !2699, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2705
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2679, metadata !DIExpression()), !dbg !2706
  %11 = load ptr, ptr %res.addr, align 8, !dbg !2707, !tbaa !112
  %12 = load i32, ptr %max_count, align 4, !dbg !2708, !tbaa !295
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %11, i32 noundef %12), !dbg !2709
  store i32 0, ptr %i, align 4, !dbg !2710, !tbaa !295
  br label %for.cond, !dbg !2712

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, ptr %i, align 4, !dbg !2713, !tbaa !295
  %14 = load i32, ptr %min_count, align 4, !dbg !2715, !tbaa !295
  %cmp2 = icmp ult i32 %13, %14, !dbg !2716
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2717

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %set1.addr, align 8, !dbg !2718, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %15, i32 0, i32 2, !dbg !2719
  %16 = load ptr, ptr %ulongs, align 8, !dbg !2719, !tbaa !134
  %17 = load i32, ptr %i, align 4, !dbg !2720, !tbaa !295
  %idxprom = zext i32 %17 to i64, !dbg !2718
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %idxprom, !dbg !2718
  %18 = load i64, ptr %arrayidx, align 8, !dbg !2718, !tbaa !146
  %19 = load ptr, ptr %set2.addr, align 8, !dbg !2721, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 2, !dbg !2722
  %20 = load ptr, ptr %ulongs3, align 8, !dbg !2722, !tbaa !134
  %21 = load i32, ptr %i, align 4, !dbg !2723, !tbaa !295
  %idxprom4 = zext i32 %21 to i64, !dbg !2721
  %arrayidx5 = getelementptr inbounds i64, ptr %20, i64 %idxprom4, !dbg !2721
  %22 = load i64, ptr %arrayidx5, align 8, !dbg !2721, !tbaa !146
  %and = and i64 %18, %22, !dbg !2724
  %23 = load ptr, ptr %res.addr, align 8, !dbg !2725, !tbaa !112
  %ulongs6 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %23, i32 0, i32 2, !dbg !2726
  %24 = load ptr, ptr %ulongs6, align 8, !dbg !2726, !tbaa !134
  %25 = load i32, ptr %i, align 4, !dbg !2727, !tbaa !295
  %idxprom7 = zext i32 %25 to i64, !dbg !2725
  %arrayidx8 = getelementptr inbounds i64, ptr %24, i64 %idxprom7, !dbg !2725
  store i64 %and, ptr %arrayidx8, align 8, !dbg !2728, !tbaa !146
  br label %for.inc, !dbg !2725

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !2729, !tbaa !295
  %inc = add i32 %26, 1, !dbg !2729
  store i32 %inc, ptr %i, align 4, !dbg !2729, !tbaa !295
  br label %for.cond, !dbg !2730, !llvm.loop !2731

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %count1, align 4, !dbg !2733, !tbaa !295
  %28 = load i32, ptr %count2, align 4, !dbg !2735, !tbaa !295
  %cmp9 = icmp ne i32 %27, %28, !dbg !2736
  br i1 %cmp9, label %if.then, label %if.end46, !dbg !2737

if.then:                                          ; preds = %for.end
  %29 = load i32, ptr %min_count, align 4, !dbg !2738, !tbaa !295
  %30 = load i32, ptr %count1, align 4, !dbg !2741, !tbaa !295
  %cmp10 = icmp ult i32 %29, %30, !dbg !2742
  br i1 %cmp10, label %if.then11, label %if.else26, !dbg !2743

if.then11:                                        ; preds = %if.then
  %31 = load ptr, ptr %set2.addr, align 8, !dbg !2744, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 3, !dbg !2747
  %32 = load i32, ptr %infinite, align 8, !dbg !2747, !tbaa !151
  %tobool = icmp ne i32 %32, 0, !dbg !2744
  br i1 %tobool, label %if.then12, label %if.else, !dbg !2748

if.then12:                                        ; preds = %if.then11
  %33 = load i32, ptr %min_count, align 4, !dbg !2749, !tbaa !295
  store i32 %33, ptr %i, align 4, !dbg !2752, !tbaa !295
  br label %for.cond13, !dbg !2753

for.cond13:                                       ; preds = %for.inc22, %if.then12
  %34 = load i32, ptr %i, align 4, !dbg !2754, !tbaa !295
  %35 = load i32, ptr %max_count, align 4, !dbg !2756, !tbaa !295
  %cmp14 = icmp ult i32 %34, %35, !dbg !2757
  br i1 %cmp14, label %for.body15, label %for.end24, !dbg !2758

for.body15:                                       ; preds = %for.cond13
  %36 = load ptr, ptr %set1.addr, align 8, !dbg !2759, !tbaa !112
  %ulongs16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %36, i32 0, i32 2, !dbg !2760
  %37 = load ptr, ptr %ulongs16, align 8, !dbg !2760, !tbaa !134
  %38 = load i32, ptr %i, align 4, !dbg !2761, !tbaa !295
  %idxprom17 = zext i32 %38 to i64, !dbg !2759
  %arrayidx18 = getelementptr inbounds i64, ptr %37, i64 %idxprom17, !dbg !2759
  %39 = load i64, ptr %arrayidx18, align 8, !dbg !2759, !tbaa !146
  %40 = load ptr, ptr %res.addr, align 8, !dbg !2762, !tbaa !112
  %ulongs19 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %40, i32 0, i32 2, !dbg !2763
  %41 = load ptr, ptr %ulongs19, align 8, !dbg !2763, !tbaa !134
  %42 = load i32, ptr %i, align 4, !dbg !2764, !tbaa !295
  %idxprom20 = zext i32 %42 to i64, !dbg !2762
  %arrayidx21 = getelementptr inbounds i64, ptr %41, i64 %idxprom20, !dbg !2762
  store i64 %39, ptr %arrayidx21, align 8, !dbg !2765, !tbaa !146
  br label %for.inc22, !dbg !2762

for.inc22:                                        ; preds = %for.body15
  %43 = load i32, ptr %i, align 4, !dbg !2766, !tbaa !295
  %inc23 = add i32 %43, 1, !dbg !2766
  store i32 %inc23, ptr %i, align 4, !dbg !2766, !tbaa !295
  br label %for.cond13, !dbg !2767, !llvm.loop !2768

for.end24:                                        ; preds = %for.cond13
  br label %if.end, !dbg !2770

if.else:                                          ; preds = %if.then11
  %44 = load i32, ptr %min_count, align 4, !dbg !2771, !tbaa !295
  %45 = load ptr, ptr %res.addr, align 8, !dbg !2773, !tbaa !112
  %ulongs_count25 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %45, i32 0, i32 0, !dbg !2774
  store i32 %44, ptr %ulongs_count25, align 8, !dbg !2775, !tbaa !123
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end24
  br label %if.end45, !dbg !2776

if.else26:                                        ; preds = %if.then
  %46 = load ptr, ptr %set1.addr, align 8, !dbg !2777, !tbaa !112
  %infinite27 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %46, i32 0, i32 3, !dbg !2780
  %47 = load i32, ptr %infinite27, align 8, !dbg !2780, !tbaa !151
  %tobool28 = icmp ne i32 %47, 0, !dbg !2777
  br i1 %tobool28, label %if.then29, label %if.else42, !dbg !2781

if.then29:                                        ; preds = %if.else26
  %48 = load i32, ptr %min_count, align 4, !dbg !2782, !tbaa !295
  store i32 %48, ptr %i, align 4, !dbg !2785, !tbaa !295
  br label %for.cond30, !dbg !2786

for.cond30:                                       ; preds = %for.inc39, %if.then29
  %49 = load i32, ptr %i, align 4, !dbg !2787, !tbaa !295
  %50 = load i32, ptr %max_count, align 4, !dbg !2789, !tbaa !295
  %cmp31 = icmp ult i32 %49, %50, !dbg !2790
  br i1 %cmp31, label %for.body32, label %for.end41, !dbg !2791

for.body32:                                       ; preds = %for.cond30
  %51 = load ptr, ptr %set2.addr, align 8, !dbg !2792, !tbaa !112
  %ulongs33 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %51, i32 0, i32 2, !dbg !2793
  %52 = load ptr, ptr %ulongs33, align 8, !dbg !2793, !tbaa !134
  %53 = load i32, ptr %i, align 4, !dbg !2794, !tbaa !295
  %idxprom34 = zext i32 %53 to i64, !dbg !2792
  %arrayidx35 = getelementptr inbounds i64, ptr %52, i64 %idxprom34, !dbg !2792
  %54 = load i64, ptr %arrayidx35, align 8, !dbg !2792, !tbaa !146
  %55 = load ptr, ptr %res.addr, align 8, !dbg !2795, !tbaa !112
  %ulongs36 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %55, i32 0, i32 2, !dbg !2796
  %56 = load ptr, ptr %ulongs36, align 8, !dbg !2796, !tbaa !134
  %57 = load i32, ptr %i, align 4, !dbg !2797, !tbaa !295
  %idxprom37 = zext i32 %57 to i64, !dbg !2795
  %arrayidx38 = getelementptr inbounds i64, ptr %56, i64 %idxprom37, !dbg !2795
  store i64 %54, ptr %arrayidx38, align 8, !dbg !2798, !tbaa !146
  br label %for.inc39, !dbg !2795

for.inc39:                                        ; preds = %for.body32
  %58 = load i32, ptr %i, align 4, !dbg !2799, !tbaa !295
  %inc40 = add i32 %58, 1, !dbg !2799
  store i32 %inc40, ptr %i, align 4, !dbg !2799, !tbaa !295
  br label %for.cond30, !dbg !2800, !llvm.loop !2801

for.end41:                                        ; preds = %for.cond30
  br label %if.end44, !dbg !2803

if.else42:                                        ; preds = %if.else26
  %59 = load i32, ptr %min_count, align 4, !dbg !2804, !tbaa !295
  %60 = load ptr, ptr %res.addr, align 8, !dbg !2806, !tbaa !112
  %ulongs_count43 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %60, i32 0, i32 0, !dbg !2807
  store i32 %59, ptr %ulongs_count43, align 8, !dbg !2808, !tbaa !123
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %for.end41
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end
  br label %if.end46, !dbg !2809

if.end46:                                         ; preds = %if.end45, %for.end
  %61 = load ptr, ptr %set1.addr, align 8, !dbg !2810, !tbaa !112
  %infinite47 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %61, i32 0, i32 3, !dbg !2811
  %62 = load i32, ptr %infinite47, align 8, !dbg !2811, !tbaa !151
  %tobool48 = icmp ne i32 %62, 0, !dbg !2810
  br i1 %tobool48, label %land.rhs, label %land.end, !dbg !2812

land.rhs:                                         ; preds = %if.end46
  %63 = load ptr, ptr %set2.addr, align 8, !dbg !2813, !tbaa !112
  %infinite49 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %63, i32 0, i32 3, !dbg !2814
  %64 = load i32, ptr %infinite49, align 8, !dbg !2814, !tbaa !151
  %tobool50 = icmp ne i32 %64, 0, !dbg !2812
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end46
  %65 = phi i1 [ false, %if.end46 ], [ %tobool50, %land.rhs ], !dbg !2815
  %land.ext = zext i1 %65 to i32, !dbg !2812
  %66 = load ptr, ptr %res.addr, align 8, !dbg !2816, !tbaa !112
  %infinite51 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %66, i32 0, i32 3, !dbg !2817
  store i32 %land.ext, ptr %infinite51, align 8, !dbg !2818, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #12, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !2819
  ret void, !dbg !2819
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_andnot(ptr noundef %res, ptr noundef %set1, ptr noundef %set2) #0 !dbg !2820 {
entry:
  %res.addr = alloca ptr, align 8
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2822, metadata !DIExpression()), !dbg !2830
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !2823, metadata !DIExpression()), !dbg !2831
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !2824, metadata !DIExpression()), !dbg !2832
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !2833
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !2825, metadata !DIExpression()), !dbg !2834
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !2835, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !2836
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !2836, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !2834, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !2837
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !2826, metadata !DIExpression()), !dbg !2838
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !2839, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !2840
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !2840, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !2838, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #12, !dbg !2841
  tail call void @llvm.dbg.declare(metadata ptr %max_count, metadata !2827, metadata !DIExpression()), !dbg !2842
  %4 = load i32, ptr %count1, align 4, !dbg !2843, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !2844, !tbaa !295
  %cmp = icmp ugt i32 %4, %5, !dbg !2845
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2843

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !2846, !tbaa !295
  br label %cond.end, !dbg !2843

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !2847, !tbaa !295
  br label %cond.end, !dbg !2843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !2843
  store i32 %cond, ptr %max_count, align 4, !dbg !2842, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !2848
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2828, metadata !DIExpression()), !dbg !2849
  %8 = load i32, ptr %count1, align 4, !dbg !2850, !tbaa !295
  %9 = load i32, ptr %count2, align 4, !dbg !2851, !tbaa !295
  %add = add i32 %8, %9, !dbg !2852
  %10 = load i32, ptr %max_count, align 4, !dbg !2853, !tbaa !295
  %sub = sub i32 %add, %10, !dbg !2854
  store i32 %sub, ptr %min_count, align 4, !dbg !2849, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !2855
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2829, metadata !DIExpression()), !dbg !2856
  %11 = load ptr, ptr %res.addr, align 8, !dbg !2857, !tbaa !112
  %12 = load i32, ptr %max_count, align 4, !dbg !2858, !tbaa !295
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %11, i32 noundef %12), !dbg !2859
  store i32 0, ptr %i, align 4, !dbg !2860, !tbaa !295
  br label %for.cond, !dbg !2862

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, ptr %i, align 4, !dbg !2863, !tbaa !295
  %14 = load i32, ptr %min_count, align 4, !dbg !2865, !tbaa !295
  %cmp2 = icmp ult i32 %13, %14, !dbg !2866
  br i1 %cmp2, label %for.body, label %for.end, !dbg !2867

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %set1.addr, align 8, !dbg !2868, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %15, i32 0, i32 2, !dbg !2869
  %16 = load ptr, ptr %ulongs, align 8, !dbg !2869, !tbaa !134
  %17 = load i32, ptr %i, align 4, !dbg !2870, !tbaa !295
  %idxprom = zext i32 %17 to i64, !dbg !2868
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %idxprom, !dbg !2868
  %18 = load i64, ptr %arrayidx, align 8, !dbg !2868, !tbaa !146
  %19 = load ptr, ptr %set2.addr, align 8, !dbg !2871, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 2, !dbg !2872
  %20 = load ptr, ptr %ulongs3, align 8, !dbg !2872, !tbaa !134
  %21 = load i32, ptr %i, align 4, !dbg !2873, !tbaa !295
  %idxprom4 = zext i32 %21 to i64, !dbg !2871
  %arrayidx5 = getelementptr inbounds i64, ptr %20, i64 %idxprom4, !dbg !2871
  %22 = load i64, ptr %arrayidx5, align 8, !dbg !2871, !tbaa !146
  %not = xor i64 %22, -1, !dbg !2874
  %and = and i64 %18, %not, !dbg !2875
  %23 = load ptr, ptr %res.addr, align 8, !dbg !2876, !tbaa !112
  %ulongs6 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %23, i32 0, i32 2, !dbg !2877
  %24 = load ptr, ptr %ulongs6, align 8, !dbg !2877, !tbaa !134
  %25 = load i32, ptr %i, align 4, !dbg !2878, !tbaa !295
  %idxprom7 = zext i32 %25 to i64, !dbg !2876
  %arrayidx8 = getelementptr inbounds i64, ptr %24, i64 %idxprom7, !dbg !2876
  store i64 %and, ptr %arrayidx8, align 8, !dbg !2879, !tbaa !146
  br label %for.inc, !dbg !2876

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !2880, !tbaa !295
  %inc = add i32 %26, 1, !dbg !2880
  store i32 %inc, ptr %i, align 4, !dbg !2880, !tbaa !295
  br label %for.cond, !dbg !2881, !llvm.loop !2882

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %count1, align 4, !dbg !2884, !tbaa !295
  %28 = load i32, ptr %count2, align 4, !dbg !2886, !tbaa !295
  %cmp9 = icmp ne i32 %27, %28, !dbg !2887
  br i1 %cmp9, label %if.then, label %if.end47, !dbg !2888

if.then:                                          ; preds = %for.end
  %29 = load i32, ptr %min_count, align 4, !dbg !2889, !tbaa !295
  %30 = load i32, ptr %count1, align 4, !dbg !2892, !tbaa !295
  %cmp10 = icmp ult i32 %29, %30, !dbg !2893
  br i1 %cmp10, label %if.then11, label %if.else26, !dbg !2894

if.then11:                                        ; preds = %if.then
  %31 = load ptr, ptr %set2.addr, align 8, !dbg !2895, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 3, !dbg !2898
  %32 = load i32, ptr %infinite, align 8, !dbg !2898, !tbaa !151
  %tobool = icmp ne i32 %32, 0, !dbg !2895
  br i1 %tobool, label %if.else, label %if.then12, !dbg !2899

if.then12:                                        ; preds = %if.then11
  %33 = load i32, ptr %min_count, align 4, !dbg !2900, !tbaa !295
  store i32 %33, ptr %i, align 4, !dbg !2903, !tbaa !295
  br label %for.cond13, !dbg !2904

for.cond13:                                       ; preds = %for.inc22, %if.then12
  %34 = load i32, ptr %i, align 4, !dbg !2905, !tbaa !295
  %35 = load i32, ptr %max_count, align 4, !dbg !2907, !tbaa !295
  %cmp14 = icmp ult i32 %34, %35, !dbg !2908
  br i1 %cmp14, label %for.body15, label %for.end24, !dbg !2909

for.body15:                                       ; preds = %for.cond13
  %36 = load ptr, ptr %set1.addr, align 8, !dbg !2910, !tbaa !112
  %ulongs16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %36, i32 0, i32 2, !dbg !2911
  %37 = load ptr, ptr %ulongs16, align 8, !dbg !2911, !tbaa !134
  %38 = load i32, ptr %i, align 4, !dbg !2912, !tbaa !295
  %idxprom17 = zext i32 %38 to i64, !dbg !2910
  %arrayidx18 = getelementptr inbounds i64, ptr %37, i64 %idxprom17, !dbg !2910
  %39 = load i64, ptr %arrayidx18, align 8, !dbg !2910, !tbaa !146
  %40 = load ptr, ptr %res.addr, align 8, !dbg !2913, !tbaa !112
  %ulongs19 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %40, i32 0, i32 2, !dbg !2914
  %41 = load ptr, ptr %ulongs19, align 8, !dbg !2914, !tbaa !134
  %42 = load i32, ptr %i, align 4, !dbg !2915, !tbaa !295
  %idxprom20 = zext i32 %42 to i64, !dbg !2913
  %arrayidx21 = getelementptr inbounds i64, ptr %41, i64 %idxprom20, !dbg !2913
  store i64 %39, ptr %arrayidx21, align 8, !dbg !2916, !tbaa !146
  br label %for.inc22, !dbg !2913

for.inc22:                                        ; preds = %for.body15
  %43 = load i32, ptr %i, align 4, !dbg !2917, !tbaa !295
  %inc23 = add i32 %43, 1, !dbg !2917
  store i32 %inc23, ptr %i, align 4, !dbg !2917, !tbaa !295
  br label %for.cond13, !dbg !2918, !llvm.loop !2919

for.end24:                                        ; preds = %for.cond13
  br label %if.end, !dbg !2921

if.else:                                          ; preds = %if.then11
  %44 = load i32, ptr %min_count, align 4, !dbg !2922, !tbaa !295
  %45 = load ptr, ptr %res.addr, align 8, !dbg !2924, !tbaa !112
  %ulongs_count25 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %45, i32 0, i32 0, !dbg !2925
  store i32 %44, ptr %ulongs_count25, align 8, !dbg !2926, !tbaa !123
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end24
  br label %if.end46, !dbg !2927

if.else26:                                        ; preds = %if.then
  %46 = load ptr, ptr %set1.addr, align 8, !dbg !2928, !tbaa !112
  %infinite27 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %46, i32 0, i32 3, !dbg !2931
  %47 = load i32, ptr %infinite27, align 8, !dbg !2931, !tbaa !151
  %tobool28 = icmp ne i32 %47, 0, !dbg !2928
  br i1 %tobool28, label %if.then29, label %if.else43, !dbg !2932

if.then29:                                        ; preds = %if.else26
  %48 = load i32, ptr %min_count, align 4, !dbg !2933, !tbaa !295
  store i32 %48, ptr %i, align 4, !dbg !2936, !tbaa !295
  br label %for.cond30, !dbg !2937

for.cond30:                                       ; preds = %for.inc40, %if.then29
  %49 = load i32, ptr %i, align 4, !dbg !2938, !tbaa !295
  %50 = load i32, ptr %max_count, align 4, !dbg !2940, !tbaa !295
  %cmp31 = icmp ult i32 %49, %50, !dbg !2941
  br i1 %cmp31, label %for.body32, label %for.end42, !dbg !2942

for.body32:                                       ; preds = %for.cond30
  %51 = load ptr, ptr %set2.addr, align 8, !dbg !2943, !tbaa !112
  %ulongs33 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %51, i32 0, i32 2, !dbg !2944
  %52 = load ptr, ptr %ulongs33, align 8, !dbg !2944, !tbaa !134
  %53 = load i32, ptr %i, align 4, !dbg !2945, !tbaa !295
  %idxprom34 = zext i32 %53 to i64, !dbg !2943
  %arrayidx35 = getelementptr inbounds i64, ptr %52, i64 %idxprom34, !dbg !2943
  %54 = load i64, ptr %arrayidx35, align 8, !dbg !2943, !tbaa !146
  %not36 = xor i64 %54, -1, !dbg !2946
  %55 = load ptr, ptr %res.addr, align 8, !dbg !2947, !tbaa !112
  %ulongs37 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %55, i32 0, i32 2, !dbg !2948
  %56 = load ptr, ptr %ulongs37, align 8, !dbg !2948, !tbaa !134
  %57 = load i32, ptr %i, align 4, !dbg !2949, !tbaa !295
  %idxprom38 = zext i32 %57 to i64, !dbg !2947
  %arrayidx39 = getelementptr inbounds i64, ptr %56, i64 %idxprom38, !dbg !2947
  store i64 %not36, ptr %arrayidx39, align 8, !dbg !2950, !tbaa !146
  br label %for.inc40, !dbg !2947

for.inc40:                                        ; preds = %for.body32
  %58 = load i32, ptr %i, align 4, !dbg !2951, !tbaa !295
  %inc41 = add i32 %58, 1, !dbg !2951
  store i32 %inc41, ptr %i, align 4, !dbg !2951, !tbaa !295
  br label %for.cond30, !dbg !2952, !llvm.loop !2953

for.end42:                                        ; preds = %for.cond30
  br label %if.end45, !dbg !2955

if.else43:                                        ; preds = %if.else26
  %59 = load i32, ptr %min_count, align 4, !dbg !2956, !tbaa !295
  %60 = load ptr, ptr %res.addr, align 8, !dbg !2958, !tbaa !112
  %ulongs_count44 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %60, i32 0, i32 0, !dbg !2959
  store i32 %59, ptr %ulongs_count44, align 8, !dbg !2960, !tbaa !123
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %for.end42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end
  br label %if.end47, !dbg !2961

if.end47:                                         ; preds = %if.end46, %for.end
  %61 = load ptr, ptr %set1.addr, align 8, !dbg !2962, !tbaa !112
  %infinite48 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %61, i32 0, i32 3, !dbg !2963
  %62 = load i32, ptr %infinite48, align 8, !dbg !2963, !tbaa !151
  %tobool49 = icmp ne i32 %62, 0, !dbg !2962
  br i1 %tobool49, label %land.rhs, label %land.end, !dbg !2964

land.rhs:                                         ; preds = %if.end47
  %63 = load ptr, ptr %set2.addr, align 8, !dbg !2965, !tbaa !112
  %infinite50 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %63, i32 0, i32 3, !dbg !2966
  %64 = load i32, ptr %infinite50, align 8, !dbg !2966, !tbaa !151
  %tobool51 = icmp ne i32 %64, 0, !dbg !2967
  %lnot = xor i1 %tobool51, true, !dbg !2967
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end47
  %65 = phi i1 [ false, %if.end47 ], [ %lnot, %land.rhs ], !dbg !2968
  %land.ext = zext i1 %65 to i32, !dbg !2964
  %66 = load ptr, ptr %res.addr, align 8, !dbg !2969, !tbaa !112
  %infinite52 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %66, i32 0, i32 3, !dbg !2970
  store i32 %land.ext, ptr %infinite52, align 8, !dbg !2971, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !2972
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !2972
  ret void, !dbg !2972
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_xor(ptr noundef %res, ptr noundef %set1, ptr noundef %set2) #0 !dbg !2973 {
entry:
  %res.addr = alloca ptr, align 8
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  %w2 = alloca i64, align 8
  %w1 = alloca i64, align 8
  store ptr %res, ptr %res.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2975, metadata !DIExpression()), !dbg !2990
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !2976, metadata !DIExpression()), !dbg !2991
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !2977, metadata !DIExpression()), !dbg !2992
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !2993
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !2978, metadata !DIExpression()), !dbg !2994
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !2995, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !2996
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !2996, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !2994, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !2997
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !2979, metadata !DIExpression()), !dbg !2998
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !2999, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !3000
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !3000, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !2998, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #12, !dbg !3001
  tail call void @llvm.dbg.declare(metadata ptr %max_count, metadata !2980, metadata !DIExpression()), !dbg !3002
  %4 = load i32, ptr %count1, align 4, !dbg !3003, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !3004, !tbaa !295
  %cmp = icmp ugt i32 %4, %5, !dbg !3005
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3003

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !3006, !tbaa !295
  br label %cond.end, !dbg !3003

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !3007, !tbaa !295
  br label %cond.end, !dbg !3003

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !3003
  store i32 %cond, ptr %max_count, align 4, !dbg !3002, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !3008
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !2981, metadata !DIExpression()), !dbg !3009
  %8 = load i32, ptr %count1, align 4, !dbg !3010, !tbaa !295
  %9 = load i32, ptr %count2, align 4, !dbg !3011, !tbaa !295
  %add = add i32 %8, %9, !dbg !3012
  %10 = load i32, ptr %max_count, align 4, !dbg !3013, !tbaa !295
  %sub = sub i32 %add, %10, !dbg !3014
  store i32 %sub, ptr %min_count, align 4, !dbg !3009, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3015
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2982, metadata !DIExpression()), !dbg !3016
  %11 = load ptr, ptr %res.addr, align 8, !dbg !3017, !tbaa !112
  %12 = load i32, ptr %max_count, align 4, !dbg !3018, !tbaa !295
  call void @hwloc_bitmap_reset_by_ulongs(ptr noundef %11, i32 noundef %12), !dbg !3019
  store i32 0, ptr %i, align 4, !dbg !3020, !tbaa !295
  br label %for.cond, !dbg !3022

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, ptr %i, align 4, !dbg !3023, !tbaa !295
  %14 = load i32, ptr %min_count, align 4, !dbg !3025, !tbaa !295
  %cmp2 = icmp ult i32 %13, %14, !dbg !3026
  br i1 %cmp2, label %for.body, label %for.end, !dbg !3027

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %set1.addr, align 8, !dbg !3028, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %15, i32 0, i32 2, !dbg !3029
  %16 = load ptr, ptr %ulongs, align 8, !dbg !3029, !tbaa !134
  %17 = load i32, ptr %i, align 4, !dbg !3030, !tbaa !295
  %idxprom = zext i32 %17 to i64, !dbg !3028
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %idxprom, !dbg !3028
  %18 = load i64, ptr %arrayidx, align 8, !dbg !3028, !tbaa !146
  %19 = load ptr, ptr %set2.addr, align 8, !dbg !3031, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %19, i32 0, i32 2, !dbg !3032
  %20 = load ptr, ptr %ulongs3, align 8, !dbg !3032, !tbaa !134
  %21 = load i32, ptr %i, align 4, !dbg !3033, !tbaa !295
  %idxprom4 = zext i32 %21 to i64, !dbg !3031
  %arrayidx5 = getelementptr inbounds i64, ptr %20, i64 %idxprom4, !dbg !3031
  %22 = load i64, ptr %arrayidx5, align 8, !dbg !3031, !tbaa !146
  %xor = xor i64 %18, %22, !dbg !3034
  %23 = load ptr, ptr %res.addr, align 8, !dbg !3035, !tbaa !112
  %ulongs6 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %23, i32 0, i32 2, !dbg !3036
  %24 = load ptr, ptr %ulongs6, align 8, !dbg !3036, !tbaa !134
  %25 = load i32, ptr %i, align 4, !dbg !3037, !tbaa !295
  %idxprom7 = zext i32 %25 to i64, !dbg !3035
  %arrayidx8 = getelementptr inbounds i64, ptr %24, i64 %idxprom7, !dbg !3035
  store i64 %xor, ptr %arrayidx8, align 8, !dbg !3038, !tbaa !146
  br label %for.inc, !dbg !3035

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4, !dbg !3039, !tbaa !295
  %inc = add i32 %26, 1, !dbg !3039
  store i32 %inc, ptr %i, align 4, !dbg !3039, !tbaa !295
  br label %for.cond, !dbg !3040, !llvm.loop !3041

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %count1, align 4, !dbg !3043, !tbaa !295
  %28 = load i32, ptr %count2, align 4, !dbg !3044, !tbaa !295
  %cmp9 = icmp ne i32 %27, %28, !dbg !3045
  br i1 %cmp9, label %if.then, label %if.end42, !dbg !3046

if.then:                                          ; preds = %for.end
  %29 = load i32, ptr %min_count, align 4, !dbg !3047, !tbaa !295
  %30 = load i32, ptr %count1, align 4, !dbg !3048, !tbaa !295
  %cmp10 = icmp ult i32 %29, %30, !dbg !3049
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !3050

if.then11:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %w2) #12, !dbg !3051
  tail call void @llvm.dbg.declare(metadata ptr %w2, metadata !2983, metadata !DIExpression()), !dbg !3052
  %31 = load ptr, ptr %set2.addr, align 8, !dbg !3053, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %31, i32 0, i32 3, !dbg !3054
  %32 = load i32, ptr %infinite, align 8, !dbg !3054, !tbaa !151
  %tobool = icmp ne i32 %32, 0, !dbg !3053
  %33 = zext i1 %tobool to i64, !dbg !3053
  %cond12 = select i1 %tobool, i64 -1, i64 0, !dbg !3053
  store i64 %cond12, ptr %w2, align 8, !dbg !3052, !tbaa !146
  %34 = load i32, ptr %min_count, align 4, !dbg !3055, !tbaa !295
  store i32 %34, ptr %i, align 4, !dbg !3057, !tbaa !295
  br label %for.cond13, !dbg !3058

for.cond13:                                       ; preds = %for.inc23, %if.then11
  %35 = load i32, ptr %i, align 4, !dbg !3059, !tbaa !295
  %36 = load i32, ptr %max_count, align 4, !dbg !3061, !tbaa !295
  %cmp14 = icmp ult i32 %35, %36, !dbg !3062
  br i1 %cmp14, label %for.body15, label %for.end25, !dbg !3063

for.body15:                                       ; preds = %for.cond13
  %37 = load ptr, ptr %set1.addr, align 8, !dbg !3064, !tbaa !112
  %ulongs16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %37, i32 0, i32 2, !dbg !3065
  %38 = load ptr, ptr %ulongs16, align 8, !dbg !3065, !tbaa !134
  %39 = load i32, ptr %i, align 4, !dbg !3066, !tbaa !295
  %idxprom17 = zext i32 %39 to i64, !dbg !3064
  %arrayidx18 = getelementptr inbounds i64, ptr %38, i64 %idxprom17, !dbg !3064
  %40 = load i64, ptr %arrayidx18, align 8, !dbg !3064, !tbaa !146
  %41 = load i64, ptr %w2, align 8, !dbg !3067, !tbaa !146
  %xor19 = xor i64 %40, %41, !dbg !3068
  %42 = load ptr, ptr %res.addr, align 8, !dbg !3069, !tbaa !112
  %ulongs20 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %42, i32 0, i32 2, !dbg !3070
  %43 = load ptr, ptr %ulongs20, align 8, !dbg !3070, !tbaa !134
  %44 = load i32, ptr %i, align 4, !dbg !3071, !tbaa !295
  %idxprom21 = zext i32 %44 to i64, !dbg !3069
  %arrayidx22 = getelementptr inbounds i64, ptr %43, i64 %idxprom21, !dbg !3069
  store i64 %xor19, ptr %arrayidx22, align 8, !dbg !3072, !tbaa !146
  br label %for.inc23, !dbg !3069

for.inc23:                                        ; preds = %for.body15
  %45 = load i32, ptr %i, align 4, !dbg !3073, !tbaa !295
  %inc24 = add i32 %45, 1, !dbg !3073
  store i32 %inc24, ptr %i, align 4, !dbg !3073, !tbaa !295
  br label %for.cond13, !dbg !3074, !llvm.loop !3075

for.end25:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %w2) #12, !dbg !3077
  br label %if.end, !dbg !3078

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %w1) #12, !dbg !3079
  tail call void @llvm.dbg.declare(metadata ptr %w1, metadata !2988, metadata !DIExpression()), !dbg !3080
  %46 = load ptr, ptr %set1.addr, align 8, !dbg !3081, !tbaa !112
  %infinite26 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %46, i32 0, i32 3, !dbg !3082
  %47 = load i32, ptr %infinite26, align 8, !dbg !3082, !tbaa !151
  %tobool27 = icmp ne i32 %47, 0, !dbg !3081
  %48 = zext i1 %tobool27 to i64, !dbg !3081
  %cond28 = select i1 %tobool27, i64 -1, i64 0, !dbg !3081
  store i64 %cond28, ptr %w1, align 8, !dbg !3080, !tbaa !146
  %49 = load i32, ptr %min_count, align 4, !dbg !3083, !tbaa !295
  store i32 %49, ptr %i, align 4, !dbg !3085, !tbaa !295
  br label %for.cond29, !dbg !3086

for.cond29:                                       ; preds = %for.inc39, %if.else
  %50 = load i32, ptr %i, align 4, !dbg !3087, !tbaa !295
  %51 = load i32, ptr %max_count, align 4, !dbg !3089, !tbaa !295
  %cmp30 = icmp ult i32 %50, %51, !dbg !3090
  br i1 %cmp30, label %for.body31, label %for.end41, !dbg !3091

for.body31:                                       ; preds = %for.cond29
  %52 = load ptr, ptr %set2.addr, align 8, !dbg !3092, !tbaa !112
  %ulongs32 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %52, i32 0, i32 2, !dbg !3093
  %53 = load ptr, ptr %ulongs32, align 8, !dbg !3093, !tbaa !134
  %54 = load i32, ptr %i, align 4, !dbg !3094, !tbaa !295
  %idxprom33 = zext i32 %54 to i64, !dbg !3092
  %arrayidx34 = getelementptr inbounds i64, ptr %53, i64 %idxprom33, !dbg !3092
  %55 = load i64, ptr %arrayidx34, align 8, !dbg !3092, !tbaa !146
  %56 = load i64, ptr %w1, align 8, !dbg !3095, !tbaa !146
  %xor35 = xor i64 %55, %56, !dbg !3096
  %57 = load ptr, ptr %res.addr, align 8, !dbg !3097, !tbaa !112
  %ulongs36 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %57, i32 0, i32 2, !dbg !3098
  %58 = load ptr, ptr %ulongs36, align 8, !dbg !3098, !tbaa !134
  %59 = load i32, ptr %i, align 4, !dbg !3099, !tbaa !295
  %idxprom37 = zext i32 %59 to i64, !dbg !3097
  %arrayidx38 = getelementptr inbounds i64, ptr %58, i64 %idxprom37, !dbg !3097
  store i64 %xor35, ptr %arrayidx38, align 8, !dbg !3100, !tbaa !146
  br label %for.inc39, !dbg !3097

for.inc39:                                        ; preds = %for.body31
  %60 = load i32, ptr %i, align 4, !dbg !3101, !tbaa !295
  %inc40 = add i32 %60, 1, !dbg !3101
  store i32 %inc40, ptr %i, align 4, !dbg !3101, !tbaa !295
  br label %for.cond29, !dbg !3102, !llvm.loop !3103

for.end41:                                        ; preds = %for.cond29
  call void @llvm.lifetime.end.p0(i64 8, ptr %w1) #12, !dbg !3105
  br label %if.end

if.end:                                           ; preds = %for.end41, %for.end25
  br label %if.end42, !dbg !3106

if.end42:                                         ; preds = %if.end, %for.end
  %61 = load ptr, ptr %set1.addr, align 8, !dbg !3107, !tbaa !112
  %infinite43 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %61, i32 0, i32 3, !dbg !3108
  %62 = load i32, ptr %infinite43, align 8, !dbg !3108, !tbaa !151
  %tobool44 = icmp ne i32 %62, 0, !dbg !3109
  %lnot = xor i1 %tobool44, true, !dbg !3109
  %lnot.ext = zext i1 %lnot to i32, !dbg !3109
  %63 = load ptr, ptr %set2.addr, align 8, !dbg !3110, !tbaa !112
  %infinite45 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %63, i32 0, i32 3, !dbg !3111
  %64 = load i32, ptr %infinite45, align 8, !dbg !3111, !tbaa !151
  %tobool46 = icmp ne i32 %64, 0, !dbg !3112
  %lnot47 = xor i1 %tobool46, true, !dbg !3112
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !3112
  %cmp49 = icmp ne i32 %lnot.ext, %lnot.ext48, !dbg !3113
  %conv = zext i1 %cmp49 to i32, !dbg !3113
  %65 = load ptr, ptr %res.addr, align 8, !dbg !3114, !tbaa !112
  %infinite50 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %65, i32 0, i32 3, !dbg !3115
  store i32 %conv, ptr %infinite50, align 8, !dbg !3116, !tbaa !151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #12, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !3117
  ret void, !dbg !3117
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_first(ptr noundef %set) #8 !dbg !3118 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %w = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3120, metadata !DIExpression()), !dbg !3126
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3127
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3121, metadata !DIExpression()), !dbg !3128
  store i32 0, ptr %i, align 4, !dbg !3129, !tbaa !295
  br label %for.cond, !dbg !3130

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3131, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3132, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !3133
  %2 = load i32, ptr %ulongs_count, align 8, !dbg !3133, !tbaa !123
  %cmp = icmp ult i32 %0, %2, !dbg !3134
  br i1 %cmp, label %for.body, label %for.end, !dbg !3135

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #12, !dbg !3136
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !3122, metadata !DIExpression()), !dbg !3137
  %3 = load ptr, ptr %set.addr, align 8, !dbg !3138, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 2, !dbg !3139
  %4 = load ptr, ptr %ulongs, align 8, !dbg !3139, !tbaa !134
  %5 = load i32, ptr %i, align 4, !dbg !3140, !tbaa !295
  %idxprom = zext i32 %5 to i64, !dbg !3138
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom, !dbg !3138
  %6 = load i64, ptr %arrayidx, align 8, !dbg !3138, !tbaa !146
  store i64 %6, ptr %w, align 8, !dbg !3137, !tbaa !146
  %7 = load i64, ptr %w, align 8, !dbg !3141, !tbaa !146
  %tobool = icmp ne i64 %7, 0, !dbg !3141
  br i1 %tobool, label %if.then, label %if.end, !dbg !3143

if.then:                                          ; preds = %for.body
  %8 = load i64, ptr %w, align 8, !dbg !3144, !tbaa !146
  %9 = call i64 @llvm.cttz.i64(i64 %8, i1 true), !dbg !3144
  %10 = add i64 %9, 1, !dbg !3144
  %iszero = icmp eq i64 %8, 0, !dbg !3144
  %ffs = select i1 %iszero, i64 0, i64 %10, !dbg !3144
  %cast = trunc i64 %ffs to i32, !dbg !3144
  %sub = sub nsw i32 %cast, 1, !dbg !3145
  %11 = load i32, ptr %i, align 4, !dbg !3146, !tbaa !295
  %mul = mul i32 64, %11, !dbg !3147
  %add = add i32 %sub, %mul, !dbg !3148
  store i32 %add, ptr %retval, align 4, !dbg !3149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3149

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3150
  br label %cleanup, !dbg !3150

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #12, !dbg !3150
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3151

for.inc:                                          ; preds = %cleanup.cont
  %12 = load i32, ptr %i, align 4, !dbg !3152, !tbaa !295
  %inc = add i32 %12, 1, !dbg !3152
  store i32 %inc, ptr %i, align 4, !dbg !3152, !tbaa !295
  br label %for.cond, !dbg !3153, !llvm.loop !3154

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %set.addr, align 8, !dbg !3156, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %13, i32 0, i32 3, !dbg !3158
  %14 = load i32, ptr %infinite, align 8, !dbg !3158, !tbaa !151
  %tobool1 = icmp ne i32 %14, 0, !dbg !3156
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !3159

if.then2:                                         ; preds = %for.end
  %15 = load ptr, ptr %set.addr, align 8, !dbg !3160, !tbaa !112
  %ulongs_count3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %15, i32 0, i32 0, !dbg !3161
  %16 = load i32, ptr %ulongs_count3, align 8, !dbg !3161, !tbaa !123
  %mul4 = mul i32 %16, 64, !dbg !3162
  store i32 %mul4, ptr %retval, align 4, !dbg !3163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup6, !dbg !3163

if.end5:                                          ; preds = %for.end
  store i32 -1, ptr %retval, align 4, !dbg !3164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup6, !dbg !3164

cleanup6:                                         ; preds = %if.end5, %if.then2, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3165
  %17 = load i32, ptr %retval, align 4, !dbg !3165
  ret i32 %17, !dbg !3165
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_last(ptr noundef %set) #8 !dbg !3166 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %w = alloca i64, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3168, metadata !DIExpression()), !dbg !3174
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3175
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3169, metadata !DIExpression()), !dbg !3176
  %0 = load ptr, ptr %set.addr, align 8, !dbg !3177, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 3, !dbg !3179
  %1 = load i32, ptr %infinite, align 8, !dbg !3179, !tbaa !151
  %tobool = icmp ne i32 %1, 0, !dbg !3177
  br i1 %tobool, label %if.then, label %if.end, !dbg !3180

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !3181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !3181

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %set.addr, align 8, !dbg !3182, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !3183
  %3 = load i32, ptr %ulongs_count, align 8, !dbg !3183, !tbaa !123
  %sub = sub i32 %3, 1, !dbg !3184
  store i32 %sub, ptr %i, align 4, !dbg !3185, !tbaa !295
  br label %for.cond, !dbg !3186

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !3187, !tbaa !295
  %cmp = icmp sge i32 %4, 0, !dbg !3188
  br i1 %cmp, label %for.body, label %for.end, !dbg !3189

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #12, !dbg !3190
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !3170, metadata !DIExpression()), !dbg !3191
  %5 = load ptr, ptr %set.addr, align 8, !dbg !3192, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !3193
  %6 = load ptr, ptr %ulongs, align 8, !dbg !3193, !tbaa !134
  %7 = load i32, ptr %i, align 4, !dbg !3194, !tbaa !295
  %idxprom = sext i32 %7 to i64, !dbg !3192
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom, !dbg !3192
  %8 = load i64, ptr %arrayidx, align 8, !dbg !3192, !tbaa !146
  store i64 %8, ptr %w, align 8, !dbg !3191, !tbaa !146
  %9 = load i64, ptr %w, align 8, !dbg !3195, !tbaa !146
  %tobool1 = icmp ne i64 %9, 0, !dbg !3195
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !3197

if.then2:                                         ; preds = %for.body
  %10 = load i64, ptr %w, align 8, !dbg !3198, !tbaa !146
  %call = call i32 @hwloc_flsl_manual(i64 noundef %10) #16, !dbg !3199
  %sub3 = sub nsw i32 %call, 1, !dbg !3200
  %11 = load i32, ptr %i, align 4, !dbg !3201, !tbaa !295
  %mul = mul nsw i32 64, %11, !dbg !3202
  %add = add nsw i32 %sub3, %mul, !dbg !3203
  store i32 %add, ptr %retval, align 4, !dbg !3204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3204

if.end4:                                          ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3205
  br label %cleanup, !dbg !3205

cleanup:                                          ; preds = %if.end4, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #12, !dbg !3205
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3206

for.inc:                                          ; preds = %cleanup.cont
  %12 = load i32, ptr %i, align 4, !dbg !3207, !tbaa !295
  %dec = add nsw i32 %12, -1, !dbg !3207
  store i32 %dec, ptr %i, align 4, !dbg !3207, !tbaa !295
  br label %for.cond, !dbg !3208, !llvm.loop !3209

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4, !dbg !3211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup5, !dbg !3211

cleanup5:                                         ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3212
  %13 = load i32, ptr %retval, align 4, !dbg !3212
  ret i32 %13, !dbg !3212
}

; Function Attrs: inlinehint nounwind willreturn memory(none) uwtable
define internal i32 @hwloc_flsl_manual(i64 noundef %x) #10 !dbg !3213 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3221
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3219, metadata !DIExpression()), !dbg !3222
  store i32 0, ptr %i, align 4, !dbg !3222, !tbaa !295
  %0 = load i64, ptr %x.addr, align 8, !dbg !3223, !tbaa !146
  %tobool = icmp ne i64 %0, 0, !dbg !3223
  br i1 %tobool, label %if.end, label %if.then, !dbg !3225

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3226

if.end:                                           ; preds = %entry
  store i32 1, ptr %i, align 4, !dbg !3227, !tbaa !295
  %1 = load i64, ptr %x.addr, align 8, !dbg !3228, !tbaa !146
  %and = and i64 %1, -4294967296, !dbg !3230
  %tobool1 = icmp ne i64 %and, 0, !dbg !3230
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3231

if.then2:                                         ; preds = %if.end
  %2 = load i64, ptr %x.addr, align 8, !dbg !3232, !tbaa !146
  %shr = lshr i64 %2, 32, !dbg !3232
  store i64 %shr, ptr %x.addr, align 8, !dbg !3232, !tbaa !146
  %3 = load i32, ptr %i, align 4, !dbg !3234, !tbaa !295
  %add = add nsw i32 %3, 32, !dbg !3234
  store i32 %add, ptr %i, align 4, !dbg !3234, !tbaa !295
  br label %if.end3, !dbg !3235

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, ptr %x.addr, align 8, !dbg !3236, !tbaa !146
  %and4 = and i64 %4, 4294901760, !dbg !3238
  %tobool5 = icmp ne i64 %and4, 0, !dbg !3238
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !3239

if.then6:                                         ; preds = %if.end3
  %5 = load i64, ptr %x.addr, align 8, !dbg !3240, !tbaa !146
  %shr7 = lshr i64 %5, 16, !dbg !3240
  store i64 %shr7, ptr %x.addr, align 8, !dbg !3240, !tbaa !146
  %6 = load i32, ptr %i, align 4, !dbg !3242, !tbaa !295
  %add8 = add nsw i32 %6, 16, !dbg !3242
  store i32 %add8, ptr %i, align 4, !dbg !3242, !tbaa !295
  br label %if.end9, !dbg !3243

if.end9:                                          ; preds = %if.then6, %if.end3
  %7 = load i64, ptr %x.addr, align 8, !dbg !3244, !tbaa !146
  %and10 = and i64 %7, 65280, !dbg !3246
  %tobool11 = icmp ne i64 %and10, 0, !dbg !3246
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !3247

if.then12:                                        ; preds = %if.end9
  %8 = load i64, ptr %x.addr, align 8, !dbg !3248, !tbaa !146
  %shr13 = lshr i64 %8, 8, !dbg !3248
  store i64 %shr13, ptr %x.addr, align 8, !dbg !3248, !tbaa !146
  %9 = load i32, ptr %i, align 4, !dbg !3250, !tbaa !295
  %add14 = add nsw i32 %9, 8, !dbg !3250
  store i32 %add14, ptr %i, align 4, !dbg !3250, !tbaa !295
  br label %if.end15, !dbg !3251

if.end15:                                         ; preds = %if.then12, %if.end9
  %10 = load i64, ptr %x.addr, align 8, !dbg !3252, !tbaa !146
  %and16 = and i64 %10, 240, !dbg !3254
  %tobool17 = icmp ne i64 %and16, 0, !dbg !3254
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !3255

if.then18:                                        ; preds = %if.end15
  %11 = load i64, ptr %x.addr, align 8, !dbg !3256, !tbaa !146
  %shr19 = lshr i64 %11, 4, !dbg !3256
  store i64 %shr19, ptr %x.addr, align 8, !dbg !3256, !tbaa !146
  %12 = load i32, ptr %i, align 4, !dbg !3258, !tbaa !295
  %add20 = add nsw i32 %12, 4, !dbg !3258
  store i32 %add20, ptr %i, align 4, !dbg !3258, !tbaa !295
  br label %if.end21, !dbg !3259

if.end21:                                         ; preds = %if.then18, %if.end15
  %13 = load i64, ptr %x.addr, align 8, !dbg !3260, !tbaa !146
  %and22 = and i64 %13, 12, !dbg !3262
  %tobool23 = icmp ne i64 %and22, 0, !dbg !3262
  br i1 %tobool23, label %if.then24, label %if.end27, !dbg !3263

if.then24:                                        ; preds = %if.end21
  %14 = load i64, ptr %x.addr, align 8, !dbg !3264, !tbaa !146
  %shr25 = lshr i64 %14, 2, !dbg !3264
  store i64 %shr25, ptr %x.addr, align 8, !dbg !3264, !tbaa !146
  %15 = load i32, ptr %i, align 4, !dbg !3266, !tbaa !295
  %add26 = add nsw i32 %15, 2, !dbg !3266
  store i32 %add26, ptr %i, align 4, !dbg !3266, !tbaa !295
  br label %if.end27, !dbg !3267

if.end27:                                         ; preds = %if.then24, %if.end21
  %16 = load i64, ptr %x.addr, align 8, !dbg !3268, !tbaa !146
  %and28 = and i64 %16, 2, !dbg !3270
  %tobool29 = icmp ne i64 %and28, 0, !dbg !3270
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !3271

if.then30:                                        ; preds = %if.end27
  %17 = load i64, ptr %x.addr, align 8, !dbg !3272, !tbaa !146
  %shr31 = lshr i64 %17, 1, !dbg !3272
  store i64 %shr31, ptr %x.addr, align 8, !dbg !3272, !tbaa !146
  %18 = load i32, ptr %i, align 4, !dbg !3274, !tbaa !295
  %add32 = add nsw i32 %18, 1, !dbg !3274
  store i32 %add32, ptr %i, align 4, !dbg !3274, !tbaa !295
  br label %if.end33, !dbg !3275

if.end33:                                         ; preds = %if.then30, %if.end27
  %19 = load i32, ptr %i, align 4, !dbg !3276, !tbaa !295
  store i32 %19, ptr %retval, align 4, !dbg !3277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3277

cleanup:                                          ; preds = %if.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3278
  %20 = load i32, ptr %retval, align 4, !dbg !3278
  ret i32 %20, !dbg !3278
}

; Function Attrs: nounwind uwtable
define void @hwloc_bitmap_singlify(ptr noundef %set) #0 !dbg !3279 {
entry:
  %set.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %w = alloca i64, align 8
  %_ffs = alloca i32, align 4
  %first = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3281, metadata !DIExpression()), !dbg !3298
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3299
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3282, metadata !DIExpression()), !dbg !3300
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #12, !dbg !3301
  tail call void @llvm.dbg.declare(metadata ptr %found, metadata !3283, metadata !DIExpression()), !dbg !3302
  store i32 0, ptr %found, align 4, !dbg !3302, !tbaa !295
  store i32 0, ptr %i, align 4, !dbg !3303, !tbaa !295
  br label %for.cond, !dbg !3304

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3305, !tbaa !295
  %1 = load ptr, ptr %set.addr, align 8, !dbg !3306, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %1, i32 0, i32 0, !dbg !3307
  %2 = load i32, ptr %ulongs_count, align 8, !dbg !3307, !tbaa !123
  %cmp = icmp ult i32 %0, %2, !dbg !3308
  br i1 %cmp, label %for.body, label %for.end, !dbg !3309

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %found, align 4, !dbg !3310, !tbaa !295
  %tobool = icmp ne i32 %3, 0, !dbg !3310
  br i1 %tobool, label %if.then, label %if.else, !dbg !3311

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %set.addr, align 8, !dbg !3312, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 2, !dbg !3314
  %5 = load ptr, ptr %ulongs, align 8, !dbg !3314, !tbaa !134
  %6 = load i32, ptr %i, align 4, !dbg !3315, !tbaa !295
  %idxprom = zext i32 %6 to i64, !dbg !3312
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom, !dbg !3312
  store i64 0, ptr %arrayidx, align 8, !dbg !3316, !tbaa !146
  br label %for.inc, !dbg !3317

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #12, !dbg !3318
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !3284, metadata !DIExpression()), !dbg !3319
  %7 = load ptr, ptr %set.addr, align 8, !dbg !3320, !tbaa !112
  %ulongs1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %7, i32 0, i32 2, !dbg !3321
  %8 = load ptr, ptr %ulongs1, align 8, !dbg !3321, !tbaa !134
  %9 = load i32, ptr %i, align 4, !dbg !3322, !tbaa !295
  %idxprom2 = zext i32 %9 to i64, !dbg !3320
  %arrayidx3 = getelementptr inbounds i64, ptr %8, i64 %idxprom2, !dbg !3320
  %10 = load i64, ptr %arrayidx3, align 8, !dbg !3320, !tbaa !146
  store i64 %10, ptr %w, align 8, !dbg !3319, !tbaa !146
  %11 = load i64, ptr %w, align 8, !dbg !3323, !tbaa !146
  %tobool4 = icmp ne i64 %11, 0, !dbg !3323
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !3324

if.then5:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ffs) #12, !dbg !3325
  tail call void @llvm.dbg.declare(metadata ptr %_ffs, metadata !3290, metadata !DIExpression()), !dbg !3326
  %12 = load i64, ptr %w, align 8, !dbg !3327, !tbaa !146
  %13 = call i64 @llvm.cttz.i64(i64 %12, i1 true), !dbg !3327
  %14 = add i64 %13, 1, !dbg !3327
  %iszero = icmp eq i64 %12, 0, !dbg !3327
  %ffs = select i1 %iszero, i64 0, i64 %14, !dbg !3327
  %cast = trunc i64 %ffs to i32, !dbg !3327
  store i32 %cast, ptr %_ffs, align 4, !dbg !3326, !tbaa !295
  %15 = load i32, ptr %_ffs, align 4, !dbg !3328, !tbaa !295
  %sub = sub nsw i32 %15, 1, !dbg !3328
  %rem = srem i32 %sub, 64, !dbg !3328
  %sh_prom = zext i32 %rem to i64, !dbg !3328
  %shl = shl i64 1, %sh_prom, !dbg !3328
  %16 = load ptr, ptr %set.addr, align 8, !dbg !3329, !tbaa !112
  %ulongs6 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %16, i32 0, i32 2, !dbg !3330
  %17 = load ptr, ptr %ulongs6, align 8, !dbg !3330, !tbaa !134
  %18 = load i32, ptr %i, align 4, !dbg !3331, !tbaa !295
  %idxprom7 = zext i32 %18 to i64, !dbg !3329
  %arrayidx8 = getelementptr inbounds i64, ptr %17, i64 %idxprom7, !dbg !3329
  store i64 %shl, ptr %arrayidx8, align 8, !dbg !3332, !tbaa !146
  store i32 1, ptr %found, align 4, !dbg !3333, !tbaa !295
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ffs) #12, !dbg !3334
  br label %if.end, !dbg !3335

if.end:                                           ; preds = %if.then5, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #12, !dbg !3336
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %for.inc, !dbg !3337

for.inc:                                          ; preds = %if.end9, %if.then
  %19 = load i32, ptr %i, align 4, !dbg !3338, !tbaa !295
  %inc = add i32 %19, 1, !dbg !3338
  store i32 %inc, ptr %i, align 4, !dbg !3338, !tbaa !295
  br label %for.cond, !dbg !3339, !llvm.loop !3340

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %set.addr, align 8, !dbg !3342, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %20, i32 0, i32 3, !dbg !3343
  %21 = load i32, ptr %infinite, align 8, !dbg !3343, !tbaa !151
  %tobool10 = icmp ne i32 %21, 0, !dbg !3342
  br i1 %tobool10, label %if.then11, label %if.end19, !dbg !3344

if.then11:                                        ; preds = %for.end
  %22 = load i32, ptr %found, align 4, !dbg !3345, !tbaa !295
  %tobool12 = icmp ne i32 %22, 0, !dbg !3345
  br i1 %tobool12, label %if.then13, label %if.else15, !dbg !3346

if.then13:                                        ; preds = %if.then11
  %23 = load ptr, ptr %set.addr, align 8, !dbg !3347, !tbaa !112
  %infinite14 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %23, i32 0, i32 3, !dbg !3349
  store i32 0, ptr %infinite14, align 8, !dbg !3350, !tbaa !151
  br label %if.end18, !dbg !3351

if.else15:                                        ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #12, !dbg !3352
  tail call void @llvm.dbg.declare(metadata ptr %first, metadata !3293, metadata !DIExpression()), !dbg !3353
  %24 = load ptr, ptr %set.addr, align 8, !dbg !3354, !tbaa !112
  %ulongs_count16 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %24, i32 0, i32 0, !dbg !3355
  %25 = load i32, ptr %ulongs_count16, align 8, !dbg !3355, !tbaa !123
  %mul = mul i32 %25, 64, !dbg !3356
  store i32 %mul, ptr %first, align 4, !dbg !3353, !tbaa !295
  %26 = load ptr, ptr %set.addr, align 8, !dbg !3357, !tbaa !112
  %infinite17 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %26, i32 0, i32 3, !dbg !3358
  store i32 0, ptr %infinite17, align 8, !dbg !3359, !tbaa !151
  %27 = load ptr, ptr %set.addr, align 8, !dbg !3360, !tbaa !112
  %28 = load i32, ptr %first, align 4, !dbg !3361, !tbaa !295
  call void @hwloc_bitmap_set(ptr noundef %27, i32 noundef %28), !dbg !3362
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #12, !dbg !3363
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then13
  br label %if.end19, !dbg !3364

if.end19:                                         ; preds = %if.end18, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #12, !dbg !3365
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3365
  ret void, !dbg !3365
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_compare_first(ptr noundef %set1, ptr noundef %set2) #8 !dbg !3366 {
entry:
  %retval = alloca i32, align 4
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  %w1 = alloca i64, align 8
  %w2 = alloca i64, align 8
  %_ffs1 = alloca i32, align 4
  %_ffs2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %w226 = alloca i64, align 8
  %w148 = alloca i64, align 8
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !3368, metadata !DIExpression()), !dbg !3397
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !3369, metadata !DIExpression()), !dbg !3398
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !3399
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !3370, metadata !DIExpression()), !dbg !3400
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !3401, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !3402
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !3402, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !3400, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !3403
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !3371, metadata !DIExpression()), !dbg !3404
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !3405, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !3406
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !3406, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !3404, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #12, !dbg !3407
  tail call void @llvm.dbg.declare(metadata ptr %max_count, metadata !3372, metadata !DIExpression()), !dbg !3408
  %4 = load i32, ptr %count1, align 4, !dbg !3409, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !3410, !tbaa !295
  %cmp = icmp ugt i32 %4, %5, !dbg !3411
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3409

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !3412, !tbaa !295
  br label %cond.end, !dbg !3409

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !3413, !tbaa !295
  br label %cond.end, !dbg !3409

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !3409
  store i32 %cond, ptr %max_count, align 4, !dbg !3408, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !3414
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !3373, metadata !DIExpression()), !dbg !3415
  %8 = load i32, ptr %count1, align 4, !dbg !3416, !tbaa !295
  %9 = load i32, ptr %count2, align 4, !dbg !3417, !tbaa !295
  %add = add i32 %8, %9, !dbg !3418
  %10 = load i32, ptr %max_count, align 4, !dbg !3419, !tbaa !295
  %sub = sub i32 %add, %10, !dbg !3420
  store i32 %sub, ptr %min_count, align 4, !dbg !3415, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3421
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3374, metadata !DIExpression()), !dbg !3422
  store i32 0, ptr %i, align 4, !dbg !3423, !tbaa !295
  br label %for.cond, !dbg !3424

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, ptr %i, align 4, !dbg !3425, !tbaa !295
  %12 = load i32, ptr %min_count, align 4, !dbg !3426, !tbaa !295
  %cmp2 = icmp ult i32 %11, %12, !dbg !3427
  br i1 %cmp2, label %for.body, label %for.end, !dbg !3428

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %w1) #12, !dbg !3429
  tail call void @llvm.dbg.declare(metadata ptr %w1, metadata !3375, metadata !DIExpression()), !dbg !3430
  %13 = load ptr, ptr %set1.addr, align 8, !dbg !3431, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %13, i32 0, i32 2, !dbg !3432
  %14 = load ptr, ptr %ulongs, align 8, !dbg !3432, !tbaa !134
  %15 = load i32, ptr %i, align 4, !dbg !3433, !tbaa !295
  %idxprom = zext i32 %15 to i64, !dbg !3431
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %idxprom, !dbg !3431
  %16 = load i64, ptr %arrayidx, align 8, !dbg !3431, !tbaa !146
  store i64 %16, ptr %w1, align 8, !dbg !3430, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %w2) #12, !dbg !3434
  tail call void @llvm.dbg.declare(metadata ptr %w2, metadata !3379, metadata !DIExpression()), !dbg !3435
  %17 = load ptr, ptr %set2.addr, align 8, !dbg !3436, !tbaa !112
  %ulongs3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %17, i32 0, i32 2, !dbg !3437
  %18 = load ptr, ptr %ulongs3, align 8, !dbg !3437, !tbaa !134
  %19 = load i32, ptr %i, align 4, !dbg !3438, !tbaa !295
  %idxprom4 = zext i32 %19 to i64, !dbg !3436
  %arrayidx5 = getelementptr inbounds i64, ptr %18, i64 %idxprom4, !dbg !3436
  %20 = load i64, ptr %arrayidx5, align 8, !dbg !3436, !tbaa !146
  store i64 %20, ptr %w2, align 8, !dbg !3435, !tbaa !146
  %21 = load i64, ptr %w1, align 8, !dbg !3439, !tbaa !146
  %tobool = icmp ne i64 %21, 0, !dbg !3439
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3440

lor.lhs.false:                                    ; preds = %for.body
  %22 = load i64, ptr %w2, align 8, !dbg !3441, !tbaa !146
  %tobool6 = icmp ne i64 %22, 0, !dbg !3441
  br i1 %tobool6, label %if.then, label %if.end16, !dbg !3442

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ffs1) #12, !dbg !3443
  tail call void @llvm.dbg.declare(metadata ptr %_ffs1, metadata !3380, metadata !DIExpression()), !dbg !3444
  %23 = load i64, ptr %w1, align 8, !dbg !3445, !tbaa !146
  %24 = call i64 @llvm.cttz.i64(i64 %23, i1 true), !dbg !3445
  %25 = add i64 %24, 1, !dbg !3445
  %iszero = icmp eq i64 %23, 0, !dbg !3445
  %ffs = select i1 %iszero, i64 0, i64 %25, !dbg !3445
  %cast = trunc i64 %ffs to i32, !dbg !3445
  store i32 %cast, ptr %_ffs1, align 4, !dbg !3444, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ffs2) #12, !dbg !3446
  tail call void @llvm.dbg.declare(metadata ptr %_ffs2, metadata !3383, metadata !DIExpression()), !dbg !3447
  %26 = load i64, ptr %w2, align 8, !dbg !3448, !tbaa !146
  %27 = call i64 @llvm.cttz.i64(i64 %26, i1 true), !dbg !3448
  %28 = add i64 %27, 1, !dbg !3448
  %iszero7 = icmp eq i64 %26, 0, !dbg !3448
  %ffs8 = select i1 %iszero7, i64 0, i64 %28, !dbg !3448
  %cast9 = trunc i64 %ffs8 to i32, !dbg !3448
  store i32 %cast9, ptr %_ffs2, align 4, !dbg !3447, !tbaa !295
  %29 = load i32, ptr %_ffs1, align 4, !dbg !3449, !tbaa !295
  %tobool10 = icmp ne i32 %29, 0, !dbg !3449
  br i1 %tobool10, label %land.lhs.true, label %if.end, !dbg !3451

land.lhs.true:                                    ; preds = %if.then
  %30 = load i32, ptr %_ffs2, align 4, !dbg !3452, !tbaa !295
  %tobool11 = icmp ne i32 %30, 0, !dbg !3452
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !3453

if.then12:                                        ; preds = %land.lhs.true
  %31 = load i32, ptr %_ffs1, align 4, !dbg !3454, !tbaa !295
  %32 = load i32, ptr %_ffs2, align 4, !dbg !3455, !tbaa !295
  %sub13 = sub nsw i32 %31, %32, !dbg !3456
  store i32 %sub13, ptr %retval, align 4, !dbg !3457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3457

if.end:                                           ; preds = %land.lhs.true, %if.then
  %33 = load i32, ptr %_ffs2, align 4, !dbg !3458, !tbaa !295
  %34 = load i32, ptr %_ffs1, align 4, !dbg !3459, !tbaa !295
  %sub14 = sub nsw i32 %33, %34, !dbg !3460
  store i32 %sub14, ptr %retval, align 4, !dbg !3461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3461

cleanup:                                          ; preds = %if.end, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ffs2) #12, !dbg !3462
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ffs1) #12, !dbg !3462
  br label %cleanup17

if.end16:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3463
  br label %cleanup17, !dbg !3463

cleanup17:                                        ; preds = %if.end16, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %w2) #12, !dbg !3463
  call void @llvm.lifetime.end.p0(i64 8, ptr %w1) #12, !dbg !3463
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup17
  br label %for.inc, !dbg !3464

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i32, ptr %i, align 4, !dbg !3465, !tbaa !295
  %inc = add i32 %35, 1, !dbg !3465
  store i32 %inc, ptr %i, align 4, !dbg !3465, !tbaa !295
  br label %for.cond, !dbg !3466, !llvm.loop !3467

for.end:                                          ; preds = %for.cond
  %36 = load i32, ptr %count1, align 4, !dbg !3469, !tbaa !295
  %37 = load i32, ptr %count2, align 4, !dbg !3470, !tbaa !295
  %cmp19 = icmp ne i32 %36, %37, !dbg !3471
  br i1 %cmp19, label %if.then20, label %if.end71, !dbg !3472

if.then20:                                        ; preds = %for.end
  %38 = load i32, ptr %min_count, align 4, !dbg !3473, !tbaa !295
  %39 = load i32, ptr %count2, align 4, !dbg !3474, !tbaa !295
  %cmp21 = icmp ult i32 %38, %39, !dbg !3475
  br i1 %cmp21, label %if.then22, label %if.else44, !dbg !3476

if.then22:                                        ; preds = %if.then20
  %40 = load i32, ptr %min_count, align 4, !dbg !3477, !tbaa !295
  store i32 %40, ptr %i, align 4, !dbg !3478, !tbaa !295
  br label %for.cond23, !dbg !3479

for.cond23:                                       ; preds = %for.inc41, %if.then22
  %41 = load i32, ptr %i, align 4, !dbg !3480, !tbaa !295
  %42 = load i32, ptr %count2, align 4, !dbg !3481, !tbaa !295
  %cmp24 = icmp ult i32 %41, %42, !dbg !3482
  br i1 %cmp24, label %for.body25, label %for.end43, !dbg !3483

for.body25:                                       ; preds = %for.cond23
  call void @llvm.lifetime.start.p0(i64 8, ptr %w226) #12, !dbg !3484
  tail call void @llvm.dbg.declare(metadata ptr %w226, metadata !3384, metadata !DIExpression()), !dbg !3485
  %43 = load ptr, ptr %set2.addr, align 8, !dbg !3486, !tbaa !112
  %ulongs27 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %43, i32 0, i32 2, !dbg !3487
  %44 = load ptr, ptr %ulongs27, align 8, !dbg !3487, !tbaa !134
  %45 = load i32, ptr %i, align 4, !dbg !3488, !tbaa !295
  %idxprom28 = zext i32 %45 to i64, !dbg !3486
  %arrayidx29 = getelementptr inbounds i64, ptr %44, i64 %idxprom28, !dbg !3486
  %46 = load i64, ptr %arrayidx29, align 8, !dbg !3486, !tbaa !146
  store i64 %46, ptr %w226, align 8, !dbg !3485, !tbaa !146
  %47 = load ptr, ptr %set1.addr, align 8, !dbg !3489, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %47, i32 0, i32 3, !dbg !3491
  %48 = load i32, ptr %infinite, align 8, !dbg !3491, !tbaa !151
  %tobool30 = icmp ne i32 %48, 0, !dbg !3489
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !3492

if.then31:                                        ; preds = %for.body25
  %49 = load i64, ptr %w226, align 8, !dbg !3493, !tbaa !146
  %and = and i64 %49, 1, !dbg !3494
  %tobool32 = icmp ne i64 %and, 0, !dbg !3495
  %lnot = xor i1 %tobool32, true, !dbg !3495
  %lnot.ext = zext i1 %lnot to i32, !dbg !3495
  %sub33 = sub nsw i32 0, %lnot.ext, !dbg !3496
  store i32 %sub33, ptr %retval, align 4, !dbg !3497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !3497

if.else:                                          ; preds = %for.body25
  %50 = load i64, ptr %w226, align 8, !dbg !3498, !tbaa !146
  %tobool34 = icmp ne i64 %50, 0, !dbg !3498
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !3500

if.then35:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !3501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38, !dbg !3501

if.end36:                                         ; preds = %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3502
  br label %cleanup38, !dbg !3502

cleanup38:                                        ; preds = %if.end37, %if.then35, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %w226) #12, !dbg !3502
  %cleanup.dest39 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest39, label %cleanup85 [
    i32 0, label %cleanup.cont40
  ]

cleanup.cont40:                                   ; preds = %cleanup38
  br label %for.inc41, !dbg !3503

for.inc41:                                        ; preds = %cleanup.cont40
  %51 = load i32, ptr %i, align 4, !dbg !3504, !tbaa !295
  %inc42 = add i32 %51, 1, !dbg !3504
  store i32 %inc42, ptr %i, align 4, !dbg !3504, !tbaa !295
  br label %for.cond23, !dbg !3505, !llvm.loop !3506

for.end43:                                        ; preds = %for.cond23
  br label %if.end70, !dbg !3508

if.else44:                                        ; preds = %if.then20
  %52 = load i32, ptr %min_count, align 4, !dbg !3509, !tbaa !295
  store i32 %52, ptr %i, align 4, !dbg !3510, !tbaa !295
  br label %for.cond45, !dbg !3511

for.cond45:                                       ; preds = %for.inc67, %if.else44
  %53 = load i32, ptr %i, align 4, !dbg !3512, !tbaa !295
  %54 = load i32, ptr %count1, align 4, !dbg !3513, !tbaa !295
  %cmp46 = icmp ult i32 %53, %54, !dbg !3514
  br i1 %cmp46, label %for.body47, label %for.end69, !dbg !3515

for.body47:                                       ; preds = %for.cond45
  call void @llvm.lifetime.start.p0(i64 8, ptr %w148) #12, !dbg !3516
  tail call void @llvm.dbg.declare(metadata ptr %w148, metadata !3392, metadata !DIExpression()), !dbg !3517
  %55 = load ptr, ptr %set1.addr, align 8, !dbg !3518, !tbaa !112
  %ulongs49 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %55, i32 0, i32 2, !dbg !3519
  %56 = load ptr, ptr %ulongs49, align 8, !dbg !3519, !tbaa !134
  %57 = load i32, ptr %i, align 4, !dbg !3520, !tbaa !295
  %idxprom50 = zext i32 %57 to i64, !dbg !3518
  %arrayidx51 = getelementptr inbounds i64, ptr %56, i64 %idxprom50, !dbg !3518
  %58 = load i64, ptr %arrayidx51, align 8, !dbg !3518, !tbaa !146
  store i64 %58, ptr %w148, align 8, !dbg !3517, !tbaa !146
  %59 = load ptr, ptr %set2.addr, align 8, !dbg !3521, !tbaa !112
  %infinite52 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %59, i32 0, i32 3, !dbg !3523
  %60 = load i32, ptr %infinite52, align 8, !dbg !3523, !tbaa !151
  %tobool53 = icmp ne i32 %60, 0, !dbg !3521
  br i1 %tobool53, label %if.then54, label %if.else59, !dbg !3524

if.then54:                                        ; preds = %for.body47
  %61 = load i64, ptr %w148, align 8, !dbg !3525, !tbaa !146
  %and55 = and i64 %61, 1, !dbg !3526
  %tobool56 = icmp ne i64 %and55, 0, !dbg !3527
  %lnot57 = xor i1 %tobool56, true, !dbg !3527
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !3527
  store i32 %lnot.ext58, ptr %retval, align 4, !dbg !3528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !3528

if.else59:                                        ; preds = %for.body47
  %62 = load i64, ptr %w148, align 8, !dbg !3529, !tbaa !146
  %tobool60 = icmp ne i64 %62, 0, !dbg !3529
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !3531

if.then61:                                        ; preds = %if.else59
  store i32 -1, ptr %retval, align 4, !dbg !3532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !3532

if.end62:                                         ; preds = %if.else59
  br label %if.end63

if.end63:                                         ; preds = %if.end62
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3533
  br label %cleanup64, !dbg !3533

cleanup64:                                        ; preds = %if.end63, %if.then61, %if.then54
  call void @llvm.lifetime.end.p0(i64 8, ptr %w148) #12, !dbg !3533
  %cleanup.dest65 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest65, label %cleanup85 [
    i32 0, label %cleanup.cont66
  ]

cleanup.cont66:                                   ; preds = %cleanup64
  br label %for.inc67, !dbg !3534

for.inc67:                                        ; preds = %cleanup.cont66
  %63 = load i32, ptr %i, align 4, !dbg !3535, !tbaa !295
  %inc68 = add i32 %63, 1, !dbg !3535
  store i32 %inc68, ptr %i, align 4, !dbg !3535, !tbaa !295
  br label %for.cond45, !dbg !3536, !llvm.loop !3537

for.end69:                                        ; preds = %for.cond45
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %for.end43
  br label %if.end71, !dbg !3539

if.end71:                                         ; preds = %if.end70, %for.end
  %64 = load ptr, ptr %set1.addr, align 8, !dbg !3540, !tbaa !112
  %infinite72 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %64, i32 0, i32 3, !dbg !3541
  %65 = load i32, ptr %infinite72, align 8, !dbg !3541, !tbaa !151
  %tobool73 = icmp ne i32 %65, 0, !dbg !3542
  %lnot74 = xor i1 %tobool73, true, !dbg !3542
  %lnot76 = xor i1 %lnot74, true, !dbg !3543
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !3543
  %66 = load ptr, ptr %set2.addr, align 8, !dbg !3544, !tbaa !112
  %infinite78 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %66, i32 0, i32 3, !dbg !3545
  %67 = load i32, ptr %infinite78, align 8, !dbg !3545, !tbaa !151
  %tobool79 = icmp ne i32 %67, 0, !dbg !3546
  %lnot80 = xor i1 %tobool79, true, !dbg !3546
  %lnot82 = xor i1 %lnot80, true, !dbg !3547
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !3547
  %sub84 = sub nsw i32 %lnot.ext77, %lnot.ext83, !dbg !3548
  store i32 %sub84, ptr %retval, align 4, !dbg !3549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !3549

cleanup85:                                        ; preds = %if.end71, %cleanup64, %cleanup38, %cleanup17
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #12, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !3550
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !3550
  %68 = load i32, ptr %retval, align 4, !dbg !3550
  ret i32 %68, !dbg !3550
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_compare(ptr noundef %set1, ptr noundef %set2) #8 !dbg !3551 {
entry:
  %retval = alloca i32, align 4
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %max_count = alloca i32, align 4
  %min_count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %val1 = alloca i64, align 8
  %val2 = alloca i64, align 8
  %val236 = alloca i64, align 8
  %val144 = alloca i64, align 8
  %val167 = alloca i64, align 8
  %val271 = alloca i64, align 8
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !3553, metadata !DIExpression()), !dbg !3580
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !3554, metadata !DIExpression()), !dbg !3581
  call void @llvm.lifetime.start.p0(i64 4, ptr %count1) #12, !dbg !3582
  tail call void @llvm.dbg.declare(metadata ptr %count1, metadata !3555, metadata !DIExpression()), !dbg !3583
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !3584, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !3585
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !3585, !tbaa !123
  store i32 %1, ptr %count1, align 4, !dbg !3583, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %count2) #12, !dbg !3586
  tail call void @llvm.dbg.declare(metadata ptr %count2, metadata !3556, metadata !DIExpression()), !dbg !3587
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !3588, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !3589
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !3589, !tbaa !123
  store i32 %3, ptr %count2, align 4, !dbg !3587, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #12, !dbg !3590
  tail call void @llvm.dbg.declare(metadata ptr %max_count, metadata !3557, metadata !DIExpression()), !dbg !3591
  %4 = load i32, ptr %count1, align 4, !dbg !3592, !tbaa !295
  %5 = load i32, ptr %count2, align 4, !dbg !3593, !tbaa !295
  %cmp = icmp ugt i32 %4, %5, !dbg !3594
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3592

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %count1, align 4, !dbg !3595, !tbaa !295
  br label %cond.end, !dbg !3592

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %count2, align 4, !dbg !3596, !tbaa !295
  br label %cond.end, !dbg !3592

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !3592
  store i32 %cond, ptr %max_count, align 4, !dbg !3591, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_count) #12, !dbg !3597
  tail call void @llvm.dbg.declare(metadata ptr %min_count, metadata !3558, metadata !DIExpression()), !dbg !3598
  %8 = load i32, ptr %count1, align 4, !dbg !3599, !tbaa !295
  %9 = load i32, ptr %count2, align 4, !dbg !3600, !tbaa !295
  %add = add i32 %8, %9, !dbg !3601
  %10 = load i32, ptr %max_count, align 4, !dbg !3602, !tbaa !295
  %sub = sub i32 %add, %10, !dbg !3603
  store i32 %sub, ptr %min_count, align 4, !dbg !3598, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3604
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3559, metadata !DIExpression()), !dbg !3605
  %11 = load ptr, ptr %set1.addr, align 8, !dbg !3606, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %11, i32 0, i32 3, !dbg !3608
  %12 = load i32, ptr %infinite, align 8, !dbg !3608, !tbaa !151
  %tobool = icmp ne i32 %12, 0, !dbg !3609
  %lnot = xor i1 %tobool, true, !dbg !3609
  %lnot.ext = zext i1 %lnot to i32, !dbg !3609
  %13 = load ptr, ptr %set2.addr, align 8, !dbg !3610, !tbaa !112
  %infinite2 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %13, i32 0, i32 3, !dbg !3611
  %14 = load i32, ptr %infinite2, align 8, !dbg !3611, !tbaa !151
  %tobool3 = icmp ne i32 %14, 0, !dbg !3612
  %lnot4 = xor i1 %tobool3, true, !dbg !3612
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3612
  %cmp6 = icmp ne i32 %lnot.ext, %lnot.ext5, !dbg !3613
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3614

if.then:                                          ; preds = %cond.end
  %15 = load ptr, ptr %set1.addr, align 8, !dbg !3615, !tbaa !112
  %infinite7 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %15, i32 0, i32 3, !dbg !3616
  %16 = load i32, ptr %infinite7, align 8, !dbg !3616, !tbaa !151
  %tobool8 = icmp ne i32 %16, 0, !dbg !3617
  %lnot9 = xor i1 %tobool8, true, !dbg !3617
  %lnot11 = xor i1 %lnot9, true, !dbg !3618
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3618
  %17 = load ptr, ptr %set2.addr, align 8, !dbg !3619, !tbaa !112
  %infinite13 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %17, i32 0, i32 3, !dbg !3620
  %18 = load i32, ptr %infinite13, align 8, !dbg !3620, !tbaa !151
  %tobool14 = icmp ne i32 %18, 0, !dbg !3621
  %lnot15 = xor i1 %tobool14, true, !dbg !3621
  %lnot17 = xor i1 %lnot15, true, !dbg !3622
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !3622
  %sub19 = sub nsw i32 %lnot.ext12, %lnot.ext18, !dbg !3623
  store i32 %sub19, ptr %retval, align 4, !dbg !3624
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !3624

if.end:                                           ; preds = %cond.end
  %19 = load i32, ptr %count1, align 4, !dbg !3625, !tbaa !295
  %20 = load i32, ptr %count2, align 4, !dbg !3626, !tbaa !295
  %cmp20 = icmp ne i32 %19, %20, !dbg !3627
  br i1 %cmp20, label %if.then21, label %if.end62, !dbg !3628

if.then21:                                        ; preds = %if.end
  %21 = load i32, ptr %min_count, align 4, !dbg !3629, !tbaa !295
  %22 = load i32, ptr %count2, align 4, !dbg !3630, !tbaa !295
  %cmp22 = icmp ult i32 %21, %22, !dbg !3631
  br i1 %cmp22, label %if.then23, label %if.else, !dbg !3632

if.then23:                                        ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 8, ptr %val1) #12, !dbg !3633
  tail call void @llvm.dbg.declare(metadata ptr %val1, metadata !3560, metadata !DIExpression()), !dbg !3634
  %23 = load ptr, ptr %set1.addr, align 8, !dbg !3635, !tbaa !112
  %infinite24 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %23, i32 0, i32 3, !dbg !3636
  %24 = load i32, ptr %infinite24, align 8, !dbg !3636, !tbaa !151
  %tobool25 = icmp ne i32 %24, 0, !dbg !3635
  %25 = zext i1 %tobool25 to i64, !dbg !3635
  %cond26 = select i1 %tobool25, i64 -1, i64 0, !dbg !3635
  store i64 %cond26, ptr %val1, align 8, !dbg !3634, !tbaa !146
  %26 = load i32, ptr %max_count, align 4, !dbg !3637, !tbaa !295
  %sub27 = sub i32 %26, 1, !dbg !3638
  store i32 %sub27, ptr %i, align 4, !dbg !3639, !tbaa !295
  br label %for.cond, !dbg !3640

for.cond:                                         ; preds = %for.inc, %if.then23
  %27 = load i32, ptr %i, align 4, !dbg !3641, !tbaa !295
  %28 = load i32, ptr %min_count, align 4, !dbg !3642, !tbaa !295
  %cmp28 = icmp sge i32 %27, %28, !dbg !3643
  br i1 %cmp28, label %for.body, label %for.end, !dbg !3644

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %val2) #12, !dbg !3645
  tail call void @llvm.dbg.declare(metadata ptr %val2, metadata !3565, metadata !DIExpression()), !dbg !3646
  %29 = load ptr, ptr %set2.addr, align 8, !dbg !3647, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %29, i32 0, i32 2, !dbg !3648
  %30 = load ptr, ptr %ulongs, align 8, !dbg !3648, !tbaa !134
  %31 = load i32, ptr %i, align 4, !dbg !3649, !tbaa !295
  %idxprom = sext i32 %31 to i64, !dbg !3647
  %arrayidx = getelementptr inbounds i64, ptr %30, i64 %idxprom, !dbg !3647
  %32 = load i64, ptr %arrayidx, align 8, !dbg !3647, !tbaa !146
  store i64 %32, ptr %val2, align 8, !dbg !3646, !tbaa !146
  %33 = load i64, ptr %val1, align 8, !dbg !3650, !tbaa !146
  %34 = load i64, ptr %val2, align 8, !dbg !3652, !tbaa !146
  %cmp29 = icmp eq i64 %33, %34, !dbg !3653
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !3654

if.then30:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3655

if.end31:                                         ; preds = %for.body
  %35 = load i64, ptr %val1, align 8, !dbg !3656, !tbaa !146
  %36 = load i64, ptr %val2, align 8, !dbg !3657, !tbaa !146
  %cmp32 = icmp ult i64 %35, %36, !dbg !3658
  %37 = zext i1 %cmp32 to i64, !dbg !3656
  %cond33 = select i1 %cmp32, i32 -1, i32 1, !dbg !3656
  store i32 %cond33, ptr %retval, align 4, !dbg !3659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3659

cleanup:                                          ; preds = %if.end31, %if.then30
  call void @llvm.lifetime.end.p0(i64 8, ptr %val2) #12, !dbg !3660
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %38 = load i32, ptr %i, align 4, !dbg !3661, !tbaa !295
  %dec = add nsw i32 %38, -1, !dbg !3661
  store i32 %dec, ptr %i, align 4, !dbg !3661, !tbaa !295
  br label %for.cond, !dbg !3662, !llvm.loop !3663

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3665
  br label %cleanup34, !dbg !3665

cleanup34:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %val1) #12, !dbg !3665
  %cleanup.dest35 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest35, label %cleanup86 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup34
  br label %if.end61, !dbg !3666

if.else:                                          ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 8, ptr %val236) #12, !dbg !3667
  tail call void @llvm.dbg.declare(metadata ptr %val236, metadata !3569, metadata !DIExpression()), !dbg !3668
  %39 = load ptr, ptr %set2.addr, align 8, !dbg !3669, !tbaa !112
  %infinite37 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %39, i32 0, i32 3, !dbg !3670
  %40 = load i32, ptr %infinite37, align 8, !dbg !3670, !tbaa !151
  %tobool38 = icmp ne i32 %40, 0, !dbg !3669
  %41 = zext i1 %tobool38 to i64, !dbg !3669
  %cond39 = select i1 %tobool38, i64 -1, i64 0, !dbg !3669
  store i64 %cond39, ptr %val236, align 8, !dbg !3668, !tbaa !146
  %42 = load i32, ptr %max_count, align 4, !dbg !3671, !tbaa !295
  %sub40 = sub i32 %42, 1, !dbg !3672
  store i32 %sub40, ptr %i, align 4, !dbg !3673, !tbaa !295
  br label %for.cond41, !dbg !3674

for.cond41:                                       ; preds = %for.inc55, %if.else
  %43 = load i32, ptr %i, align 4, !dbg !3675, !tbaa !295
  %44 = load i32, ptr %min_count, align 4, !dbg !3676, !tbaa !295
  %cmp42 = icmp sge i32 %43, %44, !dbg !3677
  br i1 %cmp42, label %for.body43, label %for.end57, !dbg !3678

for.body43:                                       ; preds = %for.cond41
  call void @llvm.lifetime.start.p0(i64 8, ptr %val144) #12, !dbg !3679
  tail call void @llvm.dbg.declare(metadata ptr %val144, metadata !3571, metadata !DIExpression()), !dbg !3680
  %45 = load ptr, ptr %set1.addr, align 8, !dbg !3681, !tbaa !112
  %ulongs45 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %45, i32 0, i32 2, !dbg !3682
  %46 = load ptr, ptr %ulongs45, align 8, !dbg !3682, !tbaa !134
  %47 = load i32, ptr %i, align 4, !dbg !3683, !tbaa !295
  %idxprom46 = sext i32 %47 to i64, !dbg !3681
  %arrayidx47 = getelementptr inbounds i64, ptr %46, i64 %idxprom46, !dbg !3681
  %48 = load i64, ptr %arrayidx47, align 8, !dbg !3681, !tbaa !146
  store i64 %48, ptr %val144, align 8, !dbg !3680, !tbaa !146
  %49 = load i64, ptr %val144, align 8, !dbg !3684, !tbaa !146
  %50 = load i64, ptr %val236, align 8, !dbg !3686, !tbaa !146
  %cmp48 = icmp eq i64 %49, %50, !dbg !3687
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3688

if.then49:                                        ; preds = %for.body43
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !3689

if.end50:                                         ; preds = %for.body43
  %51 = load i64, ptr %val144, align 8, !dbg !3690, !tbaa !146
  %52 = load i64, ptr %val236, align 8, !dbg !3691, !tbaa !146
  %cmp51 = icmp ult i64 %51, %52, !dbg !3692
  %53 = zext i1 %cmp51 to i64, !dbg !3690
  %cond52 = select i1 %cmp51, i32 -1, i32 1, !dbg !3690
  store i32 %cond52, ptr %retval, align 4, !dbg !3693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53, !dbg !3693

cleanup53:                                        ; preds = %if.end50, %if.then49
  call void @llvm.lifetime.end.p0(i64 8, ptr %val144) #12, !dbg !3694
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %cleanup58 [
    i32 7, label %for.inc55
  ]

for.inc55:                                        ; preds = %cleanup53
  %54 = load i32, ptr %i, align 4, !dbg !3695, !tbaa !295
  %dec56 = add nsw i32 %54, -1, !dbg !3695
  store i32 %dec56, ptr %i, align 4, !dbg !3695, !tbaa !295
  br label %for.cond41, !dbg !3696, !llvm.loop !3697

for.end57:                                        ; preds = %for.cond41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3699
  br label %cleanup58, !dbg !3699

cleanup58:                                        ; preds = %for.end57, %cleanup53
  call void @llvm.lifetime.end.p0(i64 8, ptr %val236) #12, !dbg !3699
  %cleanup.dest59 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest59, label %cleanup86 [
    i32 0, label %cleanup.cont60
  ]

cleanup.cont60:                                   ; preds = %cleanup58
  br label %if.end61

if.end61:                                         ; preds = %cleanup.cont60, %cleanup.cont
  br label %if.end62, !dbg !3700

if.end62:                                         ; preds = %if.end61, %if.end
  %55 = load i32, ptr %min_count, align 4, !dbg !3701, !tbaa !295
  %sub63 = sub i32 %55, 1, !dbg !3702
  store i32 %sub63, ptr %i, align 4, !dbg !3703, !tbaa !295
  br label %for.cond64, !dbg !3704

for.cond64:                                       ; preds = %for.inc83, %if.end62
  %56 = load i32, ptr %i, align 4, !dbg !3705, !tbaa !295
  %cmp65 = icmp sge i32 %56, 0, !dbg !3706
  br i1 %cmp65, label %for.body66, label %for.end85, !dbg !3707

for.body66:                                       ; preds = %for.cond64
  call void @llvm.lifetime.start.p0(i64 8, ptr %val167) #12, !dbg !3708
  tail call void @llvm.dbg.declare(metadata ptr %val167, metadata !3575, metadata !DIExpression()), !dbg !3709
  %57 = load ptr, ptr %set1.addr, align 8, !dbg !3710, !tbaa !112
  %ulongs68 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %57, i32 0, i32 2, !dbg !3711
  %58 = load ptr, ptr %ulongs68, align 8, !dbg !3711, !tbaa !134
  %59 = load i32, ptr %i, align 4, !dbg !3712, !tbaa !295
  %idxprom69 = sext i32 %59 to i64, !dbg !3710
  %arrayidx70 = getelementptr inbounds i64, ptr %58, i64 %idxprom69, !dbg !3710
  %60 = load i64, ptr %arrayidx70, align 8, !dbg !3710, !tbaa !146
  store i64 %60, ptr %val167, align 8, !dbg !3709, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %val271) #12, !dbg !3713
  tail call void @llvm.dbg.declare(metadata ptr %val271, metadata !3579, metadata !DIExpression()), !dbg !3714
  %61 = load ptr, ptr %set2.addr, align 8, !dbg !3715, !tbaa !112
  %ulongs72 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %61, i32 0, i32 2, !dbg !3716
  %62 = load ptr, ptr %ulongs72, align 8, !dbg !3716, !tbaa !134
  %63 = load i32, ptr %i, align 4, !dbg !3717, !tbaa !295
  %idxprom73 = sext i32 %63 to i64, !dbg !3715
  %arrayidx74 = getelementptr inbounds i64, ptr %62, i64 %idxprom73, !dbg !3715
  %64 = load i64, ptr %arrayidx74, align 8, !dbg !3715, !tbaa !146
  store i64 %64, ptr %val271, align 8, !dbg !3714, !tbaa !146
  %65 = load i64, ptr %val167, align 8, !dbg !3718, !tbaa !146
  %66 = load i64, ptr %val271, align 8, !dbg !3720, !tbaa !146
  %cmp75 = icmp eq i64 %65, %66, !dbg !3721
  br i1 %cmp75, label %if.then76, label %if.end77, !dbg !3722

if.then76:                                        ; preds = %for.body66
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !3723

if.end77:                                         ; preds = %for.body66
  %67 = load i64, ptr %val167, align 8, !dbg !3724, !tbaa !146
  %68 = load i64, ptr %val271, align 8, !dbg !3725, !tbaa !146
  %cmp78 = icmp ult i64 %67, %68, !dbg !3726
  %69 = zext i1 %cmp78 to i64, !dbg !3724
  %cond79 = select i1 %cmp78, i32 -1, i32 1, !dbg !3724
  store i32 %cond79, ptr %retval, align 4, !dbg !3727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80, !dbg !3727

cleanup80:                                        ; preds = %if.end77, %if.then76
  call void @llvm.lifetime.end.p0(i64 8, ptr %val271) #12, !dbg !3728
  call void @llvm.lifetime.end.p0(i64 8, ptr %val167) #12, !dbg !3728
  %cleanup.dest82 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest82, label %cleanup86 [
    i32 10, label %for.inc83
  ]

for.inc83:                                        ; preds = %cleanup80
  %70 = load i32, ptr %i, align 4, !dbg !3729, !tbaa !295
  %dec84 = add nsw i32 %70, -1, !dbg !3729
  store i32 %dec84, ptr %i, align 4, !dbg !3729, !tbaa !295
  br label %for.cond64, !dbg !3730, !llvm.loop !3731

for.end85:                                        ; preds = %for.cond64
  store i32 0, ptr %retval, align 4, !dbg !3733
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !3733

cleanup86:                                        ; preds = %for.end85, %cleanup80, %cleanup58, %cleanup34, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3734
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_count) #12, !dbg !3734
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #12, !dbg !3734
  call void @llvm.lifetime.end.p0(i64 4, ptr %count2) #12, !dbg !3734
  call void @llvm.lifetime.end.p0(i64 4, ptr %count1) #12, !dbg !3734
  %71 = load i32, ptr %retval, align 4, !dbg !3734
  ret i32 %71, !dbg !3734
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_weight(ptr noundef %set) #8 !dbg !3735 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %weight = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !3737, metadata !DIExpression()), !dbg !3740
  call void @llvm.lifetime.start.p0(i64 4, ptr %weight) #12, !dbg !3741
  tail call void @llvm.dbg.declare(metadata ptr %weight, metadata !3738, metadata !DIExpression()), !dbg !3742
  store i32 0, ptr %weight, align 4, !dbg !3742, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3743
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3739, metadata !DIExpression()), !dbg !3744
  %0 = load ptr, ptr %set.addr, align 8, !dbg !3745, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 3, !dbg !3747
  %1 = load i32, ptr %infinite, align 8, !dbg !3747, !tbaa !151
  %tobool = icmp ne i32 %1, 0, !dbg !3745
  br i1 %tobool, label %if.then, label %if.end, !dbg !3748

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !3749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3749

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !3750, !tbaa !295
  br label %for.cond, !dbg !3752

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !3753, !tbaa !295
  %3 = load ptr, ptr %set.addr, align 8, !dbg !3755, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %3, i32 0, i32 0, !dbg !3756
  %4 = load i32, ptr %ulongs_count, align 8, !dbg !3756, !tbaa !123
  %cmp = icmp ult i32 %2, %4, !dbg !3757
  br i1 %cmp, label %for.body, label %for.end, !dbg !3758

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %set.addr, align 8, !dbg !3759, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %5, i32 0, i32 2, !dbg !3760
  %6 = load ptr, ptr %ulongs, align 8, !dbg !3760, !tbaa !134
  %7 = load i32, ptr %i, align 4, !dbg !3761, !tbaa !295
  %idxprom = zext i32 %7 to i64, !dbg !3759
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom, !dbg !3759
  %8 = load i64, ptr %arrayidx, align 8, !dbg !3759, !tbaa !146
  %call = call i32 @hwloc_weight_long(i64 noundef %8) #16, !dbg !3762
  %9 = load i32, ptr %weight, align 4, !dbg !3763, !tbaa !295
  %add = add nsw i32 %9, %call, !dbg !3763
  store i32 %add, ptr %weight, align 4, !dbg !3763, !tbaa !295
  br label %for.inc, !dbg !3764

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !3765, !tbaa !295
  %inc = add i32 %10, 1, !dbg !3765
  store i32 %inc, ptr %i, align 4, !dbg !3765, !tbaa !295
  br label %for.cond, !dbg !3766, !llvm.loop !3767

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %weight, align 4, !dbg !3769, !tbaa !295
  store i32 %11, ptr %retval, align 4, !dbg !3770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3770

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !3771
  call void @llvm.lifetime.end.p0(i64 4, ptr %weight) #12, !dbg !3771
  %12 = load i32, ptr %retval, align 4, !dbg !3771
  ret i32 %12, !dbg !3771
}

; Function Attrs: inlinehint nounwind willreturn memory(none) uwtable
define internal i32 @hwloc_weight_long(i64 noundef %w) #10 !dbg !3772 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8, !tbaa !146
  tail call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !3774, metadata !DIExpression()), !dbg !3775
  %0 = load i64, ptr %w.addr, align 8, !dbg !3776, !tbaa !146
  %1 = call i64 @llvm.ctpop.i64(i64 %0), !dbg !3777
  %cast = trunc i64 %1 to i32, !dbg !3777
  ret i32 %cast, !dbg !3778
}

; Function Attrs: nounwind willreturn memory(read) uwtable
define i32 @hwloc_bitmap_compare_inclusion(ptr noundef %set1, ptr noundef %set2) #8 !dbg !3779 {
entry:
  %retval = alloca i32, align 4
  %set1.addr = alloca ptr, align 8
  %set2.addr = alloca ptr, align 8
  %max_count = alloca i32, align 4
  %result = alloca i32, align 4
  %empty1 = alloca i32, align 4
  %empty2 = alloca i32, align 4
  %i = alloca i32, align 4
  %val1 = alloca i64, align 8
  %val2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %set1, ptr %set1.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set1.addr, metadata !3781, metadata !DIExpression()), !dbg !3793
  store ptr %set2, ptr %set2.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set2.addr, metadata !3782, metadata !DIExpression()), !dbg !3794
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_count) #12, !dbg !3795
  tail call void @llvm.dbg.declare(metadata ptr %max_count, metadata !3783, metadata !DIExpression()), !dbg !3796
  %0 = load ptr, ptr %set1.addr, align 8, !dbg !3797, !tbaa !112
  %ulongs_count = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %0, i32 0, i32 0, !dbg !3798
  %1 = load i32, ptr %ulongs_count, align 8, !dbg !3798, !tbaa !123
  %2 = load ptr, ptr %set2.addr, align 8, !dbg !3799, !tbaa !112
  %ulongs_count1 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 0, !dbg !3800
  %3 = load i32, ptr %ulongs_count1, align 8, !dbg !3800, !tbaa !123
  %cmp = icmp ugt i32 %1, %3, !dbg !3801
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3797

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %set1.addr, align 8, !dbg !3802, !tbaa !112
  %ulongs_count2 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 0, !dbg !3803
  %5 = load i32, ptr %ulongs_count2, align 8, !dbg !3803, !tbaa !123
  br label %cond.end, !dbg !3797

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %set2.addr, align 8, !dbg !3804, !tbaa !112
  %ulongs_count3 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %6, i32 0, i32 0, !dbg !3805
  %7 = load i32, ptr %ulongs_count3, align 8, !dbg !3805, !tbaa !123
  br label %cond.end, !dbg !3797

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ], !dbg !3797
  store i32 %cond, ptr %max_count, align 4, !dbg !3796, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #12, !dbg !3806
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3784, metadata !DIExpression()), !dbg !3807
  store i32 0, ptr %result, align 4, !dbg !3807, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %empty1) #12, !dbg !3808
  tail call void @llvm.dbg.declare(metadata ptr %empty1, metadata !3785, metadata !DIExpression()), !dbg !3809
  store i32 1, ptr %empty1, align 4, !dbg !3809, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %empty2) #12, !dbg !3810
  tail call void @llvm.dbg.declare(metadata ptr %empty2, metadata !3786, metadata !DIExpression()), !dbg !3811
  store i32 1, ptr %empty2, align 4, !dbg !3811, !tbaa !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !3812
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3787, metadata !DIExpression()), !dbg !3813
  store i32 0, ptr %i, align 4, !dbg !3814, !tbaa !295
  br label %for.cond, !dbg !3815

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, ptr %i, align 4, !dbg !3816, !tbaa !295
  %9 = load i32, ptr %max_count, align 4, !dbg !3817, !tbaa !295
  %cmp4 = icmp ult i32 %8, %9, !dbg !3818
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3819

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %val1) #12, !dbg !3820
  tail call void @llvm.dbg.declare(metadata ptr %val1, metadata !3788, metadata !DIExpression()), !dbg !3821
  %10 = load i32, ptr %i, align 4, !dbg !3822, !tbaa !295
  %11 = load ptr, ptr %set1.addr, align 8, !dbg !3822, !tbaa !112
  %ulongs_count5 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %11, i32 0, i32 0, !dbg !3822
  %12 = load i32, ptr %ulongs_count5, align 8, !dbg !3822, !tbaa !123
  %cmp6 = icmp ult i32 %10, %12, !dbg !3822
  br i1 %cmp6, label %cond.true7, label %cond.false8, !dbg !3822

cond.true7:                                       ; preds = %for.body
  %13 = load ptr, ptr %set1.addr, align 8, !dbg !3822, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %13, i32 0, i32 2, !dbg !3822
  %14 = load ptr, ptr %ulongs, align 8, !dbg !3822, !tbaa !134
  %15 = load i32, ptr %i, align 4, !dbg !3822, !tbaa !295
  %idxprom = zext i32 %15 to i64, !dbg !3822
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %idxprom, !dbg !3822
  %16 = load i64, ptr %arrayidx, align 8, !dbg !3822, !tbaa !146
  br label %cond.end10, !dbg !3822

cond.false8:                                      ; preds = %for.body
  %17 = load ptr, ptr %set1.addr, align 8, !dbg !3822, !tbaa !112
  %infinite = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %17, i32 0, i32 3, !dbg !3822
  %18 = load i32, ptr %infinite, align 8, !dbg !3822, !tbaa !151
  %tobool = icmp ne i32 %18, 0, !dbg !3822
  %19 = zext i1 %tobool to i64, !dbg !3822
  %cond9 = select i1 %tobool, i64 -1, i64 0, !dbg !3822
  br label %cond.end10, !dbg !3822

cond.end10:                                       ; preds = %cond.false8, %cond.true7
  %cond11 = phi i64 [ %16, %cond.true7 ], [ %cond9, %cond.false8 ], !dbg !3822
  store i64 %cond11, ptr %val1, align 8, !dbg !3821, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %val2) #12, !dbg !3823
  tail call void @llvm.dbg.declare(metadata ptr %val2, metadata !3792, metadata !DIExpression()), !dbg !3824
  %20 = load i32, ptr %i, align 4, !dbg !3825, !tbaa !295
  %21 = load ptr, ptr %set2.addr, align 8, !dbg !3825, !tbaa !112
  %ulongs_count12 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %21, i32 0, i32 0, !dbg !3825
  %22 = load i32, ptr %ulongs_count12, align 8, !dbg !3825, !tbaa !123
  %cmp13 = icmp ult i32 %20, %22, !dbg !3825
  br i1 %cmp13, label %cond.true14, label %cond.false18, !dbg !3825

cond.true14:                                      ; preds = %cond.end10
  %23 = load ptr, ptr %set2.addr, align 8, !dbg !3825, !tbaa !112
  %ulongs15 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %23, i32 0, i32 2, !dbg !3825
  %24 = load ptr, ptr %ulongs15, align 8, !dbg !3825, !tbaa !134
  %25 = load i32, ptr %i, align 4, !dbg !3825, !tbaa !295
  %idxprom16 = zext i32 %25 to i64, !dbg !3825
  %arrayidx17 = getelementptr inbounds i64, ptr %24, i64 %idxprom16, !dbg !3825
  %26 = load i64, ptr %arrayidx17, align 8, !dbg !3825, !tbaa !146
  br label %cond.end22, !dbg !3825

cond.false18:                                     ; preds = %cond.end10
  %27 = load ptr, ptr %set2.addr, align 8, !dbg !3825, !tbaa !112
  %infinite19 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %27, i32 0, i32 3, !dbg !3825
  %28 = load i32, ptr %infinite19, align 8, !dbg !3825, !tbaa !151
  %tobool20 = icmp ne i32 %28, 0, !dbg !3825
  %29 = zext i1 %tobool20 to i64, !dbg !3825
  %cond21 = select i1 %tobool20, i64 -1, i64 0, !dbg !3825
  br label %cond.end22, !dbg !3825

cond.end22:                                       ; preds = %cond.false18, %cond.true14
  %cond23 = phi i64 [ %26, %cond.true14 ], [ %cond21, %cond.false18 ], !dbg !3825
  store i64 %cond23, ptr %val2, align 8, !dbg !3824, !tbaa !146
  %30 = load i64, ptr %val1, align 8, !dbg !3826, !tbaa !146
  %tobool24 = icmp ne i64 %30, 0, !dbg !3826
  br i1 %tobool24, label %if.else36, label %if.then, !dbg !3828

if.then:                                          ; preds = %cond.end22
  %31 = load i64, ptr %val2, align 8, !dbg !3829, !tbaa !146
  %tobool25 = icmp ne i64 %31, 0, !dbg !3829
  br i1 %tobool25, label %if.end, label %if.then26, !dbg !3832

if.then26:                                        ; preds = %if.then
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3833

if.end:                                           ; preds = %if.then
  %32 = load i32, ptr %result, align 4, !dbg !3834, !tbaa !295
  %cmp27 = icmp eq i32 %32, 2, !dbg !3836
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !3837

if.then28:                                        ; preds = %if.end
  %33 = load i32, ptr %empty2, align 4, !dbg !3838, !tbaa !295
  %tobool29 = icmp ne i32 %33, 0, !dbg !3838
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !3841

if.then30:                                        ; preds = %if.then28
  store i32 3, ptr %retval, align 4, !dbg !3842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3842

if.end31:                                         ; preds = %if.then28
  store i32 4, ptr %result, align 4, !dbg !3843, !tbaa !295
  br label %if.end35, !dbg !3844

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %result, align 4, !dbg !3845, !tbaa !295
  %cmp32 = icmp eq i32 %34, 0, !dbg !3847
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !3848

if.then33:                                        ; preds = %if.else
  store i32 1, ptr %result, align 4, !dbg !3849, !tbaa !295
  br label %if.end34, !dbg !3851

if.end34:                                         ; preds = %if.then33, %if.else
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end31
  br label %if.end95, !dbg !3852

if.else36:                                        ; preds = %cond.end22
  %35 = load i64, ptr %val2, align 8, !dbg !3853, !tbaa !146
  %tobool37 = icmp ne i64 %35, 0, !dbg !3853
  br i1 %tobool37, label %if.else49, label %if.then38, !dbg !3855

if.then38:                                        ; preds = %if.else36
  %36 = load i32, ptr %result, align 4, !dbg !3856, !tbaa !295
  %cmp39 = icmp eq i32 %36, 1, !dbg !3859
  br i1 %cmp39, label %if.then40, label %if.else44, !dbg !3860

if.then40:                                        ; preds = %if.then38
  %37 = load i32, ptr %empty1, align 4, !dbg !3861, !tbaa !295
  %tobool41 = icmp ne i32 %37, 0, !dbg !3861
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !3864

if.then42:                                        ; preds = %if.then40
  store i32 3, ptr %retval, align 4, !dbg !3865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3865

if.end43:                                         ; preds = %if.then40
  store i32 4, ptr %result, align 4, !dbg !3866, !tbaa !295
  br label %if.end48, !dbg !3867

if.else44:                                        ; preds = %if.then38
  %38 = load i32, ptr %result, align 4, !dbg !3868, !tbaa !295
  %cmp45 = icmp eq i32 %38, 0, !dbg !3870
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3871

if.then46:                                        ; preds = %if.else44
  store i32 2, ptr %result, align 4, !dbg !3872, !tbaa !295
  br label %if.end47, !dbg !3874

if.end47:                                         ; preds = %if.then46, %if.else44
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end43
  br label %if.end94, !dbg !3875

if.else49:                                        ; preds = %if.else36
  %39 = load i64, ptr %val1, align 8, !dbg !3876, !tbaa !146
  %40 = load i64, ptr %val2, align 8, !dbg !3878, !tbaa !146
  %cmp50 = icmp eq i64 %39, %40, !dbg !3879
  br i1 %cmp50, label %if.then51, label %if.else55, !dbg !3880

if.then51:                                        ; preds = %if.else49
  %41 = load i32, ptr %result, align 4, !dbg !3881, !tbaa !295
  %cmp52 = icmp eq i32 %41, 4, !dbg !3884
  br i1 %cmp52, label %if.then53, label %if.end54, !dbg !3885

if.then53:                                        ; preds = %if.then51
  store i32 3, ptr %retval, align 4, !dbg !3886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3886

if.end54:                                         ; preds = %if.then51
  br label %if.end93, !dbg !3887

if.else55:                                        ; preds = %if.else49
  %42 = load i64, ptr %val1, align 8, !dbg !3888, !tbaa !146
  %43 = load i64, ptr %val2, align 8, !dbg !3890, !tbaa !146
  %and = and i64 %42, %43, !dbg !3891
  %44 = load i64, ptr %val1, align 8, !dbg !3892, !tbaa !146
  %cmp56 = icmp eq i64 %and, %44, !dbg !3893
  br i1 %cmp56, label %if.then57, label %if.else62, !dbg !3894

if.then57:                                        ; preds = %if.else55
  %45 = load i32, ptr %result, align 4, !dbg !3895, !tbaa !295
  %cmp58 = icmp eq i32 %45, 2, !dbg !3898
  br i1 %cmp58, label %if.then60, label %lor.lhs.false, !dbg !3899

lor.lhs.false:                                    ; preds = %if.then57
  %46 = load i32, ptr %result, align 4, !dbg !3900, !tbaa !295
  %cmp59 = icmp eq i32 %46, 4, !dbg !3901
  br i1 %cmp59, label %if.then60, label %if.end61, !dbg !3902

if.then60:                                        ; preds = %lor.lhs.false, %if.then57
  store i32 3, ptr %retval, align 4, !dbg !3903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3903

if.end61:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %result, align 4, !dbg !3904, !tbaa !295
  br label %if.end92, !dbg !3905

if.else62:                                        ; preds = %if.else55
  %47 = load i64, ptr %val1, align 8, !dbg !3906, !tbaa !146
  %48 = load i64, ptr %val2, align 8, !dbg !3908, !tbaa !146
  %and63 = and i64 %47, %48, !dbg !3909
  %49 = load i64, ptr %val2, align 8, !dbg !3910, !tbaa !146
  %cmp64 = icmp eq i64 %and63, %49, !dbg !3911
  br i1 %cmp64, label %if.then65, label %if.else71, !dbg !3912

if.then65:                                        ; preds = %if.else62
  %50 = load i32, ptr %result, align 4, !dbg !3913, !tbaa !295
  %cmp66 = icmp eq i32 %50, 1, !dbg !3916
  br i1 %cmp66, label %if.then69, label %lor.lhs.false67, !dbg !3917

lor.lhs.false67:                                  ; preds = %if.then65
  %51 = load i32, ptr %result, align 4, !dbg !3918, !tbaa !295
  %cmp68 = icmp eq i32 %51, 4, !dbg !3919
  br i1 %cmp68, label %if.then69, label %if.end70, !dbg !3920

if.then69:                                        ; preds = %lor.lhs.false67, %if.then65
  store i32 3, ptr %retval, align 4, !dbg !3921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3921

if.end70:                                         ; preds = %lor.lhs.false67
  store i32 2, ptr %result, align 4, !dbg !3922, !tbaa !295
  br label %if.end91, !dbg !3923

if.else71:                                        ; preds = %if.else62
  %52 = load i64, ptr %val1, align 8, !dbg !3924, !tbaa !146
  %53 = load i64, ptr %val2, align 8, !dbg !3926, !tbaa !146
  %and72 = and i64 %52, %53, !dbg !3927
  %cmp73 = icmp ne i64 %and72, 0, !dbg !3928
  br i1 %cmp73, label %if.then74, label %if.else75, !dbg !3929

if.then74:                                        ; preds = %if.else71
  store i32 3, ptr %retval, align 4, !dbg !3930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3930

if.else75:                                        ; preds = %if.else71
  %54 = load i32, ptr %result, align 4, !dbg !3932, !tbaa !295
  %cmp76 = icmp eq i32 %54, 0, !dbg !3935
  br i1 %cmp76, label %land.lhs.true, label %if.end79, !dbg !3936

land.lhs.true:                                    ; preds = %if.else75
  %55 = load i32, ptr %empty1, align 4, !dbg !3937, !tbaa !295
  %tobool77 = icmp ne i32 %55, 0, !dbg !3937
  br i1 %tobool77, label %if.end79, label %if.then78, !dbg !3938

if.then78:                                        ; preds = %land.lhs.true
  store i32 3, ptr %retval, align 4, !dbg !3939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3939

if.end79:                                         ; preds = %land.lhs.true, %if.else75
  %56 = load i32, ptr %result, align 4, !dbg !3940, !tbaa !295
  %cmp80 = icmp eq i32 %56, 1, !dbg !3942
  br i1 %cmp80, label %land.lhs.true81, label %if.end84, !dbg !3943

land.lhs.true81:                                  ; preds = %if.end79
  %57 = load i32, ptr %empty1, align 4, !dbg !3944, !tbaa !295
  %tobool82 = icmp ne i32 %57, 0, !dbg !3944
  br i1 %tobool82, label %if.end84, label %if.then83, !dbg !3945

if.then83:                                        ; preds = %land.lhs.true81
  store i32 3, ptr %retval, align 4, !dbg !3946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3946

if.end84:                                         ; preds = %land.lhs.true81, %if.end79
  %58 = load i32, ptr %result, align 4, !dbg !3947, !tbaa !295
  %cmp85 = icmp eq i32 %58, 2, !dbg !3949
  br i1 %cmp85, label %land.lhs.true86, label %if.end89, !dbg !3950

land.lhs.true86:                                  ; preds = %if.end84
  %59 = load i32, ptr %empty2, align 4, !dbg !3951, !tbaa !295
  %tobool87 = icmp ne i32 %59, 0, !dbg !3951
  br i1 %tobool87, label %if.end89, label %if.then88, !dbg !3952

if.then88:                                        ; preds = %land.lhs.true86
  store i32 3, ptr %retval, align 4, !dbg !3953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3953

if.end89:                                         ; preds = %land.lhs.true86, %if.end84
  store i32 4, ptr %result, align 4, !dbg !3954, !tbaa !295
  br label %if.end90

if.end90:                                         ; preds = %if.end89
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end70
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.end61
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end54
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end48
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end35
  %60 = load i64, ptr %val1, align 8, !dbg !3955, !tbaa !146
  %tobool96 = icmp ne i64 %60, 0, !dbg !3956
  %lnot = xor i1 %tobool96, true, !dbg !3956
  %lnot.ext = zext i1 %lnot to i32, !dbg !3956
  %61 = load i32, ptr %empty1, align 4, !dbg !3957, !tbaa !295
  %and97 = and i32 %61, %lnot.ext, !dbg !3957
  store i32 %and97, ptr %empty1, align 4, !dbg !3957, !tbaa !295
  %62 = load i64, ptr %val2, align 8, !dbg !3958, !tbaa !146
  %tobool98 = icmp ne i64 %62, 0, !dbg !3959
  %lnot99 = xor i1 %tobool98, true, !dbg !3959
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !3959
  %63 = load i32, ptr %empty2, align 4, !dbg !3960, !tbaa !295
  %and101 = and i32 %63, %lnot.ext100, !dbg !3960
  store i32 %and101, ptr %empty2, align 4, !dbg !3960, !tbaa !295
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3961
  br label %cleanup, !dbg !3961

cleanup:                                          ; preds = %if.end95, %if.then88, %if.then83, %if.then78, %if.then74, %if.then69, %if.then60, %if.then53, %if.then42, %if.then30, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %val2) #12, !dbg !3961
  call void @llvm.lifetime.end.p0(i64 8, ptr %val1) #12, !dbg !3961
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup140 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3962

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %64 = load i32, ptr %i, align 4, !dbg !3963, !tbaa !295
  %inc = add i32 %64, 1, !dbg !3963
  store i32 %inc, ptr %i, align 4, !dbg !3963, !tbaa !295
  br label %for.cond, !dbg !3964, !llvm.loop !3965

for.end:                                          ; preds = %for.cond
  %65 = load ptr, ptr %set1.addr, align 8, !dbg !3967, !tbaa !112
  %infinite103 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %65, i32 0, i32 3, !dbg !3969
  %66 = load i32, ptr %infinite103, align 8, !dbg !3969, !tbaa !151
  %tobool104 = icmp ne i32 %66, 0, !dbg !3967
  br i1 %tobool104, label %if.else120, label %if.then105, !dbg !3970

if.then105:                                       ; preds = %for.end
  %67 = load ptr, ptr %set2.addr, align 8, !dbg !3971, !tbaa !112
  %infinite106 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %67, i32 0, i32 3, !dbg !3974
  %68 = load i32, ptr %infinite106, align 8, !dbg !3974, !tbaa !151
  %tobool107 = icmp ne i32 %68, 0, !dbg !3971
  br i1 %tobool107, label %if.then108, label %if.end119, !dbg !3975

if.then108:                                       ; preds = %if.then105
  %69 = load i32, ptr %result, align 4, !dbg !3976, !tbaa !295
  %cmp109 = icmp eq i32 %69, 2, !dbg !3979
  br i1 %cmp109, label %if.then110, label %if.else114, !dbg !3980

if.then110:                                       ; preds = %if.then108
  %70 = load i32, ptr %empty2, align 4, !dbg !3981, !tbaa !295
  %tobool111 = icmp ne i32 %70, 0, !dbg !3981
  br i1 %tobool111, label %if.end113, label %if.then112, !dbg !3984

if.then112:                                       ; preds = %if.then110
  store i32 3, ptr %retval, align 4, !dbg !3985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup140, !dbg !3985

if.end113:                                        ; preds = %if.then110
  store i32 4, ptr %result, align 4, !dbg !3986, !tbaa !295
  br label %if.end118, !dbg !3987

if.else114:                                       ; preds = %if.then108
  %71 = load i32, ptr %result, align 4, !dbg !3988, !tbaa !295
  %cmp115 = icmp eq i32 %71, 0, !dbg !3990
  br i1 %cmp115, label %if.then116, label %if.end117, !dbg !3991

if.then116:                                       ; preds = %if.else114
  store i32 1, ptr %result, align 4, !dbg !3992, !tbaa !295
  br label %if.end117, !dbg !3994

if.end117:                                        ; preds = %if.then116, %if.else114
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end113
  br label %if.end119, !dbg !3995

if.end119:                                        ; preds = %if.end118, %if.then105
  br label %if.end139, !dbg !3996

if.else120:                                       ; preds = %for.end
  %72 = load ptr, ptr %set2.addr, align 8, !dbg !3997, !tbaa !112
  %infinite121 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %72, i32 0, i32 3, !dbg !3999
  %73 = load i32, ptr %infinite121, align 8, !dbg !3999, !tbaa !151
  %tobool122 = icmp ne i32 %73, 0, !dbg !3997
  br i1 %tobool122, label %if.else134, label %if.then123, !dbg !4000

if.then123:                                       ; preds = %if.else120
  %74 = load i32, ptr %result, align 4, !dbg !4001, !tbaa !295
  %cmp124 = icmp eq i32 %74, 1, !dbg !4004
  br i1 %cmp124, label %if.then125, label %if.else129, !dbg !4005

if.then125:                                       ; preds = %if.then123
  %75 = load i32, ptr %empty1, align 4, !dbg !4006, !tbaa !295
  %tobool126 = icmp ne i32 %75, 0, !dbg !4006
  br i1 %tobool126, label %if.end128, label %if.then127, !dbg !4009

if.then127:                                       ; preds = %if.then125
  store i32 3, ptr %retval, align 4, !dbg !4010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup140, !dbg !4010

if.end128:                                        ; preds = %if.then125
  store i32 4, ptr %result, align 4, !dbg !4011, !tbaa !295
  br label %if.end133, !dbg !4012

if.else129:                                       ; preds = %if.then123
  %76 = load i32, ptr %result, align 4, !dbg !4013, !tbaa !295
  %cmp130 = icmp eq i32 %76, 0, !dbg !4015
  br i1 %cmp130, label %if.then131, label %if.end132, !dbg !4016

if.then131:                                       ; preds = %if.else129
  store i32 2, ptr %result, align 4, !dbg !4017, !tbaa !295
  br label %if.end132, !dbg !4019

if.end132:                                        ; preds = %if.then131, %if.else129
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end128
  br label %if.end138, !dbg !4020

if.else134:                                       ; preds = %if.else120
  %77 = load i32, ptr %result, align 4, !dbg !4021, !tbaa !295
  %cmp135 = icmp eq i32 %77, 4, !dbg !4024
  br i1 %cmp135, label %if.then136, label %if.end137, !dbg !4025

if.then136:                                       ; preds = %if.else134
  store i32 3, ptr %retval, align 4, !dbg !4026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup140, !dbg !4026

if.end137:                                        ; preds = %if.else134
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end133
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end119
  %78 = load i32, ptr %result, align 4, !dbg !4027, !tbaa !295
  store i32 %78, ptr %retval, align 4, !dbg !4028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup140, !dbg !4028

cleanup140:                                       ; preds = %if.end139, %if.then136, %if.then127, %if.then112, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !4029
  call void @llvm.lifetime.end.p0(i64 4, ptr %empty2) #12, !dbg !4029
  call void @llvm.lifetime.end.p0(i64 4, ptr %empty1) #12, !dbg !4029
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #12, !dbg !4029
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_count) #12, !dbg !4029
  %79 = load i32, ptr %retval, align 4, !dbg !4029
  ret i32 %79, !dbg !4029
}

; Function Attrs: nounwind uwtable
define internal void @hwloc_bitmap_enlarge_by_ulongs(ptr noundef %set, i32 noundef %needed_count) #0 !dbg !4030 {
entry:
  %set.addr = alloca ptr, align 8
  %needed_count.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !4032, metadata !DIExpression()), !dbg !4035
  store i32 %needed_count, ptr %needed_count.addr, align 4, !tbaa !295
  tail call void @llvm.dbg.declare(metadata ptr %needed_count.addr, metadata !4033, metadata !DIExpression()), !dbg !4036
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #12, !dbg !4037
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4034, metadata !DIExpression()), !dbg !4038
  %0 = load i32, ptr %needed_count.addr, align 4, !dbg !4039, !tbaa !295
  %conv = zext i32 %0 to i64, !dbg !4040
  %sub = sub i64 %conv, 1, !dbg !4041
  %call = call i32 @hwloc_flsl_manual(i64 noundef %sub) #16, !dbg !4042
  %shl = shl i32 1, %call, !dbg !4043
  store i32 %shl, ptr %tmp, align 4, !dbg !4038, !tbaa !295
  %1 = load i32, ptr %tmp, align 4, !dbg !4044, !tbaa !295
  %2 = load ptr, ptr %set.addr, align 8, !dbg !4046, !tbaa !112
  %ulongs_allocated = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %2, i32 0, i32 1, !dbg !4047
  %3 = load i32, ptr %ulongs_allocated, align 4, !dbg !4047, !tbaa !129
  %cmp = icmp ugt i32 %1, %3, !dbg !4048
  br i1 %cmp, label %if.then, label %if.end8, !dbg !4049

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %set.addr, align 8, !dbg !4050, !tbaa !112
  %ulongs = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %4, i32 0, i32 2, !dbg !4052
  %5 = load ptr, ptr %ulongs, align 8, !dbg !4052, !tbaa !134
  %6 = load i32, ptr %tmp, align 4, !dbg !4053, !tbaa !295
  %conv2 = zext i32 %6 to i64, !dbg !4053
  %mul = mul i64 %conv2, 8, !dbg !4054
  %call3 = call ptr @realloc(ptr noundef %5, i64 noundef %mul) #17, !dbg !4055
  %7 = load ptr, ptr %set.addr, align 8, !dbg !4056, !tbaa !112
  %ulongs4 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %7, i32 0, i32 2, !dbg !4057
  store ptr %call3, ptr %ulongs4, align 8, !dbg !4058, !tbaa !134
  %8 = load ptr, ptr %set.addr, align 8, !dbg !4059, !tbaa !112
  %ulongs5 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %8, i32 0, i32 2, !dbg !4059
  %9 = load ptr, ptr %ulongs5, align 8, !dbg !4059, !tbaa !134
  %tobool = icmp ne ptr %9, null, !dbg !4059
  br i1 %tobool, label %if.then6, label %if.else, !dbg !4062

if.then6:                                         ; preds = %if.then
  br label %if.end, !dbg !4062

if.else:                                          ; preds = %if.then
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.7, i32 noundef 126, ptr noundef @__PRETTY_FUNCTION__.hwloc_bitmap_enlarge_by_ulongs) #15, !dbg !4059
  unreachable, !dbg !4059

if.end:                                           ; preds = %if.then6
  %10 = load i32, ptr %tmp, align 4, !dbg !4063, !tbaa !295
  %11 = load ptr, ptr %set.addr, align 8, !dbg !4064, !tbaa !112
  %ulongs_allocated7 = getelementptr inbounds %struct.hwloc_bitmap_s, ptr %11, i32 0, i32 1, !dbg !4065
  store i32 %10, ptr %ulongs_allocated7, align 4, !dbg !4066, !tbaa !129
  br label %if.end8, !dbg !4067

if.end8:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #12, !dbg !4068
  ret void, !dbg !4068
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !4069 ptr @realloc(ptr noundef, i64 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!79}
!llvm.module.flags = !{!87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bitmap.c", directory: "/local-ssd/hwloc-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy-build/aidengro/spack-stage-hwloc-1.11.13-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy/spack-src/src", checksumkind: CSK_MD5, checksum: "076f459dfb4b47c429c28d6ff7d46489")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 270, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 5)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 275, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 4)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 2)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 10)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !9, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 568, elements: !40)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!40 = !{!41}
!41 = !DISubrange(count: 71)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !21, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 414, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !16, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !21, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 7)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 6)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !55, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !60, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !46, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 12)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 600, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 75)
!79 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !80, globals: !86, splitDebugInlining: false, nameTableKind: None)
!80 = !{!81, !82, !83, !84, !85}
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!84 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!85 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!86 = !{!0, !7, !12, !14, !19, !24, !29, !34, !36, !42, !44, !49, !51, !53, !58, !63, !65, !67, !69, !74}
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{i32 8, !"PIC Level", i32 2}
!91 = !{i32 7, !"uwtable", i32 2}
!92 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!93 = distinct !DISubprogram(name: "hwloc_bitmap_alloc", scope: !2, file: !2, line: 70, type: !94, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !106)
!94 = !DISubroutineType(types: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_bitmap_t", file: !97, line: 63, baseType: !98)
!97 = !DIFile(filename: "include/hwloc/bitmap.h", directory: "/local-ssd/hwloc-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy-build/aidengro/spack-stage-hwloc-1.11.13-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy/spack-src", checksumkind: CSK_MD5, checksum: "622c1fd18cfda2e0f77c420a46e70056")
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_bitmap_s", file: !2, line: 32, size: 192, elements: !100)
!100 = !{!101, !102, !103, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ulongs_count", scope: !99, file: !2, line: 33, baseType: !84, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ulongs_allocated", scope: !99, file: !2, line: 34, baseType: !84, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ulongs", scope: !99, file: !2, line: 35, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "infinite", scope: !99, file: !2, line: 36, baseType: !81, size: 32, offset: 128)
!106 = !{!107}
!107 = !DILocalVariable(name: "set", scope: !93, file: !2, line: 72, type: !98)
!108 = !DILocation(line: 72, column: 3, scope: !93)
!109 = !DILocation(line: 72, column: 27, scope: !93)
!110 = !DILocation(line: 74, column: 9, scope: !93)
!111 = !DILocation(line: 74, column: 7, scope: !93)
!112 = !{!113, !113, i64 0}
!113 = !{!"any pointer", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DILocation(line: 75, column: 8, scope: !117)
!117 = distinct !DILexicalBlock(scope: !93, file: !2, line: 75, column: 7)
!118 = !DILocation(line: 75, column: 7, scope: !93)
!119 = !DILocation(line: 76, column: 5, scope: !117)
!120 = !DILocation(line: 78, column: 3, scope: !93)
!121 = !DILocation(line: 78, column: 8, scope: !93)
!122 = !DILocation(line: 78, column: 21, scope: !93)
!123 = !{!124, !125, i64 0}
!124 = !{!"hwloc_bitmap_s", !125, i64 0, !125, i64 4, !113, i64 8, !125, i64 16}
!125 = !{!"int", !114, i64 0}
!126 = !DILocation(line: 79, column: 3, scope: !93)
!127 = !DILocation(line: 79, column: 8, scope: !93)
!128 = !DILocation(line: 79, column: 25, scope: !93)
!129 = !{!124, !125, i64 4}
!130 = !DILocation(line: 80, column: 17, scope: !93)
!131 = !DILocation(line: 80, column: 3, scope: !93)
!132 = !DILocation(line: 80, column: 8, scope: !93)
!133 = !DILocation(line: 80, column: 15, scope: !93)
!134 = !{!124, !113, i64 8}
!135 = !DILocation(line: 81, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !93, file: !2, line: 81, column: 7)
!137 = !DILocation(line: 81, column: 13, scope: !136)
!138 = !DILocation(line: 81, column: 7, scope: !93)
!139 = !DILocation(line: 82, column: 10, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !2, line: 81, column: 21)
!141 = !DILocation(line: 82, column: 5, scope: !140)
!142 = !DILocation(line: 83, column: 5, scope: !140)
!143 = !DILocation(line: 86, column: 3, scope: !93)
!144 = !DILocation(line: 86, column: 8, scope: !93)
!145 = !DILocation(line: 86, column: 18, scope: !93)
!146 = !{!147, !147, i64 0}
!147 = !{!"long", !114, i64 0}
!148 = !DILocation(line: 87, column: 3, scope: !93)
!149 = !DILocation(line: 87, column: 8, scope: !93)
!150 = !DILocation(line: 87, column: 17, scope: !93)
!151 = !{!124, !125, i64 16}
!152 = !DILocation(line: 91, column: 10, scope: !93)
!153 = !DILocation(line: 91, column: 3, scope: !93)
!154 = !DILocation(line: 92, column: 1, scope: !93)
!155 = !DISubprogram(name: "malloc", scope: !156, file: !156, line: 540, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!157 = !DISubroutineType(types: !158)
!158 = !{!82, !159}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 70, baseType: !85)
!160 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!161 = !DISubprogram(name: "free", scope: !156, file: !156, line: 555, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !82}
!164 = distinct !DISubprogram(name: "hwloc_bitmap_alloc_full", scope: !2, file: !2, line: 94, type: !94, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !165)
!165 = !{!166}
!166 = !DILocalVariable(name: "set", scope: !164, file: !2, line: 96, type: !98)
!167 = !DILocation(line: 96, column: 3, scope: !164)
!168 = !DILocation(line: 96, column: 27, scope: !164)
!169 = !DILocation(line: 96, column: 33, scope: !164)
!170 = !DILocation(line: 97, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !2, line: 97, column: 7)
!172 = !DILocation(line: 97, column: 7, scope: !164)
!173 = !DILocation(line: 98, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !2, line: 97, column: 12)
!175 = !DILocation(line: 98, column: 10, scope: !174)
!176 = !DILocation(line: 98, column: 19, scope: !174)
!177 = !DILocation(line: 99, column: 5, scope: !174)
!178 = !DILocation(line: 99, column: 10, scope: !174)
!179 = !DILocation(line: 99, column: 20, scope: !174)
!180 = !DILocation(line: 100, column: 3, scope: !174)
!181 = !DILocation(line: 101, column: 10, scope: !164)
!182 = !DILocation(line: 102, column: 1, scope: !164)
!183 = !DILocation(line: 101, column: 3, scope: !164)
!184 = distinct !DISubprogram(name: "hwloc_bitmap_free", scope: !2, file: !2, line: 104, type: !185, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !98}
!187 = !{!188}
!188 = !DILocalVariable(name: "set", arg: 1, scope: !184, file: !2, line: 104, type: !98)
!189 = !DILocation(line: 104, column: 48, scope: !184)
!190 = !DILocation(line: 106, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !184, file: !2, line: 106, column: 7)
!192 = !DILocation(line: 106, column: 7, scope: !184)
!193 = !DILocation(line: 107, column: 5, scope: !191)
!194 = !DILocation(line: 114, column: 8, scope: !184)
!195 = !DILocation(line: 114, column: 13, scope: !184)
!196 = !DILocation(line: 114, column: 3, scope: !184)
!197 = !DILocation(line: 115, column: 8, scope: !184)
!198 = !DILocation(line: 115, column: 3, scope: !184)
!199 = !DILocation(line: 116, column: 1, scope: !184)
!200 = distinct !DISubprogram(name: "hwloc_bitmap_dup", scope: !2, file: !2, line: 171, type: !201, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !205)
!201 = !DISubroutineType(types: !202)
!202 = !{!96, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!205 = !{!206, !207}
!206 = !DILocalVariable(name: "old", arg: 1, scope: !200, file: !2, line: 171, type: !203)
!207 = !DILocalVariable(name: "new", scope: !200, file: !2, line: 173, type: !98)
!208 = !DILocation(line: 171, column: 72, scope: !200)
!209 = !DILocation(line: 173, column: 3, scope: !200)
!210 = !DILocation(line: 173, column: 27, scope: !200)
!211 = !DILocation(line: 175, column: 8, scope: !212)
!212 = distinct !DILexicalBlock(scope: !200, file: !2, line: 175, column: 7)
!213 = !DILocation(line: 175, column: 7, scope: !200)
!214 = !DILocation(line: 176, column: 5, scope: !212)
!215 = !DILocation(line: 180, column: 9, scope: !200)
!216 = !DILocation(line: 180, column: 7, scope: !200)
!217 = !DILocation(line: 181, column: 8, scope: !218)
!218 = distinct !DILexicalBlock(scope: !200, file: !2, line: 181, column: 7)
!219 = !DILocation(line: 181, column: 7, scope: !200)
!220 = !DILocation(line: 182, column: 5, scope: !218)
!221 = !DILocation(line: 184, column: 24, scope: !200)
!222 = !DILocation(line: 184, column: 29, scope: !200)
!223 = !DILocation(line: 184, column: 46, scope: !200)
!224 = !DILocation(line: 184, column: 17, scope: !200)
!225 = !DILocation(line: 184, column: 3, scope: !200)
!226 = !DILocation(line: 184, column: 8, scope: !200)
!227 = !DILocation(line: 184, column: 15, scope: !200)
!228 = !DILocation(line: 185, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !200, file: !2, line: 185, column: 7)
!230 = !DILocation(line: 185, column: 13, scope: !229)
!231 = !DILocation(line: 185, column: 7, scope: !200)
!232 = !DILocation(line: 186, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !2, line: 185, column: 21)
!234 = !DILocation(line: 186, column: 5, scope: !233)
!235 = !DILocation(line: 187, column: 5, scope: !233)
!236 = !DILocation(line: 189, column: 27, scope: !200)
!237 = !DILocation(line: 189, column: 32, scope: !200)
!238 = !DILocation(line: 189, column: 3, scope: !200)
!239 = !DILocation(line: 189, column: 8, scope: !200)
!240 = !DILocation(line: 189, column: 25, scope: !200)
!241 = !DILocation(line: 190, column: 23, scope: !200)
!242 = !DILocation(line: 190, column: 28, scope: !200)
!243 = !DILocation(line: 190, column: 3, scope: !200)
!244 = !DILocation(line: 190, column: 8, scope: !200)
!245 = !DILocation(line: 190, column: 21, scope: !200)
!246 = !DILocation(line: 191, column: 10, scope: !200)
!247 = !DILocation(line: 191, column: 15, scope: !200)
!248 = !DILocation(line: 191, column: 23, scope: !200)
!249 = !DILocation(line: 191, column: 28, scope: !200)
!250 = !DILocation(line: 191, column: 36, scope: !200)
!251 = !DILocation(line: 191, column: 41, scope: !200)
!252 = !DILocation(line: 191, column: 54, scope: !200)
!253 = !DILocation(line: 191, column: 3, scope: !200)
!254 = !DILocation(line: 192, column: 19, scope: !200)
!255 = !DILocation(line: 192, column: 24, scope: !200)
!256 = !DILocation(line: 192, column: 3, scope: !200)
!257 = !DILocation(line: 192, column: 8, scope: !200)
!258 = !DILocation(line: 192, column: 17, scope: !200)
!259 = !DILocation(line: 196, column: 10, scope: !200)
!260 = !DILocation(line: 196, column: 3, scope: !200)
!261 = !DILocation(line: 197, column: 1, scope: !200)
!262 = distinct !DISubprogram(name: "hwloc_bitmap_copy", scope: !2, file: !2, line: 199, type: !263, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !98, !203}
!265 = !{!266, !267}
!266 = !DILocalVariable(name: "dst", arg: 1, scope: !262, file: !2, line: 199, type: !98)
!267 = !DILocalVariable(name: "src", arg: 2, scope: !262, file: !2, line: 199, type: !203)
!268 = !DILocation(line: 199, column: 48, scope: !262)
!269 = !DILocation(line: 199, column: 83, scope: !262)
!270 = !DILocation(line: 204, column: 32, scope: !262)
!271 = !DILocation(line: 204, column: 37, scope: !262)
!272 = !DILocation(line: 204, column: 42, scope: !262)
!273 = !DILocation(line: 204, column: 3, scope: !262)
!274 = !DILocation(line: 206, column: 10, scope: !262)
!275 = !DILocation(line: 206, column: 15, scope: !262)
!276 = !DILocation(line: 206, column: 23, scope: !262)
!277 = !DILocation(line: 206, column: 28, scope: !262)
!278 = !DILocation(line: 206, column: 36, scope: !262)
!279 = !DILocation(line: 206, column: 41, scope: !262)
!280 = !DILocation(line: 206, column: 54, scope: !262)
!281 = !DILocation(line: 206, column: 3, scope: !262)
!282 = !DILocation(line: 207, column: 19, scope: !262)
!283 = !DILocation(line: 207, column: 24, scope: !262)
!284 = !DILocation(line: 207, column: 3, scope: !262)
!285 = !DILocation(line: 207, column: 8, scope: !262)
!286 = !DILocation(line: 207, column: 17, scope: !262)
!287 = !DILocation(line: 208, column: 1, scope: !262)
!288 = distinct !DISubprogram(name: "hwloc_bitmap_reset_by_ulongs", scope: !2, file: !2, line: 160, type: !289, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !98, !84}
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "set", arg: 1, scope: !288, file: !2, line: 160, type: !98)
!293 = !DILocalVariable(name: "needed_count", arg: 2, scope: !288, file: !2, line: 160, type: !84)
!294 = !DILocation(line: 160, column: 54, scope: !288)
!295 = !{!125, !125, i64 0}
!296 = !DILocation(line: 160, column: 68, scope: !288)
!297 = !DILocation(line: 162, column: 34, scope: !288)
!298 = !DILocation(line: 162, column: 39, scope: !288)
!299 = !DILocation(line: 162, column: 3, scope: !288)
!300 = !DILocation(line: 163, column: 23, scope: !288)
!301 = !DILocation(line: 163, column: 3, scope: !288)
!302 = !DILocation(line: 163, column: 8, scope: !288)
!303 = !DILocation(line: 163, column: 21, scope: !288)
!304 = !DILocation(line: 164, column: 1, scope: !288)
!305 = distinct !DISubprogram(name: "hwloc_bitmap_snprintf", scope: !2, file: !2, line: 216, type: !306, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !311)
!306 = !DISubroutineType(types: !307)
!307 = !{!81, !308, !159, !310}
!308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !203)
!311 = !{!312, !313, !314, !315, !321, !322, !323, !324, !325, !326, !327, !328}
!312 = !DILocalVariable(name: "buf", arg: 1, scope: !305, file: !2, line: 216, type: !308)
!313 = !DILocalVariable(name: "buflen", arg: 2, scope: !305, file: !2, line: 216, type: !159)
!314 = !DILocalVariable(name: "set", arg: 3, scope: !305, file: !2, line: 216, type: !310)
!315 = !DILocalVariable(name: "size", scope: !305, file: !2, line: 218, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !317, line: 220, baseType: !318)
!317 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !319, line: 194, baseType: !320)
!319 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!320 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!321 = !DILocalVariable(name: "tmp", scope: !305, file: !2, line: 219, type: !309)
!322 = !DILocalVariable(name: "res", scope: !305, file: !2, line: 220, type: !81)
!323 = !DILocalVariable(name: "ret", scope: !305, file: !2, line: 220, type: !81)
!324 = !DILocalVariable(name: "needcomma", scope: !305, file: !2, line: 221, type: !81)
!325 = !DILocalVariable(name: "i", scope: !305, file: !2, line: 222, type: !81)
!326 = !DILocalVariable(name: "accum", scope: !305, file: !2, line: 223, type: !85)
!327 = !DILocalVariable(name: "accumed", scope: !305, file: !2, line: 224, type: !81)
!328 = !DILocalVariable(name: "accum_mask", scope: !305, file: !2, line: 228, type: !329)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!330 = !DILocation(line: 216, column: 51, scope: !305)
!331 = !DILocation(line: 216, column: 63, scope: !305)
!332 = !DILocation(line: 216, column: 118, scope: !305)
!333 = !DILocation(line: 218, column: 3, scope: !305)
!334 = !DILocation(line: 218, column: 11, scope: !305)
!335 = !DILocation(line: 218, column: 18, scope: !305)
!336 = !DILocation(line: 219, column: 3, scope: !305)
!337 = !DILocation(line: 219, column: 9, scope: !305)
!338 = !DILocation(line: 219, column: 15, scope: !305)
!339 = !DILocation(line: 220, column: 3, scope: !305)
!340 = !DILocation(line: 220, column: 7, scope: !305)
!341 = !DILocation(line: 220, column: 12, scope: !305)
!342 = !DILocation(line: 221, column: 3, scope: !305)
!343 = !DILocation(line: 221, column: 7, scope: !305)
!344 = !DILocation(line: 222, column: 3, scope: !305)
!345 = !DILocation(line: 222, column: 7, scope: !305)
!346 = !DILocation(line: 223, column: 3, scope: !305)
!347 = !DILocation(line: 223, column: 17, scope: !305)
!348 = !DILocation(line: 224, column: 3, scope: !305)
!349 = !DILocation(line: 224, column: 7, scope: !305)
!350 = !DILocation(line: 228, column: 3, scope: !305)
!351 = !DILocation(line: 228, column: 23, scope: !305)
!352 = !DILocation(line: 234, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !305, file: !2, line: 234, column: 7)
!354 = !DILocation(line: 234, column: 14, scope: !353)
!355 = !DILocation(line: 234, column: 7, scope: !305)
!356 = !DILocation(line: 235, column: 5, scope: !353)
!357 = !DILocation(line: 235, column: 12, scope: !353)
!358 = !{!114, !114, i64 0}
!359 = !DILocation(line: 237, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !305, file: !2, line: 237, column: 7)
!361 = !DILocation(line: 237, column: 12, scope: !360)
!362 = !DILocation(line: 237, column: 7, scope: !305)
!363 = !DILocation(line: 238, column: 26, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !2, line: 237, column: 22)
!365 = !DILocation(line: 238, column: 31, scope: !364)
!366 = !DILocation(line: 238, column: 11, scope: !364)
!367 = !DILocation(line: 238, column: 9, scope: !364)
!368 = !DILocation(line: 239, column: 15, scope: !364)
!369 = !DILocation(line: 240, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !2, line: 240, column: 9)
!371 = !DILocation(line: 240, column: 13, scope: !370)
!372 = !DILocation(line: 240, column: 9, scope: !364)
!373 = !DILocation(line: 241, column: 7, scope: !370)
!374 = !DILocation(line: 242, column: 12, scope: !364)
!375 = !DILocation(line: 242, column: 9, scope: !364)
!376 = !DILocation(line: 243, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !364, file: !2, line: 243, column: 9)
!378 = !DILocation(line: 243, column: 16, scope: !377)
!379 = !DILocation(line: 243, column: 13, scope: !377)
!380 = !DILocation(line: 243, column: 9, scope: !364)
!381 = !DILocation(line: 244, column: 13, scope: !377)
!382 = !DILocation(line: 244, column: 17, scope: !377)
!383 = !DILocation(line: 244, column: 27, scope: !377)
!384 = !DILocation(line: 244, column: 22, scope: !377)
!385 = !DILocation(line: 244, column: 32, scope: !377)
!386 = !DILocation(line: 244, column: 11, scope: !377)
!387 = !DILocation(line: 244, column: 7, scope: !377)
!388 = !DILocation(line: 245, column: 12, scope: !364)
!389 = !DILocation(line: 245, column: 9, scope: !364)
!390 = !DILocation(line: 246, column: 13, scope: !364)
!391 = !DILocation(line: 246, column: 10, scope: !364)
!392 = !DILocation(line: 247, column: 3, scope: !364)
!393 = !DILocation(line: 249, column: 5, scope: !305)
!394 = !DILocation(line: 249, column: 10, scope: !305)
!395 = !DILocation(line: 249, column: 22, scope: !305)
!396 = !DILocation(line: 249, column: 4, scope: !305)
!397 = !DILocation(line: 251, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !305, file: !2, line: 251, column: 7)
!399 = !DILocation(line: 251, column: 12, scope: !398)
!400 = !DILocation(line: 251, column: 7, scope: !305)
!401 = !DILocation(line: 253, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !2, line: 251, column: 22)
!403 = !DILocation(line: 253, column: 12, scope: !402)
!404 = !DILocation(line: 253, column: 13, scope: !402)
!405 = !DILocation(line: 253, column: 17, scope: !402)
!406 = !DILocation(line: 253, column: 20, scope: !402)
!407 = !DILocation(line: 253, column: 25, scope: !402)
!408 = !DILocation(line: 253, column: 32, scope: !402)
!409 = !DILocation(line: 253, column: 35, scope: !402)
!410 = !DILocation(line: 0, scope: !402)
!411 = !DILocation(line: 254, column: 8, scope: !402)
!412 = distinct !{!412, !401, !411, !413}
!413 = !{!"llvm.loop.mustprogress"}
!414 = !DILocation(line: 255, column: 3, scope: !402)
!415 = !DILocation(line: 257, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !398, file: !2, line: 255, column: 10)
!417 = !DILocation(line: 257, column: 12, scope: !416)
!418 = !DILocation(line: 257, column: 13, scope: !416)
!419 = !DILocation(line: 257, column: 17, scope: !416)
!420 = !DILocation(line: 257, column: 20, scope: !416)
!421 = !DILocation(line: 257, column: 25, scope: !416)
!422 = !DILocation(line: 257, column: 32, scope: !416)
!423 = !DILocation(line: 257, column: 35, scope: !416)
!424 = !DILocation(line: 0, scope: !416)
!425 = !DILocation(line: 258, column: 8, scope: !416)
!426 = distinct !{!426, !415, !425, !413}
!427 = !DILocation(line: 261, column: 3, scope: !305)
!428 = !DILocation(line: 261, column: 10, scope: !305)
!429 = !DILocation(line: 261, column: 11, scope: !305)
!430 = !DILocation(line: 261, column: 15, scope: !305)
!431 = !DILocation(line: 261, column: 18, scope: !305)
!432 = !DILocation(line: 263, column: 10, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !2, line: 263, column: 9)
!434 = distinct !DILexicalBlock(scope: !305, file: !2, line: 261, column: 27)
!435 = !DILocation(line: 263, column: 9, scope: !434)
!436 = !DILocation(line: 264, column: 15, scope: !437)
!437 = distinct !DILexicalBlock(scope: !433, file: !2, line: 263, column: 19)
!438 = !DILocation(line: 264, column: 20, scope: !437)
!439 = !DILocation(line: 264, column: 28, scope: !437)
!440 = !DILocation(line: 264, column: 13, scope: !437)
!441 = !DILocation(line: 265, column: 15, scope: !437)
!442 = !DILocation(line: 266, column: 5, scope: !437)
!443 = !DILocation(line: 268, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !434, file: !2, line: 268, column: 9)
!445 = !DILocation(line: 268, column: 15, scope: !444)
!446 = !DILocation(line: 268, column: 9, scope: !434)
!447 = !DILocation(line: 270, column: 30, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !2, line: 268, column: 29)
!449 = !DILocation(line: 270, column: 35, scope: !448)
!450 = !DILocation(line: 270, column: 41, scope: !448)
!451 = !DILocation(line: 271, column: 9, scope: !448)
!452 = !DILocation(line: 271, column: 15, scope: !448)
!453 = !DILocation(line: 271, column: 29, scope: !448)
!454 = !DILocation(line: 270, column: 15, scope: !448)
!455 = !DILocation(line: 270, column: 13, scope: !448)
!456 = !DILocation(line: 272, column: 17, scope: !448)
!457 = !DILocation(line: 273, column: 5, scope: !448)
!458 = !DILocation(line: 273, column: 16, scope: !459)
!459 = distinct !DILexicalBlock(scope: !444, file: !2, line: 273, column: 16)
!460 = !DILocation(line: 273, column: 18, scope: !459)
!461 = !DILocation(line: 273, column: 24, scope: !459)
!462 = !DILocation(line: 273, column: 27, scope: !459)
!463 = !DILocation(line: 273, column: 35, scope: !459)
!464 = !DILocation(line: 273, column: 16, scope: !444)
!465 = !DILocation(line: 275, column: 28, scope: !466)
!466 = distinct !DILexicalBlock(scope: !459, file: !2, line: 273, column: 67)
!467 = !DILocation(line: 275, column: 33, scope: !466)
!468 = !DILocation(line: 275, column: 39, scope: !466)
!469 = !DILocation(line: 275, column: 13, scope: !466)
!470 = !DILocation(line: 275, column: 11, scope: !466)
!471 = !DILocation(line: 276, column: 5, scope: !466)
!472 = !DILocation(line: 276, column: 16, scope: !473)
!473 = distinct !DILexicalBlock(scope: !459, file: !2, line: 276, column: 16)
!474 = !DILocation(line: 276, column: 16, scope: !459)
!475 = !DILocation(line: 277, column: 28, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !2, line: 276, column: 27)
!477 = !DILocation(line: 277, column: 33, scope: !476)
!478 = !DILocation(line: 277, column: 13, scope: !476)
!479 = !DILocation(line: 277, column: 11, scope: !476)
!480 = !DILocation(line: 278, column: 5, scope: !476)
!481 = !DILocation(line: 279, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !473, file: !2, line: 278, column: 12)
!483 = !DILocation(line: 281, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !434, file: !2, line: 281, column: 9)
!485 = !DILocation(line: 281, column: 13, scope: !484)
!486 = !DILocation(line: 281, column: 9, scope: !434)
!487 = !DILocation(line: 282, column: 7, scope: !484)
!488 = !DILocation(line: 283, column: 12, scope: !434)
!489 = !DILocation(line: 283, column: 9, scope: !434)
!490 = !DILocation(line: 289, column: 11, scope: !434)
!491 = !DILocation(line: 290, column: 13, scope: !434)
!492 = !DILocation(line: 293, column: 9, scope: !493)
!493 = distinct !DILexicalBlock(scope: !434, file: !2, line: 293, column: 9)
!494 = !DILocation(line: 293, column: 16, scope: !493)
!495 = !DILocation(line: 293, column: 13, scope: !493)
!496 = !DILocation(line: 293, column: 9, scope: !434)
!497 = !DILocation(line: 294, column: 13, scope: !493)
!498 = !DILocation(line: 294, column: 17, scope: !493)
!499 = !DILocation(line: 294, column: 27, scope: !493)
!500 = !DILocation(line: 294, column: 22, scope: !493)
!501 = !DILocation(line: 294, column: 32, scope: !493)
!502 = !DILocation(line: 294, column: 11, scope: !493)
!503 = !DILocation(line: 294, column: 7, scope: !493)
!504 = !DILocation(line: 296, column: 12, scope: !434)
!505 = !DILocation(line: 296, column: 9, scope: !434)
!506 = !DILocation(line: 297, column: 13, scope: !434)
!507 = !DILocation(line: 297, column: 10, scope: !434)
!508 = distinct !{!508, !427, !509, !413}
!509 = !DILocation(line: 298, column: 3, scope: !305)
!510 = !DILocation(line: 301, column: 8, scope: !511)
!511 = distinct !DILexicalBlock(scope: !305, file: !2, line: 301, column: 7)
!512 = !DILocation(line: 301, column: 7, scope: !305)
!513 = !DILocation(line: 302, column: 26, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !2, line: 301, column: 13)
!515 = !DILocation(line: 302, column: 31, scope: !514)
!516 = !DILocation(line: 302, column: 11, scope: !514)
!517 = !DILocation(line: 302, column: 9, scope: !514)
!518 = !DILocation(line: 303, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !514, file: !2, line: 303, column: 9)
!520 = !DILocation(line: 303, column: 13, scope: !519)
!521 = !DILocation(line: 303, column: 9, scope: !514)
!522 = !DILocation(line: 304, column: 7, scope: !519)
!523 = !DILocation(line: 305, column: 12, scope: !514)
!524 = !DILocation(line: 305, column: 9, scope: !514)
!525 = !DILocation(line: 306, column: 3, scope: !514)
!526 = !DILocation(line: 308, column: 10, scope: !305)
!527 = !DILocation(line: 308, column: 3, scope: !305)
!528 = !DILocation(line: 309, column: 1, scope: !305)
!529 = !DISubprogram(name: "hwloc_snprintf", scope: !530, file: !530, line: 321, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DIFile(filename: "include/private/private.h", directory: "/local-ssd/hwloc-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy-build/aidengro/spack-stage-hwloc-1.11.13-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy/spack-src", checksumkind: CSK_MD5, checksum: "d4ca161b15186850e7ac97571021ae0c")
!531 = !DISubroutineType(types: !532)
!532 = !{!81, !309, !159, !83, null}
!533 = distinct !DISubprogram(name: "hwloc_bitmap_asprintf", scope: !2, file: !2, line: 311, type: !534, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !537)
!534 = !DISubroutineType(types: !535)
!535 = !{!81, !536, !310}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!537 = !{!538, !539, !540, !541}
!538 = !DILocalVariable(name: "strp", arg: 1, scope: !533, file: !2, line: 311, type: !536)
!539 = !DILocalVariable(name: "set", arg: 2, scope: !533, file: !2, line: 311, type: !310)
!540 = !DILocalVariable(name: "len", scope: !533, file: !2, line: 313, type: !81)
!541 = !DILocalVariable(name: "buf", scope: !533, file: !2, line: 314, type: !309)
!542 = !DILocation(line: 311, column: 35, scope: !533)
!543 = !DILocation(line: 311, column: 88, scope: !533)
!544 = !DILocation(line: 313, column: 3, scope: !533)
!545 = !DILocation(line: 313, column: 7, scope: !533)
!546 = !DILocation(line: 314, column: 3, scope: !533)
!547 = !DILocation(line: 314, column: 9, scope: !533)
!548 = !DILocation(line: 318, column: 40, scope: !533)
!549 = !DILocation(line: 318, column: 9, scope: !533)
!550 = !DILocation(line: 318, column: 7, scope: !533)
!551 = !DILocation(line: 319, column: 16, scope: !533)
!552 = !DILocation(line: 319, column: 19, scope: !533)
!553 = !DILocation(line: 319, column: 9, scope: !533)
!554 = !DILocation(line: 319, column: 7, scope: !533)
!555 = !DILocation(line: 320, column: 8, scope: !556)
!556 = distinct !DILexicalBlock(scope: !533, file: !2, line: 320, column: 7)
!557 = !DILocation(line: 320, column: 7, scope: !533)
!558 = !DILocation(line: 321, column: 5, scope: !556)
!559 = !DILocation(line: 322, column: 11, scope: !533)
!560 = !DILocation(line: 322, column: 4, scope: !533)
!561 = !DILocation(line: 322, column: 9, scope: !533)
!562 = !DILocation(line: 323, column: 32, scope: !533)
!563 = !DILocation(line: 323, column: 37, scope: !533)
!564 = !DILocation(line: 323, column: 40, scope: !533)
!565 = !DILocation(line: 323, column: 44, scope: !533)
!566 = !DILocation(line: 323, column: 10, scope: !533)
!567 = !DILocation(line: 323, column: 3, scope: !533)
!568 = !DILocation(line: 324, column: 1, scope: !533)
!569 = distinct !DISubprogram(name: "hwloc_bitmap_sscanf", scope: !2, file: !2, line: 326, type: !570, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !573)
!570 = !DISubroutineType(types: !571)
!571 = !{!81, !98, !572}
!572 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !582, !583}
!574 = !DILocalVariable(name: "set", arg: 1, scope: !569, file: !2, line: 326, type: !98)
!575 = !DILocalVariable(name: "string", arg: 2, scope: !569, file: !2, line: 326, type: !572)
!576 = !DILocalVariable(name: "current", scope: !569, file: !2, line: 328, type: !83)
!577 = !DILocalVariable(name: "accum", scope: !569, file: !2, line: 329, type: !85)
!578 = !DILocalVariable(name: "count", scope: !569, file: !2, line: 330, type: !81)
!579 = !DILocalVariable(name: "infinite", scope: !569, file: !2, line: 331, type: !81)
!580 = !DILocalVariable(name: "val", scope: !581, file: !2, line: 355, type: !85)
!581 = distinct !DILexicalBlock(scope: !569, file: !2, line: 354, column: 28)
!582 = !DILocalVariable(name: "next", scope: !581, file: !2, line: 356, type: !309)
!583 = !DILabel(scope: !569, name: "failed", file: !2, line: 381)
!584 = !DILocation(line: 326, column: 48, scope: !569)
!585 = !DILocation(line: 326, column: 83, scope: !569)
!586 = !DILocation(line: 328, column: 3, scope: !569)
!587 = !DILocation(line: 328, column: 16, scope: !569)
!588 = !DILocation(line: 328, column: 26, scope: !569)
!589 = !DILocation(line: 329, column: 3, scope: !569)
!590 = !DILocation(line: 329, column: 17, scope: !569)
!591 = !DILocation(line: 330, column: 3, scope: !569)
!592 = !DILocation(line: 330, column: 7, scope: !569)
!593 = !DILocation(line: 331, column: 3, scope: !569)
!594 = !DILocation(line: 331, column: 7, scope: !569)
!595 = !DILocation(line: 334, column: 8, scope: !569)
!596 = !DILocation(line: 335, column: 3, scope: !569)
!597 = !DILocation(line: 335, column: 28, scope: !569)
!598 = !DILocation(line: 335, column: 35, scope: !569)
!599 = !DILocation(line: 335, column: 21, scope: !569)
!600 = !DILocation(line: 335, column: 19, scope: !569)
!601 = !DILocation(line: 335, column: 45, scope: !569)
!602 = !DILocation(line: 336, column: 10, scope: !569)
!603 = distinct !{!603, !596, !602, !413}
!604 = !DILocation(line: 338, column: 13, scope: !569)
!605 = !DILocation(line: 338, column: 11, scope: !569)
!606 = !DILocation(line: 339, column: 27, scope: !607)
!607 = distinct !DILexicalBlock(scope: !569, file: !2, line: 339, column: 7)
!608 = !DILocation(line: 339, column: 8, scope: !607)
!609 = !DILocation(line: 339, column: 7, scope: !569)
!610 = !DILocation(line: 340, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !2, line: 339, column: 40)
!612 = !DILocation(line: 341, column: 10, scope: !613)
!613 = distinct !DILexicalBlock(scope: !611, file: !2, line: 341, column: 9)
!614 = !DILocation(line: 341, column: 9, scope: !613)
!615 = !DILocation(line: 341, column: 18, scope: !613)
!616 = !DILocation(line: 341, column: 9, scope: !611)
!617 = !DILocation(line: 343, column: 25, scope: !618)
!618 = distinct !DILexicalBlock(scope: !613, file: !2, line: 341, column: 26)
!619 = !DILocation(line: 343, column: 7, scope: !618)
!620 = !DILocation(line: 344, column: 7, scope: !618)
!621 = !DILocation(line: 346, column: 12, scope: !611)
!622 = !DILocation(line: 347, column: 14, scope: !611)
!623 = !DILocation(line: 348, column: 10, scope: !611)
!624 = !DILocation(line: 349, column: 3, scope: !611)
!625 = !DILocation(line: 351, column: 32, scope: !569)
!626 = !DILocation(line: 351, column: 38, scope: !569)
!627 = !DILocation(line: 351, column: 44, scope: !569)
!628 = !DILocation(line: 351, column: 75, scope: !569)
!629 = !DILocation(line: 351, column: 80, scope: !569)
!630 = !DILocation(line: 351, column: 3, scope: !569)
!631 = !DILocation(line: 352, column: 3, scope: !569)
!632 = !DILocation(line: 352, column: 8, scope: !569)
!633 = !DILocation(line: 352, column: 17, scope: !569)
!634 = !DILocation(line: 354, column: 3, scope: !569)
!635 = !DILocation(line: 354, column: 11, scope: !569)
!636 = !DILocation(line: 354, column: 10, scope: !569)
!637 = !DILocation(line: 354, column: 19, scope: !569)
!638 = !DILocation(line: 355, column: 5, scope: !581)
!639 = !DILocation(line: 355, column: 19, scope: !581)
!640 = !DILocation(line: 356, column: 5, scope: !581)
!641 = !DILocation(line: 356, column: 11, scope: !581)
!642 = !DILocation(line: 357, column: 19, scope: !581)
!643 = !DILocation(line: 357, column: 11, scope: !581)
!644 = !DILocation(line: 357, column: 9, scope: !581)
!645 = !DILocation(line: 359, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !2, line: 359, column: 5)
!647 = distinct !DILexicalBlock(scope: !581, file: !2, line: 359, column: 5)
!648 = !DILocation(line: 359, column: 5, scope: !647)
!649 = !DILocation(line: 360, column: 10, scope: !581)
!650 = !DILocation(line: 362, column: 15, scope: !581)
!651 = !DILocation(line: 362, column: 24, scope: !581)
!652 = !DILocation(line: 362, column: 30, scope: !581)
!653 = !DILocation(line: 362, column: 61, scope: !581)
!654 = !DILocation(line: 362, column: 19, scope: !581)
!655 = !DILocation(line: 362, column: 11, scope: !581)
!656 = !DILocation(line: 363, column: 11, scope: !657)
!657 = distinct !DILexicalBlock(scope: !581, file: !2, line: 363, column: 9)
!658 = !DILocation(line: 363, column: 17, scope: !657)
!659 = !DILocation(line: 363, column: 9, scope: !581)
!660 = !DILocation(line: 364, column: 59, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !2, line: 363, column: 50)
!662 = !DILocation(line: 364, column: 7, scope: !661)
!663 = !DILocation(line: 364, column: 12, scope: !661)
!664 = !DILocation(line: 364, column: 19, scope: !661)
!665 = !DILocation(line: 364, column: 25, scope: !661)
!666 = !DILocation(line: 364, column: 57, scope: !661)
!667 = !DILocation(line: 365, column: 13, scope: !661)
!668 = !DILocation(line: 366, column: 5, scope: !661)
!669 = !DILocation(line: 368, column: 10, scope: !670)
!670 = distinct !DILexicalBlock(scope: !581, file: !2, line: 368, column: 9)
!671 = !DILocation(line: 368, column: 9, scope: !670)
!672 = !DILocation(line: 368, column: 15, scope: !670)
!673 = !DILocation(line: 368, column: 9, scope: !581)
!674 = !DILocation(line: 369, column: 12, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 369, column: 11)
!676 = distinct !DILexicalBlock(scope: !670, file: !2, line: 368, column: 23)
!677 = !DILocation(line: 369, column: 11, scope: !675)
!678 = !DILocation(line: 369, column: 17, scope: !675)
!679 = !DILocation(line: 369, column: 20, scope: !675)
!680 = !DILocation(line: 369, column: 26, scope: !675)
!681 = !DILocation(line: 369, column: 11, scope: !676)
!682 = !DILocation(line: 370, column: 2, scope: !675)
!683 = !DILocation(line: 372, column: 2, scope: !675)
!684 = !DILocation(line: 374, column: 29, scope: !581)
!685 = !DILocation(line: 374, column: 33, scope: !581)
!686 = !DILocation(line: 374, column: 13, scope: !581)
!687 = !DILocation(line: 375, column: 3, scope: !569)
!688 = distinct !{!688, !634, !687, !413}
!689 = !DILocation(line: 377, column: 19, scope: !569)
!690 = !DILocation(line: 377, column: 3, scope: !569)
!691 = !DILocation(line: 377, column: 8, scope: !569)
!692 = !DILocation(line: 377, column: 17, scope: !569)
!693 = !DILocation(line: 379, column: 3, scope: !569)
!694 = !DILocation(line: 381, column: 2, scope: !569)
!695 = !DILocation(line: 383, column: 21, scope: !569)
!696 = !DILocation(line: 383, column: 3, scope: !569)
!697 = !DILocation(line: 384, column: 3, scope: !569)
!698 = !DILocation(line: 385, column: 1, scope: !569)
!699 = !DISubprogram(name: "strchr", scope: !700, file: !700, line: 246, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!700 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!701 = !DISubroutineType(types: !702)
!702 = !{!309, !83, !81}
!703 = !DISubprogram(name: "strncmp", scope: !700, file: !700, line: 159, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DISubroutineType(types: !705)
!705 = !{!81, !83, !83, !159}
!706 = distinct !DISubprogram(name: "hwloc_bitmap_fill", scope: !2, file: !2, line: 691, type: !185, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !707)
!707 = !{!708}
!708 = !DILocalVariable(name: "set", arg: 1, scope: !706, file: !2, line: 691, type: !98)
!709 = !DILocation(line: 691, column: 48, scope: !706)
!710 = !DILocation(line: 695, column: 31, scope: !706)
!711 = !DILocation(line: 695, column: 2, scope: !706)
!712 = !DILocation(line: 696, column: 21, scope: !706)
!713 = !DILocation(line: 696, column: 2, scope: !706)
!714 = !DILocation(line: 697, column: 1, scope: !706)
!715 = !DISubprogram(name: "strtoul", scope: !156, file: !156, line: 181, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DISubroutineType(types: !717)
!717 = !{!85, !572, !718, !81}
!718 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !536)
!719 = !DISubprogram(name: "__assert_fail", scope: !720, file: !720, line: 69, type: !721, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!720 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!721 = !DISubroutineType(types: !722)
!722 = !{null, !83, !83, !84, !83}
!723 = distinct !DISubprogram(name: "hwloc_bitmap_zero", scope: !2, file: !2, line: 675, type: !185, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !724)
!724 = !{!725}
!725 = !DILocalVariable(name: "set", arg: 1, scope: !723, file: !2, line: 675, type: !98)
!726 = !DILocation(line: 675, column: 48, scope: !723)
!727 = !DILocation(line: 679, column: 31, scope: !723)
!728 = !DILocation(line: 679, column: 2, scope: !723)
!729 = !DILocation(line: 680, column: 21, scope: !723)
!730 = !DILocation(line: 680, column: 2, scope: !723)
!731 = !DILocation(line: 681, column: 1, scope: !723)
!732 = distinct !DISubprogram(name: "hwloc_bitmap_list_snprintf", scope: !2, file: !2, line: 387, type: !306, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !746}
!734 = !DILocalVariable(name: "buf", arg: 1, scope: !732, file: !2, line: 387, type: !308)
!735 = !DILocalVariable(name: "buflen", arg: 2, scope: !732, file: !2, line: 387, type: !159)
!736 = !DILocalVariable(name: "set", arg: 3, scope: !732, file: !2, line: 387, type: !310)
!737 = !DILocalVariable(name: "prev", scope: !732, file: !2, line: 389, type: !81)
!738 = !DILocalVariable(name: "reverse", scope: !732, file: !2, line: 390, type: !96)
!739 = !DILocalVariable(name: "size", scope: !732, file: !2, line: 391, type: !316)
!740 = !DILocalVariable(name: "tmp", scope: !732, file: !2, line: 392, type: !309)
!741 = !DILocalVariable(name: "res", scope: !732, file: !2, line: 393, type: !81)
!742 = !DILocalVariable(name: "ret", scope: !732, file: !2, line: 393, type: !81)
!743 = !DILocalVariable(name: "needcomma", scope: !732, file: !2, line: 394, type: !81)
!744 = !DILocalVariable(name: "begin", scope: !745, file: !2, line: 406, type: !81)
!745 = distinct !DILexicalBlock(scope: !732, file: !2, line: 405, column: 13)
!746 = !DILocalVariable(name: "end", scope: !745, file: !2, line: 406, type: !81)
!747 = !DILocation(line: 387, column: 56, scope: !732)
!748 = !DILocation(line: 387, column: 68, scope: !732)
!749 = !DILocation(line: 387, column: 123, scope: !732)
!750 = !DILocation(line: 389, column: 3, scope: !732)
!751 = !DILocation(line: 389, column: 7, scope: !732)
!752 = !DILocation(line: 390, column: 3, scope: !732)
!753 = !DILocation(line: 390, column: 18, scope: !732)
!754 = !DILocation(line: 391, column: 3, scope: !732)
!755 = !DILocation(line: 391, column: 11, scope: !732)
!756 = !DILocation(line: 391, column: 18, scope: !732)
!757 = !DILocation(line: 392, column: 3, scope: !732)
!758 = !DILocation(line: 392, column: 9, scope: !732)
!759 = !DILocation(line: 392, column: 15, scope: !732)
!760 = !DILocation(line: 393, column: 3, scope: !732)
!761 = !DILocation(line: 393, column: 7, scope: !732)
!762 = !DILocation(line: 393, column: 12, scope: !732)
!763 = !DILocation(line: 394, column: 3, scope: !732)
!764 = !DILocation(line: 394, column: 7, scope: !732)
!765 = !DILocation(line: 398, column: 13, scope: !732)
!766 = !DILocation(line: 398, column: 11, scope: !732)
!767 = !DILocation(line: 399, column: 20, scope: !732)
!768 = !DILocation(line: 399, column: 29, scope: !732)
!769 = !DILocation(line: 399, column: 3, scope: !732)
!770 = !DILocation(line: 402, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !732, file: !2, line: 402, column: 7)
!772 = !DILocation(line: 402, column: 14, scope: !771)
!773 = !DILocation(line: 402, column: 7, scope: !732)
!774 = !DILocation(line: 403, column: 5, scope: !771)
!775 = !DILocation(line: 403, column: 12, scope: !771)
!776 = !DILocation(line: 405, column: 3, scope: !732)
!777 = !DILocation(line: 406, column: 5, scope: !745)
!778 = !DILocation(line: 406, column: 9, scope: !745)
!779 = !DILocation(line: 406, column: 16, scope: !745)
!780 = !DILocation(line: 408, column: 31, scope: !745)
!781 = !DILocation(line: 408, column: 36, scope: !745)
!782 = !DILocation(line: 408, column: 13, scope: !745)
!783 = !DILocation(line: 408, column: 11, scope: !745)
!784 = !DILocation(line: 409, column: 9, scope: !785)
!785 = distinct !DILexicalBlock(scope: !745, file: !2, line: 409, column: 9)
!786 = !DILocation(line: 409, column: 15, scope: !785)
!787 = !DILocation(line: 409, column: 9, scope: !745)
!788 = !DILocation(line: 410, column: 7, scope: !785)
!789 = !DILocation(line: 411, column: 29, scope: !745)
!790 = !DILocation(line: 411, column: 38, scope: !745)
!791 = !DILocation(line: 411, column: 11, scope: !745)
!792 = !DILocation(line: 411, column: 9, scope: !745)
!793 = !DILocation(line: 413, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !745, file: !2, line: 413, column: 9)
!795 = !DILocation(line: 413, column: 16, scope: !794)
!796 = !DILocation(line: 413, column: 21, scope: !794)
!797 = !DILocation(line: 413, column: 13, scope: !794)
!798 = !DILocation(line: 413, column: 9, scope: !745)
!799 = !DILocation(line: 414, column: 28, scope: !800)
!800 = distinct !DILexicalBlock(scope: !794, file: !2, line: 413, column: 25)
!801 = !DILocation(line: 414, column: 33, scope: !800)
!802 = !DILocation(line: 414, column: 39, scope: !800)
!803 = !DILocation(line: 414, column: 65, scope: !800)
!804 = !DILocation(line: 414, column: 13, scope: !800)
!805 = !DILocation(line: 414, column: 11, scope: !800)
!806 = !DILocation(line: 415, column: 5, scope: !800)
!807 = !DILocation(line: 415, column: 16, scope: !808)
!808 = distinct !DILexicalBlock(scope: !794, file: !2, line: 415, column: 16)
!809 = !DILocation(line: 415, column: 20, scope: !808)
!810 = !DILocation(line: 415, column: 16, scope: !794)
!811 = !DILocation(line: 416, column: 28, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !2, line: 415, column: 27)
!813 = !DILocation(line: 416, column: 33, scope: !812)
!814 = !DILocation(line: 416, column: 39, scope: !812)
!815 = !DILocation(line: 416, column: 67, scope: !812)
!816 = !DILocation(line: 416, column: 13, scope: !812)
!817 = !DILocation(line: 416, column: 11, scope: !812)
!818 = !DILocation(line: 417, column: 5, scope: !812)
!819 = !DILocation(line: 418, column: 28, scope: !820)
!820 = distinct !DILexicalBlock(scope: !808, file: !2, line: 417, column: 12)
!821 = !DILocation(line: 418, column: 33, scope: !820)
!822 = !DILocation(line: 418, column: 39, scope: !820)
!823 = !DILocation(line: 418, column: 71, scope: !820)
!824 = !DILocation(line: 418, column: 78, scope: !820)
!825 = !DILocation(line: 418, column: 81, scope: !820)
!826 = !DILocation(line: 418, column: 13, scope: !820)
!827 = !DILocation(line: 418, column: 11, scope: !820)
!828 = !DILocation(line: 420, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !745, file: !2, line: 420, column: 9)
!830 = !DILocation(line: 420, column: 13, scope: !829)
!831 = !DILocation(line: 420, column: 9, scope: !745)
!832 = !DILocation(line: 421, column: 25, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !2, line: 420, column: 18)
!834 = !DILocation(line: 421, column: 7, scope: !833)
!835 = !DILocation(line: 422, column: 7, scope: !833)
!836 = !DILocation(line: 424, column: 12, scope: !745)
!837 = !DILocation(line: 424, column: 9, scope: !745)
!838 = !DILocation(line: 426, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !745, file: !2, line: 426, column: 9)
!840 = !DILocation(line: 426, column: 16, scope: !839)
!841 = !DILocation(line: 426, column: 13, scope: !839)
!842 = !DILocation(line: 426, column: 9, scope: !745)
!843 = !DILocation(line: 427, column: 13, scope: !839)
!844 = !DILocation(line: 427, column: 17, scope: !839)
!845 = !DILocation(line: 427, column: 27, scope: !839)
!846 = !DILocation(line: 427, column: 22, scope: !839)
!847 = !DILocation(line: 427, column: 32, scope: !839)
!848 = !DILocation(line: 427, column: 11, scope: !839)
!849 = !DILocation(line: 427, column: 7, scope: !839)
!850 = !DILocation(line: 429, column: 12, scope: !745)
!851 = !DILocation(line: 429, column: 9, scope: !745)
!852 = !DILocation(line: 430, column: 13, scope: !745)
!853 = !DILocation(line: 430, column: 10, scope: !745)
!854 = !DILocation(line: 431, column: 15, scope: !745)
!855 = !DILocation(line: 433, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !745, file: !2, line: 433, column: 9)
!857 = !DILocation(line: 433, column: 13, scope: !856)
!858 = !DILocation(line: 433, column: 9, scope: !745)
!859 = !DILocation(line: 434, column: 7, scope: !856)
!860 = !DILocation(line: 436, column: 14, scope: !856)
!861 = !DILocation(line: 436, column: 18, scope: !856)
!862 = !DILocation(line: 436, column: 12, scope: !856)
!863 = !DILocation(line: 437, column: 3, scope: !732)
!864 = distinct !{!864, !776, !863}
!865 = !DILocation(line: 439, column: 21, scope: !732)
!866 = !DILocation(line: 439, column: 3, scope: !732)
!867 = !DILocation(line: 441, column: 10, scope: !732)
!868 = !DILocation(line: 441, column: 3, scope: !732)
!869 = !DILocation(line: 442, column: 1, scope: !732)
!870 = distinct !DISubprogram(name: "hwloc_bitmap_not", scope: !2, file: !2, line: 1178, type: !263, scopeLine: 1179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DILocalVariable(name: "res", arg: 1, scope: !870, file: !2, line: 1178, type: !98)
!873 = !DILocalVariable(name: "set", arg: 2, scope: !870, file: !2, line: 1178, type: !203)
!874 = !DILocalVariable(name: "count", scope: !870, file: !2, line: 1180, type: !84)
!875 = !DILocalVariable(name: "i", scope: !870, file: !2, line: 1181, type: !84)
!876 = !DILocation(line: 1178, column: 47, scope: !870)
!877 = !DILocation(line: 1178, column: 81, scope: !870)
!878 = !DILocation(line: 1180, column: 2, scope: !870)
!879 = !DILocation(line: 1180, column: 11, scope: !870)
!880 = !DILocation(line: 1180, column: 19, scope: !870)
!881 = !DILocation(line: 1180, column: 24, scope: !870)
!882 = !DILocation(line: 1181, column: 2, scope: !870)
!883 = !DILocation(line: 1181, column: 11, scope: !870)
!884 = !DILocation(line: 1186, column: 31, scope: !870)
!885 = !DILocation(line: 1186, column: 36, scope: !870)
!886 = !DILocation(line: 1186, column: 2, scope: !870)
!887 = !DILocation(line: 1188, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !870, file: !2, line: 1188, column: 2)
!889 = !DILocation(line: 1188, column: 6, scope: !888)
!890 = !DILocation(line: 1188, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !2, line: 1188, column: 2)
!892 = !DILocation(line: 1188, column: 13, scope: !891)
!893 = !DILocation(line: 1188, column: 12, scope: !891)
!894 = !DILocation(line: 1188, column: 2, scope: !888)
!895 = !DILocation(line: 1189, column: 21, scope: !891)
!896 = !DILocation(line: 1189, column: 26, scope: !891)
!897 = !DILocation(line: 1189, column: 33, scope: !891)
!898 = !DILocation(line: 1189, column: 20, scope: !891)
!899 = !DILocation(line: 1189, column: 3, scope: !891)
!900 = !DILocation(line: 1189, column: 8, scope: !891)
!901 = !DILocation(line: 1189, column: 15, scope: !891)
!902 = !DILocation(line: 1189, column: 18, scope: !891)
!903 = !DILocation(line: 1188, column: 21, scope: !891)
!904 = !DILocation(line: 1188, column: 2, scope: !891)
!905 = distinct !{!905, !894, !906, !413}
!906 = !DILocation(line: 1189, column: 34, scope: !888)
!907 = !DILocation(line: 1191, column: 19, scope: !870)
!908 = !DILocation(line: 1191, column: 24, scope: !870)
!909 = !DILocation(line: 1191, column: 18, scope: !870)
!910 = !DILocation(line: 1191, column: 2, scope: !870)
!911 = !DILocation(line: 1191, column: 7, scope: !870)
!912 = !DILocation(line: 1191, column: 16, scope: !870)
!913 = !DILocation(line: 1192, column: 1, scope: !870)
!914 = distinct !DISubprogram(name: "hwloc_bitmap_next", scope: !2, file: !2, line: 1232, type: !915, scopeLine: 1233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!81, !203, !81}
!917 = !{!918, !919, !920, !921}
!918 = !DILocalVariable(name: "set", arg: 1, scope: !914, file: !2, line: 1232, type: !203)
!919 = !DILocalVariable(name: "prev_cpu", arg: 2, scope: !914, file: !2, line: 1232, type: !81)
!920 = !DILocalVariable(name: "i", scope: !914, file: !2, line: 1234, type: !84)
!921 = !DILocalVariable(name: "w", scope: !922, file: !2, line: 1247, type: !85)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 1245, column: 34)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 1245, column: 2)
!924 = distinct !DILexicalBlock(scope: !914, file: !2, line: 1245, column: 2)
!925 = !DILocation(line: 1232, column: 53, scope: !914)
!926 = !DILocation(line: 1232, column: 62, scope: !914)
!927 = !DILocation(line: 1234, column: 2, scope: !914)
!928 = !DILocation(line: 1234, column: 11, scope: !914)
!929 = !DILocation(line: 1234, column: 15, scope: !914)
!930 = !DILocation(line: 1238, column: 6, scope: !931)
!931 = distinct !DILexicalBlock(scope: !914, file: !2, line: 1238, column: 6)
!932 = !DILocation(line: 1238, column: 11, scope: !931)
!933 = !DILocation(line: 1238, column: 16, scope: !931)
!934 = !DILocation(line: 1238, column: 8, scope: !931)
!935 = !DILocation(line: 1238, column: 6, scope: !914)
!936 = !DILocation(line: 1239, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !2, line: 1239, column: 7)
!938 = distinct !DILexicalBlock(scope: !931, file: !2, line: 1238, column: 30)
!939 = !DILocation(line: 1239, column: 12, scope: !937)
!940 = !DILocation(line: 1239, column: 7, scope: !938)
!941 = !DILocation(line: 1240, column: 11, scope: !937)
!942 = !DILocation(line: 1240, column: 20, scope: !937)
!943 = !DILocation(line: 1240, column: 4, scope: !937)
!944 = !DILocation(line: 1242, column: 4, scope: !937)
!945 = !DILocation(line: 1245, column: 2, scope: !914)
!946 = !DILocation(line: 1245, column: 8, scope: !923)
!947 = !DILocation(line: 1245, column: 10, scope: !923)
!948 = !DILocation(line: 1245, column: 15, scope: !923)
!949 = !DILocation(line: 1245, column: 9, scope: !923)
!950 = !DILocation(line: 1245, column: 2, scope: !924)
!951 = !DILocation(line: 1247, column: 3, scope: !922)
!952 = !DILocation(line: 1247, column: 17, scope: !922)
!953 = !DILocation(line: 1247, column: 21, scope: !922)
!954 = !DILocation(line: 1247, column: 26, scope: !922)
!955 = !DILocation(line: 1247, column: 33, scope: !922)
!956 = !DILocation(line: 1251, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !922, file: !2, line: 1251, column: 7)
!958 = !DILocation(line: 1251, column: 16, scope: !957)
!959 = !DILocation(line: 1251, column: 21, scope: !957)
!960 = !DILocation(line: 1251, column: 24, scope: !957)
!961 = !DILocation(line: 1251, column: 70, scope: !957)
!962 = !DILocation(line: 1251, column: 67, scope: !957)
!963 = !DILocation(line: 1251, column: 7, scope: !922)
!964 = !DILocation(line: 1252, column: 10, scope: !957)
!965 = !DILocation(line: 1252, column: 9, scope: !957)
!966 = !DILocation(line: 1252, column: 6, scope: !957)
!967 = !DILocation(line: 1252, column: 4, scope: !957)
!968 = !DILocation(line: 1254, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !922, file: !2, line: 1254, column: 7)
!970 = !DILocation(line: 1254, column: 7, scope: !922)
!971 = !DILocation(line: 1255, column: 11, scope: !969)
!972 = !DILocation(line: 1255, column: 25, scope: !969)
!973 = !DILocation(line: 1255, column: 51, scope: !969)
!974 = !DILocation(line: 1255, column: 50, scope: !969)
!975 = !DILocation(line: 1255, column: 29, scope: !969)
!976 = !DILocation(line: 1255, column: 4, scope: !969)
!977 = !DILocation(line: 1256, column: 2, scope: !923)
!978 = !DILocation(line: 1256, column: 2, scope: !922)
!979 = !DILocation(line: 1245, column: 30, scope: !923)
!980 = !DILocation(line: 1245, column: 2, scope: !923)
!981 = distinct !{!981, !950, !982, !413}
!982 = !DILocation(line: 1256, column: 2, scope: !924)
!983 = !DILocation(line: 1258, column: 6, scope: !984)
!984 = distinct !DILexicalBlock(scope: !914, file: !2, line: 1258, column: 6)
!985 = !DILocation(line: 1258, column: 11, scope: !984)
!986 = !DILocation(line: 1258, column: 6, scope: !914)
!987 = !DILocation(line: 1259, column: 10, scope: !984)
!988 = !DILocation(line: 1259, column: 15, scope: !984)
!989 = !DILocation(line: 1259, column: 28, scope: !984)
!990 = !DILocation(line: 1259, column: 3, scope: !984)
!991 = !DILocation(line: 1261, column: 2, scope: !914)
!992 = !DILocation(line: 1262, column: 1, scope: !914)
!993 = distinct !DISubprogram(name: "hwloc_bitmap_list_asprintf", scope: !2, file: !2, line: 444, type: !534, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !994)
!994 = !{!995, !996, !997, !998}
!995 = !DILocalVariable(name: "strp", arg: 1, scope: !993, file: !2, line: 444, type: !536)
!996 = !DILocalVariable(name: "set", arg: 2, scope: !993, file: !2, line: 444, type: !310)
!997 = !DILocalVariable(name: "len", scope: !993, file: !2, line: 446, type: !81)
!998 = !DILocalVariable(name: "buf", scope: !993, file: !2, line: 447, type: !309)
!999 = !DILocation(line: 444, column: 40, scope: !993)
!1000 = !DILocation(line: 444, column: 93, scope: !993)
!1001 = !DILocation(line: 446, column: 3, scope: !993)
!1002 = !DILocation(line: 446, column: 7, scope: !993)
!1003 = !DILocation(line: 447, column: 3, scope: !993)
!1004 = !DILocation(line: 447, column: 9, scope: !993)
!1005 = !DILocation(line: 451, column: 45, scope: !993)
!1006 = !DILocation(line: 451, column: 9, scope: !993)
!1007 = !DILocation(line: 451, column: 7, scope: !993)
!1008 = !DILocation(line: 452, column: 16, scope: !993)
!1009 = !DILocation(line: 452, column: 19, scope: !993)
!1010 = !DILocation(line: 452, column: 9, scope: !993)
!1011 = !DILocation(line: 452, column: 7, scope: !993)
!1012 = !DILocation(line: 453, column: 8, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !993, file: !2, line: 453, column: 7)
!1014 = !DILocation(line: 453, column: 7, scope: !993)
!1015 = !DILocation(line: 454, column: 5, scope: !1013)
!1016 = !DILocation(line: 455, column: 11, scope: !993)
!1017 = !DILocation(line: 455, column: 4, scope: !993)
!1018 = !DILocation(line: 455, column: 9, scope: !993)
!1019 = !DILocation(line: 456, column: 37, scope: !993)
!1020 = !DILocation(line: 456, column: 42, scope: !993)
!1021 = !DILocation(line: 456, column: 45, scope: !993)
!1022 = !DILocation(line: 456, column: 49, scope: !993)
!1023 = !DILocation(line: 456, column: 10, scope: !993)
!1024 = !DILocation(line: 456, column: 3, scope: !993)
!1025 = !DILocation(line: 457, column: 1, scope: !993)
!1026 = distinct !DISubprogram(name: "hwloc_bitmap_list_sscanf", scope: !2, file: !2, line: 459, type: !570, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034}
!1028 = !DILocalVariable(name: "set", arg: 1, scope: !1026, file: !2, line: 459, type: !98)
!1029 = !DILocalVariable(name: "string", arg: 2, scope: !1026, file: !2, line: 459, type: !572)
!1030 = !DILocalVariable(name: "current", scope: !1026, file: !2, line: 461, type: !83)
!1031 = !DILocalVariable(name: "next", scope: !1026, file: !2, line: 462, type: !309)
!1032 = !DILocalVariable(name: "begin", scope: !1026, file: !2, line: 463, type: !320)
!1033 = !DILocalVariable(name: "val", scope: !1026, file: !2, line: 463, type: !320)
!1034 = !DILabel(scope: !1026, name: "failed", file: !2, line: 506)
!1035 = !DILocation(line: 459, column: 53, scope: !1026)
!1036 = !DILocation(line: 459, column: 88, scope: !1026)
!1037 = !DILocation(line: 461, column: 3, scope: !1026)
!1038 = !DILocation(line: 461, column: 16, scope: !1026)
!1039 = !DILocation(line: 461, column: 26, scope: !1026)
!1040 = !DILocation(line: 462, column: 3, scope: !1026)
!1041 = !DILocation(line: 462, column: 9, scope: !1026)
!1042 = !DILocation(line: 463, column: 3, scope: !1026)
!1043 = !DILocation(line: 463, column: 8, scope: !1026)
!1044 = !DILocation(line: 463, column: 20, scope: !1026)
!1045 = !DILocation(line: 465, column: 21, scope: !1026)
!1046 = !DILocation(line: 465, column: 3, scope: !1026)
!1047 = !DILocation(line: 467, column: 3, scope: !1026)
!1048 = !DILocation(line: 467, column: 11, scope: !1026)
!1049 = !DILocation(line: 467, column: 10, scope: !1026)
!1050 = !DILocation(line: 467, column: 19, scope: !1026)
!1051 = !DILocation(line: 470, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 467, column: 28)
!1053 = !DILocation(line: 470, column: 13, scope: !1052)
!1054 = !DILocation(line: 470, column: 12, scope: !1052)
!1055 = !DILocation(line: 470, column: 21, scope: !1052)
!1056 = !DILocation(line: 470, column: 28, scope: !1052)
!1057 = !DILocation(line: 470, column: 32, scope: !1052)
!1058 = !DILocation(line: 470, column: 31, scope: !1052)
!1059 = !DILocation(line: 470, column: 40, scope: !1052)
!1060 = !DILocation(line: 471, column: 14, scope: !1052)
!1061 = distinct !{!1061, !1051, !1060, !413}
!1062 = !DILocation(line: 473, column: 19, scope: !1052)
!1063 = !DILocation(line: 473, column: 11, scope: !1052)
!1064 = !DILocation(line: 473, column: 9, scope: !1052)
!1065 = !DILocation(line: 475, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 475, column: 9)
!1067 = !DILocation(line: 475, column: 17, scope: !1066)
!1068 = !DILocation(line: 475, column: 14, scope: !1066)
!1069 = !DILocation(line: 475, column: 9, scope: !1052)
!1070 = !DILocation(line: 476, column: 7, scope: !1066)
!1071 = !DILocation(line: 478, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 478, column: 9)
!1073 = !DILocation(line: 478, column: 15, scope: !1072)
!1074 = !DILocation(line: 478, column: 9, scope: !1052)
!1075 = !DILocation(line: 480, column: 30, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 478, column: 22)
!1077 = !DILocation(line: 480, column: 35, scope: !1076)
!1078 = !DILocation(line: 480, column: 42, scope: !1076)
!1079 = !DILocation(line: 480, column: 7, scope: !1076)
!1080 = !DILocation(line: 481, column: 13, scope: !1076)
!1081 = !DILocation(line: 483, column: 5, scope: !1076)
!1082 = !DILocation(line: 483, column: 17, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 483, column: 16)
!1084 = !DILocation(line: 483, column: 16, scope: !1083)
!1085 = !DILocation(line: 483, column: 22, scope: !1083)
!1086 = !DILocation(line: 483, column: 16, scope: !1072)
!1087 = !DILocation(line: 485, column: 13, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 485, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 483, column: 30)
!1090 = !DILocation(line: 485, column: 17, scope: !1088)
!1091 = !DILocation(line: 485, column: 11, scope: !1088)
!1092 = !DILocation(line: 485, column: 21, scope: !1088)
!1093 = !DILocation(line: 485, column: 11, scope: !1089)
!1094 = !DILocation(line: 487, column: 25, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 485, column: 30)
!1096 = !DILocation(line: 487, column: 30, scope: !1095)
!1097 = !DILocation(line: 487, column: 2, scope: !1095)
!1098 = !DILocation(line: 488, column: 9, scope: !1095)
!1099 = !DILocation(line: 491, column: 10, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 489, column: 14)
!1101 = !DILocation(line: 491, column: 8, scope: !1100)
!1102 = !DILocation(line: 494, column: 5, scope: !1089)
!1103 = !DILocation(line: 494, column: 17, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 494, column: 16)
!1105 = !DILocation(line: 494, column: 16, scope: !1104)
!1106 = !DILocation(line: 494, column: 22, scope: !1104)
!1107 = !DILocation(line: 494, column: 29, scope: !1104)
!1108 = !DILocation(line: 494, column: 33, scope: !1104)
!1109 = !DILocation(line: 494, column: 32, scope: !1104)
!1110 = !DILocation(line: 494, column: 38, scope: !1104)
!1111 = !DILocation(line: 494, column: 45, scope: !1104)
!1112 = !DILocation(line: 494, column: 49, scope: !1104)
!1113 = !DILocation(line: 494, column: 48, scope: !1104)
!1114 = !DILocation(line: 494, column: 54, scope: !1104)
!1115 = !DILocation(line: 494, column: 16, scope: !1083)
!1116 = !DILocation(line: 496, column: 24, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 494, column: 63)
!1118 = !DILocation(line: 496, column: 29, scope: !1117)
!1119 = !DILocation(line: 496, column: 7, scope: !1117)
!1120 = !DILocation(line: 497, column: 5, scope: !1117)
!1121 = !DILocation(line: 499, column: 10, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 499, column: 9)
!1123 = !DILocation(line: 499, column: 9, scope: !1122)
!1124 = !DILocation(line: 499, column: 15, scope: !1122)
!1125 = !DILocation(line: 499, column: 9, scope: !1052)
!1126 = !DILocation(line: 500, column: 7, scope: !1122)
!1127 = !DILocation(line: 501, column: 15, scope: !1052)
!1128 = !DILocation(line: 501, column: 19, scope: !1052)
!1129 = !DILocation(line: 501, column: 13, scope: !1052)
!1130 = distinct !{!1130, !1047, !1131, !413}
!1131 = !DILocation(line: 502, column: 3, scope: !1026)
!1132 = !DILocation(line: 504, column: 3, scope: !1026)
!1133 = !DILocation(line: 506, column: 2, scope: !1026)
!1134 = !DILocation(line: 508, column: 21, scope: !1026)
!1135 = !DILocation(line: 508, column: 3, scope: !1026)
!1136 = !DILocation(line: 509, column: 3, scope: !1026)
!1137 = !DILocation(line: 510, column: 1, scope: !1026)
!1138 = distinct !DISubprogram(name: "hwloc_bitmap_set_range", scope: !2, file: !2, line: 771, type: !1139, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !98, !84, !81}
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1142 = !DILocalVariable(name: "set", arg: 1, scope: !1138, file: !2, line: 771, type: !98)
!1143 = !DILocalVariable(name: "begincpu", arg: 2, scope: !1138, file: !2, line: 771, type: !84)
!1144 = !DILocalVariable(name: "_endcpu", arg: 3, scope: !1138, file: !2, line: 771, type: !81)
!1145 = !DILocalVariable(name: "i", scope: !1138, file: !2, line: 773, type: !84)
!1146 = !DILocalVariable(name: "beginset", scope: !1138, file: !2, line: 774, type: !84)
!1147 = !DILocalVariable(name: "endset", scope: !1138, file: !2, line: 774, type: !84)
!1148 = !DILocalVariable(name: "endcpu", scope: !1138, file: !2, line: 775, type: !84)
!1149 = !DILocation(line: 771, column: 53, scope: !1138)
!1150 = !DILocation(line: 771, column: 67, scope: !1138)
!1151 = !DILocation(line: 771, column: 81, scope: !1138)
!1152 = !DILocation(line: 773, column: 2, scope: !1138)
!1153 = !DILocation(line: 773, column: 11, scope: !1138)
!1154 = !DILocation(line: 774, column: 2, scope: !1138)
!1155 = !DILocation(line: 774, column: 11, scope: !1138)
!1156 = !DILocation(line: 774, column: 20, scope: !1138)
!1157 = !DILocation(line: 775, column: 2, scope: !1138)
!1158 = !DILocation(line: 775, column: 11, scope: !1138)
!1159 = !DILocation(line: 775, column: 31, scope: !1138)
!1160 = !DILocation(line: 779, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 779, column: 6)
!1162 = !DILocation(line: 779, column: 15, scope: !1161)
!1163 = !DILocation(line: 779, column: 13, scope: !1161)
!1164 = !DILocation(line: 779, column: 6, scope: !1138)
!1165 = !DILocation(line: 780, column: 3, scope: !1161)
!1166 = !DILocation(line: 781, column: 6, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 781, column: 6)
!1168 = !DILocation(line: 781, column: 11, scope: !1167)
!1169 = !DILocation(line: 781, column: 20, scope: !1167)
!1170 = !DILocation(line: 781, column: 23, scope: !1167)
!1171 = !DILocation(line: 781, column: 35, scope: !1167)
!1172 = !DILocation(line: 781, column: 40, scope: !1167)
!1173 = !DILocation(line: 781, column: 53, scope: !1167)
!1174 = !DILocation(line: 781, column: 32, scope: !1167)
!1175 = !DILocation(line: 781, column: 6, scope: !1138)
!1176 = !DILocation(line: 783, column: 3, scope: !1167)
!1177 = !DILocation(line: 785, column: 6, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 785, column: 6)
!1179 = !DILocation(line: 785, column: 14, scope: !1178)
!1180 = !DILocation(line: 785, column: 6, scope: !1138)
!1181 = !DILocation(line: 789, column: 3, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 785, column: 21)
!1183 = !DILocation(line: 791, column: 14, scope: !1182)
!1184 = !DILocation(line: 791, column: 12, scope: !1182)
!1185 = !DILocation(line: 792, column: 28, scope: !1182)
!1186 = !DILocation(line: 792, column: 3, scope: !1182)
!1187 = !DILocation(line: 792, column: 8, scope: !1182)
!1188 = !DILocation(line: 792, column: 15, scope: !1182)
!1189 = !DILocation(line: 792, column: 25, scope: !1182)
!1190 = !DILocation(line: 794, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 794, column: 3)
!1192 = !DILocation(line: 794, column: 17, scope: !1191)
!1193 = !DILocation(line: 794, column: 8, scope: !1191)
!1194 = !DILocation(line: 794, column: 7, scope: !1191)
!1195 = !DILocation(line: 794, column: 21, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 794, column: 3)
!1197 = !DILocation(line: 794, column: 23, scope: !1196)
!1198 = !DILocation(line: 794, column: 28, scope: !1196)
!1199 = !DILocation(line: 794, column: 22, scope: !1196)
!1200 = !DILocation(line: 794, column: 3, scope: !1191)
!1201 = !DILocation(line: 795, column: 4, scope: !1196)
!1202 = !DILocation(line: 795, column: 9, scope: !1196)
!1203 = !DILocation(line: 795, column: 16, scope: !1196)
!1204 = !DILocation(line: 795, column: 19, scope: !1196)
!1205 = !DILocation(line: 794, column: 43, scope: !1196)
!1206 = !DILocation(line: 794, column: 3, scope: !1196)
!1207 = distinct !{!1207, !1200, !1208, !413}
!1208 = !DILocation(line: 795, column: 21, scope: !1191)
!1209 = !DILocation(line: 797, column: 3, scope: !1182)
!1210 = !DILocation(line: 797, column: 8, scope: !1182)
!1211 = !DILocation(line: 797, column: 17, scope: !1182)
!1212 = !DILocation(line: 798, column: 2, scope: !1182)
!1213 = !DILocation(line: 802, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 802, column: 7)
!1215 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 798, column: 9)
!1216 = !DILocation(line: 802, column: 12, scope: !1214)
!1217 = !DILocation(line: 802, column: 21, scope: !1214)
!1218 = !DILocation(line: 802, column: 24, scope: !1214)
!1219 = !DILocation(line: 802, column: 34, scope: !1214)
!1220 = !DILocation(line: 802, column: 39, scope: !1214)
!1221 = !DILocation(line: 802, column: 52, scope: !1214)
!1222 = !DILocation(line: 802, column: 31, scope: !1214)
!1223 = !DILocation(line: 802, column: 7, scope: !1215)
!1224 = !DILocation(line: 803, column: 13, scope: !1214)
!1225 = !DILocation(line: 803, column: 18, scope: !1214)
!1226 = !DILocation(line: 803, column: 31, scope: !1214)
!1227 = !DILocation(line: 803, column: 53, scope: !1214)
!1228 = !DILocation(line: 803, column: 11, scope: !1214)
!1229 = !DILocation(line: 803, column: 4, scope: !1214)
!1230 = !DILocation(line: 805, column: 3, scope: !1215)
!1231 = !DILocation(line: 807, column: 14, scope: !1215)
!1232 = !DILocation(line: 807, column: 12, scope: !1215)
!1233 = !DILocation(line: 808, column: 12, scope: !1215)
!1234 = !DILocation(line: 808, column: 10, scope: !1215)
!1235 = !DILocation(line: 809, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 809, column: 7)
!1237 = !DILocation(line: 809, column: 19, scope: !1236)
!1238 = !DILocation(line: 809, column: 16, scope: !1236)
!1239 = !DILocation(line: 809, column: 7, scope: !1215)
!1240 = !DILocation(line: 810, column: 29, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 809, column: 27)
!1242 = !DILocation(line: 810, column: 4, scope: !1241)
!1243 = !DILocation(line: 810, column: 9, scope: !1241)
!1244 = !DILocation(line: 810, column: 16, scope: !1241)
!1245 = !DILocation(line: 810, column: 26, scope: !1241)
!1246 = !DILocation(line: 811, column: 3, scope: !1241)
!1247 = !DILocation(line: 812, column: 29, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1236, file: !2, line: 811, column: 10)
!1249 = !DILocation(line: 812, column: 4, scope: !1248)
!1250 = !DILocation(line: 812, column: 9, scope: !1248)
!1251 = !DILocation(line: 812, column: 16, scope: !1248)
!1252 = !DILocation(line: 812, column: 26, scope: !1248)
!1253 = !DILocation(line: 813, column: 27, scope: !1248)
!1254 = !DILocation(line: 813, column: 4, scope: !1248)
!1255 = !DILocation(line: 813, column: 9, scope: !1248)
!1256 = !DILocation(line: 813, column: 16, scope: !1248)
!1257 = !DILocation(line: 813, column: 24, scope: !1248)
!1258 = !DILocation(line: 816, column: 9, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 816, column: 3)
!1260 = !DILocation(line: 816, column: 17, scope: !1259)
!1261 = !DILocation(line: 816, column: 8, scope: !1259)
!1262 = !DILocation(line: 816, column: 7, scope: !1259)
!1263 = !DILocation(line: 816, column: 21, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 816, column: 3)
!1265 = !DILocation(line: 816, column: 23, scope: !1264)
!1266 = !DILocation(line: 816, column: 22, scope: !1264)
!1267 = !DILocation(line: 816, column: 3, scope: !1259)
!1268 = !DILocation(line: 817, column: 4, scope: !1264)
!1269 = !DILocation(line: 817, column: 9, scope: !1264)
!1270 = !DILocation(line: 817, column: 16, scope: !1264)
!1271 = !DILocation(line: 817, column: 19, scope: !1264)
!1272 = !DILocation(line: 816, column: 32, scope: !1264)
!1273 = !DILocation(line: 816, column: 3, scope: !1264)
!1274 = distinct !{!1274, !1267, !1275, !413}
!1275 = !DILocation(line: 817, column: 21, scope: !1259)
!1276 = !DILocation(line: 819, column: 1, scope: !1138)
!1277 = distinct !DISubprogram(name: "hwloc_bitmap_set", scope: !2, file: !2, line: 757, type: !289, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DILocalVariable(name: "set", arg: 1, scope: !1277, file: !2, line: 757, type: !98)
!1280 = !DILocalVariable(name: "cpu", arg: 2, scope: !1277, file: !2, line: 757, type: !84)
!1281 = !DILocalVariable(name: "index_", scope: !1277, file: !2, line: 759, type: !84)
!1282 = !DILocation(line: 757, column: 47, scope: !1277)
!1283 = !DILocation(line: 757, column: 61, scope: !1277)
!1284 = !DILocation(line: 759, column: 2, scope: !1277)
!1285 = !DILocation(line: 759, column: 11, scope: !1277)
!1286 = !DILocation(line: 759, column: 20, scope: !1277)
!1287 = !DILocation(line: 764, column: 6, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 764, column: 6)
!1289 = !DILocation(line: 764, column: 11, scope: !1288)
!1290 = !DILocation(line: 764, column: 20, scope: !1288)
!1291 = !DILocation(line: 764, column: 23, scope: !1288)
!1292 = !DILocation(line: 764, column: 30, scope: !1288)
!1293 = !DILocation(line: 764, column: 35, scope: !1288)
!1294 = !DILocation(line: 764, column: 48, scope: !1288)
!1295 = !DILocation(line: 764, column: 27, scope: !1288)
!1296 = !DILocation(line: 764, column: 6, scope: !1277)
!1297 = !DILocation(line: 765, column: 3, scope: !1288)
!1298 = !DILocation(line: 767, column: 2, scope: !1277)
!1299 = !DILocation(line: 768, column: 25, scope: !1277)
!1300 = !DILocation(line: 768, column: 2, scope: !1277)
!1301 = !DILocation(line: 768, column: 7, scope: !1277)
!1302 = !DILocation(line: 768, column: 14, scope: !1277)
!1303 = !DILocation(line: 768, column: 22, scope: !1277)
!1304 = !DILocation(line: 769, column: 1, scope: !1277)
!1305 = distinct !DISubprogram(name: "hwloc_bitmap_taskset_snprintf", scope: !2, file: !2, line: 512, type: !306, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1307 = !DILocalVariable(name: "buf", arg: 1, scope: !1305, file: !2, line: 512, type: !308)
!1308 = !DILocalVariable(name: "buflen", arg: 2, scope: !1305, file: !2, line: 512, type: !159)
!1309 = !DILocalVariable(name: "set", arg: 3, scope: !1305, file: !2, line: 512, type: !310)
!1310 = !DILocalVariable(name: "size", scope: !1305, file: !2, line: 514, type: !316)
!1311 = !DILocalVariable(name: "tmp", scope: !1305, file: !2, line: 515, type: !309)
!1312 = !DILocalVariable(name: "res", scope: !1305, file: !2, line: 516, type: !81)
!1313 = !DILocalVariable(name: "ret", scope: !1305, file: !2, line: 516, type: !81)
!1314 = !DILocalVariable(name: "started", scope: !1305, file: !2, line: 517, type: !81)
!1315 = !DILocalVariable(name: "i", scope: !1305, file: !2, line: 518, type: !81)
!1316 = !DILocalVariable(name: "val", scope: !1317, file: !2, line: 551, type: !85)
!1317 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 550, column: 16)
!1318 = !DILocation(line: 512, column: 59, scope: !1305)
!1319 = !DILocation(line: 512, column: 71, scope: !1305)
!1320 = !DILocation(line: 512, column: 126, scope: !1305)
!1321 = !DILocation(line: 514, column: 3, scope: !1305)
!1322 = !DILocation(line: 514, column: 11, scope: !1305)
!1323 = !DILocation(line: 514, column: 18, scope: !1305)
!1324 = !DILocation(line: 515, column: 3, scope: !1305)
!1325 = !DILocation(line: 515, column: 9, scope: !1305)
!1326 = !DILocation(line: 515, column: 15, scope: !1305)
!1327 = !DILocation(line: 516, column: 3, scope: !1305)
!1328 = !DILocation(line: 516, column: 7, scope: !1305)
!1329 = !DILocation(line: 516, column: 12, scope: !1305)
!1330 = !DILocation(line: 517, column: 3, scope: !1305)
!1331 = !DILocation(line: 517, column: 7, scope: !1305)
!1332 = !DILocation(line: 518, column: 3, scope: !1305)
!1333 = !DILocation(line: 518, column: 7, scope: !1305)
!1334 = !DILocation(line: 523, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 523, column: 7)
!1336 = !DILocation(line: 523, column: 14, scope: !1335)
!1337 = !DILocation(line: 523, column: 7, scope: !1305)
!1338 = !DILocation(line: 524, column: 5, scope: !1335)
!1339 = !DILocation(line: 524, column: 12, scope: !1335)
!1340 = !DILocation(line: 526, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 526, column: 7)
!1342 = !DILocation(line: 526, column: 12, scope: !1341)
!1343 = !DILocation(line: 526, column: 7, scope: !1305)
!1344 = !DILocation(line: 527, column: 26, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 526, column: 22)
!1346 = !DILocation(line: 527, column: 31, scope: !1345)
!1347 = !DILocation(line: 527, column: 11, scope: !1345)
!1348 = !DILocation(line: 527, column: 9, scope: !1345)
!1349 = !DILocation(line: 528, column: 13, scope: !1345)
!1350 = !DILocation(line: 529, column: 9, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 529, column: 9)
!1352 = !DILocation(line: 529, column: 13, scope: !1351)
!1353 = !DILocation(line: 529, column: 9, scope: !1345)
!1354 = !DILocation(line: 530, column: 7, scope: !1351)
!1355 = !DILocation(line: 531, column: 12, scope: !1345)
!1356 = !DILocation(line: 531, column: 9, scope: !1345)
!1357 = !DILocation(line: 532, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 532, column: 9)
!1359 = !DILocation(line: 532, column: 16, scope: !1358)
!1360 = !DILocation(line: 532, column: 13, scope: !1358)
!1361 = !DILocation(line: 532, column: 9, scope: !1345)
!1362 = !DILocation(line: 533, column: 13, scope: !1358)
!1363 = !DILocation(line: 533, column: 17, scope: !1358)
!1364 = !DILocation(line: 533, column: 27, scope: !1358)
!1365 = !DILocation(line: 533, column: 22, scope: !1358)
!1366 = !DILocation(line: 533, column: 32, scope: !1358)
!1367 = !DILocation(line: 533, column: 11, scope: !1358)
!1368 = !DILocation(line: 533, column: 7, scope: !1358)
!1369 = !DILocation(line: 534, column: 12, scope: !1345)
!1370 = !DILocation(line: 534, column: 9, scope: !1345)
!1371 = !DILocation(line: 535, column: 13, scope: !1345)
!1372 = !DILocation(line: 535, column: 10, scope: !1345)
!1373 = !DILocation(line: 536, column: 3, scope: !1345)
!1374 = !DILocation(line: 538, column: 5, scope: !1305)
!1375 = !DILocation(line: 538, column: 10, scope: !1305)
!1376 = !DILocation(line: 538, column: 22, scope: !1305)
!1377 = !DILocation(line: 538, column: 4, scope: !1305)
!1378 = !DILocation(line: 540, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 540, column: 7)
!1380 = !DILocation(line: 540, column: 12, scope: !1379)
!1381 = !DILocation(line: 540, column: 7, scope: !1305)
!1382 = !DILocation(line: 542, column: 5, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 540, column: 22)
!1384 = !DILocation(line: 542, column: 12, scope: !1383)
!1385 = !DILocation(line: 542, column: 13, scope: !1383)
!1386 = !DILocation(line: 542, column: 17, scope: !1383)
!1387 = !DILocation(line: 542, column: 20, scope: !1383)
!1388 = !DILocation(line: 542, column: 25, scope: !1383)
!1389 = !DILocation(line: 542, column: 32, scope: !1383)
!1390 = !DILocation(line: 542, column: 35, scope: !1383)
!1391 = !DILocation(line: 0, scope: !1383)
!1392 = !DILocation(line: 543, column: 8, scope: !1383)
!1393 = distinct !{!1393, !1382, !1392, !413}
!1394 = !DILocation(line: 544, column: 3, scope: !1383)
!1395 = !DILocation(line: 546, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 544, column: 10)
!1397 = !DILocation(line: 546, column: 12, scope: !1396)
!1398 = !DILocation(line: 546, column: 13, scope: !1396)
!1399 = !DILocation(line: 546, column: 17, scope: !1396)
!1400 = !DILocation(line: 546, column: 20, scope: !1396)
!1401 = !DILocation(line: 546, column: 25, scope: !1396)
!1402 = !DILocation(line: 546, column: 32, scope: !1396)
!1403 = !DILocation(line: 546, column: 35, scope: !1396)
!1404 = !DILocation(line: 0, scope: !1396)
!1405 = !DILocation(line: 547, column: 8, scope: !1396)
!1406 = distinct !{!1406, !1395, !1405, !413}
!1407 = !DILocation(line: 550, column: 3, scope: !1305)
!1408 = !DILocation(line: 550, column: 10, scope: !1305)
!1409 = !DILocation(line: 550, column: 11, scope: !1305)
!1410 = !DILocation(line: 551, column: 5, scope: !1317)
!1411 = !DILocation(line: 551, column: 19, scope: !1317)
!1412 = !DILocation(line: 551, column: 25, scope: !1317)
!1413 = !DILocation(line: 551, column: 30, scope: !1317)
!1414 = !DILocation(line: 551, column: 38, scope: !1317)
!1415 = !DILocation(line: 552, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 552, column: 9)
!1417 = !DILocation(line: 552, column: 9, scope: !1317)
!1418 = !DILocation(line: 555, column: 28, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 552, column: 18)
!1420 = !DILocation(line: 555, column: 33, scope: !1419)
!1421 = !DILocation(line: 555, column: 49, scope: !1419)
!1422 = !DILocation(line: 555, column: 13, scope: !1419)
!1423 = !DILocation(line: 555, column: 11, scope: !1419)
!1424 = !DILocation(line: 559, column: 5, scope: !1419)
!1425 = !DILocation(line: 559, column: 16, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 559, column: 16)
!1427 = !DILocation(line: 559, column: 20, scope: !1426)
!1428 = !DILocation(line: 559, column: 23, scope: !1426)
!1429 = !DILocation(line: 559, column: 25, scope: !1426)
!1430 = !DILocation(line: 559, column: 16, scope: !1416)
!1431 = !DILocation(line: 560, column: 28, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 559, column: 32)
!1433 = !DILocation(line: 560, column: 33, scope: !1432)
!1434 = !DILocation(line: 560, column: 48, scope: !1432)
!1435 = !DILocation(line: 560, column: 13, scope: !1432)
!1436 = !DILocation(line: 560, column: 11, scope: !1432)
!1437 = !DILocation(line: 561, column: 15, scope: !1432)
!1438 = !DILocation(line: 562, column: 5, scope: !1432)
!1439 = !DILocation(line: 563, column: 11, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 562, column: 12)
!1441 = !DILocation(line: 565, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 565, column: 9)
!1443 = !DILocation(line: 565, column: 13, scope: !1442)
!1444 = !DILocation(line: 565, column: 9, scope: !1317)
!1445 = !DILocation(line: 566, column: 7, scope: !1442)
!1446 = !DILocation(line: 567, column: 12, scope: !1317)
!1447 = !DILocation(line: 567, column: 9, scope: !1317)
!1448 = !DILocation(line: 568, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 568, column: 9)
!1450 = !DILocation(line: 568, column: 16, scope: !1449)
!1451 = !DILocation(line: 568, column: 13, scope: !1449)
!1452 = !DILocation(line: 568, column: 9, scope: !1317)
!1453 = !DILocation(line: 569, column: 13, scope: !1449)
!1454 = !DILocation(line: 569, column: 17, scope: !1449)
!1455 = !DILocation(line: 569, column: 27, scope: !1449)
!1456 = !DILocation(line: 569, column: 22, scope: !1449)
!1457 = !DILocation(line: 569, column: 32, scope: !1449)
!1458 = !DILocation(line: 569, column: 11, scope: !1449)
!1459 = !DILocation(line: 569, column: 7, scope: !1449)
!1460 = !DILocation(line: 570, column: 12, scope: !1317)
!1461 = !DILocation(line: 570, column: 9, scope: !1317)
!1462 = !DILocation(line: 571, column: 13, scope: !1317)
!1463 = !DILocation(line: 571, column: 10, scope: !1317)
!1464 = !DILocation(line: 572, column: 3, scope: !1305)
!1465 = distinct !{!1465, !1407, !1464, !413}
!1466 = !DILocation(line: 575, column: 8, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 575, column: 7)
!1468 = !DILocation(line: 575, column: 7, scope: !1305)
!1469 = !DILocation(line: 576, column: 26, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !2, line: 575, column: 13)
!1471 = !DILocation(line: 576, column: 31, scope: !1470)
!1472 = !DILocation(line: 576, column: 11, scope: !1470)
!1473 = !DILocation(line: 576, column: 9, scope: !1470)
!1474 = !DILocation(line: 577, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 577, column: 9)
!1476 = !DILocation(line: 577, column: 13, scope: !1475)
!1477 = !DILocation(line: 577, column: 9, scope: !1470)
!1478 = !DILocation(line: 578, column: 7, scope: !1475)
!1479 = !DILocation(line: 579, column: 12, scope: !1470)
!1480 = !DILocation(line: 579, column: 9, scope: !1470)
!1481 = !DILocation(line: 580, column: 3, scope: !1470)
!1482 = !DILocation(line: 582, column: 10, scope: !1305)
!1483 = !DILocation(line: 582, column: 3, scope: !1305)
!1484 = !DILocation(line: 583, column: 1, scope: !1305)
!1485 = distinct !DISubprogram(name: "hwloc_bitmap_taskset_asprintf", scope: !2, file: !2, line: 585, type: !534, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DILocalVariable(name: "strp", arg: 1, scope: !1485, file: !2, line: 585, type: !536)
!1488 = !DILocalVariable(name: "set", arg: 2, scope: !1485, file: !2, line: 585, type: !310)
!1489 = !DILocalVariable(name: "len", scope: !1485, file: !2, line: 587, type: !81)
!1490 = !DILocalVariable(name: "buf", scope: !1485, file: !2, line: 588, type: !309)
!1491 = !DILocation(line: 585, column: 43, scope: !1485)
!1492 = !DILocation(line: 585, column: 96, scope: !1485)
!1493 = !DILocation(line: 587, column: 3, scope: !1485)
!1494 = !DILocation(line: 587, column: 7, scope: !1485)
!1495 = !DILocation(line: 588, column: 3, scope: !1485)
!1496 = !DILocation(line: 588, column: 9, scope: !1485)
!1497 = !DILocation(line: 592, column: 48, scope: !1485)
!1498 = !DILocation(line: 592, column: 9, scope: !1485)
!1499 = !DILocation(line: 592, column: 7, scope: !1485)
!1500 = !DILocation(line: 593, column: 16, scope: !1485)
!1501 = !DILocation(line: 593, column: 19, scope: !1485)
!1502 = !DILocation(line: 593, column: 9, scope: !1485)
!1503 = !DILocation(line: 593, column: 7, scope: !1485)
!1504 = !DILocation(line: 594, column: 8, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 594, column: 7)
!1506 = !DILocation(line: 594, column: 7, scope: !1485)
!1507 = !DILocation(line: 595, column: 5, scope: !1505)
!1508 = !DILocation(line: 596, column: 11, scope: !1485)
!1509 = !DILocation(line: 596, column: 4, scope: !1485)
!1510 = !DILocation(line: 596, column: 9, scope: !1485)
!1511 = !DILocation(line: 597, column: 40, scope: !1485)
!1512 = !DILocation(line: 597, column: 45, scope: !1485)
!1513 = !DILocation(line: 597, column: 48, scope: !1485)
!1514 = !DILocation(line: 597, column: 52, scope: !1485)
!1515 = !DILocation(line: 597, column: 10, scope: !1485)
!1516 = !DILocation(line: 597, column: 3, scope: !1485)
!1517 = !DILocation(line: 598, column: 1, scope: !1485)
!1518 = distinct !DISubprogram(name: "hwloc_bitmap_taskset_sscanf", scope: !2, file: !2, line: 600, type: !570, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1528, !1532, !1533, !1534}
!1520 = !DILocalVariable(name: "set", arg: 1, scope: !1518, file: !2, line: 600, type: !98)
!1521 = !DILocalVariable(name: "string", arg: 2, scope: !1518, file: !2, line: 600, type: !572)
!1522 = !DILocalVariable(name: "current", scope: !1518, file: !2, line: 602, type: !83)
!1523 = !DILocalVariable(name: "chars", scope: !1518, file: !2, line: 603, type: !81)
!1524 = !DILocalVariable(name: "count", scope: !1518, file: !2, line: 604, type: !81)
!1525 = !DILocalVariable(name: "infinite", scope: !1518, file: !2, line: 605, type: !81)
!1526 = !DILocalVariable(name: "tmpchars", scope: !1527, file: !2, line: 635, type: !81)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 634, column: 28)
!1528 = !DILocalVariable(name: "ustr", scope: !1527, file: !2, line: 636, type: !1529)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 17)
!1532 = !DILocalVariable(name: "val", scope: !1527, file: !2, line: 637, type: !85)
!1533 = !DILocalVariable(name: "next", scope: !1527, file: !2, line: 638, type: !309)
!1534 = !DILabel(scope: !1518, name: "failed", file: !2, line: 661)
!1535 = !DILocation(line: 600, column: 56, scope: !1518)
!1536 = !DILocation(line: 600, column: 91, scope: !1518)
!1537 = !DILocation(line: 602, column: 3, scope: !1518)
!1538 = !DILocation(line: 602, column: 16, scope: !1518)
!1539 = !DILocation(line: 602, column: 26, scope: !1518)
!1540 = !DILocation(line: 603, column: 3, scope: !1518)
!1541 = !DILocation(line: 603, column: 7, scope: !1518)
!1542 = !DILocation(line: 604, column: 3, scope: !1518)
!1543 = !DILocation(line: 604, column: 7, scope: !1518)
!1544 = !DILocation(line: 605, column: 3, scope: !1518)
!1545 = !DILocation(line: 605, column: 7, scope: !1518)
!1546 = !DILocation(line: 607, column: 27, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 607, column: 7)
!1548 = !DILocation(line: 607, column: 8, scope: !1547)
!1549 = !DILocation(line: 607, column: 7, scope: !1518)
!1550 = !DILocation(line: 609, column: 14, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 607, column: 40)
!1552 = !DILocation(line: 610, column: 13, scope: !1551)
!1553 = !DILocation(line: 611, column: 10, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 611, column: 9)
!1555 = !DILocation(line: 611, column: 9, scope: !1554)
!1556 = !DILocation(line: 611, column: 18, scope: !1554)
!1557 = !DILocation(line: 611, column: 9, scope: !1551)
!1558 = !DILocation(line: 613, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 611, column: 27)
!1560 = !DILocation(line: 613, column: 7, scope: !1559)
!1561 = !DILocation(line: 614, column: 7, scope: !1559)
!1562 = !DILocation(line: 616, column: 3, scope: !1551)
!1563 = !DILocation(line: 618, column: 24, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 618, column: 9)
!1565 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 616, column: 10)
!1566 = !DILocation(line: 618, column: 10, scope: !1564)
!1567 = !DILocation(line: 618, column: 9, scope: !1565)
!1568 = !DILocation(line: 619, column: 15, scope: !1564)
!1569 = !DILocation(line: 619, column: 7, scope: !1564)
!1570 = !DILocation(line: 620, column: 10, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 620, column: 9)
!1572 = !DILocation(line: 620, column: 9, scope: !1571)
!1573 = !DILocation(line: 620, column: 18, scope: !1571)
!1574 = !DILocation(line: 620, column: 9, scope: !1565)
!1575 = !DILocation(line: 622, column: 25, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 620, column: 27)
!1577 = !DILocation(line: 622, column: 7, scope: !1576)
!1578 = !DILocation(line: 623, column: 7, scope: !1576)
!1579 = !DILocation(line: 628, column: 23, scope: !1518)
!1580 = !DILocation(line: 628, column: 16, scope: !1518)
!1581 = !DILocation(line: 628, column: 11, scope: !1518)
!1582 = !DILocation(line: 628, column: 9, scope: !1518)
!1583 = !DILocation(line: 629, column: 12, scope: !1518)
!1584 = !DILocation(line: 629, column: 18, scope: !1518)
!1585 = !DILocation(line: 629, column: 22, scope: !1518)
!1586 = !DILocation(line: 629, column: 44, scope: !1518)
!1587 = !DILocation(line: 629, column: 49, scope: !1518)
!1588 = !DILocation(line: 629, column: 9, scope: !1518)
!1589 = !DILocation(line: 631, column: 32, scope: !1518)
!1590 = !DILocation(line: 631, column: 37, scope: !1518)
!1591 = !DILocation(line: 631, column: 3, scope: !1518)
!1592 = !DILocation(line: 632, column: 3, scope: !1518)
!1593 = !DILocation(line: 632, column: 8, scope: !1518)
!1594 = !DILocation(line: 632, column: 17, scope: !1518)
!1595 = !DILocation(line: 634, column: 3, scope: !1518)
!1596 = !DILocation(line: 634, column: 11, scope: !1518)
!1597 = !DILocation(line: 634, column: 10, scope: !1518)
!1598 = !DILocation(line: 634, column: 19, scope: !1518)
!1599 = !DILocation(line: 635, column: 5, scope: !1527)
!1600 = !DILocation(line: 635, column: 9, scope: !1527)
!1601 = !DILocation(line: 636, column: 5, scope: !1527)
!1602 = !DILocation(line: 636, column: 10, scope: !1527)
!1603 = !DILocation(line: 637, column: 5, scope: !1527)
!1604 = !DILocation(line: 637, column: 19, scope: !1527)
!1605 = !DILocation(line: 638, column: 5, scope: !1527)
!1606 = !DILocation(line: 638, column: 11, scope: !1527)
!1607 = !DILocation(line: 640, column: 16, scope: !1527)
!1608 = !DILocation(line: 640, column: 22, scope: !1527)
!1609 = !DILocation(line: 640, column: 14, scope: !1527)
!1610 = !DILocation(line: 641, column: 10, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 641, column: 9)
!1612 = !DILocation(line: 641, column: 9, scope: !1527)
!1613 = !DILocation(line: 642, column: 16, scope: !1611)
!1614 = !DILocation(line: 642, column: 7, scope: !1611)
!1615 = !DILocation(line: 644, column: 5, scope: !1527)
!1616 = !DILocation(line: 644, column: 18, scope: !1527)
!1617 = !DILocation(line: 644, column: 27, scope: !1527)
!1618 = !DILocation(line: 645, column: 10, scope: !1527)
!1619 = !DILocation(line: 645, column: 5, scope: !1527)
!1620 = !DILocation(line: 645, column: 20, scope: !1527)
!1621 = !DILocation(line: 646, column: 19, scope: !1527)
!1622 = !DILocation(line: 646, column: 11, scope: !1527)
!1623 = !DILocation(line: 646, column: 9, scope: !1527)
!1624 = !DILocation(line: 647, column: 10, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 647, column: 9)
!1626 = !DILocation(line: 647, column: 9, scope: !1625)
!1627 = !DILocation(line: 647, column: 15, scope: !1625)
!1628 = !DILocation(line: 647, column: 9, scope: !1527)
!1629 = !DILocation(line: 648, column: 7, scope: !1625)
!1630 = !DILocation(line: 650, column: 28, scope: !1527)
!1631 = !DILocation(line: 650, column: 5, scope: !1527)
!1632 = !DILocation(line: 650, column: 10, scope: !1527)
!1633 = !DILocation(line: 650, column: 17, scope: !1527)
!1634 = !DILocation(line: 650, column: 22, scope: !1527)
!1635 = !DILocation(line: 650, column: 26, scope: !1527)
!1636 = !DILocation(line: 652, column: 16, scope: !1527)
!1637 = !DILocation(line: 652, column: 13, scope: !1527)
!1638 = !DILocation(line: 653, column: 14, scope: !1527)
!1639 = !DILocation(line: 653, column: 11, scope: !1527)
!1640 = !DILocation(line: 654, column: 10, scope: !1527)
!1641 = !DILocation(line: 655, column: 3, scope: !1518)
!1642 = distinct !{!1642, !1595, !1641, !413}
!1643 = !DILocation(line: 657, column: 19, scope: !1518)
!1644 = !DILocation(line: 657, column: 3, scope: !1518)
!1645 = !DILocation(line: 657, column: 8, scope: !1518)
!1646 = !DILocation(line: 657, column: 17, scope: !1518)
!1647 = !DILocation(line: 659, column: 3, scope: !1518)
!1648 = !DILocation(line: 661, column: 2, scope: !1518)
!1649 = !DILocation(line: 663, column: 21, scope: !1518)
!1650 = !DILocation(line: 663, column: 3, scope: !1518)
!1651 = !DILocation(line: 664, column: 3, scope: !1518)
!1652 = !DILocation(line: 665, column: 1, scope: !1518)
!1653 = !DISubprogram(name: "strlen", scope: !700, file: !700, line: 407, type: !1654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!85, !83}
!1656 = distinct !DISubprogram(name: "hwloc_bitmap__zero", scope: !2, file: !2, line: 667, type: !185, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1657)
!1657 = !{!1658, !1659}
!1658 = !DILocalVariable(name: "set", arg: 1, scope: !1656, file: !2, line: 667, type: !98)
!1659 = !DILocalVariable(name: "i", scope: !1656, file: !2, line: 669, type: !84)
!1660 = !DILocation(line: 667, column: 55, scope: !1656)
!1661 = !DILocation(line: 669, column: 2, scope: !1656)
!1662 = !DILocation(line: 669, column: 11, scope: !1656)
!1663 = !DILocation(line: 670, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 670, column: 2)
!1665 = !DILocation(line: 670, column: 6, scope: !1664)
!1666 = !DILocation(line: 670, column: 11, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 670, column: 2)
!1668 = !DILocation(line: 670, column: 13, scope: !1667)
!1669 = !DILocation(line: 670, column: 18, scope: !1667)
!1670 = !DILocation(line: 670, column: 12, scope: !1667)
!1671 = !DILocation(line: 670, column: 2, scope: !1664)
!1672 = !DILocation(line: 671, column: 3, scope: !1667)
!1673 = !DILocation(line: 671, column: 8, scope: !1667)
!1674 = !DILocation(line: 671, column: 15, scope: !1667)
!1675 = !DILocation(line: 671, column: 18, scope: !1667)
!1676 = !DILocation(line: 670, column: 33, scope: !1667)
!1677 = !DILocation(line: 670, column: 2, scope: !1667)
!1678 = distinct !{!1678, !1671, !1679, !413}
!1679 = !DILocation(line: 671, column: 20, scope: !1664)
!1680 = !DILocation(line: 672, column: 2, scope: !1656)
!1681 = !DILocation(line: 672, column: 7, scope: !1656)
!1682 = !DILocation(line: 672, column: 16, scope: !1656)
!1683 = !DILocation(line: 673, column: 1, scope: !1656)
!1684 = distinct !DISubprogram(name: "hwloc_bitmap__fill", scope: !2, file: !2, line: 683, type: !185, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1685)
!1685 = !{!1686, !1687}
!1686 = !DILocalVariable(name: "set", arg: 1, scope: !1684, file: !2, line: 683, type: !98)
!1687 = !DILocalVariable(name: "i", scope: !1684, file: !2, line: 685, type: !84)
!1688 = !DILocation(line: 683, column: 56, scope: !1684)
!1689 = !DILocation(line: 685, column: 2, scope: !1684)
!1690 = !DILocation(line: 685, column: 11, scope: !1684)
!1691 = !DILocation(line: 686, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 686, column: 2)
!1693 = !DILocation(line: 686, column: 6, scope: !1692)
!1694 = !DILocation(line: 686, column: 11, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 686, column: 2)
!1696 = !DILocation(line: 686, column: 13, scope: !1695)
!1697 = !DILocation(line: 686, column: 18, scope: !1695)
!1698 = !DILocation(line: 686, column: 12, scope: !1695)
!1699 = !DILocation(line: 686, column: 2, scope: !1692)
!1700 = !DILocation(line: 687, column: 3, scope: !1695)
!1701 = !DILocation(line: 687, column: 8, scope: !1695)
!1702 = !DILocation(line: 687, column: 15, scope: !1695)
!1703 = !DILocation(line: 687, column: 18, scope: !1695)
!1704 = !DILocation(line: 686, column: 33, scope: !1695)
!1705 = !DILocation(line: 686, column: 2, scope: !1695)
!1706 = distinct !{!1706, !1699, !1707, !413}
!1707 = !DILocation(line: 687, column: 20, scope: !1692)
!1708 = !DILocation(line: 688, column: 2, scope: !1684)
!1709 = !DILocation(line: 688, column: 7, scope: !1684)
!1710 = !DILocation(line: 688, column: 16, scope: !1684)
!1711 = !DILocation(line: 689, column: 1, scope: !1684)
!1712 = distinct !DISubprogram(name: "hwloc_bitmap_from_ulong", scope: !2, file: !2, line: 699, type: !1713, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !98, !85}
!1715 = !{!1716, !1717}
!1716 = !DILocalVariable(name: "set", arg: 1, scope: !1712, file: !2, line: 699, type: !98)
!1717 = !DILocalVariable(name: "mask", arg: 2, scope: !1712, file: !2, line: 699, type: !85)
!1718 = !DILocation(line: 699, column: 53, scope: !1712)
!1719 = !DILocation(line: 699, column: 72, scope: !1712)
!1720 = !DILocation(line: 703, column: 31, scope: !1712)
!1721 = !DILocation(line: 703, column: 2, scope: !1712)
!1722 = !DILocation(line: 704, column: 19, scope: !1712)
!1723 = !DILocation(line: 704, column: 2, scope: !1712)
!1724 = !DILocation(line: 704, column: 7, scope: !1712)
!1725 = !DILocation(line: 704, column: 17, scope: !1712)
!1726 = !DILocation(line: 705, column: 2, scope: !1712)
!1727 = !DILocation(line: 705, column: 7, scope: !1712)
!1728 = !DILocation(line: 705, column: 16, scope: !1712)
!1729 = !DILocation(line: 706, column: 1, scope: !1712)
!1730 = distinct !DISubprogram(name: "hwloc_bitmap_from_ith_ulong", scope: !2, file: !2, line: 708, type: !1731, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !98, !84, !85}
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DILocalVariable(name: "set", arg: 1, scope: !1730, file: !2, line: 708, type: !98)
!1735 = !DILocalVariable(name: "i", arg: 2, scope: !1730, file: !2, line: 708, type: !84)
!1736 = !DILocalVariable(name: "mask", arg: 3, scope: !1730, file: !2, line: 708, type: !85)
!1737 = !DILocalVariable(name: "j", scope: !1730, file: !2, line: 710, type: !84)
!1738 = !DILocation(line: 708, column: 57, scope: !1730)
!1739 = !DILocation(line: 708, column: 71, scope: !1730)
!1740 = !DILocation(line: 708, column: 88, scope: !1730)
!1741 = !DILocation(line: 710, column: 2, scope: !1730)
!1742 = !DILocation(line: 710, column: 11, scope: !1730)
!1743 = !DILocation(line: 714, column: 31, scope: !1730)
!1744 = !DILocation(line: 714, column: 36, scope: !1730)
!1745 = !DILocation(line: 714, column: 37, scope: !1730)
!1746 = !DILocation(line: 714, column: 2, scope: !1730)
!1747 = !DILocation(line: 715, column: 19, scope: !1730)
!1748 = !DILocation(line: 715, column: 2, scope: !1730)
!1749 = !DILocation(line: 715, column: 7, scope: !1730)
!1750 = !DILocation(line: 715, column: 14, scope: !1730)
!1751 = !DILocation(line: 715, column: 17, scope: !1730)
!1752 = !DILocation(line: 716, column: 7, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 716, column: 2)
!1754 = !DILocation(line: 716, column: 6, scope: !1753)
!1755 = !DILocation(line: 716, column: 11, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 716, column: 2)
!1757 = !DILocation(line: 716, column: 13, scope: !1756)
!1758 = !DILocation(line: 716, column: 12, scope: !1756)
!1759 = !DILocation(line: 716, column: 2, scope: !1753)
!1760 = !DILocation(line: 717, column: 3, scope: !1756)
!1761 = !DILocation(line: 717, column: 8, scope: !1756)
!1762 = !DILocation(line: 717, column: 15, scope: !1756)
!1763 = !DILocation(line: 717, column: 18, scope: !1756)
!1764 = !DILocation(line: 716, column: 17, scope: !1756)
!1765 = !DILocation(line: 716, column: 2, scope: !1756)
!1766 = distinct !{!1766, !1759, !1767, !413}
!1767 = !DILocation(line: 717, column: 20, scope: !1753)
!1768 = !DILocation(line: 718, column: 2, scope: !1730)
!1769 = !DILocation(line: 718, column: 7, scope: !1730)
!1770 = !DILocation(line: 718, column: 16, scope: !1730)
!1771 = !DILocation(line: 719, column: 1, scope: !1730)
!1772 = distinct !DISubprogram(name: "hwloc_bitmap_to_ulong", scope: !2, file: !2, line: 721, type: !1773, scopeLine: 722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!85, !203}
!1775 = !{!1776}
!1776 = !DILocalVariable(name: "set", arg: 1, scope: !1772, file: !2, line: 721, type: !203)
!1777 = !DILocation(line: 721, column: 66, scope: !1772)
!1778 = !DILocation(line: 725, column: 9, scope: !1772)
!1779 = !DILocation(line: 725, column: 14, scope: !1772)
!1780 = !DILocation(line: 725, column: 2, scope: !1772)
!1781 = distinct !DISubprogram(name: "hwloc_bitmap_to_ith_ulong", scope: !2, file: !2, line: 728, type: !1782, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!85, !203, !84}
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "set", arg: 1, scope: !1781, file: !2, line: 728, type: !203)
!1786 = !DILocalVariable(name: "i", arg: 2, scope: !1781, file: !2, line: 728, type: !84)
!1787 = !DILocation(line: 728, column: 70, scope: !1781)
!1788 = !DILocation(line: 728, column: 84, scope: !1781)
!1789 = !DILocation(line: 732, column: 9, scope: !1781)
!1790 = !DILocation(line: 732, column: 2, scope: !1781)
!1791 = distinct !DISubprogram(name: "hwloc_bitmap_only", scope: !2, file: !2, line: 735, type: !289, scopeLine: 736, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DILocalVariable(name: "set", arg: 1, scope: !1791, file: !2, line: 735, type: !98)
!1794 = !DILocalVariable(name: "cpu", arg: 2, scope: !1791, file: !2, line: 735, type: !84)
!1795 = !DILocalVariable(name: "index_", scope: !1791, file: !2, line: 737, type: !84)
!1796 = !DILocation(line: 735, column: 48, scope: !1791)
!1797 = !DILocation(line: 735, column: 62, scope: !1791)
!1798 = !DILocation(line: 737, column: 2, scope: !1791)
!1799 = !DILocation(line: 737, column: 11, scope: !1791)
!1800 = !DILocation(line: 737, column: 20, scope: !1791)
!1801 = !DILocation(line: 741, column: 2, scope: !1791)
!1802 = !DILocation(line: 742, column: 21, scope: !1791)
!1803 = !DILocation(line: 742, column: 2, scope: !1791)
!1804 = !DILocation(line: 743, column: 25, scope: !1791)
!1805 = !DILocation(line: 743, column: 2, scope: !1791)
!1806 = !DILocation(line: 743, column: 7, scope: !1791)
!1807 = !DILocation(line: 743, column: 14, scope: !1791)
!1808 = !DILocation(line: 743, column: 22, scope: !1791)
!1809 = !DILocation(line: 744, column: 1, scope: !1791)
!1810 = distinct !DISubprogram(name: "hwloc_bitmap_allbut", scope: !2, file: !2, line: 746, type: !289, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1811)
!1811 = !{!1812, !1813, !1814}
!1812 = !DILocalVariable(name: "set", arg: 1, scope: !1810, file: !2, line: 746, type: !98)
!1813 = !DILocalVariable(name: "cpu", arg: 2, scope: !1810, file: !2, line: 746, type: !84)
!1814 = !DILocalVariable(name: "index_", scope: !1810, file: !2, line: 748, type: !84)
!1815 = !DILocation(line: 746, column: 50, scope: !1810)
!1816 = !DILocation(line: 746, column: 64, scope: !1810)
!1817 = !DILocation(line: 748, column: 2, scope: !1810)
!1818 = !DILocation(line: 748, column: 11, scope: !1810)
!1819 = !DILocation(line: 748, column: 20, scope: !1810)
!1820 = !DILocation(line: 752, column: 2, scope: !1810)
!1821 = !DILocation(line: 753, column: 21, scope: !1810)
!1822 = !DILocation(line: 753, column: 2, scope: !1810)
!1823 = !DILocation(line: 754, column: 26, scope: !1810)
!1824 = !DILocation(line: 754, column: 25, scope: !1810)
!1825 = !DILocation(line: 754, column: 2, scope: !1810)
!1826 = !DILocation(line: 754, column: 7, scope: !1810)
!1827 = !DILocation(line: 754, column: 14, scope: !1810)
!1828 = !DILocation(line: 754, column: 22, scope: !1810)
!1829 = !DILocation(line: 755, column: 1, scope: !1810)
!1830 = distinct !DISubprogram(name: "hwloc_bitmap_realloc_by_ulongs", scope: !2, file: !2, line: 135, type: !289, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1831)
!1831 = !{!1832, !1833, !1834}
!1832 = !DILocalVariable(name: "set", arg: 1, scope: !1830, file: !2, line: 135, type: !98)
!1833 = !DILocalVariable(name: "needed_count", arg: 2, scope: !1830, file: !2, line: 135, type: !84)
!1834 = !DILocalVariable(name: "i", scope: !1830, file: !2, line: 137, type: !84)
!1835 = !DILocation(line: 135, column: 56, scope: !1830)
!1836 = !DILocation(line: 135, column: 70, scope: !1830)
!1837 = !DILocation(line: 137, column: 3, scope: !1830)
!1838 = !DILocation(line: 137, column: 12, scope: !1830)
!1839 = !DILocation(line: 141, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 141, column: 7)
!1841 = !DILocation(line: 141, column: 23, scope: !1840)
!1842 = !DILocation(line: 141, column: 28, scope: !1840)
!1843 = !DILocation(line: 141, column: 20, scope: !1840)
!1844 = !DILocation(line: 141, column: 7, scope: !1830)
!1845 = !DILocation(line: 142, column: 5, scope: !1840)
!1846 = !DILocation(line: 145, column: 34, scope: !1830)
!1847 = !DILocation(line: 145, column: 39, scope: !1830)
!1848 = !DILocation(line: 145, column: 3, scope: !1830)
!1849 = !DILocation(line: 148, column: 9, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 148, column: 3)
!1851 = !DILocation(line: 148, column: 14, scope: !1850)
!1852 = !DILocation(line: 148, column: 8, scope: !1850)
!1853 = !DILocation(line: 148, column: 7, scope: !1850)
!1854 = !DILocation(line: 148, column: 28, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 148, column: 3)
!1856 = !DILocation(line: 148, column: 30, scope: !1855)
!1857 = !DILocation(line: 148, column: 29, scope: !1855)
!1858 = !DILocation(line: 148, column: 3, scope: !1850)
!1859 = !DILocation(line: 149, column: 22, scope: !1855)
!1860 = !DILocation(line: 149, column: 27, scope: !1855)
!1861 = !DILocation(line: 149, column: 5, scope: !1855)
!1862 = !DILocation(line: 149, column: 10, scope: !1855)
!1863 = !DILocation(line: 149, column: 17, scope: !1855)
!1864 = !DILocation(line: 149, column: 20, scope: !1855)
!1865 = !DILocation(line: 148, column: 45, scope: !1855)
!1866 = !DILocation(line: 148, column: 3, scope: !1855)
!1867 = distinct !{!1867, !1858, !1868, !413}
!1868 = !DILocation(line: 149, column: 61, scope: !1850)
!1869 = !DILocation(line: 150, column: 23, scope: !1830)
!1870 = !DILocation(line: 150, column: 3, scope: !1830)
!1871 = !DILocation(line: 150, column: 8, scope: !1830)
!1872 = !DILocation(line: 150, column: 21, scope: !1830)
!1873 = !DILocation(line: 151, column: 1, scope: !1830)
!1874 = distinct !DISubprogram(name: "hwloc_bitmap_set_ith_ulong", scope: !2, file: !2, line: 821, type: !1731, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DILocalVariable(name: "set", arg: 1, scope: !1874, file: !2, line: 821, type: !98)
!1877 = !DILocalVariable(name: "i", arg: 2, scope: !1874, file: !2, line: 821, type: !84)
!1878 = !DILocalVariable(name: "mask", arg: 3, scope: !1874, file: !2, line: 821, type: !85)
!1879 = !DILocation(line: 821, column: 56, scope: !1874)
!1880 = !DILocation(line: 821, column: 70, scope: !1874)
!1881 = !DILocation(line: 821, column: 87, scope: !1874)
!1882 = !DILocation(line: 825, column: 33, scope: !1874)
!1883 = !DILocation(line: 825, column: 38, scope: !1874)
!1884 = !DILocation(line: 825, column: 39, scope: !1874)
!1885 = !DILocation(line: 825, column: 2, scope: !1874)
!1886 = !DILocation(line: 826, column: 19, scope: !1874)
!1887 = !DILocation(line: 826, column: 2, scope: !1874)
!1888 = !DILocation(line: 826, column: 7, scope: !1874)
!1889 = !DILocation(line: 826, column: 14, scope: !1874)
!1890 = !DILocation(line: 826, column: 17, scope: !1874)
!1891 = !DILocation(line: 827, column: 1, scope: !1874)
!1892 = distinct !DISubprogram(name: "hwloc_bitmap_clr", scope: !2, file: !2, line: 829, type: !289, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1893)
!1893 = !{!1894, !1895, !1896}
!1894 = !DILocalVariable(name: "set", arg: 1, scope: !1892, file: !2, line: 829, type: !98)
!1895 = !DILocalVariable(name: "cpu", arg: 2, scope: !1892, file: !2, line: 829, type: !84)
!1896 = !DILocalVariable(name: "index_", scope: !1892, file: !2, line: 831, type: !84)
!1897 = !DILocation(line: 829, column: 47, scope: !1892)
!1898 = !DILocation(line: 829, column: 61, scope: !1892)
!1899 = !DILocation(line: 831, column: 2, scope: !1892)
!1900 = !DILocation(line: 831, column: 11, scope: !1892)
!1901 = !DILocation(line: 831, column: 20, scope: !1892)
!1902 = !DILocation(line: 836, column: 7, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 836, column: 6)
!1904 = !DILocation(line: 836, column: 12, scope: !1903)
!1905 = !DILocation(line: 836, column: 21, scope: !1903)
!1906 = !DILocation(line: 836, column: 24, scope: !1903)
!1907 = !DILocation(line: 836, column: 31, scope: !1903)
!1908 = !DILocation(line: 836, column: 36, scope: !1903)
!1909 = !DILocation(line: 836, column: 49, scope: !1903)
!1910 = !DILocation(line: 836, column: 28, scope: !1903)
!1911 = !DILocation(line: 836, column: 6, scope: !1892)
!1912 = !DILocation(line: 837, column: 3, scope: !1903)
!1913 = !DILocation(line: 839, column: 2, scope: !1892)
!1914 = !DILocation(line: 840, column: 26, scope: !1892)
!1915 = !DILocation(line: 840, column: 25, scope: !1892)
!1916 = !DILocation(line: 840, column: 2, scope: !1892)
!1917 = !DILocation(line: 840, column: 7, scope: !1892)
!1918 = !DILocation(line: 840, column: 14, scope: !1892)
!1919 = !DILocation(line: 840, column: 22, scope: !1892)
!1920 = !DILocation(line: 841, column: 1, scope: !1892)
!1921 = distinct !DISubprogram(name: "hwloc_bitmap_clr_range", scope: !2, file: !2, line: 843, type: !1139, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1923 = !DILocalVariable(name: "set", arg: 1, scope: !1921, file: !2, line: 843, type: !98)
!1924 = !DILocalVariable(name: "begincpu", arg: 2, scope: !1921, file: !2, line: 843, type: !84)
!1925 = !DILocalVariable(name: "_endcpu", arg: 3, scope: !1921, file: !2, line: 843, type: !81)
!1926 = !DILocalVariable(name: "i", scope: !1921, file: !2, line: 845, type: !84)
!1927 = !DILocalVariable(name: "beginset", scope: !1921, file: !2, line: 846, type: !84)
!1928 = !DILocalVariable(name: "endset", scope: !1921, file: !2, line: 846, type: !84)
!1929 = !DILocalVariable(name: "endcpu", scope: !1921, file: !2, line: 847, type: !84)
!1930 = !DILocation(line: 843, column: 53, scope: !1921)
!1931 = !DILocation(line: 843, column: 67, scope: !1921)
!1932 = !DILocation(line: 843, column: 81, scope: !1921)
!1933 = !DILocation(line: 845, column: 2, scope: !1921)
!1934 = !DILocation(line: 845, column: 11, scope: !1921)
!1935 = !DILocation(line: 846, column: 2, scope: !1921)
!1936 = !DILocation(line: 846, column: 11, scope: !1921)
!1937 = !DILocation(line: 846, column: 20, scope: !1921)
!1938 = !DILocation(line: 847, column: 2, scope: !1921)
!1939 = !DILocation(line: 847, column: 11, scope: !1921)
!1940 = !DILocation(line: 847, column: 31, scope: !1921)
!1941 = !DILocation(line: 851, column: 6, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 851, column: 6)
!1943 = !DILocation(line: 851, column: 15, scope: !1942)
!1944 = !DILocation(line: 851, column: 13, scope: !1942)
!1945 = !DILocation(line: 851, column: 6, scope: !1921)
!1946 = !DILocation(line: 852, column: 3, scope: !1942)
!1947 = !DILocation(line: 854, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 854, column: 6)
!1949 = !DILocation(line: 854, column: 12, scope: !1948)
!1950 = !DILocation(line: 854, column: 21, scope: !1948)
!1951 = !DILocation(line: 854, column: 24, scope: !1948)
!1952 = !DILocation(line: 854, column: 36, scope: !1948)
!1953 = !DILocation(line: 854, column: 41, scope: !1948)
!1954 = !DILocation(line: 854, column: 54, scope: !1948)
!1955 = !DILocation(line: 854, column: 33, scope: !1948)
!1956 = !DILocation(line: 854, column: 6, scope: !1921)
!1957 = !DILocation(line: 856, column: 3, scope: !1948)
!1958 = !DILocation(line: 858, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 858, column: 6)
!1960 = !DILocation(line: 858, column: 14, scope: !1959)
!1961 = !DILocation(line: 858, column: 6, scope: !1921)
!1962 = !DILocation(line: 862, column: 3, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 858, column: 21)
!1964 = !DILocation(line: 864, column: 14, scope: !1963)
!1965 = !DILocation(line: 864, column: 12, scope: !1963)
!1966 = !DILocation(line: 865, column: 29, scope: !1963)
!1967 = !DILocation(line: 865, column: 28, scope: !1963)
!1968 = !DILocation(line: 865, column: 3, scope: !1963)
!1969 = !DILocation(line: 865, column: 8, scope: !1963)
!1970 = !DILocation(line: 865, column: 15, scope: !1963)
!1971 = !DILocation(line: 865, column: 25, scope: !1963)
!1972 = !DILocation(line: 867, column: 9, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1963, file: !2, line: 867, column: 3)
!1974 = !DILocation(line: 867, column: 17, scope: !1973)
!1975 = !DILocation(line: 867, column: 8, scope: !1973)
!1976 = !DILocation(line: 867, column: 7, scope: !1973)
!1977 = !DILocation(line: 867, column: 21, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 867, column: 3)
!1979 = !DILocation(line: 867, column: 23, scope: !1978)
!1980 = !DILocation(line: 867, column: 28, scope: !1978)
!1981 = !DILocation(line: 867, column: 22, scope: !1978)
!1982 = !DILocation(line: 867, column: 3, scope: !1973)
!1983 = !DILocation(line: 868, column: 4, scope: !1978)
!1984 = !DILocation(line: 868, column: 9, scope: !1978)
!1985 = !DILocation(line: 868, column: 16, scope: !1978)
!1986 = !DILocation(line: 868, column: 19, scope: !1978)
!1987 = !DILocation(line: 867, column: 43, scope: !1978)
!1988 = !DILocation(line: 867, column: 3, scope: !1978)
!1989 = distinct !{!1989, !1982, !1990, !413}
!1990 = !DILocation(line: 868, column: 21, scope: !1973)
!1991 = !DILocation(line: 870, column: 3, scope: !1963)
!1992 = !DILocation(line: 870, column: 8, scope: !1963)
!1993 = !DILocation(line: 870, column: 17, scope: !1963)
!1994 = !DILocation(line: 871, column: 2, scope: !1963)
!1995 = !DILocation(line: 875, column: 8, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 875, column: 7)
!1997 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 871, column: 9)
!1998 = !DILocation(line: 875, column: 13, scope: !1996)
!1999 = !DILocation(line: 875, column: 22, scope: !1996)
!2000 = !DILocation(line: 875, column: 25, scope: !1996)
!2001 = !DILocation(line: 875, column: 35, scope: !1996)
!2002 = !DILocation(line: 875, column: 40, scope: !1996)
!2003 = !DILocation(line: 875, column: 53, scope: !1996)
!2004 = !DILocation(line: 875, column: 32, scope: !1996)
!2005 = !DILocation(line: 875, column: 7, scope: !1997)
!2006 = !DILocation(line: 876, column: 13, scope: !1996)
!2007 = !DILocation(line: 876, column: 18, scope: !1996)
!2008 = !DILocation(line: 876, column: 31, scope: !1996)
!2009 = !DILocation(line: 876, column: 53, scope: !1996)
!2010 = !DILocation(line: 876, column: 11, scope: !1996)
!2011 = !DILocation(line: 876, column: 4, scope: !1996)
!2012 = !DILocation(line: 878, column: 3, scope: !1997)
!2013 = !DILocation(line: 880, column: 14, scope: !1997)
!2014 = !DILocation(line: 880, column: 12, scope: !1997)
!2015 = !DILocation(line: 881, column: 12, scope: !1997)
!2016 = !DILocation(line: 881, column: 10, scope: !1997)
!2017 = !DILocation(line: 882, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 882, column: 7)
!2019 = !DILocation(line: 882, column: 19, scope: !2018)
!2020 = !DILocation(line: 882, column: 16, scope: !2018)
!2021 = !DILocation(line: 882, column: 7, scope: !1997)
!2022 = !DILocation(line: 883, column: 30, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 882, column: 27)
!2024 = !DILocation(line: 883, column: 29, scope: !2023)
!2025 = !DILocation(line: 883, column: 4, scope: !2023)
!2026 = !DILocation(line: 883, column: 9, scope: !2023)
!2027 = !DILocation(line: 883, column: 16, scope: !2023)
!2028 = !DILocation(line: 883, column: 26, scope: !2023)
!2029 = !DILocation(line: 884, column: 3, scope: !2023)
!2030 = !DILocation(line: 885, column: 30, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 884, column: 10)
!2032 = !DILocation(line: 885, column: 29, scope: !2031)
!2033 = !DILocation(line: 885, column: 4, scope: !2031)
!2034 = !DILocation(line: 885, column: 9, scope: !2031)
!2035 = !DILocation(line: 885, column: 16, scope: !2031)
!2036 = !DILocation(line: 885, column: 26, scope: !2031)
!2037 = !DILocation(line: 886, column: 28, scope: !2031)
!2038 = !DILocation(line: 886, column: 27, scope: !2031)
!2039 = !DILocation(line: 886, column: 4, scope: !2031)
!2040 = !DILocation(line: 886, column: 9, scope: !2031)
!2041 = !DILocation(line: 886, column: 16, scope: !2031)
!2042 = !DILocation(line: 886, column: 24, scope: !2031)
!2043 = !DILocation(line: 889, column: 9, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 889, column: 3)
!2045 = !DILocation(line: 889, column: 17, scope: !2044)
!2046 = !DILocation(line: 889, column: 8, scope: !2044)
!2047 = !DILocation(line: 889, column: 7, scope: !2044)
!2048 = !DILocation(line: 889, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !2, line: 889, column: 3)
!2050 = !DILocation(line: 889, column: 23, scope: !2049)
!2051 = !DILocation(line: 889, column: 22, scope: !2049)
!2052 = !DILocation(line: 889, column: 3, scope: !2044)
!2053 = !DILocation(line: 890, column: 4, scope: !2049)
!2054 = !DILocation(line: 890, column: 9, scope: !2049)
!2055 = !DILocation(line: 890, column: 16, scope: !2049)
!2056 = !DILocation(line: 890, column: 19, scope: !2049)
!2057 = !DILocation(line: 889, column: 32, scope: !2049)
!2058 = !DILocation(line: 889, column: 3, scope: !2049)
!2059 = distinct !{!2059, !2052, !2060, !413}
!2060 = !DILocation(line: 890, column: 21, scope: !2044)
!2061 = !DILocation(line: 892, column: 1, scope: !1921)
!2062 = distinct !DISubprogram(name: "hwloc_bitmap_isset", scope: !2, file: !2, line: 894, type: !2063, scopeLine: 895, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!81, !203, !84}
!2065 = !{!2066, !2067, !2068}
!2066 = !DILocalVariable(name: "set", arg: 1, scope: !2062, file: !2, line: 894, type: !203)
!2067 = !DILocalVariable(name: "cpu", arg: 2, scope: !2062, file: !2, line: 894, type: !84)
!2068 = !DILocalVariable(name: "index_", scope: !2062, file: !2, line: 896, type: !84)
!2069 = !DILocation(line: 894, column: 54, scope: !2062)
!2070 = !DILocation(line: 894, column: 68, scope: !2062)
!2071 = !DILocation(line: 896, column: 2, scope: !2062)
!2072 = !DILocation(line: 896, column: 11, scope: !2062)
!2073 = !DILocation(line: 896, column: 20, scope: !2062)
!2074 = !DILocation(line: 900, column: 10, scope: !2062)
!2075 = !DILocation(line: 900, column: 51, scope: !2062)
!2076 = !DILocation(line: 900, column: 49, scope: !2062)
!2077 = !DILocation(line: 900, column: 77, scope: !2062)
!2078 = !DILocation(line: 901, column: 1, scope: !2062)
!2079 = !DILocation(line: 900, column: 2, scope: !2062)
!2080 = distinct !DISubprogram(name: "hwloc_bitmap_iszero", scope: !2, file: !2, line: 903, type: !2081, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!81, !203}
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "set", arg: 1, scope: !2080, file: !2, line: 903, type: !203)
!2085 = !DILocalVariable(name: "i", scope: !2080, file: !2, line: 905, type: !84)
!2086 = !DILocation(line: 903, column: 54, scope: !2080)
!2087 = !DILocation(line: 905, column: 2, scope: !2080)
!2088 = !DILocation(line: 905, column: 11, scope: !2080)
!2089 = !DILocation(line: 909, column: 6, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 909, column: 6)
!2091 = !DILocation(line: 909, column: 11, scope: !2090)
!2092 = !DILocation(line: 909, column: 6, scope: !2080)
!2093 = !DILocation(line: 910, column: 3, scope: !2090)
!2094 = !DILocation(line: 911, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 911, column: 2)
!2096 = !DILocation(line: 911, column: 6, scope: !2095)
!2097 = !DILocation(line: 911, column: 11, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 911, column: 2)
!2099 = !DILocation(line: 911, column: 13, scope: !2098)
!2100 = !DILocation(line: 911, column: 18, scope: !2098)
!2101 = !DILocation(line: 911, column: 12, scope: !2098)
!2102 = !DILocation(line: 911, column: 2, scope: !2095)
!2103 = !DILocation(line: 912, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 912, column: 7)
!2105 = !DILocation(line: 912, column: 12, scope: !2104)
!2106 = !DILocation(line: 912, column: 19, scope: !2104)
!2107 = !DILocation(line: 912, column: 22, scope: !2104)
!2108 = !DILocation(line: 912, column: 7, scope: !2098)
!2109 = !DILocation(line: 913, column: 4, scope: !2104)
!2110 = !DILocation(line: 912, column: 25, scope: !2104)
!2111 = !DILocation(line: 911, column: 33, scope: !2098)
!2112 = !DILocation(line: 911, column: 2, scope: !2098)
!2113 = distinct !{!2113, !2102, !2114, !413}
!2114 = !DILocation(line: 913, column: 11, scope: !2095)
!2115 = !DILocation(line: 914, column: 2, scope: !2080)
!2116 = !DILocation(line: 915, column: 1, scope: !2080)
!2117 = distinct !DISubprogram(name: "hwloc_bitmap_isfull", scope: !2, file: !2, line: 917, type: !2081, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2118)
!2118 = !{!2119, !2120}
!2119 = !DILocalVariable(name: "set", arg: 1, scope: !2117, file: !2, line: 917, type: !203)
!2120 = !DILocalVariable(name: "i", scope: !2117, file: !2, line: 919, type: !84)
!2121 = !DILocation(line: 917, column: 54, scope: !2117)
!2122 = !DILocation(line: 919, column: 2, scope: !2117)
!2123 = !DILocation(line: 919, column: 11, scope: !2117)
!2124 = !DILocation(line: 923, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 923, column: 6)
!2126 = !DILocation(line: 923, column: 12, scope: !2125)
!2127 = !DILocation(line: 923, column: 6, scope: !2117)
!2128 = !DILocation(line: 924, column: 3, scope: !2125)
!2129 = !DILocation(line: 925, column: 7, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 925, column: 2)
!2131 = !DILocation(line: 925, column: 6, scope: !2130)
!2132 = !DILocation(line: 925, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !2, line: 925, column: 2)
!2134 = !DILocation(line: 925, column: 13, scope: !2133)
!2135 = !DILocation(line: 925, column: 18, scope: !2133)
!2136 = !DILocation(line: 925, column: 12, scope: !2133)
!2137 = !DILocation(line: 925, column: 2, scope: !2130)
!2138 = !DILocation(line: 926, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 926, column: 7)
!2140 = !DILocation(line: 926, column: 12, scope: !2139)
!2141 = !DILocation(line: 926, column: 19, scope: !2139)
!2142 = !DILocation(line: 926, column: 22, scope: !2139)
!2143 = !DILocation(line: 926, column: 7, scope: !2133)
!2144 = !DILocation(line: 927, column: 4, scope: !2139)
!2145 = !DILocation(line: 926, column: 25, scope: !2139)
!2146 = !DILocation(line: 925, column: 33, scope: !2133)
!2147 = !DILocation(line: 925, column: 2, scope: !2133)
!2148 = distinct !{!2148, !2137, !2149, !413}
!2149 = !DILocation(line: 927, column: 11, scope: !2130)
!2150 = !DILocation(line: 928, column: 2, scope: !2117)
!2151 = !DILocation(line: 929, column: 1, scope: !2117)
!2152 = distinct !DISubprogram(name: "hwloc_bitmap_isequal", scope: !2, file: !2, line: 931, type: !2153, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!81, !203, !203}
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2165}
!2156 = !DILocalVariable(name: "set1", arg: 1, scope: !2152, file: !2, line: 931, type: !203)
!2157 = !DILocalVariable(name: "set2", arg: 2, scope: !2152, file: !2, line: 931, type: !203)
!2158 = !DILocalVariable(name: "count1", scope: !2152, file: !2, line: 933, type: !84)
!2159 = !DILocalVariable(name: "count2", scope: !2152, file: !2, line: 934, type: !84)
!2160 = !DILocalVariable(name: "min_count", scope: !2152, file: !2, line: 935, type: !84)
!2161 = !DILocalVariable(name: "i", scope: !2152, file: !2, line: 936, type: !84)
!2162 = !DILocalVariable(name: "w1", scope: !2163, file: !2, line: 946, type: !85)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 945, column: 24)
!2164 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 945, column: 6)
!2165 = !DILocalVariable(name: "w2", scope: !2163, file: !2, line: 947, type: !85)
!2166 = !DILocation(line: 931, column: 56, scope: !2152)
!2167 = !DILocation(line: 931, column: 91, scope: !2152)
!2168 = !DILocation(line: 933, column: 2, scope: !2152)
!2169 = !DILocation(line: 933, column: 11, scope: !2152)
!2170 = !DILocation(line: 933, column: 20, scope: !2152)
!2171 = !DILocation(line: 933, column: 26, scope: !2152)
!2172 = !DILocation(line: 934, column: 2, scope: !2152)
!2173 = !DILocation(line: 934, column: 11, scope: !2152)
!2174 = !DILocation(line: 934, column: 20, scope: !2152)
!2175 = !DILocation(line: 934, column: 26, scope: !2152)
!2176 = !DILocation(line: 935, column: 2, scope: !2152)
!2177 = !DILocation(line: 935, column: 11, scope: !2152)
!2178 = !DILocation(line: 935, column: 23, scope: !2152)
!2179 = !DILocation(line: 935, column: 32, scope: !2152)
!2180 = !DILocation(line: 935, column: 30, scope: !2152)
!2181 = !DILocation(line: 935, column: 41, scope: !2152)
!2182 = !DILocation(line: 935, column: 50, scope: !2152)
!2183 = !DILocation(line: 936, column: 2, scope: !2152)
!2184 = !DILocation(line: 936, column: 11, scope: !2152)
!2185 = !DILocation(line: 941, column: 7, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 941, column: 2)
!2187 = !DILocation(line: 941, column: 6, scope: !2186)
!2188 = !DILocation(line: 941, column: 11, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 941, column: 2)
!2190 = !DILocation(line: 941, column: 13, scope: !2189)
!2191 = !DILocation(line: 941, column: 12, scope: !2189)
!2192 = !DILocation(line: 941, column: 2, scope: !2186)
!2193 = !DILocation(line: 942, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2189, file: !2, line: 942, column: 7)
!2195 = !DILocation(line: 942, column: 13, scope: !2194)
!2196 = !DILocation(line: 942, column: 20, scope: !2194)
!2197 = !DILocation(line: 942, column: 26, scope: !2194)
!2198 = !DILocation(line: 942, column: 32, scope: !2194)
!2199 = !DILocation(line: 942, column: 39, scope: !2194)
!2200 = !DILocation(line: 942, column: 23, scope: !2194)
!2201 = !DILocation(line: 942, column: 7, scope: !2189)
!2202 = !DILocation(line: 943, column: 4, scope: !2194)
!2203 = !DILocation(line: 942, column: 40, scope: !2194)
!2204 = !DILocation(line: 941, column: 25, scope: !2189)
!2205 = !DILocation(line: 941, column: 2, scope: !2189)
!2206 = distinct !{!2206, !2192, !2207, !413}
!2207 = !DILocation(line: 943, column: 11, scope: !2186)
!2208 = !DILocation(line: 945, column: 6, scope: !2164)
!2209 = !DILocation(line: 945, column: 16, scope: !2164)
!2210 = !DILocation(line: 945, column: 13, scope: !2164)
!2211 = !DILocation(line: 945, column: 6, scope: !2152)
!2212 = !DILocation(line: 946, column: 3, scope: !2163)
!2213 = !DILocation(line: 946, column: 17, scope: !2163)
!2214 = !DILocation(line: 946, column: 22, scope: !2163)
!2215 = !DILocation(line: 946, column: 28, scope: !2163)
!2216 = !DILocation(line: 947, column: 3, scope: !2163)
!2217 = !DILocation(line: 947, column: 17, scope: !2163)
!2218 = !DILocation(line: 947, column: 22, scope: !2163)
!2219 = !DILocation(line: 947, column: 28, scope: !2163)
!2220 = !DILocation(line: 948, column: 9, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 948, column: 3)
!2222 = !DILocation(line: 948, column: 8, scope: !2221)
!2223 = !DILocation(line: 948, column: 7, scope: !2221)
!2224 = !DILocation(line: 948, column: 20, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 948, column: 3)
!2226 = !DILocation(line: 948, column: 22, scope: !2225)
!2227 = !DILocation(line: 948, column: 21, scope: !2225)
!2228 = !DILocation(line: 948, column: 3, scope: !2221)
!2229 = !DILocation(line: 949, column: 8, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 949, column: 8)
!2231 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 948, column: 35)
!2232 = !DILocation(line: 949, column: 14, scope: !2230)
!2233 = !DILocation(line: 949, column: 21, scope: !2230)
!2234 = !DILocation(line: 949, column: 27, scope: !2230)
!2235 = !DILocation(line: 949, column: 24, scope: !2230)
!2236 = !DILocation(line: 949, column: 8, scope: !2231)
!2237 = !DILocation(line: 950, column: 5, scope: !2230)
!2238 = !DILocation(line: 951, column: 3, scope: !2231)
!2239 = !DILocation(line: 948, column: 31, scope: !2225)
!2240 = !DILocation(line: 948, column: 3, scope: !2225)
!2241 = distinct !{!2241, !2228, !2242, !413}
!2242 = !DILocation(line: 951, column: 3, scope: !2221)
!2243 = !DILocation(line: 952, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 952, column: 3)
!2245 = !DILocation(line: 952, column: 8, scope: !2244)
!2246 = !DILocation(line: 952, column: 7, scope: !2244)
!2247 = !DILocation(line: 952, column: 20, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 952, column: 3)
!2249 = !DILocation(line: 952, column: 22, scope: !2248)
!2250 = !DILocation(line: 952, column: 21, scope: !2248)
!2251 = !DILocation(line: 952, column: 3, scope: !2244)
!2252 = !DILocation(line: 953, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 953, column: 8)
!2254 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 952, column: 35)
!2255 = !DILocation(line: 953, column: 14, scope: !2253)
!2256 = !DILocation(line: 953, column: 21, scope: !2253)
!2257 = !DILocation(line: 953, column: 27, scope: !2253)
!2258 = !DILocation(line: 953, column: 24, scope: !2253)
!2259 = !DILocation(line: 953, column: 8, scope: !2254)
!2260 = !DILocation(line: 954, column: 5, scope: !2253)
!2261 = !DILocation(line: 955, column: 3, scope: !2254)
!2262 = !DILocation(line: 952, column: 31, scope: !2248)
!2263 = !DILocation(line: 952, column: 3, scope: !2248)
!2264 = distinct !{!2264, !2251, !2265, !413}
!2265 = !DILocation(line: 955, column: 3, scope: !2244)
!2266 = !DILocation(line: 956, column: 2, scope: !2164)
!2267 = !DILocation(line: 956, column: 2, scope: !2163)
!2268 = !DILocation(line: 958, column: 6, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 958, column: 6)
!2270 = !DILocation(line: 958, column: 12, scope: !2269)
!2271 = !DILocation(line: 958, column: 24, scope: !2269)
!2272 = !DILocation(line: 958, column: 30, scope: !2269)
!2273 = !DILocation(line: 958, column: 21, scope: !2269)
!2274 = !DILocation(line: 958, column: 6, scope: !2152)
!2275 = !DILocation(line: 959, column: 3, scope: !2269)
!2276 = !DILocation(line: 961, column: 2, scope: !2152)
!2277 = !DILocation(line: 962, column: 1, scope: !2152)
!2278 = distinct !DISubprogram(name: "hwloc_bitmap_intersects", scope: !2, file: !2, line: 964, type: !2153, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285}
!2280 = !DILocalVariable(name: "set1", arg: 1, scope: !2278, file: !2, line: 964, type: !203)
!2281 = !DILocalVariable(name: "set2", arg: 2, scope: !2278, file: !2, line: 964, type: !203)
!2282 = !DILocalVariable(name: "count1", scope: !2278, file: !2, line: 966, type: !84)
!2283 = !DILocalVariable(name: "count2", scope: !2278, file: !2, line: 967, type: !84)
!2284 = !DILocalVariable(name: "min_count", scope: !2278, file: !2, line: 968, type: !84)
!2285 = !DILocalVariable(name: "i", scope: !2278, file: !2, line: 969, type: !84)
!2286 = !DILocation(line: 964, column: 59, scope: !2278)
!2287 = !DILocation(line: 964, column: 94, scope: !2278)
!2288 = !DILocation(line: 966, column: 2, scope: !2278)
!2289 = !DILocation(line: 966, column: 11, scope: !2278)
!2290 = !DILocation(line: 966, column: 20, scope: !2278)
!2291 = !DILocation(line: 966, column: 26, scope: !2278)
!2292 = !DILocation(line: 967, column: 2, scope: !2278)
!2293 = !DILocation(line: 967, column: 11, scope: !2278)
!2294 = !DILocation(line: 967, column: 20, scope: !2278)
!2295 = !DILocation(line: 967, column: 26, scope: !2278)
!2296 = !DILocation(line: 968, column: 2, scope: !2278)
!2297 = !DILocation(line: 968, column: 11, scope: !2278)
!2298 = !DILocation(line: 968, column: 23, scope: !2278)
!2299 = !DILocation(line: 968, column: 32, scope: !2278)
!2300 = !DILocation(line: 968, column: 30, scope: !2278)
!2301 = !DILocation(line: 968, column: 41, scope: !2278)
!2302 = !DILocation(line: 968, column: 50, scope: !2278)
!2303 = !DILocation(line: 969, column: 2, scope: !2278)
!2304 = !DILocation(line: 969, column: 11, scope: !2278)
!2305 = !DILocation(line: 974, column: 7, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 974, column: 2)
!2307 = !DILocation(line: 974, column: 6, scope: !2306)
!2308 = !DILocation(line: 974, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 974, column: 2)
!2310 = !DILocation(line: 974, column: 13, scope: !2309)
!2311 = !DILocation(line: 974, column: 12, scope: !2309)
!2312 = !DILocation(line: 974, column: 2, scope: !2306)
!2313 = !DILocation(line: 975, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 975, column: 7)
!2315 = !DILocation(line: 975, column: 13, scope: !2314)
!2316 = !DILocation(line: 975, column: 20, scope: !2314)
!2317 = !DILocation(line: 975, column: 25, scope: !2314)
!2318 = !DILocation(line: 975, column: 31, scope: !2314)
!2319 = !DILocation(line: 975, column: 38, scope: !2314)
!2320 = !DILocation(line: 975, column: 23, scope: !2314)
!2321 = !DILocation(line: 975, column: 7, scope: !2309)
!2322 = !DILocation(line: 976, column: 4, scope: !2314)
!2323 = !DILocation(line: 975, column: 39, scope: !2314)
!2324 = !DILocation(line: 974, column: 25, scope: !2309)
!2325 = !DILocation(line: 974, column: 2, scope: !2309)
!2326 = distinct !{!2326, !2312, !2327, !413}
!2327 = !DILocation(line: 976, column: 11, scope: !2306)
!2328 = !DILocation(line: 978, column: 6, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 978, column: 6)
!2330 = !DILocation(line: 978, column: 16, scope: !2329)
!2331 = !DILocation(line: 978, column: 13, scope: !2329)
!2332 = !DILocation(line: 978, column: 6, scope: !2278)
!2333 = !DILocation(line: 979, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !2, line: 979, column: 7)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 978, column: 24)
!2336 = !DILocation(line: 979, column: 13, scope: !2334)
!2337 = !DILocation(line: 979, column: 7, scope: !2335)
!2338 = !DILocation(line: 980, column: 10, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 980, column: 4)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 979, column: 23)
!2341 = !DILocation(line: 980, column: 9, scope: !2339)
!2342 = !DILocation(line: 980, column: 8, scope: !2339)
!2343 = !DILocation(line: 980, column: 21, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2339, file: !2, line: 980, column: 4)
!2345 = !DILocation(line: 980, column: 23, scope: !2344)
!2346 = !DILocation(line: 980, column: 29, scope: !2344)
!2347 = !DILocation(line: 980, column: 22, scope: !2344)
!2348 = !DILocation(line: 980, column: 4, scope: !2339)
!2349 = !DILocation(line: 981, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2344, file: !2, line: 981, column: 9)
!2351 = !DILocation(line: 981, column: 15, scope: !2350)
!2352 = !DILocation(line: 981, column: 22, scope: !2350)
!2353 = !DILocation(line: 981, column: 9, scope: !2344)
!2354 = !DILocation(line: 982, column: 6, scope: !2350)
!2355 = !DILocation(line: 981, column: 23, scope: !2350)
!2356 = !DILocation(line: 980, column: 44, scope: !2344)
!2357 = !DILocation(line: 980, column: 4, scope: !2344)
!2358 = distinct !{!2358, !2348, !2359, !413}
!2359 = !DILocation(line: 982, column: 13, scope: !2339)
!2360 = !DILocation(line: 983, column: 3, scope: !2340)
!2361 = !DILocation(line: 984, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2335, file: !2, line: 984, column: 7)
!2363 = !DILocation(line: 984, column: 13, scope: !2362)
!2364 = !DILocation(line: 984, column: 7, scope: !2335)
!2365 = !DILocation(line: 985, column: 10, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2, line: 985, column: 4)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 984, column: 23)
!2368 = !DILocation(line: 985, column: 9, scope: !2366)
!2369 = !DILocation(line: 985, column: 8, scope: !2366)
!2370 = !DILocation(line: 985, column: 21, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 985, column: 4)
!2372 = !DILocation(line: 985, column: 23, scope: !2371)
!2373 = !DILocation(line: 985, column: 29, scope: !2371)
!2374 = !DILocation(line: 985, column: 22, scope: !2371)
!2375 = !DILocation(line: 985, column: 4, scope: !2366)
!2376 = !DILocation(line: 986, column: 9, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2371, file: !2, line: 986, column: 9)
!2378 = !DILocation(line: 986, column: 15, scope: !2377)
!2379 = !DILocation(line: 986, column: 22, scope: !2377)
!2380 = !DILocation(line: 986, column: 9, scope: !2371)
!2381 = !DILocation(line: 987, column: 6, scope: !2377)
!2382 = !DILocation(line: 986, column: 23, scope: !2377)
!2383 = !DILocation(line: 985, column: 44, scope: !2371)
!2384 = !DILocation(line: 985, column: 4, scope: !2371)
!2385 = distinct !{!2385, !2375, !2386, !413}
!2386 = !DILocation(line: 987, column: 13, scope: !2366)
!2387 = !DILocation(line: 988, column: 3, scope: !2367)
!2388 = !DILocation(line: 989, column: 2, scope: !2335)
!2389 = !DILocation(line: 991, column: 6, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 991, column: 6)
!2391 = !DILocation(line: 991, column: 12, scope: !2390)
!2392 = !DILocation(line: 991, column: 21, scope: !2390)
!2393 = !DILocation(line: 991, column: 24, scope: !2390)
!2394 = !DILocation(line: 991, column: 30, scope: !2390)
!2395 = !DILocation(line: 991, column: 6, scope: !2278)
!2396 = !DILocation(line: 992, column: 3, scope: !2390)
!2397 = !DILocation(line: 994, column: 2, scope: !2278)
!2398 = !DILocation(line: 995, column: 1, scope: !2278)
!2399 = distinct !DISubprogram(name: "hwloc_bitmap_isincluded", scope: !2, file: !2, line: 997, type: !2153, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406}
!2401 = !DILocalVariable(name: "sub_set", arg: 1, scope: !2399, file: !2, line: 997, type: !203)
!2402 = !DILocalVariable(name: "super_set", arg: 2, scope: !2399, file: !2, line: 997, type: !203)
!2403 = !DILocalVariable(name: "super_count", scope: !2399, file: !2, line: 999, type: !84)
!2404 = !DILocalVariable(name: "sub_count", scope: !2399, file: !2, line: 1000, type: !84)
!2405 = !DILocalVariable(name: "min_count", scope: !2399, file: !2, line: 1001, type: !84)
!2406 = !DILocalVariable(name: "i", scope: !2399, file: !2, line: 1002, type: !84)
!2407 = !DILocation(line: 997, column: 59, scope: !2399)
!2408 = !DILocation(line: 997, column: 97, scope: !2399)
!2409 = !DILocation(line: 999, column: 2, scope: !2399)
!2410 = !DILocation(line: 999, column: 11, scope: !2399)
!2411 = !DILocation(line: 999, column: 25, scope: !2399)
!2412 = !DILocation(line: 999, column: 36, scope: !2399)
!2413 = !DILocation(line: 1000, column: 2, scope: !2399)
!2414 = !DILocation(line: 1000, column: 11, scope: !2399)
!2415 = !DILocation(line: 1000, column: 23, scope: !2399)
!2416 = !DILocation(line: 1000, column: 32, scope: !2399)
!2417 = !DILocation(line: 1001, column: 2, scope: !2399)
!2418 = !DILocation(line: 1001, column: 11, scope: !2399)
!2419 = !DILocation(line: 1001, column: 23, scope: !2399)
!2420 = !DILocation(line: 1001, column: 37, scope: !2399)
!2421 = !DILocation(line: 1001, column: 35, scope: !2399)
!2422 = !DILocation(line: 1001, column: 49, scope: !2399)
!2423 = !DILocation(line: 1001, column: 63, scope: !2399)
!2424 = !DILocation(line: 1002, column: 2, scope: !2399)
!2425 = !DILocation(line: 1002, column: 11, scope: !2399)
!2426 = !DILocation(line: 1007, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 1007, column: 2)
!2428 = !DILocation(line: 1007, column: 6, scope: !2427)
!2429 = !DILocation(line: 1007, column: 11, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !2, line: 1007, column: 2)
!2431 = !DILocation(line: 1007, column: 13, scope: !2430)
!2432 = !DILocation(line: 1007, column: 12, scope: !2430)
!2433 = !DILocation(line: 1007, column: 2, scope: !2427)
!2434 = !DILocation(line: 1008, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 1008, column: 7)
!2436 = !DILocation(line: 1008, column: 18, scope: !2435)
!2437 = !DILocation(line: 1008, column: 25, scope: !2435)
!2438 = !DILocation(line: 1008, column: 32, scope: !2435)
!2439 = !DILocation(line: 1008, column: 43, scope: !2435)
!2440 = !DILocation(line: 1008, column: 50, scope: !2435)
!2441 = !DILocation(line: 1008, column: 55, scope: !2435)
!2442 = !DILocation(line: 1008, column: 64, scope: !2435)
!2443 = !DILocation(line: 1008, column: 71, scope: !2435)
!2444 = !DILocation(line: 1008, column: 53, scope: !2435)
!2445 = !DILocation(line: 1008, column: 28, scope: !2435)
!2446 = !DILocation(line: 1008, column: 7, scope: !2430)
!2447 = !DILocation(line: 1009, column: 4, scope: !2435)
!2448 = !DILocation(line: 1008, column: 73, scope: !2435)
!2449 = !DILocation(line: 1007, column: 25, scope: !2430)
!2450 = !DILocation(line: 1007, column: 2, scope: !2430)
!2451 = distinct !{!2451, !2433, !2452, !413}
!2452 = !DILocation(line: 1009, column: 11, scope: !2427)
!2453 = !DILocation(line: 1011, column: 6, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 1011, column: 6)
!2455 = !DILocation(line: 1011, column: 21, scope: !2454)
!2456 = !DILocation(line: 1011, column: 18, scope: !2454)
!2457 = !DILocation(line: 1011, column: 6, scope: !2399)
!2458 = !DILocation(line: 1012, column: 8, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 1012, column: 7)
!2460 = distinct !DILexicalBlock(scope: !2454, file: !2, line: 1011, column: 32)
!2461 = !DILocation(line: 1012, column: 19, scope: !2459)
!2462 = !DILocation(line: 1012, column: 7, scope: !2460)
!2463 = !DILocation(line: 1013, column: 10, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2459, file: !2, line: 1013, column: 4)
!2465 = !DILocation(line: 1013, column: 9, scope: !2464)
!2466 = !DILocation(line: 1013, column: 8, scope: !2464)
!2467 = !DILocation(line: 1013, column: 21, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !2, line: 1013, column: 4)
!2469 = !DILocation(line: 1013, column: 23, scope: !2468)
!2470 = !DILocation(line: 1013, column: 22, scope: !2468)
!2471 = !DILocation(line: 1013, column: 4, scope: !2464)
!2472 = !DILocation(line: 1014, column: 9, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2468, file: !2, line: 1014, column: 9)
!2474 = !DILocation(line: 1014, column: 18, scope: !2473)
!2475 = !DILocation(line: 1014, column: 25, scope: !2473)
!2476 = !DILocation(line: 1014, column: 9, scope: !2468)
!2477 = !DILocation(line: 1015, column: 6, scope: !2473)
!2478 = !DILocation(line: 1014, column: 26, scope: !2473)
!2479 = !DILocation(line: 1013, column: 35, scope: !2468)
!2480 = !DILocation(line: 1013, column: 4, scope: !2468)
!2481 = distinct !{!2481, !2471, !2482, !413}
!2482 = !DILocation(line: 1015, column: 13, scope: !2464)
!2483 = !DILocation(line: 1016, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 1016, column: 7)
!2485 = !DILocation(line: 1016, column: 16, scope: !2484)
!2486 = !DILocation(line: 1016, column: 7, scope: !2460)
!2487 = !DILocation(line: 1017, column: 10, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 1017, column: 4)
!2489 = !DILocation(line: 1017, column: 9, scope: !2488)
!2490 = !DILocation(line: 1017, column: 8, scope: !2488)
!2491 = !DILocation(line: 1017, column: 21, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 1017, column: 4)
!2493 = !DILocation(line: 1017, column: 23, scope: !2492)
!2494 = !DILocation(line: 1017, column: 22, scope: !2492)
!2495 = !DILocation(line: 1017, column: 4, scope: !2488)
!2496 = !DILocation(line: 1018, column: 9, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !2, line: 1018, column: 9)
!2498 = !DILocation(line: 1018, column: 20, scope: !2497)
!2499 = !DILocation(line: 1018, column: 27, scope: !2497)
!2500 = !DILocation(line: 1018, column: 30, scope: !2497)
!2501 = !DILocation(line: 1018, column: 9, scope: !2492)
!2502 = !DILocation(line: 1019, column: 6, scope: !2497)
!2503 = !DILocation(line: 1018, column: 33, scope: !2497)
!2504 = !DILocation(line: 1017, column: 37, scope: !2492)
!2505 = !DILocation(line: 1017, column: 4, scope: !2492)
!2506 = distinct !{!2506, !2495, !2507, !413}
!2507 = !DILocation(line: 1019, column: 13, scope: !2488)
!2508 = !DILocation(line: 1020, column: 2, scope: !2460)
!2509 = !DILocation(line: 1022, column: 6, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 1022, column: 6)
!2511 = !DILocation(line: 1022, column: 15, scope: !2510)
!2512 = !DILocation(line: 1022, column: 24, scope: !2510)
!2513 = !DILocation(line: 1022, column: 28, scope: !2510)
!2514 = !DILocation(line: 1022, column: 39, scope: !2510)
!2515 = !DILocation(line: 1022, column: 6, scope: !2399)
!2516 = !DILocation(line: 1023, column: 3, scope: !2510)
!2517 = !DILocation(line: 1025, column: 2, scope: !2399)
!2518 = !DILocation(line: 1026, column: 1, scope: !2399)
!2519 = distinct !DISubprogram(name: "hwloc_bitmap_or", scope: !2, file: !2, line: 1028, type: !2520, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{null, !98, !203, !203}
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530}
!2523 = !DILocalVariable(name: "res", arg: 1, scope: !2519, file: !2, line: 1028, type: !98)
!2524 = !DILocalVariable(name: "set1", arg: 2, scope: !2519, file: !2, line: 1028, type: !203)
!2525 = !DILocalVariable(name: "set2", arg: 3, scope: !2519, file: !2, line: 1028, type: !203)
!2526 = !DILocalVariable(name: "count1", scope: !2519, file: !2, line: 1031, type: !84)
!2527 = !DILocalVariable(name: "count2", scope: !2519, file: !2, line: 1032, type: !84)
!2528 = !DILocalVariable(name: "max_count", scope: !2519, file: !2, line: 1033, type: !84)
!2529 = !DILocalVariable(name: "min_count", scope: !2519, file: !2, line: 1034, type: !84)
!2530 = !DILocalVariable(name: "i", scope: !2519, file: !2, line: 1035, type: !84)
!2531 = !DILocation(line: 1028, column: 46, scope: !2519)
!2532 = !DILocation(line: 1028, column: 80, scope: !2519)
!2533 = !DILocation(line: 1028, column: 115, scope: !2519)
!2534 = !DILocation(line: 1031, column: 2, scope: !2519)
!2535 = !DILocation(line: 1031, column: 11, scope: !2519)
!2536 = !DILocation(line: 1031, column: 20, scope: !2519)
!2537 = !DILocation(line: 1031, column: 26, scope: !2519)
!2538 = !DILocation(line: 1032, column: 2, scope: !2519)
!2539 = !DILocation(line: 1032, column: 11, scope: !2519)
!2540 = !DILocation(line: 1032, column: 20, scope: !2519)
!2541 = !DILocation(line: 1032, column: 26, scope: !2519)
!2542 = !DILocation(line: 1033, column: 2, scope: !2519)
!2543 = !DILocation(line: 1033, column: 11, scope: !2519)
!2544 = !DILocation(line: 1033, column: 23, scope: !2519)
!2545 = !DILocation(line: 1033, column: 32, scope: !2519)
!2546 = !DILocation(line: 1033, column: 30, scope: !2519)
!2547 = !DILocation(line: 1033, column: 41, scope: !2519)
!2548 = !DILocation(line: 1033, column: 50, scope: !2519)
!2549 = !DILocation(line: 1034, column: 2, scope: !2519)
!2550 = !DILocation(line: 1034, column: 11, scope: !2519)
!2551 = !DILocation(line: 1034, column: 23, scope: !2519)
!2552 = !DILocation(line: 1034, column: 32, scope: !2519)
!2553 = !DILocation(line: 1034, column: 30, scope: !2519)
!2554 = !DILocation(line: 1034, column: 41, scope: !2519)
!2555 = !DILocation(line: 1034, column: 39, scope: !2519)
!2556 = !DILocation(line: 1035, column: 2, scope: !2519)
!2557 = !DILocation(line: 1035, column: 11, scope: !2519)
!2558 = !DILocation(line: 1041, column: 31, scope: !2519)
!2559 = !DILocation(line: 1041, column: 36, scope: !2519)
!2560 = !DILocation(line: 1041, column: 2, scope: !2519)
!2561 = !DILocation(line: 1043, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 1043, column: 2)
!2563 = !DILocation(line: 1043, column: 6, scope: !2562)
!2564 = !DILocation(line: 1043, column: 11, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2562, file: !2, line: 1043, column: 2)
!2566 = !DILocation(line: 1043, column: 13, scope: !2565)
!2567 = !DILocation(line: 1043, column: 12, scope: !2565)
!2568 = !DILocation(line: 1043, column: 2, scope: !2562)
!2569 = !DILocation(line: 1044, column: 20, scope: !2565)
!2570 = !DILocation(line: 1044, column: 26, scope: !2565)
!2571 = !DILocation(line: 1044, column: 33, scope: !2565)
!2572 = !DILocation(line: 1044, column: 38, scope: !2565)
!2573 = !DILocation(line: 1044, column: 44, scope: !2565)
!2574 = !DILocation(line: 1044, column: 51, scope: !2565)
!2575 = !DILocation(line: 1044, column: 36, scope: !2565)
!2576 = !DILocation(line: 1044, column: 3, scope: !2565)
!2577 = !DILocation(line: 1044, column: 8, scope: !2565)
!2578 = !DILocation(line: 1044, column: 15, scope: !2565)
!2579 = !DILocation(line: 1044, column: 18, scope: !2565)
!2580 = !DILocation(line: 1043, column: 25, scope: !2565)
!2581 = !DILocation(line: 1043, column: 2, scope: !2565)
!2582 = distinct !{!2582, !2568, !2583, !413}
!2583 = !DILocation(line: 1044, column: 52, scope: !2562)
!2584 = !DILocation(line: 1046, column: 6, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 1046, column: 6)
!2586 = !DILocation(line: 1046, column: 16, scope: !2585)
!2587 = !DILocation(line: 1046, column: 13, scope: !2585)
!2588 = !DILocation(line: 1046, column: 6, scope: !2519)
!2589 = !DILocation(line: 1047, column: 7, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !2, line: 1047, column: 7)
!2591 = distinct !DILexicalBlock(scope: !2585, file: !2, line: 1046, column: 24)
!2592 = !DILocation(line: 1047, column: 19, scope: !2590)
!2593 = !DILocation(line: 1047, column: 17, scope: !2590)
!2594 = !DILocation(line: 1047, column: 7, scope: !2591)
!2595 = !DILocation(line: 1048, column: 8, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !2, line: 1048, column: 8)
!2597 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 1047, column: 27)
!2598 = !DILocation(line: 1048, column: 14, scope: !2596)
!2599 = !DILocation(line: 1048, column: 8, scope: !2597)
!2600 = !DILocation(line: 1049, column: 25, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 1048, column: 24)
!2602 = !DILocation(line: 1049, column: 5, scope: !2601)
!2603 = !DILocation(line: 1049, column: 10, scope: !2601)
!2604 = !DILocation(line: 1049, column: 23, scope: !2601)
!2605 = !DILocation(line: 1050, column: 4, scope: !2601)
!2606 = !DILocation(line: 1051, column: 11, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2608, file: !2, line: 1051, column: 5)
!2608 = distinct !DILexicalBlock(scope: !2596, file: !2, line: 1050, column: 11)
!2609 = !DILocation(line: 1051, column: 10, scope: !2607)
!2610 = !DILocation(line: 1051, column: 9, scope: !2607)
!2611 = !DILocation(line: 1051, column: 22, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2607, file: !2, line: 1051, column: 5)
!2613 = !DILocation(line: 1051, column: 24, scope: !2612)
!2614 = !DILocation(line: 1051, column: 23, scope: !2612)
!2615 = !DILocation(line: 1051, column: 5, scope: !2607)
!2616 = !DILocation(line: 1052, column: 23, scope: !2612)
!2617 = !DILocation(line: 1052, column: 29, scope: !2612)
!2618 = !DILocation(line: 1052, column: 36, scope: !2612)
!2619 = !DILocation(line: 1052, column: 6, scope: !2612)
!2620 = !DILocation(line: 1052, column: 11, scope: !2612)
!2621 = !DILocation(line: 1052, column: 18, scope: !2612)
!2622 = !DILocation(line: 1052, column: 21, scope: !2612)
!2623 = !DILocation(line: 1051, column: 36, scope: !2612)
!2624 = !DILocation(line: 1051, column: 5, scope: !2612)
!2625 = distinct !{!2625, !2615, !2626, !413}
!2626 = !DILocation(line: 1052, column: 37, scope: !2607)
!2627 = !DILocation(line: 1054, column: 3, scope: !2597)
!2628 = !DILocation(line: 1055, column: 8, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !2, line: 1055, column: 8)
!2630 = distinct !DILexicalBlock(scope: !2590, file: !2, line: 1054, column: 10)
!2631 = !DILocation(line: 1055, column: 14, scope: !2629)
!2632 = !DILocation(line: 1055, column: 8, scope: !2630)
!2633 = !DILocation(line: 1056, column: 25, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 1055, column: 24)
!2635 = !DILocation(line: 1056, column: 5, scope: !2634)
!2636 = !DILocation(line: 1056, column: 10, scope: !2634)
!2637 = !DILocation(line: 1056, column: 23, scope: !2634)
!2638 = !DILocation(line: 1057, column: 4, scope: !2634)
!2639 = !DILocation(line: 1058, column: 11, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2, line: 1058, column: 5)
!2641 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 1057, column: 11)
!2642 = !DILocation(line: 1058, column: 10, scope: !2640)
!2643 = !DILocation(line: 1058, column: 9, scope: !2640)
!2644 = !DILocation(line: 1058, column: 22, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !2, line: 1058, column: 5)
!2646 = !DILocation(line: 1058, column: 24, scope: !2645)
!2647 = !DILocation(line: 1058, column: 23, scope: !2645)
!2648 = !DILocation(line: 1058, column: 5, scope: !2640)
!2649 = !DILocation(line: 1059, column: 23, scope: !2645)
!2650 = !DILocation(line: 1059, column: 29, scope: !2645)
!2651 = !DILocation(line: 1059, column: 36, scope: !2645)
!2652 = !DILocation(line: 1059, column: 6, scope: !2645)
!2653 = !DILocation(line: 1059, column: 11, scope: !2645)
!2654 = !DILocation(line: 1059, column: 18, scope: !2645)
!2655 = !DILocation(line: 1059, column: 21, scope: !2645)
!2656 = !DILocation(line: 1058, column: 36, scope: !2645)
!2657 = !DILocation(line: 1058, column: 5, scope: !2645)
!2658 = distinct !{!2658, !2648, !2659, !413}
!2659 = !DILocation(line: 1059, column: 37, scope: !2640)
!2660 = !DILocation(line: 1062, column: 2, scope: !2591)
!2661 = !DILocation(line: 1064, column: 18, scope: !2519)
!2662 = !DILocation(line: 1064, column: 24, scope: !2519)
!2663 = !DILocation(line: 1064, column: 33, scope: !2519)
!2664 = !DILocation(line: 1064, column: 36, scope: !2519)
!2665 = !DILocation(line: 1064, column: 42, scope: !2519)
!2666 = !DILocation(line: 1064, column: 2, scope: !2519)
!2667 = !DILocation(line: 1064, column: 7, scope: !2519)
!2668 = !DILocation(line: 1064, column: 16, scope: !2519)
!2669 = !DILocation(line: 1065, column: 1, scope: !2519)
!2670 = distinct !DISubprogram(name: "hwloc_bitmap_and", scope: !2, file: !2, line: 1067, type: !2520, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2672 = !DILocalVariable(name: "res", arg: 1, scope: !2670, file: !2, line: 1067, type: !98)
!2673 = !DILocalVariable(name: "set1", arg: 2, scope: !2670, file: !2, line: 1067, type: !203)
!2674 = !DILocalVariable(name: "set2", arg: 3, scope: !2670, file: !2, line: 1067, type: !203)
!2675 = !DILocalVariable(name: "count1", scope: !2670, file: !2, line: 1070, type: !84)
!2676 = !DILocalVariable(name: "count2", scope: !2670, file: !2, line: 1071, type: !84)
!2677 = !DILocalVariable(name: "max_count", scope: !2670, file: !2, line: 1072, type: !84)
!2678 = !DILocalVariable(name: "min_count", scope: !2670, file: !2, line: 1073, type: !84)
!2679 = !DILocalVariable(name: "i", scope: !2670, file: !2, line: 1074, type: !84)
!2680 = !DILocation(line: 1067, column: 47, scope: !2670)
!2681 = !DILocation(line: 1067, column: 81, scope: !2670)
!2682 = !DILocation(line: 1067, column: 116, scope: !2670)
!2683 = !DILocation(line: 1070, column: 2, scope: !2670)
!2684 = !DILocation(line: 1070, column: 11, scope: !2670)
!2685 = !DILocation(line: 1070, column: 20, scope: !2670)
!2686 = !DILocation(line: 1070, column: 26, scope: !2670)
!2687 = !DILocation(line: 1071, column: 2, scope: !2670)
!2688 = !DILocation(line: 1071, column: 11, scope: !2670)
!2689 = !DILocation(line: 1071, column: 20, scope: !2670)
!2690 = !DILocation(line: 1071, column: 26, scope: !2670)
!2691 = !DILocation(line: 1072, column: 2, scope: !2670)
!2692 = !DILocation(line: 1072, column: 11, scope: !2670)
!2693 = !DILocation(line: 1072, column: 23, scope: !2670)
!2694 = !DILocation(line: 1072, column: 32, scope: !2670)
!2695 = !DILocation(line: 1072, column: 30, scope: !2670)
!2696 = !DILocation(line: 1072, column: 41, scope: !2670)
!2697 = !DILocation(line: 1072, column: 50, scope: !2670)
!2698 = !DILocation(line: 1073, column: 2, scope: !2670)
!2699 = !DILocation(line: 1073, column: 11, scope: !2670)
!2700 = !DILocation(line: 1073, column: 23, scope: !2670)
!2701 = !DILocation(line: 1073, column: 32, scope: !2670)
!2702 = !DILocation(line: 1073, column: 30, scope: !2670)
!2703 = !DILocation(line: 1073, column: 41, scope: !2670)
!2704 = !DILocation(line: 1073, column: 39, scope: !2670)
!2705 = !DILocation(line: 1074, column: 2, scope: !2670)
!2706 = !DILocation(line: 1074, column: 11, scope: !2670)
!2707 = !DILocation(line: 1080, column: 31, scope: !2670)
!2708 = !DILocation(line: 1080, column: 36, scope: !2670)
!2709 = !DILocation(line: 1080, column: 2, scope: !2670)
!2710 = !DILocation(line: 1082, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 1082, column: 2)
!2712 = !DILocation(line: 1082, column: 6, scope: !2711)
!2713 = !DILocation(line: 1082, column: 11, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !2, line: 1082, column: 2)
!2715 = !DILocation(line: 1082, column: 13, scope: !2714)
!2716 = !DILocation(line: 1082, column: 12, scope: !2714)
!2717 = !DILocation(line: 1082, column: 2, scope: !2711)
!2718 = !DILocation(line: 1083, column: 20, scope: !2714)
!2719 = !DILocation(line: 1083, column: 26, scope: !2714)
!2720 = !DILocation(line: 1083, column: 33, scope: !2714)
!2721 = !DILocation(line: 1083, column: 38, scope: !2714)
!2722 = !DILocation(line: 1083, column: 44, scope: !2714)
!2723 = !DILocation(line: 1083, column: 51, scope: !2714)
!2724 = !DILocation(line: 1083, column: 36, scope: !2714)
!2725 = !DILocation(line: 1083, column: 3, scope: !2714)
!2726 = !DILocation(line: 1083, column: 8, scope: !2714)
!2727 = !DILocation(line: 1083, column: 15, scope: !2714)
!2728 = !DILocation(line: 1083, column: 18, scope: !2714)
!2729 = !DILocation(line: 1082, column: 25, scope: !2714)
!2730 = !DILocation(line: 1082, column: 2, scope: !2714)
!2731 = distinct !{!2731, !2717, !2732, !413}
!2732 = !DILocation(line: 1083, column: 52, scope: !2711)
!2733 = !DILocation(line: 1085, column: 6, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2670, file: !2, line: 1085, column: 6)
!2735 = !DILocation(line: 1085, column: 16, scope: !2734)
!2736 = !DILocation(line: 1085, column: 13, scope: !2734)
!2737 = !DILocation(line: 1085, column: 6, scope: !2670)
!2738 = !DILocation(line: 1086, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !2, line: 1086, column: 7)
!2740 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 1085, column: 24)
!2741 = !DILocation(line: 1086, column: 19, scope: !2739)
!2742 = !DILocation(line: 1086, column: 17, scope: !2739)
!2743 = !DILocation(line: 1086, column: 7, scope: !2740)
!2744 = !DILocation(line: 1087, column: 8, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !2, line: 1087, column: 8)
!2746 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 1086, column: 27)
!2747 = !DILocation(line: 1087, column: 14, scope: !2745)
!2748 = !DILocation(line: 1087, column: 8, scope: !2746)
!2749 = !DILocation(line: 1088, column: 11, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !2, line: 1088, column: 5)
!2751 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 1087, column: 24)
!2752 = !DILocation(line: 1088, column: 10, scope: !2750)
!2753 = !DILocation(line: 1088, column: 9, scope: !2750)
!2754 = !DILocation(line: 1088, column: 22, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2750, file: !2, line: 1088, column: 5)
!2756 = !DILocation(line: 1088, column: 24, scope: !2755)
!2757 = !DILocation(line: 1088, column: 23, scope: !2755)
!2758 = !DILocation(line: 1088, column: 5, scope: !2750)
!2759 = !DILocation(line: 1089, column: 23, scope: !2755)
!2760 = !DILocation(line: 1089, column: 29, scope: !2755)
!2761 = !DILocation(line: 1089, column: 36, scope: !2755)
!2762 = !DILocation(line: 1089, column: 6, scope: !2755)
!2763 = !DILocation(line: 1089, column: 11, scope: !2755)
!2764 = !DILocation(line: 1089, column: 18, scope: !2755)
!2765 = !DILocation(line: 1089, column: 21, scope: !2755)
!2766 = !DILocation(line: 1088, column: 36, scope: !2755)
!2767 = !DILocation(line: 1088, column: 5, scope: !2755)
!2768 = distinct !{!2768, !2758, !2769, !413}
!2769 = !DILocation(line: 1089, column: 37, scope: !2750)
!2770 = !DILocation(line: 1090, column: 4, scope: !2751)
!2771 = !DILocation(line: 1091, column: 25, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 1090, column: 11)
!2773 = !DILocation(line: 1091, column: 5, scope: !2772)
!2774 = !DILocation(line: 1091, column: 10, scope: !2772)
!2775 = !DILocation(line: 1091, column: 23, scope: !2772)
!2776 = !DILocation(line: 1093, column: 3, scope: !2746)
!2777 = !DILocation(line: 1094, column: 8, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 1094, column: 8)
!2779 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 1093, column: 10)
!2780 = !DILocation(line: 1094, column: 14, scope: !2778)
!2781 = !DILocation(line: 1094, column: 8, scope: !2779)
!2782 = !DILocation(line: 1095, column: 11, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 1095, column: 5)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 1094, column: 24)
!2785 = !DILocation(line: 1095, column: 10, scope: !2783)
!2786 = !DILocation(line: 1095, column: 9, scope: !2783)
!2787 = !DILocation(line: 1095, column: 22, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2783, file: !2, line: 1095, column: 5)
!2789 = !DILocation(line: 1095, column: 24, scope: !2788)
!2790 = !DILocation(line: 1095, column: 23, scope: !2788)
!2791 = !DILocation(line: 1095, column: 5, scope: !2783)
!2792 = !DILocation(line: 1096, column: 23, scope: !2788)
!2793 = !DILocation(line: 1096, column: 29, scope: !2788)
!2794 = !DILocation(line: 1096, column: 36, scope: !2788)
!2795 = !DILocation(line: 1096, column: 6, scope: !2788)
!2796 = !DILocation(line: 1096, column: 11, scope: !2788)
!2797 = !DILocation(line: 1096, column: 18, scope: !2788)
!2798 = !DILocation(line: 1096, column: 21, scope: !2788)
!2799 = !DILocation(line: 1095, column: 36, scope: !2788)
!2800 = !DILocation(line: 1095, column: 5, scope: !2788)
!2801 = distinct !{!2801, !2791, !2802, !413}
!2802 = !DILocation(line: 1096, column: 37, scope: !2783)
!2803 = !DILocation(line: 1097, column: 4, scope: !2784)
!2804 = !DILocation(line: 1098, column: 25, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2778, file: !2, line: 1097, column: 11)
!2806 = !DILocation(line: 1098, column: 5, scope: !2805)
!2807 = !DILocation(line: 1098, column: 10, scope: !2805)
!2808 = !DILocation(line: 1098, column: 23, scope: !2805)
!2809 = !DILocation(line: 1101, column: 2, scope: !2740)
!2810 = !DILocation(line: 1103, column: 18, scope: !2670)
!2811 = !DILocation(line: 1103, column: 24, scope: !2670)
!2812 = !DILocation(line: 1103, column: 33, scope: !2670)
!2813 = !DILocation(line: 1103, column: 36, scope: !2670)
!2814 = !DILocation(line: 1103, column: 42, scope: !2670)
!2815 = !DILocation(line: 0, scope: !2670)
!2816 = !DILocation(line: 1103, column: 2, scope: !2670)
!2817 = !DILocation(line: 1103, column: 7, scope: !2670)
!2818 = !DILocation(line: 1103, column: 16, scope: !2670)
!2819 = !DILocation(line: 1104, column: 1, scope: !2670)
!2820 = distinct !DISubprogram(name: "hwloc_bitmap_andnot", scope: !2, file: !2, line: 1106, type: !2520, scopeLine: 1107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829}
!2822 = !DILocalVariable(name: "res", arg: 1, scope: !2820, file: !2, line: 1106, type: !98)
!2823 = !DILocalVariable(name: "set1", arg: 2, scope: !2820, file: !2, line: 1106, type: !203)
!2824 = !DILocalVariable(name: "set2", arg: 3, scope: !2820, file: !2, line: 1106, type: !203)
!2825 = !DILocalVariable(name: "count1", scope: !2820, file: !2, line: 1109, type: !84)
!2826 = !DILocalVariable(name: "count2", scope: !2820, file: !2, line: 1110, type: !84)
!2827 = !DILocalVariable(name: "max_count", scope: !2820, file: !2, line: 1111, type: !84)
!2828 = !DILocalVariable(name: "min_count", scope: !2820, file: !2, line: 1112, type: !84)
!2829 = !DILocalVariable(name: "i", scope: !2820, file: !2, line: 1113, type: !84)
!2830 = !DILocation(line: 1106, column: 50, scope: !2820)
!2831 = !DILocation(line: 1106, column: 84, scope: !2820)
!2832 = !DILocation(line: 1106, column: 119, scope: !2820)
!2833 = !DILocation(line: 1109, column: 2, scope: !2820)
!2834 = !DILocation(line: 1109, column: 11, scope: !2820)
!2835 = !DILocation(line: 1109, column: 20, scope: !2820)
!2836 = !DILocation(line: 1109, column: 26, scope: !2820)
!2837 = !DILocation(line: 1110, column: 2, scope: !2820)
!2838 = !DILocation(line: 1110, column: 11, scope: !2820)
!2839 = !DILocation(line: 1110, column: 20, scope: !2820)
!2840 = !DILocation(line: 1110, column: 26, scope: !2820)
!2841 = !DILocation(line: 1111, column: 2, scope: !2820)
!2842 = !DILocation(line: 1111, column: 11, scope: !2820)
!2843 = !DILocation(line: 1111, column: 23, scope: !2820)
!2844 = !DILocation(line: 1111, column: 32, scope: !2820)
!2845 = !DILocation(line: 1111, column: 30, scope: !2820)
!2846 = !DILocation(line: 1111, column: 41, scope: !2820)
!2847 = !DILocation(line: 1111, column: 50, scope: !2820)
!2848 = !DILocation(line: 1112, column: 2, scope: !2820)
!2849 = !DILocation(line: 1112, column: 11, scope: !2820)
!2850 = !DILocation(line: 1112, column: 23, scope: !2820)
!2851 = !DILocation(line: 1112, column: 32, scope: !2820)
!2852 = !DILocation(line: 1112, column: 30, scope: !2820)
!2853 = !DILocation(line: 1112, column: 41, scope: !2820)
!2854 = !DILocation(line: 1112, column: 39, scope: !2820)
!2855 = !DILocation(line: 1113, column: 2, scope: !2820)
!2856 = !DILocation(line: 1113, column: 11, scope: !2820)
!2857 = !DILocation(line: 1119, column: 31, scope: !2820)
!2858 = !DILocation(line: 1119, column: 36, scope: !2820)
!2859 = !DILocation(line: 1119, column: 2, scope: !2820)
!2860 = !DILocation(line: 1121, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 1121, column: 2)
!2862 = !DILocation(line: 1121, column: 6, scope: !2861)
!2863 = !DILocation(line: 1121, column: 11, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2861, file: !2, line: 1121, column: 2)
!2865 = !DILocation(line: 1121, column: 13, scope: !2864)
!2866 = !DILocation(line: 1121, column: 12, scope: !2864)
!2867 = !DILocation(line: 1121, column: 2, scope: !2861)
!2868 = !DILocation(line: 1122, column: 20, scope: !2864)
!2869 = !DILocation(line: 1122, column: 26, scope: !2864)
!2870 = !DILocation(line: 1122, column: 33, scope: !2864)
!2871 = !DILocation(line: 1122, column: 39, scope: !2864)
!2872 = !DILocation(line: 1122, column: 45, scope: !2864)
!2873 = !DILocation(line: 1122, column: 52, scope: !2864)
!2874 = !DILocation(line: 1122, column: 38, scope: !2864)
!2875 = !DILocation(line: 1122, column: 36, scope: !2864)
!2876 = !DILocation(line: 1122, column: 3, scope: !2864)
!2877 = !DILocation(line: 1122, column: 8, scope: !2864)
!2878 = !DILocation(line: 1122, column: 15, scope: !2864)
!2879 = !DILocation(line: 1122, column: 18, scope: !2864)
!2880 = !DILocation(line: 1121, column: 25, scope: !2864)
!2881 = !DILocation(line: 1121, column: 2, scope: !2864)
!2882 = distinct !{!2882, !2867, !2883, !413}
!2883 = !DILocation(line: 1122, column: 53, scope: !2861)
!2884 = !DILocation(line: 1124, column: 6, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 1124, column: 6)
!2886 = !DILocation(line: 1124, column: 16, scope: !2885)
!2887 = !DILocation(line: 1124, column: 13, scope: !2885)
!2888 = !DILocation(line: 1124, column: 6, scope: !2820)
!2889 = !DILocation(line: 1125, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 1125, column: 7)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !2, line: 1124, column: 24)
!2892 = !DILocation(line: 1125, column: 19, scope: !2890)
!2893 = !DILocation(line: 1125, column: 17, scope: !2890)
!2894 = !DILocation(line: 1125, column: 7, scope: !2891)
!2895 = !DILocation(line: 1126, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !2, line: 1126, column: 8)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 1125, column: 27)
!2898 = !DILocation(line: 1126, column: 15, scope: !2896)
!2899 = !DILocation(line: 1126, column: 8, scope: !2897)
!2900 = !DILocation(line: 1127, column: 11, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !2, line: 1127, column: 5)
!2902 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 1126, column: 25)
!2903 = !DILocation(line: 1127, column: 10, scope: !2901)
!2904 = !DILocation(line: 1127, column: 9, scope: !2901)
!2905 = !DILocation(line: 1127, column: 22, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !2, line: 1127, column: 5)
!2907 = !DILocation(line: 1127, column: 24, scope: !2906)
!2908 = !DILocation(line: 1127, column: 23, scope: !2906)
!2909 = !DILocation(line: 1127, column: 5, scope: !2901)
!2910 = !DILocation(line: 1128, column: 23, scope: !2906)
!2911 = !DILocation(line: 1128, column: 29, scope: !2906)
!2912 = !DILocation(line: 1128, column: 36, scope: !2906)
!2913 = !DILocation(line: 1128, column: 6, scope: !2906)
!2914 = !DILocation(line: 1128, column: 11, scope: !2906)
!2915 = !DILocation(line: 1128, column: 18, scope: !2906)
!2916 = !DILocation(line: 1128, column: 21, scope: !2906)
!2917 = !DILocation(line: 1127, column: 36, scope: !2906)
!2918 = !DILocation(line: 1127, column: 5, scope: !2906)
!2919 = distinct !{!2919, !2909, !2920, !413}
!2920 = !DILocation(line: 1128, column: 37, scope: !2901)
!2921 = !DILocation(line: 1129, column: 4, scope: !2902)
!2922 = !DILocation(line: 1130, column: 25, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2896, file: !2, line: 1129, column: 11)
!2924 = !DILocation(line: 1130, column: 5, scope: !2923)
!2925 = !DILocation(line: 1130, column: 10, scope: !2923)
!2926 = !DILocation(line: 1130, column: 23, scope: !2923)
!2927 = !DILocation(line: 1132, column: 3, scope: !2897)
!2928 = !DILocation(line: 1133, column: 8, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !2, line: 1133, column: 8)
!2930 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 1132, column: 10)
!2931 = !DILocation(line: 1133, column: 14, scope: !2929)
!2932 = !DILocation(line: 1133, column: 8, scope: !2930)
!2933 = !DILocation(line: 1134, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !2, line: 1134, column: 5)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 1133, column: 24)
!2936 = !DILocation(line: 1134, column: 10, scope: !2934)
!2937 = !DILocation(line: 1134, column: 9, scope: !2934)
!2938 = !DILocation(line: 1134, column: 22, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !2, line: 1134, column: 5)
!2940 = !DILocation(line: 1134, column: 24, scope: !2939)
!2941 = !DILocation(line: 1134, column: 23, scope: !2939)
!2942 = !DILocation(line: 1134, column: 5, scope: !2934)
!2943 = !DILocation(line: 1135, column: 24, scope: !2939)
!2944 = !DILocation(line: 1135, column: 30, scope: !2939)
!2945 = !DILocation(line: 1135, column: 37, scope: !2939)
!2946 = !DILocation(line: 1135, column: 23, scope: !2939)
!2947 = !DILocation(line: 1135, column: 6, scope: !2939)
!2948 = !DILocation(line: 1135, column: 11, scope: !2939)
!2949 = !DILocation(line: 1135, column: 18, scope: !2939)
!2950 = !DILocation(line: 1135, column: 21, scope: !2939)
!2951 = !DILocation(line: 1134, column: 36, scope: !2939)
!2952 = !DILocation(line: 1134, column: 5, scope: !2939)
!2953 = distinct !{!2953, !2942, !2954, !413}
!2954 = !DILocation(line: 1135, column: 38, scope: !2934)
!2955 = !DILocation(line: 1136, column: 4, scope: !2935)
!2956 = !DILocation(line: 1137, column: 25, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 1136, column: 11)
!2958 = !DILocation(line: 1137, column: 5, scope: !2957)
!2959 = !DILocation(line: 1137, column: 10, scope: !2957)
!2960 = !DILocation(line: 1137, column: 23, scope: !2957)
!2961 = !DILocation(line: 1140, column: 2, scope: !2891)
!2962 = !DILocation(line: 1142, column: 18, scope: !2820)
!2963 = !DILocation(line: 1142, column: 24, scope: !2820)
!2964 = !DILocation(line: 1142, column: 33, scope: !2820)
!2965 = !DILocation(line: 1142, column: 37, scope: !2820)
!2966 = !DILocation(line: 1142, column: 43, scope: !2820)
!2967 = !DILocation(line: 1142, column: 36, scope: !2820)
!2968 = !DILocation(line: 0, scope: !2820)
!2969 = !DILocation(line: 1142, column: 2, scope: !2820)
!2970 = !DILocation(line: 1142, column: 7, scope: !2820)
!2971 = !DILocation(line: 1142, column: 16, scope: !2820)
!2972 = !DILocation(line: 1143, column: 1, scope: !2820)
!2973 = distinct !DISubprogram(name: "hwloc_bitmap_xor", scope: !2, file: !2, line: 1145, type: !2520, scopeLine: 1146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2988}
!2975 = !DILocalVariable(name: "res", arg: 1, scope: !2973, file: !2, line: 1145, type: !98)
!2976 = !DILocalVariable(name: "set1", arg: 2, scope: !2973, file: !2, line: 1145, type: !203)
!2977 = !DILocalVariable(name: "set2", arg: 3, scope: !2973, file: !2, line: 1145, type: !203)
!2978 = !DILocalVariable(name: "count1", scope: !2973, file: !2, line: 1148, type: !84)
!2979 = !DILocalVariable(name: "count2", scope: !2973, file: !2, line: 1149, type: !84)
!2980 = !DILocalVariable(name: "max_count", scope: !2973, file: !2, line: 1150, type: !84)
!2981 = !DILocalVariable(name: "min_count", scope: !2973, file: !2, line: 1151, type: !84)
!2982 = !DILocalVariable(name: "i", scope: !2973, file: !2, line: 1152, type: !84)
!2983 = !DILocalVariable(name: "w2", scope: !2984, file: !2, line: 1165, type: !85)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 1164, column: 27)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !2, line: 1164, column: 7)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1163, column: 24)
!2987 = distinct !DILexicalBlock(scope: !2973, file: !2, line: 1163, column: 6)
!2988 = !DILocalVariable(name: "w1", scope: !2989, file: !2, line: 1169, type: !85)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !2, line: 1168, column: 10)
!2990 = !DILocation(line: 1145, column: 47, scope: !2973)
!2991 = !DILocation(line: 1145, column: 81, scope: !2973)
!2992 = !DILocation(line: 1145, column: 116, scope: !2973)
!2993 = !DILocation(line: 1148, column: 2, scope: !2973)
!2994 = !DILocation(line: 1148, column: 11, scope: !2973)
!2995 = !DILocation(line: 1148, column: 20, scope: !2973)
!2996 = !DILocation(line: 1148, column: 26, scope: !2973)
!2997 = !DILocation(line: 1149, column: 2, scope: !2973)
!2998 = !DILocation(line: 1149, column: 11, scope: !2973)
!2999 = !DILocation(line: 1149, column: 20, scope: !2973)
!3000 = !DILocation(line: 1149, column: 26, scope: !2973)
!3001 = !DILocation(line: 1150, column: 2, scope: !2973)
!3002 = !DILocation(line: 1150, column: 11, scope: !2973)
!3003 = !DILocation(line: 1150, column: 23, scope: !2973)
!3004 = !DILocation(line: 1150, column: 32, scope: !2973)
!3005 = !DILocation(line: 1150, column: 30, scope: !2973)
!3006 = !DILocation(line: 1150, column: 41, scope: !2973)
!3007 = !DILocation(line: 1150, column: 50, scope: !2973)
!3008 = !DILocation(line: 1151, column: 2, scope: !2973)
!3009 = !DILocation(line: 1151, column: 11, scope: !2973)
!3010 = !DILocation(line: 1151, column: 23, scope: !2973)
!3011 = !DILocation(line: 1151, column: 32, scope: !2973)
!3012 = !DILocation(line: 1151, column: 30, scope: !2973)
!3013 = !DILocation(line: 1151, column: 41, scope: !2973)
!3014 = !DILocation(line: 1151, column: 39, scope: !2973)
!3015 = !DILocation(line: 1152, column: 2, scope: !2973)
!3016 = !DILocation(line: 1152, column: 11, scope: !2973)
!3017 = !DILocation(line: 1158, column: 31, scope: !2973)
!3018 = !DILocation(line: 1158, column: 36, scope: !2973)
!3019 = !DILocation(line: 1158, column: 2, scope: !2973)
!3020 = !DILocation(line: 1160, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2973, file: !2, line: 1160, column: 2)
!3022 = !DILocation(line: 1160, column: 6, scope: !3021)
!3023 = !DILocation(line: 1160, column: 11, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3021, file: !2, line: 1160, column: 2)
!3025 = !DILocation(line: 1160, column: 13, scope: !3024)
!3026 = !DILocation(line: 1160, column: 12, scope: !3024)
!3027 = !DILocation(line: 1160, column: 2, scope: !3021)
!3028 = !DILocation(line: 1161, column: 20, scope: !3024)
!3029 = !DILocation(line: 1161, column: 26, scope: !3024)
!3030 = !DILocation(line: 1161, column: 33, scope: !3024)
!3031 = !DILocation(line: 1161, column: 38, scope: !3024)
!3032 = !DILocation(line: 1161, column: 44, scope: !3024)
!3033 = !DILocation(line: 1161, column: 51, scope: !3024)
!3034 = !DILocation(line: 1161, column: 36, scope: !3024)
!3035 = !DILocation(line: 1161, column: 3, scope: !3024)
!3036 = !DILocation(line: 1161, column: 8, scope: !3024)
!3037 = !DILocation(line: 1161, column: 15, scope: !3024)
!3038 = !DILocation(line: 1161, column: 18, scope: !3024)
!3039 = !DILocation(line: 1160, column: 25, scope: !3024)
!3040 = !DILocation(line: 1160, column: 2, scope: !3024)
!3041 = distinct !{!3041, !3027, !3042, !413}
!3042 = !DILocation(line: 1161, column: 52, scope: !3021)
!3043 = !DILocation(line: 1163, column: 6, scope: !2987)
!3044 = !DILocation(line: 1163, column: 16, scope: !2987)
!3045 = !DILocation(line: 1163, column: 13, scope: !2987)
!3046 = !DILocation(line: 1163, column: 6, scope: !2973)
!3047 = !DILocation(line: 1164, column: 7, scope: !2985)
!3048 = !DILocation(line: 1164, column: 19, scope: !2985)
!3049 = !DILocation(line: 1164, column: 17, scope: !2985)
!3050 = !DILocation(line: 1164, column: 7, scope: !2986)
!3051 = !DILocation(line: 1165, column: 4, scope: !2984)
!3052 = !DILocation(line: 1165, column: 18, scope: !2984)
!3053 = !DILocation(line: 1165, column: 23, scope: !2984)
!3054 = !DILocation(line: 1165, column: 29, scope: !2984)
!3055 = !DILocation(line: 1166, column: 10, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2984, file: !2, line: 1166, column: 4)
!3057 = !DILocation(line: 1166, column: 9, scope: !3056)
!3058 = !DILocation(line: 1166, column: 8, scope: !3056)
!3059 = !DILocation(line: 1166, column: 21, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !2, line: 1166, column: 4)
!3061 = !DILocation(line: 1166, column: 23, scope: !3060)
!3062 = !DILocation(line: 1166, column: 22, scope: !3060)
!3063 = !DILocation(line: 1166, column: 4, scope: !3056)
!3064 = !DILocation(line: 1167, column: 22, scope: !3060)
!3065 = !DILocation(line: 1167, column: 28, scope: !3060)
!3066 = !DILocation(line: 1167, column: 35, scope: !3060)
!3067 = !DILocation(line: 1167, column: 40, scope: !3060)
!3068 = !DILocation(line: 1167, column: 38, scope: !3060)
!3069 = !DILocation(line: 1167, column: 5, scope: !3060)
!3070 = !DILocation(line: 1167, column: 10, scope: !3060)
!3071 = !DILocation(line: 1167, column: 17, scope: !3060)
!3072 = !DILocation(line: 1167, column: 20, scope: !3060)
!3073 = !DILocation(line: 1166, column: 35, scope: !3060)
!3074 = !DILocation(line: 1166, column: 4, scope: !3060)
!3075 = distinct !{!3075, !3063, !3076, !413}
!3076 = !DILocation(line: 1167, column: 40, scope: !3056)
!3077 = !DILocation(line: 1168, column: 3, scope: !2985)
!3078 = !DILocation(line: 1168, column: 3, scope: !2984)
!3079 = !DILocation(line: 1169, column: 4, scope: !2989)
!3080 = !DILocation(line: 1169, column: 18, scope: !2989)
!3081 = !DILocation(line: 1169, column: 23, scope: !2989)
!3082 = !DILocation(line: 1169, column: 29, scope: !2989)
!3083 = !DILocation(line: 1170, column: 10, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 1170, column: 4)
!3085 = !DILocation(line: 1170, column: 9, scope: !3084)
!3086 = !DILocation(line: 1170, column: 8, scope: !3084)
!3087 = !DILocation(line: 1170, column: 21, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !2, line: 1170, column: 4)
!3089 = !DILocation(line: 1170, column: 23, scope: !3088)
!3090 = !DILocation(line: 1170, column: 22, scope: !3088)
!3091 = !DILocation(line: 1170, column: 4, scope: !3084)
!3092 = !DILocation(line: 1171, column: 22, scope: !3088)
!3093 = !DILocation(line: 1171, column: 28, scope: !3088)
!3094 = !DILocation(line: 1171, column: 35, scope: !3088)
!3095 = !DILocation(line: 1171, column: 40, scope: !3088)
!3096 = !DILocation(line: 1171, column: 38, scope: !3088)
!3097 = !DILocation(line: 1171, column: 5, scope: !3088)
!3098 = !DILocation(line: 1171, column: 10, scope: !3088)
!3099 = !DILocation(line: 1171, column: 17, scope: !3088)
!3100 = !DILocation(line: 1171, column: 20, scope: !3088)
!3101 = !DILocation(line: 1170, column: 35, scope: !3088)
!3102 = !DILocation(line: 1170, column: 4, scope: !3088)
!3103 = distinct !{!3103, !3091, !3104, !413}
!3104 = !DILocation(line: 1171, column: 40, scope: !3084)
!3105 = !DILocation(line: 1172, column: 3, scope: !2985)
!3106 = !DILocation(line: 1173, column: 2, scope: !2986)
!3107 = !DILocation(line: 1175, column: 20, scope: !2973)
!3108 = !DILocation(line: 1175, column: 26, scope: !2973)
!3109 = !DILocation(line: 1175, column: 19, scope: !2973)
!3110 = !DILocation(line: 1175, column: 41, scope: !2973)
!3111 = !DILocation(line: 1175, column: 47, scope: !2973)
!3112 = !DILocation(line: 1175, column: 40, scope: !2973)
!3113 = !DILocation(line: 1175, column: 36, scope: !2973)
!3114 = !DILocation(line: 1175, column: 2, scope: !2973)
!3115 = !DILocation(line: 1175, column: 7, scope: !2973)
!3116 = !DILocation(line: 1175, column: 16, scope: !2973)
!3117 = !DILocation(line: 1176, column: 1, scope: !2973)
!3118 = distinct !DISubprogram(name: "hwloc_bitmap_first", scope: !2, file: !2, line: 1194, type: !2081, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3119)
!3119 = !{!3120, !3121, !3122}
!3120 = !DILocalVariable(name: "set", arg: 1, scope: !3118, file: !2, line: 1194, type: !203)
!3121 = !DILocalVariable(name: "i", scope: !3118, file: !2, line: 1196, type: !84)
!3122 = !DILocalVariable(name: "w", scope: !3123, file: !2, line: 1202, type: !85)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !2, line: 1200, column: 37)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !2, line: 1200, column: 2)
!3125 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 1200, column: 2)
!3126 = !DILocation(line: 1194, column: 54, scope: !3118)
!3127 = !DILocation(line: 1196, column: 2, scope: !3118)
!3128 = !DILocation(line: 1196, column: 11, scope: !3118)
!3129 = !DILocation(line: 1200, column: 7, scope: !3125)
!3130 = !DILocation(line: 1200, column: 6, scope: !3125)
!3131 = !DILocation(line: 1200, column: 11, scope: !3124)
!3132 = !DILocation(line: 1200, column: 13, scope: !3124)
!3133 = !DILocation(line: 1200, column: 18, scope: !3124)
!3134 = !DILocation(line: 1200, column: 12, scope: !3124)
!3135 = !DILocation(line: 1200, column: 2, scope: !3125)
!3136 = !DILocation(line: 1202, column: 3, scope: !3123)
!3137 = !DILocation(line: 1202, column: 17, scope: !3123)
!3138 = !DILocation(line: 1202, column: 21, scope: !3123)
!3139 = !DILocation(line: 1202, column: 26, scope: !3123)
!3140 = !DILocation(line: 1202, column: 33, scope: !3123)
!3141 = !DILocation(line: 1203, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3123, file: !2, line: 1203, column: 7)
!3143 = !DILocation(line: 1203, column: 7, scope: !3123)
!3144 = !DILocation(line: 1204, column: 11, scope: !3142)
!3145 = !DILocation(line: 1204, column: 25, scope: !3142)
!3146 = !DILocation(line: 1204, column: 51, scope: !3142)
!3147 = !DILocation(line: 1204, column: 50, scope: !3142)
!3148 = !DILocation(line: 1204, column: 29, scope: !3142)
!3149 = !DILocation(line: 1204, column: 4, scope: !3142)
!3150 = !DILocation(line: 1205, column: 2, scope: !3124)
!3151 = !DILocation(line: 1205, column: 2, scope: !3123)
!3152 = !DILocation(line: 1200, column: 33, scope: !3124)
!3153 = !DILocation(line: 1200, column: 2, scope: !3124)
!3154 = distinct !{!3154, !3135, !3155, !413}
!3155 = !DILocation(line: 1205, column: 2, scope: !3125)
!3156 = !DILocation(line: 1207, column: 6, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 1207, column: 6)
!3158 = !DILocation(line: 1207, column: 11, scope: !3157)
!3159 = !DILocation(line: 1207, column: 6, scope: !3118)
!3160 = !DILocation(line: 1208, column: 10, scope: !3157)
!3161 = !DILocation(line: 1208, column: 15, scope: !3157)
!3162 = !DILocation(line: 1208, column: 28, scope: !3157)
!3163 = !DILocation(line: 1208, column: 3, scope: !3157)
!3164 = !DILocation(line: 1210, column: 2, scope: !3118)
!3165 = !DILocation(line: 1211, column: 1, scope: !3118)
!3166 = distinct !DISubprogram(name: "hwloc_bitmap_last", scope: !2, file: !2, line: 1213, type: !2081, scopeLine: 1214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3167)
!3167 = !{!3168, !3169, !3170}
!3168 = !DILocalVariable(name: "set", arg: 1, scope: !3166, file: !2, line: 1213, type: !203)
!3169 = !DILocalVariable(name: "i", scope: !3166, file: !2, line: 1215, type: !81)
!3170 = !DILocalVariable(name: "w", scope: !3171, file: !2, line: 1224, type: !85)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !2, line: 1222, column: 40)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !2, line: 1222, column: 2)
!3173 = distinct !DILexicalBlock(scope: !3166, file: !2, line: 1222, column: 2)
!3174 = !DILocation(line: 1213, column: 53, scope: !3166)
!3175 = !DILocation(line: 1215, column: 2, scope: !3166)
!3176 = !DILocation(line: 1215, column: 6, scope: !3166)
!3177 = !DILocation(line: 1219, column: 6, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3166, file: !2, line: 1219, column: 6)
!3179 = !DILocation(line: 1219, column: 11, scope: !3178)
!3180 = !DILocation(line: 1219, column: 6, scope: !3166)
!3181 = !DILocation(line: 1220, column: 3, scope: !3178)
!3182 = !DILocation(line: 1222, column: 8, scope: !3173)
!3183 = !DILocation(line: 1222, column: 13, scope: !3173)
!3184 = !DILocation(line: 1222, column: 25, scope: !3173)
!3185 = !DILocation(line: 1222, column: 7, scope: !3173)
!3186 = !DILocation(line: 1222, column: 6, scope: !3173)
!3187 = !DILocation(line: 1222, column: 29, scope: !3172)
!3188 = !DILocation(line: 1222, column: 30, scope: !3172)
!3189 = !DILocation(line: 1222, column: 2, scope: !3173)
!3190 = !DILocation(line: 1224, column: 3, scope: !3171)
!3191 = !DILocation(line: 1224, column: 17, scope: !3171)
!3192 = !DILocation(line: 1224, column: 21, scope: !3171)
!3193 = !DILocation(line: 1224, column: 26, scope: !3171)
!3194 = !DILocation(line: 1224, column: 33, scope: !3171)
!3195 = !DILocation(line: 1225, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3171, file: !2, line: 1225, column: 7)
!3197 = !DILocation(line: 1225, column: 7, scope: !3171)
!3198 = !DILocation(line: 1226, column: 22, scope: !3196)
!3199 = !DILocation(line: 1226, column: 11, scope: !3196)
!3200 = !DILocation(line: 1226, column: 25, scope: !3196)
!3201 = !DILocation(line: 1226, column: 51, scope: !3196)
!3202 = !DILocation(line: 1226, column: 50, scope: !3196)
!3203 = !DILocation(line: 1226, column: 29, scope: !3196)
!3204 = !DILocation(line: 1226, column: 4, scope: !3196)
!3205 = !DILocation(line: 1227, column: 2, scope: !3172)
!3206 = !DILocation(line: 1227, column: 2, scope: !3171)
!3207 = !DILocation(line: 1222, column: 36, scope: !3172)
!3208 = !DILocation(line: 1222, column: 2, scope: !3172)
!3209 = distinct !{!3209, !3189, !3210, !413}
!3210 = !DILocation(line: 1227, column: 2, scope: !3173)
!3211 = !DILocation(line: 1229, column: 2, scope: !3166)
!3212 = !DILocation(line: 1230, column: 1, scope: !3166)
!3213 = distinct !DISubprogram(name: "hwloc_flsl_manual", scope: !3214, file: !3214, line: 237, type: !3215, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3217)
!3214 = !DIFile(filename: "include/private/misc.h", directory: "/local-ssd/hwloc-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy-build/aidengro/spack-stage-hwloc-1.11.13-a7onpjs4vpl3l4ydjzal6mddbdbq7fiy/spack-src", checksumkind: CSK_MD5, checksum: "294eafce9cad934c7f56f2e5e3c18773")
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!81, !85}
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "x", arg: 1, scope: !3213, file: !3214, line: 237, type: !85)
!3219 = !DILocalVariable(name: "i", scope: !3213, file: !3214, line: 239, type: !81)
!3220 = !DILocation(line: 237, column: 33, scope: !3213)
!3221 = !DILocation(line: 239, column: 2, scope: !3213)
!3222 = !DILocation(line: 239, column: 6, scope: !3213)
!3223 = !DILocation(line: 241, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3213, file: !3214, line: 241, column: 6)
!3225 = !DILocation(line: 241, column: 6, scope: !3213)
!3226 = !DILocation(line: 242, column: 3, scope: !3224)
!3227 = !DILocation(line: 244, column: 4, scope: !3213)
!3228 = !DILocation(line: 246, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3213, file: !3214, line: 246, column: 6)
!3230 = !DILocation(line: 246, column: 9, scope: !3229)
!3231 = !DILocation(line: 246, column: 6, scope: !3213)
!3232 = !DILocation(line: 247, column: 5, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3229, file: !3214, line: 246, column: 34)
!3234 = !DILocation(line: 248, column: 5, scope: !3233)
!3235 = !DILocation(line: 249, column: 2, scope: !3233)
!3236 = !DILocation(line: 251, column: 7, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3213, file: !3214, line: 251, column: 6)
!3238 = !DILocation(line: 251, column: 9, scope: !3237)
!3239 = !DILocation(line: 251, column: 6, scope: !3213)
!3240 = !DILocation(line: 252, column: 5, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !3214, line: 251, column: 25)
!3242 = !DILocation(line: 253, column: 5, scope: !3241)
!3243 = !DILocation(line: 254, column: 2, scope: !3241)
!3244 = !DILocation(line: 255, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3213, file: !3214, line: 255, column: 6)
!3246 = !DILocation(line: 255, column: 9, scope: !3245)
!3247 = !DILocation(line: 255, column: 6, scope: !3213)
!3248 = !DILocation(line: 256, column: 5, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !3214, line: 255, column: 20)
!3250 = !DILocation(line: 257, column: 5, scope: !3249)
!3251 = !DILocation(line: 258, column: 2, scope: !3249)
!3252 = !DILocation(line: 259, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3213, file: !3214, line: 259, column: 6)
!3254 = !DILocation(line: 259, column: 9, scope: !3253)
!3255 = !DILocation(line: 259, column: 6, scope: !3213)
!3256 = !DILocation(line: 260, column: 5, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !3214, line: 259, column: 18)
!3258 = !DILocation(line: 261, column: 5, scope: !3257)
!3259 = !DILocation(line: 262, column: 2, scope: !3257)
!3260 = !DILocation(line: 263, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3213, file: !3214, line: 263, column: 6)
!3262 = !DILocation(line: 263, column: 9, scope: !3261)
!3263 = !DILocation(line: 263, column: 6, scope: !3213)
!3264 = !DILocation(line: 264, column: 5, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !3214, line: 263, column: 17)
!3266 = !DILocation(line: 265, column: 5, scope: !3265)
!3267 = !DILocation(line: 266, column: 2, scope: !3265)
!3268 = !DILocation(line: 267, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3213, file: !3214, line: 267, column: 6)
!3270 = !DILocation(line: 267, column: 9, scope: !3269)
!3271 = !DILocation(line: 267, column: 6, scope: !3213)
!3272 = !DILocation(line: 268, column: 5, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3269, file: !3214, line: 267, column: 17)
!3274 = !DILocation(line: 269, column: 5, scope: !3273)
!3275 = !DILocation(line: 270, column: 2, scope: !3273)
!3276 = !DILocation(line: 272, column: 9, scope: !3213)
!3277 = !DILocation(line: 272, column: 2, scope: !3213)
!3278 = !DILocation(line: 273, column: 1, scope: !3213)
!3279 = distinct !DISubprogram(name: "hwloc_bitmap_singlify", scope: !2, file: !2, line: 1264, type: !185, scopeLine: 1265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3290, !3293}
!3281 = !DILocalVariable(name: "set", arg: 1, scope: !3279, file: !2, line: 1264, type: !98)
!3282 = !DILocalVariable(name: "i", scope: !3279, file: !2, line: 1266, type: !84)
!3283 = !DILocalVariable(name: "found", scope: !3279, file: !2, line: 1267, type: !81)
!3284 = !DILocalVariable(name: "w", scope: !3285, file: !2, line: 1277, type: !85)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 1275, column: 10)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !2, line: 1272, column: 7)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !2, line: 1271, column: 37)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !2, line: 1271, column: 2)
!3289 = distinct !DILexicalBlock(scope: !3279, file: !2, line: 1271, column: 2)
!3290 = !DILocalVariable(name: "_ffs", scope: !3291, file: !2, line: 1279, type: !81)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !2, line: 1278, column: 11)
!3292 = distinct !DILexicalBlock(scope: !3285, file: !2, line: 1278, column: 8)
!3293 = !DILocalVariable(name: "first", scope: !3294, file: !2, line: 1291, type: !84)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !2, line: 1289, column: 10)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !2, line: 1287, column: 7)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !2, line: 1286, column: 21)
!3297 = distinct !DILexicalBlock(scope: !3279, file: !2, line: 1286, column: 6)
!3298 = !DILocation(line: 1264, column: 52, scope: !3279)
!3299 = !DILocation(line: 1266, column: 2, scope: !3279)
!3300 = !DILocation(line: 1266, column: 11, scope: !3279)
!3301 = !DILocation(line: 1267, column: 2, scope: !3279)
!3302 = !DILocation(line: 1267, column: 6, scope: !3279)
!3303 = !DILocation(line: 1271, column: 7, scope: !3289)
!3304 = !DILocation(line: 1271, column: 6, scope: !3289)
!3305 = !DILocation(line: 1271, column: 11, scope: !3288)
!3306 = !DILocation(line: 1271, column: 13, scope: !3288)
!3307 = !DILocation(line: 1271, column: 18, scope: !3288)
!3308 = !DILocation(line: 1271, column: 12, scope: !3288)
!3309 = !DILocation(line: 1271, column: 2, scope: !3289)
!3310 = !DILocation(line: 1272, column: 7, scope: !3286)
!3311 = !DILocation(line: 1272, column: 7, scope: !3287)
!3312 = !DILocation(line: 1273, column: 4, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 1272, column: 14)
!3314 = !DILocation(line: 1273, column: 9, scope: !3313)
!3315 = !DILocation(line: 1273, column: 16, scope: !3313)
!3316 = !DILocation(line: 1273, column: 19, scope: !3313)
!3317 = !DILocation(line: 1274, column: 4, scope: !3313)
!3318 = !DILocation(line: 1277, column: 4, scope: !3285)
!3319 = !DILocation(line: 1277, column: 18, scope: !3285)
!3320 = !DILocation(line: 1277, column: 22, scope: !3285)
!3321 = !DILocation(line: 1277, column: 27, scope: !3285)
!3322 = !DILocation(line: 1277, column: 34, scope: !3285)
!3323 = !DILocation(line: 1278, column: 8, scope: !3292)
!3324 = !DILocation(line: 1278, column: 8, scope: !3285)
!3325 = !DILocation(line: 1279, column: 5, scope: !3291)
!3326 = !DILocation(line: 1279, column: 9, scope: !3291)
!3327 = !DILocation(line: 1279, column: 16, scope: !3291)
!3328 = !DILocation(line: 1280, column: 22, scope: !3291)
!3329 = !DILocation(line: 1280, column: 5, scope: !3291)
!3330 = !DILocation(line: 1280, column: 10, scope: !3291)
!3331 = !DILocation(line: 1280, column: 17, scope: !3291)
!3332 = !DILocation(line: 1280, column: 20, scope: !3291)
!3333 = !DILocation(line: 1281, column: 11, scope: !3291)
!3334 = !DILocation(line: 1282, column: 4, scope: !3292)
!3335 = !DILocation(line: 1282, column: 4, scope: !3291)
!3336 = !DILocation(line: 1283, column: 3, scope: !3286)
!3337 = !DILocation(line: 1284, column: 2, scope: !3287)
!3338 = !DILocation(line: 1271, column: 33, scope: !3288)
!3339 = !DILocation(line: 1271, column: 2, scope: !3288)
!3340 = distinct !{!3340, !3309, !3341, !413}
!3341 = !DILocation(line: 1284, column: 2, scope: !3289)
!3342 = !DILocation(line: 1286, column: 6, scope: !3297)
!3343 = !DILocation(line: 1286, column: 11, scope: !3297)
!3344 = !DILocation(line: 1286, column: 6, scope: !3279)
!3345 = !DILocation(line: 1287, column: 7, scope: !3295)
!3346 = !DILocation(line: 1287, column: 7, scope: !3296)
!3347 = !DILocation(line: 1288, column: 4, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3295, file: !2, line: 1287, column: 14)
!3349 = !DILocation(line: 1288, column: 9, scope: !3348)
!3350 = !DILocation(line: 1288, column: 18, scope: !3348)
!3351 = !DILocation(line: 1289, column: 3, scope: !3348)
!3352 = !DILocation(line: 1291, column: 4, scope: !3294)
!3353 = !DILocation(line: 1291, column: 13, scope: !3294)
!3354 = !DILocation(line: 1291, column: 21, scope: !3294)
!3355 = !DILocation(line: 1291, column: 26, scope: !3294)
!3356 = !DILocation(line: 1291, column: 39, scope: !3294)
!3357 = !DILocation(line: 1292, column: 4, scope: !3294)
!3358 = !DILocation(line: 1292, column: 9, scope: !3294)
!3359 = !DILocation(line: 1292, column: 18, scope: !3294)
!3360 = !DILocation(line: 1293, column: 21, scope: !3294)
!3361 = !DILocation(line: 1293, column: 26, scope: !3294)
!3362 = !DILocation(line: 1293, column: 4, scope: !3294)
!3363 = !DILocation(line: 1294, column: 3, scope: !3295)
!3364 = !DILocation(line: 1295, column: 2, scope: !3296)
!3365 = !DILocation(line: 1296, column: 1, scope: !3279)
!3366 = distinct !DISubprogram(name: "hwloc_bitmap_compare_first", scope: !2, file: !2, line: 1298, type: !2153, scopeLine: 1299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3367)
!3367 = !{!3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3379, !3380, !3383, !3384, !3392}
!3368 = !DILocalVariable(name: "set1", arg: 1, scope: !3366, file: !2, line: 1298, type: !203)
!3369 = !DILocalVariable(name: "set2", arg: 2, scope: !3366, file: !2, line: 1298, type: !203)
!3370 = !DILocalVariable(name: "count1", scope: !3366, file: !2, line: 1300, type: !84)
!3371 = !DILocalVariable(name: "count2", scope: !3366, file: !2, line: 1301, type: !84)
!3372 = !DILocalVariable(name: "max_count", scope: !3366, file: !2, line: 1302, type: !84)
!3373 = !DILocalVariable(name: "min_count", scope: !3366, file: !2, line: 1303, type: !84)
!3374 = !DILocalVariable(name: "i", scope: !3366, file: !2, line: 1304, type: !84)
!3375 = !DILocalVariable(name: "w1", scope: !3376, file: !2, line: 1310, type: !85)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !2, line: 1309, column: 29)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !2, line: 1309, column: 2)
!3378 = distinct !DILexicalBlock(scope: !3366, file: !2, line: 1309, column: 2)
!3379 = !DILocalVariable(name: "w2", scope: !3376, file: !2, line: 1311, type: !85)
!3380 = !DILocalVariable(name: "_ffs1", scope: !3381, file: !2, line: 1313, type: !81)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !2, line: 1312, column: 17)
!3382 = distinct !DILexicalBlock(scope: !3376, file: !2, line: 1312, column: 7)
!3383 = !DILocalVariable(name: "_ffs2", scope: !3381, file: !2, line: 1314, type: !81)
!3384 = !DILocalVariable(name: "w2", scope: !3385, file: !2, line: 1326, type: !85)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !2, line: 1325, column: 36)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !2, line: 1325, column: 4)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !2, line: 1325, column: 4)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !2, line: 1324, column: 27)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !2, line: 1324, column: 7)
!3390 = distinct !DILexicalBlock(scope: !3391, file: !2, line: 1323, column: 24)
!3391 = distinct !DILexicalBlock(scope: !3366, file: !2, line: 1323, column: 6)
!3392 = !DILocalVariable(name: "w1", scope: !3393, file: !2, line: 1334, type: !85)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !2, line: 1333, column: 36)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !2, line: 1333, column: 4)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !2, line: 1333, column: 4)
!3396 = distinct !DILexicalBlock(scope: !3389, file: !2, line: 1332, column: 10)
!3397 = !DILocation(line: 1298, column: 62, scope: !3366)
!3398 = !DILocation(line: 1298, column: 98, scope: !3366)
!3399 = !DILocation(line: 1300, column: 2, scope: !3366)
!3400 = !DILocation(line: 1300, column: 11, scope: !3366)
!3401 = !DILocation(line: 1300, column: 20, scope: !3366)
!3402 = !DILocation(line: 1300, column: 26, scope: !3366)
!3403 = !DILocation(line: 1301, column: 2, scope: !3366)
!3404 = !DILocation(line: 1301, column: 11, scope: !3366)
!3405 = !DILocation(line: 1301, column: 20, scope: !3366)
!3406 = !DILocation(line: 1301, column: 26, scope: !3366)
!3407 = !DILocation(line: 1302, column: 2, scope: !3366)
!3408 = !DILocation(line: 1302, column: 11, scope: !3366)
!3409 = !DILocation(line: 1302, column: 23, scope: !3366)
!3410 = !DILocation(line: 1302, column: 32, scope: !3366)
!3411 = !DILocation(line: 1302, column: 30, scope: !3366)
!3412 = !DILocation(line: 1302, column: 41, scope: !3366)
!3413 = !DILocation(line: 1302, column: 50, scope: !3366)
!3414 = !DILocation(line: 1303, column: 2, scope: !3366)
!3415 = !DILocation(line: 1303, column: 11, scope: !3366)
!3416 = !DILocation(line: 1303, column: 23, scope: !3366)
!3417 = !DILocation(line: 1303, column: 32, scope: !3366)
!3418 = !DILocation(line: 1303, column: 30, scope: !3366)
!3419 = !DILocation(line: 1303, column: 41, scope: !3366)
!3420 = !DILocation(line: 1303, column: 39, scope: !3366)
!3421 = !DILocation(line: 1304, column: 2, scope: !3366)
!3422 = !DILocation(line: 1304, column: 11, scope: !3366)
!3423 = !DILocation(line: 1309, column: 7, scope: !3378)
!3424 = !DILocation(line: 1309, column: 6, scope: !3378)
!3425 = !DILocation(line: 1309, column: 11, scope: !3377)
!3426 = !DILocation(line: 1309, column: 13, scope: !3377)
!3427 = !DILocation(line: 1309, column: 12, scope: !3377)
!3428 = !DILocation(line: 1309, column: 2, scope: !3378)
!3429 = !DILocation(line: 1310, column: 3, scope: !3376)
!3430 = !DILocation(line: 1310, column: 17, scope: !3376)
!3431 = !DILocation(line: 1310, column: 22, scope: !3376)
!3432 = !DILocation(line: 1310, column: 28, scope: !3376)
!3433 = !DILocation(line: 1310, column: 35, scope: !3376)
!3434 = !DILocation(line: 1311, column: 3, scope: !3376)
!3435 = !DILocation(line: 1311, column: 17, scope: !3376)
!3436 = !DILocation(line: 1311, column: 22, scope: !3376)
!3437 = !DILocation(line: 1311, column: 28, scope: !3376)
!3438 = !DILocation(line: 1311, column: 35, scope: !3376)
!3439 = !DILocation(line: 1312, column: 7, scope: !3382)
!3440 = !DILocation(line: 1312, column: 10, scope: !3382)
!3441 = !DILocation(line: 1312, column: 13, scope: !3382)
!3442 = !DILocation(line: 1312, column: 7, scope: !3376)
!3443 = !DILocation(line: 1313, column: 4, scope: !3381)
!3444 = !DILocation(line: 1313, column: 8, scope: !3381)
!3445 = !DILocation(line: 1313, column: 16, scope: !3381)
!3446 = !DILocation(line: 1314, column: 4, scope: !3381)
!3447 = !DILocation(line: 1314, column: 8, scope: !3381)
!3448 = !DILocation(line: 1314, column: 16, scope: !3381)
!3449 = !DILocation(line: 1316, column: 8, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3381, file: !2, line: 1316, column: 8)
!3451 = !DILocation(line: 1316, column: 14, scope: !3450)
!3452 = !DILocation(line: 1316, column: 17, scope: !3450)
!3453 = !DILocation(line: 1316, column: 8, scope: !3381)
!3454 = !DILocation(line: 1317, column: 12, scope: !3450)
!3455 = !DILocation(line: 1317, column: 18, scope: !3450)
!3456 = !DILocation(line: 1317, column: 17, scope: !3450)
!3457 = !DILocation(line: 1317, column: 5, scope: !3450)
!3458 = !DILocation(line: 1319, column: 11, scope: !3381)
!3459 = !DILocation(line: 1319, column: 17, scope: !3381)
!3460 = !DILocation(line: 1319, column: 16, scope: !3381)
!3461 = !DILocation(line: 1319, column: 4, scope: !3381)
!3462 = !DILocation(line: 1320, column: 3, scope: !3382)
!3463 = !DILocation(line: 1321, column: 2, scope: !3377)
!3464 = !DILocation(line: 1321, column: 2, scope: !3376)
!3465 = !DILocation(line: 1309, column: 25, scope: !3377)
!3466 = !DILocation(line: 1309, column: 2, scope: !3377)
!3467 = distinct !{!3467, !3428, !3468, !413}
!3468 = !DILocation(line: 1321, column: 2, scope: !3378)
!3469 = !DILocation(line: 1323, column: 6, scope: !3391)
!3470 = !DILocation(line: 1323, column: 16, scope: !3391)
!3471 = !DILocation(line: 1323, column: 13, scope: !3391)
!3472 = !DILocation(line: 1323, column: 6, scope: !3366)
!3473 = !DILocation(line: 1324, column: 7, scope: !3389)
!3474 = !DILocation(line: 1324, column: 19, scope: !3389)
!3475 = !DILocation(line: 1324, column: 17, scope: !3389)
!3476 = !DILocation(line: 1324, column: 7, scope: !3390)
!3477 = !DILocation(line: 1325, column: 10, scope: !3387)
!3478 = !DILocation(line: 1325, column: 9, scope: !3387)
!3479 = !DILocation(line: 1325, column: 8, scope: !3387)
!3480 = !DILocation(line: 1325, column: 21, scope: !3386)
!3481 = !DILocation(line: 1325, column: 23, scope: !3386)
!3482 = !DILocation(line: 1325, column: 22, scope: !3386)
!3483 = !DILocation(line: 1325, column: 4, scope: !3387)
!3484 = !DILocation(line: 1326, column: 5, scope: !3385)
!3485 = !DILocation(line: 1326, column: 19, scope: !3385)
!3486 = !DILocation(line: 1326, column: 24, scope: !3385)
!3487 = !DILocation(line: 1326, column: 30, scope: !3385)
!3488 = !DILocation(line: 1326, column: 37, scope: !3385)
!3489 = !DILocation(line: 1327, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3385, file: !2, line: 1327, column: 9)
!3491 = !DILocation(line: 1327, column: 15, scope: !3490)
!3492 = !DILocation(line: 1327, column: 9, scope: !3385)
!3493 = !DILocation(line: 1328, column: 16, scope: !3490)
!3494 = !DILocation(line: 1328, column: 19, scope: !3490)
!3495 = !DILocation(line: 1328, column: 14, scope: !3490)
!3496 = !DILocation(line: 1328, column: 13, scope: !3490)
!3497 = !DILocation(line: 1328, column: 6, scope: !3490)
!3498 = !DILocation(line: 1329, column: 14, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3490, file: !2, line: 1329, column: 14)
!3500 = !DILocation(line: 1329, column: 14, scope: !3490)
!3501 = !DILocation(line: 1330, column: 6, scope: !3499)
!3502 = !DILocation(line: 1331, column: 4, scope: !3386)
!3503 = !DILocation(line: 1331, column: 4, scope: !3385)
!3504 = !DILocation(line: 1325, column: 32, scope: !3386)
!3505 = !DILocation(line: 1325, column: 4, scope: !3386)
!3506 = distinct !{!3506, !3483, !3507, !413}
!3507 = !DILocation(line: 1331, column: 4, scope: !3387)
!3508 = !DILocation(line: 1332, column: 3, scope: !3388)
!3509 = !DILocation(line: 1333, column: 10, scope: !3395)
!3510 = !DILocation(line: 1333, column: 9, scope: !3395)
!3511 = !DILocation(line: 1333, column: 8, scope: !3395)
!3512 = !DILocation(line: 1333, column: 21, scope: !3394)
!3513 = !DILocation(line: 1333, column: 23, scope: !3394)
!3514 = !DILocation(line: 1333, column: 22, scope: !3394)
!3515 = !DILocation(line: 1333, column: 4, scope: !3395)
!3516 = !DILocation(line: 1334, column: 5, scope: !3393)
!3517 = !DILocation(line: 1334, column: 19, scope: !3393)
!3518 = !DILocation(line: 1334, column: 24, scope: !3393)
!3519 = !DILocation(line: 1334, column: 30, scope: !3393)
!3520 = !DILocation(line: 1334, column: 37, scope: !3393)
!3521 = !DILocation(line: 1335, column: 9, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3393, file: !2, line: 1335, column: 9)
!3523 = !DILocation(line: 1335, column: 15, scope: !3522)
!3524 = !DILocation(line: 1335, column: 9, scope: !3393)
!3525 = !DILocation(line: 1336, column: 15, scope: !3522)
!3526 = !DILocation(line: 1336, column: 18, scope: !3522)
!3527 = !DILocation(line: 1336, column: 13, scope: !3522)
!3528 = !DILocation(line: 1336, column: 6, scope: !3522)
!3529 = !DILocation(line: 1337, column: 14, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3522, file: !2, line: 1337, column: 14)
!3531 = !DILocation(line: 1337, column: 14, scope: !3522)
!3532 = !DILocation(line: 1338, column: 6, scope: !3530)
!3533 = !DILocation(line: 1339, column: 4, scope: !3394)
!3534 = !DILocation(line: 1339, column: 4, scope: !3393)
!3535 = !DILocation(line: 1333, column: 32, scope: !3394)
!3536 = !DILocation(line: 1333, column: 4, scope: !3394)
!3537 = distinct !{!3537, !3515, !3538, !413}
!3538 = !DILocation(line: 1339, column: 4, scope: !3395)
!3539 = !DILocation(line: 1341, column: 2, scope: !3390)
!3540 = !DILocation(line: 1343, column: 11, scope: !3366)
!3541 = !DILocation(line: 1343, column: 17, scope: !3366)
!3542 = !DILocation(line: 1343, column: 10, scope: !3366)
!3543 = !DILocation(line: 1343, column: 9, scope: !3366)
!3544 = !DILocation(line: 1343, column: 30, scope: !3366)
!3545 = !DILocation(line: 1343, column: 36, scope: !3366)
!3546 = !DILocation(line: 1343, column: 29, scope: !3366)
!3547 = !DILocation(line: 1343, column: 28, scope: !3366)
!3548 = !DILocation(line: 1343, column: 26, scope: !3366)
!3549 = !DILocation(line: 1343, column: 2, scope: !3366)
!3550 = !DILocation(line: 1344, column: 1, scope: !3366)
!3551 = distinct !DISubprogram(name: "hwloc_bitmap_compare", scope: !2, file: !2, line: 1346, type: !2153, scopeLine: 1347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3565, !3569, !3571, !3575, !3579}
!3553 = !DILocalVariable(name: "set1", arg: 1, scope: !3551, file: !2, line: 1346, type: !203)
!3554 = !DILocalVariable(name: "set2", arg: 2, scope: !3551, file: !2, line: 1346, type: !203)
!3555 = !DILocalVariable(name: "count1", scope: !3551, file: !2, line: 1348, type: !84)
!3556 = !DILocalVariable(name: "count2", scope: !3551, file: !2, line: 1349, type: !84)
!3557 = !DILocalVariable(name: "max_count", scope: !3551, file: !2, line: 1350, type: !84)
!3558 = !DILocalVariable(name: "min_count", scope: !3551, file: !2, line: 1351, type: !84)
!3559 = !DILocalVariable(name: "i", scope: !3551, file: !2, line: 1352, type: !81)
!3560 = !DILocalVariable(name: "val1", scope: !3561, file: !2, line: 1362, type: !85)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !2, line: 1361, column: 27)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !2, line: 1361, column: 7)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !2, line: 1360, column: 24)
!3564 = distinct !DILexicalBlock(scope: !3551, file: !2, line: 1360, column: 6)
!3565 = !DILocalVariable(name: "val2", scope: !3566, file: !2, line: 1364, type: !85)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !2, line: 1363, column: 51)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !2, line: 1363, column: 4)
!3568 = distinct !DILexicalBlock(scope: !3561, file: !2, line: 1363, column: 4)
!3569 = !DILocalVariable(name: "val2", scope: !3570, file: !2, line: 1370, type: !85)
!3570 = distinct !DILexicalBlock(scope: !3562, file: !2, line: 1369, column: 10)
!3571 = !DILocalVariable(name: "val1", scope: !3572, file: !2, line: 1372, type: !85)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !2, line: 1371, column: 51)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !2, line: 1371, column: 4)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !2, line: 1371, column: 4)
!3575 = !DILocalVariable(name: "val1", scope: !3576, file: !2, line: 1381, type: !85)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !2, line: 1380, column: 32)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !2, line: 1380, column: 2)
!3578 = distinct !DILexicalBlock(scope: !3551, file: !2, line: 1380, column: 2)
!3579 = !DILocalVariable(name: "val2", scope: !3576, file: !2, line: 1382, type: !85)
!3580 = !DILocation(line: 1346, column: 56, scope: !3551)
!3581 = !DILocation(line: 1346, column: 92, scope: !3551)
!3582 = !DILocation(line: 1348, column: 2, scope: !3551)
!3583 = !DILocation(line: 1348, column: 11, scope: !3551)
!3584 = !DILocation(line: 1348, column: 20, scope: !3551)
!3585 = !DILocation(line: 1348, column: 26, scope: !3551)
!3586 = !DILocation(line: 1349, column: 2, scope: !3551)
!3587 = !DILocation(line: 1349, column: 11, scope: !3551)
!3588 = !DILocation(line: 1349, column: 20, scope: !3551)
!3589 = !DILocation(line: 1349, column: 26, scope: !3551)
!3590 = !DILocation(line: 1350, column: 2, scope: !3551)
!3591 = !DILocation(line: 1350, column: 11, scope: !3551)
!3592 = !DILocation(line: 1350, column: 23, scope: !3551)
!3593 = !DILocation(line: 1350, column: 32, scope: !3551)
!3594 = !DILocation(line: 1350, column: 30, scope: !3551)
!3595 = !DILocation(line: 1350, column: 41, scope: !3551)
!3596 = !DILocation(line: 1350, column: 50, scope: !3551)
!3597 = !DILocation(line: 1351, column: 2, scope: !3551)
!3598 = !DILocation(line: 1351, column: 11, scope: !3551)
!3599 = !DILocation(line: 1351, column: 23, scope: !3551)
!3600 = !DILocation(line: 1351, column: 32, scope: !3551)
!3601 = !DILocation(line: 1351, column: 30, scope: !3551)
!3602 = !DILocation(line: 1351, column: 41, scope: !3551)
!3603 = !DILocation(line: 1351, column: 39, scope: !3551)
!3604 = !DILocation(line: 1352, column: 2, scope: !3551)
!3605 = !DILocation(line: 1352, column: 6, scope: !3551)
!3606 = !DILocation(line: 1357, column: 8, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3551, file: !2, line: 1357, column: 6)
!3608 = !DILocation(line: 1357, column: 14, scope: !3607)
!3609 = !DILocation(line: 1357, column: 7, scope: !3607)
!3610 = !DILocation(line: 1357, column: 29, scope: !3607)
!3611 = !DILocation(line: 1357, column: 35, scope: !3607)
!3612 = !DILocation(line: 1357, column: 28, scope: !3607)
!3613 = !DILocation(line: 1357, column: 24, scope: !3607)
!3614 = !DILocation(line: 1357, column: 6, scope: !3551)
!3615 = !DILocation(line: 1358, column: 12, scope: !3607)
!3616 = !DILocation(line: 1358, column: 18, scope: !3607)
!3617 = !DILocation(line: 1358, column: 11, scope: !3607)
!3618 = !DILocation(line: 1358, column: 10, scope: !3607)
!3619 = !DILocation(line: 1358, column: 31, scope: !3607)
!3620 = !DILocation(line: 1358, column: 37, scope: !3607)
!3621 = !DILocation(line: 1358, column: 30, scope: !3607)
!3622 = !DILocation(line: 1358, column: 29, scope: !3607)
!3623 = !DILocation(line: 1358, column: 27, scope: !3607)
!3624 = !DILocation(line: 1358, column: 3, scope: !3607)
!3625 = !DILocation(line: 1360, column: 6, scope: !3564)
!3626 = !DILocation(line: 1360, column: 16, scope: !3564)
!3627 = !DILocation(line: 1360, column: 13, scope: !3564)
!3628 = !DILocation(line: 1360, column: 6, scope: !3551)
!3629 = !DILocation(line: 1361, column: 7, scope: !3562)
!3630 = !DILocation(line: 1361, column: 19, scope: !3562)
!3631 = !DILocation(line: 1361, column: 17, scope: !3562)
!3632 = !DILocation(line: 1361, column: 7, scope: !3563)
!3633 = !DILocation(line: 1362, column: 4, scope: !3561)
!3634 = !DILocation(line: 1362, column: 18, scope: !3561)
!3635 = !DILocation(line: 1362, column: 25, scope: !3561)
!3636 = !DILocation(line: 1362, column: 31, scope: !3561)
!3637 = !DILocation(line: 1363, column: 10, scope: !3568)
!3638 = !DILocation(line: 1363, column: 19, scope: !3568)
!3639 = !DILocation(line: 1363, column: 9, scope: !3568)
!3640 = !DILocation(line: 1363, column: 8, scope: !3568)
!3641 = !DILocation(line: 1363, column: 23, scope: !3567)
!3642 = !DILocation(line: 1363, column: 35, scope: !3567)
!3643 = !DILocation(line: 1363, column: 24, scope: !3567)
!3644 = !DILocation(line: 1363, column: 4, scope: !3568)
!3645 = !DILocation(line: 1364, column: 5, scope: !3566)
!3646 = !DILocation(line: 1364, column: 19, scope: !3566)
!3647 = !DILocation(line: 1364, column: 26, scope: !3566)
!3648 = !DILocation(line: 1364, column: 32, scope: !3566)
!3649 = !DILocation(line: 1364, column: 39, scope: !3566)
!3650 = !DILocation(line: 1365, column: 9, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3566, file: !2, line: 1365, column: 9)
!3652 = !DILocation(line: 1365, column: 17, scope: !3651)
!3653 = !DILocation(line: 1365, column: 14, scope: !3651)
!3654 = !DILocation(line: 1365, column: 9, scope: !3566)
!3655 = !DILocation(line: 1366, column: 6, scope: !3651)
!3656 = !DILocation(line: 1367, column: 12, scope: !3566)
!3657 = !DILocation(line: 1367, column: 19, scope: !3566)
!3658 = !DILocation(line: 1367, column: 17, scope: !3566)
!3659 = !DILocation(line: 1367, column: 5, scope: !3566)
!3660 = !DILocation(line: 1368, column: 4, scope: !3567)
!3661 = !DILocation(line: 1363, column: 47, scope: !3567)
!3662 = !DILocation(line: 1363, column: 4, scope: !3567)
!3663 = distinct !{!3663, !3644, !3664, !413}
!3664 = !DILocation(line: 1368, column: 4, scope: !3568)
!3665 = !DILocation(line: 1369, column: 3, scope: !3562)
!3666 = !DILocation(line: 1369, column: 3, scope: !3561)
!3667 = !DILocation(line: 1370, column: 4, scope: !3570)
!3668 = !DILocation(line: 1370, column: 18, scope: !3570)
!3669 = !DILocation(line: 1370, column: 25, scope: !3570)
!3670 = !DILocation(line: 1370, column: 31, scope: !3570)
!3671 = !DILocation(line: 1371, column: 10, scope: !3574)
!3672 = !DILocation(line: 1371, column: 19, scope: !3574)
!3673 = !DILocation(line: 1371, column: 9, scope: !3574)
!3674 = !DILocation(line: 1371, column: 8, scope: !3574)
!3675 = !DILocation(line: 1371, column: 23, scope: !3573)
!3676 = !DILocation(line: 1371, column: 35, scope: !3573)
!3677 = !DILocation(line: 1371, column: 24, scope: !3573)
!3678 = !DILocation(line: 1371, column: 4, scope: !3574)
!3679 = !DILocation(line: 1372, column: 5, scope: !3572)
!3680 = !DILocation(line: 1372, column: 19, scope: !3572)
!3681 = !DILocation(line: 1372, column: 26, scope: !3572)
!3682 = !DILocation(line: 1372, column: 32, scope: !3572)
!3683 = !DILocation(line: 1372, column: 39, scope: !3572)
!3684 = !DILocation(line: 1373, column: 9, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3572, file: !2, line: 1373, column: 9)
!3686 = !DILocation(line: 1373, column: 17, scope: !3685)
!3687 = !DILocation(line: 1373, column: 14, scope: !3685)
!3688 = !DILocation(line: 1373, column: 9, scope: !3572)
!3689 = !DILocation(line: 1374, column: 6, scope: !3685)
!3690 = !DILocation(line: 1375, column: 12, scope: !3572)
!3691 = !DILocation(line: 1375, column: 19, scope: !3572)
!3692 = !DILocation(line: 1375, column: 17, scope: !3572)
!3693 = !DILocation(line: 1375, column: 5, scope: !3572)
!3694 = !DILocation(line: 1376, column: 4, scope: !3573)
!3695 = !DILocation(line: 1371, column: 47, scope: !3573)
!3696 = !DILocation(line: 1371, column: 4, scope: !3573)
!3697 = distinct !{!3697, !3678, !3698, !413}
!3698 = !DILocation(line: 1376, column: 4, scope: !3574)
!3699 = !DILocation(line: 1377, column: 3, scope: !3562)
!3700 = !DILocation(line: 1378, column: 2, scope: !3563)
!3701 = !DILocation(line: 1380, column: 8, scope: !3578)
!3702 = !DILocation(line: 1380, column: 17, scope: !3578)
!3703 = !DILocation(line: 1380, column: 7, scope: !3578)
!3704 = !DILocation(line: 1380, column: 6, scope: !3578)
!3705 = !DILocation(line: 1380, column: 21, scope: !3577)
!3706 = !DILocation(line: 1380, column: 22, scope: !3577)
!3707 = !DILocation(line: 1380, column: 2, scope: !3578)
!3708 = !DILocation(line: 1381, column: 3, scope: !3576)
!3709 = !DILocation(line: 1381, column: 17, scope: !3576)
!3710 = !DILocation(line: 1381, column: 24, scope: !3576)
!3711 = !DILocation(line: 1381, column: 30, scope: !3576)
!3712 = !DILocation(line: 1381, column: 37, scope: !3576)
!3713 = !DILocation(line: 1382, column: 3, scope: !3576)
!3714 = !DILocation(line: 1382, column: 17, scope: !3576)
!3715 = !DILocation(line: 1382, column: 24, scope: !3576)
!3716 = !DILocation(line: 1382, column: 30, scope: !3576)
!3717 = !DILocation(line: 1382, column: 37, scope: !3576)
!3718 = !DILocation(line: 1383, column: 7, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3576, file: !2, line: 1383, column: 7)
!3720 = !DILocation(line: 1383, column: 15, scope: !3719)
!3721 = !DILocation(line: 1383, column: 12, scope: !3719)
!3722 = !DILocation(line: 1383, column: 7, scope: !3576)
!3723 = !DILocation(line: 1384, column: 4, scope: !3719)
!3724 = !DILocation(line: 1385, column: 10, scope: !3576)
!3725 = !DILocation(line: 1385, column: 17, scope: !3576)
!3726 = !DILocation(line: 1385, column: 15, scope: !3576)
!3727 = !DILocation(line: 1385, column: 3, scope: !3576)
!3728 = !DILocation(line: 1386, column: 2, scope: !3577)
!3729 = !DILocation(line: 1380, column: 28, scope: !3577)
!3730 = !DILocation(line: 1380, column: 2, scope: !3577)
!3731 = distinct !{!3731, !3707, !3732, !413}
!3732 = !DILocation(line: 1386, column: 2, scope: !3578)
!3733 = !DILocation(line: 1388, column: 2, scope: !3551)
!3734 = !DILocation(line: 1389, column: 1, scope: !3551)
!3735 = distinct !DISubprogram(name: "hwloc_bitmap_weight", scope: !2, file: !2, line: 1391, type: !2081, scopeLine: 1392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3736)
!3736 = !{!3737, !3738, !3739}
!3737 = !DILocalVariable(name: "set", arg: 1, scope: !3735, file: !2, line: 1391, type: !203)
!3738 = !DILocalVariable(name: "weight", scope: !3735, file: !2, line: 1393, type: !81)
!3739 = !DILocalVariable(name: "i", scope: !3735, file: !2, line: 1394, type: !84)
!3740 = !DILocation(line: 1391, column: 55, scope: !3735)
!3741 = !DILocation(line: 1393, column: 2, scope: !3735)
!3742 = !DILocation(line: 1393, column: 6, scope: !3735)
!3743 = !DILocation(line: 1394, column: 2, scope: !3735)
!3744 = !DILocation(line: 1394, column: 11, scope: !3735)
!3745 = !DILocation(line: 1398, column: 6, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3735, file: !2, line: 1398, column: 6)
!3747 = !DILocation(line: 1398, column: 11, scope: !3746)
!3748 = !DILocation(line: 1398, column: 6, scope: !3735)
!3749 = !DILocation(line: 1399, column: 3, scope: !3746)
!3750 = !DILocation(line: 1401, column: 7, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3735, file: !2, line: 1401, column: 2)
!3752 = !DILocation(line: 1401, column: 6, scope: !3751)
!3753 = !DILocation(line: 1401, column: 11, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !2, line: 1401, column: 2)
!3755 = !DILocation(line: 1401, column: 13, scope: !3754)
!3756 = !DILocation(line: 1401, column: 18, scope: !3754)
!3757 = !DILocation(line: 1401, column: 12, scope: !3754)
!3758 = !DILocation(line: 1401, column: 2, scope: !3751)
!3759 = !DILocation(line: 1402, column: 31, scope: !3754)
!3760 = !DILocation(line: 1402, column: 36, scope: !3754)
!3761 = !DILocation(line: 1402, column: 43, scope: !3754)
!3762 = !DILocation(line: 1402, column: 13, scope: !3754)
!3763 = !DILocation(line: 1402, column: 10, scope: !3754)
!3764 = !DILocation(line: 1402, column: 3, scope: !3754)
!3765 = !DILocation(line: 1401, column: 33, scope: !3754)
!3766 = !DILocation(line: 1401, column: 2, scope: !3754)
!3767 = distinct !{!3767, !3758, !3768, !413}
!3768 = !DILocation(line: 1402, column: 45, scope: !3751)
!3769 = !DILocation(line: 1403, column: 9, scope: !3735)
!3770 = !DILocation(line: 1403, column: 2, scope: !3735)
!3771 = !DILocation(line: 1404, column: 1, scope: !3735)
!3772 = distinct !DISubprogram(name: "hwloc_weight_long", scope: !3214, file: !3214, line: 336, type: !3215, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3773)
!3773 = !{!3774}
!3774 = !DILocalVariable(name: "w", arg: 1, scope: !3772, file: !3214, line: 336, type: !85)
!3775 = !DILocation(line: 336, column: 33, scope: !3772)
!3776 = !DILocation(line: 350, column: 30, scope: !3772)
!3777 = !DILocation(line: 350, column: 9, scope: !3772)
!3778 = !DILocation(line: 350, column: 2, scope: !3772)
!3779 = distinct !DISubprogram(name: "hwloc_bitmap_compare_inclusion", scope: !2, file: !2, line: 1406, type: !2153, scopeLine: 1407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !3780)
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3792}
!3781 = !DILocalVariable(name: "set1", arg: 1, scope: !3779, file: !2, line: 1406, type: !203)
!3782 = !DILocalVariable(name: "set2", arg: 2, scope: !3779, file: !2, line: 1406, type: !203)
!3783 = !DILocalVariable(name: "max_count", scope: !3779, file: !2, line: 1408, type: !84)
!3784 = !DILocalVariable(name: "result", scope: !3779, file: !2, line: 1409, type: !81)
!3785 = !DILocalVariable(name: "empty1", scope: !3779, file: !2, line: 1410, type: !81)
!3786 = !DILocalVariable(name: "empty2", scope: !3779, file: !2, line: 1411, type: !81)
!3787 = !DILocalVariable(name: "i", scope: !3779, file: !2, line: 1412, type: !84)
!3788 = !DILocalVariable(name: "val1", scope: !3789, file: !2, line: 1418, type: !85)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !2, line: 1417, column: 29)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !2, line: 1417, column: 2)
!3791 = distinct !DILexicalBlock(scope: !3779, file: !2, line: 1417, column: 2)
!3792 = !DILocalVariable(name: "val2", scope: !3789, file: !2, line: 1419, type: !85)
!3793 = !DILocation(line: 1406, column: 66, scope: !3779)
!3794 = !DILocation(line: 1406, column: 102, scope: !3779)
!3795 = !DILocation(line: 1408, column: 2, scope: !3779)
!3796 = !DILocation(line: 1408, column: 11, scope: !3779)
!3797 = !DILocation(line: 1408, column: 23, scope: !3779)
!3798 = !DILocation(line: 1408, column: 29, scope: !3779)
!3799 = !DILocation(line: 1408, column: 44, scope: !3779)
!3800 = !DILocation(line: 1408, column: 50, scope: !3779)
!3801 = !DILocation(line: 1408, column: 42, scope: !3779)
!3802 = !DILocation(line: 1408, column: 65, scope: !3779)
!3803 = !DILocation(line: 1408, column: 71, scope: !3779)
!3804 = !DILocation(line: 1408, column: 86, scope: !3779)
!3805 = !DILocation(line: 1408, column: 92, scope: !3779)
!3806 = !DILocation(line: 1409, column: 2, scope: !3779)
!3807 = !DILocation(line: 1409, column: 6, scope: !3779)
!3808 = !DILocation(line: 1410, column: 2, scope: !3779)
!3809 = !DILocation(line: 1410, column: 6, scope: !3779)
!3810 = !DILocation(line: 1411, column: 2, scope: !3779)
!3811 = !DILocation(line: 1411, column: 6, scope: !3779)
!3812 = !DILocation(line: 1412, column: 2, scope: !3779)
!3813 = !DILocation(line: 1412, column: 11, scope: !3779)
!3814 = !DILocation(line: 1417, column: 7, scope: !3791)
!3815 = !DILocation(line: 1417, column: 6, scope: !3791)
!3816 = !DILocation(line: 1417, column: 11, scope: !3790)
!3817 = !DILocation(line: 1417, column: 13, scope: !3790)
!3818 = !DILocation(line: 1417, column: 12, scope: !3790)
!3819 = !DILocation(line: 1417, column: 2, scope: !3791)
!3820 = !DILocation(line: 1418, column: 4, scope: !3789)
!3821 = !DILocation(line: 1418, column: 18, scope: !3789)
!3822 = !DILocation(line: 1418, column: 25, scope: !3789)
!3823 = !DILocation(line: 1419, column: 4, scope: !3789)
!3824 = !DILocation(line: 1419, column: 18, scope: !3789)
!3825 = !DILocation(line: 1419, column: 25, scope: !3789)
!3826 = !DILocation(line: 1421, column: 9, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3789, file: !2, line: 1421, column: 8)
!3828 = !DILocation(line: 1421, column: 8, scope: !3789)
!3829 = !DILocation(line: 1422, column: 11, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !2, line: 1422, column: 10)
!3831 = distinct !DILexicalBlock(scope: !3827, file: !2, line: 1421, column: 15)
!3832 = !DILocation(line: 1422, column: 10, scope: !3831)
!3833 = !DILocation(line: 1424, column: 8, scope: !3830)
!3834 = !DILocation(line: 1427, column: 10, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !2, line: 1427, column: 10)
!3836 = !DILocation(line: 1427, column: 17, scope: !3835)
!3837 = !DILocation(line: 1427, column: 10, scope: !3831)
!3838 = !DILocation(line: 1428, column: 13, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !2, line: 1428, column: 12)
!3840 = distinct !DILexicalBlock(scope: !3835, file: !2, line: 1427, column: 43)
!3841 = !DILocation(line: 1428, column: 12, scope: !3840)
!3842 = !DILocation(line: 1429, column: 3, scope: !3839)
!3843 = !DILocation(line: 1430, column: 15, scope: !3840)
!3844 = !DILocation(line: 1431, column: 6, scope: !3840)
!3845 = !DILocation(line: 1431, column: 17, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3835, file: !2, line: 1431, column: 17)
!3847 = !DILocation(line: 1431, column: 24, scope: !3846)
!3848 = !DILocation(line: 1431, column: 17, scope: !3835)
!3849 = !DILocation(line: 1432, column: 15, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3846, file: !2, line: 1431, column: 47)
!3851 = !DILocation(line: 1433, column: 6, scope: !3850)
!3852 = !DILocation(line: 1436, column: 4, scope: !3831)
!3853 = !DILocation(line: 1436, column: 16, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3827, file: !2, line: 1436, column: 15)
!3855 = !DILocation(line: 1436, column: 15, scope: !3827)
!3856 = !DILocation(line: 1438, column: 10, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3858, file: !2, line: 1438, column: 10)
!3858 = distinct !DILexicalBlock(scope: !3854, file: !2, line: 1436, column: 22)
!3859 = !DILocation(line: 1438, column: 17, scope: !3857)
!3860 = !DILocation(line: 1438, column: 10, scope: !3858)
!3861 = !DILocation(line: 1439, column: 13, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !2, line: 1439, column: 12)
!3863 = distinct !DILexicalBlock(scope: !3857, file: !2, line: 1438, column: 43)
!3864 = !DILocation(line: 1439, column: 12, scope: !3863)
!3865 = !DILocation(line: 1440, column: 3, scope: !3862)
!3866 = !DILocation(line: 1441, column: 15, scope: !3863)
!3867 = !DILocation(line: 1442, column: 6, scope: !3863)
!3868 = !DILocation(line: 1442, column: 17, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3857, file: !2, line: 1442, column: 17)
!3870 = !DILocation(line: 1442, column: 24, scope: !3869)
!3871 = !DILocation(line: 1442, column: 17, scope: !3857)
!3872 = !DILocation(line: 1443, column: 15, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3869, file: !2, line: 1442, column: 47)
!3874 = !DILocation(line: 1444, column: 6, scope: !3873)
!3875 = !DILocation(line: 1447, column: 4, scope: !3858)
!3876 = !DILocation(line: 1447, column: 15, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3854, file: !2, line: 1447, column: 15)
!3878 = !DILocation(line: 1447, column: 23, scope: !3877)
!3879 = !DILocation(line: 1447, column: 20, scope: !3877)
!3880 = !DILocation(line: 1447, column: 15, scope: !3854)
!3881 = !DILocation(line: 1449, column: 10, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !2, line: 1449, column: 10)
!3883 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 1447, column: 29)
!3884 = !DILocation(line: 1449, column: 17, scope: !3882)
!3885 = !DILocation(line: 1449, column: 10, scope: !3883)
!3886 = !DILocation(line: 1450, column: 8, scope: !3882)
!3887 = !DILocation(line: 1453, column: 4, scope: !3883)
!3888 = !DILocation(line: 1453, column: 16, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3877, file: !2, line: 1453, column: 15)
!3890 = !DILocation(line: 1453, column: 23, scope: !3889)
!3891 = !DILocation(line: 1453, column: 21, scope: !3889)
!3892 = !DILocation(line: 1453, column: 32, scope: !3889)
!3893 = !DILocation(line: 1453, column: 29, scope: !3889)
!3894 = !DILocation(line: 1453, column: 15, scope: !3877)
!3895 = !DILocation(line: 1455, column: 10, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !2, line: 1455, column: 10)
!3897 = distinct !DILexicalBlock(scope: !3889, file: !2, line: 1453, column: 38)
!3898 = !DILocation(line: 1455, column: 17, scope: !3896)
!3899 = !DILocation(line: 1455, column: 42, scope: !3896)
!3900 = !DILocation(line: 1455, column: 45, scope: !3896)
!3901 = !DILocation(line: 1455, column: 52, scope: !3896)
!3902 = !DILocation(line: 1455, column: 10, scope: !3897)
!3903 = !DILocation(line: 1456, column: 8, scope: !3896)
!3904 = !DILocation(line: 1458, column: 13, scope: !3897)
!3905 = !DILocation(line: 1460, column: 4, scope: !3897)
!3906 = !DILocation(line: 1460, column: 16, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3889, file: !2, line: 1460, column: 15)
!3908 = !DILocation(line: 1460, column: 23, scope: !3907)
!3909 = !DILocation(line: 1460, column: 21, scope: !3907)
!3910 = !DILocation(line: 1460, column: 32, scope: !3907)
!3911 = !DILocation(line: 1460, column: 29, scope: !3907)
!3912 = !DILocation(line: 1460, column: 15, scope: !3889)
!3913 = !DILocation(line: 1462, column: 10, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3915, file: !2, line: 1462, column: 10)
!3915 = distinct !DILexicalBlock(scope: !3907, file: !2, line: 1460, column: 38)
!3916 = !DILocation(line: 1462, column: 17, scope: !3914)
!3917 = !DILocation(line: 1462, column: 42, scope: !3914)
!3918 = !DILocation(line: 1462, column: 45, scope: !3914)
!3919 = !DILocation(line: 1462, column: 52, scope: !3914)
!3920 = !DILocation(line: 1462, column: 10, scope: !3915)
!3921 = !DILocation(line: 1463, column: 8, scope: !3914)
!3922 = !DILocation(line: 1465, column: 13, scope: !3915)
!3923 = !DILocation(line: 1467, column: 4, scope: !3915)
!3924 = !DILocation(line: 1467, column: 16, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3907, file: !2, line: 1467, column: 15)
!3926 = !DILocation(line: 1467, column: 23, scope: !3925)
!3927 = !DILocation(line: 1467, column: 21, scope: !3925)
!3928 = !DILocation(line: 1467, column: 29, scope: !3925)
!3929 = !DILocation(line: 1467, column: 15, scope: !3907)
!3930 = !DILocation(line: 1469, column: 6, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3925, file: !2, line: 1467, column: 35)
!3932 = !DILocation(line: 1475, column: 10, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 1475, column: 10)
!3934 = distinct !DILexicalBlock(scope: !3925, file: !2, line: 1471, column: 11)
!3935 = !DILocation(line: 1475, column: 17, scope: !3933)
!3936 = !DILocation(line: 1475, column: 39, scope: !3933)
!3937 = !DILocation(line: 1475, column: 43, scope: !3933)
!3938 = !DILocation(line: 1475, column: 10, scope: !3934)
!3939 = !DILocation(line: 1476, column: 8, scope: !3933)
!3940 = !DILocation(line: 1477, column: 10, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 1477, column: 10)
!3942 = !DILocation(line: 1477, column: 17, scope: !3941)
!3943 = !DILocation(line: 1477, column: 42, scope: !3941)
!3944 = !DILocation(line: 1477, column: 46, scope: !3941)
!3945 = !DILocation(line: 1477, column: 10, scope: !3934)
!3946 = !DILocation(line: 1478, column: 8, scope: !3941)
!3947 = !DILocation(line: 1479, column: 10, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3934, file: !2, line: 1479, column: 10)
!3949 = !DILocation(line: 1479, column: 17, scope: !3948)
!3950 = !DILocation(line: 1479, column: 42, scope: !3948)
!3951 = !DILocation(line: 1479, column: 46, scope: !3948)
!3952 = !DILocation(line: 1479, column: 10, scope: !3934)
!3953 = !DILocation(line: 1480, column: 8, scope: !3948)
!3954 = !DILocation(line: 1482, column: 13, scope: !3934)
!3955 = !DILocation(line: 1485, column: 15, scope: !3789)
!3956 = !DILocation(line: 1485, column: 14, scope: !3789)
!3957 = !DILocation(line: 1485, column: 11, scope: !3789)
!3958 = !DILocation(line: 1486, column: 15, scope: !3789)
!3959 = !DILocation(line: 1486, column: 14, scope: !3789)
!3960 = !DILocation(line: 1486, column: 11, scope: !3789)
!3961 = !DILocation(line: 1487, column: 2, scope: !3790)
!3962 = !DILocation(line: 1487, column: 2, scope: !3789)
!3963 = !DILocation(line: 1417, column: 25, scope: !3790)
!3964 = !DILocation(line: 1417, column: 2, scope: !3790)
!3965 = distinct !{!3965, !3819, !3966, !413}
!3966 = !DILocation(line: 1487, column: 2, scope: !3791)
!3967 = !DILocation(line: 1489, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3779, file: !2, line: 1489, column: 6)
!3969 = !DILocation(line: 1489, column: 13, scope: !3968)
!3970 = !DILocation(line: 1489, column: 6, scope: !3779)
!3971 = !DILocation(line: 1490, column: 8, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !2, line: 1490, column: 8)
!3973 = distinct !DILexicalBlock(scope: !3968, file: !2, line: 1489, column: 23)
!3974 = !DILocation(line: 1490, column: 14, scope: !3972)
!3975 = !DILocation(line: 1490, column: 8, scope: !3973)
!3976 = !DILocation(line: 1492, column: 10, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !2, line: 1492, column: 10)
!3978 = distinct !DILexicalBlock(scope: !3972, file: !2, line: 1490, column: 24)
!3979 = !DILocation(line: 1492, column: 17, scope: !3977)
!3980 = !DILocation(line: 1492, column: 10, scope: !3978)
!3981 = !DILocation(line: 1493, column: 13, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !2, line: 1493, column: 12)
!3983 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 1492, column: 43)
!3984 = !DILocation(line: 1493, column: 12, scope: !3983)
!3985 = !DILocation(line: 1494, column: 3, scope: !3982)
!3986 = !DILocation(line: 1495, column: 15, scope: !3983)
!3987 = !DILocation(line: 1496, column: 6, scope: !3983)
!3988 = !DILocation(line: 1496, column: 17, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3977, file: !2, line: 1496, column: 17)
!3990 = !DILocation(line: 1496, column: 24, scope: !3989)
!3991 = !DILocation(line: 1496, column: 17, scope: !3977)
!3992 = !DILocation(line: 1497, column: 15, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !2, line: 1496, column: 47)
!3994 = !DILocation(line: 1498, column: 6, scope: !3993)
!3995 = !DILocation(line: 1500, column: 4, scope: !3978)
!3996 = !DILocation(line: 1501, column: 2, scope: !3973)
!3997 = !DILocation(line: 1501, column: 14, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3968, file: !2, line: 1501, column: 13)
!3999 = !DILocation(line: 1501, column: 20, scope: !3998)
!4000 = !DILocation(line: 1501, column: 13, scope: !3968)
!4001 = !DILocation(line: 1503, column: 8, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !2, line: 1503, column: 8)
!4003 = distinct !DILexicalBlock(scope: !3998, file: !2, line: 1501, column: 30)
!4004 = !DILocation(line: 1503, column: 15, scope: !4002)
!4005 = !DILocation(line: 1503, column: 8, scope: !4003)
!4006 = !DILocation(line: 1504, column: 11, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !2, line: 1504, column: 10)
!4008 = distinct !DILexicalBlock(scope: !4002, file: !2, line: 1503, column: 41)
!4009 = !DILocation(line: 1504, column: 10, scope: !4008)
!4010 = !DILocation(line: 1505, column: 8, scope: !4007)
!4011 = !DILocation(line: 1506, column: 13, scope: !4008)
!4012 = !DILocation(line: 1507, column: 4, scope: !4008)
!4013 = !DILocation(line: 1507, column: 15, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4002, file: !2, line: 1507, column: 15)
!4015 = !DILocation(line: 1507, column: 22, scope: !4014)
!4016 = !DILocation(line: 1507, column: 15, scope: !4002)
!4017 = !DILocation(line: 1508, column: 13, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4014, file: !2, line: 1507, column: 45)
!4019 = !DILocation(line: 1509, column: 4, scope: !4018)
!4020 = !DILocation(line: 1511, column: 2, scope: !4003)
!4021 = !DILocation(line: 1513, column: 8, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !2, line: 1513, column: 8)
!4023 = distinct !DILexicalBlock(scope: !3998, file: !2, line: 1511, column: 9)
!4024 = !DILocation(line: 1513, column: 15, scope: !4022)
!4025 = !DILocation(line: 1513, column: 8, scope: !4023)
!4026 = !DILocation(line: 1514, column: 6, scope: !4022)
!4027 = !DILocation(line: 1518, column: 9, scope: !3779)
!4028 = !DILocation(line: 1518, column: 2, scope: !3779)
!4029 = !DILocation(line: 1519, column: 1, scope: !3779)
!4030 = distinct !DISubprogram(name: "hwloc_bitmap_enlarge_by_ulongs", scope: !2, file: !2, line: 121, type: !289, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !79, retainedNodes: !4031)
!4031 = !{!4032, !4033, !4034}
!4032 = !DILocalVariable(name: "set", arg: 1, scope: !4030, file: !2, line: 121, type: !98)
!4033 = !DILocalVariable(name: "needed_count", arg: 2, scope: !4030, file: !2, line: 121, type: !84)
!4034 = !DILocalVariable(name: "tmp", scope: !4030, file: !2, line: 123, type: !84)
!4035 = !DILocation(line: 121, column: 56, scope: !4030)
!4036 = !DILocation(line: 121, column: 70, scope: !4030)
!4037 = !DILocation(line: 123, column: 3, scope: !4030)
!4038 = !DILocation(line: 123, column: 12, scope: !4030)
!4039 = !DILocation(line: 123, column: 50, scope: !4030)
!4040 = !DILocation(line: 123, column: 34, scope: !4030)
!4041 = !DILocation(line: 123, column: 63, scope: !4030)
!4042 = !DILocation(line: 123, column: 23, scope: !4030)
!4043 = !DILocation(line: 123, column: 20, scope: !4030)
!4044 = !DILocation(line: 124, column: 7, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4030, file: !2, line: 124, column: 7)
!4046 = !DILocation(line: 124, column: 13, scope: !4045)
!4047 = !DILocation(line: 124, column: 18, scope: !4045)
!4048 = !DILocation(line: 124, column: 11, scope: !4045)
!4049 = !DILocation(line: 124, column: 7, scope: !4030)
!4050 = !DILocation(line: 125, column: 27, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4045, file: !2, line: 124, column: 36)
!4052 = !DILocation(line: 125, column: 32, scope: !4051)
!4053 = !DILocation(line: 125, column: 40, scope: !4051)
!4054 = !DILocation(line: 125, column: 44, scope: !4051)
!4055 = !DILocation(line: 125, column: 19, scope: !4051)
!4056 = !DILocation(line: 125, column: 5, scope: !4051)
!4057 = !DILocation(line: 125, column: 10, scope: !4051)
!4058 = !DILocation(line: 125, column: 17, scope: !4051)
!4059 = !DILocation(line: 126, column: 5, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !2, line: 126, column: 5)
!4061 = distinct !DILexicalBlock(scope: !4051, file: !2, line: 126, column: 5)
!4062 = !DILocation(line: 126, column: 5, scope: !4061)
!4063 = !DILocation(line: 127, column: 29, scope: !4051)
!4064 = !DILocation(line: 127, column: 5, scope: !4051)
!4065 = !DILocation(line: 127, column: 10, scope: !4051)
!4066 = !DILocation(line: 127, column: 27, scope: !4051)
!4067 = !DILocation(line: 128, column: 3, scope: !4051)
!4068 = !DILocation(line: 129, column: 1, scope: !4030)
!4069 = !DISubprogram(name: "realloc", scope: !156, file: !156, line: 551, type: !4070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!82, !82, !159}

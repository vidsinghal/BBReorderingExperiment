; ModuleID = 'samples/217.bc'
source_filename = "src/cache_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_bin_info_s = type { i16 }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16 }
%struct.cache_bin_stats_s = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @je_cache_bin_info_init(ptr noundef %info, i16 noundef zeroext %ncached_max) #0 !dbg !31 {
entry:
  %info.addr = alloca ptr, align 8
  %ncached_max.addr = alloca i16, align 2
  %stack_size = alloca i64, align 8
  store ptr %info, ptr %info.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !40, metadata !DIExpression()), !dbg !47
  store i16 %ncached_max, ptr %ncached_max.addr, align 2, !tbaa !48
  tail call void @llvm.dbg.declare(metadata ptr %ncached_max.addr, metadata !41, metadata !DIExpression()), !dbg !50
  br label %do.body, !dbg !51

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !52

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack_size) #4, !dbg !54
  tail call void @llvm.dbg.declare(metadata ptr %stack_size, metadata !42, metadata !DIExpression()), !dbg !55
  %0 = load i16, ptr %ncached_max.addr, align 2, !dbg !56, !tbaa !48
  %conv = zext i16 %0 to i64, !dbg !57
  %mul = mul i64 %conv, 8, !dbg !58
  store i64 %mul, ptr %stack_size, align 8, !dbg !55, !tbaa !59
  br label %do.body1, !dbg !61

do.body1:                                         ; preds = %do.end
  br label %do.cond, !dbg !62

do.cond:                                          ; preds = %do.body1
  br label %do.end2, !dbg !62

do.end2:                                          ; preds = %do.cond
  %1 = load i16, ptr %ncached_max.addr, align 2, !dbg !64, !tbaa !48
  %2 = load ptr, ptr %info.addr, align 8, !dbg !65, !tbaa !43
  %ncached_max3 = getelementptr inbounds %struct.cache_bin_info_s, ptr %2, i32 0, i32 0, !dbg !66
  store i16 %1, ptr %ncached_max3, align 2, !dbg !67, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack_size) #4, !dbg !70
  ret void, !dbg !70
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @je_cache_bin_info_compute_alloc(ptr noundef %infos, i32 noundef %ninfos, ptr noundef %size, ptr noundef %alignment) #0 !dbg !71 {
entry:
  %infos.addr = alloca ptr, align 8
  %ninfos.addr = alloca i32, align 4
  %size.addr = alloca ptr, align 8
  %alignment.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %infos, ptr %infos.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %infos.addr, metadata !79, metadata !DIExpression()), !dbg !85
  store i32 %ninfos, ptr %ninfos.addr, align 4, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %ninfos.addr, metadata !80, metadata !DIExpression()), !dbg !88
  store ptr %size, ptr %size.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !81, metadata !DIExpression()), !dbg !89
  store ptr %alignment, ptr %alignment.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !82, metadata !DIExpression()), !dbg !90
  %0 = load ptr, ptr %size.addr, align 8, !dbg !91, !tbaa !43
  store i64 16, ptr %0, align 8, !dbg !92, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !93
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !83, metadata !DIExpression()), !dbg !94
  store i32 0, ptr %i, align 4, !dbg !94, !tbaa !86
  br label %for.cond, !dbg !93

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !95, !tbaa !86
  %2 = load i32, ptr %ninfos.addr, align 4, !dbg !97, !tbaa !86
  %cmp = icmp ult i32 %1, %2, !dbg !98
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !99

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !100
  br label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !101

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !103

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !103

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %infos.addr, align 8, !dbg !105, !tbaa !43
  %4 = load i32, ptr %i, align 4, !dbg !106, !tbaa !86
  %idxprom = zext i32 %4 to i64, !dbg !105
  %arrayidx = getelementptr inbounds %struct.cache_bin_info_s, ptr %3, i64 %idxprom, !dbg !105
  %ncached_max = getelementptr inbounds %struct.cache_bin_info_s, ptr %arrayidx, i32 0, i32 0, !dbg !107
  %5 = load i16, ptr %ncached_max, align 2, !dbg !107, !tbaa !68
  %conv = zext i16 %5 to i64, !dbg !105
  %mul = mul i64 %conv, 8, !dbg !108
  %6 = load ptr, ptr %size.addr, align 8, !dbg !109, !tbaa !43
  %7 = load i64, ptr %6, align 8, !dbg !110, !tbaa !59
  %add = add i64 %7, %mul, !dbg !110
  store i64 %add, ptr %6, align 8, !dbg !110, !tbaa !59
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %do.end
  %8 = load i32, ptr %i, align 4, !dbg !112, !tbaa !86
  %inc = add i32 %8, 1, !dbg !112
  store i32 %inc, ptr %i, align 4, !dbg !112, !tbaa !86
  br label %for.cond, !dbg !100, !llvm.loop !113

for.end:                                          ; preds = %for.cond.cleanup
  %9 = load ptr, ptr %alignment.addr, align 8, !dbg !116, !tbaa !43
  store i64 4096, ptr %9, align 8, !dbg !117, !tbaa !59
  ret void, !dbg !118
}

; Function Attrs: nounwind uwtable
define hidden void @je_cache_bin_preincrement(ptr noundef %infos, i32 noundef %ninfos, ptr noundef %alloc, ptr noundef %cur_offset) #0 !dbg !119 {
entry:
  %infos.addr = alloca ptr, align 8
  %ninfos.addr = alloca i32, align 4
  %alloc.addr = alloca ptr, align 8
  %cur_offset.addr = alloca ptr, align 8
  store ptr %infos, ptr %infos.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %infos.addr, metadata !123, metadata !DIExpression()), !dbg !127
  store i32 %ninfos, ptr %ninfos.addr, align 4, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %ninfos.addr, metadata !124, metadata !DIExpression()), !dbg !128
  store ptr %alloc, ptr %alloc.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %alloc.addr, metadata !125, metadata !DIExpression()), !dbg !129
  store ptr %cur_offset, ptr %cur_offset.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %cur_offset.addr, metadata !126, metadata !DIExpression()), !dbg !130
  %0 = load ptr, ptr %alloc.addr, align 8, !dbg !131, !tbaa !43
  %1 = ptrtoint ptr %0 to i64, !dbg !132
  %2 = load ptr, ptr %cur_offset.addr, align 8, !dbg !133, !tbaa !43
  %3 = load i64, ptr %2, align 8, !dbg !134, !tbaa !59
  %add = add i64 %1, %3, !dbg !135
  %4 = inttoptr i64 %add to ptr, !dbg !136
  store i64 8825501086245354106, ptr %4, align 8, !dbg !137, !tbaa !59
  %5 = load ptr, ptr %cur_offset.addr, align 8, !dbg !138, !tbaa !43
  %6 = load i64, ptr %5, align 8, !dbg !139, !tbaa !59
  %add1 = add i64 %6, 8, !dbg !139
  store i64 %add1, ptr %5, align 8, !dbg !139, !tbaa !59
  ret void, !dbg !140
}

; Function Attrs: nounwind uwtable
define hidden void @je_cache_bin_postincrement(ptr noundef %infos, i32 noundef %ninfos, ptr noundef %alloc, ptr noundef %cur_offset) #0 !dbg !141 {
entry:
  %infos.addr = alloca ptr, align 8
  %ninfos.addr = alloca i32, align 4
  %alloc.addr = alloca ptr, align 8
  %cur_offset.addr = alloca ptr, align 8
  store ptr %infos, ptr %infos.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %infos.addr, metadata !143, metadata !DIExpression()), !dbg !147
  store i32 %ninfos, ptr %ninfos.addr, align 4, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %ninfos.addr, metadata !144, metadata !DIExpression()), !dbg !148
  store ptr %alloc, ptr %alloc.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %alloc.addr, metadata !145, metadata !DIExpression()), !dbg !149
  store ptr %cur_offset, ptr %cur_offset.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %cur_offset.addr, metadata !146, metadata !DIExpression()), !dbg !150
  %0 = load ptr, ptr %alloc.addr, align 8, !dbg !151, !tbaa !43
  %1 = ptrtoint ptr %0 to i64, !dbg !152
  %2 = load ptr, ptr %cur_offset.addr, align 8, !dbg !153, !tbaa !43
  %3 = load i64, ptr %2, align 8, !dbg !154, !tbaa !59
  %add = add i64 %1, %3, !dbg !155
  %4 = inttoptr i64 %add to ptr, !dbg !156
  store i64 -6365935209750747225, ptr %4, align 8, !dbg !157, !tbaa !59
  %5 = load ptr, ptr %cur_offset.addr, align 8, !dbg !158, !tbaa !43
  %6 = load i64, ptr %5, align 8, !dbg !159, !tbaa !59
  %add1 = add i64 %6, 8, !dbg !159
  store i64 %add1, ptr %5, align 8, !dbg !159, !tbaa !59
  ret void, !dbg !160
}

; Function Attrs: nounwind uwtable
define hidden void @je_cache_bin_init(ptr noundef %bin, ptr noundef %info, ptr noundef %alloc, ptr noundef %cur_offset) #0 !dbg !161 {
entry:
  %bin.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %alloc.addr = alloca ptr, align 8
  %cur_offset.addr = alloca ptr, align 8
  %stack_cur = alloca ptr, align 8
  %full_position = alloca ptr, align 8
  %bin_stack_size = alloca i16, align 2
  %empty_position = alloca ptr, align 8
  %free_spots = alloca i16, align 2
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !180, metadata !DIExpression()), !dbg !189
  store ptr %info, ptr %info.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !181, metadata !DIExpression()), !dbg !190
  store ptr %alloc, ptr %alloc.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %alloc.addr, metadata !182, metadata !DIExpression()), !dbg !191
  store ptr %cur_offset, ptr %cur_offset.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %cur_offset.addr, metadata !183, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack_cur) #4, !dbg !193
  tail call void @llvm.dbg.declare(metadata ptr %stack_cur, metadata !184, metadata !DIExpression()), !dbg !194
  %0 = load ptr, ptr %alloc.addr, align 8, !dbg !195, !tbaa !43
  %1 = ptrtoint ptr %0 to i64, !dbg !196
  %2 = load ptr, ptr %cur_offset.addr, align 8, !dbg !197, !tbaa !43
  %3 = load i64, ptr %2, align 8, !dbg !198, !tbaa !59
  %add = add i64 %1, %3, !dbg !199
  %4 = inttoptr i64 %add to ptr, !dbg !200
  store ptr %4, ptr %stack_cur, align 8, !dbg !194, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %full_position) #4, !dbg !201
  tail call void @llvm.dbg.declare(metadata ptr %full_position, metadata !185, metadata !DIExpression()), !dbg !202
  %5 = load ptr, ptr %stack_cur, align 8, !dbg !203, !tbaa !43
  store ptr %5, ptr %full_position, align 8, !dbg !202, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 2, ptr %bin_stack_size) #4, !dbg !204
  tail call void @llvm.dbg.declare(metadata ptr %bin_stack_size, metadata !186, metadata !DIExpression()), !dbg !205
  %6 = load ptr, ptr %info.addr, align 8, !dbg !206, !tbaa !43
  %ncached_max = getelementptr inbounds %struct.cache_bin_info_s, ptr %6, i32 0, i32 0, !dbg !207
  %7 = load i16, ptr %ncached_max, align 2, !dbg !207, !tbaa !68
  %conv = zext i16 %7 to i64, !dbg !206
  %mul = mul i64 %conv, 8, !dbg !208
  %conv1 = trunc i64 %mul to i16, !dbg !206
  store i16 %conv1, ptr %bin_stack_size, align 2, !dbg !205, !tbaa !48
  %8 = load i16, ptr %bin_stack_size, align 2, !dbg !209, !tbaa !48
  %conv2 = zext i16 %8 to i64, !dbg !209
  %9 = load ptr, ptr %cur_offset.addr, align 8, !dbg !210, !tbaa !43
  %10 = load i64, ptr %9, align 8, !dbg !211, !tbaa !59
  %add3 = add i64 %10, %conv2, !dbg !211
  store i64 %add3, ptr %9, align 8, !dbg !211, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %empty_position) #4, !dbg !212
  tail call void @llvm.dbg.declare(metadata ptr %empty_position, metadata !187, metadata !DIExpression()), !dbg !213
  %11 = load ptr, ptr %alloc.addr, align 8, !dbg !214, !tbaa !43
  %12 = ptrtoint ptr %11 to i64, !dbg !215
  %13 = load ptr, ptr %cur_offset.addr, align 8, !dbg !216, !tbaa !43
  %14 = load i64, ptr %13, align 8, !dbg !217, !tbaa !59
  %add4 = add i64 %12, %14, !dbg !218
  %15 = inttoptr i64 %add4 to ptr, !dbg !219
  store ptr %15, ptr %empty_position, align 8, !dbg !213, !tbaa !43
  %16 = load ptr, ptr %empty_position, align 8, !dbg !220, !tbaa !43
  %17 = load ptr, ptr %bin.addr, align 8, !dbg !221, !tbaa !43
  %stack_head = getelementptr inbounds %struct.cache_bin_s, ptr %17, i32 0, i32 0, !dbg !222
  store ptr %16, ptr %stack_head, align 8, !dbg !223, !tbaa !224
  %18 = load ptr, ptr %bin.addr, align 8, !dbg !227, !tbaa !43
  %stack_head5 = getelementptr inbounds %struct.cache_bin_s, ptr %18, i32 0, i32 0, !dbg !228
  %19 = load ptr, ptr %stack_head5, align 8, !dbg !228, !tbaa !224
  %20 = ptrtoint ptr %19 to i64, !dbg !229
  %conv6 = trunc i64 %20 to i16, !dbg !230
  %21 = load ptr, ptr %bin.addr, align 8, !dbg !231, !tbaa !43
  %low_bits_low_water = getelementptr inbounds %struct.cache_bin_s, ptr %21, i32 0, i32 2, !dbg !232
  store i16 %conv6, ptr %low_bits_low_water, align 8, !dbg !233, !tbaa !234
  %22 = load ptr, ptr %full_position, align 8, !dbg !235, !tbaa !43
  %23 = ptrtoint ptr %22 to i64, !dbg !236
  %conv7 = trunc i64 %23 to i16, !dbg !237
  %24 = load ptr, ptr %bin.addr, align 8, !dbg !238, !tbaa !43
  %low_bits_full = getelementptr inbounds %struct.cache_bin_s, ptr %24, i32 0, i32 3, !dbg !239
  store i16 %conv7, ptr %low_bits_full, align 2, !dbg !240, !tbaa !241
  %25 = load ptr, ptr %empty_position, align 8, !dbg !242, !tbaa !43
  %26 = ptrtoint ptr %25 to i64, !dbg !243
  %conv8 = trunc i64 %26 to i16, !dbg !244
  %27 = load ptr, ptr %bin.addr, align 8, !dbg !245, !tbaa !43
  %low_bits_empty = getelementptr inbounds %struct.cache_bin_s, ptr %27, i32 0, i32 4, !dbg !246
  store i16 %conv8, ptr %low_bits_empty, align 4, !dbg !247, !tbaa !248
  call void @llvm.lifetime.start.p0(i64 2, ptr %free_spots) #4, !dbg !249
  tail call void @llvm.dbg.declare(metadata ptr %free_spots, metadata !188, metadata !DIExpression()), !dbg !250
  %28 = load ptr, ptr %bin.addr, align 8, !dbg !251, !tbaa !43
  %29 = load ptr, ptr %bin.addr, align 8, !dbg !252, !tbaa !43
  %low_bits_full9 = getelementptr inbounds %struct.cache_bin_s, ptr %29, i32 0, i32 3, !dbg !253
  %30 = load i16, ptr %low_bits_full9, align 2, !dbg !253, !tbaa !241
  %31 = load ptr, ptr %bin.addr, align 8, !dbg !254, !tbaa !43
  %stack_head10 = getelementptr inbounds %struct.cache_bin_s, ptr %31, i32 0, i32 0, !dbg !255
  %32 = load ptr, ptr %stack_head10, align 8, !dbg !255, !tbaa !224
  %33 = ptrtoint ptr %32 to i64, !dbg !256
  %conv11 = trunc i64 %33 to i16, !dbg !257
  %call = call zeroext i16 @cache_bin_diff(ptr noundef %28, i16 noundef zeroext %30, i16 noundef zeroext %conv11, i1 noundef zeroext false), !dbg !258
  store i16 %call, ptr %free_spots, align 2, !dbg !250, !tbaa !48
  br label %do.body, !dbg !259

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !260

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !260

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !262

do.body12:                                        ; preds = %do.end
  br label %do.cond13, !dbg !263

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !263

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !265

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !266

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !266

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !268

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !269

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !269

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 2, ptr %free_spots) #4, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %empty_position) #4, !dbg !271
  call void @llvm.lifetime.end.p0(i64 2, ptr %bin_stack_size) #4, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %full_position) #4, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack_cur) #4, !dbg !271
  ret void, !dbg !271
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @cache_bin_diff(ptr noundef %bin, i16 noundef zeroext %earlier, i16 noundef zeroext %later, i1 noundef zeroext %racy) #2 !dbg !272 {
entry:
  %bin.addr = alloca ptr, align 8
  %earlier.addr = alloca i16, align 2
  %later.addr = alloca i16, align 2
  %racy.addr = alloca i8, align 1
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !277, metadata !DIExpression()), !dbg !281
  store i16 %earlier, ptr %earlier.addr, align 2, !tbaa !48
  tail call void @llvm.dbg.declare(metadata ptr %earlier.addr, metadata !278, metadata !DIExpression()), !dbg !282
  store i16 %later, ptr %later.addr, align 2, !tbaa !48
  tail call void @llvm.dbg.declare(metadata ptr %later.addr, metadata !279, metadata !DIExpression()), !dbg !283
  %frombool = zext i1 %racy to i8
  store i8 %frombool, ptr %racy.addr, align 1, !tbaa !284
  tail call void @llvm.dbg.declare(metadata ptr %racy.addr, metadata !280, metadata !DIExpression()), !dbg !286
  %0 = load i8, ptr %racy.addr, align 1, !dbg !287, !tbaa !284, !range !289, !noundef !290
  %tobool = trunc i8 %0 to i1, !dbg !287
  br i1 %tobool, label %if.end, label %if.then, !dbg !291

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bin.addr, align 8, !dbg !292, !tbaa !43
  %2 = load i16, ptr %earlier.addr, align 2, !dbg !294, !tbaa !48
  %3 = load i16, ptr %later.addr, align 2, !dbg !295, !tbaa !48
  call void @cache_bin_assert_earlier(ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3), !dbg !296
  br label %if.end, !dbg !297

if.end:                                           ; preds = %if.then, %entry
  %4 = load i16, ptr %later.addr, align 2, !dbg !298, !tbaa !48
  %conv = zext i16 %4 to i32, !dbg !298
  %5 = load i16, ptr %earlier.addr, align 2, !dbg !299, !tbaa !48
  %conv1 = zext i16 %5 to i32, !dbg !299
  %sub = sub nsw i32 %conv, %conv1, !dbg !300
  %conv2 = trunc i32 %sub to i16, !dbg !298
  ret i16 %conv2, !dbg !301
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_cache_bin_still_zero_initialized(ptr noundef %bin) #0 !dbg !302 {
entry:
  %bin.addr = alloca ptr, align 8
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load ptr, ptr %bin.addr, align 8, !dbg !308, !tbaa !43
  %stack_head = getelementptr inbounds %struct.cache_bin_s, ptr %0, i32 0, i32 0, !dbg !309
  %1 = load ptr, ptr %stack_head, align 8, !dbg !309, !tbaa !224
  %cmp = icmp eq ptr %1, null, !dbg !310
  ret i1 %cmp, !dbg !311
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cache_bin_assert_earlier(ptr noundef %bin, i16 noundef zeroext %earlier, i16 noundef zeroext %later) #2 !dbg !312 {
entry:
  %bin.addr = alloca ptr, align 8
  %earlier.addr = alloca i16, align 2
  %later.addr = alloca i16, align 2
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !316, metadata !DIExpression()), !dbg !319
  store i16 %earlier, ptr %earlier.addr, align 2, !tbaa !48
  tail call void @llvm.dbg.declare(metadata ptr %earlier.addr, metadata !317, metadata !DIExpression()), !dbg !320
  store i16 %later, ptr %later.addr, align 2, !tbaa !48
  tail call void @llvm.dbg.declare(metadata ptr %later.addr, metadata !318, metadata !DIExpression()), !dbg !321
  %0 = load i16, ptr %earlier.addr, align 2, !dbg !322, !tbaa !48
  %conv = zext i16 %0 to i32, !dbg !322
  %1 = load i16, ptr %later.addr, align 2, !dbg !324, !tbaa !48
  %conv1 = zext i16 %1 to i32, !dbg !324
  %cmp = icmp sgt i32 %conv, %conv1, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !327

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !329

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !331

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !332
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, globals: !18, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/cache_bin.c", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "9c1e294cb355bc46b6cb7b808a1bab7e")
!2 = !{!3, !6, !13, !14, !16, !17, !8}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !4, line: 70, baseType: !5)
!4 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_sz_t", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "include/jemalloc/internal/cache_bin.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "346bac98cae298112dab87b1fb1cd3dc")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 25, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!12 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !15, line: 90, baseType: !5)
!15 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!18 = !{!19, !22}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 8825501086245354106, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "cache_bin_preceding_junk", scope: !0, file: !7, line: 28, type: !21, isLocal: true, isDefinition: true)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 12080808863958804391, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "cache_bin_trailing_junk", scope: !0, file: !7, line: 31, type: !21, isLocal: true, isDefinition: true)
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 8, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!31 = distinct !DISubprogram(name: "je_cache_bin_info_init", scope: !1, file: !1, line: 9, type: !32, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !6}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_info_t", file: !7, line: 62, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_info_s", file: !7, line: 63, size: 16, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ncached_max", scope: !36, file: !7, line: 64, baseType: !6, size: 16)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: "info", arg: 1, scope: !31, file: !1, line: 9, type: !34)
!41 = !DILocalVariable(name: "ncached_max", arg: 2, scope: !31, file: !1, line: 10, type: !6)
!42 = !DILocalVariable(name: "stack_size", scope: !31, file: !1, line: 12, type: !3)
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 9, column: 39, scope: !31)
!48 = !{!49, !49, i64 0}
!49 = !{!"short", !45, i64 0}
!50 = !DILocation(line: 10, column: 20, scope: !31)
!51 = !DILocation(line: 11, column: 2, scope: !31)
!52 = !DILocation(line: 11, column: 2, scope: !53)
!53 = distinct !DILexicalBlock(scope: !31, file: !1, line: 11, column: 2)
!54 = !DILocation(line: 12, column: 2, scope: !31)
!55 = !DILocation(line: 12, column: 9, scope: !31)
!56 = !DILocation(line: 12, column: 30, scope: !31)
!57 = !DILocation(line: 12, column: 22, scope: !31)
!58 = !DILocation(line: 12, column: 42, scope: !31)
!59 = !{!60, !60, i64 0}
!60 = !{!"long", !45, i64 0}
!61 = !DILocation(line: 13, column: 2, scope: !31)
!62 = !DILocation(line: 13, column: 2, scope: !63)
!63 = distinct !DILexicalBlock(scope: !31, file: !1, line: 13, column: 2)
!64 = !DILocation(line: 14, column: 38, scope: !31)
!65 = !DILocation(line: 14, column: 2, scope: !31)
!66 = !DILocation(line: 14, column: 8, scope: !31)
!67 = !DILocation(line: 14, column: 20, scope: !31)
!68 = !{!69, !49, i64 0}
!69 = !{!"cache_bin_info_s", !49, i64 0}
!70 = !DILocation(line: 15, column: 1, scope: !31)
!71 = distinct !DISubprogram(name: "je_cache_bin_info_compute_alloc", scope: !1, file: !1, line: 18, type: !72, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !34, !74, !77, !77}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "szind_t", file: !75, line: 29, baseType: !76)
!75 = !DIFile(filename: "include/jemalloc/internal/sz.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "b9ea65fced4fed60be8d476b16546a70")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DILocalVariable(name: "infos", arg: 1, scope: !71, file: !1, line: 18, type: !34)
!80 = !DILocalVariable(name: "ninfos", arg: 2, scope: !71, file: !1, line: 18, type: !74)
!81 = !DILocalVariable(name: "size", arg: 3, scope: !71, file: !1, line: 19, type: !77)
!82 = !DILocalVariable(name: "alignment", arg: 4, scope: !71, file: !1, line: 19, type: !77)
!83 = !DILocalVariable(name: "i", scope: !84, file: !1, line: 28, type: !74)
!84 = distinct !DILexicalBlock(scope: !71, file: !1, line: 28, column: 2)
!85 = !DILocation(line: 18, column: 48, scope: !71)
!86 = !{!87, !87, i64 0}
!87 = !{!"int", !45, i64 0}
!88 = !DILocation(line: 18, column: 63, scope: !71)
!89 = !DILocation(line: 19, column: 13, scope: !71)
!90 = !DILocation(line: 19, column: 27, scope: !71)
!91 = !DILocation(line: 27, column: 3, scope: !71)
!92 = !DILocation(line: 27, column: 8, scope: !71)
!93 = !DILocation(line: 28, column: 7, scope: !84)
!94 = !DILocation(line: 28, column: 15, scope: !84)
!95 = !DILocation(line: 28, column: 22, scope: !96)
!96 = distinct !DILexicalBlock(scope: !84, file: !1, line: 28, column: 2)
!97 = !DILocation(line: 28, column: 26, scope: !96)
!98 = !DILocation(line: 28, column: 24, scope: !96)
!99 = !DILocation(line: 28, column: 2, scope: !84)
!100 = !DILocation(line: 28, column: 2, scope: !96)
!101 = !DILocation(line: 29, column: 3, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !1, line: 28, column: 39)
!103 = !DILocation(line: 29, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !1, line: 29, column: 3)
!105 = !DILocation(line: 30, column: 12, scope: !102)
!106 = !DILocation(line: 30, column: 18, scope: !102)
!107 = !DILocation(line: 30, column: 21, scope: !102)
!108 = !DILocation(line: 30, column: 33, scope: !102)
!109 = !DILocation(line: 30, column: 4, scope: !102)
!110 = !DILocation(line: 30, column: 9, scope: !102)
!111 = !DILocation(line: 31, column: 2, scope: !102)
!112 = !DILocation(line: 28, column: 35, scope: !96)
!113 = distinct !{!113, !99, !114, !115}
!114 = !DILocation(line: 31, column: 2, scope: !84)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !DILocation(line: 37, column: 3, scope: !71)
!117 = !DILocation(line: 37, column: 13, scope: !71)
!118 = !DILocation(line: 38, column: 1, scope: !71)
!119 = distinct !DISubprogram(name: "je_cache_bin_preincrement", scope: !1, file: !1, line: 41, type: !120, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !34, !74, !16, !77}
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(name: "infos", arg: 1, scope: !119, file: !1, line: 41, type: !34)
!124 = !DILocalVariable(name: "ninfos", arg: 2, scope: !119, file: !1, line: 41, type: !74)
!125 = !DILocalVariable(name: "alloc", arg: 3, scope: !119, file: !1, line: 41, type: !16)
!126 = !DILocalVariable(name: "cur_offset", arg: 4, scope: !119, file: !1, line: 42, type: !77)
!127 = !DILocation(line: 41, column: 42, scope: !119)
!128 = !DILocation(line: 41, column: 57, scope: !119)
!129 = !DILocation(line: 41, column: 71, scope: !119)
!130 = !DILocation(line: 42, column: 13, scope: !119)
!131 = !DILocation(line: 53, column: 28, scope: !119)
!132 = !DILocation(line: 53, column: 17, scope: !119)
!133 = !DILocation(line: 53, column: 37, scope: !119)
!134 = !DILocation(line: 53, column: 36, scope: !119)
!135 = !DILocation(line: 53, column: 34, scope: !119)
!136 = !DILocation(line: 53, column: 3, scope: !119)
!137 = !DILocation(line: 53, column: 49, scope: !119)
!138 = !DILocation(line: 55, column: 3, scope: !119)
!139 = !DILocation(line: 55, column: 14, scope: !119)
!140 = !DILocation(line: 56, column: 1, scope: !119)
!141 = distinct !DISubprogram(name: "je_cache_bin_postincrement", scope: !1, file: !1, line: 59, type: !120, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DILocalVariable(name: "infos", arg: 1, scope: !141, file: !1, line: 59, type: !34)
!144 = !DILocalVariable(name: "ninfos", arg: 2, scope: !141, file: !1, line: 59, type: !74)
!145 = !DILocalVariable(name: "alloc", arg: 3, scope: !141, file: !1, line: 59, type: !16)
!146 = !DILocalVariable(name: "cur_offset", arg: 4, scope: !141, file: !1, line: 60, type: !77)
!147 = !DILocation(line: 59, column: 43, scope: !141)
!148 = !DILocation(line: 59, column: 58, scope: !141)
!149 = !DILocation(line: 59, column: 72, scope: !141)
!150 = !DILocation(line: 60, column: 13, scope: !141)
!151 = !DILocation(line: 61, column: 28, scope: !141)
!152 = !DILocation(line: 61, column: 17, scope: !141)
!153 = !DILocation(line: 61, column: 37, scope: !141)
!154 = !DILocation(line: 61, column: 36, scope: !141)
!155 = !DILocation(line: 61, column: 34, scope: !141)
!156 = !DILocation(line: 61, column: 3, scope: !141)
!157 = !DILocation(line: 61, column: 49, scope: !141)
!158 = !DILocation(line: 63, column: 3, scope: !141)
!159 = !DILocation(line: 63, column: 14, scope: !141)
!160 = !DILocation(line: 64, column: 1, scope: !141)
!161 = distinct !DISubprogram(name: "je_cache_bin_init", scope: !1, file: !1, line: 67, type: !162, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !179)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164, !34, !16, !77}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_t", file: !7, line: 81, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_s", file: !7, line: 82, size: 192, elements: !167)
!167 = !{!168, !169, !176, !177, !178}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_head", scope: !166, file: !7, line: 88, baseType: !17, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tstats", scope: !166, file: !7, line: 94, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_stats_t", file: !7, line: 49, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_stats_s", file: !7, line: 50, size: 64, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !171, file: !7, line: 55, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 27, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !11, line: 45, baseType: !5)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "low_bits_low_water", scope: !166, file: !7, line: 104, baseType: !8, size: 16, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "low_bits_full", scope: !166, file: !7, line: 115, baseType: !8, size: 16, offset: 144)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "low_bits_empty", scope: !166, file: !7, line: 124, baseType: !8, size: 16, offset: 160)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188}
!180 = !DILocalVariable(name: "bin", arg: 1, scope: !161, file: !1, line: 67, type: !164)
!181 = !DILocalVariable(name: "info", arg: 2, scope: !161, file: !1, line: 67, type: !34)
!182 = !DILocalVariable(name: "alloc", arg: 3, scope: !161, file: !1, line: 67, type: !16)
!183 = !DILocalVariable(name: "cur_offset", arg: 4, scope: !161, file: !1, line: 68, type: !77)
!184 = !DILocalVariable(name: "stack_cur", scope: !161, file: !1, line: 74, type: !16)
!185 = !DILocalVariable(name: "full_position", scope: !161, file: !1, line: 75, type: !16)
!186 = !DILocalVariable(name: "bin_stack_size", scope: !161, file: !1, line: 76, type: !8)
!187 = !DILocalVariable(name: "empty_position", scope: !161, file: !1, line: 79, type: !16)
!188 = !DILocalVariable(name: "free_spots", scope: !161, file: !1, line: 86, type: !6)
!189 = !DILocation(line: 67, column: 29, scope: !161)
!190 = !DILocation(line: 67, column: 52, scope: !161)
!191 = !DILocation(line: 67, column: 64, scope: !161)
!192 = !DILocation(line: 68, column: 13, scope: !161)
!193 = !DILocation(line: 74, column: 2, scope: !161)
!194 = !DILocation(line: 74, column: 8, scope: !161)
!195 = !DILocation(line: 74, column: 40, scope: !161)
!196 = !DILocation(line: 74, column: 29, scope: !161)
!197 = !DILocation(line: 74, column: 49, scope: !161)
!198 = !DILocation(line: 74, column: 48, scope: !161)
!199 = !DILocation(line: 74, column: 46, scope: !161)
!200 = !DILocation(line: 74, column: 20, scope: !161)
!201 = !DILocation(line: 75, column: 2, scope: !161)
!202 = !DILocation(line: 75, column: 8, scope: !161)
!203 = !DILocation(line: 75, column: 24, scope: !161)
!204 = !DILocation(line: 76, column: 2, scope: !161)
!205 = !DILocation(line: 76, column: 11, scope: !161)
!206 = !DILocation(line: 76, column: 28, scope: !161)
!207 = !DILocation(line: 76, column: 34, scope: !161)
!208 = !DILocation(line: 76, column: 46, scope: !161)
!209 = !DILocation(line: 78, column: 17, scope: !161)
!210 = !DILocation(line: 78, column: 3, scope: !161)
!211 = !DILocation(line: 78, column: 14, scope: !161)
!212 = !DILocation(line: 79, column: 2, scope: !161)
!213 = !DILocation(line: 79, column: 8, scope: !161)
!214 = !DILocation(line: 79, column: 45, scope: !161)
!215 = !DILocation(line: 79, column: 34, scope: !161)
!216 = !DILocation(line: 79, column: 54, scope: !161)
!217 = !DILocation(line: 79, column: 53, scope: !161)
!218 = !DILocation(line: 79, column: 51, scope: !161)
!219 = !DILocation(line: 79, column: 25, scope: !161)
!220 = !DILocation(line: 82, column: 29, scope: !161)
!221 = !DILocation(line: 82, column: 2, scope: !161)
!222 = !DILocation(line: 82, column: 7, scope: !161)
!223 = !DILocation(line: 82, column: 18, scope: !161)
!224 = !{!225, !44, i64 0}
!225 = !{!"cache_bin_s", !44, i64 0, !226, i64 8, !49, i64 16, !49, i64 18, !49, i64 20}
!226 = !{!"cache_bin_stats_s", !60, i64 0}
!227 = !DILocation(line: 83, column: 49, scope: !161)
!228 = !DILocation(line: 83, column: 54, scope: !161)
!229 = !DILocation(line: 83, column: 38, scope: !161)
!230 = !DILocation(line: 83, column: 28, scope: !161)
!231 = !DILocation(line: 83, column: 2, scope: !161)
!232 = !DILocation(line: 83, column: 7, scope: !161)
!233 = !DILocation(line: 83, column: 26, scope: !161)
!234 = !{!225, !49, i64 16}
!235 = !DILocation(line: 84, column: 44, scope: !161)
!236 = !DILocation(line: 84, column: 33, scope: !161)
!237 = !DILocation(line: 84, column: 23, scope: !161)
!238 = !DILocation(line: 84, column: 2, scope: !161)
!239 = !DILocation(line: 84, column: 7, scope: !161)
!240 = !DILocation(line: 84, column: 21, scope: !161)
!241 = !{!225, !49, i64 18}
!242 = !DILocation(line: 85, column: 45, scope: !161)
!243 = !DILocation(line: 85, column: 34, scope: !161)
!244 = !DILocation(line: 85, column: 24, scope: !161)
!245 = !DILocation(line: 85, column: 2, scope: !161)
!246 = !DILocation(line: 85, column: 7, scope: !161)
!247 = !DILocation(line: 85, column: 22, scope: !161)
!248 = !{!225, !49, i64 20}
!249 = !DILocation(line: 86, column: 2, scope: !161)
!250 = !DILocation(line: 86, column: 17, scope: !161)
!251 = !DILocation(line: 86, column: 45, scope: !161)
!252 = !DILocation(line: 87, column: 6, scope: !161)
!253 = !DILocation(line: 87, column: 11, scope: !161)
!254 = !DILocation(line: 87, column: 47, scope: !161)
!255 = !DILocation(line: 87, column: 52, scope: !161)
!256 = !DILocation(line: 87, column: 36, scope: !161)
!257 = !DILocation(line: 87, column: 26, scope: !161)
!258 = !DILocation(line: 86, column: 30, scope: !161)
!259 = !DILocation(line: 89, column: 2, scope: !161)
!260 = !DILocation(line: 89, column: 2, scope: !261)
!261 = distinct !DILexicalBlock(scope: !161, file: !1, line: 89, column: 2)
!262 = !DILocation(line: 90, column: 2, scope: !161)
!263 = !DILocation(line: 90, column: 2, scope: !264)
!264 = distinct !DILexicalBlock(scope: !161, file: !1, line: 90, column: 2)
!265 = !DILocation(line: 91, column: 2, scope: !161)
!266 = !DILocation(line: 91, column: 2, scope: !267)
!267 = distinct !DILexicalBlock(scope: !161, file: !1, line: 91, column: 2)
!268 = !DILocation(line: 93, column: 2, scope: !161)
!269 = !DILocation(line: 93, column: 2, scope: !270)
!270 = distinct !DILexicalBlock(scope: !161, file: !1, line: 93, column: 2)
!271 = !DILocation(line: 94, column: 1, scope: !161)
!272 = distinct !DISubprogram(name: "cache_bin_diff", scope: !7, file: !7, line: 197, type: !273, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!273 = !DISubroutineType(types: !274)
!274 = !{!8, !164, !8, !8, !275}
!275 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!276 = !{!277, !278, !279, !280}
!277 = !DILocalVariable(name: "bin", arg: 1, scope: !272, file: !7, line: 197, type: !164)
!278 = !DILocalVariable(name: "earlier", arg: 2, scope: !272, file: !7, line: 197, type: !8)
!279 = !DILocalVariable(name: "later", arg: 3, scope: !272, file: !7, line: 197, type: !8)
!280 = !DILocalVariable(name: "racy", arg: 4, scope: !272, file: !7, line: 197, type: !275)
!281 = !DILocation(line: 197, column: 29, scope: !272)
!282 = !DILocation(line: 197, column: 43, scope: !272)
!283 = !DILocation(line: 197, column: 61, scope: !272)
!284 = !{!285, !285, i64 0}
!285 = !{!"_Bool", !45, i64 0}
!286 = !DILocation(line: 197, column: 73, scope: !272)
!287 = !DILocation(line: 203, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !272, file: !7, line: 203, column: 6)
!289 = !{i8 0, i8 2}
!290 = !{}
!291 = !DILocation(line: 203, column: 6, scope: !272)
!292 = !DILocation(line: 204, column: 28, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !7, line: 203, column: 13)
!294 = !DILocation(line: 204, column: 33, scope: !293)
!295 = !DILocation(line: 204, column: 42, scope: !293)
!296 = !DILocation(line: 204, column: 3, scope: !293)
!297 = !DILocation(line: 205, column: 2, scope: !293)
!298 = !DILocation(line: 206, column: 9, scope: !272)
!299 = !DILocation(line: 206, column: 17, scope: !272)
!300 = !DILocation(line: 206, column: 15, scope: !272)
!301 = !DILocation(line: 206, column: 2, scope: !272)
!302 = distinct !DISubprogram(name: "je_cache_bin_still_zero_initialized", scope: !1, file: !1, line: 97, type: !303, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{!275, !164}
!305 = !{!306}
!306 = !DILocalVariable(name: "bin", arg: 1, scope: !302, file: !1, line: 97, type: !164)
!307 = !DILocation(line: 97, column: 47, scope: !302)
!308 = !DILocation(line: 98, column: 9, scope: !302)
!309 = !DILocation(line: 98, column: 14, scope: !302)
!310 = !DILocation(line: 98, column: 25, scope: !302)
!311 = !DILocation(line: 98, column: 2, scope: !302)
!312 = distinct !DISubprogram(name: "cache_bin_assert_earlier", scope: !7, file: !7, line: 184, type: !313, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !164, !8, !8}
!315 = !{!316, !317, !318}
!316 = !DILocalVariable(name: "bin", arg: 1, scope: !312, file: !7, line: 184, type: !164)
!317 = !DILocalVariable(name: "earlier", arg: 2, scope: !312, file: !7, line: 184, type: !8)
!318 = !DILocalVariable(name: "later", arg: 3, scope: !312, file: !7, line: 184, type: !8)
!319 = !DILocation(line: 184, column: 39, scope: !312)
!320 = !DILocation(line: 184, column: 53, scope: !312)
!321 = !DILocation(line: 184, column: 71, scope: !312)
!322 = !DILocation(line: 185, column: 6, scope: !323)
!323 = distinct !DILexicalBlock(scope: !312, file: !7, line: 185, column: 6)
!324 = !DILocation(line: 185, column: 16, scope: !323)
!325 = !DILocation(line: 185, column: 14, scope: !323)
!326 = !DILocation(line: 185, column: 6, scope: !312)
!327 = !DILocation(line: 186, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !7, line: 185, column: 23)
!329 = !DILocation(line: 186, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !328, file: !7, line: 186, column: 3)
!331 = !DILocation(line: 187, column: 2, scope: !328)
!332 = !DILocation(line: 188, column: 1, scope: !312)

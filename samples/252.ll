; ModuleID = 'samples/252.bc'
source_filename = "datastruct/pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucs_global_opts_t = type { %struct.ucs_log_component_config, ptr, i64, i32, i64, i64, i32, i32, i32, %struct.anon, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64, i32, ptr, i64, i32, ptr, i64, %struct.ucs_config_names_array_t, i32, %struct.ucs_config_names_array_t, i32, i32, ptr, i32, %struct.ucs_config_allow_list_t, %struct.ucs_arch_global_opts, i32, i64, i64 }
%struct.ucs_log_component_config = type { i32, [16 x i8], ptr }
%struct.anon = type { ptr, i32, i32 }
%struct.ucs_config_names_array_t = type { ptr, i32, i32 }
%struct.ucs_config_allow_list_t = type { %struct.ucs_config_names_array_t, i32 }
%struct.ucs_arch_global_opts = type { i64, i64 }
%struct.ucs_pgtable = type { %struct.ucs_pgt_entry, i64, i64, i32, i32, ptr, ptr }
%struct.ucs_pgt_entry = type { i64 }
%struct.ucs_pgt_region = type { i64, i64 }
%struct.ucs_pgt_dir = type { [16 x %struct.ucs_pgt_entry], i32 }

@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"insert\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [7 x i8] c"remove\00", align 1, !dbg !12
@ucs_global_opts = external global %struct.ucs_global_opts_t, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"datastruct/pgtable.c\00", align 1, !dbg !14
@__func__.ucs_pgtable_purge = private unnamed_addr constant [18 x i8] c"ucs_pgtable_purge\00", align 1, !dbg !19
@.str.4 = private unnamed_addr constant [23 x i8] c"purge empty page table\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [18 x i8] c"pgt_purge_regions\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [59 x i8] c"failed to allocate array to collect all regions, will leak\00", align 1, !dbg !33
@.str.7 = private unnamed_addr constant [49 x i8] c"failed to remove pgtable region%p [0x%lx..0x%lx]\00", align 1, !dbg !38
@__func__.ucs_pgtable_cleanup = private unnamed_addr constant [20 x i8] c"ucs_pgtable_cleanup\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [36 x i8] c"page table not empty during cleanup\00", align 1, !dbg !48
@__func__.ucs_pgtable_log = private unnamed_addr constant [16 x i8] c"ucs_pgtable_log\00", align 1, !dbg !53
@.str.9 = private unnamed_addr constant [50 x i8] c"pgtable %p %s: base 0x%lx/0x%lx shift %u count %u\00", align 1, !dbg !58
@__func__.ucs_pgt_entry_dump_recurs = private unnamed_addr constant [26 x i8] c"ucs_pgt_entry_dump_recurs\00", align 1, !dbg !63
@.str.10 = private unnamed_addr constant [34 x i8] c"%*s[%3u] region %p [0x%lx..0x%lx]\00", align 1, !dbg !68
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !73
@.str.12 = private unnamed_addr constant [65 x i8] c"%*s[%3u] dir %p for [0x%lx..0x%lx], count %u shift %u mask 0x%lx\00", align 1, !dbg !78
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !83
@.str.14 = private unnamed_addr constant [21 x i8] c"%*s[%3u] not present\00", align 1, !dbg !88
@.str.15 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1, !dbg !90
@.str.16 = private unnamed_addr constant [7 x i8] c"expand\00", align 1, !dbg !95
@__FUNCTION__.ucs_pgt_dir_alloc = private unnamed_addr constant [18 x i8] c"ucs_pgt_dir_alloc\00", align 1, !dbg !97
@.str.17 = private unnamed_addr constant [47 x i8] c"Fatal: Failed to allocate page table directory\00", align 1, !dbg !99
@.str.18 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1, !dbg !104

; Function Attrs: nounwind uwtable
define void @ucs_pgtable_dump(ptr noundef %pgtable, i32 noundef %log_level) #0 !dbg !208 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %log_level.addr = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !232, metadata !DIExpression()), !dbg !238
  store i32 %log_level, ptr %log_level.addr, align 4, !tbaa !239
  tail call void @llvm.dbg.declare(metadata ptr %log_level.addr, metadata !233, metadata !DIExpression()), !dbg !240
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !241, !tbaa !234
  %1 = load i32, ptr %log_level.addr, align 4, !dbg !242, !tbaa !239
  call void @ucs_pgtable_log(ptr noundef %0, i32 noundef %1, ptr noundef @.str), !dbg !243
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !244, !tbaa !234
  %3 = load ptr, ptr %pgtable.addr, align 8, !dbg !245, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %3, i32 0, i32 0, !dbg !246
  %4 = load ptr, ptr %pgtable.addr, align 8, !dbg !247, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %4, i32 0, i32 1, !dbg !248
  %5 = load i64, ptr %base, align 8, !dbg !248, !tbaa !249
  %6 = load ptr, ptr %pgtable.addr, align 8, !dbg !254, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %6, i32 0, i32 2, !dbg !255
  %7 = load i64, ptr %mask, align 8, !dbg !255, !tbaa !256
  %8 = load ptr, ptr %pgtable.addr, align 8, !dbg !257, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %8, i32 0, i32 3, !dbg !258
  %9 = load i32, ptr %shift, align 8, !dbg !258, !tbaa !259
  %10 = load i32, ptr %log_level.addr, align 4, !dbg !260, !tbaa !239
  call void @ucs_pgt_entry_dump_recurs(ptr noundef %2, i32 noundef 0, ptr noundef %root, i32 noundef 0, i64 noundef %5, i64 noundef %7, i32 noundef %9, i32 noundef %10), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: nounwind uwtable
define internal void @ucs_pgtable_log(ptr noundef %pgtable, i32 noundef %log_level, ptr noundef %message) #0 !dbg !263 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %log_level.addr = alloca i32, align 4
  %message.addr = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !267, metadata !DIExpression()), !dbg !270
  store i32 %log_level, ptr %log_level.addr, align 4, !tbaa !239
  tail call void @llvm.dbg.declare(metadata ptr %log_level.addr, metadata !268, metadata !DIExpression()), !dbg !271
  store ptr %message, ptr %message.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !269, metadata !DIExpression()), !dbg !272
  br label %do.body, !dbg !273

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !274

do.body1:                                         ; preds = %do.body
  %0 = load i32, ptr %log_level.addr, align 4, !dbg !276, !tbaa !239
  %cmp = icmp ule i32 %0, 5, !dbg !276
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !276

land.rhs:                                         ; preds = %do.body1
  %1 = load i32, ptr %log_level.addr, align 4, !dbg !276, !tbaa !239
  %2 = load i32, ptr @ucs_global_opts, align 8, !dbg !276, !tbaa !279
  %cmp2 = icmp ule i32 %1, %2, !dbg !276
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body1
  %3 = phi i1 [ false, %do.body1 ], [ %cmp2, %land.rhs ], !dbg !281
  %land.ext = zext i1 %3 to i32, !dbg !276
  %conv = sext i32 %land.ext to i64, !dbg !276
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !276
  %tobool = icmp ne i64 %expval, 0, !dbg !276
  br i1 %tobool, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %land.end
  %4 = load i32, ptr %log_level.addr, align 4, !dbg !283, !tbaa !239
  %5 = load ptr, ptr %pgtable.addr, align 8, !dbg !283, !tbaa !234
  %6 = load ptr, ptr %message.addr, align 8, !dbg !283, !tbaa !234
  %7 = load ptr, ptr %pgtable.addr, align 8, !dbg !283, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %7, i32 0, i32 1, !dbg !283
  %8 = load i64, ptr %base, align 8, !dbg !283, !tbaa !249
  %9 = load ptr, ptr %pgtable.addr, align 8, !dbg !283, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %9, i32 0, i32 2, !dbg !283
  %10 = load i64, ptr %mask, align 8, !dbg !283, !tbaa !256
  %11 = load ptr, ptr %pgtable.addr, align 8, !dbg !283, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %11, i32 0, i32 3, !dbg !283
  %12 = load i32, ptr %shift, align 8, !dbg !283, !tbaa !259
  %13 = load ptr, ptr %pgtable.addr, align 8, !dbg !283, !tbaa !234
  %num_regions = getelementptr inbounds %struct.ucs_pgtable, ptr %13, i32 0, i32 4, !dbg !283
  %14 = load i32, ptr %num_regions, align 4, !dbg !283, !tbaa !285
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 131, ptr noundef @__func__.ucs_pgtable_log, i32 noundef %4, ptr noundef @ucs_global_opts, ptr noundef @.str.9, ptr noundef %5, ptr noundef %6, i64 noundef %8, i64 noundef %10, i32 noundef %12, i32 noundef %14), !dbg !283
  br label %if.end, !dbg !283

if.end:                                           ; preds = %if.then, %land.end
  br label %do.end, !dbg !282

do.end:                                           ; preds = %if.end
  br label %do.end3, !dbg !274

do.end3:                                          ; preds = %do.end
  ret void, !dbg !286
}

; Function Attrs: nounwind uwtable
define internal void @ucs_pgt_entry_dump_recurs(ptr noundef %pgtable, i32 noundef %indent, ptr noundef %pte, i32 noundef %pte_index, i64 noundef %base, i64 noundef %mask, i32 noundef %shift, i32 noundef %log_level) #0 !dbg !287 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  %pte.addr = alloca ptr, align 8
  %pte_index.addr = alloca i32, align 4
  %base.addr = alloca i64, align 8
  %mask.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  %log_level.addr = alloca i32, align 4
  %region = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %i = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !293, metadata !DIExpression()), !dbg !306
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %indent.addr, metadata !294, metadata !DIExpression()), !dbg !308
  store ptr %pte, ptr %pte.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !295, metadata !DIExpression()), !dbg !309
  store i32 %pte_index, ptr %pte_index.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %pte_index.addr, metadata !296, metadata !DIExpression()), !dbg !310
  store i64 %base, ptr %base.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !297, metadata !DIExpression()), !dbg !312
  store i64 %mask, ptr %mask.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !298, metadata !DIExpression()), !dbg !313
  store i32 %shift, ptr %shift.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !299, metadata !DIExpression()), !dbg !314
  store i32 %log_level, ptr %log_level.addr, align 4, !tbaa !239
  tail call void @llvm.dbg.declare(metadata ptr %log_level.addr, metadata !300, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #11, !dbg !316
  tail call void @llvm.dbg.declare(metadata ptr %region, metadata !301, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !318
  tail call void @llvm.dbg.declare(metadata ptr %pgd, metadata !302, metadata !DIExpression()), !dbg !319
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !320
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !303, metadata !DIExpression()), !dbg !321
  %0 = load ptr, ptr %pte.addr, align 8, !dbg !322, !tbaa !234
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %0, i32 0, i32 0, !dbg !322
  %1 = load i64, ptr %value, align 8, !dbg !322, !tbaa !324
  %and = and i64 %1, 1, !dbg !322
  %tobool = icmp ne i64 %and, 0, !dbg !322
  br i1 %tobool, label %if.then, label %if.else, !dbg !325

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pte.addr, align 8, !dbg !326, !tbaa !234
  %value1 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %2, i32 0, i32 0, !dbg !326
  %3 = load i64, ptr %value1, align 8, !dbg !326, !tbaa !324
  %and2 = and i64 %3, -4, !dbg !326
  %4 = inttoptr i64 %and2 to ptr, !dbg !326
  store ptr %4, ptr %region, align 8, !dbg !328, !tbaa !234
  br label %do.body, !dbg !329

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !330

do.body3:                                         ; preds = %do.body
  %5 = load i32, ptr %log_level.addr, align 4, !dbg !332, !tbaa !239
  %cmp = icmp ule i32 %5, 5, !dbg !332
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !332

land.rhs:                                         ; preds = %do.body3
  %6 = load i32, ptr %log_level.addr, align 4, !dbg !332, !tbaa !239
  %7 = load i32, ptr @ucs_global_opts, align 8, !dbg !332, !tbaa !279
  %cmp4 = icmp ule i32 %6, %7, !dbg !332
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body3
  %8 = phi i1 [ false, %do.body3 ], [ %cmp4, %land.rhs ], !dbg !335
  %land.ext = zext i1 %8 to i32, !dbg !332
  %conv = sext i32 %land.ext to i64, !dbg !332
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !332
  %tobool5 = icmp ne i64 %expval, 0, !dbg !332
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !336

if.then6:                                         ; preds = %land.end
  %9 = load i32, ptr %log_level.addr, align 4, !dbg !337, !tbaa !239
  %10 = load i32, ptr %indent.addr, align 4, !dbg !337, !tbaa !307
  %11 = load i32, ptr %pte_index.addr, align 4, !dbg !337, !tbaa !307
  %12 = load ptr, ptr %region, align 8, !dbg !337, !tbaa !234
  %13 = load ptr, ptr %region, align 8, !dbg !337, !tbaa !234
  %start = getelementptr inbounds %struct.ucs_pgt_region, ptr %13, i32 0, i32 0, !dbg !337
  %14 = load i64, ptr %start, align 8, !dbg !337, !tbaa !339
  %15 = load ptr, ptr %region, align 8, !dbg !337, !tbaa !234
  %end = getelementptr inbounds %struct.ucs_pgt_region, ptr %15, i32 0, i32 1, !dbg !337
  %16 = load i64, ptr %end, align 8, !dbg !337, !tbaa !341
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 108, ptr noundef @__func__.ucs_pgt_entry_dump_recurs, i32 noundef %9, ptr noundef @ucs_global_opts, ptr noundef @.str.10, i32 noundef %10, ptr noundef @.str.11, i32 noundef %11, ptr noundef %12, i64 noundef %14, i64 noundef %16), !dbg !337
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then6, %land.end
  br label %do.cond, !dbg !336

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !336

do.end:                                           ; preds = %do.cond
  br label %do.cond7, !dbg !330

do.cond7:                                         ; preds = %do.end
  br label %do.end8, !dbg !330

do.end8:                                          ; preds = %do.cond7
  br label %if.end64, !dbg !342

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %pte.addr, align 8, !dbg !343, !tbaa !234
  %value9 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %17, i32 0, i32 0, !dbg !343
  %18 = load i64, ptr %value9, align 8, !dbg !343, !tbaa !324
  %and10 = and i64 %18, 2, !dbg !343
  %tobool11 = icmp ne i64 %and10, 0, !dbg !343
  br i1 %tobool11, label %if.then12, label %if.else44, !dbg !345

if.then12:                                        ; preds = %if.else
  %19 = load ptr, ptr %pte.addr, align 8, !dbg !346, !tbaa !234
  %value13 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %19, i32 0, i32 0, !dbg !346
  %20 = load i64, ptr %value13, align 8, !dbg !346, !tbaa !324
  %and14 = and i64 %20, -4, !dbg !346
  %21 = inttoptr i64 %and14 to ptr, !dbg !346
  store ptr %21, ptr %tmp, align 8, !dbg !349, !tbaa !234
  %22 = load ptr, ptr %tmp, align 8, !dbg !346, !tbaa !234
  store ptr %22, ptr %pgd, align 8, !dbg !350, !tbaa !234
  br label %do.body15, !dbg !351

do.body15:                                        ; preds = %if.then12
  br label %do.body16, !dbg !352

do.body16:                                        ; preds = %do.body15
  %23 = load i32, ptr %log_level.addr, align 4, !dbg !354, !tbaa !239
  %cmp17 = icmp ule i32 %23, 5, !dbg !354
  br i1 %cmp17, label %land.rhs19, label %land.end22, !dbg !354

land.rhs19:                                       ; preds = %do.body16
  %24 = load i32, ptr %log_level.addr, align 4, !dbg !354, !tbaa !239
  %25 = load i32, ptr @ucs_global_opts, align 8, !dbg !354, !tbaa !279
  %cmp20 = icmp ule i32 %24, %25, !dbg !354
  br label %land.end22

land.end22:                                       ; preds = %land.rhs19, %do.body16
  %26 = phi i1 [ false, %do.body16 ], [ %cmp20, %land.rhs19 ], !dbg !357
  %land.ext23 = zext i1 %26 to i32, !dbg !354
  %conv24 = sext i32 %land.ext23 to i64, !dbg !354
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !354
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !354
  br i1 %tobool26, label %if.then27, label %if.end30, !dbg !358

if.then27:                                        ; preds = %land.end22
  %27 = load i32, ptr %log_level.addr, align 4, !dbg !359, !tbaa !239
  %28 = load i32, ptr %indent.addr, align 4, !dbg !359, !tbaa !307
  %29 = load i32, ptr %pte_index.addr, align 4, !dbg !359, !tbaa !307
  %30 = load ptr, ptr %pgd, align 8, !dbg !359, !tbaa !234
  %31 = load i64, ptr %base.addr, align 8, !dbg !359, !tbaa !311
  %32 = load i64, ptr %base.addr, align 8, !dbg !359, !tbaa !311
  %33 = load i32, ptr %shift.addr, align 4, !dbg !359, !tbaa !307
  %shl = shl i32 1, %33, !dbg !359
  %conv28 = sext i32 %shl to i64, !dbg !359
  %add = add i64 %32, %conv28, !dbg !359
  %34 = load i64, ptr %mask.addr, align 8, !dbg !359, !tbaa !311
  %and29 = and i64 %add, %34, !dbg !359
  %35 = load ptr, ptr %pgd, align 8, !dbg !359, !tbaa !234
  %count = getelementptr inbounds %struct.ucs_pgt_dir, ptr %35, i32 0, i32 1, !dbg !359
  %36 = load i32, ptr %count, align 8, !dbg !359, !tbaa !361
  %37 = load i32, ptr %shift.addr, align 4, !dbg !359, !tbaa !307
  %38 = load i64, ptr %mask.addr, align 8, !dbg !359, !tbaa !311
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 113, ptr noundef @__func__.ucs_pgt_entry_dump_recurs, i32 noundef %27, ptr noundef @ucs_global_opts, ptr noundef @.str.12, i32 noundef %28, ptr noundef @.str.13, i32 noundef %29, ptr noundef %30, i64 noundef %31, i64 noundef %and29, i32 noundef %36, i32 noundef %37, i64 noundef %38), !dbg !359
  br label %if.end30, !dbg !359

if.end30:                                         ; preds = %if.then27, %land.end22
  br label %do.cond31, !dbg !358

do.cond31:                                        ; preds = %if.end30
  br label %do.end32, !dbg !358

do.end32:                                         ; preds = %do.cond31
  br label %do.cond33, !dbg !352

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !352

do.end34:                                         ; preds = %do.cond33
  %39 = load i32, ptr %shift.addr, align 4, !dbg !363, !tbaa !307
  %sub = sub i32 %39, 4, !dbg !363
  store i32 %sub, ptr %shift.addr, align 4, !dbg !363, !tbaa !307
  %40 = load i32, ptr %shift.addr, align 4, !dbg !364, !tbaa !307
  %sh_prom = zext i32 %40 to i64, !dbg !365
  %shl35 = shl i64 15, %sh_prom, !dbg !365
  %41 = load i64, ptr %mask.addr, align 8, !dbg !366, !tbaa !311
  %or = or i64 %41, %shl35, !dbg !366
  store i64 %or, ptr %mask.addr, align 8, !dbg !366, !tbaa !311
  store i64 0, ptr %i, align 8, !dbg !367, !tbaa !311
  br label %for.cond, !dbg !369

for.cond:                                         ; preds = %for.inc, %do.end34
  %42 = load i64, ptr %i, align 8, !dbg !370, !tbaa !311
  %cmp36 = icmp ult i64 %42, 16, !dbg !372
  br i1 %cmp36, label %for.body, label %for.end, !dbg !373

for.body:                                         ; preds = %for.cond
  %43 = load ptr, ptr %pgtable.addr, align 8, !dbg !374, !tbaa !234
  %44 = load i32, ptr %indent.addr, align 4, !dbg !376, !tbaa !307
  %add38 = add i32 %44, 2, !dbg !377
  %45 = load ptr, ptr %pgd, align 8, !dbg !378, !tbaa !234
  %entries = getelementptr inbounds %struct.ucs_pgt_dir, ptr %45, i32 0, i32 0, !dbg !379
  %46 = load i64, ptr %i, align 8, !dbg !380, !tbaa !311
  %arrayidx = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries, i64 0, i64 %46, !dbg !378
  %47 = load i64, ptr %i, align 8, !dbg !381, !tbaa !311
  %conv39 = trunc i64 %47 to i32, !dbg !381
  %48 = load i64, ptr %base.addr, align 8, !dbg !382, !tbaa !311
  %49 = load i64, ptr %i, align 8, !dbg !383, !tbaa !311
  %50 = load i32, ptr %shift.addr, align 4, !dbg !384, !tbaa !307
  %sh_prom40 = zext i32 %50 to i64, !dbg !385
  %shl41 = shl i64 %49, %sh_prom40, !dbg !385
  %or42 = or i64 %48, %shl41, !dbg !386
  %51 = load i64, ptr %mask.addr, align 8, !dbg !387, !tbaa !311
  %52 = load i32, ptr %shift.addr, align 4, !dbg !388, !tbaa !307
  %53 = load i32, ptr %log_level.addr, align 4, !dbg !389, !tbaa !239
  call void @ucs_pgt_entry_dump_recurs(ptr noundef %43, i32 noundef %add38, ptr noundef %arrayidx, i32 noundef %conv39, i64 noundef %or42, i64 noundef %51, i32 noundef %52, i32 noundef %53), !dbg !390
  %54 = load i64, ptr %base.addr, align 8, !dbg !391, !tbaa !311
  %inc = add i64 %54, 1, !dbg !391
  store i64 %inc, ptr %base.addr, align 8, !dbg !391, !tbaa !311
  br label %for.inc, !dbg !392

for.inc:                                          ; preds = %for.body
  %55 = load i64, ptr %i, align 8, !dbg !393, !tbaa !311
  %inc43 = add i64 %55, 1, !dbg !393
  store i64 %inc43, ptr %i, align 8, !dbg !393, !tbaa !311
  br label %for.cond, !dbg !394, !llvm.loop !395

for.end:                                          ; preds = %for.cond
  br label %if.end63, !dbg !398

if.else44:                                        ; preds = %if.else
  br label %do.body45, !dbg !399

do.body45:                                        ; preds = %if.else44
  br label %do.body46, !dbg !401

do.body46:                                        ; preds = %do.body45
  %56 = load i32, ptr %log_level.addr, align 4, !dbg !403, !tbaa !239
  %cmp47 = icmp ule i32 %56, 5, !dbg !403
  br i1 %cmp47, label %land.rhs49, label %land.end52, !dbg !403

land.rhs49:                                       ; preds = %do.body46
  %57 = load i32, ptr %log_level.addr, align 4, !dbg !403, !tbaa !239
  %58 = load i32, ptr @ucs_global_opts, align 8, !dbg !403, !tbaa !279
  %cmp50 = icmp ule i32 %57, %58, !dbg !403
  br label %land.end52

land.end52:                                       ; preds = %land.rhs49, %do.body46
  %59 = phi i1 [ false, %do.body46 ], [ %cmp50, %land.rhs49 ], !dbg !406
  %land.ext53 = zext i1 %59 to i32, !dbg !403
  %conv54 = sext i32 %land.ext53 to i64, !dbg !403
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !403
  %tobool56 = icmp ne i64 %expval55, 0, !dbg !403
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !407

if.then57:                                        ; preds = %land.end52
  %60 = load i32, ptr %log_level.addr, align 4, !dbg !408, !tbaa !239
  %61 = load i32, ptr %indent.addr, align 4, !dbg !408, !tbaa !307
  %62 = load i32, ptr %pte_index.addr, align 4, !dbg !408, !tbaa !307
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 122, ptr noundef @__func__.ucs_pgt_entry_dump_recurs, i32 noundef %60, ptr noundef @ucs_global_opts, ptr noundef @.str.14, i32 noundef %61, ptr noundef @.str.13, i32 noundef %62), !dbg !408
  br label %if.end58, !dbg !408

if.end58:                                         ; preds = %if.then57, %land.end52
  br label %do.cond59, !dbg !407

do.cond59:                                        ; preds = %if.end58
  br label %do.end60, !dbg !407

do.end60:                                         ; preds = %do.cond59
  br label %do.cond61, !dbg !401

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !401

do.end62:                                         ; preds = %do.cond61
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %for.end
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #11, !dbg !410
  ret void, !dbg !410
}

; Function Attrs: nounwind uwtable
define signext i8 @ucs_pgtable_insert(ptr noundef %pgtable, ptr noundef %region) #0 !dbg !411 {
entry:
  %retval = alloca i8, align 1
  %pgtable.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %address = alloca i64, align 8
  %end = alloca i64, align 8
  %status = alloca i8, align 1
  %order = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !417, metadata !DIExpression()), !dbg !424
  store ptr %region, ptr %region.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !418, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #11, !dbg !426
  tail call void @llvm.dbg.declare(metadata ptr %address, metadata !419, metadata !DIExpression()), !dbg !427
  %0 = load ptr, ptr %region.addr, align 8, !dbg !428, !tbaa !234
  %start = getelementptr inbounds %struct.ucs_pgt_region, ptr %0, i32 0, i32 0, !dbg !429
  %1 = load i64, ptr %start, align 8, !dbg !429, !tbaa !339
  store i64 %1, ptr %address, align 8, !dbg !427, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !430
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !420, metadata !DIExpression()), !dbg !431
  %2 = load ptr, ptr %region.addr, align 8, !dbg !432, !tbaa !234
  %end1 = getelementptr inbounds %struct.ucs_pgt_region, ptr %2, i32 0, i32 1, !dbg !433
  %3 = load i64, ptr %end1, align 8, !dbg !433, !tbaa !341
  store i64 %3, ptr %end, align 8, !dbg !431, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #11, !dbg !434
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !421, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #11, !dbg !436
  tail call void @llvm.dbg.declare(metadata ptr %order, metadata !422, metadata !DIExpression()), !dbg !437
  br label %do.body, !dbg !438

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !439

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !441

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !441

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !439

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !439

do.end4:                                          ; preds = %do.cond3
  %4 = load i64, ptr %address, align 8, !dbg !443, !tbaa !311
  %5 = load i64, ptr %end, align 8, !dbg !445, !tbaa !311
  %cmp = icmp uge i64 %4, %5, !dbg !446
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !447

lor.lhs.false:                                    ; preds = %do.end4
  %6 = load i64, ptr %address, align 8, !dbg !448, !tbaa !311
  %and = and i64 %6, 15, !dbg !448
  %tobool = icmp ne i64 %and, 0, !dbg !448
  br i1 %tobool, label %if.then, label %lor.lhs.false5, !dbg !449

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load i64, ptr %end, align 8, !dbg !450, !tbaa !311
  %and6 = and i64 %7, 15, !dbg !450
  %tobool7 = icmp ne i64 %and6, 0, !dbg !450
  br i1 %tobool7, label %if.then, label %if.end, !dbg !451

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %do.end4
  store i8 -5, ptr %retval, align 1, !dbg !452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !452

if.end:                                           ; preds = %lor.lhs.false5
  br label %while.cond, !dbg !454

while.cond:                                       ; preds = %if.end13, %if.end
  %8 = load i64, ptr %address, align 8, !dbg !455, !tbaa !311
  %9 = load i64, ptr %end, align 8, !dbg !456, !tbaa !311
  %cmp8 = icmp ult i64 %8, %9, !dbg !457
  br i1 %cmp8, label %while.body, label %while.end, !dbg !454

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %address, align 8, !dbg !458, !tbaa !311
  %11 = load i64, ptr %end, align 8, !dbg !460, !tbaa !311
  %call = call i32 @ucs_pgtable_get_next_page_order(i64 noundef %10, i64 noundef %11), !dbg !461
  store i32 %call, ptr %order, align 4, !dbg !462, !tbaa !307
  %12 = load ptr, ptr %pgtable.addr, align 8, !dbg !463, !tbaa !234
  %13 = load i64, ptr %address, align 8, !dbg !464, !tbaa !311
  %14 = load i32, ptr %order, align 4, !dbg !465, !tbaa !307
  %15 = load ptr, ptr %region.addr, align 8, !dbg !466, !tbaa !234
  %call9 = call signext i8 @ucs_pgtable_insert_page(ptr noundef %12, i64 noundef %13, i32 noundef %14, ptr noundef %15), !dbg !467
  store i8 %call9, ptr %status, align 1, !dbg !468, !tbaa !239
  %16 = load i8, ptr %status, align 1, !dbg !469, !tbaa !239
  %conv = sext i8 %16 to i32, !dbg !469
  %cmp10 = icmp ne i32 %conv, 0, !dbg !471
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !472

if.then12:                                        ; preds = %while.body
  br label %err, !dbg !473

if.end13:                                         ; preds = %while.body
  %17 = load i32, ptr %order, align 4, !dbg !475, !tbaa !307
  call void @ucs_pgt_address_advance(ptr noundef %address, i32 noundef %17), !dbg !476
  br label %while.cond, !dbg !454, !llvm.loop !477

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %pgtable.addr, align 8, !dbg !479, !tbaa !234
  %num_regions = getelementptr inbounds %struct.ucs_pgtable, ptr %18, i32 0, i32 4, !dbg !480
  %19 = load i32, ptr %num_regions, align 4, !dbg !481, !tbaa !285
  %inc = add i32 %19, 1, !dbg !481
  store i32 %inc, ptr %num_regions, align 4, !dbg !481, !tbaa !285
  %20 = load ptr, ptr %pgtable.addr, align 8, !dbg !482, !tbaa !234
  call void @ucs_pgtable_trace(ptr noundef %20, ptr noundef @.str.1), !dbg !483
  store i8 0, ptr %retval, align 1, !dbg !484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !484

err:                                              ; preds = %if.then12
  tail call void @llvm.dbg.label(metadata !423), !dbg !485
  %21 = load i64, ptr %address, align 8, !dbg !486, !tbaa !311
  store i64 %21, ptr %end, align 8, !dbg !487, !tbaa !311
  %22 = load ptr, ptr %region.addr, align 8, !dbg !488, !tbaa !234
  %start14 = getelementptr inbounds %struct.ucs_pgt_region, ptr %22, i32 0, i32 0, !dbg !489
  %23 = load i64, ptr %start14, align 8, !dbg !489, !tbaa !339
  store i64 %23, ptr %address, align 8, !dbg !490, !tbaa !311
  br label %while.cond15, !dbg !491

while.cond15:                                     ; preds = %while.body18, %err
  %24 = load i64, ptr %address, align 8, !dbg !492, !tbaa !311
  %25 = load i64, ptr %end, align 8, !dbg !493, !tbaa !311
  %cmp16 = icmp ult i64 %24, %25, !dbg !494
  br i1 %cmp16, label %while.body18, label %while.end21, !dbg !491

while.body18:                                     ; preds = %while.cond15
  %26 = load i64, ptr %address, align 8, !dbg !495, !tbaa !311
  %27 = load i64, ptr %end, align 8, !dbg !497, !tbaa !311
  %call19 = call i32 @ucs_pgtable_get_next_page_order(i64 noundef %26, i64 noundef %27), !dbg !498
  store i32 %call19, ptr %order, align 4, !dbg !499, !tbaa !307
  %28 = load ptr, ptr %pgtable.addr, align 8, !dbg !500, !tbaa !234
  %29 = load i64, ptr %address, align 8, !dbg !501, !tbaa !311
  %30 = load i32, ptr %order, align 4, !dbg !502, !tbaa !307
  %31 = load ptr, ptr %region.addr, align 8, !dbg !503, !tbaa !234
  %call20 = call signext i8 @ucs_pgtable_remove_page(ptr noundef %28, i64 noundef %29, i32 noundef %30, ptr noundef %31), !dbg !504
  %32 = load i32, ptr %order, align 4, !dbg !505, !tbaa !307
  call void @ucs_pgt_address_advance(ptr noundef %address, i32 noundef %32), !dbg !506
  br label %while.cond15, !dbg !491, !llvm.loop !507

while.end21:                                      ; preds = %while.cond15
  %33 = load i8, ptr %status, align 1, !dbg !509, !tbaa !239
  store i8 %33, ptr %retval, align 1, !dbg !510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

cleanup:                                          ; preds = %while.end21, %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #11, !dbg !511
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #11, !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #11, !dbg !511
  %34 = load i8, ptr %retval, align 1, !dbg !511
  ret i8 %34, !dbg !511
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @ucs_pgtable_get_next_page_order(i64 noundef %start, i64 noundef %end) #0 !dbg !512 {
entry:
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %log2_len = alloca i32, align 4
  %_min_a = alloca i32, align 4
  %_min_b = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !516, metadata !DIExpression()), !dbg !527
  store i64 %end, ptr %end.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !517, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 4, ptr %log2_len) #11, !dbg !529
  tail call void @llvm.dbg.declare(metadata ptr %log2_len, metadata !518, metadata !DIExpression()), !dbg !530
  %0 = load i64, ptr %end.addr, align 8, !dbg !531, !tbaa !311
  %cmp = icmp eq i64 %0, 0, !dbg !532
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !533

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %start.addr, align 8, !dbg !534, !tbaa !311
  %cmp1 = icmp eq i64 %1, 0, !dbg !535
  br i1 %cmp1, label %if.then, label %if.else, !dbg !536

if.then:                                          ; preds = %land.lhs.true
  store i32 64, ptr %log2_len, align 4, !dbg !537, !tbaa !307
  br label %if.end464, !dbg !539

if.else:                                          ; preds = %land.lhs.true, %entry
  %2 = load i64, ptr %end.addr, align 8, !dbg !540, !tbaa !311
  %3 = load i64, ptr %start.addr, align 8, !dbg !541, !tbaa !311
  %cmp2 = icmp eq i64 %2, %3, !dbg !542
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !543

if.then3:                                         ; preds = %if.else
  store i32 4, ptr %log2_len, align 4, !dbg !544, !tbaa !307
  br label %if.end463, !dbg !546

if.else4:                                         ; preds = %if.else
  %4 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %5 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub = sub i64 %4, %5, !dbg !547
  %6 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !547
  br i1 %6, label %cond.true, label %cond.false451, !dbg !547

cond.true:                                        ; preds = %if.else4
  %7 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %8 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub5 = sub i64 %7, %8, !dbg !547
  %cmp6 = icmp ult i64 %sub5, 1, !dbg !547
  br i1 %cmp6, label %cond.true7, label %cond.false, !dbg !547

cond.true7:                                       ; preds = %cond.true
  br label %cond.end449, !dbg !547

cond.false:                                       ; preds = %cond.true
  %9 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %10 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub8 = sub i64 %9, %10, !dbg !547
  %and = and i64 %sub8, -9223372036854775808, !dbg !547
  %tobool = icmp ne i64 %and, 0, !dbg !547
  br i1 %tobool, label %cond.true9, label %cond.false10, !dbg !547

cond.true9:                                       ; preds = %cond.false
  br label %cond.end447, !dbg !547

cond.false10:                                     ; preds = %cond.false
  %11 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %12 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub11 = sub i64 %11, %12, !dbg !547
  %and12 = and i64 %sub11, 4611686018427387904, !dbg !547
  %tobool13 = icmp ne i64 %and12, 0, !dbg !547
  br i1 %tobool13, label %cond.true14, label %cond.false15, !dbg !547

cond.true14:                                      ; preds = %cond.false10
  br label %cond.end445, !dbg !547

cond.false15:                                     ; preds = %cond.false10
  %13 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %14 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub16 = sub i64 %13, %14, !dbg !547
  %and17 = and i64 %sub16, 2305843009213693952, !dbg !547
  %tobool18 = icmp ne i64 %and17, 0, !dbg !547
  br i1 %tobool18, label %cond.true19, label %cond.false20, !dbg !547

cond.true19:                                      ; preds = %cond.false15
  br label %cond.end443, !dbg !547

cond.false20:                                     ; preds = %cond.false15
  %15 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %16 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub21 = sub i64 %15, %16, !dbg !547
  %and22 = and i64 %sub21, 1152921504606846976, !dbg !547
  %tobool23 = icmp ne i64 %and22, 0, !dbg !547
  br i1 %tobool23, label %cond.true24, label %cond.false25, !dbg !547

cond.true24:                                      ; preds = %cond.false20
  br label %cond.end441, !dbg !547

cond.false25:                                     ; preds = %cond.false20
  %17 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %18 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub26 = sub i64 %17, %18, !dbg !547
  %and27 = and i64 %sub26, 576460752303423488, !dbg !547
  %tobool28 = icmp ne i64 %and27, 0, !dbg !547
  br i1 %tobool28, label %cond.true29, label %cond.false30, !dbg !547

cond.true29:                                      ; preds = %cond.false25
  br label %cond.end439, !dbg !547

cond.false30:                                     ; preds = %cond.false25
  %19 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %20 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub31 = sub i64 %19, %20, !dbg !547
  %and32 = and i64 %sub31, 288230376151711744, !dbg !547
  %tobool33 = icmp ne i64 %and32, 0, !dbg !547
  br i1 %tobool33, label %cond.true34, label %cond.false35, !dbg !547

cond.true34:                                      ; preds = %cond.false30
  br label %cond.end437, !dbg !547

cond.false35:                                     ; preds = %cond.false30
  %21 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %22 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub36 = sub i64 %21, %22, !dbg !547
  %and37 = and i64 %sub36, 144115188075855872, !dbg !547
  %tobool38 = icmp ne i64 %and37, 0, !dbg !547
  br i1 %tobool38, label %cond.true39, label %cond.false40, !dbg !547

cond.true39:                                      ; preds = %cond.false35
  br label %cond.end435, !dbg !547

cond.false40:                                     ; preds = %cond.false35
  %23 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %24 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub41 = sub i64 %23, %24, !dbg !547
  %and42 = and i64 %sub41, 72057594037927936, !dbg !547
  %tobool43 = icmp ne i64 %and42, 0, !dbg !547
  br i1 %tobool43, label %cond.true44, label %cond.false45, !dbg !547

cond.true44:                                      ; preds = %cond.false40
  br label %cond.end433, !dbg !547

cond.false45:                                     ; preds = %cond.false40
  %25 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %26 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub46 = sub i64 %25, %26, !dbg !547
  %and47 = and i64 %sub46, 36028797018963968, !dbg !547
  %tobool48 = icmp ne i64 %and47, 0, !dbg !547
  br i1 %tobool48, label %cond.true49, label %cond.false50, !dbg !547

cond.true49:                                      ; preds = %cond.false45
  br label %cond.end431, !dbg !547

cond.false50:                                     ; preds = %cond.false45
  %27 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %28 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub51 = sub i64 %27, %28, !dbg !547
  %and52 = and i64 %sub51, 18014398509481984, !dbg !547
  %tobool53 = icmp ne i64 %and52, 0, !dbg !547
  br i1 %tobool53, label %cond.true54, label %cond.false55, !dbg !547

cond.true54:                                      ; preds = %cond.false50
  br label %cond.end429, !dbg !547

cond.false55:                                     ; preds = %cond.false50
  %29 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %30 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub56 = sub i64 %29, %30, !dbg !547
  %and57 = and i64 %sub56, 9007199254740992, !dbg !547
  %tobool58 = icmp ne i64 %and57, 0, !dbg !547
  br i1 %tobool58, label %cond.true59, label %cond.false60, !dbg !547

cond.true59:                                      ; preds = %cond.false55
  br label %cond.end427, !dbg !547

cond.false60:                                     ; preds = %cond.false55
  %31 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %32 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub61 = sub i64 %31, %32, !dbg !547
  %and62 = and i64 %sub61, 4503599627370496, !dbg !547
  %tobool63 = icmp ne i64 %and62, 0, !dbg !547
  br i1 %tobool63, label %cond.true64, label %cond.false65, !dbg !547

cond.true64:                                      ; preds = %cond.false60
  br label %cond.end425, !dbg !547

cond.false65:                                     ; preds = %cond.false60
  %33 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %34 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub66 = sub i64 %33, %34, !dbg !547
  %and67 = and i64 %sub66, 2251799813685248, !dbg !547
  %tobool68 = icmp ne i64 %and67, 0, !dbg !547
  br i1 %tobool68, label %cond.true69, label %cond.false70, !dbg !547

cond.true69:                                      ; preds = %cond.false65
  br label %cond.end423, !dbg !547

cond.false70:                                     ; preds = %cond.false65
  %35 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %36 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub71 = sub i64 %35, %36, !dbg !547
  %and72 = and i64 %sub71, 1125899906842624, !dbg !547
  %tobool73 = icmp ne i64 %and72, 0, !dbg !547
  br i1 %tobool73, label %cond.true74, label %cond.false75, !dbg !547

cond.true74:                                      ; preds = %cond.false70
  br label %cond.end421, !dbg !547

cond.false75:                                     ; preds = %cond.false70
  %37 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %38 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub76 = sub i64 %37, %38, !dbg !547
  %and77 = and i64 %sub76, 562949953421312, !dbg !547
  %tobool78 = icmp ne i64 %and77, 0, !dbg !547
  br i1 %tobool78, label %cond.true79, label %cond.false80, !dbg !547

cond.true79:                                      ; preds = %cond.false75
  br label %cond.end419, !dbg !547

cond.false80:                                     ; preds = %cond.false75
  %39 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %40 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub81 = sub i64 %39, %40, !dbg !547
  %and82 = and i64 %sub81, 281474976710656, !dbg !547
  %tobool83 = icmp ne i64 %and82, 0, !dbg !547
  br i1 %tobool83, label %cond.true84, label %cond.false85, !dbg !547

cond.true84:                                      ; preds = %cond.false80
  br label %cond.end417, !dbg !547

cond.false85:                                     ; preds = %cond.false80
  %41 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %42 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub86 = sub i64 %41, %42, !dbg !547
  %and87 = and i64 %sub86, 140737488355328, !dbg !547
  %tobool88 = icmp ne i64 %and87, 0, !dbg !547
  br i1 %tobool88, label %cond.true89, label %cond.false90, !dbg !547

cond.true89:                                      ; preds = %cond.false85
  br label %cond.end415, !dbg !547

cond.false90:                                     ; preds = %cond.false85
  %43 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %44 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub91 = sub i64 %43, %44, !dbg !547
  %and92 = and i64 %sub91, 70368744177664, !dbg !547
  %tobool93 = icmp ne i64 %and92, 0, !dbg !547
  br i1 %tobool93, label %cond.true94, label %cond.false95, !dbg !547

cond.true94:                                      ; preds = %cond.false90
  br label %cond.end413, !dbg !547

cond.false95:                                     ; preds = %cond.false90
  %45 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %46 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub96 = sub i64 %45, %46, !dbg !547
  %and97 = and i64 %sub96, 35184372088832, !dbg !547
  %tobool98 = icmp ne i64 %and97, 0, !dbg !547
  br i1 %tobool98, label %cond.true99, label %cond.false100, !dbg !547

cond.true99:                                      ; preds = %cond.false95
  br label %cond.end411, !dbg !547

cond.false100:                                    ; preds = %cond.false95
  %47 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %48 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub101 = sub i64 %47, %48, !dbg !547
  %and102 = and i64 %sub101, 17592186044416, !dbg !547
  %tobool103 = icmp ne i64 %and102, 0, !dbg !547
  br i1 %tobool103, label %cond.true104, label %cond.false105, !dbg !547

cond.true104:                                     ; preds = %cond.false100
  br label %cond.end409, !dbg !547

cond.false105:                                    ; preds = %cond.false100
  %49 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %50 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub106 = sub i64 %49, %50, !dbg !547
  %and107 = and i64 %sub106, 8796093022208, !dbg !547
  %tobool108 = icmp ne i64 %and107, 0, !dbg !547
  br i1 %tobool108, label %cond.true109, label %cond.false110, !dbg !547

cond.true109:                                     ; preds = %cond.false105
  br label %cond.end407, !dbg !547

cond.false110:                                    ; preds = %cond.false105
  %51 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %52 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub111 = sub i64 %51, %52, !dbg !547
  %and112 = and i64 %sub111, 4398046511104, !dbg !547
  %tobool113 = icmp ne i64 %and112, 0, !dbg !547
  br i1 %tobool113, label %cond.true114, label %cond.false115, !dbg !547

cond.true114:                                     ; preds = %cond.false110
  br label %cond.end405, !dbg !547

cond.false115:                                    ; preds = %cond.false110
  %53 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %54 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub116 = sub i64 %53, %54, !dbg !547
  %and117 = and i64 %sub116, 2199023255552, !dbg !547
  %tobool118 = icmp ne i64 %and117, 0, !dbg !547
  br i1 %tobool118, label %cond.true119, label %cond.false120, !dbg !547

cond.true119:                                     ; preds = %cond.false115
  br label %cond.end403, !dbg !547

cond.false120:                                    ; preds = %cond.false115
  %55 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %56 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub121 = sub i64 %55, %56, !dbg !547
  %and122 = and i64 %sub121, 1099511627776, !dbg !547
  %tobool123 = icmp ne i64 %and122, 0, !dbg !547
  br i1 %tobool123, label %cond.true124, label %cond.false125, !dbg !547

cond.true124:                                     ; preds = %cond.false120
  br label %cond.end401, !dbg !547

cond.false125:                                    ; preds = %cond.false120
  %57 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %58 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub126 = sub i64 %57, %58, !dbg !547
  %and127 = and i64 %sub126, 549755813888, !dbg !547
  %tobool128 = icmp ne i64 %and127, 0, !dbg !547
  br i1 %tobool128, label %cond.true129, label %cond.false130, !dbg !547

cond.true129:                                     ; preds = %cond.false125
  br label %cond.end399, !dbg !547

cond.false130:                                    ; preds = %cond.false125
  %59 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %60 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub131 = sub i64 %59, %60, !dbg !547
  %and132 = and i64 %sub131, 274877906944, !dbg !547
  %tobool133 = icmp ne i64 %and132, 0, !dbg !547
  br i1 %tobool133, label %cond.true134, label %cond.false135, !dbg !547

cond.true134:                                     ; preds = %cond.false130
  br label %cond.end397, !dbg !547

cond.false135:                                    ; preds = %cond.false130
  %61 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %62 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub136 = sub i64 %61, %62, !dbg !547
  %and137 = and i64 %sub136, 137438953472, !dbg !547
  %tobool138 = icmp ne i64 %and137, 0, !dbg !547
  br i1 %tobool138, label %cond.true139, label %cond.false140, !dbg !547

cond.true139:                                     ; preds = %cond.false135
  br label %cond.end395, !dbg !547

cond.false140:                                    ; preds = %cond.false135
  %63 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %64 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub141 = sub i64 %63, %64, !dbg !547
  %and142 = and i64 %sub141, 68719476736, !dbg !547
  %tobool143 = icmp ne i64 %and142, 0, !dbg !547
  br i1 %tobool143, label %cond.true144, label %cond.false145, !dbg !547

cond.true144:                                     ; preds = %cond.false140
  br label %cond.end393, !dbg !547

cond.false145:                                    ; preds = %cond.false140
  %65 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %66 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub146 = sub i64 %65, %66, !dbg !547
  %and147 = and i64 %sub146, 34359738368, !dbg !547
  %tobool148 = icmp ne i64 %and147, 0, !dbg !547
  br i1 %tobool148, label %cond.true149, label %cond.false150, !dbg !547

cond.true149:                                     ; preds = %cond.false145
  br label %cond.end391, !dbg !547

cond.false150:                                    ; preds = %cond.false145
  %67 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %68 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub151 = sub i64 %67, %68, !dbg !547
  %and152 = and i64 %sub151, 17179869184, !dbg !547
  %tobool153 = icmp ne i64 %and152, 0, !dbg !547
  br i1 %tobool153, label %cond.true154, label %cond.false155, !dbg !547

cond.true154:                                     ; preds = %cond.false150
  br label %cond.end389, !dbg !547

cond.false155:                                    ; preds = %cond.false150
  %69 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %70 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub156 = sub i64 %69, %70, !dbg !547
  %and157 = and i64 %sub156, 8589934592, !dbg !547
  %tobool158 = icmp ne i64 %and157, 0, !dbg !547
  br i1 %tobool158, label %cond.true159, label %cond.false160, !dbg !547

cond.true159:                                     ; preds = %cond.false155
  br label %cond.end387, !dbg !547

cond.false160:                                    ; preds = %cond.false155
  %71 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %72 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub161 = sub i64 %71, %72, !dbg !547
  %and162 = and i64 %sub161, 4294967296, !dbg !547
  %tobool163 = icmp ne i64 %and162, 0, !dbg !547
  br i1 %tobool163, label %cond.true164, label %cond.false165, !dbg !547

cond.true164:                                     ; preds = %cond.false160
  br label %cond.end385, !dbg !547

cond.false165:                                    ; preds = %cond.false160
  %73 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %74 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub166 = sub i64 %73, %74, !dbg !547
  %and167 = and i64 %sub166, 2147483648, !dbg !547
  %tobool168 = icmp ne i64 %and167, 0, !dbg !547
  br i1 %tobool168, label %cond.true169, label %cond.false170, !dbg !547

cond.true169:                                     ; preds = %cond.false165
  br label %cond.end383, !dbg !547

cond.false170:                                    ; preds = %cond.false165
  %75 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %76 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub171 = sub i64 %75, %76, !dbg !547
  %and172 = and i64 %sub171, 1073741824, !dbg !547
  %tobool173 = icmp ne i64 %and172, 0, !dbg !547
  br i1 %tobool173, label %cond.true174, label %cond.false175, !dbg !547

cond.true174:                                     ; preds = %cond.false170
  br label %cond.end381, !dbg !547

cond.false175:                                    ; preds = %cond.false170
  %77 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %78 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub176 = sub i64 %77, %78, !dbg !547
  %and177 = and i64 %sub176, 536870912, !dbg !547
  %tobool178 = icmp ne i64 %and177, 0, !dbg !547
  br i1 %tobool178, label %cond.true179, label %cond.false180, !dbg !547

cond.true179:                                     ; preds = %cond.false175
  br label %cond.end379, !dbg !547

cond.false180:                                    ; preds = %cond.false175
  %79 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %80 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub181 = sub i64 %79, %80, !dbg !547
  %and182 = and i64 %sub181, 268435456, !dbg !547
  %tobool183 = icmp ne i64 %and182, 0, !dbg !547
  br i1 %tobool183, label %cond.true184, label %cond.false185, !dbg !547

cond.true184:                                     ; preds = %cond.false180
  br label %cond.end377, !dbg !547

cond.false185:                                    ; preds = %cond.false180
  %81 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %82 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub186 = sub i64 %81, %82, !dbg !547
  %and187 = and i64 %sub186, 134217728, !dbg !547
  %tobool188 = icmp ne i64 %and187, 0, !dbg !547
  br i1 %tobool188, label %cond.true189, label %cond.false190, !dbg !547

cond.true189:                                     ; preds = %cond.false185
  br label %cond.end375, !dbg !547

cond.false190:                                    ; preds = %cond.false185
  %83 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %84 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub191 = sub i64 %83, %84, !dbg !547
  %and192 = and i64 %sub191, 67108864, !dbg !547
  %tobool193 = icmp ne i64 %and192, 0, !dbg !547
  br i1 %tobool193, label %cond.true194, label %cond.false195, !dbg !547

cond.true194:                                     ; preds = %cond.false190
  br label %cond.end373, !dbg !547

cond.false195:                                    ; preds = %cond.false190
  %85 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %86 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub196 = sub i64 %85, %86, !dbg !547
  %and197 = and i64 %sub196, 33554432, !dbg !547
  %tobool198 = icmp ne i64 %and197, 0, !dbg !547
  br i1 %tobool198, label %cond.true199, label %cond.false200, !dbg !547

cond.true199:                                     ; preds = %cond.false195
  br label %cond.end371, !dbg !547

cond.false200:                                    ; preds = %cond.false195
  %87 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %88 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub201 = sub i64 %87, %88, !dbg !547
  %and202 = and i64 %sub201, 16777216, !dbg !547
  %tobool203 = icmp ne i64 %and202, 0, !dbg !547
  br i1 %tobool203, label %cond.true204, label %cond.false205, !dbg !547

cond.true204:                                     ; preds = %cond.false200
  br label %cond.end369, !dbg !547

cond.false205:                                    ; preds = %cond.false200
  %89 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %90 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub206 = sub i64 %89, %90, !dbg !547
  %and207 = and i64 %sub206, 8388608, !dbg !547
  %tobool208 = icmp ne i64 %and207, 0, !dbg !547
  br i1 %tobool208, label %cond.true209, label %cond.false210, !dbg !547

cond.true209:                                     ; preds = %cond.false205
  br label %cond.end367, !dbg !547

cond.false210:                                    ; preds = %cond.false205
  %91 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %92 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub211 = sub i64 %91, %92, !dbg !547
  %and212 = and i64 %sub211, 4194304, !dbg !547
  %tobool213 = icmp ne i64 %and212, 0, !dbg !547
  br i1 %tobool213, label %cond.true214, label %cond.false215, !dbg !547

cond.true214:                                     ; preds = %cond.false210
  br label %cond.end365, !dbg !547

cond.false215:                                    ; preds = %cond.false210
  %93 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %94 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub216 = sub i64 %93, %94, !dbg !547
  %and217 = and i64 %sub216, 2097152, !dbg !547
  %tobool218 = icmp ne i64 %and217, 0, !dbg !547
  br i1 %tobool218, label %cond.true219, label %cond.false220, !dbg !547

cond.true219:                                     ; preds = %cond.false215
  br label %cond.end363, !dbg !547

cond.false220:                                    ; preds = %cond.false215
  %95 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %96 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub221 = sub i64 %95, %96, !dbg !547
  %and222 = and i64 %sub221, 1048576, !dbg !547
  %tobool223 = icmp ne i64 %and222, 0, !dbg !547
  br i1 %tobool223, label %cond.true224, label %cond.false225, !dbg !547

cond.true224:                                     ; preds = %cond.false220
  br label %cond.end361, !dbg !547

cond.false225:                                    ; preds = %cond.false220
  %97 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %98 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub226 = sub i64 %97, %98, !dbg !547
  %and227 = and i64 %sub226, 524288, !dbg !547
  %tobool228 = icmp ne i64 %and227, 0, !dbg !547
  br i1 %tobool228, label %cond.true229, label %cond.false230, !dbg !547

cond.true229:                                     ; preds = %cond.false225
  br label %cond.end359, !dbg !547

cond.false230:                                    ; preds = %cond.false225
  %99 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %100 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub231 = sub i64 %99, %100, !dbg !547
  %and232 = and i64 %sub231, 262144, !dbg !547
  %tobool233 = icmp ne i64 %and232, 0, !dbg !547
  br i1 %tobool233, label %cond.true234, label %cond.false235, !dbg !547

cond.true234:                                     ; preds = %cond.false230
  br label %cond.end357, !dbg !547

cond.false235:                                    ; preds = %cond.false230
  %101 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %102 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub236 = sub i64 %101, %102, !dbg !547
  %and237 = and i64 %sub236, 131072, !dbg !547
  %tobool238 = icmp ne i64 %and237, 0, !dbg !547
  br i1 %tobool238, label %cond.true239, label %cond.false240, !dbg !547

cond.true239:                                     ; preds = %cond.false235
  br label %cond.end355, !dbg !547

cond.false240:                                    ; preds = %cond.false235
  %103 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %104 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub241 = sub i64 %103, %104, !dbg !547
  %and242 = and i64 %sub241, 65536, !dbg !547
  %tobool243 = icmp ne i64 %and242, 0, !dbg !547
  br i1 %tobool243, label %cond.true244, label %cond.false245, !dbg !547

cond.true244:                                     ; preds = %cond.false240
  br label %cond.end353, !dbg !547

cond.false245:                                    ; preds = %cond.false240
  %105 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %106 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub246 = sub i64 %105, %106, !dbg !547
  %and247 = and i64 %sub246, 32768, !dbg !547
  %tobool248 = icmp ne i64 %and247, 0, !dbg !547
  br i1 %tobool248, label %cond.true249, label %cond.false250, !dbg !547

cond.true249:                                     ; preds = %cond.false245
  br label %cond.end351, !dbg !547

cond.false250:                                    ; preds = %cond.false245
  %107 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %108 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub251 = sub i64 %107, %108, !dbg !547
  %and252 = and i64 %sub251, 16384, !dbg !547
  %tobool253 = icmp ne i64 %and252, 0, !dbg !547
  br i1 %tobool253, label %cond.true254, label %cond.false255, !dbg !547

cond.true254:                                     ; preds = %cond.false250
  br label %cond.end349, !dbg !547

cond.false255:                                    ; preds = %cond.false250
  %109 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %110 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub256 = sub i64 %109, %110, !dbg !547
  %and257 = and i64 %sub256, 8192, !dbg !547
  %tobool258 = icmp ne i64 %and257, 0, !dbg !547
  br i1 %tobool258, label %cond.true259, label %cond.false260, !dbg !547

cond.true259:                                     ; preds = %cond.false255
  br label %cond.end347, !dbg !547

cond.false260:                                    ; preds = %cond.false255
  %111 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %112 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub261 = sub i64 %111, %112, !dbg !547
  %and262 = and i64 %sub261, 4096, !dbg !547
  %tobool263 = icmp ne i64 %and262, 0, !dbg !547
  br i1 %tobool263, label %cond.true264, label %cond.false265, !dbg !547

cond.true264:                                     ; preds = %cond.false260
  br label %cond.end345, !dbg !547

cond.false265:                                    ; preds = %cond.false260
  %113 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %114 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub266 = sub i64 %113, %114, !dbg !547
  %and267 = and i64 %sub266, 2048, !dbg !547
  %tobool268 = icmp ne i64 %and267, 0, !dbg !547
  br i1 %tobool268, label %cond.true269, label %cond.false270, !dbg !547

cond.true269:                                     ; preds = %cond.false265
  br label %cond.end343, !dbg !547

cond.false270:                                    ; preds = %cond.false265
  %115 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %116 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub271 = sub i64 %115, %116, !dbg !547
  %and272 = and i64 %sub271, 1024, !dbg !547
  %tobool273 = icmp ne i64 %and272, 0, !dbg !547
  br i1 %tobool273, label %cond.true274, label %cond.false275, !dbg !547

cond.true274:                                     ; preds = %cond.false270
  br label %cond.end341, !dbg !547

cond.false275:                                    ; preds = %cond.false270
  %117 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %118 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub276 = sub i64 %117, %118, !dbg !547
  %and277 = and i64 %sub276, 512, !dbg !547
  %tobool278 = icmp ne i64 %and277, 0, !dbg !547
  br i1 %tobool278, label %cond.true279, label %cond.false280, !dbg !547

cond.true279:                                     ; preds = %cond.false275
  br label %cond.end339, !dbg !547

cond.false280:                                    ; preds = %cond.false275
  %119 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %120 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub281 = sub i64 %119, %120, !dbg !547
  %and282 = and i64 %sub281, 256, !dbg !547
  %tobool283 = icmp ne i64 %and282, 0, !dbg !547
  br i1 %tobool283, label %cond.true284, label %cond.false285, !dbg !547

cond.true284:                                     ; preds = %cond.false280
  br label %cond.end337, !dbg !547

cond.false285:                                    ; preds = %cond.false280
  %121 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %122 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub286 = sub i64 %121, %122, !dbg !547
  %and287 = and i64 %sub286, 128, !dbg !547
  %tobool288 = icmp ne i64 %and287, 0, !dbg !547
  br i1 %tobool288, label %cond.true289, label %cond.false290, !dbg !547

cond.true289:                                     ; preds = %cond.false285
  br label %cond.end335, !dbg !547

cond.false290:                                    ; preds = %cond.false285
  %123 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %124 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub291 = sub i64 %123, %124, !dbg !547
  %and292 = and i64 %sub291, 64, !dbg !547
  %tobool293 = icmp ne i64 %and292, 0, !dbg !547
  br i1 %tobool293, label %cond.true294, label %cond.false295, !dbg !547

cond.true294:                                     ; preds = %cond.false290
  br label %cond.end333, !dbg !547

cond.false295:                                    ; preds = %cond.false290
  %125 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %126 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub296 = sub i64 %125, %126, !dbg !547
  %and297 = and i64 %sub296, 32, !dbg !547
  %tobool298 = icmp ne i64 %and297, 0, !dbg !547
  br i1 %tobool298, label %cond.true299, label %cond.false300, !dbg !547

cond.true299:                                     ; preds = %cond.false295
  br label %cond.end331, !dbg !547

cond.false300:                                    ; preds = %cond.false295
  %127 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %128 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub301 = sub i64 %127, %128, !dbg !547
  %and302 = and i64 %sub301, 16, !dbg !547
  %tobool303 = icmp ne i64 %and302, 0, !dbg !547
  br i1 %tobool303, label %cond.true304, label %cond.false305, !dbg !547

cond.true304:                                     ; preds = %cond.false300
  br label %cond.end329, !dbg !547

cond.false305:                                    ; preds = %cond.false300
  %129 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %130 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub306 = sub i64 %129, %130, !dbg !547
  %and307 = and i64 %sub306, 8, !dbg !547
  %tobool308 = icmp ne i64 %and307, 0, !dbg !547
  br i1 %tobool308, label %cond.true309, label %cond.false310, !dbg !547

cond.true309:                                     ; preds = %cond.false305
  br label %cond.end327, !dbg !547

cond.false310:                                    ; preds = %cond.false305
  %131 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %132 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub311 = sub i64 %131, %132, !dbg !547
  %and312 = and i64 %sub311, 4, !dbg !547
  %tobool313 = icmp ne i64 %and312, 0, !dbg !547
  br i1 %tobool313, label %cond.true314, label %cond.false315, !dbg !547

cond.true314:                                     ; preds = %cond.false310
  br label %cond.end325, !dbg !547

cond.false315:                                    ; preds = %cond.false310
  %133 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %134 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub316 = sub i64 %133, %134, !dbg !547
  %and317 = and i64 %sub316, 2, !dbg !547
  %tobool318 = icmp ne i64 %and317, 0, !dbg !547
  br i1 %tobool318, label %cond.true319, label %cond.false320, !dbg !547

cond.true319:                                     ; preds = %cond.false315
  br label %cond.end, !dbg !547

cond.false320:                                    ; preds = %cond.false315
  %135 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %136 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub321 = sub i64 %135, %136, !dbg !547
  %and322 = and i64 %sub321, 1, !dbg !547
  %tobool323 = icmp ne i64 %and322, 0, !dbg !547
  %137 = zext i1 %tobool323 to i64, !dbg !547
  %cond = select i1 %tobool323, i32 0, i32 0, !dbg !547
  br label %cond.end, !dbg !547

cond.end:                                         ; preds = %cond.false320, %cond.true319
  %cond324 = phi i32 [ 1, %cond.true319 ], [ %cond, %cond.false320 ], !dbg !547
  br label %cond.end325, !dbg !547

cond.end325:                                      ; preds = %cond.end, %cond.true314
  %cond326 = phi i32 [ 2, %cond.true314 ], [ %cond324, %cond.end ], !dbg !547
  br label %cond.end327, !dbg !547

cond.end327:                                      ; preds = %cond.end325, %cond.true309
  %cond328 = phi i32 [ 3, %cond.true309 ], [ %cond326, %cond.end325 ], !dbg !547
  br label %cond.end329, !dbg !547

cond.end329:                                      ; preds = %cond.end327, %cond.true304
  %cond330 = phi i32 [ 4, %cond.true304 ], [ %cond328, %cond.end327 ], !dbg !547
  br label %cond.end331, !dbg !547

cond.end331:                                      ; preds = %cond.end329, %cond.true299
  %cond332 = phi i32 [ 5, %cond.true299 ], [ %cond330, %cond.end329 ], !dbg !547
  br label %cond.end333, !dbg !547

cond.end333:                                      ; preds = %cond.end331, %cond.true294
  %cond334 = phi i32 [ 6, %cond.true294 ], [ %cond332, %cond.end331 ], !dbg !547
  br label %cond.end335, !dbg !547

cond.end335:                                      ; preds = %cond.end333, %cond.true289
  %cond336 = phi i32 [ 7, %cond.true289 ], [ %cond334, %cond.end333 ], !dbg !547
  br label %cond.end337, !dbg !547

cond.end337:                                      ; preds = %cond.end335, %cond.true284
  %cond338 = phi i32 [ 8, %cond.true284 ], [ %cond336, %cond.end335 ], !dbg !547
  br label %cond.end339, !dbg !547

cond.end339:                                      ; preds = %cond.end337, %cond.true279
  %cond340 = phi i32 [ 9, %cond.true279 ], [ %cond338, %cond.end337 ], !dbg !547
  br label %cond.end341, !dbg !547

cond.end341:                                      ; preds = %cond.end339, %cond.true274
  %cond342 = phi i32 [ 10, %cond.true274 ], [ %cond340, %cond.end339 ], !dbg !547
  br label %cond.end343, !dbg !547

cond.end343:                                      ; preds = %cond.end341, %cond.true269
  %cond344 = phi i32 [ 11, %cond.true269 ], [ %cond342, %cond.end341 ], !dbg !547
  br label %cond.end345, !dbg !547

cond.end345:                                      ; preds = %cond.end343, %cond.true264
  %cond346 = phi i32 [ 12, %cond.true264 ], [ %cond344, %cond.end343 ], !dbg !547
  br label %cond.end347, !dbg !547

cond.end347:                                      ; preds = %cond.end345, %cond.true259
  %cond348 = phi i32 [ 13, %cond.true259 ], [ %cond346, %cond.end345 ], !dbg !547
  br label %cond.end349, !dbg !547

cond.end349:                                      ; preds = %cond.end347, %cond.true254
  %cond350 = phi i32 [ 14, %cond.true254 ], [ %cond348, %cond.end347 ], !dbg !547
  br label %cond.end351, !dbg !547

cond.end351:                                      ; preds = %cond.end349, %cond.true249
  %cond352 = phi i32 [ 15, %cond.true249 ], [ %cond350, %cond.end349 ], !dbg !547
  br label %cond.end353, !dbg !547

cond.end353:                                      ; preds = %cond.end351, %cond.true244
  %cond354 = phi i32 [ 16, %cond.true244 ], [ %cond352, %cond.end351 ], !dbg !547
  br label %cond.end355, !dbg !547

cond.end355:                                      ; preds = %cond.end353, %cond.true239
  %cond356 = phi i32 [ 17, %cond.true239 ], [ %cond354, %cond.end353 ], !dbg !547
  br label %cond.end357, !dbg !547

cond.end357:                                      ; preds = %cond.end355, %cond.true234
  %cond358 = phi i32 [ 18, %cond.true234 ], [ %cond356, %cond.end355 ], !dbg !547
  br label %cond.end359, !dbg !547

cond.end359:                                      ; preds = %cond.end357, %cond.true229
  %cond360 = phi i32 [ 19, %cond.true229 ], [ %cond358, %cond.end357 ], !dbg !547
  br label %cond.end361, !dbg !547

cond.end361:                                      ; preds = %cond.end359, %cond.true224
  %cond362 = phi i32 [ 20, %cond.true224 ], [ %cond360, %cond.end359 ], !dbg !547
  br label %cond.end363, !dbg !547

cond.end363:                                      ; preds = %cond.end361, %cond.true219
  %cond364 = phi i32 [ 21, %cond.true219 ], [ %cond362, %cond.end361 ], !dbg !547
  br label %cond.end365, !dbg !547

cond.end365:                                      ; preds = %cond.end363, %cond.true214
  %cond366 = phi i32 [ 22, %cond.true214 ], [ %cond364, %cond.end363 ], !dbg !547
  br label %cond.end367, !dbg !547

cond.end367:                                      ; preds = %cond.end365, %cond.true209
  %cond368 = phi i32 [ 23, %cond.true209 ], [ %cond366, %cond.end365 ], !dbg !547
  br label %cond.end369, !dbg !547

cond.end369:                                      ; preds = %cond.end367, %cond.true204
  %cond370 = phi i32 [ 24, %cond.true204 ], [ %cond368, %cond.end367 ], !dbg !547
  br label %cond.end371, !dbg !547

cond.end371:                                      ; preds = %cond.end369, %cond.true199
  %cond372 = phi i32 [ 25, %cond.true199 ], [ %cond370, %cond.end369 ], !dbg !547
  br label %cond.end373, !dbg !547

cond.end373:                                      ; preds = %cond.end371, %cond.true194
  %cond374 = phi i32 [ 26, %cond.true194 ], [ %cond372, %cond.end371 ], !dbg !547
  br label %cond.end375, !dbg !547

cond.end375:                                      ; preds = %cond.end373, %cond.true189
  %cond376 = phi i32 [ 27, %cond.true189 ], [ %cond374, %cond.end373 ], !dbg !547
  br label %cond.end377, !dbg !547

cond.end377:                                      ; preds = %cond.end375, %cond.true184
  %cond378 = phi i32 [ 28, %cond.true184 ], [ %cond376, %cond.end375 ], !dbg !547
  br label %cond.end379, !dbg !547

cond.end379:                                      ; preds = %cond.end377, %cond.true179
  %cond380 = phi i32 [ 29, %cond.true179 ], [ %cond378, %cond.end377 ], !dbg !547
  br label %cond.end381, !dbg !547

cond.end381:                                      ; preds = %cond.end379, %cond.true174
  %cond382 = phi i32 [ 30, %cond.true174 ], [ %cond380, %cond.end379 ], !dbg !547
  br label %cond.end383, !dbg !547

cond.end383:                                      ; preds = %cond.end381, %cond.true169
  %cond384 = phi i32 [ 31, %cond.true169 ], [ %cond382, %cond.end381 ], !dbg !547
  br label %cond.end385, !dbg !547

cond.end385:                                      ; preds = %cond.end383, %cond.true164
  %cond386 = phi i32 [ 32, %cond.true164 ], [ %cond384, %cond.end383 ], !dbg !547
  br label %cond.end387, !dbg !547

cond.end387:                                      ; preds = %cond.end385, %cond.true159
  %cond388 = phi i32 [ 33, %cond.true159 ], [ %cond386, %cond.end385 ], !dbg !547
  br label %cond.end389, !dbg !547

cond.end389:                                      ; preds = %cond.end387, %cond.true154
  %cond390 = phi i32 [ 34, %cond.true154 ], [ %cond388, %cond.end387 ], !dbg !547
  br label %cond.end391, !dbg !547

cond.end391:                                      ; preds = %cond.end389, %cond.true149
  %cond392 = phi i32 [ 35, %cond.true149 ], [ %cond390, %cond.end389 ], !dbg !547
  br label %cond.end393, !dbg !547

cond.end393:                                      ; preds = %cond.end391, %cond.true144
  %cond394 = phi i32 [ 36, %cond.true144 ], [ %cond392, %cond.end391 ], !dbg !547
  br label %cond.end395, !dbg !547

cond.end395:                                      ; preds = %cond.end393, %cond.true139
  %cond396 = phi i32 [ 37, %cond.true139 ], [ %cond394, %cond.end393 ], !dbg !547
  br label %cond.end397, !dbg !547

cond.end397:                                      ; preds = %cond.end395, %cond.true134
  %cond398 = phi i32 [ 38, %cond.true134 ], [ %cond396, %cond.end395 ], !dbg !547
  br label %cond.end399, !dbg !547

cond.end399:                                      ; preds = %cond.end397, %cond.true129
  %cond400 = phi i32 [ 39, %cond.true129 ], [ %cond398, %cond.end397 ], !dbg !547
  br label %cond.end401, !dbg !547

cond.end401:                                      ; preds = %cond.end399, %cond.true124
  %cond402 = phi i32 [ 40, %cond.true124 ], [ %cond400, %cond.end399 ], !dbg !547
  br label %cond.end403, !dbg !547

cond.end403:                                      ; preds = %cond.end401, %cond.true119
  %cond404 = phi i32 [ 41, %cond.true119 ], [ %cond402, %cond.end401 ], !dbg !547
  br label %cond.end405, !dbg !547

cond.end405:                                      ; preds = %cond.end403, %cond.true114
  %cond406 = phi i32 [ 42, %cond.true114 ], [ %cond404, %cond.end403 ], !dbg !547
  br label %cond.end407, !dbg !547

cond.end407:                                      ; preds = %cond.end405, %cond.true109
  %cond408 = phi i32 [ 43, %cond.true109 ], [ %cond406, %cond.end405 ], !dbg !547
  br label %cond.end409, !dbg !547

cond.end409:                                      ; preds = %cond.end407, %cond.true104
  %cond410 = phi i32 [ 44, %cond.true104 ], [ %cond408, %cond.end407 ], !dbg !547
  br label %cond.end411, !dbg !547

cond.end411:                                      ; preds = %cond.end409, %cond.true99
  %cond412 = phi i32 [ 45, %cond.true99 ], [ %cond410, %cond.end409 ], !dbg !547
  br label %cond.end413, !dbg !547

cond.end413:                                      ; preds = %cond.end411, %cond.true94
  %cond414 = phi i32 [ 46, %cond.true94 ], [ %cond412, %cond.end411 ], !dbg !547
  br label %cond.end415, !dbg !547

cond.end415:                                      ; preds = %cond.end413, %cond.true89
  %cond416 = phi i32 [ 47, %cond.true89 ], [ %cond414, %cond.end413 ], !dbg !547
  br label %cond.end417, !dbg !547

cond.end417:                                      ; preds = %cond.end415, %cond.true84
  %cond418 = phi i32 [ 48, %cond.true84 ], [ %cond416, %cond.end415 ], !dbg !547
  br label %cond.end419, !dbg !547

cond.end419:                                      ; preds = %cond.end417, %cond.true79
  %cond420 = phi i32 [ 49, %cond.true79 ], [ %cond418, %cond.end417 ], !dbg !547
  br label %cond.end421, !dbg !547

cond.end421:                                      ; preds = %cond.end419, %cond.true74
  %cond422 = phi i32 [ 50, %cond.true74 ], [ %cond420, %cond.end419 ], !dbg !547
  br label %cond.end423, !dbg !547

cond.end423:                                      ; preds = %cond.end421, %cond.true69
  %cond424 = phi i32 [ 51, %cond.true69 ], [ %cond422, %cond.end421 ], !dbg !547
  br label %cond.end425, !dbg !547

cond.end425:                                      ; preds = %cond.end423, %cond.true64
  %cond426 = phi i32 [ 52, %cond.true64 ], [ %cond424, %cond.end423 ], !dbg !547
  br label %cond.end427, !dbg !547

cond.end427:                                      ; preds = %cond.end425, %cond.true59
  %cond428 = phi i32 [ 53, %cond.true59 ], [ %cond426, %cond.end425 ], !dbg !547
  br label %cond.end429, !dbg !547

cond.end429:                                      ; preds = %cond.end427, %cond.true54
  %cond430 = phi i32 [ 54, %cond.true54 ], [ %cond428, %cond.end427 ], !dbg !547
  br label %cond.end431, !dbg !547

cond.end431:                                      ; preds = %cond.end429, %cond.true49
  %cond432 = phi i32 [ 55, %cond.true49 ], [ %cond430, %cond.end429 ], !dbg !547
  br label %cond.end433, !dbg !547

cond.end433:                                      ; preds = %cond.end431, %cond.true44
  %cond434 = phi i32 [ 56, %cond.true44 ], [ %cond432, %cond.end431 ], !dbg !547
  br label %cond.end435, !dbg !547

cond.end435:                                      ; preds = %cond.end433, %cond.true39
  %cond436 = phi i32 [ 57, %cond.true39 ], [ %cond434, %cond.end433 ], !dbg !547
  br label %cond.end437, !dbg !547

cond.end437:                                      ; preds = %cond.end435, %cond.true34
  %cond438 = phi i32 [ 58, %cond.true34 ], [ %cond436, %cond.end435 ], !dbg !547
  br label %cond.end439, !dbg !547

cond.end439:                                      ; preds = %cond.end437, %cond.true29
  %cond440 = phi i32 [ 59, %cond.true29 ], [ %cond438, %cond.end437 ], !dbg !547
  br label %cond.end441, !dbg !547

cond.end441:                                      ; preds = %cond.end439, %cond.true24
  %cond442 = phi i32 [ 60, %cond.true24 ], [ %cond440, %cond.end439 ], !dbg !547
  br label %cond.end443, !dbg !547

cond.end443:                                      ; preds = %cond.end441, %cond.true19
  %cond444 = phi i32 [ 61, %cond.true19 ], [ %cond442, %cond.end441 ], !dbg !547
  br label %cond.end445, !dbg !547

cond.end445:                                      ; preds = %cond.end443, %cond.true14
  %cond446 = phi i32 [ 62, %cond.true14 ], [ %cond444, %cond.end443 ], !dbg !547
  br label %cond.end447, !dbg !547

cond.end447:                                      ; preds = %cond.end445, %cond.true9
  %cond448 = phi i32 [ 63, %cond.true9 ], [ %cond446, %cond.end445 ], !dbg !547
  br label %cond.end449, !dbg !547

cond.end449:                                      ; preds = %cond.end447, %cond.true7
  %cond450 = phi i32 [ 0, %cond.true7 ], [ %cond448, %cond.end447 ], !dbg !547
  br label %cond.end453, !dbg !547

cond.false451:                                    ; preds = %if.else4
  %138 = load i64, ptr %end.addr, align 8, !dbg !547, !tbaa !311
  %139 = load i64, ptr %start.addr, align 8, !dbg !547, !tbaa !311
  %sub452 = sub i64 %138, %139, !dbg !547
  %call = call i32 @__ucs_ilog2_u64(i64 noundef %sub452), !dbg !547
  br label %cond.end453, !dbg !547

cond.end453:                                      ; preds = %cond.false451, %cond.end449
  %cond454 = phi i32 [ %cond450, %cond.end449 ], [ %call, %cond.false451 ], !dbg !547
  store i32 %cond454, ptr %log2_len, align 4, !dbg !548, !tbaa !307
  %140 = load i64, ptr %start.addr, align 8, !dbg !549, !tbaa !311
  %tobool455 = icmp ne i64 %140, 0, !dbg !549
  br i1 %tobool455, label %if.then456, label %if.end, !dbg !550

if.then456:                                       ; preds = %cond.end453
  call void @llvm.lifetime.start.p0(i64 4, ptr %_min_a) #11, !dbg !551
  tail call void @llvm.dbg.declare(metadata ptr %_min_a, metadata !519, metadata !DIExpression()), !dbg !551
  %141 = load i64, ptr %start.addr, align 8, !dbg !551, !tbaa !311
  %call457 = call i32 @ucs_ffs64(i64 noundef %141), !dbg !551
  store i32 %call457, ptr %_min_a, align 4, !dbg !551, !tbaa !307
  call void @llvm.lifetime.start.p0(i64 4, ptr %_min_b) #11, !dbg !551
  tail call void @llvm.dbg.declare(metadata ptr %_min_b, metadata !526, metadata !DIExpression()), !dbg !551
  %142 = load i32, ptr %log2_len, align 4, !dbg !551, !tbaa !307
  store i32 %142, ptr %_min_b, align 4, !dbg !551, !tbaa !307
  %143 = load i32, ptr %_min_a, align 4, !dbg !551, !tbaa !307
  %144 = load i32, ptr %_min_b, align 4, !dbg !551, !tbaa !307
  %cmp458 = icmp ult i32 %143, %144, !dbg !551
  br i1 %cmp458, label %cond.true459, label %cond.false460, !dbg !551

cond.true459:                                     ; preds = %if.then456
  %145 = load i32, ptr %_min_a, align 4, !dbg !551, !tbaa !307
  br label %cond.end461, !dbg !551

cond.false460:                                    ; preds = %if.then456
  %146 = load i32, ptr %_min_b, align 4, !dbg !551, !tbaa !307
  br label %cond.end461, !dbg !551

cond.end461:                                      ; preds = %cond.false460, %cond.true459
  %cond462 = phi i32 [ %145, %cond.true459 ], [ %146, %cond.false460 ], !dbg !551
  store i32 %cond462, ptr %tmp, align 4, !dbg !551, !tbaa !307
  call void @llvm.lifetime.end.p0(i64 4, ptr %_min_b) #11, !dbg !552
  call void @llvm.lifetime.end.p0(i64 4, ptr %_min_a) #11, !dbg !552
  %147 = load i32, ptr %tmp, align 4, !dbg !551, !tbaa !307
  store i32 %147, ptr %log2_len, align 4, !dbg !553, !tbaa !307
  br label %if.end, !dbg !554

if.end:                                           ; preds = %cond.end461, %cond.end453
  br label %if.end463

if.end463:                                        ; preds = %if.end, %if.then3
  br label %if.end464

if.end464:                                        ; preds = %if.end463, %if.then
  %148 = load i32, ptr %log2_len, align 4, !dbg !555, !tbaa !307
  %sub465 = sub i32 %148, 4, !dbg !556
  %div = udiv i32 %sub465, 4, !dbg !557
  %mul = mul i32 %div, 4, !dbg !558
  %add = add i32 %mul, 4, !dbg !559
  call void @llvm.lifetime.end.p0(i64 4, ptr %log2_len) #11, !dbg !560
  ret i32 %add, !dbg !561
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ucs_pgtable_insert_page(ptr noundef %pgtable, i64 noundef %address, i32 noundef %order, ptr noundef %region) #0 !dbg !562 {
entry:
  %retval = alloca i8, align 1
  %pgtable.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %region.addr = alloca ptr, align 8
  %dummy_pgd = alloca %struct.ucs_pgt_dir, align 8
  %pte = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %shift = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp44 = alloca ptr, align 8
  %tmp53 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !566, metadata !DIExpression()), !dbg !586
  store i64 %address, ptr %address.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !567, metadata !DIExpression()), !dbg !587
  store i32 %order, ptr %order.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !568, metadata !DIExpression()), !dbg !588
  store ptr %region, ptr %region.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !569, metadata !DIExpression()), !dbg !589
  call void @llvm.lifetime.start.p0(i64 136, ptr %dummy_pgd) #11, !dbg !590
  tail call void @llvm.dbg.declare(metadata ptr %dummy_pgd, metadata !570, metadata !DIExpression()), !dbg !591
  call void @llvm.memset.p0.i64(ptr align 8 %dummy_pgd, i8 0, i64 136, i1 false), !dbg !591
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !592
  tail call void @llvm.dbg.declare(metadata ptr %pte, metadata !571, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !594
  tail call void @llvm.dbg.declare(metadata ptr %pgd, metadata !573, metadata !DIExpression()), !dbg !595
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #11, !dbg !596
  tail call void @llvm.dbg.declare(metadata ptr %shift, metadata !574, metadata !DIExpression()), !dbg !597
  %0 = load i64, ptr %address.addr, align 8, !dbg !598, !tbaa !311
  %1 = load i32, ptr %order.addr, align 4, !dbg !599, !tbaa !307
  call void @ucs_pgtable_check_page(i64 noundef %0, i32 noundef %1), !dbg !600
  br label %do.body, !dbg !601

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !602

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !604

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !604

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !602

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !602

do.end3:                                          ; preds = %do.cond2
  br label %while.cond, !dbg !606

while.cond:                                       ; preds = %while.body, %do.end3
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !607, !tbaa !234
  %shift4 = getelementptr inbounds %struct.ucs_pgtable, ptr %2, i32 0, i32 3, !dbg !608
  %3 = load i32, ptr %shift4, align 8, !dbg !608, !tbaa !259
  %4 = load i32, ptr %order.addr, align 4, !dbg !609, !tbaa !307
  %cmp = icmp ult i32 %3, %4, !dbg !610
  br i1 %cmp, label %while.body, label %while.end, !dbg !606

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pgtable.addr, align 8, !dbg !611, !tbaa !234
  call void @ucs_pgtable_expand(ptr noundef %5), !dbg !613
  br label %while.cond, !dbg !606, !llvm.loop !614

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %pgtable.addr, align 8, !dbg !616, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %6, i32 0, i32 0, !dbg !616
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %root, i32 0, i32 0, !dbg !616
  %7 = load i64, ptr %value, align 8, !dbg !616, !tbaa !618
  %and = and i64 %7, 3, !dbg !616
  %tobool = icmp ne i64 %and, 0, !dbg !616
  br i1 %tobool, label %if.then, label %if.else, !dbg !619

if.then:                                          ; preds = %while.end
  br label %while.cond5, !dbg !620

while.cond5:                                      ; preds = %while.body8, %if.then
  %8 = load i64, ptr %address.addr, align 8, !dbg !622, !tbaa !311
  %9 = load ptr, ptr %pgtable.addr, align 8, !dbg !623, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %9, i32 0, i32 2, !dbg !624
  %10 = load i64, ptr %mask, align 8, !dbg !624, !tbaa !256
  %and6 = and i64 %8, %10, !dbg !625
  %11 = load ptr, ptr %pgtable.addr, align 8, !dbg !626, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %11, i32 0, i32 1, !dbg !627
  %12 = load i64, ptr %base, align 8, !dbg !627, !tbaa !249
  %cmp7 = icmp ne i64 %and6, %12, !dbg !628
  br i1 %cmp7, label %while.body8, label %while.end9, !dbg !620

while.body8:                                      ; preds = %while.cond5
  %13 = load ptr, ptr %pgtable.addr, align 8, !dbg !629, !tbaa !234
  call void @ucs_pgtable_expand(ptr noundef %13), !dbg !631
  br label %while.cond5, !dbg !620, !llvm.loop !632

while.end9:                                       ; preds = %while.cond5
  br label %if.end, !dbg !634

if.else:                                          ; preds = %while.end
  %14 = load i64, ptr %address.addr, align 8, !dbg !635, !tbaa !311
  %15 = load ptr, ptr %pgtable.addr, align 8, !dbg !637, !tbaa !234
  %mask10 = getelementptr inbounds %struct.ucs_pgtable, ptr %15, i32 0, i32 2, !dbg !638
  %16 = load i64, ptr %mask10, align 8, !dbg !638, !tbaa !256
  %and11 = and i64 %14, %16, !dbg !639
  %17 = load ptr, ptr %pgtable.addr, align 8, !dbg !640, !tbaa !234
  %base12 = getelementptr inbounds %struct.ucs_pgtable, ptr %17, i32 0, i32 1, !dbg !641
  store i64 %and11, ptr %base12, align 8, !dbg !642, !tbaa !249
  %18 = load ptr, ptr %pgtable.addr, align 8, !dbg !643, !tbaa !234
  call void @ucs_pgtable_trace(ptr noundef %18, ptr noundef @.str.15), !dbg !644
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end9
  store ptr %dummy_pgd, ptr %pgd, align 8, !dbg !645, !tbaa !234
  %19 = load ptr, ptr %pgtable.addr, align 8, !dbg !646, !tbaa !234
  %shift13 = getelementptr inbounds %struct.ucs_pgtable, ptr %19, i32 0, i32 3, !dbg !647
  %20 = load i32, ptr %shift13, align 8, !dbg !647, !tbaa !259
  store i32 %20, ptr %shift, align 4, !dbg !648, !tbaa !307
  %21 = load ptr, ptr %pgtable.addr, align 8, !dbg !649, !tbaa !234
  %root14 = getelementptr inbounds %struct.ucs_pgtable, ptr %21, i32 0, i32 0, !dbg !650
  store ptr %root14, ptr %pte, align 8, !dbg !651, !tbaa !234
  br label %while.cond15, !dbg !652

while.cond15:                                     ; preds = %if.end57, %if.end
  br label %while.body16, !dbg !652

while.body16:                                     ; preds = %while.cond15
  %22 = load i32, ptr %order.addr, align 4, !dbg !653, !tbaa !307
  %23 = load i32, ptr %shift, align 4, !dbg !654, !tbaa !307
  %cmp17 = icmp eq i32 %22, %23, !dbg !655
  br i1 %cmp17, label %if.then18, label %if.else31, !dbg !656

if.then18:                                        ; preds = %while.body16
  %24 = load ptr, ptr %pte, align 8, !dbg !657, !tbaa !234
  %value19 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %24, i32 0, i32 0, !dbg !657
  %25 = load i64, ptr %value19, align 8, !dbg !657, !tbaa !324
  %and20 = and i64 %25, 3, !dbg !657
  %tobool21 = icmp ne i64 %and20, 0, !dbg !657
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !659

if.then22:                                        ; preds = %if.then18
  br label %err, !dbg !660

if.end23:                                         ; preds = %if.then18
  br label %do.body24, !dbg !662

do.body24:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !663
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !575, metadata !DIExpression()), !dbg !663
  %26 = load ptr, ptr %region.addr, align 8, !dbg !663, !tbaa !234
  store ptr %26, ptr %tmp, align 8, !dbg !663, !tbaa !234
  br label %do.body25, !dbg !663

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !664

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !664

do.end27:                                         ; preds = %do.cond26
  %27 = load ptr, ptr %tmp, align 8, !dbg !663, !tbaa !234
  %28 = ptrtoint ptr %27 to i64, !dbg !663
  %or = or i64 %28, 1, !dbg !663
  %29 = load ptr, ptr %pte, align 8, !dbg !663, !tbaa !234
  %value28 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %29, i32 0, i32 0, !dbg !663
  store i64 %or, ptr %value28, align 8, !dbg !663, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !662
  br label %do.cond29, !dbg !663

do.cond29:                                        ; preds = %do.end27
  br label %do.end30, !dbg !663

do.end30:                                         ; preds = %do.cond29
  %30 = load ptr, ptr %pgd, align 8, !dbg !666, !tbaa !234
  %count = getelementptr inbounds %struct.ucs_pgt_dir, ptr %30, i32 0, i32 1, !dbg !667
  %31 = load i32, ptr %count, align 8, !dbg !668, !tbaa !361
  %inc = add i32 %31, 1, !dbg !668
  store i32 %inc, ptr %count, align 8, !dbg !668, !tbaa !361
  br label %while.end58, !dbg !669

if.else31:                                        ; preds = %while.body16
  %32 = load ptr, ptr %pte, align 8, !dbg !670, !tbaa !234
  %value32 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %32, i32 0, i32 0, !dbg !670
  %33 = load i64, ptr %value32, align 8, !dbg !670, !tbaa !324
  %and33 = and i64 %33, 1, !dbg !670
  %tobool34 = icmp ne i64 %and33, 0, !dbg !670
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !672

if.then35:                                        ; preds = %if.else31
  br label %err, !dbg !673

if.end36:                                         ; preds = %if.else31
  %34 = load ptr, ptr %pte, align 8, !dbg !675, !tbaa !234
  %value37 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %34, i32 0, i32 0, !dbg !675
  %35 = load i64, ptr %value37, align 8, !dbg !675, !tbaa !324
  %and38 = and i64 %35, 3, !dbg !675
  %tobool39 = icmp ne i64 %and38, 0, !dbg !675
  br i1 %tobool39, label %if.end52, label %if.then40, !dbg !676

if.then40:                                        ; preds = %if.end36
  %36 = load ptr, ptr %pgd, align 8, !dbg !677, !tbaa !234
  %count41 = getelementptr inbounds %struct.ucs_pgt_dir, ptr %36, i32 0, i32 1, !dbg !678
  %37 = load i32, ptr %count41, align 8, !dbg !679, !tbaa !361
  %inc42 = add i32 %37, 1, !dbg !679
  store i32 %inc42, ptr %count41, align 8, !dbg !679, !tbaa !361
  br label %do.body43, !dbg !680

do.body43:                                        ; preds = %if.then40
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp44) #11, !dbg !681
  tail call void @llvm.dbg.declare(metadata ptr %tmp44, metadata !580, metadata !DIExpression()), !dbg !681
  %38 = load ptr, ptr %pgtable.addr, align 8, !dbg !681, !tbaa !234
  %call = call ptr @ucs_pgt_dir_alloc(ptr noundef %38), !dbg !681
  store ptr %call, ptr %tmp44, align 8, !dbg !681, !tbaa !234
  br label %do.body45, !dbg !681

do.body45:                                        ; preds = %do.body43
  br label %do.cond46, !dbg !682

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !682

do.end47:                                         ; preds = %do.cond46
  %39 = load ptr, ptr %tmp44, align 8, !dbg !681, !tbaa !234
  %40 = ptrtoint ptr %39 to i64, !dbg !681
  %or48 = or i64 %40, 2, !dbg !681
  %41 = load ptr, ptr %pte, align 8, !dbg !681, !tbaa !234
  %value49 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %41, i32 0, i32 0, !dbg !681
  store i64 %or48, ptr %value49, align 8, !dbg !681, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp44) #11, !dbg !680
  br label %do.cond50, !dbg !681

do.cond50:                                        ; preds = %do.end47
  br label %do.end51, !dbg !681

do.end51:                                         ; preds = %do.cond50
  br label %if.end52, !dbg !684

if.end52:                                         ; preds = %do.end51, %if.end36
  %42 = load ptr, ptr %pte, align 8, !dbg !685, !tbaa !234
  %value54 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %42, i32 0, i32 0, !dbg !685
  %43 = load i64, ptr %value54, align 8, !dbg !685, !tbaa !324
  %and55 = and i64 %43, -4, !dbg !685
  %44 = inttoptr i64 %and55 to ptr, !dbg !685
  store ptr %44, ptr %tmp53, align 8, !dbg !687, !tbaa !234
  %45 = load ptr, ptr %tmp53, align 8, !dbg !685, !tbaa !234
  store ptr %45, ptr %pgd, align 8, !dbg !688, !tbaa !234
  %46 = load i32, ptr %shift, align 4, !dbg !689, !tbaa !307
  %sub = sub i32 %46, 4, !dbg !689
  store i32 %sub, ptr %shift, align 4, !dbg !689, !tbaa !307
  %47 = load ptr, ptr %pgd, align 8, !dbg !690, !tbaa !234
  %entries = getelementptr inbounds %struct.ucs_pgt_dir, ptr %47, i32 0, i32 0, !dbg !691
  %48 = load i64, ptr %address.addr, align 8, !dbg !692, !tbaa !311
  %49 = load i32, ptr %shift, align 4, !dbg !693, !tbaa !307
  %sh_prom = zext i32 %49 to i64, !dbg !694
  %shr = lshr i64 %48, %sh_prom, !dbg !694
  %and56 = and i64 %shr, 15, !dbg !695
  %arrayidx = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries, i64 0, i64 %and56, !dbg !690
  store ptr %arrayidx, ptr %pte, align 8, !dbg !696, !tbaa !234
  br label %if.end57

if.end57:                                         ; preds = %if.end52
  br label %while.cond15, !dbg !652, !llvm.loop !697

while.end58:                                      ; preds = %do.end30
  store i8 0, ptr %retval, align 1, !dbg !699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !699

err:                                              ; preds = %if.then35, %if.then22
  tail call void @llvm.dbg.label(metadata !585), !dbg !700
  br label %while.cond59, !dbg !701

while.cond59:                                     ; preds = %while.body62, %err
  %50 = load ptr, ptr %pgtable.addr, align 8, !dbg !702, !tbaa !234
  %call60 = call i32 @ucs_pgtable_shrink(ptr noundef %50), !dbg !703
  %tobool61 = icmp ne i32 %call60, 0, !dbg !701
  br i1 %tobool61, label %while.body62, label %while.end63, !dbg !701

while.body62:                                     ; preds = %while.cond59
  br label %while.cond59, !dbg !701, !llvm.loop !704

while.end63:                                      ; preds = %while.cond59
  store i8 -18, ptr %retval, align 1, !dbg !706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !706

cleanup:                                          ; preds = %while.end63, %while.end58
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #11, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !707
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !707
  call void @llvm.lifetime.end.p0(i64 136, ptr %dummy_pgd) #11, !dbg !707
  %51 = load i8, ptr %retval, align 1, !dbg !707
  ret i8 %51, !dbg !707
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_pgt_address_advance(ptr noundef %address_p, i32 noundef %order) #2 !dbg !708 {
entry:
  %address_p.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  store ptr %address_p, ptr %address_p.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %address_p.addr, metadata !713, metadata !DIExpression()), !dbg !715
  store i32 %order, ptr %order.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !714, metadata !DIExpression()), !dbg !716
  %0 = load i32, ptr %order.addr, align 4, !dbg !717, !tbaa !307
  %sh_prom = zext i32 %0 to i64, !dbg !718
  %shl = shl i64 1, %sh_prom, !dbg !718
  %1 = load ptr, ptr %address_p.addr, align 8, !dbg !719, !tbaa !234
  %2 = load i64, ptr %1, align 8, !dbg !720, !tbaa !311
  %add = add i64 %2, %shl, !dbg !720
  store i64 %add, ptr %1, align 8, !dbg !720, !tbaa !311
  ret void, !dbg !721
}

; Function Attrs: nounwind uwtable
define internal void @ucs_pgtable_trace(ptr noundef %pgtable, ptr noundef %message) #0 !dbg !722 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !726, metadata !DIExpression()), !dbg !728
  store ptr %message, ptr %message.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !727, metadata !DIExpression()), !dbg !729
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !730, !tbaa !234
  %1 = load ptr, ptr %message.addr, align 8, !dbg !731, !tbaa !234
  call void @ucs_pgtable_log(ptr noundef %0, i32 noundef 10, ptr noundef %1), !dbg !732
  ret void, !dbg !733
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ucs_pgtable_remove_page(ptr noundef %pgtable, i64 noundef %address, i32 noundef %order, ptr noundef %region) #0 !dbg !734 {
entry:
  %retval = alloca i8, align 1
  %pgtable.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %region.addr = alloca ptr, align 8
  %dummy_pgd = alloca %struct.ucs_pgt_dir, align 8
  %status = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !736, metadata !DIExpression()), !dbg !742
  store i64 %address, ptr %address.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !737, metadata !DIExpression()), !dbg !743
  store i32 %order, ptr %order.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !738, metadata !DIExpression()), !dbg !744
  store ptr %region, ptr %region.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !739, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 136, ptr %dummy_pgd) #11, !dbg !746
  tail call void @llvm.dbg.declare(metadata ptr %dummy_pgd, metadata !740, metadata !DIExpression()), !dbg !747
  call void @llvm.memset.p0.i64(ptr align 8 %dummy_pgd, i8 0, i64 136, i1 false), !dbg !747
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #11, !dbg !748
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !741, metadata !DIExpression()), !dbg !749
  %0 = load i64, ptr %address.addr, align 8, !dbg !750, !tbaa !311
  %1 = load i32, ptr %order.addr, align 4, !dbg !751, !tbaa !307
  call void @ucs_pgtable_check_page(i64 noundef %0, i32 noundef %1), !dbg !752
  %2 = load i64, ptr %address.addr, align 8, !dbg !753, !tbaa !311
  %3 = load ptr, ptr %pgtable.addr, align 8, !dbg !755, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %3, i32 0, i32 2, !dbg !756
  %4 = load i64, ptr %mask, align 8, !dbg !756, !tbaa !256
  %and = and i64 %2, %4, !dbg !757
  %5 = load ptr, ptr %pgtable.addr, align 8, !dbg !758, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %5, i32 0, i32 1, !dbg !759
  %6 = load i64, ptr %base, align 8, !dbg !759, !tbaa !249
  %cmp = icmp ne i64 %and, %6, !dbg !760
  br i1 %cmp, label %if.then, label %if.end, !dbg !761

if.then:                                          ; preds = %entry
  store i8 -12, ptr %retval, align 1, !dbg !762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !762

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pgtable.addr, align 8, !dbg !764, !tbaa !234
  %8 = load i64, ptr %address.addr, align 8, !dbg !765, !tbaa !311
  %9 = load i32, ptr %order.addr, align 4, !dbg !766, !tbaa !307
  %10 = load ptr, ptr %pgtable.addr, align 8, !dbg !767, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %10, i32 0, i32 0, !dbg !768
  %11 = load ptr, ptr %pgtable.addr, align 8, !dbg !769, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %11, i32 0, i32 3, !dbg !770
  %12 = load i32, ptr %shift, align 8, !dbg !770, !tbaa !259
  %13 = load ptr, ptr %region.addr, align 8, !dbg !771, !tbaa !234
  %call = call signext i8 @ucs_pgtable_remove_page_recurs(ptr noundef %7, i64 noundef %8, i32 noundef %9, ptr noundef %dummy_pgd, ptr noundef %root, i32 noundef %12, ptr noundef %13), !dbg !772
  store i8 %call, ptr %status, align 1, !dbg !773, !tbaa !239
  %14 = load i8, ptr %status, align 1, !dbg !774, !tbaa !239
  %conv = sext i8 %14 to i32, !dbg !774
  %cmp1 = icmp ne i32 %conv, 0, !dbg !776
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !777

if.then3:                                         ; preds = %if.end
  %15 = load i8, ptr %status, align 1, !dbg !778, !tbaa !239
  store i8 %15, ptr %retval, align 1, !dbg !780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !780

if.end4:                                          ; preds = %if.end
  br label %while.cond, !dbg !781

while.cond:                                       ; preds = %while.body, %if.end4
  %16 = load ptr, ptr %pgtable.addr, align 8, !dbg !782, !tbaa !234
  %call5 = call i32 @ucs_pgtable_shrink(ptr noundef %16), !dbg !783
  %tobool = icmp ne i32 %call5, 0, !dbg !781
  br i1 %tobool, label %while.body, label %while.end, !dbg !781

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !781, !llvm.loop !784

while.end:                                        ; preds = %while.cond
  store i8 0, ptr %retval, align 1, !dbg !786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !786

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #11, !dbg !787
  call void @llvm.lifetime.end.p0(i64 136, ptr %dummy_pgd) #11, !dbg !787
  %17 = load i8, ptr %retval, align 1, !dbg !787
  ret i8 %17, !dbg !787
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define signext i8 @ucs_pgtable_remove(ptr noundef %pgtable, ptr noundef %region) #0 !dbg !788 {
entry:
  %retval = alloca i8, align 1
  %pgtable.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %address = alloca i64, align 8
  %end = alloca i64, align 8
  %status = alloca i8, align 1
  %order = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !790, metadata !DIExpression()), !dbg !796
  store ptr %region, ptr %region.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !791, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #11, !dbg !798
  tail call void @llvm.dbg.declare(metadata ptr %address, metadata !792, metadata !DIExpression()), !dbg !799
  %0 = load ptr, ptr %region.addr, align 8, !dbg !800, !tbaa !234
  %start = getelementptr inbounds %struct.ucs_pgt_region, ptr %0, i32 0, i32 0, !dbg !801
  %1 = load i64, ptr %start, align 8, !dbg !801, !tbaa !339
  store i64 %1, ptr %address, align 8, !dbg !799, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !802
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !793, metadata !DIExpression()), !dbg !803
  %2 = load ptr, ptr %region.addr, align 8, !dbg !804, !tbaa !234
  %end1 = getelementptr inbounds %struct.ucs_pgt_region, ptr %2, i32 0, i32 1, !dbg !805
  %3 = load i64, ptr %end1, align 8, !dbg !805, !tbaa !341
  store i64 %3, ptr %end, align 8, !dbg !803, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #11, !dbg !806
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !794, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #11, !dbg !808
  tail call void @llvm.dbg.declare(metadata ptr %order, metadata !795, metadata !DIExpression()), !dbg !809
  br label %do.body, !dbg !810

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !811

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !813

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !813

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !811

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !811

do.end4:                                          ; preds = %do.cond3
  %4 = load i64, ptr %address, align 8, !dbg !815, !tbaa !311
  %5 = load i64, ptr %end, align 8, !dbg !817, !tbaa !311
  %cmp = icmp uge i64 %4, %5, !dbg !818
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !819

lor.lhs.false:                                    ; preds = %do.end4
  %6 = load i64, ptr %address, align 8, !dbg !820, !tbaa !311
  %and = and i64 %6, 15, !dbg !820
  %tobool = icmp ne i64 %and, 0, !dbg !820
  br i1 %tobool, label %if.then, label %lor.lhs.false5, !dbg !821

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load i64, ptr %end, align 8, !dbg !822, !tbaa !311
  %and6 = and i64 %7, 15, !dbg !822
  %tobool7 = icmp ne i64 %and6, 0, !dbg !822
  br i1 %tobool7, label %if.then, label %if.end, !dbg !823

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %do.end4
  store i8 -12, ptr %retval, align 1, !dbg !824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !824

if.end:                                           ; preds = %lor.lhs.false5
  br label %while.cond, !dbg !826

while.cond:                                       ; preds = %if.end13, %if.end
  %8 = load i64, ptr %address, align 8, !dbg !827, !tbaa !311
  %9 = load i64, ptr %end, align 8, !dbg !828, !tbaa !311
  %cmp8 = icmp ult i64 %8, %9, !dbg !829
  br i1 %cmp8, label %while.body, label %while.end, !dbg !826

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %address, align 8, !dbg !830, !tbaa !311
  %11 = load i64, ptr %end, align 8, !dbg !832, !tbaa !311
  %call = call i32 @ucs_pgtable_get_next_page_order(i64 noundef %10, i64 noundef %11), !dbg !833
  store i32 %call, ptr %order, align 4, !dbg !834, !tbaa !307
  %12 = load ptr, ptr %pgtable.addr, align 8, !dbg !835, !tbaa !234
  %13 = load i64, ptr %address, align 8, !dbg !836, !tbaa !311
  %14 = load i32, ptr %order, align 4, !dbg !837, !tbaa !307
  %15 = load ptr, ptr %region.addr, align 8, !dbg !838, !tbaa !234
  %call9 = call signext i8 @ucs_pgtable_remove_page(ptr noundef %12, i64 noundef %13, i32 noundef %14, ptr noundef %15), !dbg !839
  store i8 %call9, ptr %status, align 1, !dbg !840, !tbaa !239
  %16 = load i8, ptr %status, align 1, !dbg !841, !tbaa !239
  %conv = sext i8 %16 to i32, !dbg !841
  %cmp10 = icmp ne i32 %conv, 0, !dbg !843
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !844

if.then12:                                        ; preds = %while.body
  %17 = load i8, ptr %status, align 1, !dbg !845, !tbaa !239
  store i8 %17, ptr %retval, align 1, !dbg !847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !847

if.end13:                                         ; preds = %while.body
  %18 = load i32, ptr %order, align 4, !dbg !848, !tbaa !307
  call void @ucs_pgt_address_advance(ptr noundef %address, i32 noundef %18), !dbg !849
  br label %while.cond, !dbg !826, !llvm.loop !850

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr %pgtable.addr, align 8, !dbg !852, !tbaa !234
  %num_regions = getelementptr inbounds %struct.ucs_pgtable, ptr %19, i32 0, i32 4, !dbg !853
  %20 = load i32, ptr %num_regions, align 4, !dbg !854, !tbaa !285
  %dec = add i32 %20, -1, !dbg !854
  store i32 %dec, ptr %num_regions, align 4, !dbg !854, !tbaa !285
  %21 = load ptr, ptr %pgtable.addr, align 8, !dbg !855, !tbaa !234
  call void @ucs_pgtable_trace(ptr noundef %21, ptr noundef @.str.2), !dbg !856
  store i8 0, ptr %retval, align 1, !dbg !857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !857

cleanup:                                          ; preds = %while.end, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #11, !dbg !858
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #11, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #11, !dbg !858
  %22 = load i8, ptr %retval, align 1, !dbg !858
  ret i8 %22, !dbg !858
}

; Function Attrs: nounwind uwtable
define ptr @ucs_pgtable_lookup(ptr noundef %pgtable, i64 noundef %address) #0 !dbg !859 {
entry:
  %retval = alloca ptr, align 8
  %pgtable.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %pte = alloca ptr, align 8
  %region = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %shift = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !863, metadata !DIExpression()), !dbg !869
  store i64 %address, ptr %address.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !864, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !871
  tail call void @llvm.dbg.declare(metadata ptr %pte, metadata !865, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #11, !dbg !873
  tail call void @llvm.dbg.declare(metadata ptr %region, metadata !866, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #11, !dbg !875
  tail call void @llvm.dbg.declare(metadata ptr %dir, metadata !867, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #11, !dbg !877
  tail call void @llvm.dbg.declare(metadata ptr %shift, metadata !868, metadata !DIExpression()), !dbg !878
  br label %do.body, !dbg !879

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !880

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !882

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !882

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !880

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !880

do.end3:                                          ; preds = %do.cond2
  %0 = load i64, ptr %address.addr, align 8, !dbg !884, !tbaa !311
  %1 = load ptr, ptr %pgtable.addr, align 8, !dbg !886, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %1, i32 0, i32 2, !dbg !887
  %2 = load i64, ptr %mask, align 8, !dbg !887, !tbaa !256
  %and = and i64 %0, %2, !dbg !888
  %3 = load ptr, ptr %pgtable.addr, align 8, !dbg !889, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %3, i32 0, i32 1, !dbg !890
  %4 = load i64, ptr %base, align 8, !dbg !890, !tbaa !249
  %cmp = icmp ne i64 %and, %4, !dbg !891
  br i1 %cmp, label %if.then, label %if.end, !dbg !892

if.then:                                          ; preds = %do.end3
  store ptr null, ptr %retval, align 8, !dbg !893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !893

if.end:                                           ; preds = %do.end3
  %5 = load ptr, ptr %pgtable.addr, align 8, !dbg !895, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %5, i32 0, i32 0, !dbg !896
  store ptr %root, ptr %pte, align 8, !dbg !897, !tbaa !234
  %6 = load ptr, ptr %pgtable.addr, align 8, !dbg !898, !tbaa !234
  %shift4 = getelementptr inbounds %struct.ucs_pgtable, ptr %6, i32 0, i32 3, !dbg !899
  %7 = load i32, ptr %shift4, align 8, !dbg !899, !tbaa !259
  store i32 %7, ptr %shift, align 4, !dbg !900, !tbaa !307
  br label %for.cond, !dbg !901

for.cond:                                         ; preds = %if.end19, %if.end
  %8 = load ptr, ptr %pte, align 8, !dbg !902, !tbaa !234
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %8, i32 0, i32 0, !dbg !902
  %9 = load i64, ptr %value, align 8, !dbg !902, !tbaa !324
  %and5 = and i64 %9, 1, !dbg !902
  %tobool = icmp ne i64 %and5, 0, !dbg !902
  br i1 %tobool, label %if.then6, label %if.else, !dbg !907

if.then6:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pte, align 8, !dbg !908, !tbaa !234
  %value7 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %10, i32 0, i32 0, !dbg !908
  %11 = load i64, ptr %value7, align 8, !dbg !908, !tbaa !324
  %and8 = and i64 %11, -4, !dbg !908
  %12 = inttoptr i64 %and8 to ptr, !dbg !908
  store ptr %12, ptr %tmp, align 8, !dbg !911, !tbaa !234
  %13 = load ptr, ptr %tmp, align 8, !dbg !908, !tbaa !234
  store ptr %13, ptr %region, align 8, !dbg !912, !tbaa !234
  %14 = load ptr, ptr %region, align 8, !dbg !913, !tbaa !234
  store ptr %14, ptr %retval, align 8, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !914

if.else:                                          ; preds = %for.cond
  %15 = load ptr, ptr %pte, align 8, !dbg !915, !tbaa !234
  %value9 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %15, i32 0, i32 0, !dbg !915
  %16 = load i64, ptr %value9, align 8, !dbg !915, !tbaa !324
  %and10 = and i64 %16, 2, !dbg !915
  %tobool11 = icmp ne i64 %and10, 0, !dbg !915
  br i1 %tobool11, label %if.then12, label %if.else17, !dbg !917

if.then12:                                        ; preds = %if.else
  %17 = load ptr, ptr %pte, align 8, !dbg !918, !tbaa !234
  %value14 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %17, i32 0, i32 0, !dbg !918
  %18 = load i64, ptr %value14, align 8, !dbg !918, !tbaa !324
  %and15 = and i64 %18, -4, !dbg !918
  %19 = inttoptr i64 %and15 to ptr, !dbg !918
  store ptr %19, ptr %tmp13, align 8, !dbg !921, !tbaa !234
  %20 = load ptr, ptr %tmp13, align 8, !dbg !918, !tbaa !234
  store ptr %20, ptr %dir, align 8, !dbg !922, !tbaa !234
  %21 = load i32, ptr %shift, align 4, !dbg !923, !tbaa !307
  %sub = sub i32 %21, 4, !dbg !923
  store i32 %sub, ptr %shift, align 4, !dbg !923, !tbaa !307
  %22 = load ptr, ptr %dir, align 8, !dbg !924, !tbaa !234
  %entries = getelementptr inbounds %struct.ucs_pgt_dir, ptr %22, i32 0, i32 0, !dbg !925
  %23 = load i64, ptr %address.addr, align 8, !dbg !926, !tbaa !311
  %24 = load i32, ptr %shift, align 4, !dbg !927, !tbaa !307
  %sh_prom = zext i32 %24 to i64, !dbg !928
  %shr = lshr i64 %23, %sh_prom, !dbg !928
  %and16 = and i64 %shr, 15, !dbg !929
  %arrayidx = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries, i64 0, i64 %and16, !dbg !924
  store ptr %arrayidx, ptr %pte, align 8, !dbg !930, !tbaa !234
  br label %if.end18, !dbg !931

if.else17:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8, !dbg !932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !932

if.end18:                                         ; preds = %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  br label %for.cond, !dbg !934, !llvm.loop !935

cleanup:                                          ; preds = %if.else17, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #11, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #11, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #11, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !938
  %25 = load ptr, ptr %retval, align 8, !dbg !938
  ret ptr %25, !dbg !938
}

; Function Attrs: nounwind uwtable
define void @ucs_pgtable_search_range(ptr noundef %pgtable, i64 noundef %from, i64 noundef %to, ptr noundef %cb, ptr noundef %arg) #0 !dbg !939 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %from.addr = alloca i64, align 8
  %to.addr = alloca i64, align 8
  %cb.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %address = alloca i64, align 8
  %end = alloca i64, align 8
  %last = alloca ptr, align 8
  %order = alloca i32, align 4
  %_max_a = alloca i64, align 8
  %_max_b = alloca i64, align 8
  %tmp = alloca i64, align 8
  %_min_a = alloca i64, align 8
  %_min_b = alloca i64, align 8
  %tmp8 = alloca i64, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !947, metadata !DIExpression()), !dbg !965
  store i64 %from, ptr %from.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !948, metadata !DIExpression()), !dbg !966
  store i64 %to, ptr %to.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !949, metadata !DIExpression()), !dbg !967
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !950, metadata !DIExpression()), !dbg !968
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !951, metadata !DIExpression()), !dbg !969
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #11, !dbg !970
  tail call void @llvm.dbg.declare(metadata ptr %address, metadata !952, metadata !DIExpression()), !dbg !971
  %0 = load i64, ptr %from.addr, align 8, !dbg !972, !tbaa !311
  %and = and i64 %0, -16, !dbg !972
  store i64 %and, ptr %address, align 8, !dbg !971, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !973
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !953, metadata !DIExpression()), !dbg !974
  %1 = load i64, ptr %to.addr, align 8, !dbg !975, !tbaa !311
  %add = add i64 %1, 16, !dbg !975
  %sub = sub i64 %add, 1, !dbg !975
  %and1 = and i64 %sub, -16, !dbg !975
  store i64 %and1, ptr %end, align 8, !dbg !974, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #11, !dbg !976
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !954, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0(i64 4, ptr %order) #11, !dbg !978
  tail call void @llvm.dbg.declare(metadata ptr %order, metadata !955, metadata !DIExpression()), !dbg !979
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !980, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %2, i32 0, i32 3, !dbg !981
  %3 = load i32, ptr %shift, align 8, !dbg !981, !tbaa !259
  %conv = zext i32 %3 to i64, !dbg !980
  %cmp = icmp ult i64 %conv, 64, !dbg !982
  br i1 %cmp, label %if.then, label %if.else, !dbg !983

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_max_a) #11, !dbg !984
  tail call void @llvm.dbg.declare(metadata ptr %_max_a, metadata !956, metadata !DIExpression()), !dbg !984
  %4 = load i64, ptr %address, align 8, !dbg !984, !tbaa !311
  store i64 %4, ptr %_max_a, align 8, !dbg !984, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %_max_b) #11, !dbg !984
  tail call void @llvm.dbg.declare(metadata ptr %_max_b, metadata !960, metadata !DIExpression()), !dbg !984
  %5 = load ptr, ptr %pgtable.addr, align 8, !dbg !984, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %5, i32 0, i32 1, !dbg !984
  %6 = load i64, ptr %base, align 8, !dbg !984, !tbaa !249
  store i64 %6, ptr %_max_b, align 8, !dbg !984, !tbaa !311
  %7 = load i64, ptr %_max_a, align 8, !dbg !984, !tbaa !311
  %8 = load i64, ptr %_max_b, align 8, !dbg !984, !tbaa !311
  %cmp3 = icmp ugt i64 %7, %8, !dbg !984
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !984

cond.true:                                        ; preds = %if.then
  %9 = load i64, ptr %_max_a, align 8, !dbg !984, !tbaa !311
  br label %cond.end, !dbg !984

cond.false:                                       ; preds = %if.then
  %10 = load i64, ptr %_max_b, align 8, !dbg !984, !tbaa !311
  br label %cond.end, !dbg !984

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !984
  store i64 %cond, ptr %tmp, align 8, !dbg !984, !tbaa !311
  call void @llvm.lifetime.end.p0(i64 8, ptr %_max_b) #11, !dbg !985
  call void @llvm.lifetime.end.p0(i64 8, ptr %_max_a) #11, !dbg !985
  %11 = load i64, ptr %tmp, align 8, !dbg !984, !tbaa !311
  store i64 %11, ptr %address, align 8, !dbg !986, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %_min_a) #11, !dbg !987
  tail call void @llvm.dbg.declare(metadata ptr %_min_a, metadata !962, metadata !DIExpression()), !dbg !987
  %12 = load i64, ptr %end, align 8, !dbg !987, !tbaa !311
  store i64 %12, ptr %_min_a, align 8, !dbg !987, !tbaa !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %_min_b) #11, !dbg !987
  tail call void @llvm.dbg.declare(metadata ptr %_min_b, metadata !964, metadata !DIExpression()), !dbg !987
  %13 = load ptr, ptr %pgtable.addr, align 8, !dbg !987, !tbaa !234
  %base5 = getelementptr inbounds %struct.ucs_pgtable, ptr %13, i32 0, i32 1, !dbg !987
  %14 = load i64, ptr %base5, align 8, !dbg !987, !tbaa !249
  %15 = load ptr, ptr %pgtable.addr, align 8, !dbg !987, !tbaa !234
  %shift6 = getelementptr inbounds %struct.ucs_pgtable, ptr %15, i32 0, i32 3, !dbg !987
  %16 = load i32, ptr %shift6, align 8, !dbg !987, !tbaa !259
  %sh_prom = zext i32 %16 to i64, !dbg !987
  %shl = shl i64 1, %sh_prom, !dbg !987
  %add7 = add i64 %14, %shl, !dbg !987
  store i64 %add7, ptr %_min_b, align 8, !dbg !987, !tbaa !311
  %17 = load i64, ptr %_min_a, align 8, !dbg !987, !tbaa !311
  %18 = load i64, ptr %_min_b, align 8, !dbg !987, !tbaa !311
  %cmp9 = icmp ult i64 %17, %18, !dbg !987
  br i1 %cmp9, label %cond.true11, label %cond.false12, !dbg !987

cond.true11:                                      ; preds = %cond.end
  %19 = load i64, ptr %_min_a, align 8, !dbg !987, !tbaa !311
  br label %cond.end13, !dbg !987

cond.false12:                                     ; preds = %cond.end
  %20 = load i64, ptr %_min_b, align 8, !dbg !987, !tbaa !311
  br label %cond.end13, !dbg !987

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i64 [ %19, %cond.true11 ], [ %20, %cond.false12 ], !dbg !987
  store i64 %cond14, ptr %tmp8, align 8, !dbg !987, !tbaa !311
  call void @llvm.lifetime.end.p0(i64 8, ptr %_min_b) #11, !dbg !988
  call void @llvm.lifetime.end.p0(i64 8, ptr %_min_a) #11, !dbg !988
  %21 = load i64, ptr %tmp8, align 8, !dbg !987, !tbaa !311
  store i64 %21, ptr %end, align 8, !dbg !989, !tbaa !311
  br label %if.end, !dbg !990

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end13
  store ptr null, ptr %last, align 8, !dbg !991, !tbaa !234
  br label %while.cond, !dbg !992

while.cond:                                       ; preds = %if.end28, %if.end
  %22 = load i64, ptr %address, align 8, !dbg !993, !tbaa !311
  %23 = load i64, ptr %to.addr, align 8, !dbg !994, !tbaa !311
  %cmp15 = icmp ule i64 %22, %23, !dbg !995
  br i1 %cmp15, label %while.body, label %while.end, !dbg !992

while.body:                                       ; preds = %while.cond
  %24 = load i64, ptr %address, align 8, !dbg !996, !tbaa !311
  %25 = load i64, ptr %end, align 8, !dbg !998, !tbaa !311
  %call = call i32 @ucs_pgtable_get_next_page_order(i64 noundef %24, i64 noundef %25), !dbg !999
  store i32 %call, ptr %order, align 4, !dbg !1000, !tbaa !307
  %26 = load i64, ptr %address, align 8, !dbg !1001, !tbaa !311
  %27 = load ptr, ptr %pgtable.addr, align 8, !dbg !1003, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %27, i32 0, i32 2, !dbg !1004
  %28 = load i64, ptr %mask, align 8, !dbg !1004, !tbaa !256
  %and17 = and i64 %26, %28, !dbg !1005
  %29 = load ptr, ptr %pgtable.addr, align 8, !dbg !1006, !tbaa !234
  %base18 = getelementptr inbounds %struct.ucs_pgtable, ptr %29, i32 0, i32 1, !dbg !1007
  %30 = load i64, ptr %base18, align 8, !dbg !1007, !tbaa !249
  %cmp19 = icmp eq i64 %and17, %30, !dbg !1008
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !1009

if.then21:                                        ; preds = %while.body
  %31 = load ptr, ptr %pgtable.addr, align 8, !dbg !1010, !tbaa !234
  %32 = load i64, ptr %address, align 8, !dbg !1012, !tbaa !311
  %33 = load i32, ptr %order, align 4, !dbg !1013, !tbaa !307
  %34 = load ptr, ptr %pgtable.addr, align 8, !dbg !1014, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %34, i32 0, i32 0, !dbg !1015
  %35 = load ptr, ptr %pgtable.addr, align 8, !dbg !1016, !tbaa !234
  %shift22 = getelementptr inbounds %struct.ucs_pgtable, ptr %35, i32 0, i32 3, !dbg !1017
  %36 = load i32, ptr %shift22, align 8, !dbg !1017, !tbaa !259
  %37 = load ptr, ptr %cb.addr, align 8, !dbg !1018, !tbaa !234
  %38 = load ptr, ptr %arg.addr, align 8, !dbg !1019, !tbaa !234
  call void @ucs_pgtable_search_recurs(ptr noundef %31, i64 noundef %32, i32 noundef %33, ptr noundef %root, i32 noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %last), !dbg !1020
  br label %if.end23, !dbg !1021

if.end23:                                         ; preds = %if.then21, %while.body
  %39 = load i32, ptr %order, align 4, !dbg !1022, !tbaa !307
  %conv24 = zext i32 %39 to i64, !dbg !1022
  %cmp25 = icmp eq i64 %conv24, 64, !dbg !1024
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1025

if.then27:                                        ; preds = %if.end23
  br label %while.end, !dbg !1026

if.end28:                                         ; preds = %if.end23
  %40 = load i32, ptr %order, align 4, !dbg !1028, !tbaa !307
  call void @ucs_pgt_address_advance(ptr noundef %address, i32 noundef %40), !dbg !1029
  br label %while.cond, !dbg !992, !llvm.loop !1030

while.end:                                        ; preds = %if.then27, %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %order) #11, !dbg !1032
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #11, !dbg !1032
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !1032
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #11, !dbg !1032
  ret void, !dbg !1032
}

; Function Attrs: nounwind uwtable
define internal void @ucs_pgtable_search_recurs(ptr noundef %pgtable, i64 noundef %address, i32 noundef %order, ptr noundef %pte, i32 noundef %shift, ptr noundef %cb, ptr noundef %arg, ptr noundef %last_p) #0 !dbg !1033 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %pte.addr = alloca ptr, align 8
  %shift.addr = alloca i32, align 4
  %cb.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %last_p.addr = alloca ptr, align 8
  %next_pte = alloca ptr, align 8
  %region = alloca ptr, align 8
  %dir = alloca ptr, align 8
  %next_shift = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1038, metadata !DIExpression()), !dbg !1051
  store i64 %address, ptr %address.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1039, metadata !DIExpression()), !dbg !1052
  store i32 %order, ptr %order.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !1040, metadata !DIExpression()), !dbg !1053
  store ptr %pte, ptr %pte.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !1041, metadata !DIExpression()), !dbg !1054
  store i32 %shift, ptr %shift.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !1042, metadata !DIExpression()), !dbg !1055
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !1043, metadata !DIExpression()), !dbg !1056
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1044, metadata !DIExpression()), !dbg !1057
  store ptr %last_p, ptr %last_p.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %last_p.addr, metadata !1045, metadata !DIExpression()), !dbg !1058
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_pte) #11, !dbg !1059
  tail call void @llvm.dbg.declare(metadata ptr %next_pte, metadata !1046, metadata !DIExpression()), !dbg !1060
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #11, !dbg !1061
  tail call void @llvm.dbg.declare(metadata ptr %region, metadata !1047, metadata !DIExpression()), !dbg !1062
  call void @llvm.lifetime.start.p0(i64 8, ptr %dir) #11, !dbg !1063
  tail call void @llvm.dbg.declare(metadata ptr %dir, metadata !1048, metadata !DIExpression()), !dbg !1064
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_shift) #11, !dbg !1065
  tail call void @llvm.dbg.declare(metadata ptr %next_shift, metadata !1049, metadata !DIExpression()), !dbg !1066
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1067
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1050, metadata !DIExpression()), !dbg !1068
  %0 = load ptr, ptr %pte.addr, align 8, !dbg !1069, !tbaa !234
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %0, i32 0, i32 0, !dbg !1069
  %1 = load i64, ptr %value, align 8, !dbg !1069, !tbaa !324
  %and = and i64 %1, 1, !dbg !1069
  %tobool = icmp ne i64 %and, 0, !dbg !1069
  br i1 %tobool, label %if.then, label %if.else7, !dbg !1071

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pte.addr, align 8, !dbg !1072, !tbaa !234
  %value1 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %2, i32 0, i32 0, !dbg !1072
  %3 = load i64, ptr %value1, align 8, !dbg !1072, !tbaa !324
  %and2 = and i64 %3, -4, !dbg !1072
  %4 = inttoptr i64 %and2 to ptr, !dbg !1072
  store ptr %4, ptr %region, align 8, !dbg !1074, !tbaa !234
  %5 = load ptr, ptr %last_p.addr, align 8, !dbg !1075, !tbaa !234
  %6 = load ptr, ptr %5, align 8, !dbg !1077, !tbaa !234
  %7 = load ptr, ptr %region, align 8, !dbg !1078, !tbaa !234
  %cmp = icmp eq ptr %6, %7, !dbg !1079
  br i1 %cmp, label %if.then3, label %if.else, !dbg !1080

if.then3:                                         ; preds = %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1081

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %last_p.addr, align 8, !dbg !1083, !tbaa !234
  %9 = load ptr, ptr %8, align 8, !dbg !1085, !tbaa !234
  %cmp4 = icmp ne ptr %9, null, !dbg !1086
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1087

if.then5:                                         ; preds = %if.else
  br label %if.end, !dbg !1088

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %region, align 8, !dbg !1090, !tbaa !234
  %11 = load ptr, ptr %last_p.addr, align 8, !dbg !1091, !tbaa !234
  store ptr %10, ptr %11, align 8, !dbg !1092, !tbaa !234
  %12 = load ptr, ptr %cb.addr, align 8, !dbg !1093, !tbaa !234
  %13 = load ptr, ptr %pgtable.addr, align 8, !dbg !1094, !tbaa !234
  %14 = load ptr, ptr %region, align 8, !dbg !1095, !tbaa !234
  %15 = load ptr, ptr %arg.addr, align 8, !dbg !1096, !tbaa !234
  call void %12(ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !1093
  br label %if.end24, !dbg !1097

if.else7:                                         ; preds = %entry
  %16 = load ptr, ptr %pte.addr, align 8, !dbg !1098, !tbaa !234
  %value8 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %16, i32 0, i32 0, !dbg !1098
  %17 = load i64, ptr %value8, align 8, !dbg !1098, !tbaa !324
  %and9 = and i64 %17, 2, !dbg !1098
  %tobool10 = icmp ne i64 %and9, 0, !dbg !1098
  br i1 %tobool10, label %if.then11, label %if.end23, !dbg !1100

if.then11:                                        ; preds = %if.else7
  %18 = load ptr, ptr %pte.addr, align 8, !dbg !1101, !tbaa !234
  %value12 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %18, i32 0, i32 0, !dbg !1101
  %19 = load i64, ptr %value12, align 8, !dbg !1101, !tbaa !324
  %and13 = and i64 %19, -4, !dbg !1101
  %20 = inttoptr i64 %and13 to ptr, !dbg !1101
  store ptr %20, ptr %tmp, align 8, !dbg !1104, !tbaa !234
  %21 = load ptr, ptr %tmp, align 8, !dbg !1101, !tbaa !234
  store ptr %21, ptr %dir, align 8, !dbg !1105, !tbaa !234
  %22 = load i32, ptr %shift.addr, align 4, !dbg !1106, !tbaa !307
  %sub = sub i32 %22, 4, !dbg !1107
  store i32 %sub, ptr %next_shift, align 4, !dbg !1108, !tbaa !307
  %23 = load i32, ptr %order.addr, align 4, !dbg !1109, !tbaa !307
  %24 = load i32, ptr %shift.addr, align 4, !dbg !1111, !tbaa !307
  %cmp14 = icmp ult i32 %23, %24, !dbg !1112
  br i1 %cmp14, label %if.then15, label %if.else17, !dbg !1113

if.then15:                                        ; preds = %if.then11
  %25 = load ptr, ptr %dir, align 8, !dbg !1114, !tbaa !234
  %entries = getelementptr inbounds %struct.ucs_pgt_dir, ptr %25, i32 0, i32 0, !dbg !1116
  %26 = load i64, ptr %address.addr, align 8, !dbg !1117, !tbaa !311
  %27 = load i32, ptr %next_shift, align 4, !dbg !1118, !tbaa !307
  %sh_prom = zext i32 %27 to i64, !dbg !1119
  %shr = lshr i64 %26, %sh_prom, !dbg !1119
  %and16 = and i64 %shr, 15, !dbg !1120
  %arrayidx = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries, i64 0, i64 %and16, !dbg !1114
  store ptr %arrayidx, ptr %next_pte, align 8, !dbg !1121, !tbaa !234
  %28 = load ptr, ptr %pgtable.addr, align 8, !dbg !1122, !tbaa !234
  %29 = load i64, ptr %address.addr, align 8, !dbg !1123, !tbaa !311
  %30 = load i32, ptr %order.addr, align 4, !dbg !1124, !tbaa !307
  %31 = load ptr, ptr %next_pte, align 8, !dbg !1125, !tbaa !234
  %32 = load i32, ptr %next_shift, align 4, !dbg !1126, !tbaa !307
  %33 = load ptr, ptr %cb.addr, align 8, !dbg !1127, !tbaa !234
  %34 = load ptr, ptr %arg.addr, align 8, !dbg !1128, !tbaa !234
  %35 = load ptr, ptr %last_p.addr, align 8, !dbg !1129, !tbaa !234
  call void @ucs_pgtable_search_recurs(ptr noundef %28, i64 noundef %29, i32 noundef %30, ptr noundef %31, i32 noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35), !dbg !1130
  br label %if.end22, !dbg !1131

if.else17:                                        ; preds = %if.then11
  store i32 0, ptr %i, align 4, !dbg !1132, !tbaa !307
  br label %for.cond, !dbg !1135

for.cond:                                         ; preds = %for.inc, %if.else17
  %36 = load i32, ptr %i, align 4, !dbg !1136, !tbaa !307
  %conv = zext i32 %36 to i64, !dbg !1136
  %cmp18 = icmp ult i64 %conv, 16, !dbg !1138
  br i1 %cmp18, label %for.body, label %for.end, !dbg !1139

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %dir, align 8, !dbg !1140, !tbaa !234
  %entries20 = getelementptr inbounds %struct.ucs_pgt_dir, ptr %37, i32 0, i32 0, !dbg !1142
  %38 = load i32, ptr %i, align 4, !dbg !1143, !tbaa !307
  %idxprom = zext i32 %38 to i64, !dbg !1140
  %arrayidx21 = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries20, i64 0, i64 %idxprom, !dbg !1140
  store ptr %arrayidx21, ptr %next_pte, align 8, !dbg !1144, !tbaa !234
  %39 = load ptr, ptr %pgtable.addr, align 8, !dbg !1145, !tbaa !234
  %40 = load i64, ptr %address.addr, align 8, !dbg !1146, !tbaa !311
  %41 = load i32, ptr %order.addr, align 4, !dbg !1147, !tbaa !307
  %42 = load ptr, ptr %next_pte, align 8, !dbg !1148, !tbaa !234
  %43 = load i32, ptr %next_shift, align 4, !dbg !1149, !tbaa !307
  %44 = load ptr, ptr %cb.addr, align 8, !dbg !1150, !tbaa !234
  %45 = load ptr, ptr %arg.addr, align 8, !dbg !1151, !tbaa !234
  %46 = load ptr, ptr %last_p.addr, align 8, !dbg !1152, !tbaa !234
  call void @ucs_pgtable_search_recurs(ptr noundef %39, i64 noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46), !dbg !1153
  br label %for.inc, !dbg !1154

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4, !dbg !1155, !tbaa !307
  %inc = add i32 %47, 1, !dbg !1155
  store i32 %inc, ptr %i, align 4, !dbg !1155, !tbaa !307
  br label %for.cond, !dbg !1156, !llvm.loop !1157

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !1159

if.end23:                                         ; preds = %if.end22, %if.else7
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1160
  br label %cleanup, !dbg !1160

cleanup:                                          ; preds = %if.end24, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_shift) #11, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 8, ptr %dir) #11, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #11, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_pte) #11, !dbg !1160
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1160

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define void @ucs_pgtable_purge(ptr noundef %pgtable, ptr noundef %cb, ptr noundef %arg) #0 !dbg !1161 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %num_regions = alloca i32, align 4
  %all_regions = alloca ptr, align 8
  %next_region = alloca ptr, align 8
  %region = alloca ptr, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %status = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1165, metadata !DIExpression()), !dbg !1177
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !1166, metadata !DIExpression()), !dbg !1178
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1167, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_regions) #11, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %num_regions, metadata !1168, metadata !DIExpression()), !dbg !1181
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1182, !tbaa !234
  %num_regions1 = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 4, !dbg !1183
  %1 = load i32, ptr %num_regions1, align 4, !dbg !1183, !tbaa !285
  store i32 %1, ptr %num_regions, align 4, !dbg !1181, !tbaa !307
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_regions) #11, !dbg !1184
  tail call void @llvm.dbg.declare(metadata ptr %all_regions, metadata !1169, metadata !DIExpression()), !dbg !1185
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_region) #11, !dbg !1184
  tail call void @llvm.dbg.declare(metadata ptr %next_region, metadata !1170, metadata !DIExpression()), !dbg !1186
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #11, !dbg !1184
  tail call void @llvm.dbg.declare(metadata ptr %region, metadata !1171, metadata !DIExpression()), !dbg !1187
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #11, !dbg !1188
  tail call void @llvm.dbg.declare(metadata ptr %from, metadata !1172, metadata !DIExpression()), !dbg !1189
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #11, !dbg !1188
  tail call void @llvm.dbg.declare(metadata ptr %to, metadata !1173, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #11, !dbg !1191
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1174, metadata !DIExpression()), !dbg !1192
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !1193
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1175, metadata !DIExpression()), !dbg !1194
  %2 = load i32, ptr %num_regions, align 4, !dbg !1195, !tbaa !307
  %cmp = icmp eq i32 %2, 0, !dbg !1197
  br i1 %cmp, label %if.then, label %if.end7, !dbg !1198

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1199

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !1201

do.body2:                                         ; preds = %do.body
  %3 = load i32, ptr @ucs_global_opts, align 8, !dbg !1203, !tbaa !279
  %cmp3 = icmp ule i32 5, %3, !dbg !1203
  %land.ext = zext i1 %cmp3 to i32, !dbg !1203
  %conv = sext i32 %land.ext to i64, !dbg !1203
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1203
  %tobool = icmp ne i64 %expval, 0, !dbg !1203
  br i1 %tobool, label %if.then4, label %if.end, !dbg !1206

if.then4:                                         ; preds = %do.body2
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 618, ptr noundef @__func__.ucs_pgtable_purge, i32 noundef 5, ptr noundef @ucs_global_opts, ptr noundef @.str.4), !dbg !1207
  br label %if.end, !dbg !1207

if.end:                                           ; preds = %if.then4, %do.body2
  br label %do.cond, !dbg !1206

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1206

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !1201

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !1201

do.end6:                                          ; preds = %do.cond5
  br label %out, !dbg !1209

if.end7:                                          ; preds = %entry
  %4 = load i32, ptr %num_regions, align 4, !dbg !1210, !tbaa !307
  %conv8 = zext i32 %4 to i64, !dbg !1210
  %call = call ptr @ucs_calloc(i64 noundef %conv8, i64 noundef 8, ptr noundef @.str.5), !dbg !1211
  store ptr %call, ptr %all_regions, align 8, !dbg !1212, !tbaa !234
  %5 = load ptr, ptr %all_regions, align 8, !dbg !1213, !tbaa !234
  %cmp9 = icmp eq ptr %5, null, !dbg !1215
  br i1 %cmp9, label %if.then11, label %if.end26, !dbg !1216

if.then11:                                        ; preds = %if.end7
  br label %do.body12, !dbg !1217

do.body12:                                        ; preds = %if.then11
  br label %do.body13, !dbg !1219

do.body13:                                        ; preds = %do.body12
  %6 = load i32, ptr @ucs_global_opts, align 8, !dbg !1221, !tbaa !279
  %cmp14 = icmp ule i32 2, %6, !dbg !1221
  %land.ext16 = zext i1 %cmp14 to i32, !dbg !1221
  %conv17 = sext i32 %land.ext16 to i64, !dbg !1221
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !1221
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !1221
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1224

if.then20:                                        ; preds = %do.body13
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 625, ptr noundef @__func__.ucs_pgtable_purge, i32 noundef 2, ptr noundef @ucs_global_opts, ptr noundef @.str.6), !dbg !1225
  br label %if.end21, !dbg !1225

if.end21:                                         ; preds = %if.then20, %do.body13
  br label %do.cond22, !dbg !1224

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !1224

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24, !dbg !1219

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !1219

do.end25:                                         ; preds = %do.cond24
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1227

if.end26:                                         ; preds = %if.end7
  %7 = load ptr, ptr %all_regions, align 8, !dbg !1228, !tbaa !234
  store ptr %7, ptr %next_region, align 8, !dbg !1229, !tbaa !234
  %8 = load ptr, ptr %pgtable.addr, align 8, !dbg !1230, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %8, i32 0, i32 1, !dbg !1231
  %9 = load i64, ptr %base, align 8, !dbg !1231, !tbaa !249
  store i64 %9, ptr %from, align 8, !dbg !1232, !tbaa !311
  %10 = load ptr, ptr %pgtable.addr, align 8, !dbg !1233, !tbaa !234
  %base27 = getelementptr inbounds %struct.ucs_pgtable, ptr %10, i32 0, i32 1, !dbg !1234
  %11 = load i64, ptr %base27, align 8, !dbg !1234, !tbaa !249
  %12 = load ptr, ptr %pgtable.addr, align 8, !dbg !1235, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %12, i32 0, i32 3, !dbg !1236
  %13 = load i32, ptr %shift, align 8, !dbg !1236, !tbaa !259
  %sh_prom = zext i32 %13 to i64, !dbg !1237
  %shl = shl i64 1, %sh_prom, !dbg !1237
  %14 = load ptr, ptr %pgtable.addr, align 8, !dbg !1238, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %14, i32 0, i32 2, !dbg !1239
  %15 = load i64, ptr %mask, align 8, !dbg !1239, !tbaa !256
  %and = and i64 %shl, %15, !dbg !1240
  %add = add i64 %11, %and, !dbg !1241
  %sub = sub i64 %add, 1, !dbg !1242
  store i64 %sub, ptr %to, align 8, !dbg !1243, !tbaa !311
  %16 = load ptr, ptr %pgtable.addr, align 8, !dbg !1244, !tbaa !234
  %17 = load i64, ptr %from, align 8, !dbg !1245, !tbaa !311
  %18 = load i64, ptr %to, align 8, !dbg !1246, !tbaa !311
  call void @ucs_pgtable_search_range(ptr noundef %16, i64 noundef %17, i64 noundef %18, ptr noundef @ucs_pgtable_purge_callback, ptr noundef %next_region), !dbg !1247
  store i32 0, ptr %i, align 4, !dbg !1248, !tbaa !307
  br label %for.cond, !dbg !1250

for.cond:                                         ; preds = %for.inc, %if.end26
  %19 = load i32, ptr %i, align 4, !dbg !1251, !tbaa !307
  %20 = load i32, ptr %num_regions, align 4, !dbg !1253, !tbaa !307
  %cmp28 = icmp ult i32 %19, %20, !dbg !1254
  br i1 %cmp28, label %for.body, label %for.end, !dbg !1255

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %all_regions, align 8, !dbg !1256, !tbaa !234
  %22 = load i32, ptr %i, align 4, !dbg !1258, !tbaa !307
  %idxprom = zext i32 %22 to i64, !dbg !1256
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 %idxprom, !dbg !1256
  %23 = load ptr, ptr %arrayidx, align 8, !dbg !1256, !tbaa !234
  store ptr %23, ptr %region, align 8, !dbg !1259, !tbaa !234
  %24 = load ptr, ptr %pgtable.addr, align 8, !dbg !1260, !tbaa !234
  %25 = load ptr, ptr %region, align 8, !dbg !1261, !tbaa !234
  %call30 = call signext i8 @ucs_pgtable_remove(ptr noundef %24, ptr noundef %25), !dbg !1262
  store i8 %call30, ptr %status, align 1, !dbg !1263, !tbaa !239
  %26 = load i8, ptr %status, align 1, !dbg !1264, !tbaa !239
  %conv31 = sext i8 %26 to i32, !dbg !1264
  %cmp32 = icmp ne i32 %conv31, 0, !dbg !1266
  br i1 %cmp32, label %if.then34, label %if.end49, !dbg !1267

if.then34:                                        ; preds = %for.body
  br label %do.body35, !dbg !1268

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !1270

do.body36:                                        ; preds = %do.body35
  %27 = load i32, ptr @ucs_global_opts, align 8, !dbg !1272, !tbaa !279
  %cmp37 = icmp ule i32 2, %27, !dbg !1272
  %land.ext39 = zext i1 %cmp37 to i32, !dbg !1272
  %conv40 = sext i32 %land.ext39 to i64, !dbg !1272
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !1272
  %tobool42 = icmp ne i64 %expval41, 0, !dbg !1272
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1275

if.then43:                                        ; preds = %do.body36
  %28 = load ptr, ptr %region, align 8, !dbg !1276, !tbaa !234
  %29 = load ptr, ptr %region, align 8, !dbg !1276, !tbaa !234
  %start = getelementptr inbounds %struct.ucs_pgt_region, ptr %29, i32 0, i32 0, !dbg !1276
  %30 = load i64, ptr %start, align 8, !dbg !1276, !tbaa !339
  %31 = load ptr, ptr %region, align 8, !dbg !1276, !tbaa !234
  %end = getelementptr inbounds %struct.ucs_pgt_region, ptr %31, i32 0, i32 1, !dbg !1276
  %32 = load i64, ptr %end, align 8, !dbg !1276, !tbaa !341
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 643, ptr noundef @__func__.ucs_pgtable_purge, i32 noundef 2, ptr noundef @ucs_global_opts, ptr noundef @.str.7, ptr noundef %28, i64 noundef %30, i64 noundef %32), !dbg !1276
  br label %if.end44, !dbg !1276

if.end44:                                         ; preds = %if.then43, %do.body36
  br label %do.cond45, !dbg !1275

do.cond45:                                        ; preds = %if.end44
  br label %do.end46, !dbg !1275

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !1270

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !1270

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !1278

if.end49:                                         ; preds = %do.end48, %for.body
  %33 = load ptr, ptr %cb.addr, align 8, !dbg !1279, !tbaa !234
  %34 = load ptr, ptr %pgtable.addr, align 8, !dbg !1280, !tbaa !234
  %35 = load ptr, ptr %region, align 8, !dbg !1281, !tbaa !234
  %36 = load ptr, ptr %arg.addr, align 8, !dbg !1282, !tbaa !234
  call void %33(ptr noundef %34, ptr noundef %35, ptr noundef %36), !dbg !1279
  br label %for.inc, !dbg !1283

for.inc:                                          ; preds = %if.end49
  %37 = load i32, ptr %i, align 4, !dbg !1284, !tbaa !307
  %inc = add i32 %37, 1, !dbg !1284
  store i32 %inc, ptr %i, align 4, !dbg !1284, !tbaa !307
  br label %for.cond, !dbg !1285, !llvm.loop !1286

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %all_regions, align 8, !dbg !1288, !tbaa !234
  call void @ucs_free(ptr noundef %38), !dbg !1289
  br label %out, !dbg !1289

out:                                              ; preds = %for.end, %do.end6
  tail call void @llvm.dbg.label(metadata !1176), !dbg !1290
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1291
  br label %cleanup, !dbg !1291

cleanup:                                          ; preds = %out, %do.end25
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #11, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #11, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #11, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #11, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_region) #11, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_regions) #11, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_regions) #11, !dbg !1291
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1291

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

declare !dbg !1292 void @ucs_log_dispatch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #4

declare !dbg !1296 ptr @ucs_calloc(i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @ucs_pgtable_purge_callback(ptr noundef %pgtable, ptr noundef %region, ptr noundef %arg) #0 !dbg !1300 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %region.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %region_pp = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1302, metadata !DIExpression()), !dbg !1307
  store ptr %region, ptr %region.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !1303, metadata !DIExpression()), !dbg !1308
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1304, metadata !DIExpression()), !dbg !1309
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_pp) #11, !dbg !1310
  tail call void @llvm.dbg.declare(metadata ptr %region_pp, metadata !1305, metadata !DIExpression()), !dbg !1311
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !1312, !tbaa !234
  store ptr %0, ptr %region_pp, align 8, !dbg !1311, !tbaa !234
  %1 = load ptr, ptr %region.addr, align 8, !dbg !1313, !tbaa !234
  %2 = load ptr, ptr %region_pp, align 8, !dbg !1314, !tbaa !234
  %3 = load ptr, ptr %2, align 8, !dbg !1315, !tbaa !234
  store ptr %1, ptr %3, align 8, !dbg !1316, !tbaa !234
  %4 = load ptr, ptr %region_pp, align 8, !dbg !1317, !tbaa !234
  %5 = load ptr, ptr %4, align 8, !dbg !1318, !tbaa !234
  %incdec.ptr = getelementptr inbounds ptr, ptr %5, i32 1, !dbg !1318
  store ptr %incdec.ptr, ptr %4, align 8, !dbg !1318, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_pp) #11, !dbg !1319
  ret void, !dbg !1319
}

declare !dbg !1320 void @ucs_free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define signext i8 @ucs_pgtable_init(ptr noundef %pgtable, ptr noundef %alloc_cb, ptr noundef %release_cb) #0 !dbg !1323 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %alloc_cb.addr = alloca ptr, align 8
  %release_cb.addr = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1327, metadata !DIExpression()), !dbg !1330
  store ptr %alloc_cb, ptr %alloc_cb.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %alloc_cb.addr, metadata !1328, metadata !DIExpression()), !dbg !1331
  store ptr %release_cb, ptr %release_cb.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %release_cb.addr, metadata !1329, metadata !DIExpression()), !dbg !1332
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1333, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 0, !dbg !1333
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %root, i32 0, i32 0, !dbg !1333
  store i64 0, ptr %value, align 8, !dbg !1333, !tbaa !618
  %1 = load ptr, ptr %pgtable.addr, align 8, !dbg !1335, !tbaa !234
  call void @ucs_pgtable_reset(ptr noundef %1), !dbg !1336
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !1337, !tbaa !234
  %num_regions = getelementptr inbounds %struct.ucs_pgtable, ptr %2, i32 0, i32 4, !dbg !1338
  store i32 0, ptr %num_regions, align 4, !dbg !1339, !tbaa !285
  %3 = load ptr, ptr %alloc_cb.addr, align 8, !dbg !1340, !tbaa !234
  %4 = load ptr, ptr %pgtable.addr, align 8, !dbg !1341, !tbaa !234
  %pgd_alloc_cb = getelementptr inbounds %struct.ucs_pgtable, ptr %4, i32 0, i32 5, !dbg !1342
  store ptr %3, ptr %pgd_alloc_cb, align 8, !dbg !1343, !tbaa !1344
  %5 = load ptr, ptr %release_cb.addr, align 8, !dbg !1345, !tbaa !234
  %6 = load ptr, ptr %pgtable.addr, align 8, !dbg !1346, !tbaa !234
  %pgd_release_cb = getelementptr inbounds %struct.ucs_pgtable, ptr %6, i32 0, i32 6, !dbg !1347
  store ptr %5, ptr %pgd_release_cb, align 8, !dbg !1348, !tbaa !1349
  ret i8 0, !dbg !1350
}

; Function Attrs: nounwind uwtable
define internal void @ucs_pgtable_reset(ptr noundef %pgtable) #0 !dbg !1351 {
entry:
  %pgtable.addr = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1355, metadata !DIExpression()), !dbg !1356
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1357, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 1, !dbg !1358
  store i64 0, ptr %base, align 8, !dbg !1359, !tbaa !249
  %1 = load ptr, ptr %pgtable.addr, align 8, !dbg !1360, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %1, i32 0, i32 2, !dbg !1361
  store i64 -16, ptr %mask, align 8, !dbg !1362, !tbaa !256
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !1363, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %2, i32 0, i32 3, !dbg !1364
  store i32 4, ptr %shift, align 8, !dbg !1365, !tbaa !259
  ret void, !dbg !1366
}

; Function Attrs: nounwind uwtable
define void @ucs_pgtable_cleanup(ptr noundef %pgtable) #0 !dbg !1367 {
entry:
  %pgtable.addr = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1369, metadata !DIExpression()), !dbg !1370
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1371, !tbaa !234
  %num_regions = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 4, !dbg !1373
  %1 = load i32, ptr %num_regions, align 4, !dbg !1373, !tbaa !285
  %cmp = icmp ne i32 %1, 0, !dbg !1374
  br i1 %cmp, label %if.then, label %if.end5, !dbg !1375

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1376

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !1378

do.body1:                                         ; preds = %do.body
  %2 = load i32, ptr @ucs_global_opts, align 8, !dbg !1380, !tbaa !279
  %cmp2 = icmp ule i32 2, %2, !dbg !1380
  %land.ext = zext i1 %cmp2 to i32, !dbg !1380
  %conv = sext i32 %land.ext to i64, !dbg !1380
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1380
  %tobool = icmp ne i64 %expval, 0, !dbg !1380
  br i1 %tobool, label %if.then3, label %if.end, !dbg !1383

if.then3:                                         ; preds = %do.body1
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.3, i32 noundef 682, ptr noundef @__func__.ucs_pgtable_cleanup, i32 noundef 2, ptr noundef @ucs_global_opts, ptr noundef @.str.8), !dbg !1384
  br label %if.end, !dbg !1384

if.end:                                           ; preds = %if.then3, %do.body1
  br label %do.end, !dbg !1383

do.end:                                           ; preds = %if.end
  br label %do.end4, !dbg !1378

do.end4:                                          ; preds = %do.end
  br label %if.end5, !dbg !1386

if.end5:                                          ; preds = %do.end4, %entry
  ret void, !dbg !1387
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @__ucs_ilog2_u64(i64 noundef %n) #6 !dbg !1388 {
entry:
  %n.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1393, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !1396
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1394, metadata !DIExpression()), !dbg !1397
  %0 = load i64, ptr %n.addr, align 8, !dbg !1398, !tbaa !311
  %1 = call i64 asm "bsrq $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !1399, !srcloc !1400
  store i64 %1, ptr %result, align 8, !dbg !1399, !tbaa !311
  %2 = load i64, ptr %result, align 8, !dbg !1401, !tbaa !311
  %conv = trunc i64 %2 to i32, !dbg !1401
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !1402
  ret i32 %conv, !dbg !1403
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucs_ffs64(i64 noundef %n) #6 !dbg !1404 {
entry:
  %n.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1406, metadata !DIExpression()), !dbg !1408
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !1409
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1407, metadata !DIExpression()), !dbg !1410
  %0 = load i64, ptr %n.addr, align 8, !dbg !1411, !tbaa !311
  %1 = call i64 asm "bsfq $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !1412, !srcloc !1413
  store i64 %1, ptr %result, align 8, !dbg !1412, !tbaa !311
  %2 = load i64, ptr %result, align 8, !dbg !1414, !tbaa !311
  %conv = trunc i64 %2 to i32, !dbg !1414
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !1415
  ret i32 %conv, !dbg !1416
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal void @ucs_pgtable_check_page(i64 noundef %address, i32 noundef %order) #0 !dbg !1417 {
entry:
  %address.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1421, metadata !DIExpression()), !dbg !1423
  store i32 %order, ptr %order.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !1422, metadata !DIExpression()), !dbg !1424
  ret void, !dbg !1425
}

; Function Attrs: nounwind uwtable
define internal void @ucs_pgtable_expand(ptr noundef %pgtable) #0 !dbg !1426 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1428, metadata !DIExpression()), !dbg !1434
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !1435
  tail call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1429, metadata !DIExpression()), !dbg !1436
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1437, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 0, !dbg !1437
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %root, i32 0, i32 0, !dbg !1437
  %1 = load i64, ptr %value, align 8, !dbg !1437, !tbaa !618
  %and = and i64 %1, 3, !dbg !1437
  %tobool = icmp ne i64 %and, 0, !dbg !1437
  br i1 %tobool, label %if.then, label %if.end, !dbg !1438

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !1439, !tbaa !234
  %call = call ptr @ucs_pgt_dir_alloc(ptr noundef %2), !dbg !1440
  store ptr %call, ptr %pgd, align 8, !dbg !1441, !tbaa !234
  %3 = load ptr, ptr %pgd, align 8, !dbg !1442, !tbaa !234
  %entries = getelementptr inbounds %struct.ucs_pgt_dir, ptr %3, i32 0, i32 0, !dbg !1443
  %4 = load ptr, ptr %pgtable.addr, align 8, !dbg !1444, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %4, i32 0, i32 1, !dbg !1445
  %5 = load i64, ptr %base, align 8, !dbg !1445, !tbaa !249
  %6 = load ptr, ptr %pgtable.addr, align 8, !dbg !1446, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %6, i32 0, i32 3, !dbg !1447
  %7 = load i32, ptr %shift, align 8, !dbg !1447, !tbaa !259
  %sh_prom = zext i32 %7 to i64, !dbg !1448
  %shr = lshr i64 %5, %sh_prom, !dbg !1448
  %and1 = and i64 %shr, 15, !dbg !1449
  %arrayidx = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries, i64 0, i64 %and1, !dbg !1442
  %8 = load ptr, ptr %pgtable.addr, align 8, !dbg !1450, !tbaa !234
  %root2 = getelementptr inbounds %struct.ucs_pgtable, ptr %8, i32 0, i32 0, !dbg !1451
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %root2, i64 8, i1 false), !dbg !1451, !tbaa.struct !1452
  %9 = load ptr, ptr %pgd, align 8, !dbg !1453, !tbaa !234
  %count = getelementptr inbounds %struct.ucs_pgt_dir, ptr %9, i32 0, i32 1, !dbg !1454
  store i32 1, ptr %count, align 8, !dbg !1455, !tbaa !361
  br label %do.body, !dbg !1456

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !1457
  tail call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1430, metadata !DIExpression()), !dbg !1457
  %10 = load ptr, ptr %pgd, align 8, !dbg !1457, !tbaa !234
  store ptr %10, ptr %tmp, align 8, !dbg !1457, !tbaa !234
  br label %do.body3, !dbg !1457

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !1458

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !1458

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %tmp, align 8, !dbg !1457, !tbaa !234
  %12 = ptrtoint ptr %11 to i64, !dbg !1457
  %or = or i64 %12, 2, !dbg !1457
  %13 = load ptr, ptr %pgtable.addr, align 8, !dbg !1457, !tbaa !234
  %root4 = getelementptr inbounds %struct.ucs_pgtable, ptr %13, i32 0, i32 0, !dbg !1457
  %value5 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %root4, i32 0, i32 0, !dbg !1457
  store i64 %or, ptr %value5, align 8, !dbg !1457, !tbaa !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !1456
  br label %do.cond6, !dbg !1457

do.cond6:                                         ; preds = %do.end
  br label %do.end7, !dbg !1457

do.end7:                                          ; preds = %do.cond6
  br label %if.end, !dbg !1460

if.end:                                           ; preds = %do.end7, %entry
  %14 = load ptr, ptr %pgtable.addr, align 8, !dbg !1461, !tbaa !234
  %shift8 = getelementptr inbounds %struct.ucs_pgtable, ptr %14, i32 0, i32 3, !dbg !1462
  %15 = load i32, ptr %shift8, align 8, !dbg !1463, !tbaa !259
  %add = add i32 %15, 4, !dbg !1463
  store i32 %add, ptr %shift8, align 8, !dbg !1463, !tbaa !259
  %16 = load ptr, ptr %pgtable.addr, align 8, !dbg !1464, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %16, i32 0, i32 2, !dbg !1465
  %17 = load i64, ptr %mask, align 8, !dbg !1466, !tbaa !256
  %shl = shl i64 %17, 4, !dbg !1466
  store i64 %shl, ptr %mask, align 8, !dbg !1466, !tbaa !256
  %18 = load ptr, ptr %pgtable.addr, align 8, !dbg !1467, !tbaa !234
  %mask9 = getelementptr inbounds %struct.ucs_pgtable, ptr %18, i32 0, i32 2, !dbg !1468
  %19 = load i64, ptr %mask9, align 8, !dbg !1468, !tbaa !256
  %20 = load ptr, ptr %pgtable.addr, align 8, !dbg !1469, !tbaa !234
  %base10 = getelementptr inbounds %struct.ucs_pgtable, ptr %20, i32 0, i32 1, !dbg !1470
  %21 = load i64, ptr %base10, align 8, !dbg !1471, !tbaa !249
  %and11 = and i64 %21, %19, !dbg !1471
  store i64 %and11, ptr %base10, align 8, !dbg !1471, !tbaa !249
  %22 = load ptr, ptr %pgtable.addr, align 8, !dbg !1472, !tbaa !234
  call void @ucs_pgtable_trace(ptr noundef %22, ptr noundef @.str.16), !dbg !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !1474
  ret void, !dbg !1474
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ucs_pgt_dir_alloc(ptr noundef %pgtable) #2 !dbg !1475 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1479, metadata !DIExpression()), !dbg !1481
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !1482
  tail call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1480, metadata !DIExpression()), !dbg !1483
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1484, !tbaa !234
  %pgd_alloc_cb = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 5, !dbg !1485
  %1 = load ptr, ptr %pgd_alloc_cb, align 8, !dbg !1485, !tbaa !1344
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !1486, !tbaa !234
  %call = call ptr %1(ptr noundef %2), !dbg !1484
  store ptr %call, ptr %pgd, align 8, !dbg !1487, !tbaa !234
  %3 = load ptr, ptr %pgd, align 8, !dbg !1488, !tbaa !234
  %cmp = icmp eq ptr %3, null, !dbg !1490
  br i1 %cmp, label %if.then, label %if.end, !dbg !1491

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ...) @ucs_fatal_error_format(ptr noundef @.str.3, i32 noundef 75, ptr noundef @__FUNCTION__.ucs_pgt_dir_alloc, ptr noundef @.str.17) #13, !dbg !1492
  unreachable, !dbg !1492

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1494

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1495

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1495

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %pgd, align 8, !dbg !1497, !tbaa !234
  call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 136, i1 false), !dbg !1498
  %5 = load ptr, ptr %pgd, align 8, !dbg !1499, !tbaa !234
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !1500
  ret ptr %5, !dbg !1501
}

; Function Attrs: nounwind uwtable
define internal i32 @ucs_pgtable_shrink(ptr noundef %pgtable) #0 !dbg !1502 {
entry:
  %retval = alloca i32, align 4
  %pgtable.addr = alloca ptr, align 8
  %pte = alloca ptr, align 8
  %pgd = alloca ptr, align 8
  %pte_idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1507, metadata !DIExpression()), !dbg !1511
  call void @llvm.lifetime.start.p0(i64 8, ptr %pte) #11, !dbg !1512
  tail call void @llvm.dbg.declare(metadata ptr %pte, metadata !1508, metadata !DIExpression()), !dbg !1513
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !1514
  tail call void @llvm.dbg.declare(metadata ptr %pgd, metadata !1509, metadata !DIExpression()), !dbg !1515
  call void @llvm.lifetime.start.p0(i64 4, ptr %pte_idx) #11, !dbg !1516
  tail call void @llvm.dbg.declare(metadata ptr %pte_idx, metadata !1510, metadata !DIExpression()), !dbg !1517
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1518, !tbaa !234
  %root = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 0, !dbg !1518
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %root, i32 0, i32 0, !dbg !1518
  %1 = load i64, ptr %value, align 8, !dbg !1518, !tbaa !618
  %and = and i64 %1, 3, !dbg !1518
  %tobool = icmp ne i64 %and, 0, !dbg !1518
  br i1 %tobool, label %if.else, label %if.then, !dbg !1520

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !1521, !tbaa !234
  call void @ucs_pgtable_reset(ptr noundef %2), !dbg !1523
  %3 = load ptr, ptr %pgtable.addr, align 8, !dbg !1524, !tbaa !234
  call void @ucs_pgtable_trace(ptr noundef %3, ptr noundef @.str.18), !dbg !1525
  store i32 0, ptr %retval, align 4, !dbg !1526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1526

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pgtable.addr, align 8, !dbg !1527, !tbaa !234
  %root1 = getelementptr inbounds %struct.ucs_pgtable, ptr %4, i32 0, i32 0, !dbg !1527
  %value2 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %root1, i32 0, i32 0, !dbg !1527
  %5 = load i64, ptr %value2, align 8, !dbg !1527, !tbaa !618
  %and3 = and i64 %5, 2, !dbg !1527
  %tobool4 = icmp ne i64 %and3, 0, !dbg !1527
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !1529

if.then5:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !1530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1530

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %pgtable.addr, align 8, !dbg !1532, !tbaa !234
  %root7 = getelementptr inbounds %struct.ucs_pgtable, ptr %6, i32 0, i32 0, !dbg !1532
  %value8 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %root7, i32 0, i32 0, !dbg !1532
  %7 = load i64, ptr %value8, align 8, !dbg !1532, !tbaa !618
  %and9 = and i64 %7, -4, !dbg !1532
  %8 = inttoptr i64 %and9 to ptr, !dbg !1532
  store ptr %8, ptr %tmp, align 8, !dbg !1534, !tbaa !234
  %9 = load ptr, ptr %tmp, align 8, !dbg !1532, !tbaa !234
  store ptr %9, ptr %pgd, align 8, !dbg !1535, !tbaa !234
  %10 = load ptr, ptr %pgd, align 8, !dbg !1536, !tbaa !234
  %count = getelementptr inbounds %struct.ucs_pgt_dir, ptr %10, i32 0, i32 1, !dbg !1538
  %11 = load i32, ptr %count, align 8, !dbg !1538, !tbaa !361
  %cmp = icmp ne i32 %11, 1, !dbg !1539
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !1540

if.then10:                                        ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !1541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1541

if.end11:                                         ; preds = %if.end6
  store i32 0, ptr %pte_idx, align 4, !dbg !1543, !tbaa !307
  %12 = load ptr, ptr %pgd, align 8, !dbg !1545, !tbaa !234
  %entries = getelementptr inbounds %struct.ucs_pgt_dir, ptr %12, i32 0, i32 0, !dbg !1546
  %arraydecay = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries, i64 0, i64 0, !dbg !1545
  store ptr %arraydecay, ptr %pte, align 8, !dbg !1547, !tbaa !234
  br label %for.cond, !dbg !1548

for.cond:                                         ; preds = %for.inc, %if.end11
  %13 = load ptr, ptr %pte, align 8, !dbg !1549, !tbaa !234
  %value12 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %13, i32 0, i32 0, !dbg !1549
  %14 = load i64, ptr %value12, align 8, !dbg !1549, !tbaa !324
  %and13 = and i64 %14, 3, !dbg !1549
  %tobool14 = icmp ne i64 %and13, 0, !dbg !1551
  %lnot = xor i1 %tobool14, true, !dbg !1551
  br i1 %lnot, label %for.body, label %for.end, !dbg !1552

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !1553

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %pte_idx, align 4, !dbg !1555, !tbaa !307
  %inc = add i32 %15, 1, !dbg !1555
  store i32 %inc, ptr %pte_idx, align 4, !dbg !1555, !tbaa !307
  %16 = load ptr, ptr %pte, align 8, !dbg !1556, !tbaa !234
  %incdec.ptr = getelementptr inbounds %struct.ucs_pgt_entry, ptr %16, i32 1, !dbg !1556
  store ptr %incdec.ptr, ptr %pte, align 8, !dbg !1556, !tbaa !234
  br label %for.cond, !dbg !1557, !llvm.loop !1558

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %pgtable.addr, align 8, !dbg !1560, !tbaa !234
  %shift = getelementptr inbounds %struct.ucs_pgtable, ptr %17, i32 0, i32 3, !dbg !1561
  %18 = load i32, ptr %shift, align 8, !dbg !1562, !tbaa !259
  %sub = sub i32 %18, 4, !dbg !1562
  store i32 %sub, ptr %shift, align 8, !dbg !1562, !tbaa !259
  %19 = load i32, ptr %pte_idx, align 4, !dbg !1563, !tbaa !307
  %conv = zext i32 %19 to i64, !dbg !1564
  %20 = load ptr, ptr %pgtable.addr, align 8, !dbg !1565, !tbaa !234
  %shift15 = getelementptr inbounds %struct.ucs_pgtable, ptr %20, i32 0, i32 3, !dbg !1566
  %21 = load i32, ptr %shift15, align 8, !dbg !1566, !tbaa !259
  %sh_prom = zext i32 %21 to i64, !dbg !1567
  %shl = shl i64 %conv, %sh_prom, !dbg !1567
  %22 = load ptr, ptr %pgtable.addr, align 8, !dbg !1568, !tbaa !234
  %base = getelementptr inbounds %struct.ucs_pgtable, ptr %22, i32 0, i32 1, !dbg !1569
  %23 = load i64, ptr %base, align 8, !dbg !1570, !tbaa !249
  %or = or i64 %23, %shl, !dbg !1570
  store i64 %or, ptr %base, align 8, !dbg !1570, !tbaa !249
  %24 = load ptr, ptr %pgtable.addr, align 8, !dbg !1571, !tbaa !234
  %shift16 = getelementptr inbounds %struct.ucs_pgtable, ptr %24, i32 0, i32 3, !dbg !1572
  %25 = load i32, ptr %shift16, align 8, !dbg !1572, !tbaa !259
  %sh_prom17 = zext i32 %25 to i64, !dbg !1573
  %shl18 = shl i64 15, %sh_prom17, !dbg !1573
  %26 = load ptr, ptr %pgtable.addr, align 8, !dbg !1574, !tbaa !234
  %mask = getelementptr inbounds %struct.ucs_pgtable, ptr %26, i32 0, i32 2, !dbg !1575
  %27 = load i64, ptr %mask, align 8, !dbg !1576, !tbaa !256
  %or19 = or i64 %27, %shl18, !dbg !1576
  store i64 %or19, ptr %mask, align 8, !dbg !1576, !tbaa !256
  %28 = load ptr, ptr %pgtable.addr, align 8, !dbg !1577, !tbaa !234
  %root20 = getelementptr inbounds %struct.ucs_pgtable, ptr %28, i32 0, i32 0, !dbg !1578
  %29 = load ptr, ptr %pte, align 8, !dbg !1579, !tbaa !234
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %root20, ptr align 8 %29, i64 8, i1 false), !dbg !1580, !tbaa.struct !1452
  %30 = load ptr, ptr %pgtable.addr, align 8, !dbg !1581, !tbaa !234
  call void @ucs_pgtable_trace(ptr noundef %30, ptr noundef @.str.18), !dbg !1582
  %31 = load ptr, ptr %pgtable.addr, align 8, !dbg !1583, !tbaa !234
  %32 = load ptr, ptr %pgd, align 8, !dbg !1584, !tbaa !234
  call void @ucs_pgt_dir_release(ptr noundef %31, ptr noundef %32), !dbg !1585
  store i32 1, ptr %retval, align 4, !dbg !1586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1586

cleanup:                                          ; preds = %for.end, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pte_idx) #11, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr %pte) #11, !dbg !1587
  %33 = load i32, ptr %retval, align 4, !dbg !1587
  ret i32 %33, !dbg !1587
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noreturn
declare !dbg !1588 void @ucs_fatal_error_format(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_pgt_dir_release(ptr noundef %pgtable, ptr noundef %pgd) #2 !dbg !1592 {
entry:
  %pgtable.addr = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1596, metadata !DIExpression()), !dbg !1598
  store ptr %pgd, ptr %pgd.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !1597, metadata !DIExpression()), !dbg !1599
  %0 = load ptr, ptr %pgtable.addr, align 8, !dbg !1600, !tbaa !234
  %pgd_release_cb = getelementptr inbounds %struct.ucs_pgtable, ptr %0, i32 0, i32 6, !dbg !1601
  %1 = load ptr, ptr %pgd_release_cb, align 8, !dbg !1601, !tbaa !1349
  %2 = load ptr, ptr %pgtable.addr, align 8, !dbg !1602, !tbaa !234
  %3 = load ptr, ptr %pgd.addr, align 8, !dbg !1603, !tbaa !234
  call void %1(ptr noundef %2, ptr noundef %3), !dbg !1600
  ret void, !dbg !1604
}

; Function Attrs: nounwind uwtable
define internal signext i8 @ucs_pgtable_remove_page_recurs(ptr noundef %pgtable, i64 noundef %address, i32 noundef %order, ptr noundef %pgd, ptr noundef %pte, i32 noundef %shift, ptr noundef %region) #0 !dbg !1605 {
entry:
  %retval = alloca i8, align 1
  %pgtable.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %order.addr = alloca i32, align 4
  %pgd.addr = alloca ptr, align 8
  %pte.addr = alloca ptr, align 8
  %shift.addr = alloca i32, align 4
  %region.addr = alloca ptr, align 8
  %next_dir = alloca ptr, align 8
  %next_pte = alloca ptr, align 8
  %status = alloca i8, align 1
  %next_shift = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca ptr, align 8
  store ptr %pgtable, ptr %pgtable.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgtable.addr, metadata !1609, metadata !DIExpression()), !dbg !1621
  store i64 %address, ptr %address.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1610, metadata !DIExpression()), !dbg !1622
  store i32 %order, ptr %order.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %order.addr, metadata !1611, metadata !DIExpression()), !dbg !1623
  store ptr %pgd, ptr %pgd.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !1612, metadata !DIExpression()), !dbg !1624
  store ptr %pte, ptr %pte.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %pte.addr, metadata !1613, metadata !DIExpression()), !dbg !1625
  store i32 %shift, ptr %shift.addr, align 4, !tbaa !307
  tail call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !1614, metadata !DIExpression()), !dbg !1626
  store ptr %region, ptr %region.addr, align 8, !tbaa !234
  tail call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !1615, metadata !DIExpression()), !dbg !1627
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_dir) #11, !dbg !1628
  tail call void @llvm.dbg.declare(metadata ptr %next_dir, metadata !1616, metadata !DIExpression()), !dbg !1629
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_pte) #11, !dbg !1630
  tail call void @llvm.dbg.declare(metadata ptr %next_pte, metadata !1617, metadata !DIExpression()), !dbg !1631
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #11, !dbg !1632
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1618, metadata !DIExpression()), !dbg !1633
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_shift) #11, !dbg !1634
  tail call void @llvm.dbg.declare(metadata ptr %next_shift, metadata !1619, metadata !DIExpression()), !dbg !1635
  %0 = load ptr, ptr %pte.addr, align 8, !dbg !1636, !tbaa !234
  %value = getelementptr inbounds %struct.ucs_pgt_entry, ptr %0, i32 0, i32 0, !dbg !1636
  %1 = load i64, ptr %value, align 8, !dbg !1636, !tbaa !324
  %and = and i64 %1, 1, !dbg !1636
  %tobool = icmp ne i64 %and, 0, !dbg !1636
  br i1 %tobool, label %if.then, label %if.else, !dbg !1638

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pte.addr, align 8, !dbg !1639, !tbaa !234
  %value1 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %2, i32 0, i32 0, !dbg !1639
  %3 = load i64, ptr %value1, align 8, !dbg !1639, !tbaa !324
  %and2 = and i64 %3, -4, !dbg !1639
  %4 = inttoptr i64 %and2 to ptr, !dbg !1639
  store ptr %4, ptr %tmp, align 8, !dbg !1643, !tbaa !234
  %5 = load ptr, ptr %tmp, align 8, !dbg !1639, !tbaa !234
  %6 = load ptr, ptr %region.addr, align 8, !dbg !1644, !tbaa !234
  %cmp = icmp ne ptr %5, %6, !dbg !1645
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1646

if.then3:                                         ; preds = %if.then
  br label %no_elem, !dbg !1647

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %pgd.addr, align 8, !dbg !1649, !tbaa !234
  %count = getelementptr inbounds %struct.ucs_pgt_dir, ptr %7, i32 0, i32 1, !dbg !1650
  %8 = load i32, ptr %count, align 8, !dbg !1651, !tbaa !361
  %dec = add i32 %8, -1, !dbg !1651
  store i32 %dec, ptr %count, align 8, !dbg !1651, !tbaa !361
  %9 = load ptr, ptr %pte.addr, align 8, !dbg !1652, !tbaa !234
  %value4 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %9, i32 0, i32 0, !dbg !1652
  store i64 0, ptr %value4, align 8, !dbg !1652, !tbaa !324
  store i8 0, ptr %retval, align 1, !dbg !1654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1654

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pte.addr, align 8, !dbg !1655, !tbaa !234
  %value5 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %10, i32 0, i32 0, !dbg !1655
  %11 = load i64, ptr %value5, align 8, !dbg !1655, !tbaa !324
  %and6 = and i64 %11, 2, !dbg !1655
  %tobool7 = icmp ne i64 %and6, 0, !dbg !1655
  br i1 %tobool7, label %if.then8, label %if.end25, !dbg !1657

if.then8:                                         ; preds = %if.else
  %12 = load ptr, ptr %pte.addr, align 8, !dbg !1658, !tbaa !234
  %value10 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %12, i32 0, i32 0, !dbg !1658
  %13 = load i64, ptr %value10, align 8, !dbg !1658, !tbaa !324
  %and11 = and i64 %13, -4, !dbg !1658
  %14 = inttoptr i64 %and11 to ptr, !dbg !1658
  store ptr %14, ptr %tmp9, align 8, !dbg !1661, !tbaa !234
  %15 = load ptr, ptr %tmp9, align 8, !dbg !1658, !tbaa !234
  store ptr %15, ptr %next_dir, align 8, !dbg !1662, !tbaa !234
  %16 = load i32, ptr %shift.addr, align 4, !dbg !1663, !tbaa !307
  %sub = sub i32 %16, 4, !dbg !1664
  store i32 %sub, ptr %next_shift, align 4, !dbg !1665, !tbaa !307
  %17 = load ptr, ptr %next_dir, align 8, !dbg !1666, !tbaa !234
  %entries = getelementptr inbounds %struct.ucs_pgt_dir, ptr %17, i32 0, i32 0, !dbg !1667
  %18 = load i64, ptr %address.addr, align 8, !dbg !1668, !tbaa !311
  %19 = load i32, ptr %next_shift, align 4, !dbg !1669, !tbaa !307
  %sh_prom = zext i32 %19 to i64, !dbg !1670
  %shr = lshr i64 %18, %sh_prom, !dbg !1670
  %and12 = and i64 %shr, 15, !dbg !1671
  %arrayidx = getelementptr inbounds [16 x %struct.ucs_pgt_entry], ptr %entries, i64 0, i64 %and12, !dbg !1666
  store ptr %arrayidx, ptr %next_pte, align 8, !dbg !1672, !tbaa !234
  %20 = load ptr, ptr %pgtable.addr, align 8, !dbg !1673, !tbaa !234
  %21 = load i64, ptr %address.addr, align 8, !dbg !1674, !tbaa !311
  %22 = load i32, ptr %order.addr, align 4, !dbg !1675, !tbaa !307
  %23 = load ptr, ptr %next_dir, align 8, !dbg !1676, !tbaa !234
  %24 = load ptr, ptr %next_pte, align 8, !dbg !1677, !tbaa !234
  %25 = load i32, ptr %next_shift, align 4, !dbg !1678, !tbaa !307
  %26 = load ptr, ptr %region.addr, align 8, !dbg !1679, !tbaa !234
  %call = call signext i8 @ucs_pgtable_remove_page_recurs(ptr noundef %20, i64 noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26), !dbg !1680
  store i8 %call, ptr %status, align 1, !dbg !1681, !tbaa !239
  %27 = load i8, ptr %status, align 1, !dbg !1682, !tbaa !239
  %conv = sext i8 %27 to i32, !dbg !1682
  %cmp13 = icmp ne i32 %conv, 0, !dbg !1684
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1685

if.then15:                                        ; preds = %if.then8
  br label %no_elem, !dbg !1686

if.end16:                                         ; preds = %if.then8
  %28 = load ptr, ptr %next_dir, align 8, !dbg !1688, !tbaa !234
  %count17 = getelementptr inbounds %struct.ucs_pgt_dir, ptr %28, i32 0, i32 1, !dbg !1690
  %29 = load i32, ptr %count17, align 8, !dbg !1690, !tbaa !361
  %cmp18 = icmp eq i32 %29, 0, !dbg !1691
  br i1 %cmp18, label %if.then20, label %if.end24, !dbg !1692

if.then20:                                        ; preds = %if.end16
  %30 = load ptr, ptr %pte.addr, align 8, !dbg !1693, !tbaa !234
  %value21 = getelementptr inbounds %struct.ucs_pgt_entry, ptr %30, i32 0, i32 0, !dbg !1693
  store i64 0, ptr %value21, align 8, !dbg !1693, !tbaa !324
  %31 = load ptr, ptr %pgd.addr, align 8, !dbg !1696, !tbaa !234
  %count22 = getelementptr inbounds %struct.ucs_pgt_dir, ptr %31, i32 0, i32 1, !dbg !1697
  %32 = load i32, ptr %count22, align 8, !dbg !1698, !tbaa !361
  %dec23 = add i32 %32, -1, !dbg !1698
  store i32 %dec23, ptr %count22, align 8, !dbg !1698, !tbaa !361
  %33 = load ptr, ptr %pgtable.addr, align 8, !dbg !1699, !tbaa !234
  %34 = load ptr, ptr %next_dir, align 8, !dbg !1700, !tbaa !234
  call void @ucs_pgt_dir_release(ptr noundef %33, ptr noundef %34), !dbg !1701
  br label %if.end24, !dbg !1702

if.end24:                                         ; preds = %if.then20, %if.end16
  store i8 0, ptr %retval, align 1, !dbg !1703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1703

if.end25:                                         ; preds = %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  br label %no_elem, !dbg !1636

no_elem:                                          ; preds = %if.end26, %if.then15, %if.then3
  tail call void @llvm.dbg.label(metadata !1620), !dbg !1704
  store i8 -12, ptr %retval, align 1, !dbg !1705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1705

cleanup:                                          ; preds = %no_elem, %if.end24, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_shift) #11, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #11, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_pte) #11, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_dir) #11, !dbg !1706
  %35 = load i8, ptr %retval, align 1, !dbg !1706
  ret i8 %35, !dbg !1706
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!106}
!llvm.module.flags = !{!202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "datastruct/pgtable.c", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "404454de7b63bf5362196294f8244c74")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 429, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 21)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 144, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!23 = !{!24}
!24 = !DISubrange(count: 18)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 23)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 623, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !23)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 625, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 59)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 642, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 49)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 682, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 20)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 682, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 36)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 16)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 50)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 208, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 26)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 34)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 65)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 2)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !16, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 11)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !9, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !21, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 47)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !9, isLocal: true, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !163, globals: !201, splitDebugInlining: false, nameTableKind: None)
!107 = !{!108, !126}
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !109, line: 16, baseType: !110, size: 32, elements: !111)
!109 = !DIFile(filename: "config/types.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "334625b5e9d9ea7b05f72001931650ae")
!110 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!112 = !DIEnumerator(name: "UCS_LOG_LEVEL_FATAL", value: 0)
!113 = !DIEnumerator(name: "UCS_LOG_LEVEL_ERROR", value: 1)
!114 = !DIEnumerator(name: "UCS_LOG_LEVEL_WARN", value: 2)
!115 = !DIEnumerator(name: "UCS_LOG_LEVEL_DIAG", value: 3)
!116 = !DIEnumerator(name: "UCS_LOG_LEVEL_INFO", value: 4)
!117 = !DIEnumerator(name: "UCS_LOG_LEVEL_DEBUG", value: 5)
!118 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE", value: 6)
!119 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_REQ", value: 7)
!120 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_DATA", value: 8)
!121 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_ASYNC", value: 9)
!122 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_FUNC", value: 10)
!123 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_POLL", value: 11)
!124 = !DIEnumerator(name: "UCS_LOG_LEVEL_LAST", value: 12)
!125 = !DIEnumerator(name: "UCS_LOG_LEVEL_PRINT", value: 13)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 45, baseType: !128, size: 8, elements: !129)
!127 = !DIFile(filename: "type/status.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "28c283b29442b5def29f6cf41aecfb03")
!128 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!130 = !DIEnumerator(name: "UCS_OK", value: 0)
!131 = !DIEnumerator(name: "UCS_INPROGRESS", value: 1)
!132 = !DIEnumerator(name: "UCS_ERR_NO_MESSAGE", value: -1)
!133 = !DIEnumerator(name: "UCS_ERR_NO_RESOURCE", value: -2)
!134 = !DIEnumerator(name: "UCS_ERR_IO_ERROR", value: -3)
!135 = !DIEnumerator(name: "UCS_ERR_NO_MEMORY", value: -4)
!136 = !DIEnumerator(name: "UCS_ERR_INVALID_PARAM", value: -5)
!137 = !DIEnumerator(name: "UCS_ERR_UNREACHABLE", value: -6)
!138 = !DIEnumerator(name: "UCS_ERR_INVALID_ADDR", value: -7)
!139 = !DIEnumerator(name: "UCS_ERR_NOT_IMPLEMENTED", value: -8)
!140 = !DIEnumerator(name: "UCS_ERR_MESSAGE_TRUNCATED", value: -9)
!141 = !DIEnumerator(name: "UCS_ERR_NO_PROGRESS", value: -10)
!142 = !DIEnumerator(name: "UCS_ERR_BUFFER_TOO_SMALL", value: -11)
!143 = !DIEnumerator(name: "UCS_ERR_NO_ELEM", value: -12)
!144 = !DIEnumerator(name: "UCS_ERR_SOME_CONNECTS_FAILED", value: -13)
!145 = !DIEnumerator(name: "UCS_ERR_NO_DEVICE", value: -14)
!146 = !DIEnumerator(name: "UCS_ERR_BUSY", value: -15)
!147 = !DIEnumerator(name: "UCS_ERR_CANCELED", value: -16)
!148 = !DIEnumerator(name: "UCS_ERR_SHMEM_SEGMENT", value: -17)
!149 = !DIEnumerator(name: "UCS_ERR_ALREADY_EXISTS", value: -18)
!150 = !DIEnumerator(name: "UCS_ERR_OUT_OF_RANGE", value: -19)
!151 = !DIEnumerator(name: "UCS_ERR_TIMED_OUT", value: -20)
!152 = !DIEnumerator(name: "UCS_ERR_EXCEEDS_LIMIT", value: -21)
!153 = !DIEnumerator(name: "UCS_ERR_UNSUPPORTED", value: -22)
!154 = !DIEnumerator(name: "UCS_ERR_REJECTED", value: -23)
!155 = !DIEnumerator(name: "UCS_ERR_NOT_CONNECTED", value: -24)
!156 = !DIEnumerator(name: "UCS_ERR_CONNECTION_RESET", value: -25)
!157 = !DIEnumerator(name: "UCS_ERR_FIRST_LINK_FAILURE", value: -40)
!158 = !DIEnumerator(name: "UCS_ERR_LAST_LINK_FAILURE", value: -59)
!159 = !DIEnumerator(name: "UCS_ERR_FIRST_ENDPOINT_FAILURE", value: -60)
!160 = !DIEnumerator(name: "UCS_ERR_ENDPOINT_TIMEOUT", value: -80)
!161 = !DIEnumerator(name: "UCS_ERR_LAST_ENDPOINT_FAILURE", value: -89)
!162 = !DIEnumerator(name: "UCS_ERR_LAST", value: -100)
!163 = !{!164, !173, !174, !185, !190, !195, !199, !170}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_region_t", file: !166, line: 58, baseType: !167)
!166 = !DIFile(filename: "datastruct/pgtable.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "a88370ba33ea72e5a4a96f02d1bf5ee7")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_region", file: !166, line: 100, size: 128, align: 64, elements: !168)
!168 = !{!169, !172}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !167, file: !166, line: 101, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_addr_t", file: !166, line: 54, baseType: !171)
!171 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !167, file: !166, line: 102, baseType: !170, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_t", file: !166, line: 60, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_dir", file: !166, line: 126, size: 1088, elements: !177)
!177 = !{!178, !184}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !176, file: !166, line: 127, baseType: !179, size: 1024)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !56)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_entry_t", file: !166, line: 59, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_entry", file: !166, line: 116, size: 64, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !181, file: !166, line: 117, baseType: !170, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !176, file: !166, line: 128, baseType: !110, size: 32, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_log_component_config_t", file: !109, line: 150, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_log_component_config", file: !109, line: 146, size: 256, elements: !188)
!188 = !{!189, !191, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !187, file: !109, line: 147, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_log_level_t", file: !109, line: 31, baseType: !108)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !109, line: 148, baseType: !192, size: 128, offset: 32)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !56)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "file_filter", scope: !187, file: !109, line: 149, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !196, line: 27, baseType: !197)
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !198, line: 45, baseType: !171)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !200, line: 90, baseType: !171)
!200 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!201 = !{!0, !7, !12, !14, !19, !25, !30, !33, !38, !43, !48, !53, !58, !63, !68, !73, !78, !83, !88, !90, !95, !97, !99, !104}
!202 = !{i32 7, !"Dwarf Version", i32 5}
!203 = !{i32 2, !"Debug Info Version", i32 3}
!204 = !{i32 1, !"wchar_size", i32 4}
!205 = !{i32 8, !"PIC Level", i32 2}
!206 = !{i32 7, !"uwtable", i32 2}
!207 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!208 = distinct !DISubprogram(name: "ucs_pgtable_dump", scope: !2, file: !2, line: 134, type: !209, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !231)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !211, !190}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgtable_t", file: !166, line: 57, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgtable", file: !166, line: 133, size: 384, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !226}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !214, file: !166, line: 138, baseType: !180, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !214, file: !166, line: 139, baseType: !170, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !214, file: !166, line: 140, baseType: !170, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !214, file: !166, line: 141, baseType: !110, size: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !214, file: !166, line: 142, baseType: !110, size: 32, offset: 224)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_alloc_cb", scope: !214, file: !166, line: 143, baseType: !222, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_alloc_callback_t", file: !166, line: 71, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!174, !211}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_release_cb", scope: !214, file: !166, line: 144, baseType: !227, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_release_callback_t", file: !166, line: 81, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !211, !174}
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "pgtable", arg: 1, scope: !208, file: !2, line: 134, type: !211)
!233 = !DILocalVariable(name: "log_level", arg: 2, scope: !208, file: !2, line: 134, type: !190)
!234 = !{!235, !235, i64 0}
!235 = !{!"any pointer", !236, i64 0}
!236 = !{!"omnipotent char", !237, i64 0}
!237 = !{!"Simple C/C++ TBAA"}
!238 = !DILocation(line: 134, column: 44, scope: !208)
!239 = !{!236, !236, i64 0}
!240 = !DILocation(line: 134, column: 69, scope: !208)
!241 = !DILocation(line: 136, column: 21, scope: !208)
!242 = !DILocation(line: 136, column: 30, scope: !208)
!243 = !DILocation(line: 136, column: 5, scope: !208)
!244 = !DILocation(line: 137, column: 31, scope: !208)
!245 = !DILocation(line: 137, column: 44, scope: !208)
!246 = !DILocation(line: 137, column: 53, scope: !208)
!247 = !DILocation(line: 137, column: 62, scope: !208)
!248 = !DILocation(line: 137, column: 71, scope: !208)
!249 = !{!250, !252, i64 8}
!250 = !{!"ucs_pgtable", !251, i64 0, !252, i64 8, !252, i64 16, !253, i64 24, !253, i64 28, !235, i64 32, !235, i64 40}
!251 = !{!"ucs_pgt_entry", !252, i64 0}
!252 = !{!"long", !236, i64 0}
!253 = !{!"int", !236, i64 0}
!254 = !DILocation(line: 138, column: 31, scope: !208)
!255 = !DILocation(line: 138, column: 40, scope: !208)
!256 = !{!250, !252, i64 16}
!257 = !DILocation(line: 138, column: 46, scope: !208)
!258 = !DILocation(line: 138, column: 55, scope: !208)
!259 = !{!250, !253, i64 24}
!260 = !DILocation(line: 138, column: 62, scope: !208)
!261 = !DILocation(line: 137, column: 5, scope: !208)
!262 = !DILocation(line: 139, column: 1, scope: !208)
!263 = distinct !DISubprogram(name: "ucs_pgtable_log", scope: !2, file: !2, line: 126, type: !264, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !211, !190, !194}
!266 = !{!267, !268, !269}
!267 = !DILocalVariable(name: "pgtable", arg: 1, scope: !263, file: !2, line: 126, type: !211)
!268 = !DILocalVariable(name: "log_level", arg: 2, scope: !263, file: !2, line: 127, type: !190)
!269 = !DILocalVariable(name: "message", arg: 3, scope: !263, file: !2, line: 127, type: !194)
!270 = !DILocation(line: 126, column: 50, scope: !263)
!271 = !DILocation(line: 127, column: 45, scope: !263)
!272 = !DILocation(line: 127, column: 68, scope: !263)
!273 = !DILocation(line: 129, column: 5, scope: !263)
!274 = !DILocation(line: 129, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !263, file: !2, line: 129, column: 5)
!276 = !DILocation(line: 129, column: 5, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 129, column: 5)
!278 = distinct !DILexicalBlock(scope: !275, file: !2, line: 129, column: 5)
!279 = !{!280, !236, i64 0}
!280 = !{!"ucs_log_component_config", !236, i64 0, !236, i64 4, !235, i64 24}
!281 = !DILocation(line: 0, scope: !277)
!282 = !DILocation(line: 129, column: 5, scope: !278)
!283 = !DILocation(line: 129, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !277, file: !2, line: 129, column: 5)
!285 = !{!250, !253, i64 28}
!286 = !DILocation(line: 132, column: 1, scope: !263)
!287 = distinct !DISubprogram(name: "ucs_pgt_entry_dump_recurs", scope: !2, file: !2, line: 96, type: !288, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !292)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !211, !110, !290, !110, !170, !170, !110, !190}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!293 = !DILocalVariable(name: "pgtable", arg: 1, scope: !287, file: !2, line: 96, type: !211)
!294 = !DILocalVariable(name: "indent", arg: 2, scope: !287, file: !2, line: 96, type: !110)
!295 = !DILocalVariable(name: "pte", arg: 3, scope: !287, file: !2, line: 97, type: !290)
!296 = !DILocalVariable(name: "pte_index", arg: 4, scope: !287, file: !2, line: 97, type: !110)
!297 = !DILocalVariable(name: "base", arg: 5, scope: !287, file: !2, line: 98, type: !170)
!298 = !DILocalVariable(name: "mask", arg: 6, scope: !287, file: !2, line: 98, type: !170)
!299 = !DILocalVariable(name: "shift", arg: 7, scope: !287, file: !2, line: 99, type: !110)
!300 = !DILocalVariable(name: "log_level", arg: 8, scope: !287, file: !2, line: 99, type: !190)
!301 = !DILocalVariable(name: "region", scope: !287, file: !2, line: 101, type: !164)
!302 = !DILocalVariable(name: "pgd", scope: !287, file: !2, line: 102, type: !174)
!303 = !DILocalVariable(name: "i", scope: !287, file: !2, line: 103, type: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !305, line: 70, baseType: !171)
!305 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!306 = !DILocation(line: 96, column: 60, scope: !287)
!307 = !{!253, !253, i64 0}
!308 = !DILocation(line: 96, column: 78, scope: !287)
!309 = !DILocation(line: 97, column: 62, scope: !287)
!310 = !DILocation(line: 97, column: 76, scope: !287)
!311 = !{!252, !252, i64 0}
!312 = !DILocation(line: 98, column: 54, scope: !287)
!313 = !DILocation(line: 98, column: 75, scope: !287)
!314 = !DILocation(line: 99, column: 48, scope: !287)
!315 = !DILocation(line: 99, column: 71, scope: !287)
!316 = !DILocation(line: 101, column: 5, scope: !287)
!317 = !DILocation(line: 101, column: 23, scope: !287)
!318 = !DILocation(line: 102, column: 5, scope: !287)
!319 = !DILocation(line: 102, column: 20, scope: !287)
!320 = !DILocation(line: 103, column: 5, scope: !287)
!321 = !DILocation(line: 103, column: 12, scope: !287)
!322 = !DILocation(line: 105, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !287, file: !2, line: 105, column: 9)
!324 = !{!251, !252, i64 0}
!325 = !DILocation(line: 105, column: 9, scope: !287)
!326 = !DILocation(line: 106, column: 18, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !2, line: 105, column: 61)
!328 = !DILocation(line: 106, column: 16, scope: !327)
!329 = !DILocation(line: 107, column: 9, scope: !327)
!330 = !DILocation(line: 107, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !2, line: 107, column: 9)
!332 = !DILocation(line: 107, column: 9, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 107, column: 9)
!334 = distinct !DILexicalBlock(scope: !331, file: !2, line: 107, column: 9)
!335 = !DILocation(line: 0, scope: !333)
!336 = !DILocation(line: 107, column: 9, scope: !334)
!337 = !DILocation(line: 107, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !2, line: 107, column: 9)
!339 = !{!340, !252, i64 0}
!340 = !{!"ucs_pgt_region", !252, i64 0, !252, i64 8}
!341 = !{!340, !252, i64 8}
!342 = !DILocation(line: 109, column: 5, scope: !327)
!343 = !DILocation(line: 109, column: 16, scope: !344)
!344 = distinct !DILexicalBlock(scope: !323, file: !2, line: 109, column: 16)
!345 = !DILocation(line: 109, column: 16, scope: !323)
!346 = !DILocation(line: 110, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 110, column: 15)
!348 = distinct !DILexicalBlock(scope: !344, file: !2, line: 109, column: 65)
!349 = !DILocation(line: 110, column: 15, scope: !348)
!350 = !DILocation(line: 110, column: 13, scope: !348)
!351 = !DILocation(line: 111, column: 9, scope: !348)
!352 = !DILocation(line: 111, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !2, line: 111, column: 9)
!354 = !DILocation(line: 111, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 111, column: 9)
!356 = distinct !DILexicalBlock(scope: !353, file: !2, line: 111, column: 9)
!357 = !DILocation(line: 0, scope: !355)
!358 = !DILocation(line: 111, column: 9, scope: !356)
!359 = !DILocation(line: 111, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !355, file: !2, line: 111, column: 9)
!361 = !{!362, !253, i64 128}
!362 = !{!"ucs_pgt_dir", !236, i64 0, !253, i64 128}
!363 = !DILocation(line: 114, column: 15, scope: !348)
!364 = !DILocation(line: 115, column: 40, scope: !348)
!365 = !DILocation(line: 115, column: 37, scope: !348)
!366 = !DILocation(line: 115, column: 15, scope: !348)
!367 = !DILocation(line: 116, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !348, file: !2, line: 116, column: 9)
!369 = !DILocation(line: 116, column: 14, scope: !368)
!370 = !DILocation(line: 116, column: 21, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !2, line: 116, column: 9)
!372 = !DILocation(line: 116, column: 23, scope: !371)
!373 = !DILocation(line: 116, column: 9, scope: !368)
!374 = !DILocation(line: 117, column: 39, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !2, line: 116, column: 55)
!376 = !DILocation(line: 117, column: 48, scope: !375)
!377 = !DILocation(line: 117, column: 55, scope: !375)
!378 = !DILocation(line: 117, column: 61, scope: !375)
!379 = !DILocation(line: 117, column: 66, scope: !375)
!380 = !DILocation(line: 117, column: 74, scope: !375)
!381 = !DILocation(line: 117, column: 78, scope: !375)
!382 = !DILocation(line: 118, column: 39, scope: !375)
!383 = !DILocation(line: 118, column: 47, scope: !375)
!384 = !DILocation(line: 118, column: 52, scope: !375)
!385 = !DILocation(line: 118, column: 49, scope: !375)
!386 = !DILocation(line: 118, column: 44, scope: !375)
!387 = !DILocation(line: 118, column: 60, scope: !375)
!388 = !DILocation(line: 118, column: 66, scope: !375)
!389 = !DILocation(line: 118, column: 73, scope: !375)
!390 = !DILocation(line: 117, column: 13, scope: !375)
!391 = !DILocation(line: 119, column: 13, scope: !375)
!392 = !DILocation(line: 120, column: 9, scope: !375)
!393 = !DILocation(line: 116, column: 50, scope: !371)
!394 = !DILocation(line: 116, column: 9, scope: !371)
!395 = distinct !{!395, !373, !396, !397}
!396 = !DILocation(line: 120, column: 9, scope: !368)
!397 = !{!"llvm.loop.mustprogress"}
!398 = !DILocation(line: 121, column: 5, scope: !348)
!399 = !DILocation(line: 122, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !344, file: !2, line: 121, column: 12)
!401 = !DILocation(line: 122, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !400, file: !2, line: 122, column: 9)
!403 = !DILocation(line: 122, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 122, column: 9)
!405 = distinct !DILexicalBlock(scope: !402, file: !2, line: 122, column: 9)
!406 = !DILocation(line: 0, scope: !404)
!407 = !DILocation(line: 122, column: 9, scope: !405)
!408 = !DILocation(line: 122, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !2, line: 122, column: 9)
!410 = !DILocation(line: 124, column: 1, scope: !287)
!411 = distinct !DISubprogram(name: "ucs_pgtable_insert", scope: !2, file: !2, line: 402, type: !412, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !416)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !415, !164}
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_status_t", file: !127, line: 86, baseType: !126)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!416 = !{!417, !418, !419, !420, !421, !422, !423}
!417 = !DILocalVariable(name: "pgtable", arg: 1, scope: !411, file: !2, line: 402, type: !415)
!418 = !DILocalVariable(name: "region", arg: 2, scope: !411, file: !2, line: 402, type: !164)
!419 = !DILocalVariable(name: "address", scope: !411, file: !2, line: 404, type: !170)
!420 = !DILocalVariable(name: "end", scope: !411, file: !2, line: 405, type: !170)
!421 = !DILocalVariable(name: "status", scope: !411, file: !2, line: 406, type: !414)
!422 = !DILocalVariable(name: "order", scope: !411, file: !2, line: 407, type: !110)
!423 = !DILabel(scope: !411, name: "err", file: !2, line: 432)
!424 = !DILocation(line: 402, column: 48, scope: !411)
!425 = !DILocation(line: 402, column: 75, scope: !411)
!426 = !DILocation(line: 404, column: 5, scope: !411)
!427 = !DILocation(line: 404, column: 20, scope: !411)
!428 = !DILocation(line: 404, column: 30, scope: !411)
!429 = !DILocation(line: 404, column: 38, scope: !411)
!430 = !DILocation(line: 405, column: 5, scope: !411)
!431 = !DILocation(line: 405, column: 20, scope: !411)
!432 = !DILocation(line: 405, column: 30, scope: !411)
!433 = !DILocation(line: 405, column: 38, scope: !411)
!434 = !DILocation(line: 406, column: 5, scope: !411)
!435 = !DILocation(line: 406, column: 18, scope: !411)
!436 = !DILocation(line: 407, column: 5, scope: !411)
!437 = !DILocation(line: 407, column: 14, scope: !411)
!438 = !DILocation(line: 409, column: 5, scope: !411)
!439 = !DILocation(line: 409, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !411, file: !2, line: 409, column: 5)
!441 = !DILocation(line: 409, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !440, file: !2, line: 409, column: 5)
!443 = !DILocation(line: 411, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !411, file: !2, line: 411, column: 9)
!445 = !DILocation(line: 411, column: 21, scope: !444)
!446 = !DILocation(line: 411, column: 18, scope: !444)
!447 = !DILocation(line: 411, column: 26, scope: !444)
!448 = !DILocation(line: 411, column: 30, scope: !444)
!449 = !DILocation(line: 411, column: 63, scope: !444)
!450 = !DILocation(line: 412, column: 10, scope: !444)
!451 = !DILocation(line: 411, column: 9, scope: !411)
!452 = !DILocation(line: 414, column: 9, scope: !453)
!453 = distinct !DILexicalBlock(scope: !444, file: !2, line: 413, column: 5)
!454 = !DILocation(line: 418, column: 5, scope: !411)
!455 = !DILocation(line: 418, column: 12, scope: !411)
!456 = !DILocation(line: 418, column: 22, scope: !411)
!457 = !DILocation(line: 418, column: 20, scope: !411)
!458 = !DILocation(line: 419, column: 49, scope: !459)
!459 = distinct !DILexicalBlock(scope: !411, file: !2, line: 418, column: 27)
!460 = !DILocation(line: 419, column: 58, scope: !459)
!461 = !DILocation(line: 419, column: 17, scope: !459)
!462 = !DILocation(line: 419, column: 15, scope: !459)
!463 = !DILocation(line: 420, column: 42, scope: !459)
!464 = !DILocation(line: 420, column: 51, scope: !459)
!465 = !DILocation(line: 420, column: 60, scope: !459)
!466 = !DILocation(line: 420, column: 67, scope: !459)
!467 = !DILocation(line: 420, column: 18, scope: !459)
!468 = !DILocation(line: 420, column: 16, scope: !459)
!469 = !DILocation(line: 421, column: 13, scope: !470)
!470 = distinct !DILexicalBlock(scope: !459, file: !2, line: 421, column: 13)
!471 = !DILocation(line: 421, column: 20, scope: !470)
!472 = !DILocation(line: 421, column: 13, scope: !459)
!473 = !DILocation(line: 422, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !2, line: 421, column: 31)
!475 = !DILocation(line: 425, column: 43, scope: !459)
!476 = !DILocation(line: 425, column: 9, scope: !459)
!477 = distinct !{!477, !454, !478, !397}
!478 = !DILocation(line: 426, column: 5, scope: !411)
!479 = !DILocation(line: 427, column: 7, scope: !411)
!480 = !DILocation(line: 427, column: 16, scope: !411)
!481 = !DILocation(line: 427, column: 5, scope: !411)
!482 = !DILocation(line: 429, column: 23, scope: !411)
!483 = !DILocation(line: 429, column: 5, scope: !411)
!484 = !DILocation(line: 430, column: 5, scope: !411)
!485 = !DILocation(line: 432, column: 1, scope: !411)
!486 = !DILocation(line: 434, column: 15, scope: !411)
!487 = !DILocation(line: 434, column: 13, scope: !411)
!488 = !DILocation(line: 435, column: 15, scope: !411)
!489 = !DILocation(line: 435, column: 23, scope: !411)
!490 = !DILocation(line: 435, column: 13, scope: !411)
!491 = !DILocation(line: 436, column: 5, scope: !411)
!492 = !DILocation(line: 436, column: 12, scope: !411)
!493 = !DILocation(line: 436, column: 22, scope: !411)
!494 = !DILocation(line: 436, column: 20, scope: !411)
!495 = !DILocation(line: 437, column: 49, scope: !496)
!496 = distinct !DILexicalBlock(scope: !411, file: !2, line: 436, column: 27)
!497 = !DILocation(line: 437, column: 58, scope: !496)
!498 = !DILocation(line: 437, column: 17, scope: !496)
!499 = !DILocation(line: 437, column: 15, scope: !496)
!500 = !DILocation(line: 438, column: 33, scope: !496)
!501 = !DILocation(line: 438, column: 42, scope: !496)
!502 = !DILocation(line: 438, column: 51, scope: !496)
!503 = !DILocation(line: 438, column: 58, scope: !496)
!504 = !DILocation(line: 438, column: 9, scope: !496)
!505 = !DILocation(line: 439, column: 43, scope: !496)
!506 = !DILocation(line: 439, column: 9, scope: !496)
!507 = distinct !{!507, !491, !508, !397}
!508 = !DILocation(line: 440, column: 5, scope: !411)
!509 = !DILocation(line: 441, column: 12, scope: !411)
!510 = !DILocation(line: 441, column: 5, scope: !411)
!511 = !DILocation(line: 442, column: 1, scope: !411)
!512 = distinct !DISubprogram(name: "ucs_pgtable_get_next_page_order", scope: !2, file: !2, line: 231, type: !513, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!110, !170, !170}
!515 = !{!516, !517, !518, !519, !526}
!516 = !DILocalVariable(name: "start", arg: 1, scope: !512, file: !2, line: 231, type: !170)
!517 = !DILocalVariable(name: "end", arg: 2, scope: !512, file: !2, line: 231, type: !170)
!518 = !DILocalVariable(name: "log2_len", scope: !512, file: !2, line: 233, type: !110)
!519 = !DILocalVariable(name: "_min_a", scope: !520, file: !2, line: 245, type: !110)
!520 = distinct !DILexicalBlock(scope: !521, file: !2, line: 245, column: 24)
!521 = distinct !DILexicalBlock(scope: !522, file: !2, line: 244, column: 20)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 244, column: 13)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 242, column: 12)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 240, column: 16)
!525 = distinct !DILexicalBlock(scope: !512, file: !2, line: 238, column: 9)
!526 = !DILocalVariable(name: "_min_b", scope: !520, file: !2, line: 245, type: !110)
!527 = !DILocation(line: 231, column: 64, scope: !512)
!528 = !DILocation(line: 231, column: 86, scope: !512)
!529 = !DILocation(line: 233, column: 5, scope: !512)
!530 = !DILocation(line: 233, column: 14, scope: !512)
!531 = !DILocation(line: 238, column: 10, scope: !525)
!532 = !DILocation(line: 238, column: 14, scope: !525)
!533 = !DILocation(line: 238, column: 20, scope: !525)
!534 = !DILocation(line: 238, column: 24, scope: !525)
!535 = !DILocation(line: 238, column: 30, scope: !525)
!536 = !DILocation(line: 238, column: 9, scope: !512)
!537 = !DILocation(line: 239, column: 18, scope: !538)
!538 = distinct !DILexicalBlock(scope: !525, file: !2, line: 238, column: 37)
!539 = !DILocation(line: 240, column: 5, scope: !538)
!540 = !DILocation(line: 240, column: 16, scope: !524)
!541 = !DILocation(line: 240, column: 23, scope: !524)
!542 = !DILocation(line: 240, column: 20, scope: !524)
!543 = !DILocation(line: 240, column: 16, scope: !525)
!544 = !DILocation(line: 241, column: 18, scope: !545)
!545 = distinct !DILexicalBlock(scope: !524, file: !2, line: 240, column: 30)
!546 = !DILocation(line: 242, column: 5, scope: !545)
!547 = !DILocation(line: 243, column: 20, scope: !523)
!548 = !DILocation(line: 243, column: 18, scope: !523)
!549 = !DILocation(line: 244, column: 13, scope: !522)
!550 = !DILocation(line: 244, column: 13, scope: !523)
!551 = !DILocation(line: 245, column: 24, scope: !520)
!552 = !DILocation(line: 245, column: 24, scope: !521)
!553 = !DILocation(line: 245, column: 22, scope: !521)
!554 = !DILocation(line: 246, column: 9, scope: !521)
!555 = !DILocation(line: 255, column: 15, scope: !512)
!556 = !DILocation(line: 255, column: 24, scope: !512)
!557 = !DILocation(line: 255, column: 46, scope: !512)
!558 = !DILocation(line: 255, column: 69, scope: !512)
!559 = !DILocation(line: 256, column: 13, scope: !512)
!560 = !DILocation(line: 257, column: 1, scope: !512)
!561 = !DILocation(line: 255, column: 5, scope: !512)
!562 = distinct !DISubprogram(name: "ucs_pgtable_insert_page", scope: !2, file: !2, line: 267, type: !563, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!414, !415, !170, !110, !164}
!565 = !{!566, !567, !568, !569, !570, !571, !573, !574, !575, !580, !585}
!566 = !DILocalVariable(name: "pgtable", arg: 1, scope: !562, file: !2, line: 267, type: !415)
!567 = !DILocalVariable(name: "address", arg: 2, scope: !562, file: !2, line: 267, type: !170)
!568 = !DILocalVariable(name: "order", arg: 3, scope: !562, file: !2, line: 268, type: !110)
!569 = !DILocalVariable(name: "region", arg: 4, scope: !562, file: !2, line: 268, type: !164)
!570 = !DILocalVariable(name: "dummy_pgd", scope: !562, file: !2, line: 270, type: !175)
!571 = !DILocalVariable(name: "pte", scope: !562, file: !2, line: 271, type: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!573 = !DILocalVariable(name: "pgd", scope: !562, file: !2, line: 272, type: !174)
!574 = !DILocalVariable(name: "shift", scope: !562, file: !2, line: 273, type: !110)
!575 = !DILocalVariable(name: "tmp", scope: !576, file: !2, line: 303, type: !164)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 303, column: 13)
!577 = distinct !DILexicalBlock(scope: !578, file: !2, line: 299, column: 29)
!578 = distinct !DILexicalBlock(scope: !579, file: !2, line: 299, column: 13)
!579 = distinct !DILexicalBlock(scope: !562, file: !2, line: 298, column: 15)
!580 = !DILocalVariable(name: "tmp", scope: !581, file: !2, line: 316, type: !174)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 316, column: 17)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 314, column: 46)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 314, column: 17)
!584 = distinct !DILexicalBlock(scope: !578, file: !2, line: 306, column: 16)
!585 = !DILabel(scope: !562, name: "err", file: !2, line: 327)
!586 = !DILocation(line: 267, column: 40, scope: !562)
!587 = !DILocation(line: 267, column: 64, scope: !562)
!588 = !DILocation(line: 268, column: 34, scope: !562)
!589 = !DILocation(line: 268, column: 59, scope: !562)
!590 = !DILocation(line: 270, column: 5, scope: !562)
!591 = !DILocation(line: 270, column: 19, scope: !562)
!592 = !DILocation(line: 271, column: 5, scope: !562)
!593 = !DILocation(line: 271, column: 22, scope: !562)
!594 = !DILocation(line: 272, column: 5, scope: !562)
!595 = !DILocation(line: 272, column: 20, scope: !562)
!596 = !DILocation(line: 273, column: 5, scope: !562)
!597 = !DILocation(line: 273, column: 14, scope: !562)
!598 = !DILocation(line: 275, column: 28, scope: !562)
!599 = !DILocation(line: 275, column: 37, scope: !562)
!600 = !DILocation(line: 275, column: 5, scope: !562)
!601 = !DILocation(line: 277, column: 5, scope: !562)
!602 = !DILocation(line: 277, column: 5, scope: !603)
!603 = distinct !DILexicalBlock(scope: !562, file: !2, line: 277, column: 5)
!604 = !DILocation(line: 277, column: 5, scope: !605)
!605 = distinct !DILexicalBlock(scope: !603, file: !2, line: 277, column: 5)
!606 = !DILocation(line: 281, column: 5, scope: !562)
!607 = !DILocation(line: 281, column: 12, scope: !562)
!608 = !DILocation(line: 281, column: 21, scope: !562)
!609 = !DILocation(line: 281, column: 29, scope: !562)
!610 = !DILocation(line: 281, column: 27, scope: !562)
!611 = !DILocation(line: 282, column: 28, scope: !612)
!612 = distinct !DILexicalBlock(scope: !562, file: !2, line: 281, column: 36)
!613 = !DILocation(line: 282, column: 9, scope: !612)
!614 = distinct !{!614, !606, !615, !397}
!615 = !DILocation(line: 283, column: 5, scope: !562)
!616 = !DILocation(line: 285, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !562, file: !2, line: 285, column: 9)
!618 = !{!250, !252, i64 0}
!619 = !DILocation(line: 285, column: 9, scope: !562)
!620 = !DILocation(line: 286, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !2, line: 285, column: 48)
!622 = !DILocation(line: 286, column: 17, scope: !621)
!623 = !DILocation(line: 286, column: 27, scope: !621)
!624 = !DILocation(line: 286, column: 36, scope: !621)
!625 = !DILocation(line: 286, column: 25, scope: !621)
!626 = !DILocation(line: 286, column: 45, scope: !621)
!627 = !DILocation(line: 286, column: 54, scope: !621)
!628 = !DILocation(line: 286, column: 42, scope: !621)
!629 = !DILocation(line: 287, column: 32, scope: !630)
!630 = distinct !DILexicalBlock(scope: !621, file: !2, line: 286, column: 60)
!631 = !DILocation(line: 287, column: 13, scope: !630)
!632 = distinct !{!632, !620, !633, !397}
!633 = !DILocation(line: 288, column: 9, scope: !621)
!634 = !DILocation(line: 289, column: 5, scope: !621)
!635 = !DILocation(line: 290, column: 25, scope: !636)
!636 = distinct !DILexicalBlock(scope: !617, file: !2, line: 289, column: 12)
!637 = !DILocation(line: 290, column: 35, scope: !636)
!638 = !DILocation(line: 290, column: 44, scope: !636)
!639 = !DILocation(line: 290, column: 33, scope: !636)
!640 = !DILocation(line: 290, column: 9, scope: !636)
!641 = !DILocation(line: 290, column: 18, scope: !636)
!642 = !DILocation(line: 290, column: 23, scope: !636)
!643 = !DILocation(line: 291, column: 27, scope: !636)
!644 = !DILocation(line: 291, column: 9, scope: !636)
!645 = !DILocation(line: 295, column: 11, scope: !562)
!646 = !DILocation(line: 296, column: 13, scope: !562)
!647 = !DILocation(line: 296, column: 22, scope: !562)
!648 = !DILocation(line: 296, column: 11, scope: !562)
!649 = !DILocation(line: 297, column: 14, scope: !562)
!650 = !DILocation(line: 297, column: 23, scope: !562)
!651 = !DILocation(line: 297, column: 11, scope: !562)
!652 = !DILocation(line: 298, column: 5, scope: !562)
!653 = !DILocation(line: 299, column: 13, scope: !578)
!654 = !DILocation(line: 299, column: 22, scope: !578)
!655 = !DILocation(line: 299, column: 19, scope: !578)
!656 = !DILocation(line: 299, column: 13, scope: !579)
!657 = !DILocation(line: 300, column: 17, scope: !658)
!658 = distinct !DILexicalBlock(scope: !577, file: !2, line: 300, column: 17)
!659 = !DILocation(line: 300, column: 17, scope: !577)
!660 = !DILocation(line: 301, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !2, line: 300, column: 45)
!662 = !DILocation(line: 303, column: 13, scope: !577)
!663 = !DILocation(line: 303, column: 13, scope: !576)
!664 = !DILocation(line: 303, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !576, file: !2, line: 303, column: 13)
!666 = !DILocation(line: 304, column: 15, scope: !577)
!667 = !DILocation(line: 304, column: 20, scope: !577)
!668 = !DILocation(line: 304, column: 13, scope: !577)
!669 = !DILocation(line: 305, column: 13, scope: !577)
!670 = !DILocation(line: 307, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !584, file: !2, line: 307, column: 17)
!672 = !DILocation(line: 307, column: 17, scope: !584)
!673 = !DILocation(line: 308, column: 17, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !2, line: 307, column: 69)
!675 = !DILocation(line: 314, column: 18, scope: !583)
!676 = !DILocation(line: 314, column: 17, scope: !584)
!677 = !DILocation(line: 315, column: 19, scope: !582)
!678 = !DILocation(line: 315, column: 24, scope: !582)
!679 = !DILocation(line: 315, column: 17, scope: !582)
!680 = !DILocation(line: 316, column: 17, scope: !582)
!681 = !DILocation(line: 316, column: 17, scope: !581)
!682 = !DILocation(line: 316, column: 17, scope: !683)
!683 = distinct !DILexicalBlock(scope: !581, file: !2, line: 316, column: 17)
!684 = !DILocation(line: 317, column: 13, scope: !582)
!685 = !DILocation(line: 319, column: 22, scope: !686)
!686 = distinct !DILexicalBlock(scope: !584, file: !2, line: 319, column: 22)
!687 = !DILocation(line: 319, column: 22, scope: !584)
!688 = !DILocation(line: 319, column: 20, scope: !584)
!689 = !DILocation(line: 320, column: 19, scope: !584)
!690 = !DILocation(line: 321, column: 23, scope: !584)
!691 = !DILocation(line: 321, column: 28, scope: !584)
!692 = !DILocation(line: 321, column: 37, scope: !584)
!693 = !DILocation(line: 321, column: 48, scope: !584)
!694 = !DILocation(line: 321, column: 45, scope: !584)
!695 = !DILocation(line: 321, column: 55, scope: !584)
!696 = !DILocation(line: 321, column: 20, scope: !584)
!697 = distinct !{!697, !652, !698}
!698 = !DILocation(line: 323, column: 5, scope: !562)
!699 = !DILocation(line: 325, column: 5, scope: !562)
!700 = !DILocation(line: 327, column: 1, scope: !562)
!701 = !DILocation(line: 328, column: 5, scope: !562)
!702 = !DILocation(line: 328, column: 31, scope: !562)
!703 = !DILocation(line: 328, column: 12, scope: !562)
!704 = distinct !{!704, !701, !705, !397}
!705 = !DILocation(line: 328, column: 40, scope: !562)
!706 = !DILocation(line: 329, column: 5, scope: !562)
!707 = !DILocation(line: 330, column: 1, scope: !562)
!708 = distinct !DISubprogram(name: "ucs_pgt_address_advance", scope: !2, file: !2, line: 88, type: !709, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !712)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !711, !110}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!712 = !{!713, !714}
!713 = !DILocalVariable(name: "address_p", arg: 1, scope: !708, file: !2, line: 88, type: !711)
!714 = !DILocalVariable(name: "order", arg: 2, scope: !708, file: !2, line: 89, type: !110)
!715 = !DILocation(line: 88, column: 60, scope: !708)
!716 = !DILocation(line: 89, column: 53, scope: !708)
!717 = !DILocation(line: 93, column: 26, scope: !708)
!718 = !DILocation(line: 93, column: 23, scope: !708)
!719 = !DILocation(line: 93, column: 6, scope: !708)
!720 = !DILocation(line: 93, column: 16, scope: !708)
!721 = !DILocation(line: 94, column: 1, scope: !708)
!722 = distinct !DISubprogram(name: "ucs_pgtable_trace", scope: !2, file: !2, line: 141, type: !723, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !415, !194}
!725 = !{!726, !727}
!726 = !DILocalVariable(name: "pgtable", arg: 1, scope: !722, file: !2, line: 141, type: !415)
!727 = !DILocalVariable(name: "message", arg: 2, scope: !722, file: !2, line: 141, type: !194)
!728 = !DILocation(line: 141, column: 46, scope: !722)
!729 = !DILocation(line: 141, column: 67, scope: !722)
!730 = !DILocation(line: 143, column: 21, scope: !722)
!731 = !DILocation(line: 143, column: 56, scope: !722)
!732 = !DILocation(line: 143, column: 5, scope: !722)
!733 = !DILocation(line: 144, column: 1, scope: !722)
!734 = distinct !DISubprogram(name: "ucs_pgtable_remove_page", scope: !2, file: !2, line: 379, type: !563, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !735)
!735 = !{!736, !737, !738, !739, !740, !741}
!736 = !DILocalVariable(name: "pgtable", arg: 1, scope: !734, file: !2, line: 379, type: !415)
!737 = !DILocalVariable(name: "address", arg: 2, scope: !734, file: !2, line: 379, type: !170)
!738 = !DILocalVariable(name: "order", arg: 3, scope: !734, file: !2, line: 380, type: !110)
!739 = !DILocalVariable(name: "region", arg: 4, scope: !734, file: !2, line: 380, type: !164)
!740 = !DILocalVariable(name: "dummy_pgd", scope: !734, file: !2, line: 382, type: !175)
!741 = !DILocalVariable(name: "status", scope: !734, file: !2, line: 383, type: !414)
!742 = !DILocation(line: 379, column: 40, scope: !734)
!743 = !DILocation(line: 379, column: 64, scope: !734)
!744 = !DILocation(line: 380, column: 34, scope: !734)
!745 = !DILocation(line: 380, column: 59, scope: !734)
!746 = !DILocation(line: 382, column: 5, scope: !734)
!747 = !DILocation(line: 382, column: 19, scope: !734)
!748 = !DILocation(line: 383, column: 5, scope: !734)
!749 = !DILocation(line: 383, column: 18, scope: !734)
!750 = !DILocation(line: 385, column: 28, scope: !734)
!751 = !DILocation(line: 385, column: 37, scope: !734)
!752 = !DILocation(line: 385, column: 5, scope: !734)
!753 = !DILocation(line: 387, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !734, file: !2, line: 387, column: 9)
!755 = !DILocation(line: 387, column: 20, scope: !754)
!756 = !DILocation(line: 387, column: 29, scope: !754)
!757 = !DILocation(line: 387, column: 18, scope: !754)
!758 = !DILocation(line: 387, column: 38, scope: !754)
!759 = !DILocation(line: 387, column: 47, scope: !754)
!760 = !DILocation(line: 387, column: 35, scope: !754)
!761 = !DILocation(line: 387, column: 9, scope: !734)
!762 = !DILocation(line: 388, column: 9, scope: !763)
!763 = distinct !DILexicalBlock(scope: !754, file: !2, line: 387, column: 53)
!764 = !DILocation(line: 391, column: 45, scope: !734)
!765 = !DILocation(line: 391, column: 54, scope: !734)
!766 = !DILocation(line: 391, column: 63, scope: !734)
!767 = !DILocation(line: 392, column: 46, scope: !734)
!768 = !DILocation(line: 392, column: 55, scope: !734)
!769 = !DILocation(line: 392, column: 61, scope: !734)
!770 = !DILocation(line: 392, column: 70, scope: !734)
!771 = !DILocation(line: 393, column: 45, scope: !734)
!772 = !DILocation(line: 391, column: 14, scope: !734)
!773 = !DILocation(line: 391, column: 12, scope: !734)
!774 = !DILocation(line: 394, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !734, file: !2, line: 394, column: 9)
!776 = !DILocation(line: 394, column: 16, scope: !775)
!777 = !DILocation(line: 394, column: 9, scope: !734)
!778 = !DILocation(line: 395, column: 16, scope: !779)
!779 = distinct !DILexicalBlock(scope: !775, file: !2, line: 394, column: 27)
!780 = !DILocation(line: 395, column: 9, scope: !779)
!781 = !DILocation(line: 398, column: 5, scope: !734)
!782 = !DILocation(line: 398, column: 31, scope: !734)
!783 = !DILocation(line: 398, column: 12, scope: !734)
!784 = distinct !{!784, !781, !785, !397}
!785 = !DILocation(line: 398, column: 40, scope: !734)
!786 = !DILocation(line: 399, column: 5, scope: !734)
!787 = !DILocation(line: 400, column: 1, scope: !734)
!788 = distinct !DISubprogram(name: "ucs_pgtable_remove", scope: !2, file: !2, line: 444, type: !412, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !789)
!789 = !{!790, !791, !792, !793, !794, !795}
!790 = !DILocalVariable(name: "pgtable", arg: 1, scope: !788, file: !2, line: 444, type: !415)
!791 = !DILocalVariable(name: "region", arg: 2, scope: !788, file: !2, line: 444, type: !164)
!792 = !DILocalVariable(name: "address", scope: !788, file: !2, line: 446, type: !170)
!793 = !DILocalVariable(name: "end", scope: !788, file: !2, line: 447, type: !170)
!794 = !DILocalVariable(name: "status", scope: !788, file: !2, line: 448, type: !414)
!795 = !DILocalVariable(name: "order", scope: !788, file: !2, line: 449, type: !110)
!796 = !DILocation(line: 444, column: 48, scope: !788)
!797 = !DILocation(line: 444, column: 75, scope: !788)
!798 = !DILocation(line: 446, column: 5, scope: !788)
!799 = !DILocation(line: 446, column: 20, scope: !788)
!800 = !DILocation(line: 446, column: 30, scope: !788)
!801 = !DILocation(line: 446, column: 38, scope: !788)
!802 = !DILocation(line: 447, column: 5, scope: !788)
!803 = !DILocation(line: 447, column: 20, scope: !788)
!804 = !DILocation(line: 447, column: 30, scope: !788)
!805 = !DILocation(line: 447, column: 38, scope: !788)
!806 = !DILocation(line: 448, column: 5, scope: !788)
!807 = !DILocation(line: 448, column: 18, scope: !788)
!808 = !DILocation(line: 449, column: 5, scope: !788)
!809 = !DILocation(line: 449, column: 14, scope: !788)
!810 = !DILocation(line: 451, column: 5, scope: !788)
!811 = !DILocation(line: 451, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !788, file: !2, line: 451, column: 5)
!813 = !DILocation(line: 451, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !2, line: 451, column: 5)
!815 = !DILocation(line: 453, column: 10, scope: !816)
!816 = distinct !DILexicalBlock(scope: !788, file: !2, line: 453, column: 9)
!817 = !DILocation(line: 453, column: 21, scope: !816)
!818 = !DILocation(line: 453, column: 18, scope: !816)
!819 = !DILocation(line: 453, column: 26, scope: !816)
!820 = !DILocation(line: 453, column: 30, scope: !816)
!821 = !DILocation(line: 453, column: 63, scope: !816)
!822 = !DILocation(line: 454, column: 10, scope: !816)
!823 = !DILocation(line: 453, column: 9, scope: !788)
!824 = !DILocation(line: 456, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !816, file: !2, line: 455, column: 5)
!826 = !DILocation(line: 459, column: 5, scope: !788)
!827 = !DILocation(line: 459, column: 12, scope: !788)
!828 = !DILocation(line: 459, column: 22, scope: !788)
!829 = !DILocation(line: 459, column: 20, scope: !788)
!830 = !DILocation(line: 460, column: 49, scope: !831)
!831 = distinct !DILexicalBlock(scope: !788, file: !2, line: 459, column: 27)
!832 = !DILocation(line: 460, column: 58, scope: !831)
!833 = !DILocation(line: 460, column: 17, scope: !831)
!834 = !DILocation(line: 460, column: 15, scope: !831)
!835 = !DILocation(line: 461, column: 42, scope: !831)
!836 = !DILocation(line: 461, column: 51, scope: !831)
!837 = !DILocation(line: 461, column: 60, scope: !831)
!838 = !DILocation(line: 461, column: 67, scope: !831)
!839 = !DILocation(line: 461, column: 18, scope: !831)
!840 = !DILocation(line: 461, column: 16, scope: !831)
!841 = !DILocation(line: 462, column: 13, scope: !842)
!842 = distinct !DILexicalBlock(scope: !831, file: !2, line: 462, column: 13)
!843 = !DILocation(line: 462, column: 20, scope: !842)
!844 = !DILocation(line: 462, column: 13, scope: !831)
!845 = !DILocation(line: 464, column: 20, scope: !846)
!846 = distinct !DILexicalBlock(scope: !842, file: !2, line: 462, column: 31)
!847 = !DILocation(line: 464, column: 13, scope: !846)
!848 = !DILocation(line: 467, column: 43, scope: !831)
!849 = !DILocation(line: 467, column: 9, scope: !831)
!850 = distinct !{!850, !826, !851, !397}
!851 = !DILocation(line: 468, column: 5, scope: !788)
!852 = !DILocation(line: 471, column: 7, scope: !788)
!853 = !DILocation(line: 471, column: 16, scope: !788)
!854 = !DILocation(line: 471, column: 5, scope: !788)
!855 = !DILocation(line: 473, column: 23, scope: !788)
!856 = !DILocation(line: 473, column: 5, scope: !788)
!857 = !DILocation(line: 474, column: 5, scope: !788)
!858 = !DILocation(line: 475, column: 1, scope: !788)
!859 = distinct !DISubprogram(name: "ucs_pgtable_lookup", scope: !2, file: !2, line: 477, type: !860, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{!164, !211, !170}
!862 = !{!863, !864, !865, !866, !867, !868}
!863 = !DILocalVariable(name: "pgtable", arg: 1, scope: !859, file: !2, line: 477, type: !211)
!864 = !DILocalVariable(name: "address", arg: 2, scope: !859, file: !2, line: 478, type: !170)
!865 = !DILocalVariable(name: "pte", scope: !859, file: !2, line: 480, type: !290)
!866 = !DILocalVariable(name: "region", scope: !859, file: !2, line: 481, type: !164)
!867 = !DILocalVariable(name: "dir", scope: !859, file: !2, line: 482, type: !174)
!868 = !DILocalVariable(name: "shift", scope: !859, file: !2, line: 483, type: !110)
!869 = !DILocation(line: 477, column: 59, scope: !859)
!870 = !DILocation(line: 478, column: 53, scope: !859)
!871 = !DILocation(line: 480, column: 5, scope: !859)
!872 = !DILocation(line: 480, column: 28, scope: !859)
!873 = !DILocation(line: 481, column: 5, scope: !859)
!874 = !DILocation(line: 481, column: 23, scope: !859)
!875 = !DILocation(line: 482, column: 5, scope: !859)
!876 = !DILocation(line: 482, column: 20, scope: !859)
!877 = !DILocation(line: 483, column: 5, scope: !859)
!878 = !DILocation(line: 483, column: 14, scope: !859)
!879 = !DILocation(line: 485, column: 5, scope: !859)
!880 = !DILocation(line: 485, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !859, file: !2, line: 485, column: 5)
!882 = !DILocation(line: 485, column: 5, scope: !883)
!883 = distinct !DILexicalBlock(scope: !881, file: !2, line: 485, column: 5)
!884 = !DILocation(line: 488, column: 10, scope: !885)
!885 = distinct !DILexicalBlock(scope: !859, file: !2, line: 488, column: 9)
!886 = !DILocation(line: 488, column: 20, scope: !885)
!887 = !DILocation(line: 488, column: 29, scope: !885)
!888 = !DILocation(line: 488, column: 18, scope: !885)
!889 = !DILocation(line: 488, column: 38, scope: !885)
!890 = !DILocation(line: 488, column: 47, scope: !885)
!891 = !DILocation(line: 488, column: 35, scope: !885)
!892 = !DILocation(line: 488, column: 9, scope: !859)
!893 = !DILocation(line: 489, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !885, file: !2, line: 488, column: 53)
!895 = !DILocation(line: 493, column: 14, scope: !859)
!896 = !DILocation(line: 493, column: 23, scope: !859)
!897 = !DILocation(line: 493, column: 11, scope: !859)
!898 = !DILocation(line: 494, column: 13, scope: !859)
!899 = !DILocation(line: 494, column: 22, scope: !859)
!900 = !DILocation(line: 494, column: 11, scope: !859)
!901 = !DILocation(line: 495, column: 5, scope: !859)
!902 = !DILocation(line: 496, column: 13, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !2, line: 496, column: 13)
!904 = distinct !DILexicalBlock(scope: !905, file: !2, line: 495, column: 14)
!905 = distinct !DILexicalBlock(scope: !906, file: !2, line: 495, column: 5)
!906 = distinct !DILexicalBlock(scope: !859, file: !2, line: 495, column: 5)
!907 = !DILocation(line: 496, column: 13, scope: !904)
!908 = !DILocation(line: 497, column: 22, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !2, line: 497, column: 22)
!910 = distinct !DILexicalBlock(scope: !903, file: !2, line: 496, column: 65)
!911 = !DILocation(line: 497, column: 22, scope: !910)
!912 = !DILocation(line: 497, column: 20, scope: !910)
!913 = !DILocation(line: 499, column: 20, scope: !910)
!914 = !DILocation(line: 499, column: 13, scope: !910)
!915 = !DILocation(line: 500, column: 20, scope: !916)
!916 = distinct !DILexicalBlock(scope: !903, file: !2, line: 500, column: 20)
!917 = !DILocation(line: 500, column: 20, scope: !903)
!918 = !DILocation(line: 501, column: 19, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !2, line: 501, column: 19)
!920 = distinct !DILexicalBlock(scope: !916, file: !2, line: 500, column: 69)
!921 = !DILocation(line: 501, column: 19, scope: !920)
!922 = !DILocation(line: 501, column: 17, scope: !920)
!923 = !DILocation(line: 502, column: 19, scope: !920)
!924 = !DILocation(line: 503, column: 20, scope: !920)
!925 = !DILocation(line: 503, column: 25, scope: !920)
!926 = !DILocation(line: 503, column: 34, scope: !920)
!927 = !DILocation(line: 503, column: 45, scope: !920)
!928 = !DILocation(line: 503, column: 42, scope: !920)
!929 = !DILocation(line: 503, column: 52, scope: !920)
!930 = !DILocation(line: 503, column: 17, scope: !920)
!931 = !DILocation(line: 504, column: 9, scope: !920)
!932 = !DILocation(line: 505, column: 13, scope: !933)
!933 = distinct !DILexicalBlock(scope: !916, file: !2, line: 504, column: 16)
!934 = !DILocation(line: 495, column: 5, scope: !905)
!935 = distinct !{!935, !936, !937}
!936 = !DILocation(line: 495, column: 5, scope: !906)
!937 = !DILocation(line: 507, column: 5, scope: !906)
!938 = !DILocation(line: 508, column: 1, scope: !859)
!939 = distinct !DISubprogram(name: "ucs_pgtable_search_range", scope: !2, file: !2, line: 565, type: !940, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !946)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !211, !170, !170, !942, !173}
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_search_callback_t", file: !166, line: 92, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !211, !164, !173}
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !960, !962, !964}
!947 = !DILocalVariable(name: "pgtable", arg: 1, scope: !939, file: !2, line: 565, type: !211)
!948 = !DILocalVariable(name: "from", arg: 2, scope: !939, file: !2, line: 566, type: !170)
!949 = !DILocalVariable(name: "to", arg: 3, scope: !939, file: !2, line: 566, type: !170)
!950 = !DILocalVariable(name: "cb", arg: 4, scope: !939, file: !2, line: 567, type: !942)
!951 = !DILocalVariable(name: "arg", arg: 5, scope: !939, file: !2, line: 567, type: !173)
!952 = !DILocalVariable(name: "address", scope: !939, file: !2, line: 569, type: !170)
!953 = !DILocalVariable(name: "end", scope: !939, file: !2, line: 570, type: !170)
!954 = !DILocalVariable(name: "last", scope: !939, file: !2, line: 571, type: !164)
!955 = !DILocalVariable(name: "order", scope: !939, file: !2, line: 572, type: !110)
!956 = !DILocalVariable(name: "_max_a", scope: !957, file: !2, line: 577, type: !170)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 577, column: 19)
!958 = distinct !DILexicalBlock(scope: !959, file: !2, line: 576, column: 50)
!959 = distinct !DILexicalBlock(scope: !939, file: !2, line: 576, column: 9)
!960 = !DILocalVariable(name: "_max_b", scope: !957, file: !2, line: 577, type: !961)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!962 = !DILocalVariable(name: "_min_a", scope: !963, file: !2, line: 578, type: !170)
!963 = distinct !DILexicalBlock(scope: !958, file: !2, line: 578, column: 19)
!964 = !DILocalVariable(name: "_min_b", scope: !963, file: !2, line: 578, type: !171)
!965 = !DILocation(line: 565, column: 52, scope: !939)
!966 = !DILocation(line: 566, column: 46, scope: !939)
!967 = !DILocation(line: 566, column: 67, scope: !939)
!968 = !DILocation(line: 567, column: 57, scope: !939)
!969 = !DILocation(line: 567, column: 67, scope: !939)
!970 = !DILocation(line: 569, column: 5, scope: !939)
!971 = !DILocation(line: 569, column: 20, scope: !939)
!972 = !DILocation(line: 569, column: 30, scope: !939)
!973 = !DILocation(line: 570, column: 5, scope: !939)
!974 = !DILocation(line: 570, column: 20, scope: !939)
!975 = !DILocation(line: 570, column: 30, scope: !939)
!976 = !DILocation(line: 571, column: 5, scope: !939)
!977 = !DILocation(line: 571, column: 23, scope: !939)
!978 = !DILocation(line: 572, column: 5, scope: !939)
!979 = !DILocation(line: 572, column: 14, scope: !939)
!980 = !DILocation(line: 576, column: 9, scope: !959)
!981 = !DILocation(line: 576, column: 18, scope: !959)
!982 = !DILocation(line: 576, column: 24, scope: !959)
!983 = !DILocation(line: 576, column: 9, scope: !939)
!984 = !DILocation(line: 577, column: 19, scope: !957)
!985 = !DILocation(line: 577, column: 19, scope: !958)
!986 = !DILocation(line: 577, column: 17, scope: !958)
!987 = !DILocation(line: 578, column: 19, scope: !963)
!988 = !DILocation(line: 578, column: 19, scope: !958)
!989 = !DILocation(line: 578, column: 17, scope: !958)
!990 = !DILocation(line: 579, column: 5, scope: !958)
!991 = !DILocation(line: 583, column: 10, scope: !939)
!992 = !DILocation(line: 584, column: 5, scope: !939)
!993 = !DILocation(line: 584, column: 12, scope: !939)
!994 = !DILocation(line: 584, column: 23, scope: !939)
!995 = !DILocation(line: 584, column: 20, scope: !939)
!996 = !DILocation(line: 585, column: 49, scope: !997)
!997 = distinct !DILexicalBlock(scope: !939, file: !2, line: 584, column: 27)
!998 = !DILocation(line: 585, column: 58, scope: !997)
!999 = !DILocation(line: 585, column: 17, scope: !997)
!1000 = !DILocation(line: 585, column: 15, scope: !997)
!1001 = !DILocation(line: 586, column: 14, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !2, line: 586, column: 13)
!1003 = !DILocation(line: 586, column: 24, scope: !1002)
!1004 = !DILocation(line: 586, column: 33, scope: !1002)
!1005 = !DILocation(line: 586, column: 22, scope: !1002)
!1006 = !DILocation(line: 586, column: 42, scope: !1002)
!1007 = !DILocation(line: 586, column: 51, scope: !1002)
!1008 = !DILocation(line: 586, column: 39, scope: !1002)
!1009 = !DILocation(line: 586, column: 13, scope: !997)
!1010 = !DILocation(line: 587, column: 39, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 586, column: 57)
!1012 = !DILocation(line: 587, column: 48, scope: !1011)
!1013 = !DILocation(line: 587, column: 57, scope: !1011)
!1014 = !DILocation(line: 587, column: 65, scope: !1011)
!1015 = !DILocation(line: 587, column: 74, scope: !1011)
!1016 = !DILocation(line: 588, column: 39, scope: !1011)
!1017 = !DILocation(line: 588, column: 48, scope: !1011)
!1018 = !DILocation(line: 588, column: 55, scope: !1011)
!1019 = !DILocation(line: 588, column: 59, scope: !1011)
!1020 = !DILocation(line: 587, column: 13, scope: !1011)
!1021 = !DILocation(line: 589, column: 9, scope: !1011)
!1022 = !DILocation(line: 591, column: 13, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !997, file: !2, line: 591, column: 13)
!1024 = !DILocation(line: 591, column: 19, scope: !1023)
!1025 = !DILocation(line: 591, column: 13, scope: !997)
!1026 = !DILocation(line: 592, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 591, column: 42)
!1028 = !DILocation(line: 595, column: 43, scope: !997)
!1029 = !DILocation(line: 595, column: 9, scope: !997)
!1030 = distinct !{!1030, !992, !1031, !397}
!1031 = !DILocation(line: 596, column: 5, scope: !939)
!1032 = !DILocation(line: 597, column: 1, scope: !939)
!1033 = distinct !DISubprogram(name: "ucs_pgtable_search_recurs", scope: !2, file: !2, line: 510, type: !1034, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1037)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !211, !170, !110, !290, !110, !942, !173, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1038 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1033, file: !2, line: 510, type: !211)
!1039 = !DILocalVariable(name: "address", arg: 2, scope: !1033, file: !2, line: 511, type: !170)
!1040 = !DILocalVariable(name: "order", arg: 3, scope: !1033, file: !2, line: 511, type: !110)
!1041 = !DILocalVariable(name: "pte", arg: 4, scope: !1033, file: !2, line: 512, type: !290)
!1042 = !DILocalVariable(name: "shift", arg: 5, scope: !1033, file: !2, line: 512, type: !110)
!1043 = !DILocalVariable(name: "cb", arg: 6, scope: !1033, file: !2, line: 513, type: !942)
!1044 = !DILocalVariable(name: "arg", arg: 7, scope: !1033, file: !2, line: 513, type: !173)
!1045 = !DILocalVariable(name: "last_p", arg: 8, scope: !1033, file: !2, line: 514, type: !1036)
!1046 = !DILocalVariable(name: "next_pte", scope: !1033, file: !2, line: 516, type: !572)
!1047 = !DILocalVariable(name: "region", scope: !1033, file: !2, line: 517, type: !164)
!1048 = !DILocalVariable(name: "dir", scope: !1033, file: !2, line: 518, type: !174)
!1049 = !DILocalVariable(name: "next_shift", scope: !1033, file: !2, line: 519, type: !110)
!1050 = !DILocalVariable(name: "i", scope: !1033, file: !2, line: 520, type: !110)
!1051 = !DILocation(line: 510, column: 60, scope: !1033)
!1052 = !DILocation(line: 511, column: 54, scope: !1033)
!1053 = !DILocation(line: 511, column: 72, scope: !1033)
!1054 = !DILocation(line: 512, column: 62, scope: !1033)
!1055 = !DILocation(line: 512, column: 76, scope: !1033)
!1056 = !DILocation(line: 513, column: 65, scope: !1033)
!1057 = !DILocation(line: 513, column: 75, scope: !1033)
!1058 = !DILocation(line: 514, column: 58, scope: !1033)
!1059 = !DILocation(line: 516, column: 5, scope: !1033)
!1060 = !DILocation(line: 516, column: 22, scope: !1033)
!1061 = !DILocation(line: 517, column: 5, scope: !1033)
!1062 = !DILocation(line: 517, column: 23, scope: !1033)
!1063 = !DILocation(line: 518, column: 5, scope: !1033)
!1064 = !DILocation(line: 518, column: 20, scope: !1033)
!1065 = !DILocation(line: 519, column: 5, scope: !1033)
!1066 = !DILocation(line: 519, column: 14, scope: !1033)
!1067 = !DILocation(line: 520, column: 5, scope: !1033)
!1068 = !DILocation(line: 520, column: 14, scope: !1033)
!1069 = !DILocation(line: 522, column: 9, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1033, file: !2, line: 522, column: 9)
!1071 = !DILocation(line: 522, column: 9, scope: !1033)
!1072 = !DILocation(line: 523, column: 18, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 522, column: 61)
!1074 = !DILocation(line: 523, column: 16, scope: !1073)
!1075 = !DILocation(line: 526, column: 14, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 526, column: 13)
!1077 = !DILocation(line: 526, column: 13, scope: !1076)
!1078 = !DILocation(line: 526, column: 24, scope: !1076)
!1079 = !DILocation(line: 526, column: 21, scope: !1076)
!1080 = !DILocation(line: 526, column: 13, scope: !1073)
!1081 = !DILocation(line: 527, column: 13, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 526, column: 32)
!1083 = !DILocation(line: 528, column: 21, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 528, column: 20)
!1085 = !DILocation(line: 528, column: 20, scope: !1084)
!1086 = !DILocation(line: 528, column: 28, scope: !1084)
!1087 = !DILocation(line: 528, column: 20, scope: !1076)
!1088 = !DILocation(line: 530, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 528, column: 37)
!1090 = !DILocation(line: 531, column: 19, scope: !1073)
!1091 = !DILocation(line: 531, column: 10, scope: !1073)
!1092 = !DILocation(line: 531, column: 17, scope: !1073)
!1093 = !DILocation(line: 541, column: 9, scope: !1073)
!1094 = !DILocation(line: 541, column: 12, scope: !1073)
!1095 = !DILocation(line: 541, column: 21, scope: !1073)
!1096 = !DILocation(line: 541, column: 29, scope: !1073)
!1097 = !DILocation(line: 543, column: 5, scope: !1073)
!1098 = !DILocation(line: 543, column: 16, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 543, column: 16)
!1100 = !DILocation(line: 543, column: 16, scope: !1070)
!1101 = !DILocation(line: 544, column: 15, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 544, column: 15)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 543, column: 65)
!1104 = !DILocation(line: 544, column: 15, scope: !1103)
!1105 = !DILocation(line: 544, column: 13, scope: !1103)
!1106 = !DILocation(line: 546, column: 22, scope: !1103)
!1107 = !DILocation(line: 546, column: 28, scope: !1103)
!1108 = !DILocation(line: 546, column: 20, scope: !1103)
!1109 = !DILocation(line: 548, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 548, column: 13)
!1111 = !DILocation(line: 548, column: 21, scope: !1110)
!1112 = !DILocation(line: 548, column: 19, scope: !1110)
!1113 = !DILocation(line: 548, column: 13, scope: !1103)
!1114 = !DILocation(line: 551, column: 25, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 548, column: 28)
!1116 = !DILocation(line: 551, column: 30, scope: !1115)
!1117 = !DILocation(line: 551, column: 39, scope: !1115)
!1118 = !DILocation(line: 551, column: 50, scope: !1115)
!1119 = !DILocation(line: 551, column: 47, scope: !1115)
!1120 = !DILocation(line: 551, column: 62, scope: !1115)
!1121 = !DILocation(line: 551, column: 22, scope: !1115)
!1122 = !DILocation(line: 552, column: 39, scope: !1115)
!1123 = !DILocation(line: 552, column: 48, scope: !1115)
!1124 = !DILocation(line: 552, column: 57, scope: !1115)
!1125 = !DILocation(line: 552, column: 64, scope: !1115)
!1126 = !DILocation(line: 553, column: 39, scope: !1115)
!1127 = !DILocation(line: 553, column: 51, scope: !1115)
!1128 = !DILocation(line: 553, column: 55, scope: !1115)
!1129 = !DILocation(line: 553, column: 60, scope: !1115)
!1130 = !DILocation(line: 552, column: 13, scope: !1115)
!1131 = !DILocation(line: 554, column: 9, scope: !1115)
!1132 = !DILocation(line: 556, column: 20, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 556, column: 13)
!1134 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 554, column: 16)
!1135 = !DILocation(line: 556, column: 18, scope: !1133)
!1136 = !DILocation(line: 556, column: 25, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 556, column: 13)
!1138 = !DILocation(line: 556, column: 27, scope: !1137)
!1139 = !DILocation(line: 556, column: 13, scope: !1133)
!1140 = !DILocation(line: 557, column: 29, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 556, column: 59)
!1142 = !DILocation(line: 557, column: 34, scope: !1141)
!1143 = !DILocation(line: 557, column: 42, scope: !1141)
!1144 = !DILocation(line: 557, column: 26, scope: !1141)
!1145 = !DILocation(line: 558, column: 43, scope: !1141)
!1146 = !DILocation(line: 558, column: 52, scope: !1141)
!1147 = !DILocation(line: 558, column: 61, scope: !1141)
!1148 = !DILocation(line: 558, column: 68, scope: !1141)
!1149 = !DILocation(line: 559, column: 43, scope: !1141)
!1150 = !DILocation(line: 559, column: 55, scope: !1141)
!1151 = !DILocation(line: 559, column: 59, scope: !1141)
!1152 = !DILocation(line: 559, column: 64, scope: !1141)
!1153 = !DILocation(line: 558, column: 17, scope: !1141)
!1154 = !DILocation(line: 560, column: 13, scope: !1141)
!1155 = !DILocation(line: 556, column: 54, scope: !1137)
!1156 = !DILocation(line: 556, column: 13, scope: !1137)
!1157 = distinct !{!1157, !1139, !1158, !397}
!1158 = !DILocation(line: 560, column: 13, scope: !1133)
!1159 = !DILocation(line: 562, column: 5, scope: !1103)
!1160 = !DILocation(line: 563, column: 1, scope: !1033)
!1161 = distinct !DISubprogram(name: "ucs_pgtable_purge", scope: !2, file: !2, line: 608, type: !1162, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !415, !942, !173}
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1165 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1161, file: !2, line: 608, type: !415)
!1166 = !DILocalVariable(name: "cb", arg: 2, scope: !1161, file: !2, line: 608, type: !942)
!1167 = !DILocalVariable(name: "arg", arg: 3, scope: !1161, file: !2, line: 609, type: !173)
!1168 = !DILocalVariable(name: "num_regions", scope: !1161, file: !2, line: 611, type: !110)
!1169 = !DILocalVariable(name: "all_regions", scope: !1161, file: !2, line: 612, type: !1036)
!1170 = !DILocalVariable(name: "next_region", scope: !1161, file: !2, line: 612, type: !1036)
!1171 = !DILocalVariable(name: "region", scope: !1161, file: !2, line: 612, type: !164)
!1172 = !DILocalVariable(name: "from", scope: !1161, file: !2, line: 613, type: !170)
!1173 = !DILocalVariable(name: "to", scope: !1161, file: !2, line: 613, type: !170)
!1174 = !DILocalVariable(name: "status", scope: !1161, file: !2, line: 614, type: !414)
!1175 = !DILocalVariable(name: "i", scope: !1161, file: !2, line: 615, type: !110)
!1176 = !DILabel(scope: !1161, name: "out", file: !2, line: 650)
!1177 = !DILocation(line: 608, column: 39, scope: !1161)
!1178 = !DILocation(line: 608, column: 74, scope: !1161)
!1179 = !DILocation(line: 609, column: 30, scope: !1161)
!1180 = !DILocation(line: 611, column: 5, scope: !1161)
!1181 = !DILocation(line: 611, column: 14, scope: !1161)
!1182 = !DILocation(line: 611, column: 28, scope: !1161)
!1183 = !DILocation(line: 611, column: 37, scope: !1161)
!1184 = !DILocation(line: 612, column: 5, scope: !1161)
!1185 = !DILocation(line: 612, column: 24, scope: !1161)
!1186 = !DILocation(line: 612, column: 39, scope: !1161)
!1187 = !DILocation(line: 612, column: 53, scope: !1161)
!1188 = !DILocation(line: 613, column: 5, scope: !1161)
!1189 = !DILocation(line: 613, column: 20, scope: !1161)
!1190 = !DILocation(line: 613, column: 26, scope: !1161)
!1191 = !DILocation(line: 614, column: 5, scope: !1161)
!1192 = !DILocation(line: 614, column: 18, scope: !1161)
!1193 = !DILocation(line: 615, column: 5, scope: !1161)
!1194 = !DILocation(line: 615, column: 14, scope: !1161)
!1195 = !DILocation(line: 617, column: 9, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 617, column: 9)
!1197 = !DILocation(line: 617, column: 21, scope: !1196)
!1198 = !DILocation(line: 617, column: 9, scope: !1161)
!1199 = !DILocation(line: 618, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 617, column: 27)
!1201 = !DILocation(line: 618, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 618, column: 9)
!1203 = !DILocation(line: 618, column: 9, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 618, column: 9)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 618, column: 9)
!1206 = !DILocation(line: 618, column: 9, scope: !1205)
!1207 = !DILocation(line: 618, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 618, column: 9)
!1209 = !DILocation(line: 619, column: 9, scope: !1200)
!1210 = !DILocation(line: 622, column: 30, scope: !1161)
!1211 = !DILocation(line: 622, column: 19, scope: !1161)
!1212 = !DILocation(line: 622, column: 17, scope: !1161)
!1213 = !DILocation(line: 624, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 624, column: 9)
!1215 = !DILocation(line: 624, column: 21, scope: !1214)
!1216 = !DILocation(line: 624, column: 9, scope: !1161)
!1217 = !DILocation(line: 625, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 624, column: 30)
!1219 = !DILocation(line: 625, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 625, column: 9)
!1221 = !DILocation(line: 625, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 625, column: 9)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !2, line: 625, column: 9)
!1224 = !DILocation(line: 625, column: 9, scope: !1223)
!1225 = !DILocation(line: 625, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 625, column: 9)
!1227 = !DILocation(line: 626, column: 9, scope: !1218)
!1228 = !DILocation(line: 629, column: 19, scope: !1161)
!1229 = !DILocation(line: 629, column: 17, scope: !1161)
!1230 = !DILocation(line: 630, column: 12, scope: !1161)
!1231 = !DILocation(line: 630, column: 21, scope: !1161)
!1232 = !DILocation(line: 630, column: 10, scope: !1161)
!1233 = !DILocation(line: 631, column: 12, scope: !1161)
!1234 = !DILocation(line: 631, column: 21, scope: !1161)
!1235 = !DILocation(line: 631, column: 37, scope: !1161)
!1236 = !DILocation(line: 631, column: 46, scope: !1161)
!1237 = !DILocation(line: 631, column: 34, scope: !1161)
!1238 = !DILocation(line: 631, column: 55, scope: !1161)
!1239 = !DILocation(line: 631, column: 64, scope: !1161)
!1240 = !DILocation(line: 631, column: 53, scope: !1161)
!1241 = !DILocation(line: 631, column: 26, scope: !1161)
!1242 = !DILocation(line: 631, column: 70, scope: !1161)
!1243 = !DILocation(line: 631, column: 10, scope: !1161)
!1244 = !DILocation(line: 632, column: 30, scope: !1161)
!1245 = !DILocation(line: 632, column: 39, scope: !1161)
!1246 = !DILocation(line: 632, column: 45, scope: !1161)
!1247 = !DILocation(line: 632, column: 5, scope: !1161)
!1248 = !DILocation(line: 638, column: 12, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 638, column: 5)
!1250 = !DILocation(line: 638, column: 10, scope: !1249)
!1251 = !DILocation(line: 638, column: 17, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 638, column: 5)
!1253 = !DILocation(line: 638, column: 21, scope: !1252)
!1254 = !DILocation(line: 638, column: 19, scope: !1252)
!1255 = !DILocation(line: 638, column: 5, scope: !1249)
!1256 = !DILocation(line: 639, column: 18, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 638, column: 39)
!1258 = !DILocation(line: 639, column: 30, scope: !1257)
!1259 = !DILocation(line: 639, column: 16, scope: !1257)
!1260 = !DILocation(line: 640, column: 37, scope: !1257)
!1261 = !DILocation(line: 640, column: 46, scope: !1257)
!1262 = !DILocation(line: 640, column: 18, scope: !1257)
!1263 = !DILocation(line: 640, column: 16, scope: !1257)
!1264 = !DILocation(line: 641, column: 13, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 641, column: 13)
!1266 = !DILocation(line: 641, column: 20, scope: !1265)
!1267 = !DILocation(line: 641, column: 13, scope: !1257)
!1268 = !DILocation(line: 642, column: 13, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 641, column: 31)
!1270 = !DILocation(line: 642, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 642, column: 13)
!1272 = !DILocation(line: 642, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 642, column: 13)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 642, column: 13)
!1275 = !DILocation(line: 642, column: 13, scope: !1274)
!1276 = !DILocation(line: 642, column: 13, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 642, column: 13)
!1278 = !DILocation(line: 644, column: 9, scope: !1269)
!1279 = !DILocation(line: 645, column: 9, scope: !1257)
!1280 = !DILocation(line: 645, column: 12, scope: !1257)
!1281 = !DILocation(line: 645, column: 21, scope: !1257)
!1282 = !DILocation(line: 645, column: 29, scope: !1257)
!1283 = !DILocation(line: 646, column: 5, scope: !1257)
!1284 = !DILocation(line: 638, column: 34, scope: !1252)
!1285 = !DILocation(line: 638, column: 5, scope: !1252)
!1286 = distinct !{!1286, !1255, !1287, !397}
!1287 = !DILocation(line: 646, column: 5, scope: !1249)
!1288 = !DILocation(line: 648, column: 14, scope: !1161)
!1289 = !DILocation(line: 648, column: 5, scope: !1161)
!1290 = !DILocation(line: 650, column: 1, scope: !1161)
!1291 = !DILocation(line: 656, column: 1, scope: !1161)
!1292 = !DISubprogram(name: "ucs_log_dispatch", scope: !1293, file: !1293, line: 118, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1293 = !DIFile(filename: "debug/log_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "ed8d01d248f99ff4fb4b4b3ef49d1a2d")
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !194, !110, !194, !190, !185, !194, null}
!1296 = !DISubprogram(name: "ucs_calloc", scope: !1297, file: !1297, line: 82, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1297 = !DIFile(filename: "debug/memtrack_int.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "66715be3ea050c4d1a170a6c46a24389")
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!173, !304, !304, !194}
!1300 = distinct !DISubprogram(name: "ucs_pgtable_purge_callback", scope: !2, file: !2, line: 599, type: !944, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1300, file: !2, line: 599, type: !211)
!1303 = !DILocalVariable(name: "region", arg: 2, scope: !1300, file: !2, line: 600, type: !164)
!1304 = !DILocalVariable(name: "arg", arg: 3, scope: !1300, file: !2, line: 601, type: !173)
!1305 = !DILocalVariable(name: "region_pp", scope: !1300, file: !2, line: 603, type: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1307 = !DILocation(line: 599, column: 61, scope: !1300)
!1308 = !DILocation(line: 600, column: 58, scope: !1300)
!1309 = !DILocation(line: 601, column: 46, scope: !1300)
!1310 = !DILocation(line: 603, column: 5, scope: !1300)
!1311 = !DILocation(line: 603, column: 25, scope: !1300)
!1312 = !DILocation(line: 603, column: 37, scope: !1300)
!1313 = !DILocation(line: 604, column: 19, scope: !1300)
!1314 = !DILocation(line: 604, column: 7, scope: !1300)
!1315 = !DILocation(line: 604, column: 6, scope: !1300)
!1316 = !DILocation(line: 604, column: 17, scope: !1300)
!1317 = !DILocation(line: 605, column: 9, scope: !1300)
!1318 = !DILocation(line: 605, column: 5, scope: !1300)
!1319 = !DILocation(line: 606, column: 1, scope: !1300)
!1320 = !DISubprogram(name: "ucs_free", scope: !1297, file: !1297, line: 86, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !173}
!1323 = distinct !DISubprogram(name: "ucs_pgtable_init", scope: !2, file: !2, line: 658, type: !1324, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!414, !415, !222, !227}
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1323, file: !2, line: 658, type: !415)
!1328 = !DILocalVariable(name: "alloc_cb", arg: 2, scope: !1323, file: !2, line: 659, type: !222)
!1329 = !DILocalVariable(name: "release_cb", arg: 3, scope: !1323, file: !2, line: 660, type: !227)
!1330 = !DILocation(line: 658, column: 46, scope: !1323)
!1331 = !DILocation(line: 659, column: 60, scope: !1323)
!1332 = !DILocation(line: 660, column: 62, scope: !1323)
!1333 = !DILocation(line: 671, column: 5, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 671, column: 5)
!1335 = !DILocation(line: 672, column: 23, scope: !1323)
!1336 = !DILocation(line: 672, column: 5, scope: !1323)
!1337 = !DILocation(line: 673, column: 5, scope: !1323)
!1338 = !DILocation(line: 673, column: 14, scope: !1323)
!1339 = !DILocation(line: 673, column: 29, scope: !1323)
!1340 = !DILocation(line: 674, column: 31, scope: !1323)
!1341 = !DILocation(line: 674, column: 5, scope: !1323)
!1342 = !DILocation(line: 674, column: 14, scope: !1323)
!1343 = !DILocation(line: 674, column: 29, scope: !1323)
!1344 = !{!250, !235, i64 32}
!1345 = !DILocation(line: 675, column: 31, scope: !1323)
!1346 = !DILocation(line: 675, column: 5, scope: !1323)
!1347 = !DILocation(line: 675, column: 14, scope: !1323)
!1348 = !DILocation(line: 675, column: 29, scope: !1323)
!1349 = !{!250, !235, i64 40}
!1350 = !DILocation(line: 676, column: 5, scope: !1323)
!1351 = distinct !DISubprogram(name: "ucs_pgtable_reset", scope: !2, file: !2, line: 146, type: !1352, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !415}
!1354 = !{!1355}
!1355 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1351, file: !2, line: 146, type: !415)
!1356 = !DILocation(line: 146, column: 46, scope: !1351)
!1357 = !DILocation(line: 148, column: 5, scope: !1351)
!1358 = !DILocation(line: 148, column: 14, scope: !1351)
!1359 = !DILocation(line: 148, column: 20, scope: !1351)
!1360 = !DILocation(line: 149, column: 5, scope: !1351)
!1361 = !DILocation(line: 149, column: 14, scope: !1351)
!1362 = !DILocation(line: 149, column: 20, scope: !1351)
!1363 = !DILocation(line: 150, column: 5, scope: !1351)
!1364 = !DILocation(line: 150, column: 14, scope: !1351)
!1365 = !DILocation(line: 150, column: 20, scope: !1351)
!1366 = !DILocation(line: 151, column: 1, scope: !1351)
!1367 = distinct !DISubprogram(name: "ucs_pgtable_cleanup", scope: !2, file: !2, line: 679, type: !1352, scopeLine: 680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1368)
!1368 = !{!1369}
!1369 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1367, file: !2, line: 679, type: !415)
!1370 = !DILocation(line: 679, column: 41, scope: !1367)
!1371 = !DILocation(line: 681, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 681, column: 9)
!1373 = !DILocation(line: 681, column: 18, scope: !1372)
!1374 = !DILocation(line: 681, column: 30, scope: !1372)
!1375 = !DILocation(line: 681, column: 9, scope: !1367)
!1376 = !DILocation(line: 682, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 681, column: 36)
!1378 = !DILocation(line: 682, column: 9, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 682, column: 9)
!1380 = !DILocation(line: 682, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 682, column: 9)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 682, column: 9)
!1383 = !DILocation(line: 682, column: 9, scope: !1382)
!1384 = !DILocation(line: 682, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 682, column: 9)
!1386 = !DILocation(line: 683, column: 5, scope: !1377)
!1387 = !DILocation(line: 684, column: 1, scope: !1367)
!1388 = distinct !DISubprogram(name: "__ucs_ilog2_u64", scope: !1389, file: !1389, line: 41, type: !1390, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1392)
!1389 = !DIFile(filename: "arch/x86_64/bitops.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "0d1aab16c9a0d6a81cee8a4e1a72f601")
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!110, !195}
!1392 = !{!1393, !1394}
!1393 = !DILocalVariable(name: "n", arg: 1, scope: !1388, file: !1389, line: 41, type: !195)
!1394 = !DILocalVariable(name: "result", scope: !1388, file: !1389, line: 43, type: !195)
!1395 = !DILocation(line: 41, column: 62, scope: !1388)
!1396 = !DILocation(line: 43, column: 5, scope: !1388)
!1397 = !DILocation(line: 43, column: 14, scope: !1388)
!1398 = !DILocation(line: 46, column: 16, scope: !1388)
!1399 = !DILocation(line: 44, column: 5, scope: !1388)
!1400 = !{i64 374629}
!1401 = !DILocation(line: 47, column: 12, scope: !1388)
!1402 = !DILocation(line: 48, column: 1, scope: !1388)
!1403 = !DILocation(line: 47, column: 5, scope: !1388)
!1404 = distinct !DISubprogram(name: "ucs_ffs64", scope: !1389, file: !1389, line: 23, type: !1390, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1405)
!1405 = !{!1406, !1407}
!1406 = !DILocalVariable(name: "n", arg: 1, scope: !1404, file: !1389, line: 23, type: !195)
!1407 = !DILocalVariable(name: "result", scope: !1404, file: !1389, line: 25, type: !195)
!1408 = !DILocation(line: 23, column: 56, scope: !1404)
!1409 = !DILocation(line: 25, column: 5, scope: !1404)
!1410 = !DILocation(line: 25, column: 14, scope: !1404)
!1411 = !DILocation(line: 28, column: 16, scope: !1404)
!1412 = !DILocation(line: 26, column: 5, scope: !1404)
!1413 = !{i64 374281}
!1414 = !DILocation(line: 29, column: 12, scope: !1404)
!1415 = !DILocation(line: 30, column: 1, scope: !1404)
!1416 = !DILocation(line: 29, column: 5, scope: !1404)
!1417 = distinct !DISubprogram(name: "ucs_pgtable_check_page", scope: !2, file: !2, line: 221, type: !1418, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !170, !110}
!1420 = !{!1421, !1422}
!1421 = !DILocalVariable(name: "address", arg: 1, scope: !1417, file: !2, line: 221, type: !170)
!1422 = !DILocalVariable(name: "order", arg: 2, scope: !1417, file: !2, line: 221, type: !110)
!1423 = !DILocation(line: 221, column: 51, scope: !1417)
!1424 = !DILocation(line: 221, column: 69, scope: !1417)
!1425 = !DILocation(line: 225, column: 1, scope: !1417)
!1426 = distinct !DISubprogram(name: "ucs_pgtable_expand", scope: !2, file: !2, line: 156, type: !1352, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430}
!1428 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1426, file: !2, line: 156, type: !415)
!1429 = !DILocalVariable(name: "pgd", scope: !1426, file: !2, line: 158, type: !174)
!1430 = !DILocalVariable(name: "tmp", scope: !1431, file: !2, line: 168, type: !174)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 168, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 163, column: 48)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 163, column: 9)
!1434 = !DILocation(line: 156, column: 47, scope: !1426)
!1435 = !DILocation(line: 158, column: 5, scope: !1426)
!1436 = !DILocation(line: 158, column: 20, scope: !1426)
!1437 = !DILocation(line: 163, column: 9, scope: !1433)
!1438 = !DILocation(line: 163, column: 9, scope: !1426)
!1439 = !DILocation(line: 164, column: 33, scope: !1432)
!1440 = !DILocation(line: 164, column: 15, scope: !1432)
!1441 = !DILocation(line: 164, column: 13, scope: !1432)
!1442 = !DILocation(line: 165, column: 9, scope: !1432)
!1443 = !DILocation(line: 165, column: 14, scope: !1432)
!1444 = !DILocation(line: 165, column: 23, scope: !1432)
!1445 = !DILocation(line: 165, column: 32, scope: !1432)
!1446 = !DILocation(line: 165, column: 40, scope: !1432)
!1447 = !DILocation(line: 165, column: 49, scope: !1432)
!1448 = !DILocation(line: 165, column: 37, scope: !1432)
!1449 = !DILocation(line: 165, column: 56, scope: !1432)
!1450 = !DILocation(line: 166, column: 25, scope: !1432)
!1451 = !DILocation(line: 166, column: 34, scope: !1432)
!1452 = !{i64 0, i64 8, !311}
!1453 = !DILocation(line: 167, column: 9, scope: !1432)
!1454 = !DILocation(line: 167, column: 14, scope: !1432)
!1455 = !DILocation(line: 167, column: 20, scope: !1432)
!1456 = !DILocation(line: 168, column: 9, scope: !1432)
!1457 = !DILocation(line: 168, column: 9, scope: !1431)
!1458 = !DILocation(line: 168, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 168, column: 9)
!1460 = !DILocation(line: 169, column: 5, scope: !1432)
!1461 = !DILocation(line: 171, column: 5, scope: !1426)
!1462 = !DILocation(line: 171, column: 14, scope: !1426)
!1463 = !DILocation(line: 171, column: 20, scope: !1426)
!1464 = !DILocation(line: 172, column: 5, scope: !1426)
!1465 = !DILocation(line: 172, column: 14, scope: !1426)
!1466 = !DILocation(line: 172, column: 19, scope: !1426)
!1467 = !DILocation(line: 173, column: 23, scope: !1426)
!1468 = !DILocation(line: 173, column: 32, scope: !1426)
!1469 = !DILocation(line: 173, column: 5, scope: !1426)
!1470 = !DILocation(line: 173, column: 14, scope: !1426)
!1471 = !DILocation(line: 173, column: 20, scope: !1426)
!1472 = !DILocation(line: 174, column: 23, scope: !1426)
!1473 = !DILocation(line: 174, column: 5, scope: !1426)
!1474 = !DILocation(line: 175, column: 1, scope: !1426)
!1475 = distinct !DISubprogram(name: "ucs_pgt_dir_alloc", scope: !2, file: !2, line: 69, type: !1476, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!174, !415}
!1478 = !{!1479, !1480}
!1479 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1475, file: !2, line: 69, type: !415)
!1480 = !DILocalVariable(name: "pgd", scope: !1475, file: !2, line: 71, type: !174)
!1481 = !DILocation(line: 69, column: 63, scope: !1475)
!1482 = !DILocation(line: 71, column: 5, scope: !1475)
!1483 = !DILocation(line: 71, column: 20, scope: !1475)
!1484 = !DILocation(line: 73, column: 11, scope: !1475)
!1485 = !DILocation(line: 73, column: 20, scope: !1475)
!1486 = !DILocation(line: 73, column: 33, scope: !1475)
!1487 = !DILocation(line: 73, column: 9, scope: !1475)
!1488 = !DILocation(line: 74, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 74, column: 9)
!1490 = !DILocation(line: 74, column: 13, scope: !1489)
!1491 = !DILocation(line: 74, column: 9, scope: !1475)
!1492 = !DILocation(line: 75, column: 9, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 74, column: 22)
!1494 = !DILocation(line: 78, column: 5, scope: !1475)
!1495 = !DILocation(line: 78, column: 5, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 78, column: 5)
!1497 = !DILocation(line: 79, column: 12, scope: !1475)
!1498 = !DILocation(line: 79, column: 5, scope: !1475)
!1499 = !DILocation(line: 80, column: 12, scope: !1475)
!1500 = !DILocation(line: 81, column: 1, scope: !1475)
!1501 = !DILocation(line: 80, column: 5, scope: !1475)
!1502 = distinct !DISubprogram(name: "ucs_pgtable_shrink", scope: !2, file: !2, line: 182, type: !1503, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1506)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!1505, !415}
!1505 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1506 = !{!1507, !1508, !1509, !1510}
!1507 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1502, file: !2, line: 182, type: !415)
!1508 = !DILocalVariable(name: "pte", scope: !1502, file: !2, line: 184, type: !572)
!1509 = !DILocalVariable(name: "pgd", scope: !1502, file: !2, line: 185, type: !174)
!1510 = !DILocalVariable(name: "pte_idx", scope: !1502, file: !2, line: 186, type: !110)
!1511 = !DILocation(line: 182, column: 46, scope: !1502)
!1512 = !DILocation(line: 184, column: 5, scope: !1502)
!1513 = !DILocation(line: 184, column: 22, scope: !1502)
!1514 = !DILocation(line: 185, column: 5, scope: !1502)
!1515 = !DILocation(line: 185, column: 20, scope: !1502)
!1516 = !DILocation(line: 186, column: 5, scope: !1502)
!1517 = !DILocation(line: 186, column: 14, scope: !1502)
!1518 = !DILocation(line: 188, column: 10, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 188, column: 9)
!1520 = !DILocation(line: 188, column: 9, scope: !1502)
!1521 = !DILocation(line: 189, column: 27, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 188, column: 49)
!1523 = !DILocation(line: 189, column: 9, scope: !1522)
!1524 = !DILocation(line: 190, column: 27, scope: !1522)
!1525 = !DILocation(line: 190, column: 9, scope: !1522)
!1526 = !DILocation(line: 191, column: 9, scope: !1522)
!1527 = !DILocation(line: 192, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 192, column: 16)
!1529 = !DILocation(line: 192, column: 16, scope: !1519)
!1530 = !DILocation(line: 193, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 192, column: 77)
!1532 = !DILocation(line: 196, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 196, column: 11)
!1534 = !DILocation(line: 196, column: 11, scope: !1502)
!1535 = !DILocation(line: 196, column: 9, scope: !1502)
!1536 = !DILocation(line: 202, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 202, column: 9)
!1538 = !DILocation(line: 202, column: 14, scope: !1537)
!1539 = !DILocation(line: 202, column: 20, scope: !1537)
!1540 = !DILocation(line: 202, column: 9, scope: !1502)
!1541 = !DILocation(line: 203, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 202, column: 26)
!1543 = !DILocation(line: 207, column: 18, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 207, column: 5)
!1545 = !DILocation(line: 207, column: 29, scope: !1544)
!1546 = !DILocation(line: 207, column: 34, scope: !1544)
!1547 = !DILocation(line: 207, column: 27, scope: !1544)
!1548 = !DILocation(line: 207, column: 10, scope: !1544)
!1549 = !DILocation(line: 207, column: 44, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 207, column: 5)
!1551 = !DILocation(line: 207, column: 43, scope: !1550)
!1552 = !DILocation(line: 207, column: 5, scope: !1544)
!1553 = !DILocation(line: 209, column: 5, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 207, column: 90)
!1555 = !DILocation(line: 207, column: 72, scope: !1550)
!1556 = !DILocation(line: 207, column: 83, scope: !1550)
!1557 = !DILocation(line: 207, column: 5, scope: !1550)
!1558 = distinct !{!1558, !1552, !1559, !397}
!1559 = !DILocation(line: 209, column: 5, scope: !1544)
!1560 = !DILocation(line: 212, column: 5, scope: !1502)
!1561 = !DILocation(line: 212, column: 14, scope: !1502)
!1562 = !DILocation(line: 212, column: 20, scope: !1502)
!1563 = !DILocation(line: 213, column: 39, scope: !1502)
!1564 = !DILocation(line: 213, column: 23, scope: !1502)
!1565 = !DILocation(line: 213, column: 50, scope: !1502)
!1566 = !DILocation(line: 213, column: 59, scope: !1502)
!1567 = !DILocation(line: 213, column: 47, scope: !1502)
!1568 = !DILocation(line: 213, column: 5, scope: !1502)
!1569 = !DILocation(line: 213, column: 14, scope: !1502)
!1570 = !DILocation(line: 213, column: 20, scope: !1502)
!1571 = !DILocation(line: 214, column: 45, scope: !1502)
!1572 = !DILocation(line: 214, column: 54, scope: !1502)
!1573 = !DILocation(line: 214, column: 42, scope: !1502)
!1574 = !DILocation(line: 214, column: 5, scope: !1502)
!1575 = !DILocation(line: 214, column: 14, scope: !1502)
!1576 = !DILocation(line: 214, column: 20, scope: !1502)
!1577 = !DILocation(line: 215, column: 5, scope: !1502)
!1578 = !DILocation(line: 215, column: 14, scope: !1502)
!1579 = !DILocation(line: 215, column: 24, scope: !1502)
!1580 = !DILocation(line: 215, column: 23, scope: !1502)
!1581 = !DILocation(line: 216, column: 23, scope: !1502)
!1582 = !DILocation(line: 216, column: 5, scope: !1502)
!1583 = !DILocation(line: 217, column: 25, scope: !1502)
!1584 = !DILocation(line: 217, column: 34, scope: !1502)
!1585 = !DILocation(line: 217, column: 5, scope: !1502)
!1586 = !DILocation(line: 218, column: 5, scope: !1502)
!1587 = !DILocation(line: 219, column: 1, scope: !1502)
!1588 = !DISubprogram(name: "ucs_fatal_error_format", scope: !1589, file: !1589, line: 88, type: !1590, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1589 = !DIFile(filename: "debug/assert.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucs", checksumkind: CSK_MD5, checksum: "4e96cd73de008c23dbc0cd8583d97789")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !194, !110, !194, !194, null}
!1592 = distinct !DISubprogram(name: "ucs_pgt_dir_release", scope: !2, file: !2, line: 83, type: !1593, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !415, !174}
!1595 = !{!1596, !1597}
!1596 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1592, file: !2, line: 83, type: !415)
!1597 = !DILocalVariable(name: "pgd", arg: 2, scope: !1592, file: !2, line: 83, type: !174)
!1598 = !DILocation(line: 83, column: 55, scope: !1592)
!1599 = !DILocation(line: 83, column: 79, scope: !1592)
!1600 = !DILocation(line: 85, column: 5, scope: !1592)
!1601 = !DILocation(line: 85, column: 14, scope: !1592)
!1602 = !DILocation(line: 85, column: 29, scope: !1592)
!1603 = !DILocation(line: 85, column: 38, scope: !1592)
!1604 = !DILocation(line: 86, column: 1, scope: !1592)
!1605 = distinct !DISubprogram(name: "ucs_pgtable_remove_page_recurs", scope: !2, file: !2, line: 336, type: !1606, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1608)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!414, !415, !170, !110, !174, !572, !110, !164}
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1609 = !DILocalVariable(name: "pgtable", arg: 1, scope: !1605, file: !2, line: 336, type: !415)
!1610 = !DILocalVariable(name: "address", arg: 2, scope: !1605, file: !2, line: 336, type: !170)
!1611 = !DILocalVariable(name: "order", arg: 3, scope: !1605, file: !2, line: 337, type: !110)
!1612 = !DILocalVariable(name: "pgd", arg: 4, scope: !1605, file: !2, line: 337, type: !174)
!1613 = !DILocalVariable(name: "pte", arg: 5, scope: !1605, file: !2, line: 338, type: !572)
!1614 = !DILocalVariable(name: "shift", arg: 6, scope: !1605, file: !2, line: 338, type: !110)
!1615 = !DILocalVariable(name: "region", arg: 7, scope: !1605, file: !2, line: 339, type: !164)
!1616 = !DILocalVariable(name: "next_dir", scope: !1605, file: !2, line: 341, type: !174)
!1617 = !DILocalVariable(name: "next_pte", scope: !1605, file: !2, line: 342, type: !572)
!1618 = !DILocalVariable(name: "status", scope: !1605, file: !2, line: 343, type: !414)
!1619 = !DILocalVariable(name: "next_shift", scope: !1605, file: !2, line: 344, type: !110)
!1620 = !DILabel(scope: !1605, name: "no_elem", file: !2, line: 374)
!1621 = !DILocation(line: 336, column: 47, scope: !1605)
!1622 = !DILocation(line: 336, column: 71, scope: !1605)
!1623 = !DILocation(line: 337, column: 41, scope: !1605)
!1624 = !DILocation(line: 337, column: 63, scope: !1605)
!1625 = !DILocation(line: 338, column: 49, scope: !1605)
!1626 = !DILocation(line: 338, column: 63, scope: !1605)
!1627 = !DILocation(line: 339, column: 50, scope: !1605)
!1628 = !DILocation(line: 341, column: 5, scope: !1605)
!1629 = !DILocation(line: 341, column: 20, scope: !1605)
!1630 = !DILocation(line: 342, column: 5, scope: !1605)
!1631 = !DILocation(line: 342, column: 22, scope: !1605)
!1632 = !DILocation(line: 343, column: 5, scope: !1605)
!1633 = !DILocation(line: 343, column: 18, scope: !1605)
!1634 = !DILocation(line: 344, column: 5, scope: !1605)
!1635 = !DILocation(line: 344, column: 14, scope: !1605)
!1636 = !DILocation(line: 346, column: 9, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 346, column: 9)
!1638 = !DILocation(line: 346, column: 9, scope: !1605)
!1639 = !DILocation(line: 348, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 348, column: 13)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 348, column: 13)
!1642 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 346, column: 61)
!1643 = !DILocation(line: 348, column: 13, scope: !1641)
!1644 = !DILocation(line: 348, column: 46, scope: !1641)
!1645 = !DILocation(line: 348, column: 43, scope: !1641)
!1646 = !DILocation(line: 348, column: 13, scope: !1642)
!1647 = !DILocation(line: 349, column: 13, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 348, column: 54)
!1649 = !DILocation(line: 352, column: 11, scope: !1642)
!1650 = !DILocation(line: 352, column: 16, scope: !1642)
!1651 = !DILocation(line: 352, column: 9, scope: !1642)
!1652 = !DILocation(line: 353, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 353, column: 9)
!1654 = !DILocation(line: 354, column: 9, scope: !1642)
!1655 = !DILocation(line: 355, column: 16, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 355, column: 16)
!1657 = !DILocation(line: 355, column: 16, scope: !1637)
!1658 = !DILocation(line: 356, column: 22, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 356, column: 22)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 355, column: 65)
!1661 = !DILocation(line: 356, column: 22, scope: !1660)
!1662 = !DILocation(line: 356, column: 20, scope: !1660)
!1663 = !DILocation(line: 357, column: 22, scope: !1660)
!1664 = !DILocation(line: 357, column: 28, scope: !1660)
!1665 = !DILocation(line: 357, column: 20, scope: !1660)
!1666 = !DILocation(line: 358, column: 23, scope: !1660)
!1667 = !DILocation(line: 358, column: 33, scope: !1660)
!1668 = !DILocation(line: 358, column: 42, scope: !1660)
!1669 = !DILocation(line: 358, column: 53, scope: !1660)
!1670 = !DILocation(line: 358, column: 50, scope: !1660)
!1671 = !DILocation(line: 358, column: 65, scope: !1660)
!1672 = !DILocation(line: 358, column: 20, scope: !1660)
!1673 = !DILocation(line: 360, column: 49, scope: !1660)
!1674 = !DILocation(line: 360, column: 58, scope: !1660)
!1675 = !DILocation(line: 360, column: 67, scope: !1660)
!1676 = !DILocation(line: 360, column: 74, scope: !1660)
!1677 = !DILocation(line: 361, column: 49, scope: !1660)
!1678 = !DILocation(line: 361, column: 59, scope: !1660)
!1679 = !DILocation(line: 361, column: 71, scope: !1660)
!1680 = !DILocation(line: 360, column: 18, scope: !1660)
!1681 = !DILocation(line: 360, column: 16, scope: !1660)
!1682 = !DILocation(line: 362, column: 13, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 362, column: 13)
!1684 = !DILocation(line: 362, column: 20, scope: !1683)
!1685 = !DILocation(line: 362, column: 13, scope: !1660)
!1686 = !DILocation(line: 363, column: 13, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !2, line: 362, column: 31)
!1688 = !DILocation(line: 366, column: 13, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 366, column: 13)
!1690 = !DILocation(line: 366, column: 23, scope: !1689)
!1691 = !DILocation(line: 366, column: 29, scope: !1689)
!1692 = !DILocation(line: 366, column: 13, scope: !1660)
!1693 = !DILocation(line: 367, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 367, column: 13)
!1695 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 366, column: 35)
!1696 = !DILocation(line: 368, column: 15, scope: !1695)
!1697 = !DILocation(line: 368, column: 20, scope: !1695)
!1698 = !DILocation(line: 368, column: 13, scope: !1695)
!1699 = !DILocation(line: 369, column: 33, scope: !1695)
!1700 = !DILocation(line: 369, column: 42, scope: !1695)
!1701 = !DILocation(line: 369, column: 13, scope: !1695)
!1702 = !DILocation(line: 370, column: 9, scope: !1695)
!1703 = !DILocation(line: 371, column: 9, scope: !1660)
!1704 = !DILocation(line: 374, column: 1, scope: !1605)
!1705 = !DILocation(line: 375, column: 5, scope: !1605)
!1706 = !DILocation(line: 376, column: 1, scope: !1605)

; ModuleID = 'samples/110.bc'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/libproj/vtklibproj/src/pj_open_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.projCtx_t = type { i32, i32, ptr, ptr, ptr }

@pj_finder = internal global ptr null, align 8
@path_count = internal global i32 0, align 4
@search_path = internal global ptr null, align 8
@vtklibproj_pj_open_lib.dir_chars = internal constant [2 x i8] c"/\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PROJ_LIB\00", align 1
@proj_lib_name = internal global ptr @.str.7, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"pj_open_lib(%s): call fopen(%s) - %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.7 = private unnamed_addr constant [594 x i8] c"/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_pat/linux-ubuntu22.04-zen2/clang-18.0.0/vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/\00", align 1

; Function Attrs: nounwind uwtable
define void @vtklibproj_pj_set_finder(ptr noundef %new_finder) #0 {
entry:
  %new_finder.addr = alloca ptr, align 8
  store ptr %new_finder, ptr %new_finder.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %new_finder.addr, align 8, !tbaa !4
  store ptr %0, ptr @pj_finder, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define void @vtklibproj_pj_set_searchpath(i32 noundef %count, ptr noundef %path) #0 {
entry:
  %count.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4, !tbaa !8
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load i32, ptr @path_count, align 4, !tbaa !8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @search_path, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %3 = load i32, ptr @path_count, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @search_path, align 8, !tbaa !4
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  call void @vtklibproj_pj_dalloc(ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr @search_path, align 8, !tbaa !4
  call void @vtklibproj_pj_dalloc(ptr noundef %8)
  store i32 0, ptr @path_count, align 4, !tbaa !8
  store ptr null, ptr @search_path, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
  %9 = load i32, ptr %count.addr, align 4, !tbaa !8
  %cmp3 = icmp sgt i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end23

if.then4:                                         ; preds = %if.end
  %10 = load i32, ptr %count.addr, align 4, !tbaa !8
  %conv = sext i32 %10 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @vtklibproj_pj_malloc(i64 noundef %mul)
  store ptr %call, ptr @search_path, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %if.then4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %12 = load i32, ptr %count.addr, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body8, label %for.end22

for.body8:                                        ; preds = %for.cond5
  %13 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %13, i64 %idxprom9
  %15 = load ptr, ptr %arrayidx10, align 8, !tbaa !4
  %call11 = call i64 @strlen(ptr noundef %15) #7
  %add = add i64 %call11, 1
  %call12 = call ptr @vtklibproj_pj_malloc(i64 noundef %add)
  %16 = load ptr, ptr @search_path, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 %idxprom13
  store ptr %call12, ptr %arrayidx14, align 8, !tbaa !4
  %18 = load ptr, ptr @search_path, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %18, i64 %idxprom15
  %20 = load ptr, ptr %arrayidx16, align 8, !tbaa !4
  %21 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %21, i64 %idxprom17
  %23 = load ptr, ptr %arrayidx18, align 8, !tbaa !4
  %call19 = call ptr @strcpy(ptr noundef %20, ptr noundef %23) #6
  br label %for.inc20

for.inc20:                                        ; preds = %for.body8
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !8
  br label %for.cond5, !llvm.loop !12

for.end22:                                        ; preds = %for.cond5
  br label %if.end23

if.end23:                                         ; preds = %for.end22, %if.end
  %25 = load i32, ptr %count.addr, align 4, !tbaa !8
  store i32 %25, ptr @path_count, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @vtklibproj_pj_dalloc(ptr noundef) #2

declare ptr @vtklibproj_pj_malloc(i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_open_lib(ptr noundef %ctx, ptr noundef %name, ptr noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %fname = alloca [1025 x i8], align 16
  %sysname = alloca ptr, align 8
  %fid = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %mode, ptr %mode.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1025, ptr %fname) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sysname) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %fid) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  store i32 0, ptr %n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !13
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 126
  br i1 %cmp, label %land.lhs.true, label %if.else18

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !13
  %conv2 = sext i8 %3 to i32
  %call = call ptr @strchr(ptr noundef @vtklibproj_pj_open_lib.dir_chars, i32 noundef %conv2) #7
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %land.lhs.true
  %call3 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %call3, ptr %sysname, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %call3, null
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  %4 = load ptr, ptr %sysname, align 8, !tbaa !4
  %call7 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef %4) #6
  %arraydecay8 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #7
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %n, align 4, !tbaa !8
  %idxprom = sext i32 %conv10 to i64
  %arrayidx11 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 %idxprom
  store i8 47, ptr %arrayidx11, align 1, !tbaa !13
  %5 = load i32, ptr %n, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %n, align 4, !tbaa !8
  %idxprom12 = sext i32 %inc to i64
  %arrayidx13 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !13
  %arraydecay14 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  %6 = load i32, ptr %n, align 4, !tbaa !8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay14, i64 %idx.ext
  %7 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %add.ptr15 = getelementptr inbounds i8, ptr %7, i64 1
  %call16 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %add.ptr15) #6
  %arraydecay17 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  store ptr %arraydecay17, ptr %sysname, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %if.then
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then6
  br label %if.end83

if.else18:                                        ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %conv19 = sext i8 %9 to i32
  %call20 = call ptr @strchr(ptr noundef @vtklibproj_pj_open_lib.dir_chars, i32 noundef %conv19) #7
  %tobool21 = icmp ne ptr %call20, null
  br i1 %tobool21, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else18
  %10 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %conv22 = sext i8 %11 to i32
  %cmp23 = icmp eq i32 %conv22, 46
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false30

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i8, ptr %arrayidx26, align 1, !tbaa !13
  %conv27 = sext i8 %13 to i32
  %call28 = call ptr @strchr(ptr noundef @vtklibproj_pj_open_lib.dir_chars, i32 noundef %conv27) #7
  %tobool29 = icmp ne ptr %call28, null
  br i1 %tobool29, label %if.then48, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true25, %lor.lhs.false
  %14 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call31 = call i32 @strncmp(ptr noundef %14, ptr noundef @.str.1, i64 noundef 2) #7
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %lor.lhs.false38, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %lor.lhs.false30
  %15 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds i8, ptr %15, i64 2
  %16 = load i8, ptr %arrayidx34, align 1, !tbaa !13
  %conv35 = sext i8 %16 to i32
  %call36 = call ptr @strchr(ptr noundef @vtklibproj_pj_open_lib.dir_chars, i32 noundef %conv35) #7
  %tobool37 = icmp ne ptr %call36, null
  br i1 %tobool37, label %if.then48, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %land.lhs.true33, %lor.lhs.false30
  %17 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx39, align 1, !tbaa !13
  %conv40 = sext i8 %18 to i32
  %cmp41 = icmp eq i32 %conv40, 58
  br i1 %cmp41, label %land.lhs.true43, label %if.else49

land.lhs.true43:                                  ; preds = %lor.lhs.false38
  %19 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx44, align 1, !tbaa !13
  %conv45 = sext i8 %20 to i32
  %call46 = call ptr @strchr(ptr noundef @vtklibproj_pj_open_lib.dir_chars, i32 noundef %conv45) #7
  %tobool47 = icmp ne ptr %call46, null
  br i1 %tobool47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %land.lhs.true43, %land.lhs.true33, %land.lhs.true25, %if.else18
  %21 = load ptr, ptr %name.addr, align 8, !tbaa !4
  store ptr %21, ptr %sysname, align 8, !tbaa !4
  br label %if.end82

if.else49:                                        ; preds = %land.lhs.true43, %lor.lhs.false38
  %22 = load ptr, ptr @pj_finder, align 8, !tbaa !4
  %cmp50 = icmp ne ptr %22, null
  br i1 %cmp50, label %land.lhs.true52, label %if.else58

land.lhs.true52:                                  ; preds = %if.else49
  %23 = load ptr, ptr @pj_finder, align 8, !tbaa !4
  %24 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call53 = call ptr %23(ptr noundef %24)
  %cmp54 = icmp ne ptr %call53, null
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %land.lhs.true52
  %25 = load ptr, ptr @pj_finder, align 8, !tbaa !4
  %26 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call57 = call ptr %25(ptr noundef %26)
  store ptr %call57, ptr %sysname, align 8, !tbaa !4
  br label %if.end81

if.else58:                                        ; preds = %land.lhs.true52, %if.else49
  %call59 = call ptr @getenv(ptr noundef @.str.2) #6
  store ptr %call59, ptr %sysname, align 8, !tbaa !4
  %tobool60 = icmp ne ptr %call59, null
  br i1 %tobool60, label %if.then63, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.else58
  %27 = load ptr, ptr @proj_lib_name, align 8, !tbaa !4
  store ptr %27, ptr %sysname, align 8, !tbaa !4
  %tobool62 = icmp ne ptr %27, null
  br i1 %tobool62, label %if.then63, label %if.else79

if.then63:                                        ; preds = %lor.lhs.false61, %if.else58
  %arraydecay64 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  %28 = load ptr, ptr %sysname, align 8, !tbaa !4
  %call65 = call ptr @strcpy(ptr noundef %arraydecay64, ptr noundef %28) #6
  %arraydecay66 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  %call67 = call i64 @strlen(ptr noundef %arraydecay66) #7
  %conv68 = trunc i64 %call67 to i32
  store i32 %conv68, ptr %n, align 4, !tbaa !8
  %idxprom69 = sext i32 %conv68 to i64
  %arrayidx70 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 %idxprom69
  store i8 47, ptr %arrayidx70, align 1, !tbaa !13
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %inc71 = add nsw i32 %29, 1
  store i32 %inc71, ptr %n, align 4, !tbaa !8
  %idxprom72 = sext i32 %inc71 to i64
  %arrayidx73 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 %idxprom72
  store i8 0, ptr %arrayidx73, align 1, !tbaa !13
  %arraydecay74 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  %30 = load i32, ptr %n, align 4, !tbaa !8
  %idx.ext75 = sext i32 %30 to i64
  %add.ptr76 = getelementptr inbounds i8, ptr %arraydecay74, i64 %idx.ext75
  %31 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call77 = call ptr @strcpy(ptr noundef %add.ptr76, ptr noundef %31) #6
  %arraydecay78 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  store ptr %arraydecay78, ptr %sysname, align 8, !tbaa !4
  br label %if.end80

if.else79:                                        ; preds = %lor.lhs.false61
  %32 = load ptr, ptr %name.addr, align 8, !tbaa !4
  store ptr %32, ptr %sysname, align 8, !tbaa !4
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then63
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then56
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then48
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %sysname, align 8, !tbaa !4
  %35 = load ptr, ptr %mode.addr, align 8, !tbaa !4
  %call84 = call ptr @vtklibproj_pj_ctx_fopen(ptr noundef %33, ptr noundef %34, ptr noundef %35)
  store ptr %call84, ptr %fid, align 8, !tbaa !4
  %cmp85 = icmp ne ptr %call84, null
  br i1 %cmp85, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end83
  %call88 = call ptr @__errno_location() #8
  store i32 0, ptr %call88, align 4, !tbaa !8
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end83
  %36 = load ptr, ptr %fid, align 8, !tbaa !4
  %tobool90 = icmp ne ptr %36, null
  br i1 %tobool90, label %if.end110, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.end89
  %37 = load i32, ptr @path_count, align 4, !tbaa !8
  %cmp92 = icmp sgt i32 %37, 0
  br i1 %cmp92, label %if.then94, label %if.end110

if.then94:                                        ; preds = %land.lhs.true91
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then94
  %38 = load ptr, ptr %fid, align 8, !tbaa !4
  %cmp95 = icmp eq ptr %38, null
  br i1 %cmp95, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %40 = load i32, ptr @path_count, align 4, !tbaa !8
  %cmp97 = icmp slt i32 %39, %40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %41 = phi i1 [ false, %for.cond ], [ %cmp97, %land.rhs ]
  br i1 %41, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay99 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  %42 = load ptr, ptr @search_path, align 8, !tbaa !4
  %43 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom100 = sext i32 %43 to i64
  %arrayidx101 = getelementptr inbounds ptr, ptr %42, i64 %idxprom100
  %44 = load ptr, ptr %arrayidx101, align 8, !tbaa !4
  %45 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call102 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay99, ptr noundef @.str.3, ptr noundef %44, i32 noundef 47, ptr noundef %45) #6
  %arraydecay103 = getelementptr inbounds [1025 x i8], ptr %fname, i64 0, i64 0
  store ptr %arraydecay103, ptr %sysname, align 8, !tbaa !4
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %sysname, align 8, !tbaa !4
  %48 = load ptr, ptr %mode.addr, align 8, !tbaa !4
  %call104 = call ptr @vtklibproj_pj_ctx_fopen(ptr noundef %46, ptr noundef %47, ptr noundef %48)
  store ptr %call104, ptr %fid, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %inc105 = add nsw i32 %49, 1
  store i32 %inc105, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %land.end
  %50 = load ptr, ptr %fid, align 8, !tbaa !4
  %tobool106 = icmp ne ptr %50, null
  br i1 %tobool106, label %if.then107, label %if.end109

if.then107:                                       ; preds = %for.end
  %call108 = call ptr @__errno_location() #8
  store i32 0, ptr %call108, align 4, !tbaa !8
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %for.end
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %land.lhs.true91, %if.end89
  %51 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %last_errno = getelementptr inbounds %struct.projCtx_t, ptr %51, i32 0, i32 0
  %52 = load i32, ptr %last_errno, align 8, !tbaa !15
  %cmp111 = icmp eq i32 %52, 0
  br i1 %cmp111, label %land.lhs.true113, label %if.end119

land.lhs.true113:                                 ; preds = %if.end110
  %call114 = call ptr @__errno_location() #8
  %53 = load i32, ptr %call114, align 4, !tbaa !8
  %cmp115 = icmp ne i32 %53, 0
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %land.lhs.true113
  %54 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call118 = call ptr @__errno_location() #8
  %55 = load i32, ptr %call118, align 4, !tbaa !8
  call void @vtklibproj_pj_ctx_set_errno(ptr noundef %54, i32 noundef %55)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %land.lhs.true113, %if.end110
  %56 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %sysname, align 8, !tbaa !4
  %59 = load ptr, ptr %fid, align 8, !tbaa !4
  %cmp120 = icmp eq ptr %59, null
  %60 = zext i1 %cmp120 to i64
  %cond = select i1 %cmp120, ptr @.str.5, ptr @.str.6
  call void (ptr, i32, ptr, ...) @vtklibproj_pj_log(ptr noundef %56, i32 noundef 2, ptr noundef @.str.4, ptr noundef %57, ptr noundef %58, ptr noundef %cond)
  %61 = load ptr, ptr %fid, align 8, !tbaa !4
  store ptr %61, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fid) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sysname) #6
  call void @llvm.lifetime.end.p0(i64 1025, ptr %fname) #6
  %62 = load ptr, ptr %retval, align 8
  ret ptr %62
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

declare ptr @vtklibproj_pj_ctx_fopen(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

declare void @vtklibproj_pj_ctx_set_errno(ptr noundef, i32 noundef) #2

declare void @vtklibproj_pj_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !11}
!15 = !{!16, !9, i64 0}
!16 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24}

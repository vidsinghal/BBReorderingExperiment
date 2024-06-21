; ModuleID = 'samples/662.bc'
source_filename = "string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { ptr, i64, i64, i64, ptr, ptr, i64, i8 }
%struct.regmatch_t = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.gk_StringMap_t = type { ptr, i32 }

@.str = private unnamed_addr constant [27 x i8] c"gk_strstr_replace: new_str\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"regexec ran out of memory.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Error in replacement string. Missing character following ''.\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Error in captured subexpression specification.\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"Error in replacement string. Missing subexpression number folloing '$'.\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gk_strdup: str\00", align 1
@gk_time2str.datestr = internal global [128 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [18 x i8] c"%m/%d/%Y %H:%M:%S\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_strchr_replace(ptr noundef %str, ptr noundef %fromlist, ptr noundef %tolist) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %fromlist.addr = alloca ptr, align 8
  %tolist.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %len = alloca i64, align 8
  %fromlen = alloca i64, align 8
  %tolen = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  store ptr %fromlist, ptr %fromlist.addr, align 8, !tbaa !5
  store ptr %tolist, ptr %tolist.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fromlen) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %tolen) #7
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #8
  store i64 %call, ptr %len, align 8, !tbaa !9
  %1 = load ptr, ptr %fromlist.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(ptr noundef %1) #8
  store i64 %call1, ptr %fromlen, align 8, !tbaa !9
  %2 = load ptr, ptr %tolist.addr, align 8, !tbaa !5
  %call2 = call i64 @strlen(ptr noundef %2) #8
  store i64 %call2, ptr %tolen, align 8, !tbaa !9
  store i64 0, ptr %j, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %3 = load i64, ptr %i, align 8, !tbaa !9
  %4 = load i64, ptr %len, align 8, !tbaa !9
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %k, align 8, !tbaa !9
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i64, ptr %k, align 8, !tbaa !9
  %6 = load i64, ptr %fromlen, align 8, !tbaa !9
  %cmp4 = icmp ult i64 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %7 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %8 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %9 to i32
  %10 = load ptr, ptr %fromlist.addr, align 8, !tbaa !5
  %11 = load i64, ptr %k, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i8, ptr %arrayidx6, align 1, !tbaa !11
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  br i1 %cmp8, label %if.then, label %if.end15

if.then:                                          ; preds = %for.body5
  %13 = load i64, ptr %k, align 8, !tbaa !9
  %14 = load i64, ptr %tolen, align 8, !tbaa !9
  %cmp10 = icmp ult i64 %13, %14
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %15 = load ptr, ptr %tolist.addr, align 8, !tbaa !5
  %16 = load i64, ptr %k, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 %16
  %17 = load i8, ptr %arrayidx13, align 1, !tbaa !11
  %18 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %19 = load i64, ptr %j, align 8, !tbaa !9
  %inc = add nsw i64 %19, 1
  store i64 %inc, ptr %j, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds i8, ptr %18, i64 %19
  store i8 %17, ptr %arrayidx14, align 1, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then
  br label %for.end

if.end15:                                         ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %20 = load i64, ptr %k, align 8, !tbaa !9
  %inc16 = add nsw i64 %20, 1
  store i64 %inc16, ptr %k, align 8, !tbaa !9
  br label %for.cond3, !llvm.loop !12

for.end:                                          ; preds = %if.end, %for.cond3
  %21 = load i64, ptr %k, align 8, !tbaa !9
  %22 = load i64, ptr %fromlen, align 8, !tbaa !9
  %cmp17 = icmp eq i64 %21, %22
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %for.end
  %23 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %24 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx20 = getelementptr inbounds i8, ptr %23, i64 %24
  %25 = load i8, ptr %arrayidx20, align 1, !tbaa !11
  %26 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %27 = load i64, ptr %j, align 8, !tbaa !9
  %inc21 = add nsw i64 %27, 1
  store i64 %inc21, ptr %j, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds i8, ptr %26, i64 %27
  store i8 %25, ptr %arrayidx22, align 1, !tbaa !11
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %for.end
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %28 = load i64, ptr %i, align 8, !tbaa !9
  %inc25 = add nsw i64 %28, 1
  store i64 %inc25, ptr %i, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !14

for.end26:                                        ; preds = %for.cond
  %29 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %30 = load i64, ptr %j, align 8, !tbaa !9
  %arrayidx27 = getelementptr inbounds i8, ptr %29, i64 %30
  store i8 0, ptr %arrayidx27, align 1, !tbaa !11
  %31 = load ptr, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tolen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fromlen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  ret ptr %31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gk_strstr_replace(ptr noundef %str, ptr noundef %pattern, ptr noundef %replacement, ptr noundef %options, ptr noundef %new_str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %pattern.addr = alloca ptr, align 8
  %replacement.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %new_str.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  %rc = alloca i32, align 4
  %flags = alloca i32, align 4
  %global = alloca i32, align 4
  %nmatches = alloca i32, align 4
  %len = alloca i64, align 8
  %rlen = alloca i64, align 8
  %nlen = alloca i64, align 8
  %offset = alloca i64, align 8
  %noffset = alloca i64, align 8
  %re = alloca %struct.re_pattern_buffer, align 8
  %matches = alloca [10 x %struct.regmatch_t], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  store ptr %pattern, ptr %pattern.addr, align 8, !tbaa !5
  store ptr %replacement, ptr %replacement.addr, align 8, !tbaa !5
  store ptr %options, ptr %options.addr, align 8, !tbaa !5
  store ptr %new_str, ptr %new_str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %global) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmatches) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rlen) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nlen) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %noffset) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr %re) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr %matches) #7
  store i32 1, ptr %flags, align 4, !tbaa !15
  %0 = load ptr, ptr %options.addr, align 8, !tbaa !5
  %call = call ptr @strchr(ptr noundef %0, i32 noundef 105) #8
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %flags, align 4, !tbaa !15
  %or = or i32 %1, 2
  store i32 %or, ptr %flags, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %options.addr, align 8, !tbaa !5
  %call1 = call ptr @strchr(ptr noundef %2, i32 noundef 103) #8
  %cmp2 = icmp ne ptr %call1, null
  %3 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 1, i32 0
  store i32 %cond, ptr %global, align 4, !tbaa !15
  %4 = load ptr, ptr %pattern.addr, align 8, !tbaa !5
  %5 = load i32, ptr %flags, align 4, !tbaa !15
  %call3 = call i32 @regcomp(ptr noundef %re, ptr noundef %4, i32 noundef %5)
  store i32 %call3, ptr %rc, align 4, !tbaa !15
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %6 = load i32, ptr %rc, align 4, !tbaa !15
  %call6 = call i64 @regerror(i32 noundef %6, ptr noundef %re, ptr noundef null, i64 noundef 0)
  store i64 %call6, ptr %len, align 8, !tbaa !9
  %7 = load i64, ptr %len, align 8, !tbaa !9
  %call7 = call ptr @gk_cmalloc(i64 noundef %7, ptr noundef @.str)
  %8 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call7, ptr %8, align 8, !tbaa !5
  %9 = load i32, ptr %rc, align 4, !tbaa !15
  %10 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load i64, ptr %len, align 8, !tbaa !9
  %call8 = call i64 @regerror(i32 noundef %9, ptr noundef %re, ptr noundef %11, i64 noundef %12)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %13 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %call10 = call i64 @strlen(ptr noundef %13) #8
  store i64 %call10, ptr %len, align 8, !tbaa !9
  %14 = load i64, ptr %len, align 8, !tbaa !9
  %mul = mul i64 2, %14
  store i64 %mul, ptr %nlen, align 8, !tbaa !9
  store i64 0, ptr %noffset, align 8, !tbaa !9
  %15 = load i64, ptr %nlen, align 8, !tbaa !9
  %add = add i64 %15, 1
  %call11 = call ptr @gk_cmalloc(i64 noundef %add, ptr noundef @.str)
  %16 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call11, ptr %16, align 8, !tbaa !5
  %17 = load ptr, ptr %replacement.addr, align 8, !tbaa !5
  %call12 = call i64 @strlen(ptr noundef %17) #8
  store i64 %call12, ptr %rlen, align 8, !tbaa !9
  store i64 0, ptr %offset, align 8, !tbaa !9
  store i32 0, ptr %nmatches, align 4, !tbaa !15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end9
  %18 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %19 = load i64, ptr %offset, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 %19
  %arraydecay = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 0
  %call13 = call i32 @regexec(ptr noundef %re, ptr noundef %add.ptr, i64 noundef 10, ptr noundef %arraydecay, i32 noundef 0)
  store i32 %call13, ptr %rc, align 4, !tbaa !15
  %20 = load i32, ptr %rc, align 4, !tbaa !15
  %cmp14 = icmp eq i32 %20, 12
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.body
  %21 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  call void (ptr, ...) @gk_free(ptr noundef %21, ptr noundef null)
  %call16 = call ptr @gk_strdup(ptr noundef @.str.1)
  %22 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call16, ptr %22, align 8, !tbaa !5
  call void @regfree(ptr noundef %re)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %do.body
  %23 = load i32, ptr %rc, align 4, !tbaa !15
  %cmp17 = icmp eq i32 %23, 1
  br i1 %cmp17, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.else
  %24 = load i64, ptr %nlen, align 8, !tbaa !9
  %25 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub = sub i64 %24, %25
  %26 = load i64, ptr %len, align 8, !tbaa !9
  %27 = load i64, ptr %offset, align 8, !tbaa !9
  %sub19 = sub i64 %26, %27
  %cmp20 = icmp ult i64 %sub, %sub19
  br i1 %cmp20, label %if.then21, label %if.end29

if.then21:                                        ; preds = %if.then18
  %28 = load i64, ptr %len, align 8, !tbaa !9
  %29 = load i64, ptr %offset, align 8, !tbaa !9
  %sub22 = sub i64 %28, %29
  %30 = load i64, ptr %nlen, align 8, !tbaa !9
  %31 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub23 = sub i64 %30, %31
  %sub24 = sub i64 %sub22, %sub23
  %32 = load i64, ptr %nlen, align 8, !tbaa !9
  %add25 = add i64 %32, %sub24
  store i64 %add25, ptr %nlen, align 8, !tbaa !9
  %33 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = load i64, ptr %nlen, align 8, !tbaa !9
  %add26 = add i64 %35, 1
  %mul27 = mul i64 %add26, 1
  %call28 = call ptr @gk_realloc(ptr noundef %34, i64 noundef %mul27, ptr noundef @.str)
  %36 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call28, ptr %36, align 8, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.then18
  %37 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i64, ptr %noffset, align 8, !tbaa !9
  %add.ptr30 = getelementptr inbounds i8, ptr %38, i64 %39
  %40 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %41 = load i64, ptr %offset, align 8, !tbaa !9
  %add.ptr31 = getelementptr inbounds i8, ptr %40, i64 %41
  %call32 = call ptr @strcpy(ptr noundef %add.ptr30, ptr noundef %add.ptr31) #7
  %42 = load i64, ptr %len, align 8, !tbaa !9
  %43 = load i64, ptr %offset, align 8, !tbaa !9
  %sub33 = sub i64 %42, %43
  %44 = load i64, ptr %noffset, align 8, !tbaa !9
  %add34 = add i64 %44, %sub33
  store i64 %add34, ptr %noffset, align 8, !tbaa !9
  br label %do.end

if.else35:                                        ; preds = %if.else
  %45 = load i32, ptr %nmatches, align 4, !tbaa !15
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %nmatches, align 4, !tbaa !15
  %arrayidx = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 0
  %rm_so = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx, i32 0, i32 0
  %46 = load i32, ptr %rm_so, align 16, !tbaa !17
  %cmp36 = icmp sgt i32 %46, 0
  br i1 %cmp36, label %if.then37, label %if.end64

if.then37:                                        ; preds = %if.else35
  %47 = load i64, ptr %nlen, align 8, !tbaa !9
  %48 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub38 = sub i64 %47, %48
  %arrayidx39 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 0
  %rm_so40 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx39, i32 0, i32 0
  %49 = load i32, ptr %rm_so40, align 16, !tbaa !17
  %conv = sext i32 %49 to i64
  %cmp41 = icmp ult i64 %sub38, %conv
  br i1 %cmp41, label %if.then43, label %if.end53

if.then43:                                        ; preds = %if.then37
  %arrayidx44 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 0
  %rm_so45 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx44, i32 0, i32 0
  %50 = load i32, ptr %rm_so45, align 16, !tbaa !17
  %conv46 = sext i32 %50 to i64
  %51 = load i64, ptr %nlen, align 8, !tbaa !9
  %52 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub47 = sub i64 %51, %52
  %sub48 = sub i64 %conv46, %sub47
  %53 = load i64, ptr %nlen, align 8, !tbaa !9
  %add49 = add i64 %53, %sub48
  store i64 %add49, ptr %nlen, align 8, !tbaa !9
  %54 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = load i64, ptr %nlen, align 8, !tbaa !9
  %add50 = add i64 %56, 1
  %mul51 = mul i64 %add50, 1
  %call52 = call ptr @gk_realloc(ptr noundef %55, i64 noundef %mul51, ptr noundef @.str)
  %57 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call52, ptr %57, align 8, !tbaa !5
  br label %if.end53

if.end53:                                         ; preds = %if.then43, %if.then37
  %58 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = load i64, ptr %noffset, align 8, !tbaa !9
  %add.ptr54 = getelementptr inbounds i8, ptr %59, i64 %60
  %61 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %62 = load i64, ptr %offset, align 8, !tbaa !9
  %add.ptr55 = getelementptr inbounds i8, ptr %61, i64 %62
  %arrayidx56 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 0
  %rm_so57 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx56, i32 0, i32 0
  %63 = load i32, ptr %rm_so57, align 16, !tbaa !17
  %conv58 = sext i32 %63 to i64
  %call59 = call ptr @strncpy(ptr noundef %add.ptr54, ptr noundef %add.ptr55, i64 noundef %conv58) #7
  %arrayidx60 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 0
  %rm_so61 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx60, i32 0, i32 0
  %64 = load i32, ptr %rm_so61, align 16, !tbaa !17
  %conv62 = sext i32 %64 to i64
  %65 = load i64, ptr %noffset, align 8, !tbaa !9
  %add63 = add i64 %65, %conv62
  store i64 %add63, ptr %noffset, align 8, !tbaa !9
  br label %if.end64

if.end64:                                         ; preds = %if.end53, %if.else35
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end64
  %66 = load i64, ptr %i, align 8, !tbaa !9
  %67 = load i64, ptr %rlen, align 8, !tbaa !9
  %cmp65 = icmp ult i64 %66, %67
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load ptr, ptr %replacement.addr, align 8, !tbaa !5
  %69 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx67 = getelementptr inbounds i8, ptr %68, i64 %69
  %70 = load i8, ptr %arrayidx67, align 1, !tbaa !11
  %conv68 = sext i8 %70 to i32
  switch i32 %conv68, label %sw.default [
    i32 92, label %sw.bb
    i32 36, label %sw.bb90
  ]

sw.bb:                                            ; preds = %for.body
  %71 = load i64, ptr %i, align 8, !tbaa !9
  %add69 = add nsw i64 %71, 1
  %72 = load i64, ptr %rlen, align 8, !tbaa !9
  %cmp70 = icmp ult i64 %add69, %72
  br i1 %cmp70, label %if.then72, label %if.else87

if.then72:                                        ; preds = %sw.bb
  %73 = load i64, ptr %nlen, align 8, !tbaa !9
  %74 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub73 = sub i64 %73, %74
  %cmp74 = icmp ult i64 %sub73, 1
  br i1 %cmp74, label %if.then76, label %if.end82

if.then76:                                        ; preds = %if.then72
  %75 = load i64, ptr %nlen, align 8, !tbaa !9
  %add77 = add i64 %75, 1
  %76 = load i64, ptr %nlen, align 8, !tbaa !9
  %add78 = add i64 %76, %add77
  store i64 %add78, ptr %nlen, align 8, !tbaa !9
  %77 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = load i64, ptr %nlen, align 8, !tbaa !9
  %add79 = add i64 %79, 1
  %mul80 = mul i64 %add79, 1
  %call81 = call ptr @gk_realloc(ptr noundef %78, i64 noundef %mul80, ptr noundef @.str)
  %80 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call81, ptr %80, align 8, !tbaa !5
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %if.then72
  %81 = load ptr, ptr %replacement.addr, align 8, !tbaa !5
  %82 = load i64, ptr %i, align 8, !tbaa !9
  %inc83 = add nsw i64 %82, 1
  store i64 %inc83, ptr %i, align 8, !tbaa !9
  %arrayidx84 = getelementptr inbounds i8, ptr %81, i64 %inc83
  %83 = load i8, ptr %arrayidx84, align 1, !tbaa !11
  %84 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %85 = load i64, ptr %noffset, align 8, !tbaa !9
  %inc85 = add i64 %85, 1
  store i64 %inc85, ptr %noffset, align 8, !tbaa !9
  %arrayidx86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %86 = load ptr, ptr %arrayidx86, align 8, !tbaa !5
  store i8 %83, ptr %86, align 1, !tbaa !11
  br label %if.end89

if.else87:                                        ; preds = %sw.bb
  %87 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  call void (ptr, ...) @gk_free(ptr noundef %87, ptr noundef null)
  %call88 = call ptr @gk_strdup(ptr noundef @.str.2)
  %88 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call88, ptr %88, align 8, !tbaa !5
  call void @regfree(ptr noundef %re)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %if.end82
  br label %sw.epilog

sw.bb90:                                          ; preds = %for.body
  %89 = load i64, ptr %i, align 8, !tbaa !9
  %add91 = add nsw i64 %89, 1
  %90 = load i64, ptr %rlen, align 8, !tbaa !9
  %cmp92 = icmp ult i64 %add91, %90
  br i1 %cmp92, label %if.then94, label %if.else150

if.then94:                                        ; preds = %sw.bb90
  %91 = load ptr, ptr %replacement.addr, align 8, !tbaa !5
  %92 = load i64, ptr %i, align 8, !tbaa !9
  %inc95 = add nsw i64 %92, 1
  store i64 %inc95, ptr %i, align 8, !tbaa !9
  %arrayidx96 = getelementptr inbounds i8, ptr %91, i64 %inc95
  %93 = load i8, ptr %arrayidx96, align 1, !tbaa !11
  %conv97 = sext i8 %93 to i32
  %sub98 = sub nsw i32 %conv97, 48
  store i32 %sub98, ptr %j, align 4, !tbaa !15
  %94 = load i32, ptr %j, align 4, !tbaa !15
  %cmp99 = icmp slt i32 %94, 0
  br i1 %cmp99, label %if.then103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then94
  %95 = load i32, ptr %j, align 4, !tbaa !15
  %cmp101 = icmp sgt i32 %95, 9
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %lor.lhs.false, %if.then94
  %96 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  call void (ptr, ...) @gk_free(ptr noundef %96, ptr noundef null)
  %call104 = call ptr @gk_strdup(ptr noundef @.str.3)
  %97 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call104, ptr %97, align 8, !tbaa !5
  call void @regfree(ptr noundef %re)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %lor.lhs.false
  %98 = load i64, ptr %nlen, align 8, !tbaa !9
  %99 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub106 = sub i64 %98, %99
  %100 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom = sext i32 %100 to i64
  %arrayidx107 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom
  %rm_eo = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx107, i32 0, i32 1
  %101 = load i32, ptr %rm_eo, align 4, !tbaa !19
  %102 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom108 = sext i32 %102 to i64
  %arrayidx109 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom108
  %rm_so110 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx109, i32 0, i32 0
  %103 = load i32, ptr %rm_so110, align 8, !tbaa !17
  %sub111 = sub nsw i32 %101, %103
  %conv112 = sext i32 %sub111 to i64
  %cmp113 = icmp ult i64 %sub106, %conv112
  br i1 %cmp113, label %if.then115, label %if.end129

if.then115:                                       ; preds = %if.end105
  %104 = load i64, ptr %nlen, align 8, !tbaa !9
  %105 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom116 = sext i32 %105 to i64
  %arrayidx117 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom116
  %rm_eo118 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx117, i32 0, i32 1
  %106 = load i32, ptr %rm_eo118, align 4, !tbaa !19
  %107 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom119 = sext i32 %107 to i64
  %arrayidx120 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom119
  %rm_so121 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx120, i32 0, i32 0
  %108 = load i32, ptr %rm_so121, align 8, !tbaa !17
  %sub122 = sub nsw i32 %106, %108
  %conv123 = sext i32 %sub122 to i64
  %add124 = add i64 %104, %conv123
  %109 = load i64, ptr %nlen, align 8, !tbaa !9
  %add125 = add i64 %109, %add124
  store i64 %add125, ptr %nlen, align 8, !tbaa !9
  %110 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = load i64, ptr %nlen, align 8, !tbaa !9
  %add126 = add i64 %112, 1
  %mul127 = mul i64 %add126, 1
  %call128 = call ptr @gk_realloc(ptr noundef %111, i64 noundef %mul127, ptr noundef @.str)
  %113 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call128, ptr %113, align 8, !tbaa !5
  br label %if.end129

if.end129:                                        ; preds = %if.then115, %if.end105
  %114 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = load i64, ptr %noffset, align 8, !tbaa !9
  %add.ptr130 = getelementptr inbounds i8, ptr %115, i64 %116
  %117 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %118 = load i64, ptr %offset, align 8, !tbaa !9
  %add.ptr131 = getelementptr inbounds i8, ptr %117, i64 %118
  %119 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom132 = sext i32 %119 to i64
  %arrayidx133 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom132
  %rm_so134 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx133, i32 0, i32 0
  %120 = load i32, ptr %rm_so134, align 8, !tbaa !17
  %idx.ext = sext i32 %120 to i64
  %add.ptr135 = getelementptr inbounds i8, ptr %add.ptr131, i64 %idx.ext
  %121 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom136 = sext i32 %121 to i64
  %arrayidx137 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom136
  %rm_eo138 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx137, i32 0, i32 1
  %122 = load i32, ptr %rm_eo138, align 4, !tbaa !19
  %conv139 = sext i32 %122 to i64
  %call140 = call ptr @strncpy(ptr noundef %add.ptr130, ptr noundef %add.ptr135, i64 noundef %conv139) #7
  %123 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom141 = sext i32 %123 to i64
  %arrayidx142 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom141
  %rm_eo143 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx142, i32 0, i32 1
  %124 = load i32, ptr %rm_eo143, align 4, !tbaa !19
  %125 = load i32, ptr %j, align 4, !tbaa !15
  %idxprom144 = sext i32 %125 to i64
  %arrayidx145 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 %idxprom144
  %rm_so146 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx145, i32 0, i32 0
  %126 = load i32, ptr %rm_so146, align 8, !tbaa !17
  %sub147 = sub nsw i32 %124, %126
  %conv148 = sext i32 %sub147 to i64
  %127 = load i64, ptr %noffset, align 8, !tbaa !9
  %add149 = add i64 %127, %conv148
  store i64 %add149, ptr %noffset, align 8, !tbaa !9
  br label %if.end152

if.else150:                                       ; preds = %sw.bb90
  %128 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  call void (ptr, ...) @gk_free(ptr noundef %128, ptr noundef null)
  %call151 = call ptr @gk_strdup(ptr noundef @.str.4)
  %129 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call151, ptr %129, align 8, !tbaa !5
  call void @regfree(ptr noundef %re)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end152:                                        ; preds = %if.end129
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %130 = load i64, ptr %nlen, align 8, !tbaa !9
  %131 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub153 = sub i64 %130, %131
  %cmp154 = icmp ult i64 %sub153, 1
  br i1 %cmp154, label %if.then156, label %if.end162

if.then156:                                       ; preds = %sw.default
  %132 = load i64, ptr %nlen, align 8, !tbaa !9
  %add157 = add i64 %132, 1
  %133 = load i64, ptr %nlen, align 8, !tbaa !9
  %add158 = add i64 %133, %add157
  store i64 %add158, ptr %nlen, align 8, !tbaa !9
  %134 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = load i64, ptr %nlen, align 8, !tbaa !9
  %add159 = add i64 %136, 1
  %mul160 = mul i64 %add159, 1
  %call161 = call ptr @gk_realloc(ptr noundef %135, i64 noundef %mul160, ptr noundef @.str)
  %137 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call161, ptr %137, align 8, !tbaa !5
  br label %if.end162

if.end162:                                        ; preds = %if.then156, %sw.default
  %138 = load ptr, ptr %replacement.addr, align 8, !tbaa !5
  %139 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx163 = getelementptr inbounds i8, ptr %138, i64 %139
  %140 = load i8, ptr %arrayidx163, align 1, !tbaa !11
  %141 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = load i64, ptr %noffset, align 8, !tbaa !9
  %inc164 = add i64 %143, 1
  store i64 %inc164, ptr %noffset, align 8, !tbaa !9
  %arrayidx165 = getelementptr inbounds i8, ptr %142, i64 %143
  store i8 %140, ptr %arrayidx165, align 1, !tbaa !11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end162, %if.end152, %if.end89
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %144 = load i64, ptr %i, align 8, !tbaa !9
  %inc166 = add nsw i64 %144, 1
  store i64 %inc166, ptr %i, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %arrayidx167 = getelementptr inbounds [10 x %struct.regmatch_t], ptr %matches, i64 0, i64 0
  %rm_eo168 = getelementptr inbounds %struct.regmatch_t, ptr %arrayidx167, i32 0, i32 1
  %145 = load i32, ptr %rm_eo168, align 4, !tbaa !19
  %conv169 = sext i32 %145 to i64
  %146 = load i64, ptr %offset, align 8, !tbaa !9
  %add170 = add i64 %146, %conv169
  store i64 %add170, ptr %offset, align 8, !tbaa !9
  %147 = load i32, ptr %global, align 4, !tbaa !15
  %tobool = icmp ne i32 %147, 0
  br i1 %tobool, label %if.end190, label %if.then171

if.then171:                                       ; preds = %for.end
  %148 = load i64, ptr %nlen, align 8, !tbaa !9
  %149 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub172 = sub i64 %148, %149
  %150 = load i64, ptr %len, align 8, !tbaa !9
  %151 = load i64, ptr %offset, align 8, !tbaa !9
  %sub173 = sub i64 %150, %151
  %cmp174 = icmp ult i64 %sub172, %sub173
  br i1 %cmp174, label %if.then176, label %if.end184

if.then176:                                       ; preds = %if.then171
  %152 = load i64, ptr %len, align 8, !tbaa !9
  %153 = load i64, ptr %offset, align 8, !tbaa !9
  %sub177 = sub i64 %152, %153
  %154 = load i64, ptr %nlen, align 8, !tbaa !9
  %155 = load i64, ptr %noffset, align 8, !tbaa !9
  %sub178 = sub i64 %154, %155
  %sub179 = sub i64 %sub177, %sub178
  %156 = load i64, ptr %nlen, align 8, !tbaa !9
  %add180 = add i64 %156, %sub179
  store i64 %add180, ptr %nlen, align 8, !tbaa !9
  %157 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  %159 = load i64, ptr %nlen, align 8, !tbaa !9
  %add181 = add i64 %159, 1
  %mul182 = mul i64 %add181, 1
  %call183 = call ptr @gk_realloc(ptr noundef %158, i64 noundef %mul182, ptr noundef @.str)
  %160 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  store ptr %call183, ptr %160, align 8, !tbaa !5
  br label %if.end184

if.end184:                                        ; preds = %if.then176, %if.then171
  %161 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = load i64, ptr %noffset, align 8, !tbaa !9
  %add.ptr185 = getelementptr inbounds i8, ptr %162, i64 %163
  %164 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %165 = load i64, ptr %offset, align 8, !tbaa !9
  %add.ptr186 = getelementptr inbounds i8, ptr %164, i64 %165
  %call187 = call ptr @strcpy(ptr noundef %add.ptr185, ptr noundef %add.ptr186) #7
  %166 = load i64, ptr %len, align 8, !tbaa !9
  %167 = load i64, ptr %offset, align 8, !tbaa !9
  %sub188 = sub i64 %166, %167
  %168 = load i64, ptr %noffset, align 8, !tbaa !9
  %add189 = add i64 %168, %sub188
  store i64 %add189, ptr %noffset, align 8, !tbaa !9
  br label %if.end190

if.end190:                                        ; preds = %if.end184, %for.end
  br label %if.end191

if.end191:                                        ; preds = %if.end190
  br label %if.end192

if.end192:                                        ; preds = %if.end191
  br label %do.cond

do.cond:                                          ; preds = %if.end192
  %169 = load i32, ptr %global, align 4, !tbaa !15
  %tobool193 = icmp ne i32 %169, 0
  br i1 %tobool193, label %do.body, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond, %if.end29
  %170 = load ptr, ptr %new_str.addr, align 8, !tbaa !5
  %171 = load ptr, ptr %170, align 8, !tbaa !5
  %172 = load i64, ptr %noffset, align 8, !tbaa !9
  %arrayidx194 = getelementptr inbounds i8, ptr %171, i64 %172
  store i8 0, ptr %arrayidx194, align 1, !tbaa !11
  call void @regfree(ptr noundef %re)
  %173 = load i32, ptr %nmatches, align 4, !tbaa !15
  %add195 = add nsw i32 %173, 1
  store i32 %add195, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else150, %if.then103, %if.else87, %if.then15, %if.then5
  call void @llvm.lifetime.end.p0(i64 80, ptr %matches) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %re) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %noffset) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nlen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %rlen) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmatches) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %global) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  %174 = load i32, ptr %retval, align 4
  ret i32 %174
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) #3

declare i64 @regerror(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare ptr @gk_cmalloc(i64 noundef, ptr noundef) #3

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

declare void @gk_free(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_strdup(ptr noundef %orgstr) #0 {
entry:
  %orgstr.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %str = alloca ptr, align 8
  store ptr %orgstr, ptr %orgstr.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #7
  store ptr null, ptr %str, align 8, !tbaa !5
  %0 = load ptr, ptr %orgstr.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %orgstr.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %1) #8
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr %len, align 4, !tbaa !15
  %2 = load i32, ptr %len, align 4, !tbaa !15
  %conv1 = sext i32 %2 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call ptr @gk_malloc(i64 noundef %mul, ptr noundef @.str.5)
  store ptr %call2, ptr %str, align 8, !tbaa !5
  %3 = load ptr, ptr %str, align 8, !tbaa !5
  %4 = load ptr, ptr %orgstr.addr, align 8, !tbaa !5
  %call3 = call ptr @strcpy(ptr noundef %3, ptr noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %str, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #7
  ret ptr %5
}

declare void @regfree(ptr noundef) #3

declare ptr @gk_realloc(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_strtprune(ptr noundef %str, ptr noundef %rmlist) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %rmlist.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  store ptr %rmlist, ptr %rmlist.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7
  %0 = load ptr, ptr %rmlist.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #8
  store i64 %call, ptr %len, align 8, !tbaa !9
  %1 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(ptr noundef %1) #8
  %sub = sub i64 %call1, 1
  store i64 %sub, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !9
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i64, ptr %j, align 8, !tbaa !9
  %4 = load i64, ptr %len, align 8, !tbaa !9
  %cmp3 = icmp ult i64 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %6 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %6
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %7 to i32
  %8 = load ptr, ptr %rmlist.addr, align 8, !tbaa !5
  %9 = load i64, ptr %j, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %9
  %10 = load i8, ptr %arrayidx5, align 1, !tbaa !11
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, ptr %j, align 8, !tbaa !9
  %inc = add nsw i64 %11, 1
  store i64 %inc, ptr %j, align 8, !tbaa !9
  br label %for.cond2, !llvm.loop !22

for.end:                                          ; preds = %if.then, %for.cond2
  %12 = load i64, ptr %j, align 8, !tbaa !9
  %13 = load i64, ptr %len, align 8, !tbaa !9
  %cmp9 = icmp eq i64 %12, %13
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  br label %for.end14

if.end12:                                         ; preds = %for.end
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %14 = load i64, ptr %i, align 8, !tbaa !9
  %dec = add nsw i64 %14, -1
  store i64 %dec, ptr %i, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !23

for.end14:                                        ; preds = %if.then11, %for.cond
  %15 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %16 = load i64, ptr %i, align 8, !tbaa !9
  %add = add nsw i64 %16, 1
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 %add
  store i8 0, ptr %arrayidx15, align 1, !tbaa !11
  %17 = load ptr, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_strhprune(ptr noundef %str, ptr noundef %rmlist) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %rmlist.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %len = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  store ptr %rmlist, ptr %rmlist.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7
  %0 = load ptr, ptr %rmlist.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #8
  store i64 %call, ptr %len, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %1 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %2 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %2
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %j, align 8, !tbaa !9
  %5 = load i64, ptr %len, align 8, !tbaa !9
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %7 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i8, ptr %arrayidx3, align 1, !tbaa !11
  %conv = sext i8 %8 to i32
  %9 = load ptr, ptr %rmlist.addr, align 8, !tbaa !5
  %10 = load i64, ptr %j, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds i8, ptr %9, i64 %10
  %11 = load i8, ptr %arrayidx4, align 1, !tbaa !11
  %conv5 = sext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body2
  br label %for.end

if.end:                                           ; preds = %for.body2
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, ptr %j, align 8, !tbaa !9
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %j, align 8, !tbaa !9
  br label %for.cond1, !llvm.loop !24

for.end:                                          ; preds = %if.then, %for.cond1
  %13 = load i64, ptr %j, align 8, !tbaa !9
  %14 = load i64, ptr %len, align 8, !tbaa !9
  %cmp8 = icmp eq i64 %13, %14
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  br label %for.end14

if.end11:                                         ; preds = %for.end
  br label %for.inc12

for.inc12:                                        ; preds = %if.end11
  %15 = load i64, ptr %i, align 8, !tbaa !9
  %inc13 = add nsw i64 %15, 1
  store i64 %inc13, ptr %i, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !25

for.end14:                                        ; preds = %if.then10, %for.cond
  %16 = load i64, ptr %i, align 8, !tbaa !9
  %cmp15 = icmp sgt i64 %16, 0
  br i1 %cmp15, label %if.then17, label %if.end29

if.then17:                                        ; preds = %for.end14
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc24, %if.then17
  %17 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %18 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 %18
  %19 = load i8, ptr %arrayidx19, align 1, !tbaa !11
  %tobool20 = icmp ne i8 %19, 0
  br i1 %tobool20, label %for.body21, label %for.end27

for.body21:                                       ; preds = %for.cond18
  %20 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %21 = load i64, ptr %i, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds i8, ptr %20, i64 %21
  %22 = load i8, ptr %arrayidx22, align 1, !tbaa !11
  %23 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %24 = load i64, ptr %j, align 8, !tbaa !9
  %arrayidx23 = getelementptr inbounds i8, ptr %23, i64 %24
  store i8 %22, ptr %arrayidx23, align 1, !tbaa !11
  br label %for.inc24

for.inc24:                                        ; preds = %for.body21
  %25 = load i64, ptr %i, align 8, !tbaa !9
  %inc25 = add nsw i64 %25, 1
  store i64 %inc25, ptr %i, align 8, !tbaa !9
  %26 = load i64, ptr %j, align 8, !tbaa !9
  %inc26 = add nsw i64 %26, 1
  store i64 %inc26, ptr %j, align 8, !tbaa !9
  br label %for.cond18, !llvm.loop !26

for.end27:                                        ; preds = %for.cond18
  %27 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %28 = load i64, ptr %j, align 8, !tbaa !9
  %arrayidx28 = getelementptr inbounds i8, ptr %27, i64 %28
  store i8 0, ptr %arrayidx28, align 1, !tbaa !11
  br label %if.end29

if.end29:                                         ; preds = %for.end27, %for.end14
  %29 = load ptr, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_strtoupper(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %1 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #7
  %call = call ptr @__ctype_toupper_loc() #9
  %3 = load ptr, ptr %call, align 8, !tbaa !5
  %4 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %idxprom2
  %6 = load i8, ptr %arrayidx3, align 1, !tbaa !11
  %conv4 = sext i8 %6 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %3, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !15
  store i32 %7, ptr %__res, align 4, !tbaa !15
  %8 = load i32, ptr %__res, align 4, !tbaa !15
  store i32 %8, ptr %tmp, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #7
  %9 = load i32, ptr %tmp, align 4, !tbaa !15
  %conv7 = trunc i32 %9 to i8
  %10 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1, !tbaa !11
  %12 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret ptr %13
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() #5

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_strtolower(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %1 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #7
  %call = call ptr @__ctype_tolower_loc() #9
  %3 = load ptr, ptr %call, align 8, !tbaa !5
  %4 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %idxprom2
  %6 = load i8, ptr %arrayidx3, align 1, !tbaa !11
  %conv4 = sext i8 %6 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %3, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !15
  store i32 %7, ptr %__res, align 4, !tbaa !15
  %8 = load i32, ptr %__res, align 4, !tbaa !15
  store i32 %8, ptr %tmp, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #7
  %9 = load i32, ptr %tmp, align 4, !tbaa !15
  %conv7 = trunc i32 %9 to i8
  %10 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1, !tbaa !11
  %12 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret ptr %13
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() #5

declare ptr @gk_malloc(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gk_strcasecmp(ptr noundef %s1, ptr noundef %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res10 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8, !tbaa !5
  store ptr %s2, ptr %s2.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !15
  %0 = load ptr, ptr %s1.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #8
  %1 = load ptr, ptr %s2.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(ptr noundef %1) #8
  %cmp = icmp ne i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %if.end
  %2 = load ptr, ptr %s1.addr, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv = sext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #7
  %call4 = call ptr @__ctype_tolower_loc() #9
  %5 = load ptr, ptr %call4, align 8, !tbaa !5
  %6 = load ptr, ptr %s1.addr, align 8, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 %idxprom5
  %8 = load i8, ptr %arrayidx6, align 1, !tbaa !11
  %conv7 = sext i8 %8 to i32
  %idxprom8 = sext i32 %conv7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %5, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !15
  store i32 %9, ptr %__res, align 4, !tbaa !15
  %10 = load i32, ptr %__res, align 4, !tbaa !15
  store i32 %10, ptr %tmp, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #7
  %11 = load i32, ptr %tmp, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res10) #7
  %call11 = call ptr @__ctype_tolower_loc() #9
  %12 = load ptr, ptr %call11, align 8, !tbaa !5
  %13 = load ptr, ptr %s2.addr, align 8, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 %idxprom12
  %15 = load i8, ptr %arrayidx13, align 1, !tbaa !11
  %conv14 = sext i8 %15 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %12, i64 %idxprom15
  %16 = load i32, ptr %arrayidx16, align 4, !tbaa !15
  store i32 %16, ptr %__res10, align 4, !tbaa !15
  %17 = load i32, ptr %__res10, align 4, !tbaa !15
  store i32 %17, ptr %tmp17, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res10) #7
  %18 = load i32, ptr %tmp17, align 4, !tbaa !15
  %cmp18 = icmp ne i32 %11, %18
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %while.body
  %19 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gk_strrcmp(ptr noundef %s1, ptr noundef %s2) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8, !tbaa !5
  store ptr %s2, ptr %s2.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #7
  %0 = load ptr, ptr %s1.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #8
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %i1, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #7
  %1 = load ptr, ptr %s2.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(ptr noundef %1) #8
  %sub2 = sub i64 %call1, 1
  %conv3 = trunc i64 %sub2 to i32
  store i32 %conv3, ptr %i2, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %i1, align 4, !tbaa !15
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, ptr %i2, align 4, !tbaa !15
  %cmp5 = icmp sge i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %s1.addr, align 8, !tbaa !5
  %6 = load i32, ptr %i1, align 4, !tbaa !15
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %conv7 = sext i8 %7 to i32
  %8 = load ptr, ptr %s2.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i2, align 4, !tbaa !15
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8
  %10 = load i8, ptr %arrayidx9, align 1, !tbaa !11
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv7, %conv10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %s1.addr, align 8, !tbaa !5
  %12 = load i32, ptr %i1, align 4, !tbaa !15
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 %idxprom13
  %13 = load i8, ptr %arrayidx14, align 1, !tbaa !11
  %conv15 = sext i8 %13 to i32
  %14 = load ptr, ptr %s2.addr, align 8, !tbaa !5
  %15 = load i32, ptr %i2, align 4, !tbaa !15
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 %idxprom16
  %16 = load i8, ptr %arrayidx17, align 1, !tbaa !11
  %conv18 = sext i8 %16 to i32
  %sub19 = sub nsw i32 %conv15, %conv18
  store i32 %sub19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %17 = load i32, ptr %i1, align 4, !tbaa !15
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %i1, align 4, !tbaa !15
  %18 = load i32, ptr %i2, align 4, !tbaa !15
  %dec20 = add nsw i32 %18, -1
  store i32 %dec20, ptr %i2, align 4, !tbaa !15
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %land.end
  %19 = load i32, ptr %i1, align 4, !tbaa !15
  %20 = load i32, ptr %i2, align 4, !tbaa !15
  %cmp21 = icmp slt i32 %19, %20
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %while.end
  %21 = load i32, ptr %i1, align 4, !tbaa !15
  %22 = load i32, ptr %i2, align 4, !tbaa !15
  %cmp25 = icmp sgt i32 %21, %22
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #7
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gk_time2str(i64 noundef %time) #0 {
entry:
  %retval = alloca ptr, align 8
  %time.addr = alloca i64, align 8
  %tm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %time, ptr %time.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tm) #7
  %call = call ptr @localtime(ptr noundef %time.addr) #7
  store ptr %call, ptr %tm, align 8, !tbaa !5
  %0 = load ptr, ptr %tm, align 8, !tbaa !5
  %call1 = call i64 @strftime(ptr noundef @gk_time2str.datestr, i64 noundef 128, ptr noundef @.str.6, ptr noundef %0) #7
  %cmp = icmp eq i64 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  store ptr @gk_time2str.datestr, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tm) #7
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #4

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @gk_str2time(ptr noundef %str) #0 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %time = alloca %struct.tm, align 8
  %rtime = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 56, ptr %time) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtime) #7
  call void @llvm.memset.p0.i64(ptr align 8 %time, i8 0, i64 56, i1 false)
  %0 = load ptr, ptr %str.addr, align 8, !tbaa !5
  %call = call ptr @strptime(ptr noundef %0, ptr noundef @.str.6, ptr noundef %time) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i64 @mktime(ptr noundef %time) #7
  store i64 %call1, ptr %rtime, align 8, !tbaa !9
  %1 = load i64, ptr %rtime, align 8, !tbaa !9
  %cmp2 = icmp slt i64 %1, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %2 = load i64, ptr %rtime, align 8, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %2, %cond.false ]
  store i64 %cond, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtime) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr %time) #7
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare ptr @strptime(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i64 @mktime(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gk_GetStringID(ptr noundef %strmap, ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %strmap.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %strmap, ptr %strmap.addr, align 8, !tbaa !5
  store ptr %key, ptr %key.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %strmap.addr, align 8, !tbaa !5
  %1 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.gk_StringMap_t, ptr %0, i64 %idxprom
  %name = getelementptr inbounds %struct.gk_StringMap_t, ptr %arrayidx, i32 0, i32 0
  %2 = load ptr, ptr %name, align 8, !tbaa !31
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %strmap.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.gk_StringMap_t, ptr %4, i64 %idxprom1
  %name3 = getelementptr inbounds %struct.gk_StringMap_t, ptr %arrayidx2, i32 0, i32 0
  %6 = load ptr, ptr %name3, align 8, !tbaa !31
  %call = call i32 @gk_strcasecmp(ptr noundef %3, ptr noundef %6)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %strmap.addr, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds %struct.gk_StringMap_t, ptr %7, i64 %idxprom5
  %id = getelementptr inbounds %struct.gk_StringMap_t, ptr %arrayidx6, i32 0, i32 1
  %9 = load i32, ptr %id, align 8, !tbaa !33
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !16, i64 0}
!18 = !{!"", !16, i64 0, !16, i64 4}
!19 = !{!18, !16, i64 4}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = !{!32, !6, i64 0}
!32 = !{!"gk_StringMap_t", !6, i64 0, !16, i64 8}
!33 = !{!32, !16, i64 8}
!34 = distinct !{!34, !13}

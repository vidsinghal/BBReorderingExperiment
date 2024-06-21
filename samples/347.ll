; ModuleID = 'samples/347.bc'
source_filename = "src/match/pck-count-nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtStackNodecount = type { i64, i64, i64, i64, i64, [256 x %struct.Nodecount_tag], ptr, ptr }
%struct.Nodecount_tag = type { i64, i64, i64, i64, i32, i8, i8 }
%struct.Mbtab = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"src/match/pck-count-nodes.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [43 x i8] c"on root:\0A %lu branching nodes\0A %lu leaves\0A\00", align 1, !dbg !7
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"parent->lower < parent->upper\00", align 1, !dbg !17
@__func__.visit_count_children = private unnamed_addr constant [21 x i8] c"visit_count_children\00", align 1, !dbg !22
@.str.4 = private unnamed_addr constant [34 x i8] c"rangesize <= (GtUword) numofchars\00", align 1, !dbg !28

; Function Attrs: nounwind uwtable
define void @gt_pck_count_nodes_dfs(ptr noundef %index, i64 noundef %totallength, i32 noundef %numofchars) #0 !dbg !47 {
entry:
  %index.addr = alloca ptr, align 8
  %totallength.addr = alloca i64, align 8
  %numofchars.addr = alloca i32, align 4
  %stack = alloca %struct.GtStackNodecount, align 8
  %root = alloca %struct.Nodecount_tag, align 8
  %current = alloca ptr, align 8
  %tmpmbtab = alloca ptr, align 8
  %rangeOccs = alloca ptr, align 8
  %resize = alloca i64, align 8
  %stackidx = alloca i64, align 8
  %sizeoftype = alloca i64, align 8
  %allocsize = alloca i64, align 8
  %stackidx43 = alloca i64, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !56, metadata !DIExpression()), !dbg !119
  store i64 %totallength, ptr %totallength.addr, align 8, !tbaa !120
  tail call void @llvm.dbg.declare(metadata ptr %totallength.addr, metadata !57, metadata !DIExpression()), !dbg !122
  store i32 %numofchars, ptr %numofchars.addr, align 4, !tbaa !123
  tail call void @llvm.dbg.declare(metadata ptr %numofchars.addr, metadata !58, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 10296, ptr %stack) #6, !dbg !126
  tail call void @llvm.dbg.declare(metadata ptr %stack, metadata !59, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 40, ptr %root) #6, !dbg !128
  tail call void @llvm.dbg.declare(metadata ptr %root, metadata !91, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 8, ptr %current) #6, !dbg !130
  tail call void @llvm.dbg.declare(metadata ptr %current, metadata !92, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpmbtab) #6, !dbg !132
  tail call void @llvm.dbg.declare(metadata ptr %tmpmbtab, metadata !93, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 8, ptr %rangeOccs) #6, !dbg !134
  tail call void @llvm.dbg.declare(metadata ptr %rangeOccs, metadata !100, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 8, ptr %resize) #6, !dbg !136
  tail call void @llvm.dbg.declare(metadata ptr %resize, metadata !102, metadata !DIExpression()), !dbg !137
  store i64 128, ptr %resize, align 8, !dbg !137, !tbaa !120
  %staticsize = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 3, !dbg !138
  store i64 256, ptr %staticsize, align 8, !dbg !138, !tbaa !139
  %0 = load i64, ptr %resize, align 8, !dbg !138, !tbaa !120
  %sizeincrement = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 4, !dbg !138
  store i64 %0, ptr %sizeincrement, align 8, !dbg !138, !tbaa !141
  %staticsize1 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 3, !dbg !138
  %1 = load i64, ptr %staticsize1, align 8, !dbg !138, !tbaa !139
  %allocated = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !138
  store i64 %1, ptr %allocated, align 8, !dbg !138, !tbaa !142
  %nextfree = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !138
  store i64 0, ptr %nextfree, align 8, !dbg !138, !tbaa !143
  %maxsize = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 1, !dbg !138
  store i64 0, ptr %maxsize, align 8, !dbg !138, !tbaa !144
  %staticspace = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 5, !dbg !138
  %arrayidx = getelementptr inbounds [256 x %struct.Nodecount_tag], ptr %staticspace, i64 0, i64 0, !dbg !138
  %space = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !138
  store ptr %arrayidx, ptr %space, align 8, !dbg !138, !tbaa !145
  %initialiseelement = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 7, !dbg !138
  store ptr null, ptr %initialiseelement, align 8, !dbg !138, !tbaa !146
  %initialiseelement2 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 7, !dbg !147
  %2 = load ptr, ptr %initialiseelement2, align 8, !dbg !147, !tbaa !146
  %cmp = icmp ne ptr %2, null, !dbg !147
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %stackidx) #6, !dbg !148
  tail call void @llvm.dbg.declare(metadata ptr %stackidx, metadata !103, metadata !DIExpression()), !dbg !148
  %initialiseelement3 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 7, !dbg !148
  store ptr null, ptr %initialiseelement3, align 8, !dbg !148, !tbaa !146
  store i64 0, ptr %stackidx, align 8, !dbg !149, !tbaa !120
  br label %for.cond, !dbg !149

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i64, ptr %stackidx, align 8, !dbg !151, !tbaa !120
  %staticsize4 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 3, !dbg !151
  %4 = load i64, ptr %staticsize4, align 8, !dbg !151, !tbaa !139
  %cmp5 = icmp ult i64 %3, %4, !dbg !151
  br i1 %cmp5, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %initialiseelement6 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 7, !dbg !153
  %5 = load ptr, ptr %initialiseelement6, align 8, !dbg !153, !tbaa !146
  %space7 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !153
  %6 = load ptr, ptr %space7, align 8, !dbg !153, !tbaa !145
  %7 = load i64, ptr %stackidx, align 8, !dbg !153, !tbaa !120
  %add.ptr = getelementptr inbounds %struct.Nodecount_tag, ptr %6, i64 %7, !dbg !153
  %call = call i32 %5(ptr noundef %add.ptr), !dbg !153
  br label %for.inc, !dbg !153

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %stackidx, align 8, !dbg !151, !tbaa !120
  %inc = add i64 %8, 1, !dbg !151
  store i64 %inc, ptr %stackidx, align 8, !dbg !151, !tbaa !120
  br label %for.cond, !dbg !151, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %stackidx) #6, !dbg !147
  br label %if.end, !dbg !148

if.end:                                           ; preds = %for.end, %entry
  %9 = load i32, ptr %numofchars.addr, align 4, !dbg !157, !tbaa !123
  %shl = shl i32 %9, 1, !dbg !157
  %conv = zext i32 %shl to i64, !dbg !157
  %mul = mul i64 8, %conv, !dbg !157
  %call8 = call ptr @gt_malloc_mem(i64 noundef %mul, ptr noundef @.str, i32 noundef 123), !dbg !157
  store ptr %call8, ptr %rangeOccs, align 8, !dbg !158, !tbaa !115
  %10 = load i32, ptr %numofchars.addr, align 4, !dbg !159, !tbaa !123
  %conv9 = zext i32 %10 to i64, !dbg !159
  %mul10 = mul i64 16, %conv9, !dbg !159
  %call11 = call ptr @gt_malloc_mem(i64 noundef %mul10, ptr noundef @.str, i32 noundef 124), !dbg !159
  store ptr %call11, ptr %tmpmbtab, align 8, !dbg !160, !tbaa !115
  %lower = getelementptr inbounds %struct.Nodecount_tag, ptr %root, i32 0, i32 2, !dbg !161
  store i64 0, ptr %lower, align 8, !dbg !162, !tbaa !163
  %11 = load i64, ptr %totallength.addr, align 8, !dbg !166, !tbaa !120
  %add = add i64 %11, 1, !dbg !167
  %upper = getelementptr inbounds %struct.Nodecount_tag, ptr %root, i32 0, i32 3, !dbg !168
  store i64 %add, ptr %upper, align 8, !dbg !169, !tbaa !170
  %leaves = getelementptr inbounds %struct.Nodecount_tag, ptr %root, i32 0, i32 0, !dbg !171
  store i64 0, ptr %leaves, align 8, !dbg !172, !tbaa !173
  %branching = getelementptr inbounds %struct.Nodecount_tag, ptr %root, i32 0, i32 1, !dbg !174
  store i64 1, ptr %branching, align 8, !dbg !175, !tbaa !176
  %parentOffset = getelementptr inbounds %struct.Nodecount_tag, ptr %root, i32 0, i32 4, !dbg !177
  store i32 0, ptr %parentOffset, align 8, !dbg !178, !tbaa !179
  %visited = getelementptr inbounds %struct.Nodecount_tag, ptr %root, i32 0, i32 5, !dbg !180
  store i8 0, ptr %visited, align 4, !dbg !181, !tbaa !182
  %on_branch = getelementptr inbounds %struct.Nodecount_tag, ptr %root, i32 0, i32 6, !dbg !183
  store i8 0, ptr %on_branch, align 1, !dbg !184, !tbaa !185
  %nextfree12 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !186
  %12 = load i64, ptr %nextfree12, align 8, !dbg !186, !tbaa !143
  %allocated13 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !186
  %13 = load i64, ptr %allocated13, align 8, !dbg !186, !tbaa !142
  %cmp14 = icmp eq i64 %12, %13, !dbg !186
  br i1 %cmp14, label %if.then16, label %if.end62, !dbg !187

if.then16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %sizeoftype) #6, !dbg !188
  tail call void @llvm.dbg.declare(metadata ptr %sizeoftype, metadata !106, metadata !DIExpression()), !dbg !188
  store i64 40, ptr %sizeoftype, align 8, !dbg !188, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocsize) #6, !dbg !188
  tail call void @llvm.dbg.declare(metadata ptr %allocsize, metadata !111, metadata !DIExpression()), !dbg !188
  %14 = load i64, ptr %sizeoftype, align 8, !dbg !188, !tbaa !120
  %allocated17 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !188
  %15 = load i64, ptr %allocated17, align 8, !dbg !188, !tbaa !142
  %sizeincrement18 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 4, !dbg !188
  %16 = load i64, ptr %sizeincrement18, align 8, !dbg !188, !tbaa !141
  %add19 = add i64 %15, %16, !dbg !188
  %mul20 = mul i64 %14, %add19, !dbg !188
  store i64 %mul20, ptr %allocsize, align 8, !dbg !188, !tbaa !120
  %allocated21 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !188
  %17 = load i64, ptr %allocated21, align 8, !dbg !188, !tbaa !142
  %staticsize22 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 3, !dbg !188
  %18 = load i64, ptr %staticsize22, align 8, !dbg !188, !tbaa !139
  %cmp23 = icmp eq i64 %17, %18, !dbg !188
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !188

cond.true:                                        ; preds = %if.then16
  br label %cond.end, !dbg !188

cond.false:                                       ; preds = %if.then16
  %space25 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !188
  %19 = load ptr, ptr %space25, align 8, !dbg !188, !tbaa !145
  br label %cond.end, !dbg !188

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %19, %cond.false ], !dbg !188
  %20 = load i64, ptr %allocsize, align 8, !dbg !188, !tbaa !120
  %call26 = call ptr @gt_realloc_mem(ptr noundef %cond, i64 noundef %20, ptr noundef @.str, i32 noundef 134), !dbg !188
  %space27 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !188
  store ptr %call26, ptr %space27, align 8, !dbg !188, !tbaa !145
  %allocated28 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !189
  %21 = load i64, ptr %allocated28, align 8, !dbg !189, !tbaa !142
  %staticsize29 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 3, !dbg !189
  %22 = load i64, ptr %staticsize29, align 8, !dbg !189, !tbaa !139
  %cmp30 = icmp eq i64 %21, %22, !dbg !189
  br i1 %cmp30, label %if.then32, label %if.end38, !dbg !188

if.then32:                                        ; preds = %cond.end
  %space33 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !191
  %23 = load ptr, ptr %space33, align 8, !dbg !191, !tbaa !145
  %staticspace34 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 5, !dbg !191
  %arrayidx35 = getelementptr inbounds [256 x %struct.Nodecount_tag], ptr %staticspace34, i64 0, i64 0, !dbg !191
  %24 = load i64, ptr %sizeoftype, align 8, !dbg !191, !tbaa !120
  %staticsize36 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 3, !dbg !191
  %25 = load i64, ptr %staticsize36, align 8, !dbg !191, !tbaa !139
  %mul37 = mul i64 %24, %25, !dbg !191
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %arrayidx35, i64 %mul37, i1 false), !dbg !191
  br label %if.end38, !dbg !191

if.end38:                                         ; preds = %if.then32, %cond.end
  %initialiseelement39 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 7, !dbg !193
  %26 = load ptr, ptr %initialiseelement39, align 8, !dbg !193, !tbaa !146
  %cmp40 = icmp ne ptr %26, null, !dbg !193
  br i1 %cmp40, label %if.then42, label %if.end58, !dbg !188

if.then42:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %stackidx43) #6, !dbg !194
  tail call void @llvm.dbg.declare(metadata ptr %stackidx43, metadata !112, metadata !DIExpression()), !dbg !194
  store i64 0, ptr %stackidx43, align 8, !dbg !195, !tbaa !120
  br label %for.cond44, !dbg !195

for.cond44:                                       ; preds = %for.inc55, %if.then42
  %27 = load i64, ptr %stackidx43, align 8, !dbg !197, !tbaa !120
  %sizeincrement45 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 4, !dbg !197
  %28 = load i64, ptr %sizeincrement45, align 8, !dbg !197, !tbaa !141
  %cmp46 = icmp ult i64 %27, %28, !dbg !197
  br i1 %cmp46, label %for.body48, label %for.end57, !dbg !195

for.body48:                                       ; preds = %for.cond44
  %initialiseelement49 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 7, !dbg !199
  %29 = load ptr, ptr %initialiseelement49, align 8, !dbg !199, !tbaa !146
  %space50 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !199
  %30 = load ptr, ptr %space50, align 8, !dbg !199, !tbaa !145
  %allocated51 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !199
  %31 = load i64, ptr %allocated51, align 8, !dbg !199, !tbaa !142
  %add.ptr52 = getelementptr inbounds %struct.Nodecount_tag, ptr %30, i64 %31, !dbg !199
  %32 = load i64, ptr %stackidx43, align 8, !dbg !199, !tbaa !120
  %add.ptr53 = getelementptr inbounds %struct.Nodecount_tag, ptr %add.ptr52, i64 %32, !dbg !199
  %call54 = call i32 %29(ptr noundef %add.ptr53), !dbg !199
  br label %for.inc55, !dbg !199

for.inc55:                                        ; preds = %for.body48
  %33 = load i64, ptr %stackidx43, align 8, !dbg !197, !tbaa !120
  %inc56 = add i64 %33, 1, !dbg !197
  store i64 %inc56, ptr %stackidx43, align 8, !dbg !197, !tbaa !120
  br label %for.cond44, !dbg !197, !llvm.loop !201

for.end57:                                        ; preds = %for.cond44
  call void @llvm.lifetime.end.p0(i64 8, ptr %stackidx43) #6, !dbg !193
  br label %if.end58, !dbg !194

if.end58:                                         ; preds = %for.end57, %if.end38
  %sizeincrement59 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 4, !dbg !188
  %34 = load i64, ptr %sizeincrement59, align 8, !dbg !188, !tbaa !141
  %allocated60 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !188
  %35 = load i64, ptr %allocated60, align 8, !dbg !188, !tbaa !142
  %add61 = add i64 %35, %34, !dbg !188
  store i64 %add61, ptr %allocated60, align 8, !dbg !188, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocsize) #6, !dbg !186
  call void @llvm.lifetime.end.p0(i64 8, ptr %sizeoftype) #6, !dbg !186
  br label %if.end62, !dbg !188

if.end62:                                         ; preds = %if.end58, %if.end
  %space63 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !187
  %36 = load ptr, ptr %space63, align 8, !dbg !187, !tbaa !145
  %nextfree64 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !187
  %37 = load i64, ptr %nextfree64, align 8, !dbg !187, !tbaa !143
  %inc65 = add i64 %37, 1, !dbg !187
  store i64 %inc65, ptr %nextfree64, align 8, !dbg !187, !tbaa !143
  %arrayidx66 = getelementptr inbounds %struct.Nodecount_tag, ptr %36, i64 %37, !dbg !187
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx66, ptr align 8 %root, i64 40, i1 false), !dbg !187, !tbaa.struct !202
  %maxsize67 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 1, !dbg !204
  %38 = load i64, ptr %maxsize67, align 8, !dbg !204, !tbaa !144
  %nextfree68 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !204
  %39 = load i64, ptr %nextfree68, align 8, !dbg !204, !tbaa !143
  %cmp69 = icmp ult i64 %38, %39, !dbg !204
  br i1 %cmp69, label %if.then71, label %if.end74, !dbg !187

if.then71:                                        ; preds = %if.end62
  %nextfree72 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !206
  %40 = load i64, ptr %nextfree72, align 8, !dbg !206, !tbaa !143
  %maxsize73 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 1, !dbg !206
  store i64 %40, ptr %maxsize73, align 8, !dbg !206, !tbaa !144
  br label %if.end74, !dbg !206

if.end74:                                         ; preds = %if.then71, %if.end62
  br label %while.cond, !dbg !208

while.cond:                                       ; preds = %if.end99, %if.end74
  %nextfree75 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !209
  %41 = load i64, ptr %nextfree75, align 8, !dbg !209, !tbaa !143
  %cmp76 = icmp eq i64 %41, 0, !dbg !209
  %42 = zext i1 %cmp76 to i64, !dbg !209
  %cond78 = select i1 %cmp76, i32 1, i32 0, !dbg !209
  %tobool = icmp ne i32 %cond78, 0, !dbg !210
  %lnot = xor i1 %tobool, true, !dbg !210
  br i1 %lnot, label %while.body, label %while.end, !dbg !208

while.body:                                       ; preds = %while.cond
  %space79 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !211
  %43 = load ptr, ptr %space79, align 8, !dbg !211, !tbaa !145
  %nextfree80 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !213
  %44 = load i64, ptr %nextfree80, align 8, !dbg !213, !tbaa !143
  %sub = sub i64 %44, 1, !dbg !214
  %arrayidx81 = getelementptr inbounds %struct.Nodecount_tag, ptr %43, i64 %sub, !dbg !215
  store ptr %arrayidx81, ptr %current, align 8, !dbg !216, !tbaa !115
  %45 = load ptr, ptr %current, align 8, !dbg !217, !tbaa !115
  %visited82 = getelementptr inbounds %struct.Nodecount_tag, ptr %45, i32 0, i32 5, !dbg !219
  %46 = load i8, ptr %visited82, align 4, !dbg !219, !tbaa !182, !range !220, !noundef !221
  %tobool83 = trunc i8 %46 to i1, !dbg !219
  br i1 %tobool83, label %if.then84, label %if.else97, !dbg !222

if.then84:                                        ; preds = %while.body
  %space85 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !223
  %47 = load ptr, ptr %space85, align 8, !dbg !223, !tbaa !145
  %nextfree86 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !223
  %48 = load i64, ptr %nextfree86, align 8, !dbg !223, !tbaa !143
  %dec = add i64 %48, -1, !dbg !223
  store i64 %dec, ptr %nextfree86, align 8, !dbg !223, !tbaa !143
  %arrayidx87 = getelementptr inbounds %struct.Nodecount_tag, ptr %47, i64 %dec, !dbg !223
  store ptr %arrayidx87, ptr %current, align 8, !dbg !225, !tbaa !115
  %nextfree88 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 2, !dbg !226
  %49 = load i64, ptr %nextfree88, align 8, !dbg !226, !tbaa !143
  %cmp89 = icmp eq i64 %49, 0, !dbg !226
  br i1 %cmp89, label %cond.true91, label %cond.false92, !dbg !228

cond.true91:                                      ; preds = %if.then84
  br i1 true, label %if.then93, label %if.else, !dbg !226

cond.false92:                                     ; preds = %if.then84
  br i1 false, label %if.then93, label %if.else, !dbg !228

if.then93:                                        ; preds = %cond.false92, %cond.true91
  %50 = load ptr, ptr %current, align 8, !dbg !229, !tbaa !115
  %branching94 = getelementptr inbounds %struct.Nodecount_tag, ptr %50, i32 0, i32 1, !dbg !231
  %51 = load i64, ptr %branching94, align 8, !dbg !231, !tbaa !176
  %52 = load ptr, ptr %current, align 8, !dbg !232, !tbaa !115
  %leaves95 = getelementptr inbounds %struct.Nodecount_tag, ptr %52, i32 0, i32 0, !dbg !233
  %53 = load i64, ptr %leaves95, align 8, !dbg !233, !tbaa !173
  call void (ptr, ...) @gt_log_log(ptr noundef @.str.1, i64 noundef %51, i64 noundef %53), !dbg !234
  br label %if.end96, !dbg !235

if.else:                                          ; preds = %cond.false92, %cond.true91
  %54 = load ptr, ptr %current, align 8, !dbg !236, !tbaa !115
  call void @process_count_node(ptr noundef %stack, ptr noundef %54), !dbg !238
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.then93
  br label %if.end99, !dbg !239

if.else97:                                        ; preds = %while.body
  %55 = load ptr, ptr %index.addr, align 8, !dbg !240, !tbaa !115
  %56 = load ptr, ptr %current, align 8, !dbg !242, !tbaa !115
  %57 = load ptr, ptr %tmpmbtab, align 8, !dbg !243, !tbaa !115
  %58 = load ptr, ptr %rangeOccs, align 8, !dbg !244, !tbaa !115
  %59 = load i32, ptr %numofchars.addr, align 4, !dbg !245, !tbaa !123
  call void @visit_count_children(ptr noundef %55, ptr noundef %56, ptr noundef %stack, ptr noundef %57, ptr noundef %58, i32 noundef %59), !dbg !246
  %60 = load ptr, ptr %current, align 8, !dbg !247, !tbaa !115
  %visited98 = getelementptr inbounds %struct.Nodecount_tag, ptr %60, i32 0, i32 5, !dbg !248
  store i8 1, ptr %visited98, align 4, !dbg !249, !tbaa !182
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %if.end96
  br label %while.cond, !dbg !208, !llvm.loop !250

while.end:                                        ; preds = %while.cond
  %61 = load ptr, ptr %rangeOccs, align 8, !dbg !252, !tbaa !115
  call void @gt_free_mem(ptr noundef %61, ptr noundef @.str, i32 noundef 160), !dbg !252
  %62 = load ptr, ptr %tmpmbtab, align 8, !dbg !253, !tbaa !115
  call void @gt_free_mem(ptr noundef %62, ptr noundef @.str, i32 noundef 161), !dbg !253
  %allocated100 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 0, !dbg !254
  %63 = load i64, ptr %allocated100, align 8, !dbg !254, !tbaa !142
  %staticsize101 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 3, !dbg !254
  %64 = load i64, ptr %staticsize101, align 8, !dbg !254, !tbaa !139
  %cmp102 = icmp ugt i64 %63, %64, !dbg !254
  br i1 %cmp102, label %if.then104, label %if.end107, !dbg !256

if.then104:                                       ; preds = %while.end
  %space105 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !257
  %65 = load ptr, ptr %space105, align 8, !dbg !257, !tbaa !145
  call void @gt_free_mem(ptr noundef %65, ptr noundef @.str, i32 noundef 162), !dbg !257
  %space106 = getelementptr inbounds %struct.GtStackNodecount, ptr %stack, i32 0, i32 6, !dbg !257
  store ptr null, ptr %space106, align 8, !dbg !257, !tbaa !145
  br label %if.end107, !dbg !257

if.end107:                                        ; preds = %if.then104, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %resize) #6, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %rangeOccs) #6, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpmbtab) #6, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %current) #6, !dbg !259
  call void @llvm.lifetime.end.p0(i64 40, ptr %root) #6, !dbg !259
  call void @llvm.lifetime.end.p0(i64 10296, ptr %stack) #6, !dbg !259
  ret void, !dbg !259
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !260 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !265 ptr @gt_realloc_mem(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !268 void @gt_log_log(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal void @process_count_node(ptr noundef %stack, ptr noundef %current) #0 !dbg !272 {
entry:
  %stack.addr = alloca ptr, align 8
  %current.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %stack, ptr %stack.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !277, metadata !DIExpression()), !dbg !280
  store ptr %current, ptr %current.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %current.addr, metadata !278, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #6, !dbg !282
  tail call void @llvm.dbg.declare(metadata ptr %parent, metadata !279, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr %stack.addr, align 8, !dbg !284, !tbaa !115
  %space = getelementptr inbounds %struct.GtStackNodecount, ptr %0, i32 0, i32 6, !dbg !285
  %1 = load ptr, ptr %space, align 8, !dbg !285, !tbaa !145
  %2 = load ptr, ptr %stack.addr, align 8, !dbg !286, !tbaa !115
  %nextfree = getelementptr inbounds %struct.GtStackNodecount, ptr %2, i32 0, i32 2, !dbg !287
  %3 = load i64, ptr %nextfree, align 8, !dbg !287, !tbaa !143
  %4 = load ptr, ptr %current.addr, align 8, !dbg !288, !tbaa !115
  %parentOffset = getelementptr inbounds %struct.Nodecount_tag, ptr %4, i32 0, i32 4, !dbg !289
  %5 = load i32, ptr %parentOffset, align 8, !dbg !289, !tbaa !179
  %conv = zext i32 %5 to i64, !dbg !288
  %sub = sub i64 %3, %conv, !dbg !290
  %arrayidx = getelementptr inbounds %struct.Nodecount_tag, ptr %1, i64 %sub, !dbg !284
  store ptr %arrayidx, ptr %parent, align 8, !dbg !291, !tbaa !115
  %6 = load ptr, ptr %current.addr, align 8, !dbg !292, !tbaa !115
  %leaves = getelementptr inbounds %struct.Nodecount_tag, ptr %6, i32 0, i32 0, !dbg !293
  %7 = load i64, ptr %leaves, align 8, !dbg !293, !tbaa !173
  %8 = load ptr, ptr %parent, align 8, !dbg !294, !tbaa !115
  %leaves1 = getelementptr inbounds %struct.Nodecount_tag, ptr %8, i32 0, i32 0, !dbg !295
  %9 = load i64, ptr %leaves1, align 8, !dbg !296, !tbaa !173
  %add = add i64 %9, %7, !dbg !296
  store i64 %add, ptr %leaves1, align 8, !dbg !296, !tbaa !173
  %10 = load ptr, ptr %current.addr, align 8, !dbg !297, !tbaa !115
  %branching = getelementptr inbounds %struct.Nodecount_tag, ptr %10, i32 0, i32 1, !dbg !298
  %11 = load i64, ptr %branching, align 8, !dbg !298, !tbaa !176
  %12 = load ptr, ptr %parent, align 8, !dbg !299, !tbaa !115
  %branching2 = getelementptr inbounds %struct.Nodecount_tag, ptr %12, i32 0, i32 1, !dbg !300
  %13 = load i64, ptr %branching2, align 8, !dbg !301, !tbaa !176
  %add3 = add i64 %13, %11, !dbg !301
  store i64 %add3, ptr %branching2, align 8, !dbg !301, !tbaa !176
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #6, !dbg !302
  ret void, !dbg !302
}

; Function Attrs: nounwind uwtable
define internal void @visit_count_children(ptr noundef %index, ptr noundef %parent, ptr noundef %stack, ptr noundef %tmpmbtab, ptr noundef %rangeOccs, i32 noundef %numofchars) #0 !dbg !303 {
entry:
  %index.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %stack.addr = alloca ptr, align 8
  %tmpmbtab.addr = alloca ptr, align 8
  %rangeOccs.addr = alloca ptr, align 8
  %numofchars.addr = alloca i32, align 4
  %rangesize = alloca i64, align 8
  %idx = alloca i64, align 8
  %num_special = alloca i64, align 8
  %offset = alloca i32, align 4
  %child = alloca %struct.Nodecount_tag, align 8
  %sizeoftype = alloca i64, align 8
  %allocsize = alloca i64, align 8
  %stackidx = alloca i64, align 8
  %sizeoftype101 = alloca i64, align 8
  %allocsize102 = alloca i64, align 8
  %stackidx133 = alloca i64, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !307, metadata !DIExpression()), !dbg !342
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !308, metadata !DIExpression()), !dbg !343
  store ptr %stack, ptr %stack.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %stack.addr, metadata !309, metadata !DIExpression()), !dbg !344
  store ptr %tmpmbtab, ptr %tmpmbtab.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tmpmbtab.addr, metadata !310, metadata !DIExpression()), !dbg !345
  store ptr %rangeOccs, ptr %rangeOccs.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %rangeOccs.addr, metadata !311, metadata !DIExpression()), !dbg !346
  store i32 %numofchars, ptr %numofchars.addr, align 4, !tbaa !123
  tail call void @llvm.dbg.declare(metadata ptr %numofchars.addr, metadata !312, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 8, ptr %rangesize) #6, !dbg !348
  tail call void @llvm.dbg.declare(metadata ptr %rangesize, metadata !313, metadata !DIExpression()), !dbg !349
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #6, !dbg !348
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !314, metadata !DIExpression()), !dbg !350
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_special) #6, !dbg !348
  tail call void @llvm.dbg.declare(metadata ptr %num_special, metadata !315, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #6, !dbg !352
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !316, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 40, ptr %child) #6, !dbg !354
  tail call void @llvm.dbg.declare(metadata ptr %child, metadata !317, metadata !DIExpression()), !dbg !355
  br label %do.body, !dbg !356

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !357, !tbaa !115
  %lower = getelementptr inbounds %struct.Nodecount_tag, ptr %0, i32 0, i32 2, !dbg !357
  %1 = load i64, ptr %lower, align 8, !dbg !357, !tbaa !163
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !357, !tbaa !115
  %upper = getelementptr inbounds %struct.Nodecount_tag, ptr %2, i32 0, i32 3, !dbg !357
  %3 = load i64, ptr %upper, align 8, !dbg !357, !tbaa !170
  %cmp = icmp ult i64 %1, %3, !dbg !357
  br i1 %cmp, label %if.end, label %if.then, !dbg !360

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !361, !tbaa !115
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @__func__.visit_count_children, ptr noundef @.str, i32 noundef 43), !dbg !361
  call void @abort() #7, !dbg !361
  unreachable, !dbg !361

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !360

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !360

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %tmpmbtab.addr, align 8, !dbg !363, !tbaa !115
  %6 = load ptr, ptr %rangeOccs.addr, align 8, !dbg !364, !tbaa !115
  %7 = load ptr, ptr %index.addr, align 8, !dbg !365, !tbaa !115
  %8 = load ptr, ptr %parent.addr, align 8, !dbg !366, !tbaa !115
  %lower1 = getelementptr inbounds %struct.Nodecount_tag, ptr %8, i32 0, i32 2, !dbg !367
  %9 = load i64, ptr %lower1, align 8, !dbg !367, !tbaa !163
  %10 = load ptr, ptr %parent.addr, align 8, !dbg !368, !tbaa !115
  %upper2 = getelementptr inbounds %struct.Nodecount_tag, ptr %10, i32 0, i32 3, !dbg !369
  %11 = load i64, ptr %upper2, align 8, !dbg !369, !tbaa !170
  %call3 = call i64 @gt_bwtrangesplitallwithoutspecial(ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %9, i64 noundef %11), !dbg !370
  store i64 %call3, ptr %rangesize, align 8, !dbg !371, !tbaa !120
  br label %do.body4, !dbg !372

do.body4:                                         ; preds = %do.end
  %12 = load i64, ptr %rangesize, align 8, !dbg !373, !tbaa !120
  %13 = load i32, ptr %numofchars.addr, align 4, !dbg !373, !tbaa !123
  %conv = zext i32 %13 to i64, !dbg !373
  %cmp5 = icmp ule i64 %12, %conv, !dbg !373
  br i1 %cmp5, label %if.end9, label %if.then7, !dbg !376

if.then7:                                         ; preds = %do.body4
  %14 = load ptr, ptr @stderr, align 8, !dbg !377, !tbaa !115
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @__func__.visit_count_children, ptr noundef @.str, i32 noundef 49), !dbg !377
  call void @abort() #7, !dbg !377
  unreachable, !dbg !377

if.end9:                                          ; preds = %do.body4
  br label %do.cond10, !dbg !376

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !376

do.end11:                                         ; preds = %do.cond10
  store i32 0, ptr %offset, align 4, !dbg !379, !tbaa !123
  %15 = load ptr, ptr %parent.addr, align 8, !dbg !380, !tbaa !115
  %upper12 = getelementptr inbounds %struct.Nodecount_tag, ptr %15, i32 0, i32 3, !dbg !381
  %16 = load i64, ptr %upper12, align 8, !dbg !381, !tbaa !170
  %17 = load ptr, ptr %parent.addr, align 8, !dbg !382, !tbaa !115
  %lower13 = getelementptr inbounds %struct.Nodecount_tag, ptr %17, i32 0, i32 2, !dbg !383
  %18 = load i64, ptr %lower13, align 8, !dbg !383, !tbaa !163
  %sub = sub i64 %16, %18, !dbg !384
  store i64 %sub, ptr %num_special, align 8, !dbg !385, !tbaa !120
  store i64 0, ptr %idx, align 8, !dbg !386, !tbaa !120
  br label %for.cond, !dbg !387

for.cond:                                         ; preds = %for.inc173, %do.end11
  %19 = load i64, ptr %idx, align 8, !dbg !388, !tbaa !120
  %20 = load i64, ptr %rangesize, align 8, !dbg !389, !tbaa !120
  %cmp14 = icmp ult i64 %19, %20, !dbg !390
  br i1 %cmp14, label %for.body, label %for.end175, !dbg !391

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %tmpmbtab.addr, align 8, !dbg !392, !tbaa !115
  %22 = load i64, ptr %idx, align 8, !dbg !393, !tbaa !120
  %arrayidx = getelementptr inbounds %struct.Mbtab, ptr %21, i64 %22, !dbg !392
  %lowerbound = getelementptr inbounds %struct.Mbtab, ptr %arrayidx, i32 0, i32 0, !dbg !394
  %23 = load i64, ptr %lowerbound, align 8, !dbg !394, !tbaa !395
  %lower16 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 2, !dbg !397
  store i64 %23, ptr %lower16, align 8, !dbg !398, !tbaa !163
  %24 = load ptr, ptr %tmpmbtab.addr, align 8, !dbg !399, !tbaa !115
  %25 = load i64, ptr %idx, align 8, !dbg !400, !tbaa !120
  %arrayidx17 = getelementptr inbounds %struct.Mbtab, ptr %24, i64 %25, !dbg !399
  %upperbound = getelementptr inbounds %struct.Mbtab, ptr %arrayidx17, i32 0, i32 1, !dbg !401
  %26 = load i64, ptr %upperbound, align 8, !dbg !401, !tbaa !402
  %upper18 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 3, !dbg !403
  store i64 %26, ptr %upper18, align 8, !dbg !404, !tbaa !170
  %leaves = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 0, !dbg !405
  store i64 0, ptr %leaves, align 8, !dbg !406, !tbaa !173
  %branching = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 1, !dbg !407
  store i64 1, ptr %branching, align 8, !dbg !408, !tbaa !176
  %27 = load i32, ptr %offset, align 4, !dbg !409, !tbaa !123
  %add = add i32 %27, 1, !dbg !410
  %parentOffset = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 4, !dbg !411
  store i32 %add, ptr %parentOffset, align 8, !dbg !412, !tbaa !179
  %visited = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 5, !dbg !413
  store i8 0, ptr %visited, align 4, !dbg !414, !tbaa !182
  %on_branch = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 6, !dbg !415
  store i8 0, ptr %on_branch, align 1, !dbg !416, !tbaa !185
  %upper19 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 3, !dbg !417
  %28 = load i64, ptr %upper19, align 8, !dbg !417, !tbaa !170
  %lower20 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 2, !dbg !418
  %29 = load i64, ptr %lower20, align 8, !dbg !418, !tbaa !163
  %sub21 = sub i64 %28, %29, !dbg !419
  %30 = load ptr, ptr %parent.addr, align 8, !dbg !420, !tbaa !115
  %upper22 = getelementptr inbounds %struct.Nodecount_tag, ptr %30, i32 0, i32 3, !dbg !421
  %31 = load i64, ptr %upper22, align 8, !dbg !421, !tbaa !170
  %32 = load ptr, ptr %parent.addr, align 8, !dbg !422, !tbaa !115
  %lower23 = getelementptr inbounds %struct.Nodecount_tag, ptr %32, i32 0, i32 2, !dbg !423
  %33 = load i64, ptr %lower23, align 8, !dbg !423, !tbaa !163
  %sub24 = sub i64 %31, %33, !dbg !424
  %cmp25 = icmp eq i64 %sub21, %sub24, !dbg !425
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !426

if.then27:                                        ; preds = %for.body
  %on_branch28 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 6, !dbg !427
  store i8 1, ptr %on_branch28, align 1, !dbg !428, !tbaa !185
  %34 = load ptr, ptr %parent.addr, align 8, !dbg !429, !tbaa !115
  %branching29 = getelementptr inbounds %struct.Nodecount_tag, ptr %34, i32 0, i32 1, !dbg !430
  %35 = load i64, ptr %branching29, align 8, !dbg !431, !tbaa !176
  %dec = add i64 %35, -1, !dbg !431
  store i64 %dec, ptr %branching29, align 8, !dbg !431, !tbaa !176
  %36 = load ptr, ptr %stack.addr, align 8, !dbg !432, !tbaa !115
  %nextfree = getelementptr inbounds %struct.GtStackNodecount, ptr %36, i32 0, i32 2, !dbg !432
  %37 = load i64, ptr %nextfree, align 8, !dbg !432, !tbaa !143
  %38 = load ptr, ptr %stack.addr, align 8, !dbg !432, !tbaa !115
  %allocated = getelementptr inbounds %struct.GtStackNodecount, ptr %38, i32 0, i32 0, !dbg !432
  %39 = load i64, ptr %allocated, align 8, !dbg !432, !tbaa !142
  %cmp30 = icmp eq i64 %37, %39, !dbg !432
  br i1 %cmp30, label %if.then32, label %if.end67, !dbg !433

if.then32:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 8, ptr %sizeoftype) #6, !dbg !434
  tail call void @llvm.dbg.declare(metadata ptr %sizeoftype, metadata !318, metadata !DIExpression()), !dbg !434
  store i64 40, ptr %sizeoftype, align 8, !dbg !434, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocsize) #6, !dbg !434
  tail call void @llvm.dbg.declare(metadata ptr %allocsize, metadata !326, metadata !DIExpression()), !dbg !434
  %40 = load i64, ptr %sizeoftype, align 8, !dbg !434, !tbaa !120
  %41 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %allocated33 = getelementptr inbounds %struct.GtStackNodecount, ptr %41, i32 0, i32 0, !dbg !434
  %42 = load i64, ptr %allocated33, align 8, !dbg !434, !tbaa !142
  %43 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %sizeincrement = getelementptr inbounds %struct.GtStackNodecount, ptr %43, i32 0, i32 4, !dbg !434
  %44 = load i64, ptr %sizeincrement, align 8, !dbg !434, !tbaa !141
  %add34 = add i64 %42, %44, !dbg !434
  %mul = mul i64 %40, %add34, !dbg !434
  store i64 %mul, ptr %allocsize, align 8, !dbg !434, !tbaa !120
  %45 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %allocated35 = getelementptr inbounds %struct.GtStackNodecount, ptr %45, i32 0, i32 0, !dbg !434
  %46 = load i64, ptr %allocated35, align 8, !dbg !434, !tbaa !142
  %47 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %staticsize = getelementptr inbounds %struct.GtStackNodecount, ptr %47, i32 0, i32 3, !dbg !434
  %48 = load i64, ptr %staticsize, align 8, !dbg !434, !tbaa !139
  %cmp36 = icmp eq i64 %46, %48, !dbg !434
  br i1 %cmp36, label %cond.true, label %cond.false, !dbg !434

cond.true:                                        ; preds = %if.then32
  br label %cond.end, !dbg !434

cond.false:                                       ; preds = %if.then32
  %49 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %space = getelementptr inbounds %struct.GtStackNodecount, ptr %49, i32 0, i32 6, !dbg !434
  %50 = load ptr, ptr %space, align 8, !dbg !434, !tbaa !145
  br label %cond.end, !dbg !434

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %50, %cond.false ], !dbg !434
  %51 = load i64, ptr %allocsize, align 8, !dbg !434, !tbaa !120
  %call38 = call ptr @gt_realloc_mem(ptr noundef %cond, i64 noundef %51, ptr noundef @.str, i32 noundef 69), !dbg !434
  %52 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %space39 = getelementptr inbounds %struct.GtStackNodecount, ptr %52, i32 0, i32 6, !dbg !434
  store ptr %call38, ptr %space39, align 8, !dbg !434, !tbaa !145
  %53 = load ptr, ptr %stack.addr, align 8, !dbg !435, !tbaa !115
  %allocated40 = getelementptr inbounds %struct.GtStackNodecount, ptr %53, i32 0, i32 0, !dbg !435
  %54 = load i64, ptr %allocated40, align 8, !dbg !435, !tbaa !142
  %55 = load ptr, ptr %stack.addr, align 8, !dbg !435, !tbaa !115
  %staticsize41 = getelementptr inbounds %struct.GtStackNodecount, ptr %55, i32 0, i32 3, !dbg !435
  %56 = load i64, ptr %staticsize41, align 8, !dbg !435, !tbaa !139
  %cmp42 = icmp eq i64 %54, %56, !dbg !435
  br i1 %cmp42, label %if.then44, label %if.end49, !dbg !434

if.then44:                                        ; preds = %cond.end
  %57 = load ptr, ptr %stack.addr, align 8, !dbg !437, !tbaa !115
  %space45 = getelementptr inbounds %struct.GtStackNodecount, ptr %57, i32 0, i32 6, !dbg !437
  %58 = load ptr, ptr %space45, align 8, !dbg !437, !tbaa !145
  %59 = load ptr, ptr %stack.addr, align 8, !dbg !437, !tbaa !115
  %staticspace = getelementptr inbounds %struct.GtStackNodecount, ptr %59, i32 0, i32 5, !dbg !437
  %arrayidx46 = getelementptr inbounds [256 x %struct.Nodecount_tag], ptr %staticspace, i64 0, i64 0, !dbg !437
  %60 = load i64, ptr %sizeoftype, align 8, !dbg !437, !tbaa !120
  %61 = load ptr, ptr %stack.addr, align 8, !dbg !437, !tbaa !115
  %staticsize47 = getelementptr inbounds %struct.GtStackNodecount, ptr %61, i32 0, i32 3, !dbg !437
  %62 = load i64, ptr %staticsize47, align 8, !dbg !437, !tbaa !139
  %mul48 = mul i64 %60, %62, !dbg !437
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %58, ptr align 8 %arrayidx46, i64 %mul48, i1 false), !dbg !437
  br label %if.end49, !dbg !437

if.end49:                                         ; preds = %if.then44, %cond.end
  %63 = load ptr, ptr %stack.addr, align 8, !dbg !439, !tbaa !115
  %initialiseelement = getelementptr inbounds %struct.GtStackNodecount, ptr %63, i32 0, i32 7, !dbg !439
  %64 = load ptr, ptr %initialiseelement, align 8, !dbg !439, !tbaa !146
  %cmp50 = icmp ne ptr %64, null, !dbg !439
  br i1 %cmp50, label %if.then52, label %if.end63, !dbg !434

if.then52:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %stackidx) #6, !dbg !440
  tail call void @llvm.dbg.declare(metadata ptr %stackidx, metadata !327, metadata !DIExpression()), !dbg !440
  store i64 0, ptr %stackidx, align 8, !dbg !441, !tbaa !120
  br label %for.cond53, !dbg !441

for.cond53:                                       ; preds = %for.inc, %if.then52
  %65 = load i64, ptr %stackidx, align 8, !dbg !443, !tbaa !120
  %66 = load ptr, ptr %stack.addr, align 8, !dbg !443, !tbaa !115
  %sizeincrement54 = getelementptr inbounds %struct.GtStackNodecount, ptr %66, i32 0, i32 4, !dbg !443
  %67 = load i64, ptr %sizeincrement54, align 8, !dbg !443, !tbaa !141
  %cmp55 = icmp ult i64 %65, %67, !dbg !443
  br i1 %cmp55, label %for.body57, label %for.end, !dbg !441

for.body57:                                       ; preds = %for.cond53
  %68 = load ptr, ptr %stack.addr, align 8, !dbg !445, !tbaa !115
  %initialiseelement58 = getelementptr inbounds %struct.GtStackNodecount, ptr %68, i32 0, i32 7, !dbg !445
  %69 = load ptr, ptr %initialiseelement58, align 8, !dbg !445, !tbaa !146
  %70 = load ptr, ptr %stack.addr, align 8, !dbg !445, !tbaa !115
  %space59 = getelementptr inbounds %struct.GtStackNodecount, ptr %70, i32 0, i32 6, !dbg !445
  %71 = load ptr, ptr %space59, align 8, !dbg !445, !tbaa !145
  %72 = load ptr, ptr %stack.addr, align 8, !dbg !445, !tbaa !115
  %allocated60 = getelementptr inbounds %struct.GtStackNodecount, ptr %72, i32 0, i32 0, !dbg !445
  %73 = load i64, ptr %allocated60, align 8, !dbg !445, !tbaa !142
  %add.ptr = getelementptr inbounds %struct.Nodecount_tag, ptr %71, i64 %73, !dbg !445
  %74 = load i64, ptr %stackidx, align 8, !dbg !445, !tbaa !120
  %add.ptr61 = getelementptr inbounds %struct.Nodecount_tag, ptr %add.ptr, i64 %74, !dbg !445
  %call62 = call i32 %69(ptr noundef %add.ptr61), !dbg !445
  br label %for.inc, !dbg !445

for.inc:                                          ; preds = %for.body57
  %75 = load i64, ptr %stackidx, align 8, !dbg !443, !tbaa !120
  %inc = add i64 %75, 1, !dbg !443
  store i64 %inc, ptr %stackidx, align 8, !dbg !443, !tbaa !120
  br label %for.cond53, !dbg !443, !llvm.loop !447

for.end:                                          ; preds = %for.cond53
  call void @llvm.lifetime.end.p0(i64 8, ptr %stackidx) #6, !dbg !439
  br label %if.end63, !dbg !440

if.end63:                                         ; preds = %for.end, %if.end49
  %76 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %sizeincrement64 = getelementptr inbounds %struct.GtStackNodecount, ptr %76, i32 0, i32 4, !dbg !434
  %77 = load i64, ptr %sizeincrement64, align 8, !dbg !434, !tbaa !141
  %78 = load ptr, ptr %stack.addr, align 8, !dbg !434, !tbaa !115
  %allocated65 = getelementptr inbounds %struct.GtStackNodecount, ptr %78, i32 0, i32 0, !dbg !434
  %79 = load i64, ptr %allocated65, align 8, !dbg !434, !tbaa !142
  %add66 = add i64 %79, %77, !dbg !434
  store i64 %add66, ptr %allocated65, align 8, !dbg !434, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocsize) #6, !dbg !432
  call void @llvm.lifetime.end.p0(i64 8, ptr %sizeoftype) #6, !dbg !432
  br label %if.end67, !dbg !434

if.end67:                                         ; preds = %if.end63, %if.then27
  %80 = load ptr, ptr %stack.addr, align 8, !dbg !433, !tbaa !115
  %space68 = getelementptr inbounds %struct.GtStackNodecount, ptr %80, i32 0, i32 6, !dbg !433
  %81 = load ptr, ptr %space68, align 8, !dbg !433, !tbaa !145
  %82 = load ptr, ptr %stack.addr, align 8, !dbg !433, !tbaa !115
  %nextfree69 = getelementptr inbounds %struct.GtStackNodecount, ptr %82, i32 0, i32 2, !dbg !433
  %83 = load i64, ptr %nextfree69, align 8, !dbg !433, !tbaa !143
  %inc70 = add i64 %83, 1, !dbg !433
  store i64 %inc70, ptr %nextfree69, align 8, !dbg !433, !tbaa !143
  %arrayidx71 = getelementptr inbounds %struct.Nodecount_tag, ptr %81, i64 %83, !dbg !433
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx71, ptr align 8 %child, i64 40, i1 false), !dbg !433, !tbaa.struct !202
  %84 = load ptr, ptr %stack.addr, align 8, !dbg !448, !tbaa !115
  %maxsize = getelementptr inbounds %struct.GtStackNodecount, ptr %84, i32 0, i32 1, !dbg !448
  %85 = load i64, ptr %maxsize, align 8, !dbg !448, !tbaa !144
  %86 = load ptr, ptr %stack.addr, align 8, !dbg !448, !tbaa !115
  %nextfree72 = getelementptr inbounds %struct.GtStackNodecount, ptr %86, i32 0, i32 2, !dbg !448
  %87 = load i64, ptr %nextfree72, align 8, !dbg !448, !tbaa !143
  %cmp73 = icmp ult i64 %85, %87, !dbg !448
  br i1 %cmp73, label %if.then75, label %if.end78, !dbg !433

if.then75:                                        ; preds = %if.end67
  %88 = load ptr, ptr %stack.addr, align 8, !dbg !450, !tbaa !115
  %nextfree76 = getelementptr inbounds %struct.GtStackNodecount, ptr %88, i32 0, i32 2, !dbg !450
  %89 = load i64, ptr %nextfree76, align 8, !dbg !450, !tbaa !143
  %90 = load ptr, ptr %stack.addr, align 8, !dbg !450, !tbaa !115
  %maxsize77 = getelementptr inbounds %struct.GtStackNodecount, ptr %90, i32 0, i32 1, !dbg !450
  store i64 %89, ptr %maxsize77, align 8, !dbg !450, !tbaa !144
  br label %if.end78, !dbg !450

if.end78:                                         ; preds = %if.then75, %if.end67
  store i64 0, ptr %num_special, align 8, !dbg !452, !tbaa !120
  %91 = load i32, ptr %offset, align 4, !dbg !453, !tbaa !123
  %inc79 = add i32 %91, 1, !dbg !453
  store i32 %inc79, ptr %offset, align 4, !dbg !453, !tbaa !123
  br label %if.end172, !dbg !454

if.else:                                          ; preds = %for.body
  %lower80 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 2, !dbg !455
  %92 = load i64, ptr %lower80, align 8, !dbg !455, !tbaa !163
  %add81 = add i64 %92, 1, !dbg !456
  %upper82 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 3, !dbg !457
  %93 = load i64, ptr %upper82, align 8, !dbg !457, !tbaa !170
  %cmp83 = icmp eq i64 %add81, %93, !dbg !458
  br i1 %cmp83, label %if.then85, label %if.else89, !dbg !459

if.then85:                                        ; preds = %if.else
  %94 = load ptr, ptr %parent.addr, align 8, !dbg !460, !tbaa !115
  %leaves86 = getelementptr inbounds %struct.Nodecount_tag, ptr %94, i32 0, i32 0, !dbg !462
  %95 = load i64, ptr %leaves86, align 8, !dbg !463, !tbaa !173
  %inc87 = add i64 %95, 1, !dbg !463
  store i64 %inc87, ptr %leaves86, align 8, !dbg !463, !tbaa !173
  %96 = load i64, ptr %num_special, align 8, !dbg !464, !tbaa !120
  %dec88 = add i64 %96, -1, !dbg !464
  store i64 %dec88, ptr %num_special, align 8, !dbg !464, !tbaa !120
  br label %if.end171, !dbg !465

if.else89:                                        ; preds = %if.else
  %lower90 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 2, !dbg !466
  %97 = load i64, ptr %lower90, align 8, !dbg !466, !tbaa !163
  %upper91 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 3, !dbg !467
  %98 = load i64, ptr %upper91, align 8, !dbg !467, !tbaa !170
  %cmp92 = icmp eq i64 %97, %98, !dbg !468
  br i1 %cmp92, label %if.then94, label %if.else95, !dbg !469

if.then94:                                        ; preds = %if.else89
  br label %if.end170, !dbg !470

if.else95:                                        ; preds = %if.else89
  %99 = load ptr, ptr %stack.addr, align 8, !dbg !472, !tbaa !115
  %nextfree96 = getelementptr inbounds %struct.GtStackNodecount, ptr %99, i32 0, i32 2, !dbg !472
  %100 = load i64, ptr %nextfree96, align 8, !dbg !472, !tbaa !143
  %101 = load ptr, ptr %stack.addr, align 8, !dbg !472, !tbaa !115
  %allocated97 = getelementptr inbounds %struct.GtStackNodecount, ptr %101, i32 0, i32 0, !dbg !472
  %102 = load i64, ptr %allocated97, align 8, !dbg !472, !tbaa !142
  %cmp98 = icmp eq i64 %100, %102, !dbg !472
  br i1 %cmp98, label %if.then100, label %if.end152, !dbg !473

if.then100:                                       ; preds = %if.else95
  call void @llvm.lifetime.start.p0(i64 8, ptr %sizeoftype101) #6, !dbg !474
  tail call void @llvm.dbg.declare(metadata ptr %sizeoftype101, metadata !330, metadata !DIExpression()), !dbg !474
  store i64 40, ptr %sizeoftype101, align 8, !dbg !474, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 8, ptr %allocsize102) #6, !dbg !474
  tail call void @llvm.dbg.declare(metadata ptr %allocsize102, metadata !338, metadata !DIExpression()), !dbg !474
  %103 = load i64, ptr %sizeoftype101, align 8, !dbg !474, !tbaa !120
  %104 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %allocated103 = getelementptr inbounds %struct.GtStackNodecount, ptr %104, i32 0, i32 0, !dbg !474
  %105 = load i64, ptr %allocated103, align 8, !dbg !474, !tbaa !142
  %106 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %sizeincrement104 = getelementptr inbounds %struct.GtStackNodecount, ptr %106, i32 0, i32 4, !dbg !474
  %107 = load i64, ptr %sizeincrement104, align 8, !dbg !474, !tbaa !141
  %add105 = add i64 %105, %107, !dbg !474
  %mul106 = mul i64 %103, %add105, !dbg !474
  store i64 %mul106, ptr %allocsize102, align 8, !dbg !474, !tbaa !120
  %108 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %allocated107 = getelementptr inbounds %struct.GtStackNodecount, ptr %108, i32 0, i32 0, !dbg !474
  %109 = load i64, ptr %allocated107, align 8, !dbg !474, !tbaa !142
  %110 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %staticsize108 = getelementptr inbounds %struct.GtStackNodecount, ptr %110, i32 0, i32 3, !dbg !474
  %111 = load i64, ptr %staticsize108, align 8, !dbg !474, !tbaa !139
  %cmp109 = icmp eq i64 %109, %111, !dbg !474
  br i1 %cmp109, label %cond.true111, label %cond.false112, !dbg !474

cond.true111:                                     ; preds = %if.then100
  br label %cond.end114, !dbg !474

cond.false112:                                    ; preds = %if.then100
  %112 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %space113 = getelementptr inbounds %struct.GtStackNodecount, ptr %112, i32 0, i32 6, !dbg !474
  %113 = load ptr, ptr %space113, align 8, !dbg !474, !tbaa !145
  br label %cond.end114, !dbg !474

cond.end114:                                      ; preds = %cond.false112, %cond.true111
  %cond115 = phi ptr [ null, %cond.true111 ], [ %113, %cond.false112 ], !dbg !474
  %114 = load i64, ptr %allocsize102, align 8, !dbg !474, !tbaa !120
  %call116 = call ptr @gt_realloc_mem(ptr noundef %cond115, i64 noundef %114, ptr noundef @.str, i32 noundef 90), !dbg !474
  %115 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %space117 = getelementptr inbounds %struct.GtStackNodecount, ptr %115, i32 0, i32 6, !dbg !474
  store ptr %call116, ptr %space117, align 8, !dbg !474, !tbaa !145
  %116 = load ptr, ptr %stack.addr, align 8, !dbg !475, !tbaa !115
  %allocated118 = getelementptr inbounds %struct.GtStackNodecount, ptr %116, i32 0, i32 0, !dbg !475
  %117 = load i64, ptr %allocated118, align 8, !dbg !475, !tbaa !142
  %118 = load ptr, ptr %stack.addr, align 8, !dbg !475, !tbaa !115
  %staticsize119 = getelementptr inbounds %struct.GtStackNodecount, ptr %118, i32 0, i32 3, !dbg !475
  %119 = load i64, ptr %staticsize119, align 8, !dbg !475, !tbaa !139
  %cmp120 = icmp eq i64 %117, %119, !dbg !475
  br i1 %cmp120, label %if.then122, label %if.end128, !dbg !474

if.then122:                                       ; preds = %cond.end114
  %120 = load ptr, ptr %stack.addr, align 8, !dbg !477, !tbaa !115
  %space123 = getelementptr inbounds %struct.GtStackNodecount, ptr %120, i32 0, i32 6, !dbg !477
  %121 = load ptr, ptr %space123, align 8, !dbg !477, !tbaa !145
  %122 = load ptr, ptr %stack.addr, align 8, !dbg !477, !tbaa !115
  %staticspace124 = getelementptr inbounds %struct.GtStackNodecount, ptr %122, i32 0, i32 5, !dbg !477
  %arrayidx125 = getelementptr inbounds [256 x %struct.Nodecount_tag], ptr %staticspace124, i64 0, i64 0, !dbg !477
  %123 = load i64, ptr %sizeoftype101, align 8, !dbg !477, !tbaa !120
  %124 = load ptr, ptr %stack.addr, align 8, !dbg !477, !tbaa !115
  %staticsize126 = getelementptr inbounds %struct.GtStackNodecount, ptr %124, i32 0, i32 3, !dbg !477
  %125 = load i64, ptr %staticsize126, align 8, !dbg !477, !tbaa !139
  %mul127 = mul i64 %123, %125, !dbg !477
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %121, ptr align 8 %arrayidx125, i64 %mul127, i1 false), !dbg !477
  br label %if.end128, !dbg !477

if.end128:                                        ; preds = %if.then122, %cond.end114
  %126 = load ptr, ptr %stack.addr, align 8, !dbg !479, !tbaa !115
  %initialiseelement129 = getelementptr inbounds %struct.GtStackNodecount, ptr %126, i32 0, i32 7, !dbg !479
  %127 = load ptr, ptr %initialiseelement129, align 8, !dbg !479, !tbaa !146
  %cmp130 = icmp ne ptr %127, null, !dbg !479
  br i1 %cmp130, label %if.then132, label %if.end148, !dbg !474

if.then132:                                       ; preds = %if.end128
  call void @llvm.lifetime.start.p0(i64 8, ptr %stackidx133) #6, !dbg !480
  tail call void @llvm.dbg.declare(metadata ptr %stackidx133, metadata !339, metadata !DIExpression()), !dbg !480
  store i64 0, ptr %stackidx133, align 8, !dbg !481, !tbaa !120
  br label %for.cond134, !dbg !481

for.cond134:                                      ; preds = %for.inc145, %if.then132
  %128 = load i64, ptr %stackidx133, align 8, !dbg !483, !tbaa !120
  %129 = load ptr, ptr %stack.addr, align 8, !dbg !483, !tbaa !115
  %sizeincrement135 = getelementptr inbounds %struct.GtStackNodecount, ptr %129, i32 0, i32 4, !dbg !483
  %130 = load i64, ptr %sizeincrement135, align 8, !dbg !483, !tbaa !141
  %cmp136 = icmp ult i64 %128, %130, !dbg !483
  br i1 %cmp136, label %for.body138, label %for.end147, !dbg !481

for.body138:                                      ; preds = %for.cond134
  %131 = load ptr, ptr %stack.addr, align 8, !dbg !485, !tbaa !115
  %initialiseelement139 = getelementptr inbounds %struct.GtStackNodecount, ptr %131, i32 0, i32 7, !dbg !485
  %132 = load ptr, ptr %initialiseelement139, align 8, !dbg !485, !tbaa !146
  %133 = load ptr, ptr %stack.addr, align 8, !dbg !485, !tbaa !115
  %space140 = getelementptr inbounds %struct.GtStackNodecount, ptr %133, i32 0, i32 6, !dbg !485
  %134 = load ptr, ptr %space140, align 8, !dbg !485, !tbaa !145
  %135 = load ptr, ptr %stack.addr, align 8, !dbg !485, !tbaa !115
  %allocated141 = getelementptr inbounds %struct.GtStackNodecount, ptr %135, i32 0, i32 0, !dbg !485
  %136 = load i64, ptr %allocated141, align 8, !dbg !485, !tbaa !142
  %add.ptr142 = getelementptr inbounds %struct.Nodecount_tag, ptr %134, i64 %136, !dbg !485
  %137 = load i64, ptr %stackidx133, align 8, !dbg !485, !tbaa !120
  %add.ptr143 = getelementptr inbounds %struct.Nodecount_tag, ptr %add.ptr142, i64 %137, !dbg !485
  %call144 = call i32 %132(ptr noundef %add.ptr143), !dbg !485
  br label %for.inc145, !dbg !485

for.inc145:                                       ; preds = %for.body138
  %138 = load i64, ptr %stackidx133, align 8, !dbg !483, !tbaa !120
  %inc146 = add i64 %138, 1, !dbg !483
  store i64 %inc146, ptr %stackidx133, align 8, !dbg !483, !tbaa !120
  br label %for.cond134, !dbg !483, !llvm.loop !487

for.end147:                                       ; preds = %for.cond134
  call void @llvm.lifetime.end.p0(i64 8, ptr %stackidx133) #6, !dbg !479
  br label %if.end148, !dbg !480

if.end148:                                        ; preds = %for.end147, %if.end128
  %139 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %sizeincrement149 = getelementptr inbounds %struct.GtStackNodecount, ptr %139, i32 0, i32 4, !dbg !474
  %140 = load i64, ptr %sizeincrement149, align 8, !dbg !474, !tbaa !141
  %141 = load ptr, ptr %stack.addr, align 8, !dbg !474, !tbaa !115
  %allocated150 = getelementptr inbounds %struct.GtStackNodecount, ptr %141, i32 0, i32 0, !dbg !474
  %142 = load i64, ptr %allocated150, align 8, !dbg !474, !tbaa !142
  %add151 = add i64 %142, %140, !dbg !474
  store i64 %add151, ptr %allocated150, align 8, !dbg !474, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 8, ptr %allocsize102) #6, !dbg !472
  call void @llvm.lifetime.end.p0(i64 8, ptr %sizeoftype101) #6, !dbg !472
  br label %if.end152, !dbg !474

if.end152:                                        ; preds = %if.end148, %if.else95
  %143 = load ptr, ptr %stack.addr, align 8, !dbg !473, !tbaa !115
  %space153 = getelementptr inbounds %struct.GtStackNodecount, ptr %143, i32 0, i32 6, !dbg !473
  %144 = load ptr, ptr %space153, align 8, !dbg !473, !tbaa !145
  %145 = load ptr, ptr %stack.addr, align 8, !dbg !473, !tbaa !115
  %nextfree154 = getelementptr inbounds %struct.GtStackNodecount, ptr %145, i32 0, i32 2, !dbg !473
  %146 = load i64, ptr %nextfree154, align 8, !dbg !473, !tbaa !143
  %inc155 = add i64 %146, 1, !dbg !473
  store i64 %inc155, ptr %nextfree154, align 8, !dbg !473, !tbaa !143
  %arrayidx156 = getelementptr inbounds %struct.Nodecount_tag, ptr %144, i64 %146, !dbg !473
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx156, ptr align 8 %child, i64 40, i1 false), !dbg !473, !tbaa.struct !202
  %147 = load ptr, ptr %stack.addr, align 8, !dbg !488, !tbaa !115
  %maxsize157 = getelementptr inbounds %struct.GtStackNodecount, ptr %147, i32 0, i32 1, !dbg !488
  %148 = load i64, ptr %maxsize157, align 8, !dbg !488, !tbaa !144
  %149 = load ptr, ptr %stack.addr, align 8, !dbg !488, !tbaa !115
  %nextfree158 = getelementptr inbounds %struct.GtStackNodecount, ptr %149, i32 0, i32 2, !dbg !488
  %150 = load i64, ptr %nextfree158, align 8, !dbg !488, !tbaa !143
  %cmp159 = icmp ult i64 %148, %150, !dbg !488
  br i1 %cmp159, label %if.then161, label %if.end164, !dbg !473

if.then161:                                       ; preds = %if.end152
  %151 = load ptr, ptr %stack.addr, align 8, !dbg !490, !tbaa !115
  %nextfree162 = getelementptr inbounds %struct.GtStackNodecount, ptr %151, i32 0, i32 2, !dbg !490
  %152 = load i64, ptr %nextfree162, align 8, !dbg !490, !tbaa !143
  %153 = load ptr, ptr %stack.addr, align 8, !dbg !490, !tbaa !115
  %maxsize163 = getelementptr inbounds %struct.GtStackNodecount, ptr %153, i32 0, i32 1, !dbg !490
  store i64 %152, ptr %maxsize163, align 8, !dbg !490, !tbaa !144
  br label %if.end164, !dbg !490

if.end164:                                        ; preds = %if.then161, %if.end152
  %154 = load i32, ptr %offset, align 4, !dbg !492, !tbaa !123
  %inc165 = add i32 %154, 1, !dbg !492
  store i32 %inc165, ptr %offset, align 4, !dbg !492, !tbaa !123
  %upper166 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 3, !dbg !493
  %155 = load i64, ptr %upper166, align 8, !dbg !493, !tbaa !170
  %lower167 = getelementptr inbounds %struct.Nodecount_tag, ptr %child, i32 0, i32 2, !dbg !494
  %156 = load i64, ptr %lower167, align 8, !dbg !494, !tbaa !163
  %sub168 = sub i64 %155, %156, !dbg !495
  %157 = load i64, ptr %num_special, align 8, !dbg !496, !tbaa !120
  %sub169 = sub i64 %157, %sub168, !dbg !496
  store i64 %sub169, ptr %num_special, align 8, !dbg !496, !tbaa !120
  br label %if.end170

if.end170:                                        ; preds = %if.end164, %if.then94
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then85
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.end78
  br label %for.inc173, !dbg !497

for.inc173:                                       ; preds = %if.end172
  %158 = load i64, ptr %idx, align 8, !dbg !498, !tbaa !120
  %inc174 = add i64 %158, 1, !dbg !498
  store i64 %inc174, ptr %idx, align 8, !dbg !498, !tbaa !120
  br label %for.cond, !dbg !499, !llvm.loop !500

for.end175:                                       ; preds = %for.cond
  %159 = load i64, ptr %num_special, align 8, !dbg !502, !tbaa !120
  %160 = load ptr, ptr %parent.addr, align 8, !dbg !503, !tbaa !115
  %leaves176 = getelementptr inbounds %struct.Nodecount_tag, ptr %160, i32 0, i32 0, !dbg !504
  %161 = load i64, ptr %leaves176, align 8, !dbg !505, !tbaa !173
  %add177 = add i64 %161, %159, !dbg !505
  store i64 %add177, ptr %leaves176, align 8, !dbg !505, !tbaa !173
  call void @llvm.lifetime.end.p0(i64 40, ptr %child) #6, !dbg !506
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #6, !dbg !506
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_special) #6, !dbg !506
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #6, !dbg !506
  call void @llvm.lifetime.end.p0(i64 8, ptr %rangesize) #6, !dbg !506
  ret void, !dbg !506
}

declare !dbg !507 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !510 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !573 void @abort() #4

declare !dbg !577 i64 @gt_bwtrangesplitallwithoutspecial(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!33}
!llvm.module.flags = !{!41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/match/pck-count-nodes.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "b50e495b28e6cfa2c856283afda0af95")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 28)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 43)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 297)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 168, elements: !26)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !{!27}
!27 = !DISubrange(count: 21)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 34)
!33 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !34, globals: !40, splitDebugInlining: false, nameTableKind: None)
!34 = !{!35, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !36, line: 83, baseType: !37)
!36 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !{!0, !7, !12, !17, !22, !28}
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 8, !"PIC Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 2}
!46 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!47 = distinct !DISubprogram(name: "gt_pck_count_nodes_dfs", scope: !2, file: !2, line: 110, type: !48, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !55)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !35, !39}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FMindex", file: !53, line: 30, baseType: !54)
!53 = !DIFile(filename: "src/match/eis-voiditf.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "28c22f98c48c01d2533a10e2c5982f6c")
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "FMindex", file: !53, line: 30, flags: DIFlagFwdDecl)
!55 = !{!56, !57, !58, !59, !91, !92, !93, !100, !102, !103, !106, !111, !112}
!56 = !DILocalVariable(name: "index", arg: 1, scope: !47, file: !2, line: 110, type: !50)
!57 = !DILocalVariable(name: "totallength", arg: 2, scope: !47, file: !2, line: 111, type: !35)
!58 = !DILocalVariable(name: "numofchars", arg: 3, scope: !47, file: !2, line: 112, type: !39)
!59 = !DILocalVariable(name: "stack", scope: !47, file: !2, line: 114, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStackNodecount", file: !61, line: 33, baseType: !62)
!61 = !DIFile(filename: "src/match/pck-count-nodes.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "6342c489046b02a849c9fe58175b776b")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 33, size: 82368, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !84, !86}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !62, file: !61, line: 33, baseType: !35, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !62, file: !61, line: 33, baseType: !35, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !62, file: !61, line: 33, baseType: !35, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "staticsize", scope: !62, file: !61, line: 33, baseType: !35, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sizeincrement", scope: !62, file: !61, line: 33, baseType: !35, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "staticspace", scope: !62, file: !61, line: 33, baseType: !70, size: 81920, offset: 320)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 81920, elements: !82)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "Nodecount", file: !61, line: 31, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Nodecount_tag", file: !61, line: 27, size: 320, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !81}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "leaves", scope: !72, file: !61, line: 28, baseType: !35, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "branching", scope: !72, file: !61, line: 28, baseType: !35, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !72, file: !61, line: 28, baseType: !35, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !72, file: !61, line: 28, baseType: !35, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "parentOffset", scope: !72, file: !61, line: 29, baseType: !39, size: 32, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !72, file: !61, line: 30, baseType: !80, size: 8, offset: 288)
!80 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "on_branch", scope: !72, file: !61, line: 30, baseType: !80, size: 8, offset: 296)
!82 = !{!83}
!83 = !DISubrange(count: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !62, file: !61, line: 33, baseType: !85, size: 64, offset: 82240)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "initialiseelement", scope: !62, file: !61, line: 33, baseType: !87, size: 64, offset: 82304)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !38}
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DILocalVariable(name: "root", scope: !47, file: !2, line: 115, type: !71)
!92 = !DILocalVariable(name: "current", scope: !47, file: !2, line: 116, type: !85)
!93 = !DILocalVariable(name: "tmpmbtab", scope: !47, file: !2, line: 117, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbtab", file: !53, line: 124, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 121, size: 128, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "lowerbound", scope: !96, file: !53, line: 123, baseType: !35, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "upperbound", scope: !96, file: !53, line: 123, baseType: !35, size: 64, offset: 64)
!100 = !DILocalVariable(name: "rangeOccs", scope: !47, file: !2, line: 118, type: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!102 = !DILocalVariable(name: "resize", scope: !47, file: !2, line: 119, type: !35)
!103 = !DILocalVariable(name: "stackidx", scope: !104, file: !2, line: 122, type: !35)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 122, column: 3)
!105 = distinct !DILexicalBlock(scope: !47, file: !2, line: 122, column: 3)
!106 = !DILocalVariable(name: "sizeoftype", scope: !107, file: !2, line: 134, type: !109)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 134, column: 3)
!108 = distinct !DILexicalBlock(scope: !47, file: !2, line: 134, column: 3)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 70, baseType: !37)
!110 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!111 = !DILocalVariable(name: "allocsize", scope: !107, file: !2, line: 134, type: !109)
!112 = !DILocalVariable(name: "stackidx", scope: !113, file: !2, line: 134, type: !35)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 134, column: 3)
!114 = distinct !DILexicalBlock(scope: !107, file: !2, line: 134, column: 3)
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !DILocation(line: 110, column: 44, scope: !47)
!120 = !{!121, !121, i64 0}
!121 = !{!"long", !117, i64 0}
!122 = !DILocation(line: 111, column: 33, scope: !47)
!123 = !{!124, !124, i64 0}
!124 = !{!"int", !117, i64 0}
!125 = !DILocation(line: 112, column: 38, scope: !47)
!126 = !DILocation(line: 114, column: 3, scope: !47)
!127 = !DILocation(line: 114, column: 20, scope: !47)
!128 = !DILocation(line: 115, column: 3, scope: !47)
!129 = !DILocation(line: 115, column: 13, scope: !47)
!130 = !DILocation(line: 116, column: 3, scope: !47)
!131 = !DILocation(line: 116, column: 14, scope: !47)
!132 = !DILocation(line: 117, column: 3, scope: !47)
!133 = !DILocation(line: 117, column: 10, scope: !47)
!134 = !DILocation(line: 118, column: 3, scope: !47)
!135 = !DILocation(line: 118, column: 12, scope: !47)
!136 = !DILocation(line: 119, column: 3, scope: !47)
!137 = !DILocation(line: 119, column: 11, scope: !47)
!138 = !DILocation(line: 122, column: 3, scope: !47)
!139 = !{!140, !121, i64 24}
!140 = !{!"", !121, i64 0, !121, i64 8, !121, i64 16, !121, i64 24, !121, i64 32, !117, i64 40, !116, i64 10280, !116, i64 10288}
!141 = !{!140, !121, i64 32}
!142 = !{!140, !121, i64 0}
!143 = !{!140, !121, i64 16}
!144 = !{!140, !121, i64 8}
!145 = !{!140, !116, i64 10280}
!146 = !{!140, !116, i64 10288}
!147 = !DILocation(line: 122, column: 3, scope: !105)
!148 = !DILocation(line: 122, column: 3, scope: !104)
!149 = !DILocation(line: 122, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !104, file: !2, line: 122, column: 3)
!151 = !DILocation(line: 122, column: 3, scope: !152)
!152 = distinct !DILexicalBlock(scope: !150, file: !2, line: 122, column: 3)
!153 = !DILocation(line: 122, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !2, line: 122, column: 3)
!155 = distinct !{!155, !149, !149, !156}
!156 = !{!"llvm.loop.mustprogress"}
!157 = !DILocation(line: 123, column: 15, scope: !47)
!158 = !DILocation(line: 123, column: 13, scope: !47)
!159 = !DILocation(line: 124, column: 14, scope: !47)
!160 = !DILocation(line: 124, column: 12, scope: !47)
!161 = !DILocation(line: 126, column: 8, scope: !47)
!162 = !DILocation(line: 126, column: 14, scope: !47)
!163 = !{!164, !121, i64 16}
!164 = !{!"Nodecount_tag", !121, i64 0, !121, i64 8, !121, i64 16, !121, i64 24, !124, i64 32, !165, i64 36, !165, i64 37}
!165 = !{!"_Bool", !117, i64 0}
!166 = !DILocation(line: 127, column: 16, scope: !47)
!167 = !DILocation(line: 127, column: 28, scope: !47)
!168 = !DILocation(line: 127, column: 8, scope: !47)
!169 = !DILocation(line: 127, column: 14, scope: !47)
!170 = !{!164, !121, i64 24}
!171 = !DILocation(line: 128, column: 8, scope: !47)
!172 = !DILocation(line: 128, column: 15, scope: !47)
!173 = !{!164, !121, i64 0}
!174 = !DILocation(line: 129, column: 8, scope: !47)
!175 = !DILocation(line: 129, column: 18, scope: !47)
!176 = !{!164, !121, i64 8}
!177 = !DILocation(line: 130, column: 8, scope: !47)
!178 = !DILocation(line: 130, column: 21, scope: !47)
!179 = !{!164, !124, i64 32}
!180 = !DILocation(line: 131, column: 8, scope: !47)
!181 = !DILocation(line: 131, column: 16, scope: !47)
!182 = !{!164, !165, i64 36}
!183 = !DILocation(line: 132, column: 8, scope: !47)
!184 = !DILocation(line: 132, column: 18, scope: !47)
!185 = !{!164, !165, i64 37}
!186 = !DILocation(line: 134, column: 3, scope: !108)
!187 = !DILocation(line: 134, column: 3, scope: !47)
!188 = !DILocation(line: 134, column: 3, scope: !107)
!189 = !DILocation(line: 134, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !107, file: !2, line: 134, column: 3)
!191 = !DILocation(line: 134, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !2, line: 134, column: 3)
!193 = !DILocation(line: 134, column: 3, scope: !114)
!194 = !DILocation(line: 134, column: 3, scope: !113)
!195 = !DILocation(line: 134, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !113, file: !2, line: 134, column: 3)
!197 = !DILocation(line: 134, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !196, file: !2, line: 134, column: 3)
!199 = !DILocation(line: 134, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !2, line: 134, column: 3)
!201 = distinct !{!201, !195, !195, !156}
!202 = !{i64 0, i64 8, !120, i64 8, i64 8, !120, i64 16, i64 8, !120, i64 24, i64 8, !120, i64 32, i64 4, !123, i64 36, i64 1, !203, i64 37, i64 1, !203}
!203 = !{!165, !165, i64 0}
!204 = !DILocation(line: 134, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !47, file: !2, line: 134, column: 3)
!206 = !DILocation(line: 134, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !2, line: 134, column: 3)
!208 = !DILocation(line: 136, column: 3, scope: !47)
!209 = !DILocation(line: 136, column: 11, scope: !47)
!210 = !DILocation(line: 136, column: 10, scope: !47)
!211 = !DILocation(line: 138, column: 23, scope: !212)
!212 = distinct !DILexicalBlock(scope: !47, file: !2, line: 137, column: 3)
!213 = !DILocation(line: 138, column: 35, scope: !212)
!214 = !DILocation(line: 138, column: 44, scope: !212)
!215 = !DILocation(line: 138, column: 17, scope: !212)
!216 = !DILocation(line: 138, column: 13, scope: !212)
!217 = !DILocation(line: 139, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !212, file: !2, line: 139, column: 9)
!219 = !DILocation(line: 139, column: 18, scope: !218)
!220 = !{i8 0, i8 2}
!221 = !{}
!222 = !DILocation(line: 139, column: 9, scope: !212)
!223 = !DILocation(line: 141, column: 19, scope: !224)
!224 = distinct !DILexicalBlock(scope: !218, file: !2, line: 140, column: 5)
!225 = !DILocation(line: 141, column: 15, scope: !224)
!226 = !DILocation(line: 142, column: 10, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !2, line: 142, column: 10)
!228 = !DILocation(line: 142, column: 10, scope: !224)
!229 = !DILocation(line: 146, column: 12, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !2, line: 143, column: 7)
!231 = !DILocation(line: 146, column: 21, scope: !230)
!232 = !DILocation(line: 146, column: 32, scope: !230)
!233 = !DILocation(line: 146, column: 41, scope: !230)
!234 = !DILocation(line: 145, column: 9, scope: !230)
!235 = !DILocation(line: 147, column: 7, scope: !230)
!236 = !DILocation(line: 150, column: 36, scope: !237)
!237 = distinct !DILexicalBlock(scope: !227, file: !2, line: 149, column: 7)
!238 = !DILocation(line: 150, column: 9, scope: !237)
!239 = !DILocation(line: 152, column: 5, scope: !224)
!240 = !DILocation(line: 155, column: 28, scope: !241)
!241 = distinct !DILexicalBlock(scope: !218, file: !2, line: 154, column: 5)
!242 = !DILocation(line: 155, column: 35, scope: !241)
!243 = !DILocation(line: 156, column: 22, scope: !241)
!244 = !DILocation(line: 156, column: 32, scope: !241)
!245 = !DILocation(line: 156, column: 43, scope: !241)
!246 = !DILocation(line: 155, column: 7, scope: !241)
!247 = !DILocation(line: 157, column: 7, scope: !241)
!248 = !DILocation(line: 157, column: 16, scope: !241)
!249 = !DILocation(line: 157, column: 24, scope: !241)
!250 = distinct !{!250, !208, !251, !156}
!251 = !DILocation(line: 159, column: 3, scope: !47)
!252 = !DILocation(line: 160, column: 3, scope: !47)
!253 = !DILocation(line: 161, column: 3, scope: !47)
!254 = !DILocation(line: 162, column: 3, scope: !255)
!255 = distinct !DILexicalBlock(scope: !47, file: !2, line: 162, column: 3)
!256 = !DILocation(line: 162, column: 3, scope: !47)
!257 = !DILocation(line: 162, column: 3, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !2, line: 162, column: 3)
!259 = !DILocation(line: 163, column: 1, scope: !47)
!260 = !DISubprogram(name: "gt_malloc_mem", scope: !261, file: !261, line: 56, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!262 = !DISubroutineType(types: !263)
!263 = !{!38, !109, !264, !90}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!265 = !DISubprogram(name: "gt_realloc_mem", scope: !261, file: !261, line: 69, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{!38, !38, !109, !264, !90}
!268 = !DISubprogram(name: "gt_log_log", scope: !269, file: !269, line: 36, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIFile(filename: "src/core/log_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f7489f6cc14a3d4074f12f5a7e69a42f")
!270 = !DISubroutineType(types: !271)
!271 = !{null, !264, null}
!272 = distinct !DISubprogram(name: "process_count_node", scope: !2, file: !2, line: 100, type: !273, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !276)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275, !85}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "stack", arg: 1, scope: !272, file: !2, line: 100, type: !275)
!278 = !DILocalVariable(name: "current", arg: 2, scope: !272, file: !2, line: 101, type: !85)
!279 = !DILocalVariable(name: "parent", scope: !272, file: !2, line: 103, type: !85)
!280 = !DILocation(line: 100, column: 50, scope: !272)
!281 = !DILocation(line: 101, column: 37, scope: !272)
!282 = !DILocation(line: 103, column: 3, scope: !272)
!283 = !DILocation(line: 103, column: 14, scope: !272)
!284 = !DILocation(line: 105, column: 14, scope: !272)
!285 = !DILocation(line: 105, column: 21, scope: !272)
!286 = !DILocation(line: 105, column: 27, scope: !272)
!287 = !DILocation(line: 105, column: 34, scope: !272)
!288 = !DILocation(line: 105, column: 45, scope: !272)
!289 = !DILocation(line: 105, column: 54, scope: !272)
!290 = !DILocation(line: 105, column: 43, scope: !272)
!291 = !DILocation(line: 105, column: 10, scope: !272)
!292 = !DILocation(line: 106, column: 21, scope: !272)
!293 = !DILocation(line: 106, column: 30, scope: !272)
!294 = !DILocation(line: 106, column: 3, scope: !272)
!295 = !DILocation(line: 106, column: 11, scope: !272)
!296 = !DILocation(line: 106, column: 18, scope: !272)
!297 = !DILocation(line: 107, column: 24, scope: !272)
!298 = !DILocation(line: 107, column: 33, scope: !272)
!299 = !DILocation(line: 107, column: 3, scope: !272)
!300 = !DILocation(line: 107, column: 11, scope: !272)
!301 = !DILocation(line: 107, column: 21, scope: !272)
!302 = !DILocation(line: 108, column: 1, scope: !272)
!303 = distinct !DISubprogram(name: "visit_count_children", scope: !2, file: !2, line: 32, type: !304, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !33, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !50, !85, !275, !94, !101, !39}
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !326, !327, !330, !338, !339}
!307 = !DILocalVariable(name: "index", arg: 1, scope: !303, file: !2, line: 32, type: !50)
!308 = !DILocalVariable(name: "parent", arg: 2, scope: !303, file: !2, line: 33, type: !85)
!309 = !DILocalVariable(name: "stack", arg: 3, scope: !303, file: !2, line: 34, type: !275)
!310 = !DILocalVariable(name: "tmpmbtab", arg: 4, scope: !303, file: !2, line: 35, type: !94)
!311 = !DILocalVariable(name: "rangeOccs", arg: 5, scope: !303, file: !2, line: 36, type: !101)
!312 = !DILocalVariable(name: "numofchars", arg: 6, scope: !303, file: !2, line: 37, type: !39)
!313 = !DILocalVariable(name: "rangesize", scope: !303, file: !2, line: 39, type: !35)
!314 = !DILocalVariable(name: "idx", scope: !303, file: !2, line: 39, type: !35)
!315 = !DILocalVariable(name: "num_special", scope: !303, file: !2, line: 39, type: !35)
!316 = !DILocalVariable(name: "offset", scope: !303, file: !2, line: 40, type: !39)
!317 = !DILocalVariable(name: "child", scope: !303, file: !2, line: 41, type: !71)
!318 = !DILocalVariable(name: "sizeoftype", scope: !319, file: !2, line: 69, type: !109)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 69, column: 7)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 69, column: 7)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 65, column: 5)
!322 = distinct !DILexicalBlock(scope: !323, file: !2, line: 64, column: 9)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 54, column: 3)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 53, column: 3)
!325 = distinct !DILexicalBlock(scope: !303, file: !2, line: 53, column: 3)
!326 = !DILocalVariable(name: "allocsize", scope: !319, file: !2, line: 69, type: !109)
!327 = !DILocalVariable(name: "stackidx", scope: !328, file: !2, line: 69, type: !35)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 69, column: 7)
!329 = distinct !DILexicalBlock(scope: !319, file: !2, line: 69, column: 7)
!330 = !DILocalVariable(name: "sizeoftype", scope: !331, file: !2, line: 90, type: !109)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 90, column: 11)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 90, column: 11)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 89, column: 9)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 84, column: 13)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 83, column: 7)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 76, column: 11)
!337 = distinct !DILexicalBlock(scope: !322, file: !2, line: 74, column: 5)
!338 = !DILocalVariable(name: "allocsize", scope: !331, file: !2, line: 90, type: !109)
!339 = !DILocalVariable(name: "stackidx", scope: !340, file: !2, line: 90, type: !35)
!340 = distinct !DILexicalBlock(scope: !341, file: !2, line: 90, column: 11)
!341 = distinct !DILexicalBlock(scope: !331, file: !2, line: 90, column: 11)
!342 = !DILocation(line: 32, column: 49, scope: !303)
!343 = !DILocation(line: 33, column: 39, scope: !303)
!344 = !DILocation(line: 34, column: 46, scope: !303)
!345 = !DILocation(line: 35, column: 35, scope: !303)
!346 = !DILocation(line: 36, column: 37, scope: !303)
!347 = !DILocation(line: 37, column: 51, scope: !303)
!348 = !DILocation(line: 39, column: 3, scope: !303)
!349 = !DILocation(line: 39, column: 11, scope: !303)
!350 = !DILocation(line: 39, column: 22, scope: !303)
!351 = !DILocation(line: 39, column: 27, scope: !303)
!352 = !DILocation(line: 40, column: 3, scope: !303)
!353 = !DILocation(line: 40, column: 16, scope: !303)
!354 = !DILocation(line: 41, column: 3, scope: !303)
!355 = !DILocation(line: 41, column: 13, scope: !303)
!356 = !DILocation(line: 43, column: 3, scope: !303)
!357 = !DILocation(line: 43, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 43, column: 3)
!359 = distinct !DILexicalBlock(scope: !303, file: !2, line: 43, column: 3)
!360 = !DILocation(line: 43, column: 3, scope: !359)
!361 = !DILocation(line: 43, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !2, line: 43, column: 3)
!363 = !DILocation(line: 44, column: 49, scope: !303)
!364 = !DILocation(line: 45, column: 46, scope: !303)
!365 = !DILocation(line: 46, column: 46, scope: !303)
!366 = !DILocation(line: 47, column: 46, scope: !303)
!367 = !DILocation(line: 47, column: 54, scope: !303)
!368 = !DILocation(line: 48, column: 46, scope: !303)
!369 = !DILocation(line: 48, column: 54, scope: !303)
!370 = !DILocation(line: 44, column: 15, scope: !303)
!371 = !DILocation(line: 44, column: 13, scope: !303)
!372 = !DILocation(line: 49, column: 3, scope: !303)
!373 = !DILocation(line: 49, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 49, column: 3)
!375 = distinct !DILexicalBlock(scope: !303, file: !2, line: 49, column: 3)
!376 = !DILocation(line: 49, column: 3, scope: !375)
!377 = !DILocation(line: 49, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !2, line: 49, column: 3)
!379 = !DILocation(line: 51, column: 10, scope: !303)
!380 = !DILocation(line: 52, column: 17, scope: !303)
!381 = !DILocation(line: 52, column: 25, scope: !303)
!382 = !DILocation(line: 52, column: 33, scope: !303)
!383 = !DILocation(line: 52, column: 41, scope: !303)
!384 = !DILocation(line: 52, column: 31, scope: !303)
!385 = !DILocation(line: 52, column: 15, scope: !303)
!386 = !DILocation(line: 53, column: 12, scope: !325)
!387 = !DILocation(line: 53, column: 8, scope: !325)
!388 = !DILocation(line: 53, column: 17, scope: !324)
!389 = !DILocation(line: 53, column: 23, scope: !324)
!390 = !DILocation(line: 53, column: 21, scope: !324)
!391 = !DILocation(line: 53, column: 3, scope: !325)
!392 = !DILocation(line: 55, column: 19, scope: !323)
!393 = !DILocation(line: 55, column: 28, scope: !323)
!394 = !DILocation(line: 55, column: 33, scope: !323)
!395 = !{!396, !121, i64 0}
!396 = !{!"", !121, i64 0, !121, i64 8}
!397 = !DILocation(line: 55, column: 11, scope: !323)
!398 = !DILocation(line: 55, column: 17, scope: !323)
!399 = !DILocation(line: 56, column: 19, scope: !323)
!400 = !DILocation(line: 56, column: 28, scope: !323)
!401 = !DILocation(line: 56, column: 33, scope: !323)
!402 = !{!396, !121, i64 8}
!403 = !DILocation(line: 56, column: 11, scope: !323)
!404 = !DILocation(line: 56, column: 17, scope: !323)
!405 = !DILocation(line: 57, column: 11, scope: !323)
!406 = !DILocation(line: 57, column: 18, scope: !323)
!407 = !DILocation(line: 58, column: 11, scope: !323)
!408 = !DILocation(line: 58, column: 21, scope: !323)
!409 = !DILocation(line: 59, column: 26, scope: !323)
!410 = !DILocation(line: 59, column: 33, scope: !323)
!411 = !DILocation(line: 59, column: 11, scope: !323)
!412 = !DILocation(line: 59, column: 24, scope: !323)
!413 = !DILocation(line: 60, column: 11, scope: !323)
!414 = !DILocation(line: 60, column: 19, scope: !323)
!415 = !DILocation(line: 61, column: 11, scope: !323)
!416 = !DILocation(line: 61, column: 21, scope: !323)
!417 = !DILocation(line: 64, column: 15, scope: !322)
!418 = !DILocation(line: 64, column: 29, scope: !322)
!419 = !DILocation(line: 64, column: 21, scope: !322)
!420 = !DILocation(line: 64, column: 38, scope: !322)
!421 = !DILocation(line: 64, column: 46, scope: !322)
!422 = !DILocation(line: 64, column: 54, scope: !322)
!423 = !DILocation(line: 64, column: 62, scope: !322)
!424 = !DILocation(line: 64, column: 52, scope: !322)
!425 = !DILocation(line: 64, column: 35, scope: !322)
!426 = !DILocation(line: 64, column: 9, scope: !323)
!427 = !DILocation(line: 67, column: 13, scope: !321)
!428 = !DILocation(line: 67, column: 23, scope: !321)
!429 = !DILocation(line: 68, column: 7, scope: !321)
!430 = !DILocation(line: 68, column: 15, scope: !321)
!431 = !DILocation(line: 68, column: 24, scope: !321)
!432 = !DILocation(line: 69, column: 7, scope: !320)
!433 = !DILocation(line: 69, column: 7, scope: !321)
!434 = !DILocation(line: 69, column: 7, scope: !319)
!435 = !DILocation(line: 69, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !319, file: !2, line: 69, column: 7)
!437 = !DILocation(line: 69, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !2, line: 69, column: 7)
!439 = !DILocation(line: 69, column: 7, scope: !329)
!440 = !DILocation(line: 69, column: 7, scope: !328)
!441 = !DILocation(line: 69, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !328, file: !2, line: 69, column: 7)
!443 = !DILocation(line: 69, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !442, file: !2, line: 69, column: 7)
!445 = !DILocation(line: 69, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !2, line: 69, column: 7)
!447 = distinct !{!447, !441, !441, !156}
!448 = !DILocation(line: 69, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !321, file: !2, line: 69, column: 7)
!450 = !DILocation(line: 69, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !2, line: 69, column: 7)
!452 = !DILocation(line: 70, column: 19, scope: !321)
!453 = !DILocation(line: 71, column: 13, scope: !321)
!454 = !DILocation(line: 72, column: 5, scope: !321)
!455 = !DILocation(line: 76, column: 17, scope: !336)
!456 = !DILocation(line: 76, column: 23, scope: !336)
!457 = !DILocation(line: 76, column: 36, scope: !336)
!458 = !DILocation(line: 76, column: 27, scope: !336)
!459 = !DILocation(line: 76, column: 11, scope: !337)
!460 = !DILocation(line: 78, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !336, file: !2, line: 77, column: 7)
!462 = !DILocation(line: 78, column: 17, scope: !461)
!463 = !DILocation(line: 78, column: 23, scope: !461)
!464 = !DILocation(line: 79, column: 20, scope: !461)
!465 = !DILocation(line: 80, column: 7, scope: !461)
!466 = !DILocation(line: 84, column: 19, scope: !334)
!467 = !DILocation(line: 84, column: 34, scope: !334)
!468 = !DILocation(line: 84, column: 25, scope: !334)
!469 = !DILocation(line: 84, column: 13, scope: !335)
!470 = !DILocation(line: 87, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !334, file: !2, line: 85, column: 9)
!472 = !DILocation(line: 90, column: 11, scope: !332)
!473 = !DILocation(line: 90, column: 11, scope: !333)
!474 = !DILocation(line: 90, column: 11, scope: !331)
!475 = !DILocation(line: 90, column: 11, scope: !476)
!476 = distinct !DILexicalBlock(scope: !331, file: !2, line: 90, column: 11)
!477 = !DILocation(line: 90, column: 11, scope: !478)
!478 = distinct !DILexicalBlock(scope: !476, file: !2, line: 90, column: 11)
!479 = !DILocation(line: 90, column: 11, scope: !341)
!480 = !DILocation(line: 90, column: 11, scope: !340)
!481 = !DILocation(line: 90, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !340, file: !2, line: 90, column: 11)
!483 = !DILocation(line: 90, column: 11, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !2, line: 90, column: 11)
!485 = !DILocation(line: 90, column: 11, scope: !486)
!486 = distinct !DILexicalBlock(scope: !484, file: !2, line: 90, column: 11)
!487 = distinct !{!487, !481, !481, !156}
!488 = !DILocation(line: 90, column: 11, scope: !489)
!489 = distinct !DILexicalBlock(scope: !333, file: !2, line: 90, column: 11)
!490 = !DILocation(line: 90, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !2, line: 90, column: 11)
!492 = !DILocation(line: 91, column: 17, scope: !333)
!493 = !DILocation(line: 92, column: 33, scope: !333)
!494 = !DILocation(line: 92, column: 47, scope: !333)
!495 = !DILocation(line: 92, column: 39, scope: !333)
!496 = !DILocation(line: 92, column: 23, scope: !333)
!497 = !DILocation(line: 96, column: 3, scope: !323)
!498 = !DILocation(line: 53, column: 37, scope: !324)
!499 = !DILocation(line: 53, column: 3, scope: !324)
!500 = distinct !{!500, !391, !501, !156}
!501 = !DILocation(line: 96, column: 3, scope: !325)
!502 = !DILocation(line: 97, column: 21, scope: !303)
!503 = !DILocation(line: 97, column: 3, scope: !303)
!504 = !DILocation(line: 97, column: 11, scope: !303)
!505 = !DILocation(line: 97, column: 18, scope: !303)
!506 = !DILocation(line: 98, column: 1, scope: !303)
!507 = !DISubprogram(name: "gt_free_mem", scope: !261, file: !261, line: 75, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !38, !264, !90}
!510 = !DISubprogram(name: "fprintf", scope: !511, file: !511, line: 350, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!511 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!512 = !DISubroutineType(types: !513)
!513 = !{!90, !514, !572, null}
!514 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !517, line: 7, baseType: !518)
!517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !519, line: 49, size: 1728, elements: !520)
!519 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!520 = !{!521, !522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !537, !539, !540, !541, !545, !547, !549, !553, !556, !558, !561, !564, !565, !566, !567, !568}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !518, file: !519, line: 51, baseType: !90, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !518, file: !519, line: 54, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !518, file: !519, line: 55, baseType: !523, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !518, file: !519, line: 56, baseType: !523, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !518, file: !519, line: 57, baseType: !523, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !518, file: !519, line: 58, baseType: !523, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !518, file: !519, line: 59, baseType: !523, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !518, file: !519, line: 60, baseType: !523, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !518, file: !519, line: 61, baseType: !523, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !518, file: !519, line: 64, baseType: !523, size: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !518, file: !519, line: 65, baseType: !523, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !518, file: !519, line: 66, baseType: !523, size: 64, offset: 704)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !518, file: !519, line: 68, baseType: !535, size: 64, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !519, line: 36, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !518, file: !519, line: 70, baseType: !538, size: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !518, file: !519, line: 72, baseType: !90, size: 32, offset: 896)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !518, file: !519, line: 73, baseType: !90, size: 32, offset: 928)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !518, file: !519, line: 74, baseType: !542, size: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !543, line: 152, baseType: !544)
!543 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!544 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !518, file: !519, line: 77, baseType: !546, size: 16, offset: 1024)
!546 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !518, file: !519, line: 78, baseType: !548, size: 8, offset: 1040)
!548 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !518, file: !519, line: 79, baseType: !550, size: 8, offset: 1048)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 1)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !518, file: !519, line: 81, baseType: !554, size: 64, offset: 1088)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !519, line: 43, baseType: null)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !518, file: !519, line: 89, baseType: !557, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !543, line: 153, baseType: !544)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !518, file: !519, line: 91, baseType: !559, size: 64, offset: 1216)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !519, line: 37, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !518, file: !519, line: 92, baseType: !562, size: 64, offset: 1280)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !519, line: 38, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !518, file: !519, line: 93, baseType: !538, size: 64, offset: 1344)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !518, file: !519, line: 94, baseType: !38, size: 64, offset: 1408)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !518, file: !519, line: 95, baseType: !109, size: 64, offset: 1472)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !518, file: !519, line: 96, baseType: !90, size: 32, offset: 1536)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !518, file: !519, line: 98, baseType: !569, size: 160, offset: 1568)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 20)
!572 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!573 = !DISubprogram(name: "abort", scope: !574, file: !574, line: 598, type: !575, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!574 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!575 = !DISubroutineType(types: !576)
!576 = !{null}
!577 = !DISubprogram(name: "gt_bwtrangesplitallwithoutspecial", scope: !53, file: !53, line: 126, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubroutineType(types: !579)
!579 = !{!35, !94, !101, !50, !35, !35}

; ModuleID = 'samples/428.bc'
source_filename = ".././../src/md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@update.buffer = internal global [64 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [18 x i8] c".././../src/md5.c\00", align 1
@PADDING = internal global <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @MD5_compute(ptr noundef %input, i32 noundef %input_len) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %state = alloca [4 x i32], align 16
  %count = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store i32 %input_len, ptr %input_len.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %state) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %arrayidx = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 1
  store i32 0, ptr %arrayidx, align 4, !tbaa !9
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 0
  store i32 0, ptr %arrayidx1, align 4, !tbaa !9
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 0
  store i32 1732584193, ptr %arrayidx2, align 16, !tbaa !9
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 1
  store i32 -271733879, ptr %arrayidx3, align 4, !tbaa !9
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 2
  store i32 -1732584194, ptr %arrayidx4, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 3
  store i32 271733878, ptr %arrayidx5, align 4, !tbaa !9
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !9
  %add = add nsw i32 %1, 16
  %2 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %add, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 0
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  call void @update(ptr noundef %arraydecay, ptr noundef %arraydecay6, ptr noundef %3, i32 noundef 16)
  %4 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 16
  store ptr %add.ptr, ptr %p, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !9
  %add7 = add nsw i32 %5, 16
  store i32 %add7, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %7 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %cmp8 = icmp slt i32 %6, %7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %arraydecay9 = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 0
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %9 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %sub = sub nsw i32 %9, %10
  call void @update(ptr noundef %arraydecay9, ptr noundef %arraydecay10, ptr noundef %8, i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %arraydecay11 = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [4 x i32], ptr %state, i64 0, i64 0
  %call = call ptr @finish(ptr noundef %arraydecay11, ptr noundef %arraydecay12)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %state) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  ret ptr %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @update(ptr noundef %count, ptr noundef %state, ptr noundef %input, i32 noundef %input_len) #0 {
entry:
  %count.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %input_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %part_len = alloca i32, align 4
  store ptr %count, ptr %count.addr, align 8, !tbaa !5
  store ptr %state, ptr %state.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store i32 %input_len, ptr %input_len.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %part_len) #4
  %0 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %shr = lshr i32 %1, 3
  %and = and i32 %shr, 63
  store i32 %and, ptr %index, align 4, !tbaa !9
  %2 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %shl = shl i32 %2, 3
  %3 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !9
  %add = add i32 %4, %shl
  store i32 %add, ptr %arrayidx1, align 4, !tbaa !9
  %5 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %shl2 = shl i32 %5, 3
  %cmp = icmp ult i32 %add, %shl2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx3, align 4, !tbaa !9
  %inc = add i32 %7, 1
  store i32 %inc, ptr %arrayidx3, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %shr4 = lshr i32 %8, 29
  %9 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 1
  %10 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  %add6 = add i32 %10, %shr4
  store i32 %add6, ptr %arrayidx5, align 4, !tbaa !9
  %11 = load i32, ptr %index, align 4, !tbaa !9
  %sub = sub i32 64, %11
  store i32 %sub, ptr %part_len, align 4, !tbaa !9
  %12 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %13 = load i32, ptr %part_len, align 4, !tbaa !9
  %cmp7 = icmp uge i32 %12, %13
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %14 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom = zext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [64 x i8], ptr @update.buffer, i64 0, i64 %idxprom
  %15 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %16 = load i32, ptr %part_len, align 4, !tbaa !9
  %conv = zext i32 %16 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx9, ptr align 1 %15, i64 %conv, i1 false)
  %17 = load ptr, ptr %state.addr, align 8, !tbaa !5
  call void @transform(ptr noundef %17, ptr noundef @update.buffer)
  %18 = load i32, ptr %part_len, align 4, !tbaa !9
  store i32 %18, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then8
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %add10 = add i32 %19, 63
  %20 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %cmp11 = icmp ult i32 %add10, %20
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom13 = zext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %22, i64 %idxprom13
  call void @transform(ptr noundef %21, ptr noundef %arrayidx14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !tbaa !9
  %add15 = add i32 %24, 64
  store i32 %add15, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %index, align 4, !tbaa !9
  br label %if.end16

if.else:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %if.end16

if.end16:                                         ; preds = %if.else, %for.end
  %25 = load i32, ptr %index, align 4, !tbaa !9
  %idxprom17 = zext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [64 x i8], ptr @update.buffer, i64 0, i64 %idxprom17
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom19 = zext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %26, i64 %idxprom19
  %28 = load i32, ptr %input_len.addr, align 4, !tbaa !9
  %29 = load i32, ptr %i, align 4, !tbaa !9
  %sub21 = sub i32 %28, %29
  %conv22 = zext i32 %sub21 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx18, ptr align 1 %arrayidx20, i64 %conv22, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr %part_len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @finish(ptr noundef %count, ptr noundef %state) #0 {
entry:
  %count.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %digest = alloca ptr, align 8
  %bits = alloca [8 x i8], align 1
  %index = alloca i32, align 4
  %pad_len = alloca i32, align 4
  store ptr %count, ptr %count.addr, align 8, !tbaa !5
  store ptr %state, ptr %state.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %digest) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad_len) #4
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  %0 = load ptr, ptr %count.addr, align 8, !tbaa !5
  call void @encode(ptr noundef %arraydecay, ptr noundef %0, i32 noundef 8)
  %1 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %shr = lshr i32 %2, 3
  %and = and i32 %shr, 63
  store i32 %and, ptr %index, align 4, !tbaa !9
  %3 = load i32, ptr %index, align 4, !tbaa !9
  %cmp = icmp ult i32 %3, 56
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %index, align 4, !tbaa !9
  %sub = sub i32 56, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %index, align 4, !tbaa !9
  %sub1 = sub i32 120, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub1, %cond.false ]
  store i32 %cond, ptr %pad_len, align 4, !tbaa !9
  %6 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %8 = load i32, ptr %pad_len, align 4, !tbaa !9
  call void @update(ptr noundef %6, ptr noundef %7, ptr noundef @PADDING, i32 noundef %8)
  %9 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arraydecay2 = getelementptr inbounds [8 x i8], ptr %bits, i64 0, i64 0
  call void @update(ptr noundef %9, ptr noundef %10, ptr noundef %arraydecay2, i32 noundef 8)
  %call = call ptr @Mem_calloc(i64 noundef 16, i64 noundef 1, ptr noundef @.str.1, i32 noundef 244)
  store ptr %call, ptr %digest, align 8, !tbaa !5
  %11 = load ptr, ptr %digest, align 8, !tbaa !5
  %12 = load ptr, ptr %state.addr, align 8, !tbaa !5
  call void @encode(ptr noundef %11, ptr noundef %12, i32 noundef 16)
  %13 = load ptr, ptr %digest, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad_len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %digest) #4
  ret ptr %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @MD5_print(ptr noundef %fp, ptr noundef %digest) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %digest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %digest, ptr %digest.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !9
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %digest.addr, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %1, ptr noundef @.str, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

declare void @Filestring_put(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @transform(ptr noundef %state, ptr noundef %block) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %x = alloca [16 x i32], align 16
  store ptr %state, ptr %state.addr, align 8, !tbaa !5
  store ptr %block, ptr %block.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  %0 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %1, ptr %a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #4
  %2 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !9
  store i32 %3, ptr %b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  %4 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !9
  store i32 %5, ptr %c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #4
  %6 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 3
  %7 = load i32, ptr %arrayidx3, align 4, !tbaa !9
  store i32 %7, ptr %d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %x) #4
  %arraydecay = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0
  %8 = load ptr, ptr %block.addr, align 8, !tbaa !5
  call void @decode(ptr noundef %arraydecay, ptr noundef %8, i32 noundef 64)
  %9 = load i32, ptr %b, align 4, !tbaa !9
  %10 = load i32, ptr %c, align 4, !tbaa !9
  %and = and i32 %9, %10
  %11 = load i32, ptr %b, align 4, !tbaa !9
  %not = xor i32 %11, -1
  %12 = load i32, ptr %d, align 4, !tbaa !9
  %and4 = and i32 %not, %12
  %or = or i32 %and, %and4
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0
  %13 = load i32, ptr %arrayidx5, align 16, !tbaa !9
  %add = add i32 %or, %13
  %add6 = add i32 %add, -680876936
  %14 = load i32, ptr %a, align 4, !tbaa !9
  %add7 = add i32 %14, %add6
  store i32 %add7, ptr %a, align 4, !tbaa !9
  %15 = load i32, ptr %a, align 4, !tbaa !9
  %shl = shl i32 %15, 7
  %16 = load i32, ptr %a, align 4, !tbaa !9
  %shr = lshr i32 %16, 25
  %or8 = or i32 %shl, %shr
  store i32 %or8, ptr %a, align 4, !tbaa !9
  %17 = load i32, ptr %b, align 4, !tbaa !9
  %18 = load i32, ptr %a, align 4, !tbaa !9
  %add9 = add i32 %18, %17
  store i32 %add9, ptr %a, align 4, !tbaa !9
  %19 = load i32, ptr %a, align 4, !tbaa !9
  %20 = load i32, ptr %b, align 4, !tbaa !9
  %and10 = and i32 %19, %20
  %21 = load i32, ptr %a, align 4, !tbaa !9
  %not11 = xor i32 %21, -1
  %22 = load i32, ptr %c, align 4, !tbaa !9
  %and12 = and i32 %not11, %22
  %or13 = or i32 %and10, %and12
  %arrayidx14 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 1
  %23 = load i32, ptr %arrayidx14, align 4, !tbaa !9
  %add15 = add i32 %or13, %23
  %add16 = add i32 %add15, -389564586
  %24 = load i32, ptr %d, align 4, !tbaa !9
  %add17 = add i32 %24, %add16
  store i32 %add17, ptr %d, align 4, !tbaa !9
  %25 = load i32, ptr %d, align 4, !tbaa !9
  %shl18 = shl i32 %25, 12
  %26 = load i32, ptr %d, align 4, !tbaa !9
  %shr19 = lshr i32 %26, 20
  %or20 = or i32 %shl18, %shr19
  store i32 %or20, ptr %d, align 4, !tbaa !9
  %27 = load i32, ptr %a, align 4, !tbaa !9
  %28 = load i32, ptr %d, align 4, !tbaa !9
  %add21 = add i32 %28, %27
  store i32 %add21, ptr %d, align 4, !tbaa !9
  %29 = load i32, ptr %d, align 4, !tbaa !9
  %30 = load i32, ptr %a, align 4, !tbaa !9
  %and22 = and i32 %29, %30
  %31 = load i32, ptr %d, align 4, !tbaa !9
  %not23 = xor i32 %31, -1
  %32 = load i32, ptr %b, align 4, !tbaa !9
  %and24 = and i32 %not23, %32
  %or25 = or i32 %and22, %and24
  %arrayidx26 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 2
  %33 = load i32, ptr %arrayidx26, align 8, !tbaa !9
  %add27 = add i32 %or25, %33
  %add28 = add i32 %add27, 606105819
  %34 = load i32, ptr %c, align 4, !tbaa !9
  %add29 = add i32 %34, %add28
  store i32 %add29, ptr %c, align 4, !tbaa !9
  %35 = load i32, ptr %c, align 4, !tbaa !9
  %shl30 = shl i32 %35, 17
  %36 = load i32, ptr %c, align 4, !tbaa !9
  %shr31 = lshr i32 %36, 15
  %or32 = or i32 %shl30, %shr31
  store i32 %or32, ptr %c, align 4, !tbaa !9
  %37 = load i32, ptr %d, align 4, !tbaa !9
  %38 = load i32, ptr %c, align 4, !tbaa !9
  %add33 = add i32 %38, %37
  store i32 %add33, ptr %c, align 4, !tbaa !9
  %39 = load i32, ptr %c, align 4, !tbaa !9
  %40 = load i32, ptr %d, align 4, !tbaa !9
  %and34 = and i32 %39, %40
  %41 = load i32, ptr %c, align 4, !tbaa !9
  %not35 = xor i32 %41, -1
  %42 = load i32, ptr %a, align 4, !tbaa !9
  %and36 = and i32 %not35, %42
  %or37 = or i32 %and34, %and36
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 3
  %43 = load i32, ptr %arrayidx38, align 4, !tbaa !9
  %add39 = add i32 %or37, %43
  %add40 = add i32 %add39, -1044525330
  %44 = load i32, ptr %b, align 4, !tbaa !9
  %add41 = add i32 %44, %add40
  store i32 %add41, ptr %b, align 4, !tbaa !9
  %45 = load i32, ptr %b, align 4, !tbaa !9
  %shl42 = shl i32 %45, 22
  %46 = load i32, ptr %b, align 4, !tbaa !9
  %shr43 = lshr i32 %46, 10
  %or44 = or i32 %shl42, %shr43
  store i32 %or44, ptr %b, align 4, !tbaa !9
  %47 = load i32, ptr %c, align 4, !tbaa !9
  %48 = load i32, ptr %b, align 4, !tbaa !9
  %add45 = add i32 %48, %47
  store i32 %add45, ptr %b, align 4, !tbaa !9
  %49 = load i32, ptr %b, align 4, !tbaa !9
  %50 = load i32, ptr %c, align 4, !tbaa !9
  %and46 = and i32 %49, %50
  %51 = load i32, ptr %b, align 4, !tbaa !9
  %not47 = xor i32 %51, -1
  %52 = load i32, ptr %d, align 4, !tbaa !9
  %and48 = and i32 %not47, %52
  %or49 = or i32 %and46, %and48
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 4
  %53 = load i32, ptr %arrayidx50, align 16, !tbaa !9
  %add51 = add i32 %or49, %53
  %add52 = add i32 %add51, -176418897
  %54 = load i32, ptr %a, align 4, !tbaa !9
  %add53 = add i32 %54, %add52
  store i32 %add53, ptr %a, align 4, !tbaa !9
  %55 = load i32, ptr %a, align 4, !tbaa !9
  %shl54 = shl i32 %55, 7
  %56 = load i32, ptr %a, align 4, !tbaa !9
  %shr55 = lshr i32 %56, 25
  %or56 = or i32 %shl54, %shr55
  store i32 %or56, ptr %a, align 4, !tbaa !9
  %57 = load i32, ptr %b, align 4, !tbaa !9
  %58 = load i32, ptr %a, align 4, !tbaa !9
  %add57 = add i32 %58, %57
  store i32 %add57, ptr %a, align 4, !tbaa !9
  %59 = load i32, ptr %a, align 4, !tbaa !9
  %60 = load i32, ptr %b, align 4, !tbaa !9
  %and58 = and i32 %59, %60
  %61 = load i32, ptr %a, align 4, !tbaa !9
  %not59 = xor i32 %61, -1
  %62 = load i32, ptr %c, align 4, !tbaa !9
  %and60 = and i32 %not59, %62
  %or61 = or i32 %and58, %and60
  %arrayidx62 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 5
  %63 = load i32, ptr %arrayidx62, align 4, !tbaa !9
  %add63 = add i32 %or61, %63
  %add64 = add i32 %add63, 1200080426
  %64 = load i32, ptr %d, align 4, !tbaa !9
  %add65 = add i32 %64, %add64
  store i32 %add65, ptr %d, align 4, !tbaa !9
  %65 = load i32, ptr %d, align 4, !tbaa !9
  %shl66 = shl i32 %65, 12
  %66 = load i32, ptr %d, align 4, !tbaa !9
  %shr67 = lshr i32 %66, 20
  %or68 = or i32 %shl66, %shr67
  store i32 %or68, ptr %d, align 4, !tbaa !9
  %67 = load i32, ptr %a, align 4, !tbaa !9
  %68 = load i32, ptr %d, align 4, !tbaa !9
  %add69 = add i32 %68, %67
  store i32 %add69, ptr %d, align 4, !tbaa !9
  %69 = load i32, ptr %d, align 4, !tbaa !9
  %70 = load i32, ptr %a, align 4, !tbaa !9
  %and70 = and i32 %69, %70
  %71 = load i32, ptr %d, align 4, !tbaa !9
  %not71 = xor i32 %71, -1
  %72 = load i32, ptr %b, align 4, !tbaa !9
  %and72 = and i32 %not71, %72
  %or73 = or i32 %and70, %and72
  %arrayidx74 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 6
  %73 = load i32, ptr %arrayidx74, align 8, !tbaa !9
  %add75 = add i32 %or73, %73
  %add76 = add i32 %add75, -1473231341
  %74 = load i32, ptr %c, align 4, !tbaa !9
  %add77 = add i32 %74, %add76
  store i32 %add77, ptr %c, align 4, !tbaa !9
  %75 = load i32, ptr %c, align 4, !tbaa !9
  %shl78 = shl i32 %75, 17
  %76 = load i32, ptr %c, align 4, !tbaa !9
  %shr79 = lshr i32 %76, 15
  %or80 = or i32 %shl78, %shr79
  store i32 %or80, ptr %c, align 4, !tbaa !9
  %77 = load i32, ptr %d, align 4, !tbaa !9
  %78 = load i32, ptr %c, align 4, !tbaa !9
  %add81 = add i32 %78, %77
  store i32 %add81, ptr %c, align 4, !tbaa !9
  %79 = load i32, ptr %c, align 4, !tbaa !9
  %80 = load i32, ptr %d, align 4, !tbaa !9
  %and82 = and i32 %79, %80
  %81 = load i32, ptr %c, align 4, !tbaa !9
  %not83 = xor i32 %81, -1
  %82 = load i32, ptr %a, align 4, !tbaa !9
  %and84 = and i32 %not83, %82
  %or85 = or i32 %and82, %and84
  %arrayidx86 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 7
  %83 = load i32, ptr %arrayidx86, align 4, !tbaa !9
  %add87 = add i32 %or85, %83
  %add88 = add i32 %add87, -45705983
  %84 = load i32, ptr %b, align 4, !tbaa !9
  %add89 = add i32 %84, %add88
  store i32 %add89, ptr %b, align 4, !tbaa !9
  %85 = load i32, ptr %b, align 4, !tbaa !9
  %shl90 = shl i32 %85, 22
  %86 = load i32, ptr %b, align 4, !tbaa !9
  %shr91 = lshr i32 %86, 10
  %or92 = or i32 %shl90, %shr91
  store i32 %or92, ptr %b, align 4, !tbaa !9
  %87 = load i32, ptr %c, align 4, !tbaa !9
  %88 = load i32, ptr %b, align 4, !tbaa !9
  %add93 = add i32 %88, %87
  store i32 %add93, ptr %b, align 4, !tbaa !9
  %89 = load i32, ptr %b, align 4, !tbaa !9
  %90 = load i32, ptr %c, align 4, !tbaa !9
  %and94 = and i32 %89, %90
  %91 = load i32, ptr %b, align 4, !tbaa !9
  %not95 = xor i32 %91, -1
  %92 = load i32, ptr %d, align 4, !tbaa !9
  %and96 = and i32 %not95, %92
  %or97 = or i32 %and94, %and96
  %arrayidx98 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 8
  %93 = load i32, ptr %arrayidx98, align 16, !tbaa !9
  %add99 = add i32 %or97, %93
  %add100 = add i32 %add99, 1770035416
  %94 = load i32, ptr %a, align 4, !tbaa !9
  %add101 = add i32 %94, %add100
  store i32 %add101, ptr %a, align 4, !tbaa !9
  %95 = load i32, ptr %a, align 4, !tbaa !9
  %shl102 = shl i32 %95, 7
  %96 = load i32, ptr %a, align 4, !tbaa !9
  %shr103 = lshr i32 %96, 25
  %or104 = or i32 %shl102, %shr103
  store i32 %or104, ptr %a, align 4, !tbaa !9
  %97 = load i32, ptr %b, align 4, !tbaa !9
  %98 = load i32, ptr %a, align 4, !tbaa !9
  %add105 = add i32 %98, %97
  store i32 %add105, ptr %a, align 4, !tbaa !9
  %99 = load i32, ptr %a, align 4, !tbaa !9
  %100 = load i32, ptr %b, align 4, !tbaa !9
  %and106 = and i32 %99, %100
  %101 = load i32, ptr %a, align 4, !tbaa !9
  %not107 = xor i32 %101, -1
  %102 = load i32, ptr %c, align 4, !tbaa !9
  %and108 = and i32 %not107, %102
  %or109 = or i32 %and106, %and108
  %arrayidx110 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 9
  %103 = load i32, ptr %arrayidx110, align 4, !tbaa !9
  %add111 = add i32 %or109, %103
  %add112 = add i32 %add111, -1958414417
  %104 = load i32, ptr %d, align 4, !tbaa !9
  %add113 = add i32 %104, %add112
  store i32 %add113, ptr %d, align 4, !tbaa !9
  %105 = load i32, ptr %d, align 4, !tbaa !9
  %shl114 = shl i32 %105, 12
  %106 = load i32, ptr %d, align 4, !tbaa !9
  %shr115 = lshr i32 %106, 20
  %or116 = or i32 %shl114, %shr115
  store i32 %or116, ptr %d, align 4, !tbaa !9
  %107 = load i32, ptr %a, align 4, !tbaa !9
  %108 = load i32, ptr %d, align 4, !tbaa !9
  %add117 = add i32 %108, %107
  store i32 %add117, ptr %d, align 4, !tbaa !9
  %109 = load i32, ptr %d, align 4, !tbaa !9
  %110 = load i32, ptr %a, align 4, !tbaa !9
  %and118 = and i32 %109, %110
  %111 = load i32, ptr %d, align 4, !tbaa !9
  %not119 = xor i32 %111, -1
  %112 = load i32, ptr %b, align 4, !tbaa !9
  %and120 = and i32 %not119, %112
  %or121 = or i32 %and118, %and120
  %arrayidx122 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 10
  %113 = load i32, ptr %arrayidx122, align 8, !tbaa !9
  %add123 = add i32 %or121, %113
  %add124 = add i32 %add123, -42063
  %114 = load i32, ptr %c, align 4, !tbaa !9
  %add125 = add i32 %114, %add124
  store i32 %add125, ptr %c, align 4, !tbaa !9
  %115 = load i32, ptr %c, align 4, !tbaa !9
  %shl126 = shl i32 %115, 17
  %116 = load i32, ptr %c, align 4, !tbaa !9
  %shr127 = lshr i32 %116, 15
  %or128 = or i32 %shl126, %shr127
  store i32 %or128, ptr %c, align 4, !tbaa !9
  %117 = load i32, ptr %d, align 4, !tbaa !9
  %118 = load i32, ptr %c, align 4, !tbaa !9
  %add129 = add i32 %118, %117
  store i32 %add129, ptr %c, align 4, !tbaa !9
  %119 = load i32, ptr %c, align 4, !tbaa !9
  %120 = load i32, ptr %d, align 4, !tbaa !9
  %and130 = and i32 %119, %120
  %121 = load i32, ptr %c, align 4, !tbaa !9
  %not131 = xor i32 %121, -1
  %122 = load i32, ptr %a, align 4, !tbaa !9
  %and132 = and i32 %not131, %122
  %or133 = or i32 %and130, %and132
  %arrayidx134 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 11
  %123 = load i32, ptr %arrayidx134, align 4, !tbaa !9
  %add135 = add i32 %or133, %123
  %add136 = add i32 %add135, -1990404162
  %124 = load i32, ptr %b, align 4, !tbaa !9
  %add137 = add i32 %124, %add136
  store i32 %add137, ptr %b, align 4, !tbaa !9
  %125 = load i32, ptr %b, align 4, !tbaa !9
  %shl138 = shl i32 %125, 22
  %126 = load i32, ptr %b, align 4, !tbaa !9
  %shr139 = lshr i32 %126, 10
  %or140 = or i32 %shl138, %shr139
  store i32 %or140, ptr %b, align 4, !tbaa !9
  %127 = load i32, ptr %c, align 4, !tbaa !9
  %128 = load i32, ptr %b, align 4, !tbaa !9
  %add141 = add i32 %128, %127
  store i32 %add141, ptr %b, align 4, !tbaa !9
  %129 = load i32, ptr %b, align 4, !tbaa !9
  %130 = load i32, ptr %c, align 4, !tbaa !9
  %and142 = and i32 %129, %130
  %131 = load i32, ptr %b, align 4, !tbaa !9
  %not143 = xor i32 %131, -1
  %132 = load i32, ptr %d, align 4, !tbaa !9
  %and144 = and i32 %not143, %132
  %or145 = or i32 %and142, %and144
  %arrayidx146 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 12
  %133 = load i32, ptr %arrayidx146, align 16, !tbaa !9
  %add147 = add i32 %or145, %133
  %add148 = add i32 %add147, 1804603682
  %134 = load i32, ptr %a, align 4, !tbaa !9
  %add149 = add i32 %134, %add148
  store i32 %add149, ptr %a, align 4, !tbaa !9
  %135 = load i32, ptr %a, align 4, !tbaa !9
  %shl150 = shl i32 %135, 7
  %136 = load i32, ptr %a, align 4, !tbaa !9
  %shr151 = lshr i32 %136, 25
  %or152 = or i32 %shl150, %shr151
  store i32 %or152, ptr %a, align 4, !tbaa !9
  %137 = load i32, ptr %b, align 4, !tbaa !9
  %138 = load i32, ptr %a, align 4, !tbaa !9
  %add153 = add i32 %138, %137
  store i32 %add153, ptr %a, align 4, !tbaa !9
  %139 = load i32, ptr %a, align 4, !tbaa !9
  %140 = load i32, ptr %b, align 4, !tbaa !9
  %and154 = and i32 %139, %140
  %141 = load i32, ptr %a, align 4, !tbaa !9
  %not155 = xor i32 %141, -1
  %142 = load i32, ptr %c, align 4, !tbaa !9
  %and156 = and i32 %not155, %142
  %or157 = or i32 %and154, %and156
  %arrayidx158 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 13
  %143 = load i32, ptr %arrayidx158, align 4, !tbaa !9
  %add159 = add i32 %or157, %143
  %add160 = add i32 %add159, -40341101
  %144 = load i32, ptr %d, align 4, !tbaa !9
  %add161 = add i32 %144, %add160
  store i32 %add161, ptr %d, align 4, !tbaa !9
  %145 = load i32, ptr %d, align 4, !tbaa !9
  %shl162 = shl i32 %145, 12
  %146 = load i32, ptr %d, align 4, !tbaa !9
  %shr163 = lshr i32 %146, 20
  %or164 = or i32 %shl162, %shr163
  store i32 %or164, ptr %d, align 4, !tbaa !9
  %147 = load i32, ptr %a, align 4, !tbaa !9
  %148 = load i32, ptr %d, align 4, !tbaa !9
  %add165 = add i32 %148, %147
  store i32 %add165, ptr %d, align 4, !tbaa !9
  %149 = load i32, ptr %d, align 4, !tbaa !9
  %150 = load i32, ptr %a, align 4, !tbaa !9
  %and166 = and i32 %149, %150
  %151 = load i32, ptr %d, align 4, !tbaa !9
  %not167 = xor i32 %151, -1
  %152 = load i32, ptr %b, align 4, !tbaa !9
  %and168 = and i32 %not167, %152
  %or169 = or i32 %and166, %and168
  %arrayidx170 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 14
  %153 = load i32, ptr %arrayidx170, align 8, !tbaa !9
  %add171 = add i32 %or169, %153
  %add172 = add i32 %add171, -1502002290
  %154 = load i32, ptr %c, align 4, !tbaa !9
  %add173 = add i32 %154, %add172
  store i32 %add173, ptr %c, align 4, !tbaa !9
  %155 = load i32, ptr %c, align 4, !tbaa !9
  %shl174 = shl i32 %155, 17
  %156 = load i32, ptr %c, align 4, !tbaa !9
  %shr175 = lshr i32 %156, 15
  %or176 = or i32 %shl174, %shr175
  store i32 %or176, ptr %c, align 4, !tbaa !9
  %157 = load i32, ptr %d, align 4, !tbaa !9
  %158 = load i32, ptr %c, align 4, !tbaa !9
  %add177 = add i32 %158, %157
  store i32 %add177, ptr %c, align 4, !tbaa !9
  %159 = load i32, ptr %c, align 4, !tbaa !9
  %160 = load i32, ptr %d, align 4, !tbaa !9
  %and178 = and i32 %159, %160
  %161 = load i32, ptr %c, align 4, !tbaa !9
  %not179 = xor i32 %161, -1
  %162 = load i32, ptr %a, align 4, !tbaa !9
  %and180 = and i32 %not179, %162
  %or181 = or i32 %and178, %and180
  %arrayidx182 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 15
  %163 = load i32, ptr %arrayidx182, align 4, !tbaa !9
  %add183 = add i32 %or181, %163
  %add184 = add i32 %add183, 1236535329
  %164 = load i32, ptr %b, align 4, !tbaa !9
  %add185 = add i32 %164, %add184
  store i32 %add185, ptr %b, align 4, !tbaa !9
  %165 = load i32, ptr %b, align 4, !tbaa !9
  %shl186 = shl i32 %165, 22
  %166 = load i32, ptr %b, align 4, !tbaa !9
  %shr187 = lshr i32 %166, 10
  %or188 = or i32 %shl186, %shr187
  store i32 %or188, ptr %b, align 4, !tbaa !9
  %167 = load i32, ptr %c, align 4, !tbaa !9
  %168 = load i32, ptr %b, align 4, !tbaa !9
  %add189 = add i32 %168, %167
  store i32 %add189, ptr %b, align 4, !tbaa !9
  %169 = load i32, ptr %b, align 4, !tbaa !9
  %170 = load i32, ptr %d, align 4, !tbaa !9
  %and190 = and i32 %169, %170
  %171 = load i32, ptr %c, align 4, !tbaa !9
  %172 = load i32, ptr %d, align 4, !tbaa !9
  %not191 = xor i32 %172, -1
  %and192 = and i32 %171, %not191
  %or193 = or i32 %and190, %and192
  %arrayidx194 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 1
  %173 = load i32, ptr %arrayidx194, align 4, !tbaa !9
  %add195 = add i32 %or193, %173
  %add196 = add i32 %add195, -165796510
  %174 = load i32, ptr %a, align 4, !tbaa !9
  %add197 = add i32 %174, %add196
  store i32 %add197, ptr %a, align 4, !tbaa !9
  %175 = load i32, ptr %a, align 4, !tbaa !9
  %shl198 = shl i32 %175, 5
  %176 = load i32, ptr %a, align 4, !tbaa !9
  %shr199 = lshr i32 %176, 27
  %or200 = or i32 %shl198, %shr199
  store i32 %or200, ptr %a, align 4, !tbaa !9
  %177 = load i32, ptr %b, align 4, !tbaa !9
  %178 = load i32, ptr %a, align 4, !tbaa !9
  %add201 = add i32 %178, %177
  store i32 %add201, ptr %a, align 4, !tbaa !9
  %179 = load i32, ptr %a, align 4, !tbaa !9
  %180 = load i32, ptr %c, align 4, !tbaa !9
  %and202 = and i32 %179, %180
  %181 = load i32, ptr %b, align 4, !tbaa !9
  %182 = load i32, ptr %c, align 4, !tbaa !9
  %not203 = xor i32 %182, -1
  %and204 = and i32 %181, %not203
  %or205 = or i32 %and202, %and204
  %arrayidx206 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 6
  %183 = load i32, ptr %arrayidx206, align 8, !tbaa !9
  %add207 = add i32 %or205, %183
  %add208 = add i32 %add207, -1069501632
  %184 = load i32, ptr %d, align 4, !tbaa !9
  %add209 = add i32 %184, %add208
  store i32 %add209, ptr %d, align 4, !tbaa !9
  %185 = load i32, ptr %d, align 4, !tbaa !9
  %shl210 = shl i32 %185, 9
  %186 = load i32, ptr %d, align 4, !tbaa !9
  %shr211 = lshr i32 %186, 23
  %or212 = or i32 %shl210, %shr211
  store i32 %or212, ptr %d, align 4, !tbaa !9
  %187 = load i32, ptr %a, align 4, !tbaa !9
  %188 = load i32, ptr %d, align 4, !tbaa !9
  %add213 = add i32 %188, %187
  store i32 %add213, ptr %d, align 4, !tbaa !9
  %189 = load i32, ptr %d, align 4, !tbaa !9
  %190 = load i32, ptr %b, align 4, !tbaa !9
  %and214 = and i32 %189, %190
  %191 = load i32, ptr %a, align 4, !tbaa !9
  %192 = load i32, ptr %b, align 4, !tbaa !9
  %not215 = xor i32 %192, -1
  %and216 = and i32 %191, %not215
  %or217 = or i32 %and214, %and216
  %arrayidx218 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 11
  %193 = load i32, ptr %arrayidx218, align 4, !tbaa !9
  %add219 = add i32 %or217, %193
  %add220 = add i32 %add219, 643717713
  %194 = load i32, ptr %c, align 4, !tbaa !9
  %add221 = add i32 %194, %add220
  store i32 %add221, ptr %c, align 4, !tbaa !9
  %195 = load i32, ptr %c, align 4, !tbaa !9
  %shl222 = shl i32 %195, 14
  %196 = load i32, ptr %c, align 4, !tbaa !9
  %shr223 = lshr i32 %196, 18
  %or224 = or i32 %shl222, %shr223
  store i32 %or224, ptr %c, align 4, !tbaa !9
  %197 = load i32, ptr %d, align 4, !tbaa !9
  %198 = load i32, ptr %c, align 4, !tbaa !9
  %add225 = add i32 %198, %197
  store i32 %add225, ptr %c, align 4, !tbaa !9
  %199 = load i32, ptr %c, align 4, !tbaa !9
  %200 = load i32, ptr %a, align 4, !tbaa !9
  %and226 = and i32 %199, %200
  %201 = load i32, ptr %d, align 4, !tbaa !9
  %202 = load i32, ptr %a, align 4, !tbaa !9
  %not227 = xor i32 %202, -1
  %and228 = and i32 %201, %not227
  %or229 = or i32 %and226, %and228
  %arrayidx230 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0
  %203 = load i32, ptr %arrayidx230, align 16, !tbaa !9
  %add231 = add i32 %or229, %203
  %add232 = add i32 %add231, -373897302
  %204 = load i32, ptr %b, align 4, !tbaa !9
  %add233 = add i32 %204, %add232
  store i32 %add233, ptr %b, align 4, !tbaa !9
  %205 = load i32, ptr %b, align 4, !tbaa !9
  %shl234 = shl i32 %205, 20
  %206 = load i32, ptr %b, align 4, !tbaa !9
  %shr235 = lshr i32 %206, 12
  %or236 = or i32 %shl234, %shr235
  store i32 %or236, ptr %b, align 4, !tbaa !9
  %207 = load i32, ptr %c, align 4, !tbaa !9
  %208 = load i32, ptr %b, align 4, !tbaa !9
  %add237 = add i32 %208, %207
  store i32 %add237, ptr %b, align 4, !tbaa !9
  %209 = load i32, ptr %b, align 4, !tbaa !9
  %210 = load i32, ptr %d, align 4, !tbaa !9
  %and238 = and i32 %209, %210
  %211 = load i32, ptr %c, align 4, !tbaa !9
  %212 = load i32, ptr %d, align 4, !tbaa !9
  %not239 = xor i32 %212, -1
  %and240 = and i32 %211, %not239
  %or241 = or i32 %and238, %and240
  %arrayidx242 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 5
  %213 = load i32, ptr %arrayidx242, align 4, !tbaa !9
  %add243 = add i32 %or241, %213
  %add244 = add i32 %add243, -701558691
  %214 = load i32, ptr %a, align 4, !tbaa !9
  %add245 = add i32 %214, %add244
  store i32 %add245, ptr %a, align 4, !tbaa !9
  %215 = load i32, ptr %a, align 4, !tbaa !9
  %shl246 = shl i32 %215, 5
  %216 = load i32, ptr %a, align 4, !tbaa !9
  %shr247 = lshr i32 %216, 27
  %or248 = or i32 %shl246, %shr247
  store i32 %or248, ptr %a, align 4, !tbaa !9
  %217 = load i32, ptr %b, align 4, !tbaa !9
  %218 = load i32, ptr %a, align 4, !tbaa !9
  %add249 = add i32 %218, %217
  store i32 %add249, ptr %a, align 4, !tbaa !9
  %219 = load i32, ptr %a, align 4, !tbaa !9
  %220 = load i32, ptr %c, align 4, !tbaa !9
  %and250 = and i32 %219, %220
  %221 = load i32, ptr %b, align 4, !tbaa !9
  %222 = load i32, ptr %c, align 4, !tbaa !9
  %not251 = xor i32 %222, -1
  %and252 = and i32 %221, %not251
  %or253 = or i32 %and250, %and252
  %arrayidx254 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 10
  %223 = load i32, ptr %arrayidx254, align 8, !tbaa !9
  %add255 = add i32 %or253, %223
  %add256 = add i32 %add255, 38016083
  %224 = load i32, ptr %d, align 4, !tbaa !9
  %add257 = add i32 %224, %add256
  store i32 %add257, ptr %d, align 4, !tbaa !9
  %225 = load i32, ptr %d, align 4, !tbaa !9
  %shl258 = shl i32 %225, 9
  %226 = load i32, ptr %d, align 4, !tbaa !9
  %shr259 = lshr i32 %226, 23
  %or260 = or i32 %shl258, %shr259
  store i32 %or260, ptr %d, align 4, !tbaa !9
  %227 = load i32, ptr %a, align 4, !tbaa !9
  %228 = load i32, ptr %d, align 4, !tbaa !9
  %add261 = add i32 %228, %227
  store i32 %add261, ptr %d, align 4, !tbaa !9
  %229 = load i32, ptr %d, align 4, !tbaa !9
  %230 = load i32, ptr %b, align 4, !tbaa !9
  %and262 = and i32 %229, %230
  %231 = load i32, ptr %a, align 4, !tbaa !9
  %232 = load i32, ptr %b, align 4, !tbaa !9
  %not263 = xor i32 %232, -1
  %and264 = and i32 %231, %not263
  %or265 = or i32 %and262, %and264
  %arrayidx266 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 15
  %233 = load i32, ptr %arrayidx266, align 4, !tbaa !9
  %add267 = add i32 %or265, %233
  %add268 = add i32 %add267, -660478335
  %234 = load i32, ptr %c, align 4, !tbaa !9
  %add269 = add i32 %234, %add268
  store i32 %add269, ptr %c, align 4, !tbaa !9
  %235 = load i32, ptr %c, align 4, !tbaa !9
  %shl270 = shl i32 %235, 14
  %236 = load i32, ptr %c, align 4, !tbaa !9
  %shr271 = lshr i32 %236, 18
  %or272 = or i32 %shl270, %shr271
  store i32 %or272, ptr %c, align 4, !tbaa !9
  %237 = load i32, ptr %d, align 4, !tbaa !9
  %238 = load i32, ptr %c, align 4, !tbaa !9
  %add273 = add i32 %238, %237
  store i32 %add273, ptr %c, align 4, !tbaa !9
  %239 = load i32, ptr %c, align 4, !tbaa !9
  %240 = load i32, ptr %a, align 4, !tbaa !9
  %and274 = and i32 %239, %240
  %241 = load i32, ptr %d, align 4, !tbaa !9
  %242 = load i32, ptr %a, align 4, !tbaa !9
  %not275 = xor i32 %242, -1
  %and276 = and i32 %241, %not275
  %or277 = or i32 %and274, %and276
  %arrayidx278 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 4
  %243 = load i32, ptr %arrayidx278, align 16, !tbaa !9
  %add279 = add i32 %or277, %243
  %add280 = add i32 %add279, -405537848
  %244 = load i32, ptr %b, align 4, !tbaa !9
  %add281 = add i32 %244, %add280
  store i32 %add281, ptr %b, align 4, !tbaa !9
  %245 = load i32, ptr %b, align 4, !tbaa !9
  %shl282 = shl i32 %245, 20
  %246 = load i32, ptr %b, align 4, !tbaa !9
  %shr283 = lshr i32 %246, 12
  %or284 = or i32 %shl282, %shr283
  store i32 %or284, ptr %b, align 4, !tbaa !9
  %247 = load i32, ptr %c, align 4, !tbaa !9
  %248 = load i32, ptr %b, align 4, !tbaa !9
  %add285 = add i32 %248, %247
  store i32 %add285, ptr %b, align 4, !tbaa !9
  %249 = load i32, ptr %b, align 4, !tbaa !9
  %250 = load i32, ptr %d, align 4, !tbaa !9
  %and286 = and i32 %249, %250
  %251 = load i32, ptr %c, align 4, !tbaa !9
  %252 = load i32, ptr %d, align 4, !tbaa !9
  %not287 = xor i32 %252, -1
  %and288 = and i32 %251, %not287
  %or289 = or i32 %and286, %and288
  %arrayidx290 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 9
  %253 = load i32, ptr %arrayidx290, align 4, !tbaa !9
  %add291 = add i32 %or289, %253
  %add292 = add i32 %add291, 568446438
  %254 = load i32, ptr %a, align 4, !tbaa !9
  %add293 = add i32 %254, %add292
  store i32 %add293, ptr %a, align 4, !tbaa !9
  %255 = load i32, ptr %a, align 4, !tbaa !9
  %shl294 = shl i32 %255, 5
  %256 = load i32, ptr %a, align 4, !tbaa !9
  %shr295 = lshr i32 %256, 27
  %or296 = or i32 %shl294, %shr295
  store i32 %or296, ptr %a, align 4, !tbaa !9
  %257 = load i32, ptr %b, align 4, !tbaa !9
  %258 = load i32, ptr %a, align 4, !tbaa !9
  %add297 = add i32 %258, %257
  store i32 %add297, ptr %a, align 4, !tbaa !9
  %259 = load i32, ptr %a, align 4, !tbaa !9
  %260 = load i32, ptr %c, align 4, !tbaa !9
  %and298 = and i32 %259, %260
  %261 = load i32, ptr %b, align 4, !tbaa !9
  %262 = load i32, ptr %c, align 4, !tbaa !9
  %not299 = xor i32 %262, -1
  %and300 = and i32 %261, %not299
  %or301 = or i32 %and298, %and300
  %arrayidx302 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 14
  %263 = load i32, ptr %arrayidx302, align 8, !tbaa !9
  %add303 = add i32 %or301, %263
  %add304 = add i32 %add303, -1019803690
  %264 = load i32, ptr %d, align 4, !tbaa !9
  %add305 = add i32 %264, %add304
  store i32 %add305, ptr %d, align 4, !tbaa !9
  %265 = load i32, ptr %d, align 4, !tbaa !9
  %shl306 = shl i32 %265, 9
  %266 = load i32, ptr %d, align 4, !tbaa !9
  %shr307 = lshr i32 %266, 23
  %or308 = or i32 %shl306, %shr307
  store i32 %or308, ptr %d, align 4, !tbaa !9
  %267 = load i32, ptr %a, align 4, !tbaa !9
  %268 = load i32, ptr %d, align 4, !tbaa !9
  %add309 = add i32 %268, %267
  store i32 %add309, ptr %d, align 4, !tbaa !9
  %269 = load i32, ptr %d, align 4, !tbaa !9
  %270 = load i32, ptr %b, align 4, !tbaa !9
  %and310 = and i32 %269, %270
  %271 = load i32, ptr %a, align 4, !tbaa !9
  %272 = load i32, ptr %b, align 4, !tbaa !9
  %not311 = xor i32 %272, -1
  %and312 = and i32 %271, %not311
  %or313 = or i32 %and310, %and312
  %arrayidx314 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 3
  %273 = load i32, ptr %arrayidx314, align 4, !tbaa !9
  %add315 = add i32 %or313, %273
  %add316 = add i32 %add315, -187363961
  %274 = load i32, ptr %c, align 4, !tbaa !9
  %add317 = add i32 %274, %add316
  store i32 %add317, ptr %c, align 4, !tbaa !9
  %275 = load i32, ptr %c, align 4, !tbaa !9
  %shl318 = shl i32 %275, 14
  %276 = load i32, ptr %c, align 4, !tbaa !9
  %shr319 = lshr i32 %276, 18
  %or320 = or i32 %shl318, %shr319
  store i32 %or320, ptr %c, align 4, !tbaa !9
  %277 = load i32, ptr %d, align 4, !tbaa !9
  %278 = load i32, ptr %c, align 4, !tbaa !9
  %add321 = add i32 %278, %277
  store i32 %add321, ptr %c, align 4, !tbaa !9
  %279 = load i32, ptr %c, align 4, !tbaa !9
  %280 = load i32, ptr %a, align 4, !tbaa !9
  %and322 = and i32 %279, %280
  %281 = load i32, ptr %d, align 4, !tbaa !9
  %282 = load i32, ptr %a, align 4, !tbaa !9
  %not323 = xor i32 %282, -1
  %and324 = and i32 %281, %not323
  %or325 = or i32 %and322, %and324
  %arrayidx326 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 8
  %283 = load i32, ptr %arrayidx326, align 16, !tbaa !9
  %add327 = add i32 %or325, %283
  %add328 = add i32 %add327, 1163531501
  %284 = load i32, ptr %b, align 4, !tbaa !9
  %add329 = add i32 %284, %add328
  store i32 %add329, ptr %b, align 4, !tbaa !9
  %285 = load i32, ptr %b, align 4, !tbaa !9
  %shl330 = shl i32 %285, 20
  %286 = load i32, ptr %b, align 4, !tbaa !9
  %shr331 = lshr i32 %286, 12
  %or332 = or i32 %shl330, %shr331
  store i32 %or332, ptr %b, align 4, !tbaa !9
  %287 = load i32, ptr %c, align 4, !tbaa !9
  %288 = load i32, ptr %b, align 4, !tbaa !9
  %add333 = add i32 %288, %287
  store i32 %add333, ptr %b, align 4, !tbaa !9
  %289 = load i32, ptr %b, align 4, !tbaa !9
  %290 = load i32, ptr %d, align 4, !tbaa !9
  %and334 = and i32 %289, %290
  %291 = load i32, ptr %c, align 4, !tbaa !9
  %292 = load i32, ptr %d, align 4, !tbaa !9
  %not335 = xor i32 %292, -1
  %and336 = and i32 %291, %not335
  %or337 = or i32 %and334, %and336
  %arrayidx338 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 13
  %293 = load i32, ptr %arrayidx338, align 4, !tbaa !9
  %add339 = add i32 %or337, %293
  %add340 = add i32 %add339, -1444681467
  %294 = load i32, ptr %a, align 4, !tbaa !9
  %add341 = add i32 %294, %add340
  store i32 %add341, ptr %a, align 4, !tbaa !9
  %295 = load i32, ptr %a, align 4, !tbaa !9
  %shl342 = shl i32 %295, 5
  %296 = load i32, ptr %a, align 4, !tbaa !9
  %shr343 = lshr i32 %296, 27
  %or344 = or i32 %shl342, %shr343
  store i32 %or344, ptr %a, align 4, !tbaa !9
  %297 = load i32, ptr %b, align 4, !tbaa !9
  %298 = load i32, ptr %a, align 4, !tbaa !9
  %add345 = add i32 %298, %297
  store i32 %add345, ptr %a, align 4, !tbaa !9
  %299 = load i32, ptr %a, align 4, !tbaa !9
  %300 = load i32, ptr %c, align 4, !tbaa !9
  %and346 = and i32 %299, %300
  %301 = load i32, ptr %b, align 4, !tbaa !9
  %302 = load i32, ptr %c, align 4, !tbaa !9
  %not347 = xor i32 %302, -1
  %and348 = and i32 %301, %not347
  %or349 = or i32 %and346, %and348
  %arrayidx350 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 2
  %303 = load i32, ptr %arrayidx350, align 8, !tbaa !9
  %add351 = add i32 %or349, %303
  %add352 = add i32 %add351, -51403784
  %304 = load i32, ptr %d, align 4, !tbaa !9
  %add353 = add i32 %304, %add352
  store i32 %add353, ptr %d, align 4, !tbaa !9
  %305 = load i32, ptr %d, align 4, !tbaa !9
  %shl354 = shl i32 %305, 9
  %306 = load i32, ptr %d, align 4, !tbaa !9
  %shr355 = lshr i32 %306, 23
  %or356 = or i32 %shl354, %shr355
  store i32 %or356, ptr %d, align 4, !tbaa !9
  %307 = load i32, ptr %a, align 4, !tbaa !9
  %308 = load i32, ptr %d, align 4, !tbaa !9
  %add357 = add i32 %308, %307
  store i32 %add357, ptr %d, align 4, !tbaa !9
  %309 = load i32, ptr %d, align 4, !tbaa !9
  %310 = load i32, ptr %b, align 4, !tbaa !9
  %and358 = and i32 %309, %310
  %311 = load i32, ptr %a, align 4, !tbaa !9
  %312 = load i32, ptr %b, align 4, !tbaa !9
  %not359 = xor i32 %312, -1
  %and360 = and i32 %311, %not359
  %or361 = or i32 %and358, %and360
  %arrayidx362 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 7
  %313 = load i32, ptr %arrayidx362, align 4, !tbaa !9
  %add363 = add i32 %or361, %313
  %add364 = add i32 %add363, 1735328473
  %314 = load i32, ptr %c, align 4, !tbaa !9
  %add365 = add i32 %314, %add364
  store i32 %add365, ptr %c, align 4, !tbaa !9
  %315 = load i32, ptr %c, align 4, !tbaa !9
  %shl366 = shl i32 %315, 14
  %316 = load i32, ptr %c, align 4, !tbaa !9
  %shr367 = lshr i32 %316, 18
  %or368 = or i32 %shl366, %shr367
  store i32 %or368, ptr %c, align 4, !tbaa !9
  %317 = load i32, ptr %d, align 4, !tbaa !9
  %318 = load i32, ptr %c, align 4, !tbaa !9
  %add369 = add i32 %318, %317
  store i32 %add369, ptr %c, align 4, !tbaa !9
  %319 = load i32, ptr %c, align 4, !tbaa !9
  %320 = load i32, ptr %a, align 4, !tbaa !9
  %and370 = and i32 %319, %320
  %321 = load i32, ptr %d, align 4, !tbaa !9
  %322 = load i32, ptr %a, align 4, !tbaa !9
  %not371 = xor i32 %322, -1
  %and372 = and i32 %321, %not371
  %or373 = or i32 %and370, %and372
  %arrayidx374 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 12
  %323 = load i32, ptr %arrayidx374, align 16, !tbaa !9
  %add375 = add i32 %or373, %323
  %add376 = add i32 %add375, -1926607734
  %324 = load i32, ptr %b, align 4, !tbaa !9
  %add377 = add i32 %324, %add376
  store i32 %add377, ptr %b, align 4, !tbaa !9
  %325 = load i32, ptr %b, align 4, !tbaa !9
  %shl378 = shl i32 %325, 20
  %326 = load i32, ptr %b, align 4, !tbaa !9
  %shr379 = lshr i32 %326, 12
  %or380 = or i32 %shl378, %shr379
  store i32 %or380, ptr %b, align 4, !tbaa !9
  %327 = load i32, ptr %c, align 4, !tbaa !9
  %328 = load i32, ptr %b, align 4, !tbaa !9
  %add381 = add i32 %328, %327
  store i32 %add381, ptr %b, align 4, !tbaa !9
  %329 = load i32, ptr %b, align 4, !tbaa !9
  %330 = load i32, ptr %c, align 4, !tbaa !9
  %xor = xor i32 %329, %330
  %331 = load i32, ptr %d, align 4, !tbaa !9
  %xor382 = xor i32 %xor, %331
  %arrayidx383 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 5
  %332 = load i32, ptr %arrayidx383, align 4, !tbaa !9
  %add384 = add i32 %xor382, %332
  %add385 = add i32 %add384, -378558
  %333 = load i32, ptr %a, align 4, !tbaa !9
  %add386 = add i32 %333, %add385
  store i32 %add386, ptr %a, align 4, !tbaa !9
  %334 = load i32, ptr %a, align 4, !tbaa !9
  %shl387 = shl i32 %334, 4
  %335 = load i32, ptr %a, align 4, !tbaa !9
  %shr388 = lshr i32 %335, 28
  %or389 = or i32 %shl387, %shr388
  store i32 %or389, ptr %a, align 4, !tbaa !9
  %336 = load i32, ptr %b, align 4, !tbaa !9
  %337 = load i32, ptr %a, align 4, !tbaa !9
  %add390 = add i32 %337, %336
  store i32 %add390, ptr %a, align 4, !tbaa !9
  %338 = load i32, ptr %a, align 4, !tbaa !9
  %339 = load i32, ptr %b, align 4, !tbaa !9
  %xor391 = xor i32 %338, %339
  %340 = load i32, ptr %c, align 4, !tbaa !9
  %xor392 = xor i32 %xor391, %340
  %arrayidx393 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 8
  %341 = load i32, ptr %arrayidx393, align 16, !tbaa !9
  %add394 = add i32 %xor392, %341
  %add395 = add i32 %add394, -2022574463
  %342 = load i32, ptr %d, align 4, !tbaa !9
  %add396 = add i32 %342, %add395
  store i32 %add396, ptr %d, align 4, !tbaa !9
  %343 = load i32, ptr %d, align 4, !tbaa !9
  %shl397 = shl i32 %343, 11
  %344 = load i32, ptr %d, align 4, !tbaa !9
  %shr398 = lshr i32 %344, 21
  %or399 = or i32 %shl397, %shr398
  store i32 %or399, ptr %d, align 4, !tbaa !9
  %345 = load i32, ptr %a, align 4, !tbaa !9
  %346 = load i32, ptr %d, align 4, !tbaa !9
  %add400 = add i32 %346, %345
  store i32 %add400, ptr %d, align 4, !tbaa !9
  %347 = load i32, ptr %d, align 4, !tbaa !9
  %348 = load i32, ptr %a, align 4, !tbaa !9
  %xor401 = xor i32 %347, %348
  %349 = load i32, ptr %b, align 4, !tbaa !9
  %xor402 = xor i32 %xor401, %349
  %arrayidx403 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 11
  %350 = load i32, ptr %arrayidx403, align 4, !tbaa !9
  %add404 = add i32 %xor402, %350
  %add405 = add i32 %add404, 1839030562
  %351 = load i32, ptr %c, align 4, !tbaa !9
  %add406 = add i32 %351, %add405
  store i32 %add406, ptr %c, align 4, !tbaa !9
  %352 = load i32, ptr %c, align 4, !tbaa !9
  %shl407 = shl i32 %352, 16
  %353 = load i32, ptr %c, align 4, !tbaa !9
  %shr408 = lshr i32 %353, 16
  %or409 = or i32 %shl407, %shr408
  store i32 %or409, ptr %c, align 4, !tbaa !9
  %354 = load i32, ptr %d, align 4, !tbaa !9
  %355 = load i32, ptr %c, align 4, !tbaa !9
  %add410 = add i32 %355, %354
  store i32 %add410, ptr %c, align 4, !tbaa !9
  %356 = load i32, ptr %c, align 4, !tbaa !9
  %357 = load i32, ptr %d, align 4, !tbaa !9
  %xor411 = xor i32 %356, %357
  %358 = load i32, ptr %a, align 4, !tbaa !9
  %xor412 = xor i32 %xor411, %358
  %arrayidx413 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 14
  %359 = load i32, ptr %arrayidx413, align 8, !tbaa !9
  %add414 = add i32 %xor412, %359
  %add415 = add i32 %add414, -35309556
  %360 = load i32, ptr %b, align 4, !tbaa !9
  %add416 = add i32 %360, %add415
  store i32 %add416, ptr %b, align 4, !tbaa !9
  %361 = load i32, ptr %b, align 4, !tbaa !9
  %shl417 = shl i32 %361, 23
  %362 = load i32, ptr %b, align 4, !tbaa !9
  %shr418 = lshr i32 %362, 9
  %or419 = or i32 %shl417, %shr418
  store i32 %or419, ptr %b, align 4, !tbaa !9
  %363 = load i32, ptr %c, align 4, !tbaa !9
  %364 = load i32, ptr %b, align 4, !tbaa !9
  %add420 = add i32 %364, %363
  store i32 %add420, ptr %b, align 4, !tbaa !9
  %365 = load i32, ptr %b, align 4, !tbaa !9
  %366 = load i32, ptr %c, align 4, !tbaa !9
  %xor421 = xor i32 %365, %366
  %367 = load i32, ptr %d, align 4, !tbaa !9
  %xor422 = xor i32 %xor421, %367
  %arrayidx423 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 1
  %368 = load i32, ptr %arrayidx423, align 4, !tbaa !9
  %add424 = add i32 %xor422, %368
  %add425 = add i32 %add424, -1530992060
  %369 = load i32, ptr %a, align 4, !tbaa !9
  %add426 = add i32 %369, %add425
  store i32 %add426, ptr %a, align 4, !tbaa !9
  %370 = load i32, ptr %a, align 4, !tbaa !9
  %shl427 = shl i32 %370, 4
  %371 = load i32, ptr %a, align 4, !tbaa !9
  %shr428 = lshr i32 %371, 28
  %or429 = or i32 %shl427, %shr428
  store i32 %or429, ptr %a, align 4, !tbaa !9
  %372 = load i32, ptr %b, align 4, !tbaa !9
  %373 = load i32, ptr %a, align 4, !tbaa !9
  %add430 = add i32 %373, %372
  store i32 %add430, ptr %a, align 4, !tbaa !9
  %374 = load i32, ptr %a, align 4, !tbaa !9
  %375 = load i32, ptr %b, align 4, !tbaa !9
  %xor431 = xor i32 %374, %375
  %376 = load i32, ptr %c, align 4, !tbaa !9
  %xor432 = xor i32 %xor431, %376
  %arrayidx433 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 4
  %377 = load i32, ptr %arrayidx433, align 16, !tbaa !9
  %add434 = add i32 %xor432, %377
  %add435 = add i32 %add434, 1272893353
  %378 = load i32, ptr %d, align 4, !tbaa !9
  %add436 = add i32 %378, %add435
  store i32 %add436, ptr %d, align 4, !tbaa !9
  %379 = load i32, ptr %d, align 4, !tbaa !9
  %shl437 = shl i32 %379, 11
  %380 = load i32, ptr %d, align 4, !tbaa !9
  %shr438 = lshr i32 %380, 21
  %or439 = or i32 %shl437, %shr438
  store i32 %or439, ptr %d, align 4, !tbaa !9
  %381 = load i32, ptr %a, align 4, !tbaa !9
  %382 = load i32, ptr %d, align 4, !tbaa !9
  %add440 = add i32 %382, %381
  store i32 %add440, ptr %d, align 4, !tbaa !9
  %383 = load i32, ptr %d, align 4, !tbaa !9
  %384 = load i32, ptr %a, align 4, !tbaa !9
  %xor441 = xor i32 %383, %384
  %385 = load i32, ptr %b, align 4, !tbaa !9
  %xor442 = xor i32 %xor441, %385
  %arrayidx443 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 7
  %386 = load i32, ptr %arrayidx443, align 4, !tbaa !9
  %add444 = add i32 %xor442, %386
  %add445 = add i32 %add444, -155497632
  %387 = load i32, ptr %c, align 4, !tbaa !9
  %add446 = add i32 %387, %add445
  store i32 %add446, ptr %c, align 4, !tbaa !9
  %388 = load i32, ptr %c, align 4, !tbaa !9
  %shl447 = shl i32 %388, 16
  %389 = load i32, ptr %c, align 4, !tbaa !9
  %shr448 = lshr i32 %389, 16
  %or449 = or i32 %shl447, %shr448
  store i32 %or449, ptr %c, align 4, !tbaa !9
  %390 = load i32, ptr %d, align 4, !tbaa !9
  %391 = load i32, ptr %c, align 4, !tbaa !9
  %add450 = add i32 %391, %390
  store i32 %add450, ptr %c, align 4, !tbaa !9
  %392 = load i32, ptr %c, align 4, !tbaa !9
  %393 = load i32, ptr %d, align 4, !tbaa !9
  %xor451 = xor i32 %392, %393
  %394 = load i32, ptr %a, align 4, !tbaa !9
  %xor452 = xor i32 %xor451, %394
  %arrayidx453 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 10
  %395 = load i32, ptr %arrayidx453, align 8, !tbaa !9
  %add454 = add i32 %xor452, %395
  %add455 = add i32 %add454, -1094730640
  %396 = load i32, ptr %b, align 4, !tbaa !9
  %add456 = add i32 %396, %add455
  store i32 %add456, ptr %b, align 4, !tbaa !9
  %397 = load i32, ptr %b, align 4, !tbaa !9
  %shl457 = shl i32 %397, 23
  %398 = load i32, ptr %b, align 4, !tbaa !9
  %shr458 = lshr i32 %398, 9
  %or459 = or i32 %shl457, %shr458
  store i32 %or459, ptr %b, align 4, !tbaa !9
  %399 = load i32, ptr %c, align 4, !tbaa !9
  %400 = load i32, ptr %b, align 4, !tbaa !9
  %add460 = add i32 %400, %399
  store i32 %add460, ptr %b, align 4, !tbaa !9
  %401 = load i32, ptr %b, align 4, !tbaa !9
  %402 = load i32, ptr %c, align 4, !tbaa !9
  %xor461 = xor i32 %401, %402
  %403 = load i32, ptr %d, align 4, !tbaa !9
  %xor462 = xor i32 %xor461, %403
  %arrayidx463 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 13
  %404 = load i32, ptr %arrayidx463, align 4, !tbaa !9
  %add464 = add i32 %xor462, %404
  %add465 = add i32 %add464, 681279174
  %405 = load i32, ptr %a, align 4, !tbaa !9
  %add466 = add i32 %405, %add465
  store i32 %add466, ptr %a, align 4, !tbaa !9
  %406 = load i32, ptr %a, align 4, !tbaa !9
  %shl467 = shl i32 %406, 4
  %407 = load i32, ptr %a, align 4, !tbaa !9
  %shr468 = lshr i32 %407, 28
  %or469 = or i32 %shl467, %shr468
  store i32 %or469, ptr %a, align 4, !tbaa !9
  %408 = load i32, ptr %b, align 4, !tbaa !9
  %409 = load i32, ptr %a, align 4, !tbaa !9
  %add470 = add i32 %409, %408
  store i32 %add470, ptr %a, align 4, !tbaa !9
  %410 = load i32, ptr %a, align 4, !tbaa !9
  %411 = load i32, ptr %b, align 4, !tbaa !9
  %xor471 = xor i32 %410, %411
  %412 = load i32, ptr %c, align 4, !tbaa !9
  %xor472 = xor i32 %xor471, %412
  %arrayidx473 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0
  %413 = load i32, ptr %arrayidx473, align 16, !tbaa !9
  %add474 = add i32 %xor472, %413
  %add475 = add i32 %add474, -358537222
  %414 = load i32, ptr %d, align 4, !tbaa !9
  %add476 = add i32 %414, %add475
  store i32 %add476, ptr %d, align 4, !tbaa !9
  %415 = load i32, ptr %d, align 4, !tbaa !9
  %shl477 = shl i32 %415, 11
  %416 = load i32, ptr %d, align 4, !tbaa !9
  %shr478 = lshr i32 %416, 21
  %or479 = or i32 %shl477, %shr478
  store i32 %or479, ptr %d, align 4, !tbaa !9
  %417 = load i32, ptr %a, align 4, !tbaa !9
  %418 = load i32, ptr %d, align 4, !tbaa !9
  %add480 = add i32 %418, %417
  store i32 %add480, ptr %d, align 4, !tbaa !9
  %419 = load i32, ptr %d, align 4, !tbaa !9
  %420 = load i32, ptr %a, align 4, !tbaa !9
  %xor481 = xor i32 %419, %420
  %421 = load i32, ptr %b, align 4, !tbaa !9
  %xor482 = xor i32 %xor481, %421
  %arrayidx483 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 3
  %422 = load i32, ptr %arrayidx483, align 4, !tbaa !9
  %add484 = add i32 %xor482, %422
  %add485 = add i32 %add484, -722521979
  %423 = load i32, ptr %c, align 4, !tbaa !9
  %add486 = add i32 %423, %add485
  store i32 %add486, ptr %c, align 4, !tbaa !9
  %424 = load i32, ptr %c, align 4, !tbaa !9
  %shl487 = shl i32 %424, 16
  %425 = load i32, ptr %c, align 4, !tbaa !9
  %shr488 = lshr i32 %425, 16
  %or489 = or i32 %shl487, %shr488
  store i32 %or489, ptr %c, align 4, !tbaa !9
  %426 = load i32, ptr %d, align 4, !tbaa !9
  %427 = load i32, ptr %c, align 4, !tbaa !9
  %add490 = add i32 %427, %426
  store i32 %add490, ptr %c, align 4, !tbaa !9
  %428 = load i32, ptr %c, align 4, !tbaa !9
  %429 = load i32, ptr %d, align 4, !tbaa !9
  %xor491 = xor i32 %428, %429
  %430 = load i32, ptr %a, align 4, !tbaa !9
  %xor492 = xor i32 %xor491, %430
  %arrayidx493 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 6
  %431 = load i32, ptr %arrayidx493, align 8, !tbaa !9
  %add494 = add i32 %xor492, %431
  %add495 = add i32 %add494, 76029189
  %432 = load i32, ptr %b, align 4, !tbaa !9
  %add496 = add i32 %432, %add495
  store i32 %add496, ptr %b, align 4, !tbaa !9
  %433 = load i32, ptr %b, align 4, !tbaa !9
  %shl497 = shl i32 %433, 23
  %434 = load i32, ptr %b, align 4, !tbaa !9
  %shr498 = lshr i32 %434, 9
  %or499 = or i32 %shl497, %shr498
  store i32 %or499, ptr %b, align 4, !tbaa !9
  %435 = load i32, ptr %c, align 4, !tbaa !9
  %436 = load i32, ptr %b, align 4, !tbaa !9
  %add500 = add i32 %436, %435
  store i32 %add500, ptr %b, align 4, !tbaa !9
  %437 = load i32, ptr %b, align 4, !tbaa !9
  %438 = load i32, ptr %c, align 4, !tbaa !9
  %xor501 = xor i32 %437, %438
  %439 = load i32, ptr %d, align 4, !tbaa !9
  %xor502 = xor i32 %xor501, %439
  %arrayidx503 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 9
  %440 = load i32, ptr %arrayidx503, align 4, !tbaa !9
  %add504 = add i32 %xor502, %440
  %add505 = add i32 %add504, -640364487
  %441 = load i32, ptr %a, align 4, !tbaa !9
  %add506 = add i32 %441, %add505
  store i32 %add506, ptr %a, align 4, !tbaa !9
  %442 = load i32, ptr %a, align 4, !tbaa !9
  %shl507 = shl i32 %442, 4
  %443 = load i32, ptr %a, align 4, !tbaa !9
  %shr508 = lshr i32 %443, 28
  %or509 = or i32 %shl507, %shr508
  store i32 %or509, ptr %a, align 4, !tbaa !9
  %444 = load i32, ptr %b, align 4, !tbaa !9
  %445 = load i32, ptr %a, align 4, !tbaa !9
  %add510 = add i32 %445, %444
  store i32 %add510, ptr %a, align 4, !tbaa !9
  %446 = load i32, ptr %a, align 4, !tbaa !9
  %447 = load i32, ptr %b, align 4, !tbaa !9
  %xor511 = xor i32 %446, %447
  %448 = load i32, ptr %c, align 4, !tbaa !9
  %xor512 = xor i32 %xor511, %448
  %arrayidx513 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 12
  %449 = load i32, ptr %arrayidx513, align 16, !tbaa !9
  %add514 = add i32 %xor512, %449
  %add515 = add i32 %add514, -421815835
  %450 = load i32, ptr %d, align 4, !tbaa !9
  %add516 = add i32 %450, %add515
  store i32 %add516, ptr %d, align 4, !tbaa !9
  %451 = load i32, ptr %d, align 4, !tbaa !9
  %shl517 = shl i32 %451, 11
  %452 = load i32, ptr %d, align 4, !tbaa !9
  %shr518 = lshr i32 %452, 21
  %or519 = or i32 %shl517, %shr518
  store i32 %or519, ptr %d, align 4, !tbaa !9
  %453 = load i32, ptr %a, align 4, !tbaa !9
  %454 = load i32, ptr %d, align 4, !tbaa !9
  %add520 = add i32 %454, %453
  store i32 %add520, ptr %d, align 4, !tbaa !9
  %455 = load i32, ptr %d, align 4, !tbaa !9
  %456 = load i32, ptr %a, align 4, !tbaa !9
  %xor521 = xor i32 %455, %456
  %457 = load i32, ptr %b, align 4, !tbaa !9
  %xor522 = xor i32 %xor521, %457
  %arrayidx523 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 15
  %458 = load i32, ptr %arrayidx523, align 4, !tbaa !9
  %add524 = add i32 %xor522, %458
  %add525 = add i32 %add524, 530742520
  %459 = load i32, ptr %c, align 4, !tbaa !9
  %add526 = add i32 %459, %add525
  store i32 %add526, ptr %c, align 4, !tbaa !9
  %460 = load i32, ptr %c, align 4, !tbaa !9
  %shl527 = shl i32 %460, 16
  %461 = load i32, ptr %c, align 4, !tbaa !9
  %shr528 = lshr i32 %461, 16
  %or529 = or i32 %shl527, %shr528
  store i32 %or529, ptr %c, align 4, !tbaa !9
  %462 = load i32, ptr %d, align 4, !tbaa !9
  %463 = load i32, ptr %c, align 4, !tbaa !9
  %add530 = add i32 %463, %462
  store i32 %add530, ptr %c, align 4, !tbaa !9
  %464 = load i32, ptr %c, align 4, !tbaa !9
  %465 = load i32, ptr %d, align 4, !tbaa !9
  %xor531 = xor i32 %464, %465
  %466 = load i32, ptr %a, align 4, !tbaa !9
  %xor532 = xor i32 %xor531, %466
  %arrayidx533 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 2
  %467 = load i32, ptr %arrayidx533, align 8, !tbaa !9
  %add534 = add i32 %xor532, %467
  %add535 = add i32 %add534, -995338651
  %468 = load i32, ptr %b, align 4, !tbaa !9
  %add536 = add i32 %468, %add535
  store i32 %add536, ptr %b, align 4, !tbaa !9
  %469 = load i32, ptr %b, align 4, !tbaa !9
  %shl537 = shl i32 %469, 23
  %470 = load i32, ptr %b, align 4, !tbaa !9
  %shr538 = lshr i32 %470, 9
  %or539 = or i32 %shl537, %shr538
  store i32 %or539, ptr %b, align 4, !tbaa !9
  %471 = load i32, ptr %c, align 4, !tbaa !9
  %472 = load i32, ptr %b, align 4, !tbaa !9
  %add540 = add i32 %472, %471
  store i32 %add540, ptr %b, align 4, !tbaa !9
  %473 = load i32, ptr %c, align 4, !tbaa !9
  %474 = load i32, ptr %b, align 4, !tbaa !9
  %475 = load i32, ptr %d, align 4, !tbaa !9
  %not541 = xor i32 %475, -1
  %or542 = or i32 %474, %not541
  %xor543 = xor i32 %473, %or542
  %arrayidx544 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 0
  %476 = load i32, ptr %arrayidx544, align 16, !tbaa !9
  %add545 = add i32 %xor543, %476
  %add546 = add i32 %add545, -198630844
  %477 = load i32, ptr %a, align 4, !tbaa !9
  %add547 = add i32 %477, %add546
  store i32 %add547, ptr %a, align 4, !tbaa !9
  %478 = load i32, ptr %a, align 4, !tbaa !9
  %shl548 = shl i32 %478, 6
  %479 = load i32, ptr %a, align 4, !tbaa !9
  %shr549 = lshr i32 %479, 26
  %or550 = or i32 %shl548, %shr549
  store i32 %or550, ptr %a, align 4, !tbaa !9
  %480 = load i32, ptr %b, align 4, !tbaa !9
  %481 = load i32, ptr %a, align 4, !tbaa !9
  %add551 = add i32 %481, %480
  store i32 %add551, ptr %a, align 4, !tbaa !9
  %482 = load i32, ptr %b, align 4, !tbaa !9
  %483 = load i32, ptr %a, align 4, !tbaa !9
  %484 = load i32, ptr %c, align 4, !tbaa !9
  %not552 = xor i32 %484, -1
  %or553 = or i32 %483, %not552
  %xor554 = xor i32 %482, %or553
  %arrayidx555 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 7
  %485 = load i32, ptr %arrayidx555, align 4, !tbaa !9
  %add556 = add i32 %xor554, %485
  %add557 = add i32 %add556, 1126891415
  %486 = load i32, ptr %d, align 4, !tbaa !9
  %add558 = add i32 %486, %add557
  store i32 %add558, ptr %d, align 4, !tbaa !9
  %487 = load i32, ptr %d, align 4, !tbaa !9
  %shl559 = shl i32 %487, 10
  %488 = load i32, ptr %d, align 4, !tbaa !9
  %shr560 = lshr i32 %488, 22
  %or561 = or i32 %shl559, %shr560
  store i32 %or561, ptr %d, align 4, !tbaa !9
  %489 = load i32, ptr %a, align 4, !tbaa !9
  %490 = load i32, ptr %d, align 4, !tbaa !9
  %add562 = add i32 %490, %489
  store i32 %add562, ptr %d, align 4, !tbaa !9
  %491 = load i32, ptr %a, align 4, !tbaa !9
  %492 = load i32, ptr %d, align 4, !tbaa !9
  %493 = load i32, ptr %b, align 4, !tbaa !9
  %not563 = xor i32 %493, -1
  %or564 = or i32 %492, %not563
  %xor565 = xor i32 %491, %or564
  %arrayidx566 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 14
  %494 = load i32, ptr %arrayidx566, align 8, !tbaa !9
  %add567 = add i32 %xor565, %494
  %add568 = add i32 %add567, -1416354905
  %495 = load i32, ptr %c, align 4, !tbaa !9
  %add569 = add i32 %495, %add568
  store i32 %add569, ptr %c, align 4, !tbaa !9
  %496 = load i32, ptr %c, align 4, !tbaa !9
  %shl570 = shl i32 %496, 15
  %497 = load i32, ptr %c, align 4, !tbaa !9
  %shr571 = lshr i32 %497, 17
  %or572 = or i32 %shl570, %shr571
  store i32 %or572, ptr %c, align 4, !tbaa !9
  %498 = load i32, ptr %d, align 4, !tbaa !9
  %499 = load i32, ptr %c, align 4, !tbaa !9
  %add573 = add i32 %499, %498
  store i32 %add573, ptr %c, align 4, !tbaa !9
  %500 = load i32, ptr %d, align 4, !tbaa !9
  %501 = load i32, ptr %c, align 4, !tbaa !9
  %502 = load i32, ptr %a, align 4, !tbaa !9
  %not574 = xor i32 %502, -1
  %or575 = or i32 %501, %not574
  %xor576 = xor i32 %500, %or575
  %arrayidx577 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 5
  %503 = load i32, ptr %arrayidx577, align 4, !tbaa !9
  %add578 = add i32 %xor576, %503
  %add579 = add i32 %add578, -57434055
  %504 = load i32, ptr %b, align 4, !tbaa !9
  %add580 = add i32 %504, %add579
  store i32 %add580, ptr %b, align 4, !tbaa !9
  %505 = load i32, ptr %b, align 4, !tbaa !9
  %shl581 = shl i32 %505, 21
  %506 = load i32, ptr %b, align 4, !tbaa !9
  %shr582 = lshr i32 %506, 11
  %or583 = or i32 %shl581, %shr582
  store i32 %or583, ptr %b, align 4, !tbaa !9
  %507 = load i32, ptr %c, align 4, !tbaa !9
  %508 = load i32, ptr %b, align 4, !tbaa !9
  %add584 = add i32 %508, %507
  store i32 %add584, ptr %b, align 4, !tbaa !9
  %509 = load i32, ptr %c, align 4, !tbaa !9
  %510 = load i32, ptr %b, align 4, !tbaa !9
  %511 = load i32, ptr %d, align 4, !tbaa !9
  %not585 = xor i32 %511, -1
  %or586 = or i32 %510, %not585
  %xor587 = xor i32 %509, %or586
  %arrayidx588 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 12
  %512 = load i32, ptr %arrayidx588, align 16, !tbaa !9
  %add589 = add i32 %xor587, %512
  %add590 = add i32 %add589, 1700485571
  %513 = load i32, ptr %a, align 4, !tbaa !9
  %add591 = add i32 %513, %add590
  store i32 %add591, ptr %a, align 4, !tbaa !9
  %514 = load i32, ptr %a, align 4, !tbaa !9
  %shl592 = shl i32 %514, 6
  %515 = load i32, ptr %a, align 4, !tbaa !9
  %shr593 = lshr i32 %515, 26
  %or594 = or i32 %shl592, %shr593
  store i32 %or594, ptr %a, align 4, !tbaa !9
  %516 = load i32, ptr %b, align 4, !tbaa !9
  %517 = load i32, ptr %a, align 4, !tbaa !9
  %add595 = add i32 %517, %516
  store i32 %add595, ptr %a, align 4, !tbaa !9
  %518 = load i32, ptr %b, align 4, !tbaa !9
  %519 = load i32, ptr %a, align 4, !tbaa !9
  %520 = load i32, ptr %c, align 4, !tbaa !9
  %not596 = xor i32 %520, -1
  %or597 = or i32 %519, %not596
  %xor598 = xor i32 %518, %or597
  %arrayidx599 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 3
  %521 = load i32, ptr %arrayidx599, align 4, !tbaa !9
  %add600 = add i32 %xor598, %521
  %add601 = add i32 %add600, -1894986606
  %522 = load i32, ptr %d, align 4, !tbaa !9
  %add602 = add i32 %522, %add601
  store i32 %add602, ptr %d, align 4, !tbaa !9
  %523 = load i32, ptr %d, align 4, !tbaa !9
  %shl603 = shl i32 %523, 10
  %524 = load i32, ptr %d, align 4, !tbaa !9
  %shr604 = lshr i32 %524, 22
  %or605 = or i32 %shl603, %shr604
  store i32 %or605, ptr %d, align 4, !tbaa !9
  %525 = load i32, ptr %a, align 4, !tbaa !9
  %526 = load i32, ptr %d, align 4, !tbaa !9
  %add606 = add i32 %526, %525
  store i32 %add606, ptr %d, align 4, !tbaa !9
  %527 = load i32, ptr %a, align 4, !tbaa !9
  %528 = load i32, ptr %d, align 4, !tbaa !9
  %529 = load i32, ptr %b, align 4, !tbaa !9
  %not607 = xor i32 %529, -1
  %or608 = or i32 %528, %not607
  %xor609 = xor i32 %527, %or608
  %arrayidx610 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 10
  %530 = load i32, ptr %arrayidx610, align 8, !tbaa !9
  %add611 = add i32 %xor609, %530
  %add612 = add i32 %add611, -1051523
  %531 = load i32, ptr %c, align 4, !tbaa !9
  %add613 = add i32 %531, %add612
  store i32 %add613, ptr %c, align 4, !tbaa !9
  %532 = load i32, ptr %c, align 4, !tbaa !9
  %shl614 = shl i32 %532, 15
  %533 = load i32, ptr %c, align 4, !tbaa !9
  %shr615 = lshr i32 %533, 17
  %or616 = or i32 %shl614, %shr615
  store i32 %or616, ptr %c, align 4, !tbaa !9
  %534 = load i32, ptr %d, align 4, !tbaa !9
  %535 = load i32, ptr %c, align 4, !tbaa !9
  %add617 = add i32 %535, %534
  store i32 %add617, ptr %c, align 4, !tbaa !9
  %536 = load i32, ptr %d, align 4, !tbaa !9
  %537 = load i32, ptr %c, align 4, !tbaa !9
  %538 = load i32, ptr %a, align 4, !tbaa !9
  %not618 = xor i32 %538, -1
  %or619 = or i32 %537, %not618
  %xor620 = xor i32 %536, %or619
  %arrayidx621 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 1
  %539 = load i32, ptr %arrayidx621, align 4, !tbaa !9
  %add622 = add i32 %xor620, %539
  %add623 = add i32 %add622, -2054922799
  %540 = load i32, ptr %b, align 4, !tbaa !9
  %add624 = add i32 %540, %add623
  store i32 %add624, ptr %b, align 4, !tbaa !9
  %541 = load i32, ptr %b, align 4, !tbaa !9
  %shl625 = shl i32 %541, 21
  %542 = load i32, ptr %b, align 4, !tbaa !9
  %shr626 = lshr i32 %542, 11
  %or627 = or i32 %shl625, %shr626
  store i32 %or627, ptr %b, align 4, !tbaa !9
  %543 = load i32, ptr %c, align 4, !tbaa !9
  %544 = load i32, ptr %b, align 4, !tbaa !9
  %add628 = add i32 %544, %543
  store i32 %add628, ptr %b, align 4, !tbaa !9
  %545 = load i32, ptr %c, align 4, !tbaa !9
  %546 = load i32, ptr %b, align 4, !tbaa !9
  %547 = load i32, ptr %d, align 4, !tbaa !9
  %not629 = xor i32 %547, -1
  %or630 = or i32 %546, %not629
  %xor631 = xor i32 %545, %or630
  %arrayidx632 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 8
  %548 = load i32, ptr %arrayidx632, align 16, !tbaa !9
  %add633 = add i32 %xor631, %548
  %add634 = add i32 %add633, 1873313359
  %549 = load i32, ptr %a, align 4, !tbaa !9
  %add635 = add i32 %549, %add634
  store i32 %add635, ptr %a, align 4, !tbaa !9
  %550 = load i32, ptr %a, align 4, !tbaa !9
  %shl636 = shl i32 %550, 6
  %551 = load i32, ptr %a, align 4, !tbaa !9
  %shr637 = lshr i32 %551, 26
  %or638 = or i32 %shl636, %shr637
  store i32 %or638, ptr %a, align 4, !tbaa !9
  %552 = load i32, ptr %b, align 4, !tbaa !9
  %553 = load i32, ptr %a, align 4, !tbaa !9
  %add639 = add i32 %553, %552
  store i32 %add639, ptr %a, align 4, !tbaa !9
  %554 = load i32, ptr %b, align 4, !tbaa !9
  %555 = load i32, ptr %a, align 4, !tbaa !9
  %556 = load i32, ptr %c, align 4, !tbaa !9
  %not640 = xor i32 %556, -1
  %or641 = or i32 %555, %not640
  %xor642 = xor i32 %554, %or641
  %arrayidx643 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 15
  %557 = load i32, ptr %arrayidx643, align 4, !tbaa !9
  %add644 = add i32 %xor642, %557
  %add645 = add i32 %add644, -30611744
  %558 = load i32, ptr %d, align 4, !tbaa !9
  %add646 = add i32 %558, %add645
  store i32 %add646, ptr %d, align 4, !tbaa !9
  %559 = load i32, ptr %d, align 4, !tbaa !9
  %shl647 = shl i32 %559, 10
  %560 = load i32, ptr %d, align 4, !tbaa !9
  %shr648 = lshr i32 %560, 22
  %or649 = or i32 %shl647, %shr648
  store i32 %or649, ptr %d, align 4, !tbaa !9
  %561 = load i32, ptr %a, align 4, !tbaa !9
  %562 = load i32, ptr %d, align 4, !tbaa !9
  %add650 = add i32 %562, %561
  store i32 %add650, ptr %d, align 4, !tbaa !9
  %563 = load i32, ptr %a, align 4, !tbaa !9
  %564 = load i32, ptr %d, align 4, !tbaa !9
  %565 = load i32, ptr %b, align 4, !tbaa !9
  %not651 = xor i32 %565, -1
  %or652 = or i32 %564, %not651
  %xor653 = xor i32 %563, %or652
  %arrayidx654 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 6
  %566 = load i32, ptr %arrayidx654, align 8, !tbaa !9
  %add655 = add i32 %xor653, %566
  %add656 = add i32 %add655, -1560198380
  %567 = load i32, ptr %c, align 4, !tbaa !9
  %add657 = add i32 %567, %add656
  store i32 %add657, ptr %c, align 4, !tbaa !9
  %568 = load i32, ptr %c, align 4, !tbaa !9
  %shl658 = shl i32 %568, 15
  %569 = load i32, ptr %c, align 4, !tbaa !9
  %shr659 = lshr i32 %569, 17
  %or660 = or i32 %shl658, %shr659
  store i32 %or660, ptr %c, align 4, !tbaa !9
  %570 = load i32, ptr %d, align 4, !tbaa !9
  %571 = load i32, ptr %c, align 4, !tbaa !9
  %add661 = add i32 %571, %570
  store i32 %add661, ptr %c, align 4, !tbaa !9
  %572 = load i32, ptr %d, align 4, !tbaa !9
  %573 = load i32, ptr %c, align 4, !tbaa !9
  %574 = load i32, ptr %a, align 4, !tbaa !9
  %not662 = xor i32 %574, -1
  %or663 = or i32 %573, %not662
  %xor664 = xor i32 %572, %or663
  %arrayidx665 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 13
  %575 = load i32, ptr %arrayidx665, align 4, !tbaa !9
  %add666 = add i32 %xor664, %575
  %add667 = add i32 %add666, 1309151649
  %576 = load i32, ptr %b, align 4, !tbaa !9
  %add668 = add i32 %576, %add667
  store i32 %add668, ptr %b, align 4, !tbaa !9
  %577 = load i32, ptr %b, align 4, !tbaa !9
  %shl669 = shl i32 %577, 21
  %578 = load i32, ptr %b, align 4, !tbaa !9
  %shr670 = lshr i32 %578, 11
  %or671 = or i32 %shl669, %shr670
  store i32 %or671, ptr %b, align 4, !tbaa !9
  %579 = load i32, ptr %c, align 4, !tbaa !9
  %580 = load i32, ptr %b, align 4, !tbaa !9
  %add672 = add i32 %580, %579
  store i32 %add672, ptr %b, align 4, !tbaa !9
  %581 = load i32, ptr %c, align 4, !tbaa !9
  %582 = load i32, ptr %b, align 4, !tbaa !9
  %583 = load i32, ptr %d, align 4, !tbaa !9
  %not673 = xor i32 %583, -1
  %or674 = or i32 %582, %not673
  %xor675 = xor i32 %581, %or674
  %arrayidx676 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 4
  %584 = load i32, ptr %arrayidx676, align 16, !tbaa !9
  %add677 = add i32 %xor675, %584
  %add678 = add i32 %add677, -145523070
  %585 = load i32, ptr %a, align 4, !tbaa !9
  %add679 = add i32 %585, %add678
  store i32 %add679, ptr %a, align 4, !tbaa !9
  %586 = load i32, ptr %a, align 4, !tbaa !9
  %shl680 = shl i32 %586, 6
  %587 = load i32, ptr %a, align 4, !tbaa !9
  %shr681 = lshr i32 %587, 26
  %or682 = or i32 %shl680, %shr681
  store i32 %or682, ptr %a, align 4, !tbaa !9
  %588 = load i32, ptr %b, align 4, !tbaa !9
  %589 = load i32, ptr %a, align 4, !tbaa !9
  %add683 = add i32 %589, %588
  store i32 %add683, ptr %a, align 4, !tbaa !9
  %590 = load i32, ptr %b, align 4, !tbaa !9
  %591 = load i32, ptr %a, align 4, !tbaa !9
  %592 = load i32, ptr %c, align 4, !tbaa !9
  %not684 = xor i32 %592, -1
  %or685 = or i32 %591, %not684
  %xor686 = xor i32 %590, %or685
  %arrayidx687 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 11
  %593 = load i32, ptr %arrayidx687, align 4, !tbaa !9
  %add688 = add i32 %xor686, %593
  %add689 = add i32 %add688, -1120210379
  %594 = load i32, ptr %d, align 4, !tbaa !9
  %add690 = add i32 %594, %add689
  store i32 %add690, ptr %d, align 4, !tbaa !9
  %595 = load i32, ptr %d, align 4, !tbaa !9
  %shl691 = shl i32 %595, 10
  %596 = load i32, ptr %d, align 4, !tbaa !9
  %shr692 = lshr i32 %596, 22
  %or693 = or i32 %shl691, %shr692
  store i32 %or693, ptr %d, align 4, !tbaa !9
  %597 = load i32, ptr %a, align 4, !tbaa !9
  %598 = load i32, ptr %d, align 4, !tbaa !9
  %add694 = add i32 %598, %597
  store i32 %add694, ptr %d, align 4, !tbaa !9
  %599 = load i32, ptr %a, align 4, !tbaa !9
  %600 = load i32, ptr %d, align 4, !tbaa !9
  %601 = load i32, ptr %b, align 4, !tbaa !9
  %not695 = xor i32 %601, -1
  %or696 = or i32 %600, %not695
  %xor697 = xor i32 %599, %or696
  %arrayidx698 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 2
  %602 = load i32, ptr %arrayidx698, align 8, !tbaa !9
  %add699 = add i32 %xor697, %602
  %add700 = add i32 %add699, 718787259
  %603 = load i32, ptr %c, align 4, !tbaa !9
  %add701 = add i32 %603, %add700
  store i32 %add701, ptr %c, align 4, !tbaa !9
  %604 = load i32, ptr %c, align 4, !tbaa !9
  %shl702 = shl i32 %604, 15
  %605 = load i32, ptr %c, align 4, !tbaa !9
  %shr703 = lshr i32 %605, 17
  %or704 = or i32 %shl702, %shr703
  store i32 %or704, ptr %c, align 4, !tbaa !9
  %606 = load i32, ptr %d, align 4, !tbaa !9
  %607 = load i32, ptr %c, align 4, !tbaa !9
  %add705 = add i32 %607, %606
  store i32 %add705, ptr %c, align 4, !tbaa !9
  %608 = load i32, ptr %d, align 4, !tbaa !9
  %609 = load i32, ptr %c, align 4, !tbaa !9
  %610 = load i32, ptr %a, align 4, !tbaa !9
  %not706 = xor i32 %610, -1
  %or707 = or i32 %609, %not706
  %xor708 = xor i32 %608, %or707
  %arrayidx709 = getelementptr inbounds [16 x i32], ptr %x, i64 0, i64 9
  %611 = load i32, ptr %arrayidx709, align 4, !tbaa !9
  %add710 = add i32 %xor708, %611
  %add711 = add i32 %add710, -343485551
  %612 = load i32, ptr %b, align 4, !tbaa !9
  %add712 = add i32 %612, %add711
  store i32 %add712, ptr %b, align 4, !tbaa !9
  %613 = load i32, ptr %b, align 4, !tbaa !9
  %shl713 = shl i32 %613, 21
  %614 = load i32, ptr %b, align 4, !tbaa !9
  %shr714 = lshr i32 %614, 11
  %or715 = or i32 %shl713, %shr714
  store i32 %or715, ptr %b, align 4, !tbaa !9
  %615 = load i32, ptr %c, align 4, !tbaa !9
  %616 = load i32, ptr %b, align 4, !tbaa !9
  %add716 = add i32 %616, %615
  store i32 %add716, ptr %b, align 4, !tbaa !9
  %617 = load i32, ptr %a, align 4, !tbaa !9
  %618 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx717 = getelementptr inbounds i32, ptr %618, i64 0
  %619 = load i32, ptr %arrayidx717, align 4, !tbaa !9
  %add718 = add i32 %619, %617
  store i32 %add718, ptr %arrayidx717, align 4, !tbaa !9
  %620 = load i32, ptr %b, align 4, !tbaa !9
  %621 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx719 = getelementptr inbounds i32, ptr %621, i64 1
  %622 = load i32, ptr %arrayidx719, align 4, !tbaa !9
  %add720 = add i32 %622, %620
  store i32 %add720, ptr %arrayidx719, align 4, !tbaa !9
  %623 = load i32, ptr %c, align 4, !tbaa !9
  %624 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx721 = getelementptr inbounds i32, ptr %624, i64 2
  %625 = load i32, ptr %arrayidx721, align 4, !tbaa !9
  %add722 = add i32 %625, %623
  store i32 %add722, ptr %arrayidx721, align 4, !tbaa !9
  %626 = load i32, ptr %d, align 4, !tbaa !9
  %627 = load ptr, ptr %state.addr, align 8, !tbaa !5
  %arrayidx723 = getelementptr inbounds i32, ptr %627, i64 3
  %628 = load i32, ptr %arrayidx723, align 4, !tbaa !9
  %add724 = add i32 %628, %626
  store i32 %add724, ptr %arrayidx723, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 64, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @decode(ptr noundef %output, ptr noundef %input, i32 noundef %len) #0 {
entry:
  %output.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store i32 %len, ptr %len.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %i, align 4, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !9
  %1 = load i32, ptr %len.addr, align 4, !tbaa !9
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %3 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %6 = load i32, ptr %j, align 4, !tbaa !9
  %add = add i32 %6, 1
  %idxprom1 = zext i32 %add to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %idxprom1
  %7 = load i8, ptr %arrayidx2, align 1, !tbaa !14
  %conv3 = zext i8 %7 to i32
  %shl = shl i32 %conv3, 8
  %or = or i32 %conv, %shl
  %8 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %9 = load i32, ptr %j, align 4, !tbaa !9
  %add4 = add i32 %9, 2
  %idxprom5 = zext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5
  %10 = load i8, ptr %arrayidx6, align 1, !tbaa !14
  %conv7 = zext i8 %10 to i32
  %shl8 = shl i32 %conv7, 16
  %or9 = or i32 %or, %shl8
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %12 = load i32, ptr %j, align 4, !tbaa !9
  %add10 = add i32 %12, 3
  %idxprom11 = zext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %11, i64 %idxprom11
  %13 = load i8, ptr %arrayidx12, align 1, !tbaa !14
  %conv13 = zext i8 %13 to i32
  %shl14 = shl i32 %conv13, 24
  %or15 = or i32 %or9, %shl14
  %14 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom16 = zext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %14, i64 %idxprom16
  store i32 %or15, ptr %arrayidx17, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  %17 = load i32, ptr %j, align 4, !tbaa !9
  %add18 = add i32 %17, 4
  store i32 %add18, ptr %j, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @encode(ptr noundef %output, ptr noundef %input, i32 noundef %len) #0 {
entry:
  %output.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store i32 %len, ptr %len.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %i, align 4, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !9
  %1 = load i32, ptr %len.addr, align 4, !tbaa !9
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %and = and i32 %4, 255
  %conv = trunc i32 %and to i8
  %5 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %6 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom1 = zext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %idxprom1
  store i8 %conv, ptr %arrayidx2, align 1, !tbaa !14
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %7, i64 %idxprom3
  %9 = load i32, ptr %arrayidx4, align 4, !tbaa !9
  %shr = lshr i32 %9, 8
  %and5 = and i32 %shr, 255
  %conv6 = trunc i32 %and5 to i8
  %10 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !9
  %add = add i32 %11, 1
  %idxprom7 = zext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 %idxprom7
  store i8 %conv6, ptr %arrayidx8, align 1, !tbaa !14
  %12 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom9 = zext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %12, i64 %idxprom9
  %14 = load i32, ptr %arrayidx10, align 4, !tbaa !9
  %shr11 = lshr i32 %14, 16
  %and12 = and i32 %shr11, 255
  %conv13 = trunc i32 %and12 to i8
  %15 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !9
  %add14 = add i32 %16, 2
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 %idxprom15
  store i8 %conv13, ptr %arrayidx16, align 1, !tbaa !14
  %17 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom17 = zext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %17, i64 %idxprom17
  %19 = load i32, ptr %arrayidx18, align 4, !tbaa !9
  %shr19 = lshr i32 %19, 24
  %and20 = and i32 %shr19, 255
  %conv21 = trunc i32 %and20 to i8
  %20 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %21 = load i32, ptr %j, align 4, !tbaa !9
  %add22 = add i32 %21, 3
  %idxprom23 = zext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 %idxprom23
  store i8 %conv21, ptr %arrayidx24, align 1, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add i32 %22, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  %23 = load i32, ptr %j, align 4, !tbaa !9
  %add25 = add i32 %23, 4
  store i32 %add25, ptr %j, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

declare ptr @Mem_calloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}

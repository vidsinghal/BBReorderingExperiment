; ModuleID = 'samples/364.bc'
source_filename = "crypto/sha/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @SHA224_Init(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 112, i1 false)
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.SHA256state_st, ptr %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 0
  store i32 -1056596264, ptr %arrayidx, align 4, !tbaa !8
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h1 = getelementptr inbounds %struct.SHA256state_st, ptr %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %h1, i64 0, i64 1
  store i32 914150663, ptr %arrayidx2, align 4, !tbaa !8
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h3 = getelementptr inbounds %struct.SHA256state_st, ptr %3, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %h3, i64 0, i64 2
  store i32 812702999, ptr %arrayidx4, align 4, !tbaa !8
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h5 = getelementptr inbounds %struct.SHA256state_st, ptr %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr %h5, i64 0, i64 3
  store i32 -150054599, ptr %arrayidx6, align 4, !tbaa !8
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h7 = getelementptr inbounds %struct.SHA256state_st, ptr %5, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i32], ptr %h7, i64 0, i64 4
  store i32 -4191439, ptr %arrayidx8, align 4, !tbaa !8
  %6 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h9 = getelementptr inbounds %struct.SHA256state_st, ptr %6, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], ptr %h9, i64 0, i64 5
  store i32 1750603025, ptr %arrayidx10, align 4, !tbaa !8
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h11 = getelementptr inbounds %struct.SHA256state_st, ptr %7, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], ptr %h11, i64 0, i64 6
  store i32 1694076839, ptr %arrayidx12, align 4, !tbaa !8
  %8 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h13 = getelementptr inbounds %struct.SHA256state_st, ptr %8, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i32], ptr %h13, i64 0, i64 7
  store i32 -1090891868, ptr %arrayidx14, align 4, !tbaa !8
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %md_len = getelementptr inbounds %struct.SHA256state_st, ptr %9, i32 0, i32 5
  store i32 28, ptr %md_len, align 4, !tbaa !10
  ret i32 1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @SHA256_Init(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 112, i1 false)
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.SHA256state_st, ptr %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 0
  store i32 1779033703, ptr %arrayidx, align 4, !tbaa !8
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h1 = getelementptr inbounds %struct.SHA256state_st, ptr %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %h1, i64 0, i64 1
  store i32 -1150833019, ptr %arrayidx2, align 4, !tbaa !8
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h3 = getelementptr inbounds %struct.SHA256state_st, ptr %3, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %h3, i64 0, i64 2
  store i32 1013904242, ptr %arrayidx4, align 4, !tbaa !8
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h5 = getelementptr inbounds %struct.SHA256state_st, ptr %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr %h5, i64 0, i64 3
  store i32 -1521486534, ptr %arrayidx6, align 4, !tbaa !8
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h7 = getelementptr inbounds %struct.SHA256state_st, ptr %5, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [8 x i32], ptr %h7, i64 0, i64 4
  store i32 1359893119, ptr %arrayidx8, align 4, !tbaa !8
  %6 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h9 = getelementptr inbounds %struct.SHA256state_st, ptr %6, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i32], ptr %h9, i64 0, i64 5
  store i32 -1694144372, ptr %arrayidx10, align 4, !tbaa !8
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h11 = getelementptr inbounds %struct.SHA256state_st, ptr %7, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [8 x i32], ptr %h11, i64 0, i64 6
  store i32 528734635, ptr %arrayidx12, align 4, !tbaa !8
  %8 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h13 = getelementptr inbounds %struct.SHA256state_st, ptr %8, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i32], ptr %h13, i64 0, i64 7
  store i32 1541459225, ptr %arrayidx14, align 4, !tbaa !8
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %md_len = getelementptr inbounds %struct.SHA256state_st, ptr %9, i32 0, i32 5
  store i32 32, ptr %md_len, align 4, !tbaa !10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @SHA224_Update(ptr noundef %c, ptr noundef %data, i64 noundef %len) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !12
  %call = call i32 @SHA256_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @SHA256_Update(ptr noundef %c, ptr noundef %data_, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %data_.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %l = alloca i32, align 4
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data_, ptr %data_.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #5
  %0 = load ptr, ptr %data_.addr, align 8, !tbaa !4
  store ptr %0, ptr %data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %1 = load i64, ptr %len.addr, align 8, !tbaa !12
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHA256state_st, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %Nl, align 4, !tbaa !14
  %4 = load i64, ptr %len.addr, align 8, !tbaa !12
  %conv = trunc i64 %4 to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %3, %shl
  %conv1 = zext i32 %add to i64
  %and = and i64 %conv1, 4294967295
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, ptr %l, align 4, !tbaa !8
  %5 = load i32, ptr %l, align 4, !tbaa !8
  %6 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl3 = getelementptr inbounds %struct.SHA256state_st, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %Nl3, align 4, !tbaa !14
  %cmp4 = icmp ult i32 %5, %7
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh = getelementptr inbounds %struct.SHA256state_st, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %Nh, align 4, !tbaa !15
  %inc = add i32 %9, 1
  store i32 %inc, ptr %Nh, align 4, !tbaa !15
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load i64, ptr %len.addr, align 8, !tbaa !12
  %shr = lshr i64 %10, 29
  %conv8 = trunc i64 %shr to i32
  %11 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh9 = getelementptr inbounds %struct.SHA256state_st, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %Nh9, align 4, !tbaa !15
  %add10 = add i32 %12, %conv8
  store i32 %add10, ptr %Nh9, align 4, !tbaa !15
  %13 = load i32, ptr %l, align 4, !tbaa !8
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl11 = getelementptr inbounds %struct.SHA256state_st, ptr %14, i32 0, i32 1
  store i32 %13, ptr %Nl11, align 4, !tbaa !14
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHA256state_st, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %num, align 4, !tbaa !16
  %conv12 = zext i32 %16 to i64
  store i64 %conv12, ptr %n, align 8, !tbaa !12
  %17 = load i64, ptr %n, align 8, !tbaa !12
  %cmp13 = icmp ne i64 %17, 0
  br i1 %cmp13, label %if.then15, label %if.end32

if.then15:                                        ; preds = %if.end7
  %18 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %data16 = getelementptr inbounds %struct.SHA256state_st, ptr %18, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i32], ptr %data16, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !4
  %19 = load i64, ptr %len.addr, align 8, !tbaa !12
  %cmp17 = icmp uge i64 %19, 64
  br i1 %cmp17, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %20 = load i64, ptr %len.addr, align 8, !tbaa !12
  %21 = load i64, ptr %n, align 8, !tbaa !12
  %add19 = add i64 %20, %21
  %cmp20 = icmp uge i64 %add19, 64
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %lor.lhs.false, %if.then15
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %23 = load i64, ptr %n, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %23
  %24 = load ptr, ptr %data, align 8, !tbaa !4
  %25 = load i64, ptr %n, align 8, !tbaa !12
  %sub = sub i64 64, %25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %24, i64 %sub, i1 false)
  %26 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  call void @sha256_block_data_order(ptr noundef %26, ptr noundef %27, i64 noundef 1)
  %28 = load i64, ptr %n, align 8, !tbaa !12
  %sub23 = sub i64 64, %28
  store i64 %sub23, ptr %n, align 8, !tbaa !12
  %29 = load i64, ptr %n, align 8, !tbaa !12
  %30 = load ptr, ptr %data, align 8, !tbaa !4
  %add.ptr24 = getelementptr inbounds i8, ptr %30, i64 %29
  store ptr %add.ptr24, ptr %data, align 8, !tbaa !4
  %31 = load i64, ptr %n, align 8, !tbaa !12
  %32 = load i64, ptr %len.addr, align 8, !tbaa !12
  %sub25 = sub i64 %32, %31
  store i64 %sub25, ptr %len.addr, align 8, !tbaa !12
  %33 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num26 = getelementptr inbounds %struct.SHA256state_st, ptr %33, i32 0, i32 4
  store i32 0, ptr %num26, align 4, !tbaa !16
  %34 = load ptr, ptr %p, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 1 %34, i8 0, i64 64, i1 false)
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %36 = load i64, ptr %n, align 8, !tbaa !12
  %add.ptr27 = getelementptr inbounds i8, ptr %35, i64 %36
  %37 = load ptr, ptr %data, align 8, !tbaa !4
  %38 = load i64, ptr %len.addr, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr27, ptr align 1 %37, i64 %38, i1 false)
  %39 = load i64, ptr %len.addr, align 8, !tbaa !12
  %conv28 = trunc i64 %39 to i32
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num29 = getelementptr inbounds %struct.SHA256state_st, ptr %40, i32 0, i32 4
  %41 = load i32, ptr %num29, align 4, !tbaa !16
  %add30 = add i32 %41, %conv28
  store i32 %add30, ptr %num29, align 4, !tbaa !16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end7
  %42 = load i64, ptr %len.addr, align 8, !tbaa !12
  %div = udiv i64 %42, 64
  store i64 %div, ptr %n, align 8, !tbaa !12
  %43 = load i64, ptr %n, align 8, !tbaa !12
  %cmp33 = icmp ugt i64 %43, 0
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %data, align 8, !tbaa !4
  %46 = load i64, ptr %n, align 8, !tbaa !12
  call void @sha256_block_data_order(ptr noundef %44, ptr noundef %45, i64 noundef %46)
  %47 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul i64 %47, 64
  store i64 %mul, ptr %n, align 8, !tbaa !12
  %48 = load i64, ptr %n, align 8, !tbaa !12
  %49 = load ptr, ptr %data, align 8, !tbaa !4
  %add.ptr36 = getelementptr inbounds i8, ptr %49, i64 %48
  store ptr %add.ptr36, ptr %data, align 8, !tbaa !4
  %50 = load i64, ptr %n, align 8, !tbaa !12
  %51 = load i64, ptr %len.addr, align 8, !tbaa !12
  %sub37 = sub i64 %51, %50
  store i64 %sub37, ptr %len.addr, align 8, !tbaa !12
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32
  %52 = load i64, ptr %len.addr, align 8, !tbaa !12
  %cmp39 = icmp ne i64 %52, 0
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end38
  %53 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %data42 = getelementptr inbounds %struct.SHA256state_st, ptr %53, i32 0, i32 3
  %arraydecay43 = getelementptr inbounds [16 x i32], ptr %data42, i64 0, i64 0
  store ptr %arraydecay43, ptr %p, align 8, !tbaa !4
  %54 = load i64, ptr %len.addr, align 8, !tbaa !12
  %conv44 = trunc i64 %54 to i32
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num45 = getelementptr inbounds %struct.SHA256state_st, ptr %55, i32 0, i32 4
  store i32 %conv44, ptr %num45, align 4, !tbaa !16
  %56 = load ptr, ptr %p, align 8, !tbaa !4
  %57 = load ptr, ptr %data, align 8, !tbaa !4
  %58 = load i64, ptr %len.addr, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %57, i64 %58, i1 false)
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #5
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @SHA224_Final(ptr noundef %md, ptr noundef %c) #0 {
entry:
  %md.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  store ptr %md, ptr %md.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call i32 @SHA256_Final(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @SHA256_Final(ptr noundef %md, ptr noundef %c) #0 {
entry:
  %retval = alloca i32, align 4
  %md.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i64, align 8
  %ll = alloca i64, align 8
  %nn = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %md, ptr %md.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.SHA256state_st, ptr %0, i32 0, i32 3
  %arraydecay = getelementptr inbounds [16 x i32], ptr %data, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHA256state_st, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %num, align 4, !tbaa !16
  %conv = zext i32 %2 to i64
  store i64 %conv, ptr %n, align 8, !tbaa !12
  %3 = load ptr, ptr %p, align 8, !tbaa !4
  %4 = load i64, ptr %n, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
  store i8 -128, ptr %arrayidx, align 1, !tbaa !17
  %5 = load i64, ptr %n, align 8, !tbaa !12
  %inc = add i64 %5, 1
  store i64 %inc, ptr %n, align 8, !tbaa !12
  %6 = load i64, ptr %n, align 8, !tbaa !12
  %cmp = icmp ugt i64 %6, 56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %8 = load i64, ptr %n, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i64, ptr %n, align 8, !tbaa !12
  %sub = sub i64 64, %9
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  store i64 0, ptr %n, align 8, !tbaa !12
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  call void @sha256_block_data_order(ptr noundef %10, ptr noundef %11, i64 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %13 = load i64, ptr %n, align 8, !tbaa !12
  %add.ptr2 = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load i64, ptr %n, align 8, !tbaa !12
  %sub3 = sub i64 56, %14
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr2, i8 0, i64 %sub3, i1 false)
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr4 = getelementptr inbounds i8, ptr %15, i64 56
  store ptr %add.ptr4, ptr %p, align 8, !tbaa !4
  %16 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh = getelementptr inbounds %struct.SHA256state_st, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %Nh, align 4, !tbaa !15
  %shr = lshr i32 %17, 24
  %and = and i32 %shr, 255
  %conv5 = trunc i32 %and to i8
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %conv5, ptr %18, align 1, !tbaa !17
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh6 = getelementptr inbounds %struct.SHA256state_st, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %Nh6, align 4, !tbaa !15
  %shr7 = lshr i32 %20, 16
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr10, ptr %p, align 8, !tbaa !4
  store i8 %conv9, ptr %21, align 1, !tbaa !17
  %22 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh11 = getelementptr inbounds %struct.SHA256state_st, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %Nh11, align 4, !tbaa !15
  %shr12 = lshr i32 %23, 8
  %and13 = and i32 %shr12, 255
  %conv14 = trunc i32 %and13 to i8
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr15 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr15, ptr %p, align 8, !tbaa !4
  store i8 %conv14, ptr %24, align 1, !tbaa !17
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh16 = getelementptr inbounds %struct.SHA256state_st, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %Nh16, align 4, !tbaa !15
  %and17 = and i32 %26, 255
  %conv18 = trunc i32 %and17 to i8
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr19, ptr %p, align 8, !tbaa !4
  store i8 %conv18, ptr %27, align 1, !tbaa !17
  %28 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh20 = getelementptr inbounds %struct.SHA256state_st, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %Nh20, align 4, !tbaa !15
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHA256state_st, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %Nl, align 4, !tbaa !14
  %shr21 = lshr i32 %31, 24
  %and22 = and i32 %shr21, 255
  %conv23 = trunc i32 %and22 to i8
  %32 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr24 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr24, ptr %p, align 8, !tbaa !4
  store i8 %conv23, ptr %32, align 1, !tbaa !17
  %33 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl25 = getelementptr inbounds %struct.SHA256state_st, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %Nl25, align 4, !tbaa !14
  %shr26 = lshr i32 %34, 16
  %and27 = and i32 %shr26, 255
  %conv28 = trunc i32 %and27 to i8
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr29 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr29, ptr %p, align 8, !tbaa !4
  store i8 %conv28, ptr %35, align 1, !tbaa !17
  %36 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl30 = getelementptr inbounds %struct.SHA256state_st, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %Nl30, align 4, !tbaa !14
  %shr31 = lshr i32 %37, 8
  %and32 = and i32 %shr31, 255
  %conv33 = trunc i32 %and32 to i8
  %38 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr34 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr34, ptr %p, align 8, !tbaa !4
  store i8 %conv33, ptr %38, align 1, !tbaa !17
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl35 = getelementptr inbounds %struct.SHA256state_st, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %Nl35, align 4, !tbaa !14
  %and36 = and i32 %40, 255
  %conv37 = trunc i32 %and36 to i8
  %41 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr38 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !4
  store i8 %conv37, ptr %41, align 1, !tbaa !17
  %42 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl39 = getelementptr inbounds %struct.SHA256state_st, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %Nl39, align 4, !tbaa !14
  %44 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr40 = getelementptr inbounds i8, ptr %44, i64 -64
  store ptr %add.ptr40, ptr %p, align 8, !tbaa !4
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %p, align 8, !tbaa !4
  call void @sha256_block_data_order(ptr noundef %45, ptr noundef %46, i64 noundef 1)
  %47 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num41 = getelementptr inbounds %struct.SHA256state_st, ptr %47, i32 0, i32 4
  store i32 0, ptr %num41, align 4, !tbaa !16
  %48 = load ptr, ptr %p, align 8, !tbaa !4
  call void @OPENSSL_cleanse(ptr noundef %48, i64 noundef 64)
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #5
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %md_len = getelementptr inbounds %struct.SHA256state_st, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %md_len, align 4, !tbaa !10
  switch i32 %50, label %sw.default [
    i32 28, label %sw.bb
    i32 32, label %sw.bb62
  ]

sw.bb:                                            ; preds = %do.body
  store i32 0, ptr %nn, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %51 = load i32, ptr %nn, align 4, !tbaa !8
  %cmp42 = icmp ult i32 %51, 7
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.SHA256state_st, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %nn, align 4, !tbaa !8
  %idxprom = zext i32 %53 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %h, i64 0, i64 %idxprom
  %54 = load i32, ptr %arrayidx44, align 4, !tbaa !8
  %conv45 = zext i32 %54 to i64
  store i64 %conv45, ptr %ll, align 8, !tbaa !12
  %55 = load i64, ptr %ll, align 8, !tbaa !12
  %shr46 = lshr i64 %55, 24
  %and47 = and i64 %shr46, 255
  %conv48 = trunc i64 %and47 to i8
  %56 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr49 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr49, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv48, ptr %56, align 1, !tbaa !17
  %57 = load i64, ptr %ll, align 8, !tbaa !12
  %shr50 = lshr i64 %57, 16
  %and51 = and i64 %shr50, 255
  %conv52 = trunc i64 %and51 to i8
  %58 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr53 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr53, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv52, ptr %58, align 1, !tbaa !17
  %59 = load i64, ptr %ll, align 8, !tbaa !12
  %shr54 = lshr i64 %59, 8
  %and55 = and i64 %shr54, 255
  %conv56 = trunc i64 %and55 to i8
  %60 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr57 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr57, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv56, ptr %60, align 1, !tbaa !17
  %61 = load i64, ptr %ll, align 8, !tbaa !12
  %and58 = and i64 %61, 255
  %conv59 = trunc i64 %and58 to i8
  %62 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr60 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr60, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv59, ptr %62, align 1, !tbaa !17
  %63 = load i64, ptr %ll, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %nn, align 4, !tbaa !8
  %inc61 = add i32 %64, 1
  store i32 %inc61, ptr %nn, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb62:                                          ; preds = %do.body
  store i32 0, ptr %nn, align 4, !tbaa !8
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc86, %sw.bb62
  %65 = load i32, ptr %nn, align 4, !tbaa !8
  %cmp64 = icmp ult i32 %65, 8
  br i1 %cmp64, label %for.body66, label %for.end88

for.body66:                                       ; preds = %for.cond63
  %66 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h67 = getelementptr inbounds %struct.SHA256state_st, ptr %66, i32 0, i32 0
  %67 = load i32, ptr %nn, align 4, !tbaa !8
  %idxprom68 = zext i32 %67 to i64
  %arrayidx69 = getelementptr inbounds [8 x i32], ptr %h67, i64 0, i64 %idxprom68
  %68 = load i32, ptr %arrayidx69, align 4, !tbaa !8
  %conv70 = zext i32 %68 to i64
  store i64 %conv70, ptr %ll, align 8, !tbaa !12
  %69 = load i64, ptr %ll, align 8, !tbaa !12
  %shr71 = lshr i64 %69, 24
  %and72 = and i64 %shr71, 255
  %conv73 = trunc i64 %and72 to i8
  %70 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr74 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr74, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv73, ptr %70, align 1, !tbaa !17
  %71 = load i64, ptr %ll, align 8, !tbaa !12
  %shr75 = lshr i64 %71, 16
  %and76 = and i64 %shr75, 255
  %conv77 = trunc i64 %and76 to i8
  %72 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr78 = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %incdec.ptr78, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv77, ptr %72, align 1, !tbaa !17
  %73 = load i64, ptr %ll, align 8, !tbaa !12
  %shr79 = lshr i64 %73, 8
  %and80 = and i64 %shr79, 255
  %conv81 = trunc i64 %and80 to i8
  %74 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr82 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr82, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv81, ptr %74, align 1, !tbaa !17
  %75 = load i64, ptr %ll, align 8, !tbaa !12
  %and83 = and i64 %75, 255
  %conv84 = trunc i64 %and83 to i8
  %76 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr85 = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr85, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv84, ptr %76, align 1, !tbaa !17
  %77 = load i64, ptr %ll, align 8, !tbaa !12
  br label %for.inc86

for.inc86:                                        ; preds = %for.body66
  %78 = load i32, ptr %nn, align 4, !tbaa !8
  %inc87 = add i32 %78, 1
  store i32 %inc87, ptr %nn, align 4, !tbaa !8
  br label %for.cond63, !llvm.loop !20

for.end88:                                        ; preds = %for.cond63
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %md_len89 = getelementptr inbounds %struct.SHA256state_st, ptr %79, i32 0, i32 5
  %80 = load i32, ptr %md_len89, align 4, !tbaa !10
  %cmp90 = icmp ugt i32 %80, 32
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %sw.default
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end93:                                         ; preds = %sw.default
  store i32 0, ptr %nn, align 4, !tbaa !8
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc118, %if.end93
  %81 = load i32, ptr %nn, align 4, !tbaa !8
  %82 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %md_len95 = getelementptr inbounds %struct.SHA256state_st, ptr %82, i32 0, i32 5
  %83 = load i32, ptr %md_len95, align 4, !tbaa !10
  %div = udiv i32 %83, 4
  %cmp96 = icmp ult i32 %81, %div
  br i1 %cmp96, label %for.body98, label %for.end120

for.body98:                                       ; preds = %for.cond94
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h99 = getelementptr inbounds %struct.SHA256state_st, ptr %84, i32 0, i32 0
  %85 = load i32, ptr %nn, align 4, !tbaa !8
  %idxprom100 = zext i32 %85 to i64
  %arrayidx101 = getelementptr inbounds [8 x i32], ptr %h99, i64 0, i64 %idxprom100
  %86 = load i32, ptr %arrayidx101, align 4, !tbaa !8
  %conv102 = zext i32 %86 to i64
  store i64 %conv102, ptr %ll, align 8, !tbaa !12
  %87 = load i64, ptr %ll, align 8, !tbaa !12
  %shr103 = lshr i64 %87, 24
  %and104 = and i64 %shr103, 255
  %conv105 = trunc i64 %and104 to i8
  %88 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr106 = getelementptr inbounds i8, ptr %88, i32 1
  store ptr %incdec.ptr106, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv105, ptr %88, align 1, !tbaa !17
  %89 = load i64, ptr %ll, align 8, !tbaa !12
  %shr107 = lshr i64 %89, 16
  %and108 = and i64 %shr107, 255
  %conv109 = trunc i64 %and108 to i8
  %90 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr110 = getelementptr inbounds i8, ptr %90, i32 1
  store ptr %incdec.ptr110, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv109, ptr %90, align 1, !tbaa !17
  %91 = load i64, ptr %ll, align 8, !tbaa !12
  %shr111 = lshr i64 %91, 8
  %and112 = and i64 %shr111, 255
  %conv113 = trunc i64 %and112 to i8
  %92 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr114 = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %incdec.ptr114, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv113, ptr %92, align 1, !tbaa !17
  %93 = load i64, ptr %ll, align 8, !tbaa !12
  %and115 = and i64 %93, 255
  %conv116 = trunc i64 %and115 to i8
  %94 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr117 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr117, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv116, ptr %94, align 1, !tbaa !17
  %95 = load i64, ptr %ll, align 8, !tbaa !12
  br label %for.inc118

for.inc118:                                       ; preds = %for.body98
  %96 = load i32, ptr %nn, align 4, !tbaa !8
  %inc119 = add i32 %96, 1
  store i32 %inc119, ptr %nn, align 4, !tbaa !8
  br label %for.cond94, !llvm.loop !21

for.end120:                                       ; preds = %for.cond94
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end120, %for.end88, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then92
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup122 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122

cleanup122:                                       ; preds = %do.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @sha256_block_data_order(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define void @SHA256_Transform(ptr noundef %c, ptr noundef %data) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  call void @sha256_block_data_order(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!10 = !{!11, !9, i64 108}
!11 = !{!"SHA256state_st", !6, i64 0, !9, i64 32, !9, i64 36, !6, i64 40, !9, i64 104, !9, i64 108}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!11, !9, i64 32}
!15 = !{!11, !9, i64 36}
!16 = !{!11, !9, i64 104}
!17 = !{!6, !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}

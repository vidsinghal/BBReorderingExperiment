; ModuleID = 'samples/681.bc'
source_filename = "crypto/sha/sha1dgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

; Function Attrs: nounwind uwtable
define i32 @SHA1_Update(ptr noundef %c, ptr noundef %data_, i64 noundef %len) #0 {
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
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #5
  %0 = load ptr, ptr %data_.addr, align 8, !tbaa !4
  store ptr %0, ptr %data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %1 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHAstate_st, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %Nl, align 4, !tbaa !10
  %4 = load i64, ptr %len.addr, align 8, !tbaa !8
  %conv = trunc i64 %4 to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %3, %shl
  %conv1 = zext i32 %add to i64
  %and = and i64 %conv1, 4294967295
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, ptr %l, align 4, !tbaa !13
  %5 = load i32, ptr %l, align 4, !tbaa !13
  %6 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl3 = getelementptr inbounds %struct.SHAstate_st, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %Nl3, align 4, !tbaa !10
  %cmp4 = icmp ult i32 %5, %7
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh = getelementptr inbounds %struct.SHAstate_st, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %Nh, align 4, !tbaa !14
  %inc = add i32 %9, 1
  store i32 %inc, ptr %Nh, align 4, !tbaa !14
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load i64, ptr %len.addr, align 8, !tbaa !8
  %shr = lshr i64 %10, 29
  %conv8 = trunc i64 %shr to i32
  %11 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh9 = getelementptr inbounds %struct.SHAstate_st, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %Nh9, align 4, !tbaa !14
  %add10 = add i32 %12, %conv8
  store i32 %add10, ptr %Nh9, align 4, !tbaa !14
  %13 = load i32, ptr %l, align 4, !tbaa !13
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl11 = getelementptr inbounds %struct.SHAstate_st, ptr %14, i32 0, i32 5
  store i32 %13, ptr %Nl11, align 4, !tbaa !10
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHAstate_st, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %num, align 4, !tbaa !15
  %conv12 = zext i32 %16 to i64
  store i64 %conv12, ptr %n, align 8, !tbaa !8
  %17 = load i64, ptr %n, align 8, !tbaa !8
  %cmp13 = icmp ne i64 %17, 0
  br i1 %cmp13, label %if.then15, label %if.end32

if.then15:                                        ; preds = %if.end7
  %18 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %data16 = getelementptr inbounds %struct.SHAstate_st, ptr %18, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i32], ptr %data16, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !4
  %19 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp17 = icmp uge i64 %19, 64
  br i1 %cmp17, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %20 = load i64, ptr %len.addr, align 8, !tbaa !8
  %21 = load i64, ptr %n, align 8, !tbaa !8
  %add19 = add i64 %20, %21
  %cmp20 = icmp uge i64 %add19, 64
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %lor.lhs.false, %if.then15
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %23 = load i64, ptr %n, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %23
  %24 = load ptr, ptr %data, align 8, !tbaa !4
  %25 = load i64, ptr %n, align 8, !tbaa !8
  %sub = sub i64 64, %25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %24, i64 %sub, i1 false)
  %26 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  call void @sha1_block_data_order(ptr noundef %26, ptr noundef %27, i64 noundef 1)
  %28 = load i64, ptr %n, align 8, !tbaa !8
  %sub23 = sub i64 64, %28
  store i64 %sub23, ptr %n, align 8, !tbaa !8
  %29 = load i64, ptr %n, align 8, !tbaa !8
  %30 = load ptr, ptr %data, align 8, !tbaa !4
  %add.ptr24 = getelementptr inbounds i8, ptr %30, i64 %29
  store ptr %add.ptr24, ptr %data, align 8, !tbaa !4
  %31 = load i64, ptr %n, align 8, !tbaa !8
  %32 = load i64, ptr %len.addr, align 8, !tbaa !8
  %sub25 = sub i64 %32, %31
  store i64 %sub25, ptr %len.addr, align 8, !tbaa !8
  %33 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num26 = getelementptr inbounds %struct.SHAstate_st, ptr %33, i32 0, i32 8
  store i32 0, ptr %num26, align 4, !tbaa !15
  %34 = load ptr, ptr %p, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 1 %34, i8 0, i64 64, i1 false)
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %36 = load i64, ptr %n, align 8, !tbaa !8
  %add.ptr27 = getelementptr inbounds i8, ptr %35, i64 %36
  %37 = load ptr, ptr %data, align 8, !tbaa !4
  %38 = load i64, ptr %len.addr, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr27, ptr align 1 %37, i64 %38, i1 false)
  %39 = load i64, ptr %len.addr, align 8, !tbaa !8
  %conv28 = trunc i64 %39 to i32
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num29 = getelementptr inbounds %struct.SHAstate_st, ptr %40, i32 0, i32 8
  %41 = load i32, ptr %num29, align 4, !tbaa !15
  %add30 = add i32 %41, %conv28
  store i32 %add30, ptr %num29, align 4, !tbaa !15
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end7
  %42 = load i64, ptr %len.addr, align 8, !tbaa !8
  %div = udiv i64 %42, 64
  store i64 %div, ptr %n, align 8, !tbaa !8
  %43 = load i64, ptr %n, align 8, !tbaa !8
  %cmp33 = icmp ugt i64 %43, 0
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %data, align 8, !tbaa !4
  %46 = load i64, ptr %n, align 8, !tbaa !8
  call void @sha1_block_data_order(ptr noundef %44, ptr noundef %45, i64 noundef %46)
  %47 = load i64, ptr %n, align 8, !tbaa !8
  %mul = mul i64 %47, 64
  store i64 %mul, ptr %n, align 8, !tbaa !8
  %48 = load i64, ptr %n, align 8, !tbaa !8
  %49 = load ptr, ptr %data, align 8, !tbaa !4
  %add.ptr36 = getelementptr inbounds i8, ptr %49, i64 %48
  store ptr %add.ptr36, ptr %data, align 8, !tbaa !4
  %50 = load i64, ptr %n, align 8, !tbaa !8
  %51 = load i64, ptr %len.addr, align 8, !tbaa !8
  %sub37 = sub i64 %51, %50
  store i64 %sub37, ptr %len.addr, align 8, !tbaa !8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32
  %52 = load i64, ptr %len.addr, align 8, !tbaa !8
  %cmp39 = icmp ne i64 %52, 0
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end38
  %53 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %data42 = getelementptr inbounds %struct.SHAstate_st, ptr %53, i32 0, i32 7
  %arraydecay43 = getelementptr inbounds [16 x i32], ptr %data42, i64 0, i64 0
  store ptr %arraydecay43, ptr %p, align 8, !tbaa !4
  %54 = load i64, ptr %len.addr, align 8, !tbaa !8
  %conv44 = trunc i64 %54 to i32
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num45 = getelementptr inbounds %struct.SHAstate_st, ptr %55, i32 0, i32 8
  store i32 %conv44, ptr %num45, align 4, !tbaa !15
  %56 = load ptr, ptr %p, align 8, !tbaa !4
  %57 = load ptr, ptr %data, align 8, !tbaa !4
  %58 = load i64, ptr %len.addr, align 8, !tbaa !8
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @sha1_block_data_order(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @SHA1_Transform(ptr noundef %c, ptr noundef %data) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  call void @sha1_block_data_order(ptr noundef %0, ptr noundef %1, i64 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SHA1_Final(ptr noundef %md, ptr noundef %c) #0 {
entry:
  %md.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i64, align 8
  %ll = alloca i64, align 8
  store ptr %md, ptr %md.addr, align 8, !tbaa !4
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.SHAstate_st, ptr %0, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i32], ptr %data, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num = getelementptr inbounds %struct.SHAstate_st, ptr %1, i32 0, i32 8
  %2 = load i32, ptr %num, align 4, !tbaa !15
  %conv = zext i32 %2 to i64
  store i64 %conv, ptr %n, align 8, !tbaa !8
  %3 = load ptr, ptr %p, align 8, !tbaa !4
  %4 = load i64, ptr %n, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
  store i8 -128, ptr %arrayidx, align 1, !tbaa !16
  %5 = load i64, ptr %n, align 8, !tbaa !8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %n, align 8, !tbaa !8
  %6 = load i64, ptr %n, align 8, !tbaa !8
  %cmp = icmp ugt i64 %6, 56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %8 = load i64, ptr %n, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i64, ptr %n, align 8, !tbaa !8
  %sub = sub i64 64, %9
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  store i64 0, ptr %n, align 8, !tbaa !8
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  call void @sha1_block_data_order(ptr noundef %10, ptr noundef %11, i64 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %13 = load i64, ptr %n, align 8, !tbaa !8
  %add.ptr2 = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load i64, ptr %n, align 8, !tbaa !8
  %sub3 = sub i64 56, %14
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr2, i8 0, i64 %sub3, i1 false)
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr4 = getelementptr inbounds i8, ptr %15, i64 56
  store ptr %add.ptr4, ptr %p, align 8, !tbaa !4
  %16 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh = getelementptr inbounds %struct.SHAstate_st, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %Nh, align 4, !tbaa !14
  %shr = lshr i32 %17, 24
  %and = and i32 %shr, 255
  %conv5 = trunc i32 %and to i8
  %18 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %conv5, ptr %18, align 1, !tbaa !16
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh6 = getelementptr inbounds %struct.SHAstate_st, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %Nh6, align 4, !tbaa !14
  %shr7 = lshr i32 %20, 16
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr10, ptr %p, align 8, !tbaa !4
  store i8 %conv9, ptr %21, align 1, !tbaa !16
  %22 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh11 = getelementptr inbounds %struct.SHAstate_st, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %Nh11, align 4, !tbaa !14
  %shr12 = lshr i32 %23, 8
  %and13 = and i32 %shr12, 255
  %conv14 = trunc i32 %and13 to i8
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr15 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr15, ptr %p, align 8, !tbaa !4
  store i8 %conv14, ptr %24, align 1, !tbaa !16
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh16 = getelementptr inbounds %struct.SHAstate_st, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %Nh16, align 4, !tbaa !14
  %and17 = and i32 %26, 255
  %conv18 = trunc i32 %and17 to i8
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr19, ptr %p, align 8, !tbaa !4
  store i8 %conv18, ptr %27, align 1, !tbaa !16
  %28 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nh20 = getelementptr inbounds %struct.SHAstate_st, ptr %28, i32 0, i32 6
  %29 = load i32, ptr %Nh20, align 4, !tbaa !14
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl = getelementptr inbounds %struct.SHAstate_st, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %Nl, align 4, !tbaa !10
  %shr21 = lshr i32 %31, 24
  %and22 = and i32 %shr21, 255
  %conv23 = trunc i32 %and22 to i8
  %32 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr24 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr24, ptr %p, align 8, !tbaa !4
  store i8 %conv23, ptr %32, align 1, !tbaa !16
  %33 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl25 = getelementptr inbounds %struct.SHAstate_st, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %Nl25, align 4, !tbaa !10
  %shr26 = lshr i32 %34, 16
  %and27 = and i32 %shr26, 255
  %conv28 = trunc i32 %and27 to i8
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr29 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr29, ptr %p, align 8, !tbaa !4
  store i8 %conv28, ptr %35, align 1, !tbaa !16
  %36 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl30 = getelementptr inbounds %struct.SHAstate_st, ptr %36, i32 0, i32 5
  %37 = load i32, ptr %Nl30, align 4, !tbaa !10
  %shr31 = lshr i32 %37, 8
  %and32 = and i32 %shr31, 255
  %conv33 = trunc i32 %and32 to i8
  %38 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr34 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr34, ptr %p, align 8, !tbaa !4
  store i8 %conv33, ptr %38, align 1, !tbaa !16
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl35 = getelementptr inbounds %struct.SHAstate_st, ptr %39, i32 0, i32 5
  %40 = load i32, ptr %Nl35, align 4, !tbaa !10
  %and36 = and i32 %40, 255
  %conv37 = trunc i32 %and36 to i8
  %41 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr38 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !4
  store i8 %conv37, ptr %41, align 1, !tbaa !16
  %42 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %Nl39 = getelementptr inbounds %struct.SHAstate_st, ptr %42, i32 0, i32 5
  %43 = load i32, ptr %Nl39, align 4, !tbaa !10
  %44 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr40 = getelementptr inbounds i8, ptr %44, i64 -64
  store ptr %add.ptr40, ptr %p, align 8, !tbaa !4
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %p, align 8, !tbaa !4
  call void @sha1_block_data_order(ptr noundef %45, ptr noundef %46, i64 noundef 1)
  %47 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %num41 = getelementptr inbounds %struct.SHAstate_st, ptr %47, i32 0, i32 8
  store i32 0, ptr %num41, align 4, !tbaa !15
  %48 = load ptr, ptr %p, align 8, !tbaa !4
  call void @OPENSSL_cleanse(ptr noundef %48, i64 noundef 64)
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #5
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h0 = getelementptr inbounds %struct.SHAstate_st, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %h0, align 4, !tbaa !17
  %conv42 = zext i32 %50 to i64
  store i64 %conv42, ptr %ll, align 8, !tbaa !8
  %51 = load i64, ptr %ll, align 8, !tbaa !8
  %shr43 = lshr i64 %51, 24
  %and44 = and i64 %shr43, 255
  %conv45 = trunc i64 %and44 to i8
  %52 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr46 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr46, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv45, ptr %52, align 1, !tbaa !16
  %53 = load i64, ptr %ll, align 8, !tbaa !8
  %shr47 = lshr i64 %53, 16
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %54 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr50 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr50, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv49, ptr %54, align 1, !tbaa !16
  %55 = load i64, ptr %ll, align 8, !tbaa !8
  %shr51 = lshr i64 %55, 8
  %and52 = and i64 %shr51, 255
  %conv53 = trunc i64 %and52 to i8
  %56 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr54 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr54, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv53, ptr %56, align 1, !tbaa !16
  %57 = load i64, ptr %ll, align 8, !tbaa !8
  %and55 = and i64 %57, 255
  %conv56 = trunc i64 %and55 to i8
  %58 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr57 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr57, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv56, ptr %58, align 1, !tbaa !16
  %59 = load i64, ptr %ll, align 8, !tbaa !8
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h1 = getelementptr inbounds %struct.SHAstate_st, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %h1, align 4, !tbaa !18
  %conv58 = zext i32 %61 to i64
  store i64 %conv58, ptr %ll, align 8, !tbaa !8
  %62 = load i64, ptr %ll, align 8, !tbaa !8
  %shr59 = lshr i64 %62, 24
  %and60 = and i64 %shr59, 255
  %conv61 = trunc i64 %and60 to i8
  %63 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr62 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr62, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv61, ptr %63, align 1, !tbaa !16
  %64 = load i64, ptr %ll, align 8, !tbaa !8
  %shr63 = lshr i64 %64, 16
  %and64 = and i64 %shr63, 255
  %conv65 = trunc i64 %and64 to i8
  %65 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr66 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr66, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv65, ptr %65, align 1, !tbaa !16
  %66 = load i64, ptr %ll, align 8, !tbaa !8
  %shr67 = lshr i64 %66, 8
  %and68 = and i64 %shr67, 255
  %conv69 = trunc i64 %and68 to i8
  %67 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr70 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr70, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv69, ptr %67, align 1, !tbaa !16
  %68 = load i64, ptr %ll, align 8, !tbaa !8
  %and71 = and i64 %68, 255
  %conv72 = trunc i64 %and71 to i8
  %69 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr73 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr73, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv72, ptr %69, align 1, !tbaa !16
  %70 = load i64, ptr %ll, align 8, !tbaa !8
  %71 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h2 = getelementptr inbounds %struct.SHAstate_st, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %h2, align 4, !tbaa !19
  %conv74 = zext i32 %72 to i64
  store i64 %conv74, ptr %ll, align 8, !tbaa !8
  %73 = load i64, ptr %ll, align 8, !tbaa !8
  %shr75 = lshr i64 %73, 24
  %and76 = and i64 %shr75, 255
  %conv77 = trunc i64 %and76 to i8
  %74 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr78 = getelementptr inbounds i8, ptr %74, i32 1
  store ptr %incdec.ptr78, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv77, ptr %74, align 1, !tbaa !16
  %75 = load i64, ptr %ll, align 8, !tbaa !8
  %shr79 = lshr i64 %75, 16
  %and80 = and i64 %shr79, 255
  %conv81 = trunc i64 %and80 to i8
  %76 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr82 = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr82, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv81, ptr %76, align 1, !tbaa !16
  %77 = load i64, ptr %ll, align 8, !tbaa !8
  %shr83 = lshr i64 %77, 8
  %and84 = and i64 %shr83, 255
  %conv85 = trunc i64 %and84 to i8
  %78 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr86 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr86, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv85, ptr %78, align 1, !tbaa !16
  %79 = load i64, ptr %ll, align 8, !tbaa !8
  %and87 = and i64 %79, 255
  %conv88 = trunc i64 %and87 to i8
  %80 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr89 = getelementptr inbounds i8, ptr %80, i32 1
  store ptr %incdec.ptr89, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv88, ptr %80, align 1, !tbaa !16
  %81 = load i64, ptr %ll, align 8, !tbaa !8
  %82 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h3 = getelementptr inbounds %struct.SHAstate_st, ptr %82, i32 0, i32 3
  %83 = load i32, ptr %h3, align 4, !tbaa !20
  %conv90 = zext i32 %83 to i64
  store i64 %conv90, ptr %ll, align 8, !tbaa !8
  %84 = load i64, ptr %ll, align 8, !tbaa !8
  %shr91 = lshr i64 %84, 24
  %and92 = and i64 %shr91, 255
  %conv93 = trunc i64 %and92 to i8
  %85 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr94 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr94, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv93, ptr %85, align 1, !tbaa !16
  %86 = load i64, ptr %ll, align 8, !tbaa !8
  %shr95 = lshr i64 %86, 16
  %and96 = and i64 %shr95, 255
  %conv97 = trunc i64 %and96 to i8
  %87 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr98 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr98, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv97, ptr %87, align 1, !tbaa !16
  %88 = load i64, ptr %ll, align 8, !tbaa !8
  %shr99 = lshr i64 %88, 8
  %and100 = and i64 %shr99, 255
  %conv101 = trunc i64 %and100 to i8
  %89 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr102 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr102, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv101, ptr %89, align 1, !tbaa !16
  %90 = load i64, ptr %ll, align 8, !tbaa !8
  %and103 = and i64 %90, 255
  %conv104 = trunc i64 %and103 to i8
  %91 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr105 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr105, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv104, ptr %91, align 1, !tbaa !16
  %92 = load i64, ptr %ll, align 8, !tbaa !8
  %93 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h4 = getelementptr inbounds %struct.SHAstate_st, ptr %93, i32 0, i32 4
  %94 = load i32, ptr %h4, align 4, !tbaa !21
  %conv106 = zext i32 %94 to i64
  store i64 %conv106, ptr %ll, align 8, !tbaa !8
  %95 = load i64, ptr %ll, align 8, !tbaa !8
  %shr107 = lshr i64 %95, 24
  %and108 = and i64 %shr107, 255
  %conv109 = trunc i64 %and108 to i8
  %96 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr110 = getelementptr inbounds i8, ptr %96, i32 1
  store ptr %incdec.ptr110, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv109, ptr %96, align 1, !tbaa !16
  %97 = load i64, ptr %ll, align 8, !tbaa !8
  %shr111 = lshr i64 %97, 16
  %and112 = and i64 %shr111, 255
  %conv113 = trunc i64 %and112 to i8
  %98 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr114 = getelementptr inbounds i8, ptr %98, i32 1
  store ptr %incdec.ptr114, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv113, ptr %98, align 1, !tbaa !16
  %99 = load i64, ptr %ll, align 8, !tbaa !8
  %shr115 = lshr i64 %99, 8
  %and116 = and i64 %shr115, 255
  %conv117 = trunc i64 %and116 to i8
  %100 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr118 = getelementptr inbounds i8, ptr %100, i32 1
  store ptr %incdec.ptr118, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv117, ptr %100, align 1, !tbaa !16
  %101 = load i64, ptr %ll, align 8, !tbaa !8
  %and119 = and i64 %101, 255
  %conv120 = trunc i64 %and119 to i8
  %102 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %incdec.ptr121 = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr121, ptr %md.addr, align 8, !tbaa !4
  store i8 %conv120, ptr %102, align 1, !tbaa !16
  %103 = load i64, ptr %ll, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  ret i32 1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @SHA1_Init(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 96, i1 false)
  %1 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h0 = getelementptr inbounds %struct.SHAstate_st, ptr %1, i32 0, i32 0
  store i32 1732584193, ptr %h0, align 4, !tbaa !17
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h1 = getelementptr inbounds %struct.SHAstate_st, ptr %2, i32 0, i32 1
  store i32 -271733879, ptr %h1, align 4, !tbaa !18
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h2 = getelementptr inbounds %struct.SHAstate_st, ptr %3, i32 0, i32 2
  store i32 -1732584194, ptr %h2, align 4, !tbaa !19
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h3 = getelementptr inbounds %struct.SHAstate_st, ptr %4, i32 0, i32 3
  store i32 271733878, ptr %h3, align 4, !tbaa !20
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %h4 = getelementptr inbounds %struct.SHAstate_st, ptr %5, i32 0, i32 4
  store i32 -1009589776, ptr %h4, align 4, !tbaa !21
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @ossl_sha1_ctrl(ptr noundef %sha1, i32 noundef %cmd, i32 noundef %mslen, ptr noundef %ms) #0 {
entry:
  %retval = alloca i32, align 4
  %sha1.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %mslen.addr = alloca i32, align 4
  %ms.addr = alloca ptr, align 8
  %padtmp = alloca [40 x i8], align 16
  %sha1tmp = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sha1, ptr %sha1.addr, align 8, !tbaa !4
  store i32 %cmd, ptr %cmd.addr, align 4, !tbaa !13
  store i32 %mslen, ptr %mslen.addr, align 4, !tbaa !13
  store ptr %ms, ptr %ms.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 40, ptr %padtmp) #5
  call void @llvm.lifetime.start.p0(i64 20, ptr %sha1tmp) #5
  %0 = load i32, ptr %cmd.addr, align 4, !tbaa !13
  %cmp = icmp ne i32 %0, 29
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %mslen.addr, align 4, !tbaa !13
  %cmp4 = icmp ne i32 %2, 48
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %3 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ms.addr, align 8, !tbaa !4
  %5 = load i32, ptr %mslen.addr, align 4, !tbaa !13
  %conv = sext i32 %5 to i64
  %call = call i32 @SHA1_Update(ptr noundef %3, ptr noundef %4, i64 noundef %conv)
  %cmp7 = icmp sle i32 %call, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %arraydecay = getelementptr inbounds [40 x i8], ptr %padtmp, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 54, i64 40, i1 false)
  %6 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %arraydecay11 = getelementptr inbounds [40 x i8], ptr %padtmp, i64 0, i64 0
  %call12 = call i32 @SHA1_Update(ptr noundef %6, ptr noundef %arraydecay11, i64 noundef 40)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %arraydecay15 = getelementptr inbounds [20 x i8], ptr %sha1tmp, i64 0, i64 0
  %7 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %call16 = call i32 @SHA1_Final(ptr noundef %arraydecay15, ptr noundef %7)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %8 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %call20 = call i32 @SHA1_Init(ptr noundef %8)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %9 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ms.addr, align 8, !tbaa !4
  %11 = load i32, ptr %mslen.addr, align 4, !tbaa !13
  %conv24 = sext i32 %11 to i64
  %call25 = call i32 @SHA1_Update(ptr noundef %9, ptr noundef %10, i64 noundef %conv24)
  %cmp26 = icmp sle i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end23
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %arraydecay30 = getelementptr inbounds [40 x i8], ptr %padtmp, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay30, i8 92, i64 40, i1 false)
  %12 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %arraydecay31 = getelementptr inbounds [40 x i8], ptr %padtmp, i64 0, i64 0
  %call32 = call i32 @SHA1_Update(ptr noundef %12, ptr noundef %arraydecay31, i64 noundef 40)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end29
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %13 = load ptr, ptr %sha1.addr, align 8, !tbaa !4
  %arraydecay36 = getelementptr inbounds [20 x i8], ptr %sha1tmp, i64 0, i64 0
  %call37 = call i32 @SHA1_Update(ptr noundef %13, ptr noundef %arraydecay36, i64 noundef 20)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end35
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %arraydecay41 = getelementptr inbounds [20 x i8], ptr %sha1tmp, i64 0, i64 0
  call void @OPENSSL_cleanse(ptr noundef %arraydecay41, i64 noundef 20)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then34, %if.then28, %if.then22, %if.then18, %if.then13, %if.then9, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr %sha1tmp) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr %padtmp) #5
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !12, i64 20}
!11 = !{!"SHAstate_st", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !6, i64 28, !12, i64 92}
!12 = !{!"int", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!11, !12, i64 24}
!15 = !{!11, !12, i64 92}
!16 = !{!6, !6, i64 0}
!17 = !{!11, !12, i64 0}
!18 = !{!11, !12, i64 4}
!19 = !{!11, !12, i64 8}
!20 = !{!11, !12, i64 12}
!21 = !{!11, !12, i64 16}

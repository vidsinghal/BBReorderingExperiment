; ModuleID = 'samples/360.bc'
source_filename = "/local-ssd/zfp-csugr3zk3z4cx2m6lemuvupc3ypi6npg-build/aidengro/spack-stage-zfp-1.0.0-csugr3zk3z4cx2m6lemuvupc3ypi6npg/spack-src/src/bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstream = type { i64, i8, ptr, ptr, ptr }

@stream_word_bits = constant i64 8, align 8

; Function Attrs: nounwind uwtable
define i64 @stream_alignment() #0 {
entry:
  ret i64 8
}

; Function Attrs: nounwind uwtable
define ptr @stream_data(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %begin, align 8, !tbaa !8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i64 @stream_size(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ptr, align 8, !tbaa !11
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %begin, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul i64 %sub.ptr.sub, 1
  ret i64 %mul
}

; Function Attrs: nounwind uwtable
define i64 @stream_capacity(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %end, align 8, !tbaa !12
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %begin, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul i64 %sub.ptr.sub, 1
  ret i64 %mul
}

; Function Attrs: nounwind uwtable
define i64 @stream_stride_block(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  ret i64 1
}

; Function Attrs: nounwind uwtable
define i64 @stream_stride_delta(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i32 @stream_read_bit(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %bit = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %bits, align 8, !tbaa !13
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call zeroext i8 @stream_read_word(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 1
  store i8 %call, ptr %buffer, align 8, !tbaa !14
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits1 = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 0
  store i64 8, ptr %bits1, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits2 = getelementptr inbounds %struct.bitstream, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %bits2, align 8, !tbaa !13
  %dec = add i64 %6, -1
  store i64 %dec, ptr %bits2, align 8, !tbaa !13
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer3 = getelementptr inbounds %struct.bitstream, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %buffer3, align 8, !tbaa !14
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 1
  store i32 %and, ptr %bit, align 4, !tbaa !15
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer4 = getelementptr inbounds %struct.bitstream, ptr %9, i32 0, i32 1
  %10 = load i8, ptr %buffer4, align 8, !tbaa !14
  %conv5 = zext i8 %10 to i32
  %shr = ashr i32 %conv5, 1
  %conv6 = trunc i32 %shr to i8
  store i8 %conv6, ptr %buffer4, align 8, !tbaa !14
  %11 = load i32, ptr %bit, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #5
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @stream_read_word(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %w = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %w) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ptr, align 8, !tbaa !11
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8, !tbaa !11
  %2 = load i8, ptr %1, align 1, !tbaa !17
  store i8 %2, ptr %w, align 1, !tbaa !17
  %3 = load i8, ptr %w, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 1, ptr %w) #5
  ret i8 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @stream_write_bit(ptr noundef %s, i32 noundef %bit) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %bit, ptr %bit.addr, align 4, !tbaa !15
  %0 = load i32, ptr %bit.addr, align 4, !tbaa !15
  %conv = trunc i32 %0 to i8
  %conv1 = zext i8 %conv to i32
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %bits, align 8, !tbaa !13
  %sh_prom = trunc i64 %2 to i32
  %shl = shl i32 %conv1, %sh_prom
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %buffer, align 8, !tbaa !14
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv2, %shl
  %conv3 = trunc i32 %add to i8
  store i8 %conv3, ptr %buffer, align 8, !tbaa !14
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits4 = getelementptr inbounds %struct.bitstream, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %bits4, align 8, !tbaa !13
  %inc = add i64 %6, 1
  store i64 %inc, ptr %bits4, align 8, !tbaa !13
  %cmp = icmp eq i64 %inc, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer6 = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %buffer6, align 8, !tbaa !14
  call void @stream_write_word(ptr noundef %7, i8 noundef zeroext %9)
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer7 = getelementptr inbounds %struct.bitstream, ptr %10, i32 0, i32 1
  store i8 0, ptr %buffer7, align 8, !tbaa !14
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits8 = getelementptr inbounds %struct.bitstream, ptr %11, i32 0, i32 0
  store i64 0, ptr %bits8, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %bit.addr, align 4, !tbaa !15
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @stream_write_word(ptr noundef %s, i8 noundef zeroext %value) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i8 %value, ptr %value.addr, align 1, !tbaa !17
  %0 = load i8, ptr %value.addr, align 1, !tbaa !17
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %ptr, align 8, !tbaa !11
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8, !tbaa !11
  store i8 %0, ptr %2, align 1, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @stream_read_bits(ptr noundef %s, i64 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %value = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 1
  %1 = load i8, ptr %buffer, align 8, !tbaa !14
  %conv = zext i8 %1 to i64
  store i64 %conv, ptr %value, align 8, !tbaa !18
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %bits, align 8, !tbaa !13
  %4 = load i64, ptr %n.addr, align 8, !tbaa !18
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call zeroext i8 @stream_read_word(ptr noundef %5)
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 1
  store i8 %call, ptr %buffer2, align 8, !tbaa !14
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer3 = getelementptr inbounds %struct.bitstream, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %buffer3, align 8, !tbaa !14
  %conv4 = zext i8 %8 to i64
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits5 = getelementptr inbounds %struct.bitstream, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %bits5, align 8, !tbaa !13
  %shl = shl i64 %conv4, %10
  %11 = load i64, ptr %value, align 8, !tbaa !18
  %add = add i64 %11, %shl
  store i64 %add, ptr %value, align 8, !tbaa !18
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits6 = getelementptr inbounds %struct.bitstream, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %bits6, align 8, !tbaa !13
  %add7 = add i64 %13, 8
  store i64 %add7, ptr %bits6, align 8, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits8 = getelementptr inbounds %struct.bitstream, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %bits8, align 8, !tbaa !13
  %16 = load i64, ptr %n.addr, align 8, !tbaa !18
  %cmp9 = icmp ult i64 %15, %16
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i64, ptr %n.addr, align 8, !tbaa !18
  %18 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits11 = getelementptr inbounds %struct.bitstream, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %bits11, align 8, !tbaa !13
  %sub = sub i64 %19, %17
  store i64 %sub, ptr %bits11, align 8, !tbaa !13
  %20 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits12 = getelementptr inbounds %struct.bitstream, ptr %20, i32 0, i32 0
  %21 = load i64, ptr %bits12, align 8, !tbaa !13
  %tobool = icmp ne i64 %21, 0
  br i1 %tobool, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  %22 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer14 = getelementptr inbounds %struct.bitstream, ptr %22, i32 0, i32 1
  store i8 0, ptr %buffer14, align 8, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %do.end
  %23 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits15 = getelementptr inbounds %struct.bitstream, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %bits15, align 8, !tbaa !13
  %sub16 = sub i64 8, %24
  %25 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer17 = getelementptr inbounds %struct.bitstream, ptr %25, i32 0, i32 1
  %26 = load i8, ptr %buffer17, align 8, !tbaa !14
  %conv18 = zext i8 %26 to i32
  %sh_prom = trunc i64 %sub16 to i32
  %shr = ashr i32 %conv18, %sh_prom
  %conv19 = trunc i32 %shr to i8
  store i8 %conv19, ptr %buffer17, align 8, !tbaa !14
  %27 = load i64, ptr %n.addr, align 8, !tbaa !18
  %sub20 = sub i64 %27, 1
  %shl21 = shl i64 2, %sub20
  %sub22 = sub i64 %shl21, 1
  %28 = load i64, ptr %value, align 8, !tbaa !18
  %and = and i64 %28, %sub22
  store i64 %and, ptr %value, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  br label %if.end34

if.else23:                                        ; preds = %entry
  %29 = load i64, ptr %n.addr, align 8, !tbaa !18
  %30 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits24 = getelementptr inbounds %struct.bitstream, ptr %30, i32 0, i32 0
  %31 = load i64, ptr %bits24, align 8, !tbaa !13
  %sub25 = sub i64 %31, %29
  store i64 %sub25, ptr %bits24, align 8, !tbaa !13
  %32 = load i64, ptr %n.addr, align 8, !tbaa !18
  %33 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer26 = getelementptr inbounds %struct.bitstream, ptr %33, i32 0, i32 1
  %34 = load i8, ptr %buffer26, align 8, !tbaa !14
  %conv27 = zext i8 %34 to i32
  %sh_prom28 = trunc i64 %32 to i32
  %shr29 = ashr i32 %conv27, %sh_prom28
  %conv30 = trunc i32 %shr29 to i8
  store i8 %conv30, ptr %buffer26, align 8, !tbaa !14
  %35 = load i64, ptr %n.addr, align 8, !tbaa !18
  %shl31 = shl i64 1, %35
  %sub32 = sub i64 %shl31, 1
  %36 = load i64, ptr %value, align 8, !tbaa !18
  %and33 = and i64 %36, %sub32
  store i64 %and33, ptr %value, align 8, !tbaa !18
  br label %if.end34

if.end34:                                         ; preds = %if.else23, %if.end
  %37 = load i64, ptr %value, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define i64 @stream_write_bits(ptr noundef %s, i64 noundef %value, i64 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %value, ptr %value.addr, align 8, !tbaa !18
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  %0 = load i64, ptr %value.addr, align 8, !tbaa !18
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %bits, align 8, !tbaa !13
  %shl = shl i64 %0, %2
  %conv = trunc i64 %shl to i8
  %conv1 = zext i8 %conv to i32
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %buffer, align 8, !tbaa !14
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv2, %conv1
  %conv3 = trunc i32 %add to i8
  store i8 %conv3, ptr %buffer, align 8, !tbaa !14
  %5 = load i64, ptr %n.addr, align 8, !tbaa !18
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits4 = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %bits4, align 8, !tbaa !13
  %add5 = add i64 %7, %5
  store i64 %add5, ptr %bits4, align 8, !tbaa !13
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits6 = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %bits6, align 8, !tbaa !13
  %cmp = icmp uge i64 %9, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i64, ptr %value.addr, align 8, !tbaa !18
  %shr = lshr i64 %10, 1
  store i64 %shr, ptr %value.addr, align 8, !tbaa !18
  %11 = load i64, ptr %n.addr, align 8, !tbaa !18
  %dec = add i64 %11, -1
  store i64 %dec, ptr %n.addr, align 8, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits8 = getelementptr inbounds %struct.bitstream, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %bits8, align 8, !tbaa !13
  %sub = sub i64 %13, 8
  store i64 %sub, ptr %bits8, align 8, !tbaa !13
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer9 = getelementptr inbounds %struct.bitstream, ptr %15, i32 0, i32 1
  %16 = load i8, ptr %buffer9, align 8, !tbaa !14
  call void @stream_write_word(ptr noundef %14, i8 noundef zeroext %16)
  %17 = load i64, ptr %value.addr, align 8, !tbaa !18
  %18 = load i64, ptr %n.addr, align 8, !tbaa !18
  %19 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits10 = getelementptr inbounds %struct.bitstream, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %bits10, align 8, !tbaa !13
  %sub11 = sub i64 %18, %20
  %shr12 = lshr i64 %17, %sub11
  %conv13 = trunc i64 %shr12 to i8
  %21 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer14 = getelementptr inbounds %struct.bitstream, ptr %21, i32 0, i32 1
  store i8 %conv13, ptr %buffer14, align 8, !tbaa !14
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %22 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits15 = getelementptr inbounds %struct.bitstream, ptr %22, i32 0, i32 0
  %23 = load i64, ptr %bits15, align 8, !tbaa !13
  %cmp16 = icmp uge i64 %23, 8
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %24 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits18 = getelementptr inbounds %struct.bitstream, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %bits18, align 8, !tbaa !13
  %sh_prom = trunc i64 %25 to i32
  %shl19 = shl i32 1, %sh_prom
  %sub20 = sub nsw i32 %shl19, 1
  %26 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer21 = getelementptr inbounds %struct.bitstream, ptr %26, i32 0, i32 1
  %27 = load i8, ptr %buffer21, align 8, !tbaa !14
  %conv22 = zext i8 %27 to i32
  %and = and i32 %conv22, %sub20
  %conv23 = trunc i32 %and to i8
  store i8 %conv23, ptr %buffer21, align 8, !tbaa !14
  %28 = load i64, ptr %value.addr, align 8, !tbaa !18
  %29 = load i64, ptr %n.addr, align 8, !tbaa !18
  %shr24 = lshr i64 %28, %29
  ret i64 %shr24
}

; Function Attrs: nounwind uwtable
define i64 @stream_rtell(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ptr, align 8, !tbaa !11
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %begin, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul i64 %sub.ptr.sub, 8
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %bits, align 8, !tbaa !13
  %sub = sub i64 %mul, %5
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define i64 @stream_wtell(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ptr, align 8, !tbaa !11
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %begin, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul i64 %sub.ptr.sub, 8
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %bits, align 8, !tbaa !13
  %add = add i64 %mul, %5
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define void @stream_rewind(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %begin, align 8, !tbaa !8
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 2
  store ptr %1, ptr %ptr, align 8, !tbaa !11
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 1
  store i8 0, ptr %buffer, align 8, !tbaa !14
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 0
  store i64 0, ptr %bits, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @stream_rseek(ptr noundef %s, i64 noundef %offset) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %0 = load i64, ptr %offset.addr, align 8, !tbaa !18
  %rem = urem i64 %0, 8
  store i64 %rem, ptr %n, align 8, !tbaa !18
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %begin, align 8, !tbaa !8
  %3 = load i64, ptr %offset.addr, align 8, !tbaa !18
  %div = udiv i64 %3, 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %div
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 2
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !11
  %5 = load i64, ptr %n, align 8, !tbaa !18
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call zeroext i8 @stream_read_word(ptr noundef %6)
  %conv = zext i8 %call to i32
  %7 = load i64, ptr %n, align 8, !tbaa !18
  %sh_prom = trunc i64 %7 to i32
  %shr = ashr i32 %conv, %sh_prom
  %conv1 = trunc i32 %shr to i8
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 1
  store i8 %conv1, ptr %buffer, align 8, !tbaa !14
  %9 = load i64, ptr %n, align 8, !tbaa !18
  %sub = sub i64 8, %9
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %10, i32 0, i32 0
  store i64 %sub, ptr %bits, align 8, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.bitstream, ptr %11, i32 0, i32 1
  store i8 0, ptr %buffer2, align 8, !tbaa !14
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits3 = getelementptr inbounds %struct.bitstream, ptr %12, i32 0, i32 0
  store i64 0, ptr %bits3, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @stream_wseek(ptr noundef %s, i64 noundef %offset) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %buffer = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %0 = load i64, ptr %offset.addr, align 8, !tbaa !18
  %rem = urem i64 %0, 8
  store i64 %rem, ptr %n, align 8, !tbaa !18
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %begin, align 8, !tbaa !8
  %3 = load i64, ptr %offset.addr, align 8, !tbaa !18
  %div = udiv i64 %3, 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %div
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 2
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !11
  %5 = load i64, ptr %n, align 8, !tbaa !18
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %buffer) #5
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr1 = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %ptr1, align 8, !tbaa !11
  %8 = load i8, ptr %7, align 1, !tbaa !17
  store i8 %8, ptr %buffer, align 1, !tbaa !17
  %9 = load i64, ptr %n, align 8, !tbaa !18
  %sh_prom = trunc i64 %9 to i32
  %shl = shl i32 1, %sh_prom
  %sub = sub nsw i32 %shl, 1
  %10 = load i8, ptr %buffer, align 1, !tbaa !17
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, %sub
  %conv2 = trunc i32 %and to i8
  store i8 %conv2, ptr %buffer, align 1, !tbaa !17
  %11 = load i8, ptr %buffer, align 1, !tbaa !17
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer3 = getelementptr inbounds %struct.bitstream, ptr %12, i32 0, i32 1
  store i8 %11, ptr %buffer3, align 8, !tbaa !14
  %13 = load i64, ptr %n, align 8, !tbaa !18
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %14, i32 0, i32 0
  store i64 %13, ptr %bits, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 1, ptr %buffer) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer4 = getelementptr inbounds %struct.bitstream, ptr %15, i32 0, i32 1
  store i8 0, ptr %buffer4, align 8, !tbaa !14
  %16 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits5 = getelementptr inbounds %struct.bitstream, ptr %16, i32 0, i32 0
  store i64 0, ptr %bits5, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @stream_skip(ptr noundef %s, i64 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i64 @stream_rtell(ptr noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !18
  %add = add i64 %call, %2
  call void @stream_rseek(ptr noundef %0, i64 noundef %add)
  ret void
}

; Function Attrs: nounwind uwtable
define void @stream_pad(ptr noundef %s, i64 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %bits = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits1 = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %bits1, align 8, !tbaa !13
  store i64 %1, ptr %bits, align 8, !tbaa !18
  %2 = load i64, ptr %n.addr, align 8, !tbaa !18
  %3 = load i64, ptr %bits, align 8, !tbaa !18
  %add = add i64 %3, %2
  store i64 %add, ptr %bits, align 8, !tbaa !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %bits, align 8, !tbaa !18
  %cmp = icmp uge i64 %4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %buffer, align 8, !tbaa !14
  call void @stream_write_word(ptr noundef %5, i8 noundef zeroext %7)
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 1
  store i8 0, ptr %buffer2, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %bits, align 8, !tbaa !18
  %sub = sub i64 %9, 8
  store i64 %sub, ptr %bits, align 8, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %bits, align 8, !tbaa !18
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits3 = getelementptr inbounds %struct.bitstream, ptr %11, i32 0, i32 0
  store i64 %10, ptr %bits3, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @stream_align(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %bits = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits1 = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %bits1, align 8, !tbaa !13
  store i64 %1, ptr %bits, align 8, !tbaa !18
  %2 = load i64, ptr %bits, align 8, !tbaa !18
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %4 = load i64, ptr %bits, align 8, !tbaa !18
  call void @stream_skip(ptr noundef %3, i64 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %bits, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #5
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @stream_flush(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %bits = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits1 = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %bits1, align 8, !tbaa !13
  %sub = sub i64 8, %1
  %rem = urem i64 %sub, 8
  store i64 %rem, ptr %bits, align 8, !tbaa !18
  %2 = load i64, ptr %bits, align 8, !tbaa !18
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %4 = load i64, ptr %bits, align 8, !tbaa !18
  call void @stream_pad(ptr noundef %3, i64 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %bits, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #5
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define void @stream_copy(ptr noundef %dst, ptr noundef %src, i64 noundef %n) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %w = alloca i8, align 1
  %w3 = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !18
  %cmp = icmp ugt i64 %0, 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %w) #5
  %1 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %call = call i64 @stream_read_bits(ptr noundef %1, i64 noundef 8)
  %conv = trunc i64 %call to i8
  store i8 %conv, ptr %w, align 1, !tbaa !17
  %2 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %3 = load i8, ptr %w, align 1, !tbaa !17
  %conv1 = zext i8 %3 to i64
  %call2 = call i64 @stream_write_bits(ptr noundef %2, i64 noundef %conv1, i64 noundef 8)
  %4 = load i64, ptr %n.addr, align 8, !tbaa !18
  %sub = sub i64 %4, 8
  store i64 %sub, ptr %n.addr, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 1, ptr %w) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i64, ptr %n.addr, align 8, !tbaa !18
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %w3) #5
  %6 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %7 = load i64, ptr %n.addr, align 8, !tbaa !18
  %call4 = call i64 @stream_read_bits(ptr noundef %6, i64 noundef %7)
  %conv5 = trunc i64 %call4 to i8
  store i8 %conv5, ptr %w3, align 1, !tbaa !17
  %8 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %9 = load i8, ptr %w3, align 1, !tbaa !17
  %conv6 = zext i8 %9 to i64
  %10 = load i64, ptr %n.addr, align 8, !tbaa !18
  %call7 = call i64 @stream_write_bits(ptr noundef %8, i64 noundef %conv6, i64 noundef %10)
  call void @llvm.lifetime.end.p0(i64 1, ptr %w3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stream_open(ptr noundef %buffer, i64 noundef %bytes) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i64 %bytes, ptr %bytes.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %call = call noalias ptr @malloc(i64 noundef 40) #6
  store ptr %call, ptr %s, align 8, !tbaa !4
  %0 = load ptr, ptr %s, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %s, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 3
  store ptr %1, ptr %begin, align 8, !tbaa !8
  %3 = load ptr, ptr %s, align 8, !tbaa !4
  %begin1 = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %begin1, align 8, !tbaa !8
  %5 = load i64, ptr %bytes.addr, align 8, !tbaa !18
  %div = udiv i64 %5, 1
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %div
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %end = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 4
  store ptr %add.ptr, ptr %end, align 8, !tbaa !12
  %7 = load ptr, ptr %s, align 8, !tbaa !4
  call void @stream_rewind(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %s, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  ret ptr %8
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind uwtable
define void @stream_close(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  call void @free(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define ptr @stream_clone(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  %call = call noalias ptr @malloc(i64 noundef 40) #6
  store ptr %call, ptr %c, align 8, !tbaa !4
  %0 = load ptr, ptr %c, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %c, align 8, !tbaa !4
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 40, i1 false), !tbaa.struct !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %c, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!8 = !{!9, !5, i64 24}
!9 = !{!"bitstream", !10, i64 0, !6, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !5, i64 16}
!12 = !{!9, !5, i64 32}
!13 = !{!9, !10, i64 0}
!14 = !{!9, !6, i64 8}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{i64 0, i64 8, !18, i64 8, i64 1, !17, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4}

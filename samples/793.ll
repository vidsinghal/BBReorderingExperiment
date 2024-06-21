; ModuleID = 'samples/793.bc'
source_filename = "/local-ssd/zfp-csugr3zk3z4cx2m6lemuvupc3ypi6npg-build/aidengro/spack-stage-zfp-1.0.0-csugr3zk3z4cx2m6lemuvupc3ypi6npg/spack-src/src/decode3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfp_stream = type { i32, i32, i32, i32, ptr, %struct.zfp_execution }
%struct.zfp_execution = type { i32, ptr }
%struct.bitstream = type { i64, i8, ptr, ptr, ptr }

@perm_3 = internal constant [64 x i8] c"\00\01\04\10\14\11\05\02\08 \15\06\12\18\09!$\03\0C0\16\19%(\22\0A\07\13\1C\0D14)&\1A\17\1D5\0B#,\0E28*\1B'-\1E69<3\0F+.:=7\1F>;/?", align 256

; Function Attrs: nounwind uwtable
define i64 @zfp_decode_block_double_3(ptr noundef %zfp, ptr noundef %fblock) #0 {
entry:
  %zfp.addr = alloca ptr, align 8
  %fblock.addr = alloca ptr, align 8
  store ptr %zfp, ptr %zfp.addr, align 8, !tbaa !4
  store ptr %fblock, ptr %fblock.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minexp = getelementptr inbounds %struct.zfp_stream, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %minexp, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, -1074
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %call = call i32 @rev_decode_block_double_3(ptr noundef %2, ptr noundef %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %call1 = call i32 @decode_block_double_3(ptr noundef %4, ptr noundef %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @rev_decode_block_double_3(ptr noundef %zfp, ptr noundef %fblock) #0 {
entry:
  %zfp.addr = alloca ptr, align 8
  %fblock.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %iblock = alloca [64 x i64], align 256
  %emax = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %zfp, ptr %zfp.addr, align 8, !tbaa !4
  store ptr %fblock, ptr %fblock.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #5
  store i32 0, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 512, ptr %iblock) #5
  %0 = load i32, ptr %bits, align 4, !tbaa !12
  %inc = add i32 %0, 1
  store i32 %inc, ptr %bits, align 4, !tbaa !12
  %1 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct.zfp_stream, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %stream, align 8, !tbaa !13
  %call = call i32 @stream_read_bit(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else33

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %bits, align 4, !tbaa !12
  %inc1 = add i32 %3, 1
  store i32 %inc1, ptr %bits, align 4, !tbaa !12
  %4 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream2 = getelementptr inbounds %struct.zfp_stream, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %stream2, align 8, !tbaa !13
  %call3 = call i32 @stream_read_bit(ptr noundef %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %6 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream6 = getelementptr inbounds %struct.zfp_stream, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %stream6, align 8, !tbaa !13
  %8 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits = getelementptr inbounds %struct.zfp_stream, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %minbits, align 8, !tbaa !14
  %10 = load i32, ptr %bits, align 4, !tbaa !12
  %11 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits7 = getelementptr inbounds %struct.zfp_stream, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %minbits7, align 8, !tbaa !14
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %13 = load i32, ptr %bits, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %14 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits8 = getelementptr inbounds %struct.zfp_stream, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %minbits8, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %15, %cond.false ]
  %sub = sub i32 %9, %cond
  %16 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxbits = getelementptr inbounds %struct.zfp_stream, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %maxbits, align 4, !tbaa !15
  %18 = load i32, ptr %bits, align 4, !tbaa !12
  %sub9 = sub i32 %17, %18
  %arraydecay = getelementptr inbounds [64 x i64], ptr %iblock, i64 0, i64 0
  %call10 = call i32 @rev_decode_block_int64_3(ptr noundef %7, i32 noundef %sub, i32 noundef %sub9, ptr noundef %arraydecay)
  %19 = load i32, ptr %bits, align 4, !tbaa !12
  %add = add i32 %19, %call10
  store i32 %add, ptr %bits, align 4, !tbaa !12
  %arraydecay11 = getelementptr inbounds [64 x i64], ptr %iblock, i64 0, i64 0
  %20 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  call void @rev_inv_reinterpret_double(ptr noundef %arraydecay11, ptr noundef %20, i32 noundef 64)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %emax) #5
  %21 = load i32, ptr %bits, align 4, !tbaa !12
  %add12 = add i32 %21, 11
  store i32 %add12, ptr %bits, align 4, !tbaa !12
  %22 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct.zfp_stream, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %stream13, align 8, !tbaa !13
  %call14 = call i64 @stream_read_bits(ptr noundef %23, i64 noundef 11)
  %conv = trunc i64 %call14 to i32
  %sub15 = sub nsw i32 %conv, 1023
  store i32 %sub15, ptr %emax, align 4, !tbaa !12
  %24 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream16 = getelementptr inbounds %struct.zfp_stream, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %stream16, align 8, !tbaa !13
  %26 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits17 = getelementptr inbounds %struct.zfp_stream, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %minbits17, align 8, !tbaa !14
  %28 = load i32, ptr %bits, align 4, !tbaa !12
  %29 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits18 = getelementptr inbounds %struct.zfp_stream, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %minbits18, align 8, !tbaa !14
  %cmp19 = icmp ult i32 %28, %30
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else
  %31 = load i32, ptr %bits, align 4, !tbaa !12
  br label %cond.end24

cond.false22:                                     ; preds = %if.else
  %32 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits23 = getelementptr inbounds %struct.zfp_stream, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %minbits23, align 8, !tbaa !14
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false22, %cond.true21
  %cond25 = phi i32 [ %31, %cond.true21 ], [ %33, %cond.false22 ]
  %sub26 = sub i32 %27, %cond25
  %34 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxbits27 = getelementptr inbounds %struct.zfp_stream, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %maxbits27, align 4, !tbaa !15
  %36 = load i32, ptr %bits, align 4, !tbaa !12
  %sub28 = sub i32 %35, %36
  %arraydecay29 = getelementptr inbounds [64 x i64], ptr %iblock, i64 0, i64 0
  %call30 = call i32 @rev_decode_block_int64_3(ptr noundef %25, i32 noundef %sub26, i32 noundef %sub28, ptr noundef %arraydecay29)
  %37 = load i32, ptr %bits, align 4, !tbaa !12
  %add31 = add i32 %37, %call30
  store i32 %add31, ptr %bits, align 4, !tbaa !12
  %arraydecay32 = getelementptr inbounds [64 x i64], ptr %iblock, i64 0, i64 0
  %38 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %39 = load i32, ptr %emax, align 4, !tbaa !12
  call void @rev_inv_cast_double(ptr noundef %arraydecay32, ptr noundef %38, i32 noundef 64, i32 noundef %39)
  call void @llvm.lifetime.end.p0(i64 4, ptr %emax) #5
  br label %if.end

if.end:                                           ; preds = %cond.end24, %cond.end
  br label %if.end47

if.else33:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else33
  %40 = load i32, ptr %i, align 4, !tbaa !12
  %cmp34 = icmp ult i32 %40, 64
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %fblock.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %41, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %i, align 4, !tbaa !12
  %inc36 = add i32 %42, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits37 = getelementptr inbounds %struct.zfp_stream, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %minbits37, align 8, !tbaa !14
  %45 = load i32, ptr %bits, align 4, !tbaa !12
  %cmp38 = icmp ugt i32 %44, %45
  br i1 %cmp38, label %if.then40, label %if.end46

if.then40:                                        ; preds = %for.end
  %46 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream41 = getelementptr inbounds %struct.zfp_stream, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %stream41, align 8, !tbaa !13
  %48 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits42 = getelementptr inbounds %struct.zfp_stream, ptr %48, i32 0, i32 0
  %49 = load i32, ptr %minbits42, align 8, !tbaa !14
  %50 = load i32, ptr %bits, align 4, !tbaa !12
  %sub43 = sub i32 %49, %50
  %conv44 = zext i32 %sub43 to i64
  call void @stream_skip(ptr noundef %47, i64 noundef %conv44)
  %51 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits45 = getelementptr inbounds %struct.zfp_stream, ptr %51, i32 0, i32 0
  %52 = load i32, ptr %minbits45, align 8, !tbaa !14
  store i32 %52, ptr %bits, align 4, !tbaa !12
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end
  %53 = load i32, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 512, ptr %iblock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #5
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_block_double_3(ptr noundef %zfp, ptr noundef %fblock) #0 {
entry:
  %zfp.addr = alloca ptr, align 8
  %fblock.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %iblock = alloca [64 x i64], align 256
  %maxprec = alloca i32, align 4
  %emax = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %zfp, ptr %zfp.addr, align 8, !tbaa !4
  store ptr %fblock, ptr %fblock.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #5
  store i32 1, ptr %bits, align 4, !tbaa !12
  %0 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct.zfp_stream, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %stream, align 8, !tbaa !13
  %call = call i32 @stream_read_bit(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 512, ptr %iblock) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxprec) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %emax) #5
  %2 = load i32, ptr %bits, align 4, !tbaa !12
  %add = add i32 %2, 11
  store i32 %add, ptr %bits, align 4, !tbaa !12
  %3 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream1 = getelementptr inbounds %struct.zfp_stream, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %stream1, align 8, !tbaa !13
  %call2 = call i64 @stream_read_bits(ptr noundef %4, i64 noundef 11)
  %conv = trunc i64 %call2 to i32
  %sub = sub nsw i32 %conv, 1023
  store i32 %sub, ptr %emax, align 4, !tbaa !12
  %5 = load i32, ptr %emax, align 4, !tbaa !12
  %6 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxprec3 = getelementptr inbounds %struct.zfp_stream, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %maxprec3, align 8, !tbaa !18
  %8 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minexp = getelementptr inbounds %struct.zfp_stream, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %minexp, align 4, !tbaa !8
  %call4 = call i32 @precision(i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 3)
  store i32 %call4, ptr %maxprec, align 4, !tbaa !12
  %10 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream5 = getelementptr inbounds %struct.zfp_stream, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %stream5, align 8, !tbaa !13
  %12 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits = getelementptr inbounds %struct.zfp_stream, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %minbits, align 8, !tbaa !14
  %14 = load i32, ptr %bits, align 4, !tbaa !12
  %15 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits6 = getelementptr inbounds %struct.zfp_stream, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %minbits6, align 8, !tbaa !14
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %17 = load i32, ptr %bits, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %18 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits8 = getelementptr inbounds %struct.zfp_stream, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %minbits8, align 8, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %19, %cond.false ]
  %sub9 = sub i32 %13, %cond
  %20 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxbits = getelementptr inbounds %struct.zfp_stream, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %maxbits, align 4, !tbaa !15
  %22 = load i32, ptr %bits, align 4, !tbaa !12
  %sub10 = sub i32 %21, %22
  %23 = load i32, ptr %maxprec, align 4, !tbaa !12
  %arraydecay = getelementptr inbounds [64 x i64], ptr %iblock, i64 0, i64 0
  %call11 = call i32 @decode_block_int64_3(ptr noundef %11, i32 noundef %sub9, i32 noundef %sub10, i32 noundef %23, ptr noundef %arraydecay)
  %24 = load i32, ptr %bits, align 4, !tbaa !12
  %add12 = add i32 %24, %call11
  store i32 %add12, ptr %bits, align 4, !tbaa !12
  %arraydecay13 = getelementptr inbounds [64 x i64], ptr %iblock, i64 0, i64 0
  %25 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %26 = load i32, ptr %emax, align 4, !tbaa !12
  call void @inv_cast_double(ptr noundef %arraydecay13, ptr noundef %25, i32 noundef 64, i32 noundef %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr %emax) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxprec) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr %iblock) #5
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %27 = load i32, ptr %i, align 4, !tbaa !12
  %cmp14 = icmp ult i32 %27, 64
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %fblock.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %28, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add i32 %29, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits16 = getelementptr inbounds %struct.zfp_stream, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %minbits16, align 8, !tbaa !14
  %32 = load i32, ptr %bits, align 4, !tbaa !12
  %cmp17 = icmp ugt i32 %31, %32
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %for.end
  %33 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream20 = getelementptr inbounds %struct.zfp_stream, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %stream20, align 8, !tbaa !13
  %35 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits21 = getelementptr inbounds %struct.zfp_stream, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %minbits21, align 8, !tbaa !14
  %37 = load i32, ptr %bits, align 4, !tbaa !12
  %sub22 = sub i32 %36, %37
  %conv23 = zext i32 %sub22 to i64
  call void @stream_skip(ptr noundef %34, i64 noundef %conv23)
  %38 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits24 = getelementptr inbounds %struct.zfp_stream, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %minbits24, align 8, !tbaa !14
  store i32 %39, ptr %bits, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then19, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  br label %if.end25

if.end25:                                         ; preds = %if.end, %cond.end
  %40 = load i32, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #5
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i64 @zfp_decode_block_strided_double_3(ptr noundef %stream, ptr noundef %p, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %sx.addr = alloca i64, align 8
  %sy.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %block = alloca [64 x double], align 256
  %bits = alloca i64, align 8
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !19
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !19
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 512, ptr %block) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [64 x double], ptr %block, i64 0, i64 0
  %call = call i64 @zfp_decode_block_double_3(ptr noundef %0, ptr noundef %arraydecay)
  store i64 %call, ptr %bits, align 8, !tbaa !19
  %arraydecay1 = getelementptr inbounds [64 x double], ptr %block, i64 0, i64 0
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load i64, ptr %sx.addr, align 8, !tbaa !19
  %3 = load i64, ptr %sy.addr, align 8, !tbaa !19
  %4 = load i64, ptr %sz.addr, align 8, !tbaa !19
  call void @scatter_double_3(ptr noundef %arraydecay1, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4)
  %5 = load i64, ptr %bits, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr %block) #5
  ret i64 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @scatter_double_3(ptr noundef %q, ptr noundef %p, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
entry:
  %q.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %sx.addr = alloca i64, align 8
  %sy.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !19
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !19
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #5
  store i32 0, ptr %z, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %z, align 4, !tbaa !12
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %y, align 4, !tbaa !12
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.body
  %1 = load i32, ptr %y, align 4, !tbaa !12
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %x, align 4, !tbaa !12
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %x, align 4, !tbaa !12
  %cmp5 = icmp ult i32 %2, 4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %q.addr, align 8, !tbaa !4
  %4 = load double, ptr %3, align 8, !tbaa !16
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store double %4, ptr %5, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %6 = load i32, ptr %x, align 4, !tbaa !12
  %inc = add i32 %6, 1
  store i32 %inc, ptr %x, align 4, !tbaa !12
  %7 = load i64, ptr %sx.addr, align 8, !tbaa !19
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds double, ptr %8, i64 %7
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i32, ptr %y, align 4, !tbaa !12
  %inc8 = add i32 %9, 1
  store i32 %inc8, ptr %y, align 4, !tbaa !12
  %10 = load i64, ptr %sy.addr, align 8, !tbaa !19
  %11 = load i64, ptr %sx.addr, align 8, !tbaa !19
  %mul = mul nsw i64 4, %11
  %sub = sub nsw i64 %10, %mul
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds double, ptr %12, i64 %sub
  store ptr %add.ptr9, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond1

for.end10:                                        ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end10
  %13 = load i32, ptr %z, align 4, !tbaa !12
  %inc12 = add i32 %13, 1
  store i32 %inc12, ptr %z, align 4, !tbaa !12
  %14 = load i64, ptr %sz.addr, align 8, !tbaa !19
  %15 = load i64, ptr %sy.addr, align 8, !tbaa !19
  %mul13 = mul nsw i64 4, %15
  %sub14 = sub nsw i64 %14, %mul13
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr15 = getelementptr inbounds double, ptr %16, i64 %sub14
  store ptr %add.ptr15, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @zfp_decode_partial_block_strided_double_3(ptr noundef %stream, ptr noundef %p, i64 noundef %nx, i64 noundef %ny, i64 noundef %nz, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %nx.addr = alloca i64, align 8
  %ny.addr = alloca i64, align 8
  %nz.addr = alloca i64, align 8
  %sx.addr = alloca i64, align 8
  %sy.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %block = alloca [64 x double], align 256
  %bits = alloca i64, align 8
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %nx, ptr %nx.addr, align 8, !tbaa !19
  store i64 %ny, ptr %ny.addr, align 8, !tbaa !19
  store i64 %nz, ptr %nz.addr, align 8, !tbaa !19
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !19
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !19
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 512, ptr %block) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [64 x double], ptr %block, i64 0, i64 0
  %call = call i64 @zfp_decode_block_double_3(ptr noundef %0, ptr noundef %arraydecay)
  store i64 %call, ptr %bits, align 8, !tbaa !19
  %arraydecay1 = getelementptr inbounds [64 x double], ptr %block, i64 0, i64 0
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load i64, ptr %nx.addr, align 8, !tbaa !19
  %3 = load i64, ptr %ny.addr, align 8, !tbaa !19
  %4 = load i64, ptr %nz.addr, align 8, !tbaa !19
  %5 = load i64, ptr %sx.addr, align 8, !tbaa !19
  %6 = load i64, ptr %sy.addr, align 8, !tbaa !19
  %7 = load i64, ptr %sz.addr, align 8, !tbaa !19
  call void @scatter_partial_double_3(ptr noundef %arraydecay1, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7)
  %8 = load i64, ptr %bits, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #5
  call void @llvm.lifetime.end.p0(i64 512, ptr %block) #5
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal void @scatter_partial_double_3(ptr noundef %q, ptr noundef %p, i64 noundef %nx, i64 noundef %ny, i64 noundef %nz, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
entry:
  %q.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %nx.addr = alloca i64, align 8
  %ny.addr = alloca i64, align 8
  %nz.addr = alloca i64, align 8
  %sx.addr = alloca i64, align 8
  %sy.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %nx, ptr %nx.addr, align 8, !tbaa !19
  store i64 %ny, ptr %ny.addr, align 8, !tbaa !19
  store i64 %nz, ptr %nz.addr, align 8, !tbaa !19
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !19
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !19
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  store i64 0, ptr %z, align 8, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i64, ptr %z, align 8, !tbaa !19
  %1 = load i64, ptr %nz.addr, align 8, !tbaa !19
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %y, align 8, !tbaa !19
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.body
  %2 = load i64, ptr %y, align 8, !tbaa !19
  %3 = load i64, ptr %ny.addr, align 8, !tbaa !19
  %cmp2 = icmp ult i64 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  store i64 0, ptr %x, align 8, !tbaa !19
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i64, ptr %x, align 8, !tbaa !19
  %5 = load i64, ptr %nx.addr, align 8, !tbaa !19
  %cmp5 = icmp ult i64 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %7 = load double, ptr %6, align 8, !tbaa !16
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store double %7, ptr %8, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %9 = load i64, ptr %x, align 8, !tbaa !19
  %inc = add i64 %9, 1
  store i64 %inc, ptr %x, align 8, !tbaa !19
  %10 = load i64, ptr %sx.addr, align 8, !tbaa !19
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds double, ptr %11, i64 %10
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %q.addr, align 8, !tbaa !4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %13 = load i64, ptr %y, align 8, !tbaa !19
  %inc8 = add i64 %13, 1
  store i64 %inc8, ptr %y, align 8, !tbaa !19
  %14 = load i64, ptr %sy.addr, align 8, !tbaa !19
  %15 = load i64, ptr %nx.addr, align 8, !tbaa !19
  %16 = load i64, ptr %sx.addr, align 8, !tbaa !19
  %mul = mul nsw i64 %15, %16
  %sub = sub nsw i64 %14, %mul
  %17 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds double, ptr %17, i64 %sub
  store ptr %add.ptr9, ptr %p.addr, align 8, !tbaa !4
  %18 = load i64, ptr %nx.addr, align 8, !tbaa !19
  %sub10 = sub i64 4, %18
  %mul11 = mul i64 1, %sub10
  %19 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %add.ptr12 = getelementptr inbounds double, ptr %19, i64 %mul11
  store ptr %add.ptr12, ptr %q.addr, align 8, !tbaa !4
  br label %for.cond1

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %20 = load i64, ptr %z, align 8, !tbaa !19
  %inc15 = add i64 %20, 1
  store i64 %inc15, ptr %z, align 8, !tbaa !19
  %21 = load i64, ptr %sz.addr, align 8, !tbaa !19
  %22 = load i64, ptr %ny.addr, align 8, !tbaa !19
  %23 = load i64, ptr %sy.addr, align 8, !tbaa !19
  %mul16 = mul nsw i64 %22, %23
  %sub17 = sub nsw i64 %21, %mul16
  %24 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr18 = getelementptr inbounds double, ptr %24, i64 %sub17
  store ptr %add.ptr18, ptr %p.addr, align 8, !tbaa !4
  %25 = load i64, ptr %ny.addr, align 8, !tbaa !19
  %sub19 = sub i64 4, %25
  %mul20 = mul i64 4, %sub19
  %26 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %add.ptr21 = getelementptr inbounds double, ptr %26, i64 %mul20
  store ptr %add.ptr21, ptr %q.addr, align 8, !tbaa !4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stream_read_bit(ptr noundef %s) #2 {
entry:
  %s.addr = alloca ptr, align 8
  %bit = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %bits, align 8, !tbaa !21
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call zeroext i8 @stream_read_word(ptr noundef %2)
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 1
  store i8 %call, ptr %buffer, align 8, !tbaa !23
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits1 = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 0
  store i64 8, ptr %bits1, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits2 = getelementptr inbounds %struct.bitstream, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %bits2, align 8, !tbaa !21
  %dec = add i64 %6, -1
  store i64 %dec, ptr %bits2, align 8, !tbaa !21
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer3 = getelementptr inbounds %struct.bitstream, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %buffer3, align 8, !tbaa !23
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 1
  store i32 %and, ptr %bit, align 4, !tbaa !12
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer4 = getelementptr inbounds %struct.bitstream, ptr %9, i32 0, i32 1
  %10 = load i8, ptr %buffer4, align 8, !tbaa !23
  %conv5 = zext i8 %10 to i32
  %shr = ashr i32 %conv5, 1
  %conv6 = trunc i32 %shr to i8
  store i8 %conv6, ptr %buffer4, align 8, !tbaa !23
  %11 = load i32, ptr %bit, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #5
  ret i32 %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stream_read_bits(ptr noundef %s, i64 noundef %n) #2 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %value = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 1
  %1 = load i8, ptr %buffer, align 8, !tbaa !23
  %conv = zext i8 %1 to i64
  store i64 %conv, ptr %value, align 8, !tbaa !19
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %bits, align 8, !tbaa !21
  %4 = load i64, ptr %n.addr, align 8, !tbaa !19
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call zeroext i8 @stream_read_word(ptr noundef %5)
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 1
  store i8 %call, ptr %buffer2, align 8, !tbaa !23
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer3 = getelementptr inbounds %struct.bitstream, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %buffer3, align 8, !tbaa !23
  %conv4 = zext i8 %8 to i64
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits5 = getelementptr inbounds %struct.bitstream, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %bits5, align 8, !tbaa !21
  %shl = shl i64 %conv4, %10
  %11 = load i64, ptr %value, align 8, !tbaa !19
  %add = add i64 %11, %shl
  store i64 %add, ptr %value, align 8, !tbaa !19
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits6 = getelementptr inbounds %struct.bitstream, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %bits6, align 8, !tbaa !21
  %add7 = add i64 %13, 8
  store i64 %add7, ptr %bits6, align 8, !tbaa !21
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits8 = getelementptr inbounds %struct.bitstream, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %bits8, align 8, !tbaa !21
  %16 = load i64, ptr %n.addr, align 8, !tbaa !19
  %cmp9 = icmp ult i64 %15, %16
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i64, ptr %n.addr, align 8, !tbaa !19
  %18 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits11 = getelementptr inbounds %struct.bitstream, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %bits11, align 8, !tbaa !21
  %sub = sub i64 %19, %17
  store i64 %sub, ptr %bits11, align 8, !tbaa !21
  %20 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits12 = getelementptr inbounds %struct.bitstream, ptr %20, i32 0, i32 0
  %21 = load i64, ptr %bits12, align 8, !tbaa !21
  %tobool = icmp ne i64 %21, 0
  br i1 %tobool, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  %22 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer14 = getelementptr inbounds %struct.bitstream, ptr %22, i32 0, i32 1
  store i8 0, ptr %buffer14, align 8, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %do.end
  %23 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits15 = getelementptr inbounds %struct.bitstream, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %bits15, align 8, !tbaa !21
  %sub16 = sub i64 8, %24
  %25 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer17 = getelementptr inbounds %struct.bitstream, ptr %25, i32 0, i32 1
  %26 = load i8, ptr %buffer17, align 8, !tbaa !23
  %conv18 = zext i8 %26 to i32
  %sh_prom = trunc i64 %sub16 to i32
  %shr = ashr i32 %conv18, %sh_prom
  %conv19 = trunc i32 %shr to i8
  store i8 %conv19, ptr %buffer17, align 8, !tbaa !23
  %27 = load i64, ptr %n.addr, align 8, !tbaa !19
  %sub20 = sub i64 %27, 1
  %shl21 = shl i64 2, %sub20
  %sub22 = sub i64 %shl21, 1
  %28 = load i64, ptr %value, align 8, !tbaa !19
  %and = and i64 %28, %sub22
  store i64 %and, ptr %value, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  br label %if.end34

if.else23:                                        ; preds = %entry
  %29 = load i64, ptr %n.addr, align 8, !tbaa !19
  %30 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits24 = getelementptr inbounds %struct.bitstream, ptr %30, i32 0, i32 0
  %31 = load i64, ptr %bits24, align 8, !tbaa !21
  %sub25 = sub i64 %31, %29
  store i64 %sub25, ptr %bits24, align 8, !tbaa !21
  %32 = load i64, ptr %n.addr, align 8, !tbaa !19
  %33 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer26 = getelementptr inbounds %struct.bitstream, ptr %33, i32 0, i32 1
  %34 = load i8, ptr %buffer26, align 8, !tbaa !23
  %conv27 = zext i8 %34 to i32
  %sh_prom28 = trunc i64 %32 to i32
  %shr29 = ashr i32 %conv27, %sh_prom28
  %conv30 = trunc i32 %shr29 to i8
  store i8 %conv30, ptr %buffer26, align 8, !tbaa !23
  %35 = load i64, ptr %n.addr, align 8, !tbaa !19
  %shl31 = shl i64 1, %35
  %sub32 = sub i64 %shl31, 1
  %36 = load i64, ptr %value, align 8, !tbaa !19
  %and33 = and i64 %36, %sub32
  store i64 %and33, ptr %value, align 8, !tbaa !19
  br label %if.end34

if.end34:                                         ; preds = %if.else23, %if.end
  %37 = load i64, ptr %value, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @precision(i32 noundef %maxexp, i32 noundef %maxprec, i32 noundef %minexp, i32 noundef %dims) #0 {
entry:
  %maxexp.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %minexp.addr = alloca i32, align 4
  %dims.addr = alloca i32, align 4
  store i32 %maxexp, ptr %maxexp.addr, align 4, !tbaa !12
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store i32 %minexp, ptr %minexp.addr, align 4, !tbaa !12
  store i32 %dims, ptr %dims.addr, align 4, !tbaa !12
  %0 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %1 = load i32, ptr %maxexp.addr, align 4, !tbaa !12
  %2 = load i32, ptr %minexp.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %1, %2
  %3 = load i32, ptr %dims.addr, align 4, !tbaa !12
  %mul = mul nsw i32 2, %3
  %add = add nsw i32 %sub, %mul
  %add1 = add nsw i32 %add, 2
  %cmp = icmp sgt i32 0, %add1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %maxexp.addr, align 4, !tbaa !12
  %5 = load i32, ptr %minexp.addr, align 4, !tbaa !12
  %sub2 = sub nsw i32 %4, %5
  %6 = load i32, ptr %dims.addr, align 4, !tbaa !12
  %mul3 = mul nsw i32 2, %6
  %add4 = add nsw i32 %sub2, %mul3
  %add5 = add nsw i32 %add4, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add5, %cond.false ]
  %cmp6 = icmp ult i32 %0, %cond
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  %7 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  br label %cond.end22

cond.false8:                                      ; preds = %cond.end
  %8 = load i32, ptr %maxexp.addr, align 4, !tbaa !12
  %9 = load i32, ptr %minexp.addr, align 4, !tbaa !12
  %sub9 = sub nsw i32 %8, %9
  %10 = load i32, ptr %dims.addr, align 4, !tbaa !12
  %mul10 = mul nsw i32 2, %10
  %add11 = add nsw i32 %sub9, %mul10
  %add12 = add nsw i32 %add11, 2
  %cmp13 = icmp sgt i32 0, %add12
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.false8
  br label %cond.end20

cond.false15:                                     ; preds = %cond.false8
  %11 = load i32, ptr %maxexp.addr, align 4, !tbaa !12
  %12 = load i32, ptr %minexp.addr, align 4, !tbaa !12
  %sub16 = sub nsw i32 %11, %12
  %13 = load i32, ptr %dims.addr, align 4, !tbaa !12
  %mul17 = mul nsw i32 2, %13
  %add18 = add nsw i32 %sub16, %mul17
  %add19 = add nsw i32 %add18, 2
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false15, %cond.true14
  %cond21 = phi i32 [ 0, %cond.true14 ], [ %add19, %cond.false15 ]
  br label %cond.end22

cond.end22:                                       ; preds = %cond.end20, %cond.true7
  %cond23 = phi i32 [ %7, %cond.true7 ], [ %cond21, %cond.end20 ]
  ret i32 %cond23
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_block_int64_3(ptr noundef %stream, i32 noundef %minbits, i32 noundef %maxbits, i32 noundef %maxprec, ptr noundef %iblock) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %minbits.addr = alloca i32, align 4
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %iblock.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %ublock = alloca [64 x i64], align 256
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %minbits, ptr %minbits.addr, align 4, !tbaa !12
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !12
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #5
  call void @llvm.lifetime.start.p0(i64 512, ptr %ublock) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %1 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %arraydecay = getelementptr inbounds [64 x i64], ptr %ublock, i64 0, i64 0
  %call = call i32 @decode_ints_uint64(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %arraydecay, i32 noundef 64)
  store i32 %call, ptr %bits, align 4, !tbaa !12
  %3 = load i32, ptr %bits, align 4, !tbaa !12
  %4 = load i32, ptr %minbits.addr, align 4, !tbaa !12
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %6 = load i32, ptr %minbits.addr, align 4, !tbaa !12
  %7 = load i32, ptr %bits, align 4, !tbaa !12
  %sub = sub i32 %6, %7
  %conv = zext i32 %sub to i64
  call void @stream_skip(ptr noundef %5, i64 noundef %conv)
  %8 = load i32, ptr %minbits.addr, align 4, !tbaa !12
  store i32 %8, ptr %bits, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay1 = getelementptr inbounds [64 x i64], ptr %ublock, i64 0, i64 0
  %9 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @inv_order_int64(ptr noundef %arraydecay1, ptr noundef %9, ptr noundef @perm_3, i32 noundef 64)
  %10 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @inv_xform_int64_3(ptr noundef %10)
  %11 = load i32, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 512, ptr %ublock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #5
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @inv_cast_double(ptr noundef %iblock, ptr noundef %fblock, i32 noundef %n, i32 noundef %emax) #0 {
entry:
  %iblock.addr = alloca ptr, align 8
  %fblock.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %emax.addr = alloca i32, align 4
  %s = alloca double, align 8
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  store ptr %fblock, ptr %fblock.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  store i32 %emax, ptr %emax.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %0 = load i32, ptr %emax.addr, align 4, !tbaa !12
  %call = call double @dequantize_double(i64 noundef 1, i32 noundef %0)
  store double %call, ptr %s, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load double, ptr %s, align 8, !tbaa !16
  %2 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %iblock.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !19
  %conv = sitofp i64 %3 to double
  %mul = fmul double %1, %conv
  %4 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %4, i32 1
  store ptr %incdec.ptr1, ptr %fblock.addr, align 8, !tbaa !4
  store double %mul, ptr %4, align 8, !tbaa !16
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %n.addr, align 4, !tbaa !12
  %dec = add i32 %5, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stream_skip(ptr noundef %s, i64 noundef %n) #2 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !19
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call i64 @stream_rtell(ptr noundef %1)
  %2 = load i64, ptr %n.addr, align 8, !tbaa !19
  %add = add i64 %call, %2
  call void @stream_rseek(ptr noundef %0, i64 noundef %add)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @stream_read_word(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %w = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %w) #5
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ptr, align 8, !tbaa !24
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8, !tbaa !24
  %2 = load i8, ptr %1, align 1, !tbaa !25
  store i8 %2, ptr %w, align 1, !tbaa !25
  %3 = load i8, ptr %w, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 1, ptr %w) #5
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_ints_uint64(ptr noalias noundef %stream, i32 noundef %maxbits, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !12
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !12
  %0 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %1 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %2 = load i32, ptr %size.addr, align 4, !tbaa !12
  %call = call i32 @with_maxbits(i32 noundef %0, i32 noundef %1, i32 noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp = icmp ule i32 %3, 64
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %5 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %6 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %8 = load i32, ptr %size.addr, align 4, !tbaa !12
  %call2 = call i32 @decode_few_ints_uint64(ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8)
  store i32 %call2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %10 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %11 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %13 = load i32, ptr %size.addr, align 4, !tbaa !12
  %call3 = call i32 @decode_many_ints_uint64(ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.else4:                                         ; preds = %entry
  %14 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp5 = icmp ule i32 %14, 64
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %15 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %16 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %17 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %18 = load i32, ptr %size.addr, align 4, !tbaa !12
  %call7 = call i32 @decode_few_ints_prec_uint64(ptr noundef %15, i32 noundef %16, ptr noundef %17, i32 noundef %18)
  store i32 %call7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else4
  %19 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %20 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %21 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %22 = load i32, ptr %size.addr, align 4, !tbaa !12
  %call9 = call i32 @decode_many_ints_prec_uint64(ptr noundef %19, i32 noundef %20, ptr noundef %21, i32 noundef %22)
  store i32 %call9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then6, %if.else, %if.then1
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @inv_order_int64(ptr noundef %ublock, ptr noundef %iblock, ptr noundef %perm, i32 noundef %n) #0 {
entry:
  %ublock.addr = alloca ptr, align 8
  %iblock.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %ublock, ptr %ublock.addr, align 8, !tbaa !4
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  store ptr %perm, ptr %perm.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %ublock.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %ublock.addr, align 8, !tbaa !4
  %1 = load i64, ptr %0, align 8, !tbaa !19
  %call = call i64 @uint2int_uint64(i64 noundef %1)
  %2 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr1, ptr %perm.addr, align 8, !tbaa !4
  %4 = load i8, ptr %3, align 1, !tbaa !25
  %idxprom = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom
  store i64 %call, ptr %arrayidx, align 8, !tbaa !19
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %n.addr, align 4, !tbaa !12
  %dec = add i32 %5, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @inv_xform_int64_3(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #5
  store i32 0, ptr %y, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %y, align 4, !tbaa !12
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !tbaa !12
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %x, align 4, !tbaa !12
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = load i32, ptr %x, align 4, !tbaa !12
  %mul = mul i32 1, %3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %y, align 4, !tbaa !12
  %mul4 = mul i32 4, %4
  %idx.ext5 = zext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i64, ptr %add.ptr, i64 %idx.ext5
  call void @inv_lift_int64(ptr noundef %add.ptr6, i64 noundef 16)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %x, align 4, !tbaa !12
  %inc = add i32 %5, 1
  store i32 %inc, ptr %x, align 4, !tbaa !12
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, ptr %y, align 4, !tbaa !12
  %inc8 = add i32 %6, 1
  store i32 %inc8, ptr %y, align 4, !tbaa !12
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !tbaa !12
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %for.end9
  %7 = load i32, ptr %x, align 4, !tbaa !12
  %cmp11 = icmp ult i32 %7, 4
  br i1 %cmp11, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %z, align 4, !tbaa !12
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %8 = load i32, ptr %z, align 4, !tbaa !12
  %cmp14 = icmp ult i32 %8, 4
  br i1 %cmp14, label %for.body15, label %for.end24

for.body15:                                       ; preds = %for.cond13
  %9 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %10 = load i32, ptr %z, align 4, !tbaa !12
  %mul16 = mul i32 16, %10
  %idx.ext17 = zext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i64, ptr %9, i64 %idx.ext17
  %11 = load i32, ptr %x, align 4, !tbaa !12
  %mul19 = mul i32 1, %11
  %idx.ext20 = zext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i64, ptr %add.ptr18, i64 %idx.ext20
  call void @inv_lift_int64(ptr noundef %add.ptr21, i64 noundef 4)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %12 = load i32, ptr %z, align 4, !tbaa !12
  %inc23 = add i32 %12, 1
  store i32 %inc23, ptr %z, align 4, !tbaa !12
  br label %for.cond13

for.end24:                                        ; preds = %for.cond13
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %13 = load i32, ptr %x, align 4, !tbaa !12
  %inc26 = add i32 %13, 1
  store i32 %inc26, ptr %x, align 4, !tbaa !12
  br label %for.cond10

for.end27:                                        ; preds = %for.cond10
  store i32 0, ptr %z, align 4, !tbaa !12
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc43, %for.end27
  %14 = load i32, ptr %z, align 4, !tbaa !12
  %cmp29 = icmp ult i32 %14, 4
  br i1 %cmp29, label %for.body30, label %for.end45

for.body30:                                       ; preds = %for.cond28
  store i32 0, ptr %y, align 4, !tbaa !12
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc40, %for.body30
  %15 = load i32, ptr %y, align 4, !tbaa !12
  %cmp32 = icmp ult i32 %15, 4
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load i32, ptr %y, align 4, !tbaa !12
  %mul34 = mul i32 4, %17
  %idx.ext35 = zext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i64, ptr %16, i64 %idx.ext35
  %18 = load i32, ptr %z, align 4, !tbaa !12
  %mul37 = mul i32 16, %18
  %idx.ext38 = zext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i64, ptr %add.ptr36, i64 %idx.ext38
  call void @inv_lift_int64(ptr noundef %add.ptr39, i64 noundef 1)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body33
  %19 = load i32, ptr %y, align 4, !tbaa !12
  %inc41 = add i32 %19, 1
  store i32 %inc41, ptr %y, align 4, !tbaa !12
  br label %for.cond31

for.end42:                                        ; preds = %for.cond31
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %20 = load i32, ptr %z, align 4, !tbaa !12
  %inc44 = add i32 %20, 1
  store i32 %inc44, ptr %z, align 4, !tbaa !12
  br label %for.cond28

for.end45:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @with_maxbits(i32 noundef %maxbits, i32 noundef %maxprec, i32 noundef %size) #0 {
entry:
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !12
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store i32 %size, ptr %size.addr, align 4, !tbaa !12
  %0 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %add = add i32 %0, 1
  %1 = load i32, ptr %size.addr, align 4, !tbaa !12
  %mul = mul i32 %add, %1
  %sub = sub i32 %mul, 1
  %2 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %cmp = icmp ugt i32 %sub, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_few_ints_uint64(ptr noalias noundef %stream, i32 noundef %maxbits, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %s = alloca %struct.bitstream, align 8
  %intprec = alloca i32, align 4
  %kmin = alloca i32, align 4
  %bits = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !12
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #5
  store i32 64, ptr %intprec, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #5
  %1 = load i32, ptr %intprec, align 4, !tbaa !12
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !12
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #5
  %5 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  store i32 %5, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load i32, ptr %i, align 4, !tbaa !12
  %7 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp1 = icmp ult i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %idxprom
  store i64 0, ptr %arrayidx, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %intprec, align 4, !tbaa !12
  store i32 %11, ptr %k, align 4, !tbaa !12
  store i32 0, ptr %n, align 4, !tbaa !12
  store i32 0, ptr %m, align 4, !tbaa !12
  br label %for.cond2

for.cond2:                                        ; preds = %for.end50, %for.end
  %12 = load i32, ptr %bits, align 4, !tbaa !12
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond2
  store i32 0, ptr %m, align 4, !tbaa !12
  %13 = load i32, ptr %k, align 4, !tbaa !12
  %dec = add i32 %13, -1
  store i32 %dec, ptr %k, align 4, !tbaa !12
  %14 = load i32, ptr %kmin, align 4, !tbaa !12
  %cmp3 = icmp ugt i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond2
  %15 = phi i1 [ false, %for.cond2 ], [ %cmp3, %land.rhs ]
  br i1 %15, label %for.body4, label %for.end51

for.body4:                                        ; preds = %land.end
  %16 = load i32, ptr %n, align 4, !tbaa !12
  %17 = load i32, ptr %bits, align 4, !tbaa !12
  %cmp5 = icmp ult i32 %16, %17
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %for.body4
  %18 = load i32, ptr %n, align 4, !tbaa !12
  br label %cond.end8

cond.false7:                                      ; preds = %for.body4
  %19 = load i32, ptr %bits, align 4, !tbaa !12
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %18, %cond.true6 ], [ %19, %cond.false7 ]
  store i32 %cond9, ptr %m, align 4, !tbaa !12
  %20 = load i32, ptr %m, align 4, !tbaa !12
  %21 = load i32, ptr %bits, align 4, !tbaa !12
  %sub10 = sub i32 %21, %20
  store i32 %sub10, ptr %bits, align 4, !tbaa !12
  %22 = load i32, ptr %m, align 4, !tbaa !12
  %conv = zext i32 %22 to i64
  %call = call i64 @stream_read_bits(ptr noundef %s, i64 noundef %conv)
  store i64 %call, ptr %x, align 8, !tbaa !19
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc37, %cond.end8
  %23 = load i32, ptr %bits, align 4, !tbaa !12
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %land.rhs13, label %land.end16

land.rhs13:                                       ; preds = %for.cond11
  %24 = load i32, ptr %n, align 4, !tbaa !12
  %25 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp14 = icmp ult i32 %24, %25
  br label %land.end16

land.end16:                                       ; preds = %land.rhs13, %for.cond11
  %26 = phi i1 [ false, %for.cond11 ], [ %cmp14, %land.rhs13 ]
  br i1 %26, label %for.body17, label %for.end39

for.body17:                                       ; preds = %land.end16
  %27 = load i32, ptr %bits, align 4, !tbaa !12
  %dec18 = add i32 %27, -1
  store i32 %dec18, ptr %bits, align 4, !tbaa !12
  %call19 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body17
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc33, %if.then
  %28 = load i32, ptr %bits, align 4, !tbaa !12
  %tobool22 = icmp ne i32 %28, 0
  br i1 %tobool22, label %land.rhs23, label %land.end27

land.rhs23:                                       ; preds = %for.cond21
  %29 = load i32, ptr %n, align 4, !tbaa !12
  %30 = load i32, ptr %size.addr, align 4, !tbaa !12
  %sub24 = sub i32 %30, 1
  %cmp25 = icmp ult i32 %29, %sub24
  br label %land.end27

land.end27:                                       ; preds = %land.rhs23, %for.cond21
  %31 = phi i1 [ false, %for.cond21 ], [ %cmp25, %land.rhs23 ]
  br i1 %31, label %for.body28, label %for.end35

for.body28:                                       ; preds = %land.end27
  %32 = load i32, ptr %bits, align 4, !tbaa !12
  %dec29 = add i32 %32, -1
  store i32 %dec29, ptr %bits, align 4, !tbaa !12
  %call30 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end

if.then32:                                        ; preds = %for.body28
  br label %for.end35

if.end:                                           ; preds = %for.body28
  br label %for.inc33

for.inc33:                                        ; preds = %if.end
  %33 = load i32, ptr %n, align 4, !tbaa !12
  %inc34 = add i32 %33, 1
  store i32 %inc34, ptr %n, align 4, !tbaa !12
  br label %for.cond21

for.end35:                                        ; preds = %if.then32, %land.end27
  %34 = load i32, ptr %n, align 4, !tbaa !12
  %sh_prom = zext i32 %34 to i64
  %shl = shl i64 1, %sh_prom
  %35 = load i64, ptr %x, align 8, !tbaa !19
  %add = add i64 %35, %shl
  store i64 %add, ptr %x, align 8, !tbaa !19
  br label %if.end36

if.else:                                          ; preds = %for.body17
  %36 = load i32, ptr %size.addr, align 4, !tbaa !12
  store i32 %36, ptr %m, align 4, !tbaa !12
  br label %for.end39

if.end36:                                         ; preds = %for.end35
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %37 = load i32, ptr %n, align 4, !tbaa !12
  %inc38 = add i32 %37, 1
  store i32 %inc38, ptr %n, align 4, !tbaa !12
  %38 = load i32, ptr %n, align 4, !tbaa !12
  store i32 %38, ptr %m, align 4, !tbaa !12
  br label %for.cond11

for.end39:                                        ; preds = %if.else, %land.end16
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc48, %for.end39
  %39 = load i64, ptr %x, align 8, !tbaa !19
  %tobool41 = icmp ne i64 %39, 0
  br i1 %tobool41, label %for.body42, label %for.end50

for.body42:                                       ; preds = %for.cond40
  %40 = load i64, ptr %x, align 8, !tbaa !19
  %and = and i64 %40, 1
  %41 = load i32, ptr %k, align 4, !tbaa !12
  %sh_prom43 = zext i32 %41 to i64
  %shl44 = shl i64 %and, %sh_prom43
  %42 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %43 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom45 = zext i32 %43 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %42, i64 %idxprom45
  %44 = load i64, ptr %arrayidx46, align 8, !tbaa !19
  %add47 = add i64 %44, %shl44
  store i64 %add47, ptr %arrayidx46, align 8, !tbaa !19
  br label %for.inc48

for.inc48:                                        ; preds = %for.body42
  %45 = load i32, ptr %i, align 4, !tbaa !12
  %inc49 = add i32 %45, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !12
  %46 = load i64, ptr %x, align 8, !tbaa !19
  %shr = lshr i64 %46, 1
  store i64 %shr, ptr %x, align 8, !tbaa !19
  br label %for.cond40

for.end50:                                        ; preds = %for.cond40
  br label %for.cond2

for.end51:                                        ; preds = %land.end
  %47 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %47, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !26
  %48 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %49 = load i32, ptr %bits, align 4, !tbaa !12
  %sub52 = sub i32 %48, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #5
  ret i32 %sub52
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_many_ints_uint64(ptr noalias noundef %stream, i32 noundef %maxbits, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %s = alloca %struct.bitstream, align 8
  %intprec = alloca i32, align 4
  %kmin = alloca i32, align 4
  %bits = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !12
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #5
  store i32 64, ptr %intprec, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #5
  %1 = load i32, ptr %intprec, align 4, !tbaa !12
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !12
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #5
  %5 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  store i32 %5, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load i32, ptr %i, align 4, !tbaa !12
  %7 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp1 = icmp ult i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 %idxprom
  store i64 0, ptr %arrayidx, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %intprec, align 4, !tbaa !12
  store i32 %11, ptr %k, align 4, !tbaa !12
  store i32 0, ptr %n, align 4, !tbaa !12
  store i32 0, ptr %m, align 4, !tbaa !12
  br label %for.cond2

for.cond2:                                        ; preds = %for.end53, %for.end
  %12 = load i32, ptr %bits, align 4, !tbaa !12
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond2
  store i32 0, ptr %m, align 4, !tbaa !12
  %13 = load i32, ptr %k, align 4, !tbaa !12
  %dec = add i32 %13, -1
  store i32 %dec, ptr %k, align 4, !tbaa !12
  %14 = load i32, ptr %kmin, align 4, !tbaa !12
  %cmp3 = icmp ugt i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond2
  %15 = phi i1 [ false, %for.cond2 ], [ %cmp3, %land.rhs ]
  br i1 %15, label %for.body4, label %for.end54

for.body4:                                        ; preds = %land.end
  %16 = load i32, ptr %n, align 4, !tbaa !12
  %17 = load i32, ptr %bits, align 4, !tbaa !12
  %cmp5 = icmp ult i32 %16, %17
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %for.body4
  %18 = load i32, ptr %n, align 4, !tbaa !12
  br label %cond.end8

cond.false7:                                      ; preds = %for.body4
  %19 = load i32, ptr %bits, align 4, !tbaa !12
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %18, %cond.true6 ], [ %19, %cond.false7 ]
  store i32 %cond9, ptr %m, align 4, !tbaa !12
  %20 = load i32, ptr %m, align 4, !tbaa !12
  %21 = load i32, ptr %bits, align 4, !tbaa !12
  %sub10 = sub i32 %21, %20
  store i32 %sub10, ptr %bits, align 4, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %cond.end8
  %22 = load i32, ptr %i, align 4, !tbaa !12
  %23 = load i32, ptr %m, align 4, !tbaa !12
  %cmp12 = icmp ult i32 %22, %23
  br i1 %cmp12, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond11
  %call = call i32 @stream_read_bit(ptr noundef %s)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %24 = load i32, ptr %k, align 4, !tbaa !12
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  %25 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom15 = zext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %25, i64 %idxprom15
  %27 = load i64, ptr %arrayidx16, align 8, !tbaa !19
  %add = add i64 %27, %shl
  store i64 %add, ptr %arrayidx16, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body13
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %28 = load i32, ptr %i, align 4, !tbaa !12
  %inc18 = add i32 %28, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !12
  br label %for.cond11

for.end19:                                        ; preds = %for.cond11
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc51, %for.end19
  %29 = load i32, ptr %bits, align 4, !tbaa !12
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %land.rhs22, label %land.end24

land.rhs22:                                       ; preds = %for.cond20
  %30 = load i32, ptr %n, align 4, !tbaa !12
  %31 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp23 = icmp ult i32 %30, %31
  br label %land.end24

land.end24:                                       ; preds = %land.rhs22, %for.cond20
  %32 = phi i1 [ false, %for.cond20 ], [ %cmp23, %land.rhs22 ]
  br i1 %32, label %for.body25, label %for.end53

for.body25:                                       ; preds = %land.end24
  %33 = load i32, ptr %bits, align 4, !tbaa !12
  %dec26 = add i32 %33, -1
  store i32 %dec26, ptr %bits, align 4, !tbaa !12
  %call27 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.body25
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc42, %if.then29
  %34 = load i32, ptr %bits, align 4, !tbaa !12
  %tobool31 = icmp ne i32 %34, 0
  br i1 %tobool31, label %land.rhs32, label %land.end35

land.rhs32:                                       ; preds = %for.cond30
  %35 = load i32, ptr %n, align 4, !tbaa !12
  %36 = load i32, ptr %size.addr, align 4, !tbaa !12
  %sub33 = sub i32 %36, 1
  %cmp34 = icmp ult i32 %35, %sub33
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %for.cond30
  %37 = phi i1 [ false, %for.cond30 ], [ %cmp34, %land.rhs32 ]
  br i1 %37, label %for.body36, label %for.end44

for.body36:                                       ; preds = %land.end35
  %38 = load i32, ptr %bits, align 4, !tbaa !12
  %dec37 = add i32 %38, -1
  store i32 %dec37, ptr %bits, align 4, !tbaa !12
  %call38 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body36
  br label %for.end44

if.end41:                                         ; preds = %for.body36
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %39 = load i32, ptr %n, align 4, !tbaa !12
  %inc43 = add i32 %39, 1
  store i32 %inc43, ptr %n, align 4, !tbaa !12
  br label %for.cond30

for.end44:                                        ; preds = %if.then40, %land.end35
  %40 = load i32, ptr %k, align 4, !tbaa !12
  %sh_prom45 = zext i32 %40 to i64
  %shl46 = shl i64 1, %sh_prom45
  %41 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %42 = load i32, ptr %n, align 4, !tbaa !12
  %idxprom47 = zext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds i64, ptr %41, i64 %idxprom47
  %43 = load i64, ptr %arrayidx48, align 8, !tbaa !19
  %add49 = add i64 %43, %shl46
  store i64 %add49, ptr %arrayidx48, align 8, !tbaa !19
  br label %if.end50

if.else:                                          ; preds = %for.body25
  %44 = load i32, ptr %size.addr, align 4, !tbaa !12
  store i32 %44, ptr %m, align 4, !tbaa !12
  br label %for.end53

if.end50:                                         ; preds = %for.end44
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %45 = load i32, ptr %n, align 4, !tbaa !12
  %inc52 = add i32 %45, 1
  store i32 %inc52, ptr %n, align 4, !tbaa !12
  %46 = load i32, ptr %n, align 4, !tbaa !12
  store i32 %46, ptr %m, align 4, !tbaa !12
  br label %for.cond20

for.end53:                                        ; preds = %if.else, %land.end24
  br label %for.cond2

for.end54:                                        ; preds = %land.end
  %47 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %47, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !26
  %48 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %49 = load i32, ptr %bits, align 4, !tbaa !12
  %sub55 = sub i32 %48, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #5
  ret i32 %sub55
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_few_ints_prec_uint64(ptr noalias noundef %stream, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %maxprec.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %s = alloca %struct.bitstream, align 8
  %offset = alloca i64, align 8
  %intprec = alloca i32, align 4
  %kmin = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #5
  %call = call i64 @stream_rtell(ptr noundef %s)
  store i64 %call, ptr %offset, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #5
  store i32 64, ptr %intprec, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #5
  %1 = load i32, ptr %intprec, align 4, !tbaa !12
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !12
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i32, ptr %i, align 4, !tbaa !12
  %6 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp1 = icmp ult i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 %idxprom
  store i64 0, ptr %arrayidx, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %intprec, align 4, !tbaa !12
  store i32 %10, ptr %k, align 4, !tbaa !12
  store i32 0, ptr %n, align 4, !tbaa !12
  br label %for.cond2

for.cond2:                                        ; preds = %for.end36, %for.end
  %11 = load i32, ptr %k, align 4, !tbaa !12
  %dec = add i32 %11, -1
  store i32 %dec, ptr %k, align 4, !tbaa !12
  %12 = load i32, ptr %kmin, align 4, !tbaa !12
  %cmp3 = icmp ugt i32 %11, %12
  br i1 %cmp3, label %for.body4, label %for.end37

for.body4:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  %13 = load i32, ptr %n, align 4, !tbaa !12
  %conv = zext i32 %13 to i64
  %call5 = call i64 @stream_read_bits(ptr noundef %s, i64 noundef %conv)
  store i64 %call5, ptr %x, align 8, !tbaa !19
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc23, %for.body4
  %14 = load i32, ptr %n, align 4, !tbaa !12
  %15 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp7 = icmp ult i32 %14, %15
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond6
  %call9 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond6
  %16 = phi i1 [ false, %for.cond6 ], [ %tobool, %land.rhs ]
  br i1 %16, label %for.body10, label %for.end25

for.body10:                                       ; preds = %land.end
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %for.body10
  %17 = load i32, ptr %n, align 4, !tbaa !12
  %18 = load i32, ptr %size.addr, align 4, !tbaa !12
  %sub12 = sub i32 %18, 1
  %cmp13 = icmp ult i32 %17, %sub12
  br i1 %cmp13, label %land.rhs15, label %land.end18

land.rhs15:                                       ; preds = %for.cond11
  %call16 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br label %land.end18

land.end18:                                       ; preds = %land.rhs15, %for.cond11
  %19 = phi i1 [ false, %for.cond11 ], [ %lnot, %land.rhs15 ]
  br i1 %19, label %for.body19, label %for.end22

for.body19:                                       ; preds = %land.end18
  br label %for.inc20

for.inc20:                                        ; preds = %for.body19
  %20 = load i32, ptr %n, align 4, !tbaa !12
  %inc21 = add i32 %20, 1
  store i32 %inc21, ptr %n, align 4, !tbaa !12
  br label %for.cond11

for.end22:                                        ; preds = %land.end18
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %21 = load i32, ptr %n, align 4, !tbaa !12
  %sh_prom = zext i32 %21 to i64
  %shl = shl i64 1, %sh_prom
  %22 = load i64, ptr %x, align 8, !tbaa !19
  %add = add i64 %22, %shl
  store i64 %add, ptr %x, align 8, !tbaa !19
  %23 = load i32, ptr %n, align 4, !tbaa !12
  %inc24 = add i32 %23, 1
  store i32 %inc24, ptr %n, align 4, !tbaa !12
  br label %for.cond6

for.end25:                                        ; preds = %land.end
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc34, %for.end25
  %24 = load i64, ptr %x, align 8, !tbaa !19
  %tobool27 = icmp ne i64 %24, 0
  br i1 %tobool27, label %for.body28, label %for.end36

for.body28:                                       ; preds = %for.cond26
  %25 = load i64, ptr %x, align 8, !tbaa !19
  %and = and i64 %25, 1
  %26 = load i32, ptr %k, align 4, !tbaa !12
  %sh_prom29 = zext i32 %26 to i64
  %shl30 = shl i64 %and, %sh_prom29
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom31 = zext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds i64, ptr %27, i64 %idxprom31
  %29 = load i64, ptr %arrayidx32, align 8, !tbaa !19
  %add33 = add i64 %29, %shl30
  store i64 %add33, ptr %arrayidx32, align 8, !tbaa !19
  br label %for.inc34

for.inc34:                                        ; preds = %for.body28
  %30 = load i32, ptr %i, align 4, !tbaa !12
  %inc35 = add i32 %30, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !12
  %31 = load i64, ptr %x, align 8, !tbaa !19
  %shr = lshr i64 %31, 1
  store i64 %shr, ptr %x, align 8, !tbaa !19
  br label %for.cond26

for.end36:                                        ; preds = %for.cond26
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  br label %for.cond2

for.end37:                                        ; preds = %for.cond2
  %32 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !26
  %call38 = call i64 @stream_rtell(ptr noundef %s)
  %33 = load i64, ptr %offset, align 8, !tbaa !19
  %sub39 = sub i64 %call38, %33
  %conv40 = trunc i64 %sub39 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #5
  ret i32 %conv40
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_many_ints_prec_uint64(ptr noalias noundef %stream, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %maxprec.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %s = alloca %struct.bitstream, align 8
  %offset = alloca i64, align 8
  %intprec = alloca i32, align 4
  %kmin = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !12
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #5
  %call = call i64 @stream_rtell(ptr noundef %s)
  store i64 %call, ptr %offset, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #5
  store i32 64, ptr %intprec, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #5
  %1 = load i32, ptr %intprec, align 4, !tbaa !12
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !12
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !12
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i32, ptr %i, align 4, !tbaa !12
  %6 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp1 = icmp ult i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 %idxprom
  store i64 0, ptr %arrayidx, align 8, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %intprec, align 4, !tbaa !12
  store i32 %10, ptr %k, align 4, !tbaa !12
  store i32 0, ptr %n, align 4, !tbaa !12
  br label %for.cond2

for.cond2:                                        ; preds = %for.end37, %for.end
  %11 = load i32, ptr %k, align 4, !tbaa !12
  %dec = add i32 %11, -1
  store i32 %dec, ptr %k, align 4, !tbaa !12
  %12 = load i32, ptr %kmin, align 4, !tbaa !12
  %cmp3 = icmp ugt i32 %11, %12
  br i1 %cmp3, label %for.body4, label %for.end38

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc11, %for.body4
  %13 = load i32, ptr %i, align 4, !tbaa !12
  %14 = load i32, ptr %n, align 4, !tbaa !12
  %cmp6 = icmp ult i32 %13, %14
  br i1 %cmp6, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond5
  %call8 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %15 = load i32, ptr %k, align 4, !tbaa !12
  %sh_prom = zext i32 %15 to i64
  %shl = shl i64 1, %sh_prom
  %16 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom9 = zext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i64, ptr %16, i64 %idxprom9
  %18 = load i64, ptr %arrayidx10, align 8, !tbaa !19
  %add = add i64 %18, %shl
  store i64 %add, ptr %arrayidx10, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc11

for.inc11:                                        ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !tbaa !12
  %inc12 = add i32 %19, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !12
  br label %for.cond5

for.end13:                                        ; preds = %for.cond5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc30, %for.end13
  %20 = load i32, ptr %n, align 4, !tbaa !12
  %21 = load i32, ptr %size.addr, align 4, !tbaa !12
  %cmp15 = icmp ult i32 %20, %21
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond14
  %call16 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool17 = icmp ne i32 %call16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond14
  %22 = phi i1 [ false, %for.cond14 ], [ %tobool17, %land.rhs ]
  br i1 %22, label %for.body18, label %for.end37

for.body18:                                       ; preds = %land.end
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.body18
  %23 = load i32, ptr %n, align 4, !tbaa !12
  %24 = load i32, ptr %size.addr, align 4, !tbaa !12
  %sub20 = sub i32 %24, 1
  %cmp21 = icmp ult i32 %23, %sub20
  br i1 %cmp21, label %land.rhs22, label %land.end25

land.rhs22:                                       ; preds = %for.cond19
  %call23 = call i32 @stream_read_bit(ptr noundef %s)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot = xor i1 %tobool24, true
  br label %land.end25

land.end25:                                       ; preds = %land.rhs22, %for.cond19
  %25 = phi i1 [ false, %for.cond19 ], [ %lnot, %land.rhs22 ]
  br i1 %25, label %for.body26, label %for.end29

for.body26:                                       ; preds = %land.end25
  br label %for.inc27

for.inc27:                                        ; preds = %for.body26
  %26 = load i32, ptr %n, align 4, !tbaa !12
  %inc28 = add i32 %26, 1
  store i32 %inc28, ptr %n, align 4, !tbaa !12
  br label %for.cond19

for.end29:                                        ; preds = %land.end25
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %27 = load i32, ptr %k, align 4, !tbaa !12
  %sh_prom31 = zext i32 %27 to i64
  %shl32 = shl i64 1, %sh_prom31
  %28 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %29 = load i32, ptr %n, align 4, !tbaa !12
  %idxprom33 = zext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds i64, ptr %28, i64 %idxprom33
  %30 = load i64, ptr %arrayidx34, align 8, !tbaa !19
  %add35 = add i64 %30, %shl32
  store i64 %add35, ptr %arrayidx34, align 8, !tbaa !19
  %31 = load i32, ptr %n, align 4, !tbaa !12
  %inc36 = add i32 %31, 1
  store i32 %inc36, ptr %n, align 4, !tbaa !12
  br label %for.cond14

for.end37:                                        ; preds = %land.end
  br label %for.cond2

for.end38:                                        ; preds = %for.cond2
  %32 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !26
  %call39 = call i64 @stream_rtell(ptr noundef %s)
  %33 = load i64, ptr %offset, align 8, !tbaa !19
  %sub40 = sub i64 %call39, %33
  %conv = trunc i64 %sub40 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #5
  ret i32 %conv
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stream_rtell(ptr noundef %s) #2 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ptr, align 8, !tbaa !24
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %begin, align 8, !tbaa !27
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul i64 %sub.ptr.sub, 8
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %bits, align 8, !tbaa !21
  %sub = sub i64 %mul, %5
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define internal i64 @uint2int_uint64(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !19
  %0 = load i64, ptr %x.addr, align 8, !tbaa !19
  %xor = xor i64 %0, -6148914691236517206
  %sub = sub i64 %xor, -6148914691236517206
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define internal void @inv_lift_int64(ptr noundef %p, i64 noundef %s) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %w = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %s, ptr %s.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #5
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load i64, ptr %0, align 8, !tbaa !19
  store i64 %1, ptr %x, align 8, !tbaa !19
  %2 = load i64, ptr %s.addr, align 8, !tbaa !19
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i64, ptr %3, i64 %2
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !19
  store i64 %5, ptr %y, align 8, !tbaa !19
  %6 = load i64, ptr %s.addr, align 8, !tbaa !19
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr1 = getelementptr inbounds i64, ptr %7, i64 %6
  store ptr %add.ptr1, ptr %p.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %9 = load i64, ptr %8, align 8, !tbaa !19
  store i64 %9, ptr %z, align 8, !tbaa !19
  %10 = load i64, ptr %s.addr, align 8, !tbaa !19
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr2 = getelementptr inbounds i64, ptr %11, i64 %10
  store ptr %add.ptr2, ptr %p.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %13 = load i64, ptr %12, align 8, !tbaa !19
  store i64 %13, ptr %w, align 8, !tbaa !19
  %14 = load i64, ptr %s.addr, align 8, !tbaa !19
  %15 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr3 = getelementptr inbounds i64, ptr %15, i64 %14
  store ptr %add.ptr3, ptr %p.addr, align 8, !tbaa !4
  %16 = load i64, ptr %w, align 8, !tbaa !19
  %shr = ashr i64 %16, 1
  %17 = load i64, ptr %y, align 8, !tbaa !19
  %add = add nsw i64 %17, %shr
  store i64 %add, ptr %y, align 8, !tbaa !19
  %18 = load i64, ptr %y, align 8, !tbaa !19
  %shr4 = ashr i64 %18, 1
  %19 = load i64, ptr %w, align 8, !tbaa !19
  %sub = sub nsw i64 %19, %shr4
  store i64 %sub, ptr %w, align 8, !tbaa !19
  %20 = load i64, ptr %w, align 8, !tbaa !19
  %21 = load i64, ptr %y, align 8, !tbaa !19
  %add5 = add nsw i64 %21, %20
  store i64 %add5, ptr %y, align 8, !tbaa !19
  %22 = load i64, ptr %w, align 8, !tbaa !19
  %shl = shl i64 %22, 1
  store i64 %shl, ptr %w, align 8, !tbaa !19
  %23 = load i64, ptr %y, align 8, !tbaa !19
  %24 = load i64, ptr %w, align 8, !tbaa !19
  %sub6 = sub nsw i64 %24, %23
  store i64 %sub6, ptr %w, align 8, !tbaa !19
  %25 = load i64, ptr %x, align 8, !tbaa !19
  %26 = load i64, ptr %z, align 8, !tbaa !19
  %add7 = add nsw i64 %26, %25
  store i64 %add7, ptr %z, align 8, !tbaa !19
  %27 = load i64, ptr %x, align 8, !tbaa !19
  %shl8 = shl i64 %27, 1
  store i64 %shl8, ptr %x, align 8, !tbaa !19
  %28 = load i64, ptr %z, align 8, !tbaa !19
  %29 = load i64, ptr %x, align 8, !tbaa !19
  %sub9 = sub nsw i64 %29, %28
  store i64 %sub9, ptr %x, align 8, !tbaa !19
  %30 = load i64, ptr %z, align 8, !tbaa !19
  %31 = load i64, ptr %y, align 8, !tbaa !19
  %add10 = add nsw i64 %31, %30
  store i64 %add10, ptr %y, align 8, !tbaa !19
  %32 = load i64, ptr %z, align 8, !tbaa !19
  %shl11 = shl i64 %32, 1
  store i64 %shl11, ptr %z, align 8, !tbaa !19
  %33 = load i64, ptr %y, align 8, !tbaa !19
  %34 = load i64, ptr %z, align 8, !tbaa !19
  %sub12 = sub nsw i64 %34, %33
  store i64 %sub12, ptr %z, align 8, !tbaa !19
  %35 = load i64, ptr %x, align 8, !tbaa !19
  %36 = load i64, ptr %w, align 8, !tbaa !19
  %add13 = add nsw i64 %36, %35
  store i64 %add13, ptr %w, align 8, !tbaa !19
  %37 = load i64, ptr %x, align 8, !tbaa !19
  %shl14 = shl i64 %37, 1
  store i64 %shl14, ptr %x, align 8, !tbaa !19
  %38 = load i64, ptr %w, align 8, !tbaa !19
  %39 = load i64, ptr %x, align 8, !tbaa !19
  %sub15 = sub nsw i64 %39, %38
  store i64 %sub15, ptr %x, align 8, !tbaa !19
  %40 = load i64, ptr %s.addr, align 8, !tbaa !19
  %41 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg = sub i64 0, %40
  %add.ptr16 = getelementptr inbounds i64, ptr %41, i64 %idx.neg
  store ptr %add.ptr16, ptr %p.addr, align 8, !tbaa !4
  %42 = load i64, ptr %w, align 8, !tbaa !19
  %43 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %42, ptr %43, align 8, !tbaa !19
  %44 = load i64, ptr %s.addr, align 8, !tbaa !19
  %45 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg17 = sub i64 0, %44
  %add.ptr18 = getelementptr inbounds i64, ptr %45, i64 %idx.neg17
  store ptr %add.ptr18, ptr %p.addr, align 8, !tbaa !4
  %46 = load i64, ptr %z, align 8, !tbaa !19
  %47 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %46, ptr %47, align 8, !tbaa !19
  %48 = load i64, ptr %s.addr, align 8, !tbaa !19
  %49 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg19 = sub i64 0, %48
  %add.ptr20 = getelementptr inbounds i64, ptr %49, i64 %idx.neg19
  store ptr %add.ptr20, ptr %p.addr, align 8, !tbaa !4
  %50 = load i64, ptr %y, align 8, !tbaa !19
  %51 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %50, ptr %51, align 8, !tbaa !19
  %52 = load i64, ptr %s.addr, align 8, !tbaa !19
  %53 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg21 = sub i64 0, %52
  %add.ptr22 = getelementptr inbounds i64, ptr %53, i64 %idx.neg21
  store ptr %add.ptr22, ptr %p.addr, align 8, !tbaa !4
  %54 = load i64, ptr %x, align 8, !tbaa !19
  %55 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %54, ptr %55, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @dequantize_double(i64 noundef %x, i32 noundef %e) #0 {
entry:
  %x.addr = alloca i64, align 8
  %e.addr = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8, !tbaa !19
  store i32 %e, ptr %e.addr, align 4, !tbaa !12
  %0 = load i64, ptr %x.addr, align 8, !tbaa !19
  %conv = sitofp i64 %0 to double
  %1 = load i32, ptr %e.addr, align 4, !tbaa !12
  %sub = sub nsw i32 %1, 62
  %call = call double @ldexp(double noundef %conv, i32 noundef %sub) #5
  ret double %call
}

; Function Attrs: nounwind
declare double @ldexp(double noundef, i32 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @stream_rseek(ptr noundef %s, i64 noundef %offset) #2 {
entry:
  %s.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5
  %0 = load i64, ptr %offset.addr, align 8, !tbaa !19
  %rem = urem i64 %0, 8
  store i64 %rem, ptr %n, align 8, !tbaa !19
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %begin, align 8, !tbaa !27
  %3 = load i64, ptr %offset.addr, align 8, !tbaa !19
  %div = udiv i64 %3, 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %div
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 2
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !24
  %5 = load i64, ptr %n, align 8, !tbaa !19
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %call = call zeroext i8 @stream_read_word(ptr noundef %6)
  %conv = zext i8 %call to i32
  %7 = load i64, ptr %n, align 8, !tbaa !19
  %sh_prom = trunc i64 %7 to i32
  %shr = ashr i32 %conv, %sh_prom
  %conv1 = trunc i32 %shr to i8
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 1
  store i8 %conv1, ptr %buffer, align 8, !tbaa !23
  %9 = load i64, ptr %n, align 8, !tbaa !19
  %sub = sub i64 8, %9
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %10, i32 0, i32 0
  store i64 %sub, ptr %bits, align 8, !tbaa !21
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.bitstream, ptr %11, i32 0, i32 1
  store i8 0, ptr %buffer2, align 8, !tbaa !23
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits3 = getelementptr inbounds %struct.bitstream, ptr %12, i32 0, i32 0
  store i64 0, ptr %bits3, align 8, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rev_decode_block_int64_3(ptr noundef %stream, i32 noundef %minbits, i32 noundef %maxbits, ptr noundef %iblock) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %minbits.addr = alloca i32, align 4
  %maxbits.addr = alloca i32, align 4
  %iblock.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %prec = alloca i32, align 4
  %ublock = alloca [64 x i64], align 256
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %minbits, ptr %minbits.addr, align 4, !tbaa !12
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !12
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #5
  store i32 6, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %prec) #5
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %call = call i64 @stream_read_bits(ptr noundef %0, i64 noundef 6)
  %conv = trunc i64 %call to i32
  %add = add i32 %conv, 1
  store i32 %add, ptr %prec, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 512, ptr %ublock) #5
  %1 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %2 = load i32, ptr %maxbits.addr, align 4, !tbaa !12
  %3 = load i32, ptr %bits, align 4, !tbaa !12
  %sub = sub i32 %2, %3
  %4 = load i32, ptr %prec, align 4, !tbaa !12
  %arraydecay = getelementptr inbounds [64 x i64], ptr %ublock, i64 0, i64 0
  %call1 = call i32 @decode_ints_uint64(ptr noundef %1, i32 noundef %sub, i32 noundef %4, ptr noundef %arraydecay, i32 noundef 64)
  %5 = load i32, ptr %bits, align 4, !tbaa !12
  %add2 = add i32 %5, %call1
  store i32 %add2, ptr %bits, align 4, !tbaa !12
  %6 = load i32, ptr %bits, align 4, !tbaa !12
  %7 = load i32, ptr %minbits.addr, align 4, !tbaa !12
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %9 = load i32, ptr %minbits.addr, align 4, !tbaa !12
  %10 = load i32, ptr %bits, align 4, !tbaa !12
  %sub4 = sub i32 %9, %10
  %conv5 = zext i32 %sub4 to i64
  call void @stream_skip(ptr noundef %8, i64 noundef %conv5)
  %11 = load i32, ptr %minbits.addr, align 4, !tbaa !12
  store i32 %11, ptr %bits, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arraydecay6 = getelementptr inbounds [64 x i64], ptr %ublock, i64 0, i64 0
  %12 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @inv_order_int64(ptr noundef %arraydecay6, ptr noundef %12, ptr noundef @perm_3, i32 noundef 64)
  %13 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @rev_inv_xform_int64_3(ptr noundef %13)
  %14 = load i32, ptr %bits, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 512, ptr %ublock) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %prec) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #5
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @rev_inv_reinterpret_double(ptr noundef %iblock, ptr noundef %fblock, i32 noundef %n) #0 {
entry:
  %iblock.addr = alloca ptr, align 8
  %fblock.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  store ptr %fblock, ptr %fblock.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !12
  %1 = load i32, ptr %n.addr, align 4, !tbaa !12
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  %2 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %3 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds i64, ptr %2, i64 %idxprom
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !19
  store i64 %4, ptr %x, align 8, !tbaa !19
  %5 = load i64, ptr %x, align 8, !tbaa !19
  %cmp1 = icmp slt i64 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i64, ptr %x, align 8, !tbaa !19
  %xor = xor i64 %6, 9223372036854775807
  %7 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom2 = zext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i64, ptr %7, i64 %idxprom2
  store i64 %xor, ptr %arrayidx3, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !12
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %12 = load i32, ptr %n.addr, align 4, !tbaa !12
  %conv = zext i32 %12 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %11, i64 %mul, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rev_inv_cast_double(ptr noundef %iblock, ptr noundef %fblock, i32 noundef %n, i32 noundef %emax) #0 {
entry:
  %iblock.addr = alloca ptr, align 8
  %fblock.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %emax.addr = alloca i32, align 4
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  store ptr %fblock, ptr %fblock.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !12
  store i32 %emax, ptr %emax.addr, align 4, !tbaa !12
  %0 = load i32, ptr %emax.addr, align 4, !tbaa !12
  %cmp = icmp ne i32 %0, -1023
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %3 = load i32, ptr %n.addr, align 4, !tbaa !12
  %4 = load i32, ptr %emax.addr, align 4, !tbaa !12
  call void @inv_cast_double(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %5 = load i32, ptr %n.addr, align 4, !tbaa !12
  %dec = add i32 %5, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %fblock.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %fblock.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %6, align 8, !tbaa !16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rev_inv_xform_int64_3(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #5
  store i32 0, ptr %y, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %y, align 4, !tbaa !12
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !tbaa !12
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %x, align 4, !tbaa !12
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = load i32, ptr %x, align 4, !tbaa !12
  %mul = mul i32 1, %3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %y, align 4, !tbaa !12
  %mul4 = mul i32 4, %4
  %idx.ext5 = zext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i64, ptr %add.ptr, i64 %idx.ext5
  call void @rev_inv_lift_int64(ptr noundef %add.ptr6, i32 noundef 16)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %x, align 4, !tbaa !12
  %inc = add i32 %5, 1
  store i32 %inc, ptr %x, align 4, !tbaa !12
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, ptr %y, align 4, !tbaa !12
  %inc8 = add i32 %6, 1
  store i32 %inc8, ptr %y, align 4, !tbaa !12
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !tbaa !12
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %for.end9
  %7 = load i32, ptr %x, align 4, !tbaa !12
  %cmp11 = icmp ult i32 %7, 4
  br i1 %cmp11, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %z, align 4, !tbaa !12
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %8 = load i32, ptr %z, align 4, !tbaa !12
  %cmp14 = icmp ult i32 %8, 4
  br i1 %cmp14, label %for.body15, label %for.end24

for.body15:                                       ; preds = %for.cond13
  %9 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %10 = load i32, ptr %z, align 4, !tbaa !12
  %mul16 = mul i32 16, %10
  %idx.ext17 = zext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i64, ptr %9, i64 %idx.ext17
  %11 = load i32, ptr %x, align 4, !tbaa !12
  %mul19 = mul i32 1, %11
  %idx.ext20 = zext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i64, ptr %add.ptr18, i64 %idx.ext20
  call void @rev_inv_lift_int64(ptr noundef %add.ptr21, i32 noundef 4)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %12 = load i32, ptr %z, align 4, !tbaa !12
  %inc23 = add i32 %12, 1
  store i32 %inc23, ptr %z, align 4, !tbaa !12
  br label %for.cond13

for.end24:                                        ; preds = %for.cond13
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %13 = load i32, ptr %x, align 4, !tbaa !12
  %inc26 = add i32 %13, 1
  store i32 %inc26, ptr %x, align 4, !tbaa !12
  br label %for.cond10

for.end27:                                        ; preds = %for.cond10
  store i32 0, ptr %z, align 4, !tbaa !12
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc43, %for.end27
  %14 = load i32, ptr %z, align 4, !tbaa !12
  %cmp29 = icmp ult i32 %14, 4
  br i1 %cmp29, label %for.body30, label %for.end45

for.body30:                                       ; preds = %for.cond28
  store i32 0, ptr %y, align 4, !tbaa !12
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc40, %for.body30
  %15 = load i32, ptr %y, align 4, !tbaa !12
  %cmp32 = icmp ult i32 %15, 4
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load i32, ptr %y, align 4, !tbaa !12
  %mul34 = mul i32 4, %17
  %idx.ext35 = zext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i64, ptr %16, i64 %idx.ext35
  %18 = load i32, ptr %z, align 4, !tbaa !12
  %mul37 = mul i32 16, %18
  %idx.ext38 = zext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i64, ptr %add.ptr36, i64 %idx.ext38
  call void @rev_inv_lift_int64(ptr noundef %add.ptr39, i32 noundef 1)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body33
  %19 = load i32, ptr %y, align 4, !tbaa !12
  %inc41 = add i32 %19, 1
  store i32 %inc41, ptr %y, align 4, !tbaa !12
  br label %for.cond31

for.end42:                                        ; preds = %for.cond31
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %20 = load i32, ptr %z, align 4, !tbaa !12
  %inc44 = add i32 %20, 1
  store i32 %inc44, ptr %z, align 4, !tbaa !12
  br label %for.cond28

for.end45:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rev_inv_lift_int64(ptr noundef %p, i32 noundef %s) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %w = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %s, ptr %s.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #5
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load i64, ptr %0, align 8, !tbaa !19
  store i64 %1, ptr %x, align 8, !tbaa !19
  %2 = load i32, ptr %s.addr, align 4, !tbaa !12
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i64, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !19
  store i64 %5, ptr %y, align 8, !tbaa !19
  %6 = load i32, ptr %s.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext1 = zext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i64, ptr %7, i64 %idx.ext1
  store ptr %add.ptr2, ptr %p.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %9 = load i64, ptr %8, align 8, !tbaa !19
  store i64 %9, ptr %z, align 8, !tbaa !19
  %10 = load i32, ptr %s.addr, align 4, !tbaa !12
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext3 = zext i32 %10 to i64
  %add.ptr4 = getelementptr inbounds i64, ptr %11, i64 %idx.ext3
  store ptr %add.ptr4, ptr %p.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %13 = load i64, ptr %12, align 8, !tbaa !19
  store i64 %13, ptr %w, align 8, !tbaa !19
  %14 = load i32, ptr %s.addr, align 4, !tbaa !12
  %15 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext5 = zext i32 %14 to i64
  %add.ptr6 = getelementptr inbounds i64, ptr %15, i64 %idx.ext5
  store ptr %add.ptr6, ptr %p.addr, align 8, !tbaa !4
  %16 = load i64, ptr %z, align 8, !tbaa !19
  %17 = load i64, ptr %w, align 8, !tbaa !19
  %add = add nsw i64 %17, %16
  store i64 %add, ptr %w, align 8, !tbaa !19
  %18 = load i64, ptr %y, align 8, !tbaa !19
  %19 = load i64, ptr %z, align 8, !tbaa !19
  %add7 = add nsw i64 %19, %18
  store i64 %add7, ptr %z, align 8, !tbaa !19
  %20 = load i64, ptr %z, align 8, !tbaa !19
  %21 = load i64, ptr %w, align 8, !tbaa !19
  %add8 = add nsw i64 %21, %20
  store i64 %add8, ptr %w, align 8, !tbaa !19
  %22 = load i64, ptr %x, align 8, !tbaa !19
  %23 = load i64, ptr %y, align 8, !tbaa !19
  %add9 = add nsw i64 %23, %22
  store i64 %add9, ptr %y, align 8, !tbaa !19
  %24 = load i64, ptr %y, align 8, !tbaa !19
  %25 = load i64, ptr %z, align 8, !tbaa !19
  %add10 = add nsw i64 %25, %24
  store i64 %add10, ptr %z, align 8, !tbaa !19
  %26 = load i64, ptr %z, align 8, !tbaa !19
  %27 = load i64, ptr %w, align 8, !tbaa !19
  %add11 = add nsw i64 %27, %26
  store i64 %add11, ptr %w, align 8, !tbaa !19
  %28 = load i32, ptr %s.addr, align 4, !tbaa !12
  %29 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext12 = zext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext12
  %add.ptr13 = getelementptr inbounds i64, ptr %29, i64 %idx.neg
  store ptr %add.ptr13, ptr %p.addr, align 8, !tbaa !4
  %30 = load i64, ptr %w, align 8, !tbaa !19
  %31 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %30, ptr %31, align 8, !tbaa !19
  %32 = load i32, ptr %s.addr, align 4, !tbaa !12
  %33 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext14 = zext i32 %32 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds i64, ptr %33, i64 %idx.neg15
  store ptr %add.ptr16, ptr %p.addr, align 8, !tbaa !4
  %34 = load i64, ptr %z, align 8, !tbaa !19
  %35 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %34, ptr %35, align 8, !tbaa !19
  %36 = load i32, ptr %s.addr, align 4, !tbaa !12
  %37 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext17 = zext i32 %36 to i64
  %idx.neg18 = sub i64 0, %idx.ext17
  %add.ptr19 = getelementptr inbounds i64, ptr %37, i64 %idx.neg18
  store ptr %add.ptr19, ptr %p.addr, align 8, !tbaa !4
  %38 = load i64, ptr %y, align 8, !tbaa !19
  %39 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %38, ptr %39, align 8, !tbaa !19
  %40 = load i32, ptr %s.addr, align 4, !tbaa !12
  %41 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext20 = zext i32 %40 to i64
  %idx.neg21 = sub i64 0, %idx.ext20
  %add.ptr22 = getelementptr inbounds i64, ptr %41, i64 %idx.neg21
  store ptr %add.ptr22, ptr %p.addr, align 8, !tbaa !4
  %42 = load i64, ptr %x, align 8, !tbaa !19
  %43 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i64 %42, ptr %43, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !10, i64 12}
!9 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !5, i64 16, !11, i64 24}
!10 = !{!"int", !6, i64 0}
!11 = !{!"", !6, i64 0, !5, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !5, i64 16}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !10, i64 4}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = !{!9, !10, i64 8}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !20, i64 0}
!22 = !{!"bitstream", !20, i64 0, !6, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!23 = !{!22, !6, i64 8}
!24 = !{!22, !5, i64 16}
!25 = !{!6, !6, i64 0}
!26 = !{i64 0, i64 8, !19, i64 8, i64 1, !25, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4}
!27 = !{!22, !5, i64 24}

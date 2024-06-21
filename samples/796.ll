; ModuleID = 'samples/796.bc'
source_filename = "/local-ssd/zfp-csugr3zk3z4cx2m6lemuvupc3ypi6npg-build/aidengro/spack-stage-zfp-1.0.0-csugr3zk3z4cx2m6lemuvupc3ypi6npg/spack-src/src/encode3i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfp_stream = type { i32, i32, i32, i32, ptr, %struct.zfp_execution }
%struct.zfp_execution = type { i32, ptr }
%struct.bitstream = type { i64, i8, ptr, ptr, ptr }

@perm_3 = internal constant [64 x i8] c"\00\01\04\10\14\11\05\02\08 \15\06\12\18\09!$\03\0C0\16\19%(\22\0A\07\13\1C\0D14)&\1A\17\1D5\0B#,\0E28*\1B'-\1E69<3\0F+.:=7\1F>;/?", align 256

; Function Attrs: nounwind uwtable
define i64 @zfp_encode_block_int32_3(ptr noundef %zfp, ptr noundef %iblock) #0 {
entry:
  %zfp.addr = alloca ptr, align 8
  %iblock.addr = alloca ptr, align 8
  %block = alloca [64 x i32], align 256
  %i = alloca i32, align 4
  store ptr %zfp, ptr %zfp.addr, align 8, !tbaa !4
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 256, ptr %block) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [64 x i32], ptr %block, i64 0, i64 %idxprom1
  store i32 %3, ptr %arrayidx2, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minexp = getelementptr inbounds %struct.zfp_stream, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %minexp, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %7, -1074
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %8 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct.zfp_stream, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %stream, align 8, !tbaa !13
  %10 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits = getelementptr inbounds %struct.zfp_stream, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %minbits, align 8, !tbaa !14
  %12 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxbits = getelementptr inbounds %struct.zfp_stream, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %maxbits, align 4, !tbaa !15
  %14 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxprec = getelementptr inbounds %struct.zfp_stream, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %maxprec, align 8, !tbaa !16
  %arraydecay = getelementptr inbounds [64 x i32], ptr %block, i64 0, i64 0
  %call = call i32 @rev_encode_block_int32_3(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %arraydecay)
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %16 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %stream4 = getelementptr inbounds %struct.zfp_stream, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %stream4, align 8, !tbaa !13
  %18 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %minbits5 = getelementptr inbounds %struct.zfp_stream, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %minbits5, align 8, !tbaa !14
  %20 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxbits6 = getelementptr inbounds %struct.zfp_stream, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %maxbits6, align 4, !tbaa !15
  %22 = load ptr, ptr %zfp.addr, align 8, !tbaa !4
  %maxprec7 = getelementptr inbounds %struct.zfp_stream, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %maxprec7, align 8, !tbaa !16
  %arraydecay8 = getelementptr inbounds [64 x i32], ptr %block, i64 0, i64 0
  %call9 = call i32 @encode_block_int32_3(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, ptr noundef %arraydecay8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call9, %cond.false ]
  %conv = zext i32 %cond to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %block) #4
  ret i64 %conv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @rev_encode_block_int32_3(ptr noundef %stream, i32 noundef %minbits, i32 noundef %maxbits, i32 noundef %maxprec, ptr noundef %iblock) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %minbits.addr = alloca i32, align 4
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %iblock.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %prec = alloca i32, align 4
  %ublock = alloca [64 x i32], align 256
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %minbits, ptr %minbits.addr, align 4, !tbaa !8
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #4
  store i32 5, ptr %bits, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %prec) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %ublock) #4
  %0 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @rev_fwd_xform_int32_3(ptr noundef %0)
  %arraydecay = getelementptr inbounds [64 x i32], ptr %ublock, i64 0, i64 0
  %1 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @fwd_order_int32(ptr noundef %arraydecay, ptr noundef %1, ptr noundef @perm_3, i32 noundef 64)
  %arraydecay1 = getelementptr inbounds [64 x i32], ptr %ublock, i64 0, i64 0
  %call = call i32 @rev_precision_uint32(ptr noundef %arraydecay1, i32 noundef 64)
  store i32 %call, ptr %prec, align 4, !tbaa !8
  %2 = load i32, ptr %prec, align 4, !tbaa !8
  %3 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, ptr %prec, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, ptr %prec, align 4, !tbaa !8
  %6 = load i32, ptr %prec, align 4, !tbaa !8
  %cmp2 = icmp ugt i32 %6, 1
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  %7 = load i32, ptr %prec, align 4, !tbaa !8
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi i32 [ %7, %cond.true3 ], [ 1, %cond.false4 ]
  store i32 %cond6, ptr %prec, align 4, !tbaa !8
  %8 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %9 = load i32, ptr %prec, align 4, !tbaa !8
  %sub = sub i32 %9, 1
  %conv = zext i32 %sub to i64
  %call7 = call i64 @stream_write_bits(ptr noundef %8, i64 noundef %conv, i64 noundef 5)
  %10 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %11 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %12 = load i32, ptr %bits, align 4, !tbaa !8
  %sub8 = sub i32 %11, %12
  %13 = load i32, ptr %prec, align 4, !tbaa !8
  %arraydecay9 = getelementptr inbounds [64 x i32], ptr %ublock, i64 0, i64 0
  %call10 = call i32 @encode_ints_uint32(ptr noundef %10, i32 noundef %sub8, i32 noundef %13, ptr noundef %arraydecay9, i32 noundef 64)
  %14 = load i32, ptr %bits, align 4, !tbaa !8
  %add = add i32 %14, %call10
  store i32 %add, ptr %bits, align 4, !tbaa !8
  %15 = load i32, ptr %bits, align 4, !tbaa !8
  %16 = load i32, ptr %minbits.addr, align 4, !tbaa !8
  %cmp11 = icmp ult i32 %15, %16
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end5
  %17 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %18 = load i32, ptr %minbits.addr, align 4, !tbaa !8
  %19 = load i32, ptr %bits, align 4, !tbaa !8
  %sub13 = sub i32 %18, %19
  %conv14 = zext i32 %sub13 to i64
  call void @stream_pad(ptr noundef %17, i64 noundef %conv14)
  %20 = load i32, ptr %minbits.addr, align 4, !tbaa !8
  store i32 %20, ptr %bits, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end5
  %21 = load i32, ptr %bits, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 256, ptr %ublock) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %prec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_block_int32_3(ptr noundef %stream, i32 noundef %minbits, i32 noundef %maxbits, i32 noundef %maxprec, ptr noundef %iblock) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %minbits.addr = alloca i32, align 4
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %iblock.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %ublock = alloca [64 x i32], align 256
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %minbits, ptr %minbits.addr, align 4, !tbaa !8
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #4
  call void @llvm.lifetime.start.p0(i64 256, ptr %ublock) #4
  %0 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @fwd_xform_int32_3(ptr noundef %0)
  %arraydecay = getelementptr inbounds [64 x i32], ptr %ublock, i64 0, i64 0
  %1 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  call void @fwd_order_int32(ptr noundef %arraydecay, ptr noundef %1, ptr noundef @perm_3, i32 noundef 64)
  %2 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %3 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %arraydecay1 = getelementptr inbounds [64 x i32], ptr %ublock, i64 0, i64 0
  %call = call i32 @encode_ints_uint32(ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %arraydecay1, i32 noundef 64)
  store i32 %call, ptr %bits, align 4, !tbaa !8
  %5 = load i32, ptr %bits, align 4, !tbaa !8
  %6 = load i32, ptr %minbits.addr, align 4, !tbaa !8
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %8 = load i32, ptr %minbits.addr, align 4, !tbaa !8
  %9 = load i32, ptr %bits, align 4, !tbaa !8
  %sub = sub i32 %8, %9
  %conv = zext i32 %sub to i64
  call void @stream_pad(ptr noundef %7, i64 noundef %conv)
  %10 = load i32, ptr %minbits.addr, align 4, !tbaa !8
  store i32 %10, ptr %bits, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %bits, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 256, ptr %ublock) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #4
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @zfp_encode_block_strided_int32_3(ptr noundef %stream, ptr noundef %p, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %sx.addr = alloca i64, align 8
  %sy.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %block = alloca [64 x i32], align 256
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !17
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !17
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 256, ptr %block) #4
  %arraydecay = getelementptr inbounds [64 x i32], ptr %block, i64 0, i64 0
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load i64, ptr %sx.addr, align 8, !tbaa !17
  %2 = load i64, ptr %sy.addr, align 8, !tbaa !17
  %3 = load i64, ptr %sz.addr, align 8, !tbaa !17
  call void @gather_int32_3(ptr noundef %arraydecay, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3)
  %4 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [64 x i32], ptr %block, i64 0, i64 0
  %call = call i64 @zfp_encode_block_int32_3(ptr noundef %4, ptr noundef %arraydecay1)
  call void @llvm.lifetime.end.p0(i64 256, ptr %block) #4
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @gather_int32_3(ptr noundef %q, ptr noundef %p, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
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
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !17
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !17
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #4
  store i32 0, ptr %z, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %z, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %y, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.body
  %1 = load i32, ptr %y, align 4, !tbaa !8
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %x, align 4, !tbaa !8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %x, align 4, !tbaa !8
  %cmp5 = icmp ult i32 %2, 4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load i32, ptr %3, align 4, !tbaa !8
  %5 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %q.addr, align 8, !tbaa !4
  store i32 %4, ptr %5, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %6 = load i32, ptr %x, align 4, !tbaa !8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %x, align 4, !tbaa !8
  %7 = load i64, ptr %sx.addr, align 8, !tbaa !17
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i32, ptr %8, i64 %7
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i32, ptr %y, align 4, !tbaa !8
  %inc8 = add i32 %9, 1
  store i32 %inc8, ptr %y, align 4, !tbaa !8
  %10 = load i64, ptr %sy.addr, align 8, !tbaa !17
  %11 = load i64, ptr %sx.addr, align 8, !tbaa !17
  %mul = mul nsw i64 4, %11
  %sub = sub nsw i64 %10, %mul
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr9 = getelementptr inbounds i32, ptr %12, i64 %sub
  store ptr %add.ptr9, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond1

for.end10:                                        ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end10
  %13 = load i32, ptr %z, align 4, !tbaa !8
  %inc12 = add i32 %13, 1
  store i32 %inc12, ptr %z, align 4, !tbaa !8
  %14 = load i64, ptr %sz.addr, align 8, !tbaa !17
  %15 = load i64, ptr %sy.addr, align 8, !tbaa !17
  %mul13 = mul nsw i64 4, %15
  %sub14 = sub nsw i64 %14, %mul13
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr15 = getelementptr inbounds i32, ptr %16, i64 %sub14
  store ptr %add.ptr15, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @zfp_encode_partial_block_strided_int32_3(ptr noundef %stream, ptr noundef %p, i64 noundef %nx, i64 noundef %ny, i64 noundef %nz, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %nx.addr = alloca i64, align 8
  %ny.addr = alloca i64, align 8
  %nz.addr = alloca i64, align 8
  %sx.addr = alloca i64, align 8
  %sy.addr = alloca i64, align 8
  %sz.addr = alloca i64, align 8
  %block = alloca [64 x i32], align 256
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %nx, ptr %nx.addr, align 8, !tbaa !17
  store i64 %ny, ptr %ny.addr, align 8, !tbaa !17
  store i64 %nz, ptr %nz.addr, align 8, !tbaa !17
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !17
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !17
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 256, ptr %block) #4
  %arraydecay = getelementptr inbounds [64 x i32], ptr %block, i64 0, i64 0
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load i64, ptr %nx.addr, align 8, !tbaa !17
  %2 = load i64, ptr %ny.addr, align 8, !tbaa !17
  %3 = load i64, ptr %nz.addr, align 8, !tbaa !17
  %4 = load i64, ptr %sx.addr, align 8, !tbaa !17
  %5 = load i64, ptr %sy.addr, align 8, !tbaa !17
  %6 = load i64, ptr %sz.addr, align 8, !tbaa !17
  call void @gather_partial_int32_3(ptr noundef %arraydecay, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  %7 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [64 x i32], ptr %block, i64 0, i64 0
  %call = call i64 @zfp_encode_block_int32_3(ptr noundef %7, ptr noundef %arraydecay1)
  call void @llvm.lifetime.end.p0(i64 256, ptr %block) #4
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @gather_partial_int32_3(ptr noundef %q, ptr noundef %p, i64 noundef %nx, i64 noundef %ny, i64 noundef %nz, i64 noundef %sx, i64 noundef %sy, i64 noundef %sz) #0 {
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
  store i64 %nx, ptr %nx.addr, align 8, !tbaa !17
  store i64 %ny, ptr %ny.addr, align 8, !tbaa !17
  store i64 %nz, ptr %nz.addr, align 8, !tbaa !17
  store i64 %sx, ptr %sx.addr, align 8, !tbaa !17
  store i64 %sy, ptr %sy.addr, align 8, !tbaa !17
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #4
  store i64 0, ptr %z, align 8, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %0 = load i64, ptr %z, align 8, !tbaa !17
  %1 = load i64, ptr %nz.addr, align 8, !tbaa !17
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %y, align 8, !tbaa !17
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc13, %for.body
  %2 = load i64, ptr %y, align 8, !tbaa !17
  %3 = load i64, ptr %ny.addr, align 8, !tbaa !17
  %cmp2 = icmp ult i64 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  store i64 0, ptr %x, align 8, !tbaa !17
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i64, ptr %x, align 8, !tbaa !17
  %5 = load i64, ptr %nx.addr, align 8, !tbaa !17
  %cmp5 = icmp ult i64 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  %8 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %9 = load i64, ptr %z, align 8, !tbaa !17
  %mul = mul i64 16, %9
  %10 = load i64, ptr %y, align 8, !tbaa !17
  %mul7 = mul i64 4, %10
  %add = add i64 %mul, %mul7
  %11 = load i64, ptr %x, align 8, !tbaa !17
  %add8 = add i64 %add, %11
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %add8
  store i32 %7, ptr %arrayidx, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %12 = load i64, ptr %x, align 8, !tbaa !17
  %inc = add i64 %12, 1
  store i64 %inc, ptr %x, align 8, !tbaa !17
  %13 = load i64, ptr %sx.addr, align 8, !tbaa !17
  %14 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i32, ptr %14, i64 %13
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %15 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %16 = load i64, ptr %z, align 8, !tbaa !17
  %mul9 = mul i64 16, %16
  %add.ptr10 = getelementptr inbounds i32, ptr %15, i64 %mul9
  %17 = load i64, ptr %y, align 8, !tbaa !17
  %mul11 = mul i64 4, %17
  %add.ptr12 = getelementptr inbounds i32, ptr %add.ptr10, i64 %mul11
  %18 = load i64, ptr %nx.addr, align 8, !tbaa !17
  call void @pad_block_int32(ptr noundef %add.ptr12, i64 noundef %18, i64 noundef 1)
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %19 = load i64, ptr %y, align 8, !tbaa !17
  %inc14 = add i64 %19, 1
  store i64 %inc14, ptr %y, align 8, !tbaa !17
  %20 = load i64, ptr %sy.addr, align 8, !tbaa !17
  %21 = load i64, ptr %nx.addr, align 8, !tbaa !17
  %22 = load i64, ptr %sx.addr, align 8, !tbaa !17
  %mul15 = mul nsw i64 %21, %22
  %sub = sub nsw i64 %20, %mul15
  %23 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr16 = getelementptr inbounds i32, ptr %23, i64 %sub
  store ptr %add.ptr16, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond1

for.end17:                                        ; preds = %for.cond1
  store i64 0, ptr %x, align 8, !tbaa !17
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc24, %for.end17
  %24 = load i64, ptr %x, align 8, !tbaa !17
  %cmp19 = icmp ult i64 %24, 4
  br i1 %cmp19, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond18
  %25 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %26 = load i64, ptr %z, align 8, !tbaa !17
  %mul21 = mul i64 16, %26
  %add.ptr22 = getelementptr inbounds i32, ptr %25, i64 %mul21
  %27 = load i64, ptr %x, align 8, !tbaa !17
  %add.ptr23 = getelementptr inbounds i32, ptr %add.ptr22, i64 %27
  %28 = load i64, ptr %ny.addr, align 8, !tbaa !17
  call void @pad_block_int32(ptr noundef %add.ptr23, i64 noundef %28, i64 noundef 4)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  %29 = load i64, ptr %x, align 8, !tbaa !17
  %inc25 = add i64 %29, 1
  store i64 %inc25, ptr %x, align 8, !tbaa !17
  br label %for.cond18

for.end26:                                        ; preds = %for.cond18
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %30 = load i64, ptr %z, align 8, !tbaa !17
  %inc28 = add i64 %30, 1
  store i64 %inc28, ptr %z, align 8, !tbaa !17
  %31 = load i64, ptr %sz.addr, align 8, !tbaa !17
  %32 = load i64, ptr %ny.addr, align 8, !tbaa !17
  %33 = load i64, ptr %sy.addr, align 8, !tbaa !17
  %mul29 = mul nsw i64 %32, %33
  %sub30 = sub nsw i64 %31, %mul29
  %34 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr31 = getelementptr inbounds i32, ptr %34, i64 %sub30
  store ptr %add.ptr31, ptr %p.addr, align 8, !tbaa !4
  br label %for.cond

for.end32:                                        ; preds = %for.cond
  store i64 0, ptr %y, align 8, !tbaa !17
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc45, %for.end32
  %35 = load i64, ptr %y, align 8, !tbaa !17
  %cmp34 = icmp ult i64 %35, 4
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  store i64 0, ptr %x, align 8, !tbaa !17
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc42, %for.body35
  %36 = load i64, ptr %x, align 8, !tbaa !17
  %cmp37 = icmp ult i64 %36, 4
  br i1 %cmp37, label %for.body38, label %for.end44

for.body38:                                       ; preds = %for.cond36
  %37 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %38 = load i64, ptr %y, align 8, !tbaa !17
  %mul39 = mul i64 4, %38
  %add.ptr40 = getelementptr inbounds i32, ptr %37, i64 %mul39
  %39 = load i64, ptr %x, align 8, !tbaa !17
  %add.ptr41 = getelementptr inbounds i32, ptr %add.ptr40, i64 %39
  %40 = load i64, ptr %nz.addr, align 8, !tbaa !17
  call void @pad_block_int32(ptr noundef %add.ptr41, i64 noundef %40, i64 noundef 16)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body38
  %41 = load i64, ptr %x, align 8, !tbaa !17
  %inc43 = add i64 %41, 1
  store i64 %inc43, ptr %x, align 8, !tbaa !17
  br label %for.cond36

for.end44:                                        ; preds = %for.cond36
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %42 = load i64, ptr %y, align 8, !tbaa !17
  %inc46 = add i64 %42, 1
  store i64 %inc46, ptr %y, align 8, !tbaa !17
  br label %for.cond33

for.end47:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fwd_xform_int32_3(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #4
  store i32 0, ptr %z, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %z, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %y, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %y, align 4, !tbaa !8
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = load i32, ptr %y, align 4, !tbaa !8
  %mul = mul i32 4, %3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %z, align 4, !tbaa !8
  %mul4 = mul i32 16, %4
  %idx.ext5 = zext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext5
  call void @fwd_lift_int32(ptr noundef %add.ptr6, i64 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %y, align 4, !tbaa !8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %y, align 4, !tbaa !8
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, ptr %z, align 4, !tbaa !8
  %inc8 = add i32 %6, 1
  store i32 %inc8, ptr %z, align 4, !tbaa !8
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !tbaa !8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %for.end9
  %7 = load i32, ptr %x, align 4, !tbaa !8
  %cmp11 = icmp ult i32 %7, 4
  br i1 %cmp11, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %z, align 4, !tbaa !8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %8 = load i32, ptr %z, align 4, !tbaa !8
  %cmp14 = icmp ult i32 %8, 4
  br i1 %cmp14, label %for.body15, label %for.end24

for.body15:                                       ; preds = %for.cond13
  %9 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %10 = load i32, ptr %z, align 4, !tbaa !8
  %mul16 = mul i32 16, %10
  %idx.ext17 = zext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i32, ptr %9, i64 %idx.ext17
  %11 = load i32, ptr %x, align 4, !tbaa !8
  %mul19 = mul i32 1, %11
  %idx.ext20 = zext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i32, ptr %add.ptr18, i64 %idx.ext20
  call void @fwd_lift_int32(ptr noundef %add.ptr21, i64 noundef 4)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %12 = load i32, ptr %z, align 4, !tbaa !8
  %inc23 = add i32 %12, 1
  store i32 %inc23, ptr %z, align 4, !tbaa !8
  br label %for.cond13

for.end24:                                        ; preds = %for.cond13
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %13 = load i32, ptr %x, align 4, !tbaa !8
  %inc26 = add i32 %13, 1
  store i32 %inc26, ptr %x, align 4, !tbaa !8
  br label %for.cond10

for.end27:                                        ; preds = %for.cond10
  store i32 0, ptr %y, align 4, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc43, %for.end27
  %14 = load i32, ptr %y, align 4, !tbaa !8
  %cmp29 = icmp ult i32 %14, 4
  br i1 %cmp29, label %for.body30, label %for.end45

for.body30:                                       ; preds = %for.cond28
  store i32 0, ptr %x, align 4, !tbaa !8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc40, %for.body30
  %15 = load i32, ptr %x, align 4, !tbaa !8
  %cmp32 = icmp ult i32 %15, 4
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load i32, ptr %x, align 4, !tbaa !8
  %mul34 = mul i32 1, %17
  %idx.ext35 = zext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i32, ptr %16, i64 %idx.ext35
  %18 = load i32, ptr %y, align 4, !tbaa !8
  %mul37 = mul i32 4, %18
  %idx.ext38 = zext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i32, ptr %add.ptr36, i64 %idx.ext38
  call void @fwd_lift_int32(ptr noundef %add.ptr39, i64 noundef 16)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body33
  %19 = load i32, ptr %x, align 4, !tbaa !8
  %inc41 = add i32 %19, 1
  store i32 %inc41, ptr %x, align 4, !tbaa !8
  br label %for.cond31

for.end42:                                        ; preds = %for.cond31
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %20 = load i32, ptr %y, align 4, !tbaa !8
  %inc44 = add i32 %20, 1
  store i32 %inc44, ptr %y, align 4, !tbaa !8
  br label %for.cond28

for.end45:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fwd_order_int32(ptr noundef %ublock, ptr noundef %iblock, ptr noundef %perm, i32 noundef %n) #0 {
entry:
  %ublock.addr = alloca ptr, align 8
  %iblock.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %ublock, ptr %ublock.addr, align 8, !tbaa !4
  store ptr %iblock, ptr %iblock.addr, align 8, !tbaa !4
  store ptr %perm, ptr %perm.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %iblock.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %perm.addr, align 8, !tbaa !4
  %2 = load i8, ptr %1, align 1, !tbaa !19
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %call = call i32 @int2uint_int32(i32 noundef %3)
  %4 = load ptr, ptr %ublock.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds i32, ptr %4, i32 1
  store ptr %incdec.ptr1, ptr %ublock.addr, align 8, !tbaa !4
  store i32 %call, ptr %4, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_ints_uint32(ptr noalias noundef %stream, i32 noundef %maxbits, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  %0 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %1 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %2 = load i32, ptr %size.addr, align 4, !tbaa !8
  %call = call i32 @with_maxbits(i32 noundef %0, i32 noundef %1, i32 noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp = icmp ule i32 %3, 64
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %5 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %6 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %8 = load i32, ptr %size.addr, align 4, !tbaa !8
  %call2 = call i32 @encode_few_ints_uint32(ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8)
  store i32 %call2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %10 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %11 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %13 = load i32, ptr %size.addr, align 4, !tbaa !8
  %call3 = call i32 @encode_many_ints_uint32(ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef %13)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.else4:                                         ; preds = %entry
  %14 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp5 = icmp ule i32 %14, 64
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %15 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %16 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %18 = load i32, ptr %size.addr, align 4, !tbaa !8
  %call7 = call i32 @encode_few_ints_prec_uint32(ptr noundef %15, i32 noundef %16, ptr noundef %17, i32 noundef %18)
  store i32 %call7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else4
  %19 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %20 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %21 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %22 = load i32, ptr %size.addr, align 4, !tbaa !8
  %call9 = call i32 @encode_many_ints_prec_uint32(ptr noundef %19, i32 noundef %20, ptr noundef %21, i32 noundef %22)
  store i32 %call9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then6, %if.else, %if.then1
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @stream_pad(ptr noundef %s, i64 noundef %n) #2 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %bits = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits1 = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %bits1, align 8, !tbaa !20
  store i64 %1, ptr %bits, align 8, !tbaa !17
  %2 = load i64, ptr %n.addr, align 8, !tbaa !17
  %3 = load i64, ptr %bits, align 8, !tbaa !17
  %add = add i64 %3, %2
  store i64 %add, ptr %bits, align 8, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %bits, align 8, !tbaa !17
  %cmp = icmp uge i64 %4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %buffer, align 8, !tbaa !22
  call void @stream_write_word(ptr noundef %5, i8 noundef zeroext %7)
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer2 = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 1
  store i8 0, ptr %buffer2, align 8, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %bits, align 8, !tbaa !17
  %sub = sub i64 %9, 8
  store i64 %sub, ptr %bits, align 8, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %bits, align 8, !tbaa !17
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits3 = getelementptr inbounds %struct.bitstream, ptr %11, i32 0, i32 0
  store i64 %10, ptr %bits3, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fwd_lift_int32(ptr noundef %p, i64 noundef %s) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %s, ptr %s.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %x, align 4, !tbaa !8
  %2 = load i64, ptr %s.addr, align 8, !tbaa !17
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 %2
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  store i32 %5, ptr %y, align 4, !tbaa !8
  %6 = load i64, ptr %s.addr, align 8, !tbaa !17
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr1 = getelementptr inbounds i32, ptr %7, i64 %6
  store ptr %add.ptr1, ptr %p.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  store i32 %9, ptr %z, align 4, !tbaa !8
  %10 = load i64, ptr %s.addr, align 8, !tbaa !17
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr2 = getelementptr inbounds i32, ptr %11, i64 %10
  store ptr %add.ptr2, ptr %p.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %w, align 4, !tbaa !8
  %14 = load i64, ptr %s.addr, align 8, !tbaa !17
  %15 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %add.ptr3 = getelementptr inbounds i32, ptr %15, i64 %14
  store ptr %add.ptr3, ptr %p.addr, align 8, !tbaa !4
  %16 = load i32, ptr %w, align 4, !tbaa !8
  %17 = load i32, ptr %x, align 4, !tbaa !8
  %add = add nsw i32 %17, %16
  store i32 %add, ptr %x, align 4, !tbaa !8
  %18 = load i32, ptr %x, align 4, !tbaa !8
  %shr = ashr i32 %18, 1
  store i32 %shr, ptr %x, align 4, !tbaa !8
  %19 = load i32, ptr %x, align 4, !tbaa !8
  %20 = load i32, ptr %w, align 4, !tbaa !8
  %sub = sub nsw i32 %20, %19
  store i32 %sub, ptr %w, align 4, !tbaa !8
  %21 = load i32, ptr %y, align 4, !tbaa !8
  %22 = load i32, ptr %z, align 4, !tbaa !8
  %add4 = add nsw i32 %22, %21
  store i32 %add4, ptr %z, align 4, !tbaa !8
  %23 = load i32, ptr %z, align 4, !tbaa !8
  %shr5 = ashr i32 %23, 1
  store i32 %shr5, ptr %z, align 4, !tbaa !8
  %24 = load i32, ptr %z, align 4, !tbaa !8
  %25 = load i32, ptr %y, align 4, !tbaa !8
  %sub6 = sub nsw i32 %25, %24
  store i32 %sub6, ptr %y, align 4, !tbaa !8
  %26 = load i32, ptr %z, align 4, !tbaa !8
  %27 = load i32, ptr %x, align 4, !tbaa !8
  %add7 = add nsw i32 %27, %26
  store i32 %add7, ptr %x, align 4, !tbaa !8
  %28 = load i32, ptr %x, align 4, !tbaa !8
  %shr8 = ashr i32 %28, 1
  store i32 %shr8, ptr %x, align 4, !tbaa !8
  %29 = load i32, ptr %x, align 4, !tbaa !8
  %30 = load i32, ptr %z, align 4, !tbaa !8
  %sub9 = sub nsw i32 %30, %29
  store i32 %sub9, ptr %z, align 4, !tbaa !8
  %31 = load i32, ptr %y, align 4, !tbaa !8
  %32 = load i32, ptr %w, align 4, !tbaa !8
  %add10 = add nsw i32 %32, %31
  store i32 %add10, ptr %w, align 4, !tbaa !8
  %33 = load i32, ptr %w, align 4, !tbaa !8
  %shr11 = ashr i32 %33, 1
  store i32 %shr11, ptr %w, align 4, !tbaa !8
  %34 = load i32, ptr %w, align 4, !tbaa !8
  %35 = load i32, ptr %y, align 4, !tbaa !8
  %sub12 = sub nsw i32 %35, %34
  store i32 %sub12, ptr %y, align 4, !tbaa !8
  %36 = load i32, ptr %y, align 4, !tbaa !8
  %shr13 = ashr i32 %36, 1
  %37 = load i32, ptr %w, align 4, !tbaa !8
  %add14 = add nsw i32 %37, %shr13
  store i32 %add14, ptr %w, align 4, !tbaa !8
  %38 = load i32, ptr %w, align 4, !tbaa !8
  %shr15 = ashr i32 %38, 1
  %39 = load i32, ptr %y, align 4, !tbaa !8
  %sub16 = sub nsw i32 %39, %shr15
  store i32 %sub16, ptr %y, align 4, !tbaa !8
  %40 = load i64, ptr %s.addr, align 8, !tbaa !17
  %41 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg = sub i64 0, %40
  %add.ptr17 = getelementptr inbounds i32, ptr %41, i64 %idx.neg
  store ptr %add.ptr17, ptr %p.addr, align 8, !tbaa !4
  %42 = load i32, ptr %w, align 4, !tbaa !8
  %43 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %42, ptr %43, align 4, !tbaa !8
  %44 = load i64, ptr %s.addr, align 8, !tbaa !17
  %45 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg18 = sub i64 0, %44
  %add.ptr19 = getelementptr inbounds i32, ptr %45, i64 %idx.neg18
  store ptr %add.ptr19, ptr %p.addr, align 8, !tbaa !4
  %46 = load i32, ptr %z, align 4, !tbaa !8
  %47 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %46, ptr %47, align 4, !tbaa !8
  %48 = load i64, ptr %s.addr, align 8, !tbaa !17
  %49 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg20 = sub i64 0, %48
  %add.ptr21 = getelementptr inbounds i32, ptr %49, i64 %idx.neg20
  store ptr %add.ptr21, ptr %p.addr, align 8, !tbaa !4
  %50 = load i32, ptr %y, align 4, !tbaa !8
  %51 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %50, ptr %51, align 4, !tbaa !8
  %52 = load i64, ptr %s.addr, align 8, !tbaa !17
  %53 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.neg22 = sub i64 0, %52
  %add.ptr23 = getelementptr inbounds i32, ptr %53, i64 %idx.neg22
  store ptr %add.ptr23, ptr %p.addr, align 8, !tbaa !4
  %54 = load i32, ptr %x, align 4, !tbaa !8
  %55 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %54, ptr %55, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @int2uint_int32(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !8
  %0 = load i32, ptr %x.addr, align 4, !tbaa !8
  %add = add i32 %0, -1431655766
  %xor = xor i32 %add, -1431655766
  ret i32 %xor
}

; Function Attrs: nounwind uwtable
define internal i32 @with_maxbits(i32 noundef %maxbits, i32 noundef %maxprec, i32 noundef %size) #0 {
entry:
  %maxbits.addr = alloca i32, align 4
  %maxprec.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  %0 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %add = add i32 %0, 1
  %1 = load i32, ptr %size.addr, align 4, !tbaa !8
  %mul = mul i32 %add, %1
  %sub = sub i32 %mul, 1
  %2 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %sub, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_few_ints_uint32(ptr noalias noundef %stream, i32 noundef %maxbits, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
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
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #4
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #4
  store i32 32, ptr %intprec, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #4
  %1 = load i32, ptr %intprec, align 4, !tbaa !8
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !8
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #4
  %5 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %5, ptr %bits, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  %6 = load i32, ptr %intprec, align 4, !tbaa !8
  store i32 %6, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.end47, %cond.end
  %7 = load i32, ptr %bits, align 4, !tbaa !8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add i32 %8, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %9 = load i32, ptr %kmin, align 4, !tbaa !8
  %cmp1 = icmp ugt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %10, label %for.body, label %for.end48

for.body:                                         ; preds = %land.end
  store i64 0, ptr %x, align 8, !tbaa !17
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %12 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp3 = icmp ult i32 %11, %12
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %13 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, ptr %13, i64 %idxprom
  %15 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %16 = load i32, ptr %k, align 4, !tbaa !8
  %shr = lshr i32 %15, %16
  %and = and i32 %shr, 1
  %conv = zext i32 %and to i64
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 %conv, %sh_prom
  %18 = load i64, ptr %x, align 8, !tbaa !17
  %add = add i64 %18, %shl
  store i64 %add, ptr %x, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %20 = load i32, ptr %n, align 4, !tbaa !8
  %21 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp5 = icmp ult i32 %20, %21
  br i1 %cmp5, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %for.end
  %22 = load i32, ptr %n, align 4, !tbaa !8
  br label %cond.end9

cond.false8:                                      ; preds = %for.end
  %23 = load i32, ptr %bits, align 4, !tbaa !8
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ %22, %cond.true7 ], [ %23, %cond.false8 ]
  store i32 %cond10, ptr %m, align 4, !tbaa !8
  %24 = load i32, ptr %m, align 4, !tbaa !8
  %25 = load i32, ptr %bits, align 4, !tbaa !8
  %sub11 = sub i32 %25, %24
  store i32 %sub11, ptr %bits, align 4, !tbaa !8
  %26 = load i64, ptr %x, align 8, !tbaa !17
  %27 = load i32, ptr %m, align 4, !tbaa !8
  %conv12 = zext i32 %27 to i64
  %call = call i64 @stream_write_bits(ptr noundef %s, i64 noundef %26, i64 noundef %conv12)
  store i64 %call, ptr %x, align 8, !tbaa !17
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc44, %cond.end9
  %28 = load i32, ptr %bits, align 4, !tbaa !8
  %tobool14 = icmp ne i32 %28, 0
  br i1 %tobool14, label %land.rhs15, label %land.end18

land.rhs15:                                       ; preds = %for.cond13
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %30 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp16 = icmp ult i32 %29, %30
  br label %land.end18

land.end18:                                       ; preds = %land.rhs15, %for.cond13
  %31 = phi i1 [ false, %for.cond13 ], [ %cmp16, %land.rhs15 ]
  br i1 %31, label %for.body19, label %for.end47

for.body19:                                       ; preds = %land.end18
  %32 = load i32, ptr %bits, align 4, !tbaa !8
  %dec20 = add i32 %32, -1
  store i32 %dec20, ptr %bits, align 4, !tbaa !8
  %33 = load i64, ptr %x, align 8, !tbaa !17
  %tobool21 = icmp ne i64 %33, 0
  %lnot = xor i1 %tobool21, true
  %lnot22 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot22 to i32
  %call23 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %lnot.ext)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then, label %if.else

if.then:                                          ; preds = %for.body19
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc39, %if.then
  %34 = load i32, ptr %bits, align 4, !tbaa !8
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %land.rhs27, label %land.end31

land.rhs27:                                       ; preds = %for.cond25
  %35 = load i32, ptr %n, align 4, !tbaa !8
  %36 = load i32, ptr %size.addr, align 4, !tbaa !8
  %sub28 = sub i32 %36, 1
  %cmp29 = icmp ult i32 %35, %sub28
  br label %land.end31

land.end31:                                       ; preds = %land.rhs27, %for.cond25
  %37 = phi i1 [ false, %for.cond25 ], [ %cmp29, %land.rhs27 ]
  br i1 %37, label %for.body32, label %for.end42

for.body32:                                       ; preds = %land.end31
  %38 = load i32, ptr %bits, align 4, !tbaa !8
  %dec33 = add i32 %38, -1
  store i32 %dec33, ptr %bits, align 4, !tbaa !8
  %39 = load i64, ptr %x, align 8, !tbaa !17
  %and34 = and i64 %39, 1
  %conv35 = trunc i64 %and34 to i32
  %call36 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %conv35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then38, label %if.end

if.then38:                                        ; preds = %for.body32
  br label %for.end42

if.end:                                           ; preds = %for.body32
  br label %for.inc39

for.inc39:                                        ; preds = %if.end
  %40 = load i64, ptr %x, align 8, !tbaa !17
  %shr40 = lshr i64 %40, 1
  store i64 %shr40, ptr %x, align 8, !tbaa !17
  %41 = load i32, ptr %n, align 4, !tbaa !8
  %inc41 = add i32 %41, 1
  store i32 %inc41, ptr %n, align 4, !tbaa !8
  br label %for.cond25

for.end42:                                        ; preds = %if.then38, %land.end31
  br label %if.end43

if.else:                                          ; preds = %for.body19
  br label %for.end47

if.end43:                                         ; preds = %for.end42
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %42 = load i64, ptr %x, align 8, !tbaa !17
  %shr45 = lshr i64 %42, 1
  store i64 %shr45, ptr %x, align 8, !tbaa !17
  %43 = load i32, ptr %n, align 4, !tbaa !8
  %inc46 = add i32 %43, 1
  store i32 %inc46, ptr %n, align 4, !tbaa !8
  br label %for.cond13

for.end47:                                        ; preds = %if.else, %land.end18
  br label %for.cond

for.end48:                                        ; preds = %land.end
  %44 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !23
  %45 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %46 = load i32, ptr %bits, align 4, !tbaa !8
  %sub49 = sub i32 %45, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #4
  ret i32 %sub49
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_many_ints_uint32(ptr noalias noundef %stream, i32 noundef %maxbits, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
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
  %c = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxbits, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #4
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #4
  store i32 32, ptr %intprec, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #4
  %1 = load i32, ptr %intprec, align 4, !tbaa !8
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !8
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #4
  %5 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  store i32 %5, ptr %bits, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  %6 = load i32, ptr %intprec, align 4, !tbaa !8
  store i32 %6, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.end54, %cond.end
  %7 = load i32, ptr %bits, align 4, !tbaa !8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add i32 %8, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %9 = load i32, ptr %kmin, align 4, !tbaa !8
  %cmp1 = icmp ugt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %10, label %for.body, label %for.end55

for.body:                                         ; preds = %land.end
  %11 = load i32, ptr %n, align 4, !tbaa !8
  %12 = load i32, ptr %bits, align 4, !tbaa !8
  %cmp2 = icmp ult i32 %11, %12
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %for.body
  %13 = load i32, ptr %n, align 4, !tbaa !8
  br label %cond.end5

cond.false4:                                      ; preds = %for.body
  %14 = load i32, ptr %bits, align 4, !tbaa !8
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi i32 [ %13, %cond.true3 ], [ %14, %cond.false4 ]
  store i32 %cond6, ptr %m, align 4, !tbaa !8
  %15 = load i32, ptr %m, align 4, !tbaa !8
  %16 = load i32, ptr %bits, align 4, !tbaa !8
  %sub7 = sub i32 %16, %15
  store i32 %sub7, ptr %bits, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %cond.end5
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %18 = load i32, ptr %m, align 4, !tbaa !8
  %cmp9 = icmp ult i32 %17, %18
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds i32, ptr %19, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %22 = load i32, ptr %k, align 4, !tbaa !8
  %shr = lshr i32 %21, %22
  %and = and i32 %shr, 1
  %call = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %and)
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond8

for.end:                                          ; preds = %for.cond8
  store i32 0, ptr %c, align 4, !tbaa !8
  %24 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %24, ptr %i, align 4, !tbaa !8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc18, %for.end
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %26 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp12 = icmp ult i32 %25, %26
  br i1 %cmp12, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond11
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom14 = zext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %27, i64 %idxprom14
  %29 = load i32, ptr %arrayidx15, align 4, !tbaa !8
  %30 = load i32, ptr %k, align 4, !tbaa !8
  %shr16 = lshr i32 %29, %30
  %and17 = and i32 %shr16, 1
  %31 = load i32, ptr %c, align 4, !tbaa !8
  %add = add i32 %31, %and17
  store i32 %add, ptr %c, align 4, !tbaa !8
  br label %for.inc18

for.inc18:                                        ; preds = %for.body13
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc19 = add i32 %32, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !8
  br label %for.cond11

for.end20:                                        ; preds = %for.cond11
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc52, %for.end20
  %33 = load i32, ptr %bits, align 4, !tbaa !8
  %tobool22 = icmp ne i32 %33, 0
  br i1 %tobool22, label %land.rhs23, label %land.end25

land.rhs23:                                       ; preds = %for.cond21
  %34 = load i32, ptr %n, align 4, !tbaa !8
  %35 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp24 = icmp ult i32 %34, %35
  br label %land.end25

land.end25:                                       ; preds = %land.rhs23, %for.cond21
  %36 = phi i1 [ false, %for.cond21 ], [ %cmp24, %land.rhs23 ]
  br i1 %36, label %for.body26, label %for.end54

for.body26:                                       ; preds = %land.end25
  %37 = load i32, ptr %bits, align 4, !tbaa !8
  %dec27 = add i32 %37, -1
  store i32 %dec27, ptr %bits, align 4, !tbaa !8
  %38 = load i32, ptr %c, align 4, !tbaa !8
  %tobool28 = icmp ne i32 %38, 0
  %lnot = xor i1 %tobool28, true
  %lnot29 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot29 to i32
  %call30 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %lnot.ext)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %39 = load i32, ptr %c, align 4, !tbaa !8
  %dec32 = add i32 %39, -1
  store i32 %dec32, ptr %c, align 4, !tbaa !8
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc48, %if.then
  %40 = load i32, ptr %bits, align 4, !tbaa !8
  %tobool34 = icmp ne i32 %40, 0
  br i1 %tobool34, label %land.rhs35, label %land.end38

land.rhs35:                                       ; preds = %for.cond33
  %41 = load i32, ptr %n, align 4, !tbaa !8
  %42 = load i32, ptr %size.addr, align 4, !tbaa !8
  %sub36 = sub i32 %42, 1
  %cmp37 = icmp ult i32 %41, %sub36
  br label %land.end38

land.end38:                                       ; preds = %land.rhs35, %for.cond33
  %43 = phi i1 [ false, %for.cond33 ], [ %cmp37, %land.rhs35 ]
  br i1 %43, label %for.body39, label %for.end50

for.body39:                                       ; preds = %land.end38
  %44 = load i32, ptr %bits, align 4, !tbaa !8
  %dec40 = add i32 %44, -1
  store i32 %dec40, ptr %bits, align 4, !tbaa !8
  %45 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %46 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom41 = zext i32 %46 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %45, i64 %idxprom41
  %47 = load i32, ptr %arrayidx42, align 4, !tbaa !8
  %48 = load i32, ptr %k, align 4, !tbaa !8
  %shr43 = lshr i32 %47, %48
  %and44 = and i32 %shr43, 1
  %call45 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %and44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end

if.then47:                                        ; preds = %for.body39
  br label %for.end50

if.end:                                           ; preds = %for.body39
  br label %for.inc48

for.inc48:                                        ; preds = %if.end
  %49 = load i32, ptr %n, align 4, !tbaa !8
  %inc49 = add i32 %49, 1
  store i32 %inc49, ptr %n, align 4, !tbaa !8
  br label %for.cond33

for.end50:                                        ; preds = %if.then47, %land.end38
  br label %if.end51

if.else:                                          ; preds = %for.body26
  br label %for.end54

if.end51:                                         ; preds = %for.end50
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %50 = load i32, ptr %n, align 4, !tbaa !8
  %inc53 = add i32 %50, 1
  store i32 %inc53, ptr %n, align 4, !tbaa !8
  br label %for.cond21

for.end54:                                        ; preds = %if.else, %land.end25
  br label %for.cond

for.end55:                                        ; preds = %land.end
  %51 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %51, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !23
  %52 = load i32, ptr %maxbits.addr, align 4, !tbaa !8
  %53 = load i32, ptr %bits, align 4, !tbaa !8
  %sub56 = sub i32 %52, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #4
  ret i32 %sub56
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_few_ints_prec_uint32(ptr noalias noundef %stream, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
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
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #4
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #4
  %call = call i64 @stream_wtell(ptr noundef %s)
  store i64 %call, ptr %offset, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #4
  store i32 32, ptr %intprec, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #4
  %1 = load i32, ptr %intprec, align 4, !tbaa !8
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !8
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %5 = load i32, ptr %intprec, align 4, !tbaa !8
  store i32 %5, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.end34, %cond.end
  %6 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add i32 %6, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %7 = load i32, ptr %kmin, align 4, !tbaa !8
  %cmp1 = icmp ugt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  store i64 0, ptr %x, align 8, !tbaa !17
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp3 = icmp ult i32 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %13 = load i32, ptr %k, align 4, !tbaa !8
  %shr = lshr i32 %12, %13
  %and = and i32 %shr, 1
  %conv = zext i32 %and to i64
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 %conv, %sh_prom
  %15 = load i64, ptr %x, align 8, !tbaa !17
  %add = add i64 %15, %shl
  store i64 %add, ptr %x, align 8, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %17 = load i64, ptr %x, align 8, !tbaa !17
  %18 = load i32, ptr %n, align 4, !tbaa !8
  %conv5 = zext i32 %18 to i64
  %call6 = call i64 @stream_write_bits(ptr noundef %s, i64 noundef %17, i64 noundef %conv5)
  store i64 %call6, ptr %x, align 8, !tbaa !17
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc31, %for.end
  %19 = load i32, ptr %n, align 4, !tbaa !8
  %20 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp8 = icmp ult i32 %19, %20
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond7
  %21 = load i64, ptr %x, align 8, !tbaa !17
  %tobool = icmp ne i64 %21, 0
  %lnot = xor i1 %tobool, true
  %lnot10 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot10 to i32
  %call11 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %lnot.ext)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond7
  %22 = phi i1 [ false, %for.cond7 ], [ %tobool12, %land.rhs ]
  br i1 %22, label %for.body13, label %for.end34

for.body13:                                       ; preds = %land.end
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc27, %for.body13
  %23 = load i32, ptr %n, align 4, !tbaa !8
  %24 = load i32, ptr %size.addr, align 4, !tbaa !8
  %sub15 = sub i32 %24, 1
  %cmp16 = icmp ult i32 %23, %sub15
  br i1 %cmp16, label %land.rhs18, label %land.end25

land.rhs18:                                       ; preds = %for.cond14
  %25 = load i64, ptr %x, align 8, !tbaa !17
  %and19 = and i64 %25, 1
  %conv20 = trunc i64 %and19 to i32
  %call21 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %conv20)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot23 = xor i1 %tobool22, true
  br label %land.end25

land.end25:                                       ; preds = %land.rhs18, %for.cond14
  %26 = phi i1 [ false, %for.cond14 ], [ %lnot23, %land.rhs18 ]
  br i1 %26, label %for.body26, label %for.end30

for.body26:                                       ; preds = %land.end25
  br label %for.inc27

for.inc27:                                        ; preds = %for.body26
  %27 = load i64, ptr %x, align 8, !tbaa !17
  %shr28 = lshr i64 %27, 1
  store i64 %shr28, ptr %x, align 8, !tbaa !17
  %28 = load i32, ptr %n, align 4, !tbaa !8
  %inc29 = add i32 %28, 1
  store i32 %inc29, ptr %n, align 4, !tbaa !8
  br label %for.cond14

for.end30:                                        ; preds = %land.end25
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %29 = load i64, ptr %x, align 8, !tbaa !17
  %shr32 = lshr i64 %29, 1
  store i64 %shr32, ptr %x, align 8, !tbaa !17
  %30 = load i32, ptr %n, align 4, !tbaa !8
  %inc33 = add i32 %30, 1
  store i32 %inc33, ptr %n, align 4, !tbaa !8
  br label %for.cond7

for.end34:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  br label %for.cond

for.end35:                                        ; preds = %for.cond
  %31 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !23
  %call36 = call i64 @stream_wtell(ptr noundef %s)
  %32 = load i64, ptr %offset, align 8, !tbaa !17
  %sub37 = sub i64 %call36, %32
  %conv38 = trunc i64 %sub37 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #4
  ret i32 %conv38
}

; Function Attrs: nounwind uwtable
define internal i32 @encode_many_ints_prec_uint32(ptr noalias noundef %stream, i32 noundef %maxprec, ptr noalias noundef %data, i32 noundef %size) #0 {
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
  %c = alloca i32, align 4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  store i32 %maxprec, ptr %maxprec.addr, align 4, !tbaa !8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 40, ptr %s) #4
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %s, ptr align 8 %0, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #4
  %call = call i64 @stream_wtell(ptr noundef %s)
  store i64 %call, ptr %offset, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %intprec) #4
  store i32 32, ptr %intprec, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %kmin) #4
  %1 = load i32, ptr %intprec, align 4, !tbaa !8
  %2 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %intprec, align 4, !tbaa !8
  %4 = load i32, ptr %maxprec.addr, align 4, !tbaa !8
  %sub = sub i32 %3, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %kmin, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  %5 = load i32, ptr %intprec, align 4, !tbaa !8
  store i32 %5, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %n, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.end42, %cond.end
  %6 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add i32 %6, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %7 = load i32, ptr %kmin, align 4, !tbaa !8
  %cmp1 = icmp ugt i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %n, align 4, !tbaa !8
  %cmp3 = icmp ult i32 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %13 = load i32, ptr %k, align 4, !tbaa !8
  %shr = lshr i32 %12, %13
  %and = and i32 %shr, 1
  %call5 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %and)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %c, align 4, !tbaa !8
  %15 = load i32, ptr %n, align 4, !tbaa !8
  store i32 %15, ptr %i, align 4, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %17 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp7 = icmp ult i32 %16, %17
  br i1 %cmp7, label %for.body8, label %for.end15

for.body8:                                        ; preds = %for.cond6
  %18 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom9 = zext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %idxprom9
  %20 = load i32, ptr %arrayidx10, align 4, !tbaa !8
  %21 = load i32, ptr %k, align 4, !tbaa !8
  %shr11 = lshr i32 %20, %21
  %and12 = and i32 %shr11, 1
  %22 = load i32, ptr %c, align 4, !tbaa !8
  %add = add i32 %22, %and12
  store i32 %add, ptr %c, align 4, !tbaa !8
  br label %for.inc13

for.inc13:                                        ; preds = %for.body8
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %inc14 = add i32 %23, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !8
  br label %for.cond6

for.end15:                                        ; preds = %for.cond6
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc40, %for.end15
  %24 = load i32, ptr %n, align 4, !tbaa !8
  %25 = load i32, ptr %size.addr, align 4, !tbaa !8
  %cmp17 = icmp ult i32 %24, %25
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond16
  %26 = load i32, ptr %c, align 4, !tbaa !8
  %tobool = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool, true
  %lnot18 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot18 to i32
  %call19 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %lnot.ext)
  %tobool20 = icmp ne i32 %call19, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond16
  %27 = phi i1 [ false, %for.cond16 ], [ %tobool20, %land.rhs ]
  br i1 %27, label %for.body21, label %for.end42

for.body21:                                       ; preds = %land.end
  %28 = load i32, ptr %c, align 4, !tbaa !8
  %dec22 = add i32 %28, -1
  store i32 %dec22, ptr %c, align 4, !tbaa !8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc37, %for.body21
  %29 = load i32, ptr %n, align 4, !tbaa !8
  %30 = load i32, ptr %size.addr, align 4, !tbaa !8
  %sub24 = sub i32 %30, 1
  %cmp25 = icmp ult i32 %29, %sub24
  br i1 %cmp25, label %land.rhs26, label %land.end35

land.rhs26:                                       ; preds = %for.cond23
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %32 = load i32, ptr %n, align 4, !tbaa !8
  %idxprom27 = zext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %31, i64 %idxprom27
  %33 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %34 = load i32, ptr %k, align 4, !tbaa !8
  %shr29 = lshr i32 %33, %34
  %and30 = and i32 %shr29, 1
  %call31 = call i32 @stream_write_bit(ptr noundef %s, i32 noundef %and30)
  %tobool32 = icmp ne i32 %call31, 0
  %lnot33 = xor i1 %tobool32, true
  br label %land.end35

land.end35:                                       ; preds = %land.rhs26, %for.cond23
  %35 = phi i1 [ false, %for.cond23 ], [ %lnot33, %land.rhs26 ]
  br i1 %35, label %for.body36, label %for.end39

for.body36:                                       ; preds = %land.end35
  br label %for.inc37

for.inc37:                                        ; preds = %for.body36
  %36 = load i32, ptr %n, align 4, !tbaa !8
  %inc38 = add i32 %36, 1
  store i32 %inc38, ptr %n, align 4, !tbaa !8
  br label %for.cond23

for.end39:                                        ; preds = %land.end35
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %37 = load i32, ptr %n, align 4, !tbaa !8
  %inc41 = add i32 %37, 1
  store i32 %inc41, ptr %n, align 4, !tbaa !8
  br label %for.cond16

for.end42:                                        ; preds = %land.end
  br label %for.cond

for.end43:                                        ; preds = %for.cond
  %38 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %38, ptr align 8 %s, i64 40, i1 false), !tbaa.struct !23
  %call44 = call i64 @stream_wtell(ptr noundef %s)
  %39 = load i64, ptr %offset, align 8, !tbaa !17
  %sub45 = sub i64 %call44, %39
  %conv = trunc i64 %sub45 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %intprec) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr %s) #4
  ret i32 %conv
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stream_write_bits(ptr noundef %s, i64 noundef %value, i64 noundef %n) #2 {
entry:
  %s.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i64 %value, ptr %value.addr, align 8, !tbaa !17
  store i64 %n, ptr %n.addr, align 8, !tbaa !17
  %0 = load i64, ptr %value.addr, align 8, !tbaa !17
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %bits, align 8, !tbaa !20
  %shl = shl i64 %0, %2
  %conv = trunc i64 %shl to i8
  %conv1 = zext i8 %conv to i32
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %buffer, align 8, !tbaa !22
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv2, %conv1
  %conv3 = trunc i32 %add to i8
  store i8 %conv3, ptr %buffer, align 8, !tbaa !22
  %5 = load i64, ptr %n.addr, align 8, !tbaa !17
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits4 = getelementptr inbounds %struct.bitstream, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %bits4, align 8, !tbaa !20
  %add5 = add i64 %7, %5
  store i64 %add5, ptr %bits4, align 8, !tbaa !20
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits6 = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %bits6, align 8, !tbaa !20
  %cmp = icmp uge i64 %9, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i64, ptr %value.addr, align 8, !tbaa !17
  %shr = lshr i64 %10, 1
  store i64 %shr, ptr %value.addr, align 8, !tbaa !17
  %11 = load i64, ptr %n.addr, align 8, !tbaa !17
  %dec = add i64 %11, -1
  store i64 %dec, ptr %n.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %12 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits8 = getelementptr inbounds %struct.bitstream, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %bits8, align 8, !tbaa !20
  %sub = sub i64 %13, 8
  store i64 %sub, ptr %bits8, align 8, !tbaa !20
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer9 = getelementptr inbounds %struct.bitstream, ptr %15, i32 0, i32 1
  %16 = load i8, ptr %buffer9, align 8, !tbaa !22
  call void @stream_write_word(ptr noundef %14, i8 noundef zeroext %16)
  %17 = load i64, ptr %value.addr, align 8, !tbaa !17
  %18 = load i64, ptr %n.addr, align 8, !tbaa !17
  %19 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits10 = getelementptr inbounds %struct.bitstream, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %bits10, align 8, !tbaa !20
  %sub11 = sub i64 %18, %20
  %shr12 = lshr i64 %17, %sub11
  %conv13 = trunc i64 %shr12 to i8
  %21 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer14 = getelementptr inbounds %struct.bitstream, ptr %21, i32 0, i32 1
  store i8 %conv13, ptr %buffer14, align 8, !tbaa !22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %22 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits15 = getelementptr inbounds %struct.bitstream, ptr %22, i32 0, i32 0
  %23 = load i64, ptr %bits15, align 8, !tbaa !20
  %cmp16 = icmp uge i64 %23, 8
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %24 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits18 = getelementptr inbounds %struct.bitstream, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %bits18, align 8, !tbaa !20
  %sh_prom = trunc i64 %25 to i32
  %shl19 = shl i32 1, %sh_prom
  %sub20 = sub nsw i32 %shl19, 1
  %26 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer21 = getelementptr inbounds %struct.bitstream, ptr %26, i32 0, i32 1
  %27 = load i8, ptr %buffer21, align 8, !tbaa !22
  %conv22 = zext i8 %27 to i32
  %and = and i32 %conv22, %sub20
  %conv23 = trunc i32 %and to i8
  store i8 %conv23, ptr %buffer21, align 8, !tbaa !22
  %28 = load i64, ptr %value.addr, align 8, !tbaa !17
  %29 = load i64, ptr %n.addr, align 8, !tbaa !17
  %shr24 = lshr i64 %28, %29
  ret i64 %shr24
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stream_write_bit(ptr noundef %s, i32 noundef %bit) #2 {
entry:
  %s.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %bit, ptr %bit.addr, align 4, !tbaa !8
  %0 = load i32, ptr %bit.addr, align 4, !tbaa !8
  %conv = trunc i32 %0 to i8
  %conv1 = zext i8 %conv to i32
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %bits, align 8, !tbaa !20
  %sh_prom = trunc i64 %2 to i32
  %shl = shl i32 %conv1, %sh_prom
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.bitstream, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %buffer, align 8, !tbaa !22
  %conv2 = zext i8 %4 to i32
  %add = add nsw i32 %conv2, %shl
  %conv3 = trunc i32 %add to i8
  store i8 %conv3, ptr %buffer, align 8, !tbaa !22
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits4 = getelementptr inbounds %struct.bitstream, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %bits4, align 8, !tbaa !20
  %inc = add i64 %6, 1
  store i64 %inc, ptr %bits4, align 8, !tbaa !20
  %cmp = icmp eq i64 %inc, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer6 = getelementptr inbounds %struct.bitstream, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %buffer6, align 8, !tbaa !22
  call void @stream_write_word(ptr noundef %7, i8 noundef zeroext %9)
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %buffer7 = getelementptr inbounds %struct.bitstream, ptr %10, i32 0, i32 1
  store i8 0, ptr %buffer7, align 8, !tbaa !22
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits8 = getelementptr inbounds %struct.bitstream, ptr %11, i32 0, i32 0
  store i64 0, ptr %bits8, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, ptr %bit.addr, align 4, !tbaa !8
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @stream_write_word(ptr noundef %s, i8 noundef zeroext %value) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %value.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i8 %value, ptr %value.addr, align 1, !tbaa !19
  %0 = load i8, ptr %value.addr, align 1, !tbaa !19
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %ptr, align 8, !tbaa !24
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8, !tbaa !24
  store i8 %0, ptr %2, align 1, !tbaa !19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @stream_wtell(ptr noundef %s) #2 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %ptr = getelementptr inbounds %struct.bitstream, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ptr, align 8, !tbaa !24
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %begin = getelementptr inbounds %struct.bitstream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %begin, align 8, !tbaa !25
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul i64 %sub.ptr.sub, 8
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %bits = getelementptr inbounds %struct.bitstream, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %bits, align 8, !tbaa !20
  %add = add i64 %mul, %5
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal void @pad_block_int32(ptr noundef %p, i64 noundef %n, i64 noundef %s) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !17
  store i64 %s, ptr %s.addr, align 8, !tbaa !17
  %0 = load i64, ptr %n.addr, align 8, !tbaa !17
  switch i64 %0, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb1
    i64 2, label %sw.bb6
    i64 3, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load i64, ptr %s.addr, align 8, !tbaa !17
  %mul = mul nsw i64 0, %2
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %mul
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load i64, ptr %s.addr, align 8, !tbaa !17
  %mul2 = mul nsw i64 0, %4
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 %mul2
  %5 = load i32, ptr %arrayidx3, align 4, !tbaa !8
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %7 = load i64, ptr %s.addr, align 8, !tbaa !17
  %mul4 = mul nsw i64 1, %7
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 %mul4
  store i32 %5, ptr %arrayidx5, align 4, !tbaa !8
  br label %sw.bb6

sw.bb6:                                           ; preds = %entry, %sw.bb1
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %9 = load i64, ptr %s.addr, align 8, !tbaa !17
  %mul7 = mul nsw i64 1, %9
  %arrayidx8 = getelementptr inbounds i32, ptr %8, i64 %mul7
  %10 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %12 = load i64, ptr %s.addr, align 8, !tbaa !17
  %mul9 = mul nsw i64 2, %12
  %arrayidx10 = getelementptr inbounds i32, ptr %11, i64 %mul9
  store i32 %10, ptr %arrayidx10, align 4, !tbaa !8
  br label %sw.bb11

sw.bb11:                                          ; preds = %entry, %sw.bb6
  %13 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %14 = load i64, ptr %s.addr, align 8, !tbaa !17
  %mul12 = mul nsw i64 0, %14
  %arrayidx13 = getelementptr inbounds i32, ptr %13, i64 %mul12
  %15 = load i32, ptr %arrayidx13, align 4, !tbaa !8
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load i64, ptr %s.addr, align 8, !tbaa !17
  %mul14 = mul nsw i64 3, %17
  %arrayidx15 = getelementptr inbounds i32, ptr %16, i64 %mul14
  store i32 %15, ptr %arrayidx15, align 4, !tbaa !8
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rev_fwd_xform_int32_3(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #4
  store i32 0, ptr %z, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %z, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %y, align 4, !tbaa !8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %y, align 4, !tbaa !8
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = load i32, ptr %y, align 4, !tbaa !8
  %mul = mul i32 4, %3
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  %4 = load i32, ptr %z, align 4, !tbaa !8
  %mul4 = mul i32 16, %4
  %idx.ext5 = zext i32 %mul4 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.ext5
  call void @rev_fwd_lift_int32(ptr noundef %add.ptr6, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %y, align 4, !tbaa !8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %y, align 4, !tbaa !8
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, ptr %z, align 4, !tbaa !8
  %inc8 = add i32 %6, 1
  store i32 %inc8, ptr %z, align 4, !tbaa !8
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4, !tbaa !8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %for.end9
  %7 = load i32, ptr %x, align 4, !tbaa !8
  %cmp11 = icmp ult i32 %7, 4
  br i1 %cmp11, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %z, align 4, !tbaa !8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %8 = load i32, ptr %z, align 4, !tbaa !8
  %cmp14 = icmp ult i32 %8, 4
  br i1 %cmp14, label %for.body15, label %for.end24

for.body15:                                       ; preds = %for.cond13
  %9 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %10 = load i32, ptr %z, align 4, !tbaa !8
  %mul16 = mul i32 16, %10
  %idx.ext17 = zext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i32, ptr %9, i64 %idx.ext17
  %11 = load i32, ptr %x, align 4, !tbaa !8
  %mul19 = mul i32 1, %11
  %idx.ext20 = zext i32 %mul19 to i64
  %add.ptr21 = getelementptr inbounds i32, ptr %add.ptr18, i64 %idx.ext20
  call void @rev_fwd_lift_int32(ptr noundef %add.ptr21, i32 noundef 4)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body15
  %12 = load i32, ptr %z, align 4, !tbaa !8
  %inc23 = add i32 %12, 1
  store i32 %inc23, ptr %z, align 4, !tbaa !8
  br label %for.cond13

for.end24:                                        ; preds = %for.cond13
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %13 = load i32, ptr %x, align 4, !tbaa !8
  %inc26 = add i32 %13, 1
  store i32 %inc26, ptr %x, align 4, !tbaa !8
  br label %for.cond10

for.end27:                                        ; preds = %for.cond10
  store i32 0, ptr %y, align 4, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc43, %for.end27
  %14 = load i32, ptr %y, align 4, !tbaa !8
  %cmp29 = icmp ult i32 %14, 4
  br i1 %cmp29, label %for.body30, label %for.end45

for.body30:                                       ; preds = %for.cond28
  store i32 0, ptr %x, align 4, !tbaa !8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc40, %for.body30
  %15 = load i32, ptr %x, align 4, !tbaa !8
  %cmp32 = icmp ult i32 %15, 4
  br i1 %cmp32, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond31
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load i32, ptr %x, align 4, !tbaa !8
  %mul34 = mul i32 1, %17
  %idx.ext35 = zext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds i32, ptr %16, i64 %idx.ext35
  %18 = load i32, ptr %y, align 4, !tbaa !8
  %mul37 = mul i32 4, %18
  %idx.ext38 = zext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds i32, ptr %add.ptr36, i64 %idx.ext38
  call void @rev_fwd_lift_int32(ptr noundef %add.ptr39, i32 noundef 16)
  br label %for.inc40

for.inc40:                                        ; preds = %for.body33
  %19 = load i32, ptr %x, align 4, !tbaa !8
  %inc41 = add i32 %19, 1
  store i32 %inc41, ptr %x, align 4, !tbaa !8
  br label %for.cond31

for.end42:                                        ; preds = %for.cond31
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %20 = load i32, ptr %y, align 4, !tbaa !8
  %inc44 = add i32 %20, 1
  store i32 %inc44, ptr %y, align 4, !tbaa !8
  br label %for.cond28

for.end45:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @rev_precision_uint32(ptr noundef %block, i32 noundef %n) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  %m = alloca i32, align 4
  store ptr %block, ptr %block.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  store i32 0, ptr %p, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  store i32 0, ptr %m, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %dec = add i32 %0, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %block.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %block.addr, align 8, !tbaa !4
  %2 = load i32, ptr %1, align 4, !tbaa !8
  %3 = load i32, ptr %m, align 4, !tbaa !8
  %or = or i32 %3, %2
  store i32 %or, ptr %m, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 32, ptr %s, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %4 = load i32, ptr %m, align 4, !tbaa !8
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %m, align 4, !tbaa !8
  %6 = load i32, ptr %s, align 4, !tbaa !8
  %sub = sub i32 %6, 1
  %shl = shl i32 %5, %sub
  %tobool2 = icmp ne i32 %shl, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %s, align 4, !tbaa !8
  %sub3 = sub i32 %7, 1
  %8 = load i32, ptr %m, align 4, !tbaa !8
  %shl4 = shl i32 %8, %sub3
  store i32 %shl4, ptr %m, align 4, !tbaa !8
  %9 = load i32, ptr %m, align 4, !tbaa !8
  %shl5 = shl i32 %9, 1
  store i32 %shl5, ptr %m, align 4, !tbaa !8
  %10 = load i32, ptr %s, align 4, !tbaa !8
  %11 = load i32, ptr %p, align 4, !tbaa !8
  %add = add i32 %11, %10
  store i32 %add, ptr %p, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %s, align 4, !tbaa !8
  %div = udiv i32 %12, 2
  store i32 %div, ptr %s, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %p, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @rev_fwd_lift_int32(ptr noundef %p, i32 noundef %s) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %s, ptr %s.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %x, align 4, !tbaa !8
  %2 = load i32, ptr %s.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  store i32 %5, ptr %y, align 4, !tbaa !8
  %6 = load i32, ptr %s.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext1 = zext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i32, ptr %7, i64 %idx.ext1
  store ptr %add.ptr2, ptr %p.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  store i32 %9, ptr %z, align 4, !tbaa !8
  %10 = load i32, ptr %s.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext3 = zext i32 %10 to i64
  %add.ptr4 = getelementptr inbounds i32, ptr %11, i64 %idx.ext3
  store ptr %add.ptr4, ptr %p.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %w, align 4, !tbaa !8
  %14 = load i32, ptr %s.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext5 = zext i32 %14 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %15, i64 %idx.ext5
  store ptr %add.ptr6, ptr %p.addr, align 8, !tbaa !4
  %16 = load i32, ptr %z, align 4, !tbaa !8
  %17 = load i32, ptr %w, align 4, !tbaa !8
  %sub = sub nsw i32 %17, %16
  store i32 %sub, ptr %w, align 4, !tbaa !8
  %18 = load i32, ptr %y, align 4, !tbaa !8
  %19 = load i32, ptr %z, align 4, !tbaa !8
  %sub7 = sub nsw i32 %19, %18
  store i32 %sub7, ptr %z, align 4, !tbaa !8
  %20 = load i32, ptr %x, align 4, !tbaa !8
  %21 = load i32, ptr %y, align 4, !tbaa !8
  %sub8 = sub nsw i32 %21, %20
  store i32 %sub8, ptr %y, align 4, !tbaa !8
  %22 = load i32, ptr %z, align 4, !tbaa !8
  %23 = load i32, ptr %w, align 4, !tbaa !8
  %sub9 = sub nsw i32 %23, %22
  store i32 %sub9, ptr %w, align 4, !tbaa !8
  %24 = load i32, ptr %y, align 4, !tbaa !8
  %25 = load i32, ptr %z, align 4, !tbaa !8
  %sub10 = sub nsw i32 %25, %24
  store i32 %sub10, ptr %z, align 4, !tbaa !8
  %26 = load i32, ptr %z, align 4, !tbaa !8
  %27 = load i32, ptr %w, align 4, !tbaa !8
  %sub11 = sub nsw i32 %27, %26
  store i32 %sub11, ptr %w, align 4, !tbaa !8
  %28 = load i32, ptr %s.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext12 = zext i32 %28 to i64
  %idx.neg = sub i64 0, %idx.ext12
  %add.ptr13 = getelementptr inbounds i32, ptr %29, i64 %idx.neg
  store ptr %add.ptr13, ptr %p.addr, align 8, !tbaa !4
  %30 = load i32, ptr %w, align 4, !tbaa !8
  %31 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %30, ptr %31, align 4, !tbaa !8
  %32 = load i32, ptr %s.addr, align 4, !tbaa !8
  %33 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext14 = zext i32 %32 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds i32, ptr %33, i64 %idx.neg15
  store ptr %add.ptr16, ptr %p.addr, align 8, !tbaa !4
  %34 = load i32, ptr %z, align 4, !tbaa !8
  %35 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %34, ptr %35, align 4, !tbaa !8
  %36 = load i32, ptr %s.addr, align 4, !tbaa !8
  %37 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext17 = zext i32 %36 to i64
  %idx.neg18 = sub i64 0, %idx.ext17
  %add.ptr19 = getelementptr inbounds i32, ptr %37, i64 %idx.neg18
  store ptr %add.ptr19, ptr %p.addr, align 8, !tbaa !4
  %38 = load i32, ptr %y, align 4, !tbaa !8
  %39 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %38, ptr %39, align 4, !tbaa !8
  %40 = load i32, ptr %s.addr, align 4, !tbaa !8
  %41 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %idx.ext20 = zext i32 %40 to i64
  %idx.neg21 = sub i64 0, %idx.ext20
  %add.ptr22 = getelementptr inbounds i32, ptr %41, i64 %idx.neg21
  store ptr %add.ptr22, ptr %p.addr, align 8, !tbaa !4
  %42 = load i32, ptr %x, align 4, !tbaa !8
  %43 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store i32 %42, ptr %43, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!10 = !{!11, !9, i64 12}
!11 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !5, i64 16, !12, i64 24}
!12 = !{!"", !6, i64 0, !5, i64 8}
!13 = !{!11, !5, i64 16}
!14 = !{!11, !9, i64 0}
!15 = !{!11, !9, i64 4}
!16 = !{!11, !9, i64 8}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !18, i64 0}
!21 = !{!"bitstream", !18, i64 0, !6, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!22 = !{!21, !6, i64 8}
!23 = !{i64 0, i64 8, !17, i64 8, i64 1, !19, i64 16, i64 8, !4, i64 24, i64 8, !4, i64 32, i64 8, !4}
!24 = !{!21, !5, i64 16}
!25 = !{!21, !5, i64 24}

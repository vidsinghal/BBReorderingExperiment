; ModuleID = 'samples/326.bc'
source_filename = "crypto/sha/sha3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keccak_st = type { [5 x [5 x i64]], i64, i64, i64, [168 x i8], i8, %struct.prov_sha3_meth_st }
%struct.prov_sha3_meth_st = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define void @ossl_sha3_reset(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.keccak_st, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [5 x [5 x i64]], ptr %A, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 200, i1 false)
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %bufsz = getelementptr inbounds %struct.keccak_st, ptr %1, i32 0, i32 3
  store i64 0, ptr %bufsz, align 8, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @ossl_sha3_init(ptr noundef %ctx, i8 noundef zeroext %pad, i64 noundef %bitlen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %pad.addr = alloca i8, align 1
  %bitlen.addr = alloca i64, align 8
  %bsz = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i8 %pad, ptr %pad.addr, align 1, !tbaa !12
  store i64 %bitlen, ptr %bitlen.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsz) #5
  %0 = load i64, ptr %bitlen.addr, align 8, !tbaa !13
  %mul = mul i64 %0, 2
  %sub = sub i64 1600, %mul
  %div = udiv i64 %sub, 8
  store i64 %div, ptr %bsz, align 8, !tbaa !13
  %1 = load i64, ptr %bsz, align 8, !tbaa !13
  %cmp = icmp ule i64 %1, 168
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @ossl_sha3_reset(ptr noundef %2)
  %3 = load i64, ptr %bsz, align 8, !tbaa !13
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.keccak_st, ptr %4, i32 0, i32 1
  store i64 %3, ptr %block_size, align 8, !tbaa !14
  %5 = load i64, ptr %bitlen.addr, align 8, !tbaa !13
  %div1 = udiv i64 %5, 8
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_size = getelementptr inbounds %struct.keccak_st, ptr %6, i32 0, i32 2
  store i64 %div1, ptr %md_size, align 8, !tbaa !15
  %7 = load i8, ptr %pad.addr, align 1, !tbaa !12
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pad2 = getelementptr inbounds %struct.keccak_st, ptr %8, i32 0, i32 5
  store i8 %7, ptr %pad2, align 8, !tbaa !16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsz) #5
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @ossl_keccak_kmac_init(ptr noundef %ctx, i8 noundef zeroext %pad, i64 noundef %bitlen) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %pad.addr = alloca i8, align 1
  %bitlen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i8 %pad, ptr %pad.addr, align 1, !tbaa !12
  store i64 %bitlen, ptr %bitlen.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load i8, ptr %pad.addr, align 1, !tbaa !12
  %2 = load i64, ptr %bitlen.addr, align 8, !tbaa !13
  %call = call i32 @ossl_sha3_init(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !17
  %3 = load i32, ptr %ret, align 4, !tbaa !17
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_size = getelementptr inbounds %struct.keccak_st, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %md_size, align 8, !tbaa !15
  %mul = mul i64 %5, 2
  store i64 %mul, ptr %md_size, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @ossl_sha3_update(ptr noundef %ctx, ptr noundef %_inp, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %_inp.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %inp = alloca ptr, align 8
  %bsz = alloca i64, align 8
  %num = alloca i64, align 8
  %rem = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %_inp, ptr %_inp.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %inp) #5
  %0 = load ptr, ptr %_inp.addr, align 8, !tbaa !4
  store ptr %0, ptr %inp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsz) #5
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.keccak_st, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %block_size, align 8, !tbaa !14
  store i64 %2, ptr %bsz, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #5
  %3 = load i64, ptr %len.addr, align 8, !tbaa !13
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %bufsz = getelementptr inbounds %struct.keccak_st, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %bufsz, align 8, !tbaa !8
  store i64 %5, ptr %num, align 8, !tbaa !13
  %cmp1 = icmp ne i64 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end16

if.then2:                                         ; preds = %if.end
  %6 = load i64, ptr %bsz, align 8, !tbaa !13
  %7 = load i64, ptr %num, align 8, !tbaa !13
  %sub = sub i64 %6, %7
  store i64 %sub, ptr %rem, align 8, !tbaa !13
  %8 = load i64, ptr %len.addr, align 8, !tbaa !13
  %9 = load i64, ptr %rem, align 8, !tbaa !13
  %cmp3 = icmp ult i64 %8, %9
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf = getelementptr inbounds %struct.keccak_st, ptr %10, i32 0, i32 4
  %arraydecay = getelementptr inbounds [168 x i8], ptr %buf, i64 0, i64 0
  %11 = load i64, ptr %num, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %11
  %12 = load ptr, ptr %inp, align 8, !tbaa !4
  %13 = load i64, ptr %len.addr, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %12, i64 %13, i1 false)
  %14 = load i64, ptr %len.addr, align 8, !tbaa !13
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %bufsz5 = getelementptr inbounds %struct.keccak_st, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %bufsz5, align 8, !tbaa !8
  %add = add i64 %16, %14
  store i64 %add, ptr %bufsz5, align 8, !tbaa !8
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf7 = getelementptr inbounds %struct.keccak_st, ptr %17, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [168 x i8], ptr %buf7, i64 0, i64 0
  %18 = load i64, ptr %num, align 8, !tbaa !13
  %add.ptr9 = getelementptr inbounds i8, ptr %arraydecay8, i64 %18
  %19 = load ptr, ptr %inp, align 8, !tbaa !4
  %20 = load i64, ptr %rem, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr9, ptr align 1 %19, i64 %20, i1 false)
  %21 = load i64, ptr %rem, align 8, !tbaa !13
  %22 = load ptr, ptr %inp, align 8, !tbaa !4
  %add.ptr10 = getelementptr inbounds i8, ptr %22, i64 %21
  store ptr %add.ptr10, ptr %inp, align 8, !tbaa !4
  %23 = load i64, ptr %rem, align 8, !tbaa !13
  %24 = load i64, ptr %len.addr, align 8, !tbaa !13
  %sub11 = sub i64 %24, %23
  store i64 %sub11, ptr %len.addr, align 8, !tbaa !13
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.keccak_st, ptr %25, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [5 x [5 x i64]], ptr %A, i64 0, i64 0
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf13 = getelementptr inbounds %struct.keccak_st, ptr %26, i32 0, i32 4
  %arraydecay14 = getelementptr inbounds [168 x i8], ptr %buf13, i64 0, i64 0
  %27 = load i64, ptr %bsz, align 8, !tbaa !13
  %28 = load i64, ptr %bsz, align 8, !tbaa !13
  %call = call i64 @SHA3_absorb(ptr noundef %arraydecay12, ptr noundef %arraydecay14, i64 noundef %27, i64 noundef %28)
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %bufsz15 = getelementptr inbounds %struct.keccak_st, ptr %29, i32 0, i32 3
  store i64 0, ptr %bufsz15, align 8, !tbaa !8
  br label %if.end16

if.end16:                                         ; preds = %if.end6, %if.end
  %30 = load i64, ptr %len.addr, align 8, !tbaa !13
  %31 = load i64, ptr %bsz, align 8, !tbaa !13
  %cmp17 = icmp uge i64 %30, %31
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %A19 = getelementptr inbounds %struct.keccak_st, ptr %32, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [5 x [5 x i64]], ptr %A19, i64 0, i64 0
  %33 = load ptr, ptr %inp, align 8, !tbaa !4
  %34 = load i64, ptr %len.addr, align 8, !tbaa !13
  %35 = load i64, ptr %bsz, align 8, !tbaa !13
  %call21 = call i64 @SHA3_absorb(ptr noundef %arraydecay20, ptr noundef %33, i64 noundef %34, i64 noundef %35)
  store i64 %call21, ptr %rem, align 8, !tbaa !13
  br label %if.end22

if.else:                                          ; preds = %if.end16
  %36 = load i64, ptr %len.addr, align 8, !tbaa !13
  store i64 %36, ptr %rem, align 8, !tbaa !13
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %37 = load i64, ptr %rem, align 8, !tbaa !13
  %tobool = icmp ne i64 %37, 0
  br i1 %tobool, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end22
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf24 = getelementptr inbounds %struct.keccak_st, ptr %38, i32 0, i32 4
  %arraydecay25 = getelementptr inbounds [168 x i8], ptr %buf24, i64 0, i64 0
  %39 = load ptr, ptr %inp, align 8, !tbaa !4
  %40 = load i64, ptr %len.addr, align 8, !tbaa !13
  %add.ptr26 = getelementptr inbounds i8, ptr %39, i64 %40
  %41 = load i64, ptr %rem, align 8, !tbaa !13
  %idx.neg = sub i64 0, %41
  %add.ptr27 = getelementptr inbounds i8, ptr %add.ptr26, i64 %idx.neg
  %42 = load i64, ptr %rem, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay25, ptr align 1 %add.ptr27, i64 %42, i1 false)
  %43 = load i64, ptr %rem, align 8, !tbaa !13
  %44 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %bufsz28 = getelementptr inbounds %struct.keccak_st, ptr %44, i32 0, i32 3
  store i64 %43, ptr %bufsz28, align 8, !tbaa !8
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsz) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %inp) #5
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i64 @SHA3_absorb(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define i32 @ossl_sha3_final(ptr noundef %md, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %md.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bsz = alloca i64, align 8
  %num = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %md, ptr %md.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsz) #5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.keccak_st, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %block_size, align 8, !tbaa !14
  store i64 %1, ptr %bsz, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #5
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %bufsz = getelementptr inbounds %struct.keccak_st, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %bufsz, align 8, !tbaa !8
  store i64 %3, ptr %num, align 8, !tbaa !13
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_size = getelementptr inbounds %struct.keccak_st, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %md_size, align 8, !tbaa !15
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf = getelementptr inbounds %struct.keccak_st, ptr %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [168 x i8], ptr %buf, i64 0, i64 0
  %7 = load i64, ptr %num, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %7
  %8 = load i64, ptr %bsz, align 8, !tbaa !13
  %9 = load i64, ptr %num, align 8, !tbaa !13
  %sub = sub i64 %8, %9
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pad = getelementptr inbounds %struct.keccak_st, ptr %10, i32 0, i32 5
  %11 = load i8, ptr %pad, align 8, !tbaa !16
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf1 = getelementptr inbounds %struct.keccak_st, ptr %12, i32 0, i32 4
  %13 = load i64, ptr %num, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds [168 x i8], ptr %buf1, i64 0, i64 %13
  store i8 %11, ptr %arrayidx, align 1, !tbaa !12
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf2 = getelementptr inbounds %struct.keccak_st, ptr %14, i32 0, i32 4
  %15 = load i64, ptr %bsz, align 8, !tbaa !13
  %sub3 = sub i64 %15, 1
  %arrayidx4 = getelementptr inbounds [168 x i8], ptr %buf2, i64 0, i64 %sub3
  %16 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv = zext i8 %16 to i32
  %or = or i32 %conv, 128
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, ptr %arrayidx4, align 1, !tbaa !12
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.keccak_st, ptr %17, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [5 x [5 x i64]], ptr %A, i64 0, i64 0
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buf7 = getelementptr inbounds %struct.keccak_st, ptr %18, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [168 x i8], ptr %buf7, i64 0, i64 0
  %19 = load i64, ptr %bsz, align 8, !tbaa !13
  %20 = load i64, ptr %bsz, align 8, !tbaa !13
  %call = call i64 @SHA3_absorb(ptr noundef %arraydecay6, ptr noundef %arraydecay8, i64 noundef %19, i64 noundef %20)
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %A9 = getelementptr inbounds %struct.keccak_st, ptr %21, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [5 x [5 x i64]], ptr %A9, i64 0, i64 0
  %22 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_size11 = getelementptr inbounds %struct.keccak_st, ptr %23, i32 0, i32 2
  %24 = load i64, ptr %md_size11, align 8, !tbaa !15
  %25 = load i64, ptr %bsz, align 8, !tbaa !13
  call void @SHA3_squeeze(ptr noundef %arraydecay10, ptr noundef %22, i64 noundef %24, i64 noundef %25)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsz) #5
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

declare void @SHA3_squeeze(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

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
!8 = !{!9, !10, i64 216}
!9 = !{!"keccak_st", !6, i64 0, !10, i64 200, !10, i64 208, !10, i64 216, !6, i64 224, !6, i64 392, !11, i64 400}
!10 = !{!"long", !6, i64 0}
!11 = !{!"prov_sha3_meth_st", !5, i64 0, !5, i64 8}
!12 = !{!6, !6, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!9, !10, i64 200}
!15 = !{!9, !10, i64 208}
!16 = !{!9, !6, i64 392}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !6, i64 0}

; ModuleID = 'samples/165.bc'
source_filename = "/local-ssd/seal-juilxrbn6qmqyewogvhbtmpxswk7i356-build/aidengro/spack-stage-seal-4.1.1-juilxrbn6qmqyewogvhbtmpxswk7i356/spack-src/native/src/seal/util/fips202.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keccak_state = type { [25 x i64] }

@KeccakF_RoundConstants = internal constant [24 x i64] [i64 1, i64 32898, i64 -9223372036854742902, i64 -9223372034707259392, i64 32907, i64 2147483649, i64 -9223372034707259263, i64 -9223372036854743031, i64 138, i64 136, i64 2147516425, i64 2147483658, i64 2147516555, i64 -9223372036854775669, i64 -9223372036854742903, i64 -9223372036854743037, i64 -9223372036854743038, i64 -9223372036854775680, i64 32778, i64 -9223372034707292150, i64 -9223372034707259263, i64 -9223372036854742912, i64 2147483649, i64 -9223372034707259384], align 16

; Function Attrs: nounwind uwtable
define void @shake128_absorb(ptr noundef %state, ptr noundef %in, i64 noundef %inlen) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.keccak_state, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %inlen.addr, align 8, !tbaa !8
  call void @keccak_absorb(ptr noundef %arraydecay, i32 noundef 168, ptr noundef %1, i64 noundef %2, i8 noundef zeroext 31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @keccak_absorb(ptr noundef %s, i32 noundef %r, ptr noundef %m, i64 noundef %mlen, i8 noundef zeroext %p) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %mlen.addr = alloca i64, align 8
  %p.addr = alloca i8, align 1
  %i = alloca i64, align 8
  %t = alloca [200 x i8], align 16
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %r, ptr %r.addr, align 4, !tbaa !10
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store i64 %mlen, ptr %mlen.addr, align 8, !tbaa !8
  store i8 %p, ptr %p.addr, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 200, ptr %t) #3
  call void @llvm.memset.p0.i64(ptr align 16 %t, i8 0, i64 200, i1 false)
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !8
  %cmp = icmp ult i64 %0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %2 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %2
  store i64 0, ptr %arrayidx, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end11, %for.end
  %4 = load i64, ptr %mlen.addr, align 8, !tbaa !8
  %5 = load i32, ptr %r.addr, align 4, !tbaa !10
  %conv = zext i32 %5 to i64
  %cmp1 = icmp uge i64 %4, %conv
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %while.body
  %6 = load i64, ptr %i, align 8, !tbaa !8
  %7 = load i32, ptr %r.addr, align 4, !tbaa !10
  %div = udiv i32 %7, 8
  %conv4 = zext i32 %div to i64
  %cmp5 = icmp ult i64 %6, %conv4
  br i1 %cmp5, label %for.body7, label %for.end11

for.body7:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %9 = load i64, ptr %i, align 8, !tbaa !8
  %mul = mul i64 8, %9
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %mul
  %call = call i64 @load64(ptr noundef %add.ptr)
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %11 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds i64, ptr %10, i64 %11
  %12 = load i64, ptr %arrayidx8, align 8, !tbaa !8
  %xor = xor i64 %12, %call
  store i64 %xor, ptr %arrayidx8, align 8, !tbaa !8
  br label %for.inc9

for.inc9:                                         ; preds = %for.body7
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %inc10 = add i64 %13, 1
  store i64 %inc10, ptr %i, align 8, !tbaa !8
  br label %for.cond3, !llvm.loop !15

for.end11:                                        ; preds = %for.cond3
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !4
  call void @KeccakF1600_StatePermute(ptr noundef %14)
  %15 = load i32, ptr %r.addr, align 4, !tbaa !10
  %conv12 = zext i32 %15 to i64
  %16 = load i64, ptr %mlen.addr, align 8, !tbaa !8
  %sub = sub i64 %16, %conv12
  store i64 %sub, ptr %mlen.addr, align 8, !tbaa !8
  %17 = load i32, ptr %r.addr, align 4, !tbaa !10
  %18 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %idx.ext = zext i32 %17 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %18, i64 %idx.ext
  store ptr %add.ptr13, ptr %m.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc20, %while.end
  %19 = load i64, ptr %i, align 8, !tbaa !8
  %20 = load i64, ptr %mlen.addr, align 8, !tbaa !8
  %cmp15 = icmp ult i64 %19, %20
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond14
  %21 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %22 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx18 = getelementptr inbounds i8, ptr %21, i64 %22
  %23 = load i8, ptr %arrayidx18, align 1, !tbaa !12
  %24 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx19 = getelementptr inbounds [200 x i8], ptr %t, i64 0, i64 %24
  store i8 %23, ptr %arrayidx19, align 1, !tbaa !12
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %25 = load i64, ptr %i, align 8, !tbaa !8
  %inc21 = add i64 %25, 1
  store i64 %inc21, ptr %i, align 8, !tbaa !8
  br label %for.cond14, !llvm.loop !17

for.end22:                                        ; preds = %for.cond14
  %26 = load i8, ptr %p.addr, align 1, !tbaa !12
  %27 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx23 = getelementptr inbounds [200 x i8], ptr %t, i64 0, i64 %27
  store i8 %26, ptr %arrayidx23, align 1, !tbaa !12
  %28 = load i32, ptr %r.addr, align 4, !tbaa !10
  %sub24 = sub i32 %28, 1
  %idxprom = zext i32 %sub24 to i64
  %arrayidx25 = getelementptr inbounds [200 x i8], ptr %t, i64 0, i64 %idxprom
  %29 = load i8, ptr %arrayidx25, align 1, !tbaa !12
  %conv26 = zext i8 %29 to i32
  %or = or i32 %conv26, 128
  %conv27 = trunc i32 %or to i8
  store i8 %conv27, ptr %arrayidx25, align 1, !tbaa !12
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc39, %for.end22
  %30 = load i64, ptr %i, align 8, !tbaa !8
  %31 = load i32, ptr %r.addr, align 4, !tbaa !10
  %div29 = udiv i32 %31, 8
  %conv30 = zext i32 %div29 to i64
  %cmp31 = icmp ult i64 %30, %conv30
  br i1 %cmp31, label %for.body33, label %for.end41

for.body33:                                       ; preds = %for.cond28
  %arraydecay = getelementptr inbounds [200 x i8], ptr %t, i64 0, i64 0
  %32 = load i64, ptr %i, align 8, !tbaa !8
  %mul34 = mul i64 8, %32
  %add.ptr35 = getelementptr inbounds i8, ptr %arraydecay, i64 %mul34
  %call36 = call i64 @load64(ptr noundef %add.ptr35)
  %33 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %34 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx37 = getelementptr inbounds i64, ptr %33, i64 %34
  %35 = load i64, ptr %arrayidx37, align 8, !tbaa !8
  %xor38 = xor i64 %35, %call36
  store i64 %xor38, ptr %arrayidx37, align 8, !tbaa !8
  br label %for.inc39

for.inc39:                                        ; preds = %for.body33
  %36 = load i64, ptr %i, align 8, !tbaa !8
  %inc40 = add i64 %36, 1
  store i64 %inc40, ptr %i, align 8, !tbaa !8
  br label %for.cond28, !llvm.loop !18

for.end41:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 200, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @shake128_squeezeblocks(ptr noundef %out, i64 noundef %nblocks, ptr noundef %state) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %nblocks.addr = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i64 %nblocks, ptr %nblocks.addr, align 8, !tbaa !8
  store ptr %state, ptr %state.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load i64, ptr %nblocks.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.keccak_state, ptr %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  call void @keccak_squeezeblocks(ptr noundef %0, i64 noundef %1, ptr noundef %arraydecay, i32 noundef 168)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @keccak_squeezeblocks(ptr noundef %out, i64 noundef %nblocks, ptr noundef %s, i32 noundef %r) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %nblocks.addr = alloca i64, align 8
  %s.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i64 %nblocks, ptr %nblocks.addr, align 8, !tbaa !8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store i32 %r, ptr %r.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, ptr %nblocks.addr, align 8, !tbaa !8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !4
  call void @KeccakF1600_StatePermute(ptr noundef %1)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %3 = load i32, ptr %r.addr, align 4, !tbaa !10
  %div = udiv i32 %3, 8
  %cmp1 = icmp ult i32 %2, %div
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %mul = mul i32 8, %5
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom
  %8 = load i64, ptr %arrayidx, align 8, !tbaa !8
  call void @store64(ptr noundef %add.ptr, i64 noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %r.addr, align 4, !tbaa !10
  %11 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %idx.ext2 = zext i32 %10 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %11, i64 %idx.ext2
  store ptr %add.ptr3, ptr %out.addr, align 8, !tbaa !4
  %12 = load i64, ptr %nblocks.addr, align 8, !tbaa !8
  %dec = add i64 %12, -1
  store i64 %dec, ptr %nblocks.addr, align 8, !tbaa !8
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @shake256_absorb(ptr noundef %state, ptr noundef %in, i64 noundef %inlen) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.keccak_state, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %inlen.addr, align 8, !tbaa !8
  call void @keccak_absorb(ptr noundef %arraydecay, i32 noundef 136, ptr noundef %1, i64 noundef %2, i8 noundef zeroext 31)
  ret void
}

; Function Attrs: nounwind uwtable
define void @shake256_squeezeblocks(ptr noundef %out, i64 noundef %nblocks, ptr noundef %state) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %nblocks.addr = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i64 %nblocks, ptr %nblocks.addr, align 8, !tbaa !8
  store ptr %state, ptr %state.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %1 = load i64, ptr %nblocks.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %s = getelementptr inbounds %struct.keccak_state, ptr %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  call void @keccak_squeezeblocks(ptr noundef %0, i64 noundef %1, ptr noundef %arraydecay, i32 noundef 136)
  ret void
}

; Function Attrs: nounwind uwtable
define void @shake128(ptr noundef %out, i64 noundef %outlen, ptr noundef %in, i64 noundef %inlen) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca i64, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %nblocks = alloca i64, align 8
  %t = alloca [168 x i8], align 16
  %state = alloca %struct.keccak_state, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i64 %outlen, ptr %outlen.addr, align 8, !tbaa !8
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nblocks) #3
  %0 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %div = udiv i64 %0, 168
  store i64 %div, ptr %nblocks, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 168, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 200, ptr %state) #3
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %inlen.addr, align 8, !tbaa !8
  call void @shake128_absorb(ptr noundef %state, ptr noundef %1, i64 noundef %2)
  %3 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %4 = load i64, ptr %nblocks, align 8, !tbaa !8
  call void @shake128_squeezeblocks(ptr noundef %3, i64 noundef %4, ptr noundef %state)
  %5 = load i64, ptr %nblocks, align 8, !tbaa !8
  %mul = mul i64 %5, 168
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %mul
  store ptr %add.ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load i64, ptr %nblocks, align 8, !tbaa !8
  %mul1 = mul i64 %7, 168
  %8 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %sub = sub i64 %8, %mul1
  store i64 %sub, ptr %outlen.addr, align 8, !tbaa !8
  %9 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [168 x i8], ptr %t, i64 0, i64 0
  call void @shake128_squeezeblocks(ptr noundef %arraydecay, i64 noundef 1, ptr noundef %state)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !tbaa !10
  %conv = zext i32 %10 to i64
  %11 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %conv, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [168 x i8], ptr %t, i64 0, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %14 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom3 = zext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %14, i64 %idxprom3
  store i8 %13, ptr %arrayidx4, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 200, ptr %state) #3
  call void @llvm.lifetime.end.p0(i64 168, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nblocks) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @shake256(ptr noundef %out, i64 noundef %outlen, ptr noundef %in, i64 noundef %inlen) #0 {
entry:
  %out.addr = alloca ptr, align 8
  %outlen.addr = alloca i64, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %nblocks = alloca i64, align 8
  %t = alloca [136 x i8], align 16
  %state = alloca %struct.keccak_state, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i64 %outlen, ptr %outlen.addr, align 8, !tbaa !8
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nblocks) #3
  %0 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %div = udiv i64 %0, 136
  store i64 %div, ptr %nblocks, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 136, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 200, ptr %state) #3
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %inlen.addr, align 8, !tbaa !8
  call void @shake256_absorb(ptr noundef %state, ptr noundef %1, i64 noundef %2)
  %3 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %4 = load i64, ptr %nblocks, align 8, !tbaa !8
  call void @shake256_squeezeblocks(ptr noundef %3, i64 noundef %4, ptr noundef %state)
  %5 = load i64, ptr %nblocks, align 8, !tbaa !8
  %mul = mul i64 %5, 136
  %6 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %mul
  store ptr %add.ptr, ptr %out.addr, align 8, !tbaa !4
  %7 = load i64, ptr %nblocks, align 8, !tbaa !8
  %mul1 = mul i64 %7, 136
  %8 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %sub = sub i64 %8, %mul1
  store i64 %sub, ptr %outlen.addr, align 8, !tbaa !8
  %9 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [136 x i8], ptr %t, i64 0, i64 0
  call void @shake256_squeezeblocks(ptr noundef %arraydecay, i64 noundef 1, ptr noundef %state)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !tbaa !10
  %conv = zext i32 %10 to i64
  %11 = load i64, ptr %outlen.addr, align 8, !tbaa !8
  %cmp = icmp ult i64 %conv, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds [136 x i8], ptr %t, i64 0, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %14 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom3 = zext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %14, i64 %idxprom3
  store i8 %13, ptr %arrayidx4, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 200, ptr %state) #3
  call void @llvm.lifetime.end.p0(i64 136, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nblocks) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha3_256(ptr noundef %h, ptr noundef %in, i64 noundef %inlen) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %s = alloca [25 x i64], align 16
  %t = alloca [136 x i8], align 16
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 200, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 136, ptr %t) #3
  %arraydecay = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  %0 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %1 = load i64, ptr %inlen.addr, align 8, !tbaa !8
  call void @keccak_absorb(ptr noundef %arraydecay, i32 noundef 136, ptr noundef %0, i64 noundef %1, i8 noundef zeroext 6)
  %arraydecay1 = getelementptr inbounds [136 x i8], ptr %t, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  call void @keccak_squeezeblocks(ptr noundef %arraydecay1, i64 noundef 1, ptr noundef %arraydecay2, i32 noundef 136)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %cmp = icmp ult i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [136 x i8], ptr %t, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %5 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom3 = zext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 %idxprom3
  store i8 %4, ptr %arrayidx4, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 136, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 200, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha3_512(ptr noundef %h, ptr noundef %in, i64 noundef %inlen) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %s = alloca [25 x i64], align 16
  %t = alloca [72 x i8], align 16
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 200, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 72, ptr %t) #3
  %arraydecay = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  %0 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %1 = load i64, ptr %inlen.addr, align 8, !tbaa !8
  call void @keccak_absorb(ptr noundef %arraydecay, i32 noundef 72, ptr noundef %0, i64 noundef %1, i8 noundef zeroext 6)
  %arraydecay1 = getelementptr inbounds [72 x i8], ptr %t, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [25 x i64], ptr %s, i64 0, i64 0
  call void @keccak_squeezeblocks(ptr noundef %arraydecay1, i64 noundef 1, ptr noundef %arraydecay2, i32 noundef 72)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %cmp = icmp ult i32 %2, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [72 x i8], ptr %t, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %5 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom3 = zext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 %idxprom3
  store i8 %4, ptr %arrayidx4, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 72, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 200, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal i64 @load64(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %r = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #3
  store i64 0, ptr %r, align 8, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %3 to i64
  %4 = load i32, ptr %i, align 4, !tbaa !10
  %mul = mul i32 8, %4
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 %conv, %sh_prom
  %5 = load i64, ptr %r, align 8, !tbaa !8
  %or = or i64 %5, %shl
  store i64 %or, ptr %r, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %r, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal void @KeccakF1600_StatePermute(ptr noundef %state) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %round = alloca i32, align 4
  %Aba = alloca i64, align 8
  %Abe = alloca i64, align 8
  %Abi = alloca i64, align 8
  %Abo = alloca i64, align 8
  %Abu = alloca i64, align 8
  %Aga = alloca i64, align 8
  %Age = alloca i64, align 8
  %Agi = alloca i64, align 8
  %Ago = alloca i64, align 8
  %Agu = alloca i64, align 8
  %Aka = alloca i64, align 8
  %Ake = alloca i64, align 8
  %Aki = alloca i64, align 8
  %Ako = alloca i64, align 8
  %Aku = alloca i64, align 8
  %Ama = alloca i64, align 8
  %Ame = alloca i64, align 8
  %Ami = alloca i64, align 8
  %Amo = alloca i64, align 8
  %Amu = alloca i64, align 8
  %Asa = alloca i64, align 8
  %Ase = alloca i64, align 8
  %Asi = alloca i64, align 8
  %Aso = alloca i64, align 8
  %Asu = alloca i64, align 8
  %BCa = alloca i64, align 8
  %BCe = alloca i64, align 8
  %BCi = alloca i64, align 8
  %BCo = alloca i64, align 8
  %BCu = alloca i64, align 8
  %Da = alloca i64, align 8
  %De = alloca i64, align 8
  %Di = alloca i64, align 8
  %Do = alloca i64, align 8
  %Du = alloca i64, align 8
  %Eba = alloca i64, align 8
  %Ebe = alloca i64, align 8
  %Ebi = alloca i64, align 8
  %Ebo = alloca i64, align 8
  %Ebu = alloca i64, align 8
  %Ega = alloca i64, align 8
  %Ege = alloca i64, align 8
  %Egi = alloca i64, align 8
  %Ego = alloca i64, align 8
  %Egu = alloca i64, align 8
  %Eka = alloca i64, align 8
  %Eke = alloca i64, align 8
  %Eki = alloca i64, align 8
  %Eko = alloca i64, align 8
  %Eku = alloca i64, align 8
  %Ema = alloca i64, align 8
  %Eme = alloca i64, align 8
  %Emi = alloca i64, align 8
  %Emo = alloca i64, align 8
  %Emu = alloca i64, align 8
  %Esa = alloca i64, align 8
  %Ese = alloca i64, align 8
  %Esi = alloca i64, align 8
  %Eso = alloca i64, align 8
  %Esu = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %round) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aba) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Abe) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Abi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Abo) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Abu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aga) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Age) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Agi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ago) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Agu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aka) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ake) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aki) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ako) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aku) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ama) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ame) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ami) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Amo) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Amu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Asa) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ase) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Asi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Aso) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Asu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %BCa) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %BCe) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %BCi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %BCo) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %BCu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Da) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %De) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Di) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Do) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Du) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eba) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebe) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebo) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ebu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ega) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ege) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Egi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ego) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Egu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eka) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eke) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eki) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eko) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eku) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ema) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eme) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Emi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Emo) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Emu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Esa) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ese) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Esi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eso) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Esu) #3
  %0 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !8
  store i64 %1, ptr %Aba, align 8, !tbaa !8
  %2 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i64, ptr %2, i64 1
  %3 = load i64, ptr %arrayidx1, align 8, !tbaa !8
  store i64 %3, ptr %Abe, align 8, !tbaa !8
  %4 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 2
  %5 = load i64, ptr %arrayidx2, align 8, !tbaa !8
  store i64 %5, ptr %Abi, align 8, !tbaa !8
  %6 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx3 = getelementptr inbounds i64, ptr %6, i64 3
  %7 = load i64, ptr %arrayidx3, align 8, !tbaa !8
  store i64 %7, ptr %Abo, align 8, !tbaa !8
  %8 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i64, ptr %8, i64 4
  %9 = load i64, ptr %arrayidx4, align 8, !tbaa !8
  store i64 %9, ptr %Abu, align 8, !tbaa !8
  %10 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i64, ptr %10, i64 5
  %11 = load i64, ptr %arrayidx5, align 8, !tbaa !8
  store i64 %11, ptr %Aga, align 8, !tbaa !8
  %12 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds i64, ptr %12, i64 6
  %13 = load i64, ptr %arrayidx6, align 8, !tbaa !8
  store i64 %13, ptr %Age, align 8, !tbaa !8
  %14 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i64, ptr %14, i64 7
  %15 = load i64, ptr %arrayidx7, align 8, !tbaa !8
  store i64 %15, ptr %Agi, align 8, !tbaa !8
  %16 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i64, ptr %16, i64 8
  %17 = load i64, ptr %arrayidx8, align 8, !tbaa !8
  store i64 %17, ptr %Ago, align 8, !tbaa !8
  %18 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i64, ptr %18, i64 9
  %19 = load i64, ptr %arrayidx9, align 8, !tbaa !8
  store i64 %19, ptr %Agu, align 8, !tbaa !8
  %20 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i64, ptr %20, i64 10
  %21 = load i64, ptr %arrayidx10, align 8, !tbaa !8
  store i64 %21, ptr %Aka, align 8, !tbaa !8
  %22 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i64, ptr %22, i64 11
  %23 = load i64, ptr %arrayidx11, align 8, !tbaa !8
  store i64 %23, ptr %Ake, align 8, !tbaa !8
  %24 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds i64, ptr %24, i64 12
  %25 = load i64, ptr %arrayidx12, align 8, !tbaa !8
  store i64 %25, ptr %Aki, align 8, !tbaa !8
  %26 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i64, ptr %26, i64 13
  %27 = load i64, ptr %arrayidx13, align 8, !tbaa !8
  store i64 %27, ptr %Ako, align 8, !tbaa !8
  %28 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i64, ptr %28, i64 14
  %29 = load i64, ptr %arrayidx14, align 8, !tbaa !8
  store i64 %29, ptr %Aku, align 8, !tbaa !8
  %30 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds i64, ptr %30, i64 15
  %31 = load i64, ptr %arrayidx15, align 8, !tbaa !8
  store i64 %31, ptr %Ama, align 8, !tbaa !8
  %32 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds i64, ptr %32, i64 16
  %33 = load i64, ptr %arrayidx16, align 8, !tbaa !8
  store i64 %33, ptr %Ame, align 8, !tbaa !8
  %34 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx17 = getelementptr inbounds i64, ptr %34, i64 17
  %35 = load i64, ptr %arrayidx17, align 8, !tbaa !8
  store i64 %35, ptr %Ami, align 8, !tbaa !8
  %36 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i64, ptr %36, i64 18
  %37 = load i64, ptr %arrayidx18, align 8, !tbaa !8
  store i64 %37, ptr %Amo, align 8, !tbaa !8
  %38 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds i64, ptr %38, i64 19
  %39 = load i64, ptr %arrayidx19, align 8, !tbaa !8
  store i64 %39, ptr %Amu, align 8, !tbaa !8
  %40 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds i64, ptr %40, i64 20
  %41 = load i64, ptr %arrayidx20, align 8, !tbaa !8
  store i64 %41, ptr %Asa, align 8, !tbaa !8
  %42 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds i64, ptr %42, i64 21
  %43 = load i64, ptr %arrayidx21, align 8, !tbaa !8
  store i64 %43, ptr %Ase, align 8, !tbaa !8
  %44 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i64, ptr %44, i64 22
  %45 = load i64, ptr %arrayidx22, align 8, !tbaa !8
  store i64 %45, ptr %Asi, align 8, !tbaa !8
  %46 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx23 = getelementptr inbounds i64, ptr %46, i64 23
  %47 = load i64, ptr %arrayidx23, align 8, !tbaa !8
  store i64 %47, ptr %Aso, align 8, !tbaa !8
  %48 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds i64, ptr %48, i64 24
  %49 = load i64, ptr %arrayidx24, align 8, !tbaa !8
  store i64 %49, ptr %Asu, align 8, !tbaa !8
  store i32 0, ptr %round, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %50 = load i32, ptr %round, align 4, !tbaa !10
  %cmp = icmp slt i32 %50, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i64, ptr %Aba, align 8, !tbaa !8
  %52 = load i64, ptr %Aga, align 8, !tbaa !8
  %xor = xor i64 %51, %52
  %53 = load i64, ptr %Aka, align 8, !tbaa !8
  %xor25 = xor i64 %xor, %53
  %54 = load i64, ptr %Ama, align 8, !tbaa !8
  %xor26 = xor i64 %xor25, %54
  %55 = load i64, ptr %Asa, align 8, !tbaa !8
  %xor27 = xor i64 %xor26, %55
  store i64 %xor27, ptr %BCa, align 8, !tbaa !8
  %56 = load i64, ptr %Abe, align 8, !tbaa !8
  %57 = load i64, ptr %Age, align 8, !tbaa !8
  %xor28 = xor i64 %56, %57
  %58 = load i64, ptr %Ake, align 8, !tbaa !8
  %xor29 = xor i64 %xor28, %58
  %59 = load i64, ptr %Ame, align 8, !tbaa !8
  %xor30 = xor i64 %xor29, %59
  %60 = load i64, ptr %Ase, align 8, !tbaa !8
  %xor31 = xor i64 %xor30, %60
  store i64 %xor31, ptr %BCe, align 8, !tbaa !8
  %61 = load i64, ptr %Abi, align 8, !tbaa !8
  %62 = load i64, ptr %Agi, align 8, !tbaa !8
  %xor32 = xor i64 %61, %62
  %63 = load i64, ptr %Aki, align 8, !tbaa !8
  %xor33 = xor i64 %xor32, %63
  %64 = load i64, ptr %Ami, align 8, !tbaa !8
  %xor34 = xor i64 %xor33, %64
  %65 = load i64, ptr %Asi, align 8, !tbaa !8
  %xor35 = xor i64 %xor34, %65
  store i64 %xor35, ptr %BCi, align 8, !tbaa !8
  %66 = load i64, ptr %Abo, align 8, !tbaa !8
  %67 = load i64, ptr %Ago, align 8, !tbaa !8
  %xor36 = xor i64 %66, %67
  %68 = load i64, ptr %Ako, align 8, !tbaa !8
  %xor37 = xor i64 %xor36, %68
  %69 = load i64, ptr %Amo, align 8, !tbaa !8
  %xor38 = xor i64 %xor37, %69
  %70 = load i64, ptr %Aso, align 8, !tbaa !8
  %xor39 = xor i64 %xor38, %70
  store i64 %xor39, ptr %BCo, align 8, !tbaa !8
  %71 = load i64, ptr %Abu, align 8, !tbaa !8
  %72 = load i64, ptr %Agu, align 8, !tbaa !8
  %xor40 = xor i64 %71, %72
  %73 = load i64, ptr %Aku, align 8, !tbaa !8
  %xor41 = xor i64 %xor40, %73
  %74 = load i64, ptr %Amu, align 8, !tbaa !8
  %xor42 = xor i64 %xor41, %74
  %75 = load i64, ptr %Asu, align 8, !tbaa !8
  %xor43 = xor i64 %xor42, %75
  store i64 %xor43, ptr %BCu, align 8, !tbaa !8
  %76 = load i64, ptr %BCu, align 8, !tbaa !8
  %77 = load i64, ptr %BCe, align 8, !tbaa !8
  %shl = shl i64 %77, 1
  %78 = load i64, ptr %BCe, align 8, !tbaa !8
  %shr = lshr i64 %78, 63
  %xor44 = xor i64 %shl, %shr
  %xor45 = xor i64 %76, %xor44
  store i64 %xor45, ptr %Da, align 8, !tbaa !8
  %79 = load i64, ptr %BCa, align 8, !tbaa !8
  %80 = load i64, ptr %BCi, align 8, !tbaa !8
  %shl46 = shl i64 %80, 1
  %81 = load i64, ptr %BCi, align 8, !tbaa !8
  %shr47 = lshr i64 %81, 63
  %xor48 = xor i64 %shl46, %shr47
  %xor49 = xor i64 %79, %xor48
  store i64 %xor49, ptr %De, align 8, !tbaa !8
  %82 = load i64, ptr %BCe, align 8, !tbaa !8
  %83 = load i64, ptr %BCo, align 8, !tbaa !8
  %shl50 = shl i64 %83, 1
  %84 = load i64, ptr %BCo, align 8, !tbaa !8
  %shr51 = lshr i64 %84, 63
  %xor52 = xor i64 %shl50, %shr51
  %xor53 = xor i64 %82, %xor52
  store i64 %xor53, ptr %Di, align 8, !tbaa !8
  %85 = load i64, ptr %BCi, align 8, !tbaa !8
  %86 = load i64, ptr %BCu, align 8, !tbaa !8
  %shl54 = shl i64 %86, 1
  %87 = load i64, ptr %BCu, align 8, !tbaa !8
  %shr55 = lshr i64 %87, 63
  %xor56 = xor i64 %shl54, %shr55
  %xor57 = xor i64 %85, %xor56
  store i64 %xor57, ptr %Do, align 8, !tbaa !8
  %88 = load i64, ptr %BCo, align 8, !tbaa !8
  %89 = load i64, ptr %BCa, align 8, !tbaa !8
  %shl58 = shl i64 %89, 1
  %90 = load i64, ptr %BCa, align 8, !tbaa !8
  %shr59 = lshr i64 %90, 63
  %xor60 = xor i64 %shl58, %shr59
  %xor61 = xor i64 %88, %xor60
  store i64 %xor61, ptr %Du, align 8, !tbaa !8
  %91 = load i64, ptr %Da, align 8, !tbaa !8
  %92 = load i64, ptr %Aba, align 8, !tbaa !8
  %xor62 = xor i64 %92, %91
  store i64 %xor62, ptr %Aba, align 8, !tbaa !8
  %93 = load i64, ptr %Aba, align 8, !tbaa !8
  store i64 %93, ptr %BCa, align 8, !tbaa !8
  %94 = load i64, ptr %De, align 8, !tbaa !8
  %95 = load i64, ptr %Age, align 8, !tbaa !8
  %xor63 = xor i64 %95, %94
  store i64 %xor63, ptr %Age, align 8, !tbaa !8
  %96 = load i64, ptr %Age, align 8, !tbaa !8
  %shl64 = shl i64 %96, 44
  %97 = load i64, ptr %Age, align 8, !tbaa !8
  %shr65 = lshr i64 %97, 20
  %xor66 = xor i64 %shl64, %shr65
  store i64 %xor66, ptr %BCe, align 8, !tbaa !8
  %98 = load i64, ptr %Di, align 8, !tbaa !8
  %99 = load i64, ptr %Aki, align 8, !tbaa !8
  %xor67 = xor i64 %99, %98
  store i64 %xor67, ptr %Aki, align 8, !tbaa !8
  %100 = load i64, ptr %Aki, align 8, !tbaa !8
  %shl68 = shl i64 %100, 43
  %101 = load i64, ptr %Aki, align 8, !tbaa !8
  %shr69 = lshr i64 %101, 21
  %xor70 = xor i64 %shl68, %shr69
  store i64 %xor70, ptr %BCi, align 8, !tbaa !8
  %102 = load i64, ptr %Do, align 8, !tbaa !8
  %103 = load i64, ptr %Amo, align 8, !tbaa !8
  %xor71 = xor i64 %103, %102
  store i64 %xor71, ptr %Amo, align 8, !tbaa !8
  %104 = load i64, ptr %Amo, align 8, !tbaa !8
  %shl72 = shl i64 %104, 21
  %105 = load i64, ptr %Amo, align 8, !tbaa !8
  %shr73 = lshr i64 %105, 43
  %xor74 = xor i64 %shl72, %shr73
  store i64 %xor74, ptr %BCo, align 8, !tbaa !8
  %106 = load i64, ptr %Du, align 8, !tbaa !8
  %107 = load i64, ptr %Asu, align 8, !tbaa !8
  %xor75 = xor i64 %107, %106
  store i64 %xor75, ptr %Asu, align 8, !tbaa !8
  %108 = load i64, ptr %Asu, align 8, !tbaa !8
  %shl76 = shl i64 %108, 14
  %109 = load i64, ptr %Asu, align 8, !tbaa !8
  %shr77 = lshr i64 %109, 50
  %xor78 = xor i64 %shl76, %shr77
  store i64 %xor78, ptr %BCu, align 8, !tbaa !8
  %110 = load i64, ptr %BCa, align 8, !tbaa !8
  %111 = load i64, ptr %BCe, align 8, !tbaa !8
  %not = xor i64 %111, -1
  %112 = load i64, ptr %BCi, align 8, !tbaa !8
  %and = and i64 %not, %112
  %xor79 = xor i64 %110, %and
  store i64 %xor79, ptr %Eba, align 8, !tbaa !8
  %113 = load i32, ptr %round, align 4, !tbaa !10
  %idxprom = sext i32 %113 to i64
  %arrayidx80 = getelementptr inbounds [24 x i64], ptr @KeccakF_RoundConstants, i64 0, i64 %idxprom
  %114 = load i64, ptr %arrayidx80, align 8, !tbaa !8
  %115 = load i64, ptr %Eba, align 8, !tbaa !8
  %xor81 = xor i64 %115, %114
  store i64 %xor81, ptr %Eba, align 8, !tbaa !8
  %116 = load i64, ptr %BCe, align 8, !tbaa !8
  %117 = load i64, ptr %BCi, align 8, !tbaa !8
  %not82 = xor i64 %117, -1
  %118 = load i64, ptr %BCo, align 8, !tbaa !8
  %and83 = and i64 %not82, %118
  %xor84 = xor i64 %116, %and83
  store i64 %xor84, ptr %Ebe, align 8, !tbaa !8
  %119 = load i64, ptr %BCi, align 8, !tbaa !8
  %120 = load i64, ptr %BCo, align 8, !tbaa !8
  %not85 = xor i64 %120, -1
  %121 = load i64, ptr %BCu, align 8, !tbaa !8
  %and86 = and i64 %not85, %121
  %xor87 = xor i64 %119, %and86
  store i64 %xor87, ptr %Ebi, align 8, !tbaa !8
  %122 = load i64, ptr %BCo, align 8, !tbaa !8
  %123 = load i64, ptr %BCu, align 8, !tbaa !8
  %not88 = xor i64 %123, -1
  %124 = load i64, ptr %BCa, align 8, !tbaa !8
  %and89 = and i64 %not88, %124
  %xor90 = xor i64 %122, %and89
  store i64 %xor90, ptr %Ebo, align 8, !tbaa !8
  %125 = load i64, ptr %BCu, align 8, !tbaa !8
  %126 = load i64, ptr %BCa, align 8, !tbaa !8
  %not91 = xor i64 %126, -1
  %127 = load i64, ptr %BCe, align 8, !tbaa !8
  %and92 = and i64 %not91, %127
  %xor93 = xor i64 %125, %and92
  store i64 %xor93, ptr %Ebu, align 8, !tbaa !8
  %128 = load i64, ptr %Do, align 8, !tbaa !8
  %129 = load i64, ptr %Abo, align 8, !tbaa !8
  %xor94 = xor i64 %129, %128
  store i64 %xor94, ptr %Abo, align 8, !tbaa !8
  %130 = load i64, ptr %Abo, align 8, !tbaa !8
  %shl95 = shl i64 %130, 28
  %131 = load i64, ptr %Abo, align 8, !tbaa !8
  %shr96 = lshr i64 %131, 36
  %xor97 = xor i64 %shl95, %shr96
  store i64 %xor97, ptr %BCa, align 8, !tbaa !8
  %132 = load i64, ptr %Du, align 8, !tbaa !8
  %133 = load i64, ptr %Agu, align 8, !tbaa !8
  %xor98 = xor i64 %133, %132
  store i64 %xor98, ptr %Agu, align 8, !tbaa !8
  %134 = load i64, ptr %Agu, align 8, !tbaa !8
  %shl99 = shl i64 %134, 20
  %135 = load i64, ptr %Agu, align 8, !tbaa !8
  %shr100 = lshr i64 %135, 44
  %xor101 = xor i64 %shl99, %shr100
  store i64 %xor101, ptr %BCe, align 8, !tbaa !8
  %136 = load i64, ptr %Da, align 8, !tbaa !8
  %137 = load i64, ptr %Aka, align 8, !tbaa !8
  %xor102 = xor i64 %137, %136
  store i64 %xor102, ptr %Aka, align 8, !tbaa !8
  %138 = load i64, ptr %Aka, align 8, !tbaa !8
  %shl103 = shl i64 %138, 3
  %139 = load i64, ptr %Aka, align 8, !tbaa !8
  %shr104 = lshr i64 %139, 61
  %xor105 = xor i64 %shl103, %shr104
  store i64 %xor105, ptr %BCi, align 8, !tbaa !8
  %140 = load i64, ptr %De, align 8, !tbaa !8
  %141 = load i64, ptr %Ame, align 8, !tbaa !8
  %xor106 = xor i64 %141, %140
  store i64 %xor106, ptr %Ame, align 8, !tbaa !8
  %142 = load i64, ptr %Ame, align 8, !tbaa !8
  %shl107 = shl i64 %142, 45
  %143 = load i64, ptr %Ame, align 8, !tbaa !8
  %shr108 = lshr i64 %143, 19
  %xor109 = xor i64 %shl107, %shr108
  store i64 %xor109, ptr %BCo, align 8, !tbaa !8
  %144 = load i64, ptr %Di, align 8, !tbaa !8
  %145 = load i64, ptr %Asi, align 8, !tbaa !8
  %xor110 = xor i64 %145, %144
  store i64 %xor110, ptr %Asi, align 8, !tbaa !8
  %146 = load i64, ptr %Asi, align 8, !tbaa !8
  %shl111 = shl i64 %146, 61
  %147 = load i64, ptr %Asi, align 8, !tbaa !8
  %shr112 = lshr i64 %147, 3
  %xor113 = xor i64 %shl111, %shr112
  store i64 %xor113, ptr %BCu, align 8, !tbaa !8
  %148 = load i64, ptr %BCa, align 8, !tbaa !8
  %149 = load i64, ptr %BCe, align 8, !tbaa !8
  %not114 = xor i64 %149, -1
  %150 = load i64, ptr %BCi, align 8, !tbaa !8
  %and115 = and i64 %not114, %150
  %xor116 = xor i64 %148, %and115
  store i64 %xor116, ptr %Ega, align 8, !tbaa !8
  %151 = load i64, ptr %BCe, align 8, !tbaa !8
  %152 = load i64, ptr %BCi, align 8, !tbaa !8
  %not117 = xor i64 %152, -1
  %153 = load i64, ptr %BCo, align 8, !tbaa !8
  %and118 = and i64 %not117, %153
  %xor119 = xor i64 %151, %and118
  store i64 %xor119, ptr %Ege, align 8, !tbaa !8
  %154 = load i64, ptr %BCi, align 8, !tbaa !8
  %155 = load i64, ptr %BCo, align 8, !tbaa !8
  %not120 = xor i64 %155, -1
  %156 = load i64, ptr %BCu, align 8, !tbaa !8
  %and121 = and i64 %not120, %156
  %xor122 = xor i64 %154, %and121
  store i64 %xor122, ptr %Egi, align 8, !tbaa !8
  %157 = load i64, ptr %BCo, align 8, !tbaa !8
  %158 = load i64, ptr %BCu, align 8, !tbaa !8
  %not123 = xor i64 %158, -1
  %159 = load i64, ptr %BCa, align 8, !tbaa !8
  %and124 = and i64 %not123, %159
  %xor125 = xor i64 %157, %and124
  store i64 %xor125, ptr %Ego, align 8, !tbaa !8
  %160 = load i64, ptr %BCu, align 8, !tbaa !8
  %161 = load i64, ptr %BCa, align 8, !tbaa !8
  %not126 = xor i64 %161, -1
  %162 = load i64, ptr %BCe, align 8, !tbaa !8
  %and127 = and i64 %not126, %162
  %xor128 = xor i64 %160, %and127
  store i64 %xor128, ptr %Egu, align 8, !tbaa !8
  %163 = load i64, ptr %De, align 8, !tbaa !8
  %164 = load i64, ptr %Abe, align 8, !tbaa !8
  %xor129 = xor i64 %164, %163
  store i64 %xor129, ptr %Abe, align 8, !tbaa !8
  %165 = load i64, ptr %Abe, align 8, !tbaa !8
  %shl130 = shl i64 %165, 1
  %166 = load i64, ptr %Abe, align 8, !tbaa !8
  %shr131 = lshr i64 %166, 63
  %xor132 = xor i64 %shl130, %shr131
  store i64 %xor132, ptr %BCa, align 8, !tbaa !8
  %167 = load i64, ptr %Di, align 8, !tbaa !8
  %168 = load i64, ptr %Agi, align 8, !tbaa !8
  %xor133 = xor i64 %168, %167
  store i64 %xor133, ptr %Agi, align 8, !tbaa !8
  %169 = load i64, ptr %Agi, align 8, !tbaa !8
  %shl134 = shl i64 %169, 6
  %170 = load i64, ptr %Agi, align 8, !tbaa !8
  %shr135 = lshr i64 %170, 58
  %xor136 = xor i64 %shl134, %shr135
  store i64 %xor136, ptr %BCe, align 8, !tbaa !8
  %171 = load i64, ptr %Do, align 8, !tbaa !8
  %172 = load i64, ptr %Ako, align 8, !tbaa !8
  %xor137 = xor i64 %172, %171
  store i64 %xor137, ptr %Ako, align 8, !tbaa !8
  %173 = load i64, ptr %Ako, align 8, !tbaa !8
  %shl138 = shl i64 %173, 25
  %174 = load i64, ptr %Ako, align 8, !tbaa !8
  %shr139 = lshr i64 %174, 39
  %xor140 = xor i64 %shl138, %shr139
  store i64 %xor140, ptr %BCi, align 8, !tbaa !8
  %175 = load i64, ptr %Du, align 8, !tbaa !8
  %176 = load i64, ptr %Amu, align 8, !tbaa !8
  %xor141 = xor i64 %176, %175
  store i64 %xor141, ptr %Amu, align 8, !tbaa !8
  %177 = load i64, ptr %Amu, align 8, !tbaa !8
  %shl142 = shl i64 %177, 8
  %178 = load i64, ptr %Amu, align 8, !tbaa !8
  %shr143 = lshr i64 %178, 56
  %xor144 = xor i64 %shl142, %shr143
  store i64 %xor144, ptr %BCo, align 8, !tbaa !8
  %179 = load i64, ptr %Da, align 8, !tbaa !8
  %180 = load i64, ptr %Asa, align 8, !tbaa !8
  %xor145 = xor i64 %180, %179
  store i64 %xor145, ptr %Asa, align 8, !tbaa !8
  %181 = load i64, ptr %Asa, align 8, !tbaa !8
  %shl146 = shl i64 %181, 18
  %182 = load i64, ptr %Asa, align 8, !tbaa !8
  %shr147 = lshr i64 %182, 46
  %xor148 = xor i64 %shl146, %shr147
  store i64 %xor148, ptr %BCu, align 8, !tbaa !8
  %183 = load i64, ptr %BCa, align 8, !tbaa !8
  %184 = load i64, ptr %BCe, align 8, !tbaa !8
  %not149 = xor i64 %184, -1
  %185 = load i64, ptr %BCi, align 8, !tbaa !8
  %and150 = and i64 %not149, %185
  %xor151 = xor i64 %183, %and150
  store i64 %xor151, ptr %Eka, align 8, !tbaa !8
  %186 = load i64, ptr %BCe, align 8, !tbaa !8
  %187 = load i64, ptr %BCi, align 8, !tbaa !8
  %not152 = xor i64 %187, -1
  %188 = load i64, ptr %BCo, align 8, !tbaa !8
  %and153 = and i64 %not152, %188
  %xor154 = xor i64 %186, %and153
  store i64 %xor154, ptr %Eke, align 8, !tbaa !8
  %189 = load i64, ptr %BCi, align 8, !tbaa !8
  %190 = load i64, ptr %BCo, align 8, !tbaa !8
  %not155 = xor i64 %190, -1
  %191 = load i64, ptr %BCu, align 8, !tbaa !8
  %and156 = and i64 %not155, %191
  %xor157 = xor i64 %189, %and156
  store i64 %xor157, ptr %Eki, align 8, !tbaa !8
  %192 = load i64, ptr %BCo, align 8, !tbaa !8
  %193 = load i64, ptr %BCu, align 8, !tbaa !8
  %not158 = xor i64 %193, -1
  %194 = load i64, ptr %BCa, align 8, !tbaa !8
  %and159 = and i64 %not158, %194
  %xor160 = xor i64 %192, %and159
  store i64 %xor160, ptr %Eko, align 8, !tbaa !8
  %195 = load i64, ptr %BCu, align 8, !tbaa !8
  %196 = load i64, ptr %BCa, align 8, !tbaa !8
  %not161 = xor i64 %196, -1
  %197 = load i64, ptr %BCe, align 8, !tbaa !8
  %and162 = and i64 %not161, %197
  %xor163 = xor i64 %195, %and162
  store i64 %xor163, ptr %Eku, align 8, !tbaa !8
  %198 = load i64, ptr %Du, align 8, !tbaa !8
  %199 = load i64, ptr %Abu, align 8, !tbaa !8
  %xor164 = xor i64 %199, %198
  store i64 %xor164, ptr %Abu, align 8, !tbaa !8
  %200 = load i64, ptr %Abu, align 8, !tbaa !8
  %shl165 = shl i64 %200, 27
  %201 = load i64, ptr %Abu, align 8, !tbaa !8
  %shr166 = lshr i64 %201, 37
  %xor167 = xor i64 %shl165, %shr166
  store i64 %xor167, ptr %BCa, align 8, !tbaa !8
  %202 = load i64, ptr %Da, align 8, !tbaa !8
  %203 = load i64, ptr %Aga, align 8, !tbaa !8
  %xor168 = xor i64 %203, %202
  store i64 %xor168, ptr %Aga, align 8, !tbaa !8
  %204 = load i64, ptr %Aga, align 8, !tbaa !8
  %shl169 = shl i64 %204, 36
  %205 = load i64, ptr %Aga, align 8, !tbaa !8
  %shr170 = lshr i64 %205, 28
  %xor171 = xor i64 %shl169, %shr170
  store i64 %xor171, ptr %BCe, align 8, !tbaa !8
  %206 = load i64, ptr %De, align 8, !tbaa !8
  %207 = load i64, ptr %Ake, align 8, !tbaa !8
  %xor172 = xor i64 %207, %206
  store i64 %xor172, ptr %Ake, align 8, !tbaa !8
  %208 = load i64, ptr %Ake, align 8, !tbaa !8
  %shl173 = shl i64 %208, 10
  %209 = load i64, ptr %Ake, align 8, !tbaa !8
  %shr174 = lshr i64 %209, 54
  %xor175 = xor i64 %shl173, %shr174
  store i64 %xor175, ptr %BCi, align 8, !tbaa !8
  %210 = load i64, ptr %Di, align 8, !tbaa !8
  %211 = load i64, ptr %Ami, align 8, !tbaa !8
  %xor176 = xor i64 %211, %210
  store i64 %xor176, ptr %Ami, align 8, !tbaa !8
  %212 = load i64, ptr %Ami, align 8, !tbaa !8
  %shl177 = shl i64 %212, 15
  %213 = load i64, ptr %Ami, align 8, !tbaa !8
  %shr178 = lshr i64 %213, 49
  %xor179 = xor i64 %shl177, %shr178
  store i64 %xor179, ptr %BCo, align 8, !tbaa !8
  %214 = load i64, ptr %Do, align 8, !tbaa !8
  %215 = load i64, ptr %Aso, align 8, !tbaa !8
  %xor180 = xor i64 %215, %214
  store i64 %xor180, ptr %Aso, align 8, !tbaa !8
  %216 = load i64, ptr %Aso, align 8, !tbaa !8
  %shl181 = shl i64 %216, 56
  %217 = load i64, ptr %Aso, align 8, !tbaa !8
  %shr182 = lshr i64 %217, 8
  %xor183 = xor i64 %shl181, %shr182
  store i64 %xor183, ptr %BCu, align 8, !tbaa !8
  %218 = load i64, ptr %BCa, align 8, !tbaa !8
  %219 = load i64, ptr %BCe, align 8, !tbaa !8
  %not184 = xor i64 %219, -1
  %220 = load i64, ptr %BCi, align 8, !tbaa !8
  %and185 = and i64 %not184, %220
  %xor186 = xor i64 %218, %and185
  store i64 %xor186, ptr %Ema, align 8, !tbaa !8
  %221 = load i64, ptr %BCe, align 8, !tbaa !8
  %222 = load i64, ptr %BCi, align 8, !tbaa !8
  %not187 = xor i64 %222, -1
  %223 = load i64, ptr %BCo, align 8, !tbaa !8
  %and188 = and i64 %not187, %223
  %xor189 = xor i64 %221, %and188
  store i64 %xor189, ptr %Eme, align 8, !tbaa !8
  %224 = load i64, ptr %BCi, align 8, !tbaa !8
  %225 = load i64, ptr %BCo, align 8, !tbaa !8
  %not190 = xor i64 %225, -1
  %226 = load i64, ptr %BCu, align 8, !tbaa !8
  %and191 = and i64 %not190, %226
  %xor192 = xor i64 %224, %and191
  store i64 %xor192, ptr %Emi, align 8, !tbaa !8
  %227 = load i64, ptr %BCo, align 8, !tbaa !8
  %228 = load i64, ptr %BCu, align 8, !tbaa !8
  %not193 = xor i64 %228, -1
  %229 = load i64, ptr %BCa, align 8, !tbaa !8
  %and194 = and i64 %not193, %229
  %xor195 = xor i64 %227, %and194
  store i64 %xor195, ptr %Emo, align 8, !tbaa !8
  %230 = load i64, ptr %BCu, align 8, !tbaa !8
  %231 = load i64, ptr %BCa, align 8, !tbaa !8
  %not196 = xor i64 %231, -1
  %232 = load i64, ptr %BCe, align 8, !tbaa !8
  %and197 = and i64 %not196, %232
  %xor198 = xor i64 %230, %and197
  store i64 %xor198, ptr %Emu, align 8, !tbaa !8
  %233 = load i64, ptr %Di, align 8, !tbaa !8
  %234 = load i64, ptr %Abi, align 8, !tbaa !8
  %xor199 = xor i64 %234, %233
  store i64 %xor199, ptr %Abi, align 8, !tbaa !8
  %235 = load i64, ptr %Abi, align 8, !tbaa !8
  %shl200 = shl i64 %235, 62
  %236 = load i64, ptr %Abi, align 8, !tbaa !8
  %shr201 = lshr i64 %236, 2
  %xor202 = xor i64 %shl200, %shr201
  store i64 %xor202, ptr %BCa, align 8, !tbaa !8
  %237 = load i64, ptr %Do, align 8, !tbaa !8
  %238 = load i64, ptr %Ago, align 8, !tbaa !8
  %xor203 = xor i64 %238, %237
  store i64 %xor203, ptr %Ago, align 8, !tbaa !8
  %239 = load i64, ptr %Ago, align 8, !tbaa !8
  %shl204 = shl i64 %239, 55
  %240 = load i64, ptr %Ago, align 8, !tbaa !8
  %shr205 = lshr i64 %240, 9
  %xor206 = xor i64 %shl204, %shr205
  store i64 %xor206, ptr %BCe, align 8, !tbaa !8
  %241 = load i64, ptr %Du, align 8, !tbaa !8
  %242 = load i64, ptr %Aku, align 8, !tbaa !8
  %xor207 = xor i64 %242, %241
  store i64 %xor207, ptr %Aku, align 8, !tbaa !8
  %243 = load i64, ptr %Aku, align 8, !tbaa !8
  %shl208 = shl i64 %243, 39
  %244 = load i64, ptr %Aku, align 8, !tbaa !8
  %shr209 = lshr i64 %244, 25
  %xor210 = xor i64 %shl208, %shr209
  store i64 %xor210, ptr %BCi, align 8, !tbaa !8
  %245 = load i64, ptr %Da, align 8, !tbaa !8
  %246 = load i64, ptr %Ama, align 8, !tbaa !8
  %xor211 = xor i64 %246, %245
  store i64 %xor211, ptr %Ama, align 8, !tbaa !8
  %247 = load i64, ptr %Ama, align 8, !tbaa !8
  %shl212 = shl i64 %247, 41
  %248 = load i64, ptr %Ama, align 8, !tbaa !8
  %shr213 = lshr i64 %248, 23
  %xor214 = xor i64 %shl212, %shr213
  store i64 %xor214, ptr %BCo, align 8, !tbaa !8
  %249 = load i64, ptr %De, align 8, !tbaa !8
  %250 = load i64, ptr %Ase, align 8, !tbaa !8
  %xor215 = xor i64 %250, %249
  store i64 %xor215, ptr %Ase, align 8, !tbaa !8
  %251 = load i64, ptr %Ase, align 8, !tbaa !8
  %shl216 = shl i64 %251, 2
  %252 = load i64, ptr %Ase, align 8, !tbaa !8
  %shr217 = lshr i64 %252, 62
  %xor218 = xor i64 %shl216, %shr217
  store i64 %xor218, ptr %BCu, align 8, !tbaa !8
  %253 = load i64, ptr %BCa, align 8, !tbaa !8
  %254 = load i64, ptr %BCe, align 8, !tbaa !8
  %not219 = xor i64 %254, -1
  %255 = load i64, ptr %BCi, align 8, !tbaa !8
  %and220 = and i64 %not219, %255
  %xor221 = xor i64 %253, %and220
  store i64 %xor221, ptr %Esa, align 8, !tbaa !8
  %256 = load i64, ptr %BCe, align 8, !tbaa !8
  %257 = load i64, ptr %BCi, align 8, !tbaa !8
  %not222 = xor i64 %257, -1
  %258 = load i64, ptr %BCo, align 8, !tbaa !8
  %and223 = and i64 %not222, %258
  %xor224 = xor i64 %256, %and223
  store i64 %xor224, ptr %Ese, align 8, !tbaa !8
  %259 = load i64, ptr %BCi, align 8, !tbaa !8
  %260 = load i64, ptr %BCo, align 8, !tbaa !8
  %not225 = xor i64 %260, -1
  %261 = load i64, ptr %BCu, align 8, !tbaa !8
  %and226 = and i64 %not225, %261
  %xor227 = xor i64 %259, %and226
  store i64 %xor227, ptr %Esi, align 8, !tbaa !8
  %262 = load i64, ptr %BCo, align 8, !tbaa !8
  %263 = load i64, ptr %BCu, align 8, !tbaa !8
  %not228 = xor i64 %263, -1
  %264 = load i64, ptr %BCa, align 8, !tbaa !8
  %and229 = and i64 %not228, %264
  %xor230 = xor i64 %262, %and229
  store i64 %xor230, ptr %Eso, align 8, !tbaa !8
  %265 = load i64, ptr %BCu, align 8, !tbaa !8
  %266 = load i64, ptr %BCa, align 8, !tbaa !8
  %not231 = xor i64 %266, -1
  %267 = load i64, ptr %BCe, align 8, !tbaa !8
  %and232 = and i64 %not231, %267
  %xor233 = xor i64 %265, %and232
  store i64 %xor233, ptr %Esu, align 8, !tbaa !8
  %268 = load i64, ptr %Eba, align 8, !tbaa !8
  %269 = load i64, ptr %Ega, align 8, !tbaa !8
  %xor234 = xor i64 %268, %269
  %270 = load i64, ptr %Eka, align 8, !tbaa !8
  %xor235 = xor i64 %xor234, %270
  %271 = load i64, ptr %Ema, align 8, !tbaa !8
  %xor236 = xor i64 %xor235, %271
  %272 = load i64, ptr %Esa, align 8, !tbaa !8
  %xor237 = xor i64 %xor236, %272
  store i64 %xor237, ptr %BCa, align 8, !tbaa !8
  %273 = load i64, ptr %Ebe, align 8, !tbaa !8
  %274 = load i64, ptr %Ege, align 8, !tbaa !8
  %xor238 = xor i64 %273, %274
  %275 = load i64, ptr %Eke, align 8, !tbaa !8
  %xor239 = xor i64 %xor238, %275
  %276 = load i64, ptr %Eme, align 8, !tbaa !8
  %xor240 = xor i64 %xor239, %276
  %277 = load i64, ptr %Ese, align 8, !tbaa !8
  %xor241 = xor i64 %xor240, %277
  store i64 %xor241, ptr %BCe, align 8, !tbaa !8
  %278 = load i64, ptr %Ebi, align 8, !tbaa !8
  %279 = load i64, ptr %Egi, align 8, !tbaa !8
  %xor242 = xor i64 %278, %279
  %280 = load i64, ptr %Eki, align 8, !tbaa !8
  %xor243 = xor i64 %xor242, %280
  %281 = load i64, ptr %Emi, align 8, !tbaa !8
  %xor244 = xor i64 %xor243, %281
  %282 = load i64, ptr %Esi, align 8, !tbaa !8
  %xor245 = xor i64 %xor244, %282
  store i64 %xor245, ptr %BCi, align 8, !tbaa !8
  %283 = load i64, ptr %Ebo, align 8, !tbaa !8
  %284 = load i64, ptr %Ego, align 8, !tbaa !8
  %xor246 = xor i64 %283, %284
  %285 = load i64, ptr %Eko, align 8, !tbaa !8
  %xor247 = xor i64 %xor246, %285
  %286 = load i64, ptr %Emo, align 8, !tbaa !8
  %xor248 = xor i64 %xor247, %286
  %287 = load i64, ptr %Eso, align 8, !tbaa !8
  %xor249 = xor i64 %xor248, %287
  store i64 %xor249, ptr %BCo, align 8, !tbaa !8
  %288 = load i64, ptr %Ebu, align 8, !tbaa !8
  %289 = load i64, ptr %Egu, align 8, !tbaa !8
  %xor250 = xor i64 %288, %289
  %290 = load i64, ptr %Eku, align 8, !tbaa !8
  %xor251 = xor i64 %xor250, %290
  %291 = load i64, ptr %Emu, align 8, !tbaa !8
  %xor252 = xor i64 %xor251, %291
  %292 = load i64, ptr %Esu, align 8, !tbaa !8
  %xor253 = xor i64 %xor252, %292
  store i64 %xor253, ptr %BCu, align 8, !tbaa !8
  %293 = load i64, ptr %BCu, align 8, !tbaa !8
  %294 = load i64, ptr %BCe, align 8, !tbaa !8
  %shl254 = shl i64 %294, 1
  %295 = load i64, ptr %BCe, align 8, !tbaa !8
  %shr255 = lshr i64 %295, 63
  %xor256 = xor i64 %shl254, %shr255
  %xor257 = xor i64 %293, %xor256
  store i64 %xor257, ptr %Da, align 8, !tbaa !8
  %296 = load i64, ptr %BCa, align 8, !tbaa !8
  %297 = load i64, ptr %BCi, align 8, !tbaa !8
  %shl258 = shl i64 %297, 1
  %298 = load i64, ptr %BCi, align 8, !tbaa !8
  %shr259 = lshr i64 %298, 63
  %xor260 = xor i64 %shl258, %shr259
  %xor261 = xor i64 %296, %xor260
  store i64 %xor261, ptr %De, align 8, !tbaa !8
  %299 = load i64, ptr %BCe, align 8, !tbaa !8
  %300 = load i64, ptr %BCo, align 8, !tbaa !8
  %shl262 = shl i64 %300, 1
  %301 = load i64, ptr %BCo, align 8, !tbaa !8
  %shr263 = lshr i64 %301, 63
  %xor264 = xor i64 %shl262, %shr263
  %xor265 = xor i64 %299, %xor264
  store i64 %xor265, ptr %Di, align 8, !tbaa !8
  %302 = load i64, ptr %BCi, align 8, !tbaa !8
  %303 = load i64, ptr %BCu, align 8, !tbaa !8
  %shl266 = shl i64 %303, 1
  %304 = load i64, ptr %BCu, align 8, !tbaa !8
  %shr267 = lshr i64 %304, 63
  %xor268 = xor i64 %shl266, %shr267
  %xor269 = xor i64 %302, %xor268
  store i64 %xor269, ptr %Do, align 8, !tbaa !8
  %305 = load i64, ptr %BCo, align 8, !tbaa !8
  %306 = load i64, ptr %BCa, align 8, !tbaa !8
  %shl270 = shl i64 %306, 1
  %307 = load i64, ptr %BCa, align 8, !tbaa !8
  %shr271 = lshr i64 %307, 63
  %xor272 = xor i64 %shl270, %shr271
  %xor273 = xor i64 %305, %xor272
  store i64 %xor273, ptr %Du, align 8, !tbaa !8
  %308 = load i64, ptr %Da, align 8, !tbaa !8
  %309 = load i64, ptr %Eba, align 8, !tbaa !8
  %xor274 = xor i64 %309, %308
  store i64 %xor274, ptr %Eba, align 8, !tbaa !8
  %310 = load i64, ptr %Eba, align 8, !tbaa !8
  store i64 %310, ptr %BCa, align 8, !tbaa !8
  %311 = load i64, ptr %De, align 8, !tbaa !8
  %312 = load i64, ptr %Ege, align 8, !tbaa !8
  %xor275 = xor i64 %312, %311
  store i64 %xor275, ptr %Ege, align 8, !tbaa !8
  %313 = load i64, ptr %Ege, align 8, !tbaa !8
  %shl276 = shl i64 %313, 44
  %314 = load i64, ptr %Ege, align 8, !tbaa !8
  %shr277 = lshr i64 %314, 20
  %xor278 = xor i64 %shl276, %shr277
  store i64 %xor278, ptr %BCe, align 8, !tbaa !8
  %315 = load i64, ptr %Di, align 8, !tbaa !8
  %316 = load i64, ptr %Eki, align 8, !tbaa !8
  %xor279 = xor i64 %316, %315
  store i64 %xor279, ptr %Eki, align 8, !tbaa !8
  %317 = load i64, ptr %Eki, align 8, !tbaa !8
  %shl280 = shl i64 %317, 43
  %318 = load i64, ptr %Eki, align 8, !tbaa !8
  %shr281 = lshr i64 %318, 21
  %xor282 = xor i64 %shl280, %shr281
  store i64 %xor282, ptr %BCi, align 8, !tbaa !8
  %319 = load i64, ptr %Do, align 8, !tbaa !8
  %320 = load i64, ptr %Emo, align 8, !tbaa !8
  %xor283 = xor i64 %320, %319
  store i64 %xor283, ptr %Emo, align 8, !tbaa !8
  %321 = load i64, ptr %Emo, align 8, !tbaa !8
  %shl284 = shl i64 %321, 21
  %322 = load i64, ptr %Emo, align 8, !tbaa !8
  %shr285 = lshr i64 %322, 43
  %xor286 = xor i64 %shl284, %shr285
  store i64 %xor286, ptr %BCo, align 8, !tbaa !8
  %323 = load i64, ptr %Du, align 8, !tbaa !8
  %324 = load i64, ptr %Esu, align 8, !tbaa !8
  %xor287 = xor i64 %324, %323
  store i64 %xor287, ptr %Esu, align 8, !tbaa !8
  %325 = load i64, ptr %Esu, align 8, !tbaa !8
  %shl288 = shl i64 %325, 14
  %326 = load i64, ptr %Esu, align 8, !tbaa !8
  %shr289 = lshr i64 %326, 50
  %xor290 = xor i64 %shl288, %shr289
  store i64 %xor290, ptr %BCu, align 8, !tbaa !8
  %327 = load i64, ptr %BCa, align 8, !tbaa !8
  %328 = load i64, ptr %BCe, align 8, !tbaa !8
  %not291 = xor i64 %328, -1
  %329 = load i64, ptr %BCi, align 8, !tbaa !8
  %and292 = and i64 %not291, %329
  %xor293 = xor i64 %327, %and292
  store i64 %xor293, ptr %Aba, align 8, !tbaa !8
  %330 = load i32, ptr %round, align 4, !tbaa !10
  %add = add nsw i32 %330, 1
  %idxprom294 = sext i32 %add to i64
  %arrayidx295 = getelementptr inbounds [24 x i64], ptr @KeccakF_RoundConstants, i64 0, i64 %idxprom294
  %331 = load i64, ptr %arrayidx295, align 8, !tbaa !8
  %332 = load i64, ptr %Aba, align 8, !tbaa !8
  %xor296 = xor i64 %332, %331
  store i64 %xor296, ptr %Aba, align 8, !tbaa !8
  %333 = load i64, ptr %BCe, align 8, !tbaa !8
  %334 = load i64, ptr %BCi, align 8, !tbaa !8
  %not297 = xor i64 %334, -1
  %335 = load i64, ptr %BCo, align 8, !tbaa !8
  %and298 = and i64 %not297, %335
  %xor299 = xor i64 %333, %and298
  store i64 %xor299, ptr %Abe, align 8, !tbaa !8
  %336 = load i64, ptr %BCi, align 8, !tbaa !8
  %337 = load i64, ptr %BCo, align 8, !tbaa !8
  %not300 = xor i64 %337, -1
  %338 = load i64, ptr %BCu, align 8, !tbaa !8
  %and301 = and i64 %not300, %338
  %xor302 = xor i64 %336, %and301
  store i64 %xor302, ptr %Abi, align 8, !tbaa !8
  %339 = load i64, ptr %BCo, align 8, !tbaa !8
  %340 = load i64, ptr %BCu, align 8, !tbaa !8
  %not303 = xor i64 %340, -1
  %341 = load i64, ptr %BCa, align 8, !tbaa !8
  %and304 = and i64 %not303, %341
  %xor305 = xor i64 %339, %and304
  store i64 %xor305, ptr %Abo, align 8, !tbaa !8
  %342 = load i64, ptr %BCu, align 8, !tbaa !8
  %343 = load i64, ptr %BCa, align 8, !tbaa !8
  %not306 = xor i64 %343, -1
  %344 = load i64, ptr %BCe, align 8, !tbaa !8
  %and307 = and i64 %not306, %344
  %xor308 = xor i64 %342, %and307
  store i64 %xor308, ptr %Abu, align 8, !tbaa !8
  %345 = load i64, ptr %Do, align 8, !tbaa !8
  %346 = load i64, ptr %Ebo, align 8, !tbaa !8
  %xor309 = xor i64 %346, %345
  store i64 %xor309, ptr %Ebo, align 8, !tbaa !8
  %347 = load i64, ptr %Ebo, align 8, !tbaa !8
  %shl310 = shl i64 %347, 28
  %348 = load i64, ptr %Ebo, align 8, !tbaa !8
  %shr311 = lshr i64 %348, 36
  %xor312 = xor i64 %shl310, %shr311
  store i64 %xor312, ptr %BCa, align 8, !tbaa !8
  %349 = load i64, ptr %Du, align 8, !tbaa !8
  %350 = load i64, ptr %Egu, align 8, !tbaa !8
  %xor313 = xor i64 %350, %349
  store i64 %xor313, ptr %Egu, align 8, !tbaa !8
  %351 = load i64, ptr %Egu, align 8, !tbaa !8
  %shl314 = shl i64 %351, 20
  %352 = load i64, ptr %Egu, align 8, !tbaa !8
  %shr315 = lshr i64 %352, 44
  %xor316 = xor i64 %shl314, %shr315
  store i64 %xor316, ptr %BCe, align 8, !tbaa !8
  %353 = load i64, ptr %Da, align 8, !tbaa !8
  %354 = load i64, ptr %Eka, align 8, !tbaa !8
  %xor317 = xor i64 %354, %353
  store i64 %xor317, ptr %Eka, align 8, !tbaa !8
  %355 = load i64, ptr %Eka, align 8, !tbaa !8
  %shl318 = shl i64 %355, 3
  %356 = load i64, ptr %Eka, align 8, !tbaa !8
  %shr319 = lshr i64 %356, 61
  %xor320 = xor i64 %shl318, %shr319
  store i64 %xor320, ptr %BCi, align 8, !tbaa !8
  %357 = load i64, ptr %De, align 8, !tbaa !8
  %358 = load i64, ptr %Eme, align 8, !tbaa !8
  %xor321 = xor i64 %358, %357
  store i64 %xor321, ptr %Eme, align 8, !tbaa !8
  %359 = load i64, ptr %Eme, align 8, !tbaa !8
  %shl322 = shl i64 %359, 45
  %360 = load i64, ptr %Eme, align 8, !tbaa !8
  %shr323 = lshr i64 %360, 19
  %xor324 = xor i64 %shl322, %shr323
  store i64 %xor324, ptr %BCo, align 8, !tbaa !8
  %361 = load i64, ptr %Di, align 8, !tbaa !8
  %362 = load i64, ptr %Esi, align 8, !tbaa !8
  %xor325 = xor i64 %362, %361
  store i64 %xor325, ptr %Esi, align 8, !tbaa !8
  %363 = load i64, ptr %Esi, align 8, !tbaa !8
  %shl326 = shl i64 %363, 61
  %364 = load i64, ptr %Esi, align 8, !tbaa !8
  %shr327 = lshr i64 %364, 3
  %xor328 = xor i64 %shl326, %shr327
  store i64 %xor328, ptr %BCu, align 8, !tbaa !8
  %365 = load i64, ptr %BCa, align 8, !tbaa !8
  %366 = load i64, ptr %BCe, align 8, !tbaa !8
  %not329 = xor i64 %366, -1
  %367 = load i64, ptr %BCi, align 8, !tbaa !8
  %and330 = and i64 %not329, %367
  %xor331 = xor i64 %365, %and330
  store i64 %xor331, ptr %Aga, align 8, !tbaa !8
  %368 = load i64, ptr %BCe, align 8, !tbaa !8
  %369 = load i64, ptr %BCi, align 8, !tbaa !8
  %not332 = xor i64 %369, -1
  %370 = load i64, ptr %BCo, align 8, !tbaa !8
  %and333 = and i64 %not332, %370
  %xor334 = xor i64 %368, %and333
  store i64 %xor334, ptr %Age, align 8, !tbaa !8
  %371 = load i64, ptr %BCi, align 8, !tbaa !8
  %372 = load i64, ptr %BCo, align 8, !tbaa !8
  %not335 = xor i64 %372, -1
  %373 = load i64, ptr %BCu, align 8, !tbaa !8
  %and336 = and i64 %not335, %373
  %xor337 = xor i64 %371, %and336
  store i64 %xor337, ptr %Agi, align 8, !tbaa !8
  %374 = load i64, ptr %BCo, align 8, !tbaa !8
  %375 = load i64, ptr %BCu, align 8, !tbaa !8
  %not338 = xor i64 %375, -1
  %376 = load i64, ptr %BCa, align 8, !tbaa !8
  %and339 = and i64 %not338, %376
  %xor340 = xor i64 %374, %and339
  store i64 %xor340, ptr %Ago, align 8, !tbaa !8
  %377 = load i64, ptr %BCu, align 8, !tbaa !8
  %378 = load i64, ptr %BCa, align 8, !tbaa !8
  %not341 = xor i64 %378, -1
  %379 = load i64, ptr %BCe, align 8, !tbaa !8
  %and342 = and i64 %not341, %379
  %xor343 = xor i64 %377, %and342
  store i64 %xor343, ptr %Agu, align 8, !tbaa !8
  %380 = load i64, ptr %De, align 8, !tbaa !8
  %381 = load i64, ptr %Ebe, align 8, !tbaa !8
  %xor344 = xor i64 %381, %380
  store i64 %xor344, ptr %Ebe, align 8, !tbaa !8
  %382 = load i64, ptr %Ebe, align 8, !tbaa !8
  %shl345 = shl i64 %382, 1
  %383 = load i64, ptr %Ebe, align 8, !tbaa !8
  %shr346 = lshr i64 %383, 63
  %xor347 = xor i64 %shl345, %shr346
  store i64 %xor347, ptr %BCa, align 8, !tbaa !8
  %384 = load i64, ptr %Di, align 8, !tbaa !8
  %385 = load i64, ptr %Egi, align 8, !tbaa !8
  %xor348 = xor i64 %385, %384
  store i64 %xor348, ptr %Egi, align 8, !tbaa !8
  %386 = load i64, ptr %Egi, align 8, !tbaa !8
  %shl349 = shl i64 %386, 6
  %387 = load i64, ptr %Egi, align 8, !tbaa !8
  %shr350 = lshr i64 %387, 58
  %xor351 = xor i64 %shl349, %shr350
  store i64 %xor351, ptr %BCe, align 8, !tbaa !8
  %388 = load i64, ptr %Do, align 8, !tbaa !8
  %389 = load i64, ptr %Eko, align 8, !tbaa !8
  %xor352 = xor i64 %389, %388
  store i64 %xor352, ptr %Eko, align 8, !tbaa !8
  %390 = load i64, ptr %Eko, align 8, !tbaa !8
  %shl353 = shl i64 %390, 25
  %391 = load i64, ptr %Eko, align 8, !tbaa !8
  %shr354 = lshr i64 %391, 39
  %xor355 = xor i64 %shl353, %shr354
  store i64 %xor355, ptr %BCi, align 8, !tbaa !8
  %392 = load i64, ptr %Du, align 8, !tbaa !8
  %393 = load i64, ptr %Emu, align 8, !tbaa !8
  %xor356 = xor i64 %393, %392
  store i64 %xor356, ptr %Emu, align 8, !tbaa !8
  %394 = load i64, ptr %Emu, align 8, !tbaa !8
  %shl357 = shl i64 %394, 8
  %395 = load i64, ptr %Emu, align 8, !tbaa !8
  %shr358 = lshr i64 %395, 56
  %xor359 = xor i64 %shl357, %shr358
  store i64 %xor359, ptr %BCo, align 8, !tbaa !8
  %396 = load i64, ptr %Da, align 8, !tbaa !8
  %397 = load i64, ptr %Esa, align 8, !tbaa !8
  %xor360 = xor i64 %397, %396
  store i64 %xor360, ptr %Esa, align 8, !tbaa !8
  %398 = load i64, ptr %Esa, align 8, !tbaa !8
  %shl361 = shl i64 %398, 18
  %399 = load i64, ptr %Esa, align 8, !tbaa !8
  %shr362 = lshr i64 %399, 46
  %xor363 = xor i64 %shl361, %shr362
  store i64 %xor363, ptr %BCu, align 8, !tbaa !8
  %400 = load i64, ptr %BCa, align 8, !tbaa !8
  %401 = load i64, ptr %BCe, align 8, !tbaa !8
  %not364 = xor i64 %401, -1
  %402 = load i64, ptr %BCi, align 8, !tbaa !8
  %and365 = and i64 %not364, %402
  %xor366 = xor i64 %400, %and365
  store i64 %xor366, ptr %Aka, align 8, !tbaa !8
  %403 = load i64, ptr %BCe, align 8, !tbaa !8
  %404 = load i64, ptr %BCi, align 8, !tbaa !8
  %not367 = xor i64 %404, -1
  %405 = load i64, ptr %BCo, align 8, !tbaa !8
  %and368 = and i64 %not367, %405
  %xor369 = xor i64 %403, %and368
  store i64 %xor369, ptr %Ake, align 8, !tbaa !8
  %406 = load i64, ptr %BCi, align 8, !tbaa !8
  %407 = load i64, ptr %BCo, align 8, !tbaa !8
  %not370 = xor i64 %407, -1
  %408 = load i64, ptr %BCu, align 8, !tbaa !8
  %and371 = and i64 %not370, %408
  %xor372 = xor i64 %406, %and371
  store i64 %xor372, ptr %Aki, align 8, !tbaa !8
  %409 = load i64, ptr %BCo, align 8, !tbaa !8
  %410 = load i64, ptr %BCu, align 8, !tbaa !8
  %not373 = xor i64 %410, -1
  %411 = load i64, ptr %BCa, align 8, !tbaa !8
  %and374 = and i64 %not373, %411
  %xor375 = xor i64 %409, %and374
  store i64 %xor375, ptr %Ako, align 8, !tbaa !8
  %412 = load i64, ptr %BCu, align 8, !tbaa !8
  %413 = load i64, ptr %BCa, align 8, !tbaa !8
  %not376 = xor i64 %413, -1
  %414 = load i64, ptr %BCe, align 8, !tbaa !8
  %and377 = and i64 %not376, %414
  %xor378 = xor i64 %412, %and377
  store i64 %xor378, ptr %Aku, align 8, !tbaa !8
  %415 = load i64, ptr %Du, align 8, !tbaa !8
  %416 = load i64, ptr %Ebu, align 8, !tbaa !8
  %xor379 = xor i64 %416, %415
  store i64 %xor379, ptr %Ebu, align 8, !tbaa !8
  %417 = load i64, ptr %Ebu, align 8, !tbaa !8
  %shl380 = shl i64 %417, 27
  %418 = load i64, ptr %Ebu, align 8, !tbaa !8
  %shr381 = lshr i64 %418, 37
  %xor382 = xor i64 %shl380, %shr381
  store i64 %xor382, ptr %BCa, align 8, !tbaa !8
  %419 = load i64, ptr %Da, align 8, !tbaa !8
  %420 = load i64, ptr %Ega, align 8, !tbaa !8
  %xor383 = xor i64 %420, %419
  store i64 %xor383, ptr %Ega, align 8, !tbaa !8
  %421 = load i64, ptr %Ega, align 8, !tbaa !8
  %shl384 = shl i64 %421, 36
  %422 = load i64, ptr %Ega, align 8, !tbaa !8
  %shr385 = lshr i64 %422, 28
  %xor386 = xor i64 %shl384, %shr385
  store i64 %xor386, ptr %BCe, align 8, !tbaa !8
  %423 = load i64, ptr %De, align 8, !tbaa !8
  %424 = load i64, ptr %Eke, align 8, !tbaa !8
  %xor387 = xor i64 %424, %423
  store i64 %xor387, ptr %Eke, align 8, !tbaa !8
  %425 = load i64, ptr %Eke, align 8, !tbaa !8
  %shl388 = shl i64 %425, 10
  %426 = load i64, ptr %Eke, align 8, !tbaa !8
  %shr389 = lshr i64 %426, 54
  %xor390 = xor i64 %shl388, %shr389
  store i64 %xor390, ptr %BCi, align 8, !tbaa !8
  %427 = load i64, ptr %Di, align 8, !tbaa !8
  %428 = load i64, ptr %Emi, align 8, !tbaa !8
  %xor391 = xor i64 %428, %427
  store i64 %xor391, ptr %Emi, align 8, !tbaa !8
  %429 = load i64, ptr %Emi, align 8, !tbaa !8
  %shl392 = shl i64 %429, 15
  %430 = load i64, ptr %Emi, align 8, !tbaa !8
  %shr393 = lshr i64 %430, 49
  %xor394 = xor i64 %shl392, %shr393
  store i64 %xor394, ptr %BCo, align 8, !tbaa !8
  %431 = load i64, ptr %Do, align 8, !tbaa !8
  %432 = load i64, ptr %Eso, align 8, !tbaa !8
  %xor395 = xor i64 %432, %431
  store i64 %xor395, ptr %Eso, align 8, !tbaa !8
  %433 = load i64, ptr %Eso, align 8, !tbaa !8
  %shl396 = shl i64 %433, 56
  %434 = load i64, ptr %Eso, align 8, !tbaa !8
  %shr397 = lshr i64 %434, 8
  %xor398 = xor i64 %shl396, %shr397
  store i64 %xor398, ptr %BCu, align 8, !tbaa !8
  %435 = load i64, ptr %BCa, align 8, !tbaa !8
  %436 = load i64, ptr %BCe, align 8, !tbaa !8
  %not399 = xor i64 %436, -1
  %437 = load i64, ptr %BCi, align 8, !tbaa !8
  %and400 = and i64 %not399, %437
  %xor401 = xor i64 %435, %and400
  store i64 %xor401, ptr %Ama, align 8, !tbaa !8
  %438 = load i64, ptr %BCe, align 8, !tbaa !8
  %439 = load i64, ptr %BCi, align 8, !tbaa !8
  %not402 = xor i64 %439, -1
  %440 = load i64, ptr %BCo, align 8, !tbaa !8
  %and403 = and i64 %not402, %440
  %xor404 = xor i64 %438, %and403
  store i64 %xor404, ptr %Ame, align 8, !tbaa !8
  %441 = load i64, ptr %BCi, align 8, !tbaa !8
  %442 = load i64, ptr %BCo, align 8, !tbaa !8
  %not405 = xor i64 %442, -1
  %443 = load i64, ptr %BCu, align 8, !tbaa !8
  %and406 = and i64 %not405, %443
  %xor407 = xor i64 %441, %and406
  store i64 %xor407, ptr %Ami, align 8, !tbaa !8
  %444 = load i64, ptr %BCo, align 8, !tbaa !8
  %445 = load i64, ptr %BCu, align 8, !tbaa !8
  %not408 = xor i64 %445, -1
  %446 = load i64, ptr %BCa, align 8, !tbaa !8
  %and409 = and i64 %not408, %446
  %xor410 = xor i64 %444, %and409
  store i64 %xor410, ptr %Amo, align 8, !tbaa !8
  %447 = load i64, ptr %BCu, align 8, !tbaa !8
  %448 = load i64, ptr %BCa, align 8, !tbaa !8
  %not411 = xor i64 %448, -1
  %449 = load i64, ptr %BCe, align 8, !tbaa !8
  %and412 = and i64 %not411, %449
  %xor413 = xor i64 %447, %and412
  store i64 %xor413, ptr %Amu, align 8, !tbaa !8
  %450 = load i64, ptr %Di, align 8, !tbaa !8
  %451 = load i64, ptr %Ebi, align 8, !tbaa !8
  %xor414 = xor i64 %451, %450
  store i64 %xor414, ptr %Ebi, align 8, !tbaa !8
  %452 = load i64, ptr %Ebi, align 8, !tbaa !8
  %shl415 = shl i64 %452, 62
  %453 = load i64, ptr %Ebi, align 8, !tbaa !8
  %shr416 = lshr i64 %453, 2
  %xor417 = xor i64 %shl415, %shr416
  store i64 %xor417, ptr %BCa, align 8, !tbaa !8
  %454 = load i64, ptr %Do, align 8, !tbaa !8
  %455 = load i64, ptr %Ego, align 8, !tbaa !8
  %xor418 = xor i64 %455, %454
  store i64 %xor418, ptr %Ego, align 8, !tbaa !8
  %456 = load i64, ptr %Ego, align 8, !tbaa !8
  %shl419 = shl i64 %456, 55
  %457 = load i64, ptr %Ego, align 8, !tbaa !8
  %shr420 = lshr i64 %457, 9
  %xor421 = xor i64 %shl419, %shr420
  store i64 %xor421, ptr %BCe, align 8, !tbaa !8
  %458 = load i64, ptr %Du, align 8, !tbaa !8
  %459 = load i64, ptr %Eku, align 8, !tbaa !8
  %xor422 = xor i64 %459, %458
  store i64 %xor422, ptr %Eku, align 8, !tbaa !8
  %460 = load i64, ptr %Eku, align 8, !tbaa !8
  %shl423 = shl i64 %460, 39
  %461 = load i64, ptr %Eku, align 8, !tbaa !8
  %shr424 = lshr i64 %461, 25
  %xor425 = xor i64 %shl423, %shr424
  store i64 %xor425, ptr %BCi, align 8, !tbaa !8
  %462 = load i64, ptr %Da, align 8, !tbaa !8
  %463 = load i64, ptr %Ema, align 8, !tbaa !8
  %xor426 = xor i64 %463, %462
  store i64 %xor426, ptr %Ema, align 8, !tbaa !8
  %464 = load i64, ptr %Ema, align 8, !tbaa !8
  %shl427 = shl i64 %464, 41
  %465 = load i64, ptr %Ema, align 8, !tbaa !8
  %shr428 = lshr i64 %465, 23
  %xor429 = xor i64 %shl427, %shr428
  store i64 %xor429, ptr %BCo, align 8, !tbaa !8
  %466 = load i64, ptr %De, align 8, !tbaa !8
  %467 = load i64, ptr %Ese, align 8, !tbaa !8
  %xor430 = xor i64 %467, %466
  store i64 %xor430, ptr %Ese, align 8, !tbaa !8
  %468 = load i64, ptr %Ese, align 8, !tbaa !8
  %shl431 = shl i64 %468, 2
  %469 = load i64, ptr %Ese, align 8, !tbaa !8
  %shr432 = lshr i64 %469, 62
  %xor433 = xor i64 %shl431, %shr432
  store i64 %xor433, ptr %BCu, align 8, !tbaa !8
  %470 = load i64, ptr %BCa, align 8, !tbaa !8
  %471 = load i64, ptr %BCe, align 8, !tbaa !8
  %not434 = xor i64 %471, -1
  %472 = load i64, ptr %BCi, align 8, !tbaa !8
  %and435 = and i64 %not434, %472
  %xor436 = xor i64 %470, %and435
  store i64 %xor436, ptr %Asa, align 8, !tbaa !8
  %473 = load i64, ptr %BCe, align 8, !tbaa !8
  %474 = load i64, ptr %BCi, align 8, !tbaa !8
  %not437 = xor i64 %474, -1
  %475 = load i64, ptr %BCo, align 8, !tbaa !8
  %and438 = and i64 %not437, %475
  %xor439 = xor i64 %473, %and438
  store i64 %xor439, ptr %Ase, align 8, !tbaa !8
  %476 = load i64, ptr %BCi, align 8, !tbaa !8
  %477 = load i64, ptr %BCo, align 8, !tbaa !8
  %not440 = xor i64 %477, -1
  %478 = load i64, ptr %BCu, align 8, !tbaa !8
  %and441 = and i64 %not440, %478
  %xor442 = xor i64 %476, %and441
  store i64 %xor442, ptr %Asi, align 8, !tbaa !8
  %479 = load i64, ptr %BCo, align 8, !tbaa !8
  %480 = load i64, ptr %BCu, align 8, !tbaa !8
  %not443 = xor i64 %480, -1
  %481 = load i64, ptr %BCa, align 8, !tbaa !8
  %and444 = and i64 %not443, %481
  %xor445 = xor i64 %479, %and444
  store i64 %xor445, ptr %Aso, align 8, !tbaa !8
  %482 = load i64, ptr %BCu, align 8, !tbaa !8
  %483 = load i64, ptr %BCa, align 8, !tbaa !8
  %not446 = xor i64 %483, -1
  %484 = load i64, ptr %BCe, align 8, !tbaa !8
  %and447 = and i64 %not446, %484
  %xor448 = xor i64 %482, %and447
  store i64 %xor448, ptr %Asu, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %485 = load i32, ptr %round, align 4, !tbaa !10
  %add449 = add nsw i32 %485, 2
  store i32 %add449, ptr %round, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %486 = load i64, ptr %Aba, align 8, !tbaa !8
  %487 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx450 = getelementptr inbounds i64, ptr %487, i64 0
  store i64 %486, ptr %arrayidx450, align 8, !tbaa !8
  %488 = load i64, ptr %Abe, align 8, !tbaa !8
  %489 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx451 = getelementptr inbounds i64, ptr %489, i64 1
  store i64 %488, ptr %arrayidx451, align 8, !tbaa !8
  %490 = load i64, ptr %Abi, align 8, !tbaa !8
  %491 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx452 = getelementptr inbounds i64, ptr %491, i64 2
  store i64 %490, ptr %arrayidx452, align 8, !tbaa !8
  %492 = load i64, ptr %Abo, align 8, !tbaa !8
  %493 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx453 = getelementptr inbounds i64, ptr %493, i64 3
  store i64 %492, ptr %arrayidx453, align 8, !tbaa !8
  %494 = load i64, ptr %Abu, align 8, !tbaa !8
  %495 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx454 = getelementptr inbounds i64, ptr %495, i64 4
  store i64 %494, ptr %arrayidx454, align 8, !tbaa !8
  %496 = load i64, ptr %Aga, align 8, !tbaa !8
  %497 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx455 = getelementptr inbounds i64, ptr %497, i64 5
  store i64 %496, ptr %arrayidx455, align 8, !tbaa !8
  %498 = load i64, ptr %Age, align 8, !tbaa !8
  %499 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx456 = getelementptr inbounds i64, ptr %499, i64 6
  store i64 %498, ptr %arrayidx456, align 8, !tbaa !8
  %500 = load i64, ptr %Agi, align 8, !tbaa !8
  %501 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx457 = getelementptr inbounds i64, ptr %501, i64 7
  store i64 %500, ptr %arrayidx457, align 8, !tbaa !8
  %502 = load i64, ptr %Ago, align 8, !tbaa !8
  %503 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx458 = getelementptr inbounds i64, ptr %503, i64 8
  store i64 %502, ptr %arrayidx458, align 8, !tbaa !8
  %504 = load i64, ptr %Agu, align 8, !tbaa !8
  %505 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx459 = getelementptr inbounds i64, ptr %505, i64 9
  store i64 %504, ptr %arrayidx459, align 8, !tbaa !8
  %506 = load i64, ptr %Aka, align 8, !tbaa !8
  %507 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx460 = getelementptr inbounds i64, ptr %507, i64 10
  store i64 %506, ptr %arrayidx460, align 8, !tbaa !8
  %508 = load i64, ptr %Ake, align 8, !tbaa !8
  %509 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx461 = getelementptr inbounds i64, ptr %509, i64 11
  store i64 %508, ptr %arrayidx461, align 8, !tbaa !8
  %510 = load i64, ptr %Aki, align 8, !tbaa !8
  %511 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx462 = getelementptr inbounds i64, ptr %511, i64 12
  store i64 %510, ptr %arrayidx462, align 8, !tbaa !8
  %512 = load i64, ptr %Ako, align 8, !tbaa !8
  %513 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx463 = getelementptr inbounds i64, ptr %513, i64 13
  store i64 %512, ptr %arrayidx463, align 8, !tbaa !8
  %514 = load i64, ptr %Aku, align 8, !tbaa !8
  %515 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx464 = getelementptr inbounds i64, ptr %515, i64 14
  store i64 %514, ptr %arrayidx464, align 8, !tbaa !8
  %516 = load i64, ptr %Ama, align 8, !tbaa !8
  %517 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx465 = getelementptr inbounds i64, ptr %517, i64 15
  store i64 %516, ptr %arrayidx465, align 8, !tbaa !8
  %518 = load i64, ptr %Ame, align 8, !tbaa !8
  %519 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx466 = getelementptr inbounds i64, ptr %519, i64 16
  store i64 %518, ptr %arrayidx466, align 8, !tbaa !8
  %520 = load i64, ptr %Ami, align 8, !tbaa !8
  %521 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx467 = getelementptr inbounds i64, ptr %521, i64 17
  store i64 %520, ptr %arrayidx467, align 8, !tbaa !8
  %522 = load i64, ptr %Amo, align 8, !tbaa !8
  %523 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx468 = getelementptr inbounds i64, ptr %523, i64 18
  store i64 %522, ptr %arrayidx468, align 8, !tbaa !8
  %524 = load i64, ptr %Amu, align 8, !tbaa !8
  %525 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx469 = getelementptr inbounds i64, ptr %525, i64 19
  store i64 %524, ptr %arrayidx469, align 8, !tbaa !8
  %526 = load i64, ptr %Asa, align 8, !tbaa !8
  %527 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx470 = getelementptr inbounds i64, ptr %527, i64 20
  store i64 %526, ptr %arrayidx470, align 8, !tbaa !8
  %528 = load i64, ptr %Ase, align 8, !tbaa !8
  %529 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx471 = getelementptr inbounds i64, ptr %529, i64 21
  store i64 %528, ptr %arrayidx471, align 8, !tbaa !8
  %530 = load i64, ptr %Asi, align 8, !tbaa !8
  %531 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx472 = getelementptr inbounds i64, ptr %531, i64 22
  store i64 %530, ptr %arrayidx472, align 8, !tbaa !8
  %532 = load i64, ptr %Aso, align 8, !tbaa !8
  %533 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx473 = getelementptr inbounds i64, ptr %533, i64 23
  store i64 %532, ptr %arrayidx473, align 8, !tbaa !8
  %534 = load i64, ptr %Asu, align 8, !tbaa !8
  %535 = load ptr, ptr %state.addr, align 8, !tbaa !4
  %arrayidx474 = getelementptr inbounds i64, ptr %535, i64 24
  store i64 %534, ptr %arrayidx474, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %Esu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eso) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Esi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ese) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Esa) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Emu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Emo) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Emi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eme) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ema) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eku) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eko) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eki) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eke) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eka) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Egu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ego) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Egi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ege) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ega) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebo) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ebe) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eba) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Du) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Do) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Di) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %De) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Da) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %BCu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %BCo) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %BCi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %BCe) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %BCa) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Asu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aso) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Asi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ase) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Asa) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Amu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Amo) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ami) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ame) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ama) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aku) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ako) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aki) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ake) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aka) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Agu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ago) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Agi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Age) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aga) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Abu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Abo) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Abi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Abe) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Aba) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %round) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @store64(ptr noundef %x, i64 noundef %u) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %u.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store i64 %u, ptr %u.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %u.addr, align 8, !tbaa !8
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %mul = mul i32 8, %2
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %1, %sh_prom
  %conv = trunc i64 %shr to i8
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %4 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}

; ModuleID = 'samples/708.bc'
source_filename = "aesni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_aes_context = type { i32, ptr, [68 x i32] }

@mbedtls_aesni_has_support.done = internal global i32 0, align 4
@mbedtls_aesni_has_support.c = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_aesni_has_support(i32 noundef %what) #0 {
entry:
  %what.addr = alloca i32, align 4
  store i32 %what, ptr %what.addr, align 4
  %0 = load i32, ptr @mbedtls_aesni_has_support.done, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = call i32 asm "movl  $$1, %eax   \0A\09cpuid             \0A\09", "={cx},~{eax},~{ebx},~{edx},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store i32 %1, ptr @mbedtls_aesni_has_support.c, align 4
  store i32 1, ptr @mbedtls_aesni_has_support.done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @mbedtls_aesni_has_support.c, align 4
  %3 = load i32, ptr %what.addr, align 4
  %and = and i32 %2, %3
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_aesni_crypt_ecb(ptr noundef %ctx, i32 noundef %mode, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %mode, ptr %mode.addr, align 4
  store ptr %input, ptr %input.addr, align 8
  store ptr %output, ptr %output.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %nr = getelementptr inbounds %struct.mbedtls_aes_context, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nr, align 8
  %2 = load ptr, ptr %ctx.addr, align 8
  %rk = getelementptr inbounds %struct.mbedtls_aes_context, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rk, align 8
  %4 = load i32, ptr %mode.addr, align 4
  %5 = load ptr, ptr %input.addr, align 8
  %6 = load ptr, ptr %output.addr, align 8
  call void asm sideeffect "movdqu    ($3), %xmm0    \0A\09movdqu    ($1), %xmm1    \0A\09pxor      %xmm1, %xmm0  \0A\09add       $$16, $1         \0A\09subl      $$1, $0          \0A\09test      $2, $2          \0A\09jz        2f              \0A\091:                        \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDC,0xC1\0A\09add       $$16, $1         \0A\09subl      $$1, $0          \0A\09jnz       1b              \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDD,0xC1\0A\09jmp       3f              \0A\092:                        \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDE,0xC1\0A\09add       $$16, $1         \0A\09subl      $$1, $0          \0A\09jnz       2b              \0A\09movdqu    ($1), %xmm1    \0A\09.byte 0x66,0x0F,0x38,0xDF,0xC1\0A\093:                        \0A\09movdqu    %xmm0, ($4)    \0A\09", "r,r,r,r,r,~{memory},~{cc},~{xmm0},~{xmm1},~{dirflag},~{fpsr},~{flags}"(i32 %1, ptr %3, i32 %4, ptr %5, ptr %6) #3, !srcloc !6
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_aesni_gcm_mult(ptr noundef %c, ptr noundef %a, ptr noundef %b) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %aa = alloca [16 x i8], align 16
  %bb = alloca [16 x i8], align 16
  %cc = alloca [16 x i8], align 16
  %i = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %a.addr, align 8
  %2 = load i64, ptr %i, align 8
  %sub = sub i64 15, %2
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %sub
  %3 = load i8, ptr %arrayidx, align 1
  %4 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds [16 x i8], ptr %aa, i64 0, i64 %4
  store i8 %3, ptr %arrayidx1, align 1
  %5 = load ptr, ptr %b.addr, align 8
  %6 = load i64, ptr %i, align 8
  %sub2 = sub i64 15, %6
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %sub2
  %7 = load i8, ptr %arrayidx3, align 1
  %8 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds [16 x i8], ptr %bb, i64 0, i64 %8
  store i8 %7, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i8], ptr %aa, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %bb, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %cc, i64 0, i64 0
  call void asm sideeffect "movdqu ($0), %xmm0               \0A\09movdqu ($1), %xmm1               \0A\09movdqa %xmm1, %xmm2             \0A\09movdqa %xmm1, %xmm3             \0A\09movdqa %xmm1, %xmm4             \0A\09.byte 0x66,0x0F,0x3A,0x44,0xC8,0x00         \0A\09.byte 0x66,0x0F,0x3A,0x44,0xD0,0x11         \0A\09.byte 0x66,0x0F,0x3A,0x44,0xD8,0x10         \0A\09.byte 0x66,0x0F,0x3A,0x44,0xE0,0x01         \0A\09pxor %xmm3, %xmm4               \0A\09movdqa %xmm4, %xmm3             \0A\09psrldq $$8, %xmm4                 \0A\09pslldq $$8, %xmm3                 \0A\09pxor %xmm4, %xmm2               \0A\09pxor %xmm3, %xmm1               \0A\09movdqa %xmm1, %xmm3             \0A\09movdqa %xmm2, %xmm4             \0A\09psllq $$1, %xmm1                  \0A\09psllq $$1, %xmm2                  \0A\09psrlq $$63, %xmm3                 \0A\09psrlq $$63, %xmm4                 \0A\09movdqa %xmm3, %xmm5             \0A\09pslldq $$8, %xmm3                 \0A\09pslldq $$8, %xmm4                 \0A\09psrldq $$8, %xmm5                 \0A\09por %xmm3, %xmm1                \0A\09por %xmm4, %xmm2                \0A\09por %xmm5, %xmm2                \0A\09movdqa %xmm1, %xmm3             \0A\09movdqa %xmm1, %xmm4             \0A\09movdqa %xmm1, %xmm5             \0A\09psllq $$63, %xmm3                 \0A\09psllq $$62, %xmm4                 \0A\09psllq $$57, %xmm5                 \0A\09pxor %xmm4, %xmm3               \0A\09pxor %xmm5, %xmm3               \0A\09pslldq $$8, %xmm3                 \0A\09pxor %xmm3, %xmm1               \0A\09movdqa %xmm1,%xmm0              \0A\09movdqa %xmm1,%xmm4              \0A\09movdqa %xmm1,%xmm5              \0A\09psrlq $$1, %xmm0                  \0A\09psrlq $$2, %xmm4                  \0A\09psrlq $$7, %xmm5                  \0A\09pxor %xmm4, %xmm0               \0A\09pxor %xmm5, %xmm0               \0A\09movdqa %xmm1,%xmm3              \0A\09movdqa %xmm1,%xmm4              \0A\09movdqa %xmm1,%xmm5              \0A\09psllq $$63, %xmm3                 \0A\09psllq $$62, %xmm4                 \0A\09psllq $$57, %xmm5                 \0A\09pxor %xmm4, %xmm3               \0A\09pxor %xmm5, %xmm3               \0A\09psrldq $$8, %xmm3                 \0A\09pxor %xmm3, %xmm0               \0A\09pxor %xmm1, %xmm0               \0A\09pxor %xmm2, %xmm0               \0A\09movdqu %xmm0, ($2)               \0A\09", "r,r,r,~{memory},~{cc},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{dirflag},~{fpsr},~{flags}"(ptr %arraydecay, ptr %arraydecay5, ptr %arraydecay6) #3, !srcloc !9
  store i64 0, ptr %i, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %for.end
  %10 = load i64, ptr %i, align 8
  %cmp8 = icmp ult i64 %10, 16
  br i1 %cmp8, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond7
  %11 = load i64, ptr %i, align 8
  %sub10 = sub i64 15, %11
  %arrayidx11 = getelementptr inbounds [16 x i8], ptr %cc, i64 0, i64 %sub10
  %12 = load i8, ptr %arrayidx11, align 1
  %13 = load ptr, ptr %c.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %arrayidx12, align 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %15 = load i64, ptr %i, align 8
  %inc14 = add i64 %15, 1
  store i64 %inc14, ptr %i, align 8
  br label %for.cond7, !llvm.loop !10

for.end15:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_aesni_inverse_key(ptr noundef %invkey, ptr noundef %fwdkey, i32 noundef %nr) #0 {
entry:
  %invkey.addr = alloca ptr, align 8
  %fwdkey.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %ik = alloca ptr, align 8
  %fk = alloca ptr, align 8
  store ptr %invkey, ptr %invkey.addr, align 8
  store ptr %fwdkey, ptr %fwdkey.addr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  %0 = load ptr, ptr %invkey.addr, align 8
  store ptr %0, ptr %ik, align 8
  %1 = load ptr, ptr %fwdkey.addr, align 8
  %2 = load i32, ptr %nr.addr, align 4
  %mul = mul nsw i32 16, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %fk, align 8
  %3 = load ptr, ptr %ik, align 8
  %4 = load ptr, ptr %fk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 16, i1 false)
  %5 = load ptr, ptr %fk, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %5, i64 -16
  store ptr %add.ptr1, ptr %fk, align 8
  %6 = load ptr, ptr %ik, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr %add.ptr2, ptr %ik, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %fk, align 8
  %8 = load ptr, ptr %fwdkey.addr, align 8
  %cmp = icmp ugt ptr %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %fk, align 8
  %10 = load ptr, ptr %ik, align 8
  call void asm sideeffect "movdqu ($0), %xmm0       \0A\09.byte 0x66,0x0F,0x38,0xDB,0xC0\0A\09movdqu %xmm0, ($1)       \0A\09", "r,r,~{memory},~{xmm0},~{dirflag},~{fpsr},~{flags}"(ptr %9, ptr %10) #3, !srcloc !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %fk, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %11, i64 -16
  store ptr %add.ptr3, ptr %fk, align 8
  %12 = load ptr, ptr %ik, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %12, i64 16
  store ptr %add.ptr4, ptr %ik, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %ik, align 8
  %14 = load ptr, ptr %fk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_aesni_setkey_enc(ptr noundef %rk, ptr noundef %key, i64 noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %rk.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  store ptr %rk, ptr %rk.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  %0 = load i64, ptr %bits.addr, align 8
  switch i64 %0, label %sw.default [
    i64 128, label %sw.bb
    i64 192, label %sw.bb1
    i64 256, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %rk.addr, align 8
  %2 = load ptr, ptr %key.addr, align 8
  call void @aesni_setkey_enc_128(ptr noundef %1, ptr noundef %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %rk.addr, align 8
  %4 = load ptr, ptr %key.addr, align 8
  call void @aesni_setkey_enc_192(ptr noundef %3, ptr noundef %4)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %rk.addr, align 8
  %6 = load ptr, ptr %key.addr, align 8
  call void @aesni_setkey_enc_256(ptr noundef %5, ptr noundef %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -32, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_setkey_enc_128(ptr noundef %rk, ptr noundef %key) #0 {
entry:
  %rk.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %rk, ptr %rk.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %0 = load ptr, ptr %rk.addr, align 8
  %1 = load ptr, ptr %key.addr, align 8
  call void asm sideeffect "movdqu ($1), %xmm0               \0A\09movdqu %xmm0, ($0)               \0A\09jmp 2f                            \0A\091:                                \0A\09pshufd $$0xff, %xmm1, %xmm1      \0A\09pxor %xmm0, %xmm1               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm1               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm1               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm1, %xmm0               \0A\09add $$16, $0                       \0A\09movdqu %xmm0, ($0)               \0A\09ret                               \0A\092:                                \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x01        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x02        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x04        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x08        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x10        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x20        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x40        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x80        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x1B        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xC8,0x36        \0A\09call 1b \0A\09", "r,r,~{memory},~{cc},~{ax},~{dirflag},~{fpsr},~{flags}"(ptr %0, ptr %1) #3, !srcloc !13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_setkey_enc_192(ptr noundef %rk, ptr noundef %key) #0 {
entry:
  %rk.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %rk, ptr %rk.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %0 = load ptr, ptr %rk.addr, align 8
  %1 = load ptr, ptr %key.addr, align 8
  call void asm sideeffect "movdqu ($1), %xmm0   \0A\09movdqu %xmm0, ($0)   \0A\09add $$16, $0           \0A\09movq 16($1), %xmm1   \0A\09movq %xmm1, ($0)     \0A\09add $$8, $0            \0A\09jmp 2f                \0A\091:                            \0A\09pshufd $$0x55, %xmm2, %xmm2  \0A\09pxor %xmm0, %xmm2           \0A\09pslldq $$4, %xmm0             \0A\09pxor %xmm0, %xmm2           \0A\09pslldq $$4, %xmm0             \0A\09pxor %xmm0, %xmm2           \0A\09pslldq $$4, %xmm0             \0A\09pxor %xmm2, %xmm0           \0A\09movdqu %xmm0, ($0)           \0A\09add $$16, $0                   \0A\09pshufd $$0xff, %xmm0, %xmm2  \0A\09pxor %xmm1, %xmm2           \0A\09pslldq $$4, %xmm1             \0A\09pxor %xmm2, %xmm1           \0A\09movq %xmm1, ($0)             \0A\09add $$8, $0                    \0A\09ret                           \0A\092:                            \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x01    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x02    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x04    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x08    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x10    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x20    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x40    \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x80    \0A\09call 1b \0A\09", "r,r,~{memory},~{cc},~{ax},~{dirflag},~{fpsr},~{flags}"(ptr %0, ptr %1) #3, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni_setkey_enc_256(ptr noundef %rk, ptr noundef %key) #0 {
entry:
  %rk.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %rk, ptr %rk.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %0 = load ptr, ptr %rk.addr, align 8
  %1 = load ptr, ptr %key.addr, align 8
  call void asm sideeffect "movdqu ($1), %xmm0           \0A\09movdqu %xmm0, ($0)           \0A\09add $$16, $0                   \0A\09movdqu 16($1), %xmm1         \0A\09movdqu %xmm1, ($0)           \0A\09jmp 2f                        \0A\091:                                \0A\09pshufd $$0xff, %xmm2, %xmm2      \0A\09pxor %xmm0, %xmm2               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm2               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm0, %xmm2               \0A\09pslldq $$4, %xmm0                 \0A\09pxor %xmm2, %xmm0               \0A\09add $$16, $0                       \0A\09movdqu %xmm0, ($0)               \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD0,0x00        \0A\09pshufd $$0xaa, %xmm2, %xmm2      \0A\09pxor %xmm1, %xmm2               \0A\09pslldq $$4, %xmm1                 \0A\09pxor %xmm1, %xmm2               \0A\09pslldq $$4, %xmm1                 \0A\09pxor %xmm1, %xmm2               \0A\09pslldq $$4, %xmm1                 \0A\09pxor %xmm2, %xmm1               \0A\09add $$16, $0                       \0A\09movdqu %xmm1, ($0)               \0A\09ret                               \0A\092:                                \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x01        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x02        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x04        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x08        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x10        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x20        \0A\09call 1b \0A\09.byte 0x66,0x0F,0x3A,0xDF,0xD1,0x40        \0A\09call 1b \0A\09", "r,r,~{memory},~{cc},~{ax},~{dirflag},~{fpsr},~{flags}"(ptr %0, ptr %1) #3, !srcloc !15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{i64 1689, i64 1710, i64 1748}
!6 = !{i64 3171, i64 3200, i64 3256, i64 3318, i64 3371, i64 3440, i64 3508, i64 3559, i64 3617, i64 3678, i64 3738, i64 3792, i64 3861, i64 3911, i64 3953, i64 4013, i64 4069, i64 4112, i64 4173, i64 4215, i64 4269, i64 4311, i64 4353, i64 4395, i64 4455, i64 4512, i64 4554}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i64 5230, i64 5267, i64 5326, i64 5521, i64 5588, i64 5646, i64 5704, i64 5771, i64 5838, i64 5905, i64 5972, i64 6037, i64 6095, i64 6156, i64 6217, i64 6282, i64 6484, i64 6543, i64 6602, i64 6667, i64 6732, i64 6799, i64 6866, i64 6933, i64 6995, i64 7057, i64 7119, i64 7191, i64 7263, i64 7588, i64 7647, i64 7705, i64 7763, i64 7840, i64 7917, i64 8021, i64 8084, i64 8149, i64 8210, i64 8312, i64 8370, i64 8428, i64 8486, i64 8557, i64 8628, i64 8699, i64 8766, i64 8973, i64 9031, i64 9089, i64 9147, i64 9212, i64 9277, i64 9342, i64 9413, i64 9490, i64 9563, i64 9634, i64 9693, i64 9759}
!10 = distinct !{!10, !8}
!11 = !{i64 10382, i64 10411, i64 10457, i64 10503}
!12 = distinct !{!12, !8}
!13 = !{i64 10784, i64 10821, i64 10896, i64 10964, i64 11430, i64 11480, i64 11541, i64 11612, i64 11676, i64 11751, i64 11808, i64 11858, i64 11908, i64 11988, i64 12065, i64 12127, i64 12205, i64 12255, i64 12267, i64 12317, i64 12329, i64 12379, i64 12391, i64 12441, i64 12453, i64 12503, i64 12515, i64 12565, i64 12577, i64 12627, i64 12639, i64 12689, i64 12701, i64 12751, i64 12763, i64 12813, i64 12825}
!14 = !{i64 13071, i64 13096, i64 13161, i64 13199, i64 13237, i64 13275, i64 13313, i64 13351, i64 13806, i64 13852, i64 13909, i64 13976, i64 14029, i64 14075, i64 14121, i64 14167, i64 14213, i64 14288, i64 14334, i64 14380, i64 14441, i64 14512, i64 14572, i64 14648, i64 14694, i64 14740, i64 14787, i64 14833, i64 14845, i64 14891, i64 14903, i64 14949, i64 14961, i64 15007, i64 15019, i64 15065, i64 15077, i64 15123, i64 15135, i64 15181, i64 15193, i64 15239, i64 15251}
!15 = !{i64 15498, i64 15531, i64 15577, i64 15623, i64 15669, i64 15715, i64 15761, i64 16213, i64 16263, i64 16313, i64 16363, i64 16413, i64 16463, i64 16513, i64 16563, i64 16613, i64 16663, i64 16713, i64 16897, i64 16947, i64 16997, i64 17047, i64 17097, i64 17147, i64 17197, i64 17247, i64 17297, i64 17347, i64 17397, i64 17447, i64 17643, i64 17693, i64 17705, i64 17755, i64 17767, i64 17817, i64 17829, i64 17879, i64 17891, i64 17941, i64 17953, i64 18003, i64 18015, i64 18065, i64 18077}

; ModuleID = 'samples/528.bc'
source_filename = "crypto/modes/ocb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocb128_context = type { ptr, ptr, ptr, ptr, ptr, i64, i64, %union.OCB_BLOCK, %union.OCB_BLOCK, ptr, %struct.anon }
%union.OCB_BLOCK = type { [2 x i64] }
%struct.anon = type { i64, i64, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK, %union.OCB_BLOCK }

@.str = private unnamed_addr constant [22 x i8] c"crypto/modes/ocb128.c\00", align 1
@__func__.CRYPTO_ocb128_init = private unnamed_addr constant [19 x i8] c"CRYPTO_ocb128_init\00", align 1
@__func__.CRYPTO_ocb128_copy_ctx = private unnamed_addr constant [23 x i8] c"CRYPTO_ocb128_copy_ctx\00", align 1

; Function Attrs: nounwind uwtable
define ptr @CRYPTO_ocb128_new(ptr noundef %keyenc, ptr noundef %keydec, ptr noundef %encrypt, ptr noundef %decrypt, ptr noundef %stream) #0 {
entry:
  %retval = alloca ptr, align 8
  %keyenc.addr = alloca ptr, align 8
  %keydec.addr = alloca ptr, align 8
  %encrypt.addr = alloca ptr, align 8
  %decrypt.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  %octx = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %keyenc, ptr %keyenc.addr, align 8, !tbaa !4
  store ptr %keydec, ptr %keydec.addr, align 8, !tbaa !4
  store ptr %encrypt, ptr %encrypt.addr, align 8, !tbaa !4
  store ptr %decrypt, ptr %decrypt.addr, align 8, !tbaa !4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %octx) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  %call = call noalias ptr @CRYPTO_malloc(i64 noundef 176, ptr noundef @.str, i32 noundef 137)
  store ptr %call, ptr %octx, align 8, !tbaa !4
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %octx, align 8, !tbaa !4
  %1 = load ptr, ptr %keyenc.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %keydec.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %encrypt.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %decrypt.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %call1 = call i32 @CRYPTO_ocb128_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  store i32 %call1, ptr %ret, align 4, !tbaa !8
  %6 = load i32, ptr %ret, align 4, !tbaa !8
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %octx, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %octx, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %8, ptr noundef @.str, i32 noundef 142)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %octx) #5
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_init(ptr noundef %ctx, ptr noundef %keyenc, ptr noundef %keydec, ptr noundef %encrypt, ptr noundef %decrypt, ptr noundef %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %keyenc.addr = alloca ptr, align 8
  %keydec.addr = alloca ptr, align 8
  %encrypt.addr = alloca ptr, align 8
  %decrypt.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %keyenc, ptr %keyenc.addr, align 8, !tbaa !4
  store ptr %keydec, ptr %keydec.addr, align 8, !tbaa !4
  store ptr %encrypt, ptr %encrypt.addr, align 8, !tbaa !4
  store ptr %decrypt, ptr %decrypt.addr, align 8, !tbaa !4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 176, i1 false)
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_index = getelementptr inbounds %struct.ocb128_context, ptr %1, i32 0, i32 5
  store i64 0, ptr %l_index, align 8, !tbaa !10
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %max_l_index = getelementptr inbounds %struct.ocb128_context, ptr %2, i32 0, i32 6
  store i64 5, ptr %max_l_index, align 8, !tbaa !15
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %max_l_index1 = getelementptr inbounds %struct.ocb128_context, ptr %3, i32 0, i32 6
  %4 = load i64, ptr %max_l_index1, align 8, !tbaa !15
  %mul = mul i64 %4, 16
  %call = call noalias ptr @CRYPTO_malloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 158)
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l = getelementptr inbounds %struct.ocb128_context, ptr %5, i32 0, i32 9
  store ptr %call, ptr %l, align 8, !tbaa !16
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 159, ptr noundef @__func__.CRYPTO_ocb128_init)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %encrypt.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt2 = getelementptr inbounds %struct.ocb128_context, ptr %7, i32 0, i32 0
  store ptr %6, ptr %encrypt2, align 8, !tbaa !17
  %8 = load ptr, ptr %decrypt.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %decrypt3 = getelementptr inbounds %struct.ocb128_context, ptr %9, i32 0, i32 1
  store ptr %8, ptr %decrypt3, align 8, !tbaa !18
  %10 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %stream4 = getelementptr inbounds %struct.ocb128_context, ptr %11, i32 0, i32 4
  store ptr %10, ptr %stream4, align 8, !tbaa !19
  %12 = load ptr, ptr %keyenc.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc5 = getelementptr inbounds %struct.ocb128_context, ptr %13, i32 0, i32 2
  store ptr %12, ptr %keyenc5, align 8, !tbaa !20
  %14 = load ptr, ptr %keydec.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keydec6 = getelementptr inbounds %struct.ocb128_context, ptr %15, i32 0, i32 3
  store ptr %14, ptr %keydec6, align 8, !tbaa !21
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt7 = getelementptr inbounds %struct.ocb128_context, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %encrypt7, align 8, !tbaa !17
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star = getelementptr inbounds %struct.ocb128_context, ptr %18, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], ptr %l_star, i64 0, i64 0
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star8 = getelementptr inbounds %struct.ocb128_context, ptr %19, i32 0, i32 7
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %l_star8, i64 0, i64 0
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc10 = getelementptr inbounds %struct.ocb128_context, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %keyenc10, align 8, !tbaa !20
  call void %17(ptr noundef %arraydecay, ptr noundef %arraydecay9, ptr noundef %21)
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star11 = getelementptr inbounds %struct.ocb128_context, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_dollar = getelementptr inbounds %struct.ocb128_context, ptr %23, i32 0, i32 8
  call void @ocb_double(ptr noundef %l_star11, ptr noundef %l_dollar)
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_dollar12 = getelementptr inbounds %struct.ocb128_context, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l13 = getelementptr inbounds %struct.ocb128_context, ptr %25, i32 0, i32 9
  %26 = load ptr, ptr %l13, align 8, !tbaa !16
  call void @ocb_double(ptr noundef %l_dollar12, ptr noundef %26)
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l14 = getelementptr inbounds %struct.ocb128_context, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %l14, align 8, !tbaa !16
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l15 = getelementptr inbounds %struct.ocb128_context, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %l15, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds %union.OCB_BLOCK, ptr %30, i64 1
  call void @ocb_double(ptr noundef %28, ptr noundef %add.ptr)
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l16 = getelementptr inbounds %struct.ocb128_context, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %l16, align 8, !tbaa !16
  %add.ptr17 = getelementptr inbounds %union.OCB_BLOCK, ptr %32, i64 1
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l18 = getelementptr inbounds %struct.ocb128_context, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %l18, align 8, !tbaa !16
  %add.ptr19 = getelementptr inbounds %union.OCB_BLOCK, ptr %34, i64 2
  call void @ocb_double(ptr noundef %add.ptr17, ptr noundef %add.ptr19)
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l20 = getelementptr inbounds %struct.ocb128_context, ptr %35, i32 0, i32 9
  %36 = load ptr, ptr %l20, align 8, !tbaa !16
  %add.ptr21 = getelementptr inbounds %union.OCB_BLOCK, ptr %36, i64 2
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l22 = getelementptr inbounds %struct.ocb128_context, ptr %37, i32 0, i32 9
  %38 = load ptr, ptr %l22, align 8, !tbaa !16
  %add.ptr23 = getelementptr inbounds %union.OCB_BLOCK, ptr %38, i64 3
  call void @ocb_double(ptr noundef %add.ptr21, ptr noundef %add.ptr23)
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l24 = getelementptr inbounds %struct.ocb128_context, ptr %39, i32 0, i32 9
  %40 = load ptr, ptr %l24, align 8, !tbaa !16
  %add.ptr25 = getelementptr inbounds %union.OCB_BLOCK, ptr %40, i64 3
  %41 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l26 = getelementptr inbounds %struct.ocb128_context, ptr %41, i32 0, i32 9
  %42 = load ptr, ptr %l26, align 8, !tbaa !16
  %add.ptr27 = getelementptr inbounds %union.OCB_BLOCK, ptr %42, i64 4
  call void @ocb_double(ptr noundef %add.ptr25, ptr noundef %add.ptr27)
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_index28 = getelementptr inbounds %struct.ocb128_context, ptr %43, i32 0, i32 5
  store i64 4, ptr %l_index28, align 8, !tbaa !10
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal void @ocb_double(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %mask = alloca i8, align 1
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %mask) #5
  %0 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [16 x i8], ptr %0, i64 0, i64 0
  %1 = load i8, ptr %arrayidx, align 8, !tbaa !22
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 128
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, ptr %mask, align 1, !tbaa !22
  %2 = load i8, ptr %mask, align 1, !tbaa !22
  %conv2 = zext i8 %2 to i32
  %shr = ashr i32 %conv2, 7
  %conv3 = trunc i32 %shr to i8
  store i8 %conv3, ptr %mask, align 1, !tbaa !22
  %3 = load i8, ptr %mask, align 1, !tbaa !22
  %conv4 = zext i8 %3 to i32
  %sub = sub nsw i32 0, %conv4
  %and5 = and i32 %sub, 135
  %conv6 = trunc i32 %and5 to i8
  store i8 %conv6, ptr %mask, align 1, !tbaa !22
  %4 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 0
  %5 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %arraydecay7 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  call void @ocb_block_lshift(ptr noundef %arraydecay, i64 noundef 1, ptr noundef %arraydecay7)
  %6 = load i8, ptr %mask, align 1, !tbaa !22
  %conv8 = zext i8 %6 to i32
  %7 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds [16 x i8], ptr %7, i64 0, i64 15
  %8 = load i8, ptr %arrayidx9, align 1, !tbaa !22
  %conv10 = zext i8 %8 to i32
  %xor = xor i32 %conv10, %conv8
  %conv11 = trunc i32 %xor to i8
  store i8 %conv11, ptr %arrayidx9, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 1, ptr %mask) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_copy_ctx(ptr noundef %dest, ptr noundef %src, ptr noundef %keyenc, ptr noundef %keydec) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %keyenc.addr = alloca ptr, align 8
  %keydec.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  store ptr %keyenc, ptr %keyenc.addr, align 8, !tbaa !4
  store ptr %keydec, ptr %keydec.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %src.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 176, i1 false)
  %2 = load ptr, ptr %keyenc.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %keyenc.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %keyenc1 = getelementptr inbounds %struct.ocb128_context, ptr %4, i32 0, i32 2
  store ptr %3, ptr %keyenc1, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %keydec.addr, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %keydec.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %keydec4 = getelementptr inbounds %struct.ocb128_context, ptr %7, i32 0, i32 3
  store ptr %6, ptr %keydec4, align 8, !tbaa !21
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %l = getelementptr inbounds %struct.ocb128_context, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %l, align 8, !tbaa !16
  %tobool6 = icmp ne ptr %9, null
  br i1 %tobool6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %max_l_index = getelementptr inbounds %struct.ocb128_context, ptr %10, i32 0, i32 6
  %11 = load i64, ptr %max_l_index, align 8, !tbaa !15
  %mul = mul i64 %11, 16
  %call = call noalias ptr @CRYPTO_malloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 205)
  %12 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %l8 = getelementptr inbounds %struct.ocb128_context, ptr %12, i32 0, i32 9
  store ptr %call, ptr %l8, align 8, !tbaa !16
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 206, ptr noundef @__func__.CRYPTO_ocb128_copy_ctx)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then7
  %13 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %l11 = getelementptr inbounds %struct.ocb128_context, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %l11, align 8, !tbaa !16
  %15 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %l12 = getelementptr inbounds %struct.ocb128_context, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %l12, align 8, !tbaa !16
  %17 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %l_index = getelementptr inbounds %struct.ocb128_context, ptr %17, i32 0, i32 5
  %18 = load i64, ptr %l_index, align 8, !tbaa !10
  %add = add i64 %18, 1
  %mul13 = mul i64 %add, 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %16, i64 %mul13, i1 false)
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %if.end5
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then9
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_setiv(ptr noundef %ctx, ptr noundef %iv, i64 noundef %len, i64 noundef %taglen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %taglen.addr = alloca i64, align 8
  %ktop = alloca [16 x i8], align 16
  %tmp = alloca [16 x i8], align 16
  %mask = alloca i8, align 1
  %stretch = alloca [24 x i8], align 16
  %nonce = alloca [16 x i8], align 16
  %bottom = alloca i64, align 8
  %shift = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  store i64 %taglen, ptr %taglen.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 16, ptr %ktop) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %mask) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr %stretch) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %nonce) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bottom) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %shift) #5
  %0 = load i64, ptr %len.addr, align 8, !tbaa !23
  %cmp = icmp ugt i64 %0, 15
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %len.addr, align 8, !tbaa !23
  %cmp1 = icmp ult i64 %1, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i64, ptr %taglen.addr, align 8, !tbaa !23
  %cmp3 = icmp ugt i64 %2, 16
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i64, ptr %taglen.addr, align 8, !tbaa !23
  %cmp5 = icmp ult i64 %3, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess = getelementptr inbounds %struct.ocb128_context, ptr %4, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr align 8 %sess, i8 0, i64 80, i1 false)
  %5 = load i64, ptr %taglen.addr, align 8, !tbaa !23
  %mul = mul i64 %5, 8
  %rem = urem i64 %mul, 128
  %shl = shl i64 %rem, 1
  %conv = trunc i64 %shl to i8
  %arrayidx = getelementptr inbounds [16 x i8], ptr %nonce, i64 0, i64 0
  store i8 %conv, ptr %arrayidx, align 16, !tbaa !22
  %arraydecay = getelementptr inbounds [16 x i8], ptr %nonce, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 1
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 15, i1 false)
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %nonce, i64 0, i64 0
  %add.ptr7 = getelementptr inbounds i8, ptr %arraydecay6, i64 16
  %6 = load i64, ptr %len.addr, align 8, !tbaa !23
  %idx.neg = sub i64 0, %6
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 %idx.neg
  %7 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %8 = load i64, ptr %len.addr, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr8, ptr align 1 %7, i64 %8, i1 false)
  %9 = load i64, ptr %len.addr, align 8, !tbaa !23
  %sub = sub i64 15, %9
  %arrayidx9 = getelementptr inbounds [16 x i8], ptr %nonce, i64 0, i64 %sub
  %10 = load i8, ptr %arrayidx9, align 1, !tbaa !22
  %conv10 = zext i8 %10 to i32
  %or = or i32 %conv10, 1
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, ptr %arrayidx9, align 1, !tbaa !22
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [16 x i8], ptr %nonce, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay12, ptr align 16 %arraydecay13, i64 16, i1 false)
  %arrayidx14 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 15
  %11 = load i8, ptr %arrayidx14, align 1, !tbaa !22
  %conv15 = zext i8 %11 to i32
  %and = and i32 %conv15, 192
  %conv16 = trunc i32 %and to i8
  store i8 %conv16, ptr %arrayidx14, align 1, !tbaa !22
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt = getelementptr inbounds %struct.ocb128_context, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %encrypt, align 8, !tbaa !17
  %arraydecay17 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [16 x i8], ptr %ktop, i64 0, i64 0
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc = getelementptr inbounds %struct.ocb128_context, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %keyenc, align 8, !tbaa !20
  call void %13(ptr noundef %arraydecay17, ptr noundef %arraydecay18, ptr noundef %15)
  %arraydecay19 = getelementptr inbounds [24 x i8], ptr %stretch, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [16 x i8], ptr %ktop, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay19, ptr align 16 %arraydecay20, i64 16, i1 false)
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %ktop, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [16 x i8], ptr %ktop, i64 0, i64 0
  %add.ptr23 = getelementptr inbounds i8, ptr %arraydecay22, i64 1
  %arraydecay24 = getelementptr inbounds [24 x i8], ptr %stretch, i64 0, i64 0
  %add.ptr25 = getelementptr inbounds i8, ptr %arraydecay24, i64 16
  call void @ocb_block_xor(ptr noundef %arraydecay21, ptr noundef %add.ptr23, i64 noundef 8, ptr noundef %add.ptr25)
  %arrayidx26 = getelementptr inbounds [16 x i8], ptr %nonce, i64 0, i64 15
  %16 = load i8, ptr %arrayidx26, align 1, !tbaa !22
  %conv27 = zext i8 %16 to i32
  %and28 = and i32 %conv27, 63
  %conv29 = sext i32 %and28 to i64
  store i64 %conv29, ptr %bottom, align 8, !tbaa !23
  %17 = load i64, ptr %bottom, align 8, !tbaa !23
  %rem30 = urem i64 %17, 8
  store i64 %rem30, ptr %shift, align 8, !tbaa !23
  %arraydecay31 = getelementptr inbounds [24 x i8], ptr %stretch, i64 0, i64 0
  %18 = load i64, ptr %bottom, align 8, !tbaa !23
  %div = udiv i64 %18, 8
  %add.ptr32 = getelementptr inbounds i8, ptr %arraydecay31, i64 %div
  %19 = load i64, ptr %shift, align 8, !tbaa !23
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess33 = getelementptr inbounds %struct.ocb128_context, ptr %20, i32 0, i32 10
  %offset = getelementptr inbounds %struct.anon, ptr %sess33, i32 0, i32 4
  %arraydecay34 = getelementptr inbounds [16 x i8], ptr %offset, i64 0, i64 0
  call void @ocb_block_lshift(ptr noundef %add.ptr32, i64 noundef %19, ptr noundef %arraydecay34)
  store i8 -1, ptr %mask, align 1, !tbaa !22
  %21 = load i64, ptr %shift, align 8, !tbaa !23
  %sub35 = sub i64 8, %21
  %22 = load i8, ptr %mask, align 1, !tbaa !22
  %conv36 = zext i8 %22 to i32
  %sh_prom = trunc i64 %sub35 to i32
  %shl37 = shl i32 %conv36, %sh_prom
  %conv38 = trunc i32 %shl37 to i8
  store i8 %conv38, ptr %mask, align 1, !tbaa !22
  %arraydecay39 = getelementptr inbounds [24 x i8], ptr %stretch, i64 0, i64 0
  %23 = load i64, ptr %bottom, align 8, !tbaa !23
  %div40 = udiv i64 %23, 8
  %add.ptr41 = getelementptr inbounds i8, ptr %arraydecay39, i64 %div40
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr41, i64 16
  %24 = load i8, ptr %add.ptr42, align 1, !tbaa !22
  %conv43 = zext i8 %24 to i32
  %25 = load i8, ptr %mask, align 1, !tbaa !22
  %conv44 = zext i8 %25 to i32
  %and45 = and i32 %conv43, %conv44
  %26 = load i64, ptr %shift, align 8, !tbaa !23
  %sub46 = sub i64 8, %26
  %sh_prom47 = trunc i64 %sub46 to i32
  %shr = ashr i32 %and45, %sh_prom47
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess48 = getelementptr inbounds %struct.ocb128_context, ptr %27, i32 0, i32 10
  %offset49 = getelementptr inbounds %struct.anon, ptr %sess48, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [16 x i8], ptr %offset49, i64 0, i64 15
  %28 = load i8, ptr %arrayidx50, align 1, !tbaa !22
  %conv51 = zext i8 %28 to i32
  %or52 = or i32 %conv51, %shr
  %conv53 = trunc i32 %or52 to i8
  store i8 %conv53, ptr %arrayidx50, align 1, !tbaa !22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %shift) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %bottom) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %nonce) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr %stretch) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %mask) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %ktop) #5
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @ocb_block_xor(ptr noundef %in1, ptr noundef %in2, i64 noundef %len, ptr noundef %out) #0 {
entry:
  %in1.addr = alloca ptr, align 8
  %in2.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %in1, ptr %in1.addr, align 8, !tbaa !4
  store ptr %in2, ptr %in2.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  store i64 0, ptr %i, align 8, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !23
  %1 = load i64, ptr %len.addr, align 8, !tbaa !23
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %in1.addr, align 8, !tbaa !4
  %3 = load i64, ptr %i, align 8, !tbaa !23
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %in2.addr, align 8, !tbaa !4
  %6 = load i64, ptr %i, align 8, !tbaa !23
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 %6
  %7 = load i8, ptr %arrayidx1, align 1, !tbaa !22
  %conv2 = zext i8 %7 to i32
  %xor = xor i32 %conv, %conv2
  %conv3 = trunc i32 %xor to i8
  %8 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %9 = load i64, ptr %i, align 8, !tbaa !23
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 %conv3, ptr %arrayidx4, align 1, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8, !tbaa !23
  %inc = add i64 %10, 1
  store i64 %inc, ptr %i, align 8, !tbaa !23
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ocb_block_lshift(ptr noundef %in, i64 noundef %shift, ptr noundef %out) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %shift.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %carry = alloca i8, align 1
  %carry_next = alloca i8, align 1
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %shift, ptr %shift.addr, align 8, !tbaa !23
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %carry) #5
  store i8 0, ptr %carry, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 1, ptr %carry_next) #5
  store i32 15, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %3 to i32
  %4 = load i64, ptr %shift.addr, align 8, !tbaa !23
  %sub = sub i64 8, %4
  %sh_prom = trunc i64 %sub to i32
  %shr = ashr i32 %conv, %sh_prom
  %conv1 = trunc i32 %shr to i8
  store i8 %conv1, ptr %carry_next, align 1, !tbaa !22
  %5 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %idxprom2
  %7 = load i8, ptr %arrayidx3, align 1, !tbaa !22
  %conv4 = zext i8 %7 to i32
  %8 = load i64, ptr %shift.addr, align 8, !tbaa !23
  %sh_prom5 = trunc i64 %8 to i32
  %shl = shl i32 %conv4, %sh_prom5
  %9 = load i8, ptr %carry, align 1, !tbaa !22
  %conv6 = zext i8 %9 to i32
  %or = or i32 %shl, %conv6
  %conv7 = trunc i32 %or to i8
  %10 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1, !tbaa !22
  %12 = load i8, ptr %carry_next, align 1, !tbaa !22
  store i8 %12, ptr %carry, align 1, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %carry_next) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %carry) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_aad(ptr noundef %ctx, ptr noundef %aad, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %aad.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %all_num_blocks = alloca i64, align 8
  %num_blocks = alloca i64, align 8
  %last_len = alloca i64, align 8
  %tmp = alloca %union.OCB_BLOCK, align 8
  %lookup = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %aad, ptr %aad.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_num_blocks) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_blocks) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_len) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5
  %0 = load i64, ptr %len.addr, align 8, !tbaa !23
  %div = udiv i64 %0, 16
  store i64 %div, ptr %num_blocks, align 8, !tbaa !23
  %1 = load i64, ptr %num_blocks, align 8, !tbaa !23
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess = getelementptr inbounds %struct.ocb128_context, ptr %2, i32 0, i32 10
  %blocks_hashed = getelementptr inbounds %struct.anon, ptr %sess, i32 0, i32 0
  %3 = load i64, ptr %blocks_hashed, align 8, !tbaa !27
  %add = add i64 %1, %3
  store i64 %add, ptr %all_num_blocks, align 8, !tbaa !28
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess1 = getelementptr inbounds %struct.ocb128_context, ptr %4, i32 0, i32 10
  %blocks_hashed2 = getelementptr inbounds %struct.anon, ptr %sess1, i32 0, i32 0
  %5 = load i64, ptr %blocks_hashed2, align 8, !tbaa !27
  %add3 = add i64 %5, 1
  store i64 %add3, ptr %i, align 8, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i64, ptr %i, align 8, !tbaa !28
  %7 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %cmp = icmp ule i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %lookup) #5
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %9 = load i64, ptr %i, align 8, !tbaa !28
  %call = call i32 @ocb_ntz(i64 noundef %9)
  %conv = zext i32 %call to i64
  %call4 = call ptr @ocb_lookup_l(ptr noundef %8, i64 noundef %conv)
  store ptr %call4, ptr %lookup, align 8, !tbaa !4
  %10 = load ptr, ptr %lookup, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %10, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess7 = getelementptr inbounds %struct.ocb128_context, ptr %11, i32 0, i32 10
  %offset_aad = getelementptr inbounds %struct.anon, ptr %sess7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x i64], ptr %offset_aad, i64 0, i64 0
  %12 = load i64, ptr %arrayidx, align 8, !tbaa !22
  %13 = load ptr, ptr %lookup, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds [2 x i64], ptr %13, i64 0, i64 0
  %14 = load i64, ptr %arrayidx8, align 8, !tbaa !22
  %xor = xor i64 %12, %14
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess9 = getelementptr inbounds %struct.ocb128_context, ptr %15, i32 0, i32 10
  %offset_aad10 = getelementptr inbounds %struct.anon, ptr %sess9, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [2 x i64], ptr %offset_aad10, i64 0, i64 0
  store i64 %xor, ptr %arrayidx11, align 8, !tbaa !22
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess12 = getelementptr inbounds %struct.ocb128_context, ptr %16, i32 0, i32 10
  %offset_aad13 = getelementptr inbounds %struct.anon, ptr %sess12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [2 x i64], ptr %offset_aad13, i64 0, i64 1
  %17 = load i64, ptr %arrayidx14, align 8, !tbaa !22
  %18 = load ptr, ptr %lookup, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds [2 x i64], ptr %18, i64 0, i64 1
  %19 = load i64, ptr %arrayidx15, align 8, !tbaa !22
  %xor16 = xor i64 %17, %19
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess17 = getelementptr inbounds %struct.ocb128_context, ptr %20, i32 0, i32 10
  %offset_aad18 = getelementptr inbounds %struct.anon, ptr %sess17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %offset_aad18, i64 0, i64 1
  store i64 %xor16, ptr %arrayidx19, align 8, !tbaa !22
  %arraydecay = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %21 = load ptr, ptr %aad.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 %21, i64 16, i1 false)
  %22 = load ptr, ptr %aad.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 16
  store ptr %add.ptr, ptr %aad.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess20 = getelementptr inbounds %struct.ocb128_context, ptr %23, i32 0, i32 10
  %offset_aad21 = getelementptr inbounds %struct.anon, ptr %sess20, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr %offset_aad21, i64 0, i64 0
  %24 = load i64, ptr %arrayidx22, align 8, !tbaa !22
  %arrayidx23 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %25 = load i64, ptr %arrayidx23, align 8, !tbaa !22
  %xor24 = xor i64 %24, %25
  %arrayidx25 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor24, ptr %arrayidx25, align 8, !tbaa !22
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess26 = getelementptr inbounds %struct.ocb128_context, ptr %26, i32 0, i32 10
  %offset_aad27 = getelementptr inbounds %struct.anon, ptr %sess26, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [2 x i64], ptr %offset_aad27, i64 0, i64 1
  %27 = load i64, ptr %arrayidx28, align 8, !tbaa !22
  %arrayidx29 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %28 = load i64, ptr %arrayidx29, align 8, !tbaa !22
  %xor30 = xor i64 %27, %28
  %arrayidx31 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor30, ptr %arrayidx31, align 8, !tbaa !22
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt = getelementptr inbounds %struct.ocb128_context, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %encrypt, align 8, !tbaa !17
  %arraydecay32 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay33 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc = getelementptr inbounds %struct.ocb128_context, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %keyenc, align 8, !tbaa !20
  call void %30(ptr noundef %arraydecay32, ptr noundef %arraydecay33, ptr noundef %32)
  %arrayidx34 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %33 = load i64, ptr %arrayidx34, align 8, !tbaa !22
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess35 = getelementptr inbounds %struct.ocb128_context, ptr %34, i32 0, i32 10
  %sum = getelementptr inbounds %struct.anon, ptr %sess35, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [2 x i64], ptr %sum, i64 0, i64 0
  %35 = load i64, ptr %arrayidx36, align 8, !tbaa !22
  %xor37 = xor i64 %33, %35
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess38 = getelementptr inbounds %struct.ocb128_context, ptr %36, i32 0, i32 10
  %sum39 = getelementptr inbounds %struct.anon, ptr %sess38, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [2 x i64], ptr %sum39, i64 0, i64 0
  store i64 %xor37, ptr %arrayidx40, align 8, !tbaa !22
  %arrayidx41 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %37 = load i64, ptr %arrayidx41, align 8, !tbaa !22
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess42 = getelementptr inbounds %struct.ocb128_context, ptr %38, i32 0, i32 10
  %sum43 = getelementptr inbounds %struct.anon, ptr %sess42, i32 0, i32 3
  %arrayidx44 = getelementptr inbounds [2 x i64], ptr %sum43, i64 0, i64 1
  %39 = load i64, ptr %arrayidx44, align 8, !tbaa !22
  %xor45 = xor i64 %37, %39
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess46 = getelementptr inbounds %struct.ocb128_context, ptr %40, i32 0, i32 10
  %sum47 = getelementptr inbounds %struct.anon, ptr %sess46, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [2 x i64], ptr %sum47, i64 0, i64 1
  store i64 %xor45, ptr %arrayidx48, align 8, !tbaa !22
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lookup) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup107 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %41 = load i64, ptr %i, align 8, !tbaa !28
  %inc = add i64 %41, 1
  store i64 %inc, ptr %i, align 8, !tbaa !28
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %42 = load i64, ptr %len.addr, align 8, !tbaa !23
  %rem = urem i64 %42, 16
  store i64 %rem, ptr %last_len, align 8, !tbaa !23
  %43 = load i64, ptr %last_len, align 8, !tbaa !23
  %cmp49 = icmp ugt i64 %43, 0
  br i1 %cmp49, label %if.then51, label %if.end104

if.then51:                                        ; preds = %for.end
  %44 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess52 = getelementptr inbounds %struct.ocb128_context, ptr %44, i32 0, i32 10
  %offset_aad53 = getelementptr inbounds %struct.anon, ptr %sess52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [2 x i64], ptr %offset_aad53, i64 0, i64 0
  %45 = load i64, ptr %arrayidx54, align 8, !tbaa !22
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star = getelementptr inbounds %struct.ocb128_context, ptr %46, i32 0, i32 7
  %arrayidx55 = getelementptr inbounds [2 x i64], ptr %l_star, i64 0, i64 0
  %47 = load i64, ptr %arrayidx55, align 8, !tbaa !22
  %xor56 = xor i64 %45, %47
  %48 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess57 = getelementptr inbounds %struct.ocb128_context, ptr %48, i32 0, i32 10
  %offset_aad58 = getelementptr inbounds %struct.anon, ptr %sess57, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [2 x i64], ptr %offset_aad58, i64 0, i64 0
  store i64 %xor56, ptr %arrayidx59, align 8, !tbaa !22
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess60 = getelementptr inbounds %struct.ocb128_context, ptr %49, i32 0, i32 10
  %offset_aad61 = getelementptr inbounds %struct.anon, ptr %sess60, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [2 x i64], ptr %offset_aad61, i64 0, i64 1
  %50 = load i64, ptr %arrayidx62, align 8, !tbaa !22
  %51 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star63 = getelementptr inbounds %struct.ocb128_context, ptr %51, i32 0, i32 7
  %arrayidx64 = getelementptr inbounds [2 x i64], ptr %l_star63, i64 0, i64 1
  %52 = load i64, ptr %arrayidx64, align 8, !tbaa !22
  %xor65 = xor i64 %50, %52
  %53 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess66 = getelementptr inbounds %struct.ocb128_context, ptr %53, i32 0, i32 10
  %offset_aad67 = getelementptr inbounds %struct.anon, ptr %sess66, i32 0, i32 2
  %arrayidx68 = getelementptr inbounds [2 x i64], ptr %offset_aad67, i64 0, i64 1
  store i64 %xor65, ptr %arrayidx68, align 8, !tbaa !22
  %arraydecay69 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay69, i8 0, i64 16, i1 false)
  %arraydecay70 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %54 = load ptr, ptr %aad.addr, align 8, !tbaa !4
  %55 = load i64, ptr %last_len, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay70, ptr align 1 %54, i64 %55, i1 false)
  %56 = load i64, ptr %last_len, align 8, !tbaa !23
  %arrayidx71 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 %56
  store i8 -128, ptr %arrayidx71, align 1, !tbaa !22
  %57 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess72 = getelementptr inbounds %struct.ocb128_context, ptr %57, i32 0, i32 10
  %offset_aad73 = getelementptr inbounds %struct.anon, ptr %sess72, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [2 x i64], ptr %offset_aad73, i64 0, i64 0
  %58 = load i64, ptr %arrayidx74, align 8, !tbaa !22
  %arrayidx75 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %59 = load i64, ptr %arrayidx75, align 8, !tbaa !22
  %xor76 = xor i64 %58, %59
  %arrayidx77 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor76, ptr %arrayidx77, align 8, !tbaa !22
  %60 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess78 = getelementptr inbounds %struct.ocb128_context, ptr %60, i32 0, i32 10
  %offset_aad79 = getelementptr inbounds %struct.anon, ptr %sess78, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [2 x i64], ptr %offset_aad79, i64 0, i64 1
  %61 = load i64, ptr %arrayidx80, align 8, !tbaa !22
  %arrayidx81 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %62 = load i64, ptr %arrayidx81, align 8, !tbaa !22
  %xor82 = xor i64 %61, %62
  %arrayidx83 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor82, ptr %arrayidx83, align 8, !tbaa !22
  %63 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt84 = getelementptr inbounds %struct.ocb128_context, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %encrypt84, align 8, !tbaa !17
  %arraydecay85 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay86 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %65 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc87 = getelementptr inbounds %struct.ocb128_context, ptr %65, i32 0, i32 2
  %66 = load ptr, ptr %keyenc87, align 8, !tbaa !20
  call void %64(ptr noundef %arraydecay85, ptr noundef %arraydecay86, ptr noundef %66)
  %arrayidx88 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %67 = load i64, ptr %arrayidx88, align 8, !tbaa !22
  %68 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess89 = getelementptr inbounds %struct.ocb128_context, ptr %68, i32 0, i32 10
  %sum90 = getelementptr inbounds %struct.anon, ptr %sess89, i32 0, i32 3
  %arrayidx91 = getelementptr inbounds [2 x i64], ptr %sum90, i64 0, i64 0
  %69 = load i64, ptr %arrayidx91, align 8, !tbaa !22
  %xor92 = xor i64 %67, %69
  %70 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess93 = getelementptr inbounds %struct.ocb128_context, ptr %70, i32 0, i32 10
  %sum94 = getelementptr inbounds %struct.anon, ptr %sess93, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [2 x i64], ptr %sum94, i64 0, i64 0
  store i64 %xor92, ptr %arrayidx95, align 8, !tbaa !22
  %arrayidx96 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %71 = load i64, ptr %arrayidx96, align 8, !tbaa !22
  %72 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess97 = getelementptr inbounds %struct.ocb128_context, ptr %72, i32 0, i32 10
  %sum98 = getelementptr inbounds %struct.anon, ptr %sess97, i32 0, i32 3
  %arrayidx99 = getelementptr inbounds [2 x i64], ptr %sum98, i64 0, i64 1
  %73 = load i64, ptr %arrayidx99, align 8, !tbaa !22
  %xor100 = xor i64 %71, %73
  %74 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess101 = getelementptr inbounds %struct.ocb128_context, ptr %74, i32 0, i32 10
  %sum102 = getelementptr inbounds %struct.anon, ptr %sess101, i32 0, i32 3
  %arrayidx103 = getelementptr inbounds [2 x i64], ptr %sum102, i64 0, i64 1
  store i64 %xor100, ptr %arrayidx103, align 8, !tbaa !22
  br label %if.end104

if.end104:                                        ; preds = %if.then51, %for.end
  %75 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %76 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess105 = getelementptr inbounds %struct.ocb128_context, ptr %76, i32 0, i32 10
  %blocks_hashed106 = getelementptr inbounds %struct.anon, ptr %sess105, i32 0, i32 0
  store i64 %75, ptr %blocks_hashed106, align 8, !tbaa !27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %if.end104, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_len) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_blocks) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_num_blocks) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal ptr @ocb_lookup_l(ptr noundef %ctx, i64 noundef %idx) #0 {
entry:
  %retval = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %l_index = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp_ptr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_index) #5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_index1 = getelementptr inbounds %struct.ocb128_context, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %l_index1, align 8, !tbaa !10
  store i64 %1, ptr %l_index, align 8, !tbaa !23
  %2 = load i64, ptr %idx.addr, align 8, !tbaa !23
  %3 = load i64, ptr %l_index, align 8, !tbaa !23
  %cmp = icmp ule i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l = getelementptr inbounds %struct.ocb128_context, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %l, align 8, !tbaa !16
  %6 = load i64, ptr %idx.addr, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %union.OCB_BLOCK, ptr %5, i64 %6
  store ptr %add.ptr, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %idx.addr, align 8, !tbaa !23
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %max_l_index = getelementptr inbounds %struct.ocb128_context, ptr %8, i32 0, i32 6
  %9 = load i64, ptr %max_l_index, align 8, !tbaa !15
  %cmp2 = icmp uge i64 %7, %9
  br i1 %cmp2, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_ptr) #5
  %10 = load i64, ptr %idx.addr, align 8, !tbaa !23
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %max_l_index4 = getelementptr inbounds %struct.ocb128_context, ptr %11, i32 0, i32 6
  %12 = load i64, ptr %max_l_index4, align 8, !tbaa !15
  %sub = sub i64 %10, %12
  %add = add i64 %sub, 4
  %and = and i64 %add, -4
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %max_l_index5 = getelementptr inbounds %struct.ocb128_context, ptr %13, i32 0, i32 6
  %14 = load i64, ptr %max_l_index5, align 8, !tbaa !15
  %add6 = add i64 %14, %and
  store i64 %add6, ptr %max_l_index5, align 8, !tbaa !15
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l7 = getelementptr inbounds %struct.ocb128_context, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %l7, align 8, !tbaa !16
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %max_l_index8 = getelementptr inbounds %struct.ocb128_context, ptr %17, i32 0, i32 6
  %18 = load i64, ptr %max_l_index8, align 8, !tbaa !15
  %mul = mul i64 %18, 16
  %call = call ptr @CRYPTO_realloc(ptr noundef %16, i64 noundef %mul, ptr noundef @.str, i32 noundef 113)
  store ptr %call, ptr %tmp_ptr, align 8, !tbaa !4
  %19 = load ptr, ptr %tmp_ptr, align 8, !tbaa !4
  %cmp9 = icmp eq ptr %19, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then3
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then3
  %20 = load ptr, ptr %tmp_ptr, align 8, !tbaa !4
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l12 = getelementptr inbounds %struct.ocb128_context, ptr %21, i32 0, i32 9
  store ptr %20, ptr %l12, align 8, !tbaa !16
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_ptr) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13

if.end13:                                         ; preds = %cleanup.cont, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end13
  %22 = load i64, ptr %l_index, align 8, !tbaa !23
  %23 = load i64, ptr %idx.addr, align 8, !tbaa !23
  %cmp14 = icmp ult i64 %22, %23
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l15 = getelementptr inbounds %struct.ocb128_context, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %l15, align 8, !tbaa !16
  %26 = load i64, ptr %l_index, align 8, !tbaa !23
  %add.ptr16 = getelementptr inbounds %union.OCB_BLOCK, ptr %25, i64 %26
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l17 = getelementptr inbounds %struct.ocb128_context, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %l17, align 8, !tbaa !16
  %29 = load i64, ptr %l_index, align 8, !tbaa !23
  %add.ptr18 = getelementptr inbounds %union.OCB_BLOCK, ptr %28, i64 %29
  %add.ptr19 = getelementptr inbounds %union.OCB_BLOCK, ptr %add.ptr18, i64 1
  call void @ocb_double(ptr noundef %add.ptr16, ptr noundef %add.ptr19)
  %30 = load i64, ptr %l_index, align 8, !tbaa !23
  %inc = add i64 %30, 1
  store i64 %inc, ptr %l_index, align 8, !tbaa !23
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %31 = load i64, ptr %l_index, align 8, !tbaa !23
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_index20 = getelementptr inbounds %struct.ocb128_context, ptr %32, i32 0, i32 5
  store i64 %31, ptr %l_index20, align 8, !tbaa !10
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l21 = getelementptr inbounds %struct.ocb128_context, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %l21, align 8, !tbaa !16
  %35 = load i64, ptr %idx.addr, align 8, !tbaa !23
  %add.ptr22 = getelementptr inbounds %union.OCB_BLOCK, ptr %34, i64 %35
  store ptr %add.ptr22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_index) #5
  %36 = load ptr, ptr %retval, align 8
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define internal i32 @ocb_ntz(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %cnt = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #5
  store i32 0, ptr %cnt, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !28
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %n.addr, align 8, !tbaa !28
  %shr = lshr i64 %1, 1
  store i64 %shr, ptr %n.addr, align 8, !tbaa !28
  %2 = load i32, ptr %cnt, align 4, !tbaa !8
  %inc = add i32 %2, 1
  store i32 %inc, ptr %cnt, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %cnt, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #5
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_encrypt(ptr noundef %ctx, ptr noundef %in, ptr noundef %out, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %all_num_blocks = alloca i64, align 8
  %num_blocks = alloca i64, align 8
  %last_len = alloca i64, align 8
  %max_idx = alloca i64, align 8
  %top = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %lookup = alloca ptr, align 8
  %tmp = alloca %union.OCB_BLOCK, align 8
  %pad = alloca %union.OCB_BLOCK, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_num_blocks) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_blocks) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_len) #5
  %0 = load i64, ptr %len.addr, align 8, !tbaa !23
  %div = udiv i64 %0, 16
  store i64 %div, ptr %num_blocks, align 8, !tbaa !23
  %1 = load i64, ptr %num_blocks, align 8, !tbaa !23
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess = getelementptr inbounds %struct.ocb128_context, ptr %2, i32 0, i32 10
  %blocks_processed = getelementptr inbounds %struct.anon, ptr %sess, i32 0, i32 1
  %3 = load i64, ptr %blocks_processed, align 8, !tbaa !32
  %add = add i64 %1, %3
  store i64 %add, ptr %all_num_blocks, align 8, !tbaa !28
  %4 = load i64, ptr %num_blocks, align 8, !tbaa !23
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %6 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %land.lhs.true1, label %if.else

land.lhs.true1:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct.ocb128_context, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %stream, align 8, !tbaa !19
  %cmp2 = icmp ne ptr %8, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_idx) #5
  store i64 0, ptr %max_idx, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #5
  %9 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  store i64 %9, ptr %top, align 8, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load i64, ptr %top, align 8, !tbaa !23
  %shr = lshr i64 %10, 1
  store i64 %shr, ptr %top, align 8, !tbaa !23
  %tobool3 = icmp ne i64 %shr, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i64, ptr %max_idx, align 8, !tbaa !23
  %inc = add i64 %11, 1
  store i64 %inc, ptr %max_idx, align 8, !tbaa !23
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %13 = load i64, ptr %max_idx, align 8, !tbaa !23
  %call = call ptr @ocb_lookup_l(ptr noundef %12, i64 noundef %13)
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.end
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %stream6 = getelementptr inbounds %struct.ocb128_context, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %stream6, align 8, !tbaa !19
  %16 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %18 = load i64, ptr %num_blocks, align 8, !tbaa !23
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc = getelementptr inbounds %struct.ocb128_context, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %keyenc, align 8, !tbaa !20
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess7 = getelementptr inbounds %struct.ocb128_context, ptr %21, i32 0, i32 10
  %blocks_processed8 = getelementptr inbounds %struct.anon, ptr %sess7, i32 0, i32 1
  %22 = load i64, ptr %blocks_processed8, align 8, !tbaa !32
  %add9 = add i64 %22, 1
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess10 = getelementptr inbounds %struct.ocb128_context, ptr %23, i32 0, i32 10
  %offset = getelementptr inbounds %struct.anon, ptr %sess10, i32 0, i32 4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %offset, i64 0, i64 0
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l = getelementptr inbounds %struct.ocb128_context, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %l, align 8, !tbaa !16
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess11 = getelementptr inbounds %struct.ocb128_context, ptr %26, i32 0, i32 10
  %checksum = getelementptr inbounds %struct.anon, ptr %sess11, i32 0, i32 5
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %checksum, i64 0, i64 0
  call void %15(ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %20, i64 noundef %add9, ptr noundef %arraydecay, ptr noundef %25, ptr noundef %arraydecay12)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_idx) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup139 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end89

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess14 = getelementptr inbounds %struct.ocb128_context, ptr %27, i32 0, i32 10
  %blocks_processed15 = getelementptr inbounds %struct.anon, ptr %sess14, i32 0, i32 1
  %28 = load i64, ptr %blocks_processed15, align 8, !tbaa !32
  %add16 = add i64 %28, 1
  store i64 %add16, ptr %i, align 8, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %29 = load i64, ptr %i, align 8, !tbaa !28
  %30 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %cmp17 = icmp ule i64 %29, %30
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %lookup) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %32 = load i64, ptr %i, align 8, !tbaa !28
  %call18 = call i32 @ocb_ntz(i64 noundef %32)
  %conv = zext i32 %call18 to i64
  %call19 = call ptr @ocb_lookup_l(ptr noundef %31, i64 noundef %conv)
  store ptr %call19, ptr %lookup, align 8, !tbaa !4
  %33 = load ptr, ptr %lookup, align 8, !tbaa !4
  %cmp20 = icmp eq ptr %33, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84

if.end23:                                         ; preds = %for.body
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess24 = getelementptr inbounds %struct.ocb128_context, ptr %34, i32 0, i32 10
  %offset25 = getelementptr inbounds %struct.anon, ptr %sess24, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], ptr %offset25, i64 0, i64 0
  %35 = load i64, ptr %arrayidx, align 8, !tbaa !22
  %36 = load ptr, ptr %lookup, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds [2 x i64], ptr %36, i64 0, i64 0
  %37 = load i64, ptr %arrayidx26, align 8, !tbaa !22
  %xor = xor i64 %35, %37
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess27 = getelementptr inbounds %struct.ocb128_context, ptr %38, i32 0, i32 10
  %offset28 = getelementptr inbounds %struct.anon, ptr %sess27, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [2 x i64], ptr %offset28, i64 0, i64 0
  store i64 %xor, ptr %arrayidx29, align 8, !tbaa !22
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess30 = getelementptr inbounds %struct.ocb128_context, ptr %39, i32 0, i32 10
  %offset31 = getelementptr inbounds %struct.anon, ptr %sess30, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [2 x i64], ptr %offset31, i64 0, i64 1
  %40 = load i64, ptr %arrayidx32, align 8, !tbaa !22
  %41 = load ptr, ptr %lookup, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds [2 x i64], ptr %41, i64 0, i64 1
  %42 = load i64, ptr %arrayidx33, align 8, !tbaa !22
  %xor34 = xor i64 %40, %42
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess35 = getelementptr inbounds %struct.ocb128_context, ptr %43, i32 0, i32 10
  %offset36 = getelementptr inbounds %struct.anon, ptr %sess35, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [2 x i64], ptr %offset36, i64 0, i64 1
  store i64 %xor34, ptr %arrayidx37, align 8, !tbaa !22
  %arraydecay38 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %44 = load ptr, ptr %in.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay38, ptr align 1 %44, i64 16, i1 false)
  %45 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %45, i64 16
  store ptr %add.ptr, ptr %in.addr, align 8, !tbaa !4
  %arrayidx39 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %46 = load i64, ptr %arrayidx39, align 8, !tbaa !22
  %47 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess40 = getelementptr inbounds %struct.ocb128_context, ptr %47, i32 0, i32 10
  %checksum41 = getelementptr inbounds %struct.anon, ptr %sess40, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [2 x i64], ptr %checksum41, i64 0, i64 0
  %48 = load i64, ptr %arrayidx42, align 8, !tbaa !22
  %xor43 = xor i64 %46, %48
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess44 = getelementptr inbounds %struct.ocb128_context, ptr %49, i32 0, i32 10
  %checksum45 = getelementptr inbounds %struct.anon, ptr %sess44, i32 0, i32 5
  %arrayidx46 = getelementptr inbounds [2 x i64], ptr %checksum45, i64 0, i64 0
  store i64 %xor43, ptr %arrayidx46, align 8, !tbaa !22
  %arrayidx47 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %50 = load i64, ptr %arrayidx47, align 8, !tbaa !22
  %51 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess48 = getelementptr inbounds %struct.ocb128_context, ptr %51, i32 0, i32 10
  %checksum49 = getelementptr inbounds %struct.anon, ptr %sess48, i32 0, i32 5
  %arrayidx50 = getelementptr inbounds [2 x i64], ptr %checksum49, i64 0, i64 1
  %52 = load i64, ptr %arrayidx50, align 8, !tbaa !22
  %xor51 = xor i64 %50, %52
  %53 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess52 = getelementptr inbounds %struct.ocb128_context, ptr %53, i32 0, i32 10
  %checksum53 = getelementptr inbounds %struct.anon, ptr %sess52, i32 0, i32 5
  %arrayidx54 = getelementptr inbounds [2 x i64], ptr %checksum53, i64 0, i64 1
  store i64 %xor51, ptr %arrayidx54, align 8, !tbaa !22
  %54 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess55 = getelementptr inbounds %struct.ocb128_context, ptr %54, i32 0, i32 10
  %offset56 = getelementptr inbounds %struct.anon, ptr %sess55, i32 0, i32 4
  %arrayidx57 = getelementptr inbounds [2 x i64], ptr %offset56, i64 0, i64 0
  %55 = load i64, ptr %arrayidx57, align 8, !tbaa !22
  %arrayidx58 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %56 = load i64, ptr %arrayidx58, align 8, !tbaa !22
  %xor59 = xor i64 %55, %56
  %arrayidx60 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor59, ptr %arrayidx60, align 8, !tbaa !22
  %57 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess61 = getelementptr inbounds %struct.ocb128_context, ptr %57, i32 0, i32 10
  %offset62 = getelementptr inbounds %struct.anon, ptr %sess61, i32 0, i32 4
  %arrayidx63 = getelementptr inbounds [2 x i64], ptr %offset62, i64 0, i64 1
  %58 = load i64, ptr %arrayidx63, align 8, !tbaa !22
  %arrayidx64 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %59 = load i64, ptr %arrayidx64, align 8, !tbaa !22
  %xor65 = xor i64 %58, %59
  %arrayidx66 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor65, ptr %arrayidx66, align 8, !tbaa !22
  %60 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt = getelementptr inbounds %struct.ocb128_context, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %encrypt, align 8, !tbaa !17
  %arraydecay67 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay68 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %62 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc69 = getelementptr inbounds %struct.ocb128_context, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %keyenc69, align 8, !tbaa !20
  call void %61(ptr noundef %arraydecay67, ptr noundef %arraydecay68, ptr noundef %63)
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess70 = getelementptr inbounds %struct.ocb128_context, ptr %64, i32 0, i32 10
  %offset71 = getelementptr inbounds %struct.anon, ptr %sess70, i32 0, i32 4
  %arrayidx72 = getelementptr inbounds [2 x i64], ptr %offset71, i64 0, i64 0
  %65 = load i64, ptr %arrayidx72, align 8, !tbaa !22
  %arrayidx73 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %66 = load i64, ptr %arrayidx73, align 8, !tbaa !22
  %xor74 = xor i64 %65, %66
  %arrayidx75 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor74, ptr %arrayidx75, align 8, !tbaa !22
  %67 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess76 = getelementptr inbounds %struct.ocb128_context, ptr %67, i32 0, i32 10
  %offset77 = getelementptr inbounds %struct.anon, ptr %sess76, i32 0, i32 4
  %arrayidx78 = getelementptr inbounds [2 x i64], ptr %offset77, i64 0, i64 1
  %68 = load i64, ptr %arrayidx78, align 8, !tbaa !22
  %arrayidx79 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %69 = load i64, ptr %arrayidx79, align 8, !tbaa !22
  %xor80 = xor i64 %68, %69
  %arrayidx81 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor80, ptr %arrayidx81, align 8, !tbaa !22
  %70 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %arraydecay82 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 8 %arraydecay82, i64 16, i1 false)
  %71 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %add.ptr83 = getelementptr inbounds i8, ptr %71, i64 16
  store ptr %add.ptr83, ptr %out.addr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup84

cleanup84:                                        ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %lookup) #5
  %cleanup.dest86 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest86, label %cleanup139 [
    i32 0, label %cleanup.cont87
  ]

cleanup.cont87:                                   ; preds = %cleanup84
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont87
  %72 = load i64, ptr %i, align 8, !tbaa !28
  %inc88 = add i64 %72, 1
  store i64 %inc88, ptr %i, align 8, !tbaa !28
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  br label %if.end89

if.end89:                                         ; preds = %for.end, %cleanup.cont
  %73 = load i64, ptr %len.addr, align 8, !tbaa !23
  %rem = urem i64 %73, 16
  store i64 %rem, ptr %last_len, align 8, !tbaa !23
  %74 = load i64, ptr %last_len, align 8, !tbaa !23
  %cmp90 = icmp ugt i64 %74, 0
  br i1 %cmp90, label %if.then92, label %if.end136

if.then92:                                        ; preds = %if.end89
  call void @llvm.lifetime.start.p0(i64 16, ptr %pad) #5
  %75 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess93 = getelementptr inbounds %struct.ocb128_context, ptr %75, i32 0, i32 10
  %offset94 = getelementptr inbounds %struct.anon, ptr %sess93, i32 0, i32 4
  %arrayidx95 = getelementptr inbounds [2 x i64], ptr %offset94, i64 0, i64 0
  %76 = load i64, ptr %arrayidx95, align 8, !tbaa !22
  %77 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star = getelementptr inbounds %struct.ocb128_context, ptr %77, i32 0, i32 7
  %arrayidx96 = getelementptr inbounds [2 x i64], ptr %l_star, i64 0, i64 0
  %78 = load i64, ptr %arrayidx96, align 8, !tbaa !22
  %xor97 = xor i64 %76, %78
  %79 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess98 = getelementptr inbounds %struct.ocb128_context, ptr %79, i32 0, i32 10
  %offset99 = getelementptr inbounds %struct.anon, ptr %sess98, i32 0, i32 4
  %arrayidx100 = getelementptr inbounds [2 x i64], ptr %offset99, i64 0, i64 0
  store i64 %xor97, ptr %arrayidx100, align 8, !tbaa !22
  %80 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess101 = getelementptr inbounds %struct.ocb128_context, ptr %80, i32 0, i32 10
  %offset102 = getelementptr inbounds %struct.anon, ptr %sess101, i32 0, i32 4
  %arrayidx103 = getelementptr inbounds [2 x i64], ptr %offset102, i64 0, i64 1
  %81 = load i64, ptr %arrayidx103, align 8, !tbaa !22
  %82 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star104 = getelementptr inbounds %struct.ocb128_context, ptr %82, i32 0, i32 7
  %arrayidx105 = getelementptr inbounds [2 x i64], ptr %l_star104, i64 0, i64 1
  %83 = load i64, ptr %arrayidx105, align 8, !tbaa !22
  %xor106 = xor i64 %81, %83
  %84 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess107 = getelementptr inbounds %struct.ocb128_context, ptr %84, i32 0, i32 10
  %offset108 = getelementptr inbounds %struct.anon, ptr %sess107, i32 0, i32 4
  %arrayidx109 = getelementptr inbounds [2 x i64], ptr %offset108, i64 0, i64 1
  store i64 %xor106, ptr %arrayidx109, align 8, !tbaa !22
  %85 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt110 = getelementptr inbounds %struct.ocb128_context, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %encrypt110, align 8, !tbaa !17
  %87 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess111 = getelementptr inbounds %struct.ocb128_context, ptr %87, i32 0, i32 10
  %offset112 = getelementptr inbounds %struct.anon, ptr %sess111, i32 0, i32 4
  %arraydecay113 = getelementptr inbounds [16 x i8], ptr %offset112, i64 0, i64 0
  %arraydecay114 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  %88 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc115 = getelementptr inbounds %struct.ocb128_context, ptr %88, i32 0, i32 2
  %89 = load ptr, ptr %keyenc115, align 8, !tbaa !20
  call void %86(ptr noundef %arraydecay113, ptr noundef %arraydecay114, ptr noundef %89)
  %90 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %arraydecay116 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  %91 = load i64, ptr %last_len, align 8, !tbaa !23
  %92 = load ptr, ptr %out.addr, align 8, !tbaa !4
  call void @ocb_block_xor(ptr noundef %90, ptr noundef %arraydecay116, i64 noundef %91, ptr noundef %92)
  %arraydecay117 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay117, i8 0, i64 16, i1 false)
  %arraydecay118 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  %93 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %94 = load i64, ptr %last_len, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay118, ptr align 1 %93, i64 %94, i1 false)
  %95 = load i64, ptr %last_len, align 8, !tbaa !23
  %arrayidx119 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 %95
  store i8 -128, ptr %arrayidx119, align 1, !tbaa !22
  %arrayidx120 = getelementptr inbounds [2 x i64], ptr %pad, i64 0, i64 0
  %96 = load i64, ptr %arrayidx120, align 8, !tbaa !22
  %97 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess121 = getelementptr inbounds %struct.ocb128_context, ptr %97, i32 0, i32 10
  %checksum122 = getelementptr inbounds %struct.anon, ptr %sess121, i32 0, i32 5
  %arrayidx123 = getelementptr inbounds [2 x i64], ptr %checksum122, i64 0, i64 0
  %98 = load i64, ptr %arrayidx123, align 8, !tbaa !22
  %xor124 = xor i64 %96, %98
  %99 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess125 = getelementptr inbounds %struct.ocb128_context, ptr %99, i32 0, i32 10
  %checksum126 = getelementptr inbounds %struct.anon, ptr %sess125, i32 0, i32 5
  %arrayidx127 = getelementptr inbounds [2 x i64], ptr %checksum126, i64 0, i64 0
  store i64 %xor124, ptr %arrayidx127, align 8, !tbaa !22
  %arrayidx128 = getelementptr inbounds [2 x i64], ptr %pad, i64 0, i64 1
  %100 = load i64, ptr %arrayidx128, align 8, !tbaa !22
  %101 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess129 = getelementptr inbounds %struct.ocb128_context, ptr %101, i32 0, i32 10
  %checksum130 = getelementptr inbounds %struct.anon, ptr %sess129, i32 0, i32 5
  %arrayidx131 = getelementptr inbounds [2 x i64], ptr %checksum130, i64 0, i64 1
  %102 = load i64, ptr %arrayidx131, align 8, !tbaa !22
  %xor132 = xor i64 %100, %102
  %103 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess133 = getelementptr inbounds %struct.ocb128_context, ptr %103, i32 0, i32 10
  %checksum134 = getelementptr inbounds %struct.anon, ptr %sess133, i32 0, i32 5
  %arrayidx135 = getelementptr inbounds [2 x i64], ptr %checksum134, i64 0, i64 1
  store i64 %xor132, ptr %arrayidx135, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 16, ptr %pad) #5
  br label %if.end136

if.end136:                                        ; preds = %if.then92, %if.end89
  %104 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %105 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess137 = getelementptr inbounds %struct.ocb128_context, ptr %105, i32 0, i32 10
  %blocks_processed138 = getelementptr inbounds %struct.anon, ptr %sess137, i32 0, i32 1
  store i64 %104, ptr %blocks_processed138, align 8, !tbaa !32
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup139

cleanup139:                                       ; preds = %if.end136, %cleanup84, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_len) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_blocks) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_num_blocks) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_decrypt(ptr noundef %ctx, ptr noundef %in, ptr noundef %out, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %all_num_blocks = alloca i64, align 8
  %num_blocks = alloca i64, align 8
  %last_len = alloca i64, align 8
  %max_idx = alloca i64, align 8
  %top = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %union.OCB_BLOCK, align 8
  %lookup = alloca ptr, align 8
  %pad = alloca %union.OCB_BLOCK, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %all_num_blocks) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_blocks) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_len) #5
  %0 = load i64, ptr %len.addr, align 8, !tbaa !23
  %div = udiv i64 %0, 16
  store i64 %div, ptr %num_blocks, align 8, !tbaa !23
  %1 = load i64, ptr %num_blocks, align 8, !tbaa !23
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess = getelementptr inbounds %struct.ocb128_context, ptr %2, i32 0, i32 10
  %blocks_processed = getelementptr inbounds %struct.anon, ptr %sess, i32 0, i32 1
  %3 = load i64, ptr %blocks_processed, align 8, !tbaa !32
  %add = add i64 %1, %3
  store i64 %add, ptr %all_num_blocks, align 8, !tbaa !28
  %4 = load i64, ptr %num_blocks, align 8, !tbaa !23
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %6 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %land.lhs.true1, label %if.else

land.lhs.true1:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct.ocb128_context, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %stream, align 8, !tbaa !19
  %cmp2 = icmp ne ptr %8, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_idx) #5
  store i64 0, ptr %max_idx, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #5
  %9 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  store i64 %9, ptr %top, align 8, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load i64, ptr %top, align 8, !tbaa !23
  %shr = lshr i64 %10, 1
  store i64 %shr, ptr %top, align 8, !tbaa !23
  %tobool3 = icmp ne i64 %shr, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i64, ptr %max_idx, align 8, !tbaa !23
  %inc = add i64 %11, 1
  store i64 %inc, ptr %max_idx, align 8, !tbaa !23
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %13 = load i64, ptr %max_idx, align 8, !tbaa !23
  %call = call ptr @ocb_lookup_l(ptr noundef %12, i64 noundef %13)
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.end
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %stream6 = getelementptr inbounds %struct.ocb128_context, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %stream6, align 8, !tbaa !19
  %16 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %18 = load i64, ptr %num_blocks, align 8, !tbaa !23
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keydec = getelementptr inbounds %struct.ocb128_context, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %keydec, align 8, !tbaa !21
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess7 = getelementptr inbounds %struct.ocb128_context, ptr %21, i32 0, i32 10
  %blocks_processed8 = getelementptr inbounds %struct.anon, ptr %sess7, i32 0, i32 1
  %22 = load i64, ptr %blocks_processed8, align 8, !tbaa !32
  %add9 = add i64 %22, 1
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess10 = getelementptr inbounds %struct.ocb128_context, ptr %23, i32 0, i32 10
  %offset = getelementptr inbounds %struct.anon, ptr %sess10, i32 0, i32 4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %offset, i64 0, i64 0
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l = getelementptr inbounds %struct.ocb128_context, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %l, align 8, !tbaa !16
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess11 = getelementptr inbounds %struct.ocb128_context, ptr %26, i32 0, i32 10
  %checksum = getelementptr inbounds %struct.anon, ptr %sess11, i32 0, i32 5
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %checksum, i64 0, i64 0
  call void %15(ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %20, i64 noundef %add9, ptr noundef %arraydecay, ptr noundef %25, ptr noundef %arraydecay12)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_idx) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup139 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end91

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess14 = getelementptr inbounds %struct.ocb128_context, ptr %27, i32 0, i32 10
  %blocks_processed15 = getelementptr inbounds %struct.anon, ptr %sess14, i32 0, i32 1
  %28 = load i64, ptr %blocks_processed15, align 8, !tbaa !32
  %add16 = add i64 %28, 1
  store i64 %add16, ptr %i, align 8, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %29 = load i64, ptr %i, align 8, !tbaa !28
  %30 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %cmp17 = icmp ule i64 %29, %30
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %lookup) #5
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %32 = load i64, ptr %i, align 8, !tbaa !28
  %call18 = call i32 @ocb_ntz(i64 noundef %32)
  %conv = zext i32 %call18 to i64
  %call19 = call ptr @ocb_lookup_l(ptr noundef %31, i64 noundef %conv)
  store ptr %call19, ptr %lookup, align 8, !tbaa !4
  %33 = load ptr, ptr %lookup, align 8, !tbaa !4
  %cmp20 = icmp eq ptr %33, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84

if.end23:                                         ; preds = %for.body
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess24 = getelementptr inbounds %struct.ocb128_context, ptr %34, i32 0, i32 10
  %offset25 = getelementptr inbounds %struct.anon, ptr %sess24, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], ptr %offset25, i64 0, i64 0
  %35 = load i64, ptr %arrayidx, align 8, !tbaa !22
  %36 = load ptr, ptr %lookup, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds [2 x i64], ptr %36, i64 0, i64 0
  %37 = load i64, ptr %arrayidx26, align 8, !tbaa !22
  %xor = xor i64 %35, %37
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess27 = getelementptr inbounds %struct.ocb128_context, ptr %38, i32 0, i32 10
  %offset28 = getelementptr inbounds %struct.anon, ptr %sess27, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [2 x i64], ptr %offset28, i64 0, i64 0
  store i64 %xor, ptr %arrayidx29, align 8, !tbaa !22
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess30 = getelementptr inbounds %struct.ocb128_context, ptr %39, i32 0, i32 10
  %offset31 = getelementptr inbounds %struct.anon, ptr %sess30, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [2 x i64], ptr %offset31, i64 0, i64 1
  %40 = load i64, ptr %arrayidx32, align 8, !tbaa !22
  %41 = load ptr, ptr %lookup, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds [2 x i64], ptr %41, i64 0, i64 1
  %42 = load i64, ptr %arrayidx33, align 8, !tbaa !22
  %xor34 = xor i64 %40, %42
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess35 = getelementptr inbounds %struct.ocb128_context, ptr %43, i32 0, i32 10
  %offset36 = getelementptr inbounds %struct.anon, ptr %sess35, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [2 x i64], ptr %offset36, i64 0, i64 1
  store i64 %xor34, ptr %arrayidx37, align 8, !tbaa !22
  %arraydecay38 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %44 = load ptr, ptr %in.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay38, ptr align 1 %44, i64 16, i1 false)
  %45 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %45, i64 16
  store ptr %add.ptr, ptr %in.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess39 = getelementptr inbounds %struct.ocb128_context, ptr %46, i32 0, i32 10
  %offset40 = getelementptr inbounds %struct.anon, ptr %sess39, i32 0, i32 4
  %arrayidx41 = getelementptr inbounds [2 x i64], ptr %offset40, i64 0, i64 0
  %47 = load i64, ptr %arrayidx41, align 8, !tbaa !22
  %arrayidx42 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %48 = load i64, ptr %arrayidx42, align 8, !tbaa !22
  %xor43 = xor i64 %47, %48
  %arrayidx44 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor43, ptr %arrayidx44, align 8, !tbaa !22
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess45 = getelementptr inbounds %struct.ocb128_context, ptr %49, i32 0, i32 10
  %offset46 = getelementptr inbounds %struct.anon, ptr %sess45, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [2 x i64], ptr %offset46, i64 0, i64 1
  %50 = load i64, ptr %arrayidx47, align 8, !tbaa !22
  %arrayidx48 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %51 = load i64, ptr %arrayidx48, align 8, !tbaa !22
  %xor49 = xor i64 %50, %51
  %arrayidx50 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor49, ptr %arrayidx50, align 8, !tbaa !22
  %52 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %decrypt = getelementptr inbounds %struct.ocb128_context, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %decrypt, align 8, !tbaa !18
  %arraydecay51 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay52 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %54 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keydec53 = getelementptr inbounds %struct.ocb128_context, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %keydec53, align 8, !tbaa !21
  call void %53(ptr noundef %arraydecay51, ptr noundef %arraydecay52, ptr noundef %55)
  %56 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess54 = getelementptr inbounds %struct.ocb128_context, ptr %56, i32 0, i32 10
  %offset55 = getelementptr inbounds %struct.anon, ptr %sess54, i32 0, i32 4
  %arrayidx56 = getelementptr inbounds [2 x i64], ptr %offset55, i64 0, i64 0
  %57 = load i64, ptr %arrayidx56, align 8, !tbaa !22
  %arrayidx57 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %58 = load i64, ptr %arrayidx57, align 8, !tbaa !22
  %xor58 = xor i64 %57, %58
  %arrayidx59 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor58, ptr %arrayidx59, align 8, !tbaa !22
  %59 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess60 = getelementptr inbounds %struct.ocb128_context, ptr %59, i32 0, i32 10
  %offset61 = getelementptr inbounds %struct.anon, ptr %sess60, i32 0, i32 4
  %arrayidx62 = getelementptr inbounds [2 x i64], ptr %offset61, i64 0, i64 1
  %60 = load i64, ptr %arrayidx62, align 8, !tbaa !22
  %arrayidx63 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %61 = load i64, ptr %arrayidx63, align 8, !tbaa !22
  %xor64 = xor i64 %60, %61
  %arrayidx65 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor64, ptr %arrayidx65, align 8, !tbaa !22
  %arrayidx66 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %62 = load i64, ptr %arrayidx66, align 8, !tbaa !22
  %63 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess67 = getelementptr inbounds %struct.ocb128_context, ptr %63, i32 0, i32 10
  %checksum68 = getelementptr inbounds %struct.anon, ptr %sess67, i32 0, i32 5
  %arrayidx69 = getelementptr inbounds [2 x i64], ptr %checksum68, i64 0, i64 0
  %64 = load i64, ptr %arrayidx69, align 8, !tbaa !22
  %xor70 = xor i64 %62, %64
  %65 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess71 = getelementptr inbounds %struct.ocb128_context, ptr %65, i32 0, i32 10
  %checksum72 = getelementptr inbounds %struct.anon, ptr %sess71, i32 0, i32 5
  %arrayidx73 = getelementptr inbounds [2 x i64], ptr %checksum72, i64 0, i64 0
  store i64 %xor70, ptr %arrayidx73, align 8, !tbaa !22
  %arrayidx74 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %66 = load i64, ptr %arrayidx74, align 8, !tbaa !22
  %67 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess75 = getelementptr inbounds %struct.ocb128_context, ptr %67, i32 0, i32 10
  %checksum76 = getelementptr inbounds %struct.anon, ptr %sess75, i32 0, i32 5
  %arrayidx77 = getelementptr inbounds [2 x i64], ptr %checksum76, i64 0, i64 1
  %68 = load i64, ptr %arrayidx77, align 8, !tbaa !22
  %xor78 = xor i64 %66, %68
  %69 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess79 = getelementptr inbounds %struct.ocb128_context, ptr %69, i32 0, i32 10
  %checksum80 = getelementptr inbounds %struct.anon, ptr %sess79, i32 0, i32 5
  %arrayidx81 = getelementptr inbounds [2 x i64], ptr %checksum80, i64 0, i64 1
  store i64 %xor78, ptr %arrayidx81, align 8, !tbaa !22
  %70 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %arraydecay82 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 8 %arraydecay82, i64 16, i1 false)
  %71 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %add.ptr83 = getelementptr inbounds i8, ptr %71, i64 16
  store ptr %add.ptr83, ptr %out.addr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup84

cleanup84:                                        ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %lookup) #5
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %cleanup88 [
    i32 0, label %cleanup.cont86
  ]

cleanup.cont86:                                   ; preds = %cleanup84
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont86
  %72 = load i64, ptr %i, align 8, !tbaa !28
  %inc87 = add i64 %72, 1
  store i64 %inc87, ptr %i, align 8, !tbaa !28
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup88

cleanup88:                                        ; preds = %for.end, %cleanup84
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5
  %cleanup.dest89 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest89, label %cleanup139 [
    i32 0, label %cleanup.cont90
  ]

cleanup.cont90:                                   ; preds = %cleanup88
  br label %if.end91

if.end91:                                         ; preds = %cleanup.cont90, %cleanup.cont
  %73 = load i64, ptr %len.addr, align 8, !tbaa !23
  %rem = urem i64 %73, 16
  store i64 %rem, ptr %last_len, align 8, !tbaa !23
  %74 = load i64, ptr %last_len, align 8, !tbaa !23
  %cmp92 = icmp ugt i64 %74, 0
  br i1 %cmp92, label %if.then94, label %if.end136

if.then94:                                        ; preds = %if.end91
  call void @llvm.lifetime.start.p0(i64 16, ptr %pad) #5
  %75 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess95 = getelementptr inbounds %struct.ocb128_context, ptr %75, i32 0, i32 10
  %offset96 = getelementptr inbounds %struct.anon, ptr %sess95, i32 0, i32 4
  %arrayidx97 = getelementptr inbounds [2 x i64], ptr %offset96, i64 0, i64 0
  %76 = load i64, ptr %arrayidx97, align 8, !tbaa !22
  %77 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star = getelementptr inbounds %struct.ocb128_context, ptr %77, i32 0, i32 7
  %arrayidx98 = getelementptr inbounds [2 x i64], ptr %l_star, i64 0, i64 0
  %78 = load i64, ptr %arrayidx98, align 8, !tbaa !22
  %xor99 = xor i64 %76, %78
  %79 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess100 = getelementptr inbounds %struct.ocb128_context, ptr %79, i32 0, i32 10
  %offset101 = getelementptr inbounds %struct.anon, ptr %sess100, i32 0, i32 4
  %arrayidx102 = getelementptr inbounds [2 x i64], ptr %offset101, i64 0, i64 0
  store i64 %xor99, ptr %arrayidx102, align 8, !tbaa !22
  %80 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess103 = getelementptr inbounds %struct.ocb128_context, ptr %80, i32 0, i32 10
  %offset104 = getelementptr inbounds %struct.anon, ptr %sess103, i32 0, i32 4
  %arrayidx105 = getelementptr inbounds [2 x i64], ptr %offset104, i64 0, i64 1
  %81 = load i64, ptr %arrayidx105, align 8, !tbaa !22
  %82 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_star106 = getelementptr inbounds %struct.ocb128_context, ptr %82, i32 0, i32 7
  %arrayidx107 = getelementptr inbounds [2 x i64], ptr %l_star106, i64 0, i64 1
  %83 = load i64, ptr %arrayidx107, align 8, !tbaa !22
  %xor108 = xor i64 %81, %83
  %84 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess109 = getelementptr inbounds %struct.ocb128_context, ptr %84, i32 0, i32 10
  %offset110 = getelementptr inbounds %struct.anon, ptr %sess109, i32 0, i32 4
  %arrayidx111 = getelementptr inbounds [2 x i64], ptr %offset110, i64 0, i64 1
  store i64 %xor108, ptr %arrayidx111, align 8, !tbaa !22
  %85 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt = getelementptr inbounds %struct.ocb128_context, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %encrypt, align 8, !tbaa !17
  %87 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess112 = getelementptr inbounds %struct.ocb128_context, ptr %87, i32 0, i32 10
  %offset113 = getelementptr inbounds %struct.anon, ptr %sess112, i32 0, i32 4
  %arraydecay114 = getelementptr inbounds [16 x i8], ptr %offset113, i64 0, i64 0
  %arraydecay115 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  %88 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc = getelementptr inbounds %struct.ocb128_context, ptr %88, i32 0, i32 2
  %89 = load ptr, ptr %keyenc, align 8, !tbaa !20
  call void %86(ptr noundef %arraydecay114, ptr noundef %arraydecay115, ptr noundef %89)
  %90 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %arraydecay116 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  %91 = load i64, ptr %last_len, align 8, !tbaa !23
  %92 = load ptr, ptr %out.addr, align 8, !tbaa !4
  call void @ocb_block_xor(ptr noundef %90, ptr noundef %arraydecay116, i64 noundef %91, ptr noundef %92)
  %arraydecay117 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay117, i8 0, i64 16, i1 false)
  %arraydecay118 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 0
  %93 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %94 = load i64, ptr %last_len, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay118, ptr align 1 %93, i64 %94, i1 false)
  %95 = load i64, ptr %last_len, align 8, !tbaa !23
  %arrayidx119 = getelementptr inbounds [16 x i8], ptr %pad, i64 0, i64 %95
  store i8 -128, ptr %arrayidx119, align 1, !tbaa !22
  %arrayidx120 = getelementptr inbounds [2 x i64], ptr %pad, i64 0, i64 0
  %96 = load i64, ptr %arrayidx120, align 8, !tbaa !22
  %97 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess121 = getelementptr inbounds %struct.ocb128_context, ptr %97, i32 0, i32 10
  %checksum122 = getelementptr inbounds %struct.anon, ptr %sess121, i32 0, i32 5
  %arrayidx123 = getelementptr inbounds [2 x i64], ptr %checksum122, i64 0, i64 0
  %98 = load i64, ptr %arrayidx123, align 8, !tbaa !22
  %xor124 = xor i64 %96, %98
  %99 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess125 = getelementptr inbounds %struct.ocb128_context, ptr %99, i32 0, i32 10
  %checksum126 = getelementptr inbounds %struct.anon, ptr %sess125, i32 0, i32 5
  %arrayidx127 = getelementptr inbounds [2 x i64], ptr %checksum126, i64 0, i64 0
  store i64 %xor124, ptr %arrayidx127, align 8, !tbaa !22
  %arrayidx128 = getelementptr inbounds [2 x i64], ptr %pad, i64 0, i64 1
  %100 = load i64, ptr %arrayidx128, align 8, !tbaa !22
  %101 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess129 = getelementptr inbounds %struct.ocb128_context, ptr %101, i32 0, i32 10
  %checksum130 = getelementptr inbounds %struct.anon, ptr %sess129, i32 0, i32 5
  %arrayidx131 = getelementptr inbounds [2 x i64], ptr %checksum130, i64 0, i64 1
  %102 = load i64, ptr %arrayidx131, align 8, !tbaa !22
  %xor132 = xor i64 %100, %102
  %103 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess133 = getelementptr inbounds %struct.ocb128_context, ptr %103, i32 0, i32 10
  %checksum134 = getelementptr inbounds %struct.anon, ptr %sess133, i32 0, i32 5
  %arrayidx135 = getelementptr inbounds [2 x i64], ptr %checksum134, i64 0, i64 1
  store i64 %xor132, ptr %arrayidx135, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 16, ptr %pad) #5
  br label %if.end136

if.end136:                                        ; preds = %if.then94, %if.end91
  %104 = load i64, ptr %all_num_blocks, align 8, !tbaa !28
  %105 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess137 = getelementptr inbounds %struct.ocb128_context, ptr %105, i32 0, i32 10
  %blocks_processed138 = getelementptr inbounds %struct.anon, ptr %sess137, i32 0, i32 1
  store i64 %104, ptr %blocks_processed138, align 8, !tbaa !32
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup139

cleanup139:                                       ; preds = %if.end136, %cleanup88, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_len) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_blocks) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %all_num_blocks) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_finish(ptr noundef %ctx, ptr noundef %tag, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %tag.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !23
  %call = call i32 @ocb_finish(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ocb_finish(ptr noundef %ctx, ptr noundef %tag, i64 noundef %len, i32 noundef %write) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %write.addr = alloca i32, align 4
  %tmp = alloca %union.OCB_BLOCK, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  store i32 %write, ptr %write.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #5
  %0 = load i64, ptr %len.addr, align 8, !tbaa !23
  %cmp = icmp ugt i64 %0, 16
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %len.addr, align 8, !tbaa !23
  %cmp1 = icmp ult i64 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess = getelementptr inbounds %struct.ocb128_context, ptr %2, i32 0, i32 10
  %checksum = getelementptr inbounds %struct.anon, ptr %sess, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], ptr %checksum, i64 0, i64 0
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !22
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess2 = getelementptr inbounds %struct.ocb128_context, ptr %4, i32 0, i32 10
  %offset = getelementptr inbounds %struct.anon, ptr %sess2, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %offset, i64 0, i64 0
  %5 = load i64, ptr %arrayidx3, align 8, !tbaa !22
  %xor = xor i64 %3, %5
  %arrayidx4 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor, ptr %arrayidx4, align 8, !tbaa !22
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess5 = getelementptr inbounds %struct.ocb128_context, ptr %6, i32 0, i32 10
  %checksum6 = getelementptr inbounds %struct.anon, ptr %sess5, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [2 x i64], ptr %checksum6, i64 0, i64 1
  %7 = load i64, ptr %arrayidx7, align 8, !tbaa !22
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess8 = getelementptr inbounds %struct.ocb128_context, ptr %8, i32 0, i32 10
  %offset9 = getelementptr inbounds %struct.anon, ptr %sess8, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [2 x i64], ptr %offset9, i64 0, i64 1
  %9 = load i64, ptr %arrayidx10, align 8, !tbaa !22
  %xor11 = xor i64 %7, %9
  %arrayidx12 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor11, ptr %arrayidx12, align 8, !tbaa !22
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_dollar = getelementptr inbounds %struct.ocb128_context, ptr %10, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [2 x i64], ptr %l_dollar, i64 0, i64 0
  %11 = load i64, ptr %arrayidx13, align 8, !tbaa !22
  %arrayidx14 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %12 = load i64, ptr %arrayidx14, align 8, !tbaa !22
  %xor15 = xor i64 %11, %12
  %arrayidx16 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor15, ptr %arrayidx16, align 8, !tbaa !22
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l_dollar17 = getelementptr inbounds %struct.ocb128_context, ptr %13, i32 0, i32 8
  %arrayidx18 = getelementptr inbounds [2 x i64], ptr %l_dollar17, i64 0, i64 1
  %14 = load i64, ptr %arrayidx18, align 8, !tbaa !22
  %arrayidx19 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %15 = load i64, ptr %arrayidx19, align 8, !tbaa !22
  %xor20 = xor i64 %14, %15
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor20, ptr %arrayidx21, align 8, !tbaa !22
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %encrypt = getelementptr inbounds %struct.ocb128_context, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %encrypt, align 8, !tbaa !17
  %arraydecay = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %keyenc = getelementptr inbounds %struct.ocb128_context, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %keyenc, align 8, !tbaa !20
  call void %17(ptr noundef %arraydecay, ptr noundef %arraydecay22, ptr noundef %19)
  %arrayidx23 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  %20 = load i64, ptr %arrayidx23, align 8, !tbaa !22
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess24 = getelementptr inbounds %struct.ocb128_context, ptr %21, i32 0, i32 10
  %sum = getelementptr inbounds %struct.anon, ptr %sess24, i32 0, i32 3
  %arrayidx25 = getelementptr inbounds [2 x i64], ptr %sum, i64 0, i64 0
  %22 = load i64, ptr %arrayidx25, align 8, !tbaa !22
  %xor26 = xor i64 %20, %22
  %arrayidx27 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 0
  store i64 %xor26, ptr %arrayidx27, align 8, !tbaa !22
  %arrayidx28 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  %23 = load i64, ptr %arrayidx28, align 8, !tbaa !22
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sess29 = getelementptr inbounds %struct.ocb128_context, ptr %24, i32 0, i32 10
  %sum30 = getelementptr inbounds %struct.anon, ptr %sess29, i32 0, i32 3
  %arrayidx31 = getelementptr inbounds [2 x i64], ptr %sum30, i64 0, i64 1
  %25 = load i64, ptr %arrayidx31, align 8, !tbaa !22
  %xor32 = xor i64 %23, %25
  %arrayidx33 = getelementptr inbounds [2 x i64], ptr %tmp, i64 0, i64 1
  store i64 %xor32, ptr %arrayidx33, align 8, !tbaa !22
  %26 = load i32, ptr %write.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end
  %27 = load ptr, ptr %tag.addr, align 8, !tbaa !4
  %28 = load i64, ptr %len.addr, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 8 %tmp, i64 %28, i1 false)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %29 = load ptr, ptr %tag.addr, align 8, !tbaa !4
  %30 = load i64, ptr %len.addr, align 8, !tbaa !23
  %call = call i32 @CRYPTO_memcmp(ptr noundef %tmp, ptr noundef %29, i64 noundef %30)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then34, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #5
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_tag(ptr noundef %ctx, ptr noundef %tag, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %tag, ptr %tag.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %tag.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !23
  %call = call i32 @ocb_finish(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_ocb128_cleanup(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %l = getelementptr inbounds %struct.ocb128_context, ptr %1, i32 0, i32 9
  %2 = load ptr, ptr %l, align 8, !tbaa !16
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %max_l_index = getelementptr inbounds %struct.ocb128_context, ptr %3, i32 0, i32 6
  %4 = load i64, ptr %max_l_index, align 8, !tbaa !15
  %mul = mul i64 %4, 16
  call void @CRYPTO_clear_free(ptr noundef %2, i64 noundef %mul, ptr noundef @.str, i32 noundef 557)
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @OPENSSL_cleanse(ptr noundef %5, i64 noundef 176)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) #2

declare ptr @CRYPTO_realloc(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!10 = !{!11, !12, i64 40}
!11 = !{!"ocb128_context", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !6, i64 72, !5, i64 88, !13, i64 96}
!12 = !{!"long", !6, i64 0}
!13 = !{!"", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 32, !6, i64 48, !6, i64 64}
!14 = !{!"long long", !6, i64 0}
!15 = !{!11, !12, i64 48}
!16 = !{!11, !5, i64 88}
!17 = !{!11, !5, i64 0}
!18 = !{!11, !5, i64 8}
!19 = !{!11, !5, i64 32}
!20 = !{!11, !5, i64 16}
!21 = !{!11, !5, i64 24}
!22 = !{!6, !6, i64 0}
!23 = !{!12, !12, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!11, !14, i64 96}
!28 = !{!14, !14, i64 0}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
!31 = distinct !{!31, !25}
!32 = !{!11, !14, i64 104}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}

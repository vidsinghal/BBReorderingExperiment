; ModuleID = 'samples/605.bc'
source_filename = "ctr_drbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, ptr, ptr }
%struct.mbedtls_aes_context = type { i32, i64, [68 x i32] }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  CTR_DRBG (PR = TRUE) : \00", align 1
@test_offset = internal global i64 0, align 8
@entropy_source_pr = internal constant [112 x i8] c"\CAX\FD\F2\B9w\CBI\D4\E0[\E29P\D9\8Aj\B3\C5/\DFt\D5\85\8F\D1\BAdT{\DB\1E\C5\EA$\C0\FA\0C\90\15\09 \92B26EE} vk\CF\A2\15\C8/\9F\BC\88?\80\D1,\B7\16\D1\80\9E\E1\C9\B3\88\1B!E\EF\A1\7F\CE\C8\925U*\D9\1D\8E\128\AC\01N8\18v\9C\F2\B6\D4\13\B6,w\C0\E7\E6\0CGD\95\BE", align 16
@pers_pr = internal constant [32 x i8] c"Zp\95\E9\81@R3\91S~u\D6\19\9D\1E\AD\0D\C6\A7\DEl\1F\E0\EA\183\A8~\06 \E9", align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@result_pr = internal constant [64 x i8] c"\CE/\DB\B6\D9\B79\85\04\C5\C0B\C21\C6\1D\9BZY\F8~\0D\CCb{e\11U\10\EB\9E=\A4\FB\1Cj\18\C0t\DB\DD\E7\02#c!\D09\F9\A7\C4R\84;I@r+\B0l\9C\DB\C3C", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  CTR_DRBG (PR = FALSE): \00", align 1
@entropy_source_nopr = internal constant [80 x i8] c"L\FB!\86s4m\9DP\C9\22\E4\9B\0D\FC\D0\90\AD\F0O\\;\A4s'\DF\CDo\A6:x\\\01ib\A7\FD'\87\A2K\F6\BEG\EF7\83\F1\B7\ECF\07#c\83J\1B\013\F2\C28\91\DBO\11\A6\86Q\F2>:\8B\1F\DC\03\B1\92\C7\E7", align 16
@pers_nopr = internal constant [32 x i8] c"\88\EE\B8\E0\E8;\F3)K\DA\CD`\99\EB\E4\BFU\EC\D9\11?q\E5\EB\CBEu\F3\D6\A6\8Ak", align 16
@result_nopr = internal constant [64 x i8] c"\A5Q\80\A1\90\BE\F3\AD\AF(\F6\B7\95\E9\F1\F3\D6\DF\A1\B2}\D0F{\0Cu\F5\FA\93\1E\97\14u\B2|\AE\03\A2\96T\E2\F4\09f\EA3d0@\D1@\0F\E6w\87:\F8\09|\1F\E9\F0\02\98", align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_ctr_drbg_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 344, i1 false)
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %1, i32 0, i32 5
  call void @mbedtls_aes_init(ptr noundef %aes_ctx)
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %2, i32 0, i32 1
  store i32 -1, ptr %reseed_counter, align 8, !tbaa !9
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %3, i32 0, i32 4
  store i32 10000, ptr %reseed_interval, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @mbedtls_aes_init(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_ctr_drbg_free(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %1, i32 0, i32 5
  call void @mbedtls_aes_free(ptr noundef %aes_ctx)
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  call void @mbedtls_platform_zeroize(ptr noundef %2, i64 noundef 344)
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %3, i32 0, i32 4
  store i32 10000, ptr %reseed_interval, align 8, !tbaa !14
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %4, i32 0, i32 1
  store i32 -1, ptr %reseed_counter, align 8, !tbaa !9
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @mbedtls_aes_free(ptr noundef) #2

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_ctr_drbg_set_prediction_resistance(ptr noundef %ctx, i32 noundef %resistance) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %resistance.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store i32 %resistance, ptr %resistance.addr, align 4, !tbaa !15
  %0 = load i32, ptr %resistance.addr, align 4, !tbaa !15
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %1, i32 0, i32 2
  store i32 %0, ptr %prediction_resistance, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_ctr_drbg_set_entropy_len(ptr noundef %ctx, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  %0 = load i64, ptr %len.addr, align 8, !tbaa !17
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %1, i32 0, i32 3
  store i64 %0, ptr %entropy_len, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_set_nonce_len(ptr noundef %ctx, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %f_entropy = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %f_entropy, align 8, !tbaa !19
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -52, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %len.addr, align 8, !tbaa !17
  %cmp1 = icmp ugt i64 %2, 384
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -56, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i64, ptr %len.addr, align 8, !tbaa !17
  %cmp4 = icmp ugt i64 %3, 2147483647
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -56, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %4 = load i64, ptr %len.addr, align 8, !tbaa !17
  %conv = trunc i64 %4 to i32
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %5, i32 0, i32 1
  store i32 %conv, ptr %reseed_counter, align 8, !tbaa !9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_ctr_drbg_set_reseed_interval(ptr noundef %ctx, i32 noundef %interval) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %interval.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store i32 %interval, ptr %interval.addr, align 4, !tbaa !15
  %0 = load i32, ptr %interval.addr, align 4, !tbaa !15
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %1, i32 0, i32 4
  store i32 %0, ptr %reseed_interval, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_update(ptr noundef %ctx, ptr noundef %additional, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %additional.addr = alloca ptr, align 8
  %add_len.addr = alloca i64, align 8
  %add_input = alloca [48 x i8], align 16
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !5
  store i64 %add_len, ptr %add_len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 48, ptr %add_input) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !15
  %0 = load i64, ptr %add_len.addr, align 8, !tbaa !17
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  %1 = load ptr, ptr %additional.addr, align 8, !tbaa !5
  %2 = load i64, ptr %add_len.addr, align 8, !tbaa !17
  %call = call i32 @block_cipher_df(ptr noundef %arraydecay, ptr noundef %1, i64 noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !15
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %arraydecay4 = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  %call5 = call i32 @ctr_drbg_update_internal(ptr noundef %3, ptr noundef %arraydecay4)
  store i32 %call5, ptr %ret, align 4, !tbaa !15
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  br label %exit

if.end8:                                          ; preds = %if.end3
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7, %if.then2
  %arraydecay9 = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay9, i64 noundef 48)
  %4 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %add_input) #7
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @block_cipher_df(ptr noundef %output, ptr noundef %data, i64 noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_len.addr = alloca i64, align 8
  %buf = alloca [416 x i8], align 16
  %tmp = alloca [48 x i8], align 16
  %key = alloca [32 x i8], align 16
  %chain = alloca [16 x i8], align 16
  %p = alloca ptr, align 8
  %iv = alloca ptr, align 8
  %aes_ctx = alloca %struct.mbedtls_aes_context, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buf_len = alloca i64, align 8
  %use_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 416, ptr %buf) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr %tmp) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr %key) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %chain) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv) #7
  call void @llvm.lifetime.start.p0(i64 288, ptr %aes_ctx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 0, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_len) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_len) #7
  %0 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  %cmp = icmp ugt i64 %0, 384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [416 x i8], ptr %buf, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 416, i1 false)
  call void @mbedtls_aes_init(ptr noundef %aes_ctx)
  %arraydecay1 = getelementptr inbounds [416 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 16
  store ptr %add.ptr, ptr %p, align 8, !tbaa !5
  %1 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  %shr = lshr i64 %1, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !20
  %3 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  %shr2 = lshr i64 %3, 16
  %and3 = and i64 %shr2, 255
  %conv4 = trunc i64 %and3 to i8
  %4 = load ptr, ptr %p, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %conv4, ptr %arrayidx5, align 1, !tbaa !20
  %5 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  %shr6 = lshr i64 %5, 8
  %and7 = and i64 %shr6, 255
  %conv8 = trunc i64 %and7 to i8
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds i8, ptr %6, i64 2
  store i8 %conv8, ptr %arrayidx9, align 1, !tbaa !20
  %7 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  %and10 = and i64 %7, 255
  %conv11 = trunc i64 %and10 to i8
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8, ptr %8, i64 3
  store i8 %conv11, ptr %arrayidx12, align 1, !tbaa !20
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr13 = getelementptr inbounds i8, ptr %9, i64 7
  store ptr %add.ptr13, ptr %p, align 8, !tbaa !5
  %10 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  store i8 48, ptr %10, align 1, !tbaa !20
  %11 = load ptr, ptr %p, align 8, !tbaa !5
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %13 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %13, i1 false)
  %14 = load ptr, ptr %p, align 8, !tbaa !5
  %15 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 %15
  store i8 -128, ptr %arrayidx14, align 1, !tbaa !20
  %16 = load i64, ptr %data_len.addr, align 8, !tbaa !17
  %add = add i64 24, %16
  %add15 = add i64 %add, 1
  store i64 %add15, ptr %buf_len, align 8, !tbaa !17
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !15
  %cmp16 = icmp slt i32 %17, 32
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, ptr %i, align 4, !tbaa !15
  %conv18 = trunc i32 %18 to i8
  %19 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 %idxprom
  store i8 %conv18, ptr %arrayidx19, align 1, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !tbaa !15
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %arraydecay20 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0
  %call = call i32 @mbedtls_aes_setkey_enc(ptr noundef %aes_ctx, ptr noundef %arraydecay20, i32 noundef 256)
  store i32 %call, ptr %ret, align 4, !tbaa !15
  %cmp21 = icmp ne i32 %call, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end
  br label %exit

if.end24:                                         ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !15
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc62, %if.end24
  %21 = load i32, ptr %j, align 4, !tbaa !15
  %cmp26 = icmp slt i32 %21, 48
  br i1 %cmp26, label %for.body28, label %for.end64

for.body28:                                       ; preds = %for.cond25
  %arraydecay29 = getelementptr inbounds [416 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay29, ptr %p, align 8, !tbaa !5
  %arraydecay30 = getelementptr inbounds [16 x i8], ptr %chain, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay30, i8 0, i64 16, i1 false)
  %22 = load i64, ptr %buf_len, align 8, !tbaa !17
  store i64 %22, ptr %use_len, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %if.end56, %for.body28
  %23 = load i64, ptr %use_len, align 8, !tbaa !17
  %cmp31 = icmp ugt i64 %23, 0
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc44, %while.body
  %24 = load i32, ptr %i, align 4, !tbaa !15
  %cmp34 = icmp slt i32 %24, 16
  br i1 %cmp34, label %for.body36, label %for.end46

for.body36:                                       ; preds = %for.cond33
  %25 = load ptr, ptr %p, align 8, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %25, i64 %idxprom37
  %27 = load i8, ptr %arrayidx38, align 1, !tbaa !20
  %conv39 = zext i8 %27 to i32
  %28 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [16 x i8], ptr %chain, i64 0, i64 %idxprom40
  %29 = load i8, ptr %arrayidx41, align 1, !tbaa !20
  %conv42 = zext i8 %29 to i32
  %xor = xor i32 %conv42, %conv39
  %conv43 = trunc i32 %xor to i8
  store i8 %conv43, ptr %arrayidx41, align 1, !tbaa !20
  br label %for.inc44

for.inc44:                                        ; preds = %for.body36
  %30 = load i32, ptr %i, align 4, !tbaa !15
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !15
  br label %for.cond33, !llvm.loop !23

for.end46:                                        ; preds = %for.cond33
  %31 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr47 = getelementptr inbounds i8, ptr %31, i64 16
  store ptr %add.ptr47, ptr %p, align 8, !tbaa !5
  %32 = load i64, ptr %use_len, align 8, !tbaa !17
  %cmp48 = icmp uge i64 %32, 16
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end46
  br label %cond.end

cond.false:                                       ; preds = %for.end46
  %33 = load i64, ptr %use_len, align 8, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 16, %cond.true ], [ %33, %cond.false ]
  %34 = load i64, ptr %use_len, align 8, !tbaa !17
  %sub = sub i64 %34, %cond
  store i64 %sub, ptr %use_len, align 8, !tbaa !17
  %arraydecay50 = getelementptr inbounds [16 x i8], ptr %chain, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [16 x i8], ptr %chain, i64 0, i64 0
  %call52 = call i32 @mbedtls_aes_crypt_ecb(ptr noundef %aes_ctx, i32 noundef 1, ptr noundef %arraydecay50, ptr noundef %arraydecay51)
  store i32 %call52, ptr %ret, align 4, !tbaa !15
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %cond.end
  br label %exit

if.end56:                                         ; preds = %cond.end
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %arraydecay57 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  %35 = load i32, ptr %j, align 4, !tbaa !15
  %idx.ext = sext i32 %35 to i64
  %add.ptr58 = getelementptr inbounds i8, ptr %arraydecay57, i64 %idx.ext
  %arraydecay59 = getelementptr inbounds [16 x i8], ptr %chain, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr58, ptr align 16 %arraydecay59, i64 16, i1 false)
  %arrayidx60 = getelementptr inbounds [416 x i8], ptr %buf, i64 0, i64 3
  %36 = load i8, ptr %arrayidx60, align 1, !tbaa !20
  %inc61 = add i8 %36, 1
  store i8 %inc61, ptr %arrayidx60, align 1, !tbaa !20
  br label %for.inc62

for.inc62:                                        ; preds = %while.end
  %37 = load i32, ptr %j, align 4, !tbaa !15
  %add63 = add nsw i32 %37, 16
  store i32 %add63, ptr %j, align 4, !tbaa !15
  br label %for.cond25, !llvm.loop !25

for.end64:                                        ; preds = %for.cond25
  %arraydecay65 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  %call66 = call i32 @mbedtls_aes_setkey_enc(ptr noundef %aes_ctx, ptr noundef %arraydecay65, i32 noundef 256)
  store i32 %call66, ptr %ret, align 4, !tbaa !15
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %for.end64
  br label %exit

if.end70:                                         ; preds = %for.end64
  %arraydecay71 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  %add.ptr72 = getelementptr inbounds i8, ptr %arraydecay71, i64 32
  store ptr %add.ptr72, ptr %iv, align 8, !tbaa !5
  %38 = load ptr, ptr %output.addr, align 8, !tbaa !5
  store ptr %38, ptr %p, align 8, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !15
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc83, %if.end70
  %39 = load i32, ptr %j, align 4, !tbaa !15
  %cmp74 = icmp slt i32 %39, 48
  br i1 %cmp74, label %for.body76, label %for.end85

for.body76:                                       ; preds = %for.cond73
  %40 = load ptr, ptr %iv, align 8, !tbaa !5
  %41 = load ptr, ptr %iv, align 8, !tbaa !5
  %call77 = call i32 @mbedtls_aes_crypt_ecb(ptr noundef %aes_ctx, i32 noundef 1, ptr noundef %40, ptr noundef %41)
  store i32 %call77, ptr %ret, align 4, !tbaa !15
  %cmp78 = icmp ne i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %for.body76
  br label %exit

if.end81:                                         ; preds = %for.body76
  %42 = load ptr, ptr %p, align 8, !tbaa !5
  %43 = load ptr, ptr %iv, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %43, i64 16, i1 false)
  %44 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr82 = getelementptr inbounds i8, ptr %44, i64 16
  store ptr %add.ptr82, ptr %p, align 8, !tbaa !5
  br label %for.inc83

for.inc83:                                        ; preds = %if.end81
  %45 = load i32, ptr %j, align 4, !tbaa !15
  %add84 = add nsw i32 %45, 16
  store i32 %add84, ptr %j, align 4, !tbaa !15
  br label %for.cond73, !llvm.loop !26

for.end85:                                        ; preds = %for.cond73
  br label %exit

exit:                                             ; preds = %for.end85, %if.then80, %if.then69, %if.then55, %if.then23
  call void @mbedtls_aes_free(ptr noundef %aes_ctx)
  %arraydecay86 = getelementptr inbounds [416 x i8], ptr %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay86, i64 noundef 416)
  %arraydecay87 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay87, i64 noundef 48)
  %arraydecay88 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay88, i64 noundef 32)
  %arraydecay89 = getelementptr inbounds [16 x i8], ptr %chain, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay89, i64 noundef 16)
  %46 = load i32, ptr %ret, align 4, !tbaa !15
  %cmp90 = icmp ne i32 0, %46
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %exit
  %47 = load ptr, ptr %output.addr, align 8, !tbaa !5
  call void @mbedtls_platform_zeroize(ptr noundef %47, i64 noundef 48)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %exit
  %48 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %48, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_len) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  call void @llvm.lifetime.end.p0(i64 288, ptr %aes_ctx) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %chain) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %key) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %tmp) #7
  call void @llvm.lifetime.end.p0(i64 416, ptr %buf) #7
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @ctr_drbg_update_internal(ptr noundef %ctx, ptr noundef %data) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %tmp = alloca [48 x i8], align 16
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 48, ptr %tmp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  %arraydecay = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 0, ptr %ret, align 4, !tbaa !15
  %arraydecay1 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay1, i8 0, i64 48, i1 false)
  store i32 0, ptr %j, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !15
  %cmp = icmp slt i32 %0, 48
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 16, ptr %i, align 4, !tbaa !15
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4, !tbaa !15
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4, !tbaa !15
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %counter, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %inc = add i8 %4, 1
  store i8 %inc, ptr %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %inc to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !15
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %i, align 4, !tbaa !15
  br label %for.cond2, !llvm.loop !27

for.end:                                          ; preds = %if.then, %for.cond2
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %counter7 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %7, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [16 x i8], ptr %counter7, i64 0, i64 0
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call i32 @mbedtls_aes_crypt_ecb(ptr noundef %aes_ctx, i32 noundef 1, ptr noundef %arraydecay8, ptr noundef %8)
  store i32 %call, ptr %ret, align 4, !tbaa !15
  %cmp9 = icmp ne i32 %call, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  br label %exit

if.end12:                                         ; preds = %for.end
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 16
  store ptr %add.ptr, ptr %p, align 8, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %10 = load i32, ptr %j, align 4, !tbaa !15
  %add = add nsw i32 %10, 16
  store i32 %add, ptr %j, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !28

for.end14:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !15
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %for.end14
  %11 = load i32, ptr %i, align 4, !tbaa !15
  %cmp16 = icmp slt i32 %11, 48
  br i1 %cmp16, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond15
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %12, i64 %idxprom19
  %14 = load i8, ptr %arrayidx20, align 1, !tbaa !20
  %conv21 = zext i8 %14 to i32
  %15 = load i32, ptr %i, align 4, !tbaa !15
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 %idxprom22
  %16 = load i8, ptr %arrayidx23, align 1, !tbaa !20
  %conv24 = zext i8 %16 to i32
  %xor = xor i32 %conv24, %conv21
  %conv25 = trunc i32 %xor to i8
  store i8 %conv25, ptr %arrayidx23, align 1, !tbaa !20
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %17 = load i32, ptr %i, align 4, !tbaa !15
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !15
  br label %for.cond15, !llvm.loop !29

for.end28:                                        ; preds = %for.cond15
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %aes_ctx29 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %18, i32 0, i32 5
  %arraydecay30 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  %call31 = call i32 @mbedtls_aes_setkey_enc(ptr noundef %aes_ctx29, ptr noundef %arraydecay30, i32 noundef 256)
  store i32 %call31, ptr %ret, align 4, !tbaa !15
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.end28
  br label %exit

if.end35:                                         ; preds = %for.end28
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %counter36 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %19, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [16 x i8], ptr %counter36, i64 0, i64 0
  %arraydecay38 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  %add.ptr39 = getelementptr inbounds i8, ptr %arraydecay38, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay37, ptr align 1 %add.ptr39, i64 16, i1 false)
  br label %exit

exit:                                             ; preds = %if.end35, %if.then34, %if.then11
  %arraydecay40 = getelementptr inbounds [48 x i8], ptr %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay40, i64 noundef 48)
  %20 = load i32, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %tmp) #7
  ret i32 %20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_reseed(ptr noundef %ctx, ptr noundef %additional, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %additional.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !5
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %additional.addr, align 8, !tbaa !5
  %2 = load i64, ptr %len.addr, align 8, !tbaa !17
  %call = call i32 @mbedtls_ctr_drbg_reseed_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mbedtls_ctr_drbg_reseed_internal(ptr noundef %ctx, ptr noundef %additional, i64 noundef %len, i64 noundef %nonce_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %additional.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %nonce_len.addr = alloca i64, align 8
  %seed = alloca [384 x i8], align 16
  %seedlen = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !5
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  store i64 %nonce_len, ptr %nonce_len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 384, ptr %seed) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %seedlen) #7
  store i64 0, ptr %seedlen, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !15
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %0, i32 0, i32 3
  %1 = load i64, ptr %entropy_len, align 8, !tbaa !18
  %cmp = icmp ugt i64 %1, 384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %nonce_len.addr, align 8, !tbaa !17
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len1 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %entropy_len1, align 8, !tbaa !18
  %sub = sub i64 384, %4
  %cmp2 = icmp ugt i64 %2, %sub
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load i64, ptr %len.addr, align 8, !tbaa !17
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len5 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %entropy_len5, align 8, !tbaa !18
  %sub6 = sub i64 384, %7
  %8 = load i64, ptr %nonce_len.addr, align 8, !tbaa !17
  %sub7 = sub i64 %sub6, %8
  %cmp8 = icmp ugt i64 %5, %sub7
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  store i32 -56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %arraydecay = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 384, i1 false)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %f_entropy = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %f_entropy, align 8, !tbaa !19
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %p_entropy = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %p_entropy, align 8, !tbaa !30
  %arraydecay11 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len12 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %13, i32 0, i32 3
  %14 = load i64, ptr %entropy_len12, align 8, !tbaa !18
  %call = call i32 %10(ptr noundef %12, ptr noundef %arraydecay11, i64 noundef %14)
  %cmp13 = icmp ne i32 0, %call
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 -52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len16 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %entropy_len16, align 8, !tbaa !18
  %17 = load i64, ptr %seedlen, align 8, !tbaa !17
  %add = add i64 %17, %16
  store i64 %add, ptr %seedlen, align 8, !tbaa !17
  %18 = load i64, ptr %nonce_len.addr, align 8, !tbaa !17
  %cmp17 = icmp ne i64 %18, 0
  br i1 %cmp17, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end15
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %f_entropy19 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %f_entropy19, align 8, !tbaa !19
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %p_entropy20 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %p_entropy20, align 8, !tbaa !30
  %arraydecay21 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %23 = load i64, ptr %seedlen, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay21, i64 %23
  %24 = load i64, ptr %nonce_len.addr, align 8, !tbaa !17
  %call22 = call i32 %20(ptr noundef %22, ptr noundef %add.ptr, i64 noundef %24)
  %cmp23 = icmp ne i32 0, %call22
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then18
  store i32 -52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.then18
  %25 = load i64, ptr %nonce_len.addr, align 8, !tbaa !17
  %26 = load i64, ptr %seedlen, align 8, !tbaa !17
  %add26 = add i64 %26, %25
  store i64 %add26, ptr %seedlen, align 8, !tbaa !17
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end15
  %27 = load ptr, ptr %additional.addr, align 8, !tbaa !5
  %cmp28 = icmp ne ptr %27, null
  br i1 %cmp28, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end27
  %28 = load i64, ptr %len.addr, align 8, !tbaa !17
  %cmp29 = icmp ne i64 %28, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %land.lhs.true
  %arraydecay31 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %29 = load i64, ptr %seedlen, align 8, !tbaa !17
  %add.ptr32 = getelementptr inbounds i8, ptr %arraydecay31, i64 %29
  %30 = load ptr, ptr %additional.addr, align 8, !tbaa !5
  %31 = load i64, ptr %len.addr, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr32, ptr align 1 %30, i64 %31, i1 false)
  %32 = load i64, ptr %len.addr, align 8, !tbaa !17
  %33 = load i64, ptr %seedlen, align 8, !tbaa !17
  %add33 = add i64 %33, %32
  store i64 %add33, ptr %seedlen, align 8, !tbaa !17
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %land.lhs.true, %if.end27
  %arraydecay35 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %34 = load i64, ptr %seedlen, align 8, !tbaa !17
  %call37 = call i32 @block_cipher_df(ptr noundef %arraydecay35, ptr noundef %arraydecay36, i64 noundef %34)
  store i32 %call37, ptr %ret, align 4, !tbaa !15
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end34
  br label %exit

if.end40:                                         ; preds = %if.end34
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %arraydecay41 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %call42 = call i32 @ctr_drbg_update_internal(ptr noundef %35, ptr noundef %arraydecay41)
  store i32 %call42, ptr %ret, align 4, !tbaa !15
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end40
  br label %exit

if.end45:                                         ; preds = %if.end40
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %36, i32 0, i32 1
  store i32 1, ptr %reseed_counter, align 8, !tbaa !9
  br label %exit

exit:                                             ; preds = %if.end45, %if.then44, %if.then39
  %arraydecay46 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay46, i64 noundef 384)
  %37 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then24, %if.then14, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %seedlen) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr %seed) #7
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_seed(ptr noundef %ctx, ptr noundef %f_entropy, ptr noundef %p_entropy, ptr noundef %custom, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %f_entropy.addr = alloca ptr, align 8
  %p_entropy.addr = alloca ptr, align 8
  %custom.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %key = alloca [32 x i8], align 16
  %nonce_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %f_entropy, ptr %f_entropy.addr, align 8, !tbaa !5
  store ptr %p_entropy, ptr %p_entropy.addr, align 8, !tbaa !5
  store ptr %custom, ptr %custom.addr, align 8, !tbaa !5
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 32, ptr %key) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonce_len) #7
  %arraydecay = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 32, i1 false)
  %0 = load ptr, ptr %f_entropy.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %f_entropy1 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %1, i32 0, i32 6
  store ptr %0, ptr %f_entropy1, align 8, !tbaa !19
  %2 = load ptr, ptr %p_entropy.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %p_entropy2 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %3, i32 0, i32 7
  store ptr %2, ptr %p_entropy2, align 8, !tbaa !30
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %entropy_len, align 8, !tbaa !18
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len3 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %6, i32 0, i32 3
  store i64 48, ptr %entropy_len3, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %reseed_counter, align 8, !tbaa !9
  %cmp4 = icmp sge i32 %8, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %reseed_counter5 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %reseed_counter5, align 8, !tbaa !9
  %conv = sext i32 %10 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %entropy_len6 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %11, i32 0, i32 3
  %12 = load i64, ptr %entropy_len6, align 8, !tbaa !18
  %call = call i64 @good_nonce_len(i64 noundef %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ]
  store i64 %cond, ptr %nonce_len, align 8, !tbaa !17
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %13, i32 0, i32 5
  %arraydecay7 = getelementptr inbounds [32 x i8], ptr %key, i64 0, i64 0
  %call8 = call i32 @mbedtls_aes_setkey_enc(ptr noundef %aes_ctx, ptr noundef %arraydecay7, i32 noundef 256)
  store i32 %call8, ptr %ret, align 4, !tbaa !15
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %cond.end
  %14 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %cond.end
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %custom.addr, align 8, !tbaa !5
  %17 = load i64, ptr %len.addr, align 8, !tbaa !17
  %18 = load i64, ptr %nonce_len, align 8, !tbaa !17
  %call13 = call i32 @mbedtls_ctr_drbg_reseed_internal(ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18)
  store i32 %call13, ptr %ret, align 4, !tbaa !15
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %19 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonce_len) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr %key) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i64 @good_nonce_len(i64 noundef %entropy_len) #0 {
entry:
  %retval = alloca i64, align 8
  %entropy_len.addr = alloca i64, align 8
  store i64 %entropy_len, ptr %entropy_len.addr, align 8, !tbaa !17
  %0 = load i64, ptr %entropy_len.addr, align 8, !tbaa !17
  %cmp = icmp uge i64 %0, 48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %entropy_len.addr, align 8, !tbaa !17
  %add = add i64 %1, 1
  %div = udiv i64 %add, 2
  store i64 %div, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, ptr %retval, align 8
  ret i64 %2
}

declare i32 @mbedtls_aes_setkey_enc(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_random_with_add(ptr noundef %p_rng, ptr noundef %output, i64 noundef %output_len, ptr noundef %additional, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_rng.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %additional.addr = alloca ptr, align 8
  %add_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %add_input = alloca [48 x i8], align 16
  %p = alloca ptr, align 8
  %tmp = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %use_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !5
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !17
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !5
  store i64 %add_len, ptr %add_len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 0, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7
  %0 = load ptr, ptr %p_rng.addr, align 8, !tbaa !5
  store ptr %0, ptr %ctx, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 48, ptr %add_input) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  %1 = load ptr, ptr %output.addr, align 8, !tbaa !5
  store ptr %1, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_len) #7
  %2 = load i64, ptr %output_len.addr, align 8, !tbaa !17
  %cmp = icmp ugt i64 %2, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -54, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %add_len.addr, align 8, !tbaa !17
  %cmp1 = icmp ugt i64 %3, 256
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 48, i1 false)
  %4 = load ptr, ptr %ctx, align 8, !tbaa !5
  %reseed_counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %reseed_counter, align 8, !tbaa !9
  %6 = load ptr, ptr %ctx, align 8, !tbaa !5
  %reseed_interval = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %reseed_interval, align 8, !tbaa !14
  %cmp4 = icmp sgt i32 %5, %7
  br i1 %cmp4, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %8 = load ptr, ptr %ctx, align 8, !tbaa !5
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %prediction_resistance, align 4, !tbaa !16
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %lor.lhs.false, %if.end3
  %10 = load ptr, ptr %ctx, align 8, !tbaa !5
  %11 = load ptr, ptr %additional.addr, align 8, !tbaa !5
  %12 = load i64, ptr %add_len.addr, align 8, !tbaa !17
  %call = call i32 @mbedtls_ctr_drbg_reseed(ptr noundef %10, ptr noundef %11, i64 noundef %12)
  store i32 %call, ptr %ret, align 4, !tbaa !15
  %cmp6 = icmp ne i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %13 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  store i64 0, ptr %add_len.addr, align 8, !tbaa !17
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %lor.lhs.false
  %14 = load i64, ptr %add_len.addr, align 8, !tbaa !17
  %cmp10 = icmp ugt i64 %14, 0
  br i1 %cmp10, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end9
  %arraydecay12 = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  %15 = load ptr, ptr %additional.addr, align 8, !tbaa !5
  %16 = load i64, ptr %add_len.addr, align 8, !tbaa !17
  %call13 = call i32 @block_cipher_df(ptr noundef %arraydecay12, ptr noundef %15, i64 noundef %16)
  store i32 %call13, ptr %ret, align 4, !tbaa !15
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  br label %exit

if.end16:                                         ; preds = %if.then11
  %17 = load ptr, ptr %ctx, align 8, !tbaa !5
  %arraydecay17 = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  %call18 = call i32 @ctr_drbg_update_internal(ptr noundef %17, ptr noundef %arraydecay17)
  store i32 %call18, ptr %ret, align 4, !tbaa !15
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  br label %exit

if.end21:                                         ; preds = %if.end16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end22
  %18 = load i64, ptr %output_len.addr, align 8, !tbaa !17
  %cmp23 = icmp ugt i64 %18, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 16, ptr %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %19 = load i32, ptr %i, align 4, !tbaa !15
  %cmp24 = icmp sgt i32 %19, 0
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %ctx, align 8, !tbaa !5
  %counter = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %i, align 4, !tbaa !15
  %sub = sub nsw i32 %21, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %counter, i64 0, i64 %idxprom
  %22 = load i8, ptr %arrayidx, align 1, !tbaa !20
  %inc = add i8 %22, 1
  store i8 %inc, ptr %arrayidx, align 1, !tbaa !20
  %conv = zext i8 %inc to i32
  %cmp25 = icmp ne i32 %conv, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  br label %for.end

if.end28:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %23 = load i32, ptr %i, align 4, !tbaa !15
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %i, align 4, !tbaa !15
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %if.then27, %for.cond
  %24 = load ptr, ptr %ctx, align 8, !tbaa !5
  %aes_ctx = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %ctx, align 8, !tbaa !5
  %counter29 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %25, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [16 x i8], ptr %counter29, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %call32 = call i32 @mbedtls_aes_crypt_ecb(ptr noundef %aes_ctx, i32 noundef 1, ptr noundef %arraydecay30, ptr noundef %arraydecay31)
  store i32 %call32, ptr %ret, align 4, !tbaa !15
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  br label %exit

if.end36:                                         ; preds = %for.end
  %26 = load i64, ptr %output_len.addr, align 8, !tbaa !17
  %cmp37 = icmp ugt i64 %26, 16
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end36
  br label %cond.end

cond.false:                                       ; preds = %if.end36
  %27 = load i64, ptr %output_len.addr, align 8, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 16, %cond.true ], [ %27, %cond.false ]
  store i64 %cond, ptr %use_len, align 8, !tbaa !17
  %28 = load ptr, ptr %p, align 8, !tbaa !5
  %arraydecay39 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  %29 = load i64, ptr %use_len, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 16 %arraydecay39, i64 %29, i1 false)
  %30 = load i64, ptr %use_len, align 8, !tbaa !17
  %31 = load ptr, ptr %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %add.ptr, ptr %p, align 8, !tbaa !5
  %32 = load i64, ptr %use_len, align 8, !tbaa !17
  %33 = load i64, ptr %output_len.addr, align 8, !tbaa !17
  %sub40 = sub i64 %33, %32
  store i64 %sub40, ptr %output_len.addr, align 8, !tbaa !17
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %ctx, align 8, !tbaa !5
  %arraydecay41 = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  %call42 = call i32 @ctr_drbg_update_internal(ptr noundef %34, ptr noundef %arraydecay41)
  store i32 %call42, ptr %ret, align 4, !tbaa !15
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %while.end
  br label %exit

if.end46:                                         ; preds = %while.end
  %35 = load ptr, ptr %ctx, align 8, !tbaa !5
  %reseed_counter47 = getelementptr inbounds %struct.mbedtls_ctr_drbg_context, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %reseed_counter47, align 8, !tbaa !9
  %inc48 = add nsw i32 %36, 1
  store i32 %inc48, ptr %reseed_counter47, align 8, !tbaa !9
  br label %exit

exit:                                             ; preds = %if.end46, %if.then45, %if.then35, %if.then20, %if.then15
  %arraydecay49 = getelementptr inbounds [48 x i8], ptr %add_input, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay49, i64 noundef 48)
  %arraydecay50 = getelementptr inbounds [16 x i8], ptr %tmp, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay50, i64 noundef 16)
  %37 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr %add_input) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare i32 @mbedtls_aes_crypt_ecb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_random(ptr noundef %p_rng, ptr noundef %output, i64 noundef %output_len) #0 {
entry:
  %p_rng.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %output_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca ptr, align 8
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !5
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  store i64 %output_len, ptr %output_len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7
  %0 = load ptr, ptr %p_rng.addr, align 8, !tbaa !5
  store ptr %0, ptr %ctx, align 8, !tbaa !5
  %1 = load ptr, ptr %ctx, align 8, !tbaa !5
  %2 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %3 = load i64, ptr %output_len.addr, align 8, !tbaa !17
  %call = call i32 @mbedtls_ctr_drbg_random_with_add(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0)
  store i32 %call, ptr %ret, align 4, !tbaa !15
  %4 = load i32, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_write_seed_file(ptr noundef %ctx, ptr noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %f = alloca ptr, align 8
  %buf = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -58, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #7
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str)
  store ptr %call, ptr %f, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -58, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %f, align 8, !tbaa !5
  call void @setbuf(ptr noundef %1, ptr noundef null) #7
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %call1 = call i32 @mbedtls_ctr_drbg_random(ptr noundef %2, ptr noundef %arraydecay, i64 noundef 256)
  store i32 %call1, ptr %ret, align 4, !tbaa !15
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %3 = load ptr, ptr %f, align 8, !tbaa !5
  %call6 = call i64 @fwrite(ptr noundef %arraydecay5, i64 noundef 1, i64 noundef 256, ptr noundef %3)
  %cmp7 = icmp ne i64 %call6, 256
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  store i32 -58, ptr %ret, align 4, !tbaa !15
  br label %if.end9

if.else:                                          ; preds = %if.end4
  store i32 0, ptr %ret, align 4, !tbaa !15
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  br label %exit

exit:                                             ; preds = %if.end9, %if.then3
  %arraydecay10 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay10, i64 noundef 256)
  %4 = load ptr, ptr %f, align 8, !tbaa !5
  %call11 = call i32 @fclose(ptr noundef %4)
  %5 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @setbuf(ptr noundef, ptr noundef) #5

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_update_seed_file(ptr noundef %ctx, ptr noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %f = alloca ptr, align 8
  %n = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 0, ptr %ret, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #7
  store ptr null, ptr %f, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #7
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str.1)
  store ptr %call, ptr %f, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -58, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %f, align 8, !tbaa !5
  call void @setbuf(ptr noundef %1, ptr noundef null) #7
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr %f, align 8, !tbaa !5
  %call1 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 256, ptr noundef %2)
  store i64 %call1, ptr %n, align 8, !tbaa !17
  %3 = load ptr, ptr %f, align 8, !tbaa !5
  %call2 = call i64 @fread(ptr noundef %c, i64 noundef 1, i64 noundef 1, ptr noundef %3)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -56, ptr %ret, align 4, !tbaa !15
  br label %exit

if.end5:                                          ; preds = %if.end
  %4 = load i64, ptr %n, align 8, !tbaa !17
  %cmp6 = icmp eq i64 %4, 0
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %5 = load ptr, ptr %f, align 8, !tbaa !5
  %call7 = call i32 @ferror(ptr noundef %5) #7
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  store i32 -58, ptr %ret, align 4, !tbaa !15
  br label %exit

if.end9:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %f, align 8, !tbaa !5
  %call10 = call i32 @fclose(ptr noundef %6)
  store ptr null, ptr %f, align 8, !tbaa !5
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %arraydecay11 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %8 = load i64, ptr %n, align 8, !tbaa !17
  %call12 = call i32 @mbedtls_ctr_drbg_update(ptr noundef %7, ptr noundef %arraydecay11, i64 noundef %8)
  store i32 %call12, ptr %ret, align 4, !tbaa !15
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8, %if.then4
  %arraydecay13 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay13, i64 noundef 256)
  %9 = load ptr, ptr %f, align 8, !tbaa !5
  %cmp14 = icmp ne ptr %9, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %exit
  %10 = load ptr, ptr %f, align 8, !tbaa !5
  %call16 = call i32 @fclose(ptr noundef %10)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %exit
  %11 = load i32, ptr %ret, align 4, !tbaa !15
  %cmp18 = icmp ne i32 %11, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %12 = load i32, ptr %ret, align 4, !tbaa !15
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %call21 = call i32 @mbedtls_ctr_drbg_write_seed_file(ptr noundef %13, ptr noundef %14)
  store i32 %call21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_ctr_drbg_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_ctr_drbg_context, align 8
  %buf = alloca [64 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 344, ptr %ctx) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr %buf) #7
  call void @mbedtls_ctr_drbg_init(ptr noundef %ctx)
  %0 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr @test_offset, align 8, !tbaa !17
  call void @mbedtls_ctr_drbg_set_entropy_len(ptr noundef %ctx, i64 noundef 32)
  %call1 = call i32 @mbedtls_ctr_drbg_set_nonce_len(ptr noundef %ctx, i64 noundef 16)
  %call2 = call i32 @mbedtls_ctr_drbg_seed(ptr noundef %ctx, ptr noundef @ctr_drbg_self_test_entropy, ptr noundef @entropy_source_pr, ptr noundef @pers_pr, i64 noundef 32)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %1 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp5 = icmp ne i32 %1, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @mbedtls_ctr_drbg_set_prediction_resistance(ptr noundef %ctx, i32 noundef 1)
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %call10 = call i32 @mbedtls_ctr_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay, i64 noundef 64)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end9
  %2 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp13 = icmp ne i32 %2, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then12
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %arraydecay18 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %call19 = call i32 @mbedtls_ctr_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay18, i64 noundef 64)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end17
  %3 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp22 = icmp ne i32 %3, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then21
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then21
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %arraydecay27 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %call28 = call i32 @memcmp(ptr noundef %arraydecay27, ptr noundef @result_pr, i64 noundef 64) #8
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end26
  %4 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp31 = icmp ne i32 %4, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then30
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then30
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @mbedtls_ctr_drbg_free(ptr noundef %ctx)
  %5 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp36 = icmp ne i32 %5, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %6 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp40 = icmp ne i32 %6, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  call void @mbedtls_ctr_drbg_init(ptr noundef %ctx)
  store i64 0, ptr @test_offset, align 8, !tbaa !17
  call void @mbedtls_ctr_drbg_set_entropy_len(ptr noundef %ctx, i64 noundef 32)
  %call44 = call i32 @mbedtls_ctr_drbg_set_nonce_len(ptr noundef %ctx, i64 noundef 16)
  %call45 = call i32 @mbedtls_ctr_drbg_seed(ptr noundef %ctx, ptr noundef @ctr_drbg_self_test_entropy, ptr noundef @entropy_source_nopr, ptr noundef @pers_nopr, i64 noundef 32)
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.end43
  %7 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp48 = icmp ne i32 %7, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then47
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then47
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end43
  %call53 = call i32 @mbedtls_ctr_drbg_reseed(ptr noundef %ctx, ptr noundef null, i64 noundef 0)
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end52
  %8 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp56 = icmp ne i32 %8, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then55
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %arraydecay61 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %call62 = call i32 @mbedtls_ctr_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay61, i64 noundef 64)
  %cmp63 = icmp ne i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end60
  %9 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp65 = icmp ne i32 %9, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then64
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %if.end60
  %arraydecay70 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %call71 = call i32 @mbedtls_ctr_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay70, i64 noundef 64)
  %cmp72 = icmp ne i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %if.end69
  %10 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp74 = icmp ne i32 %10, 0
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.then73
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.then73
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.end69
  %arraydecay79 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %call80 = call i32 @memcmp(ptr noundef %arraydecay79, ptr noundef @result_nopr, i64 noundef 64) #8
  %cmp81 = icmp ne i32 %call80, 0
  br i1 %cmp81, label %if.then82, label %if.end87

if.then82:                                        ; preds = %if.end78
  %11 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp83 = icmp ne i32 %11, 0
  br i1 %cmp83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.then82
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then82
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.end78
  call void @mbedtls_ctr_drbg_free(ptr noundef %ctx)
  %12 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp88 = icmp ne i32 %12, 0
  br i1 %cmp88, label %if.then89, label %if.end91

if.then89:                                        ; preds = %if.end87
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end87
  %13 = load i32, ptr %verbose.addr, align 4, !tbaa !15
  %cmp92 = icmp ne i32 %13, 0
  br i1 %cmp92, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end91
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end91
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.end86, %if.end77, %if.end68, %if.end59, %if.end51, %if.end34, %if.end25, %if.end16, %if.end8
  call void @llvm.lifetime.end.p0(i64 64, ptr %buf) #7
  call void @llvm.lifetime.end.p0(i64 344, ptr %ctx) #7
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @ctr_drbg_self_test_entropy(ptr noundef %data, ptr noundef %buf, i64 noundef %len) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !5
  store i64 %len, ptr %len.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %3 = load i64, ptr @test_offset, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i64, ptr %len.addr, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %add.ptr, i64 %4, i1 false)
  %5 = load i64, ptr %len.addr, align 8, !tbaa !17
  %6 = load i64, ptr @test_offset, align 8, !tbaa !17
  %add = add i64 %6, %5
  store i64 %add, ptr @test_offset, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 16}
!10 = !{!"mbedtls_ctr_drbg_context", !7, i64 0, !11, i64 16, !11, i64 20, !12, i64 24, !11, i64 32, !13, i64 40, !6, i64 328, !6, i64 336}
!11 = !{!"int", !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!"mbedtls_aes_context", !11, i64 0, !12, i64 8, !7, i64 16}
!14 = !{!10, !11, i64 32}
!15 = !{!11, !11, i64 0}
!16 = !{!10, !11, i64 20}
!17 = !{!12, !12, i64 0}
!18 = !{!10, !12, i64 24}
!19 = !{!10, !6, i64 328}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = !{!10, !6, i64 336}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}

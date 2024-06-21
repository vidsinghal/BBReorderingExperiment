; ModuleID = 'samples/289.bc'
source_filename = "hmac_drbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_hmac_drbg_context = type { %struct.mbedtls_md_context_t, [64 x i8], i32, i64, i32, i32, ptr, ptr }
%struct.mbedtls_md_context_t = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  HMAC_DRBG (PR = True) : \00", align 1
@test_offset = internal global i64 0, align 8
@entropy_pr = internal constant [56 x i8] c"\A0\C9\ABX\F1\E2\E5\A4\DE>\BDO\F7>\9C[d\EF\D8\CA\02\8C\F8\11H\A5\84\FEi\ABZ\EEB\AAMB\17`\99\D4^\13\97\DC@M\86\A3{\F5YTuiQ\E4", align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@result_pr = internal constant [80 x i8] c"\9A\00\A2\D0\0E\D5\9B\FE1\EC\B19\9B`\81H\D1\96\9D%\0D<\1E\94\10\10\98\12\93%\CA\B8\FC\CC-Ts\19p\C0\10z\A4\89%\19\95^K\C6\00\1D\7FNj+\F8\A3\01\ABF\05\\\09\A6q\88\F1\A7@\EE\F3\E1\\\02\9BD\AF\03D", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  HMAC_DRBG (PR = False) : \00", align 1
@entropy_nopr = internal constant [40 x i8] c"y4\9B\BF|\DD\A5y\95W\86f!\C9\13\83\11Fs:\BF\8C5\C8\C7![[\96\C4\8E\9B3\8Ct\E3\E9\9D\FE\DF", align 16
@result_nopr = internal constant [80 x i8] c"\C6\A1j\B8\D4 po\0F4\AB\7F\ECZ\DC\A9\D8\CA:\13>\15\9C\A6\ACC\C6\F8\A2\BE\22\83JL\0A\0A\FF\B1\0Dq\94\F1\C1\A5\CFs\22\EC\1A\E0\96N\D4\BF\12'F\E0\87\FD\B5\B3\E9\1B4\93\D5\BB\98\FA\EDI\E8_\13\0F\C8\A4Y\B7", align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @mbedtls_hmac_drbg_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 128, i1 false)
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %1, i32 0, i32 5
  store i32 10000, ptr %reseed_interval, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_update_ret(ptr noundef %ctx, ptr noundef %additional, i64 noundef %add_len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %additional.addr = alloca ptr, align 8
  %add_len.addr = alloca i64, align 8
  %md_len = alloca i64, align 8
  %rounds = alloca i8, align 1
  %sep = alloca [1 x i8], align 1
  %K = alloca [64 x i8], align 16
  %ret = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !4
  store i64 %add_len, ptr %add_len.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %md_len) #7
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %0, i32 0, i32 0
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, ptr %md_ctx, i32 0, i32 0
  %1 = load ptr, ptr %md_info, align 8, !tbaa !14
  %call = call zeroext i8 @mbedtls_md_get_size(ptr noundef %1)
  %conv = zext i8 %call to i64
  store i64 %conv, ptr %md_len, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %rounds) #7
  %2 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %cmp2 = icmp ne i64 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %5 = zext i1 %4 to i64
  %cond = select i1 %4, i32 2, i32 1
  %conv4 = trunc i32 %cond to i8
  store i8 %conv4, ptr %rounds, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 1, ptr %sep) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr %K) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -20736, ptr %ret, align 4, !tbaa !16
  %arrayidx = getelementptr inbounds [1 x i8], ptr %sep, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 1, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %arrayidx5 = getelementptr inbounds [1 x i8], ptr %sep, i64 0, i64 0
  %6 = load i8, ptr %arrayidx5, align 1, !tbaa !15
  %conv6 = zext i8 %6 to i32
  %7 = load i8, ptr %rounds, align 1, !tbaa !15
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp slt i32 %conv6, %conv7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx10 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %8, i32 0, i32 0
  %call11 = call i32 @mbedtls_md_hmac_reset(ptr noundef %md_ctx10)
  store i32 %call11, ptr %ret, align 4, !tbaa !16
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %exit

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx14 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %10, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], ptr %V, i64 0, i64 0
  %11 = load i64, ptr %md_len, align 8, !tbaa !13
  %call15 = call i32 @mbedtls_md_hmac_update(ptr noundef %md_ctx14, ptr noundef %arraydecay, i64 noundef %11)
  store i32 %call15, ptr %ret, align 4, !tbaa !16
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  br label %exit

if.end19:                                         ; preds = %if.end
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx20 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %12, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [1 x i8], ptr %sep, i64 0, i64 0
  %call22 = call i32 @mbedtls_md_hmac_update(ptr noundef %md_ctx20, ptr noundef %arraydecay21, i64 noundef 1)
  store i32 %call22, ptr %ret, align 4, !tbaa !16
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  br label %exit

if.end26:                                         ; preds = %if.end19
  %13 = load i8, ptr %rounds, align 1, !tbaa !15
  %conv27 = zext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 2
  br i1 %cmp28, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end26
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx31 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %16 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %call32 = call i32 @mbedtls_md_hmac_update(ptr noundef %md_ctx31, ptr noundef %15, i64 noundef %16)
  store i32 %call32, ptr %ret, align 4, !tbaa !16
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  br label %exit

if.end36:                                         ; preds = %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end26
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx38 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %17, i32 0, i32 0
  %arraydecay39 = getelementptr inbounds [64 x i8], ptr %K, i64 0, i64 0
  %call40 = call i32 @mbedtls_md_hmac_finish(ptr noundef %md_ctx38, ptr noundef %arraydecay39)
  store i32 %call40, ptr %ret, align 4, !tbaa !16
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  br label %exit

if.end44:                                         ; preds = %if.end37
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx45 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %18, i32 0, i32 0
  %arraydecay46 = getelementptr inbounds [64 x i8], ptr %K, i64 0, i64 0
  %19 = load i64, ptr %md_len, align 8, !tbaa !13
  %call47 = call i32 @mbedtls_md_hmac_starts(ptr noundef %md_ctx45, ptr noundef %arraydecay46, i64 noundef %19)
  store i32 %call47, ptr %ret, align 4, !tbaa !16
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end44
  br label %exit

if.end51:                                         ; preds = %if.end44
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx52 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %V53 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %21, i32 0, i32 1
  %arraydecay54 = getelementptr inbounds [64 x i8], ptr %V53, i64 0, i64 0
  %22 = load i64, ptr %md_len, align 8, !tbaa !13
  %call55 = call i32 @mbedtls_md_hmac_update(ptr noundef %md_ctx52, ptr noundef %arraydecay54, i64 noundef %22)
  store i32 %call55, ptr %ret, align 4, !tbaa !16
  %cmp56 = icmp ne i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end51
  br label %exit

if.end59:                                         ; preds = %if.end51
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx60 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %V61 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %24, i32 0, i32 1
  %arraydecay62 = getelementptr inbounds [64 x i8], ptr %V61, i64 0, i64 0
  %call63 = call i32 @mbedtls_md_hmac_finish(ptr noundef %md_ctx60, ptr noundef %arraydecay62)
  store i32 %call63, ptr %ret, align 4, !tbaa !16
  %cmp64 = icmp ne i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end59
  br label %exit

if.end67:                                         ; preds = %if.end59
  br label %for.inc

for.inc:                                          ; preds = %if.end67
  %arrayidx68 = getelementptr inbounds [1 x i8], ptr %sep, i64 0, i64 0
  %25 = load i8, ptr %arrayidx68, align 1, !tbaa !15
  %inc = add i8 %25, 1
  store i8 %inc, ptr %arrayidx68, align 1, !tbaa !15
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end, %if.then66, %if.then58, %if.then50, %if.then43, %if.then35, %if.then25, %if.then18, %if.then
  %arraydecay69 = getelementptr inbounds [64 x i8], ptr %K, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay69, i64 noundef 64)
  %26 = load i32, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %K) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %sep) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %rounds) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %md_len) #7
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare zeroext i8 @mbedtls_md_get_size(ptr noundef) #3

declare i32 @mbedtls_md_hmac_reset(ptr noundef) #3

declare i32 @mbedtls_md_hmac_update(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @mbedtls_md_hmac_finish(ptr noundef, ptr noundef) #3

declare i32 @mbedtls_md_hmac_starts(ptr noundef, ptr noundef, i64 noundef) #3

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define void @mbedtls_hmac_drbg_update(ptr noundef %ctx, ptr noundef %additional, i64 noundef %add_len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %additional.addr = alloca ptr, align 8
  %add_len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !4
  store i64 %add_len, ptr %add_len.addr, align 8, !tbaa !13
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %2 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %call = call i32 @mbedtls_hmac_drbg_update_ret(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_seed_buf(ptr noundef %ctx, ptr noundef %md_info, ptr noundef %data, i64 noundef %data_len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %md_info.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %md_info, ptr %md_info.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !16
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %md_info.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_md_setup(ptr noundef %md_ctx, ptr noundef %1, i32 noundef 1)
  store i32 %call, ptr %ret, align 4, !tbaa !16
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx1 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], ptr %V, i64 0, i64 0
  %5 = load ptr, ptr %md_info.addr, align 8, !tbaa !4
  %call2 = call zeroext i8 @mbedtls_md_get_size(ptr noundef %5)
  %conv = zext i8 %call2 to i64
  %call3 = call i32 @mbedtls_md_hmac_starts(ptr noundef %md_ctx1, ptr noundef %arraydecay, i64 noundef %conv)
  store i32 %call3, ptr %ret, align 4, !tbaa !16
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %V8 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %7, i32 0, i32 1
  %arraydecay9 = getelementptr inbounds [64 x i8], ptr %V8, i64 0, i64 0
  %8 = load ptr, ptr %md_info.addr, align 8, !tbaa !4
  %call10 = call zeroext i8 @mbedtls_md_get_size(ptr noundef %8)
  %conv11 = zext i8 %call10 to i64
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay9, i8 1, i64 %conv11, i1 false)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %11 = load i64, ptr %data_len.addr, align 8, !tbaa !13
  %call12 = call i32 @mbedtls_hmac_drbg_update_ret(ptr noundef %9, ptr noundef %10, i64 noundef %11)
  store i32 %call12, ptr %ret, align 4, !tbaa !16
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end7
  %12 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare i32 @mbedtls_md_setup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_reseed(ptr noundef %ctx, ptr noundef %additional, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %additional.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !13
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !13
  %call = call i32 @hmac_drbg_reseed_core(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @hmac_drbg_reseed_core(ptr noundef %ctx, ptr noundef %additional, i64 noundef %len, i32 noundef %use_nonce) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %additional.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %use_nonce.addr = alloca i32, align 4
  %seed = alloca [384 x i8], align 16
  %seedlen = alloca i64, align 8
  %ret = alloca i32, align 4
  %total_entropy_len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !13
  store i32 %use_nonce, ptr %use_nonce.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 384, ptr %seed) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %seedlen) #7
  store i64 0, ptr %seedlen, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_entropy_len) #7
  %0 = load i32, ptr %use_nonce.addr, align 4, !tbaa !16
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %1, i32 0, i32 3
  %2 = load i64, ptr %entropy_len, align 8, !tbaa !19
  store i64 %2, ptr %total_entropy_len, align 8, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len1 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %3, i32 0, i32 3
  %4 = load i64, ptr %entropy_len1, align 8, !tbaa !19
  %mul = mul i64 %4, 3
  %div = udiv i64 %mul, 2
  store i64 %div, ptr %total_entropy_len, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %len.addr, align 8, !tbaa !13
  %cmp2 = icmp ugt i64 %5, 256
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i64, ptr %total_entropy_len, align 8, !tbaa !13
  %7 = load i64, ptr %len.addr, align 8, !tbaa !13
  %add = add i64 %6, %7
  %cmp3 = icmp ugt i64 %add, 384
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_entropy_len) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup40 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %arraydecay = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 384, i1 false)
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %f_entropy = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %f_entropy, align 8, !tbaa !20
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p_entropy = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %p_entropy, align 8, !tbaa !21
  %arraydecay6 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len7 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %entropy_len7, align 8, !tbaa !19
  %call = call i32 %9(ptr noundef %11, ptr noundef %arraydecay6, i64 noundef %13)
  store i32 %call, ptr %ret, align 4, !tbaa !16
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %cleanup.cont
  store i32 -9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40

if.end10:                                         ; preds = %cleanup.cont
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len11 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %entropy_len11, align 8, !tbaa !19
  %16 = load i64, ptr %seedlen, align 8, !tbaa !13
  %add12 = add i64 %16, %15
  store i64 %add12, ptr %seedlen, align 8, !tbaa !13
  %17 = load i32, ptr %use_nonce.addr, align 4, !tbaa !16
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then13, label %if.end26

if.then13:                                        ; preds = %if.end10
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %f_entropy14 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %f_entropy14, align 8, !tbaa !20
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p_entropy15 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %p_entropy15, align 8, !tbaa !21
  %arraydecay16 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %22 = load i64, ptr %seedlen, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay16, i64 %22
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len17 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %23, i32 0, i32 3
  %24 = load i64, ptr %entropy_len17, align 8, !tbaa !19
  %div18 = udiv i64 %24, 2
  %call19 = call i32 %19(ptr noundef %21, ptr noundef %add.ptr, i64 noundef %div18)
  store i32 %call19, ptr %ret, align 4, !tbaa !16
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then13
  store i32 -9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40

if.end22:                                         ; preds = %if.then13
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len23 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %entropy_len23, align 8, !tbaa !19
  %div24 = udiv i64 %26, 2
  %27 = load i64, ptr %seedlen, align 8, !tbaa !13
  %add25 = add i64 %27, %div24
  store i64 %add25, ptr %seedlen, align 8, !tbaa !13
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.end10
  %28 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %cmp27 = icmp ne ptr %28, null
  br i1 %cmp27, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end26
  %29 = load i64, ptr %len.addr, align 8, !tbaa !13
  %cmp28 = icmp ne i64 %29, 0
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %land.lhs.true
  %arraydecay30 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %30 = load i64, ptr %seedlen, align 8, !tbaa !13
  %add.ptr31 = getelementptr inbounds i8, ptr %arraydecay30, i64 %30
  %31 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %32 = load i64, ptr %len.addr, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr31, ptr align 1 %31, i64 %32, i1 false)
  %33 = load i64, ptr %len.addr, align 8, !tbaa !13
  %34 = load i64, ptr %seedlen, align 8, !tbaa !13
  %add32 = add i64 %34, %33
  store i64 %add32, ptr %seedlen, align 8, !tbaa !13
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %land.lhs.true, %if.end26
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %arraydecay34 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %36 = load i64, ptr %seedlen, align 8, !tbaa !13
  %call35 = call i32 @mbedtls_hmac_drbg_update_ret(ptr noundef %35, ptr noundef %arraydecay34, i64 noundef %36)
  store i32 %call35, ptr %ret, align 4, !tbaa !16
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  br label %exit

if.end38:                                         ; preds = %if.end33
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %reseed_counter = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %37, i32 0, i32 2
  store i32 1, ptr %reseed_counter, align 8, !tbaa !22
  br label %exit

exit:                                             ; preds = %if.end38, %if.then37
  %arraydecay39 = getelementptr inbounds [384 x i8], ptr %seed, i64 0, i64 0
  %38 = load i64, ptr %seedlen, align 8, !tbaa !13
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay39, i64 noundef %38)
  %39 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup40

cleanup40:                                        ; preds = %exit, %if.then21, %if.then9, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %seedlen) #7
  call void @llvm.lifetime.end.p0(i64 384, ptr %seed) #7
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_seed(ptr noundef %ctx, ptr noundef %md_info, ptr noundef %f_entropy, ptr noundef %p_entropy, ptr noundef %custom, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %md_info.addr = alloca ptr, align 8
  %f_entropy.addr = alloca ptr, align 8
  %p_entropy.addr = alloca ptr, align 8
  %custom.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %md_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %md_info, ptr %md_info.addr, align 8, !tbaa !4
  store ptr %f_entropy, ptr %f_entropy.addr, align 8, !tbaa !4
  store ptr %p_entropy, ptr %p_entropy.addr, align 8, !tbaa !4
  store ptr %custom, ptr %custom.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %md_size) #7
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %md_info.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_md_setup(ptr noundef %md_ctx, ptr noundef %1, i32 noundef 1)
  store i32 %call, ptr %ret, align 4, !tbaa !16
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %md_info.addr, align 8, !tbaa !4
  %call1 = call zeroext i8 @mbedtls_md_get_size(ptr noundef %3)
  %conv = zext i8 %call1 to i64
  store i64 %conv, ptr %md_size, align 8, !tbaa !13
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx2 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], ptr %V, i64 0, i64 0
  %6 = load i64, ptr %md_size, align 8, !tbaa !13
  %call3 = call i32 @mbedtls_md_hmac_starts(ptr noundef %md_ctx2, ptr noundef %arraydecay, i64 noundef %6)
  store i32 %call3, ptr %ret, align 4, !tbaa !16
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %V8 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %8, i32 0, i32 1
  %arraydecay9 = getelementptr inbounds [64 x i8], ptr %V8, i64 0, i64 0
  %9 = load i64, ptr %md_size, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay9, i8 1, i64 %9, i1 false)
  %10 = load ptr, ptr %f_entropy.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %f_entropy10 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %11, i32 0, i32 6
  store ptr %10, ptr %f_entropy10, align 8, !tbaa !20
  %12 = load ptr, ptr %p_entropy.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p_entropy11 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %13, i32 0, i32 7
  store ptr %12, ptr %p_entropy11, align 8, !tbaa !21
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %entropy_len, align 8, !tbaa !19
  %cmp12 = icmp eq i64 %15, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end7
  %16 = load i64, ptr %md_size, align 8, !tbaa !13
  %cmp15 = icmp ule i64 %16, 20
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  %17 = load i64, ptr %md_size, align 8, !tbaa !13
  %cmp17 = icmp ule i64 %17, 28
  %18 = zext i1 %cmp17 to i64
  %cond = select i1 %cmp17, i32 24, i32 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i32 [ 16, %cond.true ], [ %cond, %cond.false ]
  %conv20 = sext i32 %cond19 to i64
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len21 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %19, i32 0, i32 3
  store i64 %conv20, ptr %entropy_len21, align 8, !tbaa !19
  br label %if.end22

if.end22:                                         ; preds = %cond.end, %if.end7
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %custom.addr, align 8, !tbaa !4
  %22 = load i64, ptr %len.addr, align 8, !tbaa !13
  %call23 = call i32 @hmac_drbg_reseed_core(ptr noundef %20, ptr noundef %21, i64 noundef %22, i32 noundef 1)
  store i32 %call23, ptr %ret, align 4, !tbaa !16
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  %23 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %md_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @mbedtls_hmac_drbg_set_prediction_resistance(ptr noundef %ctx, i32 noundef %resistance) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %resistance.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %resistance, ptr %resistance.addr, align 4, !tbaa !16
  %0 = load i32, ptr %resistance.addr, align 4, !tbaa !16
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %1, i32 0, i32 4
  store i32 %0, ptr %prediction_resistance, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_hmac_drbg_set_entropy_len(ptr noundef %ctx, i64 noundef %len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !13
  %0 = load i64, ptr %len.addr, align 8, !tbaa !13
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %entropy_len = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %1, i32 0, i32 3
  store i64 %0, ptr %entropy_len, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_hmac_drbg_set_reseed_interval(ptr noundef %ctx, i32 noundef %interval) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %interval.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %interval, ptr %interval.addr, align 4, !tbaa !16
  %0 = load i32, ptr %interval.addr, align 4, !tbaa !16
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %1, i32 0, i32 5
  store i32 %0, ptr %reseed_interval, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_random_with_add(ptr noundef %p_rng, ptr noundef %output, i64 noundef %out_len, ptr noundef %additional, i64 noundef %add_len) #0 {
entry:
  %retval = alloca i32, align 4
  %p_rng.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %out_len.addr = alloca i64, align 8
  %additional.addr = alloca ptr, align 8
  %add_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %md_len = alloca i64, align 8
  %left = alloca i64, align 8
  %out = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %use_len = alloca i64, align 8
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i64 %out_len, ptr %out_len.addr, align 8, !tbaa !13
  store ptr %additional, ptr %additional.addr, align 8, !tbaa !4
  store i64 %add_len, ptr %add_len.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7
  %0 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  store ptr %0, ptr %ctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %md_len) #7
  %1 = load ptr, ptr %ctx, align 8, !tbaa !4
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %1, i32 0, i32 0
  %md_info = getelementptr inbounds %struct.mbedtls_md_context_t, ptr %md_ctx, i32 0, i32 0
  %2 = load ptr, ptr %md_info, align 8, !tbaa !14
  %call = call zeroext i8 @mbedtls_md_get_size(ptr noundef %2)
  %conv = zext i8 %call to i64
  store i64 %conv, ptr %md_len, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #7
  %3 = load i64, ptr %out_len.addr, align 8, !tbaa !13
  store i64 %3, ptr %left, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %out) #7
  %4 = load ptr, ptr %output.addr, align 8, !tbaa !4
  store ptr %4, ptr %out, align 8, !tbaa !4
  %5 = load i64, ptr %out_len.addr, align 8, !tbaa !13
  %cmp = icmp ugt i64 %5, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %cmp2 = icmp ugt i64 %6, 256
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %ctx, align 8, !tbaa !4
  %f_entropy = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %f_entropy, align 8, !tbaa !20
  %cmp6 = icmp ne ptr %8, null
  br i1 %cmp6, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end5
  %9 = load ptr, ptr %ctx, align 8, !tbaa !4
  %prediction_resistance = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %prediction_resistance, align 8, !tbaa !23
  %cmp8 = icmp eq i32 %10, 1
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load ptr, ptr %ctx, align 8, !tbaa !4
  %reseed_counter = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %reseed_counter, align 8, !tbaa !22
  %13 = load ptr, ptr %ctx, align 8, !tbaa !4
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %reseed_interval, align 4, !tbaa !8
  %cmp10 = icmp sgt i32 %12, %14
  br i1 %cmp10, label %if.then12, label %if.end18

if.then12:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load ptr, ptr %ctx, align 8, !tbaa !4
  %16 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %17 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %call13 = call i32 @mbedtls_hmac_drbg_reseed(ptr noundef %15, ptr noundef %16, i64 noundef %17)
  store i32 %call13, ptr %ret, align 4, !tbaa !16
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then12
  %18 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

if.end17:                                         ; preds = %if.then12
  store i64 0, ptr %add_len.addr, align 8, !tbaa !13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %lor.lhs.false, %if.end5
  %19 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %cmp19 = icmp ne ptr %19, null
  br i1 %cmp19, label %land.lhs.true21, label %if.end30

land.lhs.true21:                                  ; preds = %if.end18
  %20 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %cmp22 = icmp ne i64 %20, 0
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %land.lhs.true21
  %21 = load ptr, ptr %ctx, align 8, !tbaa !4
  %22 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %23 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %call25 = call i32 @mbedtls_hmac_drbg_update_ret(ptr noundef %21, ptr noundef %22, i64 noundef %23)
  store i32 %call25, ptr %ret, align 4, !tbaa !16
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  br label %exit

if.end29:                                         ; preds = %if.then24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.lhs.true21, %if.end18
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end30
  %24 = load i64, ptr %left, align 8, !tbaa !13
  %cmp31 = icmp ne i64 %24, 0
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %use_len) #7
  %25 = load i64, ptr %left, align 8, !tbaa !13
  %26 = load i64, ptr %md_len, align 8, !tbaa !13
  %cmp33 = icmp ugt i64 %25, %26
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %27 = load i64, ptr %md_len, align 8, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %28 = load i64, ptr %left, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %27, %cond.true ], [ %28, %cond.false ]
  store i64 %cond, ptr %use_len, align 8, !tbaa !13
  %29 = load ptr, ptr %ctx, align 8, !tbaa !4
  %md_ctx35 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %29, i32 0, i32 0
  %call36 = call i32 @mbedtls_md_hmac_reset(ptr noundef %md_ctx35)
  store i32 %call36, ptr %ret, align 4, !tbaa !16
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %cond.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %cond.end
  %30 = load ptr, ptr %ctx, align 8, !tbaa !4
  %md_ctx41 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %ctx, align 8, !tbaa !4
  %V = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %31, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], ptr %V, i64 0, i64 0
  %32 = load i64, ptr %md_len, align 8, !tbaa !13
  %call42 = call i32 @mbedtls_md_hmac_update(ptr noundef %md_ctx41, ptr noundef %arraydecay, i64 noundef %32)
  store i32 %call42, ptr %ret, align 4, !tbaa !16
  %cmp43 = icmp ne i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end40
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  %33 = load ptr, ptr %ctx, align 8, !tbaa !4
  %md_ctx47 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %ctx, align 8, !tbaa !4
  %V48 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %34, i32 0, i32 1
  %arraydecay49 = getelementptr inbounds [64 x i8], ptr %V48, i64 0, i64 0
  %call50 = call i32 @mbedtls_md_hmac_finish(ptr noundef %md_ctx47, ptr noundef %arraydecay49)
  store i32 %call50, ptr %ret, align 4, !tbaa !16
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end46
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  %35 = load ptr, ptr %out, align 8, !tbaa !4
  %36 = load ptr, ptr %ctx, align 8, !tbaa !4
  %V55 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %36, i32 0, i32 1
  %arraydecay56 = getelementptr inbounds [64 x i8], ptr %V55, i64 0, i64 0
  %37 = load i64, ptr %use_len, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 8 %arraydecay56, i64 %37, i1 false)
  %38 = load i64, ptr %use_len, align 8, !tbaa !13
  %39 = load ptr, ptr %out, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 %38
  store ptr %add.ptr, ptr %out, align 8, !tbaa !4
  %40 = load i64, ptr %use_len, align 8, !tbaa !13
  %41 = load i64, ptr %left, align 8, !tbaa !13
  %sub = sub i64 %41, %40
  store i64 %sub, ptr %left, align 8, !tbaa !13
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.then45, %if.then39, %if.end54
  call void @llvm.lifetime.end.p0(i64 8, ptr %use_len) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
    i32 2, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %42 = load ptr, ptr %ctx, align 8, !tbaa !4
  %43 = load ptr, ptr %additional.addr, align 8, !tbaa !4
  %44 = load i64, ptr %add_len.addr, align 8, !tbaa !13
  %call57 = call i32 @mbedtls_hmac_drbg_update_ret(ptr noundef %42, ptr noundef %43, i64 noundef %44)
  store i32 %call57, ptr %ret, align 4, !tbaa !16
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %while.end
  br label %exit

if.end61:                                         ; preds = %while.end
  %45 = load ptr, ptr %ctx, align 8, !tbaa !4
  %reseed_counter62 = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %reseed_counter62, align 8, !tbaa !22
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %reseed_counter62, align 8, !tbaa !22
  br label %exit

exit:                                             ; preds = %if.end61, %cleanup, %if.then60, %if.then28
  %47 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %exit, %cleanup, %if.then16, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %out) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %md_len) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_random(ptr noundef %p_rng, ptr noundef %output, i64 noundef %out_len) #0 {
entry:
  %p_rng.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %out_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %ctx = alloca ptr, align 8
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i64 %out_len, ptr %out_len.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7
  %0 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  store ptr %0, ptr %ctx, align 8, !tbaa !4
  %1 = load ptr, ptr %ctx, align 8, !tbaa !4
  %2 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %3 = load i64, ptr %out_len.addr, align 8, !tbaa !13
  %call = call i32 @mbedtls_hmac_drbg_random_with_add(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef null, i64 noundef 0)
  store i32 %call, ptr %ret, align 4, !tbaa !16
  %4 = load i32, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @mbedtls_hmac_drbg_free(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %md_ctx = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %1, i32 0, i32 0
  call void @mbedtls_md_free(ptr noundef %md_ctx)
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef %2, i64 noundef 128)
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %reseed_interval = getelementptr inbounds %struct.mbedtls_hmac_drbg_context, ptr %3, i32 0, i32 5
  store i32 10000, ptr %reseed_interval, align 4, !tbaa !8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @mbedtls_md_free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_write_seed_file(ptr noundef %ctx, ptr noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %f = alloca ptr, align 8
  %buf = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 -110, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #7
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str)
  store ptr %call, ptr %f, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %call1 = call i32 @mbedtls_hmac_drbg_random(ptr noundef %1, ptr noundef %arraydecay, i64 noundef 256)
  store i32 %call1, ptr %ret, align 4, !tbaa !16
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr %f, align 8, !tbaa !4
  %call6 = call i64 @fwrite(ptr noundef %arraydecay5, i64 noundef 1, i64 noundef 256, ptr noundef %2)
  %cmp7 = icmp ne i64 %call6, 256
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -7, ptr %ret, align 4, !tbaa !16
  br label %exit

if.end9:                                          ; preds = %if.end4
  store i32 0, ptr %ret, align 4, !tbaa !16
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8, %if.then3
  %3 = load ptr, ptr %f, align 8, !tbaa !4
  %call10 = call i32 @fclose(ptr noundef %3)
  %arraydecay11 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay11, i64 noundef 256)
  %4 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #3

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_update_seed_file(ptr noundef %ctx, ptr noundef %path) #0 {
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
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7
  store i32 0, ptr %ret, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #7
  store ptr null, ptr %f, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %buf) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #7
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str.1)
  store ptr %call, ptr %f, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %1 = load ptr, ptr %f, align 8, !tbaa !4
  %call1 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 256, ptr noundef %1)
  store i64 %call1, ptr %n, align 8, !tbaa !13
  %2 = load ptr, ptr %f, align 8, !tbaa !4
  %call2 = call i64 @fread(ptr noundef %c, i64 noundef 1, i64 noundef 1, ptr noundef %2)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -5, ptr %ret, align 4, !tbaa !16
  br label %exit

if.end5:                                          ; preds = %if.end
  %3 = load i64, ptr %n, align 8, !tbaa !13
  %cmp6 = icmp eq i64 %3, 0
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %4 = load ptr, ptr %f, align 8, !tbaa !4
  %call7 = call i32 @ferror(ptr noundef %4) #7
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  store i32 -7, ptr %ret, align 4, !tbaa !16
  br label %exit

if.end9:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %f, align 8, !tbaa !4
  %call10 = call i32 @fclose(ptr noundef %5)
  store ptr null, ptr %f, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %arraydecay11 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  %7 = load i64, ptr %n, align 8, !tbaa !13
  %call12 = call i32 @mbedtls_hmac_drbg_update_ret(ptr noundef %6, ptr noundef %arraydecay11, i64 noundef %7)
  store i32 %call12, ptr %ret, align 4, !tbaa !16
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8, %if.then4
  %arraydecay13 = getelementptr inbounds [256 x i8], ptr %buf, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay13, i64 noundef 256)
  %8 = load ptr, ptr %f, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %8, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %exit
  %9 = load ptr, ptr %f, align 8, !tbaa !4
  %call16 = call i32 @fclose(ptr noundef %9)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %exit
  %10 = load i32, ptr %ret, align 4, !tbaa !16
  %cmp18 = icmp ne i32 %10, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  %11 = load i32, ptr %ret, align 4, !tbaa !16
  store i32 %11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call21 = call i32 @mbedtls_hmac_drbg_write_seed_file(ptr noundef %12, ptr noundef %13)
  store i32 %call21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #5

; Function Attrs: nounwind uwtable
define i32 @mbedtls_hmac_drbg_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_hmac_drbg_context, align 8
  %buf = alloca [80 x i8], align 16
  %md_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 128, ptr %ctx) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr %buf) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %md_info) #7
  %call = call ptr @mbedtls_md_info_from_type(i32 noundef 4)
  store ptr %call, ptr %md_info, align 8, !tbaa !4
  call void @mbedtls_hmac_drbg_init(ptr noundef %ctx)
  %0 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr @test_offset, align 8, !tbaa !13
  %1 = load ptr, ptr %md_info, align 8, !tbaa !4
  %call2 = call i32 @mbedtls_hmac_drbg_seed(ptr noundef %ctx, ptr noundef %1, ptr noundef @hmac_drbg_self_test_entropy, ptr noundef @entropy_pr, ptr noundef null, i64 noundef 0)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %2 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp5 = icmp ne i32 %2, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @mbedtls_hmac_drbg_set_prediction_resistance(ptr noundef %ctx, i32 noundef 1)
  %arraydecay = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %call10 = call i32 @mbedtls_hmac_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay, i64 noundef 80)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end9
  %3 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp13 = icmp ne i32 %3, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then12
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %arraydecay18 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %call19 = call i32 @mbedtls_hmac_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay18, i64 noundef 80)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end17
  %4 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp22 = icmp ne i32 %4, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then21
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then21
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %arraydecay27 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %call28 = call i32 @memcmp(ptr noundef %arraydecay27, ptr noundef @result_pr, i64 noundef 80) #8
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end26
  %5 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp31 = icmp ne i32 %5, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then30
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then30
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @mbedtls_hmac_drbg_free(ptr noundef %ctx)
  call void @mbedtls_hmac_drbg_free(ptr noundef %ctx)
  %6 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp36 = icmp ne i32 %6, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %7 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp40 = icmp ne i32 %7, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end39
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  call void @mbedtls_hmac_drbg_init(ptr noundef %ctx)
  store i64 0, ptr @test_offset, align 8, !tbaa !13
  %8 = load ptr, ptr %md_info, align 8, !tbaa !4
  %call44 = call i32 @mbedtls_hmac_drbg_seed(ptr noundef %ctx, ptr noundef %8, ptr noundef @hmac_drbg_self_test_entropy, ptr noundef @entropy_nopr, ptr noundef null, i64 noundef 0)
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end43
  %9 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp47 = icmp ne i32 %9, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then46
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then46
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call52 = call i32 @mbedtls_hmac_drbg_reseed(ptr noundef %ctx, ptr noundef null, i64 noundef 0)
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.end51
  %10 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp55 = icmp ne i32 %10, 0
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.then54
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then54
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  %arraydecay60 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %call61 = call i32 @mbedtls_hmac_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay60, i64 noundef 80)
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end68

if.then63:                                        ; preds = %if.end59
  %11 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp64 = icmp ne i32 %11, 0
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.then63
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then63
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  %arraydecay69 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %call70 = call i32 @mbedtls_hmac_drbg_random(ptr noundef %ctx, ptr noundef %arraydecay69, i64 noundef 80)
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then72, label %if.end77

if.then72:                                        ; preds = %if.end68
  %12 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp73 = icmp ne i32 %12, 0
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.then72
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then72
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end68
  %arraydecay78 = getelementptr inbounds [80 x i8], ptr %buf, i64 0, i64 0
  %call79 = call i32 @memcmp(ptr noundef %arraydecay78, ptr noundef @result_nopr, i64 noundef 80) #8
  %cmp80 = icmp ne i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.end86

if.then81:                                        ; preds = %if.end77
  %13 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp82 = icmp ne i32 %13, 0
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.then81
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then81
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end86:                                         ; preds = %if.end77
  call void @mbedtls_hmac_drbg_free(ptr noundef %ctx)
  call void @mbedtls_hmac_drbg_free(ptr noundef %ctx)
  %14 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp87 = icmp ne i32 %14, 0
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end86
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end86
  %15 = load i32, ptr %verbose.addr, align 4, !tbaa !16
  %cmp91 = icmp ne i32 %15, 0
  br i1 %cmp91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end90
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end90
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end85, %if.end76, %if.end67, %if.end58, %if.end50, %if.end34, %if.end25, %if.end16, %if.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %md_info) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr %buf) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %ctx) #7
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare ptr @mbedtls_md_info_from_type(i32 noundef) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @hmac_drbg_self_test_entropy(ptr noundef %data, ptr noundef %buf, i64 noundef %len) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %p, align 8, !tbaa !4
  %1 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %p, align 8, !tbaa !4
  %3 = load i64, ptr @test_offset, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i64, ptr %len.addr, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %add.ptr, i64 %4, i1 false)
  %5 = load i64, ptr %len.addr, align 8, !tbaa !13
  %6 = load i64, ptr @test_offset, align 8, !tbaa !13
  %add = add i64 %6, %5
  store i64 %add, ptr @test_offset, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !11, i64 108}
!9 = !{!"mbedtls_hmac_drbg_context", !10, i64 0, !6, i64 24, !11, i64 88, !12, i64 96, !11, i64 104, !11, i64 108, !5, i64 112, !5, i64 120}
!10 = !{!"mbedtls_md_context_t", !5, i64 0, !5, i64 8, !5, i64 16}
!11 = !{!"int", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!9, !5, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!11, !11, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!9, !12, i64 96}
!20 = !{!9, !5, i64 112}
!21 = !{!9, !5, i64 120}
!22 = !{!9, !11, i64 88}
!23 = !{!9, !11, i64 104}
!24 = distinct !{!24, !18}

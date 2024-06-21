; ModuleID = 'samples/382.bc'
source_filename = "des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_des_context = type { [32 x i32] }
%struct.mbedtls_des3_context = type { [96 x i32] }

@odd_parity_table = internal constant [128 x i8] c"\01\02\04\07\08\0B\0D\0E\10\13\15\16\19\1A\1C\1F #%&)*,/12478;=>@CEFIJLOQRTWX[]^abdghkmnpsuvyz|\7F\80\83\85\86\89\8A\8C\8F\91\92\94\97\98\9B\9D\9E\A1\A2\A4\A7\A8\AB\AD\AE\B0\B3\B5\B6\B9\BA\BC\BF\C1\C2\C4\C7\C8\CB\CD\CE\D0\D3\D5\D6\D9\DA\DC\DF\E0\E3\E5\E6\E9\EA\EC\EF\F1\F2\F4\F7\F8\FB\FD\FE", align 16
@weak_key_table = internal constant [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\E0\E0\E0\F1\F1\F1\F1", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@LHs = internal constant [16 x i32] [i32 0, i32 1, i32 256, i32 257, i32 65536, i32 65537, i32 65792, i32 65793, i32 16777216, i32 16777217, i32 16777472, i32 16777473, i32 16842752, i32 16842753, i32 16843008, i32 16843009], align 16
@RHs = internal constant [16 x i32] [i32 0, i32 16777216, i32 65536, i32 16842752, i32 256, i32 16777472, i32 65792, i32 16843008, i32 1, i32 16777217, i32 65537, i32 16842753, i32 257, i32 16777473, i32 65793, i32 16843009], align 16
@SB8 = internal constant [64 x i32] [i32 268439616, i32 4096, i32 262144, i32 268701760, i32 268435456, i32 268439616, i32 64, i32 268435456, i32 262208, i32 268697600, i32 268701760, i32 266240, i32 268701696, i32 266304, i32 4096, i32 64, i32 268697600, i32 268435520, i32 268439552, i32 4160, i32 266240, i32 262208, i32 268697664, i32 268701696, i32 4160, i32 0, i32 0, i32 268697664, i32 268435520, i32 268439552, i32 266304, i32 262144, i32 266304, i32 262144, i32 268701696, i32 4096, i32 64, i32 268697664, i32 4096, i32 266304, i32 268439552, i32 64, i32 268435520, i32 268697600, i32 268697664, i32 268435456, i32 262144, i32 268439616, i32 0, i32 268701760, i32 262208, i32 268435520, i32 268697600, i32 268439552, i32 268439616, i32 0, i32 268701760, i32 266240, i32 266240, i32 4160, i32 4160, i32 262208, i32 268435456, i32 268701696], align 16
@SB6 = internal constant [64 x i32] [i32 536870928, i32 541065216, i32 16384, i32 541081616, i32 541065216, i32 16, i32 541081616, i32 4194304, i32 536887296, i32 4210704, i32 4194304, i32 536870928, i32 4194320, i32 536887296, i32 536870912, i32 16400, i32 0, i32 4194320, i32 536887312, i32 16384, i32 4210688, i32 536887312, i32 16, i32 541065232, i32 541065232, i32 0, i32 4210704, i32 541081600, i32 16400, i32 4210688, i32 541081600, i32 536870912, i32 536887296, i32 16, i32 541065232, i32 4210688, i32 541081616, i32 4194304, i32 16400, i32 536870928, i32 4194304, i32 536887296, i32 536870912, i32 16400, i32 536870928, i32 541081616, i32 4210688, i32 541065216, i32 4210704, i32 541081600, i32 0, i32 541065232, i32 16, i32 16384, i32 541065216, i32 4210704, i32 16384, i32 4194320, i32 536887312, i32 0, i32 541081600, i32 536870912, i32 4194320, i32 536887312], align 16
@SB4 = internal constant [64 x i32] [i32 8396801, i32 8321, i32 8321, i32 128, i32 8396928, i32 8388737, i32 8388609, i32 8193, i32 0, i32 8396800, i32 8396800, i32 8396929, i32 129, i32 0, i32 8388736, i32 8388609, i32 1, i32 8192, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8193, i32 8320, i32 8388737, i32 1, i32 8320, i32 8388736, i32 8192, i32 8396928, i32 8396929, i32 129, i32 8388736, i32 8388609, i32 8396800, i32 8396929, i32 129, i32 0, i32 0, i32 8396800, i32 8320, i32 8388736, i32 8388737, i32 1, i32 8396801, i32 8321, i32 8321, i32 128, i32 8396929, i32 129, i32 1, i32 8192, i32 8388609, i32 8193, i32 8396928, i32 8388737, i32 8193, i32 8320, i32 8388608, i32 8396801, i32 128, i32 8388608, i32 8192, i32 8396928], align 16
@SB2 = internal constant [64 x i32] [i32 -2146402272, i32 -2147450880, i32 32768, i32 1081376, i32 1048576, i32 32, i32 -2146435040, i32 -2147450848, i32 -2147483616, i32 -2146402272, i32 -2146402304, i32 -2147483648, i32 -2147450880, i32 1048576, i32 32, i32 -2146435040, i32 1081344, i32 1048608, i32 -2147450848, i32 0, i32 -2147483648, i32 32768, i32 1081376, i32 -2146435072, i32 1048608, i32 -2147483616, i32 0, i32 1081344, i32 32800, i32 -2146402304, i32 -2146435072, i32 32800, i32 0, i32 1081376, i32 -2146435040, i32 1048576, i32 -2147450848, i32 -2146435072, i32 -2146402304, i32 32768, i32 -2146435072, i32 -2147450880, i32 32, i32 -2146402272, i32 1081376, i32 32, i32 32768, i32 -2147483648, i32 32800, i32 -2146402304, i32 1048576, i32 -2147483616, i32 1048608, i32 -2147450848, i32 -2147483616, i32 1048608, i32 1081344, i32 0, i32 -2147450880, i32 32800, i32 -2147483648, i32 -2146435040, i32 -2146402272, i32 1081344], align 16
@SB7 = internal constant [64 x i32] [i32 2097152, i32 69206018, i32 67110914, i32 0, i32 2048, i32 67110914, i32 2099202, i32 69208064, i32 69208066, i32 2097152, i32 0, i32 67108866, i32 2, i32 67108864, i32 69206018, i32 2050, i32 67110912, i32 2099202, i32 2097154, i32 67110912, i32 67108866, i32 69206016, i32 69208064, i32 2097154, i32 69206016, i32 2048, i32 2050, i32 69208066, i32 2099200, i32 2, i32 67108864, i32 2099200, i32 67108864, i32 2099200, i32 2097152, i32 67110914, i32 67110914, i32 69206018, i32 69206018, i32 2, i32 2097154, i32 67108864, i32 67110912, i32 2097152, i32 69208064, i32 2050, i32 2099202, i32 69208064, i32 2050, i32 67108866, i32 69208066, i32 69206016, i32 2099200, i32 0, i32 2, i32 69208066, i32 0, i32 2099202, i32 69206016, i32 2048, i32 67108866, i32 67110912, i32 2048, i32 2097154], align 16
@SB5 = internal constant [64 x i32] [i32 256, i32 34078976, i32 34078720, i32 1107296512, i32 524288, i32 256, i32 1073741824, i32 34078720, i32 1074266368, i32 524288, i32 33554688, i32 1074266368, i32 1107296512, i32 1107820544, i32 524544, i32 1073741824, i32 33554432, i32 1074266112, i32 1074266112, i32 0, i32 1073742080, i32 1107820800, i32 1107820800, i32 33554688, i32 1107820544, i32 1073742080, i32 0, i32 1107296256, i32 34078976, i32 33554432, i32 1107296256, i32 524544, i32 524288, i32 1107296512, i32 256, i32 33554432, i32 1073741824, i32 34078720, i32 1107296512, i32 1074266368, i32 33554688, i32 1073741824, i32 1107820544, i32 34078976, i32 1074266368, i32 256, i32 33554432, i32 1107820544, i32 1107820800, i32 524544, i32 1107296256, i32 1107820800, i32 34078720, i32 0, i32 1074266112, i32 1107296256, i32 524544, i32 33554688, i32 1073742080, i32 524288, i32 0, i32 1074266112, i32 34078976, i32 1073742080], align 16
@SB3 = internal constant [64 x i32] [i32 520, i32 134349312, i32 0, i32 134348808, i32 134218240, i32 0, i32 131592, i32 134218240, i32 131080, i32 134217736, i32 134217736, i32 131072, i32 134349320, i32 131080, i32 134348800, i32 520, i32 134217728, i32 8, i32 134349312, i32 512, i32 131584, i32 134348800, i32 134348808, i32 131592, i32 134218248, i32 131584, i32 131072, i32 134218248, i32 8, i32 134349320, i32 512, i32 134217728, i32 134349312, i32 134217728, i32 131080, i32 520, i32 131072, i32 134349312, i32 134218240, i32 0, i32 512, i32 131080, i32 134349320, i32 134218240, i32 134217736, i32 512, i32 0, i32 134348808, i32 134218248, i32 131072, i32 134217728, i32 134349320, i32 8, i32 131592, i32 131584, i32 134217736, i32 134348800, i32 134218248, i32 520, i32 134348800, i32 131592, i32 8, i32 134348808, i32 131584], align 16
@SB1 = internal constant [64 x i32] [i32 16843776, i32 0, i32 65536, i32 16843780, i32 16842756, i32 66564, i32 4, i32 65536, i32 1024, i32 16843776, i32 16843780, i32 1024, i32 16778244, i32 16842756, i32 16777216, i32 4, i32 1028, i32 16778240, i32 16778240, i32 66560, i32 66560, i32 16842752, i32 16842752, i32 16778244, i32 65540, i32 16777220, i32 16777220, i32 65540, i32 0, i32 1028, i32 66564, i32 16777216, i32 65536, i32 16843780, i32 4, i32 16842752, i32 16843776, i32 16777216, i32 16777216, i32 1024, i32 16842756, i32 65536, i32 66560, i32 16777220, i32 1024, i32 4, i32 16778244, i32 66564, i32 16843780, i32 65540, i32 16842752, i32 16778244, i32 16777220, i32 1028, i32 66564, i32 16843776, i32 1028, i32 16778240, i32 16778240, i32 0, i32 65540, i32 66560, i32 0, i32 16842756], align 16
@.str = private unnamed_addr constant [23 x i8] c"  DES%c-ECB-%3d (%s): \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@des3_test_buf = internal constant [8 x i8] c"Now is t", align 1
@des3_test_keys = internal constant [24 x i8] c"\01#Eg\89\AB\CD\EF#Eg\89\AB\CD\EF\01Eg\89\AB\CD\EF\01#", align 16
@des3_test_ecb_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"7+\98\BFRe\B0Y", [8 x i8] c"\C2\10\19\9C8Ze\A1", [8 x i8] c"\A2pVhi\E5\15\1D"], align 16
@des3_test_ecb_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\1C\D5\97\EA\84&s\FB", [8 x i8] c"\B3\92M\F3\C5\B5B\93", [8 x i8] c"\DA7dA\BAobo"], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  DES%c-CBC-%3d (%s): \00", align 1
@des3_test_iv = internal constant [8 x i8] c"\124Vx\90\AB\CD\EF", align 1
@des3_test_cbc_dec = internal constant [3 x [8 x i8]] [[8 x i8] c"X\D9H\EF\85\14e\9A", [8 x i8] c"_\C8x\D4\D7\92\D9T", [8 x i8] c"%\F9u\85\A8\1EH\BF"], align 16
@des3_test_cbc_enc = internal constant [3 x [8 x i8]] [[8 x i8] c"\91\1Cm\CFH\A7\C3M", [8 x i8] c"`\1Av\8F\A1\F9f\F1", [8 x i8] c"\A1P\0F\99\B2\CDdv"], align 16

; Function Attrs: nounwind uwtable
define void @mbedtls_des_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @mbedtls_des_free(ptr noundef %ctx) #0 {
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
  call void @mbedtls_platform_zeroize(ptr noundef %1, i64 noundef 128)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define void @mbedtls_des3_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 384, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_des3_free(ptr noundef %ctx) #0 {
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
  call void @mbedtls_platform_zeroize(ptr noundef %1, i64 noundef 384)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @mbedtls_des_key_set_parity(ptr noundef %key) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %div = sdiv i32 %conv, 2
  %idxprom1 = sext i32 %div to i64
  %arrayidx2 = getelementptr inbounds [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1
  %4 = load i8, ptr %arrayidx2, align 1, !tbaa !10
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 %idxprom3
  store i8 %4, ptr %arrayidx4, align 1, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des_key_check_key_parity(ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %3 to i32
  %4 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 %idxprom1
  %6 = load i8, ptr %arrayidx2, align 1, !tbaa !10
  %conv3 = zext i8 %6 to i32
  %div = sdiv i32 %conv3, 2
  %idxprom4 = sext i32 %div to i64
  %arrayidx5 = getelementptr inbounds [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom4
  %7 = load i8, ptr %arrayidx5, align 1, !tbaa !10
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp ne i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des_key_check_weak(ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x [8 x i8]], ptr @weak_key_table, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i8], ptr %arrayidx, i64 0, i64 0
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef %2, i64 noundef 8) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define void @mbedtls_des_setkey(ptr noundef %SK, ptr noundef %key) #0 {
entry:
  %SK.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %T = alloca i32, align 4
  store ptr %SK, ptr %SK.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %X) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %Y) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %T) #6
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1, !tbaa !10
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1, !tbaa !10
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, ptr %X, align 4, !tbaa !8
  %8 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx11, align 1, !tbaa !10
  %conv12 = zext i8 %9 to i32
  %shl13 = shl i32 %conv12, 24
  %10 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %10, i64 5
  %11 = load i8, ptr %arrayidx14, align 1, !tbaa !10
  %conv15 = zext i8 %11 to i32
  %shl16 = shl i32 %conv15, 16
  %or17 = or i32 %shl13, %shl16
  %12 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 6
  %13 = load i8, ptr %arrayidx18, align 1, !tbaa !10
  %conv19 = zext i8 %13 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %14 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i8, ptr %14, i64 7
  %15 = load i8, ptr %arrayidx22, align 1, !tbaa !10
  %conv23 = zext i8 %15 to i32
  %or24 = or i32 %or21, %conv23
  store i32 %or24, ptr %Y, align 4, !tbaa !8
  %16 = load i32, ptr %Y, align 4, !tbaa !8
  %shr = lshr i32 %16, 4
  %17 = load i32, ptr %X, align 4, !tbaa !8
  %xor = xor i32 %shr, %17
  %and = and i32 %xor, 252645135
  store i32 %and, ptr %T, align 4, !tbaa !8
  %18 = load i32, ptr %T, align 4, !tbaa !8
  %19 = load i32, ptr %X, align 4, !tbaa !8
  %xor25 = xor i32 %19, %18
  store i32 %xor25, ptr %X, align 4, !tbaa !8
  %20 = load i32, ptr %T, align 4, !tbaa !8
  %shl26 = shl i32 %20, 4
  %21 = load i32, ptr %Y, align 4, !tbaa !8
  %xor27 = xor i32 %21, %shl26
  store i32 %xor27, ptr %Y, align 4, !tbaa !8
  %22 = load i32, ptr %Y, align 4, !tbaa !8
  %23 = load i32, ptr %X, align 4, !tbaa !8
  %xor28 = xor i32 %22, %23
  %and29 = and i32 %xor28, 269488144
  store i32 %and29, ptr %T, align 4, !tbaa !8
  %24 = load i32, ptr %T, align 4, !tbaa !8
  %25 = load i32, ptr %X, align 4, !tbaa !8
  %xor30 = xor i32 %25, %24
  store i32 %xor30, ptr %X, align 4, !tbaa !8
  %26 = load i32, ptr %T, align 4, !tbaa !8
  %27 = load i32, ptr %Y, align 4, !tbaa !8
  %xor31 = xor i32 %27, %26
  store i32 %xor31, ptr %Y, align 4, !tbaa !8
  %28 = load i32, ptr %X, align 4, !tbaa !8
  %and32 = and i32 %28, 15
  %idxprom = zext i32 %and32 to i64
  %arrayidx33 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom
  %29 = load i32, ptr %arrayidx33, align 4, !tbaa !8
  %shl34 = shl i32 %29, 3
  %30 = load i32, ptr %X, align 4, !tbaa !8
  %shr35 = lshr i32 %30, 8
  %and36 = and i32 %shr35, 15
  %idxprom37 = zext i32 %and36 to i64
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom37
  %31 = load i32, ptr %arrayidx38, align 4, !tbaa !8
  %shl39 = shl i32 %31, 2
  %or40 = or i32 %shl34, %shl39
  %32 = load i32, ptr %X, align 4, !tbaa !8
  %shr41 = lshr i32 %32, 16
  %and42 = and i32 %shr41, 15
  %idxprom43 = zext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom43
  %33 = load i32, ptr %arrayidx44, align 4, !tbaa !8
  %shl45 = shl i32 %33, 1
  %or46 = or i32 %or40, %shl45
  %34 = load i32, ptr %X, align 4, !tbaa !8
  %shr47 = lshr i32 %34, 24
  %and48 = and i32 %shr47, 15
  %idxprom49 = zext i32 %and48 to i64
  %arrayidx50 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom49
  %35 = load i32, ptr %arrayidx50, align 4, !tbaa !8
  %or51 = or i32 %or46, %35
  %36 = load i32, ptr %X, align 4, !tbaa !8
  %shr52 = lshr i32 %36, 5
  %and53 = and i32 %shr52, 15
  %idxprom54 = zext i32 %and53 to i64
  %arrayidx55 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom54
  %37 = load i32, ptr %arrayidx55, align 4, !tbaa !8
  %shl56 = shl i32 %37, 7
  %or57 = or i32 %or51, %shl56
  %38 = load i32, ptr %X, align 4, !tbaa !8
  %shr58 = lshr i32 %38, 13
  %and59 = and i32 %shr58, 15
  %idxprom60 = zext i32 %and59 to i64
  %arrayidx61 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom60
  %39 = load i32, ptr %arrayidx61, align 4, !tbaa !8
  %shl62 = shl i32 %39, 6
  %or63 = or i32 %or57, %shl62
  %40 = load i32, ptr %X, align 4, !tbaa !8
  %shr64 = lshr i32 %40, 21
  %and65 = and i32 %shr64, 15
  %idxprom66 = zext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom66
  %41 = load i32, ptr %arrayidx67, align 4, !tbaa !8
  %shl68 = shl i32 %41, 5
  %or69 = or i32 %or63, %shl68
  %42 = load i32, ptr %X, align 4, !tbaa !8
  %shr70 = lshr i32 %42, 29
  %and71 = and i32 %shr70, 15
  %idxprom72 = zext i32 %and71 to i64
  %arrayidx73 = getelementptr inbounds [16 x i32], ptr @LHs, i64 0, i64 %idxprom72
  %43 = load i32, ptr %arrayidx73, align 4, !tbaa !8
  %shl74 = shl i32 %43, 4
  %or75 = or i32 %or69, %shl74
  store i32 %or75, ptr %X, align 4, !tbaa !8
  %44 = load i32, ptr %Y, align 4, !tbaa !8
  %shr76 = lshr i32 %44, 1
  %and77 = and i32 %shr76, 15
  %idxprom78 = zext i32 %and77 to i64
  %arrayidx79 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom78
  %45 = load i32, ptr %arrayidx79, align 4, !tbaa !8
  %shl80 = shl i32 %45, 3
  %46 = load i32, ptr %Y, align 4, !tbaa !8
  %shr81 = lshr i32 %46, 9
  %and82 = and i32 %shr81, 15
  %idxprom83 = zext i32 %and82 to i64
  %arrayidx84 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom83
  %47 = load i32, ptr %arrayidx84, align 4, !tbaa !8
  %shl85 = shl i32 %47, 2
  %or86 = or i32 %shl80, %shl85
  %48 = load i32, ptr %Y, align 4, !tbaa !8
  %shr87 = lshr i32 %48, 17
  %and88 = and i32 %shr87, 15
  %idxprom89 = zext i32 %and88 to i64
  %arrayidx90 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom89
  %49 = load i32, ptr %arrayidx90, align 4, !tbaa !8
  %shl91 = shl i32 %49, 1
  %or92 = or i32 %or86, %shl91
  %50 = load i32, ptr %Y, align 4, !tbaa !8
  %shr93 = lshr i32 %50, 25
  %and94 = and i32 %shr93, 15
  %idxprom95 = zext i32 %and94 to i64
  %arrayidx96 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom95
  %51 = load i32, ptr %arrayidx96, align 4, !tbaa !8
  %or97 = or i32 %or92, %51
  %52 = load i32, ptr %Y, align 4, !tbaa !8
  %shr98 = lshr i32 %52, 4
  %and99 = and i32 %shr98, 15
  %idxprom100 = zext i32 %and99 to i64
  %arrayidx101 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom100
  %53 = load i32, ptr %arrayidx101, align 4, !tbaa !8
  %shl102 = shl i32 %53, 7
  %or103 = or i32 %or97, %shl102
  %54 = load i32, ptr %Y, align 4, !tbaa !8
  %shr104 = lshr i32 %54, 12
  %and105 = and i32 %shr104, 15
  %idxprom106 = zext i32 %and105 to i64
  %arrayidx107 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom106
  %55 = load i32, ptr %arrayidx107, align 4, !tbaa !8
  %shl108 = shl i32 %55, 6
  %or109 = or i32 %or103, %shl108
  %56 = load i32, ptr %Y, align 4, !tbaa !8
  %shr110 = lshr i32 %56, 20
  %and111 = and i32 %shr110, 15
  %idxprom112 = zext i32 %and111 to i64
  %arrayidx113 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom112
  %57 = load i32, ptr %arrayidx113, align 4, !tbaa !8
  %shl114 = shl i32 %57, 5
  %or115 = or i32 %or109, %shl114
  %58 = load i32, ptr %Y, align 4, !tbaa !8
  %shr116 = lshr i32 %58, 28
  %and117 = and i32 %shr116, 15
  %idxprom118 = zext i32 %and117 to i64
  %arrayidx119 = getelementptr inbounds [16 x i32], ptr @RHs, i64 0, i64 %idxprom118
  %59 = load i32, ptr %arrayidx119, align 4, !tbaa !8
  %shl120 = shl i32 %59, 4
  %or121 = or i32 %or115, %shl120
  store i32 %or121, ptr %Y, align 4, !tbaa !8
  %60 = load i32, ptr %X, align 4, !tbaa !8
  %and122 = and i32 %60, 268435455
  store i32 %and122, ptr %X, align 4, !tbaa !8
  %61 = load i32, ptr %Y, align 4, !tbaa !8
  %and123 = and i32 %61, 268435455
  store i32 %and123, ptr %Y, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %62 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %62, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, ptr %i, align 4, !tbaa !8
  %cmp125 = icmp slt i32 %63, 2
  br i1 %cmp125, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %64 = load i32, ptr %i, align 4, !tbaa !8
  %cmp127 = icmp eq i32 %64, 8
  br i1 %cmp127, label %if.then, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %lor.lhs.false
  %65 = load i32, ptr %i, align 4, !tbaa !8
  %cmp130 = icmp eq i32 %65, 15
  br i1 %cmp130, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false129, %lor.lhs.false, %for.body
  %66 = load i32, ptr %X, align 4, !tbaa !8
  %shl132 = shl i32 %66, 1
  %67 = load i32, ptr %X, align 4, !tbaa !8
  %shr133 = lshr i32 %67, 27
  %or134 = or i32 %shl132, %shr133
  %and135 = and i32 %or134, 268435455
  store i32 %and135, ptr %X, align 4, !tbaa !8
  %68 = load i32, ptr %Y, align 4, !tbaa !8
  %shl136 = shl i32 %68, 1
  %69 = load i32, ptr %Y, align 4, !tbaa !8
  %shr137 = lshr i32 %69, 27
  %or138 = or i32 %shl136, %shr137
  %and139 = and i32 %or138, 268435455
  store i32 %and139, ptr %Y, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false129
  %70 = load i32, ptr %X, align 4, !tbaa !8
  %shl140 = shl i32 %70, 2
  %71 = load i32, ptr %X, align 4, !tbaa !8
  %shr141 = lshr i32 %71, 26
  %or142 = or i32 %shl140, %shr141
  %and143 = and i32 %or142, 268435455
  store i32 %and143, ptr %X, align 4, !tbaa !8
  %72 = load i32, ptr %Y, align 4, !tbaa !8
  %shl144 = shl i32 %72, 2
  %73 = load i32, ptr %Y, align 4, !tbaa !8
  %shr145 = lshr i32 %73, 26
  %or146 = or i32 %shl144, %shr145
  %and147 = and i32 %or146, 268435455
  store i32 %and147, ptr %Y, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %74 = load i32, ptr %X, align 4, !tbaa !8
  %shl148 = shl i32 %74, 4
  %and149 = and i32 %shl148, 603979776
  %75 = load i32, ptr %X, align 4, !tbaa !8
  %shl150 = shl i32 %75, 28
  %and151 = and i32 %shl150, 268435456
  %or152 = or i32 %and149, %and151
  %76 = load i32, ptr %X, align 4, !tbaa !8
  %shl153 = shl i32 %76, 14
  %and154 = and i32 %shl153, 134217728
  %or155 = or i32 %or152, %and154
  %77 = load i32, ptr %X, align 4, !tbaa !8
  %shl156 = shl i32 %77, 18
  %and157 = and i32 %shl156, 34078720
  %or158 = or i32 %or155, %and157
  %78 = load i32, ptr %X, align 4, !tbaa !8
  %shl159 = shl i32 %78, 6
  %and160 = and i32 %shl159, 16777216
  %or161 = or i32 %or158, %and160
  %79 = load i32, ptr %X, align 4, !tbaa !8
  %shl162 = shl i32 %79, 9
  %and163 = and i32 %shl162, 2097152
  %or164 = or i32 %or161, %and163
  %80 = load i32, ptr %X, align 4, !tbaa !8
  %shr165 = lshr i32 %80, 1
  %and166 = and i32 %shr165, 1048576
  %or167 = or i32 %or164, %and166
  %81 = load i32, ptr %X, align 4, !tbaa !8
  %shl168 = shl i32 %81, 10
  %and169 = and i32 %shl168, 262144
  %or170 = or i32 %or167, %and169
  %82 = load i32, ptr %X, align 4, !tbaa !8
  %shl171 = shl i32 %82, 2
  %and172 = and i32 %shl171, 131072
  %or173 = or i32 %or170, %and172
  %83 = load i32, ptr %X, align 4, !tbaa !8
  %shr174 = lshr i32 %83, 10
  %and175 = and i32 %shr174, 65536
  %or176 = or i32 %or173, %and175
  %84 = load i32, ptr %Y, align 4, !tbaa !8
  %shr177 = lshr i32 %84, 13
  %and178 = and i32 %shr177, 8192
  %or179 = or i32 %or176, %and178
  %85 = load i32, ptr %Y, align 4, !tbaa !8
  %shr180 = lshr i32 %85, 4
  %and181 = and i32 %shr180, 4096
  %or182 = or i32 %or179, %and181
  %86 = load i32, ptr %Y, align 4, !tbaa !8
  %shl183 = shl i32 %86, 6
  %and184 = and i32 %shl183, 2048
  %or185 = or i32 %or182, %and184
  %87 = load i32, ptr %Y, align 4, !tbaa !8
  %shr186 = lshr i32 %87, 1
  %and187 = and i32 %shr186, 1024
  %or188 = or i32 %or185, %and187
  %88 = load i32, ptr %Y, align 4, !tbaa !8
  %shr189 = lshr i32 %88, 14
  %and190 = and i32 %shr189, 512
  %or191 = or i32 %or188, %and190
  %89 = load i32, ptr %Y, align 4, !tbaa !8
  %and192 = and i32 %89, 256
  %or193 = or i32 %or191, %and192
  %90 = load i32, ptr %Y, align 4, !tbaa !8
  %shr194 = lshr i32 %90, 5
  %and195 = and i32 %shr194, 32
  %or196 = or i32 %or193, %and195
  %91 = load i32, ptr %Y, align 4, !tbaa !8
  %shr197 = lshr i32 %91, 10
  %and198 = and i32 %shr197, 16
  %or199 = or i32 %or196, %and198
  %92 = load i32, ptr %Y, align 4, !tbaa !8
  %shr200 = lshr i32 %92, 3
  %and201 = and i32 %shr200, 8
  %or202 = or i32 %or199, %and201
  %93 = load i32, ptr %Y, align 4, !tbaa !8
  %shr203 = lshr i32 %93, 18
  %and204 = and i32 %shr203, 4
  %or205 = or i32 %or202, %and204
  %94 = load i32, ptr %Y, align 4, !tbaa !8
  %shr206 = lshr i32 %94, 26
  %and207 = and i32 %shr206, 2
  %or208 = or i32 %or205, %and207
  %95 = load i32, ptr %Y, align 4, !tbaa !8
  %shr209 = lshr i32 %95, 24
  %and210 = and i32 %shr209, 1
  %or211 = or i32 %or208, %and210
  %96 = load ptr, ptr %SK.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %96, i32 1
  store ptr %incdec.ptr, ptr %SK.addr, align 8, !tbaa !4
  store i32 %or211, ptr %96, align 4, !tbaa !8
  %97 = load i32, ptr %X, align 4, !tbaa !8
  %shl212 = shl i32 %97, 15
  %and213 = and i32 %shl212, 536870912
  %98 = load i32, ptr %X, align 4, !tbaa !8
  %shl214 = shl i32 %98, 17
  %and215 = and i32 %shl214, 268435456
  %or216 = or i32 %and213, %and215
  %99 = load i32, ptr %X, align 4, !tbaa !8
  %shl217 = shl i32 %99, 10
  %and218 = and i32 %shl217, 134217728
  %or219 = or i32 %or216, %and218
  %100 = load i32, ptr %X, align 4, !tbaa !8
  %shl220 = shl i32 %100, 22
  %and221 = and i32 %shl220, 67108864
  %or222 = or i32 %or219, %and221
  %101 = load i32, ptr %X, align 4, !tbaa !8
  %shr223 = lshr i32 %101, 2
  %and224 = and i32 %shr223, 33554432
  %or225 = or i32 %or222, %and224
  %102 = load i32, ptr %X, align 4, !tbaa !8
  %shl226 = shl i32 %102, 1
  %and227 = and i32 %shl226, 16777216
  %or228 = or i32 %or225, %and227
  %103 = load i32, ptr %X, align 4, !tbaa !8
  %shl229 = shl i32 %103, 16
  %and230 = and i32 %shl229, 2097152
  %or231 = or i32 %or228, %and230
  %104 = load i32, ptr %X, align 4, !tbaa !8
  %shl232 = shl i32 %104, 11
  %and233 = and i32 %shl232, 1048576
  %or234 = or i32 %or231, %and233
  %105 = load i32, ptr %X, align 4, !tbaa !8
  %shl235 = shl i32 %105, 3
  %and236 = and i32 %shl235, 524288
  %or237 = or i32 %or234, %and236
  %106 = load i32, ptr %X, align 4, !tbaa !8
  %shr238 = lshr i32 %106, 6
  %and239 = and i32 %shr238, 262144
  %or240 = or i32 %or237, %and239
  %107 = load i32, ptr %X, align 4, !tbaa !8
  %shl241 = shl i32 %107, 15
  %and242 = and i32 %shl241, 131072
  %or243 = or i32 %or240, %and242
  %108 = load i32, ptr %X, align 4, !tbaa !8
  %shr244 = lshr i32 %108, 4
  %and245 = and i32 %shr244, 65536
  %or246 = or i32 %or243, %and245
  %109 = load i32, ptr %Y, align 4, !tbaa !8
  %shr247 = lshr i32 %109, 2
  %and248 = and i32 %shr247, 8192
  %or249 = or i32 %or246, %and248
  %110 = load i32, ptr %Y, align 4, !tbaa !8
  %shl250 = shl i32 %110, 8
  %and251 = and i32 %shl250, 4096
  %or252 = or i32 %or249, %and251
  %111 = load i32, ptr %Y, align 4, !tbaa !8
  %shr253 = lshr i32 %111, 14
  %and254 = and i32 %shr253, 2056
  %or255 = or i32 %or252, %and254
  %112 = load i32, ptr %Y, align 4, !tbaa !8
  %shr256 = lshr i32 %112, 9
  %and257 = and i32 %shr256, 1024
  %or258 = or i32 %or255, %and257
  %113 = load i32, ptr %Y, align 4, !tbaa !8
  %and259 = and i32 %113, 512
  %or260 = or i32 %or258, %and259
  %114 = load i32, ptr %Y, align 4, !tbaa !8
  %shl261 = shl i32 %114, 7
  %and262 = and i32 %shl261, 256
  %or263 = or i32 %or260, %and262
  %115 = load i32, ptr %Y, align 4, !tbaa !8
  %shr264 = lshr i32 %115, 7
  %and265 = and i32 %shr264, 32
  %or266 = or i32 %or263, %and265
  %116 = load i32, ptr %Y, align 4, !tbaa !8
  %shr267 = lshr i32 %116, 3
  %and268 = and i32 %shr267, 17
  %or269 = or i32 %or266, %and268
  %117 = load i32, ptr %Y, align 4, !tbaa !8
  %shl270 = shl i32 %117, 2
  %and271 = and i32 %shl270, 4
  %or272 = or i32 %or269, %and271
  %118 = load i32, ptr %Y, align 4, !tbaa !8
  %shr273 = lshr i32 %118, 21
  %and274 = and i32 %shr273, 2
  %or275 = or i32 %or272, %and274
  %119 = load ptr, ptr %SK.addr, align 8, !tbaa !4
  %incdec.ptr276 = getelementptr inbounds i32, ptr %119, i32 1
  store ptr %incdec.ptr276, ptr %SK.addr, align 8, !tbaa !4
  store i32 %or275, ptr %119, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %120 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %120, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %T) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %Y) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %X) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des_setkey_enc(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk = getelementptr inbounds %struct.mbedtls_des_context, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i32], ptr %sk, i64 0, i64 0
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @mbedtls_des_setkey(ptr noundef %arraydecay, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des_setkey_dec(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %t13 = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk = getelementptr inbounds %struct.mbedtls_des_context, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i32], ptr %sk, i64 0, i64 0
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @mbedtls_des_setkey(ptr noundef %arraydecay, ptr noundef %1)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #6
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk1 = getelementptr inbounds %struct.mbedtls_des_context, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr %sk1, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !8
  store i32 %5, ptr %t, align 4, !tbaa !8
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk2 = getelementptr inbounds %struct.mbedtls_des_context, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 30, %7
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [32 x i32], ptr %sk2, i64 0, i64 %idxprom3
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !8
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk5 = getelementptr inbounds %struct.mbedtls_des_context, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [32 x i32], ptr %sk5, i64 0, i64 %idxprom6
  store i32 %8, ptr %arrayidx7, align 4, !tbaa !8
  %11 = load i32, ptr %t, align 4, !tbaa !8
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk8 = getelementptr inbounds %struct.mbedtls_des_context, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %sub9 = sub nsw i32 30, %13
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds [32 x i32], ptr %sk8, i64 0, i64 %idxprom10
  store i32 %11, ptr %arrayidx11, align 4, !tbaa !8
  store i32 0, ptr %t, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #6
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body12

do.body12:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %t13) #6
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk14 = getelementptr inbounds %struct.mbedtls_des_context, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %15, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [32 x i32], ptr %sk14, i64 0, i64 %idxprom15
  %16 = load i32, ptr %arrayidx16, align 4, !tbaa !8
  store i32 %16, ptr %t13, align 4, !tbaa !8
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk17 = getelementptr inbounds %struct.mbedtls_des_context, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %sub18 = sub nsw i32 31, %18
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [32 x i32], ptr %sk17, i64 0, i64 %idxprom19
  %19 = load i32, ptr %arrayidx20, align 4, !tbaa !8
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk21 = getelementptr inbounds %struct.mbedtls_des_context, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %add22 = add nsw i32 %21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [32 x i32], ptr %sk21, i64 0, i64 %idxprom23
  store i32 %19, ptr %arrayidx24, align 4, !tbaa !8
  %22 = load i32, ptr %t13, align 4, !tbaa !8
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk25 = getelementptr inbounds %struct.mbedtls_des_context, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %sub26 = sub nsw i32 31, %24
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [32 x i32], ptr %sk25, i64 0, i64 %idxprom27
  store i32 %22, ptr %arrayidx28, align 4, !tbaa !8
  store i32 0, ptr %t13, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %t13) #6
  br label %do.cond29

do.cond29:                                        ; preds = %do.body12
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  br label %for.inc

for.inc:                                          ; preds = %do.end30
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %add31 = add nsw i32 %25, 2
  store i32 %add31, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des3_set2key_enc(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %sk = alloca [96 x i32], align 16
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 384, ptr %sk) #6
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i32], ptr %sk1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @des3_set2key(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %1)
  %arraydecay3 = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay3, i64 noundef 384)
  call void @llvm.lifetime.end.p0(i64 384, ptr %sk) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @des3_set2key(ptr noundef %esk, ptr noundef %dsk, ptr noundef %key) #0 {
entry:
  %esk.addr = alloca ptr, align 8
  %dsk.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %esk, ptr %esk.addr, align 8, !tbaa !4
  store ptr %dsk, ptr %dsk.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @mbedtls_des_setkey(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 32
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %add.ptr1 = getelementptr inbounds i8, ptr %3, i64 8
  call void @mbedtls_des_setkey(ptr noundef %add.ptr, ptr noundef %add.ptr1)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %4, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 30, %6
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %8 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  store i32 %7, ptr %arrayidx3, align 4, !tbaa !8
  %10 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %sub4 = sub nsw i32 31, %11
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4, !tbaa !8
  %13 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %14, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %13, i64 %idxprom7
  store i32 %12, ptr %arrayidx8, align 4, !tbaa !8
  %15 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %sub9 = sub nsw i32 62, %16
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %15, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %18 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %add12 = add nsw i32 %19, 32
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %18, i64 %idxprom13
  store i32 %17, ptr %arrayidx14, align 4, !tbaa !8
  %20 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %sub15 = sub nsw i32 63, %21
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %20, i64 %idxprom16
  %22 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %23 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %add18 = add nsw i32 %24, 33
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %23, i64 %idxprom19
  store i32 %22, ptr %arrayidx20, align 4, !tbaa !8
  %25 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %25, i64 %idxprom21
  %27 = load i32, ptr %arrayidx22, align 4, !tbaa !8
  %28 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %add23 = add nsw i32 %29, 64
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %28, i64 %idxprom24
  store i32 %27, ptr %arrayidx25, align 4, !tbaa !8
  %30 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %31 = load i32, ptr %i, align 4, !tbaa !8
  %add26 = add nsw i32 %31, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %30, i64 %idxprom27
  %32 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %33 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %34 = load i32, ptr %i, align 4, !tbaa !8
  %add29 = add nsw i32 %34, 65
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %33, i64 %idxprom30
  store i32 %32, ptr %arrayidx31, align 4, !tbaa !8
  %35 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %35, i64 %idxprom32
  %37 = load i32, ptr %arrayidx33, align 4, !tbaa !8
  %38 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %add34 = add nsw i32 %39, 64
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %38, i64 %idxprom35
  store i32 %37, ptr %arrayidx36, align 4, !tbaa !8
  %40 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %41 = load i32, ptr %i, align 4, !tbaa !8
  %add37 = add nsw i32 %41, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %40, i64 %idxprom38
  %42 = load i32, ptr %arrayidx39, align 4, !tbaa !8
  %43 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %44 = load i32, ptr %i, align 4, !tbaa !8
  %add40 = add nsw i32 %44, 65
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %43, i64 %idxprom41
  store i32 %42, ptr %arrayidx42, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %add43 = add nsw i32 %45, 2
  store i32 %add43, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des3_set2key_dec(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %sk = alloca [96 x i32], align 16
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 384, ptr %sk) #6
  %arraydecay = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, ptr %0, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [96 x i32], ptr %sk1, i64 0, i64 0
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @des3_set2key(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %1)
  %arraydecay3 = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay3, i64 noundef 384)
  call void @llvm.lifetime.end.p0(i64 384, ptr %sk) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des3_set3key_enc(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %sk = alloca [96 x i32], align 16
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 384, ptr %sk) #6
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i32], ptr %sk1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @des3_set3key(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %1)
  %arraydecay3 = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay3, i64 noundef 384)
  call void @llvm.lifetime.end.p0(i64 384, ptr %sk) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @des3_set3key(ptr noundef %esk, ptr noundef %dsk, ptr noundef %key) #0 {
entry:
  %esk.addr = alloca ptr, align 8
  %dsk.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %esk, ptr %esk.addr, align 8, !tbaa !4
  store ptr %dsk, ptr %dsk.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @mbedtls_des_setkey(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 32
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %add.ptr1 = getelementptr inbounds i8, ptr %3, i64 8
  call void @mbedtls_des_setkey(ptr noundef %add.ptr, ptr noundef %add.ptr1)
  %4 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %add.ptr2 = getelementptr inbounds i32, ptr %4, i64 64
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %add.ptr3 = getelementptr inbounds i8, ptr %5, i64 16
  call void @mbedtls_des_setkey(ptr noundef %add.ptr2, ptr noundef %add.ptr3)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %6, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %sub = sub nsw i32 94, %8
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %10 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  store i32 %9, ptr %arrayidx5, align 4, !tbaa !8
  %12 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %sub6 = sub nsw i32 95, %13
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %12, i64 %idxprom7
  %14 = load i32, ptr %arrayidx8, align 4, !tbaa !8
  %15 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %add = add nsw i32 %16, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 %idxprom9
  store i32 %14, ptr %arrayidx10, align 4, !tbaa !8
  %17 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %sub11 = sub nsw i32 62, %18
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %17, i64 %idxprom12
  %19 = load i32, ptr %arrayidx13, align 4, !tbaa !8
  %20 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %add14 = add nsw i32 %21, 32
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %20, i64 %idxprom15
  store i32 %19, ptr %arrayidx16, align 4, !tbaa !8
  %22 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %sub17 = sub nsw i32 63, %23
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %22, i64 %idxprom18
  %24 = load i32, ptr %arrayidx19, align 4, !tbaa !8
  %25 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %add20 = add nsw i32 %26, 33
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %25, i64 %idxprom21
  store i32 %24, ptr %arrayidx22, align 4, !tbaa !8
  %27 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %sub23 = sub nsw i32 30, %28
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %27, i64 %idxprom24
  %29 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %30 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %31 = load i32, ptr %i, align 4, !tbaa !8
  %add26 = add nsw i32 %31, 64
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %30, i64 %idxprom27
  store i32 %29, ptr %arrayidx28, align 4, !tbaa !8
  %32 = load ptr, ptr %esk.addr, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %sub29 = sub nsw i32 31, %33
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %32, i64 %idxprom30
  %34 = load i32, ptr %arrayidx31, align 4, !tbaa !8
  %35 = load ptr, ptr %dsk.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %add32 = add nsw i32 %36, 65
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %35, i64 %idxprom33
  store i32 %34, ptr %arrayidx34, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %add35 = add nsw i32 %37, 2
  store i32 %add35, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des3_set3key_dec(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %sk = alloca [96 x i32], align 16
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 384, ptr %sk) #6
  %arraydecay = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk1 = getelementptr inbounds %struct.mbedtls_des3_context, ptr %0, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [96 x i32], ptr %sk1, i64 0, i64 0
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @des3_set3key(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %1)
  %arraydecay3 = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  call void @mbedtls_platform_zeroize(ptr noundef %arraydecay3, i64 noundef 384)
  call void @llvm.lifetime.end.p0(i64 384, ptr %sk) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des_crypt_ecb(ptr noundef %ctx, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %T = alloca i32, align 4
  %SK = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %X) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %Y) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %T) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %SK) #6
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk = getelementptr inbounds %struct.mbedtls_des_context, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i32], ptr %sk, i64 0, i64 0
  store ptr %arraydecay, ptr %SK, align 8, !tbaa !4
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 24
  %3 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1, !tbaa !10
  %conv2 = zext i8 %4 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %conv5 = zext i8 %6 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx8, align 1, !tbaa !10
  %conv9 = zext i8 %8 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, ptr %X, align 4, !tbaa !8
  %9 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i8, ptr %arrayidx11, align 1, !tbaa !10
  %conv12 = zext i8 %10 to i32
  %shl13 = shl i32 %conv12, 24
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 5
  %12 = load i8, ptr %arrayidx14, align 1, !tbaa !10
  %conv15 = zext i8 %12 to i32
  %shl16 = shl i32 %conv15, 16
  %or17 = or i32 %shl13, %shl16
  %13 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 6
  %14 = load i8, ptr %arrayidx18, align 1, !tbaa !10
  %conv19 = zext i8 %14 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %15 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 7
  %16 = load i8, ptr %arrayidx22, align 1, !tbaa !10
  %conv23 = zext i8 %16 to i32
  %or24 = or i32 %or21, %conv23
  store i32 %or24, ptr %Y, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load i32, ptr %X, align 4, !tbaa !8
  %shr = lshr i32 %17, 4
  %18 = load i32, ptr %Y, align 4, !tbaa !8
  %xor = xor i32 %shr, %18
  %and = and i32 %xor, 252645135
  store i32 %and, ptr %T, align 4, !tbaa !8
  %19 = load i32, ptr %T, align 4, !tbaa !8
  %20 = load i32, ptr %Y, align 4, !tbaa !8
  %xor25 = xor i32 %20, %19
  store i32 %xor25, ptr %Y, align 4, !tbaa !8
  %21 = load i32, ptr %T, align 4, !tbaa !8
  %shl26 = shl i32 %21, 4
  %22 = load i32, ptr %X, align 4, !tbaa !8
  %xor27 = xor i32 %22, %shl26
  store i32 %xor27, ptr %X, align 4, !tbaa !8
  %23 = load i32, ptr %X, align 4, !tbaa !8
  %shr28 = lshr i32 %23, 16
  %24 = load i32, ptr %Y, align 4, !tbaa !8
  %xor29 = xor i32 %shr28, %24
  %and30 = and i32 %xor29, 65535
  store i32 %and30, ptr %T, align 4, !tbaa !8
  %25 = load i32, ptr %T, align 4, !tbaa !8
  %26 = load i32, ptr %Y, align 4, !tbaa !8
  %xor31 = xor i32 %26, %25
  store i32 %xor31, ptr %Y, align 4, !tbaa !8
  %27 = load i32, ptr %T, align 4, !tbaa !8
  %shl32 = shl i32 %27, 16
  %28 = load i32, ptr %X, align 4, !tbaa !8
  %xor33 = xor i32 %28, %shl32
  store i32 %xor33, ptr %X, align 4, !tbaa !8
  %29 = load i32, ptr %Y, align 4, !tbaa !8
  %shr34 = lshr i32 %29, 2
  %30 = load i32, ptr %X, align 4, !tbaa !8
  %xor35 = xor i32 %shr34, %30
  %and36 = and i32 %xor35, 858993459
  store i32 %and36, ptr %T, align 4, !tbaa !8
  %31 = load i32, ptr %T, align 4, !tbaa !8
  %32 = load i32, ptr %X, align 4, !tbaa !8
  %xor37 = xor i32 %32, %31
  store i32 %xor37, ptr %X, align 4, !tbaa !8
  %33 = load i32, ptr %T, align 4, !tbaa !8
  %shl38 = shl i32 %33, 2
  %34 = load i32, ptr %Y, align 4, !tbaa !8
  %xor39 = xor i32 %34, %shl38
  store i32 %xor39, ptr %Y, align 4, !tbaa !8
  %35 = load i32, ptr %Y, align 4, !tbaa !8
  %shr40 = lshr i32 %35, 8
  %36 = load i32, ptr %X, align 4, !tbaa !8
  %xor41 = xor i32 %shr40, %36
  %and42 = and i32 %xor41, 16711935
  store i32 %and42, ptr %T, align 4, !tbaa !8
  %37 = load i32, ptr %T, align 4, !tbaa !8
  %38 = load i32, ptr %X, align 4, !tbaa !8
  %xor43 = xor i32 %38, %37
  store i32 %xor43, ptr %X, align 4, !tbaa !8
  %39 = load i32, ptr %T, align 4, !tbaa !8
  %shl44 = shl i32 %39, 8
  %40 = load i32, ptr %Y, align 4, !tbaa !8
  %xor45 = xor i32 %40, %shl44
  store i32 %xor45, ptr %Y, align 4, !tbaa !8
  %41 = load i32, ptr %Y, align 4, !tbaa !8
  %shl46 = shl i32 %41, 1
  %42 = load i32, ptr %Y, align 4, !tbaa !8
  %shr47 = lshr i32 %42, 31
  %or48 = or i32 %shl46, %shr47
  %and49 = and i32 %or48, -1
  store i32 %and49, ptr %Y, align 4, !tbaa !8
  %43 = load i32, ptr %X, align 4, !tbaa !8
  %44 = load i32, ptr %Y, align 4, !tbaa !8
  %xor50 = xor i32 %43, %44
  %and51 = and i32 %xor50, -1431655766
  store i32 %and51, ptr %T, align 4, !tbaa !8
  %45 = load i32, ptr %T, align 4, !tbaa !8
  %46 = load i32, ptr %Y, align 4, !tbaa !8
  %xor52 = xor i32 %46, %45
  store i32 %xor52, ptr %Y, align 4, !tbaa !8
  %47 = load i32, ptr %T, align 4, !tbaa !8
  %48 = load i32, ptr %X, align 4, !tbaa !8
  %xor53 = xor i32 %48, %47
  store i32 %xor53, ptr %X, align 4, !tbaa !8
  %49 = load i32, ptr %X, align 4, !tbaa !8
  %shl54 = shl i32 %49, 1
  %50 = load i32, ptr %X, align 4, !tbaa !8
  %shr55 = lshr i32 %50, 31
  %or56 = or i32 %shl54, %shr55
  %and57 = and i32 %or56, -1
  store i32 %and57, ptr %X, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %51, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body59

do.body59:                                        ; preds = %for.body
  %52 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %SK, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %54 = load i32, ptr %Y, align 4, !tbaa !8
  %xor60 = xor i32 %53, %54
  store i32 %xor60, ptr %T, align 4, !tbaa !8
  %55 = load i32, ptr %T, align 4, !tbaa !8
  %and61 = and i32 %55, 63
  %idxprom = zext i32 %and61 to i64
  %arrayidx62 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom
  %56 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  %57 = load i32, ptr %T, align 4, !tbaa !8
  %shr63 = lshr i32 %57, 8
  %and64 = and i32 %shr63, 63
  %idxprom65 = zext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom65
  %58 = load i32, ptr %arrayidx66, align 4, !tbaa !8
  %xor67 = xor i32 %56, %58
  %59 = load i32, ptr %T, align 4, !tbaa !8
  %shr68 = lshr i32 %59, 16
  %and69 = and i32 %shr68, 63
  %idxprom70 = zext i32 %and69 to i64
  %arrayidx71 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom70
  %60 = load i32, ptr %arrayidx71, align 4, !tbaa !8
  %xor72 = xor i32 %xor67, %60
  %61 = load i32, ptr %T, align 4, !tbaa !8
  %shr73 = lshr i32 %61, 24
  %and74 = and i32 %shr73, 63
  %idxprom75 = zext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom75
  %62 = load i32, ptr %arrayidx76, align 4, !tbaa !8
  %xor77 = xor i32 %xor72, %62
  %63 = load i32, ptr %X, align 4, !tbaa !8
  %xor78 = xor i32 %63, %xor77
  store i32 %xor78, ptr %X, align 4, !tbaa !8
  %64 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr79 = getelementptr inbounds i32, ptr %64, i32 1
  store ptr %incdec.ptr79, ptr %SK, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %66 = load i32, ptr %Y, align 4, !tbaa !8
  %shl80 = shl i32 %66, 28
  %67 = load i32, ptr %Y, align 4, !tbaa !8
  %shr81 = lshr i32 %67, 4
  %or82 = or i32 %shl80, %shr81
  %xor83 = xor i32 %65, %or82
  store i32 %xor83, ptr %T, align 4, !tbaa !8
  %68 = load i32, ptr %T, align 4, !tbaa !8
  %and84 = and i32 %68, 63
  %idxprom85 = zext i32 %and84 to i64
  %arrayidx86 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom85
  %69 = load i32, ptr %arrayidx86, align 4, !tbaa !8
  %70 = load i32, ptr %T, align 4, !tbaa !8
  %shr87 = lshr i32 %70, 8
  %and88 = and i32 %shr87, 63
  %idxprom89 = zext i32 %and88 to i64
  %arrayidx90 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom89
  %71 = load i32, ptr %arrayidx90, align 4, !tbaa !8
  %xor91 = xor i32 %69, %71
  %72 = load i32, ptr %T, align 4, !tbaa !8
  %shr92 = lshr i32 %72, 16
  %and93 = and i32 %shr92, 63
  %idxprom94 = zext i32 %and93 to i64
  %arrayidx95 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom94
  %73 = load i32, ptr %arrayidx95, align 4, !tbaa !8
  %xor96 = xor i32 %xor91, %73
  %74 = load i32, ptr %T, align 4, !tbaa !8
  %shr97 = lshr i32 %74, 24
  %and98 = and i32 %shr97, 63
  %idxprom99 = zext i32 %and98 to i64
  %arrayidx100 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom99
  %75 = load i32, ptr %arrayidx100, align 4, !tbaa !8
  %xor101 = xor i32 %xor96, %75
  %76 = load i32, ptr %X, align 4, !tbaa !8
  %xor102 = xor i32 %76, %xor101
  store i32 %xor102, ptr %X, align 4, !tbaa !8
  br label %do.cond103

do.cond103:                                       ; preds = %do.body59
  br label %do.end104

do.end104:                                        ; preds = %do.cond103
  br label %do.body105

do.body105:                                       ; preds = %do.end104
  %77 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr106 = getelementptr inbounds i32, ptr %77, i32 1
  store ptr %incdec.ptr106, ptr %SK, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %79 = load i32, ptr %X, align 4, !tbaa !8
  %xor107 = xor i32 %78, %79
  store i32 %xor107, ptr %T, align 4, !tbaa !8
  %80 = load i32, ptr %T, align 4, !tbaa !8
  %and108 = and i32 %80, 63
  %idxprom109 = zext i32 %and108 to i64
  %arrayidx110 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom109
  %81 = load i32, ptr %arrayidx110, align 4, !tbaa !8
  %82 = load i32, ptr %T, align 4, !tbaa !8
  %shr111 = lshr i32 %82, 8
  %and112 = and i32 %shr111, 63
  %idxprom113 = zext i32 %and112 to i64
  %arrayidx114 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom113
  %83 = load i32, ptr %arrayidx114, align 4, !tbaa !8
  %xor115 = xor i32 %81, %83
  %84 = load i32, ptr %T, align 4, !tbaa !8
  %shr116 = lshr i32 %84, 16
  %and117 = and i32 %shr116, 63
  %idxprom118 = zext i32 %and117 to i64
  %arrayidx119 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom118
  %85 = load i32, ptr %arrayidx119, align 4, !tbaa !8
  %xor120 = xor i32 %xor115, %85
  %86 = load i32, ptr %T, align 4, !tbaa !8
  %shr121 = lshr i32 %86, 24
  %and122 = and i32 %shr121, 63
  %idxprom123 = zext i32 %and122 to i64
  %arrayidx124 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom123
  %87 = load i32, ptr %arrayidx124, align 4, !tbaa !8
  %xor125 = xor i32 %xor120, %87
  %88 = load i32, ptr %Y, align 4, !tbaa !8
  %xor126 = xor i32 %88, %xor125
  store i32 %xor126, ptr %Y, align 4, !tbaa !8
  %89 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr127 = getelementptr inbounds i32, ptr %89, i32 1
  store ptr %incdec.ptr127, ptr %SK, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %91 = load i32, ptr %X, align 4, !tbaa !8
  %shl128 = shl i32 %91, 28
  %92 = load i32, ptr %X, align 4, !tbaa !8
  %shr129 = lshr i32 %92, 4
  %or130 = or i32 %shl128, %shr129
  %xor131 = xor i32 %90, %or130
  store i32 %xor131, ptr %T, align 4, !tbaa !8
  %93 = load i32, ptr %T, align 4, !tbaa !8
  %and132 = and i32 %93, 63
  %idxprom133 = zext i32 %and132 to i64
  %arrayidx134 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom133
  %94 = load i32, ptr %arrayidx134, align 4, !tbaa !8
  %95 = load i32, ptr %T, align 4, !tbaa !8
  %shr135 = lshr i32 %95, 8
  %and136 = and i32 %shr135, 63
  %idxprom137 = zext i32 %and136 to i64
  %arrayidx138 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom137
  %96 = load i32, ptr %arrayidx138, align 4, !tbaa !8
  %xor139 = xor i32 %94, %96
  %97 = load i32, ptr %T, align 4, !tbaa !8
  %shr140 = lshr i32 %97, 16
  %and141 = and i32 %shr140, 63
  %idxprom142 = zext i32 %and141 to i64
  %arrayidx143 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom142
  %98 = load i32, ptr %arrayidx143, align 4, !tbaa !8
  %xor144 = xor i32 %xor139, %98
  %99 = load i32, ptr %T, align 4, !tbaa !8
  %shr145 = lshr i32 %99, 24
  %and146 = and i32 %shr145, 63
  %idxprom147 = zext i32 %and146 to i64
  %arrayidx148 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom147
  %100 = load i32, ptr %arrayidx148, align 4, !tbaa !8
  %xor149 = xor i32 %xor144, %100
  %101 = load i32, ptr %Y, align 4, !tbaa !8
  %xor150 = xor i32 %101, %xor149
  store i32 %xor150, ptr %Y, align 4, !tbaa !8
  br label %do.cond151

do.cond151:                                       ; preds = %do.body105
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  br label %for.inc

for.inc:                                          ; preds = %do.end152
  %102 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  br label %do.body153

do.body153:                                       ; preds = %for.end
  %103 = load i32, ptr %Y, align 4, !tbaa !8
  %shl154 = shl i32 %103, 31
  %104 = load i32, ptr %Y, align 4, !tbaa !8
  %shr155 = lshr i32 %104, 1
  %or156 = or i32 %shl154, %shr155
  %and157 = and i32 %or156, -1
  store i32 %and157, ptr %Y, align 4, !tbaa !8
  %105 = load i32, ptr %Y, align 4, !tbaa !8
  %106 = load i32, ptr %X, align 4, !tbaa !8
  %xor158 = xor i32 %105, %106
  %and159 = and i32 %xor158, -1431655766
  store i32 %and159, ptr %T, align 4, !tbaa !8
  %107 = load i32, ptr %T, align 4, !tbaa !8
  %108 = load i32, ptr %Y, align 4, !tbaa !8
  %xor160 = xor i32 %108, %107
  store i32 %xor160, ptr %Y, align 4, !tbaa !8
  %109 = load i32, ptr %T, align 4, !tbaa !8
  %110 = load i32, ptr %X, align 4, !tbaa !8
  %xor161 = xor i32 %110, %109
  store i32 %xor161, ptr %X, align 4, !tbaa !8
  %111 = load i32, ptr %X, align 4, !tbaa !8
  %shl162 = shl i32 %111, 31
  %112 = load i32, ptr %X, align 4, !tbaa !8
  %shr163 = lshr i32 %112, 1
  %or164 = or i32 %shl162, %shr163
  %and165 = and i32 %or164, -1
  store i32 %and165, ptr %X, align 4, !tbaa !8
  %113 = load i32, ptr %X, align 4, !tbaa !8
  %shr166 = lshr i32 %113, 8
  %114 = load i32, ptr %Y, align 4, !tbaa !8
  %xor167 = xor i32 %shr166, %114
  %and168 = and i32 %xor167, 16711935
  store i32 %and168, ptr %T, align 4, !tbaa !8
  %115 = load i32, ptr %T, align 4, !tbaa !8
  %116 = load i32, ptr %Y, align 4, !tbaa !8
  %xor169 = xor i32 %116, %115
  store i32 %xor169, ptr %Y, align 4, !tbaa !8
  %117 = load i32, ptr %T, align 4, !tbaa !8
  %shl170 = shl i32 %117, 8
  %118 = load i32, ptr %X, align 4, !tbaa !8
  %xor171 = xor i32 %118, %shl170
  store i32 %xor171, ptr %X, align 4, !tbaa !8
  %119 = load i32, ptr %X, align 4, !tbaa !8
  %shr172 = lshr i32 %119, 2
  %120 = load i32, ptr %Y, align 4, !tbaa !8
  %xor173 = xor i32 %shr172, %120
  %and174 = and i32 %xor173, 858993459
  store i32 %and174, ptr %T, align 4, !tbaa !8
  %121 = load i32, ptr %T, align 4, !tbaa !8
  %122 = load i32, ptr %Y, align 4, !tbaa !8
  %xor175 = xor i32 %122, %121
  store i32 %xor175, ptr %Y, align 4, !tbaa !8
  %123 = load i32, ptr %T, align 4, !tbaa !8
  %shl176 = shl i32 %123, 2
  %124 = load i32, ptr %X, align 4, !tbaa !8
  %xor177 = xor i32 %124, %shl176
  store i32 %xor177, ptr %X, align 4, !tbaa !8
  %125 = load i32, ptr %Y, align 4, !tbaa !8
  %shr178 = lshr i32 %125, 16
  %126 = load i32, ptr %X, align 4, !tbaa !8
  %xor179 = xor i32 %shr178, %126
  %and180 = and i32 %xor179, 65535
  store i32 %and180, ptr %T, align 4, !tbaa !8
  %127 = load i32, ptr %T, align 4, !tbaa !8
  %128 = load i32, ptr %X, align 4, !tbaa !8
  %xor181 = xor i32 %128, %127
  store i32 %xor181, ptr %X, align 4, !tbaa !8
  %129 = load i32, ptr %T, align 4, !tbaa !8
  %shl182 = shl i32 %129, 16
  %130 = load i32, ptr %Y, align 4, !tbaa !8
  %xor183 = xor i32 %130, %shl182
  store i32 %xor183, ptr %Y, align 4, !tbaa !8
  %131 = load i32, ptr %Y, align 4, !tbaa !8
  %shr184 = lshr i32 %131, 4
  %132 = load i32, ptr %X, align 4, !tbaa !8
  %xor185 = xor i32 %shr184, %132
  %and186 = and i32 %xor185, 252645135
  store i32 %and186, ptr %T, align 4, !tbaa !8
  %133 = load i32, ptr %T, align 4, !tbaa !8
  %134 = load i32, ptr %X, align 4, !tbaa !8
  %xor187 = xor i32 %134, %133
  store i32 %xor187, ptr %X, align 4, !tbaa !8
  %135 = load i32, ptr %T, align 4, !tbaa !8
  %shl188 = shl i32 %135, 4
  %136 = load i32, ptr %Y, align 4, !tbaa !8
  %xor189 = xor i32 %136, %shl188
  store i32 %xor189, ptr %Y, align 4, !tbaa !8
  br label %do.cond190

do.cond190:                                       ; preds = %do.body153
  br label %do.end191

do.end191:                                        ; preds = %do.cond190
  %137 = load i32, ptr %Y, align 4, !tbaa !8
  %shr192 = lshr i32 %137, 24
  %and193 = and i32 %shr192, 255
  %conv194 = trunc i32 %and193 to i8
  %138 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx195 = getelementptr inbounds i8, ptr %138, i64 0
  store i8 %conv194, ptr %arrayidx195, align 1, !tbaa !10
  %139 = load i32, ptr %Y, align 4, !tbaa !8
  %shr196 = lshr i32 %139, 16
  %and197 = and i32 %shr196, 255
  %conv198 = trunc i32 %and197 to i8
  %140 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx199 = getelementptr inbounds i8, ptr %140, i64 1
  store i8 %conv198, ptr %arrayidx199, align 1, !tbaa !10
  %141 = load i32, ptr %Y, align 4, !tbaa !8
  %shr200 = lshr i32 %141, 8
  %and201 = and i32 %shr200, 255
  %conv202 = trunc i32 %and201 to i8
  %142 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx203 = getelementptr inbounds i8, ptr %142, i64 2
  store i8 %conv202, ptr %arrayidx203, align 1, !tbaa !10
  %143 = load i32, ptr %Y, align 4, !tbaa !8
  %and204 = and i32 %143, 255
  %conv205 = trunc i32 %and204 to i8
  %144 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx206 = getelementptr inbounds i8, ptr %144, i64 3
  store i8 %conv205, ptr %arrayidx206, align 1, !tbaa !10
  %145 = load i32, ptr %X, align 4, !tbaa !8
  %shr207 = lshr i32 %145, 24
  %and208 = and i32 %shr207, 255
  %conv209 = trunc i32 %and208 to i8
  %146 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx210 = getelementptr inbounds i8, ptr %146, i64 4
  store i8 %conv209, ptr %arrayidx210, align 1, !tbaa !10
  %147 = load i32, ptr %X, align 4, !tbaa !8
  %shr211 = lshr i32 %147, 16
  %and212 = and i32 %shr211, 255
  %conv213 = trunc i32 %and212 to i8
  %148 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx214 = getelementptr inbounds i8, ptr %148, i64 5
  store i8 %conv213, ptr %arrayidx214, align 1, !tbaa !10
  %149 = load i32, ptr %X, align 4, !tbaa !8
  %shr215 = lshr i32 %149, 8
  %and216 = and i32 %shr215, 255
  %conv217 = trunc i32 %and216 to i8
  %150 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx218 = getelementptr inbounds i8, ptr %150, i64 6
  store i8 %conv217, ptr %arrayidx218, align 1, !tbaa !10
  %151 = load i32, ptr %X, align 4, !tbaa !8
  %and219 = and i32 %151, 255
  %conv220 = trunc i32 %and219 to i8
  %152 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx221 = getelementptr inbounds i8, ptr %152, i64 7
  store i8 %conv220, ptr %arrayidx221, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %SK) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %T) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %Y) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %X) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des_crypt_cbc(ptr noundef %ctx, i32 noundef %mode, i64 noundef %length, ptr noundef %iv, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %temp = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  store i64 %length, ptr %length.addr, align 8, !tbaa !20
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  store i32 -110, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #6
  %0 = load i64, ptr %length.addr, align 8, !tbaa !20
  %rem = urem i64 %0, 8
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.then1
  %2 = load i64, ptr %length.addr, align 8, !tbaa !20
  %cmp2 = icmp ugt i64 %2, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %cmp3 = icmp slt i32 %3, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %idxprom4
  %9 = load i8, ptr %arrayidx5, align 1, !tbaa !10
  %conv6 = zext i8 %9 to i32
  %xor = xor i32 %conv, %conv6
  %conv7 = trunc i32 %xor to i8
  %10 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_des_crypt_ecb(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %16 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp10 = icmp ne i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  br label %exit

if.end13:                                         ; preds = %for.end
  %17 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 8, i1 false)
  %19 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 8
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %add.ptr14 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %add.ptr14, ptr %output.addr, align 8, !tbaa !4
  %21 = load i64, ptr %length.addr, align 8, !tbaa !20
  %sub = sub i64 %21, 8
  store i64 %sub, ptr %length.addr, align 8, !tbaa !20
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  br label %while.cond15

while.cond15:                                     ; preds = %for.end40, %if.else
  %22 = load i64, ptr %length.addr, align 8, !tbaa !20
  %cmp16 = icmp ugt i64 %22, 0
  br i1 %cmp16, label %while.body18, label %while.end45

while.body18:                                     ; preds = %while.cond15
  %arraydecay = getelementptr inbounds [8 x i8], ptr %temp, i64 0, i64 0
  %23 = load ptr, ptr %input.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %23, i64 8, i1 false)
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call19 = call i32 @mbedtls_des_crypt_ecb(ptr noundef %24, ptr noundef %25, ptr noundef %26)
  store i32 %call19, ptr %ret, align 4, !tbaa !8
  %27 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp20 = icmp ne i32 %27, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %while.body18
  br label %exit

if.end23:                                         ; preds = %while.body18
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc38, %if.end23
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %cmp25 = icmp slt i32 %28, 8
  br i1 %cmp25, label %for.body27, label %for.end40

for.body27:                                       ; preds = %for.cond24
  %29 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %29, i64 %idxprom28
  %31 = load i8, ptr %arrayidx29, align 1, !tbaa !10
  %conv30 = zext i8 %31 to i32
  %32 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %32, i64 %idxprom31
  %34 = load i8, ptr %arrayidx32, align 1, !tbaa !10
  %conv33 = zext i8 %34 to i32
  %xor34 = xor i32 %conv30, %conv33
  %conv35 = trunc i32 %xor34 to i8
  %35 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %35, i64 %idxprom36
  store i8 %conv35, ptr %arrayidx37, align 1, !tbaa !10
  br label %for.inc38

for.inc38:                                        ; preds = %for.body27
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %inc39 = add nsw i32 %37, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !8
  br label %for.cond24, !llvm.loop !24

for.end40:                                        ; preds = %for.cond24
  %38 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %arraydecay41 = getelementptr inbounds [8 x i8], ptr %temp, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %arraydecay41, i64 8, i1 false)
  %39 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %add.ptr42 = getelementptr inbounds i8, ptr %39, i64 8
  store ptr %add.ptr42, ptr %input.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %add.ptr43 = getelementptr inbounds i8, ptr %40, i64 8
  store ptr %add.ptr43, ptr %output.addr, align 8, !tbaa !4
  %41 = load i64, ptr %length.addr, align 8, !tbaa !20
  %sub44 = sub i64 %41, 8
  store i64 %sub44, ptr %length.addr, align 8, !tbaa !20
  br label %while.cond15, !llvm.loop !25

while.end45:                                      ; preds = %while.cond15
  br label %if.end46

if.end46:                                         ; preds = %while.end45, %while.end
  store i32 0, ptr %ret, align 4, !tbaa !8
  br label %exit

exit:                                             ; preds = %if.end46, %if.then22, %if.then12
  %42 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %42, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des3_crypt_ecb(ptr noundef %ctx, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %T = alloca i32, align 4
  %SK = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %X) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %Y) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %T) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %SK) #6
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sk = getelementptr inbounds %struct.mbedtls_des3_context, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [96 x i32], ptr %sk, i64 0, i64 0
  store ptr %arraydecay, ptr %SK, align 8, !tbaa !4
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %2 to i32
  %shl = shl i32 %conv, 24
  %3 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1, !tbaa !10
  %conv2 = zext i8 %4 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %conv5 = zext i8 %6 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx8, align 1, !tbaa !10
  %conv9 = zext i8 %8 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, ptr %X, align 4, !tbaa !8
  %9 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i8, ptr %arrayidx11, align 1, !tbaa !10
  %conv12 = zext i8 %10 to i32
  %shl13 = shl i32 %conv12, 24
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 5
  %12 = load i8, ptr %arrayidx14, align 1, !tbaa !10
  %conv15 = zext i8 %12 to i32
  %shl16 = shl i32 %conv15, 16
  %or17 = or i32 %shl13, %shl16
  %13 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 6
  %14 = load i8, ptr %arrayidx18, align 1, !tbaa !10
  %conv19 = zext i8 %14 to i32
  %shl20 = shl i32 %conv19, 8
  %or21 = or i32 %or17, %shl20
  %15 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 7
  %16 = load i8, ptr %arrayidx22, align 1, !tbaa !10
  %conv23 = zext i8 %16 to i32
  %or24 = or i32 %or21, %conv23
  store i32 %or24, ptr %Y, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %17 = load i32, ptr %X, align 4, !tbaa !8
  %shr = lshr i32 %17, 4
  %18 = load i32, ptr %Y, align 4, !tbaa !8
  %xor = xor i32 %shr, %18
  %and = and i32 %xor, 252645135
  store i32 %and, ptr %T, align 4, !tbaa !8
  %19 = load i32, ptr %T, align 4, !tbaa !8
  %20 = load i32, ptr %Y, align 4, !tbaa !8
  %xor25 = xor i32 %20, %19
  store i32 %xor25, ptr %Y, align 4, !tbaa !8
  %21 = load i32, ptr %T, align 4, !tbaa !8
  %shl26 = shl i32 %21, 4
  %22 = load i32, ptr %X, align 4, !tbaa !8
  %xor27 = xor i32 %22, %shl26
  store i32 %xor27, ptr %X, align 4, !tbaa !8
  %23 = load i32, ptr %X, align 4, !tbaa !8
  %shr28 = lshr i32 %23, 16
  %24 = load i32, ptr %Y, align 4, !tbaa !8
  %xor29 = xor i32 %shr28, %24
  %and30 = and i32 %xor29, 65535
  store i32 %and30, ptr %T, align 4, !tbaa !8
  %25 = load i32, ptr %T, align 4, !tbaa !8
  %26 = load i32, ptr %Y, align 4, !tbaa !8
  %xor31 = xor i32 %26, %25
  store i32 %xor31, ptr %Y, align 4, !tbaa !8
  %27 = load i32, ptr %T, align 4, !tbaa !8
  %shl32 = shl i32 %27, 16
  %28 = load i32, ptr %X, align 4, !tbaa !8
  %xor33 = xor i32 %28, %shl32
  store i32 %xor33, ptr %X, align 4, !tbaa !8
  %29 = load i32, ptr %Y, align 4, !tbaa !8
  %shr34 = lshr i32 %29, 2
  %30 = load i32, ptr %X, align 4, !tbaa !8
  %xor35 = xor i32 %shr34, %30
  %and36 = and i32 %xor35, 858993459
  store i32 %and36, ptr %T, align 4, !tbaa !8
  %31 = load i32, ptr %T, align 4, !tbaa !8
  %32 = load i32, ptr %X, align 4, !tbaa !8
  %xor37 = xor i32 %32, %31
  store i32 %xor37, ptr %X, align 4, !tbaa !8
  %33 = load i32, ptr %T, align 4, !tbaa !8
  %shl38 = shl i32 %33, 2
  %34 = load i32, ptr %Y, align 4, !tbaa !8
  %xor39 = xor i32 %34, %shl38
  store i32 %xor39, ptr %Y, align 4, !tbaa !8
  %35 = load i32, ptr %Y, align 4, !tbaa !8
  %shr40 = lshr i32 %35, 8
  %36 = load i32, ptr %X, align 4, !tbaa !8
  %xor41 = xor i32 %shr40, %36
  %and42 = and i32 %xor41, 16711935
  store i32 %and42, ptr %T, align 4, !tbaa !8
  %37 = load i32, ptr %T, align 4, !tbaa !8
  %38 = load i32, ptr %X, align 4, !tbaa !8
  %xor43 = xor i32 %38, %37
  store i32 %xor43, ptr %X, align 4, !tbaa !8
  %39 = load i32, ptr %T, align 4, !tbaa !8
  %shl44 = shl i32 %39, 8
  %40 = load i32, ptr %Y, align 4, !tbaa !8
  %xor45 = xor i32 %40, %shl44
  store i32 %xor45, ptr %Y, align 4, !tbaa !8
  %41 = load i32, ptr %Y, align 4, !tbaa !8
  %shl46 = shl i32 %41, 1
  %42 = load i32, ptr %Y, align 4, !tbaa !8
  %shr47 = lshr i32 %42, 31
  %or48 = or i32 %shl46, %shr47
  %and49 = and i32 %or48, -1
  store i32 %and49, ptr %Y, align 4, !tbaa !8
  %43 = load i32, ptr %X, align 4, !tbaa !8
  %44 = load i32, ptr %Y, align 4, !tbaa !8
  %xor50 = xor i32 %43, %44
  %and51 = and i32 %xor50, -1431655766
  store i32 %and51, ptr %T, align 4, !tbaa !8
  %45 = load i32, ptr %T, align 4, !tbaa !8
  %46 = load i32, ptr %Y, align 4, !tbaa !8
  %xor52 = xor i32 %46, %45
  store i32 %xor52, ptr %Y, align 4, !tbaa !8
  %47 = load i32, ptr %T, align 4, !tbaa !8
  %48 = load i32, ptr %X, align 4, !tbaa !8
  %xor53 = xor i32 %48, %47
  store i32 %xor53, ptr %X, align 4, !tbaa !8
  %49 = load i32, ptr %X, align 4, !tbaa !8
  %shl54 = shl i32 %49, 1
  %50 = load i32, ptr %X, align 4, !tbaa !8
  %shr55 = lshr i32 %50, 31
  %or56 = or i32 %shl54, %shr55
  %and57 = and i32 %or56, -1
  store i32 %and57, ptr %X, align 4, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %51, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body59

do.body59:                                        ; preds = %for.body
  %52 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %SK, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %54 = load i32, ptr %Y, align 4, !tbaa !8
  %xor60 = xor i32 %53, %54
  store i32 %xor60, ptr %T, align 4, !tbaa !8
  %55 = load i32, ptr %T, align 4, !tbaa !8
  %and61 = and i32 %55, 63
  %idxprom = zext i32 %and61 to i64
  %arrayidx62 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom
  %56 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  %57 = load i32, ptr %T, align 4, !tbaa !8
  %shr63 = lshr i32 %57, 8
  %and64 = and i32 %shr63, 63
  %idxprom65 = zext i32 %and64 to i64
  %arrayidx66 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom65
  %58 = load i32, ptr %arrayidx66, align 4, !tbaa !8
  %xor67 = xor i32 %56, %58
  %59 = load i32, ptr %T, align 4, !tbaa !8
  %shr68 = lshr i32 %59, 16
  %and69 = and i32 %shr68, 63
  %idxprom70 = zext i32 %and69 to i64
  %arrayidx71 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom70
  %60 = load i32, ptr %arrayidx71, align 4, !tbaa !8
  %xor72 = xor i32 %xor67, %60
  %61 = load i32, ptr %T, align 4, !tbaa !8
  %shr73 = lshr i32 %61, 24
  %and74 = and i32 %shr73, 63
  %idxprom75 = zext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom75
  %62 = load i32, ptr %arrayidx76, align 4, !tbaa !8
  %xor77 = xor i32 %xor72, %62
  %63 = load i32, ptr %X, align 4, !tbaa !8
  %xor78 = xor i32 %63, %xor77
  store i32 %xor78, ptr %X, align 4, !tbaa !8
  %64 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr79 = getelementptr inbounds i32, ptr %64, i32 1
  store ptr %incdec.ptr79, ptr %SK, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %66 = load i32, ptr %Y, align 4, !tbaa !8
  %shl80 = shl i32 %66, 28
  %67 = load i32, ptr %Y, align 4, !tbaa !8
  %shr81 = lshr i32 %67, 4
  %or82 = or i32 %shl80, %shr81
  %xor83 = xor i32 %65, %or82
  store i32 %xor83, ptr %T, align 4, !tbaa !8
  %68 = load i32, ptr %T, align 4, !tbaa !8
  %and84 = and i32 %68, 63
  %idxprom85 = zext i32 %and84 to i64
  %arrayidx86 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom85
  %69 = load i32, ptr %arrayidx86, align 4, !tbaa !8
  %70 = load i32, ptr %T, align 4, !tbaa !8
  %shr87 = lshr i32 %70, 8
  %and88 = and i32 %shr87, 63
  %idxprom89 = zext i32 %and88 to i64
  %arrayidx90 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom89
  %71 = load i32, ptr %arrayidx90, align 4, !tbaa !8
  %xor91 = xor i32 %69, %71
  %72 = load i32, ptr %T, align 4, !tbaa !8
  %shr92 = lshr i32 %72, 16
  %and93 = and i32 %shr92, 63
  %idxprom94 = zext i32 %and93 to i64
  %arrayidx95 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom94
  %73 = load i32, ptr %arrayidx95, align 4, !tbaa !8
  %xor96 = xor i32 %xor91, %73
  %74 = load i32, ptr %T, align 4, !tbaa !8
  %shr97 = lshr i32 %74, 24
  %and98 = and i32 %shr97, 63
  %idxprom99 = zext i32 %and98 to i64
  %arrayidx100 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom99
  %75 = load i32, ptr %arrayidx100, align 4, !tbaa !8
  %xor101 = xor i32 %xor96, %75
  %76 = load i32, ptr %X, align 4, !tbaa !8
  %xor102 = xor i32 %76, %xor101
  store i32 %xor102, ptr %X, align 4, !tbaa !8
  br label %do.cond103

do.cond103:                                       ; preds = %do.body59
  br label %do.end104

do.end104:                                        ; preds = %do.cond103
  br label %do.body105

do.body105:                                       ; preds = %do.end104
  %77 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr106 = getelementptr inbounds i32, ptr %77, i32 1
  store ptr %incdec.ptr106, ptr %SK, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %79 = load i32, ptr %X, align 4, !tbaa !8
  %xor107 = xor i32 %78, %79
  store i32 %xor107, ptr %T, align 4, !tbaa !8
  %80 = load i32, ptr %T, align 4, !tbaa !8
  %and108 = and i32 %80, 63
  %idxprom109 = zext i32 %and108 to i64
  %arrayidx110 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom109
  %81 = load i32, ptr %arrayidx110, align 4, !tbaa !8
  %82 = load i32, ptr %T, align 4, !tbaa !8
  %shr111 = lshr i32 %82, 8
  %and112 = and i32 %shr111, 63
  %idxprom113 = zext i32 %and112 to i64
  %arrayidx114 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom113
  %83 = load i32, ptr %arrayidx114, align 4, !tbaa !8
  %xor115 = xor i32 %81, %83
  %84 = load i32, ptr %T, align 4, !tbaa !8
  %shr116 = lshr i32 %84, 16
  %and117 = and i32 %shr116, 63
  %idxprom118 = zext i32 %and117 to i64
  %arrayidx119 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom118
  %85 = load i32, ptr %arrayidx119, align 4, !tbaa !8
  %xor120 = xor i32 %xor115, %85
  %86 = load i32, ptr %T, align 4, !tbaa !8
  %shr121 = lshr i32 %86, 24
  %and122 = and i32 %shr121, 63
  %idxprom123 = zext i32 %and122 to i64
  %arrayidx124 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom123
  %87 = load i32, ptr %arrayidx124, align 4, !tbaa !8
  %xor125 = xor i32 %xor120, %87
  %88 = load i32, ptr %Y, align 4, !tbaa !8
  %xor126 = xor i32 %88, %xor125
  store i32 %xor126, ptr %Y, align 4, !tbaa !8
  %89 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr127 = getelementptr inbounds i32, ptr %89, i32 1
  store ptr %incdec.ptr127, ptr %SK, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %91 = load i32, ptr %X, align 4, !tbaa !8
  %shl128 = shl i32 %91, 28
  %92 = load i32, ptr %X, align 4, !tbaa !8
  %shr129 = lshr i32 %92, 4
  %or130 = or i32 %shl128, %shr129
  %xor131 = xor i32 %90, %or130
  store i32 %xor131, ptr %T, align 4, !tbaa !8
  %93 = load i32, ptr %T, align 4, !tbaa !8
  %and132 = and i32 %93, 63
  %idxprom133 = zext i32 %and132 to i64
  %arrayidx134 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom133
  %94 = load i32, ptr %arrayidx134, align 4, !tbaa !8
  %95 = load i32, ptr %T, align 4, !tbaa !8
  %shr135 = lshr i32 %95, 8
  %and136 = and i32 %shr135, 63
  %idxprom137 = zext i32 %and136 to i64
  %arrayidx138 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom137
  %96 = load i32, ptr %arrayidx138, align 4, !tbaa !8
  %xor139 = xor i32 %94, %96
  %97 = load i32, ptr %T, align 4, !tbaa !8
  %shr140 = lshr i32 %97, 16
  %and141 = and i32 %shr140, 63
  %idxprom142 = zext i32 %and141 to i64
  %arrayidx143 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom142
  %98 = load i32, ptr %arrayidx143, align 4, !tbaa !8
  %xor144 = xor i32 %xor139, %98
  %99 = load i32, ptr %T, align 4, !tbaa !8
  %shr145 = lshr i32 %99, 24
  %and146 = and i32 %shr145, 63
  %idxprom147 = zext i32 %and146 to i64
  %arrayidx148 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom147
  %100 = load i32, ptr %arrayidx148, align 4, !tbaa !8
  %xor149 = xor i32 %xor144, %100
  %101 = load i32, ptr %Y, align 4, !tbaa !8
  %xor150 = xor i32 %101, %xor149
  store i32 %xor150, ptr %Y, align 4, !tbaa !8
  br label %do.cond151

do.cond151:                                       ; preds = %do.body105
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  br label %for.inc

for.inc:                                          ; preds = %do.end152
  %102 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond153

for.cond153:                                      ; preds = %for.inc253, %for.end
  %103 = load i32, ptr %i, align 4, !tbaa !8
  %cmp154 = icmp slt i32 %103, 8
  br i1 %cmp154, label %for.body156, label %for.end255

for.body156:                                      ; preds = %for.cond153
  br label %do.body157

do.body157:                                       ; preds = %for.body156
  %104 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr158 = getelementptr inbounds i32, ptr %104, i32 1
  store ptr %incdec.ptr158, ptr %SK, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %106 = load i32, ptr %X, align 4, !tbaa !8
  %xor159 = xor i32 %105, %106
  store i32 %xor159, ptr %T, align 4, !tbaa !8
  %107 = load i32, ptr %T, align 4, !tbaa !8
  %and160 = and i32 %107, 63
  %idxprom161 = zext i32 %and160 to i64
  %arrayidx162 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom161
  %108 = load i32, ptr %arrayidx162, align 4, !tbaa !8
  %109 = load i32, ptr %T, align 4, !tbaa !8
  %shr163 = lshr i32 %109, 8
  %and164 = and i32 %shr163, 63
  %idxprom165 = zext i32 %and164 to i64
  %arrayidx166 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom165
  %110 = load i32, ptr %arrayidx166, align 4, !tbaa !8
  %xor167 = xor i32 %108, %110
  %111 = load i32, ptr %T, align 4, !tbaa !8
  %shr168 = lshr i32 %111, 16
  %and169 = and i32 %shr168, 63
  %idxprom170 = zext i32 %and169 to i64
  %arrayidx171 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom170
  %112 = load i32, ptr %arrayidx171, align 4, !tbaa !8
  %xor172 = xor i32 %xor167, %112
  %113 = load i32, ptr %T, align 4, !tbaa !8
  %shr173 = lshr i32 %113, 24
  %and174 = and i32 %shr173, 63
  %idxprom175 = zext i32 %and174 to i64
  %arrayidx176 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom175
  %114 = load i32, ptr %arrayidx176, align 4, !tbaa !8
  %xor177 = xor i32 %xor172, %114
  %115 = load i32, ptr %Y, align 4, !tbaa !8
  %xor178 = xor i32 %115, %xor177
  store i32 %xor178, ptr %Y, align 4, !tbaa !8
  %116 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr179 = getelementptr inbounds i32, ptr %116, i32 1
  store ptr %incdec.ptr179, ptr %SK, align 8, !tbaa !4
  %117 = load i32, ptr %116, align 4, !tbaa !8
  %118 = load i32, ptr %X, align 4, !tbaa !8
  %shl180 = shl i32 %118, 28
  %119 = load i32, ptr %X, align 4, !tbaa !8
  %shr181 = lshr i32 %119, 4
  %or182 = or i32 %shl180, %shr181
  %xor183 = xor i32 %117, %or182
  store i32 %xor183, ptr %T, align 4, !tbaa !8
  %120 = load i32, ptr %T, align 4, !tbaa !8
  %and184 = and i32 %120, 63
  %idxprom185 = zext i32 %and184 to i64
  %arrayidx186 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom185
  %121 = load i32, ptr %arrayidx186, align 4, !tbaa !8
  %122 = load i32, ptr %T, align 4, !tbaa !8
  %shr187 = lshr i32 %122, 8
  %and188 = and i32 %shr187, 63
  %idxprom189 = zext i32 %and188 to i64
  %arrayidx190 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom189
  %123 = load i32, ptr %arrayidx190, align 4, !tbaa !8
  %xor191 = xor i32 %121, %123
  %124 = load i32, ptr %T, align 4, !tbaa !8
  %shr192 = lshr i32 %124, 16
  %and193 = and i32 %shr192, 63
  %idxprom194 = zext i32 %and193 to i64
  %arrayidx195 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom194
  %125 = load i32, ptr %arrayidx195, align 4, !tbaa !8
  %xor196 = xor i32 %xor191, %125
  %126 = load i32, ptr %T, align 4, !tbaa !8
  %shr197 = lshr i32 %126, 24
  %and198 = and i32 %shr197, 63
  %idxprom199 = zext i32 %and198 to i64
  %arrayidx200 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom199
  %127 = load i32, ptr %arrayidx200, align 4, !tbaa !8
  %xor201 = xor i32 %xor196, %127
  %128 = load i32, ptr %Y, align 4, !tbaa !8
  %xor202 = xor i32 %128, %xor201
  store i32 %xor202, ptr %Y, align 4, !tbaa !8
  br label %do.cond203

do.cond203:                                       ; preds = %do.body157
  br label %do.end204

do.end204:                                        ; preds = %do.cond203
  br label %do.body205

do.body205:                                       ; preds = %do.end204
  %129 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr206 = getelementptr inbounds i32, ptr %129, i32 1
  store ptr %incdec.ptr206, ptr %SK, align 8, !tbaa !4
  %130 = load i32, ptr %129, align 4, !tbaa !8
  %131 = load i32, ptr %Y, align 4, !tbaa !8
  %xor207 = xor i32 %130, %131
  store i32 %xor207, ptr %T, align 4, !tbaa !8
  %132 = load i32, ptr %T, align 4, !tbaa !8
  %and208 = and i32 %132, 63
  %idxprom209 = zext i32 %and208 to i64
  %arrayidx210 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom209
  %133 = load i32, ptr %arrayidx210, align 4, !tbaa !8
  %134 = load i32, ptr %T, align 4, !tbaa !8
  %shr211 = lshr i32 %134, 8
  %and212 = and i32 %shr211, 63
  %idxprom213 = zext i32 %and212 to i64
  %arrayidx214 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom213
  %135 = load i32, ptr %arrayidx214, align 4, !tbaa !8
  %xor215 = xor i32 %133, %135
  %136 = load i32, ptr %T, align 4, !tbaa !8
  %shr216 = lshr i32 %136, 16
  %and217 = and i32 %shr216, 63
  %idxprom218 = zext i32 %and217 to i64
  %arrayidx219 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom218
  %137 = load i32, ptr %arrayidx219, align 4, !tbaa !8
  %xor220 = xor i32 %xor215, %137
  %138 = load i32, ptr %T, align 4, !tbaa !8
  %shr221 = lshr i32 %138, 24
  %and222 = and i32 %shr221, 63
  %idxprom223 = zext i32 %and222 to i64
  %arrayidx224 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom223
  %139 = load i32, ptr %arrayidx224, align 4, !tbaa !8
  %xor225 = xor i32 %xor220, %139
  %140 = load i32, ptr %X, align 4, !tbaa !8
  %xor226 = xor i32 %140, %xor225
  store i32 %xor226, ptr %X, align 4, !tbaa !8
  %141 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr227 = getelementptr inbounds i32, ptr %141, i32 1
  store ptr %incdec.ptr227, ptr %SK, align 8, !tbaa !4
  %142 = load i32, ptr %141, align 4, !tbaa !8
  %143 = load i32, ptr %Y, align 4, !tbaa !8
  %shl228 = shl i32 %143, 28
  %144 = load i32, ptr %Y, align 4, !tbaa !8
  %shr229 = lshr i32 %144, 4
  %or230 = or i32 %shl228, %shr229
  %xor231 = xor i32 %142, %or230
  store i32 %xor231, ptr %T, align 4, !tbaa !8
  %145 = load i32, ptr %T, align 4, !tbaa !8
  %and232 = and i32 %145, 63
  %idxprom233 = zext i32 %and232 to i64
  %arrayidx234 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom233
  %146 = load i32, ptr %arrayidx234, align 4, !tbaa !8
  %147 = load i32, ptr %T, align 4, !tbaa !8
  %shr235 = lshr i32 %147, 8
  %and236 = and i32 %shr235, 63
  %idxprom237 = zext i32 %and236 to i64
  %arrayidx238 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom237
  %148 = load i32, ptr %arrayidx238, align 4, !tbaa !8
  %xor239 = xor i32 %146, %148
  %149 = load i32, ptr %T, align 4, !tbaa !8
  %shr240 = lshr i32 %149, 16
  %and241 = and i32 %shr240, 63
  %idxprom242 = zext i32 %and241 to i64
  %arrayidx243 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom242
  %150 = load i32, ptr %arrayidx243, align 4, !tbaa !8
  %xor244 = xor i32 %xor239, %150
  %151 = load i32, ptr %T, align 4, !tbaa !8
  %shr245 = lshr i32 %151, 24
  %and246 = and i32 %shr245, 63
  %idxprom247 = zext i32 %and246 to i64
  %arrayidx248 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom247
  %152 = load i32, ptr %arrayidx248, align 4, !tbaa !8
  %xor249 = xor i32 %xor244, %152
  %153 = load i32, ptr %X, align 4, !tbaa !8
  %xor250 = xor i32 %153, %xor249
  store i32 %xor250, ptr %X, align 4, !tbaa !8
  br label %do.cond251

do.cond251:                                       ; preds = %do.body205
  br label %do.end252

do.end252:                                        ; preds = %do.cond251
  br label %for.inc253

for.inc253:                                       ; preds = %do.end252
  %154 = load i32, ptr %i, align 4, !tbaa !8
  %inc254 = add nsw i32 %154, 1
  store i32 %inc254, ptr %i, align 4, !tbaa !8
  br label %for.cond153, !llvm.loop !27

for.end255:                                       ; preds = %for.cond153
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond256

for.cond256:                                      ; preds = %for.inc356, %for.end255
  %155 = load i32, ptr %i, align 4, !tbaa !8
  %cmp257 = icmp slt i32 %155, 8
  br i1 %cmp257, label %for.body259, label %for.end358

for.body259:                                      ; preds = %for.cond256
  br label %do.body260

do.body260:                                       ; preds = %for.body259
  %156 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr261 = getelementptr inbounds i32, ptr %156, i32 1
  store ptr %incdec.ptr261, ptr %SK, align 8, !tbaa !4
  %157 = load i32, ptr %156, align 4, !tbaa !8
  %158 = load i32, ptr %Y, align 4, !tbaa !8
  %xor262 = xor i32 %157, %158
  store i32 %xor262, ptr %T, align 4, !tbaa !8
  %159 = load i32, ptr %T, align 4, !tbaa !8
  %and263 = and i32 %159, 63
  %idxprom264 = zext i32 %and263 to i64
  %arrayidx265 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom264
  %160 = load i32, ptr %arrayidx265, align 4, !tbaa !8
  %161 = load i32, ptr %T, align 4, !tbaa !8
  %shr266 = lshr i32 %161, 8
  %and267 = and i32 %shr266, 63
  %idxprom268 = zext i32 %and267 to i64
  %arrayidx269 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom268
  %162 = load i32, ptr %arrayidx269, align 4, !tbaa !8
  %xor270 = xor i32 %160, %162
  %163 = load i32, ptr %T, align 4, !tbaa !8
  %shr271 = lshr i32 %163, 16
  %and272 = and i32 %shr271, 63
  %idxprom273 = zext i32 %and272 to i64
  %arrayidx274 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom273
  %164 = load i32, ptr %arrayidx274, align 4, !tbaa !8
  %xor275 = xor i32 %xor270, %164
  %165 = load i32, ptr %T, align 4, !tbaa !8
  %shr276 = lshr i32 %165, 24
  %and277 = and i32 %shr276, 63
  %idxprom278 = zext i32 %and277 to i64
  %arrayidx279 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom278
  %166 = load i32, ptr %arrayidx279, align 4, !tbaa !8
  %xor280 = xor i32 %xor275, %166
  %167 = load i32, ptr %X, align 4, !tbaa !8
  %xor281 = xor i32 %167, %xor280
  store i32 %xor281, ptr %X, align 4, !tbaa !8
  %168 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr282 = getelementptr inbounds i32, ptr %168, i32 1
  store ptr %incdec.ptr282, ptr %SK, align 8, !tbaa !4
  %169 = load i32, ptr %168, align 4, !tbaa !8
  %170 = load i32, ptr %Y, align 4, !tbaa !8
  %shl283 = shl i32 %170, 28
  %171 = load i32, ptr %Y, align 4, !tbaa !8
  %shr284 = lshr i32 %171, 4
  %or285 = or i32 %shl283, %shr284
  %xor286 = xor i32 %169, %or285
  store i32 %xor286, ptr %T, align 4, !tbaa !8
  %172 = load i32, ptr %T, align 4, !tbaa !8
  %and287 = and i32 %172, 63
  %idxprom288 = zext i32 %and287 to i64
  %arrayidx289 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom288
  %173 = load i32, ptr %arrayidx289, align 4, !tbaa !8
  %174 = load i32, ptr %T, align 4, !tbaa !8
  %shr290 = lshr i32 %174, 8
  %and291 = and i32 %shr290, 63
  %idxprom292 = zext i32 %and291 to i64
  %arrayidx293 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom292
  %175 = load i32, ptr %arrayidx293, align 4, !tbaa !8
  %xor294 = xor i32 %173, %175
  %176 = load i32, ptr %T, align 4, !tbaa !8
  %shr295 = lshr i32 %176, 16
  %and296 = and i32 %shr295, 63
  %idxprom297 = zext i32 %and296 to i64
  %arrayidx298 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom297
  %177 = load i32, ptr %arrayidx298, align 4, !tbaa !8
  %xor299 = xor i32 %xor294, %177
  %178 = load i32, ptr %T, align 4, !tbaa !8
  %shr300 = lshr i32 %178, 24
  %and301 = and i32 %shr300, 63
  %idxprom302 = zext i32 %and301 to i64
  %arrayidx303 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom302
  %179 = load i32, ptr %arrayidx303, align 4, !tbaa !8
  %xor304 = xor i32 %xor299, %179
  %180 = load i32, ptr %X, align 4, !tbaa !8
  %xor305 = xor i32 %180, %xor304
  store i32 %xor305, ptr %X, align 4, !tbaa !8
  br label %do.cond306

do.cond306:                                       ; preds = %do.body260
  br label %do.end307

do.end307:                                        ; preds = %do.cond306
  br label %do.body308

do.body308:                                       ; preds = %do.end307
  %181 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr309 = getelementptr inbounds i32, ptr %181, i32 1
  store ptr %incdec.ptr309, ptr %SK, align 8, !tbaa !4
  %182 = load i32, ptr %181, align 4, !tbaa !8
  %183 = load i32, ptr %X, align 4, !tbaa !8
  %xor310 = xor i32 %182, %183
  store i32 %xor310, ptr %T, align 4, !tbaa !8
  %184 = load i32, ptr %T, align 4, !tbaa !8
  %and311 = and i32 %184, 63
  %idxprom312 = zext i32 %and311 to i64
  %arrayidx313 = getelementptr inbounds [64 x i32], ptr @SB8, i64 0, i64 %idxprom312
  %185 = load i32, ptr %arrayidx313, align 4, !tbaa !8
  %186 = load i32, ptr %T, align 4, !tbaa !8
  %shr314 = lshr i32 %186, 8
  %and315 = and i32 %shr314, 63
  %idxprom316 = zext i32 %and315 to i64
  %arrayidx317 = getelementptr inbounds [64 x i32], ptr @SB6, i64 0, i64 %idxprom316
  %187 = load i32, ptr %arrayidx317, align 4, !tbaa !8
  %xor318 = xor i32 %185, %187
  %188 = load i32, ptr %T, align 4, !tbaa !8
  %shr319 = lshr i32 %188, 16
  %and320 = and i32 %shr319, 63
  %idxprom321 = zext i32 %and320 to i64
  %arrayidx322 = getelementptr inbounds [64 x i32], ptr @SB4, i64 0, i64 %idxprom321
  %189 = load i32, ptr %arrayidx322, align 4, !tbaa !8
  %xor323 = xor i32 %xor318, %189
  %190 = load i32, ptr %T, align 4, !tbaa !8
  %shr324 = lshr i32 %190, 24
  %and325 = and i32 %shr324, 63
  %idxprom326 = zext i32 %and325 to i64
  %arrayidx327 = getelementptr inbounds [64 x i32], ptr @SB2, i64 0, i64 %idxprom326
  %191 = load i32, ptr %arrayidx327, align 4, !tbaa !8
  %xor328 = xor i32 %xor323, %191
  %192 = load i32, ptr %Y, align 4, !tbaa !8
  %xor329 = xor i32 %192, %xor328
  store i32 %xor329, ptr %Y, align 4, !tbaa !8
  %193 = load ptr, ptr %SK, align 8, !tbaa !4
  %incdec.ptr330 = getelementptr inbounds i32, ptr %193, i32 1
  store ptr %incdec.ptr330, ptr %SK, align 8, !tbaa !4
  %194 = load i32, ptr %193, align 4, !tbaa !8
  %195 = load i32, ptr %X, align 4, !tbaa !8
  %shl331 = shl i32 %195, 28
  %196 = load i32, ptr %X, align 4, !tbaa !8
  %shr332 = lshr i32 %196, 4
  %or333 = or i32 %shl331, %shr332
  %xor334 = xor i32 %194, %or333
  store i32 %xor334, ptr %T, align 4, !tbaa !8
  %197 = load i32, ptr %T, align 4, !tbaa !8
  %and335 = and i32 %197, 63
  %idxprom336 = zext i32 %and335 to i64
  %arrayidx337 = getelementptr inbounds [64 x i32], ptr @SB7, i64 0, i64 %idxprom336
  %198 = load i32, ptr %arrayidx337, align 4, !tbaa !8
  %199 = load i32, ptr %T, align 4, !tbaa !8
  %shr338 = lshr i32 %199, 8
  %and339 = and i32 %shr338, 63
  %idxprom340 = zext i32 %and339 to i64
  %arrayidx341 = getelementptr inbounds [64 x i32], ptr @SB5, i64 0, i64 %idxprom340
  %200 = load i32, ptr %arrayidx341, align 4, !tbaa !8
  %xor342 = xor i32 %198, %200
  %201 = load i32, ptr %T, align 4, !tbaa !8
  %shr343 = lshr i32 %201, 16
  %and344 = and i32 %shr343, 63
  %idxprom345 = zext i32 %and344 to i64
  %arrayidx346 = getelementptr inbounds [64 x i32], ptr @SB3, i64 0, i64 %idxprom345
  %202 = load i32, ptr %arrayidx346, align 4, !tbaa !8
  %xor347 = xor i32 %xor342, %202
  %203 = load i32, ptr %T, align 4, !tbaa !8
  %shr348 = lshr i32 %203, 24
  %and349 = and i32 %shr348, 63
  %idxprom350 = zext i32 %and349 to i64
  %arrayidx351 = getelementptr inbounds [64 x i32], ptr @SB1, i64 0, i64 %idxprom350
  %204 = load i32, ptr %arrayidx351, align 4, !tbaa !8
  %xor352 = xor i32 %xor347, %204
  %205 = load i32, ptr %Y, align 4, !tbaa !8
  %xor353 = xor i32 %205, %xor352
  store i32 %xor353, ptr %Y, align 4, !tbaa !8
  br label %do.cond354

do.cond354:                                       ; preds = %do.body308
  br label %do.end355

do.end355:                                        ; preds = %do.cond354
  br label %for.inc356

for.inc356:                                       ; preds = %do.end355
  %206 = load i32, ptr %i, align 4, !tbaa !8
  %inc357 = add nsw i32 %206, 1
  store i32 %inc357, ptr %i, align 4, !tbaa !8
  br label %for.cond256, !llvm.loop !28

for.end358:                                       ; preds = %for.cond256
  br label %do.body359

do.body359:                                       ; preds = %for.end358
  %207 = load i32, ptr %Y, align 4, !tbaa !8
  %shl360 = shl i32 %207, 31
  %208 = load i32, ptr %Y, align 4, !tbaa !8
  %shr361 = lshr i32 %208, 1
  %or362 = or i32 %shl360, %shr361
  %and363 = and i32 %or362, -1
  store i32 %and363, ptr %Y, align 4, !tbaa !8
  %209 = load i32, ptr %Y, align 4, !tbaa !8
  %210 = load i32, ptr %X, align 4, !tbaa !8
  %xor364 = xor i32 %209, %210
  %and365 = and i32 %xor364, -1431655766
  store i32 %and365, ptr %T, align 4, !tbaa !8
  %211 = load i32, ptr %T, align 4, !tbaa !8
  %212 = load i32, ptr %Y, align 4, !tbaa !8
  %xor366 = xor i32 %212, %211
  store i32 %xor366, ptr %Y, align 4, !tbaa !8
  %213 = load i32, ptr %T, align 4, !tbaa !8
  %214 = load i32, ptr %X, align 4, !tbaa !8
  %xor367 = xor i32 %214, %213
  store i32 %xor367, ptr %X, align 4, !tbaa !8
  %215 = load i32, ptr %X, align 4, !tbaa !8
  %shl368 = shl i32 %215, 31
  %216 = load i32, ptr %X, align 4, !tbaa !8
  %shr369 = lshr i32 %216, 1
  %or370 = or i32 %shl368, %shr369
  %and371 = and i32 %or370, -1
  store i32 %and371, ptr %X, align 4, !tbaa !8
  %217 = load i32, ptr %X, align 4, !tbaa !8
  %shr372 = lshr i32 %217, 8
  %218 = load i32, ptr %Y, align 4, !tbaa !8
  %xor373 = xor i32 %shr372, %218
  %and374 = and i32 %xor373, 16711935
  store i32 %and374, ptr %T, align 4, !tbaa !8
  %219 = load i32, ptr %T, align 4, !tbaa !8
  %220 = load i32, ptr %Y, align 4, !tbaa !8
  %xor375 = xor i32 %220, %219
  store i32 %xor375, ptr %Y, align 4, !tbaa !8
  %221 = load i32, ptr %T, align 4, !tbaa !8
  %shl376 = shl i32 %221, 8
  %222 = load i32, ptr %X, align 4, !tbaa !8
  %xor377 = xor i32 %222, %shl376
  store i32 %xor377, ptr %X, align 4, !tbaa !8
  %223 = load i32, ptr %X, align 4, !tbaa !8
  %shr378 = lshr i32 %223, 2
  %224 = load i32, ptr %Y, align 4, !tbaa !8
  %xor379 = xor i32 %shr378, %224
  %and380 = and i32 %xor379, 858993459
  store i32 %and380, ptr %T, align 4, !tbaa !8
  %225 = load i32, ptr %T, align 4, !tbaa !8
  %226 = load i32, ptr %Y, align 4, !tbaa !8
  %xor381 = xor i32 %226, %225
  store i32 %xor381, ptr %Y, align 4, !tbaa !8
  %227 = load i32, ptr %T, align 4, !tbaa !8
  %shl382 = shl i32 %227, 2
  %228 = load i32, ptr %X, align 4, !tbaa !8
  %xor383 = xor i32 %228, %shl382
  store i32 %xor383, ptr %X, align 4, !tbaa !8
  %229 = load i32, ptr %Y, align 4, !tbaa !8
  %shr384 = lshr i32 %229, 16
  %230 = load i32, ptr %X, align 4, !tbaa !8
  %xor385 = xor i32 %shr384, %230
  %and386 = and i32 %xor385, 65535
  store i32 %and386, ptr %T, align 4, !tbaa !8
  %231 = load i32, ptr %T, align 4, !tbaa !8
  %232 = load i32, ptr %X, align 4, !tbaa !8
  %xor387 = xor i32 %232, %231
  store i32 %xor387, ptr %X, align 4, !tbaa !8
  %233 = load i32, ptr %T, align 4, !tbaa !8
  %shl388 = shl i32 %233, 16
  %234 = load i32, ptr %Y, align 4, !tbaa !8
  %xor389 = xor i32 %234, %shl388
  store i32 %xor389, ptr %Y, align 4, !tbaa !8
  %235 = load i32, ptr %Y, align 4, !tbaa !8
  %shr390 = lshr i32 %235, 4
  %236 = load i32, ptr %X, align 4, !tbaa !8
  %xor391 = xor i32 %shr390, %236
  %and392 = and i32 %xor391, 252645135
  store i32 %and392, ptr %T, align 4, !tbaa !8
  %237 = load i32, ptr %T, align 4, !tbaa !8
  %238 = load i32, ptr %X, align 4, !tbaa !8
  %xor393 = xor i32 %238, %237
  store i32 %xor393, ptr %X, align 4, !tbaa !8
  %239 = load i32, ptr %T, align 4, !tbaa !8
  %shl394 = shl i32 %239, 4
  %240 = load i32, ptr %Y, align 4, !tbaa !8
  %xor395 = xor i32 %240, %shl394
  store i32 %xor395, ptr %Y, align 4, !tbaa !8
  br label %do.cond396

do.cond396:                                       ; preds = %do.body359
  br label %do.end397

do.end397:                                        ; preds = %do.cond396
  %241 = load i32, ptr %Y, align 4, !tbaa !8
  %shr398 = lshr i32 %241, 24
  %and399 = and i32 %shr398, 255
  %conv400 = trunc i32 %and399 to i8
  %242 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx401 = getelementptr inbounds i8, ptr %242, i64 0
  store i8 %conv400, ptr %arrayidx401, align 1, !tbaa !10
  %243 = load i32, ptr %Y, align 4, !tbaa !8
  %shr402 = lshr i32 %243, 16
  %and403 = and i32 %shr402, 255
  %conv404 = trunc i32 %and403 to i8
  %244 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx405 = getelementptr inbounds i8, ptr %244, i64 1
  store i8 %conv404, ptr %arrayidx405, align 1, !tbaa !10
  %245 = load i32, ptr %Y, align 4, !tbaa !8
  %shr406 = lshr i32 %245, 8
  %and407 = and i32 %shr406, 255
  %conv408 = trunc i32 %and407 to i8
  %246 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx409 = getelementptr inbounds i8, ptr %246, i64 2
  store i8 %conv408, ptr %arrayidx409, align 1, !tbaa !10
  %247 = load i32, ptr %Y, align 4, !tbaa !8
  %and410 = and i32 %247, 255
  %conv411 = trunc i32 %and410 to i8
  %248 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx412 = getelementptr inbounds i8, ptr %248, i64 3
  store i8 %conv411, ptr %arrayidx412, align 1, !tbaa !10
  %249 = load i32, ptr %X, align 4, !tbaa !8
  %shr413 = lshr i32 %249, 24
  %and414 = and i32 %shr413, 255
  %conv415 = trunc i32 %and414 to i8
  %250 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx416 = getelementptr inbounds i8, ptr %250, i64 4
  store i8 %conv415, ptr %arrayidx416, align 1, !tbaa !10
  %251 = load i32, ptr %X, align 4, !tbaa !8
  %shr417 = lshr i32 %251, 16
  %and418 = and i32 %shr417, 255
  %conv419 = trunc i32 %and418 to i8
  %252 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx420 = getelementptr inbounds i8, ptr %252, i64 5
  store i8 %conv419, ptr %arrayidx420, align 1, !tbaa !10
  %253 = load i32, ptr %X, align 4, !tbaa !8
  %shr421 = lshr i32 %253, 8
  %and422 = and i32 %shr421, 255
  %conv423 = trunc i32 %and422 to i8
  %254 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx424 = getelementptr inbounds i8, ptr %254, i64 6
  store i8 %conv423, ptr %arrayidx424, align 1, !tbaa !10
  %255 = load i32, ptr %X, align 4, !tbaa !8
  %and425 = and i32 %255, 255
  %conv426 = trunc i32 %and425 to i8
  %256 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %arrayidx427 = getelementptr inbounds i8, ptr %256, i64 7
  store i8 %conv426, ptr %arrayidx427, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %SK) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %T) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %Y) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %X) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des3_crypt_cbc(ptr noundef %ctx, i32 noundef %mode, i64 noundef %length, ptr noundef %iv, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %length.addr = alloca i64, align 8
  %iv.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %temp = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  store i64 %length, ptr %length.addr, align 8, !tbaa !20
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  store i32 -110, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #6
  %0 = load i64, ptr %length.addr, align 8, !tbaa !20
  %rem = urem i64 %0, 8
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.then1
  %2 = load i64, ptr %length.addr, align 8, !tbaa !20
  %cmp2 = icmp ugt i64 %2, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %cmp3 = icmp slt i32 %3, 8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %idxprom4
  %9 = load i8, ptr %arrayidx5, align 1, !tbaa !10
  %conv6 = zext i8 %9 to i32
  %xor = xor i32 %conv, %conv6
  %conv7 = trunc i32 %xor to i8
  %10 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_des3_crypt_ecb(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %16 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp10 = icmp ne i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  br label %exit

if.end13:                                         ; preds = %for.end
  %17 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 8, i1 false)
  %19 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 8
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %add.ptr14 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %add.ptr14, ptr %output.addr, align 8, !tbaa !4
  %21 = load i64, ptr %length.addr, align 8, !tbaa !20
  %sub = sub i64 %21, 8
  store i64 %sub, ptr %length.addr, align 8, !tbaa !20
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  br label %if.end46

if.else:                                          ; preds = %if.end
  br label %while.cond15

while.cond15:                                     ; preds = %for.end40, %if.else
  %22 = load i64, ptr %length.addr, align 8, !tbaa !20
  %cmp16 = icmp ugt i64 %22, 0
  br i1 %cmp16, label %while.body18, label %while.end45

while.body18:                                     ; preds = %while.cond15
  %arraydecay = getelementptr inbounds [8 x i8], ptr %temp, i64 0, i64 0
  %23 = load ptr, ptr %input.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %23, i64 8, i1 false)
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call19 = call i32 @mbedtls_des3_crypt_ecb(ptr noundef %24, ptr noundef %25, ptr noundef %26)
  store i32 %call19, ptr %ret, align 4, !tbaa !8
  %27 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp20 = icmp ne i32 %27, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %while.body18
  br label %exit

if.end23:                                         ; preds = %while.body18
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc38, %if.end23
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %cmp25 = icmp slt i32 %28, 8
  br i1 %cmp25, label %for.body27, label %for.end40

for.body27:                                       ; preds = %for.cond24
  %29 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %29, i64 %idxprom28
  %31 = load i8, ptr %arrayidx29, align 1, !tbaa !10
  %conv30 = zext i8 %31 to i32
  %32 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %32, i64 %idxprom31
  %34 = load i8, ptr %arrayidx32, align 1, !tbaa !10
  %conv33 = zext i8 %34 to i32
  %xor34 = xor i32 %conv30, %conv33
  %conv35 = trunc i32 %xor34 to i8
  %35 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %35, i64 %idxprom36
  store i8 %conv35, ptr %arrayidx37, align 1, !tbaa !10
  br label %for.inc38

for.inc38:                                        ; preds = %for.body27
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %inc39 = add nsw i32 %37, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !8
  br label %for.cond24, !llvm.loop !31

for.end40:                                        ; preds = %for.cond24
  %38 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %arraydecay41 = getelementptr inbounds [8 x i8], ptr %temp, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %arraydecay41, i64 8, i1 false)
  %39 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %add.ptr42 = getelementptr inbounds i8, ptr %39, i64 8
  store ptr %add.ptr42, ptr %input.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %add.ptr43 = getelementptr inbounds i8, ptr %40, i64 8
  store ptr %add.ptr43, ptr %output.addr, align 8, !tbaa !4
  %41 = load i64, ptr %length.addr, align 8, !tbaa !20
  %sub44 = sub i64 %41, 8
  store i64 %sub44, ptr %length.addr, align 8, !tbaa !20
  br label %while.cond15, !llvm.loop !32

while.end45:                                      ; preds = %while.cond15
  br label %if.end46

if.end46:                                         ; preds = %while.end45, %while.end
  store i32 0, ptr %ret, align 4, !tbaa !8
  br label %exit

exit:                                             ; preds = %if.end46, %if.then22, %if.then12
  %42 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %42, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_des_self_test(i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_des_context, align 4
  %ctx3 = alloca %struct.mbedtls_des3_context, align 4
  %buf = alloca [8 x i8], align 1
  %prv = alloca [8 x i8], align 1
  %iv = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca [8 x i8], align 1
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  store i32 0, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 128, ptr %ctx) #6
  call void @llvm.lifetime.start.p0(i64 384, ptr %ctx3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %prv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv) #6
  call void @mbedtls_des_init(ptr noundef %ctx)
  call void @mbedtls_des3_init(ptr noundef %ctx3)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !8
  %shr = ashr i32 %1, 1
  store i32 %shr, ptr %u, align 4, !tbaa !8
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %and = and i32 %2, 1
  store i32 %and, ptr %v, align 4, !tbaa !8
  %3 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %u, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %4, 0
  %5 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 32, i32 51
  %6 = load i32, ptr %u, align 4, !tbaa !8
  %mul = mul nsw i32 %6, 56
  %add = add nsw i32 56, %mul
  %7 = load i32, ptr %v, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %7, 0
  %8 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, ptr @.str.1, ptr @.str.2
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %cond, i32 noundef %add, ptr noundef %cond4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 @des3_test_buf, i64 8, i1 false)
  %9 = load i32, ptr %i, align 4, !tbaa !8
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 5, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  %call5 = call i32 @mbedtls_des_setkey_dec(ptr noundef %ctx, ptr noundef @des3_test_keys)
  store i32 %call5, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %call7 = call i32 @mbedtls_des_setkey_enc(ptr noundef %ctx, ptr noundef @des3_test_keys)
  store i32 %call7, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %call9 = call i32 @mbedtls_des3_set2key_dec(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call9, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %call11 = call i32 @mbedtls_des3_set2key_enc(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call11, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %call13 = call i32 @mbedtls_des3_set3key_dec(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call13, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %call15 = call i32 @mbedtls_des3_set3key_enc(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call15, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %10 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp16 = icmp ne i32 %10, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %sw.epilog
  br label %exit

if.end18:                                         ; preds = %sw.epilog
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.end18
  %11 = load i32, ptr %j, align 4, !tbaa !8
  %cmp20 = icmp slt i32 %11, 100
  br i1 %cmp20, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond19
  %12 = load i32, ptr %u, align 4, !tbaa !8
  %cmp22 = icmp eq i32 %12, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body21
  %arraydecay24 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %call26 = call i32 @mbedtls_des_crypt_ecb(ptr noundef %ctx, ptr noundef %arraydecay24, ptr noundef %arraydecay25)
  store i32 %call26, ptr %ret, align 4, !tbaa !8
  br label %if.end30

if.else:                                          ; preds = %for.body21
  %arraydecay27 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %call29 = call i32 @mbedtls_des3_crypt_ecb(ptr noundef %ctx3, ptr noundef %arraydecay27, ptr noundef %arraydecay28)
  store i32 %call29, ptr %ret, align 4, !tbaa !8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then23
  %13 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp31 = icmp ne i32 %13, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  br label %exit

if.end33:                                         ; preds = %if.end30
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %14 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond19, !llvm.loop !33

for.end:                                          ; preds = %for.cond19
  %15 = load i32, ptr %v, align 4, !tbaa !8
  %cmp34 = icmp eq i32 %15, 0
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end
  %arraydecay35 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %16 = load i32, ptr %u, align 4, !tbaa !8
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [3 x [8 x i8]], ptr @des3_test_ecb_dec, i64 0, i64 %idxprom
  %arraydecay36 = getelementptr inbounds [8 x i8], ptr %arrayidx, i64 0, i64 0
  %call37 = call i32 @memcmp(ptr noundef %arraydecay35, ptr noundef %arraydecay36, i64 noundef 8) #7
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %17 = load i32, ptr %v, align 4, !tbaa !8
  %cmp39 = icmp ne i32 %17, 0
  br i1 %cmp39, label %land.lhs.true40, label %if.end52

land.lhs.true40:                                  ; preds = %lor.lhs.false
  %arraydecay41 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %18 = load i32, ptr %u, align 4, !tbaa !8
  %idxprom42 = sext i32 %18 to i64
  %arrayidx43 = getelementptr inbounds [3 x [8 x i8]], ptr @des3_test_ecb_enc, i64 0, i64 %idxprom42
  %arraydecay44 = getelementptr inbounds [8 x i8], ptr %arrayidx43, i64 0, i64 0
  %call45 = call i32 @memcmp(ptr noundef %arraydecay41, ptr noundef %arraydecay44, i64 noundef 8) #7
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end52

if.then47:                                        ; preds = %land.lhs.true40, %land.lhs.true
  %19 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp48 = icmp ne i32 %19, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then47
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then47
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %exit

if.end52:                                         ; preds = %land.lhs.true40, %lor.lhs.false
  %20 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp53 = icmp ne i32 %20, 0
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end52
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end52
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %inc58 = add nsw i32 %21, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !34

for.end59:                                        ; preds = %for.cond
  %22 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp60 = icmp ne i32 %22, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %for.end59
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %for.end59
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc180, %if.end63
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %cmp65 = icmp slt i32 %23, 6
  br i1 %cmp65, label %for.body66, label %for.end182

for.body66:                                       ; preds = %for.cond64
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %shr67 = ashr i32 %24, 1
  store i32 %shr67, ptr %u, align 4, !tbaa !8
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %and68 = and i32 %25, 1
  store i32 %and68, ptr %v, align 4, !tbaa !8
  %26 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp69 = icmp ne i32 %26, 0
  br i1 %cmp69, label %if.then70, label %if.end78

if.then70:                                        ; preds = %for.body66
  %27 = load i32, ptr %u, align 4, !tbaa !8
  %cmp71 = icmp eq i32 %27, 0
  %28 = zext i1 %cmp71 to i64
  %cond72 = select i1 %cmp71, i32 32, i32 51
  %29 = load i32, ptr %u, align 4, !tbaa !8
  %mul73 = mul nsw i32 %29, 56
  %add74 = add nsw i32 56, %mul73
  %30 = load i32, ptr %v, align 4, !tbaa !8
  %cmp75 = icmp eq i32 %30, 0
  %31 = zext i1 %cmp75 to i64
  %cond76 = select i1 %cmp75, ptr @.str.1, ptr @.str.2
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %cond72, i32 noundef %add74, ptr noundef %cond76)
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %for.body66
  %arraydecay79 = getelementptr inbounds [8 x i8], ptr %iv, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay79, ptr align 1 @des3_test_iv, i64 8, i1 false)
  %arraydecay80 = getelementptr inbounds [8 x i8], ptr %prv, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay80, ptr align 1 @des3_test_iv, i64 8, i1 false)
  %arraydecay81 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay81, ptr align 1 @des3_test_buf, i64 8, i1 false)
  %32 = load i32, ptr %i, align 4, !tbaa !8
  switch i32 %32, label %sw.default94 [
    i32 0, label %sw.bb82
    i32 1, label %sw.bb84
    i32 2, label %sw.bb86
    i32 3, label %sw.bb88
    i32 4, label %sw.bb90
    i32 5, label %sw.bb92
  ]

sw.bb82:                                          ; preds = %if.end78
  %call83 = call i32 @mbedtls_des_setkey_dec(ptr noundef %ctx, ptr noundef @des3_test_keys)
  store i32 %call83, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog95

sw.bb84:                                          ; preds = %if.end78
  %call85 = call i32 @mbedtls_des_setkey_enc(ptr noundef %ctx, ptr noundef @des3_test_keys)
  store i32 %call85, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog95

sw.bb86:                                          ; preds = %if.end78
  %call87 = call i32 @mbedtls_des3_set2key_dec(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call87, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog95

sw.bb88:                                          ; preds = %if.end78
  %call89 = call i32 @mbedtls_des3_set2key_enc(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call89, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog95

sw.bb90:                                          ; preds = %if.end78
  %call91 = call i32 @mbedtls_des3_set3key_dec(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call91, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog95

sw.bb92:                                          ; preds = %if.end78
  %call93 = call i32 @mbedtls_des3_set3key_enc(ptr noundef %ctx3, ptr noundef @des3_test_keys)
  store i32 %call93, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog95

sw.default94:                                     ; preds = %if.end78
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190

sw.epilog95:                                      ; preds = %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.bb82
  %33 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp96 = icmp ne i32 %33, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %sw.epilog95
  br label %exit

if.end98:                                         ; preds = %sw.epilog95
  %34 = load i32, ptr %v, align 4, !tbaa !8
  %cmp99 = icmp eq i32 %34, 0
  br i1 %cmp99, label %if.then100, label %if.else122

if.then100:                                       ; preds = %if.end98
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc119, %if.then100
  %35 = load i32, ptr %j, align 4, !tbaa !8
  %cmp102 = icmp slt i32 %35, 100
  br i1 %cmp102, label %for.body103, label %for.end121

for.body103:                                      ; preds = %for.cond101
  %36 = load i32, ptr %u, align 4, !tbaa !8
  %cmp104 = icmp eq i32 %36, 0
  br i1 %cmp104, label %if.then105, label %if.else110

if.then105:                                       ; preds = %for.body103
  %37 = load i32, ptr %v, align 4, !tbaa !8
  %arraydecay106 = getelementptr inbounds [8 x i8], ptr %iv, i64 0, i64 0
  %arraydecay107 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay108 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %call109 = call i32 @mbedtls_des_crypt_cbc(ptr noundef %ctx, i32 noundef %37, i64 noundef 8, ptr noundef %arraydecay106, ptr noundef %arraydecay107, ptr noundef %arraydecay108)
  store i32 %call109, ptr %ret, align 4, !tbaa !8
  br label %if.end115

if.else110:                                       ; preds = %for.body103
  %38 = load i32, ptr %v, align 4, !tbaa !8
  %arraydecay111 = getelementptr inbounds [8 x i8], ptr %iv, i64 0, i64 0
  %arraydecay112 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay113 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %call114 = call i32 @mbedtls_des3_crypt_cbc(ptr noundef %ctx3, i32 noundef %38, i64 noundef 8, ptr noundef %arraydecay111, ptr noundef %arraydecay112, ptr noundef %arraydecay113)
  store i32 %call114, ptr %ret, align 4, !tbaa !8
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.then105
  %39 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp116 = icmp ne i32 %39, 0
  br i1 %cmp116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end115
  br label %exit

if.end118:                                        ; preds = %if.end115
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %inc120 = add nsw i32 %40, 1
  store i32 %inc120, ptr %j, align 4, !tbaa !8
  br label %for.cond101, !llvm.loop !35

for.end121:                                       ; preds = %for.cond101
  br label %if.end152

if.else122:                                       ; preds = %if.end98
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc147, %if.else122
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %cmp124 = icmp slt i32 %41, 100
  br i1 %cmp124, label %for.body125, label %for.end149

for.body125:                                      ; preds = %for.cond123
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %42 = load i32, ptr %u, align 4, !tbaa !8
  %cmp126 = icmp eq i32 %42, 0
  br i1 %cmp126, label %if.then127, label %if.else132

if.then127:                                       ; preds = %for.body125
  %43 = load i32, ptr %v, align 4, !tbaa !8
  %arraydecay128 = getelementptr inbounds [8 x i8], ptr %iv, i64 0, i64 0
  %arraydecay129 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay130 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %call131 = call i32 @mbedtls_des_crypt_cbc(ptr noundef %ctx, i32 noundef %43, i64 noundef 8, ptr noundef %arraydecay128, ptr noundef %arraydecay129, ptr noundef %arraydecay130)
  store i32 %call131, ptr %ret, align 4, !tbaa !8
  br label %if.end137

if.else132:                                       ; preds = %for.body125
  %44 = load i32, ptr %v, align 4, !tbaa !8
  %arraydecay133 = getelementptr inbounds [8 x i8], ptr %iv, i64 0, i64 0
  %arraydecay134 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay135 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %call136 = call i32 @mbedtls_des3_crypt_cbc(ptr noundef %ctx3, i32 noundef %44, i64 noundef 8, ptr noundef %arraydecay133, ptr noundef %arraydecay134, ptr noundef %arraydecay135)
  store i32 %call136, ptr %ret, align 4, !tbaa !8
  br label %if.end137

if.end137:                                        ; preds = %if.else132, %if.then127
  %45 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp138 = icmp ne i32 %45, 0
  br i1 %cmp138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end137
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end140:                                        ; preds = %if.end137
  %arraydecay141 = getelementptr inbounds [8 x i8], ptr %tmp, i64 0, i64 0
  %arraydecay142 = getelementptr inbounds [8 x i8], ptr %prv, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay141, ptr align 1 %arraydecay142, i64 8, i1 false)
  %arraydecay143 = getelementptr inbounds [8 x i8], ptr %prv, i64 0, i64 0
  %arraydecay144 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay143, ptr align 1 %arraydecay144, i64 8, i1 false)
  %arraydecay145 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay146 = getelementptr inbounds [8 x i8], ptr %tmp, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay145, ptr align 1 %arraydecay146, i64 8, i1 false)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %if.end140
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup190 [
    i32 0, label %cleanup.cont
    i32 6, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc147

for.inc147:                                       ; preds = %cleanup.cont
  %46 = load i32, ptr %j, align 4, !tbaa !8
  %inc148 = add nsw i32 %46, 1
  store i32 %inc148, ptr %j, align 4, !tbaa !8
  br label %for.cond123, !llvm.loop !36

for.end149:                                       ; preds = %for.cond123
  %arraydecay150 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %arraydecay151 = getelementptr inbounds [8 x i8], ptr %prv, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay150, ptr align 1 %arraydecay151, i64 8, i1 false)
  br label %if.end152

if.end152:                                        ; preds = %for.end149, %for.end121
  %47 = load i32, ptr %v, align 4, !tbaa !8
  %cmp153 = icmp eq i32 %47, 0
  br i1 %cmp153, label %land.lhs.true154, label %lor.lhs.false161

land.lhs.true154:                                 ; preds = %if.end152
  %arraydecay155 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %48 = load i32, ptr %u, align 4, !tbaa !8
  %idxprom156 = sext i32 %48 to i64
  %arrayidx157 = getelementptr inbounds [3 x [8 x i8]], ptr @des3_test_cbc_dec, i64 0, i64 %idxprom156
  %arraydecay158 = getelementptr inbounds [8 x i8], ptr %arrayidx157, i64 0, i64 0
  %call159 = call i32 @memcmp(ptr noundef %arraydecay155, ptr noundef %arraydecay158, i64 noundef 8) #7
  %cmp160 = icmp ne i32 %call159, 0
  br i1 %cmp160, label %if.then170, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %land.lhs.true154, %if.end152
  %49 = load i32, ptr %v, align 4, !tbaa !8
  %cmp162 = icmp ne i32 %49, 0
  br i1 %cmp162, label %land.lhs.true163, label %if.end175

land.lhs.true163:                                 ; preds = %lor.lhs.false161
  %arraydecay164 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0
  %50 = load i32, ptr %u, align 4, !tbaa !8
  %idxprom165 = sext i32 %50 to i64
  %arrayidx166 = getelementptr inbounds [3 x [8 x i8]], ptr @des3_test_cbc_enc, i64 0, i64 %idxprom165
  %arraydecay167 = getelementptr inbounds [8 x i8], ptr %arrayidx166, i64 0, i64 0
  %call168 = call i32 @memcmp(ptr noundef %arraydecay164, ptr noundef %arraydecay167, i64 noundef 8) #7
  %cmp169 = icmp ne i32 %call168, 0
  br i1 %cmp169, label %if.then170, label %if.end175

if.then170:                                       ; preds = %land.lhs.true163, %land.lhs.true154
  %51 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp171 = icmp ne i32 %51, 0
  br i1 %cmp171, label %if.then172, label %if.end174

if.then172:                                       ; preds = %if.then170
  %call173 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %if.then170
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %exit

if.end175:                                        ; preds = %land.lhs.true163, %lor.lhs.false161
  %52 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp176 = icmp ne i32 %52, 0
  br i1 %cmp176, label %if.then177, label %if.end179

if.then177:                                       ; preds = %if.end175
  %call178 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %if.end175
  br label %for.inc180

for.inc180:                                       ; preds = %if.end179
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %inc181 = add nsw i32 %53, 1
  store i32 %inc181, ptr %i, align 4, !tbaa !8
  br label %for.cond64, !llvm.loop !37

for.end182:                                       ; preds = %for.cond64
  %54 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp183 = icmp ne i32 %54, 0
  br i1 %cmp183, label %if.then184, label %if.end186

if.then184:                                       ; preds = %for.end182
  %call185 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %for.end182
  br label %exit

exit:                                             ; preds = %if.end186, %cleanup, %if.end174, %if.then117, %if.then97, %if.end51, %if.then32, %if.then17
  call void @mbedtls_des_free(ptr noundef %ctx)
  call void @mbedtls_des3_free(ptr noundef %ctx3)
  %55 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp187 = icmp ne i32 %55, 0
  br i1 %cmp187, label %if.then188, label %if.end189

if.then188:                                       ; preds = %exit
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %exit
  %56 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190

cleanup190:                                       ; preds = %if.end189, %cleanup, %sw.default94, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %prv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6
  call void @llvm.lifetime.end.p0(i64 384, ptr %ctx3) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr %ctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}

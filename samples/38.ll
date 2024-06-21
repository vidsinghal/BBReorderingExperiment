; ModuleID = 'samples/38.bc'
source_filename = "crypto/rsa/rsa_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_meth_st = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"crypto/rsa/rsa_meth.c\00", align 1
@__func__.RSA_meth_new = private unnamed_addr constant [13 x i8] c"RSA_meth_new\00", align 1
@__func__.RSA_meth_dup = private unnamed_addr constant [13 x i8] c"RSA_meth_dup\00", align 1
@__func__.RSA_meth_set1_name = private unnamed_addr constant [19 x i8] c"RSA_meth_set1_name\00", align 1

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_new(ptr noundef %name, i32 noundef %flags) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %meth = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %meth) #4
  %call = call noalias ptr @CRYPTO_zalloc(i64 noundef 120, ptr noundef @.str, i32 noundef 22)
  store ptr %call, ptr %meth, align 8, !tbaa !4
  %0 = load ptr, ptr %meth, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %meth, align 8, !tbaa !4
  %flags1 = getelementptr inbounds %struct.rsa_meth_st, ptr %2, i32 0, i32 9
  store i32 %1, ptr %flags1, align 8, !tbaa !10
  %3 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call2 = call noalias ptr @CRYPTO_strdup(ptr noundef %3, ptr noundef @.str, i32 noundef 27)
  %4 = load ptr, ptr %meth, align 8, !tbaa !4
  %name3 = getelementptr inbounds %struct.rsa_meth_st, ptr %4, i32 0, i32 0
  store ptr %call2, ptr %name3, align 8, !tbaa !12
  %5 = load ptr, ptr %meth, align 8, !tbaa !4
  %name4 = getelementptr inbounds %struct.rsa_meth_st, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %name4, align 8, !tbaa !12
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %7 = load ptr, ptr %meth, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %meth, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %8, ptr noundef @.str, i32 noundef 31)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 34, ptr noundef @__func__.RSA_meth_new)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %meth) #4
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) #2

declare noalias ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #2

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @RSA_meth_free(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %name, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %2, ptr noundef @.str, i32 noundef 41)
  %3 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %3, ptr noundef @.str, i32 noundef 42)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_dup(ptr noundef %meth) #0 {
entry:
  %retval = alloca ptr, align 8
  %meth.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4
  %call = call noalias ptr @CRYPTO_malloc(i64 noundef 120, ptr noundef @.str, i32 noundef 48)
  store ptr %call, ptr %ret, align 8, !tbaa !4
  %0 = load ptr, ptr %ret, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ret, align 8, !tbaa !4
  %2 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 120, i1 false)
  %3 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rsa_meth_st, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %name, align 8, !tbaa !12
  %call1 = call noalias ptr @CRYPTO_strdup(ptr noundef %4, ptr noundef @.str, i32 noundef 53)
  %5 = load ptr, ptr %ret, align 8, !tbaa !4
  %name2 = getelementptr inbounds %struct.rsa_meth_st, ptr %5, i32 0, i32 0
  store ptr %call1, ptr %name2, align 8, !tbaa !12
  %6 = load ptr, ptr %ret, align 8, !tbaa !4
  %name3 = getelementptr inbounds %struct.rsa_meth_st, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %name3, align 8, !tbaa !12
  %cmp4 = icmp ne ptr %7, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %ret, align 8, !tbaa !4
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %ret, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %9, ptr noundef @.str, i32 noundef 57)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 60, ptr noundef @__func__.RSA_meth_dup)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get0_name(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %name, align 8, !tbaa !12
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set1_name(ptr noundef %meth, ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %meth.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %tmpname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpname) #4
  %0 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call = call noalias ptr @CRYPTO_strdup(ptr noundef %0, ptr noundef @.str, i32 noundef 71)
  store ptr %call, ptr %tmpname, align 8, !tbaa !4
  %1 = load ptr, ptr %tmpname, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 74, ptr noundef @__func__.RSA_meth_set1_name)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %name1 = getelementptr inbounds %struct.rsa_meth_st, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %name1, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %3, ptr noundef @.str, i32 noundef 78)
  %4 = load ptr, ptr %tmpname, align 8, !tbaa !4
  %5 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %name2 = getelementptr inbounds %struct.rsa_meth_st, ptr %5, i32 0, i32 0
  store ptr %4, ptr %name2, align 8, !tbaa !12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpname) #4
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_get_flags(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %flags, align 8, !tbaa !10
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_flags(ptr noundef %meth, i32 noundef %flags) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  %0 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %flags1 = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 9
  store i32 %0, ptr %flags1, align 8, !tbaa !10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get0_app_data(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %app_data = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %app_data, align 8, !tbaa !13
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set0_app_data(ptr noundef %meth, ptr noundef %app_data) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %app_data.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %app_data, ptr %app_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %app_data.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %app_data1 = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 10
  store ptr %0, ptr %app_data1, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_pub_enc(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_pub_enc = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %rsa_pub_enc, align 8, !tbaa !14
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_pub_enc(ptr noundef %meth, ptr noundef %pub_enc) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %pub_enc.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %pub_enc, ptr %pub_enc.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pub_enc.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_pub_enc = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 1
  store ptr %0, ptr %rsa_pub_enc, align 8, !tbaa !14
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_pub_dec(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_pub_dec = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %rsa_pub_dec, align 8, !tbaa !15
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_pub_dec(ptr noundef %meth, ptr noundef %pub_dec) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %pub_dec.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %pub_dec, ptr %pub_dec.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pub_dec.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_pub_dec = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 2
  store ptr %0, ptr %rsa_pub_dec, align 8, !tbaa !15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_priv_enc(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_priv_enc = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %rsa_priv_enc, align 8, !tbaa !16
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_priv_enc(ptr noundef %meth, ptr noundef %priv_enc) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %priv_enc.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %priv_enc, ptr %priv_enc.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %priv_enc.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_priv_enc = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 3
  store ptr %0, ptr %rsa_priv_enc, align 8, !tbaa !16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_priv_dec(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_priv_dec = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %rsa_priv_dec, align 8, !tbaa !17
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_priv_dec(ptr noundef %meth, ptr noundef %priv_dec) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %priv_dec.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %priv_dec, ptr %priv_dec.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %priv_dec.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_priv_dec = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 4
  store ptr %0, ptr %rsa_priv_dec, align 8, !tbaa !17
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_mod_exp(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_mod_exp = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %rsa_mod_exp, align 8, !tbaa !18
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_mod_exp(ptr noundef %meth, ptr noundef %mod_exp) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %mod_exp.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %mod_exp, ptr %mod_exp.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %mod_exp.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_mod_exp = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 5
  store ptr %0, ptr %rsa_mod_exp, align 8, !tbaa !18
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_bn_mod_exp(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %bn_mod_exp = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %bn_mod_exp, align 8, !tbaa !19
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_bn_mod_exp(ptr noundef %meth, ptr noundef %bn_mod_exp) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %bn_mod_exp.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %bn_mod_exp, ptr %bn_mod_exp.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bn_mod_exp.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %bn_mod_exp1 = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 6
  store ptr %0, ptr %bn_mod_exp1, align 8, !tbaa !19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_init(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %init, align 8, !tbaa !20
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_init(ptr noundef %meth, ptr noundef %init) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %init.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %init, ptr %init.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %init.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %init1 = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 7
  store ptr %0, ptr %init1, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_finish(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %finish = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %finish, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_finish(ptr noundef %meth, ptr noundef %finish) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %finish.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %finish, ptr %finish.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %finish.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %finish1 = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 8
  store ptr %0, ptr %finish1, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_sign(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_sign = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %rsa_sign, align 8, !tbaa !22
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_sign(ptr noundef %meth, ptr noundef %sign) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %sign.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %sign, ptr %sign.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sign.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_sign = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 11
  store ptr %0, ptr %rsa_sign, align 8, !tbaa !22
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_verify(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_verify = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %rsa_verify, align 8, !tbaa !23
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_verify(ptr noundef %meth, ptr noundef %verify) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %verify.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %verify, ptr %verify.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %verify.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_verify = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 12
  store ptr %0, ptr %rsa_verify, align 8, !tbaa !23
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_keygen(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_keygen = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %rsa_keygen, align 8, !tbaa !24
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_keygen(ptr noundef %meth, ptr noundef %keygen) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %keygen.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %keygen, ptr %keygen.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %keygen.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_keygen = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 13
  store ptr %0, ptr %rsa_keygen, align 8, !tbaa !24
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @RSA_meth_get_multi_prime_keygen(ptr noundef %meth) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_multi_prime_keygen = getelementptr inbounds %struct.rsa_meth_st, ptr %0, i32 0, i32 14
  %1 = load ptr, ptr %rsa_multi_prime_keygen, align 8, !tbaa !25
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @RSA_meth_set_multi_prime_keygen(ptr noundef %meth, ptr noundef %keygen) #0 {
entry:
  %meth.addr = alloca ptr, align 8
  %keygen.addr = alloca ptr, align 8
  store ptr %meth, ptr %meth.addr, align 8, !tbaa !4
  store ptr %keygen, ptr %keygen.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %keygen.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %meth.addr, align 8, !tbaa !4
  %rsa_multi_prime_keygen = getelementptr inbounds %struct.rsa_meth_st, ptr %1, i32 0, i32 14
  store ptr %0, ptr %rsa_multi_prime_keygen, align 8, !tbaa !25
  ret i32 1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !9, i64 72}
!11 = !{!"rsa_meth_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112}
!12 = !{!11, !5, i64 0}
!13 = !{!11, !5, i64 80}
!14 = !{!11, !5, i64 8}
!15 = !{!11, !5, i64 16}
!16 = !{!11, !5, i64 24}
!17 = !{!11, !5, i64 32}
!18 = !{!11, !5, i64 40}
!19 = !{!11, !5, i64 48}
!20 = !{!11, !5, i64 56}
!21 = !{!11, !5, i64 64}
!22 = !{!11, !5, i64 88}
!23 = !{!11, !5, i64 96}
!24 = !{!11, !5, i64 104}
!25 = !{!11, !5, i64 112}

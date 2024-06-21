; ModuleID = 'samples/598.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_pkey = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.s2n_rsa_key }
%struct.s2n_rsa_key = type { ptr }
%struct.s2n_result = type { i32 }
%struct.s2n_blob = type { ptr, i32, i32, i8 }

@.str = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:54\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:56\00", align 1
@.str.2 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:61\00", align 1
@.str.3 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:62\00", align 1
@.str.4 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:69\00", align 1
@.str.5 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:70\00", align 1
@.str.6 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:71\00", align 1
@.str.7 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:81\00", align 1
@.str.8 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:89\00", align 1
@.str.9 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:90\00", align 1
@.str.10 = private unnamed_addr constant [213 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:97\00", align 1
@.str.11 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:104\00", align 1
@.str.12 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:111\00", align 1
@.str.13 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:113\00", align 1
@.str.14 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:154\00", align 1
@.str.15 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:159\00", align 1
@.str.16 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:189\00", align 1
@.str.17 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:205\00", align 1
@.str.18 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:213\00", align 1
@.str.19 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:216\00", align 1
@.str.20 = private unnamed_addr constant [214 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_pkey.c:248\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_zero_init(ptr noundef %pkey) #0 {
entry:
  %pkey.addr = alloca ptr, align 8
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %pkey1 = getelementptr inbounds %struct.s2n_pkey, ptr %0, i32 0, i32 1
  store ptr null, ptr %pkey1, align 8, !tbaa !8
  %1 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.s2n_pkey, ptr %1, i32 0, i32 2
  store ptr null, ptr %size, align 8, !tbaa !10
  %2 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %sign = getelementptr inbounds %struct.s2n_pkey, ptr %2, i32 0, i32 3
  store ptr null, ptr %sign, align 8, !tbaa !11
  %3 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %verify = getelementptr inbounds %struct.s2n_pkey, ptr %3, i32 0, i32 4
  store ptr null, ptr %verify, align 8, !tbaa !12
  %4 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %encrypt = getelementptr inbounds %struct.s2n_pkey, ptr %4, i32 0, i32 5
  store ptr null, ptr %encrypt, align 8, !tbaa !13
  %5 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %decrypt = getelementptr inbounds %struct.s2n_pkey, ptr %5, i32 0, i32 6
  store ptr null, ptr %decrypt, align 8, !tbaa !14
  %6 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %match = getelementptr inbounds %struct.s2n_pkey, ptr %6, i32 0, i32 7
  store ptr null, ptr %match, align 8, !tbaa !15
  %7 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %free = getelementptr inbounds %struct.s2n_pkey, ptr %7, i32 0, i32 8
  store ptr null, ptr %free, align 8, !tbaa !16
  %8 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %check_key = getelementptr inbounds %struct.s2n_pkey, ptr %8, i32 0, i32 9
  store ptr null, ptr %check_key, align 8, !tbaa !17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_setup_for_type(ptr noundef %pkey, i32 noundef %pkey_type) #0 {
entry:
  %retval = alloca i32, align 4
  %pkey.addr = alloca ptr, align 8
  %pkey_type.addr = alloca i32, align 4
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store i32 %pkey_type, ptr %pkey_type.addr, align 4, !tbaa !18
  %0 = load i32, ptr %pkey_type.addr, align 4, !tbaa !18
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 -1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %call = call i32 @s2n_rsa_pkey_init(ptr noundef %1)
  store i32 %call, ptr %retval, align 4
  br label %do.end17

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %call2 = call i32 @s2n_ecdsa_pkey_init(ptr noundef %2)
  store i32 %call2, ptr %retval, align 4
  br label %do.end17

sw.bb3:                                           ; preds = %entry
  %3 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %call4 = call i32 @s2n_rsa_pss_pkey_init(ptr noundef %3)
  store i32 %call4, ptr %retval, align 4
  br label %do.end17

sw.bb5:                                           ; preds = %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb5
  br label %do.body6

do.body6:                                         ; preds = %do.body
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str, ptr %4, align 8, !tbaa !4
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544363, ptr %5, align 4, !tbaa !19
  %call7 = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body6
  br label %do.body8

do.body8:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %do.end17

do.end9:                                          ; No predecessors!
  br label %do.end10

do.end10:                                         ; preds = %do.end9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %entry
  br label %do.body11

do.body11:                                        ; preds = %sw.epilog
  br label %do.body12

do.body12:                                        ; preds = %do.body11
  %6 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %6, align 8, !tbaa !4
  %7 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544363, ptr %7, align 4, !tbaa !19
  %call13 = call i32 @s2n_calculate_stacktrace()
  br label %do.end14

do.end14:                                         ; preds = %do.body12
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  store i32 -1, ptr %retval, align 4
  br label %do.end17

do.end16:                                         ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %sw.bb, %sw.bb1, %sw.bb3, %do.body8, %do.body15, %do.end16
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @s2n_rsa_pkey_init(ptr noundef) #1

declare i32 @s2n_ecdsa_pkey_init(ptr noundef) #1

declare i32 @s2n_rsa_pss_pkey_init(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #2

declare i32 @s2n_calculate_stacktrace() #1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_check_key_exists(ptr noundef %pkey) #0 {
entry:
  %retval = alloca i32, align 4
  %pkey.addr = alloca ptr, align 8
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %pkey1 = getelementptr inbounds %struct.s2n_pkey, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pkey1, align 8, !tbaa !8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %if.then
  br label %do.body3

do.body3:                                         ; preds = %do.body2
  %2 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.2, ptr %2, align 8, !tbaa !4
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %3, align 4, !tbaa !19
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body3
  br label %do.body4

do.body4:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %return

do.end5:                                          ; No predecessors!
  br label %do.end6

do.end6:                                          ; preds = %do.end5
  br label %if.end

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7

do.end7:                                          ; preds = %if.end
  br label %do.body8

do.body8:                                         ; preds = %do.end7
  %4 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %check_key = getelementptr inbounds %struct.s2n_pkey, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %check_key, align 8, !tbaa !17
  %cmp9 = icmp ne ptr %5, null
  br i1 %cmp9, label %if.end18, label %if.then10

if.then10:                                        ; preds = %do.body8
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.body12

do.body12:                                        ; preds = %do.body11
  %6 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.3, ptr %6, align 8, !tbaa !4
  %7 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %7, align 4, !tbaa !19
  %call13 = call i32 @s2n_calculate_stacktrace()
  br label %do.end14

do.end14:                                         ; preds = %do.body12
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  store i32 -1, ptr %retval, align 4
  br label %return

do.end16:                                         ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body8
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  %8 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %check_key20 = getelementptr inbounds %struct.s2n_pkey, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %check_key20, align 8, !tbaa !17
  %10 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %call21 = call i32 %9(ptr noundef %10)
  store i32 %call21, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end19, %do.body15, %do.body4
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_size(ptr noundef %pkey, ptr noundef %size_out) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %pkey.addr = alloca ptr, align 8
  %size_out.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store ptr %size_out, ptr %size_out.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.4, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !19
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !21
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %3 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.s2n_pkey, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %size, align 8, !tbaa !10
  %cmp8 = icmp ne ptr %4, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.5, ptr %5, align 8, !tbaa !4
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %6, align 4, !tbaa !19
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !21
  br label %return

do.end16:                                         ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body7
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %7 = load ptr, ptr %size_out.addr, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %7, null
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.body20
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %8 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.6, ptr %8, align 8, !tbaa !4
  %9 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %9, align 4, !tbaa !19
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.end26

do.end26:                                         ; preds = %do.body24
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %__error_signal28 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal28, align 4, !tbaa !21
  br label %return

do.end29:                                         ; No predecessors!
  br label %do.end30

do.end30:                                         ; preds = %do.end29
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.body20
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  br label %do.body33

do.body33:                                        ; preds = %do.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #5
  %10 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %size34 = getelementptr inbounds %struct.s2n_pkey, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %size34, align 8, !tbaa !10
  %12 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %size_out.addr, align 8, !tbaa !4
  %call35 = call i32 %11(ptr noundef %12, ptr noundef %13)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call35, ptr %coerce.dive, align 4
  %coerce.dive36 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %14 = load i32, ptr %coerce.dive36, align 4
  %call37 = call zeroext i1 @s2n_result_is_ok(i32 %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #5
  br i1 %call37, label %if.end42, label %if.then38

if.then38:                                        ; preds = %do.body33
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  %__error_signal40 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal40, align 4, !tbaa !21
  br label %return

do.end41:                                         ; No predecessors!
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %do.body33
  br label %do.end43

do.end43:                                         ; preds = %if.end42
  %__error_signal44 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal44, align 4, !tbaa !21
  br label %return

return:                                           ; preds = %do.end43, %do.body39, %do.body27, %do.body14, %do.body3
  %coerce.dive45 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %15 = load i32, ptr %coerce.dive45, align 4
  ret i32 %15
}

declare zeroext i1 @s2n_result_is_ok(i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_sign(ptr noundef %pkey, i32 noundef %sig_alg, ptr noundef %digest, ptr noundef %signature) #0 {
entry:
  %retval = alloca i32, align 4
  %pkey.addr = alloca ptr, align 8
  %sig_alg.addr = alloca i32, align 4
  %digest.addr = alloca ptr, align 8
  %signature.addr = alloca ptr, align 8
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store i32 %sig_alg, ptr %sig_alg.addr, align 4, !tbaa !18
  store ptr %digest, ptr %digest.addr, align 8, !tbaa !4
  store ptr %signature, ptr %signature.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %sign = getelementptr inbounds %struct.s2n_pkey, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %sign, align 8, !tbaa !11
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %2 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.7, ptr %2, align 8, !tbaa !4
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %3, align 4, !tbaa !19
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %sign7 = getelementptr inbounds %struct.s2n_pkey, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %sign7, align 8, !tbaa !11
  %6 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %7 = load i32, ptr %sig_alg.addr, align 4, !tbaa !18
  %8 = load ptr, ptr %digest.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %signature.addr, align 8, !tbaa !4
  %call8 = call i32 %5(ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end6, %do.body3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_verify(ptr noundef %pkey, i32 noundef %sig_alg, ptr noundef %digest, ptr noundef %signature) #0 {
entry:
  %retval = alloca i32, align 4
  %pkey.addr = alloca ptr, align 8
  %sig_alg.addr = alloca i32, align 4
  %digest.addr = alloca ptr, align 8
  %signature.addr = alloca ptr, align 8
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store i32 %sig_alg, ptr %sig_alg.addr, align 4, !tbaa !18
  store ptr %digest, ptr %digest.addr, align 8, !tbaa !4
  store ptr %signature, ptr %signature.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.8, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !19
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %3 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %verify = getelementptr inbounds %struct.s2n_pkey, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %verify, align 8, !tbaa !12
  %cmp8 = icmp ne ptr %4, null
  br i1 %cmp8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.9, ptr %5, align 8, !tbaa !4
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %6, align 4, !tbaa !19
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  store i32 -1, ptr %retval, align 4
  br label %return

do.end15:                                         ; No predecessors!
  br label %do.end16

do.end16:                                         ; preds = %do.end15
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.body7
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %7 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %verify19 = getelementptr inbounds %struct.s2n_pkey, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %verify19, align 8, !tbaa !12
  %9 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %10 = load i32, ptr %sig_alg.addr, align 4, !tbaa !18
  %11 = load ptr, ptr %digest.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %signature.addr, align 8, !tbaa !4
  %call20 = call i32 %8(ptr noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12)
  store i32 %call20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end18, %do.body14, %do.body3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_encrypt(ptr noundef %pkey, ptr noundef %in, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %pkey.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %encrypt = getelementptr inbounds %struct.s2n_pkey, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %encrypt, align 8, !tbaa !13
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %2 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.10, ptr %2, align 8, !tbaa !4
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %3, align 4, !tbaa !19
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %encrypt7 = getelementptr inbounds %struct.s2n_pkey, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %encrypt7, align 8, !tbaa !13
  %6 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call8 = call i32 %5(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end6, %do.body3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_decrypt(ptr noundef %pkey, ptr noundef %in, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %pkey.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %decrypt = getelementptr inbounds %struct.s2n_pkey, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %decrypt, align 8, !tbaa !14
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %2 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.11, ptr %2, align 8, !tbaa !4
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %3, align 4, !tbaa !19
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %decrypt7 = getelementptr inbounds %struct.s2n_pkey, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %decrypt7, align 8, !tbaa !14
  %6 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call8 = call i32 %5(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end6, %do.body3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_match(ptr noundef %pub_key, ptr noundef %priv_key) #0 {
entry:
  %retval = alloca i32, align 4
  %pub_key.addr = alloca ptr, align 8
  %priv_key.addr = alloca ptr, align 8
  store ptr %pub_key, ptr %pub_key.addr, align 8, !tbaa !4
  store ptr %priv_key, ptr %priv_key.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %match = getelementptr inbounds %struct.s2n_pkey, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %match, align 8, !tbaa !15
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %2 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.12, ptr %2, align 8, !tbaa !4
  %3 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %3, align 4, !tbaa !19
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %4 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %match8 = getelementptr inbounds %struct.s2n_pkey, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %match8, align 8, !tbaa !15
  %6 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %match9 = getelementptr inbounds %struct.s2n_pkey, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %match9, align 8, !tbaa !15
  %cmp10 = icmp ne ptr %5, %7
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %do.body7
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  br label %do.body13

do.body13:                                        ; preds = %do.body12
  %8 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.13, ptr %8, align 8, !tbaa !4
  %9 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762068, ptr %9, align 4, !tbaa !19
  %call14 = call i32 @s2n_calculate_stacktrace()
  br label %do.end15

do.end15:                                         ; preds = %do.body13
  store i32 -1, ptr %retval, align 4
  br label %return

do.end16:                                         ; No predecessors!
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %do.body7
  br label %do.end18

do.end18:                                         ; preds = %if.end17
  %10 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %match19 = getelementptr inbounds %struct.s2n_pkey, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %match19, align 8, !tbaa !15
  %12 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %call20 = call i32 %11(ptr noundef %12, ptr noundef %13)
  store i32 %call20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end18, %do.end15, %do.body3
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_pkey_free(ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %free = getelementptr inbounds %struct.s2n_pkey, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %free, align 8, !tbaa !16
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %free2 = getelementptr inbounds %struct.s2n_pkey, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %free2, align 8, !tbaa !16
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 %4(ptr noundef %5)
  %cmp3 = icmp sgt i32 %call, -1
  br i1 %cmp3, label %if.end, label %if.then4

if.then4:                                         ; preds = %do.body
  br label %do.body5

do.body5:                                         ; preds = %if.then4
  store i32 -1, ptr %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %do.end6, %land.lhs.true, %entry
  %6 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.s2n_pkey, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pkey, align 8, !tbaa !8
  %cmp8 = icmp ne ptr %7, null
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %8 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %pkey10 = getelementptr inbounds %struct.s2n_pkey, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pkey10, align 8, !tbaa !8
  call void @EVP_PKEY_free(ptr noundef %9)
  %10 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %pkey11 = getelementptr inbounds %struct.s2n_pkey, ptr %10, i32 0, i32 1
  store ptr null, ptr %pkey11, align 8, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %do.body5
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

declare void @EVP_PKEY_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_asn1der_to_private_key(ptr noundef %priv_key, ptr noundef %asn1der, i32 noundef %type_hint) #0 {
entry:
  %retval = alloca i32, align 4
  %priv_key.addr = alloca ptr, align 8
  %asn1der.addr = alloca ptr, align 8
  %type_hint.addr = alloca i32, align 4
  %key_to_parse = alloca ptr, align 8
  %evp_private_key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %parsed_len = alloca i32, align 4
  %type = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %priv_key, ptr %priv_key.addr, align 8, !tbaa !4
  store ptr %asn1der, ptr %asn1der.addr, align 8, !tbaa !4
  store i32 %type_hint, ptr %type_hint.addr, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_to_parse) #5
  %0 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.s2n_blob, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %data, align 8, !tbaa !23
  store ptr %1, ptr %key_to_parse, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %evp_private_key) #5
  %2 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.s2n_blob, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %size, align 8, !tbaa !25
  %conv = zext i32 %3 to i64
  %call = call ptr @d2i_AutoPrivateKey(ptr noundef null, ptr noundef %key_to_parse, i64 noundef %conv)
  store ptr %call, ptr %evp_private_key, align 8, !tbaa !4
  %4 = load ptr, ptr %evp_private_key, align 8, !tbaa !4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %type_hint.addr, align 4, !tbaa !19
  %6 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %size2 = getelementptr inbounds %struct.s2n_blob, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %size2, align 8, !tbaa !25
  %conv3 = zext i32 %7 to i64
  %call4 = call ptr @d2i_PrivateKey(i32 noundef %5, ptr noundef null, ptr noundef %key_to_parse, i64 noundef %conv3)
  store ptr %call4, ptr %evp_private_key, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load ptr, ptr %evp_private_key, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.end14, label %if.then5

if.then5:                                         ; preds = %do.body
  br label %do.body6

do.body6:                                         ; preds = %if.then5
  br label %do.body7

do.body7:                                         ; preds = %do.body6
  %9 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.14, ptr %9, align 8, !tbaa !4
  %10 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544342, ptr %10, align 4, !tbaa !19
  %call8 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body9

do.body9:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

do.cond10:                                        ; No predecessors!
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12

do.cond12:                                        ; preds = %do.end11
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.body
  br label %do.cond15

do.cond15:                                        ; preds = %if.end14
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.start.p0(i64 4, ptr %parsed_len) #5
  %11 = load ptr, ptr %key_to_parse, align 8, !tbaa !4
  %12 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %data17 = getelementptr inbounds %struct.s2n_blob, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %data17, align 8, !tbaa !23
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv18 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv18, ptr %parsed_len, align 4, !tbaa !19
  %14 = load i32, ptr %parsed_len, align 4, !tbaa !19
  %15 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %size19 = getelementptr inbounds %struct.s2n_blob, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %size19, align 8, !tbaa !25
  %cmp20 = icmp ne i32 %14, %16
  br i1 %cmp20, label %if.then22, label %if.end33

if.then22:                                        ; preds = %do.end16
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %17 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.15, ptr %17, align 8, !tbaa !4
  %18 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544342, ptr %18, align 4, !tbaa !19
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond26

do.cond26:                                        ; preds = %do.body24
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68

do.cond29:                                        ; No predecessors!
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  br label %do.cond31

do.cond31:                                        ; preds = %do.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %do.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #5
  %19 = load ptr, ptr %evp_private_key, align 8, !tbaa !4
  %call34 = call i32 @EVP_PKEY_get_base_id(ptr noundef %19)
  store i32 %call34, ptr %type, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  %20 = load i32, ptr %type, align 4, !tbaa !19
  switch i32 %20, label %sw.default [
    i32 6, label %sw.bb
    i32 912, label %sw.bb41
    i32 408, label %sw.bb49
  ]

sw.bb:                                            ; preds = %if.end33
  %21 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %call35 = call i32 @s2n_rsa_pkey_init(ptr noundef %21)
  store i32 %call35, ptr %ret, align 4, !tbaa !19
  %22 = load i32, ptr %ret, align 4, !tbaa !19
  %cmp36 = icmp ne i32 %22, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %sw.bb
  br label %sw.epilog

if.end39:                                         ; preds = %sw.bb
  %23 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.s2n_pkey, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %evp_private_key, align 8, !tbaa !4
  %call40 = call i32 @s2n_evp_pkey_to_rsa_private_key(ptr noundef %key, ptr noundef %24)
  store i32 %call40, ptr %ret, align 4, !tbaa !19
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end33
  %25 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %call42 = call i32 @s2n_rsa_pss_pkey_init(ptr noundef %25)
  store i32 %call42, ptr %ret, align 4, !tbaa !19
  %26 = load i32, ptr %ret, align 4, !tbaa !19
  %cmp43 = icmp ne i32 %26, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %sw.bb41
  br label %sw.epilog

if.end46:                                         ; preds = %sw.bb41
  %27 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %key47 = getelementptr inbounds %struct.s2n_pkey, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %evp_private_key, align 8, !tbaa !4
  %call48 = call i32 @s2n_evp_pkey_to_rsa_pss_private_key(ptr noundef %key47, ptr noundef %28)
  store i32 %call48, ptr %ret, align 4, !tbaa !19
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end33
  %29 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %call50 = call i32 @s2n_ecdsa_pkey_init(ptr noundef %29)
  store i32 %call50, ptr %ret, align 4, !tbaa !19
  %30 = load i32, ptr %ret, align 4, !tbaa !19
  %cmp51 = icmp ne i32 %30, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %sw.bb49
  br label %sw.epilog

if.end54:                                         ; preds = %sw.bb49
  %31 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %key55 = getelementptr inbounds %struct.s2n_pkey, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %evp_private_key, align 8, !tbaa !4
  %call56 = call i32 @s2n_evp_pkey_to_ecdsa_private_key(ptr noundef %key55, ptr noundef %32)
  store i32 %call56, ptr %ret, align 4, !tbaa !19
  br label %sw.epilog

sw.default:                                       ; preds = %if.end33
  br label %do.body57

do.body57:                                        ; preds = %sw.default
  br label %do.body58

do.body58:                                        ; preds = %do.body57
  %33 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.16, ptr %33, align 8, !tbaa !4
  %34 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544342, ptr %34, align 4, !tbaa !19
  %call59 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond60

do.cond60:                                        ; preds = %do.body58
  br label %do.end61

do.end61:                                         ; preds = %do.cond60
  br label %do.body62

do.body62:                                        ; preds = %do.end61
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond63:                                        ; No predecessors!
  br label %do.end64

do.end64:                                         ; preds = %do.cond63
  br label %do.cond65

do.cond65:                                        ; preds = %do.end64
  br label %do.end66

do.end66:                                         ; preds = %do.cond65
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end66, %if.end54, %if.then53, %if.end46, %if.then45, %if.end39, %if.then38
  %35 = load ptr, ptr %evp_private_key, align 8, !tbaa !4
  %36 = load ptr, ptr %priv_key.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.s2n_pkey, ptr %36, i32 0, i32 1
  store ptr %35, ptr %pkey, align 8, !tbaa !8
  store ptr null, ptr %evp_private_key, align 8, !tbaa !4
  %37 = load i32, ptr %ret, align 4, !tbaa !19
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body62
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #5
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup, %do.body28
  call void @llvm.lifetime.end.p0(i64 4, ptr %parsed_len) #5
  br label %cleanup69

cleanup69:                                        ; preds = %cleanup68, %do.body9
  call void @EVP_PKEY_free_pointer(ptr noundef %evp_private_key)
  call void @llvm.lifetime.end.p0(i64 8, ptr %evp_private_key) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_to_parse) #5
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare ptr @d2i_AutoPrivateKey(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @EVP_PKEY_free_pointer(ptr noundef %p) #4 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %3, align 8, !tbaa !4
  call void @EVP_PKEY_free(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare ptr @d2i_PrivateKey(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @EVP_PKEY_get_base_id(ptr noundef) #1

declare i32 @s2n_evp_pkey_to_rsa_private_key(ptr noundef, ptr noundef) #1

declare i32 @s2n_evp_pkey_to_rsa_pss_private_key(ptr noundef, ptr noundef) #1

declare i32 @s2n_evp_pkey_to_ecdsa_private_key(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_asn1der_to_public_key_and_type(ptr noundef %pub_key, ptr noundef %pkey_type_out, ptr noundef %asn1der) #0 {
entry:
  %retval = alloca i32, align 4
  %pub_key.addr = alloca ptr, align 8
  %pkey_type_out.addr = alloca ptr, align 8
  %asn1der.addr = alloca ptr, align 8
  %cert_to_parse = alloca ptr, align 8
  %cert = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %parsed_len = alloca i32, align 4
  %trailing_bytes = alloca i32, align 4
  %evp_public_key = alloca ptr, align 8
  %type = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %pub_key, ptr %pub_key.addr, align 8, !tbaa !4
  store ptr %pkey_type_out, ptr %pkey_type_out.addr, align 8, !tbaa !4
  store ptr %asn1der, ptr %asn1der.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cert_to_parse) #5
  %0 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.s2n_blob, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %data, align 8, !tbaa !23
  store ptr %1, ptr %cert_to_parse, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cert) #5
  store ptr null, ptr %cert, align 8, !tbaa !4
  %2 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.s2n_blob, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %size, align 8, !tbaa !25
  %conv = zext i32 %3 to i64
  %call = call ptr @d2i_X509(ptr noundef null, ptr noundef %cert_to_parse, i64 noundef %conv)
  store ptr %call, ptr %cert, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %cert, align 8, !tbaa !4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %if.then
  br label %do.body3

do.body3:                                         ; preds = %do.body2
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.17, ptr %5, align 8, !tbaa !4
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544341, ptr %6, align 4, !tbaa !19
  %call4 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82

do.cond5:                                         ; No predecessors!
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  br label %if.end

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.cond7

do.cond7:                                         ; preds = %if.end
  br label %do.end8

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 4, ptr %parsed_len) #5
  %7 = load ptr, ptr %cert_to_parse, align 8, !tbaa !4
  %8 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %data9 = getelementptr inbounds %struct.s2n_blob, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %data9, align 8, !tbaa !23
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv10, ptr %parsed_len, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %trailing_bytes) #5
  %10 = load ptr, ptr %asn1der.addr, align 8, !tbaa !4
  %size11 = getelementptr inbounds %struct.s2n_blob, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %size11, align 8, !tbaa !25
  %12 = load i32, ptr %parsed_len, align 4, !tbaa !19
  %sub = sub i32 %11, %12
  store i32 %sub, ptr %trailing_bytes, align 4, !tbaa !19
  br label %do.body12

do.body12:                                        ; preds = %do.end8
  %13 = load i32, ptr %trailing_bytes, align 4, !tbaa !19
  %cmp13 = icmp ule i32 %13, 3
  br i1 %cmp13, label %if.end26, label %if.then15

if.then15:                                        ; preds = %do.body12
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %do.body17

do.body17:                                        ; preds = %do.body16
  %14 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.18, ptr %14, align 8, !tbaa !4
  %15 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544341, ptr %15, align 4, !tbaa !19
  %call18 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond19

do.cond19:                                        ; preds = %do.body17
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

do.cond22:                                        ; No predecessors!
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  br label %do.cond24

do.cond24:                                        ; preds = %do.end23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.body12
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.start.p0(i64 8, ptr %evp_public_key) #5
  %16 = load ptr, ptr %cert, align 8, !tbaa !4
  %call29 = call ptr @X509_get_pubkey(ptr noundef %16)
  store ptr %call29, ptr %evp_public_key, align 8, !tbaa !4
  br label %do.body30

do.body30:                                        ; preds = %do.end28
  %17 = load ptr, ptr %evp_public_key, align 8, !tbaa !4
  %cmp31 = icmp eq ptr %17, null
  br i1 %cmp31, label %if.then33, label %if.end41

if.then33:                                        ; preds = %do.body30
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  br label %do.body35

do.body35:                                        ; preds = %do.body34
  %18 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.19, ptr %18, align 8, !tbaa !4
  %19 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544341, ptr %19, align 4, !tbaa !19
  %call36 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond37

do.cond37:                                        ; preds = %do.body35
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78

do.cond39:                                        ; No predecessors!
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.body30
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #5
  %20 = load ptr, ptr %evp_public_key, align 8, !tbaa !4
  %call44 = call i32 @EVP_PKEY_get_base_id(ptr noundef %20)
  store i32 %call44, ptr %type, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  %21 = load i32, ptr %type, align 4, !tbaa !19
  switch i32 %21, label %sw.default [
    i32 6, label %sw.bb
    i32 912, label %sw.bb51
    i32 408, label %sw.bb59
  ]

sw.bb:                                            ; preds = %do.end43
  %22 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %call45 = call i32 @s2n_rsa_pkey_init(ptr noundef %22)
  store i32 %call45, ptr %ret, align 4, !tbaa !19
  %23 = load i32, ptr %ret, align 4, !tbaa !19
  %cmp46 = icmp ne i32 %23, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %sw.bb
  br label %sw.epilog

if.end49:                                         ; preds = %sw.bb
  %24 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.s2n_pkey, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %evp_public_key, align 8, !tbaa !4
  %call50 = call i32 @s2n_evp_pkey_to_rsa_public_key(ptr noundef %key, ptr noundef %25)
  store i32 %call50, ptr %ret, align 4, !tbaa !19
  %26 = load ptr, ptr %pkey_type_out.addr, align 8, !tbaa !4
  store i32 0, ptr %26, align 4, !tbaa !18
  br label %sw.epilog

sw.bb51:                                          ; preds = %do.end43
  %27 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %call52 = call i32 @s2n_rsa_pss_pkey_init(ptr noundef %27)
  store i32 %call52, ptr %ret, align 4, !tbaa !19
  %28 = load i32, ptr %ret, align 4, !tbaa !19
  %cmp53 = icmp ne i32 %28, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %sw.bb51
  br label %sw.epilog

if.end56:                                         ; preds = %sw.bb51
  %29 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %key57 = getelementptr inbounds %struct.s2n_pkey, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %evp_public_key, align 8, !tbaa !4
  %call58 = call i32 @s2n_evp_pkey_to_rsa_pss_public_key(ptr noundef %key57, ptr noundef %30)
  store i32 %call58, ptr %ret, align 4, !tbaa !19
  %31 = load ptr, ptr %pkey_type_out.addr, align 8, !tbaa !4
  store i32 2, ptr %31, align 4, !tbaa !18
  br label %sw.epilog

sw.bb59:                                          ; preds = %do.end43
  %32 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %call60 = call i32 @s2n_ecdsa_pkey_init(ptr noundef %32)
  store i32 %call60, ptr %ret, align 4, !tbaa !19
  %33 = load i32, ptr %ret, align 4, !tbaa !19
  %cmp61 = icmp ne i32 %33, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %sw.bb59
  br label %sw.epilog

if.end64:                                         ; preds = %sw.bb59
  %34 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %key65 = getelementptr inbounds %struct.s2n_pkey, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %evp_public_key, align 8, !tbaa !4
  %call66 = call i32 @s2n_evp_pkey_to_ecdsa_public_key(ptr noundef %key65, ptr noundef %35)
  store i32 %call66, ptr %ret, align 4, !tbaa !19
  %36 = load ptr, ptr %pkey_type_out.addr, align 8, !tbaa !4
  store i32 1, ptr %36, align 4, !tbaa !18
  br label %sw.epilog

sw.default:                                       ; preds = %do.end43
  br label %do.body67

do.body67:                                        ; preds = %sw.default
  br label %do.body68

do.body68:                                        ; preds = %do.body67
  %37 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.20, ptr %37, align 8, !tbaa !4
  %38 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544341, ptr %38, align 4, !tbaa !19
  %call69 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond70

do.cond70:                                        ; preds = %do.body68
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  br label %do.body72

do.body72:                                        ; preds = %do.end71
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond73:                                        ; No predecessors!
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  br label %do.cond75

do.cond75:                                        ; preds = %do.end74
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end76, %if.end64, %if.then63, %if.end56, %if.then55, %if.end49, %if.then48
  %39 = load ptr, ptr %evp_public_key, align 8, !tbaa !4
  %40 = load ptr, ptr %pub_key.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.s2n_pkey, ptr %40, i32 0, i32 1
  store ptr %39, ptr %pkey, align 8, !tbaa !8
  store ptr null, ptr %evp_public_key, align 8, !tbaa !4
  %41 = load i32, ptr %ret, align 4, !tbaa !19
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body72
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #5
  br label %cleanup78

cleanup78:                                        ; preds = %cleanup, %do.end38
  call void @EVP_PKEY_free_pointer(ptr noundef %evp_public_key)
  call void @llvm.lifetime.end.p0(i64 8, ptr %evp_public_key) #5
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup78, %do.body21
  call void @llvm.lifetime.end.p0(i64 4, ptr %trailing_bytes) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %parsed_len) #5
  br label %cleanup82

cleanup82:                                        ; preds = %cleanup80, %do.end
  call void @X509_free_pointer(ptr noundef %cert)
  call void @llvm.lifetime.end.p0(i64 8, ptr %cert) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cert_to_parse) #5
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @X509_free_pointer(ptr noundef %p) #4 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %3, align 8, !tbaa !4
  call void @X509_free(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare ptr @d2i_X509(ptr noundef, ptr noundef, i64 noundef) #1

declare ptr @X509_get_pubkey(ptr noundef) #1

declare i32 @s2n_evp_pkey_to_rsa_public_key(ptr noundef, ptr noundef) #1

declare i32 @s2n_evp_pkey_to_rsa_pss_public_key(ptr noundef, ptr noundef) #1

declare i32 @s2n_evp_pkey_to_ecdsa_public_key(ptr noundef, ptr noundef) #1

declare void @X509_free(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !5, i64 8}
!9 = !{!"s2n_pkey", !6, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!10 = !{!9, !5, i64 16}
!11 = !{!9, !5, i64 24}
!12 = !{!9, !5, i64 32}
!13 = !{!9, !5, i64 40}
!14 = !{!9, !5, i64 48}
!15 = !{!9, !5, i64 56}
!16 = !{!9, !5, i64 64}
!17 = !{!9, !5, i64 72}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !6, i64 0}
!21 = !{!22, !20, i64 0}
!22 = !{!"", !20, i64 0}
!23 = !{!24, !5, i64 0}
!24 = !{!"s2n_blob", !5, i64 0, !20, i64 8, !20, i64 12, !20, i64 16}
!25 = !{!24, !20, i64 8}

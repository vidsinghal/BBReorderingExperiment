; ModuleID = 'samples/821.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_blob = type { ptr, i32, i32, i8 }
%struct.s2n_tls13_keys = type { i32, i32, i8, %struct.s2n_blob, %struct.s2n_blob, [48 x i8], [48 x i8], %struct.s2n_hmac_state }
%struct.s2n_hmac_state = type { i32, i16, i32, i16, i8, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, [128 x i8], [64 x i8] }
%struct.s2n_hash_state = type { ptr, i32, i8, i64, %union.anon }
%union.anon = type { %union.s2n_hash_low_level_digest }
%union.s2n_hash_low_level_digest = type { %struct.SHA512state_st }
%struct.SHA512state_st = type { [8 x i64], i64, i64, %union.anon.0, i32, i32 }
%union.anon.0 = type { [16 x i64] }
%struct.s2n_result = type { i32 }

@s2n_tls13_label_derived_secret_data = internal global [8 x i8] c"derived\00", align 1
@s2n_tls13_label_derived_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_derived_secret_data, i32 7, i32 0, i8 0 }, align 8
@s2n_tls13_label_external_psk_binder_key_data = internal global [11 x i8] c"ext binder\00", align 1
@s2n_tls13_label_external_psk_binder_key = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_external_psk_binder_key_data, i32 10, i32 0, i8 0 }, align 8
@s2n_tls13_label_resumption_psk_binder_key_data = internal global [11 x i8] c"res binder\00", align 1
@s2n_tls13_label_resumption_psk_binder_key = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_resumption_psk_binder_key_data, i32 10, i32 0, i8 0 }, align 8
@s2n_tls13_label_client_early_traffic_secret_data = internal global [12 x i8] c"c e traffic\00", align 1
@s2n_tls13_label_client_early_traffic_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_client_early_traffic_secret_data, i32 11, i32 0, i8 0 }, align 8
@s2n_tls13_label_early_exporter_master_secret_data = internal global [13 x i8] c"e exp master\00", align 1
@s2n_tls13_label_early_exporter_master_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_early_exporter_master_secret_data, i32 12, i32 0, i8 0 }, align 8
@s2n_tls13_label_client_handshake_traffic_secret_data = internal global [13 x i8] c"c hs traffic\00", align 1
@s2n_tls13_label_client_handshake_traffic_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_client_handshake_traffic_secret_data, i32 12, i32 0, i8 0 }, align 8
@s2n_tls13_label_server_handshake_traffic_secret_data = internal global [13 x i8] c"s hs traffic\00", align 1
@s2n_tls13_label_server_handshake_traffic_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_server_handshake_traffic_secret_data, i32 12, i32 0, i8 0 }, align 8
@s2n_tls13_label_client_application_traffic_secret_data = internal global [13 x i8] c"c ap traffic\00", align 1
@s2n_tls13_label_client_application_traffic_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_client_application_traffic_secret_data, i32 12, i32 0, i8 0 }, align 8
@s2n_tls13_label_server_application_traffic_secret_data = internal global [13 x i8] c"s ap traffic\00", align 1
@s2n_tls13_label_server_application_traffic_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_server_application_traffic_secret_data, i32 12, i32 0, i8 0 }, align 8
@s2n_tls13_label_exporter_master_secret_data = internal global [11 x i8] c"exp master\00", align 1
@s2n_tls13_label_exporter_master_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_exporter_master_secret_data, i32 10, i32 0, i8 0 }, align 8
@s2n_tls13_label_resumption_master_secret_data = internal global [11 x i8] c"res master\00", align 1
@s2n_tls13_label_resumption_master_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_resumption_master_secret_data, i32 10, i32 0, i8 0 }, align 8
@s2n_tls13_label_session_ticket_secret_data = internal global [11 x i8] c"resumption\00", align 1
@s2n_tls13_label_session_ticket_secret = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_session_ticket_secret_data, i32 10, i32 0, i8 0 }, align 8
@s2n_tls13_label_traffic_secret_key_data = internal global [4 x i8] c"key\00", align 1
@s2n_tls13_label_traffic_secret_key = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_traffic_secret_key_data, i32 3, i32 0, i8 0 }, align 8
@s2n_tls13_label_traffic_secret_iv_data = internal global [3 x i8] c"iv\00", align 1
@s2n_tls13_label_traffic_secret_iv = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_traffic_secret_iv_data, i32 2, i32 0, i8 0 }, align 8
@s2n_tls13_label_finished_data = internal global [9 x i8] c"finished\00", align 1
@s2n_tls13_label_finished = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_finished_data, i32 8, i32 0, i8 0 }, align 8
@s2n_tls13_label_application_traffic_secret_update_data = internal global [12 x i8] c"traffic upd\00", align 1
@s2n_tls13_label_application_traffic_secret_update = hidden constant %struct.s2n_blob { ptr @s2n_tls13_label_application_traffic_secret_update_data, i32 11, i32 0, i8 0 }, align 8
@.str = private unnamed_addr constant [219 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:99\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:116\00", align 1
@.str.2 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:128\00", align 1
@.str.3 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:129\00", align 1
@.str.4 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:130\00", align 1
@.str.5 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:131\00", align 1
@zero_length_blob = internal constant %struct.s2n_blob zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:158\00", align 1
@.str.7 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:169\00", align 1
@.str.8 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:170\00", align 1
@.str.9 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:171\00", align 1
@.str.10 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:182\00", align 1
@.str.11 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:183\00", align 1
@.str.12 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:184\00", align 1
@.str.13 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/crypto/s2n_tls13_keys.c:185\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_keys_init(ptr noundef %keys, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %keys.addr = alloca ptr, align 8
  %alg.addr = alloca i32, align 4
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store i32 %alg, ptr %alg.addr, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !9
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
  %3 = load i32, ptr %alg.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac_algorithm = getelementptr inbounds %struct.s2n_tls13_keys, ptr %4, i32 0, i32 0
  store i32 %3, ptr %hmac_algorithm, align 8, !tbaa !11
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %5 = load i32, ptr %alg.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hash_algorithm = getelementptr inbounds %struct.s2n_tls13_keys, ptr %6, i32 0, i32 1
  %call8 = call i32 @s2n_hmac_hash_alg(i32 noundef %5, ptr noundef %hash_algorithm)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %do.body7
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  store i32 -1, ptr %retval, align 4
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body7
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  br label %do.body15

do.body15:                                        ; preds = %do.end14
  %7 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hash_algorithm16 = getelementptr inbounds %struct.s2n_tls13_keys, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %hash_algorithm16, align 4, !tbaa !18
  %9 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.s2n_tls13_keys, ptr %9, i32 0, i32 2
  %call17 = call i32 @s2n_hash_digest_size(i32 noundef %8, ptr noundef %size)
  %cmp18 = icmp sgt i32 %call17, -1
  br i1 %cmp18, label %if.end22, label %if.then19

if.then19:                                        ; preds = %do.body15
  br label %do.body20

do.body20:                                        ; preds = %if.then19
  store i32 -1, ptr %retval, align 4
  br label %return

do.end21:                                         ; No predecessors!
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %do.body15
  br label %do.end23

do.end23:                                         ; preds = %if.end22
  br label %do.body24

do.body24:                                        ; preds = %do.end23
  %10 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %extract_secret = getelementptr inbounds %struct.s2n_tls13_keys, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %extract_secret_bytes = getelementptr inbounds %struct.s2n_tls13_keys, ptr %11, i32 0, i32 5
  %arraydecay = getelementptr inbounds [48 x i8], ptr %extract_secret_bytes, i64 0, i64 0
  %12 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %size25 = getelementptr inbounds %struct.s2n_tls13_keys, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %size25, align 8, !tbaa !19
  %conv = zext i8 %13 to i32
  %call26 = call i32 @s2n_blob_init(ptr noundef %extract_secret, ptr noundef %arraydecay, i32 noundef %conv)
  %cmp27 = icmp sgt i32 %call26, -1
  br i1 %cmp27, label %if.end32, label %if.then29

if.then29:                                        ; preds = %do.body24
  br label %do.body30

do.body30:                                        ; preds = %if.then29
  store i32 -1, ptr %retval, align 4
  br label %return

do.end31:                                         ; No predecessors!
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body24
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %14 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %derive_secret = getelementptr inbounds %struct.s2n_tls13_keys, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %derive_secret_bytes = getelementptr inbounds %struct.s2n_tls13_keys, ptr %15, i32 0, i32 6
  %arraydecay35 = getelementptr inbounds [48 x i8], ptr %derive_secret_bytes, i64 0, i64 0
  %16 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %size36 = getelementptr inbounds %struct.s2n_tls13_keys, ptr %16, i32 0, i32 2
  %17 = load i8, ptr %size36, align 8, !tbaa !19
  %conv37 = zext i8 %17 to i32
  %call38 = call i32 @s2n_blob_init(ptr noundef %derive_secret, ptr noundef %arraydecay35, i32 noundef %conv37)
  %cmp39 = icmp sgt i32 %call38, -1
  br i1 %cmp39, label %if.end44, label %if.then41

if.then41:                                        ; preds = %do.body34
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  store i32 -1, ptr %retval, align 4
  br label %return

do.end43:                                         ; No predecessors!
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %do.body34
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %18 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac = getelementptr inbounds %struct.s2n_tls13_keys, ptr %18, i32 0, i32 7
  %call47 = call i32 @s2n_hmac_new(ptr noundef %hmac)
  %cmp48 = icmp sgt i32 %call47, -1
  br i1 %cmp48, label %if.end53, label %if.then50

if.then50:                                        ; preds = %do.body46
  br label %do.body51

do.body51:                                        ; preds = %if.then50
  store i32 -1, ptr %retval, align 4
  br label %return

do.end52:                                         ; No predecessors!
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %do.body46
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end54, %do.body51, %do.body42, %do.body30, %do.body20, %do.body11, %do.body3
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

declare i32 @s2n_calculate_stacktrace() #2

declare i32 @s2n_hmac_hash_alg(i32 noundef, ptr noundef) #2

declare i32 @s2n_hash_digest_size(i32 noundef, ptr noundef) #2

declare i32 @s2n_blob_init(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @s2n_hmac_new(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_keys_free(ptr noundef %keys) #0 {
entry:
  %retval = alloca i32, align 4
  %keys.addr = alloca ptr, align 8
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !9
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
  %3 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac = getelementptr inbounds %struct.s2n_tls13_keys, ptr %3, i32 0, i32 7
  %call8 = call i32 @s2n_hmac_free(ptr noundef %hmac)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %do.body7
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  store i32 -1, ptr %retval, align 4
  br label %return

do.end12:                                         ; No predecessors!
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body7
  br label %do.end14

do.end14:                                         ; preds = %if.end13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end14, %do.body11, %do.body3
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare i32 @s2n_hmac_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_derive_traffic_keys(ptr noundef %keys, ptr noundef %secret, ptr noundef %key, ptr noundef %iv) #0 {
entry:
  %retval = alloca i32, align 4
  %keys.addr = alloca ptr, align 8
  %secret.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store ptr %secret, ptr %secret.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %iv, ptr %iv.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.2, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !9
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
  %3 = load ptr, ptr %secret.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.3, ptr %4, align 8, !tbaa !4
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !9
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
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %6 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp20 = icmp ne ptr %6, null
  br i1 %cmp20, label %if.end29, label %if.then21

if.then21:                                        ; preds = %do.body19
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  br label %do.body23

do.body23:                                        ; preds = %do.body22
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.4, ptr %7, align 8, !tbaa !4
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %8, align 4, !tbaa !9
  %call24 = call i32 @s2n_calculate_stacktrace()
  br label %do.end25

do.end25:                                         ; preds = %do.body23
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  store i32 -1, ptr %retval, align 4
  br label %return

do.end27:                                         ; No predecessors!
  br label %do.end28

do.end28:                                         ; preds = %do.end27
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.body19
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %do.body31

do.body31:                                        ; preds = %do.end30
  %9 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %cmp32 = icmp ne ptr %9, null
  br i1 %cmp32, label %if.end41, label %if.then33

if.then33:                                        ; preds = %do.body31
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  br label %do.body35

do.body35:                                        ; preds = %do.body34
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.5, ptr %10, align 8, !tbaa !4
  %11 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %11, align 4, !tbaa !9
  %call36 = call i32 @s2n_calculate_stacktrace()
  br label %do.end37

do.end37:                                         ; preds = %do.body35
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  store i32 -1, ptr %retval, align 4
  br label %return

do.end39:                                         ; No predecessors!
  br label %do.end40

do.end40:                                         ; preds = %do.end39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.body31
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %12 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac = getelementptr inbounds %struct.s2n_tls13_keys, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac_algorithm = getelementptr inbounds %struct.s2n_tls13_keys, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %hmac_algorithm, align 8, !tbaa !11
  %15 = load ptr, ptr %secret.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call44 = call i32 @s2n_hkdf_expand_label(ptr noundef %hmac, i32 noundef %14, ptr noundef %15, ptr noundef @s2n_tls13_label_traffic_secret_key, ptr noundef @zero_length_blob, ptr noundef %16)
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.end49, label %if.then46

if.then46:                                        ; preds = %do.body43
  br label %do.body47

do.body47:                                        ; preds = %if.then46
  store i32 -1, ptr %retval, align 4
  br label %return

do.end48:                                         ; No predecessors!
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %do.body43
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %17 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac52 = getelementptr inbounds %struct.s2n_tls13_keys, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac_algorithm53 = getelementptr inbounds %struct.s2n_tls13_keys, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %hmac_algorithm53, align 8, !tbaa !11
  %20 = load ptr, ptr %secret.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %iv.addr, align 8, !tbaa !4
  %call54 = call i32 @s2n_hkdf_expand_label(ptr noundef %hmac52, i32 noundef %19, ptr noundef %20, ptr noundef @s2n_tls13_label_traffic_secret_iv, ptr noundef @zero_length_blob, ptr noundef %21)
  %cmp55 = icmp sgt i32 %call54, -1
  br i1 %cmp55, label %if.end59, label %if.then56

if.then56:                                        ; preds = %do.body51
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  store i32 -1, ptr %retval, align 4
  br label %return

do.end58:                                         ; No predecessors!
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %do.body51
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end60, %do.body57, %do.body47, %do.body38, %do.body26, %do.body14, %do.body3
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare i32 @s2n_hkdf_expand_label(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_derive_finished_key(ptr noundef %keys, ptr noundef %secret_key, ptr noundef %output_finish_key) #0 {
entry:
  %retval = alloca i32, align 4
  %keys.addr = alloca ptr, align 8
  %secret_key.addr = alloca ptr, align 8
  %output_finish_key.addr = alloca ptr, align 8
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store ptr %secret_key, ptr %secret_key.addr, align 8, !tbaa !4
  store ptr %output_finish_key, ptr %output_finish_key.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac = getelementptr inbounds %struct.s2n_tls13_keys, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac_algorithm = getelementptr inbounds %struct.s2n_tls13_keys, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %hmac_algorithm, align 8, !tbaa !11
  %3 = load ptr, ptr %secret_key.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %output_finish_key.addr, align 8, !tbaa !4
  %call = call i32 @s2n_hkdf_expand_label(ptr noundef %hmac, i32 noundef %2, ptr noundef %3, ptr noundef @s2n_tls13_label_finished, ptr noundef @zero_length_blob, ptr noundef %4)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end2

do.end2:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end2, %do.body1
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_calculate_finished_mac(ptr noundef %keys, ptr noundef %finished_key, ptr noundef %hash_state, ptr noundef %finished_verify) #0 {
entry:
  %retval = alloca i32, align 4
  %keys.addr = alloca ptr, align 8
  %finished_key.addr = alloca ptr, align 8
  %hash_state.addr = alloca ptr, align 8
  %finished_verify.addr = alloca ptr, align 8
  %transcript_hash_requested_size = alloca i64, align 8
  %transcript_hash_buf = alloca [48 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %transcript_hash = alloca %struct.s2n_blob, align 8
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store ptr %finished_key, ptr %finished_key.addr, align 8, !tbaa !4
  store ptr %hash_state, ptr %hash_state.addr, align 8, !tbaa !4
  store ptr %finished_verify, ptr %finished_verify.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript_hash_requested_size) #5
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.s2n_tls13_keys, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %size, align 8, !tbaa !19
  %conv = zext i8 %1 to i64
  store i64 %conv, ptr %transcript_hash_requested_size, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 48, ptr %transcript_hash_buf) #5
  call void @llvm.memset.p0.i64(ptr align 16 %transcript_hash_buf, i8 0, i64 48, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i64, ptr %transcript_hash_requested_size, align 8, !tbaa !20
  %cmp = icmp ule i64 %2, 48
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body2

do.body2:                                         ; preds = %if.then
  br label %do.body3

do.body3:                                         ; preds = %do.body2
  %3 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.6, ptr %3, align 8, !tbaa !4
  %4 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %4, align 4, !tbaa !9
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body3
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body4

do.body4:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46

do.cond5:                                         ; No predecessors!
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7

do.cond7:                                         ; preds = %do.end6
  br label %do.end8

do.end8:                                          ; preds = %do.cond7
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9

do.cond9:                                         ; preds = %if.end
  br label %do.end10

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 24, ptr %transcript_hash) #5
  call void @llvm.memset.p0.i64(ptr align 8 %transcript_hash, i8 0, i64 24, i1 false)
  br label %do.body11

do.body11:                                        ; preds = %do.end10
  %arraydecay = getelementptr inbounds [48 x i8], ptr %transcript_hash_buf, i64 0, i64 0
  %5 = load i64, ptr %transcript_hash_requested_size, align 8, !tbaa !20
  %conv12 = trunc i64 %5 to i32
  %call13 = call i32 @s2n_blob_init(ptr noundef %transcript_hash, ptr noundef %arraydecay, i32 noundef %conv12)
  %cmp14 = icmp sgt i32 %call13, -1
  br i1 %cmp14, label %if.end20, label %if.then16

if.then16:                                        ; preds = %do.body11
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond18:                                        ; No predecessors!
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %do.body11
  br label %do.cond21

do.cond21:                                        ; preds = %if.end20
  br label %do.end22

do.end22:                                         ; preds = %do.cond21
  br label %do.body23

do.body23:                                        ; preds = %do.end22
  %6 = load ptr, ptr %hash_state.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.s2n_blob, ptr %transcript_hash, i32 0, i32 0
  %7 = load ptr, ptr %data, align 8, !tbaa !21
  %size24 = getelementptr inbounds %struct.s2n_blob, ptr %transcript_hash, i32 0, i32 1
  %8 = load i32, ptr %size24, align 8, !tbaa !22
  %call25 = call i32 @s2n_hash_digest(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.end32, label %if.then28

if.then28:                                        ; preds = %do.body23
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond30:                                        ; No predecessors!
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body23
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %9 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac = getelementptr inbounds %struct.s2n_tls13_keys, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac_algorithm = getelementptr inbounds %struct.s2n_tls13_keys, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %hmac_algorithm, align 8, !tbaa !11
  %12 = load ptr, ptr %finished_key.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %finished_verify.addr, align 8, !tbaa !4
  %call36 = call i32 @s2n_hkdf_extract(ptr noundef %hmac, i32 noundef %11, ptr noundef %12, ptr noundef %transcript_hash, ptr noundef %13)
  %cmp37 = icmp sgt i32 %call36, -1
  br i1 %cmp37, label %if.end43, label %if.then39

if.then39:                                        ; preds = %do.body35
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond41:                                        ; No predecessors!
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %do.body35
  br label %do.cond44

do.cond44:                                        ; preds = %if.end43
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.body40, %do.body29, %do.body17
  call void @llvm.lifetime.end.p0(i64 24, ptr %transcript_hash) #5
  br label %cleanup46

cleanup46:                                        ; preds = %cleanup, %do.body4
  call void @llvm.lifetime.end.p0(i64 48, ptr %transcript_hash_buf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript_hash_requested_size) #5
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @s2n_hash_digest(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @s2n_hkdf_extract(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_update_application_traffic_secret(ptr noundef %keys, ptr noundef %old_secret, ptr noundef %new_secret) #0 {
entry:
  %retval = alloca i32, align 4
  %keys.addr = alloca ptr, align 8
  %old_secret.addr = alloca ptr, align 8
  %new_secret.addr = alloca ptr, align 8
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store ptr %old_secret, ptr %old_secret.addr, align 8, !tbaa !4
  store ptr %new_secret, ptr %new_secret.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.7, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !9
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
  %3 = load ptr, ptr %old_secret.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.8, ptr %4, align 8, !tbaa !4
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !9
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
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %6 = load ptr, ptr %new_secret.addr, align 8, !tbaa !4
  %cmp20 = icmp ne ptr %6, null
  br i1 %cmp20, label %if.end29, label %if.then21

if.then21:                                        ; preds = %do.body19
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  br label %do.body23

do.body23:                                        ; preds = %do.body22
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.9, ptr %7, align 8, !tbaa !4
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %8, align 4, !tbaa !9
  %call24 = call i32 @s2n_calculate_stacktrace()
  br label %do.end25

do.end25:                                         ; preds = %do.body23
  br label %do.body26

do.body26:                                        ; preds = %do.end25
  store i32 -1, ptr %retval, align 4
  br label %return

do.end27:                                         ; No predecessors!
  br label %do.end28

do.end28:                                         ; preds = %do.end27
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.body19
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %do.body31

do.body31:                                        ; preds = %do.end30
  %9 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac = getelementptr inbounds %struct.s2n_tls13_keys, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac_algorithm = getelementptr inbounds %struct.s2n_tls13_keys, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %hmac_algorithm, align 8, !tbaa !11
  %12 = load ptr, ptr %old_secret.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %new_secret.addr, align 8, !tbaa !4
  %call32 = call i32 @s2n_hkdf_expand_label(ptr noundef %hmac, i32 noundef %11, ptr noundef %12, ptr noundef @s2n_tls13_label_application_traffic_secret_update, ptr noundef @zero_length_blob, ptr noundef %13)
  %cmp33 = icmp sgt i32 %call32, -1
  br i1 %cmp33, label %if.end37, label %if.then34

if.then34:                                        ; preds = %do.body31
  br label %do.body35

do.body35:                                        ; preds = %if.then34
  store i32 -1, ptr %retval, align 4
  br label %return

do.end36:                                         ; No predecessors!
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %do.body31
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end38, %do.body35, %do.body26, %do.body14, %do.body3
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_derive_session_ticket_secret(ptr noundef %keys, ptr noundef %resumption_secret, ptr noundef %ticket_nonce, ptr noundef %secret_blob) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %keys.addr = alloca ptr, align 8
  %resumption_secret.addr = alloca ptr, align 8
  %ticket_nonce.addr = alloca ptr, align 8
  %secret_blob.addr = alloca ptr, align 8
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store ptr %resumption_secret, ptr %resumption_secret.addr, align 8, !tbaa !4
  store ptr %ticket_nonce, ptr %ticket_nonce.addr, align 8, !tbaa !4
  store ptr %secret_blob, ptr %secret_blob.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.10, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !9
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !23
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
  %3 = load ptr, ptr %resumption_secret.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.11, ptr %4, align 8, !tbaa !4
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !9
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !23
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
  %6 = load ptr, ptr %ticket_nonce.addr, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %6, null
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.body20
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.12, ptr %7, align 8, !tbaa !4
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %8, align 4, !tbaa !9
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.end26

do.end26:                                         ; preds = %do.body24
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %__error_signal28 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal28, align 4, !tbaa !23
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
  %9 = load ptr, ptr %secret_blob.addr, align 8, !tbaa !4
  %cmp34 = icmp ne ptr %9, null
  br i1 %cmp34, label %if.end44, label %if.then35

if.then35:                                        ; preds = %do.body33
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  br label %do.body37

do.body37:                                        ; preds = %do.body36
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.13, ptr %10, align 8, !tbaa !4
  %11 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %11, align 4, !tbaa !9
  %call38 = call i32 @s2n_calculate_stacktrace()
  br label %do.end39

do.end39:                                         ; preds = %do.body37
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %__error_signal41 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal41, align 4, !tbaa !23
  br label %return

do.end42:                                         ; No predecessors!
  br label %do.end43

do.end43:                                         ; preds = %do.end42
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %do.body33
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %12 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac = getelementptr inbounds %struct.s2n_tls13_keys, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %hmac_algorithm = getelementptr inbounds %struct.s2n_tls13_keys, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %hmac_algorithm, align 8, !tbaa !11
  %15 = load ptr, ptr %resumption_secret.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ticket_nonce.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %secret_blob.addr, align 8, !tbaa !4
  %call47 = call i32 @s2n_hkdf_expand_label(ptr noundef %hmac, i32 noundef %14, ptr noundef %15, ptr noundef @s2n_tls13_label_session_ticket_secret, ptr noundef %16, ptr noundef %17)
  %cmp48 = icmp sgt i32 %call47, -1
  br i1 %cmp48, label %if.end53, label %if.then49

if.then49:                                        ; preds = %do.body46
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  %__error_signal51 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal51, align 4, !tbaa !23
  br label %return

do.end52:                                         ; No predecessors!
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %do.body46
  br label %do.end54

do.end54:                                         ; preds = %if.end53
  %__error_signal55 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal55, align 4, !tbaa !23
  br label %return

return:                                           ; preds = %do.end54, %do.body50, %do.body40, %do.body27, %do.body14, %do.body3
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %18 = load i32, ptr %coerce.dive, align 4
  ret i32 %18
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"s2n_tls13_keys", !6, i64 0, !6, i64 4, !6, i64 8, !13, i64 16, !13, i64 40, !6, i64 64, !6, i64 112, !14, i64 160}
!13 = !{!"s2n_blob", !5, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!14 = !{!"s2n_hmac_state", !6, i64 0, !15, i64 4, !10, i64 8, !15, i64 12, !6, i64 14, !16, i64 16, !16, i64 256, !16, i64 496, !16, i64 736, !6, i64 976, !6, i64 1104}
!15 = !{!"short", !6, i64 0}
!16 = !{!"s2n_hash_state", !5, i64 0, !6, i64 8, !6, i64 12, !17, i64 16, !6, i64 24}
!17 = !{!"long", !6, i64 0}
!18 = !{!12, !6, i64 4}
!19 = !{!12, !6, i64 8}
!20 = !{!17, !17, i64 0}
!21 = !{!13, !5, i64 0}
!22 = !{!13, !10, i64 8}
!23 = !{!24, !10, i64 0}
!24 = !{!"", !10, i64 0}

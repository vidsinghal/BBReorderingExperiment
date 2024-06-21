; ModuleID = 'samples/562.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_result = type { i32 }
%struct.s2n_connection = type { i24, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [21 x i8], [21 x i8], [21 x i8], i32, i32, %struct.s2n_timer, i64, i64, [32 x i8], i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.s2n_secrets, ptr, ptr, %struct.s2n_kex_parameters, %struct.s2n_handshake_parameters, %struct.s2n_psk_parameters, ptr, i8, i32, [5 x i8], %struct.s2n_stuffer, %struct.s2n_stuffer, %struct.s2n_stuffer, i32, i64, [2 x i8], %struct.s2n_stuffer, i8, i8, i8, i8, %struct.s2n_atomic_flag, %struct.s2n_atomic_flag, %struct.s2n_handshake, i16, i32, i16, i64, i8, i64, i64, i64, %struct.s2n_atomic_flag, %struct.s2n_atomic_flag, [256 x i8], [256 x i8], i32, %struct.s2n_blob, i32, %struct.s2n_blob, %struct.s2n_blob, %struct.s2n_blob, %struct.s2n_client_hello, %struct.s2n_x509_validator, ptr, ptr, i8, i32, %struct.s2n_blob, i32, %struct.s2n_ticket_fields, [105 x i8], %struct.s2n_stuffer, %struct.s2n_blob, %struct.s2n_blob, i8, i8, i8, i16, i16, i32, i32, %struct.s2n_blob, i32, %struct.s2n_post_handshake, %struct.s2n_atomic_flag }
%struct.s2n_timer = type { i64 }
%struct.s2n_secrets = type { %union.anon, i32 }
%union.anon = type { %struct.s2n_tls13_secrets }
%struct.s2n_tls13_secrets = type { [48 x i8], [48 x i8], [48 x i8], [48 x i8], [48 x i8], [48 x i8], [48 x i8], i32 }
%struct.s2n_kex_parameters = type { %struct.s2n_dh_params, %struct.s2n_ecc_evp_params, [4 x ptr], %struct.s2n_ecc_evp_params, %struct.s2n_kem_group_params, %struct.s2n_kem_group_params, [2 x ptr], %struct.s2n_kem_params, %struct.s2n_blob, %struct.s2n_blob }
%struct.s2n_dh_params = type { ptr }
%struct.s2n_ecc_evp_params = type { ptr, ptr }
%struct.s2n_kem_group_params = type { ptr, %struct.s2n_kem_params, %struct.s2n_ecc_evp_params }
%struct.s2n_kem_params = type { ptr, %struct.s2n_blob, %struct.s2n_blob, %struct.s2n_blob, i8 }
%struct.s2n_handshake_parameters = type { %struct.s2n_pkey, %struct.s2n_pkey, %struct.s2n_blob, i32, %struct.s2n_sig_scheme_list, %struct.s2n_signature_scheme, %struct.s2n_sig_scheme_list, %struct.s2n_signature_scheme, ptr, [3 x ptr], [3 x ptr], i8, i8, [32 x i8], [32 x i8] }
%struct.s2n_pkey = type { %union.anon.0, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.s2n_rsa_key }
%struct.s2n_rsa_key = type { ptr }
%struct.s2n_sig_scheme_list = type { [64 x i16], i8 }
%struct.s2n_signature_scheme = type { i16, i32, i32, i8, i8, i16, ptr }
%struct.s2n_psk_parameters = type { i32, %struct.s2n_array, i16, i16, ptr, i32 }
%struct.s2n_array = type { %struct.s2n_blob, i32, i32 }
%struct.s2n_handshake = type { %struct.s2n_stuffer, ptr, [8 x i8], [48 x i8], [48 x i8], i8, i32, i32, i32, i32, %struct.s2n_offered_early_data, i8, i32 }
%struct.s2n_offered_early_data = type { ptr }
%struct.s2n_client_hello = type { %struct.s2n_blob, %struct.s2n_parsed_extensions_list, %struct.s2n_blob, %struct.s2n_blob, i8 }
%struct.s2n_parsed_extensions_list = type { [20 x %struct.s2n_parsed_extension], %struct.s2n_blob, i16 }
%struct.s2n_parsed_extension = type { i16, %struct.s2n_blob, i16, i8 }
%struct.s2n_x509_validator = type { ptr, ptr, i8, i8, i16, ptr, i32, ptr }
%struct.s2n_ticket_fields = type { %struct.s2n_blob, i32 }
%struct.s2n_stuffer = type { %struct.s2n_blob, i32, i32, i32, i8 }
%struct.s2n_blob = type { ptr, i32, i32, i8 }
%struct.s2n_post_handshake = type { %struct.s2n_stuffer, [4 x i8] }
%struct.s2n_atomic_flag = type { i32 }
%struct.s2n_crypto_parameters = type { ptr, %struct.s2n_session_key, %struct.s2n_session_key, %struct.s2n_hmac_state, %struct.s2n_hmac_state, [16 x i8], [16 x i8], [8 x i8], [8 x i8] }
%struct.s2n_session_key = type { ptr }
%struct.s2n_hmac_state = type { i32, i16, i32, i16, i8, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, [128 x i8], [64 x i8] }
%struct.s2n_hash_state = type { ptr, i32, i8, i64, %union.anon.1 }
%union.anon.1 = type { %union.s2n_hash_low_level_digest }
%union.s2n_hash_low_level_digest = type { %struct.SHA512state_st }
%struct.SHA512state_st = type { [8 x i64], i64, i64, %union.anon.2, i32, i32 }
%union.anon.2 = type { [16 x i64] }
%struct.s2n_cipher_suite = type { i8, ptr, [2 x i8], ptr, i32, ptr, [2 x ptr], i8, ptr, ptr, i32, i8 }
%struct.s2n_record_algorithm = type { ptr, i32, i32, i64 }
%struct.s2n_cipher = type { i32, %union.anon.3, i8, i8, ptr, ptr, ptr, ptr, ptr }
%union.anon.3 = type { %struct.s2n_composite_cipher }
%struct.s2n_composite_cipher = type { i8, i8, i8, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:77\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:78\00", align 1
@.str.2 = private unnamed_addr constant [211 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:129\00", align 1
@.str.3 = private unnamed_addr constant [211 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:145\00", align 1
@.str.4 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:29\00", align 1
@.str.5 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:30\00", align 1
@.str.6 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:31\00", align 1
@.str.7 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:32\00", align 1
@.str.8 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:34\00", align 1
@.str.9 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:36\00", align 1
@.str.10 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:39\00", align 1
@.str.11 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:47\00", align 1
@.str.12 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:50\00", align 1
@.str.13 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:58\00", align 1
@.str.14 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:60\00", align 1
@.str.15 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:63\00", align 1
@.str.16 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:65\00", align 1
@.str.17 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:68\00", align 1
@.str.18 = private unnamed_addr constant [210 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:91\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.20 = private unnamed_addr constant [211 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_ktls.c:114\00", align 1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @s2n_ktls_is_supported_on_platform() #0 {
entry:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_ktls_retrieve_file_descriptor(ptr noundef %conn, i32 noundef %ktls_mode, ptr noundef %fd) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %ktls_mode.addr = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  store i32 %ktls_mode, ptr %ktls_mode.addr, align 4, !tbaa !8
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
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
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !11
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
  %3 = load ptr, ptr %fd.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %4, align 8, !tbaa !4
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !9
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !11
  br label %return

do.end16:                                         ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body7
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  %6 = load i32, ptr %ktls_mode.addr, align 4, !tbaa !8
  %cmp20 = icmp eq i32 %6, 1
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %do.end19
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %fd.addr, align 8, !tbaa !4
  %call23 = call i32 @s2n_connection_get_read_fd(ptr noundef %7, ptr noundef %8)
  %cmp24 = icmp sgt i32 %call23, -1
  br i1 %cmp24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %do.body22
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  %__error_signal27 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal27, align 4, !tbaa !11
  br label %return

do.end28:                                         ; No predecessors!
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.body22
  br label %do.end30

do.end30:                                         ; preds = %if.end29
  br label %if.end43

if.else:                                          ; preds = %do.end19
  %9 = load i32, ptr %ktls_mode.addr, align 4, !tbaa !8
  %cmp31 = icmp eq i32 %9, 0
  br i1 %cmp31, label %if.then32, label %if.end42

if.then32:                                        ; preds = %if.else
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  %10 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %fd.addr, align 8, !tbaa !4
  %call34 = call i32 @s2n_connection_get_write_fd(ptr noundef %10, ptr noundef %11)
  %cmp35 = icmp sgt i32 %call34, -1
  br i1 %cmp35, label %if.end40, label %if.then36

if.then36:                                        ; preds = %do.body33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  %__error_signal38 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal38, align 4, !tbaa !11
  br label %return

do.end39:                                         ; No predecessors!
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %do.body33
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %if.else
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %do.end30
  %__error_signal44 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal44, align 4, !tbaa !11
  br label %return

return:                                           ; preds = %if.end43, %do.body37, %do.body26, %do.body14, %do.body3
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %12 = load i32, ptr %coerce.dive, align 4
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

declare i32 @s2n_calculate_stacktrace() #2

declare i32 @s2n_connection_get_read_fd(ptr noundef, ptr noundef) #2

declare i32 @s2n_connection_get_write_fd(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_connection_ktls_enable_send(ptr noundef %conn) #0 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp19 = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call8 = call i32 @s2n_ktls_validate(ptr noundef %3, i32 noundef 0)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call8, ptr %coerce.dive, align 4
  %coerce.dive9 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %4 = load i32, ptr %coerce.dive9, align 4
  %call10 = call zeroext i1 @s2n_result_is_ok(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %do.body7
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  store i32 -1, ptr %retval, align 4
  br label %return

do.end13:                                         ; No predecessors!
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.body7
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  %5 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load = load i32, ptr %5, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %do.end15
  br label %do.body18

do.body18:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp19) #6
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call20 = call i32 @s2n_ktls_configure_socket(ptr noundef %6, i32 noundef 0)
  %coerce.dive21 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp19, i32 0, i32 0
  store i32 %call20, ptr %coerce.dive21, align 4
  %coerce.dive22 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp19, i32 0, i32 0
  %7 = load i32, ptr %coerce.dive22, align 4
  %call23 = call zeroext i1 @s2n_result_is_ok(i32 %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp19) #6
  br i1 %call23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %do.body18
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  store i32 -1, ptr %retval, align 4
  br label %return

do.end26:                                         ; No predecessors!
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %do.body18
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  %8 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load29 = load i32, ptr %8, align 8
  %bf.clear30 = and i32 %bf.load29, -262145
  %bf.set = or i32 %bf.clear30, 262144
  store i32 %bf.set, ptr %8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end28, %do.body25, %if.then16, %do.body12, %do.body3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare zeroext i1 @s2n_result_is_ok(i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @s2n_ktls_validate(ptr noundef %conn, i32 noundef %ktls_mode) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %ktls_mode.addr = alloca i32, align 4
  %cipher = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  store i32 %ktls_mode, ptr %ktls_mode.addr, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
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
  store i32 402653193, ptr %2, align 4, !tbaa !9
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !11
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
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %secure, align 8, !tbaa !13
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
  store i32 402653193, ptr %6, align 4, !tbaa !9
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !11
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
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %secure21 = getelementptr inbounds %struct.s2n_connection, ptr %7, i32 0, i32 27
  %8 = load ptr, ptr %secure21, align 8, !tbaa !13
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %cipher_suite, align 8, !tbaa !40
  %cmp22 = icmp ne ptr %9, null
  br i1 %cmp22, label %if.end32, label %if.then23

if.then23:                                        ; preds = %do.body20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.body25

do.body25:                                        ; preds = %do.body24
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.6, ptr %10, align 8, !tbaa !4
  %11 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %11, align 4, !tbaa !9
  %call26 = call i32 @s2n_calculate_stacktrace()
  br label %do.end27

do.end27:                                         ; preds = %do.body25
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %__error_signal29 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal29, align 4, !tbaa !11
  br label %return

do.end30:                                         ; No predecessors!
  br label %do.end31

do.end31:                                         ; preds = %do.end30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body20
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %secure35 = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 27
  %13 = load ptr, ptr %secure35, align 8, !tbaa !13
  %cipher_suite36 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %cipher_suite36, align 8, !tbaa !40
  %record_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %record_alg, align 8, !tbaa !45
  %cmp37 = icmp ne ptr %15, null
  br i1 %cmp37, label %if.end47, label %if.then38

if.then38:                                        ; preds = %do.body34
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  br label %do.body40

do.body40:                                        ; preds = %do.body39
  %16 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.7, ptr %16, align 8, !tbaa !4
  %17 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %17, align 4, !tbaa !9
  %call41 = call i32 @s2n_calculate_stacktrace()
  br label %do.end42

do.end42:                                         ; preds = %do.body40
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %__error_signal44 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal44, align 4, !tbaa !11
  br label %return

do.end45:                                         ; No predecessors!
  br label %do.end46

do.end46:                                         ; preds = %do.end45
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %do.body34
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 8, ptr %cipher) #6
  %18 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %secure49 = getelementptr inbounds %struct.s2n_connection, ptr %18, i32 0, i32 27
  %19 = load ptr, ptr %secure49, align 8, !tbaa !13
  %cipher_suite50 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %cipher_suite50, align 8, !tbaa !40
  %record_alg51 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %record_alg51, align 8, !tbaa !45
  %cipher52 = getelementptr inbounds %struct.s2n_record_algorithm, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %cipher52, align 8, !tbaa !47
  store ptr %22, ptr %cipher, align 8, !tbaa !4
  br label %do.body53

do.body53:                                        ; preds = %do.end48
  %23 = load ptr, ptr %cipher, align 8, !tbaa !4
  %cmp54 = icmp ne ptr %23, null
  br i1 %cmp54, label %if.end66, label %if.then55

if.then55:                                        ; preds = %do.body53
  br label %do.body56

do.body56:                                        ; preds = %if.then55
  br label %do.body57

do.body57:                                        ; preds = %do.body56
  %24 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.8, ptr %24, align 8, !tbaa !4
  %25 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %25, align 4, !tbaa !9
  %call58 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body57
  br label %do.end59

do.end59:                                         ; preds = %do.cond
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %__error_signal61 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal61, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond62:                                        ; No predecessors!
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  br label %do.cond64

do.cond64:                                        ; preds = %do.end63
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %do.body53
  br label %do.cond67

do.cond67:                                        ; preds = %if.end66
  br label %do.end68

do.end68:                                         ; preds = %do.cond67
  br label %do.body69

do.body69:                                        ; preds = %do.end68
  %call70 = call zeroext i1 @s2n_ktls_is_supported_on_platform()
  br i1 %call70, label %if.end83, label %if.then71

if.then71:                                        ; preds = %do.body69
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  br label %do.body73

do.body73:                                        ; preds = %do.body72
  %26 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.9, ptr %26, align 8, !tbaa !4
  %27 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762125, ptr %27, align 4, !tbaa !9
  %call74 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond75

do.cond75:                                        ; preds = %do.body73
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  br label %do.body77

do.body77:                                        ; preds = %do.end76
  %__error_signal78 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal78, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond79:                                        ; No predecessors!
  br label %do.end80

do.end80:                                         ; preds = %do.cond79
  br label %do.cond81

do.cond81:                                        ; preds = %do.end80
  br label %do.end82

do.end82:                                         ; preds = %do.cond81
  br label %if.end83

if.end83:                                         ; preds = %do.end82, %do.body69
  br label %do.cond84

do.cond84:                                        ; preds = %if.end83
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  %28 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call87 = call i32 @s2n_conn_get_current_message_type(ptr noundef %28)
  %cmp88 = icmp eq i32 20, %call87
  br i1 %cmp88, label %if.end101, label %if.then89

if.then89:                                        ; preds = %do.body86
  br label %do.body90

do.body90:                                        ; preds = %if.then89
  br label %do.body91

do.body91:                                        ; preds = %do.body90
  %29 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.10, ptr %29, align 8, !tbaa !4
  %30 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762123, ptr %30, align 4, !tbaa !9
  %call92 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond93

do.cond93:                                        ; preds = %do.body91
  br label %do.end94

do.end94:                                         ; preds = %do.cond93
  br label %do.body95

do.body95:                                        ; preds = %do.end94
  %__error_signal96 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal96, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond97:                                        ; No predecessors!
  br label %do.end98

do.end98:                                         ; preds = %do.cond97
  br label %do.cond99

do.cond99:                                        ; preds = %do.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  br label %if.end101

if.end101:                                        ; preds = %do.end100, %do.body86
  br label %do.cond102

do.cond102:                                       ; preds = %if.end101
  br label %do.end103

do.end103:                                        ; preds = %do.cond102
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %31 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %actual_protocol_version = getelementptr inbounds %struct.s2n_connection, ptr %31, i32 0, i32 23
  %32 = load i8, ptr %actual_protocol_version, align 4, !tbaa !49
  %conv = zext i8 %32 to i32
  %cmp105 = icmp eq i32 %conv, 33
  br i1 %cmp105, label %if.end119, label %if.then107

if.then107:                                       ; preds = %do.body104
  br label %do.body108

do.body108:                                       ; preds = %if.then107
  br label %do.body109

do.body109:                                       ; preds = %do.body108
  %33 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.11, ptr %33, align 8, !tbaa !4
  %34 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762126, ptr %34, align 4, !tbaa !9
  %call110 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond111

do.cond111:                                       ; preds = %do.body109
  br label %do.end112

do.end112:                                        ; preds = %do.cond111
  br label %do.body113

do.body113:                                       ; preds = %do.end112
  %__error_signal114 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal114, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond115:                                       ; No predecessors!
  br label %do.end116

do.end116:                                        ; preds = %do.cond115
  br label %do.cond117

do.cond117:                                       ; preds = %do.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %do.body104
  br label %do.cond120

do.cond120:                                       ; preds = %if.end119
  br label %do.end121

do.end121:                                        ; preds = %do.cond120
  br label %do.body122

do.body122:                                       ; preds = %do.end121
  %35 = load ptr, ptr %cipher, align 8, !tbaa !4
  %ktls_supported = getelementptr inbounds %struct.s2n_cipher, ptr %35, i32 0, i32 3
  %36 = load i8, ptr %ktls_supported, align 1, !tbaa !50, !range !52, !noundef !53
  %tobool = trunc i8 %36 to i1
  br i1 %tobool, label %if.end135, label %if.then123

if.then123:                                       ; preds = %do.body122
  br label %do.body124

do.body124:                                       ; preds = %if.then123
  br label %do.body125

do.body125:                                       ; preds = %do.body124
  %37 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.12, ptr %37, align 8, !tbaa !4
  %38 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762126, ptr %38, align 4, !tbaa !9
  %call126 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond127

do.cond127:                                       ; preds = %do.body125
  br label %do.end128

do.end128:                                        ; preds = %do.cond127
  br label %do.body129

do.body129:                                       ; preds = %do.end128
  %__error_signal130 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal130, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond131:                                       ; No predecessors!
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  br label %do.cond133

do.cond133:                                       ; preds = %do.end132
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %do.body122
  br label %do.cond136

do.cond136:                                       ; preds = %if.end135
  br label %do.end137

do.end137:                                        ; preds = %do.cond136
  %39 = load i32, ptr %ktls_mode.addr, align 4, !tbaa !8
  switch i32 %39, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb174
  ]

sw.bb:                                            ; preds = %do.end137
  br label %do.body138

do.body138:                                       ; preds = %sw.bb
  %40 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load = load i32, ptr %40, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 1
  %tobool139 = icmp ne i32 %bf.clear, 0
  br i1 %tobool139, label %if.end152, label %if.then140

if.then140:                                       ; preds = %do.body138
  br label %do.body141

do.body141:                                       ; preds = %if.then140
  br label %do.body142

do.body142:                                       ; preds = %do.body141
  %41 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.13, ptr %41, align 8, !tbaa !4
  %42 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762124, ptr %42, align 4, !tbaa !9
  %call143 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond144

do.cond144:                                       ; preds = %do.body142
  br label %do.end145

do.end145:                                        ; preds = %do.cond144
  br label %do.body146

do.body146:                                       ; preds = %do.end145
  %__error_signal147 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal147, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond148:                                       ; No predecessors!
  br label %do.end149

do.end149:                                        ; preds = %do.cond148
  br label %do.cond150

do.cond150:                                       ; preds = %do.end149
  br label %do.end151

do.end151:                                        ; preds = %do.cond150
  br label %if.end152

if.end152:                                        ; preds = %do.end151, %do.body138
  br label %do.cond153

do.cond153:                                       ; preds = %if.end152
  br label %do.end154

do.end154:                                        ; preds = %do.cond153
  br label %do.body155

do.body155:                                       ; preds = %do.end154
  %43 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %out = getelementptr inbounds %struct.s2n_connection, ptr %43, i32 0, i32 40
  %write_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %out, i32 0, i32 2
  %44 = load i32, ptr %write_cursor, align 4, !tbaa !54
  %45 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %out156 = getelementptr inbounds %struct.s2n_connection, ptr %45, i32 0, i32 40
  %read_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %out156, i32 0, i32 1
  %46 = load i32, ptr %read_cursor, align 8, !tbaa !55
  %sub = sub i32 %44, %46
  %cmp157 = icmp eq i32 %sub, 0
  br i1 %cmp157, label %if.end171, label %if.then159

if.then159:                                       ; preds = %do.body155
  br label %do.body160

do.body160:                                       ; preds = %if.then159
  br label %do.body161

do.body161:                                       ; preds = %do.body160
  %47 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.14, ptr %47, align 8, !tbaa !4
  %48 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544384, ptr %48, align 4, !tbaa !9
  %call162 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond163

do.cond163:                                       ; preds = %do.body161
  br label %do.end164

do.end164:                                        ; preds = %do.cond163
  br label %do.body165

do.body165:                                       ; preds = %do.end164
  %__error_signal166 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal166, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond167:                                       ; No predecessors!
  br label %do.end168

do.end168:                                        ; preds = %do.cond167
  br label %do.cond169

do.cond169:                                       ; preds = %do.end168
  br label %do.end170

do.end170:                                        ; preds = %do.cond169
  br label %if.end171

if.end171:                                        ; preds = %do.end170, %do.body155
  br label %do.cond172

do.cond172:                                       ; preds = %if.end171
  br label %do.end173

do.end173:                                        ; preds = %do.cond172
  br label %sw.epilog

sw.bb174:                                         ; preds = %do.end137
  br label %do.body175

do.body175:                                       ; preds = %sw.bb174
  %49 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load176 = load i32, ptr %49, align 8
  %bf.lshr177 = lshr i32 %bf.load176, 9
  %bf.clear178 = and i32 %bf.lshr177, 1
  %tobool179 = icmp ne i32 %bf.clear178, 0
  br i1 %tobool179, label %if.end192, label %if.then180

if.then180:                                       ; preds = %do.body175
  br label %do.body181

do.body181:                                       ; preds = %if.then180
  br label %do.body182

do.body182:                                       ; preds = %do.body181
  %50 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.15, ptr %50, align 8, !tbaa !4
  %51 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762124, ptr %51, align 4, !tbaa !9
  %call183 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond184

do.cond184:                                       ; preds = %do.body182
  br label %do.end185

do.end185:                                        ; preds = %do.cond184
  br label %do.body186

do.body186:                                       ; preds = %do.end185
  %__error_signal187 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal187, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond188:                                       ; No predecessors!
  br label %do.end189

do.end189:                                        ; preds = %do.cond188
  br label %do.cond190

do.cond190:                                       ; preds = %do.end189
  br label %do.end191

do.end191:                                        ; preds = %do.cond190
  br label %if.end192

if.end192:                                        ; preds = %do.end191, %do.body175
  br label %do.cond193

do.cond193:                                       ; preds = %if.end192
  br label %do.end194

do.end194:                                        ; preds = %do.cond193
  br label %do.body195

do.body195:                                       ; preds = %do.end194
  %52 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %in = getelementptr inbounds %struct.s2n_connection, ptr %52, i32 0, i32 39
  %write_cursor196 = getelementptr inbounds %struct.s2n_stuffer, ptr %in, i32 0, i32 2
  %53 = load i32, ptr %write_cursor196, align 4, !tbaa !56
  %54 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %in197 = getelementptr inbounds %struct.s2n_connection, ptr %54, i32 0, i32 39
  %read_cursor198 = getelementptr inbounds %struct.s2n_stuffer, ptr %in197, i32 0, i32 1
  %55 = load i32, ptr %read_cursor198, align 8, !tbaa !57
  %sub199 = sub i32 %53, %55
  %cmp200 = icmp eq i32 %sub199, 0
  br i1 %cmp200, label %if.end214, label %if.then202

if.then202:                                       ; preds = %do.body195
  br label %do.body203

do.body203:                                       ; preds = %if.then202
  br label %do.body204

do.body204:                                       ; preds = %do.body203
  %56 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.16, ptr %56, align 8, !tbaa !4
  %57 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 335544384, ptr %57, align 4, !tbaa !9
  %call205 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond206

do.cond206:                                       ; preds = %do.body204
  br label %do.end207

do.end207:                                        ; preds = %do.cond206
  br label %do.body208

do.body208:                                       ; preds = %do.end207
  %__error_signal209 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal209, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond210:                                       ; No predecessors!
  br label %do.end211

do.end211:                                        ; preds = %do.cond210
  br label %do.cond212

do.cond212:                                       ; preds = %do.end211
  br label %do.end213

do.end213:                                        ; preds = %do.cond212
  br label %if.end214

if.end214:                                        ; preds = %do.end213, %do.body195
  br label %do.cond215

do.cond215:                                       ; preds = %if.end214
  br label %do.end216

do.end216:                                        ; preds = %do.cond215
  br label %sw.epilog

sw.default:                                       ; preds = %do.end137
  br label %do.body217

do.body217:                                       ; preds = %sw.default
  br label %do.body218

do.body218:                                       ; preds = %do.body217
  %58 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.17, ptr %58, align 8, !tbaa !4
  %59 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %59, align 4, !tbaa !9
  %call219 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond220

do.cond220:                                       ; preds = %do.body218
  br label %do.end221

do.end221:                                        ; preds = %do.cond220
  br label %do.body222

do.body222:                                       ; preds = %do.end221
  %__error_signal223 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal223, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond224:                                       ; No predecessors!
  br label %do.end225

do.end225:                                        ; preds = %do.cond224
  br label %do.cond226

do.cond226:                                       ; preds = %do.end225
  br label %do.end227

do.end227:                                        ; preds = %do.cond226
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end227, %do.end216, %do.end173
  %__error_signal228 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal228, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body222, %do.body208, %do.body186, %do.body165, %do.body146, %do.body129, %do.body113, %do.body95, %do.body77, %do.body60
  call void @llvm.lifetime.end.p0(i64 8, ptr %cipher) #6
  br label %return

return:                                           ; preds = %cleanup, %do.body43, %do.body28, %do.body14, %do.body3
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %60 = load i32, ptr %coerce.dive, align 4
  ret i32 %60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @s2n_ktls_configure_socket(ptr noundef %conn, i32 noundef %ktls_mode) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %ktls_mode.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  store i32 %ktls_mode, ptr %ktls_mode.addr, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.18, ptr %1, align 8, !tbaa !4
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !9
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !11
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %fd) #6
  store i32 0, ptr %fd, align 4, !tbaa !9
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %4 = load i32, ptr %ktls_mode.addr, align 4, !tbaa !8
  %call8 = call i32 @s2n_ktls_retrieve_file_descriptor(ptr noundef %3, i32 noundef %4, ptr noundef %fd)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call8, ptr %coerce.dive, align 4
  %coerce.dive9 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %5 = load i32, ptr %coerce.dive9, align 4
  %call10 = call zeroext i1 @s2n_result_is_ok(i32 %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call10, label %if.end15, label %if.then11

if.then11:                                        ; preds = %do.body7
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %__error_signal13 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal13, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45

do.cond:                                          ; No predecessors!
  br label %do.end14

do.end14:                                         ; preds = %do.cond
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %do.body7
  br label %do.cond16

do.cond16:                                        ; preds = %if.end15
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  %call18 = call zeroext i1 (...) @s2n_in_unit_test()
  br i1 %call18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.end17
  %__error_signal20 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal20, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45

if.end21:                                         ; preds = %do.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  %6 = load i32, ptr %fd, align 4, !tbaa !9
  %call22 = call i32 @setsockopt(i32 noundef %6, i32 noundef 6, i32 noundef 31, ptr noundef @.str.19, i32 noundef 4) #6
  store i32 %call22, ptr %ret, align 4, !tbaa !9
  %7 = load i32, ptr %ret, align 4, !tbaa !9
  %cmp23 = icmp ne i32 %7, 0
  br i1 %cmp23, label %if.then24, label %if.end43

if.then24:                                        ; preds = %if.end21
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %call26 = call ptr @__errno_location() #7
  %8 = load i32, ptr %call26, align 4, !tbaa !9
  %cmp27 = icmp eq i32 %8, 17
  br i1 %cmp27, label %if.end40, label %if.then28

if.then28:                                        ; preds = %do.body25
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  br label %do.body30

do.body30:                                        ; preds = %do.body29
  %9 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.20, ptr %9, align 8, !tbaa !4
  %10 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762127, ptr %10, align 4, !tbaa !9
  %call31 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond32

do.cond32:                                        ; preds = %do.body30
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %__error_signal35 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal35, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond36:                                        ; No predecessors!
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38

do.cond38:                                        ; preds = %do.end37
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %do.body25
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %if.end21
  %__error_signal44 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal44, align 4, !tbaa !11
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.body34
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup, %if.then19, %do.body12
  call void @llvm.lifetime.end.p0(i64 4, ptr %fd) #6
  br label %return

return:                                           ; preds = %cleanup45, %do.body3
  %coerce.dive46 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %11 = load i32, ptr %coerce.dive46, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_connection_ktls_enable_recv(ptr noundef %conn) #0 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp19 = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.3, ptr %1, align 8, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call8 = call i32 @s2n_ktls_validate(ptr noundef %3, i32 noundef 1)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call8, ptr %coerce.dive, align 4
  %coerce.dive9 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %4 = load i32, ptr %coerce.dive9, align 4
  %call10 = call zeroext i1 @s2n_result_is_ok(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %do.body7
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  store i32 -1, ptr %retval, align 4
  br label %return

do.end13:                                         ; No predecessors!
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.body7
  br label %do.end15

do.end15:                                         ; preds = %if.end14
  %5 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load = load i32, ptr %5, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %do.end15
  br label %do.body18

do.body18:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp19) #6
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %call20 = call i32 @s2n_ktls_configure_socket(ptr noundef %6, i32 noundef 1)
  %coerce.dive21 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp19, i32 0, i32 0
  store i32 %call20, ptr %coerce.dive21, align 4
  %coerce.dive22 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp19, i32 0, i32 0
  %7 = load i32, ptr %coerce.dive22, align 4
  %call23 = call zeroext i1 @s2n_result_is_ok(i32 %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp19) #6
  br i1 %call23, label %if.end27, label %if.then24

if.then24:                                        ; preds = %do.body18
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  store i32 -1, ptr %retval, align 4
  br label %return

do.end26:                                         ; No predecessors!
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %do.body18
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  %8 = load ptr, ptr %conn.addr, align 8, !tbaa !4
  %bf.load29 = load i32, ptr %8, align 8
  %bf.clear30 = and i32 %bf.load29, -524289
  %bf.set = or i32 %bf.clear30, 524288
  store i32 %bf.set, ptr %8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end28, %do.body25, %if.then16, %do.body12, %do.body3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @s2n_conn_get_current_message_type(ptr noundef) #2

declare zeroext i1 @s2n_in_unit_test(...) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !10, i64 0}
!12 = !{!"", !10, i64 0}
!13 = !{!14, !5, i64 224}
!14 = !{!"s2n_connection", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 2, !10, i64 2, !10, i64 2, !10, i64 2, !10, i64 2, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !6, i64 80, !6, i64 101, !6, i64 122, !6, i64 144, !6, i64 148, !15, i64 152, !16, i64 160, !16, i64 168, !6, i64 176, !6, i64 208, !6, i64 209, !6, i64 210, !6, i64 211, !6, i64 212, !6, i64 213, !6, i64 214, !5, i64 216, !5, i64 224, !17, i64 232, !5, i64 576, !5, i64 584, !18, i64 592, !25, i64 1040, !30, i64 1672, !5, i64 1736, !6, i64 1744, !6, i64 1748, !6, i64 1752, !32, i64 1760, !32, i64 1800, !32, i64 1840, !6, i64 1880, !16, i64 1888, !6, i64 1896, !32, i64 1904, !6, i64 1944, !6, i64 1945, !6, i64 1946, !24, i64 1947, !12, i64 1948, !12, i64 1952, !33, i64 1960, !29, i64 2152, !10, i64 2156, !29, i64 2160, !16, i64 2168, !6, i64 2176, !16, i64 2184, !16, i64 2192, !16, i64 2200, !12, i64 2208, !12, i64 2212, !6, i64 2216, !6, i64 2472, !6, i64 2728, !23, i64 2736, !6, i64 2760, !23, i64 2768, !23, i64 2792, !23, i64 2816, !35, i64 2840, !37, i64 3752, !5, i64 3800, !5, i64 3808, !6, i64 3816, !6, i64 3820, !23, i64 3824, !10, i64 3848, !38, i64 3856, !6, i64 3888, !32, i64 4000, !23, i64 4040, !23, i64 4064, !24, i64 4088, !24, i64 4089, !24, i64 4090, !29, i64 4092, !29, i64 4094, !6, i64 4096, !10, i64 4100, !23, i64 4104, !10, i64 4128, !39, i64 4136, !12, i64 4184}
!15 = !{!"s2n_timer", !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"s2n_secrets", !6, i64 0, !6, i64 340}
!18 = !{!"s2n_kex_parameters", !19, i64 0, !20, i64 8, !6, i64 24, !20, i64 56, !21, i64 72, !21, i64 184, !6, i64 296, !22, i64 312, !23, i64 400, !23, i64 424}
!19 = !{!"s2n_dh_params", !5, i64 0}
!20 = !{!"s2n_ecc_evp_params", !5, i64 0, !5, i64 8}
!21 = !{!"s2n_kem_group_params", !5, i64 0, !22, i64 8, !20, i64 96}
!22 = !{!"s2n_kem_params", !5, i64 0, !23, i64 8, !23, i64 32, !23, i64 56, !24, i64 80}
!23 = !{!"s2n_blob", !5, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{!"s2n_handshake_parameters", !26, i64 0, !26, i64 80, !23, i64 160, !6, i64 184, !27, i64 188, !28, i64 320, !27, i64 344, !28, i64 480, !5, i64 504, !6, i64 512, !6, i64 536, !6, i64 560, !6, i64 561, !6, i64 562, !6, i64 594}
!26 = !{!"s2n_pkey", !6, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!27 = !{!"s2n_sig_scheme_list", !6, i64 0, !6, i64 128}
!28 = !{!"s2n_signature_scheme", !29, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 13, !29, i64 14, !5, i64 16}
!29 = !{!"short", !6, i64 0}
!30 = !{!"s2n_psk_parameters", !6, i64 0, !31, i64 8, !29, i64 40, !29, i64 42, !5, i64 48, !6, i64 56}
!31 = !{!"s2n_array", !23, i64 0, !10, i64 24, !10, i64 28}
!32 = !{!"s2n_stuffer", !23, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 36, !10, i64 36}
!33 = !{!"s2n_handshake", !32, i64 0, !5, i64 40, !6, i64 48, !6, i64 56, !6, i64 104, !6, i64 152, !10, i64 156, !10, i64 160, !6, i64 164, !6, i64 168, !34, i64 176, !10, i64 184, !10, i64 184, !10, i64 184, !10, i64 184, !6, i64 188}
!34 = !{!"s2n_offered_early_data", !5, i64 0}
!35 = !{!"s2n_client_hello", !23, i64 0, !36, i64 24, !23, i64 856, !23, i64 880, !10, i64 904, !10, i64 904, !10, i64 904, !10, i64 904, !10, i64 904, !10, i64 904}
!36 = !{!"", !6, i64 0, !23, i64 800, !29, i64 824}
!37 = !{!"s2n_x509_validator", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !29, i64 18, !5, i64 24, !10, i64 32, !5, i64 40}
!38 = !{!"s2n_ticket_fields", !23, i64 0, !10, i64 24}
!39 = !{!"s2n_post_handshake", !32, i64 0, !6, i64 40}
!40 = !{!41, !5, i64 0}
!41 = !{!"s2n_crypto_parameters", !5, i64 0, !42, i64 8, !42, i64 16, !43, i64 24, !43, i64 1192, !6, i64 2360, !6, i64 2376, !6, i64 2392, !6, i64 2400}
!42 = !{!"s2n_session_key", !5, i64 0}
!43 = !{!"s2n_hmac_state", !6, i64 0, !29, i64 4, !10, i64 8, !29, i64 12, !6, i64 14, !44, i64 16, !44, i64 256, !44, i64 496, !44, i64 736, !6, i64 976, !6, i64 1104}
!44 = !{!"s2n_hash_state", !5, i64 0, !6, i64 8, !6, i64 12, !16, i64 16, !6, i64 24}
!45 = !{!46, !5, i64 40}
!46 = !{!"s2n_cipher_suite", !10, i64 0, !5, i64 8, !6, i64 16, !5, i64 24, !6, i64 32, !5, i64 40, !6, i64 48, !6, i64 64, !5, i64 72, !5, i64 80, !6, i64 88, !6, i64 92}
!47 = !{!48, !5, i64 0}
!48 = !{!"s2n_record_algorithm", !5, i64 0, !6, i64 8, !10, i64 12, !16, i64 16}
!49 = !{!14, !6, i64 212}
!50 = !{!51, !24, i64 49}
!51 = !{!"s2n_cipher", !6, i64 0, !6, i64 8, !6, i64 48, !24, i64 49, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!14, !10, i64 1868}
!55 = !{!14, !10, i64 1864}
!56 = !{!14, !10, i64 1828}
!57 = !{!14, !10, i64 1824}

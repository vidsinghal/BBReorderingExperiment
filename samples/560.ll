; ModuleID = 'samples/560.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_blob = type { ptr, i32, i32, i8 }
%struct.s2n_result = type { i32 }
%struct.s2n_hash_state = type { ptr, i32, i8, i64, %union.anon }
%union.anon = type { %union.s2n_hash_low_level_digest }
%union.s2n_hash_low_level_digest = type { %struct.SHA512state_st }
%struct.SHA512state_st = type { [8 x i64], i64, i64, %union.anon.0, i32, i32 }
%union.anon.0 = type { [16 x i64] }
%struct.s2n_psk = type { i32, %struct.s2n_blob, %struct.s2n_blob, i32, i32, i64, %struct.s2n_blob, %struct.s2n_early_data_config, i64 }
%struct.s2n_early_data_config = type { i32, i8, ptr, %struct.s2n_blob, %struct.s2n_blob }
%struct.s2n_hmac_state = type { i32, i16, i32, i16, i8, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, [128 x i8], [64 x i8] }
%struct.s2n_connection = type { i24, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [21 x i8], [21 x i8], [21 x i8], i32, i32, %struct.s2n_timer, i64, i64, [32 x i8], i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.s2n_secrets, ptr, ptr, %struct.s2n_kex_parameters, %struct.s2n_handshake_parameters, %struct.s2n_psk_parameters, ptr, i8, i32, [5 x i8], %struct.s2n_stuffer, %struct.s2n_stuffer, %struct.s2n_stuffer, i32, i64, [2 x i8], %struct.s2n_stuffer, i8, i8, i8, i8, %struct.s2n_atomic_flag, %struct.s2n_atomic_flag, %struct.s2n_handshake, i16, i32, i16, i64, i8, i64, i64, i64, %struct.s2n_atomic_flag, %struct.s2n_atomic_flag, [256 x i8], [256 x i8], i32, %struct.s2n_blob, i32, %struct.s2n_blob, %struct.s2n_blob, %struct.s2n_blob, %struct.s2n_client_hello, %struct.s2n_x509_validator, ptr, ptr, i8, i32, %struct.s2n_blob, i32, %struct.s2n_ticket_fields, [105 x i8], %struct.s2n_stuffer, %struct.s2n_blob, %struct.s2n_blob, i8, i8, i8, i16, i16, i32, i32, %struct.s2n_blob, i32, %struct.s2n_post_handshake, %struct.s2n_atomic_flag }
%struct.s2n_timer = type { i64 }
%struct.s2n_secrets = type { %union.anon.1, i32 }
%union.anon.1 = type { %struct.s2n_tls13_secrets }
%struct.s2n_tls13_secrets = type { [48 x i8], [48 x i8], [48 x i8], [48 x i8], [48 x i8], [48 x i8], [48 x i8], i32 }
%struct.s2n_kex_parameters = type { %struct.s2n_dh_params, %struct.s2n_ecc_evp_params, [4 x ptr], %struct.s2n_ecc_evp_params, %struct.s2n_kem_group_params, %struct.s2n_kem_group_params, [2 x ptr], %struct.s2n_kem_params, %struct.s2n_blob, %struct.s2n_blob }
%struct.s2n_dh_params = type { ptr }
%struct.s2n_ecc_evp_params = type { ptr, ptr }
%struct.s2n_kem_group_params = type { ptr, %struct.s2n_kem_params, %struct.s2n_ecc_evp_params }
%struct.s2n_kem_params = type { ptr, %struct.s2n_blob, %struct.s2n_blob, %struct.s2n_blob, i8 }
%struct.s2n_handshake_parameters = type { %struct.s2n_pkey, %struct.s2n_pkey, %struct.s2n_blob, i32, %struct.s2n_sig_scheme_list, %struct.s2n_signature_scheme, %struct.s2n_sig_scheme_list, %struct.s2n_signature_scheme, ptr, [3 x ptr], [3 x ptr], i8, i8, [32 x i8], [32 x i8] }
%struct.s2n_pkey = type { %union.anon.2, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.2 = type { %struct.s2n_rsa_key }
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
%struct.s2n_post_handshake = type { %struct.s2n_stuffer, [4 x i8] }
%struct.s2n_atomic_flag = type { i32 }
%struct.s2n_crypto_parameters = type { ptr, %struct.s2n_session_key, %struct.s2n_session_key, %struct.s2n_hmac_state, %struct.s2n_hmac_state, [16 x i8], [16 x i8], [8 x i8], [8 x i8] }
%struct.s2n_session_key = type { ptr }
%struct.s2n_cipher_suite = type { i8, ptr, [2 x i8], ptr, i32, ptr, [2 x ptr], i8, ptr, ptr, i32, i8 }
%struct.s2n_handshake_hashes = type { %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, %struct.s2n_hash_state, [48 x i8], %struct.s2n_hash_state }

@supported_hmacs = internal global [2 x i32] [i32 4, i32 5], align 4
@.str = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:257\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@zero_value_bytes = internal global [48 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:318\00", align 1
@.str.2 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:319\00", align 1
@s2n_tls13_label_resumption_psk_binder_key = external constant %struct.s2n_blob, align 8
@s2n_tls13_label_external_psk_binder_key = external constant %struct.s2n_blob, align 8
@.str.3 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:510\00", align 1
@.str.4 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:512\00", align 1
@.str.5 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:513\00", align 1
@s2n_tls13_label_resumption_master_secret = external constant %struct.s2n_blob, align 8
@.str.6 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:531\00", align 1
@.str.7 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:532\00", align 1
@.str.8 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:533\00", align 1
@.str.9 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:534\00", align 1
@.str.10 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:535\00", align 1
@.str.11 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:537\00", align 1
@.str.12 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:538\00", align 1
@extract_methods = internal global [4 x ptr] [ptr null, ptr @s2n_extract_early_secret_for_schedule, ptr @s2n_extract_handshake_secret, ptr @s2n_extract_master_secret], align 16
@.str.13 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:542\00", align 1
@.str.14 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:559\00", align 1
@.str.15 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:560\00", align 1
@.str.16 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:561\00", align 1
@.str.17 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:562\00", align 1
@.str.18 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:563\00", align 1
@.str.19 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:564\00", align 1
@.str.20 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:568\00", align 1
@.str.21 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:569\00", align 1
@derive_methods = internal global [4 x [2 x ptr]] [[2 x ptr] zeroinitializer, [2 x ptr] [ptr @s2n_derive_client_early_traffic_secret, ptr @s2n_derive_client_early_traffic_secret], [2 x ptr] [ptr @s2n_derive_server_handshake_traffic_secret, ptr @s2n_derive_client_handshake_traffic_secret], [2 x ptr] [ptr @s2n_derive_server_application_traffic_secret, ptr @s2n_derive_client_application_traffic_secret]], align 16
@.str.22 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:570\00", align 1
@.str.23 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:579\00", align 1
@.str.24 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:581\00", align 1
@.str.25 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:582\00", align 1
@.str.26 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:607\00", align 1
@.str.27 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:613\00", align 1
@.str.28 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:614\00", align 1
@.str.29 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:653\00", align 1
@.str.30 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:654\00", align 1
@.str.31 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:656\00", align 1
@.str.32 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:657\00", align 1
@.str.33 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:664\00", align 1
@.str.34 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:665\00", align 1
@.str.35 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:666\00", align 1
@.str.36 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:667\00", align 1
@.str.37 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:670\00", align 1
@.str.38 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:671\00", align 1
@s2n_get_empty_context.sha256_empty_digest = internal global [48 x i8] zeroinitializer, align 16
@s2n_get_empty_context.sha384_empty_digest = internal global [48 x i8] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:169\00", align 1
@.str.40 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:170\00", align 1
@.str.41 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:171\00", align 1
@.str.42 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:173\00", align 1
@.str.43 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:174\00", align 1
@.str.44 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:273\00", align 1
@.str.45 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:284\00", align 1
@.str.46 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:305\00", align 1
@.str.47 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:306\00", align 1
@.str.48 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:361\00", align 1
@.str.49 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:183\00", align 1
@.str.50 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:184\00", align 1
@.str.51 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:186\00", align 1
@s2n_tls13_label_derived_secret = external constant %struct.s2n_blob, align 8
@.str.52 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:453\00", align 1
@s2n_tls13_label_client_early_traffic_secret = external constant %struct.s2n_blob, align 8
@.str.53 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:420\00", align 1
@.str.54 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:421\00", align 1
@s2n_tls13_label_server_handshake_traffic_secret = external constant %struct.s2n_blob, align 8
@.str.55 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:204\00", align 1
@.str.56 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:205\00", align 1
@.str.57 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:206\00", align 1
@s2n_tls13_label_finished = external constant %struct.s2n_blob, align 8
@.str.58 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:388\00", align 1
@.str.59 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:389\00", align 1
@s2n_tls13_label_client_handshake_traffic_secret = external constant %struct.s2n_blob, align 8
@s2n_tls13_label_server_application_traffic_secret = external constant %struct.s2n_blob, align 8
@s2n_tls13_label_client_application_traffic_secret = external constant %struct.s2n_blob, align 8
@.str.60 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:225\00", align 1
@.str.61 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:226\00", align 1
@s2n_trigger_secret_callbacks.conversions = internal constant [4 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 2, i32 1], [2 x i32] [i32 4, i32 3]], align 16
@.str.62 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:105\00", align 1
@.str.63 = private unnamed_addr constant [220 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/tls/s2n_tls13_secrets.c:106\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_empty_transcripts_init() #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %hash = alloca %struct.s2n_hash_state, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hash_alg = alloca i32, align 4
  %i = alloca i64, align 8
  %hmac_alg = alloca i32, align 4
  %digest = alloca %struct.s2n_blob, align 8
  call void @llvm.lifetime.start.p0(i64 240, ptr %hash) #6
  call void @llvm.memset.p0.i64(ptr align 8 %hash, i8 0, i64 240, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @s2n_hash_new(ptr noundef %hash)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2

do.cond2:                                         ; preds = %if.end
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash_alg) #6
  store i32 0, ptr %hash_alg, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  store i64 0, ptr %i, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end3
  %0 = load i64, ptr %i, align 8, !tbaa !10
  %cmp4 = icmp ult i64 %0, 2
  br i1 %cmp4, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup46

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmac_alg) #6
  %1 = load i64, ptr %i, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds [2 x i32], ptr @supported_hmacs, i64 0, i64 %1
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %2, ptr %hmac_alg, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %digest) #6
  %data = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 0
  %3 = load i32, ptr %hmac_alg, align 4, !tbaa !9
  %call5 = call ptr @s2n_get_empty_context(i32 noundef %3)
  store ptr %call5, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 1
  %4 = load i32, ptr %hmac_alg, align 4, !tbaa !9
  %call6 = call zeroext i8 @s2n_get_hash_len(i32 noundef %4)
  %conv = zext i8 %call6 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  br label %do.body7

do.body7:                                         ; preds = %for.body
  %5 = load i32, ptr %hmac_alg, align 4, !tbaa !9
  %call8 = call i32 @s2n_hmac_hash_alg(i32 noundef %5, ptr noundef %hash_alg)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.end16, label %if.then11

if.then11:                                        ; preds = %do.body7
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %__error_signal13 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal13, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond14:                                        ; No predecessors!
  br label %do.end15

do.end15:                                         ; preds = %do.cond14
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body7
  br label %do.cond17

do.cond17:                                        ; preds = %if.end16
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %6 = load i32, ptr %hash_alg, align 4, !tbaa !9
  %call20 = call i32 @s2n_hash_init(ptr noundef %hash, i32 noundef %6)
  %cmp21 = icmp sgt i32 %call20, -1
  br i1 %cmp21, label %if.end28, label %if.then23

if.then23:                                        ; preds = %do.body19
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  %__error_signal25 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal25, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond26:                                        ; No predecessors!
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %do.body19
  br label %do.cond29

do.cond29:                                        ; preds = %if.end28
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  br label %do.body31

do.body31:                                        ; preds = %do.end30
  %data32 = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 0
  %7 = load ptr, ptr %data32, align 8, !tbaa !12
  %size33 = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 1
  %8 = load i32, ptr %size33, align 8, !tbaa !15
  %call34 = call i32 @s2n_hash_digest(ptr noundef %hash, ptr noundef %7, i32 noundef %8)
  %cmp35 = icmp sgt i32 %call34, -1
  br i1 %cmp35, label %if.end42, label %if.then37

if.then37:                                        ; preds = %do.body31
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  %__error_signal39 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal39, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond40:                                        ; No predecessors!
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %do.body31
  br label %do.cond43

do.cond43:                                        ; preds = %if.end42
  br label %do.end44

do.end44:                                         ; preds = %do.cond43
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %do.body38, %do.body24, %do.body12
  call void @llvm.lifetime.end.p0(i64 24, ptr %digest) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmac_alg) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !10
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !10
  br label %for.cond

cleanup46:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  %cleanup.dest47 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest47, label %cleanup49 [
    i32 6, label %for.end
  ]

for.end:                                          ; preds = %cleanup46
  %__error_signal48 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal48, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %for.end, %cleanup46
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash_alg) #6
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup49, %do.body1
  %call51 = call i32 @s2n_hash_free(ptr noundef %hash)
  call void @llvm.lifetime.end.p0(i64 240, ptr %hash) #6
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %10 = load i32, ptr %coerce.dive, align 4
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @s2n_hash_free(ptr noundef) #3

declare i32 @s2n_hash_new(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @s2n_get_empty_context(i32 noundef %hmac_alg) #0 {
entry:
  %retval = alloca ptr, align 8
  %hmac_alg.addr = alloca i32, align 4
  store i32 %hmac_alg, ptr %hmac_alg.addr, align 4, !tbaa !9
  %0 = load i32, ptr %hmac_alg.addr, align 4, !tbaa !9
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store ptr @s2n_get_empty_context.sha256_empty_digest, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @s2n_get_empty_context.sha384_empty_digest, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @s2n_get_hash_len(i32 noundef %hmac_alg) #0 {
entry:
  %retval = alloca i8, align 1
  %hmac_alg.addr = alloca i32, align 4
  %hash_size = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %hmac_alg, ptr %hmac_alg.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr %hash_size) #6
  store i8 0, ptr %hash_size, align 1, !tbaa !9
  %0 = load i32, ptr %hmac_alg.addr, align 4, !tbaa !9
  %call = call i32 @s2n_hmac_digest_size(i32 noundef %0, ptr noundef %hash_size)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %hash_size, align 1, !tbaa !9
  store i8 %1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %hash_size) #6
  %2 = load i8, ptr %retval, align 1
  ret i8 %2
}

declare i32 @s2n_hmac_hash_alg(i32 noundef, ptr noundef) #3

declare i32 @s2n_hash_init(ptr noundef, i32 noundef) #3

declare i32 @s2n_hash_digest(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_extract_early_secret(ptr noundef %psk) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %psk.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  store ptr %psk, ptr %psk.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %early_secret = getelementptr inbounds %struct.s2n_psk, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %hmac_alg = getelementptr inbounds %struct.s2n_psk, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %hmac_alg, align 8, !tbaa !19
  %call8 = call zeroext i8 @s2n_get_hash_len(i32 noundef %5)
  %conv = zext i8 %call8 to i32
  %call9 = call i32 @s2n_realloc(ptr noundef %early_secret, i32 noundef %conv)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.end16, label %if.then12

if.then12:                                        ; preds = %do.body7
  br label %do.body13

do.body13:                                        ; preds = %if.then12
  %__error_signal14 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal14, align 4, !tbaa !4
  br label %return

do.end15:                                         ; No predecessors!
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %do.body7
  br label %do.end17

do.end17:                                         ; preds = %if.end16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %6 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %hmac_alg19 = getelementptr inbounds %struct.s2n_psk, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %hmac_alg19, align 8, !tbaa !19
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  store ptr @zero_value_bytes, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %8 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %hmac_alg20 = getelementptr inbounds %struct.s2n_psk, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %hmac_alg20, align 8, !tbaa !19
  %call21 = call zeroext i8 @s2n_get_hash_len(i32 noundef %9)
  %conv22 = zext i8 %call21 to i32
  store i32 %conv22, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %10 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %secret = getelementptr inbounds %struct.s2n_psk, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %early_secret23 = getelementptr inbounds %struct.s2n_psk, ptr %11, i32 0, i32 6
  %call24 = call i32 @s2n_extract_secret(i32 noundef %7, ptr noundef %.compoundliteral, ptr noundef %secret, ptr noundef %early_secret23)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call24, ptr %coerce.dive, align 4
  %coerce.dive25 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %12 = load i32, ptr %coerce.dive25, align 4
  %call26 = call zeroext i1 @s2n_result_is_ok(i32 %12)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call26, label %if.end31, label %if.then27

if.then27:                                        ; preds = %do.body18
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  %__error_signal29 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal29, align 4, !tbaa !4
  br label %return

do.end30:                                         ; No predecessors!
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.body18
  br label %do.end32

do.end32:                                         ; preds = %if.end31
  %__error_signal33 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal33, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end32, %do.body28, %do.body13, %do.body3
  %coerce.dive34 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %13 = load i32, ptr %coerce.dive34, align 4
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

declare i32 @s2n_calculate_stacktrace() #3

declare i32 @s2n_realloc(ptr noundef, i32 noundef) #3

declare zeroext i1 @s2n_result_is_ok(i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @s2n_extract_secret(i32 noundef %hmac_alg, ptr noundef %previous_secret_material, ptr noundef %new_secret_material, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %hmac_alg.addr = alloca i32, align 4
  %previous_secret_material.addr = alloca ptr, align 8
  %new_secret_material.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %hmac_state = alloca %struct.s2n_hmac_state, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %hmac_alg, ptr %hmac_alg.addr, align 4, !tbaa !9
  store ptr %previous_secret_material, ptr %previous_secret_material.addr, align 8, !tbaa !17
  store ptr %new_secret_material, ptr %new_secret_material.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 1168, ptr %hmac_state) #6
  call void @llvm.memset.p0.i64(ptr align 8 %hmac_state, i8 0, i64 1168, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @s2n_hmac_new(ptr noundef %hmac_state)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2

do.cond2:                                         ; preds = %if.end
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %0 = load i32, ptr %hmac_alg.addr, align 4, !tbaa !9
  %1 = load ptr, ptr %previous_secret_material.addr, align 8, !tbaa !17
  %2 = load ptr, ptr %new_secret_material.addr, align 8, !tbaa !17
  %3 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call5 = call i32 @s2n_hkdf_extract(ptr noundef %hmac_state, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %if.end12, label %if.then7

if.then7:                                         ; preds = %do.body4
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  %__error_signal9 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal9, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond10:                                        ; No predecessors!
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %do.body4
  br label %do.cond13

do.cond13:                                        ; preds = %if.end12
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal15, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body8, %do.body1
  %call16 = call i32 @s2n_hmac_free(ptr noundef %hmac_state)
  call void @llvm.lifetime.end.p0(i64 1168, ptr %hmac_state) #6
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %4 = load i32, ptr %coerce.dive, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_derive_binder_key(ptr noundef %psk, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %psk.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %label = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp35 = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  store ptr %psk, ptr %psk.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.2, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
  br label %return

do.end16:                                         ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body7
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #6
  store ptr @s2n_tls13_label_resumption_psk_binder_key, ptr %label, align 8, !tbaa !17
  %6 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %type = getelementptr inbounds %struct.s2n_psk, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type, align 8, !tbaa !22
  %cmp20 = icmp eq i32 %7, 1
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end19
  store ptr @s2n_tls13_label_external_psk_binder_key, ptr %label, align 8, !tbaa !17
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end19
  br label %do.body23

do.body23:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %8 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %call24 = call i32 @s2n_extract_early_secret(ptr noundef %8)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call24, ptr %coerce.dive, align 4
  %coerce.dive25 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %9 = load i32, ptr %coerce.dive25, align 4
  %call26 = call zeroext i1 @s2n_result_is_ok(i32 %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call26, label %if.end31, label %if.then27

if.then27:                                        ; preds = %do.body23
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  %__error_signal29 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal29, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end30

do.end30:                                         ; preds = %do.cond
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %do.body23
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp35) #6
  %10 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %hmac_alg = getelementptr inbounds %struct.s2n_psk, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %hmac_alg, align 8, !tbaa !19
  %12 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %early_secret = getelementptr inbounds %struct.s2n_psk, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %label, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %14 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %hmac_alg36 = getelementptr inbounds %struct.s2n_psk, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %hmac_alg36, align 8, !tbaa !19
  %call37 = call ptr @s2n_get_empty_context(i32 noundef %15)
  store ptr %call37, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %16 = load ptr, ptr %psk.addr, align 8, !tbaa !17
  %hmac_alg38 = getelementptr inbounds %struct.s2n_psk, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %hmac_alg38, align 8, !tbaa !19
  %call39 = call zeroext i8 @s2n_get_hash_len(i32 noundef %17)
  %conv = zext i8 %call39 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %18 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call40 = call i32 @s2n_derive_secret(i32 noundef %11, ptr noundef %early_secret, ptr noundef %13, ptr noundef %.compoundliteral, ptr noundef %18)
  %coerce.dive41 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp35, i32 0, i32 0
  store i32 %call40, ptr %coerce.dive41, align 4
  %coerce.dive42 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp35, i32 0, i32 0
  %19 = load i32, ptr %coerce.dive42, align 4
  %call43 = call zeroext i1 @s2n_result_is_ok(i32 %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp35) #6
  br i1 %call43, label %if.end49, label %if.then44

if.then44:                                        ; preds = %do.body34
  br label %do.body45

do.body45:                                        ; preds = %if.then44
  %__error_signal46 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal46, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond47:                                        ; No predecessors!
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %do.body34
  br label %do.cond50

do.cond50:                                        ; preds = %if.end49
  br label %do.end51

do.end51:                                         ; preds = %do.cond50
  %__error_signal52 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal52, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %do.body45, %do.body28
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #6
  br label %return

return:                                           ; preds = %cleanup, %do.body14, %do.body3
  %coerce.dive53 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %20 = load i32, ptr %coerce.dive53, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_secret(i32 noundef %hmac_alg, ptr noundef %previous_secret_material, ptr noundef %label, ptr noundef %context, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %hmac_alg.addr = alloca i32, align 4
  %previous_secret_material.addr = alloca ptr, align 8
  %label.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %hmac_state = alloca %struct.s2n_hmac_state, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %hmac_alg, ptr %hmac_alg.addr, align 4, !tbaa !9
  store ptr %previous_secret_material, ptr %previous_secret_material.addr, align 8, !tbaa !17
  store ptr %label, ptr %label.addr, align 8, !tbaa !17
  store ptr %context, ptr %context.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 1168, ptr %hmac_state) #6
  call void @llvm.memset.p0.i64(ptr align 8 %hmac_state, i8 0, i64 1168, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 @s2n_hmac_new(ptr noundef %hmac_state)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond2

do.cond2:                                         ; preds = %if.end
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load i32, ptr %hmac_alg.addr, align 4, !tbaa !9
  %call4 = call zeroext i8 @s2n_get_hash_len(i32 noundef %0)
  %conv = zext i8 %call4 to i32
  %1 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %size = getelementptr inbounds %struct.s2n_blob, ptr %1, i32 0, i32 1
  store i32 %conv, ptr %size, align 8, !tbaa !15
  br label %do.body5

do.body5:                                         ; preds = %do.end3
  %2 = load i32, ptr %hmac_alg.addr, align 4, !tbaa !9
  %3 = load ptr, ptr %previous_secret_material.addr, align 8, !tbaa !17
  %4 = load ptr, ptr %label.addr, align 8, !tbaa !17
  %5 = load ptr, ptr %context.addr, align 8, !tbaa !17
  %6 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call6 = call i32 @s2n_hkdf_expand_label(ptr noundef %hmac_state, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %cmp7 = icmp sgt i32 %call6, -1
  br i1 %cmp7, label %if.end14, label %if.then9

if.then9:                                         ; preds = %do.body5
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  %__error_signal11 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal11, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond12:                                        ; No predecessors!
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.body5
  br label %do.cond15

do.cond15:                                        ; preds = %if.end14
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  %__error_signal17 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal17, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.body10, %do.body1
  %call18 = call i32 @s2n_hmac_free(ptr noundef %hmac_state)
  call void @llvm.lifetime.end.p0(i64 1168, ptr %hmac_state) #6
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %7 = load i32, ptr %coerce.dive, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_derive_resumption_master_secret(ptr noundef %conn) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.3, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %secure, align 8, !tbaa !23
  %cmp8 = icmp ne ptr %4, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.4, ptr %5, align 8, !tbaa !17
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %6, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure21 = getelementptr inbounds %struct.s2n_connection, ptr %7, i32 0, i32 27
  %8 = load ptr, ptr %secure21, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %cmp22 = icmp ne ptr %9, null
  br i1 %cmp22, label %if.end32, label %if.then23

if.then23:                                        ; preds = %do.body20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.body25

do.body25:                                        ; preds = %do.body24
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.5, ptr %10, align 8, !tbaa !17
  %11 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %11, align 4, !tbaa !18
  %call26 = call i32 @s2n_calculate_stacktrace()
  br label %do.end27

do.end27:                                         ; preds = %do.body25
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %__error_signal29 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal29, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %13 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %13, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 0
  %resumption_master_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 6
  %arraydecay = getelementptr inbounds [48 x i8], ptr %resumption_master_secret, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %14 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure35 = getelementptr inbounds %struct.s2n_connection, ptr %14, i32 0, i32 27
  %15 = load ptr, ptr %secure35, align 8, !tbaa !23
  %cipher_suite36 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %cipher_suite36, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %16, i32 0, i32 10
  %17 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %call37 = call zeroext i8 @s2n_get_hash_len(i32 noundef %17)
  %conv = zext i8 %call37 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %call38 = call i32 @s2n_derive_secret_with_context(ptr noundef %12, i32 noundef 3, ptr noundef @s2n_tls13_label_resumption_master_secret, i32 noundef 13, ptr noundef %.compoundliteral)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call38, ptr %coerce.dive, align 4
  %coerce.dive39 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %18 = load i32, ptr %coerce.dive39, align 4
  %call40 = call zeroext i1 @s2n_result_is_ok(i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call40, label %if.end45, label %if.then41

if.then41:                                        ; preds = %do.body34
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  %__error_signal43 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal43, align 4, !tbaa !4
  br label %return

do.end44:                                         ; No predecessors!
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %do.body34
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  %__error_signal47 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal47, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end46, %do.body42, %do.body28, %do.body14, %do.body3
  %coerce.dive48 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %19 = load i32, ptr %coerce.dive48, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_secret_with_context(ptr noundef %conn, i32 noundef %input_secret_type, ptr noundef %label, i32 noundef %transcript_end_msg, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %input_secret_type.addr = alloca i32, align 4
  %label.addr = alloca ptr, align 8
  %transcript_end_msg.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  %.compoundliteral66 = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store i32 %input_secret_type, ptr %input_secret_type.addr, align 4, !tbaa !9
  store ptr %label, ptr %label.addr, align 8, !tbaa !17
  store i32 %transcript_end_msg, ptr %transcript_end_msg.addr, align 4, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.39, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %label.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.40, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %6 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %cmp21 = icmp ne ptr %6, null
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.body20
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.41, ptr %7, align 8, !tbaa !17
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %8, align 4, !tbaa !18
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.end26

do.end26:                                         ; preds = %do.body24
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %__error_signal28 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal28, align 4, !tbaa !4
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
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %9, i32 0, i32 28
  %extract_secret_type = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 1
  %10 = load i32, ptr %extract_secret_type, align 4, !tbaa !55
  %11 = load i32, ptr %input_secret_type.addr, align 4, !tbaa !9
  %cmp34 = icmp eq i32 %10, %11
  br i1 %cmp34, label %if.end44, label %if.then35

if.then35:                                        ; preds = %do.body33
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  br label %do.body37

do.body37:                                        ; preds = %do.body36
  %12 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.42, ptr %12, align 8, !tbaa !17
  %13 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762120, ptr %13, align 4, !tbaa !18
  %call38 = call i32 @s2n_calculate_stacktrace()
  br label %do.end39

do.end39:                                         ; preds = %do.body37
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %__error_signal41 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal41, align 4, !tbaa !4
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
  %14 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call47 = call i32 @s2n_conn_get_current_message_type(ptr noundef %14)
  %15 = load i32, ptr %transcript_end_msg.addr, align 4, !tbaa !9
  %cmp48 = icmp eq i32 %call47, %15
  br i1 %cmp48, label %if.end58, label %if.then49

if.then49:                                        ; preds = %do.body46
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  br label %do.body51

do.body51:                                        ; preds = %do.body50
  %16 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.43, ptr %16, align 8, !tbaa !17
  %17 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762120, ptr %17, align 4, !tbaa !18
  %call52 = call i32 @s2n_calculate_stacktrace()
  br label %do.end53

do.end53:                                         ; preds = %do.body51
  br label %do.body54

do.body54:                                        ; preds = %do.end53
  %__error_signal55 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal55, align 4, !tbaa !4
  br label %return

do.end56:                                         ; No predecessors!
  br label %do.end57

do.end57:                                         ; preds = %do.end56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.body46
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %18 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %18, i32 0, i32 27
  %19 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %20, i32 0, i32 10
  %21 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %22 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets61 = getelementptr inbounds %struct.s2n_connection, ptr %22, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets61, i32 0, i32 0
  %extract_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], ptr %extract_secret, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %23 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure62 = getelementptr inbounds %struct.s2n_connection, ptr %23, i32 0, i32 27
  %24 = load ptr, ptr %secure62, align 8, !tbaa !23
  %cipher_suite63 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %cipher_suite63, align 8, !tbaa !48
  %prf_alg64 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %25, i32 0, i32 10
  %26 = load i32, ptr %prf_alg64, align 8, !tbaa !53
  %call65 = call zeroext i8 @s2n_get_hash_len(i32 noundef %26)
  %conv = zext i8 %call65 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %27 = load ptr, ptr %label.addr, align 8, !tbaa !17
  %data67 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral66, i32 0, i32 0
  %28 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake = getelementptr inbounds %struct.s2n_connection, ptr %28, i32 0, i32 51
  %hashes = getelementptr inbounds %struct.s2n_handshake, ptr %handshake, i32 0, i32 1
  %29 = load ptr, ptr %hashes, align 8, !tbaa !56
  %transcript_hash_digest = getelementptr inbounds %struct.s2n_handshake_hashes, ptr %29, i32 0, i32 7
  %arraydecay68 = getelementptr inbounds [48 x i8], ptr %transcript_hash_digest, i64 0, i64 0
  store ptr %arraydecay68, ptr %data67, align 8, !tbaa !12
  %size69 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral66, i32 0, i32 1
  %30 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure70 = getelementptr inbounds %struct.s2n_connection, ptr %30, i32 0, i32 27
  %31 = load ptr, ptr %secure70, align 8, !tbaa !23
  %cipher_suite71 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %cipher_suite71, align 8, !tbaa !48
  %prf_alg72 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %32, i32 0, i32 10
  %33 = load i32, ptr %prf_alg72, align 8, !tbaa !53
  %call73 = call zeroext i8 @s2n_get_hash_len(i32 noundef %33)
  %conv74 = zext i8 %call73 to i32
  store i32 %conv74, ptr %size69, align 8, !tbaa !15
  %allocated75 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral66, i32 0, i32 2
  store i32 0, ptr %allocated75, align 4, !tbaa !16
  %growable76 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral66, i32 0, i32 3
  %bf.load77 = load i8, ptr %growable76, align 8
  %bf.clear78 = and i8 %bf.load77, -2
  %bf.set79 = or i8 %bf.clear78, 0
  store i8 %bf.set79, ptr %growable76, align 8
  %34 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call80 = call i32 @s2n_derive_secret(i32 noundef %21, ptr noundef %.compoundliteral, ptr noundef %27, ptr noundef %.compoundliteral66, ptr noundef %34)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call80, ptr %coerce.dive, align 4
  %coerce.dive81 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %35 = load i32, ptr %coerce.dive81, align 4
  %call82 = call zeroext i1 @s2n_result_is_ok(i32 %35)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call82, label %if.end87, label %if.then83

if.then83:                                        ; preds = %do.body60
  br label %do.body84

do.body84:                                        ; preds = %if.then83
  %__error_signal85 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal85, align 4, !tbaa !4
  br label %return

do.end86:                                         ; No predecessors!
  br label %if.end87

if.end87:                                         ; preds = %do.end86, %do.body60
  br label %do.end88

do.end88:                                         ; preds = %if.end87
  %__error_signal89 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal89, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end88, %do.body84, %do.body54, %do.body40, %do.body27, %do.body14, %do.body3
  %coerce.dive90 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %36 = load i32, ptr %coerce.dive90, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_extract_secret(ptr noundef %conn, i32 noundef %secret_type) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %secret_type.addr = alloca i32, align 4
  %next_secret_type = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store i32 %secret_type, ptr %secret_type.addr, align 4, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.6, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %secure, align 8, !tbaa !23
  %cmp8 = icmp ne ptr %4, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.7, ptr %5, align 8, !tbaa !17
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %6, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure21 = getelementptr inbounds %struct.s2n_connection, ptr %7, i32 0, i32 27
  %8 = load ptr, ptr %secure21, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %cmp22 = icmp ne ptr %9, null
  br i1 %cmp22, label %if.end32, label %if.then23

if.then23:                                        ; preds = %do.body20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.body25

do.body25:                                        ; preds = %do.body24
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.8, ptr %10, align 8, !tbaa !17
  %11 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %11, align 4, !tbaa !18
  %call26 = call i32 @s2n_calculate_stacktrace()
  br label %do.end27

do.end27:                                         ; preds = %do.body25
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %__error_signal29 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal29, align 4, !tbaa !4
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
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 51
  %hashes = getelementptr inbounds %struct.s2n_handshake, ptr %handshake, i32 0, i32 1
  %13 = load ptr, ptr %hashes, align 8, !tbaa !56
  %cmp35 = icmp ne ptr %13, null
  br i1 %cmp35, label %if.end45, label %if.then36

if.then36:                                        ; preds = %do.body34
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %do.body38

do.body38:                                        ; preds = %do.body37
  %14 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.9, ptr %14, align 8, !tbaa !17
  %15 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %15, align 4, !tbaa !18
  %call39 = call i32 @s2n_calculate_stacktrace()
  br label %do.end40

do.end40:                                         ; preds = %do.body38
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %__error_signal42 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal42, align 4, !tbaa !4
  br label %return

do.end43:                                         ; No predecessors!
  br label %do.end44

do.end44:                                         ; preds = %do.end43
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %do.body34
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %16 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %cmp48 = icmp ne i32 %16, 0
  br i1 %cmp48, label %if.end58, label %if.then49

if.then49:                                        ; preds = %do.body47
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  br label %do.body51

do.body51:                                        ; preds = %do.body50
  %17 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.10, ptr %17, align 8, !tbaa !17
  %18 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %18, align 4, !tbaa !18
  %call52 = call i32 @s2n_calculate_stacktrace()
  br label %do.end53

do.end53:                                         ; preds = %do.body51
  br label %do.body54

do.body54:                                        ; preds = %do.end53
  %__error_signal55 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal55, align 4, !tbaa !4
  br label %return

do.end56:                                         ; No predecessors!
  br label %do.end57

do.end57:                                         ; preds = %do.end56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.body47
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %19 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %cmp61 = icmp uge i32 %19, 0
  br i1 %cmp61, label %if.end71, label %if.then62

if.then62:                                        ; preds = %do.body60
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  br label %do.body64

do.body64:                                        ; preds = %do.body63
  %20 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.11, ptr %20, align 8, !tbaa !17
  %21 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %21, align 4, !tbaa !18
  %call65 = call i32 @s2n_calculate_stacktrace()
  br label %do.end66

do.end66:                                         ; preds = %do.body64
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %__error_signal68 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal68, align 4, !tbaa !4
  br label %return

do.end69:                                         ; No predecessors!
  br label %do.end70

do.end70:                                         ; preds = %do.end69
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %do.body60
  br label %do.end72

do.end72:                                         ; preds = %if.end71
  br label %do.body73

do.body73:                                        ; preds = %do.end72
  %22 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %conv = zext i32 %22 to i64
  %cmp74 = icmp ult i64 %conv, 4
  br i1 %cmp74, label %if.end85, label %if.then76

if.then76:                                        ; preds = %do.body73
  br label %do.body77

do.body77:                                        ; preds = %if.then76
  br label %do.body78

do.body78:                                        ; preds = %do.body77
  %23 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.12, ptr %23, align 8, !tbaa !17
  %24 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %24, align 4, !tbaa !18
  %call79 = call i32 @s2n_calculate_stacktrace()
  br label %do.end80

do.end80:                                         ; preds = %do.body78
  br label %do.body81

do.body81:                                        ; preds = %do.end80
  %__error_signal82 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal82, align 4, !tbaa !4
  br label %return

do.end83:                                         ; No predecessors!
  br label %do.end84

do.end84:                                         ; preds = %do.end83
  br label %if.end85

if.end85:                                         ; preds = %do.end84, %do.body73
  br label %do.end86

do.end86:                                         ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_secret_type) #6
  %25 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %25, i32 0, i32 28
  %extract_secret_type = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 1
  %26 = load i32, ptr %extract_secret_type, align 4, !tbaa !55
  %add = add i32 %26, 1
  store i32 %add, ptr %next_secret_type, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %27 = load i32, ptr %next_secret_type, align 4, !tbaa !9
  store i32 %27, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end86
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %29 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %cmp87 = icmp ule i32 %28, %29
  br i1 %cmp87, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 58, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  br label %do.body89

do.body89:                                        ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = zext i32 %30 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @extract_methods, i64 0, i64 %idxprom
  %31 = load ptr, ptr %arrayidx, align 8, !tbaa !17
  %cmp90 = icmp ne ptr %31, null
  br i1 %cmp90, label %if.end103, label %if.then92

if.then92:                                        ; preds = %do.body89
  br label %do.body93

do.body93:                                        ; preds = %if.then92
  br label %do.body94

do.body94:                                        ; preds = %do.body93
  %32 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.13, ptr %32, align 8, !tbaa !17
  %33 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %33, align 4, !tbaa !18
  %call95 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body94
  br label %do.end96

do.end96:                                         ; preds = %do.cond
  br label %do.body97

do.body97:                                        ; preds = %do.end96
  %__error_signal98 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal98, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond99:                                        ; No predecessors!
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  br label %do.cond101

do.cond101:                                       ; preds = %do.end100
  br label %do.end102

do.end102:                                        ; preds = %do.cond101
  br label %if.end103

if.end103:                                        ; preds = %do.end102, %do.body89
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  br label %do.body106

do.body106:                                       ; preds = %do.end105
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %34 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom107 = zext i32 %34 to i64
  %arrayidx108 = getelementptr inbounds [4 x ptr], ptr @extract_methods, i64 0, i64 %idxprom107
  %35 = load ptr, ptr %arrayidx108, align 8, !tbaa !17
  %36 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call109 = call i32 %35(ptr noundef %36)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call109, ptr %coerce.dive, align 4
  %coerce.dive110 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %37 = load i32, ptr %coerce.dive110, align 4
  %call111 = call zeroext i1 @s2n_result_is_ok(i32 %37)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call111, label %if.end117, label %if.then112

if.then112:                                       ; preds = %do.body106
  br label %do.body113

do.body113:                                       ; preds = %if.then112
  %__error_signal114 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal114, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond115:                                       ; No predecessors!
  br label %do.end116

do.end116:                                        ; preds = %do.cond115
  br label %if.end117

if.end117:                                        ; preds = %do.end116, %do.body106
  br label %do.cond118

do.cond118:                                       ; preds = %if.end117
  br label %do.end119

do.end119:                                        ; preds = %do.cond118
  %38 = load i32, ptr %i, align 4, !tbaa !9
  %39 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets120 = getelementptr inbounds %struct.s2n_connection, ptr %39, i32 0, i32 28
  %extract_secret_type121 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets120, i32 0, i32 1
  store i32 %38, ptr %extract_secret_type121, align 4, !tbaa !55
  br label %for.inc

for.inc:                                          ; preds = %do.end119
  %40 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add i32 %40, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond

cleanup:                                          ; preds = %do.body113, %do.body97, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup123 [
    i32 58, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %__error_signal122 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal122, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup123

cleanup123:                                       ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_secret_type) #6
  br label %return

return:                                           ; preds = %cleanup123, %do.body81, %do.body67, %do.body54, %do.body41, %do.body28, %do.body14, %do.body3
  %coerce.dive124 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %41 = load i32, ptr %coerce.dive124, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_derive_secret(ptr noundef %conn, i32 noundef %secret_type, i32 noundef %mode, ptr noundef %secret) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %secret_type.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %secret.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp127 = alloca %struct.s2n_result, align 4
  %agg.tmp143 = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store i32 %secret_type, ptr %secret_type.addr, align 4, !tbaa !9
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !9
  store ptr %secret, ptr %secret.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.14, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.15, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %6, i32 0, i32 27
  %7 = load ptr, ptr %secure, align 8, !tbaa !23
  %cmp21 = icmp ne ptr %7, null
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.body20
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %8 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.16, ptr %8, align 8, !tbaa !17
  %9 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %9, align 4, !tbaa !18
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.end26

do.end26:                                         ; preds = %do.body24
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %__error_signal28 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal28, align 4, !tbaa !4
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
  %10 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure34 = getelementptr inbounds %struct.s2n_connection, ptr %10, i32 0, i32 27
  %11 = load ptr, ptr %secure34, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %cmp35 = icmp ne ptr %12, null
  br i1 %cmp35, label %if.end45, label %if.then36

if.then36:                                        ; preds = %do.body33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %do.body38

do.body38:                                        ; preds = %do.body37
  %13 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.17, ptr %13, align 8, !tbaa !17
  %14 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %14, align 4, !tbaa !18
  %call39 = call i32 @s2n_calculate_stacktrace()
  br label %do.end40

do.end40:                                         ; preds = %do.body38
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %__error_signal42 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal42, align 4, !tbaa !4
  br label %return

do.end43:                                         ; No predecessors!
  br label %do.end44

do.end44:                                         ; preds = %do.end43
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %do.body33
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  br label %do.body47

do.body47:                                        ; preds = %do.end46
  %15 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake = getelementptr inbounds %struct.s2n_connection, ptr %15, i32 0, i32 51
  %hashes = getelementptr inbounds %struct.s2n_handshake, ptr %handshake, i32 0, i32 1
  %16 = load ptr, ptr %hashes, align 8, !tbaa !56
  %cmp48 = icmp ne ptr %16, null
  br i1 %cmp48, label %if.end58, label %if.then49

if.then49:                                        ; preds = %do.body47
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  br label %do.body51

do.body51:                                        ; preds = %do.body50
  %17 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.18, ptr %17, align 8, !tbaa !17
  %18 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %18, align 4, !tbaa !18
  %call52 = call i32 @s2n_calculate_stacktrace()
  br label %do.end53

do.end53:                                         ; preds = %do.body51
  br label %do.body54

do.body54:                                        ; preds = %do.end53
  %__error_signal55 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal55, align 4, !tbaa !4
  br label %return

do.end56:                                         ; No predecessors!
  br label %do.end57

do.end57:                                         ; preds = %do.end56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.body47
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  %19 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %cmp61 = icmp ne i32 %19, 0
  br i1 %cmp61, label %if.end71, label %if.then62

if.then62:                                        ; preds = %do.body60
  br label %do.body63

do.body63:                                        ; preds = %if.then62
  br label %do.body64

do.body64:                                        ; preds = %do.body63
  %20 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.19, ptr %20, align 8, !tbaa !17
  %21 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %21, align 4, !tbaa !18
  %call65 = call i32 @s2n_calculate_stacktrace()
  br label %do.end66

do.end66:                                         ; preds = %do.body64
  br label %do.body67

do.body67:                                        ; preds = %do.end66
  %__error_signal68 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal68, align 4, !tbaa !4
  br label %return

do.end69:                                         ; No predecessors!
  br label %do.end70

do.end70:                                         ; preds = %do.end69
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %do.body60
  br label %do.end72

do.end72:                                         ; preds = %if.end71
  br label %do.body73

do.body73:                                        ; preds = %do.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %22 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %23 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %call74 = call i32 @s2n_tls13_extract_secret(ptr noundef %22, i32 noundef %23)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call74, ptr %coerce.dive, align 4
  %coerce.dive75 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %24 = load i32, ptr %coerce.dive75, align 4
  %call76 = call zeroext i1 @s2n_result_is_ok(i32 %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call76, label %if.end81, label %if.then77

if.then77:                                        ; preds = %do.body73
  br label %do.body78

do.body78:                                        ; preds = %if.then77
  %__error_signal79 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal79, align 4, !tbaa !4
  br label %return

do.end80:                                         ; No predecessors!
  br label %if.end81

if.end81:                                         ; preds = %do.end80, %do.body73
  br label %do.end82

do.end82:                                         ; preds = %if.end81
  br label %do.body83

do.body83:                                        ; preds = %do.end82
  %25 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %cmp84 = icmp uge i32 %25, 0
  br i1 %cmp84, label %if.end94, label %if.then85

if.then85:                                        ; preds = %do.body83
  br label %do.body86

do.body86:                                        ; preds = %if.then85
  br label %do.body87

do.body87:                                        ; preds = %do.body86
  %26 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.20, ptr %26, align 8, !tbaa !17
  %27 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %27, align 4, !tbaa !18
  %call88 = call i32 @s2n_calculate_stacktrace()
  br label %do.end89

do.end89:                                         ; preds = %do.body87
  br label %do.body90

do.body90:                                        ; preds = %do.end89
  %__error_signal91 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal91, align 4, !tbaa !4
  br label %return

do.end92:                                         ; No predecessors!
  br label %do.end93

do.end93:                                         ; preds = %do.end92
  br label %if.end94

if.end94:                                         ; preds = %do.end93, %do.body83
  br label %do.end95

do.end95:                                         ; preds = %if.end94
  br label %do.body96

do.body96:                                        ; preds = %do.end95
  %28 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %conv = zext i32 %28 to i64
  %cmp97 = icmp ult i64 %conv, 4
  br i1 %cmp97, label %if.end108, label %if.then99

if.then99:                                        ; preds = %do.body96
  br label %do.body100

do.body100:                                       ; preds = %if.then99
  br label %do.body101

do.body101:                                       ; preds = %do.body100
  %29 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.21, ptr %29, align 8, !tbaa !17
  %30 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %30, align 4, !tbaa !18
  %call102 = call i32 @s2n_calculate_stacktrace()
  br label %do.end103

do.end103:                                        ; preds = %do.body101
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %__error_signal105 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal105, align 4, !tbaa !4
  br label %return

do.end106:                                        ; No predecessors!
  br label %do.end107

do.end107:                                        ; preds = %do.end106
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %do.body96
  br label %do.end109

do.end109:                                        ; preds = %if.end108
  br label %do.body110

do.body110:                                       ; preds = %do.end109
  %31 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %idxprom = zext i32 %31 to i64
  %arrayidx = getelementptr inbounds [4 x [2 x ptr]], ptr @derive_methods, i64 0, i64 %idxprom
  %32 = load i32, ptr %mode.addr, align 4, !tbaa !9
  %idxprom111 = zext i32 %32 to i64
  %arrayidx112 = getelementptr inbounds [2 x ptr], ptr %arrayidx, i64 0, i64 %idxprom111
  %33 = load ptr, ptr %arrayidx112, align 8, !tbaa !17
  %cmp113 = icmp ne ptr %33, null
  br i1 %cmp113, label %if.end124, label %if.then115

if.then115:                                       ; preds = %do.body110
  br label %do.body116

do.body116:                                       ; preds = %if.then115
  br label %do.body117

do.body117:                                       ; preds = %do.body116
  %34 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.22, ptr %34, align 8, !tbaa !17
  %35 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %35, align 4, !tbaa !18
  %call118 = call i32 @s2n_calculate_stacktrace()
  br label %do.end119

do.end119:                                        ; preds = %do.body117
  br label %do.body120

do.body120:                                       ; preds = %do.end119
  %__error_signal121 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal121, align 4, !tbaa !4
  br label %return

do.end122:                                        ; No predecessors!
  br label %do.end123

do.end123:                                        ; preds = %do.end122
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %do.body110
  br label %do.end125

do.end125:                                        ; preds = %if.end124
  br label %do.body126

do.body126:                                       ; preds = %do.end125
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp127) #6
  %36 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %idxprom128 = zext i32 %36 to i64
  %arrayidx129 = getelementptr inbounds [4 x [2 x ptr]], ptr @derive_methods, i64 0, i64 %idxprom128
  %37 = load i32, ptr %mode.addr, align 4, !tbaa !9
  %idxprom130 = zext i32 %37 to i64
  %arrayidx131 = getelementptr inbounds [2 x ptr], ptr %arrayidx129, i64 0, i64 %idxprom130
  %38 = load ptr, ptr %arrayidx131, align 8, !tbaa !17
  %39 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %40 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %call132 = call i32 %38(ptr noundef %39, ptr noundef %40)
  %coerce.dive133 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp127, i32 0, i32 0
  store i32 %call132, ptr %coerce.dive133, align 4
  %coerce.dive134 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp127, i32 0, i32 0
  %41 = load i32, ptr %coerce.dive134, align 4
  %call135 = call zeroext i1 @s2n_result_is_ok(i32 %41)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp127) #6
  br i1 %call135, label %if.end140, label %if.then136

if.then136:                                       ; preds = %do.body126
  br label %do.body137

do.body137:                                       ; preds = %if.then136
  %__error_signal138 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal138, align 4, !tbaa !4
  br label %return

do.end139:                                        ; No predecessors!
  br label %if.end140

if.end140:                                        ; preds = %do.end139, %do.body126
  br label %do.end141

do.end141:                                        ; preds = %if.end140
  br label %do.body142

do.body142:                                       ; preds = %do.end141
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp143) #6
  %42 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %43 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %44 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %45 = load i32, ptr %mode.addr, align 4, !tbaa !9
  %call144 = call i32 @s2n_trigger_secret_callbacks(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  %coerce.dive145 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp143, i32 0, i32 0
  store i32 %call144, ptr %coerce.dive145, align 4
  %coerce.dive146 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp143, i32 0, i32 0
  %46 = load i32, ptr %coerce.dive146, align 4
  %call147 = call zeroext i1 @s2n_result_is_ok(i32 %46)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp143) #6
  br i1 %call147, label %if.end152, label %if.then148

if.then148:                                       ; preds = %do.body142
  br label %do.body149

do.body149:                                       ; preds = %if.then148
  %__error_signal150 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal150, align 4, !tbaa !4
  br label %return

do.end151:                                        ; No predecessors!
  br label %if.end152

if.end152:                                        ; preds = %do.end151, %do.body142
  br label %do.end153

do.end153:                                        ; preds = %if.end152
  %__error_signal154 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal154, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end153, %do.body149, %do.body137, %do.body120, %do.body104, %do.body90, %do.body78, %do.body67, %do.body54, %do.body41, %do.body27, %do.body14, %do.body3
  %coerce.dive155 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %47 = load i32, ptr %coerce.dive155, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_trigger_secret_callbacks(ptr noundef %conn, ptr noundef %secret, i32 noundef %secret_type, i32 noundef %mode) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %secret.addr = alloca ptr, align 8
  %secret_type.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %callback_secret_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store ptr %secret, ptr %secret.addr, align 8, !tbaa !17
  store i32 %secret_type, ptr %secret_type.addr, align 4, !tbaa !9
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.60, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.61, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
  br label %return

do.end16:                                         ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body7
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %callback_secret_type) #6
  %6 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x [2 x i32]], ptr @s2n_trigger_secret_callbacks.conversions, i64 0, i64 %idxprom
  %7 = load i32, ptr %mode.addr, align 4, !tbaa !9
  %idxprom20 = zext i32 %7 to i64
  %arrayidx21 = getelementptr inbounds [2 x i32], ptr %arrayidx, i64 0, i64 %idxprom20
  %8 = load i32, ptr %arrayidx21, align 4, !tbaa !9
  store i32 %8, ptr %callback_secret_type, align 4, !tbaa !9
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secret_cb = getelementptr inbounds %struct.s2n_connection, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %secret_cb, align 8, !tbaa !57
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %do.end19
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call22 = call zeroext i1 @s2n_connection_is_quic_enabled(ptr noundef %11)
  br i1 %call22, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call23 = call zeroext i1 (...) @s2n_in_unit_test()
  br i1 %call23, label %if.then24, label %if.end37

if.then24:                                        ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secret_cb26 = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %secret_cb26, align 8, !tbaa !57
  %14 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secret_cb_context = getelementptr inbounds %struct.s2n_connection, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %secret_cb_context, align 8, !tbaa !58
  %16 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %17 = load i32, ptr %callback_secret_type, align 4, !tbaa !9
  %18 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %data, align 8, !tbaa !12
  %20 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %size = getelementptr inbounds %struct.s2n_blob, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %size, align 8, !tbaa !15
  %conv = trunc i32 %21 to i8
  %call27 = call i32 %13(ptr noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %19, i8 noundef zeroext %conv)
  %cmp28 = icmp sgt i32 %call27, -1
  br i1 %cmp28, label %if.end34, label %if.then30

if.then30:                                        ; preds = %do.body25
  br label %do.body31

do.body31:                                        ; preds = %if.then30
  %__error_signal32 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal32, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end33

do.end33:                                         ; preds = %do.cond
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.body25
  br label %do.cond35

do.cond35:                                        ; preds = %if.end34
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %lor.lhs.false, %do.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %22 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %23 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %24 = load i32, ptr %callback_secret_type, align 4, !tbaa !9
  %call38 = call i32 @s2n_key_log_tls13_secret(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call38, ptr %coerce.dive, align 4
  %coerce.dive39 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %25 = load i32, ptr %coerce.dive39, align 4
  call void @s2n_result_ignore(i32 %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  %__error_signal40 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal40, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.body31
  call void @llvm.lifetime.end.p0(i64 4, ptr %callback_secret_type) #6
  br label %return

return:                                           ; preds = %cleanup, %do.body14, %do.body3
  %coerce.dive41 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %26 = load i32, ptr %coerce.dive41, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_secrets_clean(ptr noundef %conn) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  %.compoundliteral55 = alloca %struct.s2n_blob, align 8
  %.compoundliteral81 = alloca %struct.s2n_blob, align 8
  %.compoundliteral107 = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.23, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %secure, align 8, !tbaa !23
  %cmp8 = icmp ne ptr %4, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.24, ptr %5, align 8, !tbaa !17
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %6, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure21 = getelementptr inbounds %struct.s2n_connection, ptr %7, i32 0, i32 27
  %8 = load ptr, ptr %secure21, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %cmp22 = icmp ne ptr %9, null
  br i1 %cmp22, label %if.end32, label %if.then23

if.then23:                                        ; preds = %do.body20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.body25

do.body25:                                        ; preds = %do.body24
  %10 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.25, ptr %10, align 8, !tbaa !17
  %11 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %11, align 4, !tbaa !18
  %call26 = call i32 @s2n_calculate_stacktrace()
  br label %do.end27

do.end27:                                         ; preds = %do.body25
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %__error_signal29 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal29, align 4, !tbaa !4
  br label %return

do.end30:                                         ; No predecessors!
  br label %do.end31

do.end31:                                         ; preds = %do.end30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %do.body20
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %actual_protocol_version = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 23
  %13 = load i8, ptr %actual_protocol_version, align 4, !tbaa !59
  %conv = zext i8 %13 to i32
  %cmp34 = icmp slt i32 %conv, 34
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %do.end33
  %__error_signal37 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal37, align 4, !tbaa !4
  br label %return

if.end38:                                         ; preds = %do.end33
  br label %do.body39

do.body39:                                        ; preds = %if.end38
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %14 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %14, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 0
  %extract_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], ptr %extract_secret, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %15 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure40 = getelementptr inbounds %struct.s2n_connection, ptr %15, i32 0, i32 27
  %16 = load ptr, ptr %secure40, align 8, !tbaa !23
  %cipher_suite41 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %cipher_suite41, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %17, i32 0, i32 10
  %18 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %call42 = call zeroext i8 @s2n_get_hash_len(i32 noundef %18)
  %conv43 = zext i8 %call42 to i32
  store i32 %conv43, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %call44 = call i32 @s2n_blob_zero(ptr noundef %.compoundliteral)
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.end51, label %if.then47

if.then47:                                        ; preds = %do.body39
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  %__error_signal49 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal49, align 4, !tbaa !4
  br label %return

do.end50:                                         ; No predecessors!
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %do.body39
  br label %do.end52

do.end52:                                         ; preds = %if.end51
  %19 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets53 = getelementptr inbounds %struct.s2n_connection, ptr %19, i32 0, i32 28
  %extract_secret_type = getelementptr inbounds %struct.s2n_secrets, ptr %secrets53, i32 0, i32 1
  store i32 0, ptr %extract_secret_type, align 4, !tbaa !55
  br label %do.body54

do.body54:                                        ; preds = %do.end52
  %data56 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 0
  %20 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets57 = getelementptr inbounds %struct.s2n_connection, ptr %20, i32 0, i32 28
  %version58 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets57, i32 0, i32 0
  %client_early_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version58, i32 0, i32 1
  %arraydecay59 = getelementptr inbounds [48 x i8], ptr %client_early_secret, i64 0, i64 0
  store ptr %arraydecay59, ptr %data56, align 8, !tbaa !12
  %size60 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 1
  %21 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure61 = getelementptr inbounds %struct.s2n_connection, ptr %21, i32 0, i32 27
  %22 = load ptr, ptr %secure61, align 8, !tbaa !23
  %cipher_suite62 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %cipher_suite62, align 8, !tbaa !48
  %prf_alg63 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %23, i32 0, i32 10
  %24 = load i32, ptr %prf_alg63, align 8, !tbaa !53
  %call64 = call zeroext i8 @s2n_get_hash_len(i32 noundef %24)
  %conv65 = zext i8 %call64 to i32
  store i32 %conv65, ptr %size60, align 8, !tbaa !15
  %allocated66 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 2
  store i32 0, ptr %allocated66, align 4, !tbaa !16
  %growable67 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 3
  %bf.load68 = load i8, ptr %growable67, align 8
  %bf.clear69 = and i8 %bf.load68, -2
  %bf.set70 = or i8 %bf.clear69, 0
  store i8 %bf.set70, ptr %growable67, align 8
  %call71 = call i32 @s2n_blob_zero(ptr noundef %.compoundliteral55)
  %cmp72 = icmp sgt i32 %call71, -1
  br i1 %cmp72, label %if.end78, label %if.then74

if.then74:                                        ; preds = %do.body54
  br label %do.body75

do.body75:                                        ; preds = %if.then74
  %__error_signal76 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal76, align 4, !tbaa !4
  br label %return

do.end77:                                         ; No predecessors!
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %do.body54
  br label %do.end79

do.end79:                                         ; preds = %if.end78
  br label %do.body80

do.body80:                                        ; preds = %do.end79
  %data82 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral81, i32 0, i32 0
  %25 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets83 = getelementptr inbounds %struct.s2n_connection, ptr %25, i32 0, i32 28
  %version84 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets83, i32 0, i32 0
  %client_handshake_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version84, i32 0, i32 2
  %arraydecay85 = getelementptr inbounds [48 x i8], ptr %client_handshake_secret, i64 0, i64 0
  store ptr %arraydecay85, ptr %data82, align 8, !tbaa !12
  %size86 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral81, i32 0, i32 1
  %26 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure87 = getelementptr inbounds %struct.s2n_connection, ptr %26, i32 0, i32 27
  %27 = load ptr, ptr %secure87, align 8, !tbaa !23
  %cipher_suite88 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %cipher_suite88, align 8, !tbaa !48
  %prf_alg89 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %prf_alg89, align 8, !tbaa !53
  %call90 = call zeroext i8 @s2n_get_hash_len(i32 noundef %29)
  %conv91 = zext i8 %call90 to i32
  store i32 %conv91, ptr %size86, align 8, !tbaa !15
  %allocated92 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral81, i32 0, i32 2
  store i32 0, ptr %allocated92, align 4, !tbaa !16
  %growable93 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral81, i32 0, i32 3
  %bf.load94 = load i8, ptr %growable93, align 8
  %bf.clear95 = and i8 %bf.load94, -2
  %bf.set96 = or i8 %bf.clear95, 0
  store i8 %bf.set96, ptr %growable93, align 8
  %call97 = call i32 @s2n_blob_zero(ptr noundef %.compoundliteral81)
  %cmp98 = icmp sgt i32 %call97, -1
  br i1 %cmp98, label %if.end104, label %if.then100

if.then100:                                       ; preds = %do.body80
  br label %do.body101

do.body101:                                       ; preds = %if.then100
  %__error_signal102 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal102, align 4, !tbaa !4
  br label %return

do.end103:                                        ; No predecessors!
  br label %if.end104

if.end104:                                        ; preds = %do.end103, %do.body80
  br label %do.end105

do.end105:                                        ; preds = %if.end104
  br label %do.body106

do.body106:                                       ; preds = %do.end105
  %data108 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral107, i32 0, i32 0
  %30 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets109 = getelementptr inbounds %struct.s2n_connection, ptr %30, i32 0, i32 28
  %version110 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets109, i32 0, i32 0
  %server_handshake_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version110, i32 0, i32 3
  %arraydecay111 = getelementptr inbounds [48 x i8], ptr %server_handshake_secret, i64 0, i64 0
  store ptr %arraydecay111, ptr %data108, align 8, !tbaa !12
  %size112 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral107, i32 0, i32 1
  %31 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure113 = getelementptr inbounds %struct.s2n_connection, ptr %31, i32 0, i32 27
  %32 = load ptr, ptr %secure113, align 8, !tbaa !23
  %cipher_suite114 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %cipher_suite114, align 8, !tbaa !48
  %prf_alg115 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %33, i32 0, i32 10
  %34 = load i32, ptr %prf_alg115, align 8, !tbaa !53
  %call116 = call zeroext i8 @s2n_get_hash_len(i32 noundef %34)
  %conv117 = zext i8 %call116 to i32
  store i32 %conv117, ptr %size112, align 8, !tbaa !15
  %allocated118 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral107, i32 0, i32 2
  store i32 0, ptr %allocated118, align 4, !tbaa !16
  %growable119 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral107, i32 0, i32 3
  %bf.load120 = load i8, ptr %growable119, align 8
  %bf.clear121 = and i8 %bf.load120, -2
  %bf.set122 = or i8 %bf.clear121, 0
  store i8 %bf.set122, ptr %growable119, align 8
  %call123 = call i32 @s2n_blob_zero(ptr noundef %.compoundliteral107)
  %cmp124 = icmp sgt i32 %call123, -1
  br i1 %cmp124, label %if.end130, label %if.then126

if.then126:                                       ; preds = %do.body106
  br label %do.body127

do.body127:                                       ; preds = %if.then126
  %__error_signal128 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal128, align 4, !tbaa !4
  br label %return

do.end129:                                        ; No predecessors!
  br label %if.end130

if.end130:                                        ; preds = %do.end129, %do.body106
  br label %do.end131

do.end131:                                        ; preds = %if.end130
  %__error_signal132 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal132, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end131, %do.body127, %do.body101, %do.body75, %do.body48, %if.then36, %do.body28, %do.body14, %do.body3
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %35 = load i32, ptr %coerce.dive, align 4
  ret i32 %35
}

declare i32 @s2n_blob_zero(ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_secrets_update(ptr noundef %conn) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %message_type = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp61 = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  %agg.tmp81 = alloca %struct.s2n_result, align 4
  %agg.tmp95 = alloca %struct.s2n_result, align 4
  %.compoundliteral96 = alloca %struct.s2n_blob, align 8
  %agg.tmp125 = alloca %struct.s2n_result, align 4
  %.compoundliteral126 = alloca %struct.s2n_blob, align 8
  %agg.tmp156 = alloca %struct.s2n_result, align 4
  %agg.tmp170 = alloca %struct.s2n_result, align 4
  %.compoundliteral171 = alloca %struct.s2n_blob, align 8
  %agg.tmp200 = alloca %struct.s2n_result, align 4
  %.compoundliteral201 = alloca %struct.s2n_blob, align 8
  %agg.tmp231 = alloca %struct.s2n_result, align 4
  %agg.tmp245 = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.26, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call7 = call zeroext i8 @s2n_connection_get_protocol_version(ptr noundef %3)
  %conv = zext i8 %call7 to i32
  %cmp8 = icmp slt i32 %conv, 34
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end6
  %__error_signal11 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal11, align 4, !tbaa !4
  br label %return

if.end12:                                         ; preds = %do.end6
  br label %do.body13

do.body13:                                        ; preds = %if.end12
  %4 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %4, i32 0, i32 27
  %5 = load ptr, ptr %secure, align 8, !tbaa !23
  %cmp14 = icmp ne ptr %5, null
  br i1 %cmp14, label %if.end25, label %if.then16

if.then16:                                        ; preds = %do.body13
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  br label %do.body18

do.body18:                                        ; preds = %do.body17
  %6 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.27, ptr %6, align 8, !tbaa !17
  %7 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %7, align 4, !tbaa !18
  %call19 = call i32 @s2n_calculate_stacktrace()
  br label %do.end20

do.end20:                                         ; preds = %do.body18
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  %__error_signal22 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal22, align 4, !tbaa !4
  br label %return

do.end23:                                         ; No predecessors!
  br label %do.end24

do.end24:                                         ; preds = %do.end23
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %do.body13
  br label %do.end26

do.end26:                                         ; preds = %if.end25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %8 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure28 = getelementptr inbounds %struct.s2n_connection, ptr %8, i32 0, i32 27
  %9 = load ptr, ptr %secure28, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %cmp29 = icmp ne ptr %10, null
  br i1 %cmp29, label %if.end40, label %if.then31

if.then31:                                        ; preds = %do.body27
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  br label %do.body33

do.body33:                                        ; preds = %do.body32
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.28, ptr %11, align 8, !tbaa !17
  %12 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %12, align 4, !tbaa !18
  %call34 = call i32 @s2n_calculate_stacktrace()
  br label %do.end35

do.end35:                                         ; preds = %do.body33
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  %__error_signal37 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal37, align 4, !tbaa !4
  br label %return

do.end38:                                         ; No predecessors!
  br label %do.end39

do.end39:                                         ; preds = %do.end38
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %do.body27
  br label %do.end41

do.end41:                                         ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %message_type) #6
  %13 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call42 = call i32 @s2n_conn_get_current_message_type(ptr noundef %13)
  store i32 %call42, ptr %message_type, align 4, !tbaa !9
  %14 = load i32, ptr %message_type, align 4, !tbaa !9
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb79
    i32 15, label %sw.bb154
    i32 13, label %sw.bb229
  ]

sw.bb:                                            ; preds = %do.end41
  %15 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %early_data_state = getelementptr inbounds %struct.s2n_connection, ptr %15, i32 0, i32 88
  %16 = load i32, ptr %early_data_state, align 8, !tbaa !60
  %cmp43 = icmp eq i32 %16, 1
  br i1 %cmp43, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %17 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %early_data_state45 = getelementptr inbounds %struct.s2n_connection, ptr %17, i32 0, i32 88
  %18 = load i32, ptr %early_data_state45, align 8, !tbaa !60
  %cmp46 = icmp eq i32 %18, 3
  br i1 %cmp46, label %if.then48, label %if.end78

if.then48:                                        ; preds = %lor.lhs.false, %sw.bb
  br label %do.body49

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %19 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call50 = call i32 @s2n_calculate_transcript_digest(ptr noundef %19)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call50, ptr %coerce.dive, align 4
  %coerce.dive51 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %20 = load i32, ptr %coerce.dive51, align 4
  %call52 = call zeroext i1 @s2n_result_is_ok(i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call52, label %if.end57, label %if.then53

if.then53:                                        ; preds = %do.body49
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %__error_signal55 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal55, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end56

do.end56:                                         ; preds = %do.cond
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %do.body49
  br label %do.cond58

do.cond58:                                        ; preds = %if.end57
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %do.body60

do.body60:                                        ; preds = %do.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp61) #6
  %21 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %22 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %22, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 0
  %client_early_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 1
  %arraydecay = getelementptr inbounds [48 x i8], ptr %client_early_secret, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %23 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure62 = getelementptr inbounds %struct.s2n_connection, ptr %23, i32 0, i32 27
  %24 = load ptr, ptr %secure62, align 8, !tbaa !23
  %cipher_suite63 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %cipher_suite63, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %25, i32 0, i32 10
  %26 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %call64 = call zeroext i8 @s2n_get_hash_len(i32 noundef %26)
  %conv65 = zext i8 %call64 to i32
  store i32 %conv65, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %call66 = call i32 @s2n_tls13_derive_secret(ptr noundef %21, i32 noundef 1, i32 noundef 1, ptr noundef %.compoundliteral)
  %coerce.dive67 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp61, i32 0, i32 0
  store i32 %call66, ptr %coerce.dive67, align 4
  %coerce.dive68 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp61, i32 0, i32 0
  %27 = load i32, ptr %coerce.dive68, align 4
  %call69 = call zeroext i1 @s2n_result_is_ok(i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp61) #6
  br i1 %call69, label %if.end75, label %if.then70

if.then70:                                        ; preds = %do.body60
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  %__error_signal72 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal72, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond73:                                        ; No predecessors!
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %do.body60
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %lor.lhs.false
  br label %sw.epilog

sw.bb79:                                          ; preds = %do.end41
  br label %do.body80

do.body80:                                        ; preds = %sw.bb79
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp81) #6
  %28 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call82 = call i32 @s2n_calculate_transcript_digest(ptr noundef %28)
  %coerce.dive83 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp81, i32 0, i32 0
  store i32 %call82, ptr %coerce.dive83, align 4
  %coerce.dive84 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp81, i32 0, i32 0
  %29 = load i32, ptr %coerce.dive84, align 4
  %call85 = call zeroext i1 @s2n_result_is_ok(i32 %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp81) #6
  br i1 %call85, label %if.end91, label %if.then86

if.then86:                                        ; preds = %do.body80
  br label %do.body87

do.body87:                                        ; preds = %if.then86
  %__error_signal88 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal88, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond89:                                        ; No predecessors!
  br label %do.end90

do.end90:                                         ; preds = %do.cond89
  br label %if.end91

if.end91:                                         ; preds = %do.end90, %do.body80
  br label %do.cond92

do.cond92:                                        ; preds = %if.end91
  br label %do.end93

do.end93:                                         ; preds = %do.cond92
  br label %do.body94

do.body94:                                        ; preds = %do.end93
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp95) #6
  %30 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %data97 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral96, i32 0, i32 0
  %31 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets98 = getelementptr inbounds %struct.s2n_connection, ptr %31, i32 0, i32 28
  %version99 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets98, i32 0, i32 0
  %client_handshake_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version99, i32 0, i32 2
  %arraydecay100 = getelementptr inbounds [48 x i8], ptr %client_handshake_secret, i64 0, i64 0
  store ptr %arraydecay100, ptr %data97, align 8, !tbaa !12
  %size101 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral96, i32 0, i32 1
  %32 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure102 = getelementptr inbounds %struct.s2n_connection, ptr %32, i32 0, i32 27
  %33 = load ptr, ptr %secure102, align 8, !tbaa !23
  %cipher_suite103 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %cipher_suite103, align 8, !tbaa !48
  %prf_alg104 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %34, i32 0, i32 10
  %35 = load i32, ptr %prf_alg104, align 8, !tbaa !53
  %call105 = call zeroext i8 @s2n_get_hash_len(i32 noundef %35)
  %conv106 = zext i8 %call105 to i32
  store i32 %conv106, ptr %size101, align 8, !tbaa !15
  %allocated107 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral96, i32 0, i32 2
  store i32 0, ptr %allocated107, align 4, !tbaa !16
  %growable108 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral96, i32 0, i32 3
  %bf.load109 = load i8, ptr %growable108, align 8
  %bf.clear110 = and i8 %bf.load109, -2
  %bf.set111 = or i8 %bf.clear110, 0
  store i8 %bf.set111, ptr %growable108, align 8
  %call112 = call i32 @s2n_tls13_derive_secret(ptr noundef %30, i32 noundef 2, i32 noundef 1, ptr noundef %.compoundliteral96)
  %coerce.dive113 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp95, i32 0, i32 0
  store i32 %call112, ptr %coerce.dive113, align 4
  %coerce.dive114 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp95, i32 0, i32 0
  %36 = load i32, ptr %coerce.dive114, align 4
  %call115 = call zeroext i1 @s2n_result_is_ok(i32 %36)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp95) #6
  br i1 %call115, label %if.end121, label %if.then116

if.then116:                                       ; preds = %do.body94
  br label %do.body117

do.body117:                                       ; preds = %if.then116
  %__error_signal118 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal118, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond119:                                       ; No predecessors!
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  br label %if.end121

if.end121:                                        ; preds = %do.end120, %do.body94
  br label %do.cond122

do.cond122:                                       ; preds = %if.end121
  br label %do.end123

do.end123:                                        ; preds = %do.cond122
  br label %do.body124

do.body124:                                       ; preds = %do.end123
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp125) #6
  %37 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %data127 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral126, i32 0, i32 0
  %38 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets128 = getelementptr inbounds %struct.s2n_connection, ptr %38, i32 0, i32 28
  %version129 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets128, i32 0, i32 0
  %server_handshake_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version129, i32 0, i32 3
  %arraydecay130 = getelementptr inbounds [48 x i8], ptr %server_handshake_secret, i64 0, i64 0
  store ptr %arraydecay130, ptr %data127, align 8, !tbaa !12
  %size131 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral126, i32 0, i32 1
  %39 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure132 = getelementptr inbounds %struct.s2n_connection, ptr %39, i32 0, i32 27
  %40 = load ptr, ptr %secure132, align 8, !tbaa !23
  %cipher_suite133 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %cipher_suite133, align 8, !tbaa !48
  %prf_alg134 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %41, i32 0, i32 10
  %42 = load i32, ptr %prf_alg134, align 8, !tbaa !53
  %call135 = call zeroext i8 @s2n_get_hash_len(i32 noundef %42)
  %conv136 = zext i8 %call135 to i32
  store i32 %conv136, ptr %size131, align 8, !tbaa !15
  %allocated137 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral126, i32 0, i32 2
  store i32 0, ptr %allocated137, align 4, !tbaa !16
  %growable138 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral126, i32 0, i32 3
  %bf.load139 = load i8, ptr %growable138, align 8
  %bf.clear140 = and i8 %bf.load139, -2
  %bf.set141 = or i8 %bf.clear140, 0
  store i8 %bf.set141, ptr %growable138, align 8
  %call142 = call i32 @s2n_tls13_derive_secret(ptr noundef %37, i32 noundef 2, i32 noundef 0, ptr noundef %.compoundliteral126)
  %coerce.dive143 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp125, i32 0, i32 0
  store i32 %call142, ptr %coerce.dive143, align 4
  %coerce.dive144 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp125, i32 0, i32 0
  %43 = load i32, ptr %coerce.dive144, align 4
  %call145 = call zeroext i1 @s2n_result_is_ok(i32 %43)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp125) #6
  br i1 %call145, label %if.end151, label %if.then146

if.then146:                                       ; preds = %do.body124
  br label %do.body147

do.body147:                                       ; preds = %if.then146
  %__error_signal148 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal148, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond149:                                       ; No predecessors!
  br label %do.end150

do.end150:                                        ; preds = %do.cond149
  br label %if.end151

if.end151:                                        ; preds = %do.end150, %do.body124
  br label %do.cond152

do.cond152:                                       ; preds = %if.end151
  br label %do.end153

do.end153:                                        ; preds = %do.cond152
  br label %sw.epilog

sw.bb154:                                         ; preds = %do.end41
  br label %do.body155

do.body155:                                       ; preds = %sw.bb154
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp156) #6
  %44 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call157 = call i32 @s2n_calculate_transcript_digest(ptr noundef %44)
  %coerce.dive158 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp156, i32 0, i32 0
  store i32 %call157, ptr %coerce.dive158, align 4
  %coerce.dive159 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp156, i32 0, i32 0
  %45 = load i32, ptr %coerce.dive159, align 4
  %call160 = call zeroext i1 @s2n_result_is_ok(i32 %45)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp156) #6
  br i1 %call160, label %if.end166, label %if.then161

if.then161:                                       ; preds = %do.body155
  br label %do.body162

do.body162:                                       ; preds = %if.then161
  %__error_signal163 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal163, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond164:                                       ; No predecessors!
  br label %do.end165

do.end165:                                        ; preds = %do.cond164
  br label %if.end166

if.end166:                                        ; preds = %do.end165, %do.body155
  br label %do.cond167

do.cond167:                                       ; preds = %if.end166
  br label %do.end168

do.end168:                                        ; preds = %do.cond167
  br label %do.body169

do.body169:                                       ; preds = %do.end168
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp170) #6
  %46 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %data172 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral171, i32 0, i32 0
  %47 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets173 = getelementptr inbounds %struct.s2n_connection, ptr %47, i32 0, i32 28
  %version174 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets173, i32 0, i32 0
  %client_app_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version174, i32 0, i32 4
  %arraydecay175 = getelementptr inbounds [48 x i8], ptr %client_app_secret, i64 0, i64 0
  store ptr %arraydecay175, ptr %data172, align 8, !tbaa !12
  %size176 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral171, i32 0, i32 1
  %48 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure177 = getelementptr inbounds %struct.s2n_connection, ptr %48, i32 0, i32 27
  %49 = load ptr, ptr %secure177, align 8, !tbaa !23
  %cipher_suite178 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %cipher_suite178, align 8, !tbaa !48
  %prf_alg179 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %50, i32 0, i32 10
  %51 = load i32, ptr %prf_alg179, align 8, !tbaa !53
  %call180 = call zeroext i8 @s2n_get_hash_len(i32 noundef %51)
  %conv181 = zext i8 %call180 to i32
  store i32 %conv181, ptr %size176, align 8, !tbaa !15
  %allocated182 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral171, i32 0, i32 2
  store i32 0, ptr %allocated182, align 4, !tbaa !16
  %growable183 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral171, i32 0, i32 3
  %bf.load184 = load i8, ptr %growable183, align 8
  %bf.clear185 = and i8 %bf.load184, -2
  %bf.set186 = or i8 %bf.clear185, 0
  store i8 %bf.set186, ptr %growable183, align 8
  %call187 = call i32 @s2n_tls13_derive_secret(ptr noundef %46, i32 noundef 3, i32 noundef 1, ptr noundef %.compoundliteral171)
  %coerce.dive188 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp170, i32 0, i32 0
  store i32 %call187, ptr %coerce.dive188, align 4
  %coerce.dive189 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp170, i32 0, i32 0
  %52 = load i32, ptr %coerce.dive189, align 4
  %call190 = call zeroext i1 @s2n_result_is_ok(i32 %52)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp170) #6
  br i1 %call190, label %if.end196, label %if.then191

if.then191:                                       ; preds = %do.body169
  br label %do.body192

do.body192:                                       ; preds = %if.then191
  %__error_signal193 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal193, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond194:                                       ; No predecessors!
  br label %do.end195

do.end195:                                        ; preds = %do.cond194
  br label %if.end196

if.end196:                                        ; preds = %do.end195, %do.body169
  br label %do.cond197

do.cond197:                                       ; preds = %if.end196
  br label %do.end198

do.end198:                                        ; preds = %do.cond197
  br label %do.body199

do.body199:                                       ; preds = %do.end198
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp200) #6
  %53 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %data202 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral201, i32 0, i32 0
  %54 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets203 = getelementptr inbounds %struct.s2n_connection, ptr %54, i32 0, i32 28
  %version204 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets203, i32 0, i32 0
  %server_app_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version204, i32 0, i32 5
  %arraydecay205 = getelementptr inbounds [48 x i8], ptr %server_app_secret, i64 0, i64 0
  store ptr %arraydecay205, ptr %data202, align 8, !tbaa !12
  %size206 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral201, i32 0, i32 1
  %55 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure207 = getelementptr inbounds %struct.s2n_connection, ptr %55, i32 0, i32 27
  %56 = load ptr, ptr %secure207, align 8, !tbaa !23
  %cipher_suite208 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %cipher_suite208, align 8, !tbaa !48
  %prf_alg209 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %57, i32 0, i32 10
  %58 = load i32, ptr %prf_alg209, align 8, !tbaa !53
  %call210 = call zeroext i8 @s2n_get_hash_len(i32 noundef %58)
  %conv211 = zext i8 %call210 to i32
  store i32 %conv211, ptr %size206, align 8, !tbaa !15
  %allocated212 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral201, i32 0, i32 2
  store i32 0, ptr %allocated212, align 4, !tbaa !16
  %growable213 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral201, i32 0, i32 3
  %bf.load214 = load i8, ptr %growable213, align 8
  %bf.clear215 = and i8 %bf.load214, -2
  %bf.set216 = or i8 %bf.clear215, 0
  store i8 %bf.set216, ptr %growable213, align 8
  %call217 = call i32 @s2n_tls13_derive_secret(ptr noundef %53, i32 noundef 3, i32 noundef 0, ptr noundef %.compoundliteral201)
  %coerce.dive218 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp200, i32 0, i32 0
  store i32 %call217, ptr %coerce.dive218, align 4
  %coerce.dive219 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp200, i32 0, i32 0
  %59 = load i32, ptr %coerce.dive219, align 4
  %call220 = call zeroext i1 @s2n_result_is_ok(i32 %59)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp200) #6
  br i1 %call220, label %if.end226, label %if.then221

if.then221:                                       ; preds = %do.body199
  br label %do.body222

do.body222:                                       ; preds = %if.then221
  %__error_signal223 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal223, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond224:                                       ; No predecessors!
  br label %do.end225

do.end225:                                        ; preds = %do.cond224
  br label %if.end226

if.end226:                                        ; preds = %do.end225, %do.body199
  br label %do.cond227

do.cond227:                                       ; preds = %if.end226
  br label %do.end228

do.end228:                                        ; preds = %do.cond227
  br label %sw.epilog

sw.bb229:                                         ; preds = %do.end41
  br label %do.body230

do.body230:                                       ; preds = %sw.bb229
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp231) #6
  %60 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call232 = call i32 @s2n_calculate_transcript_digest(ptr noundef %60)
  %coerce.dive233 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp231, i32 0, i32 0
  store i32 %call232, ptr %coerce.dive233, align 4
  %coerce.dive234 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp231, i32 0, i32 0
  %61 = load i32, ptr %coerce.dive234, align 4
  %call235 = call zeroext i1 @s2n_result_is_ok(i32 %61)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp231) #6
  br i1 %call235, label %if.end241, label %if.then236

if.then236:                                       ; preds = %do.body230
  br label %do.body237

do.body237:                                       ; preds = %if.then236
  %__error_signal238 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal238, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond239:                                       ; No predecessors!
  br label %do.end240

do.end240:                                        ; preds = %do.cond239
  br label %if.end241

if.end241:                                        ; preds = %do.end240, %do.body230
  br label %do.cond242

do.cond242:                                       ; preds = %if.end241
  br label %do.end243

do.end243:                                        ; preds = %do.cond242
  br label %do.body244

do.body244:                                       ; preds = %do.end243
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp245) #6
  %62 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call246 = call i32 @s2n_derive_resumption_master_secret(ptr noundef %62)
  %coerce.dive247 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp245, i32 0, i32 0
  store i32 %call246, ptr %coerce.dive247, align 4
  %coerce.dive248 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp245, i32 0, i32 0
  %63 = load i32, ptr %coerce.dive248, align 4
  %call249 = call zeroext i1 @s2n_result_is_ok(i32 %63)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp245) #6
  br i1 %call249, label %if.end255, label %if.then250

if.then250:                                       ; preds = %do.body244
  br label %do.body251

do.body251:                                       ; preds = %if.then250
  %__error_signal252 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal252, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond253:                                       ; No predecessors!
  br label %do.end254

do.end254:                                        ; preds = %do.cond253
  br label %if.end255

if.end255:                                        ; preds = %do.end254, %do.body244
  br label %do.cond256

do.cond256:                                       ; preds = %if.end255
  br label %do.end257

do.end257:                                        ; preds = %do.cond256
  br label %sw.epilog

sw.default:                                       ; preds = %do.end41
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end257, %do.end228, %do.end153, %if.end78
  %__error_signal258 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal258, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body251, %do.body237, %do.body222, %do.body192, %do.body162, %do.body147, %do.body117, %do.body87, %do.body71, %do.body54
  call void @llvm.lifetime.end.p0(i64 4, ptr %message_type) #6
  br label %return

return:                                           ; preds = %cleanup, %do.body36, %do.body21, %if.then10, %do.body3
  %coerce.dive259 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %64 = load i32, ptr %coerce.dive259, align 4
  ret i32 %64
}

declare zeroext i8 @s2n_connection_get_protocol_version(ptr noundef) #3

declare i32 @s2n_conn_get_current_message_type(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @s2n_calculate_transcript_digest(ptr noundef %conn) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %hash_algorithm = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %digest_size = alloca i8, align 1
  %digest = alloca %struct.s2n_blob, align 8
  %hash_state = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.62, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 51
  %hashes = getelementptr inbounds %struct.s2n_handshake, ptr %handshake, i32 0, i32 1
  %4 = load ptr, ptr %hashes, align 8, !tbaa !56
  %cmp8 = icmp ne ptr %4, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.63, ptr %5, align 8, !tbaa !17
  %6 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %6, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
  br label %return

do.end16:                                         ; No predecessors!
  br label %do.end17

do.end17:                                         ; preds = %do.end16
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %do.body7
  br label %do.end19

do.end19:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash_algorithm) #6
  store i32 0, ptr %hash_algorithm, align 4, !tbaa !9
  br label %do.body20

do.body20:                                        ; preds = %do.end19
  %7 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %7, i32 0, i32 27
  %8 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %9, i32 0, i32 10
  %10 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %call21 = call i32 @s2n_hmac_hash_alg(i32 noundef %10, ptr noundef %hash_algorithm)
  %cmp22 = icmp sgt i32 %call21, -1
  br i1 %cmp22, label %if.end27, label %if.then23

if.then23:                                        ; preds = %do.body20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  %__error_signal25 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal25, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84

do.cond:                                          ; No predecessors!
  br label %do.end26

do.end26:                                         ; preds = %do.cond
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %do.body20
  br label %do.cond28

do.cond28:                                        ; preds = %if.end27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.start.p0(i64 1, ptr %digest_size) #6
  store i8 0, ptr %digest_size, align 1, !tbaa !9
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %11 = load i32, ptr %hash_algorithm, align 4, !tbaa !9
  %call31 = call i32 @s2n_hash_digest_size(i32 noundef %11, ptr noundef %digest_size)
  %cmp32 = icmp sgt i32 %call31, -1
  br i1 %cmp32, label %if.end38, label %if.then33

if.then33:                                        ; preds = %do.body30
  br label %do.body34

do.body34:                                        ; preds = %if.then33
  %__error_signal35 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal35, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

do.cond36:                                        ; No predecessors!
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %do.body30
  br label %do.cond39

do.cond39:                                        ; preds = %if.end38
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.start.p0(i64 24, ptr %digest) #6
  call void @llvm.memset.p0.i64(ptr align 8 %digest, i8 0, i64 24, i1 false)
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake42 = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 51
  %hashes43 = getelementptr inbounds %struct.s2n_handshake, ptr %handshake42, i32 0, i32 1
  %13 = load ptr, ptr %hashes43, align 8, !tbaa !56
  %transcript_hash_digest = getelementptr inbounds %struct.s2n_handshake_hashes, ptr %13, i32 0, i32 7
  %arraydecay = getelementptr inbounds [48 x i8], ptr %transcript_hash_digest, i64 0, i64 0
  %14 = load i8, ptr %digest_size, align 1, !tbaa !9
  %conv = zext i8 %14 to i32
  %call44 = call i32 @s2n_blob_init(ptr noundef %digest, ptr noundef %arraydecay, i32 noundef %conv)
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.end52, label %if.then47

if.then47:                                        ; preds = %do.body41
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  %__error_signal49 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal49, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup82

do.cond50:                                        ; No predecessors!
  br label %do.end51

do.end51:                                         ; preds = %do.cond50
  br label %if.end52

if.end52:                                         ; preds = %do.end51, %do.body41
  br label %do.cond53

do.cond53:                                        ; preds = %if.end52
  br label %do.end54

do.end54:                                         ; preds = %do.cond53
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash_state) #6
  %15 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake55 = getelementptr inbounds %struct.s2n_connection, ptr %15, i32 0, i32 51
  %hashes56 = getelementptr inbounds %struct.s2n_handshake, ptr %handshake55, i32 0, i32 1
  %16 = load ptr, ptr %hashes56, align 8, !tbaa !56
  %hash_workspace = getelementptr inbounds %struct.s2n_handshake_hashes, ptr %16, i32 0, i32 8
  store ptr %hash_workspace, ptr %hash_state, align 8, !tbaa !17
  br label %do.body57

do.body57:                                        ; preds = %do.end54
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %17 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %18 = load i32, ptr %hash_algorithm, align 4, !tbaa !9
  %19 = load ptr, ptr %hash_state, align 8, !tbaa !17
  %call58 = call i32 @s2n_handshake_copy_hash_state(ptr noundef %17, i32 noundef %18, ptr noundef %19)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call58, ptr %coerce.dive, align 4
  %coerce.dive59 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %20 = load i32, ptr %coerce.dive59, align 4
  %call60 = call zeroext i1 @s2n_result_is_ok(i32 %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call60, label %if.end66, label %if.then61

if.then61:                                        ; preds = %do.body57
  br label %do.body62

do.body62:                                        ; preds = %if.then61
  %__error_signal63 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal63, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond64:                                        ; No predecessors!
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %do.body57
  br label %do.cond67

do.cond67:                                        ; preds = %if.end66
  br label %do.end68

do.end68:                                         ; preds = %do.cond67
  br label %do.body69

do.body69:                                        ; preds = %do.end68
  %21 = load ptr, ptr %hash_state, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 0
  %22 = load ptr, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %digest, i32 0, i32 1
  %23 = load i32, ptr %size, align 8, !tbaa !15
  %call70 = call i32 @s2n_hash_digest(ptr noundef %21, ptr noundef %22, i32 noundef %23)
  %cmp71 = icmp sgt i32 %call70, -1
  br i1 %cmp71, label %if.end78, label %if.then73

if.then73:                                        ; preds = %do.body69
  br label %do.body74

do.body74:                                        ; preds = %if.then73
  %__error_signal75 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal75, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond76:                                        ; No predecessors!
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  br label %if.end78

if.end78:                                         ; preds = %do.end77, %do.body69
  br label %do.cond79

do.cond79:                                        ; preds = %if.end78
  br label %do.end80

do.end80:                                         ; preds = %do.cond79
  %__error_signal81 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal81, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %do.body74, %do.body62
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash_state) #6
  br label %cleanup82

cleanup82:                                        ; preds = %cleanup, %do.body48
  call void @llvm.lifetime.end.p0(i64 24, ptr %digest) #6
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup82, %do.body34
  call void @llvm.lifetime.end.p0(i64 1, ptr %digest_size) #6
  br label %cleanup84

cleanup84:                                        ; preds = %cleanup83, %do.body24
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash_algorithm) #6
  br label %return

return:                                           ; preds = %cleanup84, %do.body14, %do.body3
  %coerce.dive85 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %24 = load i32, ptr %coerce.dive85, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_tls13_secrets_get(ptr noundef %conn, i32 noundef %secret_type, i32 noundef %mode, ptr noundef %secret) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %secret_type.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %secret.addr = alloca ptr, align 8
  %secrets = alloca [4 x [2 x ptr]], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %__tmp_n = alloca i32, align 4
  %r = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store i32 %secret_type, ptr %secret_type.addr, align 4, !tbaa !9
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !9
  store ptr %secret, ptr %secret.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.29, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.30, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %6, i32 0, i32 27
  %7 = load ptr, ptr %secure, align 8, !tbaa !23
  %cmp21 = icmp ne ptr %7, null
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.body20
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %8 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.31, ptr %8, align 8, !tbaa !17
  %9 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %9, align 4, !tbaa !18
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.end26

do.end26:                                         ; preds = %do.body24
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %__error_signal28 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal28, align 4, !tbaa !4
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
  %10 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure34 = getelementptr inbounds %struct.s2n_connection, ptr %10, i32 0, i32 27
  %11 = load ptr, ptr %secure34, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %cmp35 = icmp ne ptr %12, null
  br i1 %cmp35, label %if.end45, label %if.then36

if.then36:                                        ; preds = %do.body33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  br label %do.body38

do.body38:                                        ; preds = %do.body37
  %13 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.32, ptr %13, align 8, !tbaa !17
  %14 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %14, align 4, !tbaa !18
  %call39 = call i32 @s2n_calculate_stacktrace()
  br label %do.end40

do.end40:                                         ; preds = %do.body38
  br label %do.body41

do.body41:                                        ; preds = %do.end40
  %__error_signal42 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal42, align 4, !tbaa !4
  br label %return

do.end43:                                         ; No predecessors!
  br label %do.end44

do.end44:                                         ; preds = %do.end43
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %do.body33
  br label %do.end46

do.end46:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 64, ptr %secrets) #6
  %arrayinit.begin = getelementptr inbounds [4 x [2 x ptr]], ptr %secrets, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arrayinit.begin, i8 0, i64 16, i1 false)
  %arrayinit.element = getelementptr inbounds [2 x ptr], ptr %arrayinit.begin, i64 1
  %arrayinit.begin47 = getelementptr inbounds [2 x ptr], ptr %arrayinit.element, i64 0, i64 0
  store ptr null, ptr %arrayinit.begin47, align 8, !tbaa !17
  %arrayinit.element48 = getelementptr inbounds ptr, ptr %arrayinit.begin47, i64 1
  %15 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets49 = getelementptr inbounds %struct.s2n_connection, ptr %15, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets49, i32 0, i32 0
  %client_early_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 1
  %arraydecay = getelementptr inbounds [48 x i8], ptr %client_early_secret, i64 0, i64 0
  store ptr %arraydecay, ptr %arrayinit.element48, align 8, !tbaa !17
  %arrayinit.element50 = getelementptr inbounds [2 x ptr], ptr %arrayinit.element, i64 1
  %arrayinit.begin51 = getelementptr inbounds [2 x ptr], ptr %arrayinit.element50, i64 0, i64 0
  %16 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets52 = getelementptr inbounds %struct.s2n_connection, ptr %16, i32 0, i32 28
  %version53 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets52, i32 0, i32 0
  %server_handshake_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version53, i32 0, i32 3
  %arraydecay54 = getelementptr inbounds [48 x i8], ptr %server_handshake_secret, i64 0, i64 0
  store ptr %arraydecay54, ptr %arrayinit.begin51, align 8, !tbaa !17
  %arrayinit.element55 = getelementptr inbounds ptr, ptr %arrayinit.begin51, i64 1
  %17 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets56 = getelementptr inbounds %struct.s2n_connection, ptr %17, i32 0, i32 28
  %version57 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets56, i32 0, i32 0
  %client_handshake_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version57, i32 0, i32 2
  %arraydecay58 = getelementptr inbounds [48 x i8], ptr %client_handshake_secret, i64 0, i64 0
  store ptr %arraydecay58, ptr %arrayinit.element55, align 8, !tbaa !17
  %arrayinit.element59 = getelementptr inbounds [2 x ptr], ptr %arrayinit.element50, i64 1
  %arrayinit.begin60 = getelementptr inbounds [2 x ptr], ptr %arrayinit.element59, i64 0, i64 0
  %18 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets61 = getelementptr inbounds %struct.s2n_connection, ptr %18, i32 0, i32 28
  %version62 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets61, i32 0, i32 0
  %server_app_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version62, i32 0, i32 5
  %arraydecay63 = getelementptr inbounds [48 x i8], ptr %server_app_secret, i64 0, i64 0
  store ptr %arraydecay63, ptr %arrayinit.begin60, align 8, !tbaa !17
  %arrayinit.element64 = getelementptr inbounds ptr, ptr %arrayinit.begin60, i64 1
  %19 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets65 = getelementptr inbounds %struct.s2n_connection, ptr %19, i32 0, i32 28
  %version66 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets65, i32 0, i32 0
  %client_app_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version66, i32 0, i32 4
  %arraydecay67 = getelementptr inbounds [48 x i8], ptr %client_app_secret, i64 0, i64 0
  store ptr %arraydecay67, ptr %arrayinit.element64, align 8, !tbaa !17
  br label %do.body68

do.body68:                                        ; preds = %do.end46
  %20 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %cmp69 = icmp ugt i32 %20, 0
  br i1 %cmp69, label %if.end81, label %if.then70

if.then70:                                        ; preds = %do.body68
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  br label %do.body72

do.body72:                                        ; preds = %do.body71
  %21 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.33, ptr %21, align 8, !tbaa !17
  %22 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %22, align 4, !tbaa !18
  %call73 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body72
  br label %do.end74

do.end74:                                         ; preds = %do.cond
  br label %do.body75

do.body75:                                        ; preds = %do.end74
  %__error_signal76 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal76, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194

do.cond77:                                        ; No predecessors!
  br label %do.end78

do.end78:                                         ; preds = %do.cond77
  br label %do.cond79

do.cond79:                                        ; preds = %do.end78
  br label %do.end80

do.end80:                                         ; preds = %do.cond79
  br label %if.end81

if.end81:                                         ; preds = %do.end80, %do.body68
  br label %do.cond82

do.cond82:                                        ; preds = %if.end81
  br label %do.end83

do.end83:                                         ; preds = %do.cond82
  br label %do.body84

do.body84:                                        ; preds = %do.end83
  %23 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %conv = zext i32 %23 to i64
  %cmp85 = icmp ult i64 %conv, 4
  br i1 %cmp85, label %if.end99, label %if.then87

if.then87:                                        ; preds = %do.body84
  br label %do.body88

do.body88:                                        ; preds = %if.then87
  br label %do.body89

do.body89:                                        ; preds = %do.body88
  %24 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.34, ptr %24, align 8, !tbaa !17
  %25 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %25, align 4, !tbaa !18
  %call90 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond91

do.cond91:                                        ; preds = %do.body89
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  br label %do.body93

do.body93:                                        ; preds = %do.end92
  %__error_signal94 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal94, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194

do.cond95:                                        ; No predecessors!
  br label %do.end96

do.end96:                                         ; preds = %do.cond95
  br label %do.cond97

do.cond97:                                        ; preds = %do.end96
  br label %do.end98

do.end98:                                         ; preds = %do.cond97
  br label %if.end99

if.end99:                                         ; preds = %do.end98, %do.body84
  br label %do.cond100

do.cond100:                                       ; preds = %if.end99
  br label %do.end101

do.end101:                                        ; preds = %do.cond100
  br label %do.body102

do.body102:                                       ; preds = %do.end101
  %26 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %27 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets103 = getelementptr inbounds %struct.s2n_connection, ptr %27, i32 0, i32 28
  %extract_secret_type = getelementptr inbounds %struct.s2n_secrets, ptr %secrets103, i32 0, i32 1
  %28 = load i32, ptr %extract_secret_type, align 4, !tbaa !55
  %cmp104 = icmp ule i32 %26, %28
  br i1 %cmp104, label %if.end118, label %if.then106

if.then106:                                       ; preds = %do.body102
  br label %do.body107

do.body107:                                       ; preds = %if.then106
  br label %do.body108

do.body108:                                       ; preds = %do.body107
  %29 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.35, ptr %29, align 8, !tbaa !17
  %30 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %30, align 4, !tbaa !18
  %call109 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond110

do.cond110:                                       ; preds = %do.body108
  br label %do.end111

do.end111:                                        ; preds = %do.cond110
  br label %do.body112

do.body112:                                       ; preds = %do.end111
  %__error_signal113 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal113, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194

do.cond114:                                       ; No predecessors!
  br label %do.end115

do.end115:                                        ; preds = %do.cond114
  br label %do.cond116

do.cond116:                                       ; preds = %do.end115
  br label %do.end117

do.end117:                                        ; preds = %do.cond116
  br label %if.end118

if.end118:                                        ; preds = %do.end117, %do.body102
  br label %do.cond119

do.cond119:                                       ; preds = %if.end118
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  br label %do.body121

do.body121:                                       ; preds = %do.end120
  %31 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %idxprom = zext i32 %31 to i64
  %arrayidx = getelementptr inbounds [4 x [2 x ptr]], ptr %secrets, i64 0, i64 %idxprom
  %32 = load i32, ptr %mode.addr, align 4, !tbaa !9
  %idxprom122 = zext i32 %32 to i64
  %arrayidx123 = getelementptr inbounds [2 x ptr], ptr %arrayidx, i64 0, i64 %idxprom122
  %33 = load ptr, ptr %arrayidx123, align 8, !tbaa !17
  %cmp124 = icmp ne ptr %33, null
  br i1 %cmp124, label %if.end138, label %if.then126

if.then126:                                       ; preds = %do.body121
  br label %do.body127

do.body127:                                       ; preds = %if.then126
  br label %do.body128

do.body128:                                       ; preds = %do.body127
  %34 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.36, ptr %34, align 8, !tbaa !17
  %35 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %35, align 4, !tbaa !18
  %call129 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond130

do.cond130:                                       ; preds = %do.body128
  br label %do.end131

do.end131:                                        ; preds = %do.cond130
  br label %do.body132

do.body132:                                       ; preds = %do.end131
  %__error_signal133 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal133, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194

do.cond134:                                       ; No predecessors!
  br label %do.end135

do.end135:                                        ; preds = %do.cond134
  br label %do.cond136

do.cond136:                                       ; preds = %do.end135
  br label %do.end137

do.end137:                                        ; preds = %do.cond136
  br label %if.end138

if.end138:                                        ; preds = %do.end137, %do.body121
  br label %do.cond139

do.cond139:                                       ; preds = %if.end138
  br label %do.end140

do.end140:                                        ; preds = %do.cond139
  %36 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure141 = getelementptr inbounds %struct.s2n_connection, ptr %36, i32 0, i32 27
  %37 = load ptr, ptr %secure141, align 8, !tbaa !23
  %cipher_suite142 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %cipher_suite142, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %38, i32 0, i32 10
  %39 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %call143 = call zeroext i8 @s2n_get_hash_len(i32 noundef %39)
  %conv144 = zext i8 %call143 to i32
  %40 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %size = getelementptr inbounds %struct.s2n_blob, ptr %40, i32 0, i32 1
  store i32 %conv144, ptr %size, align 8, !tbaa !15
  br label %do.body145

do.body145:                                       ; preds = %do.end140
  call void @llvm.lifetime.start.p0(i64 4, ptr %__tmp_n) #6
  %41 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %size146 = getelementptr inbounds %struct.s2n_blob, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %size146, align 8, !tbaa !15
  store i32 %42, ptr %__tmp_n, align 4, !tbaa !18
  %43 = load i32, ptr %__tmp_n, align 4, !tbaa !18
  %tobool = icmp ne i32 %43, 0
  %lnot = xor i1 %tobool, true
  %lnot147 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot147 to i32
  %conv148 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv148, i64 1)
  %tobool149 = icmp ne i64 %expval, 0
  br i1 %tobool149, label %if.then150, label %if.end168

if.then150:                                       ; preds = %do.body145
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6
  %44 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %data, align 8, !tbaa !12
  %46 = load i32, ptr %secret_type.addr, align 4, !tbaa !9
  %idxprom151 = zext i32 %46 to i64
  %arrayidx152 = getelementptr inbounds [4 x [2 x ptr]], ptr %secrets, i64 0, i64 %idxprom151
  %47 = load i32, ptr %mode.addr, align 4, !tbaa !9
  %idxprom153 = zext i32 %47 to i64
  %arrayidx154 = getelementptr inbounds [2 x ptr], ptr %arrayidx152, i64 0, i64 %idxprom153
  %48 = load ptr, ptr %arrayidx154, align 8, !tbaa !17
  %49 = load i32, ptr %__tmp_n, align 4, !tbaa !18
  %conv155 = zext i32 %49 to i64
  %call156 = call ptr @s2n_ensure_memcpy_trace(ptr noundef %45, ptr noundef %48, i64 noundef %conv155, ptr noundef @.str.37)
  store ptr %call156, ptr %r, align 8, !tbaa !17
  br label %do.body157

do.body157:                                       ; preds = %if.then150
  %50 = load ptr, ptr %r, align 8, !tbaa !17
  %cmp158 = icmp ne ptr %50, null
  br i1 %cmp158, label %if.end165, label %if.then160

if.then160:                                       ; preds = %do.body157
  br label %do.body161

do.body161:                                       ; preds = %if.then160
  %__error_signal162 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal162, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond163:                                       ; No predecessors!
  br label %do.end164

do.end164:                                        ; preds = %do.cond163
  br label %if.end165

if.end165:                                        ; preds = %do.end164, %do.body157
  br label %do.cond166

do.cond166:                                       ; preds = %if.end165
  br label %do.end167

do.end167:                                        ; preds = %do.cond166
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end167, %do.body161
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup169 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end168

if.end168:                                        ; preds = %cleanup.cont, %do.body145
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup169

cleanup169:                                       ; preds = %if.end168, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__tmp_n) #6
  %cleanup.dest170 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest170, label %cleanup194 [
    i32 0, label %cleanup.cont171
  ]

cleanup.cont171:                                  ; preds = %cleanup169
  br label %do.cond172

do.cond172:                                       ; preds = %cleanup.cont171
  br label %do.end173

do.end173:                                        ; preds = %do.cond172
  br label %do.body174

do.body174:                                       ; preds = %do.end173
  %51 = load ptr, ptr %secret.addr, align 8, !tbaa !17
  %size175 = getelementptr inbounds %struct.s2n_blob, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %size175, align 8, !tbaa !15
  %cmp176 = icmp ugt i32 %52, 0
  br i1 %cmp176, label %if.end190, label %if.then178

if.then178:                                       ; preds = %do.body174
  br label %do.body179

do.body179:                                       ; preds = %if.then178
  br label %do.body180

do.body180:                                       ; preds = %do.body179
  %53 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.38, ptr %53, align 8, !tbaa !17
  %54 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %54, align 4, !tbaa !18
  %call181 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond182

do.cond182:                                       ; preds = %do.body180
  br label %do.end183

do.end183:                                        ; preds = %do.cond182
  br label %do.body184

do.body184:                                       ; preds = %do.end183
  %__error_signal185 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal185, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194

do.cond186:                                       ; No predecessors!
  br label %do.end187

do.end187:                                        ; preds = %do.cond186
  br label %do.cond188

do.cond188:                                       ; preds = %do.end187
  br label %do.end189

do.end189:                                        ; preds = %do.cond188
  br label %if.end190

if.end190:                                        ; preds = %do.end189, %do.body174
  br label %do.cond191

do.cond191:                                       ; preds = %if.end190
  br label %do.end192

do.end192:                                        ; preds = %do.cond191
  %__error_signal193 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal193, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194

cleanup194:                                       ; preds = %do.end192, %do.body184, %cleanup169, %do.body132, %do.body112, %do.body93, %do.body75
  call void @llvm.lifetime.end.p0(i64 64, ptr %secrets) #6
  br label %return

return:                                           ; preds = %cleanup194, %do.body41, %do.body27, %do.body14, %do.body3
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %55 = load i32, ptr %coerce.dive, align 4
  ret i32 %55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

declare ptr @s2n_ensure_memcpy_trace(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @s2n_hmac_digest_size(i32 noundef, ptr noundef) #3

declare i32 @s2n_hmac_free(ptr noundef) #3

declare i32 @s2n_hmac_new(ptr noundef) #3

declare i32 @s2n_hkdf_extract(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @s2n_hkdf_expand_label(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @s2n_extract_early_secret_for_schedule(ptr noundef %conn) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %psk = alloca ptr, align 8
  %hmac_alg = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp43 = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  %.compoundliteral45 = alloca %struct.s2n_blob, align 8
  %.compoundliteral55 = alloca %struct.s2n_blob, align 8
  %__tmp_n = alloca i32, align 4
  %r = alloca ptr, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.44, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %psk) #6
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %psk_params = getelementptr inbounds %struct.s2n_connection, ptr %3, i32 0, i32 33
  %chosen_psk = getelementptr inbounds %struct.s2n_psk_parameters, ptr %psk_params, i32 0, i32 4
  %4 = load ptr, ptr %chosen_psk, align 8, !tbaa !61
  store ptr %4, ptr %psk, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmac_alg) #6
  %5 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %5, i32 0, i32 27
  %6 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %7, i32 0, i32 10
  %8 = load i32, ptr %prf_alg, align 8, !tbaa !53
  store i32 %8, ptr %hmac_alg, align 4, !tbaa !9
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %mode = getelementptr inbounds %struct.s2n_connection, ptr %9, i32 0, i32 13
  %10 = load i32, ptr %mode, align 8, !tbaa !62
  %cmp7 = icmp eq i32 %10, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %do.end6
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %early_data_state = getelementptr inbounds %struct.s2n_connection, ptr %11, i32 0, i32 88
  %12 = load i32, ptr %early_data_state, align 8, !tbaa !60
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then9, label %if.end39

if.then9:                                         ; preds = %land.lhs.true
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %13 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %psk_params11 = getelementptr inbounds %struct.s2n_connection, ptr %13, i32 0, i32 33
  %psk_list = getelementptr inbounds %struct.s2n_psk_parameters, ptr %psk_params11, i32 0, i32 1
  %call12 = call i32 @s2n_array_get(ptr noundef %psk_list, i32 noundef 0, ptr noundef %psk)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call12, ptr %coerce.dive, align 4
  %coerce.dive13 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %14 = load i32, ptr %coerce.dive13, align 4
  %call14 = call zeroext i1 @s2n_result_is_ok(i32 %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call14, label %if.end19, label %if.then15

if.then15:                                        ; preds = %do.body10
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  %__error_signal17 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal17, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond:                                          ; No predecessors!
  br label %do.end18

do.end18:                                         ; preds = %do.cond
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %do.body10
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  br label %do.body22

do.body22:                                        ; preds = %do.end21
  %15 = load ptr, ptr %psk, align 8, !tbaa !17
  %cmp23 = icmp ne ptr %15, null
  br i1 %cmp23, label %if.end36, label %if.then24

if.then24:                                        ; preds = %do.body22
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  br label %do.body26

do.body26:                                        ; preds = %do.body25
  %16 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.45, ptr %16, align 8, !tbaa !17
  %17 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %17, align 4, !tbaa !18
  %call27 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond28

do.cond28:                                        ; preds = %do.body26
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  %__error_signal31 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal31, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond32:                                        ; No predecessors!
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34

do.cond34:                                        ; preds = %do.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %do.body22
  br label %do.cond37

do.cond37:                                        ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %land.lhs.true, %do.end6
  %18 = load ptr, ptr %psk, align 8, !tbaa !17
  %cmp40 = icmp eq ptr %18, null
  br i1 %cmp40, label %if.then41, label %if.end81

if.then41:                                        ; preds = %if.end39
  br label %do.body42

do.body42:                                        ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp43) #6
  %19 = load i32, ptr %hmac_alg, align 4, !tbaa !9
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  store ptr @zero_value_bytes, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %20 = load i32, ptr %hmac_alg, align 4, !tbaa !9
  %call44 = call zeroext i8 @s2n_get_hash_len(i32 noundef %20)
  %conv = zext i8 %call44 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %data46 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral45, i32 0, i32 0
  store ptr @zero_value_bytes, ptr %data46, align 8, !tbaa !12
  %size47 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral45, i32 0, i32 1
  %21 = load i32, ptr %hmac_alg, align 4, !tbaa !9
  %call48 = call zeroext i8 @s2n_get_hash_len(i32 noundef %21)
  %conv49 = zext i8 %call48 to i32
  store i32 %conv49, ptr %size47, align 8, !tbaa !15
  %allocated50 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral45, i32 0, i32 2
  store i32 0, ptr %allocated50, align 4, !tbaa !16
  %growable51 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral45, i32 0, i32 3
  %bf.load52 = load i8, ptr %growable51, align 8
  %bf.clear53 = and i8 %bf.load52, -2
  %bf.set54 = or i8 %bf.clear53, 0
  store i8 %bf.set54, ptr %growable51, align 8
  %data56 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 0
  %22 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %22, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 0
  %extract_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], ptr %extract_secret, i64 0, i64 0
  store ptr %arraydecay, ptr %data56, align 8, !tbaa !12
  %size57 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 1
  %23 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure58 = getelementptr inbounds %struct.s2n_connection, ptr %23, i32 0, i32 27
  %24 = load ptr, ptr %secure58, align 8, !tbaa !23
  %cipher_suite59 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %cipher_suite59, align 8, !tbaa !48
  %prf_alg60 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %25, i32 0, i32 10
  %26 = load i32, ptr %prf_alg60, align 8, !tbaa !53
  %call61 = call zeroext i8 @s2n_get_hash_len(i32 noundef %26)
  %conv62 = zext i8 %call61 to i32
  store i32 %conv62, ptr %size57, align 8, !tbaa !15
  %allocated63 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 2
  store i32 0, ptr %allocated63, align 4, !tbaa !16
  %growable64 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral55, i32 0, i32 3
  %bf.load65 = load i8, ptr %growable64, align 8
  %bf.clear66 = and i8 %bf.load65, -2
  %bf.set67 = or i8 %bf.clear66, 0
  store i8 %bf.set67, ptr %growable64, align 8
  %call68 = call i32 @s2n_extract_secret(i32 noundef %19, ptr noundef %.compoundliteral, ptr noundef %.compoundliteral45, ptr noundef %.compoundliteral55)
  %coerce.dive69 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp43, i32 0, i32 0
  store i32 %call68, ptr %coerce.dive69, align 4
  %coerce.dive70 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp43, i32 0, i32 0
  %27 = load i32, ptr %coerce.dive70, align 4
  %call71 = call zeroext i1 @s2n_result_is_ok(i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp43) #6
  br i1 %call71, label %if.end77, label %if.then72

if.then72:                                        ; preds = %do.body42
  br label %do.body73

do.body73:                                        ; preds = %if.then72
  %__error_signal74 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal74, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond75:                                        ; No predecessors!
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.body42
  br label %do.cond78

do.cond78:                                        ; preds = %if.end77
  br label %do.end79

do.end79:                                         ; preds = %do.cond78
  %__error_signal80 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal80, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

if.end81:                                         ; preds = %if.end39
  br label %do.body82

do.body82:                                        ; preds = %if.end81
  %28 = load i32, ptr %hmac_alg, align 4, !tbaa !9
  %29 = load ptr, ptr %psk, align 8, !tbaa !17
  %hmac_alg83 = getelementptr inbounds %struct.s2n_psk, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %hmac_alg83, align 8, !tbaa !19
  %cmp84 = icmp eq i32 %28, %30
  br i1 %cmp84, label %if.end98, label %if.then86

if.then86:                                        ; preds = %do.body82
  br label %do.body87

do.body87:                                        ; preds = %if.then86
  br label %do.body88

do.body88:                                        ; preds = %do.body87
  %31 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.46, ptr %31, align 8, !tbaa !17
  %32 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %32, align 4, !tbaa !18
  %call89 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond90

do.cond90:                                        ; preds = %do.body88
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  br label %do.body92

do.body92:                                        ; preds = %do.end91
  %__error_signal93 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal93, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

do.cond94:                                        ; No predecessors!
  br label %do.end95

do.end95:                                         ; preds = %do.cond94
  br label %do.cond96

do.cond96:                                        ; preds = %do.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  br label %if.end98

if.end98:                                         ; preds = %do.end97, %do.body82
  br label %do.cond99

do.cond99:                                        ; preds = %if.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  br label %do.body101

do.body101:                                       ; preds = %do.end100
  call void @llvm.lifetime.start.p0(i64 4, ptr %__tmp_n) #6
  %33 = load ptr, ptr %psk, align 8, !tbaa !17
  %early_secret = getelementptr inbounds %struct.s2n_psk, ptr %33, i32 0, i32 6
  %size102 = getelementptr inbounds %struct.s2n_blob, ptr %early_secret, i32 0, i32 1
  %34 = load i32, ptr %size102, align 8, !tbaa !63
  store i32 %34, ptr %__tmp_n, align 4, !tbaa !18
  %35 = load i32, ptr %__tmp_n, align 4, !tbaa !18
  %tobool = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool, true
  %lnot103 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot103 to i32
  %conv104 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv104, i64 1)
  %tobool105 = icmp ne i64 %expval, 0
  br i1 %tobool105, label %if.then106, label %if.end126

if.then106:                                       ; preds = %do.body101
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6
  %36 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets107 = getelementptr inbounds %struct.s2n_connection, ptr %36, i32 0, i32 28
  %version108 = getelementptr inbounds %struct.s2n_secrets, ptr %secrets107, i32 0, i32 0
  %extract_secret109 = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version108, i32 0, i32 0
  %arraydecay110 = getelementptr inbounds [48 x i8], ptr %extract_secret109, i64 0, i64 0
  %37 = load ptr, ptr %psk, align 8, !tbaa !17
  %early_secret111 = getelementptr inbounds %struct.s2n_psk, ptr %37, i32 0, i32 6
  %data112 = getelementptr inbounds %struct.s2n_blob, ptr %early_secret111, i32 0, i32 0
  %38 = load ptr, ptr %data112, align 8, !tbaa !64
  %39 = load i32, ptr %__tmp_n, align 4, !tbaa !18
  %conv113 = zext i32 %39 to i64
  %call114 = call ptr @s2n_ensure_memcpy_trace(ptr noundef %arraydecay110, ptr noundef %38, i64 noundef %conv113, ptr noundef @.str.47)
  store ptr %call114, ptr %r, align 8, !tbaa !17
  br label %do.body115

do.body115:                                       ; preds = %if.then106
  %40 = load ptr, ptr %r, align 8, !tbaa !17
  %cmp116 = icmp ne ptr %40, null
  br i1 %cmp116, label %if.end123, label %if.then118

if.then118:                                       ; preds = %do.body115
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  %__error_signal120 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal120, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond121:                                       ; No predecessors!
  br label %do.end122

do.end122:                                        ; preds = %do.cond121
  br label %if.end123

if.end123:                                        ; preds = %do.end122, %do.body115
  br label %do.cond124

do.cond124:                                       ; preds = %if.end123
  br label %do.end125

do.end125:                                        ; preds = %do.cond124
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %do.body119
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup127 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end126

if.end126:                                        ; preds = %cleanup.cont, %do.body101
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup127

cleanup127:                                       ; preds = %if.end126, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %__tmp_n) #6
  %cleanup.dest128 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest128, label %cleanup133 [
    i32 0, label %cleanup.cont129
  ]

cleanup.cont129:                                  ; preds = %cleanup127
  br label %do.cond130

do.cond130:                                       ; preds = %cleanup.cont129
  br label %do.end131

do.end131:                                        ; preds = %do.cond130
  %__error_signal132 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal132, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup133

cleanup133:                                       ; preds = %do.end131, %cleanup127, %do.body92, %do.end79, %do.body73, %do.body30, %do.body16
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmac_alg) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %psk) #6
  br label %return

return:                                           ; preds = %cleanup133, %do.body3
  %coerce.dive135 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %41 = load i32, ptr %coerce.dive135, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_extract_handshake_secret(ptr noundef %conn) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %derived_secret = alloca %struct.s2n_blob, align 8
  %derived_secret_bytes = alloca [48 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  %shared_secret = alloca %struct.s2n_blob, align 8
  %agg.tmp41 = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.48, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %derived_secret) #6
  call void @llvm.memset.p0.i64(ptr align 8 %derived_secret, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %derived_secret_bytes) #6
  call void @llvm.memset.p0.i64(ptr align 16 %derived_secret_bytes, i8 0, i64 48, i1 false)
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %arraydecay = getelementptr inbounds [48 x i8], ptr %derived_secret_bytes, i64 0, i64 0
  %call8 = call i32 @s2n_blob_init(ptr noundef %derived_secret, ptr noundef %arraydecay, i32 noundef 48)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %do.body7
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  %__error_signal12 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal12, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62

do.cond:                                          ; No predecessors!
  br label %do.end13

do.end13:                                         ; preds = %do.cond
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.body7
  br label %do.cond15

do.cond15:                                        ; preds = %if.end14
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call18 = call i32 @s2n_derive_secret_without_context(ptr noundef %3, i32 noundef 1, ptr noundef %derived_secret)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call18, ptr %coerce.dive, align 4
  %coerce.dive19 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %4 = load i32, ptr %coerce.dive19, align 4
  %call20 = call zeroext i1 @s2n_result_is_ok(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call20, label %if.end26, label %if.then21

if.then21:                                        ; preds = %do.body17
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  %__error_signal23 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal23, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62

do.cond24:                                        ; No predecessors!
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.body17
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  call void @llvm.lifetime.start.p0(i64 24, ptr %shared_secret) #6
  call void @llvm.memset.p0.i64(ptr align 8 %shared_secret, i8 0, i64 24, i1 false)
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %5 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call30 = call i32 @s2n_tls13_compute_shared_secret(ptr noundef %5, ptr noundef %shared_secret)
  %cmp31 = icmp sgt i32 %call30, -1
  br i1 %cmp31, label %if.end37, label %if.then32

if.then32:                                        ; preds = %do.body29
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  %__error_signal34 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal34, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond35:                                        ; No predecessors!
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %do.body29
  br label %do.cond38

do.cond38:                                        ; preds = %if.end37
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp41) #6
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %6, i32 0, i32 27
  %7 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %8, i32 0, i32 10
  %9 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %10 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %10, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 0
  %extract_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [48 x i8], ptr %extract_secret, i64 0, i64 0
  store ptr %arraydecay42, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure43 = getelementptr inbounds %struct.s2n_connection, ptr %11, i32 0, i32 27
  %12 = load ptr, ptr %secure43, align 8, !tbaa !23
  %cipher_suite44 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %cipher_suite44, align 8, !tbaa !48
  %prf_alg45 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %13, i32 0, i32 10
  %14 = load i32, ptr %prf_alg45, align 8, !tbaa !53
  %call46 = call zeroext i8 @s2n_get_hash_len(i32 noundef %14)
  %conv = zext i8 %call46 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %call47 = call i32 @s2n_extract_secret(i32 noundef %9, ptr noundef %derived_secret, ptr noundef %shared_secret, ptr noundef %.compoundliteral)
  %coerce.dive48 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp41, i32 0, i32 0
  store i32 %call47, ptr %coerce.dive48, align 4
  %coerce.dive49 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp41, i32 0, i32 0
  %15 = load i32, ptr %coerce.dive49, align 4
  %call50 = call zeroext i1 @s2n_result_is_ok(i32 %15)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp41) #6
  br i1 %call50, label %if.end56, label %if.then51

if.then51:                                        ; preds = %do.body40
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  %__error_signal53 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal53, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond54:                                        ; No predecessors!
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %do.body40
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %__error_signal59 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal59, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %do.body52, %do.body33
  %call60 = call i32 @s2n_free_or_wipe(ptr noundef %shared_secret)
  call void @llvm.lifetime.end.p0(i64 24, ptr %shared_secret) #6
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup, %do.body22, %do.body11
  call void @llvm.lifetime.end.p0(i64 48, ptr %derived_secret_bytes) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr %derived_secret) #6
  br label %return

return:                                           ; preds = %cleanup62, %do.body3
  %coerce.dive64 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %16 = load i32, ptr %coerce.dive64, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_extract_master_secret(ptr noundef %conn) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %derived_secret = alloca %struct.s2n_blob, align 8
  %derived_secret_bytes = alloca [48 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp30 = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  %.compoundliteral35 = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.52, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  br label %return

do.end4:                                          ; No predecessors!
  br label %do.end5

do.end5:                                          ; preds = %do.end4
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.body
  br label %do.end6

do.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %derived_secret) #6
  call void @llvm.memset.p0.i64(ptr align 8 %derived_secret, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr %derived_secret_bytes) #6
  call void @llvm.memset.p0.i64(ptr align 16 %derived_secret_bytes, i8 0, i64 48, i1 false)
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %arraydecay = getelementptr inbounds [48 x i8], ptr %derived_secret_bytes, i64 0, i64 0
  %call8 = call i32 @s2n_blob_init(ptr noundef %derived_secret, ptr noundef %arraydecay, i32 noundef 48)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %do.body7
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  %__error_signal12 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal12, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end13

do.end13:                                         ; preds = %do.cond
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.body7
  br label %do.cond15

do.cond15:                                        ; preds = %if.end14
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  br label %do.body17

do.body17:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %3 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %call18 = call i32 @s2n_derive_secret_without_context(ptr noundef %3, i32 noundef 2, ptr noundef %derived_secret)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call18, ptr %coerce.dive, align 4
  %coerce.dive19 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %4 = load i32, ptr %coerce.dive19, align 4
  %call20 = call zeroext i1 @s2n_result_is_ok(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call20, label %if.end26, label %if.then21

if.then21:                                        ; preds = %do.body17
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  %__error_signal23 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal23, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond24:                                        ; No predecessors!
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.body17
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp30) #6
  %5 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %5, i32 0, i32 27
  %6 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %7, i32 0, i32 10
  %8 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  store ptr @zero_value_bytes, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure31 = getelementptr inbounds %struct.s2n_connection, ptr %9, i32 0, i32 27
  %10 = load ptr, ptr %secure31, align 8, !tbaa !23
  %cipher_suite32 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %cipher_suite32, align 8, !tbaa !48
  %prf_alg33 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %11, i32 0, i32 10
  %12 = load i32, ptr %prf_alg33, align 8, !tbaa !53
  %call34 = call zeroext i8 @s2n_get_hash_len(i32 noundef %12)
  %conv = zext i8 %call34 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %data36 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral35, i32 0, i32 0
  %13 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %13, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 0
  %extract_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [48 x i8], ptr %extract_secret, i64 0, i64 0
  store ptr %arraydecay37, ptr %data36, align 8, !tbaa !12
  %size38 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral35, i32 0, i32 1
  %14 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure39 = getelementptr inbounds %struct.s2n_connection, ptr %14, i32 0, i32 27
  %15 = load ptr, ptr %secure39, align 8, !tbaa !23
  %cipher_suite40 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %cipher_suite40, align 8, !tbaa !48
  %prf_alg41 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %16, i32 0, i32 10
  %17 = load i32, ptr %prf_alg41, align 8, !tbaa !53
  %call42 = call zeroext i8 @s2n_get_hash_len(i32 noundef %17)
  %conv43 = zext i8 %call42 to i32
  store i32 %conv43, ptr %size38, align 8, !tbaa !15
  %allocated44 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral35, i32 0, i32 2
  store i32 0, ptr %allocated44, align 4, !tbaa !16
  %growable45 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral35, i32 0, i32 3
  %bf.load46 = load i8, ptr %growable45, align 8
  %bf.clear47 = and i8 %bf.load46, -2
  %bf.set48 = or i8 %bf.clear47, 0
  store i8 %bf.set48, ptr %growable45, align 8
  %call49 = call i32 @s2n_extract_secret(i32 noundef %8, ptr noundef %derived_secret, ptr noundef %.compoundliteral, ptr noundef %.compoundliteral35)
  %coerce.dive50 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp30, i32 0, i32 0
  store i32 %call49, ptr %coerce.dive50, align 4
  %coerce.dive51 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp30, i32 0, i32 0
  %18 = load i32, ptr %coerce.dive51, align 4
  %call52 = call zeroext i1 @s2n_result_is_ok(i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp30) #6
  br i1 %call52, label %if.end58, label %if.then53

if.then53:                                        ; preds = %do.body29
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %__error_signal55 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal55, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond56:                                        ; No predecessors!
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.body29
  br label %do.cond59

do.cond59:                                        ; preds = %if.end58
  br label %do.end60

do.end60:                                         ; preds = %do.cond59
  %__error_signal61 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal61, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %do.body54, %do.body22, %do.body11
  call void @llvm.lifetime.end.p0(i64 48, ptr %derived_secret_bytes) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr %derived_secret) #6
  br label %return

return:                                           ; preds = %cleanup, %do.body3
  %coerce.dive63 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %19 = load i32, ptr %coerce.dive63, align 4
  ret i32 %19
}

declare i32 @s2n_array_get(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @s2n_blob_init(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_secret_without_context(ptr noundef %conn, i32 noundef %input_secret_type, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %input_secret_type.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  %.compoundliteral39 = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store i32 %input_secret_type, ptr %input_secret_type.addr, align 4, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.49, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.50, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets = getelementptr inbounds %struct.s2n_connection, ptr %6, i32 0, i32 28
  %extract_secret_type = getelementptr inbounds %struct.s2n_secrets, ptr %secrets, i32 0, i32 1
  %7 = load i32, ptr %extract_secret_type, align 4, !tbaa !55
  %8 = load i32, ptr %input_secret_type.addr, align 4, !tbaa !9
  %cmp21 = icmp eq i32 %7, %8
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.body20
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %9 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.51, ptr %9, align 8, !tbaa !17
  %10 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762120, ptr %10, align 4, !tbaa !18
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.end26

do.end26:                                         ; preds = %do.body24
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %__error_signal28 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal28, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %11, i32 0, i32 27
  %12 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %13, i32 0, i32 10
  %14 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %15 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secrets34 = getelementptr inbounds %struct.s2n_connection, ptr %15, i32 0, i32 28
  %version = getelementptr inbounds %struct.s2n_secrets, ptr %secrets34, i32 0, i32 0
  %extract_secret = getelementptr inbounds %struct.s2n_tls13_secrets, ptr %version, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], ptr %extract_secret, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %16 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure35 = getelementptr inbounds %struct.s2n_connection, ptr %16, i32 0, i32 27
  %17 = load ptr, ptr %secure35, align 8, !tbaa !23
  %cipher_suite36 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %cipher_suite36, align 8, !tbaa !48
  %prf_alg37 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %18, i32 0, i32 10
  %19 = load i32, ptr %prf_alg37, align 8, !tbaa !53
  %call38 = call zeroext i8 @s2n_get_hash_len(i32 noundef %19)
  %conv = zext i8 %call38 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %data40 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral39, i32 0, i32 0
  %20 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure41 = getelementptr inbounds %struct.s2n_connection, ptr %20, i32 0, i32 27
  %21 = load ptr, ptr %secure41, align 8, !tbaa !23
  %cipher_suite42 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %cipher_suite42, align 8, !tbaa !48
  %prf_alg43 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %prf_alg43, align 8, !tbaa !53
  %call44 = call ptr @s2n_get_empty_context(i32 noundef %23)
  store ptr %call44, ptr %data40, align 8, !tbaa !12
  %size45 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral39, i32 0, i32 1
  %24 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure46 = getelementptr inbounds %struct.s2n_connection, ptr %24, i32 0, i32 27
  %25 = load ptr, ptr %secure46, align 8, !tbaa !23
  %cipher_suite47 = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %cipher_suite47, align 8, !tbaa !48
  %prf_alg48 = getelementptr inbounds %struct.s2n_cipher_suite, ptr %26, i32 0, i32 10
  %27 = load i32, ptr %prf_alg48, align 8, !tbaa !53
  %call49 = call zeroext i8 @s2n_get_hash_len(i32 noundef %27)
  %conv50 = zext i8 %call49 to i32
  store i32 %conv50, ptr %size45, align 8, !tbaa !15
  %allocated51 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral39, i32 0, i32 2
  store i32 0, ptr %allocated51, align 4, !tbaa !16
  %growable52 = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral39, i32 0, i32 3
  %bf.load53 = load i8, ptr %growable52, align 8
  %bf.clear54 = and i8 %bf.load53, -2
  %bf.set55 = or i8 %bf.clear54, 0
  store i8 %bf.set55, ptr %growable52, align 8
  %28 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call56 = call i32 @s2n_derive_secret(i32 noundef %14, ptr noundef %.compoundliteral, ptr noundef @s2n_tls13_label_derived_secret, ptr noundef %.compoundliteral39, ptr noundef %28)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call56, ptr %coerce.dive, align 4
  %coerce.dive57 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %29 = load i32, ptr %coerce.dive57, align 4
  %call58 = call zeroext i1 @s2n_result_is_ok(i32 %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call58, label %if.end63, label %if.then59

if.then59:                                        ; preds = %do.body33
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  %__error_signal61 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal61, align 4, !tbaa !4
  br label %return

do.end62:                                         ; No predecessors!
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %do.body33
  br label %do.end64

do.end64:                                         ; preds = %if.end63
  %__error_signal65 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal65, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end64, %do.body60, %do.body27, %do.body14, %do.body3
  %coerce.dive66 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %30 = load i32, ptr %coerce.dive66, align 4
  ret i32 %30
}

declare i32 @s2n_free_or_wipe(ptr noundef) #3

declare i32 @s2n_tls13_compute_shared_secret(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_client_early_traffic_secret(ptr noundef %conn, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %1 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call = call i32 @s2n_derive_secret_with_context(ptr noundef %0, i32 noundef 1, ptr noundef @s2n_tls13_label_client_early_traffic_secret, i32 noundef 0, ptr noundef %1)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %2 = load i32, ptr %coerce.dive1, align 4
  %call2 = call zeroext i1 @s2n_result_is_ok(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %__error_signal5 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal5, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end4, %do.body3
  %coerce.dive6 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %3 = load i32, ptr %coerce.dive6, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_server_handshake_traffic_secret(ptr noundef %conn, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp31 = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.53, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.54, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %7 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call21 = call i32 @s2n_derive_secret_with_context(ptr noundef %6, i32 noundef 2, ptr noundef @s2n_tls13_label_server_handshake_traffic_secret, i32 noundef 1, ptr noundef %7)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call21, ptr %coerce.dive, align 4
  %coerce.dive22 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %8 = load i32, ptr %coerce.dive22, align 4
  %call23 = call zeroext i1 @s2n_result_is_ok(i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call23, label %if.end28, label %if.then24

if.then24:                                        ; preds = %do.body20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %__error_signal26 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal26, align 4, !tbaa !4
  br label %return

do.end27:                                         ; No predecessors!
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %do.body20
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp31) #6
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %10 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake = getelementptr inbounds %struct.s2n_connection, ptr %11, i32 0, i32 51
  %server_finished = getelementptr inbounds %struct.s2n_handshake, ptr %handshake, i32 0, i32 3
  %arraydecay = getelementptr inbounds [48 x i8], ptr %server_finished, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 27
  %13 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %14, i32 0, i32 10
  %15 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %call32 = call zeroext i8 @s2n_get_hash_len(i32 noundef %15)
  %conv = zext i8 %call32 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %call33 = call i32 @s2n_tls13_compute_finished_key(ptr noundef %9, ptr noundef %10, ptr noundef %.compoundliteral)
  %coerce.dive34 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp31, i32 0, i32 0
  store i32 %call33, ptr %coerce.dive34, align 4
  %coerce.dive35 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp31, i32 0, i32 0
  %16 = load i32, ptr %coerce.dive35, align 4
  %call36 = call zeroext i1 @s2n_result_is_ok(i32 %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp31) #6
  br i1 %call36, label %if.end41, label %if.then37

if.then37:                                        ; preds = %do.body30
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  %__error_signal39 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal39, align 4, !tbaa !4
  br label %return

do.end40:                                         ; No predecessors!
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.body30
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  %__error_signal43 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal43, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end42, %do.body38, %do.body25, %do.body14, %do.body3
  %coerce.dive44 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %17 = load i32, ptr %coerce.dive44, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_client_handshake_traffic_secret(ptr noundef %conn, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp31 = alloca %struct.s2n_result, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.58, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.59, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %6 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %7 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call21 = call i32 @s2n_derive_secret_with_context(ptr noundef %6, i32 noundef 2, ptr noundef @s2n_tls13_label_client_handshake_traffic_secret, i32 noundef 1, ptr noundef %7)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call21, ptr %coerce.dive, align 4
  %coerce.dive22 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %8 = load i32, ptr %coerce.dive22, align 4
  %call23 = call zeroext i1 @s2n_result_is_ok(i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call23, label %if.end28, label %if.then24

if.then24:                                        ; preds = %do.body20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %__error_signal26 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal26, align 4, !tbaa !4
  br label %return

do.end27:                                         ; No predecessors!
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %do.body20
  br label %do.end29

do.end29:                                         ; preds = %if.end28
  br label %do.body30

do.body30:                                        ; preds = %do.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp31) #6
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %10 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %data = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 0
  %11 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %handshake = getelementptr inbounds %struct.s2n_connection, ptr %11, i32 0, i32 51
  %client_finished = getelementptr inbounds %struct.s2n_handshake, ptr %handshake, i32 0, i32 4
  %arraydecay = getelementptr inbounds [48 x i8], ptr %client_finished, i64 0, i64 0
  store ptr %arraydecay, ptr %data, align 8, !tbaa !12
  %size = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 1
  %12 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %12, i32 0, i32 27
  %13 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %14, i32 0, i32 10
  %15 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %call32 = call zeroext i8 @s2n_get_hash_len(i32 noundef %15)
  %conv = zext i8 %call32 to i32
  store i32 %conv, ptr %size, align 8, !tbaa !15
  %allocated = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 2
  store i32 0, ptr %allocated, align 4, !tbaa !16
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %bf.load = load i8, ptr %growable, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %growable, align 8
  %call33 = call i32 @s2n_tls13_compute_finished_key(ptr noundef %9, ptr noundef %10, ptr noundef %.compoundliteral)
  %coerce.dive34 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp31, i32 0, i32 0
  store i32 %call33, ptr %coerce.dive34, align 4
  %coerce.dive35 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp31, i32 0, i32 0
  %16 = load i32, ptr %coerce.dive35, align 4
  %call36 = call zeroext i1 @s2n_result_is_ok(i32 %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp31) #6
  br i1 %call36, label %if.end41, label %if.then37

if.then37:                                        ; preds = %do.body30
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  %__error_signal39 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal39, align 4, !tbaa !4
  br label %return

do.end40:                                         ; No predecessors!
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.body30
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  %__error_signal43 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal43, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end42, %do.body38, %do.body25, %do.body14, %do.body3
  %coerce.dive44 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %17 = load i32, ptr %coerce.dive44, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_server_application_traffic_secret(ptr noundef %conn, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %1 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call = call i32 @s2n_derive_secret_with_context(ptr noundef %0, i32 noundef 3, ptr noundef @s2n_tls13_label_server_application_traffic_secret, i32 noundef 15, ptr noundef %1)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %2 = load i32, ptr %coerce.dive1, align 4
  %call2 = call zeroext i1 @s2n_result_is_ok(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %__error_signal5 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal5, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end4, %do.body3
  %coerce.dive6 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %3 = load i32, ptr %coerce.dive6, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_derive_client_application_traffic_secret(ptr noundef %conn, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %1 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call = call i32 @s2n_derive_secret_with_context(ptr noundef %0, i32 noundef 3, ptr noundef @s2n_tls13_label_client_application_traffic_secret, i32 noundef 15, ptr noundef %1)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %2 = load i32, ptr %coerce.dive1, align 4
  %call2 = call zeroext i1 @s2n_result_is_ok(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body3

do.body3:                                         ; preds = %if.then
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end4

do.end4:                                          ; preds = %if.end
  %__error_signal5 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal5, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.end4, %do.body3
  %coerce.dive6 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %3 = load i32, ptr %coerce.dive6, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @s2n_tls13_compute_finished_key(ptr noundef %conn, ptr noundef %base_key, ptr noundef %output) #0 {
entry:
  %retval = alloca %struct.s2n_result, align 4
  %conn.addr = alloca ptr, align 8
  %base_key.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %hmac_state = alloca %struct.s2n_hmac_state, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.s2n_blob, align 8
  store ptr %conn, ptr %conn.addr, align 8, !tbaa !17
  store ptr %base_key, ptr %base_key.addr, align 8, !tbaa !17
  store ptr %output, ptr %output.addr, align 8, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body1
  %1 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.55, ptr %1, align 8, !tbaa !17
  %2 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %2, align 4, !tbaa !18
  %call = call i32 @s2n_calculate_stacktrace()
  br label %do.end

do.end:                                           ; preds = %do.body2
  br label %do.body3

do.body3:                                         ; preds = %do.end
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal, align 4, !tbaa !4
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
  %3 = load ptr, ptr %base_key.addr, align 8, !tbaa !17
  %cmp8 = icmp ne ptr %3, null
  br i1 %cmp8, label %if.end18, label %if.then9

if.then9:                                         ; preds = %do.body7
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  br label %do.body11

do.body11:                                        ; preds = %do.body10
  %4 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.56, ptr %4, align 8, !tbaa !17
  %5 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %5, align 4, !tbaa !18
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %do.end13

do.end13:                                         ; preds = %do.body11
  br label %do.body14

do.body14:                                        ; preds = %do.end13
  %__error_signal15 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal15, align 4, !tbaa !4
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
  %6 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %cmp21 = icmp ne ptr %6, null
  br i1 %cmp21, label %if.end31, label %if.then22

if.then22:                                        ; preds = %do.body20
  br label %do.body23

do.body23:                                        ; preds = %if.then22
  br label %do.body24

do.body24:                                        ; preds = %do.body23
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.57, ptr %7, align 8, !tbaa !17
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653193, ptr %8, align 4, !tbaa !18
  %call25 = call i32 @s2n_calculate_stacktrace()
  br label %do.end26

do.end26:                                         ; preds = %do.body24
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %__error_signal28 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal28, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  %9 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %10 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %size = getelementptr inbounds %struct.s2n_blob, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %size, align 8, !tbaa !15
  %conv = trunc i32 %11 to i8
  %call34 = call i32 @s2n_handshake_set_finished_len(ptr noundef %9, i8 noundef zeroext %conv)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 %call34, ptr %coerce.dive, align 4
  %coerce.dive35 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %12 = load i32, ptr %coerce.dive35, align 4
  %call36 = call zeroext i1 @s2n_result_is_ok(i32 %12)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call36, label %if.end41, label %if.then37

if.then37:                                        ; preds = %do.body33
  br label %do.body38

do.body38:                                        ; preds = %if.then37
  %__error_signal39 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal39, align 4, !tbaa !4
  br label %return

do.end40:                                         ; No predecessors!
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %do.body33
  br label %do.end42

do.end42:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 1168, ptr %hmac_state) #6
  call void @llvm.memset.p0.i64(ptr align 8 %hmac_state, i8 0, i64 1168, i1 false)
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  %call44 = call i32 @s2n_hmac_new(ptr noundef %hmac_state)
  %cmp45 = icmp sgt i32 %call44, -1
  br i1 %cmp45, label %if.end51, label %if.then47

if.then47:                                        ; preds = %do.body43
  br label %do.body48

do.body48:                                        ; preds = %if.then47
  %__error_signal49 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal49, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond:                                          ; No predecessors!
  br label %do.end50

do.end50:                                         ; preds = %do.cond
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %do.body43
  br label %do.cond52

do.cond52:                                        ; preds = %if.end51
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  br label %do.body54

do.body54:                                        ; preds = %do.end53
  %13 = load ptr, ptr %conn.addr, align 8, !tbaa !17
  %secure = getelementptr inbounds %struct.s2n_connection, ptr %13, i32 0, i32 27
  %14 = load ptr, ptr %secure, align 8, !tbaa !23
  %cipher_suite = getelementptr inbounds %struct.s2n_crypto_parameters, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %cipher_suite, align 8, !tbaa !48
  %prf_alg = getelementptr inbounds %struct.s2n_cipher_suite, ptr %15, i32 0, i32 10
  %16 = load i32, ptr %prf_alg, align 8, !tbaa !53
  %17 = load ptr, ptr %base_key.addr, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 24, i1 false)
  %growable = getelementptr inbounds %struct.s2n_blob, ptr %.compoundliteral, i32 0, i32 3
  %18 = load ptr, ptr %output.addr, align 8, !tbaa !17
  %call56 = call i32 @s2n_hkdf_expand_label(ptr noundef %hmac_state, i32 noundef %16, ptr noundef %17, ptr noundef @s2n_tls13_label_finished, ptr noundef %.compoundliteral, ptr noundef %18)
  %cmp57 = icmp sgt i32 %call56, -1
  br i1 %cmp57, label %if.end64, label %if.then59

if.then59:                                        ; preds = %do.body54
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  %__error_signal61 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 -1, ptr %__error_signal61, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond62:                                        ; No predecessors!
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %do.body54
  br label %do.cond65

do.cond65:                                        ; preds = %if.end64
  br label %do.end66

do.end66:                                         ; preds = %do.cond65
  %__error_signal67 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  store i32 0, ptr %__error_signal67, align 4, !tbaa !4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.body60, %do.body48
  %call68 = call i32 @s2n_hmac_free(ptr noundef %hmac_state)
  call void @llvm.lifetime.end.p0(i64 1168, ptr %hmac_state) #6
  br label %return

return:                                           ; preds = %cleanup, %do.body38, %do.body27, %do.body14, %do.body3
  %coerce.dive70 = getelementptr inbounds %struct.s2n_result, ptr %retval, i32 0, i32 0
  %19 = load i32, ptr %coerce.dive70, align 4
  ret i32 %19
}

declare i32 @s2n_handshake_set_finished_len(ptr noundef, i8 noundef zeroext) #3

declare zeroext i1 @s2n_connection_is_quic_enabled(ptr noundef) #3

declare zeroext i1 @s2n_in_unit_test(...) #3

declare void @s2n_result_ignore(i32) #3

declare i32 @s2n_key_log_tls13_secret(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @s2n_hash_digest_size(i32 noundef, ptr noundef) #3

declare i32 @s2n_handshake_copy_hash_state(ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"s2n_blob", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!13, !6, i64 8}
!16 = !{!13, !6, i64 12}
!17 = !{!14, !14, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !7, i64 56}
!20 = !{!"s2n_psk", !7, i64 0, !13, i64 8, !13, i64 32, !7, i64 56, !6, i64 60, !11, i64 64, !13, i64 72, !21, i64 96, !11, i64 160}
!21 = !{!"s2n_early_data_config", !6, i64 0, !7, i64 4, !14, i64 8, !13, i64 16, !13, i64 40}
!22 = !{!20, !7, i64 0}
!23 = !{!24, !14, i64 224}
!24 = !{!"s2n_connection", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 1, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !6, i64 2, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !7, i64 80, !7, i64 101, !7, i64 122, !7, i64 144, !7, i64 148, !25, i64 152, !11, i64 160, !11, i64 168, !7, i64 176, !7, i64 208, !7, i64 209, !7, i64 210, !7, i64 211, !7, i64 212, !7, i64 213, !7, i64 214, !14, i64 216, !14, i64 224, !26, i64 232, !14, i64 576, !14, i64 584, !27, i64 592, !33, i64 1040, !38, i64 1672, !14, i64 1736, !7, i64 1744, !7, i64 1748, !7, i64 1752, !40, i64 1760, !40, i64 1800, !40, i64 1840, !7, i64 1880, !11, i64 1888, !7, i64 1896, !40, i64 1904, !7, i64 1944, !7, i64 1945, !7, i64 1946, !32, i64 1947, !5, i64 1948, !5, i64 1952, !41, i64 1960, !37, i64 2152, !6, i64 2156, !37, i64 2160, !11, i64 2168, !7, i64 2176, !11, i64 2184, !11, i64 2192, !11, i64 2200, !5, i64 2208, !5, i64 2212, !7, i64 2216, !7, i64 2472, !7, i64 2728, !13, i64 2736, !7, i64 2760, !13, i64 2768, !13, i64 2792, !13, i64 2816, !43, i64 2840, !45, i64 3752, !14, i64 3800, !14, i64 3808, !7, i64 3816, !7, i64 3820, !13, i64 3824, !6, i64 3848, !46, i64 3856, !7, i64 3888, !40, i64 4000, !13, i64 4040, !13, i64 4064, !32, i64 4088, !32, i64 4089, !32, i64 4090, !37, i64 4092, !37, i64 4094, !7, i64 4096, !6, i64 4100, !13, i64 4104, !6, i64 4128, !47, i64 4136, !5, i64 4184}
!25 = !{!"s2n_timer", !11, i64 0}
!26 = !{!"s2n_secrets", !7, i64 0, !7, i64 340}
!27 = !{!"s2n_kex_parameters", !28, i64 0, !29, i64 8, !7, i64 24, !29, i64 56, !30, i64 72, !30, i64 184, !7, i64 296, !31, i64 312, !13, i64 400, !13, i64 424}
!28 = !{!"s2n_dh_params", !14, i64 0}
!29 = !{!"s2n_ecc_evp_params", !14, i64 0, !14, i64 8}
!30 = !{!"s2n_kem_group_params", !14, i64 0, !31, i64 8, !29, i64 96}
!31 = !{!"s2n_kem_params", !14, i64 0, !13, i64 8, !13, i64 32, !13, i64 56, !32, i64 80}
!32 = !{!"_Bool", !7, i64 0}
!33 = !{!"s2n_handshake_parameters", !34, i64 0, !34, i64 80, !13, i64 160, !7, i64 184, !35, i64 188, !36, i64 320, !35, i64 344, !36, i64 480, !14, i64 504, !7, i64 512, !7, i64 536, !7, i64 560, !7, i64 561, !7, i64 562, !7, i64 594}
!34 = !{!"s2n_pkey", !7, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72}
!35 = !{!"s2n_sig_scheme_list", !7, i64 0, !7, i64 128}
!36 = !{!"s2n_signature_scheme", !37, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 13, !37, i64 14, !14, i64 16}
!37 = !{!"short", !7, i64 0}
!38 = !{!"s2n_psk_parameters", !7, i64 0, !39, i64 8, !37, i64 40, !37, i64 42, !14, i64 48, !7, i64 56}
!39 = !{!"s2n_array", !13, i64 0, !6, i64 24, !6, i64 28}
!40 = !{!"s2n_stuffer", !13, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 36, !6, i64 36}
!41 = !{!"s2n_handshake", !40, i64 0, !14, i64 40, !7, i64 48, !7, i64 56, !7, i64 104, !7, i64 152, !6, i64 156, !6, i64 160, !7, i64 164, !7, i64 168, !42, i64 176, !6, i64 184, !6, i64 184, !6, i64 184, !6, i64 184, !7, i64 188}
!42 = !{!"s2n_offered_early_data", !14, i64 0}
!43 = !{!"s2n_client_hello", !13, i64 0, !44, i64 24, !13, i64 856, !13, i64 880, !6, i64 904, !6, i64 904, !6, i64 904, !6, i64 904, !6, i64 904, !6, i64 904}
!44 = !{!"", !7, i64 0, !13, i64 800, !37, i64 824}
!45 = !{!"s2n_x509_validator", !14, i64 0, !14, i64 8, !7, i64 16, !7, i64 17, !37, i64 18, !14, i64 24, !6, i64 32, !14, i64 40}
!46 = !{!"s2n_ticket_fields", !13, i64 0, !6, i64 24}
!47 = !{!"s2n_post_handshake", !40, i64 0, !7, i64 40}
!48 = !{!49, !14, i64 0}
!49 = !{!"s2n_crypto_parameters", !14, i64 0, !50, i64 8, !50, i64 16, !51, i64 24, !51, i64 1192, !7, i64 2360, !7, i64 2376, !7, i64 2392, !7, i64 2400}
!50 = !{!"s2n_session_key", !14, i64 0}
!51 = !{!"s2n_hmac_state", !7, i64 0, !37, i64 4, !6, i64 8, !37, i64 12, !7, i64 14, !52, i64 16, !52, i64 256, !52, i64 496, !52, i64 736, !7, i64 976, !7, i64 1104}
!52 = !{!"s2n_hash_state", !14, i64 0, !7, i64 8, !7, i64 12, !11, i64 16, !7, i64 24}
!53 = !{!54, !7, i64 88}
!54 = !{!"s2n_cipher_suite", !6, i64 0, !14, i64 8, !7, i64 16, !14, i64 24, !7, i64 32, !14, i64 40, !7, i64 48, !7, i64 64, !14, i64 72, !14, i64 80, !7, i64 88, !7, i64 92}
!55 = !{!24, !7, i64 572}
!56 = !{!24, !14, i64 2000}
!57 = !{!24, !14, i64 32}
!58 = !{!24, !14, i64 40}
!59 = !{!24, !7, i64 212}
!60 = !{!24, !7, i64 4096}
!61 = !{!24, !14, i64 1720}
!62 = !{!24, !7, i64 144}
!63 = !{!20, !6, i64 80}
!64 = !{!20, !14, i64 72}

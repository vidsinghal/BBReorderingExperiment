; ModuleID = 'samples/78.bc'
source_filename = "crypto/evp/ctrl_params_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translation_st = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.kdf_type_map_st = type { i32, ptr }
%struct.ossl_item_st = type { i32, ptr }
%struct.translation_ctx_st = type { ptr, i32, i32, ptr, i32, i32, ptr, i64, ptr, ptr, [50 x i8], ptr, ptr, i64 }
%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }
%struct.evp_pkey_ctx_st = type { i32, ptr, ptr, ptr, ptr, %union.anon, %struct.anon.4, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr }
%struct.anon.4 = type { ptr, ptr, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.2 = type { ptr, ptr }
%struct.anon.3 = type { ptr, ptr }
%struct.anon = type { ptr }

@.str = private unnamed_addr constant [35 x i8] c"crypto/evp/ctrl_params_translate.c\00", align 1
@__func__.evp_pkey_ctx_ctrl_to_param = private unnamed_addr constant [27 x i8] c"evp_pkey_ctx_ctrl_to_param\00", align 1
@__func__.default_fixup_args = private unnamed_addr constant [19 x i8] c"default_fixup_args\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"[action:%d, state:%d]\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"[action:%d, state:%d] trying to get a BIGNUM via ctrl call\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[action:%d, state:%d] only setting allowed\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"[action:%d, state:%d] name=%s, value=%s\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"[action:%d, state:%d] unknown OSSL_PARAM data type %d\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"[action:%d, state:%d] unsupported OSSL_PARAM data type %d\00", align 1
@__func__.default_check = private unnamed_addr constant [14 x i8] c"default_check\00", align 1
@evp_pkey_ctx_translations = internal constant [85 x %struct.translation_st] [%struct.translation_st { i32 2, i32 -1, i32 -1, i32 496, i32 15, ptr @.str.8, ptr @.str.9, ptr @.str.8, i32 5, ptr null }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 16, ptr @.str.8, ptr @.str.9, ptr @.str.8, i32 7, ptr null }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 17, ptr null, ptr null, ptr @.str.8, i32 7, ptr @fix_distid_len }, %struct.translation_st { i32 0, i32 920, i32 0, i32 2048, i32 4102, ptr null, ptr null, ptr @.str.10, i32 4, ptr @fix_dh_kdf_type }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4103, ptr null, ptr null, ptr @.str.11, i32 4, ptr @fix_md }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4104, ptr null, ptr null, ptr @.str.11, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4105, ptr null, ptr null, ptr @.str.12, i32 2, ptr null }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4106, ptr null, ptr null, ptr @.str.12, i32 2, ptr null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4107, ptr null, ptr null, ptr @.str.13, i32 5, ptr null }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4108, ptr null, ptr null, ptr @.str.13, i32 7, ptr null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4109, ptr null, ptr null, ptr @.str.14, i32 4, ptr @fix_oid }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4110, ptr null, ptr null, ptr @.str.14, i32 4, ptr @fix_oid }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2, i32 4101, ptr @.str.15, ptr null, ptr @.str.16, i32 4, ptr @fix_dh_paramgen_type }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2, i32 4097, ptr @.str.17, ptr null, ptr @.str.18, i32 2, ptr null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 6, i32 4111, ptr @.str.19, ptr null, ptr @.str.20, i32 4, ptr null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 6, i32 4099, ptr @.str.21, ptr null, ptr @.str.20, i32 4, ptr @fix_dh_nid5114 }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2, i32 4101, ptr @.str.15, ptr null, ptr @.str.16, i32 4, ptr @fix_dh_paramgen_type }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2, i32 4097, ptr @.str.17, ptr null, ptr @.str.18, i32 2, ptr null }, %struct.translation_st { i32 2, i32 28, i32 0, i32 6, i32 4111, ptr @.str.19, ptr null, ptr @.str.20, i32 4, ptr @fix_dh_nid }, %struct.translation_st { i32 2, i32 28, i32 0, i32 6, i32 4099, ptr @.str.21, ptr null, ptr @.str.20, i32 4, ptr @fix_dh_nid5114 }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2, i32 4098, ptr @.str.22, ptr null, ptr @.str.23, i32 1, ptr null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2, i32 4100, ptr @.str.24, ptr null, ptr @.str.25, i32 2, ptr null }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2048, i32 4112, ptr @.str.26, ptr null, ptr @.str.27, i32 2, ptr null }, %struct.translation_st { i32 2, i32 116, i32 0, i32 2, i32 4097, ptr @.str.28, ptr null, ptr @.str.18, i32 2, ptr null }, %struct.translation_st { i32 2, i32 116, i32 0, i32 2, i32 4098, ptr @.str.29, ptr null, ptr @.str.25, i32 2, ptr null }, %struct.translation_st { i32 2, i32 116, i32 0, i32 2, i32 4099, ptr @.str.30, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 408, i32 0, i32 6, i32 4098, ptr @.str.32, ptr null, ptr @.str.33, i32 4, ptr @fix_ec_param_enc }, %struct.translation_st { i32 2, i32 408, i32 0, i32 6, i32 4097, ptr @.str.34, ptr null, ptr @.str.20, i32 4, ptr @fix_ec_paramgen_curve_nid }, %struct.translation_st { i32 0, i32 408, i32 0, i32 2048, i32 4099, ptr @.str.35, ptr null, ptr @.str.36, i32 1, ptr @fix_ecdh_cofactor }, %struct.translation_st { i32 0, i32 408, i32 0, i32 2048, i32 4100, ptr null, ptr null, ptr @.str.10, i32 4, ptr @fix_ec_kdf_type }, %struct.translation_st { i32 2, i32 408, i32 0, i32 2048, i32 4101, ptr @.str.37, ptr null, ptr @.str.11, i32 4, ptr @fix_md }, %struct.translation_st { i32 1, i32 408, i32 0, i32 2048, i32 4102, ptr null, ptr null, ptr @.str.11, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 408, i32 0, i32 2048, i32 4103, ptr null, ptr null, ptr @.str.12, i32 2, ptr null }, %struct.translation_st { i32 1, i32 408, i32 0, i32 2048, i32 4104, ptr null, ptr null, ptr @.str.12, i32 2, ptr null }, %struct.translation_st { i32 2, i32 408, i32 0, i32 2048, i32 4105, ptr null, ptr null, ptr @.str.13, i32 5, ptr null }, %struct.translation_st { i32 1, i32 408, i32 0, i32 2048, i32 4106, ptr null, ptr null, ptr @.str.13, i32 7, ptr null }, %struct.translation_st { i32 2, i32 1172, i32 0, i32 6, i32 4098, ptr @.str.32, ptr null, ptr @.str.33, i32 4, ptr @fix_ec_param_enc }, %struct.translation_st { i32 2, i32 1172, i32 0, i32 6, i32 4097, ptr @.str.34, ptr null, ptr @.str.20, i32 4, ptr @fix_ec_paramgen_curve_nid }, %struct.translation_st { i32 0, i32 1172, i32 0, i32 2048, i32 4099, ptr @.str.35, ptr null, ptr @.str.36, i32 1, ptr @fix_ecdh_cofactor }, %struct.translation_st { i32 0, i32 1172, i32 0, i32 2048, i32 4100, ptr null, ptr null, ptr @.str.10, i32 4, ptr @fix_ec_kdf_type }, %struct.translation_st { i32 2, i32 1172, i32 0, i32 2048, i32 4101, ptr @.str.37, ptr null, ptr @.str.11, i32 4, ptr @fix_md }, %struct.translation_st { i32 1, i32 1172, i32 0, i32 2048, i32 4102, ptr null, ptr null, ptr @.str.11, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 1172, i32 0, i32 2048, i32 4103, ptr null, ptr null, ptr @.str.12, i32 2, ptr null }, %struct.translation_st { i32 1, i32 1172, i32 0, i32 2048, i32 4104, ptr null, ptr null, ptr @.str.12, i32 2, ptr null }, %struct.translation_st { i32 2, i32 1172, i32 0, i32 2048, i32 4105, ptr null, ptr null, ptr @.str.13, i32 5, ptr null }, %struct.translation_st { i32 1, i32 1172, i32 0, i32 2048, i32 4106, ptr null, ptr null, ptr @.str.13, i32 7, ptr null }, %struct.translation_st { i32 2, i32 6, i32 912, i32 2032, i32 4097, ptr @.str.38, ptr null, ptr @.str.39, i32 4, ptr @fix_rsa_padding_mode }, %struct.translation_st { i32 1, i32 6, i32 912, i32 2032, i32 4102, ptr null, ptr null, ptr @.str.39, i32 4, ptr @fix_rsa_padding_mode }, %struct.translation_st { i32 2, i32 6, i32 912, i32 2032, i32 4101, ptr @.str.40, ptr null, ptr @.str.41, i32 4, ptr @fix_md }, %struct.translation_st { i32 1, i32 6, i32 912, i32 2032, i32 4104, ptr null, ptr null, ptr @.str.41, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 6, i32 912, i32 496, i32 4098, ptr @.str.42, ptr null, ptr @.str.43, i32 4, ptr @fix_rsa_pss_saltlen }, %struct.translation_st { i32 1, i32 6, i32 912, i32 496, i32 4103, ptr null, ptr null, ptr @.str.43, i32 4, ptr @fix_rsa_pss_saltlen }, %struct.translation_st { i32 2, i32 6, i32 0, i32 1536, i32 4105, ptr @.str.44, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 1, i32 6, i32 0, i32 1536, i32 4107, ptr null, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 6, i32 0, i32 1536, i32 4106, ptr null, ptr @.str.45, ptr @.str.46, i32 5, ptr null }, %struct.translation_st { i32 1, i32 6, i32 0, i32 1536, i32 4108, ptr null, ptr null, ptr @.str.46, i32 7, ptr null }, %struct.translation_st { i32 2, i32 912, i32 0, i32 6, i32 1, ptr @.str.47, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 912, i32 0, i32 6, i32 4101, ptr @.str.48, ptr null, ptr @.str.41, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 912, i32 0, i32 6, i32 4098, ptr @.str.49, ptr null, ptr @.str.43, i32 1, ptr null }, %struct.translation_st { i32 2, i32 6, i32 912, i32 4, i32 4099, ptr @.str.50, ptr null, ptr @.str.51, i32 2, ptr null }, %struct.translation_st { i32 2, i32 6, i32 912, i32 4, i32 4100, ptr @.str.52, ptr null, ptr @.str.53, i32 2, ptr null }, %struct.translation_st { i32 2, i32 6, i32 912, i32 4, i32 4109, ptr @.str.54, ptr null, ptr @.str.55, i32 2, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 496, i32 14, ptr @.str.56, ptr null, ptr @.str.57, i32 2, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4096, ptr @.str.58, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4097, ptr @.str.59, ptr @.str.60, ptr @.str.59, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4098, ptr @.str.61, ptr @.str.62, ptr @.str.61, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4099, ptr @.str.58, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4100, ptr @.str.63, ptr @.str.64, ptr @.str.63, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4101, ptr @.str.65, ptr @.str.66, ptr @.str.65, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4102, ptr @.str.67, ptr @.str.68, ptr @.str.67, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4103, ptr @.str.69, ptr null, ptr @.str.69, i32 1, ptr @fix_hkdf_mode }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4104, ptr @.str.70, ptr @.str.71, ptr @.str.70, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4105, ptr @.str.63, ptr @.str.64, ptr @.str.63, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4106, ptr @.str.72, ptr null, ptr @.str.73, i32 2, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4107, ptr @.str.74, ptr null, ptr @.str.74, i32 2, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4108, ptr @.str.75, ptr null, ptr @.str.75, i32 2, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4109, ptr @.str.76, ptr null, ptr @.str.76, i32 2, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 1540, i32 12, ptr null, ptr null, ptr @.str.77, i32 4, ptr @fix_cipher }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 4, i32 6, ptr @.str.65, ptr @.str.66, ptr @.str.78, i32 5, ptr null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 496, i32 1, ptr null, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 496, i32 13, ptr null, ptr null, ptr @.str.31, i32 4, ptr @fix_md }, %struct.translation_st { i32 2, i32 1034, i32 1034, i32 4, i32 -1, ptr null, ptr null, ptr @.str.20, i32 4, ptr @fix_group_ecx }, %struct.translation_st { i32 2, i32 1034, i32 1034, i32 2, i32 -1, ptr null, ptr null, ptr @.str.20, i32 4, ptr @fix_group_ecx }, %struct.translation_st { i32 2, i32 1035, i32 1035, i32 4, i32 -1, ptr null, ptr null, ptr @.str.20, i32 4, ptr @fix_group_ecx }, %struct.translation_st { i32 2, i32 1035, i32 1035, i32 2, i32 -1, ptr null, ptr null, ptr @.str.20, i32 4, ptr @fix_group_ecx }], align 16
@.str.8 = private unnamed_addr constant [7 x i8] c"distid\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"hexdistid\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"kdf-type\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"kdf-digest\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"kdf-outlen\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"kdf-ukm\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"cekalg\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"dh_paramgen_type\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"dh_paramgen_prime_len\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"pbits\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"dh_param\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"dh_rfc5114\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"dh_paramgen_generator\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"safeprime-generator\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"dh_paramgen_subprime_len\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"qbits\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"dh_pad\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"dsa_paramgen_bits\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"dsa_paramgen_q_bits\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"dsa_paramgen_md\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"ec_paramgen_curve\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"ecdh_cofactor_mode\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"ecdh-cofactor-mode\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"ecdh_kdf_md\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"rsa_padding_mode\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"pad-mode\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"rsa_mgf1_md\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"mgf1-digest\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"rsa_pss_saltlen\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"saltlen\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"rsa_oaep_md\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"rsa_oaep_label\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"oaep-label\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"rsa_pss_keygen_md\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"rsa_pss_keygen_mgf1_md\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"rsa_pss_keygen_saltlen\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"rsa_keygen_bits\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"rsa_keygen_pubexp\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"rsa_keygen_primes\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"primes\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"digestsize\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"hexsecret\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"hexseed\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"hexsalt\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"hexkey\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"hexinfo\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"hexpass\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"maxmem_bytes\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@fix_dh_kdf_type.kdf_type_map = internal constant [3 x %struct.kdf_type_map_st] [%struct.kdf_type_map_st { i32 1, ptr @.str.79 }, %struct.kdf_type_map_st { i32 2, ptr @.str.80 }, %struct.kdf_type_map_st zeroinitializer], align 16
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"X942KDF-ASN1\00", align 1
@__func__.fix_dh_paramgen_type = private unnamed_addr constant [21 x i8] c"fix_dh_paramgen_type\00", align 1
@__func__.fix_dh_nid5114 = private unnamed_addr constant [15 x i8] c"fix_dh_nid5114\00", align 1
@__func__.fix_dh_nid = private unnamed_addr constant [11 x i8] c"fix_dh_nid\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@__func__.fix_ec_param_enc = private unnamed_addr constant [17 x i8] c"fix_ec_param_enc\00", align 1
@fix_ec_kdf_type.kdf_type_map = internal constant [3 x %struct.kdf_type_map_st] [%struct.kdf_type_map_st { i32 1, ptr @.str.79 }, %struct.kdf_type_map_st { i32 2, ptr @.str.83 }, %struct.kdf_type_map_st zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [8 x i8] c"X963KDF\00", align 1
@fix_rsa_padding_mode.str_value_map = internal constant [7 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 1, ptr @.str.84 }, %struct.ossl_item_st { i32 3, ptr @.str.85 }, %struct.ossl_item_st { i32 4, ptr @.str.86 }, %struct.ossl_item_st { i32 4, ptr @.str.87 }, %struct.ossl_item_st { i32 5, ptr @.str.88 }, %struct.ossl_item_st { i32 6, ptr @.str.89 }, %struct.ossl_item_st { i32 7, ptr null }], align 16
@.str.84 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"oaep\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"oeap\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"x931\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"pss\00", align 1
@__func__.fix_rsa_padding_mode = private unnamed_addr constant [21 x i8] c"fix_rsa_padding_mode\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"[action:%d, state:%d] padding number %d\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"[action:%d, state:%d] padding name %s\00", align 1
@fix_rsa_pss_saltlen.str_value_map = internal constant [3 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 -1, ptr @.str.31 }, %struct.ossl_item_st { i32 -3, ptr @.str.92 }, %struct.ossl_item_st { i32 -2, ptr @.str.93 }], align 16
@.str.92 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fix_hkdf_mode.str_value_map = internal constant [3 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 0, ptr @.str.95 }, %struct.ossl_item_st { i32 1, ptr @.str.96 }, %struct.ossl_item_st { i32 2, ptr @.str.97 }], align 16
@.str.95 = private unnamed_addr constant [19 x i8] c"EXTRACT_AND_EXPAND\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"EXTRACT_ONLY\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"EXPAND_ONLY\00", align 1
@__func__.fix_group_ecx = private unnamed_addr constant [14 x i8] c"fix_group_ecx\00", align 1
@evp_pkey_translations = internal constant [39 x %struct.translation_st] [%struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.20, i32 4, ptr @get_payload_group_name }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.78, i32 2, ptr @get_payload_private_key }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.98, i32 0, ptr @get_payload_public_key }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.75, i32 2, ptr @get_dh_dsa_payload_p }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.99, i32 2, ptr @get_dh_dsa_payload_g }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.100, i32 2, ptr @get_dh_dsa_payload_q }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.73, i32 2, ptr @get_rsa_payload_n }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.53, i32 2, ptr @get_rsa_payload_e }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.101, i32 2, ptr @get_rsa_payload_d }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.102, i32 2, ptr @get_rsa_payload_f1 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.103, i32 2, ptr @get_rsa_payload_f2 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.104, i32 2, ptr @get_rsa_payload_f3 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.105, i32 2, ptr @get_rsa_payload_f4 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.106, i32 2, ptr @get_rsa_payload_f5 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.107, i32 2, ptr @get_rsa_payload_f6 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.108, i32 2, ptr @get_rsa_payload_f7 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.109, i32 2, ptr @get_rsa_payload_f8 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.110, i32 2, ptr @get_rsa_payload_f9 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.111, i32 2, ptr @get_rsa_payload_f10 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.112, i32 2, ptr @get_rsa_payload_e1 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.113, i32 2, ptr @get_rsa_payload_e2 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.114, i32 2, ptr @get_rsa_payload_e3 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.115, i32 2, ptr @get_rsa_payload_e4 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.116, i32 2, ptr @get_rsa_payload_e5 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.117, i32 2, ptr @get_rsa_payload_e6 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.118, i32 2, ptr @get_rsa_payload_e7 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.119, i32 2, ptr @get_rsa_payload_e8 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.120, i32 2, ptr @get_rsa_payload_e9 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.121, i32 2, ptr @get_rsa_payload_e10 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.122, i32 2, ptr @get_rsa_payload_c1 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.123, i32 2, ptr @get_rsa_payload_c2 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.124, i32 2, ptr @get_rsa_payload_c3 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.125, i32 2, ptr @get_rsa_payload_c4 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.126, i32 2, ptr @get_rsa_payload_c5 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.127, i32 2, ptr @get_rsa_payload_c6 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.128, i32 2, ptr @get_rsa_payload_c7 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.129, i32 2, ptr @get_rsa_payload_c8 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.130, i32 2, ptr @get_rsa_payload_c9 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, ptr null, ptr null, ptr @.str.131, i32 1, ptr @get_ec_decoded_from_explicit_params }], align 16
@.str.98 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"rsa-factor1\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"rsa-factor2\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"rsa-factor3\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"rsa-factor4\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"rsa-factor5\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"rsa-factor6\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"rsa-factor7\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"rsa-factor8\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"rsa-factor9\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"rsa-factor10\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"rsa-exponent1\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"rsa-exponent2\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"rsa-exponent3\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"rsa-exponent4\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"rsa-exponent5\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"rsa-exponent6\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"rsa-exponent7\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"rsa-exponent8\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"rsa-exponent9\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"rsa-exponent10\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"rsa-coefficient1\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"rsa-coefficient2\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"rsa-coefficient3\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"rsa-coefficient4\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"rsa-coefficient5\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"rsa-coefficient6\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"rsa-coefficient7\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"rsa-coefficient8\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"rsa-coefficient9\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"decoded-from-explicit\00", align 1
@__func__.get_payload_group_name = private unnamed_addr constant [23 x i8] c"get_payload_group_name\00", align 1
@__func__.get_payload_private_key = private unnamed_addr constant [24 x i8] c"get_payload_private_key\00", align 1
@__func__.get_payload_public_key = private unnamed_addr constant [23 x i8] c"get_payload_public_key\00", align 1
@__func__.get_dh_dsa_payload_p = private unnamed_addr constant [21 x i8] c"get_dh_dsa_payload_p\00", align 1
@__func__.get_ec_decoded_from_explicit_params = private unnamed_addr constant [36 x i8] c"get_ec_decoded_from_explicit_params\00", align 1

; Function Attrs: nounwind uwtable
define i32 @evp_pkey_ctx_ctrl_to_param(ptr noundef %pctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, ptr noundef %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %pctx.addr = alloca ptr, align 8
  %keytype.addr = alloca i32, align 4
  %optype.addr = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca ptr, align 8
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %translation = alloca ptr, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %ret = alloca i32, align 4
  %fixup = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pctx, ptr %pctx.addr, align 8, !tbaa !4
  store i32 %keytype, ptr %keytype.addr, align 4, !tbaa !8
  store i32 %optype, ptr %optype.addr, align 4, !tbaa !8
  store i32 %cmd, ptr %cmd.addr, align 4, !tbaa !8
  store i32 %p1, ptr %p1.addr, align 4, !tbaa !8
  store ptr %p2, ptr %p2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 144, ptr %ctx) #8
  call void @llvm.memset.p0.i64(ptr align 8 %ctx, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr %tmpl) #8
  call void @llvm.memset.p0.i64(ptr align 8 %tmpl, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %translation) #8
  store ptr null, ptr %translation, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 80, ptr %params) #8
  call void @llvm.memset.p0.i64(ptr align 16 %params, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixup) #8
  store ptr @default_fixup_args, ptr %fixup, align 8, !tbaa !4
  %0 = load i32, ptr %keytype.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %1, i32 0, i32 11
  %2 = load i32, ptr %legacy_keytype, align 4, !tbaa !10
  store i32 %2, ptr %keytype.addr, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %cmd.addr, align 4, !tbaa !8
  %ctrl_num = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 4
  store i32 %3, ptr %ctrl_num, align 8, !tbaa !14
  %4 = load i32, ptr %keytype.addr, align 4, !tbaa !8
  %keytype2 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 2
  store i32 %4, ptr %keytype2, align 8, !tbaa !16
  %keytype1 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 1
  store i32 %4, ptr %keytype1, align 4, !tbaa !17
  %5 = load i32, ptr %optype.addr, align 4, !tbaa !8
  %optype1 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 3
  store i32 %5, ptr %optype1, align 4, !tbaa !18
  %call = call ptr @lookup_evp_pkey_ctx_translation(ptr noundef %tmpl)
  store ptr %call, ptr %translation, align 8, !tbaa !4
  %6 = load ptr, ptr %translation, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 2654, ptr noundef @__func__.evp_pkey_ctx_ctrl_to_param)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pmeth, align 8, !tbaa !19
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end4
  %9 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %pmeth6 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pmeth6, align 8, !tbaa !19
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %pkey_id, align 8, !tbaa !20
  %12 = load ptr, ptr %translation, align 8, !tbaa !4
  %keytype17 = getelementptr inbounds %struct.translation_st, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %keytype17, align 4, !tbaa !17
  %cmp8 = icmp ne i32 %11, %13
  br i1 %cmp8, label %land.lhs.true9, label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  %14 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %pmeth10 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %pmeth10, align 8, !tbaa !19
  %pkey_id11 = getelementptr inbounds %struct.evp_pkey_method_st, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %pkey_id11, align 8, !tbaa !20
  %17 = load ptr, ptr %translation, align 8, !tbaa !4
  %keytype212 = getelementptr inbounds %struct.translation_st, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %keytype212, align 8, !tbaa !16
  %cmp13 = icmp ne i32 %16, %18
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true9
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true9, %land.lhs.true, %if.end4
  %19 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args = getelementptr inbounds %struct.translation_st, ptr %19, i32 0, i32 9
  %20 = load ptr, ptr %fixup_args, align 8, !tbaa !22
  %cmp16 = icmp ne ptr %20, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %21 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args18 = getelementptr inbounds %struct.translation_st, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %fixup_args18, align 8, !tbaa !22
  store ptr %22, ptr %fixup, align 8, !tbaa !4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %23 = load ptr, ptr %translation, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_st, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %action_type, align 8, !tbaa !23
  %action_type20 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  store i32 %24, ptr %action_type20, align 8, !tbaa !24
  %25 = load i32, ptr %cmd.addr, align 4, !tbaa !8
  %ctrl_cmd = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 2
  store i32 %25, ptr %ctrl_cmd, align 4, !tbaa !26
  %26 = load i32, ptr %p1.addr, align 4, !tbaa !8
  %p121 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 5
  store i32 %26, ptr %p121, align 4, !tbaa !27
  %27 = load ptr, ptr %p2.addr, align 8, !tbaa !4
  %p222 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 6
  store ptr %27, ptr %p222, align 8, !tbaa !28
  %28 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %pctx23 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 0
  store ptr %28, ptr %pctx23, align 8, !tbaa !29
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], ptr %params, i64 0, i64 0
  %params24 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 8
  store ptr %arraydecay, ptr %params24, align 8, !tbaa !30
  %29 = load ptr, ptr %fixup, align 8, !tbaa !4
  %30 = load ptr, ptr %translation, align 8, !tbaa !4
  %call25 = call i32 %29(i32 noundef 1, ptr noundef %30, ptr noundef %ctx)
  store i32 %call25, ptr %ret, align 4, !tbaa !8
  %31 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp26 = icmp sgt i32 %31, 0
  br i1 %cmp26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end19
  %action_type28 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  %32 = load i32, ptr %action_type28, align 8, !tbaa !24
  switch i32 %32, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb31
  ]

sw.default:                                       ; preds = %if.then27
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then27
  %33 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %params29 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 8
  %34 = load ptr, ptr %params29, align 8, !tbaa !30
  %call30 = call i32 @evp_pkey_ctx_get_params_strict(ptr noundef %33, ptr noundef %34)
  store i32 %call30, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then27
  %35 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %params32 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 8
  %36 = load ptr, ptr %params32, align 8, !tbaa !30
  %call33 = call i32 @evp_pkey_ctx_set_params_strict(ptr noundef %35, ptr noundef %36)
  store i32 %call33, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb, %sw.default
  br label %if.end34

if.end34:                                         ; preds = %sw.epilog, %if.end19
  %37 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp35 = icmp sgt i32 %37, 0
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end34
  %38 = load i32, ptr %ret, align 4, !tbaa !8
  %p137 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 5
  store i32 %38, ptr %p137, align 4, !tbaa !27
  %39 = load ptr, ptr %fixup, align 8, !tbaa !4
  %40 = load ptr, ptr %translation, align 8, !tbaa !4
  %call38 = call i32 %39(i32 noundef 2, ptr noundef %40, ptr noundef %ctx)
  %p139 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 5
  %41 = load i32, ptr %p139, align 4, !tbaa !27
  store i32 %41, ptr %ret, align 4, !tbaa !8
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end34
  %42 = load ptr, ptr %translation, align 8, !tbaa !4
  %call41 = call i32 @cleanup_translation_ctx(i32 noundef 2, ptr noundef %42, ptr noundef %ctx)
  %43 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %43, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then14, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixup) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr %params) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %translation) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr %ctx) #8
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal i32 @default_fixup_args(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp112 = alloca %struct.ossl_param_st, align 8
  %tmp120 = alloca %struct.ossl_param_st, align 8
  %tmp126 = alloca %struct.ossl_param_st, align 8
  %tmp133 = alloca %struct.ossl_param_st, align 8
  %tmp140 = alloca %struct.ossl_param_st, align 8
  %tmp147 = alloca %struct.ossl_param_st, align 8
  %tmp_ctrl_str = alloca ptr, align 8
  %orig_ctrl_str = alloca ptr, align 8
  %orig_value = alloca ptr, align 8
  %settable = alloca ptr, align 8
  %exists = alloca i32, align 4
  %param_data_type276 = alloca i32, align 4
  %size = alloca i64, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb152
    i32 4, label %sw.bb164
    i32 5, label %sw.epilog346
    i32 0, label %sw.bb213
    i32 8, label %sw.bb213
    i32 7, label %sw.bb215
  ]

sw.default:                                       ; preds = %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 396, ptr noundef @__func__.default_fixup_args)
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %action_type, align 8, !tbaa !24
  %7 = load i32, ptr %state.addr, align 4, !tbaa !31
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786689, ptr noundef @.str.1, i32 noundef %6, i32 noundef %7)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

sw.bb:                                            ; preds = %if.end
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type1 = getelementptr inbounds %struct.translation_ctx_st, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %action_type1, align 8, !tbaa !24
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %sw.bb
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 413, ptr noundef @__func__.default_fixup_args)
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type4 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %action_type4, align 8, !tbaa !24
  %12 = load i32, ptr %state.addr, align 4, !tbaa !31
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, ptr noundef @.str.1, i32 noundef %11, i32 noundef %12)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end5:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %optype = getelementptr inbounds %struct.translation_st, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %optype, align 4, !tbaa !18
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end84

if.then7:                                         ; preds = %if.end5
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx = getelementptr inbounds %struct.translation_ctx_st, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pctx, align 8, !tbaa !29
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %operation, align 8, !tbaa !32
  %cmp8 = icmp eq i32 %17, 16
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then7
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx9 = getelementptr inbounds %struct.translation_ctx_st, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pctx9, align 8, !tbaa !29
  %operation10 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %operation10, align 8, !tbaa !32
  %cmp11 = icmp eq i32 %20, 128
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx13 = getelementptr inbounds %struct.translation_ctx_st, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pctx13, align 8, !tbaa !29
  %operation14 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %operation14, align 8, !tbaa !32
  %cmp15 = icmp eq i32 %23, 32
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx17 = getelementptr inbounds %struct.translation_ctx_st, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pctx17, align 8, !tbaa !29
  %operation18 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %operation18, align 8, !tbaa !32
  %cmp19 = icmp eq i32 %26, 256
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx21 = getelementptr inbounds %struct.translation_ctx_st, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pctx21, align 8, !tbaa !29
  %operation22 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %operation22, align 8, !tbaa !32
  %cmp23 = icmp eq i32 %29, 64
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false26

land.lhs.true:                                    ; preds = %lor.lhs.false20, %lor.lhs.false16, %lor.lhs.false12, %lor.lhs.false, %if.then7
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx24 = getelementptr inbounds %struct.translation_ctx_st, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %pctx24, align 8, !tbaa !29
  %op = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %31, i32 0, i32 5
  %algctx = getelementptr inbounds %struct.anon.1, ptr %op, i32 0, i32 1
  %32 = load ptr, ptr %algctx, align 8, !tbaa !31
  %cmp25 = icmp eq ptr %32, null
  br i1 %cmp25, label %if.then82, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %land.lhs.true, %lor.lhs.false20
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx27 = getelementptr inbounds %struct.translation_ctx_st, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pctx27, align 8, !tbaa !29
  %operation28 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %operation28, align 8, !tbaa !32
  %cmp29 = icmp eq i32 %35, 2048
  br i1 %cmp29, label %land.lhs.true30, label %lor.lhs.false35

land.lhs.true30:                                  ; preds = %lor.lhs.false26
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx31 = getelementptr inbounds %struct.translation_ctx_st, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pctx31, align 8, !tbaa !29
  %op32 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %37, i32 0, i32 5
  %algctx33 = getelementptr inbounds %struct.anon.0, ptr %op32, i32 0, i32 1
  %38 = load ptr, ptr %algctx33, align 8, !tbaa !31
  %cmp34 = icmp eq ptr %38, null
  br i1 %cmp34, label %if.then82, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %land.lhs.true30, %lor.lhs.false26
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx36 = getelementptr inbounds %struct.translation_ctx_st, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %pctx36, align 8, !tbaa !29
  %operation37 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %operation37, align 8, !tbaa !32
  %cmp38 = icmp eq i32 %41, 512
  br i1 %cmp38, label %land.lhs.true43, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx40 = getelementptr inbounds %struct.translation_ctx_st, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %pctx40, align 8, !tbaa !29
  %operation41 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %operation41, align 8, !tbaa !32
  %cmp42 = icmp eq i32 %44, 1024
  br i1 %cmp42, label %land.lhs.true43, label %lor.lhs.false48

land.lhs.true43:                                  ; preds = %lor.lhs.false39, %lor.lhs.false35
  %45 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx44 = getelementptr inbounds %struct.translation_ctx_st, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pctx44, align 8, !tbaa !29
  %op45 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %46, i32 0, i32 5
  %algctx46 = getelementptr inbounds %struct.anon.2, ptr %op45, i32 0, i32 1
  %47 = load ptr, ptr %algctx46, align 8, !tbaa !31
  %cmp47 = icmp eq ptr %47, null
  br i1 %cmp47, label %if.then82, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %land.lhs.true43, %lor.lhs.false39
  %48 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx49 = getelementptr inbounds %struct.translation_ctx_st, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %pctx49, align 8, !tbaa !29
  %operation50 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %operation50, align 8, !tbaa !32
  %cmp51 = icmp eq i32 %50, 4096
  br i1 %cmp51, label %land.lhs.true56, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %51 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx53 = getelementptr inbounds %struct.translation_ctx_st, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %pctx53, align 8, !tbaa !29
  %operation54 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %operation54, align 8, !tbaa !32
  %cmp55 = icmp eq i32 %53, 8192
  br i1 %cmp55, label %land.lhs.true56, label %lor.lhs.false61

land.lhs.true56:                                  ; preds = %lor.lhs.false52, %lor.lhs.false48
  %54 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx57 = getelementptr inbounds %struct.translation_ctx_st, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %pctx57, align 8, !tbaa !29
  %op58 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %55, i32 0, i32 5
  %algctx59 = getelementptr inbounds %struct.anon.3, ptr %op58, i32 0, i32 1
  %56 = load ptr, ptr %algctx59, align 8, !tbaa !31
  %cmp60 = icmp eq ptr %56, null
  br i1 %cmp60, label %if.then82, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.lhs.true56, %lor.lhs.false52
  %57 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx62 = getelementptr inbounds %struct.translation_ctx_st, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %pctx62, align 8, !tbaa !29
  %operation63 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %operation63, align 8, !tbaa !32
  %cmp64 = icmp eq i32 %59, 2
  br i1 %cmp64, label %land.lhs.true69, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %60 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx66 = getelementptr inbounds %struct.translation_ctx_st, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %pctx66, align 8, !tbaa !29
  %operation67 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %operation67, align 8, !tbaa !32
  %cmp68 = icmp eq i32 %62, 4
  br i1 %cmp68, label %land.lhs.true69, label %lor.lhs.false73

land.lhs.true69:                                  ; preds = %lor.lhs.false65, %lor.lhs.false61
  %63 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx70 = getelementptr inbounds %struct.translation_ctx_st, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %pctx70, align 8, !tbaa !29
  %op71 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %64, i32 0, i32 5
  %genctx = getelementptr inbounds %struct.anon, ptr %op71, i32 0, i32 0
  %65 = load ptr, ptr %genctx, align 8, !tbaa !31
  %cmp72 = icmp eq ptr %65, null
  br i1 %cmp72, label %if.then82, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %land.lhs.true69, %lor.lhs.false65
  %66 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx74 = getelementptr inbounds %struct.translation_ctx_st, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %pctx74, align 8, !tbaa !29
  %operation75 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %67, i32 0, i32 0
  %68 = load i32, ptr %operation75, align 8, !tbaa !32
  %cmp76 = icmp eq i32 %68, 8
  br i1 %cmp76, label %land.lhs.true77, label %if.end83

land.lhs.true77:                                  ; preds = %lor.lhs.false73
  %69 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx78 = getelementptr inbounds %struct.translation_ctx_st, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %pctx78, align 8, !tbaa !29
  %op79 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %70, i32 0, i32 5
  %genctx80 = getelementptr inbounds %struct.anon, ptr %op79, i32 0, i32 0
  %71 = load ptr, ptr %genctx80, align 8, !tbaa !31
  %cmp81 = icmp eq ptr %71, null
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %land.lhs.true77, %land.lhs.true69, %land.lhs.true56, %land.lhs.true43, %land.lhs.true30, %land.lhs.true
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 435, ptr noundef @__func__.default_fixup_args)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end83:                                         ; preds = %land.lhs.true77, %lor.lhs.false73
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end5
  %72 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type = getelementptr inbounds %struct.translation_st, ptr %72, i32 0, i32 8
  %73 = load i32, ptr %param_data_type, align 8, !tbaa !33
  switch i32 %73, label %sw.epilog [
    i32 1, label %sw.bb85
    i32 2, label %sw.bb86
    i32 4, label %sw.bb124
    i32 6, label %sw.bb131
    i32 5, label %sw.bb138
    i32 7, label %sw.bb145
  ]

sw.bb85:                                          ; preds = %if.end84
  %74 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.translation_ctx_st, ptr %74, i32 0, i32 8
  %75 = load ptr, ptr %params, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp) #8
  %76 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key = getelementptr inbounds %struct.translation_st, ptr %76, i32 0, i32 7
  %77 = load ptr, ptr %param_key, align 8, !tbaa !34
  %78 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %78, i32 0, i32 5
  call void @OSSL_PARAM_construct_int(ptr sret(%struct.ossl_param_st) align 8 %tmp, ptr noundef %77, ptr noundef %p1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %75, ptr align 8 %tmp, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp) #8
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end84
  %79 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %79, i32 0, i32 6
  %80 = load ptr, ptr %p2, align 8, !tbaa !28
  %cmp87 = icmp ne ptr %80, null
  br i1 %cmp87, label %if.then88, label %if.else118

if.then88:                                        ; preds = %sw.bb86
  %81 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type89 = getelementptr inbounds %struct.translation_ctx_st, ptr %81, i32 0, i32 1
  %82 = load i32, ptr %action_type89, align 8, !tbaa !24
  %cmp90 = icmp eq i32 %82, 2
  br i1 %cmp90, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.then88
  %83 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p292 = getelementptr inbounds %struct.translation_ctx_st, ptr %83, i32 0, i32 6
  %84 = load ptr, ptr %p292, align 8, !tbaa !28
  %call93 = call i32 @BN_num_bits(ptr noundef %84)
  %add = add nsw i32 %call93, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %85 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buflen = getelementptr inbounds %struct.translation_ctx_st, ptr %85, i32 0, i32 13
  store i64 %conv, ptr %buflen, align 8, !tbaa !37
  %86 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buflen94 = getelementptr inbounds %struct.translation_ctx_st, ptr %86, i32 0, i32 13
  %87 = load i64, ptr %buflen94, align 8, !tbaa !37
  %call95 = call noalias ptr @CRYPTO_malloc(i64 noundef %87, ptr noundef @.str, i32 noundef 462)
  %88 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %88, i32 0, i32 11
  store ptr %call95, ptr %allocated_buf, align 8, !tbaa !38
  %cmp96 = icmp eq ptr %call95, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then91
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 463, ptr noundef @__func__.default_fixup_args)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end99:                                         ; preds = %if.then91
  %89 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2100 = getelementptr inbounds %struct.translation_ctx_st, ptr %89, i32 0, i32 6
  %90 = load ptr, ptr %p2100, align 8, !tbaa !28
  %91 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf101 = getelementptr inbounds %struct.translation_ctx_st, ptr %91, i32 0, i32 11
  %92 = load ptr, ptr %allocated_buf101, align 8, !tbaa !38
  %93 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buflen102 = getelementptr inbounds %struct.translation_ctx_st, ptr %93, i32 0, i32 13
  %94 = load i64, ptr %buflen102, align 8, !tbaa !37
  %conv103 = trunc i64 %94 to i32
  %call104 = call i32 @BN_bn2nativepad(ptr noundef %90, ptr noundef %92, i32 noundef %conv103)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.end99
  %95 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf108 = getelementptr inbounds %struct.translation_ctx_st, ptr %95, i32 0, i32 11
  %96 = load ptr, ptr %allocated_buf108, align 8, !tbaa !38
  call void @CRYPTO_free(ptr noundef %96, ptr noundef @.str, i32 noundef 468)
  %97 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf109 = getelementptr inbounds %struct.translation_ctx_st, ptr %97, i32 0, i32 11
  store ptr null, ptr %allocated_buf109, align 8, !tbaa !38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end110:                                        ; preds = %if.end99
  %98 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params111 = getelementptr inbounds %struct.translation_ctx_st, ptr %98, i32 0, i32 8
  %99 = load ptr, ptr %params111, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp112) #8
  %100 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key113 = getelementptr inbounds %struct.translation_st, ptr %100, i32 0, i32 7
  %101 = load ptr, ptr %param_key113, align 8, !tbaa !34
  %102 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf114 = getelementptr inbounds %struct.translation_ctx_st, ptr %102, i32 0, i32 11
  %103 = load ptr, ptr %allocated_buf114, align 8, !tbaa !38
  %104 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buflen115 = getelementptr inbounds %struct.translation_ctx_st, ptr %104, i32 0, i32 13
  %105 = load i64, ptr %buflen115, align 8, !tbaa !37
  call void @OSSL_PARAM_construct_BN(ptr sret(%struct.ossl_param_st) align 8 %tmp112, ptr noundef %101, ptr noundef %103, i64 noundef %105)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %99, ptr align 8 %tmp112, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp112) #8
  br label %if.end117

if.else:                                          ; preds = %if.then88
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 481, ptr noundef @__func__.default_fixup_args)
  %106 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type116 = getelementptr inbounds %struct.translation_ctx_st, ptr %106, i32 0, i32 1
  %107 = load i32, ptr %action_type116, align 8, !tbaa !24
  %108 = load i32, ptr %state.addr, align 4, !tbaa !31
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, ptr noundef @.str.2, i32 noundef %107, i32 noundef %108)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end117:                                        ; preds = %if.end110
  br label %if.end123

if.else118:                                       ; preds = %sw.bb86
  %109 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params119 = getelementptr inbounds %struct.translation_ctx_st, ptr %109, i32 0, i32 8
  %110 = load ptr, ptr %params119, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp120) #8
  %111 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key121 = getelementptr inbounds %struct.translation_st, ptr %111, i32 0, i32 7
  %112 = load ptr, ptr %param_key121, align 8, !tbaa !34
  %113 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1122 = getelementptr inbounds %struct.translation_ctx_st, ptr %113, i32 0, i32 5
  call void @OSSL_PARAM_construct_uint(ptr sret(%struct.ossl_param_st) align 8 %tmp120, ptr noundef %112, ptr noundef %p1122)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %110, ptr align 8 %tmp120, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp120) #8
  br label %if.end123

if.end123:                                        ; preds = %if.else118, %if.end117
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end84
  %114 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params125 = getelementptr inbounds %struct.translation_ctx_st, ptr %114, i32 0, i32 8
  %115 = load ptr, ptr %params125, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp126) #8
  %116 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key127 = getelementptr inbounds %struct.translation_st, ptr %116, i32 0, i32 7
  %117 = load ptr, ptr %param_key127, align 8, !tbaa !34
  %118 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2128 = getelementptr inbounds %struct.translation_ctx_st, ptr %118, i32 0, i32 6
  %119 = load ptr, ptr %p2128, align 8, !tbaa !28
  %120 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1129 = getelementptr inbounds %struct.translation_ctx_st, ptr %120, i32 0, i32 5
  %121 = load i32, ptr %p1129, align 4, !tbaa !27
  %conv130 = sext i32 %121 to i64
  call void @OSSL_PARAM_construct_utf8_string(ptr sret(%struct.ossl_param_st) align 8 %tmp126, ptr noundef %117, ptr noundef %119, i64 noundef %conv130)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %115, ptr align 8 %tmp126, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp126) #8
  br label %sw.epilog

sw.bb131:                                         ; preds = %if.end84
  %122 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params132 = getelementptr inbounds %struct.translation_ctx_st, ptr %122, i32 0, i32 8
  %123 = load ptr, ptr %params132, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp133) #8
  %124 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key134 = getelementptr inbounds %struct.translation_st, ptr %124, i32 0, i32 7
  %125 = load ptr, ptr %param_key134, align 8, !tbaa !34
  %126 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2135 = getelementptr inbounds %struct.translation_ctx_st, ptr %126, i32 0, i32 6
  %127 = load ptr, ptr %p2135, align 8, !tbaa !28
  %128 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1136 = getelementptr inbounds %struct.translation_ctx_st, ptr %128, i32 0, i32 5
  %129 = load i32, ptr %p1136, align 4, !tbaa !27
  %conv137 = sext i32 %129 to i64
  call void @OSSL_PARAM_construct_utf8_ptr(ptr sret(%struct.ossl_param_st) align 8 %tmp133, ptr noundef %125, ptr noundef %127, i64 noundef %conv137)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %123, ptr align 8 %tmp133, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp133) #8
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end84
  %130 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params139 = getelementptr inbounds %struct.translation_ctx_st, ptr %130, i32 0, i32 8
  %131 = load ptr, ptr %params139, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp140) #8
  %132 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key141 = getelementptr inbounds %struct.translation_st, ptr %132, i32 0, i32 7
  %133 = load ptr, ptr %param_key141, align 8, !tbaa !34
  %134 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2142 = getelementptr inbounds %struct.translation_ctx_st, ptr %134, i32 0, i32 6
  %135 = load ptr, ptr %p2142, align 8, !tbaa !28
  %136 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1143 = getelementptr inbounds %struct.translation_ctx_st, ptr %136, i32 0, i32 5
  %137 = load i32, ptr %p1143, align 4, !tbaa !27
  %conv144 = sext i32 %137 to i64
  call void @OSSL_PARAM_construct_octet_string(ptr sret(%struct.ossl_param_st) align 8 %tmp140, ptr noundef %133, ptr noundef %135, i64 noundef %conv144)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %131, ptr align 8 %tmp140, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp140) #8
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end84
  %138 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params146 = getelementptr inbounds %struct.translation_ctx_st, ptr %138, i32 0, i32 8
  %139 = load ptr, ptr %params146, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp147) #8
  %140 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key148 = getelementptr inbounds %struct.translation_st, ptr %140, i32 0, i32 7
  %141 = load ptr, ptr %param_key148, align 8, !tbaa !34
  %142 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2149 = getelementptr inbounds %struct.translation_ctx_st, ptr %142, i32 0, i32 6
  %143 = load ptr, ptr %p2149, align 8, !tbaa !28
  %144 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1150 = getelementptr inbounds %struct.translation_ctx_st, ptr %144, i32 0, i32 5
  %145 = load i32, ptr %p1150, align 4, !tbaa !27
  %conv151 = sext i32 %145 to i64
  call void @OSSL_PARAM_construct_octet_ptr(ptr sret(%struct.ossl_param_st) align 8 %tmp147, ptr noundef %141, ptr noundef %143, i64 noundef %conv151)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %139, ptr align 8 %tmp147, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp147) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end84, %sw.bb145, %sw.bb138, %sw.bb131, %sw.bb124, %if.end123, %sw.bb85
  br label %sw.epilog346

sw.bb152:                                         ; preds = %if.end
  %146 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type153 = getelementptr inbounds %struct.translation_ctx_st, ptr %146, i32 0, i32 1
  %147 = load i32, ptr %action_type153, align 8, !tbaa !24
  %cmp154 = icmp eq i32 %147, 1
  br i1 %cmp154, label %if.then156, label %if.end163

if.then156:                                       ; preds = %sw.bb152
  %148 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type157 = getelementptr inbounds %struct.translation_st, ptr %148, i32 0, i32 8
  %149 = load i32, ptr %param_data_type157, align 8, !tbaa !33
  switch i32 %149, label %sw.epilog162 [
    i32 4, label %sw.bb158
    i32 6, label %sw.bb158
    i32 5, label %sw.bb158
    i32 7, label %sw.bb158
  ]

sw.bb158:                                         ; preds = %if.then156, %if.then156, %if.then156, %if.then156
  %150 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params159 = getelementptr inbounds %struct.translation_ctx_st, ptr %150, i32 0, i32 8
  %151 = load ptr, ptr %params159, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds %struct.ossl_param_st, ptr %151, i64 0
  %return_size = getelementptr inbounds %struct.ossl_param_st, ptr %arrayidx, i32 0, i32 4
  %152 = load i64, ptr %return_size, align 8, !tbaa !39
  %conv160 = trunc i64 %152 to i32
  %153 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1161 = getelementptr inbounds %struct.translation_ctx_st, ptr %153, i32 0, i32 5
  store i32 %conv160, ptr %p1161, align 4, !tbaa !27
  br label %sw.epilog162

sw.epilog162:                                     ; preds = %if.then156, %sw.bb158
  br label %if.end163

if.end163:                                        ; preds = %sw.epilog162, %sw.bb152
  br label %sw.epilog346

sw.bb164:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_ctrl_str) #8
  %154 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %ctrl_str = getelementptr inbounds %struct.translation_ctx_st, ptr %154, i32 0, i32 3
  %155 = load ptr, ptr %ctrl_str, align 8, !tbaa !41
  store ptr %155, ptr %tmp_ctrl_str, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_ctrl_str) #8
  %156 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %ctrl_str165 = getelementptr inbounds %struct.translation_ctx_st, ptr %156, i32 0, i32 3
  %157 = load ptr, ptr %ctrl_str165, align 8, !tbaa !41
  store ptr %157, ptr %orig_ctrl_str, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %orig_value) #8
  %158 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2166 = getelementptr inbounds %struct.translation_ctx_st, ptr %158, i32 0, i32 6
  %159 = load ptr, ptr %p2166, align 8, !tbaa !28
  store ptr %159, ptr %orig_value, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %settable) #8
  store ptr null, ptr %settable, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %exists) #8
  store i32 0, ptr %exists, align 4, !tbaa !8
  %160 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type167 = getelementptr inbounds %struct.translation_ctx_st, ptr %160, i32 0, i32 1
  %161 = load i32, ptr %action_type167, align 8, !tbaa !24
  %cmp168 = icmp ne i32 %161, 2
  br i1 %cmp168, label %if.then170, label %if.end172

if.then170:                                       ; preds = %sw.bb164
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 550, ptr noundef @__func__.default_fixup_args)
  %162 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type171 = getelementptr inbounds %struct.translation_ctx_st, ptr %162, i32 0, i32 1
  %163 = load i32, ptr %action_type171, align 8, !tbaa !24
  %164 = load i32, ptr %state.addr, align 4, !tbaa !31
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef @.str.3, i32 noundef %163, i32 noundef %164)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end172:                                        ; preds = %sw.bb164
  %165 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %cmp173 = icmp ne ptr %165, null
  br i1 %cmp173, label %if.then175, label %if.end190

if.then175:                                       ; preds = %if.end172
  %166 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key176 = getelementptr inbounds %struct.translation_st, ptr %166, i32 0, i32 7
  %167 = load ptr, ptr %param_key176, align 8, !tbaa !34
  %168 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %ctrl_str177 = getelementptr inbounds %struct.translation_ctx_st, ptr %168, i32 0, i32 3
  store ptr %167, ptr %ctrl_str177, align 8, !tbaa !41
  store ptr %167, ptr %tmp_ctrl_str, align 8, !tbaa !4
  %169 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %ishex = getelementptr inbounds %struct.translation_ctx_st, ptr %169, i32 0, i32 4
  %170 = load i32, ptr %ishex, align 8, !tbaa !42
  %tobool = icmp ne i32 %170, 0
  br i1 %tobool, label %if.then178, label %if.end189

if.then178:                                       ; preds = %if.then175
  %171 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %171, i32 0, i32 10
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name_buf, i64 0, i64 0
  %call179 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef @.str.4) #8
  %172 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf180 = getelementptr inbounds %struct.translation_ctx_st, ptr %172, i32 0, i32 10
  %arraydecay181 = getelementptr inbounds [50 x i8], ptr %name_buf180, i64 0, i64 0
  %173 = load ptr, ptr %tmp_ctrl_str, align 8, !tbaa !4
  %call182 = call i64 @OPENSSL_strlcat(ptr noundef %arraydecay181, ptr noundef %173, i64 noundef 50)
  %cmp183 = icmp ule i64 %call182, 3
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %if.then178
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 567, ptr noundef @__func__.default_fixup_args)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end186:                                        ; preds = %if.then178
  %174 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf187 = getelementptr inbounds %struct.translation_ctx_st, ptr %174, i32 0, i32 10
  %arraydecay188 = getelementptr inbounds [50 x i8], ptr %name_buf187, i64 0, i64 0
  store ptr %arraydecay188, ptr %tmp_ctrl_str, align 8, !tbaa !4
  br label %if.end189

if.end189:                                        ; preds = %if.end186, %if.then175
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end172
  %175 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx191 = getelementptr inbounds %struct.translation_ctx_st, ptr %175, i32 0, i32 0
  %176 = load ptr, ptr %pctx191, align 8, !tbaa !29
  %call192 = call ptr @EVP_PKEY_CTX_settable_params(ptr noundef %176)
  store ptr %call192, ptr %settable, align 8, !tbaa !4
  %177 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params193 = getelementptr inbounds %struct.translation_ctx_st, ptr %177, i32 0, i32 8
  %178 = load ptr, ptr %params193, align 8, !tbaa !30
  %179 = load ptr, ptr %settable, align 8, !tbaa !4
  %180 = load ptr, ptr %tmp_ctrl_str, align 8, !tbaa !4
  %181 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2194 = getelementptr inbounds %struct.translation_ctx_st, ptr %181, i32 0, i32 6
  %182 = load ptr, ptr %p2194, align 8, !tbaa !28
  %183 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2195 = getelementptr inbounds %struct.translation_ctx_st, ptr %183, i32 0, i32 6
  %184 = load ptr, ptr %p2195, align 8, !tbaa !28
  %call196 = call i64 @strlen(ptr noundef %184) #9
  %call197 = call i32 @OSSL_PARAM_allocate_from_text(ptr noundef %178, ptr noundef %179, ptr noundef %180, ptr noundef %182, i64 noundef %call196, ptr noundef %exists)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.end204, label %if.then199

if.then199:                                       ; preds = %if.end190
  %185 = load i32, ptr %exists, align 4, !tbaa !8
  %tobool200 = icmp ne i32 %185, 0
  br i1 %tobool200, label %if.end203, label %if.then201

if.then201:                                       ; preds = %if.then199
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 580, ptr noundef @__func__.default_fixup_args)
  %186 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type202 = getelementptr inbounds %struct.translation_ctx_st, ptr %186, i32 0, i32 1
  %187 = load i32, ptr %action_type202, align 8, !tbaa !24
  %188 = load i32, ptr %state.addr, align 4, !tbaa !31
  %189 = load ptr, ptr %orig_ctrl_str, align 8, !tbaa !4
  %190 = load ptr, ptr %orig_value, align 8, !tbaa !4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef @.str.5, i32 noundef %187, i32 noundef %188, ptr noundef %189, ptr noundef %190)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end203:                                        ; preds = %if.then199
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end204:                                        ; preds = %if.end190
  %191 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params205 = getelementptr inbounds %struct.translation_ctx_st, ptr %191, i32 0, i32 8
  %192 = load ptr, ptr %params205, align 8, !tbaa !30
  %data = getelementptr inbounds %struct.ossl_param_st, ptr %192, i32 0, i32 2
  %193 = load ptr, ptr %data, align 8, !tbaa !43
  %194 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf206 = getelementptr inbounds %struct.translation_ctx_st, ptr %194, i32 0, i32 11
  store ptr %193, ptr %allocated_buf206, align 8, !tbaa !38
  %195 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params207 = getelementptr inbounds %struct.translation_ctx_st, ptr %195, i32 0, i32 8
  %196 = load ptr, ptr %params207, align 8, !tbaa !30
  %data_size = getelementptr inbounds %struct.ossl_param_st, ptr %196, i32 0, i32 3
  %197 = load i64, ptr %data_size, align 8, !tbaa !44
  %198 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %buflen208 = getelementptr inbounds %struct.translation_ctx_st, ptr %198, i32 0, i32 13
  store i64 %197, ptr %buflen208, align 8, !tbaa !37
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end204, %if.end203, %if.then201, %if.then185, %if.then170
  call void @llvm.lifetime.end.p0(i64 4, ptr %exists) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %settable) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %orig_ctrl_str) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_ctrl_str) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup347 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog346

sw.bb213:                                         ; preds = %if.end, %if.end
  %199 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1214 = getelementptr inbounds %struct.translation_ctx_st, ptr %199, i32 0, i32 5
  %200 = load i32, ptr %p1214, align 4, !tbaa !27
  store i32 %200, ptr %ret, align 4, !tbaa !8
  br label %sw.bb215

sw.bb215:                                         ; preds = %if.end, %sw.bb213
  %201 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp216 = icmp eq i32 %201, 7
  br i1 %cmp216, label %land.lhs.true218, label %if.else265

land.lhs.true218:                                 ; preds = %sw.bb215
  %202 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type219 = getelementptr inbounds %struct.translation_ctx_st, ptr %202, i32 0, i32 1
  %203 = load i32, ptr %action_type219, align 8, !tbaa !24
  %cmp220 = icmp eq i32 %203, 2
  br i1 %cmp220, label %if.then222, label %if.else265

if.then222:                                       ; preds = %land.lhs.true218
  %204 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type223 = getelementptr inbounds %struct.translation_st, ptr %204, i32 0, i32 8
  %205 = load i32, ptr %param_data_type223, align 8, !tbaa !33
  switch i32 %205, label %sw.default262 [
    i32 1, label %sw.bb224
    i32 2, label %sw.bb228
    i32 4, label %sw.bb247
    i32 5, label %sw.bb251
    i32 7, label %sw.bb257
  ]

sw.bb224:                                         ; preds = %if.then222
  %206 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params225 = getelementptr inbounds %struct.translation_ctx_st, ptr %206, i32 0, i32 8
  %207 = load ptr, ptr %params225, align 8, !tbaa !30
  %208 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1226 = getelementptr inbounds %struct.translation_ctx_st, ptr %208, i32 0, i32 5
  %call227 = call i32 @OSSL_PARAM_get_int(ptr noundef %207, ptr noundef %p1226)
  store i32 %call227, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

sw.bb228:                                         ; preds = %if.then222
  %209 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2229 = getelementptr inbounds %struct.translation_ctx_st, ptr %209, i32 0, i32 6
  %210 = load ptr, ptr %p2229, align 8, !tbaa !28
  %cmp230 = icmp ne ptr %210, null
  br i1 %cmp230, label %if.then232, label %if.else239

if.then232:                                       ; preds = %sw.bb228
  %211 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params233 = getelementptr inbounds %struct.translation_ctx_st, ptr %211, i32 0, i32 8
  %212 = load ptr, ptr %params233, align 8, !tbaa !30
  %213 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2234 = getelementptr inbounds %struct.translation_ctx_st, ptr %213, i32 0, i32 6
  %214 = load ptr, ptr %p2234, align 8, !tbaa !28
  %call235 = call i32 @OSSL_PARAM_get_BN(ptr noundef %212, ptr noundef %214)
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.end238, label %if.then237

if.then237:                                       ; preds = %if.then232
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end238:                                        ; preds = %if.then232
  br label %if.end246

if.else239:                                       ; preds = %sw.bb228
  %215 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params240 = getelementptr inbounds %struct.translation_ctx_st, ptr %215, i32 0, i32 8
  %216 = load ptr, ptr %params240, align 8, !tbaa !30
  %217 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1241 = getelementptr inbounds %struct.translation_ctx_st, ptr %217, i32 0, i32 5
  %call242 = call i32 @OSSL_PARAM_get_uint(ptr noundef %216, ptr noundef %p1241)
  %tobool243 = icmp ne i32 %call242, 0
  br i1 %tobool243, label %if.end245, label %if.then244

if.then244:                                       ; preds = %if.else239
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.end245:                                        ; preds = %if.else239
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.end238
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

sw.bb247:                                         ; preds = %if.then222
  %218 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params248 = getelementptr inbounds %struct.translation_ctx_st, ptr %218, i32 0, i32 8
  %219 = load ptr, ptr %params248, align 8, !tbaa !30
  %220 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2249 = getelementptr inbounds %struct.translation_ctx_st, ptr %220, i32 0, i32 6
  %221 = load ptr, ptr %p2249, align 8, !tbaa !28
  %222 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz = getelementptr inbounds %struct.translation_ctx_st, ptr %222, i32 0, i32 7
  %223 = load i64, ptr %sz, align 8, !tbaa !45
  %call250 = call i32 @OSSL_PARAM_get_utf8_string(ptr noundef %219, ptr noundef %221, i64 noundef %223)
  store i32 %call250, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

sw.bb251:                                         ; preds = %if.then222
  %224 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params252 = getelementptr inbounds %struct.translation_ctx_st, ptr %224, i32 0, i32 8
  %225 = load ptr, ptr %params252, align 8, !tbaa !30
  %226 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2253 = getelementptr inbounds %struct.translation_ctx_st, ptr %226, i32 0, i32 6
  %227 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz254 = getelementptr inbounds %struct.translation_ctx_st, ptr %227, i32 0, i32 7
  %228 = load i64, ptr %sz254, align 8, !tbaa !45
  %229 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1255 = getelementptr inbounds %struct.translation_ctx_st, ptr %229, i32 0, i32 5
  %call256 = call i32 @OSSL_PARAM_get_octet_string(ptr noundef %225, ptr noundef %p2253, i64 noundef %228, ptr noundef %p1255)
  store i32 %call256, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

sw.bb257:                                         ; preds = %if.then222
  %230 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params258 = getelementptr inbounds %struct.translation_ctx_st, ptr %230, i32 0, i32 8
  %231 = load ptr, ptr %params258, align 8, !tbaa !30
  %232 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2259 = getelementptr inbounds %struct.translation_ctx_st, ptr %232, i32 0, i32 6
  %233 = load ptr, ptr %p2259, align 8, !tbaa !28
  %234 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz260 = getelementptr inbounds %struct.translation_ctx_st, ptr %234, i32 0, i32 7
  %call261 = call i32 @OSSL_PARAM_get_octet_ptr(ptr noundef %231, ptr noundef %233, ptr noundef %sz260)
  store i32 %call261, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

sw.default262:                                    ; preds = %if.then222
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 645, ptr noundef @__func__.default_fixup_args)
  %235 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type263 = getelementptr inbounds %struct.translation_ctx_st, ptr %235, i32 0, i32 1
  %236 = load i32, ptr %action_type263, align 8, !tbaa !24
  %237 = load i32, ptr %state.addr, align 4, !tbaa !31
  %238 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type264 = getelementptr inbounds %struct.translation_st, ptr %238, i32 0, i32 8
  %239 = load i32, ptr %param_data_type264, align 8, !tbaa !33
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, ptr noundef @.str.6, i32 noundef %236, i32 noundef %237, i32 noundef %239)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

if.else265:                                       ; preds = %land.lhs.true218, %sw.bb215
  %240 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp266 = icmp eq i32 %240, 8
  br i1 %cmp266, label %land.lhs.true271, label %lor.lhs.false268

lor.lhs.false268:                                 ; preds = %if.else265
  %241 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp269 = icmp eq i32 %241, 0
  br i1 %cmp269, label %land.lhs.true271, label %if.else329

land.lhs.true271:                                 ; preds = %lor.lhs.false268, %if.else265
  %242 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type272 = getelementptr inbounds %struct.translation_ctx_st, ptr %242, i32 0, i32 1
  %243 = load i32, ptr %action_type272, align 8, !tbaa !24
  %cmp273 = icmp eq i32 %243, 1
  br i1 %cmp273, label %if.then275, label %if.else329

if.then275:                                       ; preds = %land.lhs.true271
  call void @llvm.lifetime.start.p0(i64 4, ptr %param_data_type276) #8
  %244 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type277 = getelementptr inbounds %struct.translation_st, ptr %244, i32 0, i32 8
  %245 = load i32, ptr %param_data_type277, align 8, !tbaa !33
  store i32 %245, ptr %param_data_type276, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8
  %246 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1278 = getelementptr inbounds %struct.translation_ctx_st, ptr %246, i32 0, i32 5
  %247 = load i32, ptr %p1278, align 4, !tbaa !27
  %conv279 = sext i32 %247 to i64
  store i64 %conv279, ptr %size, align 8, !tbaa !36
  %248 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp280 = icmp eq i32 %248, 0
  br i1 %cmp280, label %if.then282, label %if.end284

if.then282:                                       ; preds = %if.then275
  %249 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz283 = getelementptr inbounds %struct.translation_ctx_st, ptr %249, i32 0, i32 7
  %250 = load i64, ptr %sz283, align 8, !tbaa !45
  store i64 %250, ptr %size, align 8, !tbaa !36
  br label %if.end284

if.end284:                                        ; preds = %if.then282, %if.then275
  %251 = load i32, ptr %param_data_type276, align 4, !tbaa !8
  %cmp285 = icmp eq i32 %251, 0
  br i1 %cmp285, label %if.then287, label %if.end295

if.then287:                                       ; preds = %if.end284
  %252 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %fixup_args = getelementptr inbounds %struct.translation_st, ptr %252, i32 0, i32 9
  %253 = load ptr, ptr %fixup_args, align 8, !tbaa !22
  %cmp288 = icmp ne ptr %253, null
  %conv289 = zext i1 %cmp288 to i32
  %cmp290 = icmp ne i32 %conv289, 0
  br i1 %cmp290, label %if.end293, label %if.then292

if.then292:                                       ; preds = %if.then287
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 663, ptr noundef @__func__.default_fixup_args)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

if.end293:                                        ; preds = %if.then287
  %254 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params294 = getelementptr inbounds %struct.translation_ctx_st, ptr %254, i32 0, i32 8
  %255 = load ptr, ptr %params294, align 8, !tbaa !30
  %data_type = getelementptr inbounds %struct.ossl_param_st, ptr %255, i32 0, i32 1
  %256 = load i32, ptr %data_type, align 8, !tbaa !46
  store i32 %256, ptr %param_data_type276, align 4, !tbaa !8
  br label %if.end295

if.end295:                                        ; preds = %if.end293, %if.end284
  %257 = load i32, ptr %param_data_type276, align 4, !tbaa !8
  switch i32 %257, label %sw.default324 [
    i32 1, label %sw.bb296
    i32 2, label %sw.bb300
    i32 4, label %sw.bb312
    i32 5, label %sw.bb316
    i32 7, label %sw.bb320
  ]

sw.bb296:                                         ; preds = %if.end295
  %258 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params297 = getelementptr inbounds %struct.translation_ctx_st, ptr %258, i32 0, i32 8
  %259 = load ptr, ptr %params297, align 8, !tbaa !30
  %260 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1298 = getelementptr inbounds %struct.translation_ctx_st, ptr %260, i32 0, i32 5
  %261 = load i32, ptr %p1298, align 4, !tbaa !27
  %call299 = call i32 @OSSL_PARAM_set_int(ptr noundef %259, i32 noundef %261)
  store i32 %call299, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

sw.bb300:                                         ; preds = %if.end295
  %262 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2301 = getelementptr inbounds %struct.translation_ctx_st, ptr %262, i32 0, i32 6
  %263 = load ptr, ptr %p2301, align 8, !tbaa !28
  %cmp302 = icmp ne ptr %263, null
  br i1 %cmp302, label %if.then304, label %if.else308

if.then304:                                       ; preds = %sw.bb300
  %264 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params305 = getelementptr inbounds %struct.translation_ctx_st, ptr %264, i32 0, i32 8
  %265 = load ptr, ptr %params305, align 8, !tbaa !30
  %266 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2306 = getelementptr inbounds %struct.translation_ctx_st, ptr %266, i32 0, i32 6
  %267 = load ptr, ptr %p2306, align 8, !tbaa !28
  %call307 = call i32 @OSSL_PARAM_set_BN(ptr noundef %265, ptr noundef %267)
  store i32 %call307, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

if.else308:                                       ; preds = %sw.bb300
  %268 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params309 = getelementptr inbounds %struct.translation_ctx_st, ptr %268, i32 0, i32 8
  %269 = load ptr, ptr %params309, align 8, !tbaa !30
  %270 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1310 = getelementptr inbounds %struct.translation_ctx_st, ptr %270, i32 0, i32 5
  %271 = load i32, ptr %p1310, align 4, !tbaa !27
  %call311 = call i32 @OSSL_PARAM_set_uint(ptr noundef %269, i32 noundef %271)
  store i32 %call311, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

sw.bb312:                                         ; preds = %if.end295
  %272 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params313 = getelementptr inbounds %struct.translation_ctx_st, ptr %272, i32 0, i32 8
  %273 = load ptr, ptr %params313, align 8, !tbaa !30
  %274 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2314 = getelementptr inbounds %struct.translation_ctx_st, ptr %274, i32 0, i32 6
  %275 = load ptr, ptr %p2314, align 8, !tbaa !28
  %call315 = call i32 @OSSL_PARAM_set_utf8_string(ptr noundef %273, ptr noundef %275)
  store i32 %call315, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

sw.bb316:                                         ; preds = %if.end295
  %276 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params317 = getelementptr inbounds %struct.translation_ctx_st, ptr %276, i32 0, i32 8
  %277 = load ptr, ptr %params317, align 8, !tbaa !30
  %278 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2318 = getelementptr inbounds %struct.translation_ctx_st, ptr %278, i32 0, i32 6
  %279 = load ptr, ptr %p2318, align 8, !tbaa !28
  %280 = load i64, ptr %size, align 8, !tbaa !36
  %call319 = call i32 @OSSL_PARAM_set_octet_string(ptr noundef %277, ptr noundef %279, i64 noundef %280)
  store i32 %call319, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

sw.bb320:                                         ; preds = %if.end295
  %281 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params321 = getelementptr inbounds %struct.translation_ctx_st, ptr %281, i32 0, i32 8
  %282 = load ptr, ptr %params321, align 8, !tbaa !30
  %283 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2322 = getelementptr inbounds %struct.translation_ctx_st, ptr %283, i32 0, i32 6
  %284 = load ptr, ptr %p2322, align 8, !tbaa !28
  %285 = load ptr, ptr %284, align 8, !tbaa !4
  %286 = load i64, ptr %size, align 8, !tbaa !36
  %call323 = call i32 @OSSL_PARAM_set_octet_ptr(ptr noundef %282, ptr noundef %285, i64 noundef %286)
  store i32 %call323, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

sw.default324:                                    ; preds = %if.end295
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 691, ptr noundef @__func__.default_fixup_args)
  %287 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type325 = getelementptr inbounds %struct.translation_ctx_st, ptr %287, i32 0, i32 1
  %288 = load i32, ptr %action_type325, align 8, !tbaa !24
  %289 = load i32, ptr %state.addr, align 4, !tbaa !31
  %290 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type326 = getelementptr inbounds %struct.translation_st, ptr %290, i32 0, i32 8
  %291 = load i32, ptr %param_data_type326, align 8, !tbaa !33
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, ptr noundef @.str.7, i32 noundef %288, i32 noundef %289, i32 noundef %291)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

cleanup327:                                       ; preds = %sw.default324, %sw.bb320, %sw.bb316, %sw.bb312, %if.else308, %if.then304, %sw.bb296, %if.then292
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %param_data_type276) #8
  br label %cleanup347

if.else329:                                       ; preds = %land.lhs.true271, %lor.lhs.false268
  %292 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp330 = icmp eq i32 %292, 7
  br i1 %cmp330, label %land.lhs.true332, label %if.end343

land.lhs.true332:                                 ; preds = %if.else329
  %293 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type333 = getelementptr inbounds %struct.translation_ctx_st, ptr %293, i32 0, i32 1
  %294 = load i32, ptr %action_type333, align 8, !tbaa !24
  %cmp334 = icmp eq i32 %294, 1
  br i1 %cmp334, label %if.then336, label %if.end343

if.then336:                                       ; preds = %land.lhs.true332
  %295 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type337 = getelementptr inbounds %struct.translation_st, ptr %295, i32 0, i32 8
  %296 = load i32, ptr %param_data_type337, align 8, !tbaa !33
  %cmp338 = icmp eq i32 %296, 7
  br i1 %cmp338, label %if.then340, label %if.end342

if.then340:                                       ; preds = %if.then336
  %297 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %bufp = getelementptr inbounds %struct.translation_ctx_st, ptr %297, i32 0, i32 12
  %298 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2341 = getelementptr inbounds %struct.translation_ctx_st, ptr %298, i32 0, i32 6
  store ptr %bufp, ptr %p2341, align 8, !tbaa !28
  br label %if.end342

if.end342:                                        ; preds = %if.then340, %if.then336
  br label %if.end343

if.end343:                                        ; preds = %if.end342, %land.lhs.true332, %if.else329
  br label %if.end344

if.end344:                                        ; preds = %if.end343
  br label %if.end345

if.end345:                                        ; preds = %if.end344
  br label %sw.epilog346

sw.epilog346:                                     ; preds = %if.end345, %if.end, %cleanup.cont, %if.end163, %sw.epilog
  %299 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %299, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup347

cleanup347:                                       ; preds = %sw.epilog346, %cleanup327, %sw.default262, %sw.bb257, %sw.bb251, %sw.bb247, %if.end246, %if.then244, %if.then237, %sw.bb224, %cleanup, %if.else, %if.then107, %if.then98, %if.then82, %if.then3, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %300 = load i32, ptr %retval, align 4
  ret i32 %300
}

; Function Attrs: nounwind uwtable
define internal ptr @lookup_evp_pkey_ctx_translation(ptr noundef %tmpl) #0 {
entry:
  %tmpl.addr = alloca ptr, align 8
  store ptr %tmpl, ptr %tmpl.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %call = call ptr @lookup_translation(ptr noundef %0, ptr noundef @evp_pkey_ctx_translations, i64 noundef 85)
  ret ptr %call
}

declare void @ERR_new() #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #3

declare i32 @evp_pkey_ctx_get_params_strict(ptr noundef, ptr noundef) #3

declare i32 @evp_pkey_ctx_set_params_strict(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @cleanup_translation_ctx(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %allocated_buf, align 8, !tbaa !38
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf1 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %allocated_buf1, align 8, !tbaa !38
  call void @CRYPTO_free(ptr noundef %3, ptr noundef @.str, i32 noundef 715)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %allocated_buf2 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 11
  store ptr null, ptr %allocated_buf2, align 8, !tbaa !38
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @evp_pkey_ctx_ctrl_str_to_param(ptr noundef %pctx, ptr noundef %name, ptr noundef %value) #0 {
entry:
  %pctx.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %translation = alloca ptr, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %keytype = alloca i32, align 4
  %optype = alloca i32, align 4
  %ret = alloca i32, align 4
  %fixup = alloca ptr, align 8
  store ptr %pctx, ptr %pctx.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 144, ptr %ctx) #8
  call void @llvm.memset.p0.i64(ptr align 8 %ctx, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr %tmpl) #8
  call void @llvm.memset.p0.i64(ptr align 8 %tmpl, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %translation) #8
  store ptr null, ptr %translation, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 80, ptr %params) #8
  call void @llvm.memset.p0.i64(ptr align 16 %params, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %keytype) #8
  %0 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %legacy_keytype, align 4, !tbaa !10
  store i32 %1, ptr %keytype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %optype) #8
  %2 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %operation, align 8, !tbaa !32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %operation1 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %operation1, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, ptr %optype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixup) #8
  store ptr @default_fixup_args, ptr %fixup, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 0
  store i32 2, ptr %action_type, align 8, !tbaa !23
  %6 = load i32, ptr %keytype, align 4, !tbaa !8
  %keytype2 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 2
  store i32 %6, ptr %keytype2, align 8, !tbaa !16
  %keytype1 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 1
  store i32 %6, ptr %keytype1, align 4, !tbaa !17
  %7 = load i32, ptr %optype, align 4, !tbaa !8
  %optype2 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 3
  store i32 %7, ptr %optype2, align 4, !tbaa !18
  %8 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %ctrl_str = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 5
  store ptr %8, ptr %ctrl_str, align 8, !tbaa !47
  %9 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %ctrl_hexstr = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 6
  store ptr %9, ptr %ctrl_hexstr, align 8, !tbaa !48
  %call = call ptr @lookup_evp_pkey_ctx_translation(ptr noundef %tmpl)
  store ptr %call, ptr %translation, align 8, !tbaa !4
  %10 = load ptr, ptr %translation, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args = getelementptr inbounds %struct.translation_st, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %fixup_args, align 8, !tbaa !22
  %cmp4 = icmp ne ptr %12, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %13 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args6 = getelementptr inbounds %struct.translation_st, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %fixup_args6, align 8, !tbaa !22
  store ptr %14, ptr %fixup, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %15 = load ptr, ptr %translation, align 8, !tbaa !4
  %action_type7 = getelementptr inbounds %struct.translation_st, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %action_type7, align 8, !tbaa !23
  %action_type8 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  store i32 %16, ptr %action_type8, align 8, !tbaa !24
  %ctrl_hexstr9 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 6
  %17 = load ptr, ptr %ctrl_hexstr9, align 8, !tbaa !48
  %cmp10 = icmp ne ptr %17, null
  %conv = zext i1 %cmp10 to i32
  %ishex = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 4
  store i32 %conv, ptr %ishex, align 8, !tbaa !42
  br label %if.end12

if.else:                                          ; preds = %cond.end
  %action_type11 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  store i32 2, ptr %action_type11, align 8, !tbaa !24
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  %18 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %ctrl_str13 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 3
  store ptr %18, ptr %ctrl_str13, align 8, !tbaa !41
  %19 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call14 = call i64 @strlen(ptr noundef %19) #9
  %conv15 = trunc i64 %call14 to i32
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 5
  store i32 %conv15, ptr %p1, align 4, !tbaa !27
  %20 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 6
  store ptr %20, ptr %p2, align 8, !tbaa !28
  %21 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %pctx16 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 0
  store ptr %21, ptr %pctx16, align 8, !tbaa !29
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], ptr %params, i64 0, i64 0
  %params17 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 8
  store ptr %arraydecay, ptr %params17, align 8, !tbaa !30
  %22 = load ptr, ptr %fixup, align 8, !tbaa !4
  %23 = load ptr, ptr %translation, align 8, !tbaa !4
  %call18 = call i32 %22(i32 noundef 4, ptr noundef %23, ptr noundef %ctx)
  store i32 %call18, ptr %ret, align 4, !tbaa !8
  %24 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp19 = icmp sgt i32 %24, 0
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end12
  %action_type22 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  %25 = load i32, ptr %action_type22, align 8, !tbaa !24
  switch i32 %25, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb
  ]

sw.default:                                       ; preds = %if.then21
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then21
  %26 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %params23 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 8
  %27 = load ptr, ptr %params23, align 8, !tbaa !30
  %call24 = call i32 @evp_pkey_ctx_set_params_strict(ptr noundef %26, ptr noundef %27)
  store i32 %call24, ptr %ret, align 4, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then21, %sw.default
  br label %if.end25

if.end25:                                         ; preds = %sw.epilog, %if.end12
  %28 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp26 = icmp sgt i32 %28, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %29 = load ptr, ptr %fixup, align 8, !tbaa !4
  %30 = load ptr, ptr %translation, align 8, !tbaa !4
  %call29 = call i32 %29(i32 noundef 5, ptr noundef %30, ptr noundef %ctx)
  store i32 %call29, ptr %ret, align 4, !tbaa !8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %31 = load ptr, ptr %translation, align 8, !tbaa !4
  %call31 = call i32 @cleanup_translation_ctx(i32 noundef 6, ptr noundef %31, ptr noundef %ctx)
  %32 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixup) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %optype) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %keytype) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr %params) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %translation) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr %ctx) #8
  ret i32 %32
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @evp_pkey_ctx_set_params_to_ctrl(ptr noundef %ctx, ptr noundef %params) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %call = call i32 @evp_pkey_ctx_setget_params_to_ctrl(ptr noundef %0, i32 noundef 2, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @evp_pkey_ctx_setget_params_to_ctrl(ptr noundef %pctx, i32 noundef %action_type, ptr noundef %params) #0 {
entry:
  %retval = alloca i32, align 4
  %pctx.addr = alloca ptr, align 8
  %action_type.addr = alloca i32, align 4
  %params.addr = alloca ptr, align 8
  %keytype = alloca i32, align 4
  %optype = alloca i32, align 4
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %translation = alloca ptr, align 8
  %fixup = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pctx, ptr %pctx.addr, align 8, !tbaa !4
  store i32 %action_type, ptr %action_type.addr, align 4, !tbaa !31
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %keytype) #8
  %0 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %legacy_keytype, align 4, !tbaa !10
  store i32 %1, ptr %keytype, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %optype) #8
  %2 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %operation, align 8, !tbaa !32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %operation1 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %operation1, align 8, !tbaa !32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, ptr %optype, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %6, null
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.ossl_param_st, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %key, align 8, !tbaa !49
  %cmp3 = icmp ne ptr %8, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 144, ptr %ctx) #8
  call void @llvm.memset.p0.i64(ptr align 8 %ctx, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr %tmpl) #8
  call void @llvm.memset.p0.i64(ptr align 8 %tmpl, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %translation) #8
  store ptr null, ptr %translation, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixup) #8
  store ptr @default_fixup_args, ptr %fixup, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %10 = load i32, ptr %action_type.addr, align 4, !tbaa !31
  %action_type4 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 0
  store i32 %10, ptr %action_type4, align 8, !tbaa !23
  %11 = load i32, ptr %keytype, align 4, !tbaa !8
  %keytype2 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 2
  store i32 %11, ptr %keytype2, align 8, !tbaa !16
  %keytype1 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 1
  store i32 %11, ptr %keytype1, align 4, !tbaa !17
  %12 = load i32, ptr %optype, align 4, !tbaa !8
  %optype5 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 3
  store i32 %12, ptr %optype5, align 4, !tbaa !18
  %13 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %key6 = getelementptr inbounds %struct.ossl_param_st, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %key6, align 8, !tbaa !49
  %param_key = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 7
  store ptr %14, ptr %param_key, align 8, !tbaa !34
  %call = call ptr @lookup_evp_pkey_ctx_translation(ptr noundef %tmpl)
  store ptr %call, ptr %translation, align 8, !tbaa !4
  %15 = load ptr, ptr %translation, align 8, !tbaa !4
  %cmp7 = icmp ne ptr %15, null
  br i1 %cmp7, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args = getelementptr inbounds %struct.translation_st, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %fixup_args, align 8, !tbaa !22
  %cmp8 = icmp ne ptr %17, null
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %18 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args10 = getelementptr inbounds %struct.translation_st, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %fixup_args10, align 8, !tbaa !22
  store ptr %19, ptr %fixup, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %20 = load ptr, ptr %translation, align 8, !tbaa !4
  %action_type11 = getelementptr inbounds %struct.translation_st, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %action_type11, align 8, !tbaa !23
  %action_type12 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  store i32 %21, ptr %action_type12, align 8, !tbaa !24
  %22 = load ptr, ptr %translation, align 8, !tbaa !4
  %ctrl_num = getelementptr inbounds %struct.translation_st, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %ctrl_num, align 8, !tbaa !14
  %ctrl_cmd = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 2
  store i32 %23, ptr %ctrl_cmd, align 4, !tbaa !26
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  %24 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %pctx14 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 0
  store ptr %24, ptr %pctx14, align 8, !tbaa !29
  %25 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %params15 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 8
  store ptr %25, ptr %params15, align 8, !tbaa !30
  %26 = load ptr, ptr %fixup, align 8, !tbaa !4
  %27 = load ptr, ptr %translation, align 8, !tbaa !4
  %call16 = call i32 %26(i32 noundef 7, ptr noundef %27, ptr noundef %ctx)
  store i32 %call16, ptr %ret, align 4, !tbaa !8
  %28 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp17 = icmp sgt i32 %28, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.end13
  %action_type18 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  %29 = load i32, ptr %action_type18, align 8, !tbaa !24
  %cmp19 = icmp ne i32 %29, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %pctx.addr, align 8, !tbaa !4
  %31 = load i32, ptr %keytype, align 4, !tbaa !8
  %32 = load i32, ptr %optype, align 4, !tbaa !8
  %ctrl_cmd21 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 2
  %33 = load i32, ptr %ctrl_cmd21, align 4, !tbaa !26
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 5
  %34 = load i32, ptr %p1, align 4, !tbaa !27
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 6
  %35 = load ptr, ptr %p2, align 8, !tbaa !28
  %call22 = call i32 @EVP_PKEY_CTX_ctrl(ptr noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef %35)
  store i32 %call22, ptr %ret, align 4, !tbaa !8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true, %if.end13
  %36 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp24 = icmp sgt i32 %36, 0
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end23
  %37 = load i32, ptr %ret, align 4, !tbaa !8
  %p126 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 5
  store i32 %37, ptr %p126, align 4, !tbaa !27
  %38 = load ptr, ptr %fixup, align 8, !tbaa !4
  %39 = load ptr, ptr %translation, align 8, !tbaa !4
  %call27 = call i32 %38(i32 noundef 8, ptr noundef %39, ptr noundef %ctx)
  %p128 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 5
  %40 = load i32, ptr %p128, align 4, !tbaa !27
  store i32 %40, ptr %ret, align 4, !tbaa !8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23
  %41 = load ptr, ptr %translation, align 8, !tbaa !4
  %call30 = call i32 @cleanup_translation_ctx(i32 noundef 9, ptr noundef %41, ptr noundef %ctx)
  %42 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp31 = icmp sle i32 %42, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then32
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixup) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %translation) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr %ctx) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup38 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %43 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %params.addr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %land.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %optype) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %keytype) #8
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @evp_pkey_ctx_get_params_to_ctrl(ptr noundef %ctx, ptr noundef %params) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %call = call i32 @evp_pkey_ctx_setget_params_to_ctrl(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @evp_pkey_get_params_to_ctrl(ptr noundef %pkey, ptr noundef %params) #0 {
entry:
  %pkey.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %call = call i32 @evp_pkey_setget_params_to_ctrl(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @evp_pkey_setget_params_to_ctrl(ptr noundef %pkey, i32 noundef %action_type, ptr noundef %params) #0 {
entry:
  %retval = alloca i32, align 4
  %pkey.addr = alloca ptr, align 8
  %action_type.addr = alloca i32, align 4
  %params.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %translation = alloca ptr, align 8
  %fixup = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pkey, ptr %pkey.addr, align 8, !tbaa !4
  store i32 %action_type, ptr %action_type.addr, align 4, !tbaa !31
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %key = getelementptr inbounds %struct.ossl_param_st, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %key, align 8, !tbaa !49
  %cmp1 = icmp ne ptr %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 144, ptr %ctx) #8
  call void @llvm.memset.p0.i64(ptr align 8 %ctx, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr %tmpl) #8
  call void @llvm.memset.p0.i64(ptr align 8 %tmpl, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %translation) #8
  store ptr null, ptr %translation, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixup) #8
  store ptr @default_fixup_args, ptr %fixup, align 8, !tbaa !4
  %4 = load i32, ptr %action_type.addr, align 4, !tbaa !31
  %action_type2 = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 0
  store i32 %4, ptr %action_type2, align 8, !tbaa !23
  %5 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %key3 = getelementptr inbounds %struct.ossl_param_st, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %key3, align 8, !tbaa !49
  %param_key = getelementptr inbounds %struct.translation_st, ptr %tmpl, i32 0, i32 7
  store ptr %6, ptr %param_key, align 8, !tbaa !34
  %call = call ptr @lookup_evp_pkey_translation(ptr noundef %tmpl)
  store ptr %call, ptr %translation, align 8, !tbaa !4
  %7 = load ptr, ptr %translation, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %7, null
  br i1 %cmp4, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args = getelementptr inbounds %struct.translation_st, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %fixup_args, align 8, !tbaa !22
  %cmp5 = icmp ne ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args7 = getelementptr inbounds %struct.translation_st, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %fixup_args7, align 8, !tbaa !22
  store ptr %11, ptr %fixup, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %12 = load ptr, ptr %translation, align 8, !tbaa !4
  %action_type8 = getelementptr inbounds %struct.translation_st, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %action_type8, align 8, !tbaa !23
  %action_type9 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 1
  store i32 %13, ptr %action_type9, align 8, !tbaa !24
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  %14 = load ptr, ptr %pkey.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 6
  store ptr %14, ptr %p2, align 8, !tbaa !28
  %15 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %params11 = getelementptr inbounds %struct.translation_ctx_st, ptr %ctx, i32 0, i32 8
  store ptr %15, ptr %params11, align 8, !tbaa !30
  %16 = load ptr, ptr %translation, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %16, null
  %conv = zext i1 %cmp12 to i32
  %cmp13 = icmp ne i32 %conv, 0
  br i1 %cmp13, label %lor.lhs.false, label %if.then26

lor.lhs.false:                                    ; preds = %if.end10
  %17 = load ptr, ptr %translation, align 8, !tbaa !4
  %action_type15 = getelementptr inbounds %struct.translation_st, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %action_type15, align 8, !tbaa !23
  %cmp16 = icmp eq i32 %18, 1
  %conv17 = zext i1 %cmp16 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %lor.lhs.false20, label %if.then26

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %translation, align 8, !tbaa !4
  %fixup_args21 = getelementptr inbounds %struct.translation_st, ptr %19, i32 0, i32 9
  %20 = load ptr, ptr %fixup_args21, align 8, !tbaa !22
  %cmp22 = icmp ne ptr %20, null
  %conv23 = zext i1 %cmp22 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.end27, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false20, %lor.lhs.false, %if.end10
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false20
  %21 = load ptr, ptr %fixup, align 8, !tbaa !4
  %22 = load ptr, ptr %translation, align 8, !tbaa !4
  %call28 = call i32 %21(i32 noundef 0, ptr noundef %22, ptr noundef %ctx)
  store i32 %call28, ptr %ret, align 4, !tbaa !8
  %23 = load ptr, ptr %translation, align 8, !tbaa !4
  %call29 = call i32 @cleanup_translation_ctx(i32 noundef 0, ptr noundef %23, ptr noundef %ctx)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixup) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %translation) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %tmpl) #8
  call void @llvm.lifetime.end.p0(i64 144, ptr %ctx) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %24 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %params.addr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %land.end
  %25 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @default_check(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb13
    i32 7, label %sw.bb37
    i32 8, label %sw.bb37
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  %conv = zext i1 %cmp to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 298, ptr noundef @__func__.default_check)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null)
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %2 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key = getelementptr inbounds %struct.translation_st, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %param_key, align 8, !tbaa !34
  %cmp3 = icmp ne ptr %3, null
  %conv4 = zext i1 %cmp3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type = getelementptr inbounds %struct.translation_st, ptr %4, i32 0, i32 8
  %5 = load i32, ptr %param_data_type, align 8, !tbaa !33
  %cmp7 = icmp ne i32 %5, 0
  %conv8 = zext i1 %cmp7 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.end12, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 303, ptr noundef @__func__.default_check)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %6 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %6, null
  br i1 %cmp14, label %if.then16, label %if.end36

if.then16:                                        ; preds = %sw.bb13
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_st, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %action_type, align 8, !tbaa !23
  %cmp17 = icmp ne i32 %8, 1
  %conv18 = zext i1 %cmp17 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.then16
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 316, ptr noundef @__func__.default_check)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null)
  store i32 -2, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then16
  %9 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key23 = getelementptr inbounds %struct.translation_st, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %param_key23, align 8, !tbaa !34
  %cmp24 = icmp ne ptr %10, null
  %conv25 = zext i1 %cmp24 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %lor.lhs.false28, label %if.then34

lor.lhs.false28:                                  ; preds = %if.end22
  %11 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type29 = getelementptr inbounds %struct.translation_st, ptr %11, i32 0, i32 8
  %12 = load i32, ptr %param_data_type29, align 8, !tbaa !33
  %cmp30 = icmp ne i32 %12, 0
  %conv31 = zext i1 %cmp30 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %if.end35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false28, %if.end22
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 321, ptr noundef @__func__.default_check)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false28
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %sw.bb13
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry, %entry
  %13 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %cmp38 = icmp ne ptr %13, null
  %conv39 = zext i1 %cmp38 to i32
  %cmp40 = icmp ne i32 %conv39, 0
  br i1 %cmp40, label %if.end43, label %if.then42

if.then42:                                        ; preds = %sw.bb37
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 329, ptr noundef @__func__.default_check)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null)
  store i32 -2, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb37
  %14 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %ctrl_num = getelementptr inbounds %struct.translation_st, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %ctrl_num, align 8, !tbaa !14
  %cmp44 = icmp ne i32 %15, 0
  %conv45 = zext i1 %cmp44 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %lor.lhs.false48, label %if.then54

lor.lhs.false48:                                  ; preds = %if.end43
  %16 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_data_type49 = getelementptr inbounds %struct.translation_st, ptr %16, i32 0, i32 8
  %17 = load i32, ptr %param_data_type49, align 8, !tbaa !33
  %cmp50 = icmp ne i32 %17, 0
  %conv51 = zext i1 %cmp50 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %if.end55, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false48, %if.end43
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 334, ptr noundef @__func__.default_check)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %lor.lhs.false48
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end55, %if.end36, %if.end12, %sw.default
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then54, %if.then42, %if.then34, %if.then21, %if.then11, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare void @OSSL_PARAM_construct_int(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @BN_num_bits(ptr noundef) #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) #3

declare i32 @BN_bn2nativepad(ptr noundef, ptr noundef, i32 noundef) #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #3

declare void @OSSL_PARAM_construct_BN(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) #3

declare void @OSSL_PARAM_construct_uint(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) #3

declare void @OSSL_PARAM_construct_utf8_string(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) #3

declare void @OSSL_PARAM_construct_utf8_ptr(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) #3

declare void @OSSL_PARAM_construct_octet_string(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) #3

declare void @OSSL_PARAM_construct_octet_ptr(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #6

declare i64 @OPENSSL_strlcat(ptr noundef, ptr noundef, i64 noundef) #3

declare ptr @EVP_PKEY_CTX_settable_params(ptr noundef) #3

declare i32 @OSSL_PARAM_allocate_from_text(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_get_BN(ptr noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_get_uint(ptr noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_get_utf8_string(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @OSSL_PARAM_get_octet_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_get_octet_ptr(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_set_int(ptr noundef, i32 noundef) #3

declare i32 @OSSL_PARAM_set_BN(ptr noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_set_uint(ptr noundef, i32 noundef) #3

declare i32 @OSSL_PARAM_set_utf8_string(ptr noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_set_octet_string(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @OSSL_PARAM_set_octet_ptr(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @lookup_translation(ptr noundef %tmpl, ptr noundef %translations, i64 noundef %translations_num) #0 {
entry:
  %retval = alloca ptr, align 8
  %tmpl.addr = alloca ptr, align 8
  %translations.addr = alloca ptr, align 8
  %translations_num.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %item = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ctrl_str43 = alloca ptr, align 8
  %ctrl_hexstr = alloca ptr, align 8
  store ptr %tmpl, ptr %tmpl.addr, align 8, !tbaa !4
  store ptr %translations, ptr %translations.addr, align 8, !tbaa !4
  store i64 %translations_num, ptr %translations_num.addr, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !36
  %1 = load i64, ptr %translations_num.addr, align 8, !tbaa !36
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %item) #8
  %2 = load ptr, ptr %translations.addr, align 8, !tbaa !4
  %3 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds %struct.translation_st, ptr %2, i64 %3
  store ptr %arrayidx, ptr %item, align 8, !tbaa !4
  %4 = load ptr, ptr %item, align 8, !tbaa !4
  %keytype1 = getelementptr inbounds %struct.translation_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %keytype1, align 4, !tbaa !17
  %cmp1 = icmp eq i32 %5, -1
  %conv = zext i1 %cmp1 to i32
  %6 = load ptr, ptr %item, align 8, !tbaa !4
  %keytype2 = getelementptr inbounds %struct.translation_st, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %keytype2, align 8, !tbaa !16
  %cmp2 = icmp eq i32 %7, -1
  %conv3 = zext i1 %cmp2 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  %conv5 = zext i1 %cmp4 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %item, align 8, !tbaa !4
  %optype = getelementptr inbounds %struct.translation_st, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %optype, align 4, !tbaa !18
  %cmp8 = icmp ne i32 %9, -1
  br i1 %cmp8, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %optype10 = getelementptr inbounds %struct.translation_st, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %optype10, align 4, !tbaa !18
  %12 = load ptr, ptr %item, align 8, !tbaa !4
  %optype11 = getelementptr inbounds %struct.translation_st, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %optype11, align 4, !tbaa !18
  %and = and i32 %11, %13
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end15:                                         ; preds = %land.lhs.true, %if.end
  %14 = load ptr, ptr %item, align 8, !tbaa !4
  %keytype116 = getelementptr inbounds %struct.translation_st, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %keytype116, align 4, !tbaa !17
  %cmp17 = icmp ne i32 %15, -1
  br i1 %cmp17, label %land.lhs.true19, label %if.end30

land.lhs.true19:                                  ; preds = %if.end15
  %16 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %keytype120 = getelementptr inbounds %struct.translation_st, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %keytype120, align 4, !tbaa !17
  %18 = load ptr, ptr %item, align 8, !tbaa !4
  %keytype121 = getelementptr inbounds %struct.translation_st, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %keytype121, align 4, !tbaa !17
  %cmp22 = icmp ne i32 %17, %19
  br i1 %cmp22, label %land.lhs.true24, label %if.end30

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %20 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %keytype225 = getelementptr inbounds %struct.translation_st, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %keytype225, align 8, !tbaa !16
  %22 = load ptr, ptr %item, align 8, !tbaa !4
  %keytype226 = getelementptr inbounds %struct.translation_st, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %keytype226, align 8, !tbaa !16
  %cmp27 = icmp ne i32 %21, %23
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true24
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end30:                                         ; preds = %land.lhs.true24, %land.lhs.true19, %if.end15
  %24 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_num = getelementptr inbounds %struct.translation_st, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %ctrl_num, align 8, !tbaa !14
  %cmp31 = icmp ne i32 %25, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  %26 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_num34 = getelementptr inbounds %struct.translation_st, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %ctrl_num34, align 8, !tbaa !14
  %28 = load ptr, ptr %item, align 8, !tbaa !4
  %ctrl_num35 = getelementptr inbounds %struct.translation_st, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %ctrl_num35, align 8, !tbaa !14
  %cmp36 = icmp ne i32 %27, %29
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then33
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end39:                                         ; preds = %if.then33
  br label %if.end106

if.else:                                          ; preds = %if.end30
  %30 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_str = getelementptr inbounds %struct.translation_st, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %ctrl_str, align 8, !tbaa !47
  %cmp40 = icmp ne ptr %31, null
  br i1 %cmp40, label %if.then42, label %if.else80

if.then42:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl_str43) #8
  store ptr null, ptr %ctrl_str43, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl_hexstr) #8
  store ptr null, ptr %ctrl_hexstr, align 8, !tbaa !4
  %32 = load ptr, ptr %item, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_st, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %action_type, align 8, !tbaa !23
  %cmp44 = icmp ne i32 %33, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.end51

land.lhs.true46:                                  ; preds = %if.then42
  %34 = load ptr, ptr %item, align 8, !tbaa !4
  %action_type47 = getelementptr inbounds %struct.translation_st, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %action_type47, align 8, !tbaa !23
  %cmp48 = icmp ne i32 %35, 2
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true46
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end51:                                         ; preds = %land.lhs.true46, %if.then42
  %36 = load ptr, ptr %item, align 8, !tbaa !4
  %ctrl_str52 = getelementptr inbounds %struct.translation_st, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %ctrl_str52, align 8, !tbaa !47
  %cmp53 = icmp ne ptr %37, null
  br i1 %cmp53, label %land.lhs.true55, label %if.else62

land.lhs.true55:                                  ; preds = %if.end51
  %38 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_str56 = getelementptr inbounds %struct.translation_st, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %ctrl_str56, align 8, !tbaa !47
  %40 = load ptr, ptr %item, align 8, !tbaa !4
  %ctrl_str57 = getelementptr inbounds %struct.translation_st, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %ctrl_str57, align 8, !tbaa !47
  %call = call i32 @OPENSSL_strcasecmp(ptr noundef %39, ptr noundef %41)
  %cmp58 = icmp eq i32 %call, 0
  br i1 %cmp58, label %if.then60, label %if.else62

if.then60:                                        ; preds = %land.lhs.true55
  %42 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_str61 = getelementptr inbounds %struct.translation_st, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %ctrl_str61, align 8, !tbaa !47
  store ptr %43, ptr %ctrl_str43, align 8, !tbaa !4
  br label %if.end76

if.else62:                                        ; preds = %land.lhs.true55, %if.end51
  %44 = load ptr, ptr %item, align 8, !tbaa !4
  %ctrl_hexstr63 = getelementptr inbounds %struct.translation_st, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %ctrl_hexstr63, align 8, !tbaa !48
  %cmp64 = icmp ne ptr %45, null
  br i1 %cmp64, label %land.lhs.true66, label %if.else74

land.lhs.true66:                                  ; preds = %if.else62
  %46 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_hexstr67 = getelementptr inbounds %struct.translation_st, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %ctrl_hexstr67, align 8, !tbaa !48
  %48 = load ptr, ptr %item, align 8, !tbaa !4
  %ctrl_hexstr68 = getelementptr inbounds %struct.translation_st, ptr %48, i32 0, i32 6
  %49 = load ptr, ptr %ctrl_hexstr68, align 8, !tbaa !48
  %call69 = call i32 @OPENSSL_strcasecmp(ptr noundef %47, ptr noundef %49)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %land.lhs.true66
  %50 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_hexstr73 = getelementptr inbounds %struct.translation_st, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %ctrl_hexstr73, align 8, !tbaa !48
  store ptr %51, ptr %ctrl_hexstr, align 8, !tbaa !4
  br label %if.end75

if.else74:                                        ; preds = %land.lhs.true66, %if.else62
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %if.then72
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then60
  %52 = load ptr, ptr %ctrl_str43, align 8, !tbaa !4
  %53 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_str77 = getelementptr inbounds %struct.translation_st, ptr %53, i32 0, i32 5
  store ptr %52, ptr %ctrl_str77, align 8, !tbaa !47
  %54 = load ptr, ptr %ctrl_hexstr, align 8, !tbaa !4
  %55 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %ctrl_hexstr78 = getelementptr inbounds %struct.translation_st, ptr %55, i32 0, i32 6
  store ptr %54, ptr %ctrl_hexstr78, align 8, !tbaa !48
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.else74, %if.then50
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl_hexstr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl_str43) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup107 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end105

if.else80:                                        ; preds = %if.else
  %56 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %param_key = getelementptr inbounds %struct.translation_st, ptr %56, i32 0, i32 7
  %57 = load ptr, ptr %param_key, align 8, !tbaa !34
  %cmp81 = icmp ne ptr %57, null
  br i1 %cmp81, label %if.then83, label %if.else103

if.then83:                                        ; preds = %if.else80
  %58 = load ptr, ptr %item, align 8, !tbaa !4
  %action_type84 = getelementptr inbounds %struct.translation_st, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %action_type84, align 8, !tbaa !23
  %cmp85 = icmp ne i32 %59, 0
  br i1 %cmp85, label %land.lhs.true87, label %lor.lhs.false

land.lhs.true87:                                  ; preds = %if.then83
  %60 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %action_type88 = getelementptr inbounds %struct.translation_st, ptr %60, i32 0, i32 0
  %61 = load i32, ptr %action_type88, align 8, !tbaa !23
  %62 = load ptr, ptr %item, align 8, !tbaa !4
  %action_type89 = getelementptr inbounds %struct.translation_st, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %action_type89, align 8, !tbaa !23
  %cmp90 = icmp ne i32 %61, %63
  br i1 %cmp90, label %if.then101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true87, %if.then83
  %64 = load ptr, ptr %item, align 8, !tbaa !4
  %param_key92 = getelementptr inbounds %struct.translation_st, ptr %64, i32 0, i32 7
  %65 = load ptr, ptr %param_key92, align 8, !tbaa !34
  %cmp93 = icmp ne ptr %65, null
  br i1 %cmp93, label %land.lhs.true95, label %if.end102

land.lhs.true95:                                  ; preds = %lor.lhs.false
  %66 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %param_key96 = getelementptr inbounds %struct.translation_st, ptr %66, i32 0, i32 7
  %67 = load ptr, ptr %param_key96, align 8, !tbaa !34
  %68 = load ptr, ptr %item, align 8, !tbaa !4
  %param_key97 = getelementptr inbounds %struct.translation_st, ptr %68, i32 0, i32 7
  %69 = load ptr, ptr %param_key97, align 8, !tbaa !34
  %call98 = call i32 @OPENSSL_strcasecmp(ptr noundef %67, ptr noundef %69)
  %cmp99 = icmp ne i32 %call98, 0
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %land.lhs.true95, %land.lhs.true87
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end102:                                        ; preds = %land.lhs.true95, %lor.lhs.false
  br label %if.end104

if.else103:                                       ; preds = %if.else80
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

if.end104:                                        ; preds = %if.end102
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %cleanup.cont
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end39
  %70 = load ptr, ptr %item, align 8, !tbaa !4
  store ptr %70, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %if.end106, %if.else103, %if.then101, %cleanup, %if.then38, %if.then29, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %item) #8
  %cleanup.dest108 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest108, label %cleanup109 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup107
  %71 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %71, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %for.end, %cleanup107
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %72 = load ptr, ptr %retval, align 8
  ret ptr %72
}

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @fix_distid_len(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_fixup_args(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  store i32 0, ptr %ret, align 4, !tbaa !8
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp2 = icmp eq i32 %5, 5
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz = getelementptr inbounds %struct.translation_ctx_st, ptr %8, i32 0, i32 7
  %9 = load i64, ptr %sz, align 8, !tbaa !45
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %p2, align 8, !tbaa !28
  store i64 %9, ptr %11, align 8, !tbaa !36
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %lor.lhs.false
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_dh_kdf_type(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @fix_kdf_type(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @fix_dh_kdf_type.kdf_type_map)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_md(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @fix_cipher_md(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @get_md_name, ptr noundef @get_md_by_name)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_oid(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %7 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp3 = icmp eq i32 %7, 8
  br i1 %cmp3, label %land.lhs.true4, label %if.end12

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type5 = getelementptr inbounds %struct.translation_ctx_st, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %action_type5, align 8, !tbaa !24
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %land.lhs.true4, %land.lhs.true
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 10
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name_buf, i64 0, i64 0
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %p2, align 8, !tbaa !28
  %call8 = call i32 @OBJ_obj2txt(ptr noundef %arraydecay, i32 noundef 50, ptr noundef %12, i32 noundef 0)
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf9 = getelementptr inbounds %struct.translation_ctx_st, ptr %13, i32 0, i32 10
  %arraydecay10 = getelementptr inbounds [50 x i8], ptr %name_buf9, i64 0, i64 0
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p211 = getelementptr inbounds %struct.translation_ctx_st, ptr %14, i32 0, i32 6
  store ptr %arraydecay10, ptr %p211, align 8, !tbaa !28
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %15, i32 0, i32 5
  store i32 0, ptr %p1, align 4, !tbaa !27
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %land.lhs.true4, %lor.lhs.false
  %16 = load i32, ptr %state.addr, align 4, !tbaa !31
  %17 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call13 = call i32 @default_fixup_args(i32 noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %call13, ptr %ret, align 4, !tbaa !8
  %cmp14 = icmp sle i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %19 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %20 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp17 = icmp eq i32 %20, 7
  br i1 %cmp17, label %land.lhs.true18, label %lor.lhs.false21

land.lhs.true18:                                  ; preds = %if.end16
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type19 = getelementptr inbounds %struct.translation_ctx_st, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %action_type19, align 8, !tbaa !24
  %cmp20 = icmp eq i32 %22, 2
  br i1 %cmp20, label %if.then26, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %land.lhs.true18, %if.end16
  %23 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp22 = icmp eq i32 %23, 2
  br i1 %cmp22, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %lor.lhs.false21
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type24 = getelementptr inbounds %struct.translation_ctx_st, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %action_type24, align 8, !tbaa !24
  %cmp25 = icmp eq i32 %25, 1
  br i1 %cmp25, label %if.then26, label %if.end30

if.then26:                                        ; preds = %land.lhs.true23, %land.lhs.true18
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p227 = getelementptr inbounds %struct.translation_ctx_st, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %p227, align 8, !tbaa !28
  %call28 = call ptr @OBJ_txt2obj(ptr noundef %27, i32 noundef 0)
  %28 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p229 = getelementptr inbounds %struct.translation_ctx_st, ptr %28, i32 0, i32 6
  store ptr %call28, ptr %p229, align 8, !tbaa !28
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true23, %lor.lhs.false21
  %29 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %29, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_dh_paramgen_type(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp1 = icmp ne i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp4 = icmp eq i32 %6, 4
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %p2, align 8, !tbaa !28
  %call6 = call i32 @atoi(ptr noundef %8) #9
  %call7 = call ptr @ossl_dh_gen_type_id2name(i32 noundef %call6)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p28 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 6
  store ptr %call7, ptr %p28, align 8, !tbaa !28
  %cmp9 = icmp eq ptr %call7, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then5
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1080, ptr noundef @__func__.fix_dh_paramgen_type)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 222, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p212 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %p212, align 8, !tbaa !28
  %call13 = call i64 @strlen(ptr noundef %11) #9
  %conv = trunc i64 %call13 to i32
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 5
  store i32 %conv, ptr %p1, align 4, !tbaa !27
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end3
  %13 = load i32, ptr %state.addr, align 4, !tbaa !31
  %14 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call15 = call i32 @default_fixup_args(i32 noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_dh_nid5114(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp1 = icmp ne i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end3
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %p1, align 4, !tbaa !27
  %call4 = call ptr @ossl_ffc_uid_to_dh_named_group(i32 noundef %8)
  %call5 = call ptr @ossl_ffc_named_group_get_name(ptr noundef %call4)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 6
  store ptr %call5, ptr %p2, align 8, !tbaa !28
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1037, ptr noundef @__func__.fix_dh_nid5114)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 222, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p19 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 5
  store i32 0, ptr %p19, align 4, !tbaa !27
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end3
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p211 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %p211, align 8, !tbaa !28
  %cmp12 = icmp eq ptr %12, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %sw.bb10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p215 = getelementptr inbounds %struct.translation_ctx_st, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %p215, align 8, !tbaa !28
  %call16 = call i32 @atoi(ptr noundef %14) #9
  %call17 = call ptr @ossl_ffc_uid_to_dh_named_group(i32 noundef %call16)
  %call18 = call ptr @ossl_ffc_named_group_get_name(ptr noundef %call17)
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p219 = getelementptr inbounds %struct.translation_ctx_st, ptr %15, i32 0, i32 6
  store ptr %call18, ptr %p219, align 8, !tbaa !28
  %cmp20 = icmp eq ptr %call18, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end14
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1049, ptr noundef @__func__.fix_dh_nid5114)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 222, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p123 = getelementptr inbounds %struct.translation_ctx_st, ptr %16, i32 0, i32 5
  store i32 0, ptr %p123, align 4, !tbaa !27
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end22, %if.end8
  %17 = load i32, ptr %state.addr, align 4, !tbaa !31
  %18 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call24 = call i32 @default_fixup_args(i32 noundef %17, ptr noundef %18, ptr noundef %19)
  store i32 %call24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then21, %if.then13, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_dh_nid(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp1 = icmp ne i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %p1, align 4, !tbaa !27
  %call6 = call ptr @ossl_ffc_uid_to_dh_named_group(i32 noundef %8)
  %call7 = call ptr @ossl_ffc_named_group_get_name(ptr noundef %call6)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 6
  store ptr %call7, ptr %p2, align 8, !tbaa !28
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1010, ptr noundef @__func__.fix_dh_nid)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 222, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p111 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 5
  store i32 0, ptr %p111, align 4, !tbaa !27
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end3
  %11 = load i32, ptr %state.addr, align 4, !tbaa !31
  %12 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call13 = call i32 @default_fixup_args(i32 noundef %11, ptr noundef %12, ptr noundef %13)
  store i32 %call13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_ec_param_enc(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp1 = icmp ne i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %p1, align 4, !tbaa !27
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then5
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 6
  store ptr @.str.81, ptr %p2, align 8, !tbaa !28
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then5
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p27 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 6
  store ptr @.str.82, ptr %p27, align 8, !tbaa !28
  br label %sw.epilog

sw.default:                                       ; preds = %if.then5
  store i32 -2, ptr %ret, align 4, !tbaa !8
  br label %end

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p18 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 5
  store i32 0, ptr %p18, align 4, !tbaa !27
  br label %if.end9

if.end9:                                          ; preds = %sw.epilog, %if.end3
  %12 = load i32, ptr %state.addr, align 4, !tbaa !31
  %13 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call10 = call i32 @default_fixup_args(i32 noundef %12, ptr noundef %13, ptr noundef %14)
  store i32 %call10, ptr %ret, align 4, !tbaa !8
  %cmp11 = icmp sle i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %15 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %16 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp14 = icmp eq i32 %16, 7
  br i1 %cmp14, label %if.then15, label %if.end31

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p216 = getelementptr inbounds %struct.translation_ctx_st, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %p216, align 8, !tbaa !28
  %call17 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.81) #9
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then15
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p120 = getelementptr inbounds %struct.translation_ctx_st, ptr %19, i32 0, i32 5
  store i32 0, ptr %p120, align 4, !tbaa !27
  br label %if.end29

if.else:                                          ; preds = %if.then15
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p221 = getelementptr inbounds %struct.translation_ctx_st, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %p221, align 8, !tbaa !28
  %call22 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.82) #9
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p125 = getelementptr inbounds %struct.translation_ctx_st, ptr %22, i32 0, i32 5
  store i32 1, ptr %p125, align 4, !tbaa !27
  br label %if.end28

if.else26:                                        ; preds = %if.else
  store i32 -2, ptr %ret, align 4, !tbaa !8
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p127 = getelementptr inbounds %struct.translation_ctx_st, ptr %23, i32 0, i32 5
  store i32 -2, ptr %p127, align 4, !tbaa !27
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then19
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p230 = getelementptr inbounds %struct.translation_ctx_st, ptr %24, i32 0, i32 6
  store ptr null, ptr %p230, align 8, !tbaa !28
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end13
  br label %end

end:                                              ; preds = %if.end31, %sw.default
  %25 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp32 = icmp eq i32 %25, -2
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1133, ptr noundef @__func__.fix_ec_param_enc)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %end
  %26 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then12, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_ec_paramgen_curve_nid(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #8
  store ptr null, ptr %p2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp1 = icmp ne i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %p1, align 4, !tbaa !27
  %call6 = call ptr @OBJ_nid2sn(i32 noundef %8)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p27 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 6
  store ptr %call6, ptr %p27, align 8, !tbaa !28
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p18 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 5
  store i32 0, ptr %p18, align 4, !tbaa !27
  br label %if.end13

if.else:                                          ; preds = %if.end3
  %11 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp9 = icmp eq i32 %11, 7
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 10
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name_buf, i64 0, i64 0
  store ptr %arraydecay, ptr %p2, align 8, !tbaa !4
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p211 = getelementptr inbounds %struct.translation_ctx_st, ptr %13, i32 0, i32 6
  store ptr %p2, ptr %p211, align 8, !tbaa !28
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz = getelementptr inbounds %struct.translation_ctx_st, ptr %14, i32 0, i32 7
  store i64 50, ptr %sz, align 8, !tbaa !45
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  %15 = load i32, ptr %state.addr, align 4, !tbaa !31
  %16 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call14 = call i32 @default_fixup_args(i32 noundef %15, ptr noundef %16, ptr noundef %17)
  store i32 %call14, ptr %ret, align 4, !tbaa !8
  %cmp15 = icmp sle i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %18 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %19 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp18 = icmp eq i32 %19, 7
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end17
  %20 = load ptr, ptr %p2, align 8, !tbaa !4
  %call20 = call i32 @OBJ_sn2nid(ptr noundef %20)
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p121 = getelementptr inbounds %struct.translation_ctx_st, ptr %21, i32 0, i32 5
  store i32 %call20, ptr %p121, align 4, !tbaa !27
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p222 = getelementptr inbounds %struct.translation_ctx_st, ptr %22, i32 0, i32 6
  store ptr null, ptr %p222, align 8, !tbaa !28
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %23 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then16, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #8
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_ecdh_cofactor(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 0, ptr %ret, align 4, !tbaa !8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp1 = icmp eq i32 %2, 0
  %conv = zext i1 %cmp1 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %p1, align 4, !tbaa !27
  %cmp5 = icmp eq i32 %4, -2
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type8 = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 1
  store i32 1, ptr %action_type8, align 8, !tbaa !24
  br label %if.end10

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type9 = getelementptr inbounds %struct.translation_ctx_st, ptr %6, i32 0, i32 1
  store i32 2, ptr %action_type9, align 8, !tbaa !24
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  br label %if.end29

if.else11:                                        ; preds = %entry
  %7 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp12 = icmp eq i32 %7, 4
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else11
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type15 = getelementptr inbounds %struct.translation_ctx_st, ptr %8, i32 0, i32 1
  store i32 2, ptr %action_type15, align 8, !tbaa !24
  br label %if.end28

if.else16:                                        ; preds = %if.else11
  %9 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp17 = icmp eq i32 %9, 7
  br i1 %cmp17, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.else16
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type20 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %action_type20, align 8, !tbaa !24
  %cmp21 = icmp ne i32 %11, 0
  %conv22 = zext i1 %cmp21 to i32
  %cmp23 = icmp ne i32 %conv22, 0
  br i1 %cmp23, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.then19
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.else16
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then14
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end10
  %12 = load i32, ptr %state.addr, align 4, !tbaa !31
  %13 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %12, ptr noundef %13, ptr noundef %14)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp30 = icmp sle i32 %call, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  %15 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %16 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp34 = icmp eq i32 %16, 1
  br i1 %cmp34, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %if.end33
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type36 = getelementptr inbounds %struct.translation_ctx_st, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %action_type36, align 8, !tbaa !24
  %cmp37 = icmp eq i32 %18, 2
  br i1 %cmp37, label %if.then39, label %if.end48

if.then39:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p140 = getelementptr inbounds %struct.translation_ctx_st, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %p140, align 4, !tbaa !27
  %cmp41 = icmp slt i32 %20, -1
  br i1 %cmp41, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then39
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p143 = getelementptr inbounds %struct.translation_ctx_st, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %p143, align 4, !tbaa !27
  %cmp44 = icmp sgt i32 %22, 1
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false, %if.then39
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %land.lhs.true, %if.end33
  %23 = load i32, ptr %state.addr, align 4, !tbaa !31
  %24 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call49 = call i32 @default_fixup_args(i32 noundef %23, ptr noundef %24, ptr noundef %25)
  store i32 %call49, ptr %ret, align 4, !tbaa !8
  %cmp50 = icmp sle i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  %26 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %27 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp54 = icmp eq i32 %27, 2
  br i1 %cmp54, label %land.lhs.true56, label %if.else71

land.lhs.true56:                                  ; preds = %if.end53
  %28 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type57 = getelementptr inbounds %struct.translation_ctx_st, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %action_type57, align 8, !tbaa !24
  %cmp58 = icmp eq i32 %29, 1
  br i1 %cmp58, label %if.then60, label %if.else71

if.then60:                                        ; preds = %land.lhs.true56
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p161 = getelementptr inbounds %struct.translation_ctx_st, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %p161, align 4, !tbaa !27
  %cmp62 = icmp slt i32 %31, 0
  br i1 %cmp62, label %if.then68, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.then60
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p165 = getelementptr inbounds %struct.translation_ctx_st, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %p165, align 4, !tbaa !27
  %cmp66 = icmp sgt i32 %33, 1
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %lor.lhs.false64, %if.then60
  store i32 -1, ptr %ret, align 4, !tbaa !8
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p169 = getelementptr inbounds %struct.translation_ctx_st, ptr %34, i32 0, i32 5
  store i32 -1, ptr %p169, align 4, !tbaa !27
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %lor.lhs.false64
  br label %if.end81

if.else71:                                        ; preds = %land.lhs.true56, %if.end53
  %35 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp72 = icmp eq i32 %35, 7
  br i1 %cmp72, label %land.lhs.true74, label %if.end80

land.lhs.true74:                                  ; preds = %if.else71
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type75 = getelementptr inbounds %struct.translation_ctx_st, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %action_type75, align 8, !tbaa !24
  %cmp76 = icmp eq i32 %37, 1
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %land.lhs.true74
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p179 = getelementptr inbounds %struct.translation_ctx_st, ptr %38, i32 0, i32 5
  store i32 -2, ptr %p179, align 4, !tbaa !27
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %land.lhs.true74, %if.else71
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end70
  %39 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.then52, %if.then46, %if.then32, %if.then25, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_ec_kdf_type(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @fix_kdf_type(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @fix_ec_kdf_type.kdf_type_map)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_rsa_padding_mode(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.ossl_param_st, align 8
  %i = alloca i64, align 8
  %i67 = alloca i64, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup104

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %p2, align 8, !tbaa !28
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %orig_p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 9
  store ptr %8, ptr %orig_p2, align 8, !tbaa !54
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 10
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name_buf, i64 0, i64 0
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 6
  store ptr %arraydecay, ptr %p24, align 8, !tbaa !28
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 5
  store i32 50, ptr %p1, align 4, !tbaa !27
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true, %if.end
  %13 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %land.lhs.true6, label %if.else11

land.lhs.true6:                                   ; preds = %if.else
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type7 = getelementptr inbounds %struct.translation_ctx_st, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %action_type7, align 8, !tbaa !24
  %cmp8 = icmp eq i32 %15, 2
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %land.lhs.true6
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.translation_ctx_st, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %params, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds %struct.ossl_param_st, ptr %17, i64 0
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp) #8
  %18 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %param_key = getelementptr inbounds %struct.translation_st, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %param_key, align 8, !tbaa !34
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p110 = getelementptr inbounds %struct.translation_ctx_st, ptr %20, i32 0, i32 5
  call void @OSSL_PARAM_construct_int(ptr sret(%struct.ossl_param_st) align 8 %tmp, ptr noundef %19, ptr noundef %p110)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %tmp, i64 40, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp) #8
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup104

if.else11:                                        ; preds = %land.lhs.true6, %if.else
  %21 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp12 = icmp eq i32 %21, 8
  br i1 %cmp12, label %land.lhs.true13, label %if.end46

land.lhs.true13:                                  ; preds = %if.else11
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type14 = getelementptr inbounds %struct.translation_ctx_st, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %action_type14, align 8, !tbaa !24
  %cmp15 = icmp eq i32 %23, 1
  br i1 %cmp15, label %if.then16, label %if.end46

if.then16:                                        ; preds = %land.lhs.true13
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params17 = getelementptr inbounds %struct.translation_ctx_st, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %params17, align 8, !tbaa !30
  %data_type = getelementptr inbounds %struct.ossl_param_st, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %data_type, align 8, !tbaa !46
  switch i32 %26, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.then16
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params18 = getelementptr inbounds %struct.translation_ctx_st, ptr %27, i32 0, i32 8
  %28 = load ptr, ptr %params18, align 8, !tbaa !30
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p119 = getelementptr inbounds %struct.translation_ctx_st, ptr %29, i32 0, i32 5
  %call20 = call i32 @OSSL_PARAM_get_int(ptr noundef %28, ptr noundef %p119)
  store i32 %call20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %if.then16
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params22 = getelementptr inbounds %struct.translation_ctx_st, ptr %30, i32 0, i32 8
  %31 = load ptr, ptr %params22, align 8, !tbaa !30
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p123 = getelementptr inbounds %struct.translation_ctx_st, ptr %32, i32 0, i32 5
  %call24 = call i32 @OSSL_PARAM_get_uint(ptr noundef %31, ptr noundef %p123)
  store i32 %call24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.then16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %33 = load i64, ptr %i, align 8, !tbaa !36
  %cmp25 = icmp ult i64 %33, 7
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p126 = getelementptr inbounds %struct.translation_ctx_st, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %p126, align 4, !tbaa !27
  %36 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx27 = getelementptr inbounds [7 x %struct.ossl_item_st], ptr @fix_rsa_padding_mode.str_value_map, i64 0, i64 %36
  %id = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx27, i32 0, i32 0
  %37 = load i32, ptr %id, align 16, !tbaa !55
  %cmp28 = icmp eq i32 %35, %37
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  br label %for.end

if.end30:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %38 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %38, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %if.then29, %for.cond
  %39 = load i64, ptr %i, align 8, !tbaa !36
  %cmp31 = icmp eq i64 %39, 7
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %for.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1322, ptr noundef @__func__.fix_rsa_padding_mode)
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type33 = getelementptr inbounds %struct.translation_ctx_st, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %action_type33, align 8, !tbaa !24
  %42 = load i32, ptr %state.addr, align 4, !tbaa !31
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p134 = getelementptr inbounds %struct.translation_ctx_st, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %p134, align 4, !tbaa !27
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, ptr noundef @.str.90, i32 noundef %41, i32 noundef %42, i32 noundef %44)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %for.end
  %45 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx36 = getelementptr inbounds [7 x %struct.ossl_item_st], ptr @fix_rsa_padding_mode.str_value_map, i64 0, i64 %45
  %ptr = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx36, i32 0, i32 1
  %46 = load ptr, ptr %ptr, align 8, !tbaa !58
  %cmp37 = icmp eq ptr %46, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1332, ptr noundef @__func__.fix_rsa_padding_mode)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %47 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx40 = getelementptr inbounds [7 x %struct.ossl_item_st], ptr @fix_rsa_padding_mode.str_value_map, i64 0, i64 %47
  %ptr41 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx40, i32 0, i32 1
  %48 = load ptr, ptr %ptr41, align 8, !tbaa !58
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p242 = getelementptr inbounds %struct.translation_ctx_st, ptr %49, i32 0, i32 6
  store ptr %48, ptr %p242, align 8, !tbaa !28
  %50 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p243 = getelementptr inbounds %struct.translation_ctx_st, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %p243, align 8, !tbaa !28
  %call44 = call i64 @strlen(ptr noundef %51) #9
  %conv = trunc i64 %call44 to i32
  %52 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p145 = getelementptr inbounds %struct.translation_ctx_st, ptr %52, i32 0, i32 5
  store i32 %conv, ptr %p145, align 4, !tbaa !27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then32, %sw.bb21, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup104 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end46

if.end46:                                         ; preds = %cleanup.cont, %land.lhs.true13, %if.else11
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then3
  %53 = load i32, ptr %state.addr, align 4, !tbaa !31
  %54 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call49 = call i32 @default_fixup_args(i32 noundef %53, ptr noundef %54, ptr noundef %55)
  store i32 %call49, ptr %ret, align 4, !tbaa !8
  %cmp50 = icmp sle i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  %56 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup104

if.end53:                                         ; preds = %if.end48
  %57 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type54 = getelementptr inbounds %struct.translation_ctx_st, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %action_type54, align 8, !tbaa !24
  %cmp55 = icmp eq i32 %58, 2
  br i1 %cmp55, label %land.lhs.true57, label %lor.lhs.false

land.lhs.true57:                                  ; preds = %if.end53
  %59 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp58 = icmp eq i32 %59, 7
  br i1 %cmp58, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true57, %if.end53
  %60 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type60 = getelementptr inbounds %struct.translation_ctx_st, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %action_type60, align 8, !tbaa !24
  %cmp61 = icmp eq i32 %61, 1
  br i1 %cmp61, label %land.lhs.true63, label %if.end103

land.lhs.true63:                                  ; preds = %lor.lhs.false
  %62 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp64 = icmp eq i32 %62, 2
  br i1 %cmp64, label %if.then66, label %if.end103

if.then66:                                        ; preds = %land.lhs.true63, %land.lhs.true57
  call void @llvm.lifetime.start.p0(i64 8, ptr %i67) #8
  store i64 0, ptr %i67, align 8, !tbaa !36
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc80, %if.then66
  %63 = load i64, ptr %i67, align 8, !tbaa !36
  %cmp69 = icmp ult i64 %63, 7
  br i1 %cmp69, label %for.body71, label %for.end82

for.body71:                                       ; preds = %for.cond68
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p272 = getelementptr inbounds %struct.translation_ctx_st, ptr %64, i32 0, i32 6
  %65 = load ptr, ptr %p272, align 8, !tbaa !28
  %66 = load i64, ptr %i67, align 8, !tbaa !36
  %arrayidx73 = getelementptr inbounds [7 x %struct.ossl_item_st], ptr @fix_rsa_padding_mode.str_value_map, i64 0, i64 %66
  %ptr74 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx73, i32 0, i32 1
  %67 = load ptr, ptr %ptr74, align 8, !tbaa !58
  %call75 = call i32 @strcmp(ptr noundef %65, ptr noundef %67) #9
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %for.body71
  br label %for.end82

if.end79:                                         ; preds = %for.body71
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %68 = load i64, ptr %i67, align 8, !tbaa !36
  %inc81 = add i64 %68, 1
  store i64 %inc81, ptr %i67, align 8, !tbaa !36
  br label %for.cond68, !llvm.loop !59

for.end82:                                        ; preds = %if.then78, %for.cond68
  %69 = load i64, ptr %i67, align 8, !tbaa !36
  %cmp83 = icmp eq i64 %69, 7
  br i1 %cmp83, label %if.then85, label %if.else89

if.then85:                                        ; preds = %for.end82
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1352, ptr noundef @__func__.fix_rsa_padding_mode)
  %70 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type86 = getelementptr inbounds %struct.translation_ctx_st, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %action_type86, align 8, !tbaa !24
  %72 = load i32, ptr %state.addr, align 4, !tbaa !31
  %73 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p187 = getelementptr inbounds %struct.translation_ctx_st, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %p187, align 4, !tbaa !27
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, ptr noundef @.str.91, i32 noundef %71, i32 noundef %72, i32 noundef %74)
  store i32 -2, ptr %ret, align 4, !tbaa !8
  %75 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p188 = getelementptr inbounds %struct.translation_ctx_st, ptr %75, i32 0, i32 5
  store i32 -2, ptr %p188, align 4, !tbaa !27
  br label %if.end101

if.else89:                                        ; preds = %for.end82
  %76 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp90 = icmp eq i32 %76, 2
  br i1 %cmp90, label %if.then92, label %if.else96

if.then92:                                        ; preds = %if.else89
  %77 = load i64, ptr %i67, align 8, !tbaa !36
  %arrayidx93 = getelementptr inbounds [7 x %struct.ossl_item_st], ptr @fix_rsa_padding_mode.str_value_map, i64 0, i64 %77
  %id94 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx93, i32 0, i32 0
  %78 = load i32, ptr %id94, align 16, !tbaa !55
  %79 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %orig_p295 = getelementptr inbounds %struct.translation_ctx_st, ptr %79, i32 0, i32 9
  %80 = load ptr, ptr %orig_p295, align 8, !tbaa !54
  store i32 %78, ptr %80, align 4, !tbaa !8
  br label %if.end100

if.else96:                                        ; preds = %if.else89
  %81 = load i64, ptr %i67, align 8, !tbaa !36
  %arrayidx97 = getelementptr inbounds [7 x %struct.ossl_item_st], ptr @fix_rsa_padding_mode.str_value_map, i64 0, i64 %81
  %id98 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx97, i32 0, i32 0
  %82 = load i32, ptr %id98, align 16, !tbaa !55
  %83 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p199 = getelementptr inbounds %struct.translation_ctx_st, ptr %83, i32 0, i32 5
  store i32 %82, ptr %p199, align 4, !tbaa !27
  br label %if.end100

if.end100:                                        ; preds = %if.else96, %if.then92
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then85
  %84 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2102 = getelementptr inbounds %struct.translation_ctx_st, ptr %84, i32 0, i32 6
  store ptr null, ptr %p2102, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %i67) #8
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %land.lhs.true63, %lor.lhs.false
  %85 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %85, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup104

cleanup104:                                       ; preds = %if.end103, %if.then52, %cleanup, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_rsa_pss_saltlen(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %i60 = alloca i64, align 8
  %val = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %p2, align 8, !tbaa !28
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %orig_p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 9
  store ptr %8, ptr %orig_p2, align 8, !tbaa !54
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 10
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name_buf, i64 0, i64 0
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 6
  store ptr %arraydecay, ptr %p24, align 8, !tbaa !28
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 5
  store i32 50, ptr %p1, align 4, !tbaa !27
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true, %if.end
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type5 = getelementptr inbounds %struct.translation_ctx_st, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %action_type5, align 8, !tbaa !24
  %cmp6 = icmp eq i32 %14, 2
  br i1 %cmp6, label %land.lhs.true7, label %lor.lhs.false

land.lhs.true7:                                   ; preds = %if.else
  %15 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp8 = icmp eq i32 %15, 1
  br i1 %cmp8, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7, %if.else
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type9 = getelementptr inbounds %struct.translation_ctx_st, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %action_type9, align 8, !tbaa !24
  %cmp10 = icmp eq i32 %17, 1
  br i1 %cmp10, label %land.lhs.true11, label %if.end39

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %18 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp12 = icmp eq i32 %18, 8
  br i1 %cmp12, label %if.then13, label %if.end39

if.then13:                                        ; preds = %land.lhs.true11, %land.lhs.true7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %19 = load i64, ptr %i, align 8, !tbaa !36
  %cmp14 = icmp ult i64 %19, 3
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p115 = getelementptr inbounds %struct.translation_ctx_st, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %p115, align 4, !tbaa !27
  %22 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_rsa_pss_saltlen.str_value_map, i64 0, i64 %22
  %id = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx, i32 0, i32 0
  %23 = load i32, ptr %id, align 16, !tbaa !55
  %cmp16 = icmp eq i32 %21, %23
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  br label %for.end

if.end18:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %24 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %if.then17, %for.cond
  %25 = load i64, ptr %i, align 8, !tbaa !36
  %cmp19 = icmp eq i64 %25, 3
  br i1 %cmp19, label %if.then20, label %if.else25

if.then20:                                        ; preds = %for.end
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf21 = getelementptr inbounds %struct.translation_ctx_st, ptr %26, i32 0, i32 10
  %arraydecay22 = getelementptr inbounds [50 x i8], ptr %name_buf21, i64 0, i64 0
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p123 = getelementptr inbounds %struct.translation_ctx_st, ptr %27, i32 0, i32 5
  %28 = load i32, ptr %p123, align 4, !tbaa !27
  %call24 = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %arraydecay22, i64 noundef 50, ptr noundef @.str.94, i32 noundef %28)
  br label %if.end32

if.else25:                                        ; preds = %for.end
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf26 = getelementptr inbounds %struct.translation_ctx_st, ptr %29, i32 0, i32 10
  %arraydecay27 = getelementptr inbounds [50 x i8], ptr %name_buf26, i64 0, i64 0
  %30 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx28 = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_rsa_pss_saltlen.str_value_map, i64 0, i64 %30
  %ptr = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx28, i32 0, i32 1
  %31 = load ptr, ptr %ptr, align 8, !tbaa !58
  %call29 = call ptr @strncpy(ptr noundef %arraydecay27, ptr noundef %31, i64 noundef 49) #8
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf30 = getelementptr inbounds %struct.translation_ctx_st, ptr %32, i32 0, i32 10
  %arrayidx31 = getelementptr inbounds [50 x i8], ptr %name_buf30, i64 0, i64 49
  store i8 0, ptr %arrayidx31, align 1, !tbaa !31
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %if.then20
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf33 = getelementptr inbounds %struct.translation_ctx_st, ptr %33, i32 0, i32 10
  %arraydecay34 = getelementptr inbounds [50 x i8], ptr %name_buf33, i64 0, i64 0
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p235 = getelementptr inbounds %struct.translation_ctx_st, ptr %34, i32 0, i32 6
  store ptr %arraydecay34, ptr %p235, align 8, !tbaa !28
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p236 = getelementptr inbounds %struct.translation_ctx_st, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %p236, align 8, !tbaa !28
  %call37 = call i64 @strlen(ptr noundef %36) #9
  %conv = trunc i64 %call37 to i32
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p138 = getelementptr inbounds %struct.translation_ctx_st, ptr %37, i32 0, i32 5
  store i32 %conv, ptr %p138, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  br label %if.end39

if.end39:                                         ; preds = %if.end32, %land.lhs.true11, %lor.lhs.false
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then3
  %38 = load i32, ptr %state.addr, align 4, !tbaa !31
  %39 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call41 = call i32 @default_fixup_args(i32 noundef %38, ptr noundef %39, ptr noundef %40)
  store i32 %call41, ptr %ret, align 4, !tbaa !8
  %cmp42 = icmp sle i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end40
  %41 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type46 = getelementptr inbounds %struct.translation_ctx_st, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %action_type46, align 8, !tbaa !24
  %cmp47 = icmp eq i32 %43, 2
  br i1 %cmp47, label %land.lhs.true49, label %lor.lhs.false52

land.lhs.true49:                                  ; preds = %if.end45
  %44 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp50 = icmp eq i32 %44, 7
  br i1 %cmp50, label %if.then59, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true49, %if.end45
  %45 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type53 = getelementptr inbounds %struct.translation_ctx_st, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %action_type53, align 8, !tbaa !24
  %cmp54 = icmp eq i32 %46, 1
  br i1 %cmp54, label %land.lhs.true56, label %if.end90

land.lhs.true56:                                  ; preds = %lor.lhs.false52
  %47 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp57 = icmp eq i32 %47, 2
  br i1 %cmp57, label %if.then59, label %if.end90

if.then59:                                        ; preds = %land.lhs.true56, %land.lhs.true49
  call void @llvm.lifetime.start.p0(i64 8, ptr %i60) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #8
  store i64 0, ptr %i60, align 8, !tbaa !36
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc73, %if.then59
  %48 = load i64, ptr %i60, align 8, !tbaa !36
  %cmp62 = icmp ult i64 %48, 3
  br i1 %cmp62, label %for.body64, label %for.end75

for.body64:                                       ; preds = %for.cond61
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p265 = getelementptr inbounds %struct.translation_ctx_st, ptr %49, i32 0, i32 6
  %50 = load ptr, ptr %p265, align 8, !tbaa !28
  %51 = load i64, ptr %i60, align 8, !tbaa !36
  %arrayidx66 = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_rsa_pss_saltlen.str_value_map, i64 0, i64 %51
  %ptr67 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx66, i32 0, i32 1
  %52 = load ptr, ptr %ptr67, align 8, !tbaa !58
  %call68 = call i32 @strcmp(ptr noundef %50, ptr noundef %52) #9
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.body64
  br label %for.end75

if.end72:                                         ; preds = %for.body64
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %53 = load i64, ptr %i60, align 8, !tbaa !36
  %inc74 = add i64 %53, 1
  store i64 %inc74, ptr %i60, align 8, !tbaa !36
  br label %for.cond61, !llvm.loop !61

for.end75:                                        ; preds = %if.then71, %for.cond61
  %54 = load i64, ptr %i60, align 8, !tbaa !36
  %cmp76 = icmp eq i64 %54, 3
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end75
  %55 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p278 = getelementptr inbounds %struct.translation_ctx_st, ptr %55, i32 0, i32 6
  %56 = load ptr, ptr %p278, align 8, !tbaa !28
  %call79 = call i32 @atoi(ptr noundef %56) #9
  br label %cond.end

cond.false:                                       ; preds = %for.end75
  %57 = load i64, ptr %i60, align 8, !tbaa !36
  %arrayidx80 = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_rsa_pss_saltlen.str_value_map, i64 0, i64 %57
  %id81 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx80, i32 0, i32 0
  %58 = load i32, ptr %id81, align 16, !tbaa !55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call79, %cond.true ], [ %58, %cond.false ]
  store i32 %cond, ptr %val, align 4, !tbaa !8
  %59 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp82 = icmp eq i32 %59, 2
  br i1 %cmp82, label %if.then84, label %if.else86

if.then84:                                        ; preds = %cond.end
  %60 = load i32, ptr %val, align 4, !tbaa !8
  %61 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %orig_p285 = getelementptr inbounds %struct.translation_ctx_st, ptr %61, i32 0, i32 9
  %62 = load ptr, ptr %orig_p285, align 8, !tbaa !54
  store i32 %60, ptr %62, align 4, !tbaa !8
  br label %if.end88

if.else86:                                        ; preds = %cond.end
  %63 = load i32, ptr %val, align 4, !tbaa !8
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p187 = getelementptr inbounds %struct.translation_ctx_st, ptr %64, i32 0, i32 5
  store i32 %63, ptr %p187, align 4, !tbaa !27
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then84
  %65 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p289 = getelementptr inbounds %struct.translation_ctx_st, ptr %65, i32 0, i32 6
  store ptr null, ptr %p289, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i60) #8
  br label %if.end90

if.end90:                                         ; preds = %if.end88, %land.lhs.true56, %lor.lhs.false52
  %66 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %66, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then44, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_hkdf_mode(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %i39 = alloca i64, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type3 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %action_type3, align 8, !tbaa !24
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end19

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %9 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp6 = icmp eq i32 %9, 8
  br i1 %cmp6, label %if.then7, label %if.end19

if.then7:                                         ; preds = %land.lhs.true5, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %10 = load i64, ptr %i, align 8, !tbaa !36
  %cmp8 = icmp ult i64 %10, 3
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %p1, align 4, !tbaa !27
  %13 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_hkdf_mode.str_value_map, i64 0, i64 %13
  %id = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx, i32 0, i32 0
  %14 = load i32, ptr %id, align 16, !tbaa !55
  %cmp9 = icmp eq i32 %12, %14
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %15 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %if.then10, %for.cond
  %16 = load i64, ptr %i, align 8, !tbaa !36
  %cmp12 = icmp eq i64 %16, 3
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %17 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx15 = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_hkdf_mode.str_value_map, i64 0, i64 %17
  %ptr = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx15, i32 0, i32 1
  %18 = load ptr, ptr %ptr, align 8, !tbaa !58
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %19, i32 0, i32 6
  store ptr %18, ptr %p2, align 8, !tbaa !28
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p216 = getelementptr inbounds %struct.translation_ctx_st, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %p216, align 8, !tbaa !28
  %call17 = call i64 @strlen(ptr noundef %21) #9
  %conv = trunc i64 %call17 to i32
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p118 = getelementptr inbounds %struct.translation_ctx_st, ptr %22, i32 0, i32 5
  store i32 %conv, ptr %p118, align 4, !tbaa !27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup73 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end19

if.end19:                                         ; preds = %cleanup.cont, %land.lhs.true5, %lor.lhs.false
  %23 = load i32, ptr %state.addr, align 4, !tbaa !31
  %24 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call20 = call i32 @default_fixup_args(i32 noundef %23, ptr noundef %24, ptr noundef %25)
  store i32 %call20, ptr %ret, align 4, !tbaa !8
  %cmp21 = icmp sle i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %26 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

if.end24:                                         ; preds = %if.end19
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type25 = getelementptr inbounds %struct.translation_ctx_st, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %action_type25, align 8, !tbaa !24
  %cmp26 = icmp eq i32 %28, 2
  br i1 %cmp26, label %land.lhs.true28, label %lor.lhs.false31

land.lhs.true28:                                  ; preds = %if.end24
  %29 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp29 = icmp eq i32 %29, 7
  br i1 %cmp29, label %if.then38, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true28, %if.end24
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type32 = getelementptr inbounds %struct.translation_ctx_st, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %action_type32, align 8, !tbaa !24
  %cmp33 = icmp eq i32 %31, 1
  br i1 %cmp33, label %land.lhs.true35, label %if.end72

land.lhs.true35:                                  ; preds = %lor.lhs.false31
  %32 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp36 = icmp eq i32 %32, 2
  br i1 %cmp36, label %if.then38, label %if.end72

if.then38:                                        ; preds = %land.lhs.true35, %land.lhs.true28
  call void @llvm.lifetime.start.p0(i64 8, ptr %i39) #8
  store i64 0, ptr %i39, align 8, !tbaa !36
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc52, %if.then38
  %33 = load i64, ptr %i39, align 8, !tbaa !36
  %cmp41 = icmp ult i64 %33, 3
  br i1 %cmp41, label %for.body43, label %for.end54

for.body43:                                       ; preds = %for.cond40
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p244 = getelementptr inbounds %struct.translation_ctx_st, ptr %34, i32 0, i32 6
  %35 = load ptr, ptr %p244, align 8, !tbaa !28
  %36 = load i64, ptr %i39, align 8, !tbaa !36
  %arrayidx45 = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_hkdf_mode.str_value_map, i64 0, i64 %36
  %ptr46 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx45, i32 0, i32 1
  %37 = load ptr, ptr %ptr46, align 8, !tbaa !58
  %call47 = call i32 @strcmp(ptr noundef %35, ptr noundef %37) #9
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.body43
  br label %for.end54

if.end51:                                         ; preds = %for.body43
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %38 = load i64, ptr %i39, align 8, !tbaa !36
  %inc53 = add i64 %38, 1
  store i64 %inc53, ptr %i39, align 8, !tbaa !36
  br label %for.cond40, !llvm.loop !63

for.end54:                                        ; preds = %if.then50, %for.cond40
  %39 = load i64, ptr %i39, align 8, !tbaa !36
  %cmp55 = icmp eq i64 %39, 3
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %for.end54
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

if.end58:                                         ; preds = %for.end54
  %40 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp59 = icmp eq i32 %40, 2
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end58
  %41 = load i64, ptr %i39, align 8, !tbaa !36
  %arrayidx62 = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_hkdf_mode.str_value_map, i64 0, i64 %41
  %id63 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx62, i32 0, i32 0
  %42 = load i32, ptr %id63, align 16, !tbaa !55
  store i32 %42, ptr %ret, align 4, !tbaa !8
  br label %if.end67

if.else:                                          ; preds = %if.end58
  %43 = load i64, ptr %i39, align 8, !tbaa !36
  %arrayidx64 = getelementptr inbounds [3 x %struct.ossl_item_st], ptr @fix_hkdf_mode.str_value_map, i64 0, i64 %43
  %id65 = getelementptr inbounds %struct.ossl_item_st, ptr %arrayidx64, i32 0, i32 0
  %44 = load i32, ptr %id65, align 16, !tbaa !55
  %45 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p166 = getelementptr inbounds %struct.translation_ctx_st, ptr %45, i32 0, i32 5
  store i32 %44, ptr %p166, align 4, !tbaa !27
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then61
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p268 = getelementptr inbounds %struct.translation_ctx_st, ptr %46, i32 0, i32 6
  store ptr null, ptr %p268, align 8, !tbaa !28
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %if.end67, %if.then57
  call void @llvm.lifetime.end.p0(i64 8, ptr %i39) #8
  %cleanup.dest70 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest70, label %cleanup73 [
    i32 0, label %cleanup.cont71
  ]

cleanup.cont71:                                   ; preds = %cleanup69
  br label %if.end72

if.end72:                                         ; preds = %cleanup.cont71, %land.lhs.true35, %lor.lhs.false31
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %if.end72, %cleanup69, %if.then23, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_cipher(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @fix_cipher_md(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef @get_cipher_name, ptr noundef @get_cipher_by_name)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_group_ecx(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %value = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #8
  store ptr null, ptr %value, align 8, !tbaa !4
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx = getelementptr inbounds %struct.translation_ctx_st, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pctx, align 8, !tbaa !29
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %operation, align 8, !tbaa !32
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx1 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pctx1, align 8, !tbaa !29
  %operation2 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %operation2, align 8, !tbaa !32
  %cmp3 = icmp eq i32 %6, 4
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false, %sw.bb
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 1
  store i32 0, ptr %action_type, align 8, !tbaa !24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.translation_ctx_st, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %params, align 8, !tbaa !30
  %call = call i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef %9, ptr noundef %value)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %sw.bb4
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx7 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pctx7, align 8, !tbaa !29
  %keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %keytype, align 8, !tbaa !64
  %13 = load ptr, ptr %value, align 8, !tbaa !4
  %call8 = call i32 @OPENSSL_strcasecmp(ptr noundef %12, ptr noundef %13)
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false6, %sw.bb4
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1995, ptr noundef @__func__.fix_group_ecx)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524550, ptr noundef null)
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %14, i32 0, i32 5
  store i32 0, ptr %p1, align 4, !tbaa !27
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false6
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p112 = getelementptr inbounds %struct.translation_ctx_st, ptr %15, i32 0, i32 5
  store i32 1, ptr %p112, align 4, !tbaa !27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end11, %if.then10, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_kdf_type(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx, ptr noundef %kdf_type_map) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %kdf_type_map.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %kdf_type_map, ptr %kdf_type_map.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 0, ptr %ret, align 4, !tbaa !8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then2, label %if.end15

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp3 = icmp eq i32 %6, 0
  %conv = zext i1 %cmp3 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %p1, align 4, !tbaa !27
  %cmp8 = icmp eq i32 %8, -2
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 10
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name_buf, i64 0, i64 0
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 6
  store ptr %arraydecay, ptr %p2, align 8, !tbaa !28
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p111 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 5
  store i32 50, ptr %p111, align 4, !tbaa !27
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type12 = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 1
  store i32 1, ptr %action_type12, align 8, !tbaa !24
  br label %if.end14

if.else:                                          ; preds = %if.end7
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type13 = getelementptr inbounds %struct.translation_ctx_st, ptr %13, i32 0, i32 1
  store i32 2, ptr %action_type13, align 8, !tbaa !24
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %14 = load i32, ptr %state.addr, align 4, !tbaa !31
  %15 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call16 = call i32 @default_check(i32 noundef %14, ptr noundef %15, ptr noundef %16)
  store i32 %call16, ptr %ret, align 4, !tbaa !8
  %cmp17 = icmp sle i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  %17 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %18 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp21 = icmp eq i32 %18, 1
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end20
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type23 = getelementptr inbounds %struct.translation_ctx_st, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %action_type23, align 8, !tbaa !24
  %cmp24 = icmp eq i32 %20, 2
  br i1 %cmp24, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end20
  %21 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp26 = icmp eq i32 %21, 8
  br i1 %cmp26, label %land.lhs.true28, label %if.end50

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type29 = getelementptr inbounds %struct.translation_ctx_st, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %action_type29, align 8, !tbaa !24
  %cmp30 = icmp eq i32 %23, 1
  br i1 %cmp30, label %if.then32, label %if.end50

if.then32:                                        ; preds = %land.lhs.true28, %land.lhs.true
  store i32 -2, ptr %ret, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then32
  %24 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %kdf_type_str = getelementptr inbounds %struct.kdf_type_map_st, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %kdf_type_str, align 8, !tbaa !65
  %cmp33 = icmp ne ptr %25, null
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p135 = getelementptr inbounds %struct.translation_ctx_st, ptr %26, i32 0, i32 5
  %27 = load i32, ptr %p135, align 4, !tbaa !27
  %28 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %kdf_type_num = getelementptr inbounds %struct.kdf_type_map_st, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %kdf_type_num, align 8, !tbaa !67
  %cmp36 = icmp eq i32 %27, %29
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.body
  %30 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %kdf_type_str39 = getelementptr inbounds %struct.kdf_type_map_st, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %kdf_type_str39, align 8, !tbaa !65
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p240 = getelementptr inbounds %struct.translation_ctx_st, ptr %32, i32 0, i32 6
  store ptr %31, ptr %p240, align 8, !tbaa !28
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %for.end

if.end41:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end41
  %33 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.kdf_type_map_st, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %if.then38, %for.cond
  %34 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp42 = icmp sle i32 %34, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.end
  br label %end

if.end45:                                         ; preds = %for.end
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p246 = getelementptr inbounds %struct.translation_ctx_st, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %p246, align 8, !tbaa !28
  %call47 = call i64 @strlen(ptr noundef %36) #9
  %conv48 = trunc i64 %call47 to i32
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p149 = getelementptr inbounds %struct.translation_ctx_st, ptr %37, i32 0, i32 5
  store i32 %conv48, ptr %p149, align 4, !tbaa !27
  br label %if.end50

if.end50:                                         ; preds = %if.end45, %land.lhs.true28, %lor.lhs.false
  %38 = load i32, ptr %state.addr, align 4, !tbaa !31
  %39 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call51 = call i32 @default_fixup_args(i32 noundef %38, ptr noundef %39, ptr noundef %40)
  store i32 %call51, ptr %ret, align 4, !tbaa !8
  %cmp52 = icmp sle i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end50
  %41 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %42 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp56 = icmp eq i32 %42, 2
  br i1 %cmp56, label %land.lhs.true58, label %lor.lhs.false62

land.lhs.true58:                                  ; preds = %if.end55
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type59 = getelementptr inbounds %struct.translation_ctx_st, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %action_type59, align 8, !tbaa !24
  %cmp60 = icmp eq i32 %44, 1
  br i1 %cmp60, label %if.then69, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %land.lhs.true58, %if.end55
  %45 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp63 = icmp eq i32 %45, 7
  br i1 %cmp63, label %land.lhs.true65, label %if.else89

land.lhs.true65:                                  ; preds = %lor.lhs.false62
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type66 = getelementptr inbounds %struct.translation_ctx_st, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %action_type66, align 8, !tbaa !24
  %cmp67 = icmp eq i32 %47, 2
  br i1 %cmp67, label %if.then69, label %if.else89

if.then69:                                        ; preds = %land.lhs.true65, %land.lhs.true58
  store i32 -1, ptr %ret, align 4, !tbaa !8
  %48 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p170 = getelementptr inbounds %struct.translation_ctx_st, ptr %48, i32 0, i32 5
  store i32 -1, ptr %p170, align 4, !tbaa !27
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc85, %if.then69
  %49 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %kdf_type_str72 = getelementptr inbounds %struct.kdf_type_map_st, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %kdf_type_str72, align 8, !tbaa !65
  %cmp73 = icmp ne ptr %50, null
  br i1 %cmp73, label %for.body75, label %for.end87

for.body75:                                       ; preds = %for.cond71
  %51 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p276 = getelementptr inbounds %struct.translation_ctx_st, ptr %51, i32 0, i32 6
  %52 = load ptr, ptr %p276, align 8, !tbaa !28
  %53 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %kdf_type_str77 = getelementptr inbounds %struct.kdf_type_map_st, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %kdf_type_str77, align 8, !tbaa !65
  %call78 = call i32 @OPENSSL_strcasecmp(ptr noundef %52, ptr noundef %54)
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end84

if.then81:                                        ; preds = %for.body75
  %55 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %kdf_type_num82 = getelementptr inbounds %struct.kdf_type_map_st, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %kdf_type_num82, align 8, !tbaa !67
  %57 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p183 = getelementptr inbounds %struct.translation_ctx_st, ptr %57, i32 0, i32 5
  store i32 %56, ptr %p183, align 4, !tbaa !27
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %for.end87

if.end84:                                         ; preds = %for.body75
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %58 = load ptr, ptr %kdf_type_map.addr, align 8, !tbaa !4
  %incdec.ptr86 = getelementptr inbounds %struct.kdf_type_map_st, ptr %58, i32 1
  store ptr %incdec.ptr86, ptr %kdf_type_map.addr, align 8, !tbaa !4
  br label %for.cond71, !llvm.loop !69

for.end87:                                        ; preds = %if.then81, %for.cond71
  %59 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p288 = getelementptr inbounds %struct.translation_ctx_st, ptr %59, i32 0, i32 6
  store ptr null, ptr %p288, align 8, !tbaa !28
  br label %if.end99

if.else89:                                        ; preds = %land.lhs.true65, %lor.lhs.false62
  %60 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp90 = icmp eq i32 %60, 7
  br i1 %cmp90, label %land.lhs.true92, label %if.end98

land.lhs.true92:                                  ; preds = %if.else89
  %61 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type93 = getelementptr inbounds %struct.translation_ctx_st, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %action_type93, align 8, !tbaa !24
  %cmp94 = icmp eq i32 %62, 1
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %land.lhs.true92
  %63 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p197 = getelementptr inbounds %struct.translation_ctx_st, ptr %63, i32 0, i32 5
  store i32 -2, ptr %p197, align 4, !tbaa !27
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %land.lhs.true92, %if.else89
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %for.end87
  br label %end

end:                                              ; preds = %if.end99, %if.then44
  %64 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %64, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then54, %if.then19, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_cipher_md(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx, ptr noundef %get_name, ptr noundef %get_algo_by_name) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %get_name.addr = alloca ptr, align 8
  %get_algo_by_name.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %get_name, ptr %get_name.addr, align 8, !tbaa !4
  store ptr %get_algo_by_name, ptr %get_algo_by_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 1, ptr %ret, align 4, !tbaa !8
  %0 = load i32, ptr %state.addr, align 4, !tbaa !31
  %1 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_check(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %action_type, align 8, !tbaa !24
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %p2, align 8, !tbaa !28
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %orig_p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 9
  store ptr %8, ptr %orig_p2, align 8, !tbaa !54
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %name_buf = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 10
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name_buf, i64 0, i64 0
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.translation_ctx_st, ptr %11, i32 0, i32 6
  store ptr %arraydecay, ptr %p24, align 8, !tbaa !28
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 5
  store i32 50, ptr %p1, align 4, !tbaa !27
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true, %if.end
  %13 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp5 = icmp eq i32 %13, 1
  br i1 %cmp5, label %land.lhs.true6, label %if.else20

land.lhs.true6:                                   ; preds = %if.else
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type7 = getelementptr inbounds %struct.translation_ctx_st, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %action_type7, align 8, !tbaa !24
  %cmp8 = icmp eq i32 %15, 2
  br i1 %cmp8, label %if.then9, label %if.else20

if.then9:                                         ; preds = %land.lhs.true6
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p210 = getelementptr inbounds %struct.translation_ctx_st, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %p210, align 8, !tbaa !28
  %cmp11 = icmp eq ptr %17, null
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p112 = getelementptr inbounds %struct.translation_ctx_st, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %p112, align 4, !tbaa !27
  %call13 = call ptr @OBJ_nid2sn(i32 noundef %19)
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  %20 = load ptr, ptr %get_name.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p214 = getelementptr inbounds %struct.translation_ctx_st, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %p214, align 8, !tbaa !28
  %call15 = call ptr %20(ptr noundef %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call13, %cond.true ], [ %call15, %cond.false ]
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p216 = getelementptr inbounds %struct.translation_ctx_st, ptr %23, i32 0, i32 6
  store ptr %cond, ptr %p216, align 8, !tbaa !28
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p217 = getelementptr inbounds %struct.translation_ctx_st, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %p217, align 8, !tbaa !28
  %call18 = call i64 @strlen(ptr noundef %25) #9
  %conv = trunc i64 %call18 to i32
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p119 = getelementptr inbounds %struct.translation_ctx_st, ptr %26, i32 0, i32 5
  store i32 %conv, ptr %p119, align 4, !tbaa !27
  br label %if.end43

if.else20:                                        ; preds = %land.lhs.true6, %if.else
  %27 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp21 = icmp eq i32 %27, 8
  br i1 %cmp21, label %land.lhs.true23, label %if.end42

land.lhs.true23:                                  ; preds = %if.else20
  %28 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type24 = getelementptr inbounds %struct.translation_ctx_st, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %action_type24, align 8, !tbaa !24
  %cmp25 = icmp eq i32 %29, 1
  br i1 %cmp25, label %if.then27, label %if.end42

if.then27:                                        ; preds = %land.lhs.true23
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p228 = getelementptr inbounds %struct.translation_ctx_st, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %p228, align 8, !tbaa !28
  %cmp29 = icmp eq ptr %31, null
  br i1 %cmp29, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %if.then27
  br label %cond.end35

cond.false32:                                     ; preds = %if.then27
  %32 = load ptr, ptr %get_name.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p233 = getelementptr inbounds %struct.translation_ctx_st, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %p233, align 8, !tbaa !28
  %call34 = call ptr %32(ptr noundef %34)
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false32, %cond.true31
  %cond36 = phi ptr [ @.str.79, %cond.true31 ], [ %call34, %cond.false32 ]
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p237 = getelementptr inbounds %struct.translation_ctx_st, ptr %35, i32 0, i32 6
  store ptr %cond36, ptr %p237, align 8, !tbaa !28
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p238 = getelementptr inbounds %struct.translation_ctx_st, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %p238, align 8, !tbaa !28
  %call39 = call i64 @strlen(ptr noundef %37) #9
  %conv40 = trunc i64 %call39 to i32
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p141 = getelementptr inbounds %struct.translation_ctx_st, ptr %38, i32 0, i32 5
  store i32 %conv40, ptr %p141, align 4, !tbaa !27
  br label %if.end42

if.end42:                                         ; preds = %cond.end35, %land.lhs.true23, %if.else20
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %cond.end
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then3
  %39 = load i32, ptr %state.addr, align 4, !tbaa !31
  %40 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call45 = call i32 @default_fixup_args(i32 noundef %39, ptr noundef %40, ptr noundef %41)
  store i32 %call45, ptr %ret, align 4, !tbaa !8
  %cmp46 = icmp sle i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  %42 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %42, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %43 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp50 = icmp eq i32 %43, 2
  br i1 %cmp50, label %land.lhs.true52, label %if.else61

land.lhs.true52:                                  ; preds = %if.end49
  %44 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type53 = getelementptr inbounds %struct.translation_ctx_st, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %action_type53, align 8, !tbaa !24
  %cmp54 = icmp eq i32 %45, 1
  br i1 %cmp54, label %if.then56, label %if.else61

if.then56:                                        ; preds = %land.lhs.true52
  %46 = load ptr, ptr %get_algo_by_name.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx = getelementptr inbounds %struct.translation_ctx_st, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pctx, align 8, !tbaa !29
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %libctx, align 8, !tbaa !70
  %50 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p257 = getelementptr inbounds %struct.translation_ctx_st, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %p257, align 8, !tbaa !28
  %call58 = call ptr %46(ptr noundef %49, ptr noundef %51)
  %52 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %orig_p259 = getelementptr inbounds %struct.translation_ctx_st, ptr %52, i32 0, i32 9
  %53 = load ptr, ptr %orig_p259, align 8, !tbaa !54
  store ptr %call58, ptr %53, align 8, !tbaa !4
  %54 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p160 = getelementptr inbounds %struct.translation_ctx_st, ptr %54, i32 0, i32 5
  store i32 1, ptr %p160, align 4, !tbaa !27
  br label %if.end76

if.else61:                                        ; preds = %land.lhs.true52, %if.end49
  %55 = load i32, ptr %state.addr, align 4, !tbaa !31
  %cmp62 = icmp eq i32 %55, 7
  br i1 %cmp62, label %land.lhs.true64, label %if.end75

land.lhs.true64:                                  ; preds = %if.else61
  %56 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %action_type65 = getelementptr inbounds %struct.translation_ctx_st, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %action_type65, align 8, !tbaa !24
  %cmp66 = icmp eq i32 %57, 2
  br i1 %cmp66, label %if.then68, label %if.end75

if.then68:                                        ; preds = %land.lhs.true64
  %58 = load ptr, ptr %get_algo_by_name.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pctx69 = getelementptr inbounds %struct.translation_ctx_st, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %pctx69, align 8, !tbaa !29
  %libctx70 = getelementptr inbounds %struct.evp_pkey_ctx_st, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %libctx70, align 8, !tbaa !70
  %62 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p271 = getelementptr inbounds %struct.translation_ctx_st, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %p271, align 8, !tbaa !28
  %call72 = call ptr %58(ptr noundef %61, ptr noundef %63)
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p273 = getelementptr inbounds %struct.translation_ctx_st, ptr %64, i32 0, i32 6
  store ptr %call72, ptr %p273, align 8, !tbaa !28
  %65 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p174 = getelementptr inbounds %struct.translation_ctx_st, ptr %65, i32 0, i32 5
  store i32 0, ptr %p174, align 4, !tbaa !27
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %land.lhs.true64, %if.else61
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then56
  %66 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %66, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then48, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal ptr @get_md_name(ptr noundef %md) #0 {
entry:
  %md.addr = alloca ptr, align 8
  store ptr %md, ptr %md.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %call = call ptr @EVP_MD_get0_name(ptr noundef %0)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @get_md_by_name(ptr noundef %libctx, ptr noundef %name) #0 {
entry:
  %libctx.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call = call ptr @evp_get_digestbyname_ex(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @OBJ_nid2sn(i32 noundef) #3

declare ptr @EVP_MD_get0_name(ptr noundef) #3

declare ptr @evp_get_digestbyname_ex(ptr noundef, ptr noundef) #3

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

declare ptr @OBJ_txt2obj(ptr noundef, i32 noundef) #3

declare ptr @ossl_dh_gen_type_id2name(i32 noundef) #3

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #7 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !4
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #8
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #6

declare ptr @ossl_ffc_named_group_get_name(ptr noundef) #3

declare ptr @ossl_ffc_uid_to_dh_named_group(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare i32 @OBJ_sn2nid(ptr noundef) #3

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define internal ptr @get_cipher_name(ptr noundef %cipher) #0 {
entry:
  %cipher.addr = alloca ptr, align 8
  store ptr %cipher, ptr %cipher.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cipher.addr, align 8, !tbaa !4
  %call = call ptr @EVP_CIPHER_get0_name(ptr noundef %0)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @get_cipher_by_name(ptr noundef %libctx, ptr noundef %name) #0 {
entry:
  %libctx.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call = call ptr @evp_get_cipherbyname_ex(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @EVP_CIPHER_get0_name(ptr noundef) #3

declare ptr @evp_get_cipherbyname_ex(ptr noundef, ptr noundef) #3

declare i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef, ptr noundef) #3

declare i32 @EVP_PKEY_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @lookup_evp_pkey_translation(ptr noundef %tmpl) #0 {
entry:
  %tmpl.addr = alloca ptr, align 8
  store ptr %tmpl, ptr %tmpl.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %tmpl.addr, align 8, !tbaa !4
  %call = call ptr @lookup_translation(ptr noundef %0, ptr noundef @evp_pkey_translations, i64 noundef 39)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal i32 @get_payload_group_name(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %pkey = alloca ptr, align 8
  %dh = alloca ptr, align 8
  %uid = alloca i32, align 4
  %dh_group = alloca ptr, align 8
  %grp = alloca ptr, align 8
  %nid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  store ptr %1, ptr %pkey, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  store ptr null, ptr %p21, align 8, !tbaa !28
  %3 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  switch i32 %call, label %sw.default [
    i32 28, label %sw.bb
    i32 408, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #8
  %4 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call2 = call ptr @EVP_PKEY_get0_DH(ptr noundef %4)
  store ptr %call2, ptr %dh, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #8
  %5 = load ptr, ptr %dh, align 8, !tbaa !4
  %call3 = call i32 @DH_get_nid(ptr noundef %5)
  store i32 %call3, ptr %uid, align 4, !tbaa !8
  %6 = load i32, ptr %uid, align 4, !tbaa !8
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh_group) #8
  %7 = load i32, ptr %uid, align 4, !tbaa !8
  %call4 = call ptr @ossl_ffc_uid_to_dh_named_group(i32 noundef %7)
  store ptr %call4, ptr %dh_group, align 8, !tbaa !4
  %8 = load ptr, ptr %dh_group, align 8, !tbaa !4
  %call5 = call ptr @ossl_ffc_named_group_get_name(ptr noundef %8)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p26 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 6
  store ptr %call5, ptr %p26, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh_group) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %grp) #8
  %10 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call8 = call ptr @EVP_PKEY_get0_EC_KEY(ptr noundef %10)
  %call9 = call ptr @EC_KEY_get0_group(ptr noundef %call8)
  store ptr %call9, ptr %grp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nid) #8
  store i32 0, ptr %nid, align 4, !tbaa !8
  %11 = load ptr, ptr %grp, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %11, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %sw.bb7
  %12 = load ptr, ptr %grp, align 8, !tbaa !4
  %call12 = call i32 @EC_GROUP_get_curve_name(ptr noundef %12)
  store i32 %call12, ptr %nid, align 4, !tbaa !8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.bb7
  %13 = load i32, ptr %nid, align 4, !tbaa !8
  %cmp14 = icmp ne i32 %13, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end13
  %14 = load i32, ptr %nid, align 4, !tbaa !8
  %call16 = call ptr @OSSL_EC_curve_nid2name(i32 noundef %14)
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p217 = getelementptr inbounds %struct.translation_ctx_st, ptr %15, i32 0, i32 6
  store ptr %call16, ptr %p217, align 8, !tbaa !28
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13
  call void @llvm.lifetime.end.p0(i64 4, ptr %nid) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %grp) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1548, ptr noundef @__func__.get_payload_group_name)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end18, %if.end
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p219 = getelementptr inbounds %struct.translation_ctx_st, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %p219, align 8, !tbaa !28
  %cmp20 = icmp eq ptr %17, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %sw.epilog
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p223 = getelementptr inbounds %struct.translation_ctx_st, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %p223, align 8, !tbaa !28
  %call24 = call i64 @strlen(ptr noundef %19) #9
  %conv = trunc i64 %call24 to i32
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %20, i32 0, i32 5
  store i32 %conv, ptr %p1, align 4, !tbaa !27
  %21 = load i32, ptr %state.addr, align 4, !tbaa !31
  %22 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call25 = call i32 @default_fixup_args(i32 noundef %21, ptr noundef %22, ptr noundef %23)
  store i32 %call25, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #8
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @get_payload_private_key(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %pkey = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dh = alloca ptr, align 8
  %ec = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  store ptr %1, ptr %pkey, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  store ptr null, ptr %p21, align 8, !tbaa !28
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.translation_ctx_st, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %params, align 8, !tbaa !30
  %data_type = getelementptr inbounds %struct.ossl_param_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %data_type, align 8, !tbaa !46
  %cmp = icmp ne i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %6)
  switch i32 %call, label %sw.default [
    i32 28, label %sw.bb
    i32 408, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #8
  %7 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call2 = call ptr @EVP_PKEY_get0_DH(ptr noundef %7)
  store ptr %call2, ptr %dh, align 8, !tbaa !4
  %8 = load ptr, ptr %dh, align 8, !tbaa !4
  %call3 = call ptr @DH_get0_priv_key(ptr noundef %8)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.translation_ctx_st, ptr %9, i32 0, i32 6
  store ptr %call3, ptr %p24, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ec) #8
  %10 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call6 = call ptr @EVP_PKEY_get0_EC_KEY(ptr noundef %10)
  store ptr %call6, ptr %ec, align 8, !tbaa !4
  %11 = load ptr, ptr %ec, align 8, !tbaa !4
  %call7 = call ptr @EC_KEY_get0_private_key(ptr noundef %11)
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p28 = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 6
  store ptr %call7, ptr %p28, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ec) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1593, ptr noundef @__func__.get_payload_private_key)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %13 = load i32, ptr %state.addr, align 4, !tbaa !31
  %14 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call9 = call i32 @default_fixup_args(i32 noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @get_payload_public_key(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %pkey = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %eckey = alloca ptr, align 8
  %bnctx = alloca ptr, align 8
  %ecg = alloca ptr, align 8
  %point = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  store ptr %1, ptr %pkey, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #8
  store ptr null, ptr %buf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  store ptr null, ptr %p21, align 8, !tbaa !28
  %3 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  switch i32 %call, label %sw.default36 [
    i32 920, label %sw.bb
    i32 28, label %sw.bb
    i32 116, label %sw.bb10
    i32 408, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %params, align 8, !tbaa !30
  %data_type = getelementptr inbounds %struct.ossl_param_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %data_type, align 8, !tbaa !46
  switch i32 %6, label %sw.default [
    i32 5, label %sw.bb2
    i32 2, label %sw.bb6
  ]

sw.bb2:                                           ; preds = %sw.bb
  %7 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call3 = call ptr @EVP_PKEY_get0_DH(ptr noundef %7)
  %call4 = call i64 @ossl_dh_key2buf(ptr noundef %call3, ptr noundef %buf, i64 noundef 0, i32 noundef 1)
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz = getelementptr inbounds %struct.translation_ctx_st, ptr %8, i32 0, i32 7
  store i64 %call4, ptr %sz, align 8, !tbaa !45
  %9 = load ptr, ptr %buf, align 8, !tbaa !4
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p25 = getelementptr inbounds %struct.translation_ctx_st, ptr %10, i32 0, i32 6
  store ptr %9, ptr %p25, align 8, !tbaa !28
  br label %sw.epilog

sw.bb6:                                           ; preds = %sw.bb
  %11 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call7 = call ptr @EVP_PKEY_get0_DH(ptr noundef %11)
  %call8 = call ptr @DH_get0_pub_key(ptr noundef %call7)
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p29 = getelementptr inbounds %struct.translation_ctx_st, ptr %12, i32 0, i32 6
  store ptr %call8, ptr %p29, align 8, !tbaa !28
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb2
  br label %sw.epilog37

sw.bb10:                                          ; preds = %entry
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params11 = getelementptr inbounds %struct.translation_ctx_st, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %params11, align 8, !tbaa !30
  %data_type12 = getelementptr inbounds %struct.ossl_param_st, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %data_type12, align 8, !tbaa !46
  %cmp = icmp eq i32 %15, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb10
  %16 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call13 = call ptr @EVP_PKEY_get0_DSA(ptr noundef %16)
  %call14 = call ptr @DSA_get0_pub_key(ptr noundef %call13)
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p215 = getelementptr inbounds %struct.translation_ctx_st, ptr %17, i32 0, i32 6
  store ptr %call14, ptr %p215, align 8, !tbaa !28
  br label %sw.epilog37

if.end:                                           ; preds = %sw.bb10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39

sw.bb16:                                          ; preds = %entry
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params17 = getelementptr inbounds %struct.translation_ctx_st, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %params17, align 8, !tbaa !30
  %data_type18 = getelementptr inbounds %struct.ossl_param_st, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %data_type18, align 8, !tbaa !46
  %cmp19 = icmp eq i32 %20, 5
  br i1 %cmp19, label %if.then20, label %if.end35

if.then20:                                        ; preds = %sw.bb16
  call void @llvm.lifetime.start.p0(i64 8, ptr %eckey) #8
  %21 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call21 = call ptr @EVP_PKEY_get0_EC_KEY(ptr noundef %21)
  store ptr %call21, ptr %eckey, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bnctx) #8
  %22 = load ptr, ptr %eckey, align 8, !tbaa !4
  %call22 = call ptr @ossl_ec_key_get_libctx(ptr noundef %22)
  %call23 = call ptr @BN_CTX_new_ex(ptr noundef %call22)
  store ptr %call23, ptr %bnctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ecg) #8
  %23 = load ptr, ptr %eckey, align 8, !tbaa !4
  %call24 = call ptr @EC_KEY_get0_group(ptr noundef %23)
  store ptr %call24, ptr %ecg, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %point) #8
  %24 = load ptr, ptr %eckey, align 8, !tbaa !4
  %call25 = call ptr @EC_KEY_get0_public_key(ptr noundef %24)
  store ptr %call25, ptr %point, align 8, !tbaa !4
  %25 = load ptr, ptr %bnctx, align 8, !tbaa !4
  %cmp26 = icmp eq ptr %25, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then20
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.then20
  %26 = load ptr, ptr %ecg, align 8, !tbaa !4
  %27 = load ptr, ptr %point, align 8, !tbaa !4
  %28 = load ptr, ptr %bnctx, align 8, !tbaa !4
  %call29 = call i64 @EC_POINT_point2buf(ptr noundef %26, ptr noundef %27, i32 noundef 2, ptr noundef %buf, ptr noundef %28)
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %sz30 = getelementptr inbounds %struct.translation_ctx_st, ptr %29, i32 0, i32 7
  store i64 %call29, ptr %sz30, align 8, !tbaa !45
  %30 = load ptr, ptr %buf, align 8, !tbaa !4
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p231 = getelementptr inbounds %struct.translation_ctx_st, ptr %31, i32 0, i32 6
  store ptr %30, ptr %p231, align 8, !tbaa !28
  %32 = load ptr, ptr %bnctx, align 8, !tbaa !4
  call void @BN_CTX_free(ptr noundef %32)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %point) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ecg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bnctx) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eckey) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 2, label %sw.epilog37
  ]

if.end35:                                         ; preds = %sw.bb16
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39

sw.default36:                                     ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1654, ptr noundef @__func__.get_payload_public_key)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39

sw.epilog37:                                      ; preds = %cleanup, %if.then, %sw.epilog
  %33 = load i32, ptr %state.addr, align 4, !tbaa !31
  %34 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call38 = call i32 @default_fixup_args(i32 noundef %33, ptr noundef %34, ptr noundef %35)
  store i32 %call38, ptr %ret, align 4, !tbaa !8
  %36 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %36, ptr noundef @.str, i32 noundef 1659)
  %37 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %sw.epilog37, %sw.default36, %if.end35, %cleanup, %if.end, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #8
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dh_dsa_payload_p(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bn = alloca ptr, align 8
  %pkey = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  store ptr %1, ptr %pkey, align 8, !tbaa !4
  %2 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %2)
  switch i32 %call, label %sw.default [
    i32 28, label %sw.bb
    i32 116, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call1 = call ptr @EVP_PKEY_get0_DH(ptr noundef %3)
  %call2 = call ptr @DH_get0_p(ptr noundef %call1)
  store ptr %call2, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call4 = call ptr @EVP_PKEY_get0_DSA(ptr noundef %4)
  %call5 = call ptr @DSA_get0_p(ptr noundef %call4)
  store ptr %call5, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1695, ptr noundef @__func__.get_dh_dsa_payload_p)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, ptr noundef null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %5 = load i32, ptr %state.addr, align 4, !tbaa !31
  %6 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %bn, align 8, !tbaa !4
  %call6 = call i32 @get_payload_bn(i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  ret i32 %call6
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dh_dsa_payload_g(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bn = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  switch i32 %call, label %sw.epilog [
    i32 28, label %sw.bb
    i32 116, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call ptr @EVP_PKEY_get0_DH(ptr noundef %3)
  %call3 = call ptr @DH_get0_g(ptr noundef %call2)
  store ptr %call3, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p25 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %p25, align 8, !tbaa !28
  %call6 = call ptr @EVP_PKEY_get0_DSA(ptr noundef %5)
  %call7 = call ptr @DSA_get0_g(ptr noundef %call6)
  store ptr %call7, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %bn, align 8, !tbaa !4
  %call8 = call i32 @get_payload_bn(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  ret i32 %call8
}

; Function Attrs: nounwind uwtable
define internal i32 @get_dh_dsa_payload_q(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bn = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  switch i32 %call, label %sw.epilog [
    i32 28, label %sw.bb
    i32 116, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call ptr @EVP_PKEY_get0_DH(ptr noundef %3)
  %call3 = call ptr @DH_get0_q(ptr noundef %call2)
  store ptr %call3, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p25 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %p25, align 8, !tbaa !28
  %call6 = call ptr @EVP_PKEY_get0_DSA(ptr noundef %5)
  %call7 = call ptr @DSA_get0_q(ptr noundef %call6)
  store ptr %call7, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %bn, align 8, !tbaa !4
  %call8 = call i32 @get_payload_bn(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  ret i32 %call8
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_n(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %p24, align 8, !tbaa !28
  %call5 = call ptr @EVP_PKEY_get0_RSA(ptr noundef %5)
  %call6 = call ptr @RSA_get0_n(ptr noundef %call5)
  store ptr %call6, ptr %bn, align 8, !tbaa !4
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %bn, align 8, !tbaa !4
  %call7 = call i32 @get_payload_bn(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %p24, align 8, !tbaa !28
  %call5 = call ptr @EVP_PKEY_get0_RSA(ptr noundef %5)
  %call6 = call ptr @RSA_get0_e(ptr noundef %call5)
  store ptr %call6, ptr %bn, align 8, !tbaa !4
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %bn, align 8, !tbaa !4
  %call7 = call i32 @get_payload_bn(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_d(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p24 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %p24, align 8, !tbaa !28
  %call5 = call ptr @EVP_PKEY_get0_RSA(ptr noundef %5)
  %call6 = call ptr @RSA_get0_d(ptr noundef %call5)
  store ptr %call6, ptr %bn, align 8, !tbaa !4
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %bn, align 8, !tbaa !4
  %call7 = call i32 @get_payload_bn(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f1(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 0)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f2(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f3(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 2)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f4(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 3)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f5(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 4)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f6(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 5)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f7(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 6)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f8(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 7)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f9(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 8)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_f10(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_factor(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 9)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e1(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 0)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e2(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e3(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 2)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e4(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 3)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e5(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 4)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e6(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 5)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e7(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 6)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e8(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 7)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e9(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 8)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_e10(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_exponent(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 9)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c1(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 0)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c2(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 1)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c3(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 2)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c4(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 3)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c5(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 4)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c6(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 5)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c7(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 6)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c8(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 7)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_c9(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %1)
  %cmp = icmp ne i32 %call, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p21 = getelementptr inbounds %struct.translation_ctx_st, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %p21, align 8, !tbaa !28
  %call2 = call i32 @EVP_PKEY_get_base_id(ptr noundef %3)
  %cmp3 = icmp ne i32 %call2, 912
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %state.addr, align 4, !tbaa !31
  %5 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call i32 @get_rsa_payload_coefficient(i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef 8)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @get_ec_decoded_from_explicit_params(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %pkey = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #8
  store i32 0, ptr %val, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  store ptr %1, ptr %pkey, align 8, !tbaa !4
  %2 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call = call i32 @EVP_PKEY_get_base_id(ptr noundef %2)
  switch i32 %call, label %sw.default [
    i32 408, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call1 = call ptr @EVP_PKEY_get0_EC_KEY(ptr noundef %3)
  %call2 = call i32 @EC_KEY_decoded_from_explicit_params(ptr noundef %call1)
  store i32 %call2, ptr %val, align 4, !tbaa !8
  %4 = load i32, ptr %val, align 4, !tbaa !8
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1770, ptr noundef @__func__.get_ec_decoded_from_explicit_params)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1776, ptr noundef @__func__.get_ec_decoded_from_explicit_params)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %5 = load i32, ptr %state.addr, align 4, !tbaa !31
  %6 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %8 = load i32, ptr %val, align 4, !tbaa !8
  %call3 = call i32 @get_payload_int(i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8)
  store i32 %call3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #8
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @EVP_PKEY_get_base_id(ptr noundef) #3

declare ptr @EVP_PKEY_get0_DH(ptr noundef) #3

declare i32 @DH_get_nid(ptr noundef) #3

declare ptr @EC_KEY_get0_group(ptr noundef) #3

declare ptr @EVP_PKEY_get0_EC_KEY(ptr noundef) #3

declare i32 @EC_GROUP_get_curve_name(ptr noundef) #3

declare ptr @OSSL_EC_curve_nid2name(i32 noundef) #3

declare ptr @DH_get0_priv_key(ptr noundef) #3

declare ptr @EC_KEY_get0_private_key(ptr noundef) #3

declare i64 @ossl_dh_key2buf(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #3

declare ptr @DH_get0_pub_key(ptr noundef) #3

declare ptr @DSA_get0_pub_key(ptr noundef) #3

declare ptr @EVP_PKEY_get0_DSA(ptr noundef) #3

declare ptr @BN_CTX_new_ex(ptr noundef) #3

declare ptr @ossl_ec_key_get_libctx(ptr noundef) #3

declare ptr @EC_KEY_get0_public_key(ptr noundef) #3

declare i64 @EC_POINT_point2buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare void @BN_CTX_free(ptr noundef) #3

declare ptr @DH_get0_p(ptr noundef) #3

declare ptr @DSA_get0_p(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_payload_bn(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx, ptr noundef %bn) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %bn.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %bn, ptr %bn.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.translation_ctx_st, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %params, align 8, !tbaa !30
  %data_type = getelementptr inbounds %struct.ossl_param_st, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %data_type, align 8, !tbaa !46
  %cmp1 = icmp ne i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %bn.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 6
  store ptr %4, ptr %p2, align 8, !tbaa !28
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_fixup_args(i32 noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare ptr @DH_get0_g(ptr noundef) #3

declare ptr @DSA_get0_g(ptr noundef) #3

declare ptr @DH_get0_q(ptr noundef) #3

declare ptr @DSA_get0_q(ptr noundef) #3

declare ptr @RSA_get0_n(ptr noundef) #3

declare ptr @EVP_PKEY_get0_RSA(ptr noundef) #3

declare ptr @RSA_get0_e(ptr noundef) #3

declare ptr @RSA_get0_d(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_factor(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx, i64 noundef %factornum) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %factornum.addr = alloca i64, align 8
  %r = alloca ptr, align 8
  %bn = alloca ptr, align 8
  %pnum = alloca i64, align 8
  %factors = alloca [10 x ptr], align 16
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i64 %factornum, ptr %factornum.addr, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call ptr @EVP_PKEY_get0_RSA(ptr noundef %1)
  store ptr %call, ptr %r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %2 = load i64, ptr %factornum.addr, align 8, !tbaa !36
  switch i64 %2, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %r, align 8, !tbaa !4
  %call1 = call ptr @RSA_get0_p(ptr noundef %3)
  store ptr %call1, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %r, align 8, !tbaa !4
  %call3 = call ptr @RSA_get0_q(ptr noundef %4)
  store ptr %call3, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnum) #8
  %5 = load ptr, ptr %r, align 8, !tbaa !4
  %call4 = call i32 @RSA_get_multi_prime_extra_count(ptr noundef %5)
  %conv = sext i32 %call4 to i64
  store i64 %conv, ptr %pnum, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 80, ptr %factors) #8
  %6 = load i64, ptr %factornum.addr, align 8, !tbaa !36
  %sub = sub i64 %6, 2
  %7 = load i64, ptr %pnum, align 8, !tbaa !36
  %cmp = icmp ult i64 %sub, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %8 = load ptr, ptr %r, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %factors, i64 0, i64 0
  %call6 = call i32 @RSA_get0_multi_prime_factors(ptr noundef %8, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, ptr %factornum.addr, align 8, !tbaa !36
  %sub7 = sub i64 %9, 2
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %factors, i64 0, i64 %sub7
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %10, ptr %bn, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.default
  call void @llvm.lifetime.end.p0(i64 80, ptr %factors) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnum) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %11 = load i32, ptr %state.addr, align 4, !tbaa !31
  %12 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %bn, align 8, !tbaa !4
  %call8 = call i32 @get_payload_bn(i32 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8
  ret i32 %call8
}

declare ptr @RSA_get0_p(ptr noundef) #3

declare ptr @RSA_get0_q(ptr noundef) #3

declare i32 @RSA_get_multi_prime_extra_count(ptr noundef) #3

declare i32 @RSA_get0_multi_prime_factors(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_exponent(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx, i64 noundef %exponentnum) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %exponentnum.addr = alloca i64, align 8
  %r = alloca ptr, align 8
  %bn = alloca ptr, align 8
  %pnum = alloca i64, align 8
  %exps = alloca [10 x ptr], align 16
  %coeffs = alloca [10 x ptr], align 16
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i64 %exponentnum, ptr %exponentnum.addr, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call ptr @EVP_PKEY_get0_RSA(ptr noundef %1)
  store ptr %call, ptr %r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %2 = load i64, ptr %exponentnum.addr, align 8, !tbaa !36
  switch i64 %2, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %r, align 8, !tbaa !4
  %call1 = call ptr @RSA_get0_dmp1(ptr noundef %3)
  store ptr %call1, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %r, align 8, !tbaa !4
  %call3 = call ptr @RSA_get0_dmq1(ptr noundef %4)
  store ptr %call3, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnum) #8
  %5 = load ptr, ptr %r, align 8, !tbaa !4
  %call4 = call i32 @RSA_get_multi_prime_extra_count(ptr noundef %5)
  %conv = sext i32 %call4 to i64
  store i64 %conv, ptr %pnum, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 80, ptr %exps) #8
  call void @llvm.lifetime.start.p0(i64 80, ptr %coeffs) #8
  %6 = load i64, ptr %exponentnum.addr, align 8, !tbaa !36
  %sub = sub i64 %6, 2
  %7 = load i64, ptr %pnum, align 8, !tbaa !36
  %cmp = icmp ult i64 %sub, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %8 = load ptr, ptr %r, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %exps, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x ptr], ptr %coeffs, i64 0, i64 0
  %call7 = call i32 @RSA_get0_multi_prime_crt_params(ptr noundef %8, ptr noundef %arraydecay, ptr noundef %arraydecay6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load i64, ptr %exponentnum.addr, align 8, !tbaa !36
  %sub8 = sub i64 %9, 2
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %exps, i64 0, i64 %sub8
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %10, ptr %bn, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.default
  call void @llvm.lifetime.end.p0(i64 80, ptr %coeffs) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr %exps) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnum) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %11 = load i32, ptr %state.addr, align 4, !tbaa !31
  %12 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %bn, align 8, !tbaa !4
  %call9 = call i32 @get_payload_bn(i32 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8
  ret i32 %call9
}

declare ptr @RSA_get0_dmp1(ptr noundef) #3

declare ptr @RSA_get0_dmq1(ptr noundef) #3

declare i32 @RSA_get0_multi_prime_crt_params(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_rsa_payload_coefficient(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx, i64 noundef %coefficientnum) #0 {
entry:
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %coefficientnum.addr = alloca i64, align 8
  %r = alloca ptr, align 8
  %bn = alloca ptr, align 8
  %pnum = alloca i64, align 8
  %exps = alloca [10 x ptr], align 16
  %coeffs = alloca [10 x ptr], align 16
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i64 %coefficientnum, ptr %coefficientnum.addr, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %p2, align 8, !tbaa !28
  %call = call ptr @EVP_PKEY_get0_RSA(ptr noundef %1)
  store ptr %call, ptr %r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bn) #8
  store ptr null, ptr %bn, align 8, !tbaa !4
  %2 = load i64, ptr %coefficientnum.addr, align 8, !tbaa !36
  switch i64 %2, label %sw.default [
    i64 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %r, align 8, !tbaa !4
  %call1 = call ptr @RSA_get0_iqmp(ptr noundef %3)
  store ptr %call1, ptr %bn, align 8, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnum) #8
  %4 = load ptr, ptr %r, align 8, !tbaa !4
  %call2 = call i32 @RSA_get_multi_prime_extra_count(ptr noundef %4)
  %conv = sext i32 %call2 to i64
  store i64 %conv, ptr %pnum, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 80, ptr %exps) #8
  call void @llvm.lifetime.start.p0(i64 80, ptr %coeffs) #8
  %5 = load i64, ptr %coefficientnum.addr, align 8, !tbaa !36
  %sub = sub i64 %5, 1
  %6 = load i64, ptr %pnum, align 8, !tbaa !36
  %cmp = icmp ult i64 %sub, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %7 = load ptr, ptr %r, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %exps, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [10 x ptr], ptr %coeffs, i64 0, i64 0
  %call5 = call i32 @RSA_get0_multi_prime_crt_params(ptr noundef %7, ptr noundef %arraydecay, ptr noundef %arraydecay4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i64, ptr %coefficientnum.addr, align 8, !tbaa !36
  %sub6 = sub i64 %8, 1
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %coeffs, i64 0, i64 %sub6
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %9, ptr %bn, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.default
  call void @llvm.lifetime.end.p0(i64 80, ptr %coeffs) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr %exps) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnum) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %10 = load i32, ptr %state.addr, align 4, !tbaa !31
  %11 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %bn, align 8, !tbaa !4
  %call7 = call i32 @get_payload_bn(i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr %bn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #8
  ret i32 %call7
}

declare ptr @RSA_get0_iqmp(ptr noundef) #3

declare i32 @EC_KEY_decoded_from_explicit_params(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @get_payload_int(i32 noundef %state, ptr noundef %translation, ptr noundef %ctx, i32 noundef %val) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %translation.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4, !tbaa !31
  store ptr %translation, ptr %translation.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %val, ptr %val.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %params = getelementptr inbounds %struct.translation_ctx_st, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %params, align 8, !tbaa !30
  %data_type = getelementptr inbounds %struct.ossl_param_st, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %data_type, align 8, !tbaa !46
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %val.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.translation_ctx_st, ptr %4, i32 0, i32 5
  store i32 %3, ptr %p1, align 4, !tbaa !27
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %p2 = getelementptr inbounds %struct.translation_ctx_st, ptr %5, i32 0, i32 6
  store ptr null, ptr %p2, align 8, !tbaa !28
  %6 = load i32, ptr %state.addr, align 4, !tbaa !31
  %7 = load ptr, ptr %translation.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call i32 @default_fixup_args(i32 noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !9, i64 116}
!11 = !{!"evp_pkey_ctx_st", !9, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !6, i64 40, !12, i64 56, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !9, i64 160, !5, i64 168}
!12 = !{!"", !5, i64 0, !5, i64 8, !13, i64 16, !9, i64 24}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !9, i64 16}
!15 = !{!"translation_st", !6, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !9, i64 48, !5, i64 56}
!16 = !{!15, !9, i64 8}
!17 = !{!15, !9, i64 4}
!18 = !{!15, !9, i64 12}
!19 = !{!11, !5, i64 120}
!20 = !{!21, !9, i64 0}
!21 = !{!"evp_pkey_method_st", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248}
!22 = !{!15, !5, i64 56}
!23 = !{!15, !6, i64 0}
!24 = !{!25, !6, i64 8}
!25 = !{!"translation_ctx_st", !5, i64 0, !6, i64 8, !9, i64 12, !5, i64 16, !9, i64 24, !9, i64 28, !5, i64 32, !13, i64 40, !5, i64 48, !5, i64 56, !6, i64 64, !5, i64 120, !5, i64 128, !13, i64 136}
!26 = !{!25, !9, i64 12}
!27 = !{!25, !9, i64 28}
!28 = !{!25, !5, i64 32}
!29 = !{!25, !5, i64 0}
!30 = !{!25, !5, i64 48}
!31 = !{!6, !6, i64 0}
!32 = !{!11, !9, i64 0}
!33 = !{!15, !9, i64 48}
!34 = !{!15, !5, i64 40}
!35 = !{i64 0, i64 8, !4, i64 8, i64 4, !8, i64 16, i64 8, !4, i64 24, i64 8, !36, i64 32, i64 8, !36}
!36 = !{!13, !13, i64 0}
!37 = !{!25, !13, i64 136}
!38 = !{!25, !5, i64 120}
!39 = !{!40, !13, i64 32}
!40 = !{!"ossl_param_st", !5, i64 0, !9, i64 8, !5, i64 16, !13, i64 24, !13, i64 32}
!41 = !{!25, !5, i64 16}
!42 = !{!25, !9, i64 24}
!43 = !{!40, !5, i64 16}
!44 = !{!40, !13, i64 24}
!45 = !{!25, !13, i64 40}
!46 = !{!40, !9, i64 8}
!47 = !{!15, !5, i64 24}
!48 = !{!15, !5, i64 32}
!49 = !{!40, !5, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = !{!25, !5, i64 56}
!55 = !{!56, !9, i64 0}
!56 = !{!"ossl_item_st", !9, i64 0, !5, i64 8}
!57 = distinct !{!57, !51}
!58 = !{!56, !5, i64 8}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51}
!64 = !{!11, !5, i64 24}
!65 = !{!66, !5, i64 8}
!66 = !{!"kdf_type_map_st", !9, i64 0, !5, i64 8}
!67 = !{!66, !9, i64 0}
!68 = distinct !{!68, !51}
!69 = distinct !{!69, !51}
!70 = !{!11, !5, i64 8}
